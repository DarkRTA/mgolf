INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

    nop
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

jr_047_404f:
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    rst $30
    ldh [$ef], a
    rst $38
    rst $38
    and $fc
    db $fc
    ei
    ld hl, sp-$05
    or $f1
    ld hl, sp-$1f
    ld a, [c]
    ldh a, [$ce]
    ret nz

    ld a, $7f
    nop
    cp [hl]
    ld b, b
    ld a, l
    add b
    ld l, a
    sub b
    ldh [$e3], a
    rst $38
    ldh a, [$f0]
    adc a
    add b

jr_047_4077:
    ld a, e
    inc b
    rst $20
    jr jr_047_4077

    rst $00
    jr c, jr_047_404f

    db $e3
    rlca
    rlca
    rst $28
    rrca
    rst $18
    di
    rra
    ldh [$93], a
    pop hl
    rst $38
    add sp, $7f
    ld a, a
    adc a
    rrca
    ld hl, sp-$10

jr_047_4092:
    jp hl


    and h
    pop hl
    ld [hl], b
    ldh [$fe], a
    ld bc, $01fd
    db $fd
    ei
    inc bc
    ei
    cp $e3
    ld b, $71
    dec c
    ld [c], a
    ld e, $ff
    pop bc
    dec a
    add d
    ld a, [hl-]
    add l
    ld [hl], l
    ld a, [bc]
    ld l, d
    ld a, a
    dec d
    ld d, h
    dec hl
    ldh [$ef], a
    ldh a, [$f7]
    cp $e5
    rst $38
    ldh [$ef], a
    ldh [$ef], a
    db $ec
    db $e3
    ret c

    rst $00
    rst $38
    pop de
    adc $a0
    sbc a
    add c
    cp [hl]
    ld b, e
    inc a
    rst $38
    ld b, a
    jr c, @+$80

    nop
    rst $18
    jr nz, jr_047_4092

    ld b, b
    ei
    ld a, a
    add b
    dec hl
    pop hl
    ld hl, sp+$00
    ret nz

    rlca
    nop
    rst $38
    ccf
    adc h
    ld [hl], e
    add hl, de
    and $3f
    ret nz

    ld hl, sp-$61
    nop
    add b
    rlca
    nop
    ld a, a
    add c
    ld [c], a
    rrca
    ld [c], a
    ccf
    rst $38
    nop
    rrca
    ret nz

    inc bc
    ldh a, [rSB]
    db $fc
    nop
    rst $08
    cp $f1
    ld bc, $fdfe
    bit 5, b
    ld [c], a
    cp a
    ccf
    rst $38
    rst $18
    rra
    rst $28
    rrca
    rst $30
    rlca
    ei
    inc bc
    cp h
    ld a, b
    pop hl
    ld [hl], b
    pop hl
    ld bc, $00fd
    cp $fe
    pop hl
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$08
    ldh [$e7], a
    ret nz

    dec e
    rst $18
    cp e
    ldh [$3f], a
    ret nz

    rst $18
    ld hl, sp-$1e

jr_047_412d:
    pop bc
    db $eb
    db $dd
    jp nz, $fefd

    rst $38
    ldh [$fc], a
    db $fd
    db $fc
    db $fd
    ld a, b

jr_047_413a:
    ld bc, $60cf
    rlca
    nop
    rra
    add h
    db $e3
    sub h
    jp $f807


    rst $28
    inc c
    ldh a, [rNR10]
    db $e3
    adc b
    jp nz, Jump_000_00fe

    ldh a, [$cc]
    and h
    jp $c27a


    ret nz

    nop
    rst $38
    pop hl
    sbc d
    ldh [rSB], a
    db $fc
    ei
    inc bc
    ld hl, sp-$02
    ldh [$78], a
    inc bc
    jr c, jr_047_4167

    inc c

jr_047_4167:
    add d
    ld h, c
    call $50fd
    ldh [$4e], a
    ld [$c4b6], a
    ld c, h
    pop hl
    cp $e1
    ld b, b
    rst $38
    ld e, a
    ld b, b
    ld e, a
    ld h, b
    ld l, a
    jr nz, jr_047_412d

    jr nz, @+$01

    xor a
    jr nc, jr_047_413a

    db $10
    rst $10
    db $10
    rst $10
    nop
    rst $18
    ld hl, sp+$01
    ld hl, sp+$07

Jump_047_418d:
    ldh a, [$fe]
    db $e3
    ld bc, $fbf0
    nop
    ldh [rNR11], a
    pop bc
    db $fc
    nop
    ei
    inc bc
    rst $30
    rst $38
    rlca
    rst $20
    rlca
    rst $00
    rlca
    rlca
    rlca
    adc $e7
    ld c, $3e
    ld a, $54
    pop hl
    db $fc
    db $e3
    db $fc
    db $fc
    and b
    ld a, [$e2ff]
    add b
    rst $38
    ld [c], a
    ld bc, $0300
    nop
    ld bc, $6be4
    ld [c], a
    ld h, [hl]
    ldh [$78], a
    adc c
    db $e3
    jp nz, Jump_000_1fc3

    nop
    rlca
    xor $e6
    pop hl
    add b
    nop
    ret nz

    pop bc
    xor e
    ccf
    nop
    rst $18
    db $ed
    rra
    cp $e1
    rst $28
    rrca
    cp $e5
    jr @-$23

    jr @+$01

    db $db
    ld [$0ceb], sp
    db $ed
    inc c
    db $ed
    inc b
    rra
    push af
    ld b, $f6
    ld b, $f6
    sub b
    and h
    ld a, [de]
    pop hl
    xor d
    jp $c0ff


    db $10
    sub b
    ld d, b
    ld d, b
    ret nc

    ret nc

    db $d3
    rst $38
    ret nc

    rst $10
    ret nc

    rst $00
    ret nz

    rst $00
    ret nz

    rlca
    cp a
    rlca
    inc bc
    inc bc
    pop hl
    ld bc, $697c
    and [hl]
    ld hl, sp-$01
    ld hl, sp-$10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    add c
    xor $57
    and h
    rlca
    nop
    rrca
    or c

jr_047_421f:
    jp z, $c018

    ld e, $df
    ret nz

    rrca
    ldh [rIF], a
    ldh [rNR32], a
    db $e3
    inc bc
    ldh a, [$f7]
    nop
    ld de, $910e
    ret nz

    inc a
    add b
    dec sp
    add b
    cp a
    ld [hl], a
    nop
    ld [hl], a
    nop
    ld l, b
    nop
    ld [hl], a
    ldh [$6f], a
    rst $30
    adc a
    cpl
    rst $08
    ld [hl], b
    ld [c], a
    rst $30
    rlca
    rst $30
    rlca
    ld h, e
    ld [bc], a
    ld a, [$cc2e]
    add d
    pop bc
    cp $e0
    add b
    cp a
    cp $e1
    di
    ret nz

    rst $18
    jr jr_047_421f

    db $ec
    adc b
    rst $00
    ret nz

jr_047_4261:
    add e
    add b
    rst $28
    nop
    nop
    rlca
    ret nz

    and b
    db $e4
    ld hl, sp-$31
    jr nc, jr_047_4261

    rra
    ret nz

    rrca
    jp z, $80bf

    di
    nop
    rst $20
    nop
    rst $30
    rst $08
    nop
    sbc a
    sbc a
    and d
    ld hl, sp+$04
    push af
    ld a, [bc]
    ei
    ld [$fc15], a
    pop hl
    push de
    ld a, [hl+]
    ld [$d415], a
    rst $38
    dec hl
    ld h, a
    ld h, a
    rst $28
    rst $28
    xor $ee
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ldh a, [$f6]
    ldh [$ef], a
    jp hl


    rst $08
    rst $28
    ld [hl], a
    rlca
    ld [hl], a
    ld a, d
    ldh [$e0], a
    pop bc
    rst $18
    rra
    rst $28
    ccf
    ccf
    ld a, a
    ld a, a
    inc sp
    rlc b
    rst $38
    ret nz

    sbc c
    rst $18
    ld b, b
    pop bc
    ld a, $c1
    jr nc, @-$47

    ld a, $c1
    or $a1
    ld bc, $fce1
    cp $e1
    add b
    and e
    rst $18
    add e
    db $db
    add d
    ld [bc], a
    ld_long a, $ff05
    push af
    ld a, [bc]
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
    and b
    ld e, a
    ld b, b
    cp a
    or $ff
    nop
    ldh [$09], a
    ldh [rIF], a
    ret nz

jr_047_42e7:
    rra
    add b
    rst $20
    ccf
    add b

jr_047_42ec:
    ccf
    ld h, $e2
    rra
    adc l
    rst $38
    ccf
    ccf
    rst $30
    rst $00
    rlca
    ld sp, hl
    ld a, [bc]
    and d
    cp $00
    pop hl
    ld bc, $747e
    add a
    cp a
    ccf
    rra
    rra
    rst $38
    rst $38
    ld d, b
    pop bc
    sbc e

jr_047_430a:
    jr jr_047_42e7

    ld d, b
    pop bc
    ld c, $ee
    ld d, b
    pop bc
    db $e3
    pop bc
    ccf
    inc sp
    add b
    rra
    sbc h
    ret nz

    ld [bc], a
    pop hl
    ld bc, $d1fc
    ld h, l
    add b
    pop hl
    ld c, a
    ld [$5515], a
    xor d
    jr jr_047_430a

    ld a, h
    push hl
    add b
    ld [hl-], a
    ldh [$7b], a
    add b
    ld a, [hl]
    ld b, d
    add e
    ld bc, $00f9
    and $ed
    ret nz

    dec a
    ld a, b
    ret z

    ld h, l
    ldh a, [$f7]
    ld hl, sp-$05
    ld [hl], h
    xor $34
    ret nz

    pop bc
    sbc a
    sbc b
    add h
    jr z, jr_047_42ec

    ld c, h
    add c
    ld [hl], b
    ld l, d
    add l
    ldh [rTAC], a
    rst $30
    db $fc
    or $63
    ld a, h
    add l
    ld a, [hl+]
    ld d, l

Call_047_435a:
    add l
    sbc d
    ldh [$e7], a
    ld a, e
    ld hl, sp-$08
    ld a, b
    ld h, l
    xor d
    ld d, l
    ld d, b
    xor a
    inc a
    ld h, d
    ld e, a
    inc a
    ret nz

    jp $cfc0


    sub [hl]
    add b
    db $fd
    ld [hl], c
    ret nz

    push af
    rst $08

jr_047_4376:
    rra
    add b
    cp $d5
    add b
    ei
    ld [bc], a

jr_047_437d:
    rst $30
    rst $20

jr_047_437f:
    rst $38
    rst $20
    rst $18
    db $dd
    cp a
    cp d
    ld a, a
    ld d, h
    rst $38
    rst $28
    xor b
    rst $38
    ld d, b
    rst $38
    add sp, $61
    and c
    rst $38
    ld b, b
    db $fc
    ld hl, sp-$1e
    add hl, de
    ld h, l
    ld [hl], b
    db $fc
    xor h
    rst $38
    rla
    rst $38
    add e
    dec bc
    rst $38
    xor h
    ret nz

    push af
    ld b, c
    daa
    and b
    ret z

    ret nz

    inc d
    ld h, d
    xor a
    rst $08
    ldh a, [$57]
    ld hl, sp+$2b
    call c, Call_047_60a4
    ret z

    ldh [$ef], a
    rst $38
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    jr nc, jr_047_4376

    ld l, a
    jr c, jr_047_437d

    jr c, jr_047_437f

    ld [hl], $a7
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
    db $ed
    inc c
    ld l, e
    ld [$eaef], sp
    rst $28
    db $e4
    rst $20
    rst $18
    ret nz

    cp a
    push hl
    ret nz

    sub a

jr_047_43e4:
    ld c, h
    db $10
    rst $38
    ld [$efff], sp
    inc b
    rst $28
    ld a, [bc]
    db $fc
    dec b
    cp $02
    rst $38
    rst $38
    inc bc
    cp $00
    ld sp, hl
    ld bc, $07e7
    rst $00
    rst $18
    rra
    cp a
    or h
    ld h, e
    adc l
    ret nz

    call z, $80c3
    add a
    ccf
    jr jr_047_43e4

    inc e
    db $dd
    inc e
    db $dd
    ld [hl], d
    pop bc
    ld [hl], b
    pop bc
    db $db
    rlca
    rst $30
    db $e4
    ld b, b
    ld sp, hl
    ld [bc], a
    ld l, $80
    inc b
    ldh a, [$7f]
    dec bc
    db $e3
    dec bc
    db $e3
    inc e
    ret nz

    or a
    ld b, a
    and b
    db $fc
    and e
    ld h, e
    add hl, sp
    and c
    rst $38
    nop
    rst $30
    dec b
    rst $30
    ld [bc], a
    xor a
    rst $30
    dec b
    ei
    ld [bc], a
    xor [hl]
    ret nz

    dec b
    call nc, $0260
    ld a, [$4021]
    add b
    ld b, $e0
    xor b
    rst $38
    ld d, h
    rst $38
    cp d
    adc a
    rst $38
    db $dd
    rst $38
    ld a, [$6389]
    cpl
    ld h, c
    sbc a
    ld b, c
    rst $30
    cp a
    add a
    nop
    ld a, [hl]
    ld bc, $037c
    sbc $60
    rrca
    rst $30
    ldh [$1f], a
    ret nz

    ld h, $a0

jr_047_4463:
    add b
    rlca
    ld [hl], a
    di
    sbc a
    dec bc
    ld sp, hl
    dec b
    db $fc
    ld [bc], a
    sbc h
    and e
    ld d, b
    ld b, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    cp a
    sbc a
    ld e, a
    rra
    rst $18
    call nc, Call_000_0089
    ld [bc], a
    ld h, c
    call z, $fee1
    pop hl
    cp e
    add d
    or e
    ld hl, $c1b8
    or h
    call nz, $e11c
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

jr_047_44a7:
    xor $ff
    add b
    db $dd
    nop
    db $dd
    nop

jr_047_44ae:
    ret c

    nop
    jr jr_047_44ae

    ld c, d
    db $e3
    and e
    jr nz, jr_047_44f7

    ld e, a
    and b
    cpl
    ret nc

    rrca
    ld sp, hl
    ld b, b
    ld [hl], c
    add hl, hl
    jr jr_047_4463

    adc a
    ld l, a
    ld c, a
    xor a
    adc a
    rra
    ld l, a
    ld b, a
    or a
    add a
    ld [hl], a
    db $fc
    db $e3
    inc c
    ld b, c
    add b
    rst $00
    jp $b330


    jp nc, $e041

    add c
    adc $42
    ld d, $60
    rst $38
    inc d
    rst $28
    rst $38
    ld a, [bc]
    rst $38
    rlca
    jr nc, jr_047_44a7

    dec b
    rst $38
    inc bc
    cp $fc
    ldh [rSC], a
    cp $5e
    rst $38
    cpl
    rst $38
    ld e, a
    rst $28
    rst $38
    xor a

jr_047_44f7:
    rst $38

jr_047_44f8:
    rst $18
    ld c, [hl]
    ld hl, $f0f3
    nop
    rst $38
    adc h
    nop
    ld b, b
    nop
    and b
    ld bc, $03c0
    ld h, b
    call z, Call_000_3660
    add c
    db $db
    add c
    adc h
    db $eb
    xor b
    add c
    db $f4
    dec bc
    ld b, h
    add c
    ld [c], a
    xor b
    add c
    add a
    ld d, c
    add b
    inc sp

jr_047_451d:
    ld h, c
    add hl, hl
    ld h, c
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    set 0, e
    db $dd
    pop bc
    db $dd
    pop bc
    sbc $0f
    ret nz

    sbc $c0
    xor $81
    ld hl, $6288
    add b
    ld h, c
    ld a, h
    ld h, c
    call c, $c1be
    or c
    ld b, $01
    rst $38
    ld [bc], a
    ld a, h
    ldh [$0b], a
    rst $38
    rst $20
    inc b
    rst $38
    ld [$c014], sp
    add d
    and c
    and b
    rst $38
    ret nc

    db $eb
    db $fc
    ldh [$e0], a
    add $01
    ld a, [bc]
    ret nz

    ld [bc], a
    nop
    nop
    rst $38
    rst $28
    ld h, b
    sbc $c0
    cp [hl]
    nop
    cp [hl]
    add b
    ld l, c
    ld a, [hl]
    db $dd

jr_047_4567:
    inc h
    rst $10
    daa
    ld a, a
    ld h, l
    ret nz

    or l
    adc d
    jr jr_047_44f8

    ld a, [hl]
    jr nz, jr_047_44f7

    and b
    ld e, [hl]
    ld b, c
    cp l
    add e
    ld a, e
    ld l, h
    pop hl
    ld c, h
    ld [hl], b
    db $e3
    di
    inc bc
    ei
    ld hl, sp-$02

jr_047_4584:
    pop hl
    sub c
    jr nz, jr_047_4584

    ld hl, sp+$25
    and [hl]
    ld a, b
    ld b, c
    ret z

    ld [$00fe], sp
    ld [hl+], a
    dec bc
    rra
    ld a, [de]
    jp $9f3f


    add b
    ld a, $80
    jr nc, jr_047_451d

    ld b, b
    ld b, b
    ld [hl], b
    ld [bc], a
    cp $f7
    cp $f0
    pop af
    xor c
    ld b, d
    rra
    nop
    inc e
    ld hl, sp-$21
    ld hl, sp-$40
    add $00
    ld a, $14
    ld [hl+], a
    ldh a, [rIF]
    jp nz, $802f

    nop
    rst $10
    pop bc
    sbc a
    ld b, c
    ld b, h
    add h
    sub h
    call nz, Call_000_07f9
    ld a, a
    ld bc, $01f7

jr_047_45c8:
    rst $30
    inc bc
    rst $30
    inc bc
    ld h, b
    jr nz, jr_047_45c8

    ld [bc], a
    call nz, Call_000_0e80
    push bc
    nop
    adc d
    push de
    call nz, Call_047_7feb
    ret nz

    rst $30

jr_047_45dc:
    ld h, b
    ei
    jr nc, jr_047_45dc

    jr jr_047_4567

    and c
    db $fd
    rst $08
    ldh a, [$61]
    inc bc
    ei
    rlca
    rst $20
    rrca
    rst $08
    rst $38
    rrca
    rrca
    rrca
    rst $08
    rra
    sbc a
    ld hl, sp-$08
    ei
    rst $30
    ldh a, [$c8]
    pop bc
    rst $28
    ldh [$f3], a
    db $f4
    ld hl, sp-$51
    ld sp, hl
    ld a, [$1ff8]
    ld [hl], h
    nop
    cp a
    cp $e0
    cp h
    ld a, a
    ld [bc], a
    cp h
    ld [bc], a
    jr c, @-$79

    jr c, jr_047_4618

    ld a, [c]
    ld h, e
    rst $38
    db $fc
    nop

jr_047_4618:
    ld a, l
    nop
    dec l
    ret nc

    ld d, a
    xor b
    ld a, a
    dec hl
    call nc, $f8f9
    rst $20
    ldh [$1f], a
    adc [hl]
    ld h, h
    cp h
    ld [de], a
    ld h, c
    ld [hl], c
    dec h
    nop
    ld b, e
    nop
    ld a, e
    cp $e2
    inc bc
    ccf
    db $10
    rrca
    db $10
    cpl
    db $10
    rst $28
    cp $e5
    ld l, h
    pop hl
    sub [hl]
    db $fc
    ld [c], a
    ld bc, $fefb
    ldh [$fd], a
    ld l, b
    and $b8
    nop
    dec b
    cp $e6
    and b
    rla
    ldh a, [$30]

jr_047_4652:
    cp $5e
    cp $3e
    rst $38
    db $fc
    ld e, h
    db $fc
    cp h
    ld a, [$f67a]
    or $db
    ret nz

    pop bc
    ld b, d
    dec bc
    nop
    rst $38
    cp b
    jp $fdfc


    ei
    cp $fe
    ld [hl], $03
    ret nz

    jr jr_047_4652

    ld b, $f0
    db $fd
    ld c, $bc
    nop
    nop
    ld a, h
    inc bc
    ld a, b
    rlca
    and b
    rst $38
    sbc h
    dec d
    ld [$750a], a
    dec b
    ld a, [bc]
    ld [bc], a
    db $fd
    cp l
    ld c, e
    ldh [$be], a
    nop
    inc e
    inc bc
    db $db
    ld d, l
    rra
    xor d
    xor b
    ld d, a
    ld b, b
    cp a
    daa
    ld h, h
    pop hl
    ld bc, $e06a
    rst $38
    inc bc
    ld a, b
    inc e
    ld h, c
    ld sp, $004c
    ld a, l
    cp $a6
    add b
    ld a, b
    db $10
    rst $28
    add hl, bc
    or $0b
    db $f4
    rst $38
    ld c, $f1
    ld c, h
    or e
    sbc h
    ld h, e
    ld e, l
    and d
    ei
    dec sp
    call nz, Call_047_435a
    add b
    ld a, a
    dec c
    ld a, [c]
    ld a, d
    rra
    add l
    db $f4
    dec bc
    add sp, $17
    db $ed
    ld b, e
    ld b, [hl]
    ld b, c
    db $e3
    ld b, e
    db $fc
    ld hl, sp+$43
    ld d, b
    ld c, c
    cp $fe
    ld a, a
    ld a, a
    sbc a
    rra
    rst $38
    ld b, a
    and a
    xor b
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    rst $28
    sbc h
    sbc h
    ld a, [hl]
    ld a, [hl]
    ld e, b
    ld bc, $f0f3
    rrca
    nop
    adc l
    db $e4
    pop de
    and [hl]
    jr c, jr_047_4716

    nop
    nop
    nop
    reti


    nop
    rst $38
    rst $38
    cp $fd
    ld bc, $dc02
    ld [c], a
    inc bc
    inc b
    rst $08
    dec b
    ld b, $07
    ld [$ffd1], sp
    xor $ed
    add hl, bc
    ld a, [bc]
    db $fd
    dec bc
    db $db
    ld [c], a
    inc c
    dec c
    ld c, $0f

jr_047_4716:
    db $10
    ld de, $d0dc
    rst $38
    xor $ed
    ld [de], a
    inc de
    inc d
    db $db
    pop hl
    dec d
    ld d, $3f
    rla
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    rst $08
    rst $38
    xor $ed
    db $fd
    dec e

jr_047_4731:
    db $dd
    ld [c], a
    ld e, $1f
    jr nz, jr_047_4758

    ld [hl+], a
    inc hl
    db $d3
    inc h
    dec h
    ret nc

    rst $38
    xor $ed
    ld h, $dd
    pop hl
    daa
    jr z, jr_047_47c5

    add hl, hl
    ld a, [hl+]
    dec hl
    ld a, [de]
    inc l
    dec l
    ld l, $d0
    rst $38
    or $ee
    db $ed
    cpl
    jr nc, jr_047_4731

    ldh [$31], a
    ld [hl-], a

jr_047_4758:
    inc sp
    inc [hl]
    sbc a
    ld a, [de]
    ld a, [de]
    dec [hl]
    ld [hl], $37
    ret nc

    rst $38
    xor $ed
    jr c, @-$01

    add hl, sp
    call c, Call_000_3ae1
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec sp
    inc a
    ld c, a
    dec a
    ld a, $3f
    ld b, b
    adc $ff
    db $ed
    db $ec
    ld b, c
    db $dd
    ld [c], a
    rst $38
    ld b, d
    ld a, [de]
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    reti


    ld c, c
    rst $08
    rst $38
    db $ed
    db $ec
    ld c, d

jr_047_478b:
    ld [de], a
    ld a, c
    ld [c], a
    ld c, e
    ld c, h
    sbc a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ret nc

    rst $38
    xor $ed
    ld d, d
    db $fd
    ld d, e
    call c, Call_047_54e2
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, [de]
    ld a, [de]
    or e
    ld e, b
    ld e, c
    rst $08
    rst $38
    xor $ed
    ld e, d
    jr c, jr_047_478b

    pop hl
    ld e, e
    rst $38
    ld e, h
    ld a, [de]
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    db $f4
    rst $08
    rst $38
    ccf
    db $ed
    ld h, e
    cp c
    pop bc
    ld h, h

Jump_047_47c3:
    ld a, [de]
    ld a, [de]

jr_047_47c5:
    ld h, l
    sbc a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    rst $08
    rst $38
    ccf
    db $ed
    ld l, e
    ld a, [$e0dc]
    ld l, h
    ld a, a
    ret nz

    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld sp, hl
    ld [hl], d
    rst $08
    rst $38
    xor $ed
    ld [hl], e
    ld d, d
    nop
    nop
    ld [hl], h
    rst $38
    ld a, [de]
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    db $fc
    cp h
    sbc a
    rst $28
    xor $7c
    ld a, l
    ld a, [hl]
    jr c, jr_047_4879

    add b
    ccf
    add c
    add d
    add e
    add h
    add l
    add [hl]
    pop bc
    rst $38
    ldh a, [$ef]
    rst $38
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    nop
    nop
    rst $08
    adc l
    adc [hl]
    adc a
    sub b
    jp nc, $f0ff

    rst $28
    sub c
    sub d
    rst $38
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    inc bc
    sbc e
    sbc h
    jp nc, $ffff

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

jr_047_4879:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    nop
    nop
    nop
    ld de, $ff09
    rst $38
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec bc
    rst $38
    ld [c], a
    ret c

    rst $38
    rst $28
    xor $01

jr_047_48f4:
    ld [$ffc0], sp
    rst $38
    rst $38
    pop bc
    db $e4
    cp a
    rst $38
    cp h
    db $fd
    jp c, $f8ff

    rst $30
    rst $08
    ld c, $0b
    rrca
    rrca
    jp c, $f5ff

    db $f4
    dec c
    add hl, bc
    rst $08
    ld c, $0e
    ld c, $08
    ret nz

    rst $38
    add c
    ld hl, sp+$0e
    ld c, $a1
    rrca
    ld a, $ff
    ret nz

    db $fd
    ret c

    rst $38
    rst $28
    xor $69
    add c
    db $e4
    dec c
    ld bc, $ff0a
    ldh [$d1], a
    rst $38
    push af
    db $f4
    jp $bfe1


    rst $38
    ld a, a
    rst $30
    ret nz

    db $e3
    jr z, jr_047_48f4

    ret nz

    ret nc

    rst $38
    ld a, [c]
    pop af
    ld c, c
    add b
    ld [c], a
    dec c
    ret nz

    rst $38
    ld b, c
    ld a, [$c040]
    rst $38
    call nz, $be92
    ret nz

    ret nz

    rst $38
    add h
    sbc c
    ld b, c
    ldh [$0c], a
    rst $38
    ldh [$58], a
    ret nz

    pop hl
    pop de
    rst $38
    add $b1
    ld c, $08
    rst $38
    ldh [$0c], a
    add d
    rst $18
    ld [bc], a
    ret nz

    ei
    ld [$8433], sp
    rst $38
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
    ld hl, sp+$00
    nop
    nop
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

jr_047_4aa4:
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
    db $dd
    ld [hl+], a
    rst $30
    xor $11

jr_047_4ab8:
    ld [hl], a
    ld hl, sp-$1d
    db $10
    db $76
    adc b
    cp b
    rst $38
    ld b, b
    ret c

    jr nz, jr_047_4aa4

    ld [bc], a
    ld h, b
    sub l
    add b
    ld [hl], a
    dec bc
    add b
    ld d, a
    ld [hl], c
    and $f0
    nop
    ld a, [hl]
    ret nz

    ldh [$e5], a
    rst $38
    ld h, c
    ld [c], a
    ld [bc], a
    cp e
    ldh [$fe], a
    pop hl
    jp $fb00


    ld a, $51
    and $80
    nop
    ret nz

    nop
    ldh [$da], a
    ldh [$f2], a
    db $eb
    db $fd
    ld hl, sp-$6f
    db $e4
    rrca
    db $10
    rra
    jr nz, @+$31

    db $10
    rst $38
    rra
    ld h, b
    cpl
    ld d, b
    add b
    ld a, a
    nop
    ret nz

    di

Jump_047_4aff:
jr_047_4aff:
    rra
    jr nz, jr_047_4ab8

    pop hl
    db $fc
    db $e3
    ldh [rTAC], a
    nop
    dec bc
    rst $38
    ret nz

    dec l
    ldh [rNR21], a
    ldh a, [rTAC]
    ldh a, [$0b]
    rst $38
    jr jr_047_4b16

    ret nz

jr_047_4b16:
    ld [hl+], a
    db $10
    db $76
    ld bc, $ffb8
    ld b, d
    ret c

    dec b
    ldh [$0a], a
    ld h, b
    ld de, $ff80
    ld h, $8e
    ld c, l
    dec e
    xor e
    nop
    ld d, l
    nop
    rst $38
    rst $28
    nop
    ld [hl], a
    nop
    cp e
    nop
    dec e
    nop
    ld c, a
    rst $28
    ldh [$61], a
    ldh [$c6], a
    rst $20
    cp h
    db $e3
    db $fd
    ldh a, [$ec]
    rst $18
    ld hl, sp+$00
    db $fc
    nop
    cp $16
    ldh [$bf], a
    ld b, b
    rst $38
    rst $18
    jr nz, jr_047_4aff

jr_047_4b50:
    ld d, b
    rst $00
    jr c, jr_047_4b50

    nop
    rst $38
    xor $10
    rst $30
    ld [$04fb], sp
    push af
    ld a, [bc]
    ccf
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, [$5205]
    push hl
    ld d, b
    db $e3
    rst $38
    ldh [rP1], a
    rla
    ld l, b
    rrca
    ld [hl], b
    rla
    ld l, b
    ei
    dec bc
    ld [hl], h
    db $fc
    pop hl
    dec b
    ld a, d
    dec bc
    ld [hl], h
    ld a, [bc]
    rst $38
    ld a, [$f8c1]
    ld [hl+], a
    jr c, jr_047_4b94

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

jr_047_4b94:
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
    ld hl, sp+$36
    push hl
    rst $38

jr_047_4bb4:
    rst $30
    nop
    ld a, [$d500]
    dec b
    rst $28
    rrca
    cp $dc
    pop bc
    ld a, a
    nop
    cp a

jr_047_4bc2:
    nop
    ld e, a
    ld b, b
    rst $28
    rst $38
    ldh [$d7], a
    ldh a, [$a3]
    ld hl, sp-$1d
    inc e
    pop af
    rst $38
    ld c, $e9
    ld d, $f4
    dec bc
    ld hl, sp+$07
    db $f4
    rst $38
    dec bc
    ld a, [$fd05]
    ld [bc], a
    db $fc
    inc bc
    ld a, [$05fd]
    db $fc
    db $e3
    ld a, [hl]
    add c
    ld a, l
    add d
    ld a, $c1
    rst $38
    ldh a, [rP1]
    ld [hl], b
    add b
    ld a, b
    add b
    jr c, jr_047_4bb4

    rst $08
    jr c, @-$3e

    inc e
    ldh [$fe], a
    pop hl
    jr jr_047_4bc2

    dec b
    ld [bc], a
    di
    ld a, [bc]
    dec d
    ld c, [hl]
    pop bc
    ld l, h
    pop hl
    dec b
    ld a, d
    inc bc
    sbc h
    xor a
    ld b, a
    xor b
    xor a
    ld d, b
    add b
    pop bc
    cp $fe
    and $fc
    rst $38
    ld bc, $01fc
    ld hl, sp+$03
    nop
    ccf
    ld bc, $7fff
    ld [bc], a
    ld a, a
    dec b
    rst $38
    dec bc
    rst $38
    rla
    ei
    rst $38
    dec hl
    db $fc
    ldh [$cf], a
    rst $38
    ld e, a
    rst $38
    rst $18
    push af
    rst $38
    rst $38
    db $e3
    cp $f8
    ldh [$f7], a
    ldh a, [$ec]
    ldh [rIE], a
    db $eb
    db $e3
    rst $10
    rst $00
    adc a
    rst $08
    sbc a
    rst $18
    rst $38
    ccf
    cp a
    cp $fe
    cp a
    ccf
    ld a, [hl]
    ld a, a
    rst $38
    ld a, l
    ld a, a
    ld a, d
    ld a, a
    ld [hl], l
    ld a, a
    ld l, d
    ld a, a
    rst $38
    ld [hl], h
    ld a, a
    add sp, -$01
    ld d, c
    db $fc
    and b
    cp $f7
    ld b, b
    rst $38
    add b
    ld l, a
    add $fe
    ld bc, $00df
    rst $38
    ld l, a
    nop
    daa
    add b
    inc de
    ret z

    nop
    db $ec
    sbc $0f
    pop bc
    cp a
    ld b, b
    cp [hl]
    ld b, c
    ld d, d
    push bc
    ld a, a
    nop
    cp a
    rra
    add b
    ld c, $f0
    adc [hl]
    ld [hl], b
    db $fc
    pop hl
    ld c, [hl]
    ld a, a
    or b
    adc [hl]
    ld [hl], b
    adc $30
    xor $10
    ld h, c
    xor h
    ld [hl], l
    ld [bc], a
    ld b, b
    and e
    inc bc
    sbc l
    and b
    ccf
    nop
    ld a, a
    xor c
    ldh [$e7], a
    rlca
    ld [$4e3f], sp
    jp z, $c841

    cp $01
    db $fd
    rst $38
    ld [bc], a
    ei
    inc bc
    ei
    rlca
    rst $30
    rlca
    rst $30
    ld a, a
    rrca
    rst $28
    rrca
    rst $08
    cpl
    cpl
    rst $28
    rst $38
    ldh [$c9], a
    cpl
    ld b, b
    ldh [$fc], a
    pop hl
    cp a
    db $fc
    db $e4
    rst $38
    db $ed
    cp $fe
    ld a, [c]
    add a
    ret nz

    db $fd
    add a
    ret nz

    add e
    ret nz

    ldh a, [$f7]
    pop hl
    or $2f
    ret nc

    rst $38
    and b
    rst $38
    db $fc
    pop hl
    ld b, b
    db $fc
    ld [c], a
    jr c, @-$17

    rst $38
    ld a, b
    add a
    db $fc
    inc bc
    ld e, $e1
    ld b, $f9
    rst $08
    dec b
    ldh [rSC], a
    ld hl, sp-$25
    xor c
    ret nz

    pop bc
    ld c, h
    nop
    db $e3
    nop
    or b
    reti


    and b
    cp $e3

jr_047_4cfc:
    and d
    adc e
    ld bc, $0403
    rst $38
    rlca
    ld [$140b], sp
    rla
    jr z, jr_047_4d38

    ld d, b
    cp a
    ld e, a
    and b
    cpl
    ret nc

    ld e, a
    and b
    ld d, e
    and $00
    rst $30
    ld hl, sp+$04
    ldh a, [rNR34]
    and b
    nop
    rst $30
    ld hl, $7fef
    ld [bc], a
    adc a
    ld bc, $0a0f
    ld c, $08
    cp $e0
    rst $38
    inc b
    rlca
    jr nz, jr_047_4cfc

    ld b, b
    sbc a
    ld [bc], a
    cp a
    rst $18
    dec b
    ld a, a
    dec bc
    rst $38
    dec b
    inc sp

jr_047_4d38:
    and b
    nop
    ld e, a
    ld a, a
    cpl
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    push af
    ld a, [hl]
    jp nz, $0fff

    rrca
    ld bc, $fef1
    rst $38
    db $fd
    rst $38
    rst $38
    ld a, [$f4ff]
    rst $38
    ld hl, sp-$02
    ldh a, [$f8]
    rst $38
    ld hl, sp-$04
    db $f4
    db $fc
    jp nz, $05ed

    ld [$82a3], a
    pop bc
    pop de
    add b
    rla
    add l
    push af
    add l
    ccf
    ld l, d
    add b
    inc bc
    rra
    jr nz, @+$22

    inc bc
    db $fc
    ld bc, $a141
    rst $18
    add [hl]
    ld e, c
    push hl
    pop bc
    db $fc
    or h
    add b
    cp $e1
    add l
    add h
    ld a, a
    add c
    ld d, d
    ldh [rP1], a
    nop
    cp $5c
    pop hl
    cpl
    ret nc

    ld d, a
    xor b
    dec hl
    call nc, $1f15
    ld [$f50a], a
    dec b
    ld a, [$8be0]
    ld a, [hl]
    pop bc
    call z, $daa1
    jp nz, $f4e1

    call nz, $80a2
    ld b, b
    ld d, c
    adc c
    inc b
    db $f4
    rst $38
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $ff01
    ld a, [bc]
    nop
    rla
    nop
    cpl
    nop
    ld e, a
    nop
    rst $38
    sbc a
    sbc a
    ld e, d
    rst $18
    dec d
    rst $18
    xor d
    cp a
    rst $38
    sub b
    cp a
    jr nz, jr_047_4e08

    ld b, b
    ld a, a
    nop
    ld a, a
    cp a
    ld a, [bc]
    db $f4
    ld d, l
    xor d
    cp a
    ld b, b
    ld d, b
    add a
    inc a
    rst $38
    inc a
    ld e, h
    sbc h
    ret z

    ld a, [hl+]
    ret nz

    ld [hl+], a
    ret nz

    ld a, a
    rlca
    pop bc
    ld e, $c2
    dec e
    push bc
    ld a, [de]
    ld l, e
    ld h, d
    rst $38
    ld bc, $0202
    inc b
    inc b
    ld [$0108], sp
    rst $38
    add c
    add e
    inc bc
    ld b, h
    ld b, h
    adc h
    adc h
    add hl, de
    rst $38
    add hl, de
    inc sp
    inc sp
    ld h, a
    ld h, a
    rst $08
    rst $08
    sbc a
    ei
    sbc a
    ccf

jr_047_4e08:
    ei
    and b
    nop
    ccf
    add b
    sbc a
    ret nz

    rst $38
    rst $08
    ldh [$e7], a
    ldh a, [$f3]
    ld hl, sp-$07
    db $fc
    rrca
    db $fc
    nop
    rst $38
    inc bc
    db $fc
    ldh [$3b], a
    add a
    inc l
    ld [c], a
    ld [hl], a

jr_047_4e24:
    add c
    ld a, l
    ret nz

    cp $e2
    add b
    ld [bc], a
    db $fd
    ld bc, $647e
    ld h, b
    rst $30
    ccf
    nop
    rra
    ret


    ld h, c
    nop
    rlca
    cp a
    ld b, b
    ld c, a
    ld e, a
    and b
    xor a
    ld d, b
    jr nz, jr_047_4e24

    db $e4
    ldh [$fe], a
    ld a, [bc]
    and c
    cp $08
    and c
    ld hl, sp+$03
    ld [hl], b
    add a
    or b
    ld b, a
    ld b, b
    rst $20
    xor a
    ld b, $f6
    call nz, $fea0
    ldh [$1f], a
    rst $18
    rra
    xor $20
    and b
    ccf
    cp a
    xor a
    inc a
    ldh [$8c], a
    add b
    ld [bc], a
    rst $38
    ldh [$88], a
    db $fc
    ld d, $fe
    xor [hl]
    cp $5e
    pop af
    cp $3d
    ldh [$fa], a
    call nz, Call_047_638c
    add d
    ld e, l
    add l
    ld a, [hl-]
    rst $38
    adc d
    dec [hl]
    add l
    ld a, [hl-]
    dec bc
    or h
    dec d
    ld l, d
    and $0a
    add c
    ld bc, $57c1
    ld h, h
    adc d
    call nz, Call_047_7f7f

jr_047_4e8f:
    rst $38
    sbc $fc
    ldh [$1f], a
    rra
    inc bc
    inc bc
    dec l
    ld h, b
    ldh [rP1], a
    ei
    db $fc
    cp $ff
    ldh [$fd], a
    db $fd
    ld a, [$f4fa]
    dec de
    db $f4
    nop
    rst $00
    ld b, b
    dec bc
    inc d
    jr nc, jr_047_4e8f

    ret nz

    ld b, b
    ld a, [bc]
    db $e4
    db $f4
    add hl, sp
    ret nz

    dec [hl]
    ld h, e
    ld a, [hl]
    sbc a
    ld b, b
    inc b
    ld c, b
    ld c, b
    sbc h
    rst $38
    sbc h
    jr jr_047_4ed5

    inc e
    add hl, de
    ld a, $34
    ccf
    scf
    ld a, [hl-]
    ccf
    inc a
    sbc e
    add b

jr_047_4ecd:
    ld a, l
    ld a, a
    bit 0, e
    ldh [$e0], a
    rst $38
    add b

jr_047_4ed5:
    dec a
    jp nz, $d403

    rra
    ld a, [hl+]
    ccf
    dec sp
    add b
    ld e, a
    db $e3
    ld h, b
    ld a, [hl]
    ld bc, $08fd
    and c
    ld c, d
    pop hl
    ld sp, hl
    ld a, a
    rst $38
    ldh [rNR31], a
    xor c
    cp h
    cp $7d
    db $fc
    db $fc
    ld b, l
    db $fd
    db $fc
    pop hl
    db $fd
    db $fc
    ld [c], a
    inc a
    jp $e7fc


    cp $e1
    and b
    cp $fe
    add sp, $01
    dec hl
    ld d, h
    rla
    add sp, $2b
    call nc, $fcfa
    and $68
    and [hl]
    ld b, a

jr_047_4f11:
    rst $18
    nop
    xor a
    jr nz, jr_047_4ecd

    rst $28
    jr nc, jr_047_4f11

    rlca
    db $fc
    adc a
    ret z

    ldh [$1f], a
    pop bc
    ei
    ld bc, $5442
    ret nz

    ld bc, $0381
    jp $ff07


    rst $00
    inc bc
    jp $9800


    inc a
    inc a
    ld a, b
    rst $38
    ld a, b
    db $f4
    db $f4
    add sp, -$18
    ret nc

    ret nc

    and b
    db $fd
    and b
    add h
    ld hl, $7c7c
    inc bc
    inc bc
    ld a, a
    ld a, a
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rst $30
    nop
    ld [$42f5], sp
    and c
    cp $f9
    ld hl, sp-$0e
    rst $38
    push af
    push bc
    jp z, Jump_000_3d02

    dec b
    ld a, [$b6bf]
    ccf
    ld b, b
    cp a
    ld b, b
    ld l, h
    push hl
    rst $38
    nop
    ld e, b
    db $e3
    ld sp, hl

jr_047_4f6e:
    rst $38
    db $fc

jr_047_4f70:
    ld hl, sp-$07
    pop af
    ld hl, sp-$0c
    push af
    db $e4
    pop hl
    push af
    adc h
    and c
    ldh [$e1], a
    ld c, b
    pop bc
    ld b, h
    pop bc
    dec hl
    ld d, h
    sub a

jr_047_4f84:
    ccf
    jr z, @-$33

    inc d
    rst $20
    ld [$56f3], sp
    ld b, b
    ld l, b
    ld b, c
    rst $38
    or a
    jr nc, jr_047_4f6e

    jr jr_047_4f70

    jr jr_047_4f84

    inc c
    dec a
    pop af
    ret c

    ld b, d
    and a
    nop
    ldh a, [$08]
    ld c, [hl]
    xor h
    ld d, d
    and h
    adc b
    sub h
    add c
    pop af
    and b
    adc e
    pop bc
    rlca
    inc d
    and l
    and [hl]
    ld h, d
    sbc b
    add b
    ld [bc], a
    ld a, [hl]
    db $fc
    ld [c], a
    ld bc, $02ff
    ld a, a
    ld bc, $153f
    ld h, c
    ld e, a
    ei
    rst $38
    rst $30
    rst $38
    db $eb
    adc b
    add d
    dec b
    ret nc

    ld h, [hl]
    cp $4a
    pop hl
    jp hl


    db $fd
    db $d3
    ei
    db $ec
    db $ed
    sbc $9f
    sbc $9e
    sbc $3f
    cp a
    sbc d
    push bc
    call nc, $6a84
    rst $38

jr_047_4fdf:
    adc d
    or l
    pop bc
    sbc $e0
    rst $28
    ldh a, [$f7]
    db $fc
    ret c

    add l
    sbc b
    and l
    jp $e018


    inc c
    ldh [$0e], a
    db $e3
    ldh a, [rTMA]
    ld [hl], b

jr_047_4ff6:
    jr nz, jr_047_4ff6

    ld [c], a
    jr nc, jr_047_503e

    sbc a
    add b
    ld h, a
    ld a, a
    ld h, b
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld c, $e0
    ld b, d
    db $f4
    nop
    ret nz

    ld e, c
    rlca
    ld e, b
    and c
    ld e, [hl]
    pop hl
    ld [hl], b
    add h
    ld a, [bc]
    ld l, b
    pop hl
    ei
    rst $38
    inc b
    ld h, l
    inc h
    ld bc, $a7ff
    rst $30
    ld c, a

Jump_047_5021:
    cp a
    rst $28
    sbc a
    rst $18
    rra
    cp a
    ccf
    and a
    and b
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$05
    db $fc
    db $fd
    cp $f8
    ld h, a
    ld b, c
    ld e, h
    ld b, h
    jr z, jr_047_4fdf

    ld a, [hl]
    add b
    cp a

jr_047_503e:
    ret nz

    rst $08
    rst $28
    ldh a, [$f7]
    ld hl, sp-$07
    ret nz

    jp $a857


    xor d
    db $ed
    ld d, l
    db $10
    and c
    nop
    rst $38
    ld a, b
    push hl
    ldh [rIF], a
    ld b, b
    rra
    xor a
    and b
    ld c, [hl]
    ld b, b
    sbc [hl]
    ret nc

    and c
    db $fc
    push hl
    add hl, de
    ld b, c
    cp [hl]
    add [hl]
    nop
    add b
    ret nz

    ret nz

    ret nz

    ldh [rIE], a
    ldh [$f0], a
    ld e, b
    rst $38
    pop hl
    db $e4
    ret nz

    ldh a, [rNR42]
    ld a, a
    inc bc
    db $fc
    ldh [$0b], a
    ld hl, sp-$20
    xor $bf
    ld b, a
    rst $18
    rst $38
    rst $28
    and $20
    ld hl, sp+$04
    push af
    rst $38
    add hl, bc
    ld sp, hl
    dec b
    push af
    add hl, bc
    jp hl


    dec d
    pop af
    ld sp, hl
    dec c

jr_047_5090:
    db $fc
    pop hl
    ld e, e
    ld b, b
    sbc a
    ldh [$c7], a
    ld hl, sp-$5f
    rst $38
    cp $d0
    cp $e8
    cp $f4
    db $fd
    ld sp, hl
    rst $38
    nop
    sbc $15
    call c, $bc29
    inc de
    cp b
    rst $38
    ld l, e
    ld a, b
    rst $30
    ldh a, [$f7]
    ldh a, [$e7]
    add sp, -$02
    ret nz

    db $eb
    rst $30
    rst $38
    ldh a, [$f8]
    cp b
    ld hl, sp-$28
    rst $38
    db $fc
    db $ec
    db $fc

Call_047_50c2:
    call c, $eefe
    cp $f4
    ld b, a
    cp $e8
    db $fc
    sbc h
    pop hl
    db $fc
    push hl
    adc h
    pop hl
    rst $28
    ld a, [hl]
    jr nz, jr_047_5154

    rst $20
    rst $38

jr_047_50d7:
    rst $10
    rst $38
    db $e3
    rst $38
    db $d3
    ld l, h
    ret nz

    ld a, a
    pop af
    rst $38
    jp hl


    dec d
    ret nc

    ld l, $e8
    nop
    jr nz, @-$3f

    add sp, $17
    db $f4
    dec bc
    ld [$7a15], a
    nop
    ei
    rst $38
    rst $30
    rst $30
    adc a
    adc a
    ld a, a
    ld a, a
    ld a, $be
    rst $38
    jr jr_047_50d7

    nop
    rst $20
    nop
    ld sp, hl
    adc $d1
    ccf
    rst $10
    ret z

    adc d
    or l
    rlca
    ld a, b
    ld b, h
    ld h, c
    jr nz, jr_047_5090

    cp $9c
    pop hl
    db $eb
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    ld a, c
    ld a, a
    rst $38
    ld a, [hl-]
    rst $38
    ld e, c
    rst $38
    db $f4
    db $fc
    jp z, $f741

    ld hl, sp-$04
    ld hl, sp-$01

jr_047_5128:
    ld [c], a
    ld a, b
    ld hl, sp+$02
    ccf
    dec bc
    dec b
    ccf
    db $fc
    db $e3
    ld bc, $e2fc
    dec d
    inc hl
    cp l
    add c
    and b
    jp $e9a9


    sub h
    ld b, c
    sub b
    ld b, b
    ld a, [$4288]
    db $fd
    or $04
    ld a, a
    dec sp
    rst $38
    ccf
    cp $e0
    rra
    rst $38
    rrca
    ld [hl], h
    ld b, b
    ld l, $a1

jr_047_5154:
    xor $e8
    push hl
    rst $38
    rst $38
    add b
    ld [bc], a
    jr nz, @-$5e

    rst $38
    ld d, b
    rst $08
    rst $38
    xor b
    rst $38
    call nc, $e2cc
    ld b, c
    inc b
    rst $08
    nop
    rst $38
    di
    nop
    db $fc
    add b
    rst $38
    ld d, h
    rst $38
    inc l
    cp e
    rst $38
    dec d
    db $fc
    ldh [rNR14], a
    rst $38
    ld a, [bc]
    inc l
    ret nz

    ld [bc], a
    rst $38
    rra
    dec b
    rst $20
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$b0]
    cpl
    ldh a, [rLCDC]
    ldh [rNR41], a
    ld c, [hl]
    ld h, e
    add b
    ld a, b
    pop hl
    ld a, h
    nop
    ld d, [hl]
    ld d, b
    ld h, b
    ld bc, $4c1f
    ld h, b
    rra
    ld c, b
    inc hl
    ld d, a
    ld b, b
    jr nz, jr_047_5128

    ld d, l
    rst $38
    xor a
    db $fc
    ldh [rP1], a
    ld b, c
    db $fc
    db $e3
    db $ec
    ld hl, $3f55
    rst $38
    add a
    rst $38
    ld b, e
    rst $38
    and c
    ld d, d
    ld [hl+], a
    adc h
    pop hl
    xor c
    ld d, h
    jr nz, jr_047_51e2

    ld e, [hl]
    pop hl
    rrca
    inc l
    and b
    db $eb
    inc [hl]
    and b
    ei
    ld e, h
    ld e, h
    db $e4
    inc a
    pop hl
    ld a, [bc]
    rst $38
    push bc
    or h
    ret nz

    ld sp, hl
    inc [hl]
    nop
    ld e, $3c
    pop hl
    rra
    rst $38
    ld b, b
    ld b, b
    ld [de], a
    pop bc
    db $10
    jp nz, $c00e

    inc bc
    ldh [$f0], a

jr_047_51e2:
    nop
    nop
    nop
    ld [hl], c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ldh [rSB], a
    ld [bc], a
    inc bc
    db $db
    rst $38
    cp $f7
    or $04
    dec b
    ld b, $07
    ld [$0a09], sp
    di
    dec bc
    inc c
    push de
    rst $38
    di
    ld a, [c]
    dec c
    ld c, $0f
    db $10
    ccf
    ld de, $1312
    inc d
    dec d
    ld d, $d4
    rst $38
    ld a, [c]
    pop af
    rst $38
    rla
    inc de
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    di
    ld e, $1f
    call nc, $42ff
    ldh a, [rNR41]
    ld hl, $2322
    ld a, a
    inc h
    dec h
    ld h, $27
    jr z, jr_047_5256

    ld a, [hl+]
    jp nc, $feff

    xor $ed
    dec hl
    inc l
    dec l
    ld [de], a
    ld l, $2f
    jr nc, jr_047_52ba

    ld sp, $3332
    inc [hl]
    ld [de], a
    dec [hl]
    ld [hl], $d0
    rst $38
    cp $ed
    db $ec
    scf
    jr c, jr_047_525c

    ld [de], a
    add hl, sp
    ld a, [hl-]
    dec sp
    rst $38
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld [de], a
    ld [de], a

jr_047_5256:
    ld b, c
    db $fc
    rst $08
    rst $38
    db $ed
    db $ec

jr_047_525c:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    rst $38
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld [de], a
    ld c, [hl]
    ld sp, hl
    ld c, a
    rst $08
    rst $38
    xor $ed
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rst $38
    ld d, l
    ld [de], a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld sp, hl
    inc b
    ret nc

    rst $38
    xor $ed
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rst $38
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld [de], a
    ld h, l
    ld h, [hl]
    ld h, a
    db $fc
    pop de
    rst $38
    rst $28
    xor $68
    ld l, c
    ld l, d
    ld sp, $6c6b
    ccf
    ld [de], a
    ld l, l
    ld l, [hl]
    ld [de], a
    ld l, a
    ld [hl], b
    jp nc, $f0ff

    rst $28
    rst $38
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld [de], a
    rst $20
    ld a, b
    ld a, c
    ld a, d
    db $d3
    rst $38
    ld a, [c]
    pop af

jr_047_52ba:
    ld a, e
    ld a, h
    ld a, l
    ld a, a
    ld sp, $7f7e
    add b
    add c
    add d
    add e
    call nc, $feff
    di
    ld a, [c]
    add h
    ld sp, $3185
    add [hl]
    add a
    adc b
    di
    adc c
    adc d
    push de
    rst $38
    di
    ld a, [c]
    adc e
    ld sp, $318c
    sbc a
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    push de
    rst $38
    di
    ld a, [c]
    sub d
    rst $38
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    db $fc
    push de
    rst $38
    di
    ld a, [c]
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    ld sp, $a007
    and c
    and d
    push de
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
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    ccf
    db $dd
    rst $38
    ld a, [$40f9]
    ld h, b
    nop
    db $db
    rst $38
    ld a, [$40f9]
    ld h, c
    jp c, $faff

    ld sp, hl
    ld b, b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    db $eb
    add a
    db $dd
    rst $38
    ei
    ld a, [$8e01]
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_047_53a5:
    rst $38
    rst $38
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
    db $e3
    nop
    nop
    nop
    ld [hl], c
    ld [$ffff], sp
    rst $38
    rst $38
    pop hl
    ldh [$0d], a
    dec c
    dec c
    db $db
    rst $38
    adc [hl]
    jp nz, Jump_000_0df9

    dec bc
    add hl, bc
    rst $38
    ldh [$d5], a
    rst $38
    add d
    push af
    dec bc
    jr jr_047_53a5

    ld [c], a
    cp a
    rst $38
    ld b, e
    di
    ld c, l
    add hl, bc
    add b
    db $e3
    ret nz

    rst $38
    ld b, d
    db $f4
    jr jr_047_5434

    db $e4
    ret nz

    rst $38
    inc b
    ld a, [c]
    add hl, bc

jr_047_53fa:
    add hl, bc
    ei
    db $e3
    ret nz

    rst $38
    add e
    di
    dec bc
    add hl, bc
    dec bc
    add b
    ret nz

    ld a, [bc]
    cp e
    pop hl
    rst $08
    rst $38
    ret nz

    ld a, [c]
    add b
    ldh [$87], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add b
    rst $38
    inc bc
    db $f4
    add c
    ld [c], a
    rst $38
    pop hl
    ld l, l
    inc l
    rst $08
    rst $38
    xor $ed
    rrca
    rrca
    ret nz

    jp Jump_047_7d0c


    pop hl
    pop de
    rst $38
    ld b, $c0
    rst $28
    ld c, $0e
    ret nz

    push hl
    ld [bc], a
    rst $38
    ld b, d

jr_047_5434:
    sub $3c
    jp nz, $ffd3

    jr jr_047_53fa

    ei
    call nc, $c1ff
    or [hl]
    ld c, $0f
    ld a, [hl-]
    ldh [$d4], a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    cp [hl]
    db $d3
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld bc, $ff48
    ldh [$da], a
    rst $38
    rst $38
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
    db $e4
    db $e3
    nop
    inc bc
    sbc a
    pop bc
    ei
    jp nz, $bf7f

    cp $be
    rst $38
    ld a, l
    db $fc
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
    add hl, sp
    ld c, d
    db $dd
    rst $38
    ret nz

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

Call_047_54e2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    ld [$0008], sp
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    ld a, a
    rra
    dec d
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
    dec d
    nop
    nop
    cpl
    ld a, a
    ccf
    ccf
    rra

jr_047_5540:
    dec d
    nop
    nop
    rra
    dec d
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
    ei
    rst $38
    nop
    cp $eb
    ld hl, sp+$07
    ld c, a
    or b
    and b
    rst $38
    ld e, a
    ld d, h
    xor e
    ld [$f515], a

jr_047_556a:
    ld a, [bc]
    cp $fd
    ld bc, $e1e2
    rra
    ldh [$ef], a
    stop
    rst $38
    cp a
    jr c, jr_047_5540

    ld [hl], h
    adc e
    ld a, [$ee05]
    db $e3
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rlca
    ld hl, sp+$43
    cp h
    xor a
    rst $30
    ld d, b
    ld [hl], a
    adc b
    ret nz

    rst $20
    cp $01
    rst $18
    jr nz, jr_047_560f

    ld bc, $b0fe
    rst $20
    ld a, a
    add b
    sbc a
    ld h, b
    db $e4
    rst $20
    db $fc
    or d
    push hl
    sub b
    pop hl
    rst $20
    jr jr_047_55a9

    db $fc
    ld d, a
    xor b

jr_047_55a9:
    ei
    xor a
    ld d, b
    add h
    push hl
    db $fc
    inc bc
    pop de
    ld l, $fa
    db $fd
    dec b
    db $76
    db $e3
    rst $18
    jr nz, jr_047_556a

    ld c, a
    ld b, d
    cp l
    cp a
    dec b
    ld a, [$45ba]
    ld e, a
    and b
    ld h, h
    pop hl
    ld b, b
    rst $38
    cp a

jr_047_55c9:
    nop
    rst $38
    ld a, [hl+]
    push de
    ld d, h
    xor e
    xor d
    rst $30
    ld d, l
    db $fd
    ld [bc], a
    ld d, h
    pop hl
    add hl, hl
    sub $01
    cp $ff
    and b
    ld e, a
    db $10
    rst $28
    add b
    ld a, a
    ld d, l
    xor d
    rst $38
    cp [hl]
    ld b, c
    rst $38
    nop
    jr nz, jr_047_55c9

    add b
    ld a, a
    rst $38
    nop
    rst $38
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    rst $38
    xor a
    ld d, b
    rst $18
    jr nz, jr_047_560c

    xor $02
    db $fd
    rst $38
    nop
    rst $38
    db $10
    rst $28
    adc c
    db $76
    ld d, h
    xor e
    ei
    xor e
    ld d, h
    ld [hl+], a
    pop hl

jr_047_560c:
    ld bc, $00fe

jr_047_560f:
    rst $38
    and b
    or a
    ld e, a
    ld d, l
    xor d
    xor [hl]
    pop hl
    cp a
    ld b, b
    db $10
    pop hl
    dec b
    rst $38
    ld a, [$fd02]
    ld b, l
    cp d
    xor e
    ld d, h
    db $dd
    rst $30
    ld [hl+], a
    rst $28
    db $10
    ld [hl-], a
    db $e3
    xor e
    ld d, h
    ld a, a
    add b
    ld a, [hl]
    ld hl, sp-$33
    call nc, $fb2b
    inc b
    push af
    ld a, [bc]
    ldh [$c5], a
    cp a
    ld e, $e1
    nop
    rst $38
    xor d
    ld d, l
    ldh a, [$e7]
    rra
    rst $38
    ldh [rVBK], a
    or b
    sub c
    ld l, [hl]
    ld h, a
    sbc b
    ld h, d
    ld a, a
    sbc l
    pop af
    ld c, $d6
    add hl, hl
    db $ed
    ld [de], a
    cp b
    push bc
    ld a, [hl]
    ld [hl], d

jr_047_5659:
    pop hl
    adc d
    ld [hl], l
    ld d, a
    xor b
    db $eb
    inc d
    call nz, $ffe3
    rst $18
    jr nz, @+$11

    ldh a, [$81]
    ld a, [hl]
    ld b, c
    cp [hl]
    ld a, [hl]
    call nz, $ffe9
    nop
    ld e, a
    and b
    xor c
    ld d, [hl]
    jr nc, jr_047_5659

    cp h
    db $ec
    jp hl


    ld [hl], h
    call Call_000_01fe
    and b
    ld e, a
    ld h, b
    ret


    ccf
    or a
    ret nz

    ld d, a
    xor b
    ld d, b
    rst $00
    xor d
    ld d, l
    ld b, h
    pop bc
    ei
    pop bc
    inc b
    ldh a, [$eb]
    sub [hl]
    pop bc
    or h
    jp $e3e0


    ld b, b
    pop bc
    and l
    ld e, d
    cp h
    or h
    pop bc
    ret nc

    db $e3
    ld [$f715], a
    ld [$c10c], sp
    db $fd
    ld a, c
    ld [bc], a
    ret nz

    db $e3
    xor $c1
    ldh a, [rIF]
    add b
    ld a, a
    sbc [hl]
    pop bc
    cp $72
    push bc
    cp $01
    rra
    ldh [rSCX], a
    cp h
    xor b
    rst $30

jr_047_56be:
    ld d, a
    ld d, l
    xor d
    ld [c], a
    and c
    ld [hl], a
    adc b
    cp d
    ld b, l
    ldh a, [$0e]
    pop bc
    sub b
    db $e3
    adc d
    pop hl
    add sp, -$1f
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl]
    db $fc
    db $e3
    ldh [rIE], a
    db $fd
    ld_long a, $fffe
    rst $38
    push hl
    cp a
    xor d
    ld d, l
    nop
    rst $38
    ld d, l
    xor d
    call nc, $80c1
    sbc a
    rst $38
    ret nz

    rst $38
    jp z, $f0f5

    rst $20
    sub a
    and c
    xor d
    db $fd
    ld d, l
    ldh [$e7], a
    ld bc, $03ff
    rst $38
    xor a
    ld d, a
    jp nc, $e3d0

    ccf
    ret nz

    and $f7
    db $ed
    ldh [$fe], a
    and $f0
    rst $38
    and e
    db $fc
    rst $38
    and c
    xor b
    ld b, a
    and h
    ld b, b
    xor e
    db $fc
    jr c, jr_047_56be

    nop
    rst $18
    jp nz, Jump_000_3507

    ccf
    ld [$e4e0], a
    nop
    nop

jr_047_5722:
    sbc a
    ld d, a
    rst $38
    xor e
    rst $38
    ld e, a
    ld e, d
    pop hl
    ld b, d
    jp $ff00


    rst $20
    ldh [$fb], a
    ld hl, sp-$03
    db $fc
    cp $fe
    ld d, a
    rrca
    rst $38
    rra
    cp $e0
    ccf
    cp $e0
    ld a, a
    cp $e2
    sub a
    nop
    rst $38
    add b
    cp $e0
    ret nz

    cp $e2
    add h
    pop hl
    ei
    rst $38
    inc bc
    rst $30
    rlca
    rst $28
    rrca
    db $e3
    inc bc
    pop bc
    rst $38
    dec e
    ret z

    ld e, $ec
    ld c, $f1
    ld bc, $f7d7
    jr z, jr_047_5722

    ld b, b
    call nc, Call_000_04a0
    rst $38
    ld a, [hl+]
    rst $38
    rst $28
    ld d, h
    nop
    nop
    ld hl, sp+$2c
    and [hl]
    rst $38
    ld bc, $ffc0
    nop
    ccf
    ccf
    ld e, $de
    cp $04
    rst $38
    cp a
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    xor d
    cp $e2
    ldh [rIF], a
    rlca
    ld l, a
    rlca
    rst $30
    call nc, $fe80
    ld [c], a
    jp z, $f482

    ldh [$91], a
    adc e
    sbc h
    pop bc
    rst $20
    ld a, c
    add c
    and e
    rst $38
    ld d, a
    ld a, d
    ldh [$f5], a
    rrc a
    rst $38
    rrca
    and e
    and e
    ld d, c
    ld d, c
    xor b
    xor b
    call nc, $d45f
    ld a, [$fdfa]
    db $fd
    reti


    rst $00
    ld a, a
    rst $38
    ldh [$b9], a
    ccf
    ret


    ret nz

    add sp, -$3f
    ld hl, sp-$01
    db $f4
    db $fc
    db $e4
    db $fd
    cp $31
    adc b
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [$f7ff]
    ccf
    rlca
    xor $0f
    add sp, $0e
    ldh a, [$fb]
    add c
    ldh [$c2], a
    rst $38
    and a
    and b
    rrca
    nop
    ccf
    nop
    ld b, a
    nop
    rst $38
    add e
    jr c, jr_047_57e7

    inc c
    ld b, e
    inc b

jr_047_57e7:
    ld h, d
    ld [$0cff], sp
    db $ed
    inc c
    db $ed
    inc e
    db $dd
    inc a
    cp l
    rst $38
    inc l
    xor l
    inc c
    call $f300
    nop
    rst $38
    rst $38
    inc bc
    sbc e
    ld h, e
    dec de
    ld h, e
    dec de
    inc bc
    dec sp
    rst $38
    rlca
    ld [hl], a
    dec c
    db $ed
    ld e, $9e
    ld l, $ce
    sbc h
    ld b, d
    db $e3
    inc a
    pop hl
    ccf
    add b
    ccf
    sub l
    add b
    pop de
    ld h, c
    ld c, $ee
    adc $c8
    ld [bc], a
    rst $38
    dec b
    db $fc
    ld [c], a
    adc d
    rst $38
    push bc
    cp a
    rst $38
    jp z, $f5ff

    rst $38
    xor a
    inc a
    ldh [$af], a
    ret z

    sub [hl]
    ret nz

    db $fc
    push hl
    rst $20
    and l
    cp $ff
    ldh [rLCDC], a
    pop hl
    ldh a, [$f0]
    rst $38
    pop bc
    pop bc
    adc d
    adc d
    dec d
    dec d
    dec hl
    dec hl
    rst $28
    ld e, a
    ld e, a
    cp a
    cp a
    add sp, -$1f
    ld hl, sp-$08
    push af
    db $fd
    push af
    pop bc
    and e
    rst $00
    rst $00
    and e
    and e
    rra
    rra
    rst $38
    rlca
    rlca
    ld b, e
    ld b, e
    xor c
    xor c
    push de
    push de
    ld a, a
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [$fbfa]
    and $a8
    rra
    jp $a1c3


    and c
    db $fd
    db $fc
    and b
    or d
    ldh [$90], a
    and [hl]
    ld e, l
    ld b, b
    ld d, b
    ret nz

    ld b, b
    rst $38
    and b
    ld a, [$fcc2]
    sbc $a0
    ld l, a
    ld hl, sp+$03
    ldh a, [rTAC]
    cp $e1
    ld a, [$f403]
    and e
    ei
    nop
    or $eb
    and b
    add sp, $20
    ldh [rSTAT], a
    pop bc
    cp a
    nop
    ld bc, $0382
    pop bc
    inc bc
    ld sp, $fee6
    rst $38
    ld [bc], a
    cp $05
    db $fd
    dec de

jr_047_58aa:
    ei
    db $10
    ldh [rIE], a
    cpl
    jp z, $811f

    ld a, a
    nop
    rst $10
    jr z, jr_047_58aa

    xor e
    ld d, h
    ldh [$61], a
    jr @-$1e

    nop
    adc a
    ret nz

    rst $10
    ld a, a
    ldh a, [$eb]
    ld hl, sp-$0b
    db $fc
    ld a, [$8ffe]
    ret nz

    ld e, h
    ldh [rWY], a
    ld b, b
    push bc
    inc bc
    rst $38
    rlca
    cp $e4
    rst $28
    ld b, [hl]
    xor h
    rst $30
    xor a
    rst $38
    rst $18
    db $ec
    add sp, $37
    scf
    rst $38
    rst $38
    rst $28
    ld e, a
    ld e, a
    xor a
    xor a
    pop hl
    add e
    db $e3
    db $e3
    push bc
    rst $38
    push bc
    push de
    push de
    ld [$fdea], a
    db $fd
    cp $60
    rst $08
    add b
    ld l, e
    and b
    ld l, b
    and b
    rst $00
    add c
    ldh a, [$e3]
    dec d
    dec d
    xor $e1
    rst $38
    call nc, $ead4
    ld [$3d3d], a
    sbc a
    sbc a
    pop af
    ld e, a
    ld d, e
    and b
    xor $e1
    and a
    add e
    adc a
    adc a
    ld d, [hl]
    ld d, [hl]
    ld a, a
    db $eb
    db $eb
    rst $38
    rst $38
    dec b
    dec b
    cp $04
    db $e4
    rst $18
    cp a
    cp a
    ld d, a
    ld d, a
    ei
    db $e3
    ret nz

    jr nz, @+$01

    ld a, l
    ld d, b
    ld [bc], a
    ldh [$d4], a
    rst $38
    ld [$f7ff], a
    ld [hl], h
    ldh [$9c], a
    sub c
    and b
    cpl
    ld b, [hl]
    ld d, b
    rst $38
    xor b
    add sp, -$20
    ld hl, $4249
    rst $38
    rst $38
    xor c
    rst $38
    inc bc
    inc bc
    jp c, $b51b

    rst $38
    scf
    or [hl]
    scf
    jp $9103


    dec [hl]
    and b
    cp a
    ld [hl], $00
    ld l, a
    ld a, a
    rst $38
    cp a
    adc h
    and [hl]
    ld a, [hl]
    rst $28
    ld a, [hl]
    ld bc, $fe81
    cp h
    and b
    cp [hl]
    cp a
    cp a
    ld sp, hl
    cp a
    and b
    and c
    sbc b
    ld [c], a
    add b
    cp a
    add b
    rst $18
    ret nz

    rst $38
    rst $28
    ldh [$ef], a
    ldh [$f7], a
    ldh a, [$db]
    ld hl, sp-$75

jr_047_5980:
    and a

jr_047_5981:
    ldh a, [$d0]
    add e
    ld e, a
    jp z, $fce0

    db $e3
    rlca
    add l
    rst $30
    ld a, a
    rst $30
    db $eb
    db $eb
    or a
    or a
    rst $38
    rst $38
    ld c, h
    pop bc
    or $56
    pop bc
    add l
    add l
    ld e, $c1
    rst $38
    rst $38
    ld e, [hl]
    ld e, [hl]
    cp $1a
    pop bc
    pop af
    pop af
    ld l, e
    ld l, e
    rst $10
    rst $10
    rst $38
    rst $38
    rst $38
    and b
    and b
    cp a
    cp a
    ldh a, [$f0]
    pop hl
    rst $30
    pop hl
    jp z, $f2ca

    pop hl
    db $f4
    db $f4
    nop
    nop
    rst $28
    xor a
    xor a
    rst $18
    rst $18
    sub [hl]
    pop hl
    db $f4
    db $f4
    xor b
    ld d, l
    xor b
    ldh a, [$c2]
    ld d, a
    ld c, e
    and b
    rst $18
    pop af
    ld l, d
    xor [hl]
    xor c
    and b
    db $ec
    rrca
    ldh [$dd], a
    ld l, b
    ld [hl], l
    rst $38
    jp hl


    and e
    db $fd
    rst $38
    xor d
    ret z

    di
    add e
    sbc $e2
    ld hl, sp-$1f
    xor l
    or a
    ld l, b
    add e
    and e
    nop
    cp $de
    cp $e2
    db $fc
    ld bc, $02f8
    cp $e1
    ld c, a
    nop
    rst $38
    adc a
    jr nz, jr_047_5981

    jr nc, jr_047_5980

    inc e
    nop
    ld l, a
    cp $d3
    ld h, b
    rst $08
    nop
    or c
    rst $30
    and a
    db $eb
    ld c, e
    ld a, a
    rst $10
    sub a
    ccf
    ccf
    inc a
    cp h
    nop
    db $e4
    and d
    rst $38
    rst $38
    db $fd
    cp $ea
    db $fc
    ld d, l
    ldh [$e3], a
    cp h
    db $dd
    ld h, b
    push hl
    ld [bc], a
    rrca
    add b
    ld l, a
    ld h, b
    ld [bc], a
    pop hl
    rst $28
    add a
    ldh [$df], a
    ret nz

    cp $e1
    ld l, h
    and $4e
    ld l, e
    ld sp, hl
    xor c
    db $eb
    xor d
    sub a
    ld h, d
    rst $30
    dec l
    ld l, b
    ld e, [hl]
    ld hl, $bf68
    ld e, e
    add b
    xor e
    ld d, h
    pop de
    ld b, h
    ld b, b
    pop hl
    or a
    db $db
    add [hl]
    cp $c8
    ld h, b
    add b
    db $fd
    ld h, b
    adc [hl]
    adc d
    ld b, c
    and b
    rst $38
    push de
    ld b, e
    add b
    cp c
    add c
    ld b, $e1
    ld d, l
    db $10
    xor h
    ld h, d
    dec l
    pop bc
    and h
    ret nz

    db $10
    ld [c], a
    xor d
    inc sp
    ld h, b
    ld h, h
    ld hl, $e300
    ld [hl], d
    add l
    and l
    dec d
    and [hl]
    and $70
    ld b, e
    ld d, a
    rst $38
    rst $38
    ld a, [bc]
    ldh [$eb], a
    inc bc
    db $fc
    db $fd
    nop
    db $fc
    xor $40
    pop af
    nop
    db $e3
    rst $38
    nop
    db $dd
    db $dd
    ld h, d
    ld h, d
    inc a
    dec a
    ret nz

    rst $30
    inc bc
    ld b, b
    rra
    ld l, e
    ld h, e
    ccf
    ccf
    rlca
    rst $00
    rrca
    add hl, bc
    jp hl


    dec c
    db $ed
    cp $e5
    db $10
    pop bc

jr_047_5aa5:
    db $fc
    jp hl


    daa
    ld b, [hl]
    add hl, bc
    ld d, l
    sub b
    jp nz, $e558

    db $eb
    ldh a, [$e2]
    db $ec
    pop hl
    dec c
    ld b, b
    db $10
    ld h, b
    pop bc
    and b
    db $f4
    db $e4
    ret c

    pop hl
    ld e, h
    ld hl, $e1f0
    jr nc, jr_047_5aa5

    ld a, [$44ff]
    ld a, h
    ld [bc], a
    jr z, jr_047_5aeb

    dec b
    ld d, h
    ret nz

    inc h
    db $e3
    add hl, bc

jr_047_5ad1:
    ld h, c
    ld a, [hl+]
    call c, $a040
    inc h
    db $e3
    ld b, b
    jp $a024


    inc [hl]
    call nz, $e5b8
    rst $38
    jp c, $eac2

    db $10
    cp h
    ld [c], a
    and d
    dec h
    cp [hl]
    and b

jr_047_5aeb:
    and h
    ld b, b
    cp a
    jr z, jr_047_5ad1

    ld l, b
    ld [$29c2], a
    ld hl, sp-$73
    ld h, a
    ld bc, $adc3
    rlca
    ret nz

    nop
    add b
    ccf
    ccf
    db $fc
    and l
    dec b
    push de
    jr nz, jr_047_5b1e

    nop
    ld bc, $c3c0
    rst $00
    adc e
    nop
    adc a
    ld a, [c]
    jr nz, jr_047_5b50

    ld e, [hl]
    ld b, h
    ret nc

    ld h, b

jr_047_5b15:
    add e
    rlca
    db $fc
    cp $fe
    pop hl
    dec c
    db $ed
    dec e

jr_047_5b1e:
    db $dd
    dec de
    db $db
    rlca
    rst $38
    rlca

jr_047_5b24:
    reti


    add c
    cp [hl]
    jr jr_047_5ba8

    inc [hl]
    ld a, a
    add l
    ld [$497e], sp
    add b
    ld d, d
    nop
    pop de
    pop bc
    rst $20
    and d
    pop hl
    and b
    nop
    add a
    ccf
    jp z, Jump_000_3815

    db $e4
    add a
    jr nz, jr_047_5b6f

    jr nc, jr_047_5b24

    add b
    ld [hl], c
    rst $38
    ld [hl], c
    ld l, [hl]
    ld l, [hl]
    ld e, a
    ld e, a
    rra
    sbc a
    ld c, $f7

jr_047_5b50:
    xor $01
    ldh a, [rLYC]
    ld hl, $e7e0
    ldh [$e7], a
    rst $38
    ld b, b
    ld c, a
    inc d
    dec hl
    xor b
    ld d, a
    ld d, b
    xor a
    cp $35
    ld hl, $ea14
    ld a, [hl+]
    call nc, $ea15
    ld [bc], a
    db $dd
    db $fd
    add hl, hl

jr_047_5b6f:
    dec h
    ld a, a
    nop
    cp a
    ld b, d
    jr nz, jr_047_5b15

    ld b, b
    ei
    nop
    ldh [rNR10], a
    daa
    nop
    nop
    rst $28
    nop
    nop
    db $fd
    db $10
    rlca
    inc hl
    push de
    ld a, [bc]
    jp z, $1515

    ld a, [hl+]
    inc bc
    xor b
    rla
    ccf
    push hl
    ld e, b
    jp nz, $81ea

    ld l, d
    pop bc
    ld h, [hl]
    pop bc
    ldh a, [$e7]
    nop
    ld d, [hl]
    jp $c34e


    ldh a, [$eb]
    and h
    add c
    ldh [$e9], a
    call c, Call_000_1ee7

jr_047_5ba8:
    jp Jump_047_418d


    db $10
    xor h
    push hl
    ld d, h
    ld b, c
    or b
    jp hl


    sub b
    rst $20
    push af
    adc h
    and $2d
    nop
    ld h, h
    and d
    nop
    rra
    ld hl, $a1e2
    ld b, d
    and e
    jr z, @-$5d

    ld l, h
    db $e3
    call c, $f0e3
    rst $20
    ret nc

    rst $20
    ld bc, $0050
    nop
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    nop
    rst $38
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    adc a
    dec c
    ld c, $0f
    db $10
    ld a, [c]
    ldh [rIE], a
    rst $38
    push hl
    db $e4
    ld de, $127f
    inc de
    inc d
    dec d
    ld d, $17
    jr @-$28

    pop hl
    ld [hl], e
    add hl, de
    ld a, [de]
    ret nc

    rst $38
    xor $ed
    dec de
    inc e
    dec de
    rst $38
    ldh [$7b], a
    dec e
    ld e, $fa
    pop hl
    rra
    jr nz, jr_047_5c2e

    ld [hl+], a
    ld a, [c]

jr_047_5c0f:
    pop hl
    call nz, $ffca
    add sp, -$19
    inc hl
    rst $38
    ldh a, [$ca]
    rst $38
    add sp, -$19
    inc h
    dec h
    call $ff26
    db $ec
    daa
    jr z, @-$34

    rst $38
    add sp, -$19
    add hl, hl
    ld a, [hl+]
    cp l
    dec hl
    rst $38
    ld [c], a

jr_047_5c2e:
    inc l
    dec l
    ld l, $2f
    or $e3
    jr nc, jr_047_5c0f

    add hl, hl
    jp z, $c0ff

    add sp, $29
    ld sp, $e2bf
    ld [hl-], a
    inc sp
    ld [hl], a
    inc [hl]
    dec [hl]
    ld [hl], $b5
    ldh [$37], a
    jr c, jr_047_5c83

    ret nz

    rst $38
    cp [hl]
    jp hl


    add sp, $3a
    dec sp
    inc a
    dec a
    scf
    ld a, l
    ldh [$3e], a
    rst $38
    ccf
    ld b, b
    ld b, c
    ld b, d
    dec hl
    dec hl
    ld b, e
    ld b, h
    rst $20
    ld b, l
    ld b, [hl]
    ld b, a
    jp z, $e8ff

    rst $20
    ld c, b
    ld c, c
    ld c, d
    ei
    ld c, e
    ld c, h
    dec a
    ldh [rKEY1], a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld a, a
    ld d, d
    ld d, e
    add hl, hl
    ld d, h
    ld d, l
    ld c, c
    ld d, [hl]
    jp z, $feff

    add sp, -$19
    ld d, a

jr_047_5c83:
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    rst $38
    ld e, [hl]
    dec hl
    inc l
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    sbc a
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    jp z, $e8ff

    rst $20
    ld l, c
    rst $28
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    cp l
    pop bc
    ld l, [hl]
    ld l, a
    ld [hl], b
    rst $38
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, h
    jp z, $e8ff

    rst $20
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, l
    pop bc
    rst $38
    ld a, [hl]
    ld a, a
    add b
    dec hl
    add c
    add d
    add e
    add h
    rst $20
    add l
    add [hl]
    add a
    jp z, $e8ff

    rst $20
    adc b
    adc c
    adc d
    rst $38
    adc e
    adc h
    adc l
    dec hl
    adc [hl]
    adc a
    sub b
    sub c
    scf
    sub d
    sub e
    sub h
    inc [hl]
    pop bc
    ld a, l
    sub l
    jp z, $e8ff

    rst $20
    db $fd
    sub [hl]
    ld bc, $97c3
    sbc b
    dec hl
    sbc c
    sbc d
    sbc e
    push hl
    sbc h
    db $f4
    and d
    ld a, l
    jp z, $e8ff

    rst $20
    sbc l
    sbc [hl]
    sbc a
    sub $ff
    ldh [$a0], a
    and c
    rst $38
    pop hl
    and d
    push af
    pop hl
    sbc a
    and e
    cp c
    and h
    jp z, $e8ff

    rst $20
    and l
    and [hl]
    and a
    rst $38
    db $ed
    xor b
    nop
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $20
    and $c0
    ld h, c
    nop
    jp c, $f5ff

    db $f4
    ret nz

    ld h, h
    rst $10
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
    ld [$0000], a
    nop
    dec b
    ld a, [bc]
    rst $38
    ldh a, [rIF]
    rst $38
    pop hl
    rst $20
    pop af
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld b, b
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
    jp $0ce8


    rst $38
    ldh [rNR32], a
    ret nz

    rst $38
    ret nz

    ld hl, sp+$0d
    dec c
    dec c
    cp a
    push hl
    ret nz

    rst $38
    ld c, d
    db $eb
    dec a
    ld a, [hl+]
    add b
    pop hl
    ld [$0d0d], sp
    dec bc
    ret nz

    rst $38
    ld b, b
    ld sp, hl
    rrc l
    dec bc
    cp a
    ld [c], a
    ld a, [hl+]
    ret nz

    rst $38
    set 2, c
    ld c, h
    inc c
    and e
    inc c
    dec bc
    cp $c4
    ret nz

    rst $38
    sub h
    call z, $ff09
    ldh [$0e], a
    rrca
    ld [$0808], sp
    ld c, $c6
    ld [c], a
    ei
    db $e3
    push bc
    rst $38
    ret nz

    db $ec
    add e
    add hl, bc
    add hl, bc
    ret nz

    rst $38
    inc d
    call nc, $e17f
    ret nz

    ldh [$fe], a
    db $e3
    ld l, a
    db $10
    ret nz

    rst $38
    call nc, $c9a9
    push hl
    ld hl, sp-$19
    cpl
    ret nz

    rst $38
    add b
    db $ed
    ld a, [$00f0]
    push bc
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
    ld [bc], a
    push af
    db $f4
    ld c, a
    rst $38
    push af
    push bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $30
    cp l
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
    rst $00
    rst $38
    ret nz

    ld sp, hl
    ret nz

    ld h, c
    pop de
    rst $38
    push af
    db $f4
    ret nz

    ld h, h
    rst $10
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
    ld [$0000], a
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    ld a, a
    rra
    dec d
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
    dec d
    nop
    nop
    cpl
    ld a, a
    ccf
    ccf
    rra

jr_047_5f57:
    dec d
    nop
    nop
    rra
    dec d
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
    ei
    rst $38
    nop
    cp $eb
    ld hl, sp+$07
    ld c, a
    or b
    and b
    rst $38
    ld e, a
    ld d, h
    xor e
    ld [$f515], a

jr_047_5f81:
    ld a, [bc]
    cp $fd
    ld bc, $e1e2
    rra
    ldh [$ef], a
    stop
    rst $38
    cp a
    jr c, jr_047_5f57

    ld [hl], h
    adc e
    ld a, [$ee05]
    db $e3
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rlca
    ld hl, sp+$43
    cp h
    xor a
    rst $30
    ld d, b
    ld [hl], a
    adc b
    ret nz

    rst $20
    cp $01
    rst $18
    jr nz, jr_047_6026

    ld bc, $b0fe
    rst $20
    ld a, a
    add b
    sbc a
    ld h, b
    db $e4
    rst $20
    db $fc
    or d
    push hl
    sub b
    pop hl
    rst $20
    jr jr_047_5fc0

    db $fc
    ld d, a
    xor b

jr_047_5fc0:
    ei
    xor a
    ld d, b
    add h
    push hl
    db $fc
    inc bc
    pop de
    ld l, $fa
    db $fd
    dec b
    db $76
    db $e3
    rst $18
    jr nz, jr_047_5f81

    ld c, a
    ld b, d
    cp l
    cp a
    dec b
    ld a, [$45ba]
    ld e, a
    and b
    ld h, h
    pop hl
    ld b, b
    rst $38
    cp a

jr_047_5fe0:
    nop
    rst $38
    ld a, [hl+]
    push de
    ld d, h
    xor e
    xor d
    rst $30
    ld d, l
    db $fd
    ld [bc], a
    ld d, h
    pop hl
    add hl, hl
    sub $01
    cp $ff
    and b
    ld e, a
    db $10
    rst $28
    add b
    ld a, a
    ld d, l
    xor d
    rst $38
    cp [hl]
    ld b, c
    rst $38
    nop
    jr nz, jr_047_5fe0

    add b
    ld a, a
    rst $38
    nop
    rst $38
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    rst $38
    xor a
    ld d, b
    rst $18
    jr nz, jr_047_6023

    xor $02
    db $fd
    rst $38
    nop
    rst $38
    db $10
    rst $28
    adc c
    db $76
    ld d, h
    xor e
    ei
    xor e
    ld d, h
    ld [hl+], a
    pop hl

jr_047_6023:
    ld bc, $00fe

jr_047_6026:
    rst $38
    and b
    or a
    ld e, a
    ld d, l
    xor d
    xor [hl]
    pop hl
    cp a
    ld b, b
    db $10
    pop hl
    dec b
    rst $38
    ld a, [$fd02]
    ld b, l
    cp d
    xor e
    ld d, h
    db $dd
    rst $30
    ld [hl+], a
    rst $28
    db $10
    ld [hl-], a
    db $e3
    xor e
    ld d, h
    ld a, a
    add b
    ld a, [hl]
    ld hl, sp-$33
    call nc, $fb2b
    inc b
    push af
    ld a, [bc]
    ldh [$c5], a
    cp a
    ld e, $e1
    nop
    rst $38
    xor d
    ld d, l
    ldh a, [$e7]
    rra
    rst $38
    ldh [rVBK], a
    or b
    sub c
    ld l, [hl]
    ld h, a
    sbc b
    ld h, d
    ld a, a
    sbc l
    pop af
    ld c, $d6
    add hl, hl
    db $ed
    ld [de], a
    cp b
    push bc
    ld a, [hl]
    ld [hl], d

jr_047_6070:
    pop hl
    adc d
    ld [hl], l
    ld d, a
    xor b
    db $eb
    inc d
    call nz, $ffe3
    rst $18
    jr nz, @+$11

    ldh a, [$81]
    ld a, [hl]
    ld b, c
    cp [hl]
    ld a, [hl]
    call nz, $ffe9
    nop
    ld e, a
    and b
    xor c
    ld d, [hl]
    jr nc, jr_047_6070

    cp h
    db $ec
    jp hl


    ld [hl], h
    call Call_000_01fe
    and b
    ld e, a
    ld h, b
    ret


    ccf
    or a
    ret nz

    ld d, a
    xor b
    ld d, b
    rst $00
    xor d
    ld d, l
    ld b, h
    pop bc
    ei

Call_047_60a4:
    pop bc
    inc b
    ldh a, [$eb]
    sub [hl]
    pop bc
    or h
    jp $e3e0


    ld b, b
    pop bc
    and l
    ld e, d
    cp h
    or h
    pop bc
    ret nc

    db $e3
    ld [$f715], a
    ld [$c10c], sp
    db $fd
    ld a, c
    ld [bc], a
    ret nz

    db $e3
    xor $c1
    ldh a, [rIF]
    add b
    ld a, a
    sbc [hl]
    pop bc
    cp $72
    push bc
    cp $01
    rra
    ldh [rSCX], a
    cp h
    xor b
    rst $30
    ld d, a
    ld d, l
    xor d
    ld [c], a
    and c
    ld [hl], a
    adc b
    cp d
    ld b, l
    ldh a, [$0e]
    pop bc
    sub b
    db $e3
    adc d
    pop hl
    add sp, -$1f
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [hl]
    db $fc
    db $e3
    ldh [rIE], a
    db $fd
    ld_long a, $fffe
    rst $38
    push hl
    cp a
    xor d
    ld d, l
    nop
    rst $38
    ld d, l
    xor d
    call nc, $80c1
    sbc a
    rst $38
    ret nz

    rst $38
    jp z, $f0f5

    rst $20
    sub a
    and c
    xor d
    db $fd
    ld d, l
    ldh [$e7], a
    ld bc, $03ff
    rst $38
    xor a
    ld d, a
    jp nc, $e3d0

    ccf
    ret nz

    and $f7
    db $ed
    ldh [$fe], a
    and $f0
    rst $38
    db $e3
    db $fc
    rst $38
    and c
    xor b
    ld b, a
    and h
    add d
    and [hl]
    nop
    db $fd
    ld bc, $faf7
    ld [bc], a
    db $f4
    cp d
    and d
    ldh [rP1], a
    sub l
    rra
    rst $38
    ld l, d
    ld a, a
    db $10
    db $10
    ld a, [bc]
    rst $08
    dec [hl]
    ccf
    cp $c8
    jp nz, $c300

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    rst $28
    rra
    rra
    ld h, a

jr_047_614f:
    rst $20
    or d
    ret z

    nop
    rst $18
    ret nz

    ld e, a
    rst $28
    ldh [rIF], a
    rst $38
    rra
    cp $e0
    ccf
    cp $e0
    ld e, l
    ld a, a
    cp $e2
    nop
    rst $38
    add b
    cp $e0
    ret nz

    cp $e2
    cp $84
    pop hl
    db $ec
    inc c
    db $eb
    dec bc
    rst $20
    rlca
    rst $28
    rst $38
    rrca
    sbc $1e
    db $dd
    dec e
    ret c

    jr jr_047_614f

jr_047_617f:
    rst $38
    ld de, $ccfc
    ldh a, [$b0]
    ret z

    ret z

    ld [hl-], a
    rst $38
    jr nz, jr_047_617f

    add c
    db $fc
    ld bc, $007c
    ld a, $ff
    nop
    ei
    ei
    ld bc, $fe01
    add d
    ccf
    rst $38
    nop
    rra
    ld b, b
    rrca
    jr nz, @+$11

    jr nc, @+$0f

    rst $38
    ld h, b
    rst $30
    ldh a, [$f7]
    ldh a, [$7b]
    ld a, b
    dec sp
    rst $38
    jr c, jr_047_61c7

    jr jr_047_61b1

jr_047_61b1:
    rlca
    nop
    dec c
    ld [bc], a
    add hl, de
    dec bc
    ldh a, [$88]
    cp $e0
    nop
    add b
    sub c
    adc e
    db $ed
    add [hl]
    ld a, c
    add d
    rst $20
    and e
    rst $38
    ld d, a

jr_047_61c7:
    ld a, d
    ldh [$f5], a
    rrc a
    rrca
    and e
    rst $38
    and e
    ld d, c
    ld d, c
    xor b
    xor b
    call nc, $fad4
    ld d, a
    ld a, [$fdfd]
    reti


    rst $00
    ld a, a
    rst $38
    ldh [$3f], a
    ret


    ret nz

    xor [hl]
    add sp, -$3f
    ld hl, sp-$01
    db $f4
    db $fc
    db $e4
    db $fd
    ld sp, $0a88
    rst $38
    rst $38
    dec d
    rst $38
    ld a, [$e8ff]
    ld a, [bc]
    add sp, -$01
    ld [$02f0], sp
    ldh a, [rSC]
    ld a, [$f803]
    rst $38
    ld bc, $01f9
    db $fc
    nop
    inc de
    ld d, d
    rrca
    rst $38
    ld b, b
    rla
    ld [$9c23], sp
    scf
    ld [$ffbf], sp
    ld hl, $1ede
    ldh [rNR41], a
    add hl, de
    nop
    ldh a, [rIE]
    nop
    ldh [rLCDC], a
    add c
    ld bc, $8081
    inc bc
    rst $38
    ld [bc], a
    rrca
    ld [$000f], sp
    inc hl
    xor b
    ld bc, $c8fd
    cp [hl]
    add c
    ld [$09f6], sp
    ldh a, [rTMA]
    pop af
    rst $38
    nop
    rst $30
    and c
    ld l, $b2
    dec b

jr_047_623f:
    cp c
    ld [bc], a
    rst $38
    ld a, b
    ld b, e
    ld hl, sp-$7d
    ld hl, sp+$02
    pop de
    nop
    rst $38
    ret z

    rlca
    ld a, a
    nop
    ccf
    add b
    rra
    ret nz

    ld c, [hl]
    cp $e0
    ld b, b
    rra
    ret nz

    or $e0
    jr nc, jr_047_623f

    ld c, $be
    ret z

    rst $30
    ld [bc], a
    rst $38
    dec b
    db $fc
    ld [c], a
    adc d
    rst $38
    push bc
    rst $38
    rst $18
    jp z, $f5ff

    rst $38
    xor a
    inc l
    ldh [$af], a
    rst $38
    ret


    ld e, a
    db $fc
    and $d7
    and l
    cp $ff
    ldh [$30], a
    pop hl
    ldh a, [$f0]
    rst $38
    pop bc
    pop bc
    adc d
    adc d
    dec d
    dec d
    dec hl
    dec hl
    rst $28
    ld e, a
    ld e, a
    cp a
    cp a
    add sp, -$1f
    ld hl, sp-$08
    push af
    db $fd
    push af
    or c
    and e
    rst $00
    rst $00
    and e
    and e
    rra
    rra
    rst $38
    rlca
    rlca
    ld b, e
    ld b, e
    xor c
    xor c
    push de
    push de
    ld a, a
    ld hl, sp-$08
    db $fc
    db $fc
    ld a, [$fbfa]
    sub $a8
    rra
    jp $a1c3


    and c
    db $fd
    db $ec
    and b
    or d
    ldh [$80], a
    and [hl]
    ld e, l
    ld b, b
    ld b, b
    ret nz

    ld b, b
    rst $38
    and b
    ld [$fcc2], a
    adc $a0
    ld a, a
    ld a, [$fa02]
    ld [bc], a
    ld hl, sp+$02
    db $fc
    ei
    ld h, c
    db $fc
    ld d, $62
    rst $38
    pop hl
    add c
    add c
    ld c, b
    ld c, a
    jr nz, jr_047_631d

    rst $38
    ret nc

    rra
    db $e3

jr_047_62e2:
    inc bc
    db $fc
    nop
    nop
    rra
    cp $7a
    pop bc
    ld [$27f8], sp
    rst $20
    dec d
    sbc a
    ld l, e
    ld a, a
    ld a, a
    push bc
    rst $38
    nop
    rst $28
    ld b, b
    rst $18
    dec e
    ldh [rIE], a
    cp a
    and b
    cp a
    pop bc
    rst $18
    jp z, $d4df

    rst $38
    sbc $d0
    rrca
    ret nz

    ld e, $c1
    nop
    rst $18
    rst $38
    db $10
    rst $18
    ld c, b
    cp a
    ld sp, $2a3f
    sbc $1d
    call nc, $e00a
    nop
    cp a
    add b

jr_047_631d:
    cp $e1
    jr nc, jr_047_62e2

    or b
    ldh [$ae], a
    cp a
    ld b, d
    inc bc
    rst $38
    rlca
    cp $e4
    rst $28
    ld [hl], $ac
    xor a
    ei
    rst $38
    rst $18
    db $ec
    add sp, $37
    scf
    rst $38
    rst $38
    ld e, a
    rst $30
    ld e, a
    xor a
    xor a
    pop de
    add e
    db $e3
    db $e3
    push bc
    push bc
    ld a, a
    push de
    push de
    ld [$fdea], a
    db $fd
    cp $bf
    add b
    ld l, h
    ld h, l
    ld [c], a
    cpl
    and b
    rst $38
    rst $38
    ldh a, [$e3]
    dec d
    dec d
    ld d, e
    pop hl
    rst $38
    call nc, $ead4
    ld [$3d3d], a
    sbc a
    sbc a
    pop af
    ld e, a
    push bc
    ret nz

    xor $e1
    sub a
    add e
    adc a
    adc a
    ld d, [hl]
    ld d, [hl]
    ld a, a
    db $eb
    db $eb
    rst $38
    rst $38
    dec b
    dec b
    cp $04
    db $e4
    rst $18
    cp a
    cp a
    ld d, a
    ld d, a
    ei
    db $e3
    ret nz

    jr nz, @+$01

    ld a, l
    ld d, b
    ld [bc], a
    ldh [$d4], a
    rst $38
    ld [$f7ff], a

Call_047_638c:
    ld [hl], h
    ldh [$9d], a
    rst $30
    ld hl, $5048
    rst $38
    xor b
    add sp, -$20
    ld de, $4249
    db $d3
    rst $38
    xor c
    ret nz

    add [hl]
    cp h
    add e
    db $fc
    cp b
    add d
    ld sp, hl
    ld bc, $e1ff
    ld bc, $01c4
    adc l
    ld bc, $013c
    rra
    ld a, l
    ld bc, $ffab
    rst $10
    inc a
    ret nz

    ld hl, $bc83
    add c
    rst $38
    add sp, -$14
    db $e3
    db $eb
    di
    di
    ei
    ei
    rst $18
    rst $20
    rst $20
    sbc a
    sbc a
    ld a, a
    ld d, e
    and b
    pop hl
    ldh [rIE], a
    ld d, a
    ld d, b
    xor e
    cp b
    push de
    db $fc
    jp hl


    db $fc
    rst $08
    or $fe
    ld [$47fe], a
    ret nz

    or b
    ld a, [hl+]
    ld a, a
    nop
    adc $a0
    add e
    ld e, a
    rst $38
    cp a
    db $fc
    db $e4
    rst $10
    ld h, l
    rst $30
    rst $30
    ld l, a
    db $eb
    db $eb
    or a
    or a
    xor h
    pop hl
    ld a, [$36fa]
    pop bc
    ld a, e
    add l
    add l
    cp $a1
    rst $38
    rst $38
    ld e, [hl]
    ld e, [hl]
    ld_long a, $ffa1
    pop af
    pop af
    ld l, e
    ld l, e
    rst $10
    rst $10
    rst $38
    rst $38
    rst $38
    and b
    and b
    cp a
    cp a
    ldh a, [$f0]
    pop hl
    pop hl
    ei
    jp z, $f2ca

    pop hl
    db $f4
    db $f4
    nop

jr_047_641e:
    nop
    xor a
    rst $30
    xor a
    rst $18
    rst $18
    adc b
    pop hl
    db $f4
    db $f4
    xor b
    xor b
    ld a, [hl+]
    ret nc

    jp nz, Jump_000_1b57

    and b
    rst $18
    pop bc
    ld l, d
    xor [hl]
    adc c
    and b
    rst $28
    ret nz

    db $76
    xor l
    ld l, b
    ld [hl], l
    rst $38
    ret


    and e
    db $fd
    rst $38
    xor d
    jp $c483


    sbc $e2
    ld hl, sp-$1f
    xor l
    add a
    ld l, b
    ld h, e
    and d
    push af
    ret z

    ld hl, sp+$01
    rst $38
    pop af
    ld [bc], a
    ld a, [c]
    nop
    pop af
    nop
    db $e3
    nop
    dec d
    adc a
    jp c, Jump_000_3fa0

    cp $e2
    rra
    sub a
    ld h, b
    cp $e7
    add b
    ld h, e
    cp h
    adc a
    and c
    adc e
    and d
    ld a, h
    ld d, b
    ld h, b
    inc hl
    rst $30
    ld b, l
    ld hl, sp-$41
    ld hl, sp-$7c
    add e
    ld b, b
    ccf
    nop
    jr jr_047_641e

    db $fc
    rst $18
    db $fd
    ldh a, [$f3]
    add b
    adc a
    ld bc, $fd80
    nop
    rlca
    ei

jr_047_648b:
    nop
    rst $30
    rst $30
    ld h, h
    db $fc
    and $4c
    and $fe
    ld c, e
    cp c
    xor c
    ld d, l
    db $eb
    ret


    add d
    rst $30
    db $dd
    ld c, b
    ld e, [hl]
    pop de
    ld c, b
    cp a
    dec bc
    add b
    jp hl


    xor e
    add c
    ld b, h
    jr nz, jr_047_648b

    or a
    sbc e
    add [hl]
    cp $ff
    ld d, l
    ld [hl-], a
    inc sp
    ld h, b
    ld d, a
    inc c
    ldh [rIE], a
    nop
    rst $38
    push de
    di
    ld h, b
    ld a, c
    add c
    sub d
    and $c1
    ld d, l
    db $e3
    ld h, b
    jp nz, Jump_047_5021

    rst $18
    ld h, b
    ldh a, [$c3]
    xor d
    sub b
    ld e, l
    add b
    inc d
    ld hl, $c3e0
    ld b, l
    and l
    dec d
    and [hl]
    and $20
    ld b, e
    ld d, a
    cp a
    rst $38
    rst $38
    ld [bc], a
    ld a, [c]
    ld bc, $cdf1
    ld h, b
    ldh a, [$3b]
    nop
    ld hl, sp-$2d
    and d
    rst $38
    nop
    rrca
    cp $e1
    jr nz, @-$1e

    ld sp, hl
    rrca
    call c, Call_047_50c2
    ld h, b
    rra
    rst $18
    rra
    rst $18
    rrca
    rra
    rst $28
    rrca
    rst $28
    rlca
    rst $30
    cp $e1
    ret z

    and e
    ld [de], a
    add e
    rst $38
    db $fd
    db $fd
    ei
    ei
    rst $08
    rst $08
    ccf
    ccf
    ld c, b
    ld b, b
    pop bc
    ld a, [$c765]
    ld h, $55
    ld h, b
    jp nz, $e548

    db $eb
    ldh a, [$e2]
    ld [$e1ec], sp
    xor l
    jr nz, jr_047_655e

    ldh [$a0], a
    db $f4
    db $e4
    ret c

    pop hl
    db $fc
    ld bc, $e1f0
    ld l, $20
    pop hl
    ld a, [$54ff]
    call z, $0504
    inc h
    ret nz

    inc d
    db $e3
    ld [bc], a
    xor c
    ld b, c
    ld a, [hl+]
    inc b
    ldh [rNR14], a
    db $e3
    db $10
    jp $80d4


    inc b
    call nz, $e5b8
    add l
    rst $38
    jp z, $eac2

    cp h
    ld [c], a
    ld b, d
    dec h
    adc [hl]
    and b
    call z, $bfc0
    ldh [rNR23], a
    pop hl

jr_047_655e:
    ld l, b
    ld [$2962], a
    dec a
    ld h, a
    inc c
    ld [hl+], a
    rlca
    rst $30
    inc bc
    cp a
    ld a, [$f903]
    nop
    ld hl, sp+$03
    cp $e0
    ld bc, $fcff
    dec d
    add sp, -$05
    db $d3

jr_047_6579:
    ei
    xor e
    rst $00
    rst $30
    ld b, a
    scf
    rlca
    ret z

    jr nz, @-$16

    rst $20
    nop
    rst $28
    ld sp, hl
    nop
    jr jr_047_65eb

    inc d
    ld h, c
    ld c, $0e
    di
    inc bc
    db $fc
    ld b, a
    ldh a, [rIE]
    jr c, jr_047_6579

    adc d
    db $f4
    and b
    ld l, b
    db $e4
    ld [$12ff], a
    cp $e0
    add b
    ld a, [hl+]
    call nc, $aa55
    ld a, [hl+]
    push de
    dec d
    db $fd
    ld [$85a9], a
    rra
    nop
    ld e, a
    add b
    sbc a
    ld b, b
    ld c, a
    ld c, b
    and b
    and a
    ld d, b
    ld a, [hl]
    ret nz

    nop
    ld h, $01
    ld [hl], e
    and b
    inc a
    ei
    ldh [$83], a
    add b
    jr z, @+$59

    ld d, b
    cpl
    db $fc
    pop hl
    ld h, c
    ld h, b
    nop
    ldh [$03], a
    xor b
    pop bc
    ld a, [bc]
    and c
    cp d
    pop bc
    or [hl]
    pop bc
    ldh a, [$e7]
    and [hl]
    jp $c39e


    nop
    ldh a, [$eb]
    call nz, $e081
    jp hl


    call c, Call_047_6ee7
    jp Jump_047_418d


    xor h
    push hl

jr_047_65eb:
    ld d, h
    ld b, c
    sub h
    or b
    jp hl


    sub b
    rst $20
    push af
    adc h
    and $00
    sub d
    and d
    ld a, b
    and c
    ld bc, $3280
    jp nz, $a382

    ld l, b
    and c
    ld l, h
    db $e3
    call c, $f0e3
    rst $20
    ret nc

    rst $20
    ld d, b

jr_047_660b:
    nop
    nop
    nop
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    nop
    rst $38
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    adc a
    dec c
    ld c, $0f
    db $10
    ld a, [c]
    ldh [rIE], a
    rst $38
    push hl
    db $e4
    ld de, $127f
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_047_660b

    pop hl
    ld [hl], e
    add hl, de
    ld a, [de]
    ret nc

    rst $38
    xor $ed
    dec de
    inc e
    dec de
    rst $38
    ldh [$7b], a
    dec e
    ld e, $fa
    pop hl
    rra
    jr nz, jr_047_666b

    ld [hl+], a
    ld a, [c]

jr_047_664c:
    pop hl
    call nz, $ffca
    add sp, -$19
    inc hl
    rst $38
    ldh a, [$ca]
    rst $38
    add sp, -$19
    inc h
    dec h
    call $ff26
    db $ec
    daa
    jr z, @-$34

    rst $38
    add sp, -$19
    add hl, hl
    ld a, [hl+]
    cp l
    dec hl
    rst $38
    ld [c], a

jr_047_666b:
    inc l
    dec l
    ld l, $2f
    or $e3
    jr nc, jr_047_664c

    add hl, hl
    jp z, $c0ff

    add sp, $29
    ld sp, $e2bf
    ld [hl-], a
    inc sp
    ld [hl], a
    inc [hl]
    dec [hl]
    ld [hl], $b5
    ldh [$37], a
    jr c, jr_047_66c0

    ret nz

    rst $38
    cp [hl]
    jp hl


    add sp, $3a
    dec sp
    inc a
    dec a
    scf
    ld a, l
    ldh [$3e], a
    rst $38
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec hl
    ld b, h
    ld b, l
    rst $20
    ld b, [hl]
    ld b, a
    ld c, b
    jp z, $e8ff

    rst $20
    ld c, c
    ld c, d
    ld c, e
    ei
    ld c, h
    ld c, l
    dec a
    ldh [$4e], a
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld a, a
    ld d, e
    ld d, h
    add hl, hl
    ld d, l
    ld d, [hl]
    ld c, d
    ld d, a
    jp z, $feff

    add sp, -$19
    ld e, b

jr_047_66c0:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    rst $38
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    sbc a
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    jp z, $e8ff

    rst $20
    ld l, h
    rst $38
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    dec hl
    dec hl
    ld [hl], c
    ld [hl], d
    rst $38
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    rst $20
    ld a, e
    ld a, h
    ld a, l
    jp z, $e8ff

    rst $20
    ld a, [hl]
    ld a, a
    add b
    rst $38
    add c
    add d
    dec hl
    dec hl
    add e
    add h
    dec hl
    add l
    rst $38
    add [hl]
    add a
    ld [hl], a
    adc b
    adc c
    adc d
    adc e
    adc h
    ld sp, hl
    adc l
    jp z, $e8ff

    rst $20
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    cp l
    sub e
    inc a
    pop bc
    sub h
    sub l
    sub [hl]
    sub a
    inc [hl]
    pop bc
    add d
    ret


    sbc b
    jp z, $e8ff

    rst $20
    sbc c
    ld bc, $fbc3
    and b
    sbc d
    sbc e
    res 3, h
    sbc l
    db $f4
    and d
    add d
    jp z, $e8ff

    rst $20
    sbc [hl]
    sbc a
    xor l
    and b
    rst $38
    ldh [$a1], a
    and d
    rst $38
    pop hl
    and e
    push af
    pop hl
    and b
    ld [hl], e
    and h
    and l
    jp z, $e8ff

    rst $20
    and [hl]
    and a
    xor b
    rst $38
    db $ed
    ld bc, $caa9
    rst $38
    rst $38
    rst $38
    rst $38
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
    di
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
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ld a, [c]
    inc c
    rst $38
    ldh [$da], a
    rst $38
    ret nz

    ld hl, sp+$08
    ld l, c
    ld [$ffbf], sp
    push af
    db $f4
    ld a, [hl+]
    ret nz

    db $e3
    dec c
    ld [$ffbf], sp
    ld h, b
    ld b, b
    ld a, [$e3c0]
    or d
    pop hl
    rst $38
    rst $38
    xor $ed
    dec bc
    dec bc
    cp $df
    ld [$f1f2], a
    rrca
    rst $38
    pop hl
    add hl, bc
    rst $38
    pop hl
    dec c
    ld [$4508], sp
    add hl, bc
    ld a, [c]
    ld [c], a
    rrca
    jp z, $c0ff

    pop af
    cp e
    ldh [rOBP1], a
    ret nz

    rst $38
    ld [$f280], sp
    cp a
    and $77
    pop hl
    ld l, a
    ret nz

    rst $38
    ld b, b
    jp hl


    push bc
    jp hl


    ld a, b
    db $e3
    ld bc, $ca2f
    rst $38
    add b
    db $ed
    ld a, [$caeb]
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
    rst $38
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
    rst $28
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    rst $38
    ld a, a
    rra
    dec d
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
    dec d
    nop
    nop
    cpl
    ld a, a
    ccf
    ccf
    rra
    dec d
    nop
    nop
    rra
    dec d
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
    db $db
    rst $38
    nop
    cp $f9
    ld hl, sp+$07
    ldh [$eb], a
    ccf
    ret nz

    ld a, [hl]
    ret nc

    rst $20
    push af
    ld a, [bc]
    cp $01
    add sp, $17
    ret nz

    push hl
    rst $38
    scf
    ret z

    ld b, d
    cp l
    or l
    ld c, d
    ld a, a
    add b
    sbc $b0
    rst $20
    rst $18
    jr nz, jr_047_6a24

    sub b
    and d
    db $e3
    db $eb
    inc d
    ei
    db $fd
    ld [bc], a
    sbc b
    push hl
    add sp, $17
    ld b, h
    cp e
    and b

jr_047_69c4:
    sbc a
    ld e, a
    ld d, h
    xor e
    ld [$c015], a
    pop hl
    xor h
    db $e3
    rrca
    rst $38
    ldh a, [rSB]
    cp $a8
    ld d, a
    ld d, h
    xor e
    ld a, [$05fd]
    ld [hl], d
    push hl
    ld a, a
    add b
    rlca
    ld hl, sp+$43
    cp h
    rst $28
    xor a
    ld d, b
    ld [hl], a
    adc b
    ld h, b
    rst $20
    cp $01
    rst $08
    rst $30
    jr nc, @+$03

    cp $50
    rst $20
    ld a, a
    add b
    rra
    ldh [$e3], a
    xor a
    ld d, b
    db $e4
    push hl
    or d
    push hl
    jr nc, @-$1d

    rst $20
    jr jr_047_6a04

    rst $30
    db $fd

jr_047_6a04:
    ld d, l
    xor d
    db $e4
    push hl
    rst $38
    nop
    db $fc
    inc bc
    ei
    pop de
    ld l, $a4
    push hl
    rst $18
    jr nz, jr_047_69c4

    ld c, a
    ld b, d
    ld a, a
    cp l
    dec b
    ld a, [$45ba]
    ld e, a
    and b
    inc b
    pop hl
    rst $38

jr_047_6a21:
    ld b, b
    cp a
    nop

jr_047_6a24:
    rst $38
    ld a, [hl+]
    push de
    ld d, h
    xor e
    ei
    xor d
    ld d, l
    ld e, h
    db $e3
    add hl, bc
    or $00
    rst $38
    add b
    rst $38
    ld a, a
    db $10
    rst $28
    add b
    ld a, a
    ld d, l
    xor d
    cp [hl]
    rst $38
    ld b, c
    rst $38
    nop
    jr nz, jr_047_6a21

    add b
    ld a, a
    nop
    rst $18
    rst $38
    dec d
    ld [$d52a], a
    xor [hl]
    pop hl
    rst $18
    jr nz, @+$01

    ld de, $02ee
    db $fd
    nop
    rst $38
    db $10
    rst $28
    cp a
    adc c
    db $76
    ld d, h
    xor e
    xor e
    ld d, h
    jp nz, Jump_000_01c1

    ld a, a
    cp $00
    rst $38
    and b
    ld e, a
    ld d, l
    xor d
    xor [hl]
    pop hl
    ei
    cp a
    ld b, b
    or b
    pop bc
    dec b
    ld a, [$fd02]
    ld b, l
    ld a, a
    cp d
    xor e
    ld d, h
    db $dd
    ld [hl+], a
    rst $28
    db $10
    ld [hl-], a
    db $e3
    di
    xor e
    ld d, h
    and $c9
    and [hl]
    jp $2bd4


    ei
    inc b
    ei
    push af
    ld a, [bc]
    add b
    push bc
    ld e, $e1
    nop
    rst $38
    xor d
    db $fd
    ld d, l
    ldh a, [$e7]
    rra
    ldh [rWX], a
    or h
    sub l
    ld l, d
    rst $38
    ld l, a
    sub b
    ld [c], a
    dec e
    pop af
    ld c, $d6
    add hl, hl
    di
    db $ed
    ld [de], a
    ld e, b
    push bc
    ld [hl], d
    pop hl
    adc d
    ld [hl], l
    ld d, a
    xor b
    ei
    db $eb
    inc d
    call nz, $dde3
    ld [hl+], a
    rrca
    ldh a, [$80]
    rst $30
    ld a, a
    ld b, c
    cp [hl]
    call nz, $ffe9
    nop
    ld e, a
    and b
    db $e3
    xor e
    ld d, h
    adc h
    rst $00
    db $ec
    push hl
    inc d
    call Call_000_21de
    and b
    ld l, l
    ld e, a
    ld [hl+], a
    bit 2, a
    xor b
    ldh a, [$a7]
    xor d
    ld d, l
    db $e4
    and c
    add e
    ei
    inc b
    ldh a, [$eb]
    sub [hl]
    pop bc
    ld e, b
    jp $e3e0


    ld d, [hl]
    pop hl
    and l
    ld a, c
    ld e, d
    or h
    pop bc
    ret nc

    db $e3
    ld [$f715], a
    ld [$a1ac], sp
    di
    db $fd
    ld [bc], a
    ret nz

    db $e3
    xor $c1
    ldh a, [rIF]
    add b
    ld a, a
    db $fc
    sbc [hl]
    pop bc
    ld [hl], d
    push bc
    cp $01
    rra
    ldh [rSCX], a
    cp h
    rst $28
    xor b
    ld d, a
    ld d, l
    xor d
    add d
    and c
    ld [hl], a
    adc b
    cp d
    pop hl
    ld b, l
    ld c, $c1
    sub b
    db $e3
    adc d
    pop hl
    add sp, -$1f
    xor d
    ld d, l
    ld d, l
    db $fd
    xor d
    db $fc
    db $e3
    ldh [rIE], a
    db $fd
    ld_long a, $fffe
    ld a, [hl]
    rst $38
    push hl
    xor d
    ld d, l
    nop
    rst $38
    ld d, l
    xor d
    call nc, Call_000_3fc1
    add b
    rst $38
    ret nz

    rst $38
    jp z, $f0f5

    rst $20
    scf
    and c
    ei
    xor d
    ld d, l
    ldh [$e7], a
    ld bc, $03ff
    rst $38
    xor a
    and l
    ld d, a
    ret nc

    db $e3
    ccf
    ret nz

    and $f7
    db $ed
    ldh [$fe], a
    and $f0
    ld b, a
    rst $38
    db $fc
    rst $38
    and c
    xor b
    rst $20
    add h
    ldh [$8b], a
    db $fc
    and $87
    cp a
    nop
    jp nz, Jump_000_3507

    ccf
    ld [$e4e0], a
    nop
    ccf
    nop
    ld d, a
    rst $38
    xor e
    rst $38
    ld e, a
    ld e, d
    pop hl
    ld b, d
    jp Jump_000_00ff


    rst $20
    ldh [$fb], a
    ld hl, sp-$03
    db $fc
    cp $af
    cp $0f
    rst $38
    rra
    cp $e0
    ccf
    cp $e0
    ld a, a
    ret z

    cp $e2
    and d
    and b
    cp $e0
    ret nz

    cp $e2
    add h
    pop hl
    ei
    inc bc
    rst $38
    rst $30
    rlca
    rst $28
    rrca
    db $e3
    inc bc
    pop bc
    dec e
    rst $38
    ret z

    ld e, $ec
    ld c, $f1
    ld bc, $28d7
    ei
    cp a
    ld b, b
    cp d
    add b
    inc b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, h
    rst $30
    nop
    nop
    ld hl, sp+$2c
    and [hl]
    rst $38
    ld bc, $00c0
    rst $38
    ccf
    ccf
    ld e, $de
    cp $04
    rst $38
    ld a, [bc]
    rst $18
    rst $38
    ld d, l
    rst $38
    xor d
    cp $e2
    ldh [rIF], a
    ld l, a
    inc bc
    rlca
    rst $30
    call nc, $fe80
    ld [c], a
    jp z, $f482

    ldh [$31], a
    adc e
    pop bc
    rst $20
    adc $19
    add c
    and e
    rst $38
    ld d, a
    ld a, d
    ldh [$f5], a
    rrc a
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
    reti


    rst $00
    ld a, a
    rst $38
    ldh [$3f], a
    ld e, h
    ret


    ret nz

    add sp, -$3f
    ld hl, sp-$01
    db $f4
    db $fc
    db $e4
    db $fd
    pop de
    ld l, b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [$f7ff]
    rlca
    rst $08
    xor $0f
    add sp, $0e
    ccf
    add b
    ldh [$c4], a
    and a
    and b
    rst $38
    rrca
    nop
    ccf
    nop
    ld b, a
    nop
    add e
    jr c, @+$01

    inc bc
    inc c
    ld b, e
    inc b
    ld h, d
    ld [$ed0c], sp
    rst $38
    inc c
    db $ed
    inc e
    db $dd
    inc a
    cp l
    inc l
    xor l
    rst $38
    inc c
    call $f300
    nop
    rst $38
    inc bc
    sbc e
    rst $38
    ld h, e
    dec de
    ld h, e
    dec de
    inc bc
    dec sp
    rlca
    ld [hl], a
    ccf
    dec c
    db $ed
    ld e, $9e
    ld l, $ce
    ld b, d
    db $e3
    inc a
    pop hl
    and a
    ccf
    add b
    ccf
    sub l
    add b
    ld [hl], c
    ld h, c
    ld c, $ce
    ret z

    ld [bc], a
    ei
    rst $38
    dec b
    db $fc
    ld [c], a
    adc d
    rst $38
    push bc
    rst $38
    jp z, $ff2f

    push af
    rst $38
    xor a
    inc a
    ldh [$af], a
    sub [hl]
    ret nz

    db $fc
    push hl
    ld a, [c]
    rst $20
    and l
    cp $ff
    ldh [rLCDC], a
    pop hl
    ldh a, [$f0]
    pop bc
    pop bc
    rst $38
    adc d
    adc d
    dec d
    dec d
    dec hl
    dec hl
    ld e, a
    ld e, a
    ld a, e
    cp a
    cp a
    add sp, -$1f
    ld hl, sp-$08
    push af
    push af
    pop bc
    and e
    rst $38
    rst $00
    rst $00
    and e
    and e
    rra
    rra
    rlca
    rlca
    rst $38
    ld b, e
    ld b, e
    xor c
    xor c
    push de

jr_047_6cb3:
    push de
    ld hl, sp-$08
    rst $18
    db $fc
    db $fc
    ld a, [$fbfa]
    and $a8
    jp Jump_047_47c3


    and c
    and c
    db $fd
    db $fc
    and b
    or d
    ldh [$90], a
    and [hl]
    ld b, b
    ld d, b
    ret nz

    rst $10
    ld b, b
    rst $38
    and b
    ld a, [$fcc2]
    sbc $a0
    ld hl, sp+$03
    db $db
    ldh a, [rTAC]
    cp $e1
    ld a, [$f403]
    and e
    nop
    or $fe
    db $eb
    and b
    add sp, $20
    ldh [rSTAT], a
    pop bc
    nop
    ld bc, $82ef
    inc bc
    pop bc
    inc bc
    ld sp, $fee6
    ld [bc], a
    cp $ff
    dec b
    db $fd
    dec de
    ei
    db $10
    ldh [$2f], a
    jp z, Jump_000_1fff

    add c
    ld a, a
    nop
    rst $10
    jr z, jr_047_6cb3

    ld d, h
    db $fc
    ldh [$61], a
    jr @-$1e

    nop
    adc a
    ret nz

    rst $10
    ldh a, [$eb]
    rra
    ld hl, sp-$0b
    db $fc
    ld a, [$8ffe]
    ret nz

    add b
    ld c, d
    ld b, b
    push bc
    rst $10
    inc bc
    rst $38
    rlca
    cp $e4
    rst $28
    ld b, [hl]
    xor h
    xor a
    rst $38
    db $fd
    rst $18
    db $ec
    add sp, $37
    scf
    rst $38
    rst $38
    ld e, a
    ld e, a
    ei
    xor a
    xor a
    pop hl
    add e
    db $e3
    db $e3
    push bc
    push bc
    push de
    ccf
    push de
    ld [$fdea], a
    db $fd
    cp $cf
    add b
    ld l, e
    and b
    ret c

    ld l, b
    and b
    rst $00
    add c
    ldh a, [$e3]
    dec d
    dec d
    xor $e1
    call nc, Call_047_7fd4
    ld [$3dea], a
    dec a
    sbc a
    sbc a
    ld e, a
    ld d, e
    and b
    db $fc
    xor $e1
    and a
    add e
    adc a
    adc a
    ld d, [hl]
    ld d, [hl]
    db $eb
    db $eb
    rst $18
    rst $38
    rst $38
    dec b
    dec b
    cp $04
    db $e4
    cp a
    cp a
    ld [hl], a
    ld d, a
    ld d, a
    ei
    db $e3
    ret nz

    jr nz, @+$01

    ld d, b
    ld [bc], a
    ldh [$1f], a
    call nc, $eaff
    rst $38
    rst $30
    ld [hl], h
    ldh [$91], a
    and b
    rst $08
    ld h, $e7
    ld d, b
    rst $38
    xor b
    add sp, -$20
    pop bc
    add hl, hl
    ld b, d
    rst $38
    xor c
    rst $38
    rst $38
    inc bc
    inc bc
    jp c, $b51b

    scf
    or [hl]
    rst $38
    scf
    jp $9103


    dec [hl]
    and b
    ld [hl], $00
    rst $28
    ld l, a
    ld a, a
    rst $38
    cp a
    adc h
    and [hl]
    ld a, [hl]
    ld a, [hl]
    ld bc, $817b
    cp $bc
    and b
    cp [hl]
    cp a
    cp a
    cp a
    and b
    and c
    cp $98
    ld [c], a
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

jr_047_6dd1:
    ldh a, [$e2]
    ret nc

    add e
    ld e, a
    jp z, $fce0

    db $e3
    rlca
    add l
    rst $30
    rst $30
    db $eb
    sbc a
    db $eb
    or a
    or a
    rst $38
    rst $38
    ld c, h
    pop bc
    ld d, [hl]
    pop bc
    add l
    cp l
    add l
    ld e, $c1
    rst $38
    rst $38
    ld e, [hl]
    ld e, [hl]
    ld a, [de]
    pop bc
    pop af
    rst $38
    pop af
    ld l, e
    ld l, e
    rst $10
    rst $10
    rst $38
    rst $38
    and b
    rst $38
    and b
    cp a
    cp a
    ldh a, [$f0]
    pop hl
    pop hl
    jp z, $cafd

    ld a, [c]
    pop hl
    db $f4
    db $f4

jr_047_6e0d:
    nop
    nop
    xor a
    xor a
    ld a, e
    rst $18
    rst $18
    sub [hl]
    pop hl
    db $f4
    db $f4
    xor b
    xor b
    ldh a, [$c2]
    dec d
    ld d, a
    ld c, e
    and b
    rst $18
    pop af
    ld l, d
    xor [hl]
    xor c
    and b
    rrca
    ldh [$dd], a
    ld l, b
    dec sp
    ld [hl], l
    rst $38
    jp hl


    and e
    db $fd
    rst $38
    xor d
    di
    add e
    sbc $e2
    or d
    ld hl, sp-$1f
    xor l
    or a
    ld l, b
    add e
    and e
    nop
    cp $fe
    ld [c], a
    db $fc
    rst $30
    ld bc, $02f8
    cp $e1
    ld c, a
    nop
    adc a
    jr nz, jr_047_6e0d

    add e
    jr nc, jr_047_6dd1

    inc e
    nop
    ld l, a
    db $d3
    ld h, b
    rst $08
    rst $38
    nop
    or c
    rst $30
    and a
    db $eb
    ld c, e
    rst $10
    sub a
    sbc a
    ccf
    ccf
    inc a
    cp h
    nop
    db $e4
    and d
    cp l
    add b
    ld [$fccf], a
    ld d, h
    ldh [$e3], a
    db $dd
    ld h, b
    add l
    ld [bc], a
    rrca
    ret nz

    ld a, e
    cpl
    jr nz, jr_047_6e7c

    pop hl
    rst $28

jr_047_6e7c:
    ldh [$df], a
    ret nz

    cp $e1
    xor b
    ld l, h
    and $4e
    ld l, e
    ld sp, hl
    xor c
    db $eb
    sub a
    ld h, d
    rst $30
    dec l
    ld l, b
    ld e, [hl]
    ld c, d
    ld hl, $bf68
    ld e, e
    add b
    xor e
    pop de
    ld b, h
    ld b, b
    pop hl
    or a
    db $db
    add [hl]
    push hl
    cp $c8
    ld h, b
    add b
    db $fd
    ld h, b
    adc d
    ld b, c
    and b
    rst $38
    push de
    ld [$8043], sp
    cp c
    add c
    ld b, $e1
    ld d, l
    xor h
    ld h, d
    dec l
    pop bc
    and h
    ret nz

    db $10
    ld [c], a
    ld hl, $33aa
    ld h, b
    ld h, h
    ld hl, $e300
    add l
    and l
    dec d
    and [hl]
    and $70
    ld b, e
    or a
    ld d, a
    rst $38
    rst $38
    ld a, [bc]
    ldh [$03], a
    db $fc
    db $fd
    nop
    db $fc
    cp $ee
    ld b, b
    di
    nop
    rst $20
    nop
    db $dd
    db $dd
    ld h, d
    sbc a
    ld h, d
    inc a
    dec a
    ret nz

    inc bc
    ei
    ld h, b
    sub c
    ld [hl+], a

Call_047_6ee7:
    ccf
    ld a, a
    ccf
    rlca
    rst $00
    add hl, bc
    jp hl


    dec c
    db $ed
    cp $e5
    ld c, b
    db $10
    pop bc
    db $fc
    jp hl


    daa
    ld b, [hl]
    ld d, l
    sub b
    jp nz, $e558

    db $eb
    ldh a, [$e2]
    ld [$e1ec], sp
    dec c
    ld b, b
    db $10
    ld h, b
    and b
    db $f4
    db $e4
    ret c

    pop hl
    ld e, h
    ld hl, $e1f0
    ld h, $30
    pop hl
    ld a, [$7cff]
    ld [bc], a
    ld h, $20
    dec b
    ld d, h
    ret nz

    inc h
    db $e3
    ld [bc], a
    add hl, bc

jr_047_6f21:
    ld h, c
    ld a, [hl+]
    call c, $2440
    db $e3
    ld b, b
    jp $a024


    inc [hl]
    call nz, $e5b8
    add l
    rst $38
    jp c, $eac2

    cp h
    ld [c], a
    and d
    dec h
    cp [hl]
    and b
    and h
    ld b, b
    cp a
    ret nz

    jr z, jr_047_6f21

    ld l, b
    ld [$29c2], a
    adc l
    ld h, a
    ld bc, $abc3
    rlca
    ret nz

    nop
    di
    add b
    ccf
    ld a, [bc]
    db $e4
    rst $28
    and c
    nop
    add hl, de
    nop
    inc bc
    rra
    ret nz

    rst $00
    rst $08
    nop
    sbc a
    ldh a, [rLCDC]
    ld h, b
    ld b, e
    ret nc

    ld h, d
    xor $7b
    dec b

jr_047_6f66:
    cp $01
    db $fc
    cp $e1
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


jr_047_6f75:
    add c
    cp [hl]
    ld e, a
    jr jr_047_6ff9

    inc [hl]
    ld a, a
    ld [$497e], sp
    add b
    ld d, b
    nop
    ld a, b
    pop de
    pop bc
    rst $20
    and d
    pop hl
    and b
    nop
    ccf
    jp z, Jump_000_3815

    db $e4
    ld hl, sp-$79
    jr nz, jr_047_6fc0

    jr nc, jr_047_6f75

    add b
    ld [hl], c
    ld [hl], c
    ld l, [hl]
    ld l, [hl]
    ld e, a
    ld a, a
    ld e, a
    rra
    sbc a
    ld c, $ee
    ld bc, $45f0
    ld hl, $e0ff
    rst $20
    ldh [$e7], a
    ld b, b
    ld c, a
    inc d
    dec hl
    rst $28
    xor b
    ld d, a
    ld d, b
    xor a
    dec [hl]
    ld hl, $ea14
    ld a, [hl+]
    rst $18
    call nc, $ea15
    ld [bc], a
    db $fd
    add hl, hl
    dec h

jr_047_6fc0:
    ld a, a
    nop
    cp l
    cp a
    ld b, d
    jr nz, jr_047_6f66

    ld b, b
    nop
    ldh [rNR10], a
    daa
    nop
    rst $18
    nop
    rst $28
    nop
    nop
    db $10
    rlca
    inc hl
    push de
    ld a, [bc]
    ccf
    jp z, $1515

    ld a, [hl+]
    xor b
    rla
    dec a
    push hl
    ld e, b
    jp nz, $ea00

    add c
    ld l, d
    pop bc
    ld h, [hl]
    pop bc
    ldh a, [$e7]
    ld d, [hl]
    jp $c34e


    ldh a, [$eb]
    and h
    add c
    nop
    ldh [$e9], a
    call c, Call_000_1ee7

jr_047_6ff9:
    jp Jump_047_418d


    xor h
    push hl
    ld d, h
    ld b, c
    or b
    jp hl


    sub b
    rst $20
    ld bc, $8cf5
    and $2d
    nop
    ld h, h
    and d
    rra
    ld hl, $a1e2
    ld b, d
    and e
    jr z, @-$5d

    db $10
    ld l, h
    db $e3
    call c, $f0e3
    rst $20
    ret nc

    rst $20
    ld d, b
    nop
    nop
    nop
    ld a, l
    nop
    rst $38
    jp hl


    ld bc, $0302
    inc b
    dec b
    xor $ea
    ld a, [hl]
    rst $38
    cp $06
    rlca
    ld [$0a09], sp
    dec bc
    cp d
    ldh [rIE], a
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    rst $20
    inc d
    dec d
    ld d, $ca
    rst $38
    adc d
    rst $20
    rla
    jr jr_047_7064

    rst $18
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $78
    pop hl
    rra
    jr nz, @-$22

    ret nc

    rst $38
    xor $ed
    ld hl, $2122
    rst $38
    ldh [rNR44], a
    inc h
    ld e, $fa
    pop hl

jr_047_7064:
    dec h
    ld h, $27
    jr z, @-$0c

    pop hl
    jp z, $0aff

    rst $20
    ld [hl], c
    add hl, hl
    rst $38
    ldh a, [$ca]
    rst $38
    jp z, Jump_000_2ac7

    dec hl
    inc l
    rst $38
    db $ec
    ld [hl], e
    dec l
    ld l, $ca
    rst $38
    adc d
    rst $00
    cpl
    jr nc, jr_047_70b6

    rst $38
    ld [c], a
    ld l, a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    or $e3
    ld [hl], $2f
    jp z, $f6ff

    ret nz

    add sp, $2f
    scf
    cp a
    ld [c], a
    jr c, jr_047_70d4

    ld a, [hl-]
    dec sp
    ld a, a
    inc a
    ld sp, $0031
    dec a
    ld a, $3f
    ret nz

    rst $38
    cp [hl]
    dec bc
    ret z

    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec a
    ld a, l
    ldh [rLY], a
    rst $38
    ld b, l
    ld b, [hl]
    ld b, a

jr_047_70b6:
    ld c, b
    ld sp, $4931
    ld c, d
    rst $20
    ld c, e
    ld c, h
    ld c, l
    jp z, $caff

    and a
    ld c, [hl]
    ld c, a
    ld d, b
    ei
    ld d, c
    ld d, d
    dec a
    ldh [rHDMA3], a
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld a, a
    ld e, b
    ld e, c
    cpl

jr_047_70d4:
    ld e, d
    ld e, e
    ld c, a
    ld e, h
    jp z, $feff

    adc d
    and a
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rst $38
    ld h, h
    ld sp, $6532
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    sbc a
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    jp z, Jump_047_4aff

    and a
    ld l, a
    rst $28
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    cp l
    pop bc
    ld [hl], h
    ld [hl], l
    db $76
    rst $38
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, h
    jp z, $0aff

    and a
    ld a, a
    add b
    add c
    add d
    add e
    ld a, l
    pop bc
    rst $38
    add h
    add l
    add [hl]
    ld sp, $8887
    adc c
    adc d
    rst $20
    adc e
    adc h
    adc l
    jp z, $caff

    add a
    adc [hl]
    adc a
    sub b
    rst $38
    sub c
    sub d
    sub e
    ld sp, $9594
    sub [hl]
    sub a
    scf
    sbc b
    sbc c
    sbc d
    inc [hl]
    pop bc
    add e
    sbc e
    jp z, $8aff

    add a
    db $fd
    sbc h
    ld bc, $9dc3
    sbc [hl]
    ld sp, $a09f
    and c
    push hl
    and d
    db $f4
    and d
    add e
    jp z, Jump_047_4aff

    add a
    and e
    and h
    and l
    sub $ff
    ldh [$a6], a
    and a
    rst $38
    pop hl
    xor b
    push af
    pop hl
    and l
    xor c
    cp c
    xor d
    jp z, $0aff

    add a
    xor e
    xor h
    xor l
    rst $38
    db $ed
    xor [hl]
    nop
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    nop
    nop
    nop
    dec b
    ld a, [bc]
    rst $38
    ldh a, [rIF]
    rst $38
    pop hl
    rst $20
    pop af
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
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    cp a
    db $e4
    ld [hl], c
    inc c
    rst $38
    ldh [$c0], a
    rst $38
    ret nz

    ld hl, sp+$0d
    dec c
    dec c
    cp a
    ldh [$e9], a
    dec bc
    ret nz

    rst $38
    ld c, [hl]
    rst $28
    ld a, [hl+]
    add b
    pop hl
    ld [$0d0d], sp
    ld e, b
    jp $c0e2


    rst $38
    ld b, b
    push af
    dec c
    dec bc
    add d
    ld [c], a
    ld a, [hl+]
    ret nz

    rst $38
    ld e, $cb
    pop de
    ld c, h
    inc c
    inc c
    dec bc
    cp $c4
    ret nz

    rst $38
    sub h
    call z, Call_000_097d
    rst $38
    ldh [$0e], a
    ld [$0808], sp

jr_047_728d:
    ld c, $c6
    ld [c], a
    jr jr_047_728d

    db $e3
    push bc
    rst $38
    ret nz

    db $ec
    add hl, bc
    add hl, bc
    ret nz

    rst $38
    inc d
    call nc, $e17f
    add h
    ret nz

    ldh [$fe], a
    db $e3
    ld l, a
    ret nz

    rst $38
    call nc, $c9a9
    push hl
    ld hl, sp-$19
    cpl
    nop
    ret nz

    rst $38
    add b
    db $ed
    ld a, [$c5f0]
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld [$f3af], sp
    sub $ff
    db $f4
    di
    ld c, a
    rst $38
    db $e4
    sub $ff
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ret nz

    rst $30
    cp l
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
    add b
    rst $00
    jp c, $ffff

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
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_047_7d0c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_047_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_047_7fd4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_047_7feb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
