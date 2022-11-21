INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $037", ROMX[$4000], BANK[$37]

    ld [$1140], sp
    ld d, h

    db $06, $5d, $51, $71

    jr nz, jr_037_404a

    ld d, b
    ld b, l
    ldh [rOBP0], a
    db $10
    ld c, l
    ld [hl], b
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    rst $38
    rst $38
    rst $38
    nop
    cp $ea
    rst $38
    nop
    rst $38
    ld [$e052], a
    ldh [$80], a
    cp $ea
    ldh [$e0], a
    add b
    cp $e0
    ret nz

    cp $e0
    xor c
    ldh [$fe], a
    ldh [$c0], a
    pop hl
    cp $fe
    ldh [$fc], a
    cp $e0
    ld hl, sp+$0e
    cp $e0
    rst $38

jr_037_404a:
    rst $38
    ld bc, $eaff
    or d
    db $eb
    or b
    ldh [$fe], a
    db $ed
    ld e, $a2
    db $eb
    add b
    ldh a, [rP1]
    ldh a, [$b8]
    ld [c], a
    or b
    pop hl
    xor b
    pop hl
    ldh [$f0], a
    pop hl
    sbc b
    pop hl
    sub b
    pop hl
    adc b
    pop hl
    and d
    db $eb
    ld bc, $ff01
    rst $38
    rlca
    ld hl, sp+$1f
    db $e3
    ccf
    adc $7d
    sbc $ff
    ld [hl], c
    cp a
    rst $20
    ld hl, sp-$11
    ldh a, [$bf]
    ldh a, [rIE]
    ldh a, [$0c]
    db $fc
    ld [c], a
    cp $b9
    ld e, a
    dec a
    ld a, a
    rst $00
    db $fc
    rst $30
    rrca
    ei
    rlca
    cp $32
    rst $20
    db $fd
    add b
    rst $38
    ld [c], a
    rlca
    rlca
    jr jr_037_40bb

    inc hl
    ccf
    rst $30
    ld c, [hl]
    ld a, l
    ld e, [hl]
    ret nc

    db $e4
    rst $38
    ldh a, [rIF]
    db $fc
    ld bc, $d0e3
    add sp, $66
    db $ed
    add $e2
    db $10
    jp hl


    jp nc, Jump_000_10c0

    ld [$c1c2], a
    cp a
    add hl, de
    rst $28

jr_037_40bb:
    add hl, sp
    and $3f
    pop hl
    cp $e0
    pop af
    rst $38
    rra
    rst $28
    ldh a, [rIE]
    rst $08
    ld a, a
    ld a, [c]
    ld a, a
    rst $38
    ret nz

    rst $38
    call z, Call_037_7eff
    rst $38

jr_037_40d2:
    ld [de], a
    rst $38
    rst $38
    jr nz, jr_037_40d2

    rlca
    rst $38
    ld sp, hl
    rst $38
    daa
    rst $38
    rst $38
    ld bc, $19ff
    rst $38
    ccf
    rst $38
    inc h
    rst $38
    db $fd
    ld [bc], a
    ld a, d
    pop hl
    ld b, h
    call nz, $ce4a
    xor d
    xor $bf
    jp nc, $c27e

    ld a, [hl]
    call nz, $927c
    pop bc
    add hl, de
    cp a
    add hl, de
    add hl, hl
    add hl, sp
    ld h, $3f
    ld hl, $e0fe
    ld de, $1ffd
    sub d
    pop bc
    ld a, a
    call nz, $ce7b
    cp e
    xor $bf
    db $d3
    ld a, [hl]
    jp $c77e


    ld a, h
    add d
    pop bc
    cp a
    rst $38
    add b
    sbc a
    add b
    adc a
    add b
    add a
    add b
    add e
    rst $30
    add b
    add c
    add b
    and d
    pop bc
    inc bc
    ld bc, $0107
    rst $38
    rrca
    ld bc, $011f
    ccf
    ld bc, $017f
    rst $38
    ldh a, [$1f]
    ld hl, sp+$0f
    ld a, h
    rra
    ld a, a
    scf
    rst $38
    ld a, a
    ld l, e
    ld a, a
    ld d, l
    ld a, a
    ld b, d
    ccf
    dec h
    rst $38
    rst $38
    ldh [$1f], a
    pop af
    rrca
    ld hl, sp+$0f
    cp $ff
    ei
    rst $38
    push af
    ld e, a
    di
    sbc [hl]
    pop af
    rra
    rst $38
    rst $38
    add e
    db $fc
    rst $00
    ld hl, sp+$0f
    ldh a, [$3f]
    rst $38
    rst $18
    rst $38
    xor a
    ld sp, hl
    rst $08
    ld a, b
    adc a
    ld hl, sp-$01
    add h
    db $fc
    ld [$11f8], sp
    ldh a, [$61]
    ldh [rIE], a
    rst $38
    db $fc
    ld d, e
    ld a, [hl]
    db $d3
    cp $d3
    cp $ff
    inc e
    rra
    ld a, $37
    rst $38
    ld l, e
    rst $38
    ld d, l
    rst $38
    cp $42
    db $fd
    dec h
    rst $38
    ld [hl+], a
    rst $38
    ld de, $c0fe
    pop hl
    adc a
    ld sp, hl
    ld l, a
    ld a, [hl]
    ei
    rst $18
    push af
    rst $30
    rra
    di
    ld e, $c0
    db $e3
    ld a, b
    rst $08
    ldh a, [$bf]
    cp $c0
    ldh [$fb], a
    rst $08
    ld a, c
    adc a
    ld hl, sp-$79
    db $fc
    cp a
    rrca
    ld hl, sp+$1e
    ldh a, [$fe]
    ldh [rNR10], a
    ret nz

    ld a, h
    rst $30
    jp nc, $d27e

    ret nc

    ret nz

    ld a, a
    nop
    ccf
    nop
    rst $38
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld a, [hl+]
    ld de, $01c1
    ld hl, sp-$20
    rlca
    ldh a, [$e0]
    rra
    add sp, -$20
    db $e4
    ldh [rIE], a
    ld [hl+], a
    rra
    ld de, $101f
    rrca
    ld [$6f07], sp
    inc b
    inc bc
    inc bc
    ld bc, $e0e0
    ldh a, [$1f]
    cp $e0
    rst $38
    sbc a
    ldh a, [$7f]
    rst $38
    sbc a
    ei
    ld c, $ff
    rst $18
    rrca
    ldh a, [$1f]
    rrca
    ld sp, hl
    cp $e0
    cp $0b
    rst $38
    ld a, [$f9f9]
    ret nc

    ld [hl], b
    ld hl, sp-$08
    inc b
    rst $38
    db $fc
    db $e3
    ld a, $f7
    inc e
    rst $38

jr_037_420e:
    jr @+$01

    or a
    jr nz, @+$01

    ret nz

    jp nz, Jump_037_7fe1

    nop
    ld l, [hl]
    ldh [$08], a
    rst $08
    rst $38
    inc b
    ei
    inc bc
    ldh a, [$a6]
    jp nz, $9fe1

    ld [hl], b
    rst $38
    ld a, a
    rra
    rra
    dec bc
    ld c, $0f
    rrca
    db $10
    db $fd
    rra
    inc d
    ldh [$f9], a
    rrca
    db $fd
    rrca
    ld_long a, $ffff
    ld a, [$71df]
    rst $38
    ld hl, sp+$07
    db $fc
    jp nc, $feff

    ld [c], a
    ld a, $f4
    inc e
    ld hl, sp+$18
    ldh [$e7], a
    jr nz, jr_037_420e

    ret nz

    ld e, b
    and c
    ld a, [bc]
    jp $8080


    ret nz

    xor a
    add b
    ldh a, [$80]
    db $fc
    ld [hl], $a1

jr_037_425d:
    ld bc, $e3fe
    db $fd
    rst $28
    ld bc, $01f1
    pop bc
    ld d, l
    and b
    ldh a, [$1f]
    ld [c], a
    rst $38
    ccf
    ld h, c
    ccf
    ld l, h
    ccf
    ccf
    inc sp
    ccf
    rst $38
    db $10
    rra
    db $10
    ccf
    jr nz, @+$06

    db $fc
    ld b, d
    rst $38
    cp $83
    cp $bb
    cp $ff
    add $ff
    db $fd
    add h
    cp $e0
    add d
    db $10
    rra
    ld [hl+], a
    ccf
    and c
    rst $38
    ccf
    xor h
    ccf
    rst $38
    inc sp
    rst $18
    db $10
    rst $38
    rst $38
    db $10
    rst $38
    jr nz, jr_037_42a5

    db $fc
    ld b, e
    cp $82
    rst $38
    cp $ba

jr_037_42a5:
    cp $fe
    add $fc
    add h
    db $fc
    cpl
    add h
    cp $82
    ret nz

    ld d, b
    and b
    db $fc
    cp [hl]
    adc b
    jp nz, $8a85

    add sp, -$13
    db $fc
    jr z, jr_037_425d

    ret nz

    and l
    add b
    ld hl, sp-$1b
    sbc d
    add l
    ccf
    ld a, [$c0c6]
    inc bc
    sub d
    adc b
    ccf
    ld hl, $5eff
    rst $38
    rst $38
    ld h, d
    cp a
    cp $c1
    rst $38
    cp a
    rst $38
    pop bc
    db $fc
    ld h, e
    add b
    inc l
    ret nz

    dec a
    ccf
    inc hl
    ld a, $3f
    ld b, c
    rst $38
    ld a, a
    ld a, [hl]
    ld a, a
    ld b, c
    ld a, a
    rst $38
    rst $38
    inc bc
    ld [$c096], a
    ccf
    jp z, $ff87

    add b
    db $ec
    rst $38
    rst $38
    ld hl, $7edf
    ld e, [hl]
    ld a, [hl]
    ld h, d
    cp [hl]
    ret nz

    and $fe
    ld b, d
    rst $38
    rst $38
    dec a
    rst $38
    inc hl
    cp $3f
    pop bc
    ld a, a
    add a
    cp $7f
    pop bc
    ret nz

    ldh [$78], a
    db $e3
    ld [$02c5], a
    add b
    ld c, $fe
    inc c
    ret nz

    inc hl
    rst $38

jr_037_431e:
    ld c, d
    rst $38
    ld b, h
    rst $38
    jr z, jr_037_431e

    adc d
    ret nz

    ld de, $62f2
    add a
    ld hl, sp-$61
    db $e3
    cp a
    ccf
    adc $fd
    sbc [hl]
    pop af
    ccf
    rst $20
    ld a, [c]
    ld h, c
    xor h
    add a
    set 7, [hl]
    di
    ld [c], a
    ld l, e
    add b
    ldh [$82], a
    adc $61
    ld c, $0e
    ccf
    rra
    ld de, $233f
    ld a, a
    ld c, d
    jp nz, $9865

    add c
    or c
    and e
    cp h
    ldh [$a2], a
    ld h, [hl]
    sbc b
    add h
    rst $38
    add hl, bc
    cp $e0
    ld [$2cfe], sp
    pop bc
    rst $38
    inc [hl]
    rst $18
    ld [hl], h
    rst $08
    ld a, [hl]
    ei
    rst $30
    db $fc
    rst $28
    or e
    call nc, $f280
    rst $38
    ret nz

    rst $38
    ld a, l
    ld c, h
    adc $80
    ld d, d
    rst $28
    rra
    ei
    and $d4
    add b
    ld a, [$85ce]
    dec h
    ld b, b
    push bc
    ld b, b
    ret nz

    ld b, [hl]
    add $a5
    rst $38
    rst $20
    reti


    ld a, a
    ld a, a
    ld b, h
    ccf
    jr z, jr_037_43cf

    rst $38
    ld hl, $111f
    rrca
    add hl, bc
    rrca
    ld [$7f0f], sp
    ld [$3437], sp
    sbc [hl]
    pop af
    cp a
    rst $20
    cp h
    add sp, -$0f
    call z, $e15c
    cp h
    ld [$689e], a
    ld a, a
    ret nz

    ld a, a
    add $bf
    jp $e37e


    ld a, $e3
    ld a, $e8
    add b
    rrca
    db $eb
    rst $38
    ld [bc], a
    ld a, h
    ldh [rSC], a
    sub [hl]
    and b
    jr nz, @+$01

    ld sp, $ffef
    ld d, c
    rst $38
    adc c
    or $c0
    rra

jr_037_43cc:
    push af
    rra
    db $db

jr_037_43cf:
    rst $38
    add d
    add sp, -$20
    jp Jump_000_0c7c


    and b
    ld sp, hl
    cp a
    rst $38
    rst $38
    rst $38
    ld e, l
    push af
    pop bc

jr_037_43df:
    ld a, a
    jp nz, $ff7e

    add h
    db $fc
    jr c, jr_037_43df

    ld b, h
    db $fc
    call nz, $fffc
    ld b, h
    db $fc
    inc h
    db $fc
    ld d, a
    ld [hl], h
    ld c, a
    ld a, h
    rst $38
    ld b, a
    ld a, h
    inc hl
    ld a, $23
    ld a, $11
    rra
    ld l, a
    dec c
    rrca
    inc bc
    inc bc
    ld c, h
    pop hl
    rst $38
    ld h, b
    ld d, b
    and b
    push bc
    ld hl, $e0ba
    ret z

    or d
    ret nz

    ld c, h
    ldh [$bc], a
    push hl
    ld hl, sp-$71
    rst $30
    ld sp, hl
    ccf
    cp l

jr_037_4419:
    ld c, h
    ldh [$c1], a
    ld a, a
    jp $9e7e


    ret z

    add c
    ccf
    ldh a, [rIE]
    ld hl, sp-$0a
    ld h, b
    jr z, jr_037_43cc

    ccf
    cp $ca
    add d
    rra
    nop
    rst $30
    ld e, $e3
    cp a
    ldh [$df], a
    ld a, a
    ldh [$3f], a
    ldh [$3f], a
    and $81
    rst $38
    rra
    rst $38
    sbc [hl]
    ld a, [c]
    ccf
    db $e3
    ccf
    db $e4
    ccf
    ld hl, sp-$02
    reti


    add b
    pop af
    ld a, $fe
    ldh [$e0], a
    adc b
    ld hl, sp-$01
    ldh a, [rSVBK]
    pop hl
    jr nz, jr_037_4419

    ld b, b
    add e
    add b
    ld a, h
    xor d
    add c
    cp $e0
    inc b
    inc bc
    ld [bc], a
    add c
    ld bc, $4880
    ld a, h
    ld c, h
    ldh [$bc], a
    pop hl
    ld h, b
    ld a, a
    jr nz, jr_037_44af

    jr nc, jr_037_44af

    and b
    rst $38
    rst $18
    cp $2f
    ld a, [$f9cf]
    rra
    pop af
    rst $18
    rra
    di
    rra
    or $1f
    adc [hl]
    ldh [$87], a
    db $fc
    rst $30
    add a
    db $fc
    ld b, [hl]
    cp $e0
    adc h
    ld hl, sp-$04
    ld [hl], b
    rst $38
    ld hl, sp+$20
    ld hl, sp-$40
    rst $30
    inc e
    rst $18
    rra
    xor $92
    pop hl
    call nz, $c37f
    ldh a, [$a1]
    ld a, a
    and b
    ldh [$5f], a
    ldh a, [$f0]
    ld [$08f8], sp
    add sp, $60
    inc b
    cp $e0

jr_037_44af:
    rst $38
    db $fc
    db $fc

jr_037_44b2:
    rra
    rra
    rla
    inc e
    rra
    rra
    ei
    jr nz, jr_037_44fa

    cp $e1
    ld b, h
    ld a, a
    ld b, e
    ld a, a
    rst $38
    rst $10
    rst $28
    cp a
    ldh [$dc], a
    ld b, b
    ld hl, sp-$02
    pop hl
    add a

jr_037_44cc:
    db $fc
    ei
    rlca
    db $fc
    jr jr_037_44b2

    ld hl, $217f
    ld a, a
    inc de
    ei
    ccf
    ld de, $6053
    rra
    rra
    ld de, $82fe
    xor e
    ld a, [hl]
    ld b, d
    adc b
    ld h, b
    ld [hl+], a
    cp $e0
    ld hl, $e1f0
    ld b, c
    cp a
    ld a, a
    ld a, a
    ld a, a
    cp a
    ld hl, $dabf
    ldh [$df], a
    ld d, l
    inc de
    or d

jr_037_44fa:
    ld h, b
    ld de, $e0ce
    db $fc
    rst $08
    add b
    ld b, d
    cp $e0
    rst $28
    ld [hl+], a
    cp $22
    rst $38
    ld b, [hl]
    ret nz

    cp a
    inc sp
    db $dd
    rst $28
    ld a, a
    add l
    rst $38
    jp $809c


    push bc
    db $fc
    rst $38
    db $ed
    rst $38
    ld [c], a
    ld h, b
    ld de, $dd1e
    ld h, b
    jr nc, jr_037_4541

    ccf
    rst $10
    rra
    ld a, b
    rra
    jr nz, jr_037_44cc

    cp a
    sub d
    jr z, @+$01

    rra
    rst $18
    ld a, a
    ld de, $717f
    adc a
    ld h, c
    ret nz

    rst $38
    rst $38
    db $ed
    add c
    ld d, e
    jr nz, @+$01

    rra
    ld e, h
    ld h, b
    rla

jr_037_4541:
    ld hl, sp+$1f
    rra
    ret nc

    rra
    rst $18
    rra
    sub b
    ret nc

    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38
    nop
    cp $fe
    ldh [$fc], a
    cp $e0
    xor a
    ld hl, sp+$00
    add d
    nop
    ldh a, [$e0]
    add b
    cp $e1
    cp a
    cp [hl]
    cp $e0
    sbc a
    add b
    pop bc
    add b
    nop
    rst $38
    db $ec
    jp nz, Jump_000_00ef

    ld [c], a
    nop
    ldh a, [$fe]
    ldh [$e0], a
    nop
    pop hl
    rst $38
    nop
    rst $00
    nop
    rst $08
    nop
    ld b, e
    nop
    ld b, a
    rst $38
    nop
    rrca
    rlca
    jr jr_037_45a9

    inc hl
    ccf
    adc $df
    ld a, l
    sbc $71
    cp a
    rst $20
    ldh [$e2], a
    ldh a, [$0c]
    rst $38
    db $fc
    ld [c], a
    cp $b9
    ld e, a
    dec a
    rst $00
    cp $f9
    di
    ldh [$e2], a
    cp $e0
    rlca
    nop
    add a

jr_037_45a9:
    nop
    db $e3
    rst $30
    nop
    di
    add b
    ldh a, [$e6]
    rlca
    sbc b
    rra
    db $e3
    ld a, h
    call z, $b0e0
    push hl
    ldh a, [$f0]
    dec c
    db $fc
    db $e3
    call z, Call_037_5fe0
    jp $c780


    add b
    adc a
    cp $e0
    add a
    cp $e0
    rst $38
    db $e3
    add b
    di
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld a, a
    cp $e0
    ccf
    ld bc, $313f
    ld e, [hl]
    ld [hl], e
    rst $38
    ld c, l
    ld a, a
    ei
    db $fc
    rst $28
    or e
    rst $38
    call z, $ffff
    ld a, [c]
    ld a, a
    ret nz

    ld a, a
    call z, $feff
    rst $38
    rst $38
    ld d, d
    rst $28
    rra
    ei
    and $ff
    add hl, de
    rst $28
    rst $38
    daa
    rst $38
    ld bc, $e0fa
    ccf
    rst $38
    dec h
    ld a, [$e142]
    cp $fe
    ldh [$7c], a
    ret nz

    ld a, h
    ret nz

    cp [hl]
    rst $20
    and $d5
    ld [hl], a
    ret nz

    and $fe
    pop hl
    ld sp, $7151
    ld d, b
    ld e, h
    pop hl
    cp h
    jp hl


    ld e, h
    pop hl
    cp h
    ld [$c000], a
    db $e3
    db $fc
    cp $e0
    rst $08
    ld a, b
    ret nz

    ld b, [hl]
    add $b0
    push hl
    ldh a, [$e1]
    ld hl, sp-$80
    ld sp, hl
    add d
    ld [hl], b
    rst $20
    xor [hl]
    ldh [$1f], a
    nop
    ld b, c
    nop
    ld b, c
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld h, e
    ld a, a
    ld b, l
    ld a, a
    rst $38
    ld b, e
    cp a
    dec h
    rst $38
    ld [hl+], a
    rst $38
    ld de, $fdff

jr_037_4652:
    jr nz, jr_037_4652

    ldh [$e1], a
    rra
    pop af
    rrca
    ld sp, hl
    rst $28
    rst $38
    cp $fb
    sbc a
    push af
    rra
    rst $38
    add d
    rst $38
    rst $38
    ld [bc], a
    rst $38
    jp $c77c


    ld a, b
    rst $08
    pop af
    rst $38
    cp a
    rst $18
    cp $af

jr_037_4672:
    ld a, [$7fc9]
    pop bc

jr_037_4676:
    rst $38
    ld a, a
    add d
    cp $04
    db $fc
    jr c, jr_037_4676

    pop hl
    db $fd
    ret nz

    ret nz

    pop bc
    ld c, [hl]
    ld a, e
    ld b, l
    ld a, a
    ld hl, $bf3f
    ld hl, $103f
    rra
    adc [hl]
    rrca
    jr c, jr_037_4672

    ld sp, $2c7c
    pop hl
    cp h
    db $e4
    ldh a, [rIF]
    ld hl, sp-$31
    cp $2c
    ld [c], a
    cp $bc
    ld [c], a
    db $fc
    rlca
    ld hl, sp+$0f
    pop af
    ccf
    and l
    ei
    rst $20
    reti


    cp [hl]
    ldh [$c2], a
    ld a, [hl]
    add h
    db $fc
    add hl, de
    rst $38
    ld hl, sp+$77
    ldh a, [$cf]
    ld hl, sp-$3e
    add b
    ld [c], a
    cp e
    add b
    ldh a, [$fe]
    ldh [$e0], a
    add b
    pop hl
    add $c0
    rst $08
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld [$06ff], sp
    rst $38
    db $fd
    ld bc, $c530
    di
    sbc [hl]
    pop af
    ld e, a
    ldh a, [$3f]
    rst $38
    ldh a, [rIE]
    jr nc, jr_037_46fe

    jr nc, jr_037_4700

    rra
    rrca
    rst $38
    ld c, e
    ld c, $cf
    ld a, c
    adc a
    ld sp, hl
    rrca

jr_037_46eb:
    ei
    rst $38
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    db $fc
    ei
    ld a, [c]
    di
    db $d3
    ld [hl], c
    and b
    jp $c00c


    ld h, b
    rst $38

jr_037_46fe:
    sbc h
    db $e3

jr_037_4700:
    ld [hl], a
    ld a, $e9
    cp a
    inc a
    ldh [rNR42], a
    rst $38
    ld [de], a
    jr c, jr_037_46eb

    db $fd
    ld [$e0b8], sp
    inc b
    add e
    ld [bc], a
    ei
    cp a
    push af

jr_037_4715:
    cp l
    ld e, a
    cp h
    ldh [$1f], a
    ldh a, [$9f]
    ldh a, [$b8]
    ldh [$d0], a
    xor c
    ld e, a
    inc a
    pop hl
    cp h
    ld [c], a
    ld a, [$e3bc]
    and a
    cp $e0
    rst $10
    rst $38
    db $fc
    rst $00
    ld a, h
    rst $28
    jr c, @+$01

    jr nc, jr_037_4715

    di
    ld b, b
    pop bc
    call nz, $c0a2
    xor c
    ld e, a
    rra
    ld d, b
    rra
    db $fd
    db $10
    cp $e0
    ld [hl+], a
    ccf
    and c
    ccf
    ldh [$3f], a
    ld a, a
    rst $38
    ccf
    ld a, [$06f8]
    db $fc
    inc b
    cp $e0
    rst $30
    ld b, d
    cp $83
    cp $e0
    rst $38
    cp $65
    ld a, a
    cp a
    ld a, c
    ccf
    inc de
    ld e, $0f
    inc c
    ldh [$a4], a
    nop
    ei
    jp $a001


    xor e
    rst $08
    adc a
    ld c, e
    ld c, $0f
    db $fd
    rrca
    cp [hl]
    pop hl
    sub b
    rra
    ld [c], a
    ccf
    pop hl
    ccf
    cp a
    di
    di
    jp nc, $f870

    ld hl, sp-$42
    pop hl
    dec b
    ei
    db $fc
    ld b, e
    cp [hl]
    pop hl
    ld b, d
    rst $38
    ld b, d
    cp $42
    rst $38
    cp $44
    db $fc
    ld b, h
    db $fc
    add h
    ld hl, sp-$08
    ld h, e
    ld a, [$9c88]
    pop hl
    ld a, $e0
    cp $e4
    cp a
    ld sp, $e19c
    rst $28
    rst $38
    add h
    ld a, a
    ld b, h
    cp $e0
    ld b, d
    rst $38
    jp nc, $ffdb

    and c
    ld d, b
    and b
    ld bc, $fe0f
    ldh [rTAC], a
    ld bc, $87ff
    ld bc, $01e3
    rst $38
    rst $38
    ld a, [$df88]
    ld a, [$6898]
    ld hl, sp+$08
    cp $e0
    ld sp, hl
    ld hl, sp-$11
    rrca
    ld hl, sp-$01
    rst $38
    ld d, b
    xor e
    rst $38
    rst $38
    xor $9e
    adc h
    ldh [$e1], a
    ccf
    cp $1e
    db $10
    and e
    jp nc, $af80

    rst $18
    ld e, a
    ld de, $171f
    jr jr_037_4818

    ldh [$9f], a
    rra
    rrca
    ldh a, [$1f]
    rst $38
    rst $38
    ldh a, [$84]
    add b
    call nz, $e0f0
    ld [hl], b
    jp z, $a2fe

    add b
    ld b, c
    rst $38
    ld b, b
    rst $38
    jp $e03f


    rst $38
    rra
    ldh a, [$8f]
    db $fc
    ei
    rst $38
    push af
    ld e, a
    db $eb
    rst $38
    inc b
    cp $e0
    add a
    ld [hl], $c0
    rra

jr_037_4818:
    rst $30
    ld a, [hl]
    ld a, a
    rst $18
    ld sp, hl
    xor a
    ld hl, sp-$7e
    cp $86
    db $f4
    and b
    rst $38
    ld c, h
    db $fc
    add $fe
    and e
    cp $d3
    ld a, [hl]
    rst $18
    rst $20
    cp h
    and l
    rst $20
    sbc e
    and $c0
    ld b, e
    ld a, [hl]
    rst $38
    ld hl, $903f
    rra
    db $ec
    rrca
    di
    inc bc
    rst $28
    rst $38
    db $fc
    rst $38
    and h
    cp h
    rst $20
    rrca
    db $fc
    ld d, d
    rst $38
    sbc $a2
    cp $84
    db $fc
    add h
    db $fc
    ld [$f87f], sp
    ld [hl], c
    ldh a, [$9f]
    ld hl, sp-$71
    db $fc
    ldh [$81], a
    cp e
    cp $00
    ld [bc], a
    and b
    ld b, $ff
    add hl, sp
    sub [hl]
    ldh [$92], a
    rst $18
    rst $08
    ld a, b
    adc a
    ld hl, sp+$0f
    ld h, d
    ret nz

    dec c
    db $fd
    rst $38
    inc c
    ld hl, sp-$08
    ldh a, [$d2]
    ld [hl], b
    rst $38
    ld e, b
    xor e
    rst $38
    adc b
    xor $a0
    db $10
    ld l, b
    and b
    ret nz

    ld d, b
    and c
    rst $38
    ld sp, hl
    inc e
    ld e, $c2
    ld a, [de]
    pop bc

jr_037_488d:
    jr @+$01

    ld b, $83
    ld bc, $6cde
    ldh [$9f], a
    di
    ld e, $f1

jr_037_4899:
    ld [hl+], a
    pop bc
    cp a
    ldh a, [$7f]
    rra
    ldh a, [$3f]
    rst $18
    db $fd
    xor a
    ld hl, sp-$44
    push hl
    rst $18
    rrca
    db $fc
    dec bc
    ld a, [$1e47]
    ret nz

    rst $08
    ld a, b
    di
    rst $38
    or b
    xor b
    and b
    cp h
    ldh [$c1], a
    ld b, b
    rst $38
    and e
    cp a
    cp $94
    ld hl, sp+$48
    ldh a, [$30]
    nop
    add l
    ld c, a
    db $dd
    rrca
    jr nz, jr_037_488d

    ld hl, $a03f
    jr nz, jr_037_4899

    ld [hl+], a
    cp $01
    jp $c220


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    di
    nop
    dec e
    nop
    and $00
    push af
    cp d
    cp $e0
    and $f6
    ldh [rIE], a
    rst $38
    rst $38
    nop
    cp $fe
    jp hl


    di
    nop
    rrca
    nop
    ld a, c
    nop
    ld h, c
    rst $38
    nop
    ld b, c
    nop
    inc bc
    nop
    rlca
    nop
    rra
    cp $e4
    rst $20
    rrca
    ldh a, [$3f]
    rst $00
    ld a, a
    sbc l
    ld a, [$d2fe]
    push hl
    rst $28
    ldh [rNR31], a
    ld hl, sp-$3b
    db $fc
    ld [hl], d
    db $fd
    cp [hl]
    jp nz, $f0e5

    nop
    rst $08
    nop
    cp a
    rrca
    db $eb
    ld [hl], b
    ccf
    or d
    push hl
    rrca
    or [hl]
    ldh [$fd], a
    ldh [rNR34], a
    rst $38
    ld hl, sp-$0d
    nop
    ccf
    jr z, jr_037_49b4

    ld d, l
    rst $38
    rst $38
    xor d
    rst $38
    call nc, $a9ff
    ld a, a
    ld d, c
    ld a, a
    db $fd
    ld b, c
    sub d
    ld [c], a
    adc a
    ldh a, [$bf]
    rst $00
    rst $38
    sbc l
    rst $18
    ld a, d
    cp h
    db $e3
    ld a, a
    rst $08
    add d
    ld [c], a
    db $e3
    ld e, $ff
    ei
    add $ff
    ld [hl], e
    cp l
    ld a, e
    adc a
    rst $38
    rst $38
    rst $20
    rst $08
    nop
    ld hl, sp+$28
    sub $7c
    xor d
    rst $38
    cp $56
    cp $2a
    cp $14
    db $fc
    inc b
    add c
    db $fc
    ld [hl], b
    ld [c], a
    cp [hl]
    add sp, $52
    db $e4
    cp [hl]
    and $42
    db $e4
    cp [hl]
    ld [c], a
    ld [hl], c
    ld c, d
    cp [hl]
    ldh [$cf], a
    db $76
    ldh [$be], a
    cp [hl]
    add sp, $22
    ldh [rSB], a
    cp $e5
    rst $28
    cp $03
    cp $03
    adc h
    pop hl
    rst $30
    ld hl, sp-$21
    rst $18
    ld h, a
    rst $38
    sbc b
    rst $38
    db $e4
    db $fc
    ldh [$a4], a
    ld a, d
    rst $38
    adc [hl]
    db $fd
    rst $20
    rst $18
    ccf
    rst $30
    call Call_037_7fff
    inc sp
    rst $38
    ld c, a
    cp $33
    cp $4b
    ld a, [c]

jr_037_49b4:
    jp z, $8027

    rst $38
    adc h
    ld [c], a
    call nz, $e6bc
    ld b, a
    db $fc
    ret nz

    cp h
    jp hl


    pop af
    add $fc
    ret nz

    cp h
    jp hl


    or d
    set 7, a
    nop
    cp $23
    db $eb
    rst $38
    inc de
    cp $e0
    ld de, $e0fe
    add hl, bc
    rst $38
    ld l, b
    cp a
    cp a
    add sp, $77
    ld hl, sp-$21
    rst $20
    add h
    ld [c], a
    add b
    ld e, [hl]
    ld a, [hl]
    ldh [$fc], a
    rst $38
    and h
    sbc $c8
    push hl
    inc bc
    ld a, [hl]
    ldh [rIE], a
    ld a, [hl]
    rst $38
    ld c, d
    rst $08
    ld hl, sp-$01
    or b
    rst $38
    rst $30
    sub b
    rst $38
    db $10
    cp $e0
    jr nz, @+$01

    inc l
    ei
    or a
    ld l, $ff
    ld b, c
    cp [hl]
    db $eb
    ld a, a
    rst $08
    cp [hl]
    db $ec
    rst $20
    or $be
    db $eb
    rlca
    db $fc
    cp [hl]
    db $eb
    ld l, l
    ld h, a
    cp e
    xor $ff
    sub e
    cp $83
    cp $c1
    ld a, a
    and b
    ccf
    rst $38
    db $fc
    ccf
    ld a, a
    ld c, a
    rst $38
    db $ec
    rst $38
    xor h
    rst $38
    rst $38
    ld e, l
    rst $38
    ld b, b
    rst $38
    jp $e03f


    rst $38
    rra
    ldh a, [$8f]
    db $fc
    rst $38
    ld l, a
    rst $38
    ld l, d
    rst $38
    rst $38
    ld [hl], h
    rst $38
    inc b
    rst $38
    add a
    ld hl, sp+$0f
    rst $38
    pop af
    rra
    rst $30
    ld a, [hl]
    ld a, d
    adc $b3
    cp $ff
    add d
    cp $87
    db $fc
    dec a
    ld hl, sp+$4d
    db $fc
    rst $38
    rst $00
    cp $a2
    cp $0e
    inc bc
    ld a, [c]
    ld h, e
    rst $30
    cp l
    rst $20
    sbc e
    cp [hl]
    ldh [$c3], a
    ld a, [hl]
    pop hl
    ccf
    jp Jump_000_1f10


    call z, $bcc1
    jp hl


    call z, $bcc2
    add sp, -$04
    adc h
    rst $38
    res 1, [hl]
    ld [hl], d
    sbc $a3
    cp $85
    db $fc
    rst $38
    add l
    db $fc
    rrca
    ld hl, sp+$78
    ldh a, [$9f]
    db $fc
    rst $38
    add a
    db $fc
    ld b, a
    ld a, h
    rst $00
    ld a, h
    and e
    ld a, $ff
    cp a
    rra
    rst $20
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    pop bc
    xor $84
    ldh [rSCX], a
    cp $63
    inc e
    ldh [$0c], a
    ei
    rra
    cp e
    push af
    rra
    add [hl]
    ldh [rDIV], a
    rst $38
    add h
    sbc b
    ret nz

    ld [de], a
    rst $38
    rst $38
    ld [hl], c
    rst $18
    ld hl, sp-$51
    ld hl, sp-$0e
    ld a, [hl]
    rst $30
    jp $c47e


    ret nc

    ldh [$8d], a
    ld hl, sp-$03
    ldh a, [$bf]
    rst $20
    add b
    cp b
    add b
    xor a
    add sp, -$42
    pop hl
    rst $00
    sub $be
    ld [c], a
    rst $38
    rra
    ret nz

    ldh [$a4], a
    cp [hl]
    db $eb
    rst $38
    ld c, d
    cp $be
    db $eb
    ld a, [$f32e]
    ld a, [hl]
    jp nz, $c77e

    ld a, e
    ld a, h
    push bc
    cp [hl]
    ldh [$f7], a
    ldh a, [$b8]
    add b
    and h
    ldh [rIE], a
    add d
    ld a, a
    ld b, [hl]
    ld a, a
    inc hl
    ld e, a
    inc d
    rrca
    rst $38
    ld [$0407], sp
    rra
    ld [bc], a
    ei
    rst $38
    push af
    rst $38
    ld e, a
    di
    sbc [hl]
    pop af
    rra
    ldh a, [$9f]
    ldh a, [rIE]
    ld e, a
    ldh a, [$3f]
    ldh a, [$5f]
    rst $18
    ld sp, hl
    xor a
    rst $38
    ld hl, sp-$31
    ld a, b
    adc a
    ld hl, sp+$0f
    ld sp, hl
    rrca
    rst $38
    ld a, [$fd0d]
    ld c, $f8
    db $d3
    ld a, [hl]
    db $e4
    rst $38
    cp h
    cp $58
    cp $88
    ld a, [$f008]
    rst $38
    db $10
    ldh [rNR41], a
    ld hl, sp-$40
    db $fc
    rrca
    rrca
    rst $38
    inc bc
    ld a, l
    inc e
    ld a, a
    ld [hl+], a
    ld a, a
    ld hl, $7e3f
    cp $e0
    rra
    jr jr_037_4b65

    ldh a, [rIF]
    db $fc
    cp h
    ldh [$ef], a
    sbc a
    di
    ld e, $f1
    cp [hl]
    pop hl
    cp a
    ldh a, [$1f]
    rst $28
    di
    ld a, a
    rst $18
    db $fd
    cp h
    rst $20
    rst $08
    add b
    ldh a, [rIE]
    nop
    sbc [hl]
    nop
    sbc [hl]
    sbc h

jr_037_4b65:
    ld [c], a
    ld a, [hl]
    and d
    ld a, a
    cp $92
    cp $d2
    ld a, [hl]
    di
    ld bc, $8bb0
    cp $c8
    db $e4
    ccf
    ldh a, [$1f]
    ret nc

    rra
    cp a
    rrca
    ld a, a
    ld l, e
    ld c, $cf
    ld a, c
    adc a
    ld a, [$d60f]
    ret nz

    rst $30
    rrca
    ld hl, sp+$0b
    ld c, $e0
    sub $70
    di
    ld [bc], a
    db $db
    rrca
    ld bc, $8980
    push af
    rra
    adc $e5
    ret nc

    rra
    rst $08
    or b
    rra
    ld l, a
    rrca
    ld d, d
    ldh [$ce], a
    db $e4
    dec bc
    ld hl, sp-$31
    dec c
    ld hl, sp-$0a
    ldh a, [rNR43]
    and b
    ld b, b
    adc d
    rst $18
    adc a
    rst $18
    ld e, e
    ld c, $6f
    rrca
    or b
    and d
    ldh [$f0], a
    rra
    rst $38
    and c
    ccf
    and b
    ccf
    ld a, [$daf0]
    ld [hl], b
    rst $38
    or $f0
    dec c
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    cp a
    inc hl
    cp $c3
    cp $ff
    ld b, $ce
    db $eb
    ldh a, [rIE]
    rra
    ldh a, [$3f]
    rst $28
    rst $08
    cp e
    ld c, $cf
    rst $28
    rrca
    ldh a, [$1f]
    sub b
    adc $e0
    rrca
    db $fc
    dec bc
    rst $38
    ld a, [$f1f7]
    db $dd
    ld [hl], b
    di
    ldh a, [rIF]
    ei
    ld hl, sp+$05
    adc $e0
    rst $10
    ld a, h
    rst $38
    jr c, @+$01

    ld a, l
    ret nz

    call c, Call_037_5f67
    rrca
    ld d, b
    rra
    ld [hl], b
    db $76
    ldh [$f7], a
    pop hl
    ccf
    ldh [$a2], a
    ldh [$bf], a
    ccf
    ld a, [$aff8]
    ld b, $fc
    ld b, $fc
    sub $e1
    jp $a09a


    rst $38
    ld e, a
    cp $5b
    ld c, $5f
    rrca
    ldh [$e1], a
    ret nc

    sbc $e0
    xor l
    and b
    add b
    ldh [$da], a
    ld [hl], b
    sbc $e1
    dec b
    add d
    db $e4
    add e
    ld sp, hl
    cp $e8
    ld h, c
    add b
    ld l, c
    and b
    ccf
    rst $38
    ccf
    cp $7f
    ld b, d
    cp $42
    rst $38
    ld b, d
    rst $38
    ld b, h
    cp $e0
    ld e, l
    add h
    cp h
    pop hl
    ld a, a
    ld b, d
    ld a, a
    ldh a, [$e1]
    ld [hl+], a
    cp $e0
    ld l, a
    ld hl, $3fa0
    pop hl
    sbc $e0
    rst $38
    ld hl, $e0f2
    ld l, l
    ld b, d
    inc d
    ret nz

    add h
    jp $803b


    rst $38
    cp $ce
    and b
    db $dd
    ld b, h
    adc $e0
    ld d, d
    rst $38
    ld hl, $e1c4
    cp $42
    ld a, l
    db $fc
    call nz, $ffe2
    ld hl, sp-$01
    adc b
    cp a
    or d
    ld [c], a
    ld h, b
    or b
    ldh [$ee], a
    push hl
    or d
    ld [c], a
    or b
    ldh [$b2], a
    ld [c], a
    rst $38
    rra
    jr nz, jr_037_4cf5

    ld a, a
    ld bc, $0141
    inc bc
    ld bc, $0107
    ld [bc], a
    ld h, b
    xor [hl]
    call z, $ffe0
    add sp, $1f
    add b
    ret nz

    rst $38
    db $fc
    pop hl
    rst $38
    ld [hl], e
    rst $38
    db $f4
    ldh a, [$eb]
    ldh a, [rLCDC]
    ld bc, $0179
    ret nc

    add sp, $4f
    adc b
    rst $38
    sbc b
    ld l, a
    ld d, d
    ret nz

    ret nc

    and $88
    ret nz

    db $ec
    ret


    rst $38
    jp z, $fe60

    add sp, $00
    rst $38
    db $ec
    ld [c], a
    push hl
    ldh a, [$80]
    call $22cf
    and b
    rst $20
    add b
    ret nc

    ld c, c
    ld l, b
    ld b, c
    db $dd
    add b
    push af
    db $dd
    ld [$b8e0], a
    ld [c], a
    ldh [$f0], a
    add b
    sbc [hl]
    add b
    di
    add [hl]
    add b
    ld e, b
    ld b, l
    ld l, b
    ld b, l
    add d
    add b
    ret nz

    add b
    rst $00
    ldh [$80], a
    ld hl, sp-$64
    and $58

jr_037_4cf5:
    ld c, l
    nop
    ld h, c
    sbc [hl]
    nop
    ld a, a
    add [hl]
    nop
    add d
    nop
    ret nz

    nop
    ldh [rNR43], a
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ccf
    nop
    rst $08
    nop
    rst $30
    nop
    rst $18
    inc sp
    nop
    ld de, $1900
    cp $e0
    rst $38
    rst $38
    ei
    rst $38
    nop
    cp $e9
    dec a
    nop
    ei
    nop
    rlca
    cp e
    nop
    or a
    cp $e0
    rst $28
    nop
    rra
    and $e9
    rlca
    cp a
    ld hl, sp+$1f
    db $e3
    ccf
    adc $7d
    jp nc, $f0e6

    cp a
    rrca
    db $fc
    db $e3
    cp $b9
    ld e, a
    jp nz, $fce7

    inc de
    nop
    rst $30
    call c, $b2e0
    rst $20
    ccf
    call c, $bee2
    db $ed
    sub d
    add sp, -$04
    cp [hl]
    ld [c], a
    add d
    ld_long $ff01, a
    ld sp, $71de
    cp a
    rst $38
    rst $20
    ei
    db $fc
    rst $28
    or e
    rst $38
    call z, $ffff
    ld a, [c]
    ld a, a
    call z, $d27f
    dec a
    rst $00
    cp $ff
    di
    rst $28
    rra
    ei
    and $ff
    add hl, de
    rst $38
    push de
    daa
    db $fc
    ldh [rNR51], a
    ld d, d
    ldh [$80], a
    cp $e5
    ld a, a
    ret nz

    dec de
    ld a, a
    ret nz

    ld b, d
    db $eb
    rst $38
    nop
    ld e, h
    pop hl
    cp h
    jp hl


    ld e, h
    pop hl
    ret nc

    cp h
    ld [$e312], a
    cp h
    and $c0
    db $ec
    ld bc, $ebc2
    ld a, a
    ret nz

    jp c, $ecc2

    ld bc, $ebc2
    ld a, a
    ret nz

    jp nc, Jump_037_7feb

    call z, $d2fe
    db $ec
    add hl, de
    sbc $73
    ld c, l
    ld a, a
    pop bc
    ld a, a
    rst $38
    rst $38
    ccf
    ld a, a
    ld h, e
    ld a, a
    ld b, l
    ld a, a
    ld b, e
    rst $38
    ccf
    dec h
    rst $38
    or $ff
    ld d, [hl]
    rst $38
    ld l, $ff
    rst $38
    jr nz, @+$01

    pop hl
    rra
    ldh a, [rIF]
    ld hl, sp-$01
    rst $28
    cp $ff
    scf
    rst $38
    dec [hl]
    rst $38
    cp d
    rst $38
    rst $38
    ld [bc], a
    rst $38
    jp Jump_000_07fc


    ld hl, sp+$0f
    ld a, a
    pop af
    ccf
    cp a
    and $dd
    ld [hl], a
    ret


    adc $e0
    rst $38
    add d
    cp $04
    db $fc
    ld a, b
    ld hl, sp-$38
    ld hl, sp-$01
    rst $38
    ld sp, $715f
    adc $7b
    push bc
    ld a, a
    rst $38
    ld hl, $213f
    ccf
    db $10
    rra
    ld e, $0f
    ldh a, [$ec]
    pop bc
    cp h
    jp hl


    db $ec
    jp nz, $e8bc

    ld a, a
    ret nz

    ld a, [hl]
    add $f7
    or l
    rst $20
    reti


    adc h
    ldh [$c2], a
    ld a, [hl]
    add h
    db $fc
    db $dd
    jr @-$3e

    ldh [$5e], a
    ld [hl], e
    call $e07e
    ld hl, $ff3f
    ld de, $661f
    ld a, a
    cp $bb
    ld a, a
    call z, $ffcf
    cp $ff
    ld d, d
    add b
    ldh [$7e], a
    pop hl
    pop af
    rrca
    push de
    ld sp, hl
    xor b
    ret nz

    ccf
    xor d
    ret nz

    add d
    ld a, [hl]
    pop hl
    ld a, h
    rst $00
    ld a, a
    ld a, b
    rst $08
    ld a, a
    ret nz

    cp [hl]
    and $d5
    ld a, [hl]
    db $e4
    xor a
    ld h, [hl]
    cp $5d
    rst $38
    ld b, b
    db $e3
    pop hl
    add d
    ldh [rNR23], a
    ld e, a
    rra
    inc e
    rlca
    dec de
    inc bc
    jp nz, $87eb

    or c
    and b
    add $c2
    jp hl


    pop af
    rst $38
    ld b, b
    ldh [rNR10], a
    ldh [rLCDC], a
    db $e3
    ld [$fff8], sp
    ld hl, sp-$10
    ccf
    ld [hl+], a
    rst $38
    ld de, $101f
    cp a
    cp a
    ld [$06b7], sp
    rst $28
    ld bc, $a1b0
    ei
    rst $38
    sbc a
    push af
    rra
    di
    sbc [hl]
    pop af
    ld e, a
    ldh a, [rIE]
    ccf
    ldh a, [rIE]
    ldh a, [$1f]
    ldh a, [$1f]
    rst $18
    rst $38
    cp $af
    ld a, [$79cf]
    adc a
    ld sp, hl
    rrca
    rst $38
    ld a, [$fc0f]
    rrca
    ld hl, sp+$0f
    db $fc
    and h
    rst $38
    db $fc
    and a

jr_037_4eb8:
    db $fc
    call nc, $c5fc
    ld a, h
    db $ed
    rst $38
    jr c, jr_037_4eb8

    jr nc, @-$06

    ld b, b
    rst $38
    add b
    ccf
    rst $38
    add hl, de
    rst $38
    ld sp, $223f
    cp a
    ld hl, $fdbf
    ld [de], a
    cp b
    ldh [$08], a
    rst $38
    ld [$f80f], sp
    rst $08
    rst $18
    cp $fb
    cp a
    push af
    ld e, a
    cp h
    ldh [$1f], a
    ldh a, [$e7]
    sbc a
    ldh a, [$5f]
    call z, $bcc1
    jp hl


    ld a, h
    ldh a, [$cf]
    rst $38
    ld hl, sp-$5c
    db $fc
    and l
    db $fc
    push de
    db $fc
    rst $00
    rst $38
    ld a, h
    add sp, $38
    rst $38
    jr nc, @+$01

    db $d3
    rst $38
    rst $38
    xor c
    ld a, a
    ld d, c
    rst $38
    ld h, e
    cp a
    jr nz, @+$01

    rst $38
    jr jr_037_4f2c

    inc b
    rst $38
    ld [bc], a
    adc a
    cp $fb
    ld [hl], c
    ld a, a
    jp nz, $c4e2

    ldh [$7c], a
    ldh [$1f], a
    pop af
    cp a
    ld a, [hl]
    db $eb
    rst $38
    set 7, a
    sub l
    rst $38
    adc d
    cp $c7
    cp $ff
    push bc
    ld a, h

jr_037_4f2c:
    rst $28
    jr c, @-$06

    jr nc, @+$01

    ld b, b
    ld a, [$8af0]
    ld bc, $a05e
    ld a, [hl]
    rst $38
    inc d
    rst $38
    inc h
    rst $38
    rst $38
    ld b, h
    rst $38
    ld l, h
    rst $38
    sbc b
    rst $38
    ld bc, $feff
    inc bc
    cp a
    cp $9f
    db $f4
    sbc a
    ld a, [c]
    rst $38
    sbc a
    pop af
    sbc a
    ei
    adc a
    db $fc
    rst $08
    ld hl, sp-$01
    cpl
    ld hl, sp-$44
    nop
    rst $18
    nop
    ldh [rP1], a
    db $ed
    db $ed
    cp $e0
    rst $30
    add b
    ld b, b
    ldh [rLCDC], a
    rst $08
    rrca
    rst $38
    adc e
    ld c, $9f
    rra
    sub b
    rra
    or b
    rra
    rst $38
    ret nc

    rra
    ld [c], a
    ccf
    pop hl
    ccf
    di
    di
    rst $38
    pop de
    ld [hl], b
    ld sp, hl
    ld hl, sp+$05
    db $fc
    dec b
    db $fc
    ld a, a
    rlca
    db $fc
    ld b, e
    cp $83
    cp $ff
    ld l, h
    ldh [$fc], a
    xor d
    and h
    ld a, b
    add d
    ldh a, [$3f]
    ret nc

    ld e, a
    sbc a
    adc a
    rst $18
    sbc e
    ld c, $bf
    rrca
    ret nc

    ld [c], a
    ret nz

    ld [c], a
    ccf
    cp $ec
    pop bc
    ei
    di
    reti


    ld [hl], b
    db $fd
    ld hl, sp+$07
    ld a, [c]
    adc $e2
    rst $38
    db $ec
    ret nz

    ld c, [hl]
    adc c
    rst $28
    cpl
    set 1, [hl]
    sbc $a0
    jp hl


    rst $30
    db $f4
    db $d3
    ld [hl], e
    and b
    ld [$fb87], a
    dec a
    cp $80
    jp hl


    rst $38
    ld hl, sp-$29
    ld [hl], a
    add b
    ld [$8058], a
    cp $f0
    ld l, c
    ldh [$3f], a
    rst $38
    ccf
    cp $42
    rst $38
    ld l, d
    cp $e1
    ld b, h
    ld a, [de]
    ldh [$84], a
    ld e, [hl]
    ldh [$fe], a
    ld a, a
    ldh a, [$e3]
    dec e
    ld [hl+], a
    cp $e0
    ld hl, $3fe1
    sbc $e1
    ldh [$e2], a
    sbc $e1
    ldh [$e0], a
    ldh [$de], a
    pop hl
    ldh a, [$e4]
    ldh [$e0], a
    ret nz

    ld h, h
    ld bc, $01b7
    ld a, [$c010]
    ld bc, $60a2
    ld hl, sp-$01
    adc b
    rst $38
    add sp, $1f
    rra
    ld hl, sp+$0f
    ld hl, sp-$01
    db $fc
    pop hl
    rst $38
    pop hl
    add h
    add a
    ld a, [c]
    ld [hl], $80
    nop
    rst $38
    db $ec
    ld [hl+], a
    add a
    db $fc
    add b
    di
    add b
    ld sp, hl
    rst $28
    ld h, b
    adc b
    ld c, b
    ld h, e
    call z, $8880
    add b
    sbc b
    cp $fe
    ldh [$bc], a
    add b
    rst $18
    add b
    ldh [$80], a
    db $ed
    ld sp, hl
    add b
    jr c, jr_037_50a6

    ld c, b
    ld h, l
    inc sp
    ld bc, $0113
    dec de
    cp [hl]
    cp $e0
    ccf
    ld bc, $01fb
    rlca
    ld a, d
    ldh [$ed], a
    ld h, c
    add b
    ld a, b
    ret nz

    adc [hl]
    add sp, $28
    ld l, l
    ld d, b
    ret z

    nop
    ld hl, sp-$0e
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    scf
    di
    nop
    ld b, $fa
    ldh [$64], a
    nop
    ldh a, [$e3]
    db $fc
    add sp, -$02
    ldh [$e2], a
    ld hl, sp+$00
    push hl
    nop
    call z, $ac00
    xor e
    nop
    cp b
    ldh [$e1], a
    add b
    cp $e9
    nop
    rst $38
    db $ec
    ld [hl], h
    cpl
    nop
    db $f4
    nop
    db $e4
    db $eb
    ldh [rDIV], a
    cp d
    db $eb
    xor h

jr_037_50a6:
    pop hl
    rst $18
    rrca
    ldh a, [$3f]
    pop bc
    ld a, a
    and d
    add sp, -$10
    rst $38
    rst $38
    sub b
    rst $18
    cpl
    add e
    nop
    add a
    nop
    rst $00
    inc de
    nop
    db $e3
    sbc [hl]
    ldh [$88], a
    ld [c], a
    ret nz

    add d
    db $eb
    ld [$6ee4], a
    and $6b
    inc b
    nop
    ret nc

    db $ec
    nop
    ld [hl], d
    db $eb
    ld hl, sp-$80
    ld [hl-], a
    ldh [$9f], a
    ld bc, $01ff
    cp $03
    cp $e1
    or $e1
    add c
    cp $f1
    pop hl
    rst $38
    inc bc

jr_037_50e4:
    rst $38
    rra
    db $fd
    ccf
    pop af
    rst $38
    rst $38
    rst $08
    pop af
    ccf
    ret z

    ccf
    pop af
    ld a, $ff
    rst $00
    ld sp, hl
    ld e, $e6
    cp $1a
    db $fc
    db $f4
    ccf
    cp $26
    db $fc
    ld c, h
    rst $38
    ld b, b
    jr nc, jr_037_50e4

    ld d, h
    rst $28
    ld [c], a
    cp h
    and $ef
    ld c, d
    ldh [rOCPD], a
    pop hl
    cp d
    push hl
    di
    add b
    ld a, [hl]
    rst $38
    ld hl, sp+$7c
    ret z

    rst $08
    or a
    ret c

    ccf
    db $e3
    ld e, a
    ld a, h
    adc a
    di
    cp $0e
    jp nc, $c0c4

    cp b
    push hl
    rst $38
    push hl
    add b
    call z, $ac80
    add b
    cp b
    add b
    rst $38
    add e
    add b
    add a
    add b
    rst $00
    add b
    db $e3
    add b
    ld hl, sp-$58
    push bc
    add sp, -$3b
    ld [$03ce], a
    db $fd
    rlca
    db $fd
    scf
    rst $38
    ld d, [hl]
    ld [hl], e
    call z, $207f
    ccf
    jr nz, @+$41

    cp a
    ld [hl], b
    rra
    call Call_000_1fff
    ld a, [c]
    cp $e0
    db $f4
    rst $38
    rra
    ldh a, [rIF]
    ld_long a, $ff07
    rrca
    ld sp, hl
    cp a
    db $fc
    inc a
    rst $38
    db $db
    rst $38
    add hl, sp
    inc l
    ldh [rSC], a
    adc [hl]
    cp $e0
    inc b
    rst $38
    adc b
    add sp, -$3b
    ld [hl], b
    add $21
    ld [c], a
    dec b
    ei
    rlca
    push af
    cp h
    ldh [$4c], a
    ld a, a
    ld h, b
    ccf
    rst $38
    rst $38
    pop hl
    rst $38
    rrca
    pop af
    rst $38
    add c
    rst $38
    rrca
    db $fd
    cp $ba
    db $e3
    cp $f2
    rst $38
    ld b, h
    rst $38
    inc [hl]
    rst $38
    rst $38
    ld b, [hl]
    rst $38
    inc a
    rst $38
    jp c, Jump_000_3aff

    cp a
    rst $38
    ld bc, $0f7c
    rst $30
    inc bc
    ld h, b
    ret


    ccf
    rst $18
    cp $fd
    rst $20
    cp $43
    cp $e0
    ld b, a
    rst $38
    rst $18
    ld c, c
    cp a
    ldh a, [$9f]
    ldh a, [rOCPS]
    ret nz

    ld [hl], b
    rst $28
    rst $38
    ld hl, sp-$01
    cp b
    ld a, a
    db $f4
    rra
    db $f4
    sbc a
    rst $38
    ld a, [c]
    cp $72
    ld h, b
    ccf
    ldh a, [$1f]
    xor $e7
    rrca
    ld bc, $3001
    push bc
    ld l, d
    ldh [$fe], a
    rrca
    ld sp, hl
    rst $38
    rst $38
    cp $fd
    daa
    cp $43
    rst $38
    ld b, c
    ei
    rst $38
    ld b, a
    ld b, b
    pop hl
    cp $1b
    rst $38
    push de
    rst $38
    ld a, a
    ld [hl], d
    rst $38
    pop af
    ld a, a
    ret nc

    cp a
    ldh [$30], a
    jp nz, $80ff

    ld h, e
    ret nz

    cp b
    ldh [rIE], a
    ld h, b
    cp a
    pop hl
    ldh [$30], a
    jp nz, $c17f

    cp a
    jp $e0f8


    adc a
    ld hl, sp+$07
    rst $28
    db $fc
    ld a, a
    cp $81
    adc c
    and d
    ld bc, $83ff
    ld a, a
    cp $ff
    dec h
    rst $38
    db $10
    rst $38
    adc a
    ld a, h
    and b
    rst $38
    add c
    ld a, a
    jp nz, $e5ff

    rst $38
    ld e, d
    rst $38
    rst $38
    ldh [$9f], a
    ld hl, sp-$69
    db $fc
    xor a
    db $fc
    rst $10
    sbc a
    ld a, h
    rst $08
    db $fc
    rst $30
    ld a, h
    db $10
    push hl
    ret nz

    and $01
    rst $38
    rst $38
    ld c, b
    cp a
    add sp, -$61
    db $fc
    add e
    cp $df
    ld bc, $e0ff

jr_037_524a:
    rst $38
    rra
    inc de
    ldh [$bf], a
    pop hl
    ei
    rst $38
    ld b, d
    add sp, -$40
    add hl, bc
    cp $16
    db $fc
    ld hl, sp+$3f
    db $e4
    ret nz

    ld h, b
    ldh [$7f], a
    ret nz

    ld h, b
    and d
    ret z

    xor [hl]
    cp $20
    and l
    add a
    db $fc
    rst $08
    ld a, b
    rst $28
    jr c, @+$01

    push af
    inc e
    or h
    ret nz

    ld [$e086], sp
    ld de, $4fff
    rst $38
    ld a, l

jr_037_527b:
    jr z, jr_037_527b

    db $e4
    ld d, b
    rst $38
    sub b
    rst $38
    jr nz, jr_037_524a

    and e
    ld c, a
    dec b
    ld bc, $01f3
    ldh a, [$83]
    ld [de], a
    ldh [$f8], a
    cp $e2
    rst $38
    cp $cf
    db $fc
    rst $38
    jr c, @+$01

    db $10
    db $f4
    and l
    ldh a, [$d0]
    ldh [rNR14], a
    cp $e2
    adc $e1
    and b
    db $10
    xor h
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld hl, $4fff
    ldh a, [$7f]

jr_037_52b0:
    ld sp, hl
    sub b
    rst $10
    add d
    and d
    add b
    ldh [rIE], a
    jr nz, @+$01

    ldh a, [$5f]
    adc a
    ld hl, sp-$71
    ld hl, sp-$01
    db $fc
    pop hl
    rst $38
    db $10
    xor h
    add hl, de
    rst $38
    jr z, jr_037_52b0

    ldh [$c2], a
    dec b
    ld bc, $8598
    add sp, -$7b
    ld l, b
    add l
    rst $38
    ld a, a
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ld [hl], b
    ld e, a
    sbc [hl]
    ld h, d
    add [hl]
    add b
    ld a, a
    ldh [$1f], a
    or h
    ret nz

    ret nc

    db $ec
    ld h, c
    xor $38
    add e
    ld l, a
    rrca
    ld [hl], b
    jp nc, $f0e0

    ld e, a
    ld hl, sp+$7d
    rst $08
    jp nc, Jump_000_07eb

    db $fc
    di
    ld bc, $9a07
    ldh [rIE], a
    ld h, l
    ld bc, $0175
    push af
    ld bc, $01e5
    pop hl
    ld bc, $c166
    nop
    add b
    db $10
    pop hl
    add sp, -$1f
    ld h, h
    nop
    ld sp, hl
    rst $38
    ld h, c
    cp [hl]
    db $e3
    cp l
    rst $20
    ld a, $e7

jr_037_531d:
    jr jr_037_531d

    ld sp, hl
    ld h, d
    add c
    rst $38
    ld hl, sp-$31
    cp h
    rst $20
    ld e, $ff
    di
    rrca
    ld sp, hl
    rlca
    db $fc
    ld h, e
    cp $f1
    rst $18
    sbc a
    ld sp, hl
    rrca
    rlca
    db $fc
    and l
    add c
    ld bc, $ffff
    sbc c
    rst $38
    db $fd
    ld h, a
    rst $38
    jp Jump_037_61bf


    ld l, b
    jp nc, $c083

    db $e3
    ret nz

    ld h, c
    cp d
    jp nz, $81ea

    rst $38
    jp nz, $fbeb

    di
    ccf
    jp nz, $9deb

    di
    add c
    rst $38
    pop bc
    ld a, a
    ld a, a
    ldh [$3f], a
    ld hl, sp+$1f
    rst $38
    rlca
    ld e, $a0
    rst $38
    rra
    rst $38
    inc hl
    di
    ccf
    rst $38
    inc c
    rst $38
    rst $38
    pop bc
    rst $38
    add h
    rst $38
    add [hl]
    rst $38
    sbc e
    rst $38
    rst $38
    sub l
    rst $38
    ld d, d
    sbc l
    di
    res 7, l
    rst $20
    rst $38
    ld e, [hl]
    di
    xor $f9
    ld [hl], a
    rst $38
    xor c
    rst $38
    rst $00
    ld h, a
    cp a
    ldh [$d2], a
    db $eb
    ld a, [hl]
    and b
    jp nc, $ffea

    pop af
    ld h, $d2
    db $eb
    rst $38
    ld h, b
    inc l
    adc e
    db $e4
    ld h, b
    ld b, c
    ld c, d
    and d
    cp d
    and b
    call Call_000_361f
    ldh [rSB], a
    rst $38
    ld c, d
    and e
    cp d
    and d
    dec b
    cp $87
    ld b, $f8
    adc b
    ld c, d
    and e
    cp d
    and d
    ld hl, sp+$43
    jp nc, $80ea

    pop af
    rst $38
    inc e
    and c
    sbc h
    add b
    jp nc, $fce2

    ld [$f0f0], sp
    ld a, b
    jp nc, $82ec

    ld h, b
    adc b
    ld h, b
    inc bc
    ld b, $03
    ld a, [c]
    db $fc
    ldh [rIE], a
    ld b, $03
    ld h, l
    ld bc, $ffc1
    ccf
    cp $fd
    rst $08
    cp [hl]
    and c
    ei
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    db $dd
    ld hl, sp-$40
    and b
    inc a
    rst $38
    ld a, [bc]
    cp $e2
    inc c
    rst $38
    rst $10
    jr @+$01

    ld [hl], b
    jp nc, $fee1

    ret nc

    add sp, $41
    rst $38
    reti


    rst $38
    adc [hl]
    and e
    ret nc

    db $e4
    db $e4
    ldh [$d0], a
    db $eb
    rst $38
    rst $30
    nop
    and b
    xor e
    nop
    nop
    nop
    ld h, c
    ld d, h
    db $e4
    ld d, h
    ld d, d
    ld d, l
    rst $10
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
    ld d, [hl]
    xor [hl]
    ld d, [hl]
    jr jr_037_547e

    add e
    ld d, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    ld d, a
    ld h, c
    ld e, b
    db $d3
    ld e, b
    ld b, h
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    ld e, c
    daa
    ld e, d
    sbc d
    ld e, d
    inc d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc e
    ld e, e
    db $ec
    ld e, e
    ld c, d
    ld e, h
    xor b
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    add sp, -$1e
    pop hl
    call z, $c6e2
    pop hl

jr_037_547e:
    rst $30
    ld l, l
    ld c, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld l, l
    dec b
    rst $38
    inc b
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    rst $38
    ld [bc], a
    dec bc
    ld a, [bc]
    rlca
    rlca
    rlca
    ld b, $06
    rst $38
    ld b, $09
    ld [$060b], sp
    inc de
    rlca
    inc c
    rst $38
    dec c
    ld c, $12
    rlca
    ld [$061b], sp
    ld a, [bc]
    rst $38
    inc d
    dec d
    ld d, $17
    add hl, bc
    rlca
    ld a, [de]
    ld [$25ff], sp
    ld b, $1c
    dec e
    ld e, $1f
    rlca
    inc h
    rst $38
    dec bc
    cpl
    rlca
    dec h
    ld h, $27
    jr z, jr_037_54f0

    rst $38
    inc h
    ld b, $2e
    dec bc
    scf
    ld [hl], $25
    jr nc, @+$01

    ld sp, $3524
    inc [hl]
    ld [$0105], sp
    ld bc, $387f
    add hl, sp
    ld a, [hl-]
    dec sp
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l

jr_037_54f0:
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    ld [bc], a
    inc bc
    ld bc, $0101
    nop
    rst $38
    nop
    nop
    inc b
    dec b
    ld [$0609], sp
    ld b, $ff
    ld b, $07
    rlca
    rlca
    ld a, [bc]
    dec bc
    ld [$ff07], sp
    ld [de], a
    ld b, $0f
    db $10
    ld de, $0613
    dec bc
    rst $38
    ld a, [de]
    rlca
    add hl, bc
    jr jr_037_5531

    ld d, $19
    ld a, [bc]
    rst $38
    ld b, $1b
    dec bc
    inc h
    rlca
    jr nz, jr_037_5548

    ld [hl+], a
    rst $38
    inc hl
    ld b, $25
    ld [$062e], sp
    inc h
    ld a, [hl+]

jr_037_5531:
    rst $38
    dec hl
    inc l
    dec l
    dec h
    rlca
    cpl
    ld [$ff34], sp
    dec [hl]
    inc h
    ld [hl-], a
    inc sp
    dec h
    ld [hl], $37
    dec bc
    rst $38
    ld [bc], a
    nop
    nop
    inc a

jr_037_5548:
    dec a
    ld a, $3f
    ld bc, $0103
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    db $e4
    call z, $dbe0
    pop hl
    call z, $eee3
    add $e1
    ld l, l
    ld c, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld l, l
    rst $38
    dec b
    inc b
    nop
    nop
    nop
    ld bc, $0101
    rst $38
    inc bc
    ld [bc], a
    dec bc
    ld a, [bc]
    rlca
    ld b, b
    ld b, c
    ld b, d
    rst $38
    ld b, e
    ld b, $09
    ld [$060b], sp
    inc de
    ld b, a
    rst $38
    ld c, b
    ld c, c
    ld c, d
    ld [de], a
    rlca
    ld [$061b], sp
    rst $38
    ld a, [bc]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    add hl, bc
    rlca
    ld a, [de]
    rst $38
    ld [$0625], sp
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rlca
    rst $38
    inc h
    dec bc
    cpl
    rlca
    dec h
    ld a, [bc]
    ld e, a
    ld h, b
    rst $38
    add hl, bc
    inc h
    ld b, $2e
    dec bc
    scf
    ld [hl], $25
    rst $38
    ld h, e
    ld h, h
    inc h
    dec [hl]
    inc [hl]
    ld [$0105], sp
    rst $38
    ld bc, $6738
    ld l, b
    ld l, c
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    ld [bc], a
    inc bc
    ld bc, $0101
    nop
    rst $38
    nop
    nop
    inc b
    dec b
    ld [$0609], sp
    ld b, h
    rst $38
    ld b, l
    ld b, [hl]
    rlca
    rlca
    ld a, [bc]
    dec bc
    ld [$ff07], sp
    ld [de], a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    inc de
    ld b, $0b
    rst $38
    ld a, [de]
    rlca
    add hl, bc
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld a, [bc]
    rst $38
    ld b, $1b
    dec bc
    inc h
    rlca
    ld e, e
    ld e, h
    ld e, l
    rst $38
    ld e, [hl]
    ld b, $25
    ld [$062e], sp
    inc h
    add hl, bc
    rst $38
    ld h, c
    ld h, d
    ld a, [bc]
    dec h
    rlca
    cpl
    ld [$ff34], sp
    dec [hl]
    inc h
    ld h, l
    ld h, [hl]
    dec h
    ld [hl], $37
    dec bc
    rst $38
    ld [bc], a
    nop
    nop
    inc a
    ld l, d
    ld l, e
    ccf
    ld bc, $0103
    dec b
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    rst $38
    pop hl
    or $ea
    ret nz

    db $ed
    db $e4
    db $db
    ld [c], a
    or $e5
    ret c

    db $eb
    db $db
    pop hl
    or $e8
    ld bc, $fe00
    rst $38
    db $e4
    ld bc, $0309
    inc bc
    inc bc
    inc b
    dec b
    rst $38
    ld b, $03
    inc bc
    add hl, bc

jr_037_5670:
    ld [de], a
    inc de
    inc de
    ld a, [bc]
    rst $38
    dec bc
    inc c
    dec c
    inc de
    inc de
    ld [de], a
    inc e
    inc bc
    rst $38
    inc bc
    inc d
    dec d
    ld d, $17
    inc bc
    inc bc
    inc e
    rst $38
    dec h
    inc de
    inc de
    dec e
    ld e, $1f
    jr nz, @+$15

    cp e
    inc de
    dec h
    ret c

    pop hl
    ld h, $27
    jr z, jr_037_5670

    db $e3
    inc de
    ei
    inc l
    inc l
    ei
    ldh [rNR12], a
    dec [hl]
    ld sp, $2f31
    ccf
    jr nc, @+$32

    cpl
    ld sp, $3531
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    add b
    and $e0
    push hl
    pop hl
    rst $30
    ld [c], a
    db $db
    ld [c], a
    or $e5
    ret c

    db $ec
    adc $eb
    ld bc, $00fd
    rst $38
    db $e4
    ld bc, $0309
    inc bc
    inc bc
    rlca
    db $fd
    ld [$e0fb], sp
    add hl, bc
    ld [de], a
    inc de
    inc de
    ld c, $0f
    rst $38
    db $10
    ld de, $1313
    ld [de], a
    inc e
    inc bc
    inc bc
    rst $38
    jr jr_037_5704

    ld a, [de]
    dec de
    inc bc
    inc bc
    inc e
    dec h
    rst $38
    inc de
    inc de
    ld hl, $2322
    inc h
    inc de
    inc de
    db $dd
    dec h
    ret c

    ldh [$29], a
    ld a, [hl+]
    dec hl
    ret c

    db $e4
    inc de

jr_037_5704:
    dec l
    db $fd
    ld l, $fb
    ldh [rNR12], a
    dec [hl]
    ld sp, $3131
    ld [hl-], a
    rra
    inc sp
    inc [hl]
    ld sp, $3531
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e0
    rst $38
    pop hl
    or $eb
    add b
    db $e3
    pop hl
    db $dd
    push hl
    db $fd
    db $e3
    ld hl, sp-$1d
    adc $e5
    set 4, c
    or $ea
    ld bc, $00fd
    rst $38
    db $e4
    ld bc, $0309
    inc bc
    ld b, $05
    rst $38
    inc b
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld [de], a
    inc de
    inc de
    rst $38
    dec c
    inc c
    dec bc
    ld a, [bc]
    inc de
    inc de
    ld [de], a
    inc e
    rst $38
    inc bc
    inc bc
    rla
    ld [hl], $37
    jr c, jr_037_575c

    inc bc
    rst $38
    inc e

jr_037_575c:
    dec h
    inc de
    inc de
    inc a
    rra
    dec a
    ld a, $77
    inc de
    inc de
    dec h
    ret c

    ldh [rSCX], a
    ld b, h
    ld b, l
    ret c

    db $e4
    rst $30
    inc de
    inc l
    inc l
    ei
    ldh [rNR12], a
    dec [hl]
    ld sp, $7f31
    cpl
    jr nc, jr_037_57ac

    cpl
    ld sp, $3531
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e2
    ld sp, hl
    ldh [$f6], a
    ld [c], a
    nop
    rst $38
    pop hl
    db $ec
    pop hl
    ld [$dfe0], a
    push hl
    or $e0
    db $d3
    db $e3
    ret c

    jp hl


    adc $ee
    ei
    ld bc, $ff00
    db $e4
    ld bc, $0309
    inc bc
    inc bc
    ei

jr_037_57ac:
    ld [$fb07], sp
    ldh [$09], a
    ld [de], a
    inc de
    inc de
    ld de, $10ff
    rrca
    ld c, $13
    inc de
    ld [de], a
    inc e
    inc bc
    rst $38
    inc bc
    add hl, sp
    ld a, [hl-]
    add hl, de
    dec sp
    inc bc
    inc bc
    inc e
    rst $38
    dec h
    inc de
    inc de
    ccf
    ld b, b
    ld b, c
    ld b, d
    inc de
    cp e
    inc de
    dec h
    ret c

    pop hl
    dec hl
    ld a, [hl+]
    add hl, hl
    ret c

    db $e3
    inc de
    ei
    ld l, $2d
    ei
    ldh [rNR12], a
    dec [hl]
    ld sp, $3431
    ccf
    inc sp
    ld [hl-], a
    ld sp, $3131
    dec [hl]
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    add b
    rst $28
    pop hl
    db $fd
    ld [c], a
    or $e1
    di
    db $e3
    or $eb
    ld [c], a
    db $eb
    adc $e1
    ld c, l
    db $fd
    ld c, l
    pop de
    ld [c], a
    dec l
    ld c, l
    ld l, l
    ld d, [hl]
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld d, [hl]
    ld e, b
    ld e, c
    ld [bc], a
    ld [bc], a
    rst $38
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld e, c
    ld e, b
    ld e, d
    ld e, e
    rst $38
    ld d, $0f
    db $10
    ld de, $1612
    ld e, e
    ld e, d
    rst $38
    ld e, h
    ld e, l
    ld c, b
    rra
    jr nz, jr_037_5859

    ld [hl+], a
    ld c, b
    ld a, e
    ld e, l
    ld e, h
    ld [c], a
    ldh [$2f], a
    jr nc, @+$33

    ld [hl-], a
    ld [c], a
    db $e3
    rst $28
    dec a
    ld a, $3f
    ld d, $e2
    db $e3
    ld c, b
    ld c, c
    ld c, d
    db $fd
    ld c, b
    ld [c], a
    ldh [rRP], a
    ld bc, $505e
    ld d, c
    ld d, c

jr_037_5859:
    rrca
    ld d, b
    ld e, [hl]
    ld bc, $0056
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    add b
    rst $28
    pop hl
    db $fd
    ld [c], a
    or $e1
    di
    db $e3
    or $eb
    ld [c], a
    db $eb
    adc $e1
    ld c, l
    db $fd
    ld c, l
    pop de
    ld [c], a
    dec l
    ld c, l
    ld l, l
    ld d, [hl]
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld d, [hl]
    ld e, b
    ld e, c
    ld [bc], a
    ld [bc], a
    rst $38
    dec b
    ld b, $02
    ld [bc], a
    ld e, c
    ld e, b
    ld e, d
    ld e, e
    rst $38
    ld d, $13
    inc d
    dec d
    ld d, $16
    ld e, e
    ld e, d
    rst $38
    ld e, h
    ld e, l
    ld c, b
    inc hl
    inc h
    dec h
    ld h, $48
    ld a, e
    ld e, l
    ld e, h
    ld [c], a
    ldh [$33], a
    inc [hl]
    dec [hl]
    ld [hl], $e2
    db $e3
    rst $28
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [c], a
    db $e3
    ld c, b
    ld c, e
    ld c, h
    db $fd
    ld c, b
    ld [c], a
    ldh [rRP], a
    ld bc, $505e
    ld d, d
    ld d, d
    rrca
    ld d, b
    ld e, [hl]
    ld bc, $0056
    nop
    nop
    rrca
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    db $f4
    pop hl
    ld sp, hl
    db $e3
    ldh [$f6], a
    db $e4
    db $ec
    rst $20
    ret c

    db $e3
    ld [c], a
    xor $d1
    ldh [$2d], a
    dec l
    ld c, l
    db $fd
    ld c, l
    rst $00
    ld [c], a
    dec l
    ld c, l
    ld l, l
    ld d, [hl]
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld d, [hl]
    ld e, b
    ld e, c
    ld [bc], a
    rlca
    rst $38
    ld [$0a09], sp
    ld [bc], a
    ld e, c
    ld e, b
    ld e, d
    ld e, e
    rst $38
    ld d, $17
    jr jr_037_5929

    ld a, [de]
    ld d, $5b
    ld e, d
    rst $38
    ld e, h
    ld e, l
    ld c, b
    daa
    jr z, jr_037_5944

    ld a, [hl+]
    ld c, b
    ld a, e
    ld e, l
    ld e, h
    ld [c], a
    ldh [$37], a
    jr c, jr_037_595e

    ld [bc], a
    ld [c], a
    db $e3
    rst $28

jr_037_5929:
    ld d, $44
    ld b, l
    ld d, $e2
    db $e3
    ld c, b
    ld c, l
    ld c, l
    db $fd
    ld c, b
    ld [c], a
    ldh [rRP], a
    ld bc, $535e
    ld d, h
    ld d, h
    rrca
    ld d, e
    ld e, [hl]
    ld bc, $0056
    nop
    nop

jr_037_5944:
    rrca
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    db $f4
    pop hl
    ld sp, hl
    db $e3
    ld h, b
    or $e4
    db $ec
    rst $20
    ret c

    db $e3
    ld [c], a
    rst $28
    db $ec
    pop hl
    ld c, l
    ld c, l

jr_037_595e:
    rst $00
    ld [c], a
    rst $38
    dec l
    ld c, l
    ld l, l
    ld d, [hl]
    ld bc, $0000
    ld bc, $fcfe
    pop hl
    ld d, [hl]
    ld e, b
    ld e, c
    ld [bc], a
    dec bc
    inc c
    dec c
    rst $38
    ld c, $02
    ld e, c
    ld e, b
    ld e, d
    ld e, e
    ld d, $1b
    rst $38
    inc e
    dec e
    ld e, $16
    ld e, e
    ld e, d
    ld e, h
    ld e, l
    rst $38
    ld c, b
    dec hl
    inc l
    dec l
    ld l, $48
    ld e, l
    ld e, h
    sbc $e2
    ldh [$3a], a
    dec sp
    inc a
    scf
    ld [c], a
    db $e3
    ld d, $46
    ld a, e
    ld b, a
    ld d, $e2
    db $e3
    ld c, b
    ld c, [hl]
    ld c, a
    ld c, b
    ld [c], a
    ldh [rIE], a
    ld d, [hl]
    ld bc, $505e
    ld d, l
    ld d, l
    ld d, b
    ld e, [hl]
    inc bc
    ld bc, $0056
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    nop
    rst $28
    pop hl
    db $fd
    ld [c], a
    and $e4
    ldh [$e1], a
    ld [c], a
    db $e4
    or $e3
    ld [c], a
    db $eb
    adc $e1
    ei
    ld c, l
    ld c, l
    db $db
    ld [c], a
    dec l
    ld c, l
    ld l, l
    ld c, b
    ld bc, $00f7
    nop
    ld bc, $e1fc
    ld c, b
    ld c, d
    ld c, e
    ld [bc], a
    rst $38
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld c, e
    ld c, d
    ld c, h
    rst $38
    ld c, l
    dec c
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, l
    rst $38
    ld c, [hl]
    ld c, a
    ld d, b
    ld b, c
    rla
    jr jr_037_5a17

    ld a, [de]
    rst $30
    ld b, c
    ld d, b
    ld c, a
    ld [c], a
    ldh [$27], a
    jr z, jr_037_5a31

    ld a, [hl+]
    sbc $e2
    db $e3
    dec c
    scf
    jr c, jr_037_5a1d

    ld [c], a
    db $e3
    ld b, c
    ld b, d
    ei
    ld b, e
    ld b, c

jr_037_5a17:
    ld [c], a
    ldh [rOBP0], a
    ld bc, $4651

jr_037_5a1d:
    ld b, a
    rra
    ld b, a
    ld b, [hl]
    ld d, c
    ld bc, $0048
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]

jr_037_5a31:
    ldh [$2d], a
    nop
    rst $28
    pop hl
    db $fd
    ld [c], a
    and $e4
    ldh [$e1], a
    ld [c], a
    db $e4
    or $e3
    ld [c], a
    db $eb
    adc $e1
    ei
    ld c, l
    ld c, l
    db $db
    ld [c], a
    dec l
    ld c, l
    ld l, l
    ld c, b
    ld bc, $00f7
    nop
    ld bc, $e1fc
    ld c, b
    ld c, d
    ld c, e
    ld [bc], a
    rst $38
    ld [bc], a
    dec b
    ld b, $02
    ld [bc], a
    ld c, e
    ld c, d
    ld c, h
    cp $e2
    ldh [$0e], a
    rrca
    db $10
    dec c
    ld c, l
    ld c, [hl]
    ld c, a
    rst $38
    ld d, b
    ld b, c
    dec de
    inc e
    dec e
    ld e, $41
    ld d, b
    cp l
    ld c, a
    ld [c], a
    ldh [$2b], a
    inc l
    dec l
    ld l, $e2
    db $e3
    add hl, sp
    rst $30
    ld a, [hl-]
    dec sp
    inc a
    ld [c], a
    db $e3
    ld b, c
    ld b, h
    ld b, l
    ld b, c
    cp $e2
    ldh [rOBP0], a
    ld bc, $4651
    ld b, a
    ld b, a
    ld b, [hl]
    rlca
    ld d, c
    ld bc, $0048
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    ret nz

    rst $28
    pop hl
    db $fd
    ld [c], a
    and $e4
    ldh [$e1], a
    ld [c], a
    db $e4
    or $e3
    dec c
    ld c, l
    daa
    dec c
    dec c
    ld l, l
    ld [c], a
    and $ce
    pop hl
    ld c, l
    xor $e0
    rst $00
    ldh [rIE], a
    dec l
    ld c, l
    ld l, l
    ld c, b
    ld bc, $0000
    ld bc, $fcfe
    pop hl
    ld c, b
    ld c, d
    ld c, e
    ld [bc], a
    ld [bc], a
    rlca
    ld [$02ff], sp
    ld [bc], a
    ld c, e
    ld c, d
    ld c, h
    ld c, l
    dec c
    ld de, $12ff
    inc de
    inc d
    dec c
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    rst $38
    ld b, c
    rra
    jr nz, jr_037_5b0d

    ld [hl+], a
    ld b, c
    ld d, b
    ld c, a
    sbc $e2
    ldh [$2f], a
    jr nc, jr_037_5b27

    ld [hl-], a
    ld [c], a
    db $e4
    dec a
    ld a, $bd
    ld de, $e3e2
    ld b, c
    ld b, d
    ld b, e
    ld b, c
    ld [c], a
    ldh [rOBP0], a
    rst $38
    ld bc, $4651
    ld b, a
    ld b, a
    ld b, [hl]

jr_037_5b0d:
    ld d, c
    ld bc, $4801
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    db $fd
    db $e3
    ld a, [c]
    ldh [$2d], a
    add b
    rst $28
    pop hl
    db $fd
    ld [c], a
    and $e4

jr_037_5b27:
    ldh [$e1], a
    ld [c], a
    db $e4
    or $e3
    ldh [$e1], a
    ld l, l
    db $ec
    ld [c], a
    and $ce
    pop hl
    ld c, l
    ld c, l
    db $db
    ld [c], a
    dec l
    ld c, l
    ld l, l
    rst $18
    ld c, b
    ld bc, $0000
    ld bc, $e1fc
    ld c, b
    ld c, d
    rst $38
    ld c, e
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld c, e
    rst $38
    ld c, d
    ld c, h
    ld c, l
    dec c
    add hl, bc
    dec d
    ld d, $0c
    rst $38
    dec c
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld b, c
    inc hl
    inc h
    rst $18
    dec h
    ld h, $41
    ld d, b
    ld c, a
    ld [c], a
    ldh [$33], a
    inc [hl]
    ld a, e
    dec [hl]
    ld [hl], $e2
    db $e3
    dec c
    ccf
    ld b, b
    ld de, $e3e2
    rst $28
    ld b, c
    ld b, d
    ld b, e
    ld b, c
    ld [c], a
    ldh [rOBP0], a
    ld bc, $7f51
    ld b, [hl]
    ld b, a
    ld b, a
    ld b, [hl]
    ld d, c
    ld bc, $0048
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fcfe
    pop hl
    inc bc

jr_037_5ba7:
    inc c
    ld a, [bc]
    dec bc
    dec b
    ld b, $07
    rst $38
    ld [$0905], sp
    jr c, @+$17

    ld d, $17
    dec c
    rst $38
    ld c, $0f
    db $10
    rla
    add hl, sp
    ccf
    inc c

jr_037_5bbe:
    ld a, [bc]
    rst $38
    dec de
    jr jr_037_5bdc

    ld a, [de]
    dec de
    ld l, $09
    jr c, jr_037_5ba7

    ld [c], a
    ldh [$1f], a
    jr nz, jr_037_5bef

    dec bc
    ld [c], a
    db $e3
    ld h, $27
    cp e
    jr z, jr_037_5bff

    ld [c], a
    db $e3
    ld l, $2f
    jr nc, jr_037_5bbe

jr_037_5bdc:
    pop hl
    inc bc
    rst $38
    ld bc, $3437
    dec [hl]
    ld [hl], $37
    inc [hl]
    ld bc, $0301
    nop
    nop
    nop
    ld h, l
    dec c
    rst $38

jr_037_5bef:
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d

jr_037_5bff:
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    inc c
    ld a, [bc]

jr_037_5c0a:
    dec bc
    dec b
    add hl, bc
    db $fc
    pop hl
    rst $38
    jr c, @+$17

    ld d, $17
    ld de, $1312
    inc d
    rst $38
    rla
    add hl, sp
    ccf
    inc c
    ld a, [bc]
    dec de
    inc e
    dec e
    rst $18
    ld e, $1b
    ld l, $09
    jr c, jr_037_5c0a

    ldh [rNR43], a
    inc hl
    ld a, e
    inc h
    dec h
    ld [c], a
    db $e3
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [c], a
    db $e3
    rst $30
    ld sp, $3332
    ld [c], a
    pop hl
    inc bc
    ld bc, $3437
    ccf
    dec [hl]
    ld [hl], $37
    inc [hl]
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    inc c
    ld a, [bc]

jr_037_5c68:
    dec bc
    dec b
    add hl, bc
    db $fc
    pop hl
    rst $38
    jr c, @+$17

    ld d, $17
    rla
    add hl, sp
    ld a, [hl-]
    dec sp
    rst $38
    rla
    add hl, sp
    ccf
    inc c
    ld a, [bc]
    dec de
    ld b, b
    ld b, c
    rst $18
    ld b, d
    ld b, e
    ld l, $09
    jr c, jr_037_5c68

    pop hl
    ld c, b
    ld c, c
    cp l
    ld c, d
    ld [c], a
    db $e3
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld [c], a
    db $e3
    ld d, l
    rst $30
    ld d, [hl]
    ld d, a
    dec de
    ld [c], a
    ldh [$03], a
    ld bc, $3437
    ccf
    ld e, e
    ld [hl], $37
    inc [hl]
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    inc c
    ld a, [bc]

jr_037_5cc6:
    dec bc
    dec b
    add hl, bc
    db $fc
    pop hl
    rst $38
    jr c, @+$17

    ld d, $17
    rla
    inc a
    dec a
    ld a, $ff
    rla
    add hl, sp
    ccf
    inc c
    ld a, [bc]
    dec de
    ld b, h
    ld b, l
    rst $18
    ld b, [hl]
    ld b, a
    ld l, $09
    jr c, jr_037_5cc6

    pop hl
    ld c, e
    ld c, h
    cp l
    ld c, l
    ld [c], a
    db $e3
    ld a, [hl+]
    ld d, d
    ld d, e
    ld d, h
    ld [c], a
    db $e3
    ld e, b
    rst $30
    ld e, c
    ld e, d
    dec de
    ld [c], a
    ldh [$03], a
    ld bc, $3437
    ccf
    ld e, e
    ld [hl], $37
    inc [hl]
    ld bc, $0003
    nop
    nop
    db $10
    ld e, l
    ld b, b
    ld h, d
    jr nz, jr_037_5d72

    db $60, $6b

    ld b, b
    ld l, [hl]
    ld l, a
    rst $38
    rst $38
    rst $38
    nop
    cp $ea
    rst $38
    nop
    rst $38
    ld [$e2fc], a
    db $ec
    call nc, $01e7
    cp $03
    db $fc
    rrca
    di
    db $fd
    rra
    jp nc, $e0e5

    ldh [rNR23], a
    ld hl, sp+$06
    cp $f9
    add hl, de
    jp nz, $b4ec

    rst $20
    inc bc
    inc bc
    inc b
    rlca
    jr @-$07

    rra
    ld h, $3f
    sub d
    and $c0
    ccf
    ldh a, [rIF]
    ld [hl], a
    db $fc
    inc sp
    cp $82
    ld_long $ff06, a
    ld a, [bc]
    ld [hl], d

jr_037_5d4f:
    and $7f
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    and $3f
    ld [hl], d
    push hl
    rst $38
    ret nz

    ret nz

    jr nc, jr_037_5d4f

    inc c
    db $fc
    ld [hl-], a
    cp $9e
    ld h, d
    push hl
    ld b, $06
    ld c, $0a
    cp $e1
    and d
    db $eb
    cpl
    db $fd
    add hl, sp
    and d

jr_037_5d72:
    db $eb
    ei
    adc $f7
    inc e
    rst $28
    jr c, @+$01

    rst $38
    inc sp
    rst $38
    jr nc, @+$01

    daa
    ei
    ccf
    rst $38
    ei
    ld a, a
    ei
    sbc a
    db $fd
    rst $20
    cp $03
    rst $38
    rst $38
    add hl, de
    rst $38
    ld bc, $1cff
    rst $28
    cp a
    rst $10
    rst $28
    rst $38
    rst $28
    ld [de], a
    ldh [$80], a
    rst $38
    and $c0
    ret nz

    ei
    ldh [rNR41], a
    ld [bc], a
    db $eb
    ld bc, $2f01
    add hl, sp
    ld e, a
    rst $38
    ld [hl], b
    ld a, a
    ld h, [hl]
    ld a, a
    ld h, b
    ld a, a
    ld c, [hl]
    ld [hl], a
    rst $38
    ld a, a
    rst $30
    rst $38
    rst $30
    ccf
    ei
    adc $fd
    db $fd
    rlca
    or b
    ldh [$03], a
    rst $38
    add hl, sp
    rst $18
    ld a, a
    rst $18
    cp e
    rst $38
    rst $18
    ld b, b
    db $eb
    add b
    rst $38
    ld b, b
    ld a, $e0
    ld a, [bc]
    rst $38
    rst $38
    ld a, [de]
    rst $38
    ld l, [hl]
    rst $38
    reti


    rst $38
    and c
    rst $38
    rst $38
    ld e, c
    rst $38
    ld [hl], c
    rst $28
    add hl, sp
    rst $18
    ld [hl], b
    ld a, a
    rst $38
    ld h, [hl]
    rst $38
    ld h, b
    rst $38
    ld c, [hl]
    rst $30
    ret nz

    ld [c], a
    pop af
    ld a, [$ecc0]
    sub d
    ret


    ld a, [hl]
    ldh [rLCDC], a
    ld e, $1a
    ld a, a
    db $fd
    ld l, a
    call nz, Call_037_7fe1
    ld e, c
    ld a, a
    ld [hl], c
    ccf
    inc hl
    cp a
    rra
    ld de, $765f
    ld a, a
    ld l, b
    add d
    rst $20
    rst $38
    ld e, a
    ld l, a
    db $fd
    scf
    rst $38
    dec bc
    add d
    add sp, $7b
    add d
    db $ec
    rst $38
    ld b, b
    rst $38
    or a
    rst $38
    sub b
    rst $38
    or b
    rst $18

jr_037_5e20:
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    jr @+$01

    inc c
    rst $38
    rst $10
    inc b
    rst $38
    cp l
    ld a, b
    ldh [rSTAT], a
    ld d, b
    ldh [rNR13], a
    cp $ff
    ld [c], a
    db $fc
    inc b
    db $fc
    inc b
    ldh [$a0], a
    ldh [$7f], a
    jr nz, jr_037_5e20

    and b
    ld b, b
    ret nz

    add b
    add b
    ld e, $e5
    db $fc
    cp $e1
    db $10
    ret z

    ld l, a

jr_037_5e4d:
    rst $38
    ld hl, $60ff
    cp a
    rst $38
    ldh a, [$7f]
    ld [hl], d
    rra
    ld de, $080f
    rrca
    db $fd
    ld [$e09e], sp
    ld b, d
    rst $38
    add e
    cp $07
    rst $38
    ld a, a
    ld h, a
    cp a
    db $e4
    rst $38
    ret z

    rst $38
    ld [$e29c], sp
    cp c
    ld b, b
    ld d, $e0
    jp z, Jump_000_23a5

    rst $38
    ld de, $e0fe

jr_037_5e7a:
    ld [$e6ea], sp
    ldh [rDIV], a
    sub d
    ldh [rSC], a
    ret nz

    push hl
    rst $38
    ld [hl], d
    rst $38
    push af
    ld sp, $c098
    jr jr_037_5e4d

    rst $20
    cp h
    db $e4
    jr c, jr_037_5e7a

    rst $08
    ld hl, sp-$38
    ret nz

    ld b, b
    cp $e1
    add d
    push hl
    nop
    nop
    rst $38
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    inc b
    ld c, a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [hl], h
    pop hl
    jp nz, Jump_000_33e6

    ld e, d
    ret nz

    rst $30
    add hl, sp
    rst $00
    db $fc
    add d
    push hl
    rst $38
    db $e4
    cp a
    add sp, -$51
    ccf
    add sp, -$01
    ret nc

    ld d, d
    and c
    ld a, a
    cp $e0
    ccf
    ld a, [c]
    cp $e0
    rra
    cp $e0
    call z, Call_000_0ea0
    di
    rra
    pop hl
    ei
    ccf
    ldh [$fe], a
    ld [c], a
    ldh a, [$1f]
    ld hl, sp+$08
    db $fc
    rst $38
    inc c
    ld a, [c]
    ld a, $e5
    rst $38
    adc b
    rst $38
    ld d, b
    rst $28
    rst $38
    ld h, d
    rst $38
    jp nz, $a232

    ld bc, $c100
    rst $38
    ret nz

    inc hl
    ldh [rNR13], a
    ldh a, [$37]
    ldh a, [$7f]
    cp l
    ret z

    sbc b
    jp nz, $8100

    ld bc, $fec1
    ldh [$e1], a
    rst $38
    ld bc, $00e0
    ccf
    inc a
    ld c, a
    ld a, h
    cp e
    rst $38
    cp $7f
    rst $08
    rst $38
    add c
    rst $38
    and d
    rst $38
    rst $38
    pop bc
    rst $38
    call nz, Call_000_10ff
    rst $38
    jr @-$17

    cp a
    ld a, h
    set 7, [hl]
    inc de
    rst $38
    and b
    ld sp, $84c0
    ld a, [$82e2]
    cp $fe
    ldh [$fc], a
    add b
    ld a, h
    ret nz

    jr c, @+$79

    ldh [$78], a
    ldh [$c6], a
    and b
    ld bc, $017f
    add b
    rst $20
    rst $38
    rst $20
    ld a, h
    add a
    db $fc
    rlca
    cp $89
    rst $38
    rst $38
    bit 7, a
    jp c, $e47f

    ld a, a
    push hl
    ld a, a
    ld a, a
    ldh a, [rNR10]
    ld hl, sp+$18
    db $e4
    ld a, h
    jp z, $e2c0

    ld sp, hl
    ret nz

    add c
    ret nz

    add b
    db $e3
    ld bc, $0300
    nop
    add e
    ld e, a

Call_037_5f67:
    add b
    ld b, a
    ret nz

    ld b, a
    ret nz

    sub h
    pop bc
    add b
    ld a, [hl]
    ldh [$75], a
    ret nz

    cp $e0
    ldh [$fe], a
    ldh [rTAC], a
    db $fc
    add a
    jp nz, $ffe0

    ld c, e
    ld a, a
    ld e, d
    ld a, a
    ld h, h
    ld a, a
    ld h, l
    ld a, a
    sub e
    ld b, l
    ld a, a
    add d
    rst $20
    jp nz, Jump_000_04e1

    add b
    push hl
    add d
    ldh [$3c], a
    cp $82
    ldh [$f8], a
    sub b
    rrca
    nop
    rrca
    nop
    rlca
    ld a, [c]
    cp $e0
    inc bc
    xor [hl]
    ldh [$a8], a
    pop hl
    pop af
    rra
    ei
    rra
    rst $18
    rst $30
    ld e, $f1
    rra
    ldh a, [$fe]
    ldh [rIE], a
    rra
    rst $38
    db $fc
    rla
    ld [c], a
    cp a
    pop af
    rra
    ld sp, hl
    rrca
    cp $b6
    add b
    add e
    ld a, a
    ret nz

jr_037_5fc2:
    rst $38

jr_037_5fc3:
    ldh [rIE], a
    sbc $ea
    dec a
    ldh [$c4], a
    ld a, [$08a0]
    add $c0
    ld a, h
    rst $38
    ld b, h
    ld a, a
    rst $38
    ld a, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp-$02
    ldh [$f9], a
    db $fc
    cp $e0

Call_037_5fe0:
    jr z, jr_037_5fc3

    ld a, a
    ld l, d
    ld e, a
    ld [hl], a
    ld c, h
    ei
    ld a, a
    ld b, b
    cp $e2
    ld a, a
    ld a, a
    ld [hl], e

jr_037_5fef:
    ld e, a
    call nz, Call_037_7ffb
    push bc
    inc hl
    and b
    inc bc
    cp $07
    db $fc
    rlca
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38

jr_037_6000:
    cp d
    ldh a, [$90]
    ld hl, sp-$01
    ld [$88f8], sp
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [rIE]
    jr nc, jr_037_6000

    ld d, b
    ldh a, [$30]
    push bc
    ld a, a
    rst $00
    db $eb
    ld a, a
    ret nz

    cp $e0
    add b
    inc de
    and b
    rst $38
    rst $38
    rst $20
    adc a
    cp a
    inc b
    rst $38
    dec b
    jp nc, $cee0

    db $e3
    ret nc

    ldh [$74], a
    ld c, a
    rst $28
    and b
    rst $28
    jr nz, jr_037_5fef

    ret nz

    cp $e1
    jr nz, jr_037_5fc2

    add b
    ld h, e
    ld d, b
    ld b, a
    and h
    ldh [$d4], a
    pop hl
    jp nc, $ffe3

    sbc b
    jp nc, $6ee0

    and d
    rst $20
    db $76
    rst $38
    inc bc
    and d
    db $eb
    ldh [$e0], a
    ld h, d
    pop bc
    ld a, [hl]
    and $c1
    ldh a, [rP1]
    ld sp, hl
    ld bc, $01fd
    or b
    and b
    ld e, a
    inc hl
    rst $38
    ld b, b
    ld a, a
    ld b, d
    ld h, d
    ret nz

    add c
    and h
    and b
    ld [hl], l
    ld [bc], a
    ld [hl], $e2
    rlca
    jr nc, @-$5e

    pop bc
    ld a, a
    ld b, c
    ld c, e
    pop hl
    ld a, a
    ccf
    jr nz, @+$01

    and b
    cp $c0
    db $fc
    ld l, $e0
    rst $38
    ldh a, [$80]
    ldh a, [$f0]
    db $fc
    inc c
    cp $06
    cp h
    ld [c], a
    and c
    and $a0
    ld bc, $010f
    rlca
    xor [hl]
    and b
    inc bc
    di
    ld [bc], a
    ld a, a
    inc hl
    ldh [rBCPS], a
    add b

jr_037_609a:
    rlca
    cp $02
    db $fc
    and l
    inc b
    ld [hl], $e0
    ld [$c140], sp
    ld b, d
    add b
    pop bc
    ld d, [hl]
    add b
    jr nz, jr_037_609a

    ld e, [hl]
    ldh [rNR10], a
    ldh [$e0], a
    ld h, h
    pop bc
    rlca
    nop
    adc a
    rst $10
    add b
    rst $18
    ld b, b
    jp c, $0860

    ld [c], a
    and c
    pop bc
    ld bc, $e3df
    ld [bc], a
    di
    ld [bc], a
    ei
    sub b
    pop hl
    ld [bc], a
    rst $38
    ld b, l
    sbc b
    ld a, [hl+]
    add b
    inc c
    db $10
    add b
    cp h
    pop bc
    inc e
    and c
    ld b, $e1
    pop bc
    cp $80
    pop hl
    ccf
    jr nz, jr_037_611e

    jr nz, jr_037_6100

    db $10
    rst $38
    or a

jr_037_60e4:
    jr nc, jr_037_60e4

    ldh [$80], a
    ld [c], a
    nop
    ldh [rSCY], a
    add b
    ldh a, [$5d]
    jr nc, jr_037_6153

    and b
    ld bc, HeaderManufacturerCode
    add b
    ldh [rSC], a
    add b
    db $e3
    ret nc

    jp nz, $84e3

    db $e3
    ld h, h

jr_037_6100:
    and b
    sbc $81
    ld bc, $e782
    rst $38
    db $10
    ld a, [hl]
    ld h, d
    and c
    inc bc
    nop
    add a
    add b
    rst $08
    ld b, b
    add b
    ldh [rIE], a
    jr nz, @+$01

    jr jr_037_6157

    inc b
    rra
    rra
    ld [hl+], a
    push hl
    ccf

jr_037_611e:
    inc hl
    pop hl
    ld a, a
    ld l, d
    ret nz

    ld h, d
    ld b, b
    inc b
    rst $38
    adc h
    rst $30
    ld a, a
    db $e4
    rra
    ld [hl], d
    jp nz, $fc45

    rst $38
    rst $38
    rst $38
    rra
    jr jr_037_6145

    ld b, $1d
    ld bc, $0119
    rst $20
    inc sp
    ld bc, $782f
    and b
    ld b, d
    ld b, b
    rrca
    db $fd

jr_037_6145:
    ld a, a
    db $dd
    add l
    ld sp, $0760
    rst $38
    ld sp, hl
    rst $20
    ret nz

    rst $38
    rst $38
    ld a, a
    rst $00

jr_037_6153:
    inc b
    rst $38
    rra
    ld [c], a

jr_037_6157:
    ccf
    pop bc
    ld e, h
    ret nz

    push af
    rst $38
    db $fc
    pop hl
    rst $38
    ldh a, [$80]
    add h
    ld a, h
    db $e4
    inc e
    xor $05
    add b
    db $fc
    db $fc
    ld b, [hl]
    ret nz

    ldh [rIE], a
    ld [$fff7], sp
    inc b
    db $e3
    inc bc
    and $03
    adc $03
    db $d3
    rst $38
    inc bc
    add d
    inc bc
    rst $38
    rst $38
    db $fc
    inc b
    ld a, [$feff]
    ld c, $fe
    ld b, $fe
    ld [bc], a
    cp $fe
    db $fc
    db $fc
    ldh [$a0], a
    ldh [rNR10], a
    rrca
    ld [$051f], sp
    ld a, [de]
    cp a
    inc bc
    ld [hl-], a
    inc bc
    cpl
    inc bc
    ld a, [hl]
    ldh [$e0], a
    ei
    rst $38
    ld [$fcff], sp
    rrca
    cp $07
    cp $03
    cp e
    cp $ff
    db $fc
    pop hl
    rst $38
    db $fc
    inc c
    or l
    pop hl
    inc b
    ld a, a
    db $fc
    inc a
    db $fc
    call nz, Call_037_7efc
    ld hl, sp-$50

jr_037_61be:
    db $e3

Jump_037_61bf:
    ld a, e
    rst $20
    dec b
    or b
    add sp, $0c
    ld a, [$0afe]
    or b
    ldh [$15], a
    ld b, $b0
    ldh [rDIV], a
    sub b
    pop hl
    rst $38
    and b
    ld b, a
    sub [hl]
    ld b, c
    sub b
    ld hl, $4010
    adc d
    sub b
    jr nz, jr_037_61be

    add e
    ld a, d
    pop bc
    rlca
    add b
    jr nz, jr_037_6243

    jp nz, $e7fc

    db $10
    jp $faa3


    and $e0
    and a
    inc a
    and c
    cp $40
    ld h, h
    ld a, [$d0e7]
    push hl
    sbc a
    cp a
    add b
    adc a
    add b

jr_037_61fd:
    add e
    dec h
    ld b, b
    ldh [$e5], a
    inc bc
    and d
    xor $a0
    ccf
    ld b, h
    add b
    ld [hl], b
    add a
    sub b
    db $e3
    ccf
    or b
    add b
    inc bc
    inc d
    db $10
    jr nc, jr_037_61fd

    db $ed
    inc bc
    adc b
    add b
    ccf
    sub $00
    ld hl, sp-$1b
    jp z, $fe05

    ret z

    ld [hl+], a
    add b
    ldh [$80], a
    ldh a, [$80]
    ld hl, sp-$80
    rst $18
    db $fc
    add b
    cp $80
    rst $38
    ld c, d
    and b
    ld sp, hl
    ld bc, $f11d
    and h
    ld h, b
    pop bc
    ld bc, $a681
    ld b, b
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38

jr_037_6243:
    rst $38
    nop
    cp $fe
    ldh [$fc], a
    cp $e0
    rst $38
    ld hl, sp+$00
    add d
    nop
    jp nz, $e200

    nop
    db $fd
    ldh a, [$fe]
    ldh [$e0], a
    nop
    pop hl
    nop
    rst $00
    nop
    ld a, a
    rst $08
    nop
    ld b, e
    nop
    ld b, a
    nop
    rrca
    cp $e0
    rst $38
    rlca
    nop
    add a
    ld bc, $03e2
    db $fc
    rrca
    cp [hl]
    ldh [$e8], a
    ldh [$1f], a
    ld hl, sp+$07
    cp $e0
    and $01
    cp a
    add [hl]
    inc bc
    db $ec
    rrca
    di
    rra
    ret nz

    and $e0
    db $ed
    add hl, de
    ld [c], a
    ldh [rNR24], a
    rst $38
    ret nz

    db $e4

jr_037_628e:
    inc bc
    inc b
    rlca
    cp a
    sbc b
    rra
    and $3f
    rst $28
    add hl, sp
    and b
    db $e4
    ret nz

    rst $38
    jr nc, jr_037_628e

    dec c
    db $fc
    inc sp
    cp $fb
    adc $5f
    rst $38
    nop
    rst $38
    nop
    ld a, a
    cp $e0
    ccf
    cp $e0
    rst $38
    rra
    nop
    ld b, c
    nop
    di
    rra
    rst $30
    inc e
    rst $38
    rst $28
    jr c, @+$01

    inc sp
    rst $38
    jr nc, @+$01

    daa
    rst $38
    ei
    ccf
    ei
    ld a, a
    add hl, de
    rst $38
    db $fd
    rst $20
    rst $38
    cp $03
    rst $38
    add hl, de
    rst $38
    ld bc, $1cff
    rst $20
    rst $28
    cp a
    rst $28
    ld d, d
    ldh [$50], a
    ldh [$80], a
    cp $80
    cp l
    db $fc
    cp $e0
    ld hl, sp-$80
    jp nz, $d2c0

    db $eb
    ei
    pop hl
    sbc a
    jp nc, $d0eb

    ld [c], a
    jp nc, $d0e0

    db $e4
    ret nz

    ld [c], a

jr_037_62f5:
    jr nz, jr_037_62f5

    sub b
    ld [$4101], a
    ld bc, $70df
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    ld h, b
    rst $38
    ld c, [hl]
    rst $30
    ld a, a
    rst $30
    rst $38
    cp a
    rst $30
    ccf
    rst $38
    ld l, a
    db $fd
    rlca
    add h
    ldh [$03], a
    rst $38
    rst $38
    add hl, sp
    rst $18
    ld a, a
    rst $18
    rst $38
    rst $18
    cp $f3
    rst $38
    ld a, e
    sub b
    ld [c], a
    ldh [$c3], a
    add b
    ld hl, sp+$40
    jp nz, $40ff

    ei
    sbc a
    rst $38
    or a
    rst $38
    sub b

jr_037_632f:
    rst $38
    rst $38
    or b
    rst $18
    ld a, b
    rst $38
    add hl, sp
    rst $08
    ld [$7dcf], sp
    inc b
    ld l, [hl]
    ldh [$bd], a
    rst $38
    and c
    rst $38
    ld b, c
    call z, $ffe0
    inc sp
    rst $18
    ld a, [c]
    sbc a
    db $f4
    ld [c], a
    jr nz, jr_037_632f

    rst $38
    and b
    ldh a, [rNR41]
    ldh a, [$a0]
    ld h, b
    ret nz

    pop hl
    ld sp, hl
    add b
    ret nz

    pop bc
    jp nc, $efe7

    ld [$04c7], sp
    rst $08
    ld a, l
    inc b
    jp nc, $ffeb

    ld h, l
    ld [c], a
    and b
    ld [c], a
    jp nc, $ffe0

    ld [hl], b
    ret nz

    ldh [$80], a
    pop hl
    nop
    rst $30
    ld [hl], b
    cp a
    rst $38
    adc b
    ld b, e
    ld bc, HeaderCartridgeType
    sub b

jr_037_637d:
    call nz, $ff00
    db $e3
    nop
    di
    nop
    rst $38
    ld hl, $60ff
    rst $38
    cp a
    ldh a, [rIE]
    ld [hl], d
    rst $38
    ld de, $08ef
    cp $90
    pop hl
    rst $38

jr_037_6395:
    ld b, d
    rst $38
    add e
    cp $07
    rst $38
    rst $38
    ld h, a
    cp a
    db $e4
    rst $38
    ret z

    ei
    dec bc
    rst $30
    ld a, a
    inc d
    jp nz, $e240

    ld b, b
    ldh a, [$80]
    ld d, b
    call nz, $c0db
    rst $28
    jr nz, jr_037_6395

    cp $00
    jp nc, $02c0

    rst $38
    rst $18
    inc b
    rst $38
    jr jr_037_637d

    ld hl, $e0fa
    ld a, [hl]
    di
    rst $38
    sbc [hl]
    rst $20
    ccf
    call nz, $d57f
    ld a, a
    rst $20
    rst $38
    rst $38
    rst $38
    cp b
    rst $38
    ld h, h
    rst $38
    ld [$fffe], sp
    inc c
    rst $30
    rra
    db $e4
    rst $38
    adc [hl]
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ld c, b
    ldh [$80], a
    call nz, $80bf
    ld a, a
    ret nz

    ld e, a
    rst $20
    ret nz

    ld b, c
    ret nz

    add $e4
    cp $e1
    ld [bc], a
    ei
    ld [bc], a
    rst $38
    add e
    ld bc, $f2ff
    rst $08
    ld a, [hl]
    push hl
    ccf
    rst $38
    db $f4
    ld e, a
    ld a, [c]
    ccf
    jp hl


    ccf
    ldh a, [$3f]
    rst $38
    ldh [$3f], a
    cp $0f
    ld a, [$fa0f]
    sbc a
    db $fd
    push af
    cp c
    ldh [rOBP0], a
    rst $38
    xor c
    rst $38
    or d
    cp $ef
    ld a, a
    call nz, $e43f
    cp $e1
    ld a, a
    db $e4
    rst $38
    rst $18
    call z, $c4ff
    db $fd
    add h
    adc d
    ldh [$0e], a
    ld a, e
    rst $38
    rrca
    ld a, b
    rra
    ld l, $3f
    ld b, e
    ld a, a
    ld b, a
    rst $38
    ld a, a
    ld c, a
    ld a, c
    rst $38
    inc e
    di
    ld a, $e9
    cp $97
    ldh [rIE], a
    rst $00
    cp $82
    rst $38
    add c
    rst $38
    rst $30
    dec b
    rst $38
    db $10
    add a
    ldh [$e1], a
    ld a, a
    ld b, c
    ld a, a
    rst $38
    ld d, l
    ld a, a
    ld d, l
    ccf
    ld l, $51
    db $10
    rst $38
    rst $38
    ld b, b
    rst $38
    ld d, [hl]
    rst $38
    ld d, d
    rst $38
    dec hl
    db $fd
    rst $38
    dec e
    pop hl

jr_037_6468:
    ld bc, $01c7
    rst $08
    ld bc, $ffdf
    ldh a, [$df]
    ldh a, [$9f]
    di
    adc a
    ld hl, sp+$07
    sbc $0f
    ret nz

    rst $38
    rst $38
    db $fd
    rst $18
    ld [$43c0], sp
    db $fd
    ld a, a
    rst $38
    add [hl]
    cp $fc
    db $fc
    db $fd
    adc h
    ld l, h
    pop hl
    rst $28
    ld b, e
    ret nz

    rst $00
    add b
    ldh [$c9], a
    jp $e702


    rst $38
    ld b, $ff
    add hl, bc
    rst $38
    ld c, $e7
    inc b
    db $e3
    db $ed
    inc bc
    ld d, b
    and c
    ldh a, [$1f]
    cp $e2
    ld e, a
    ldh [$bf], a
    db $fd
    ld b, b
    dec h
    and b
    ld hl, sp-$41
    and d
    cp $e2
    cp $7d
    ld [bc], a
    cp $e0
    inc a
    db $fc
    ld a, a
    jp nz, Jump_037_7eff

    pop hl
    ld a, a
    adc d
    rst $38
    and d
    ld a, a
    ld e, h
    ccf
    jr c, jr_037_6468

jr_037_64c8:
    push bc
    rst $38
    ld e, a
    ld [hl], d
    ld a, a
    ld [hl], b
    ld c, a
    ld a, b
    ld b, a
    ld a, h
    rst $30
    add e
    rst $38
    add b
    push af
    add b
    db $fc
    rst $18
    rst $38
    dec de
    rst $18
    xor $3e
    jp nz, $827e

    adc l
    and b
    rrca
    db $fc

jr_037_64e6:
    rst $28
    rst $38
    ldh a, [$7f]
    ldh [rP1], a
    and l
    rst $00
    ret nz

    rst $20
    rra
    jr nz, jr_037_64e6

    db $10
    di

jr_037_64f5:
    db $10
    sub b
    ld [$e050], a
    sub b
    db $eb
    dec hl
    db $fc
    rst $18
    sub b
    ld [$0e81], a
    ldh [rSB], a
    jr nz, @-$53

    and h
    and b
    rst $30
    add c
    rst $38
    add a
    ret nc

jr_037_650e:
    and b
    ld hl, $11ff
    rst $38
    or a
    ld de, $20bf
    ld l, h
    ldh [$f9], a
    add a
    rra
    and b
    nop
    ld hl, sp+$77
    add c
    ld [hl], e
    add b
    jr nz, jr_037_64c8

    ld a, [hl]
    ret nz

    db $fc
    ret nz

    ld a, h
    rst $18
    ret nz

    ld hl, sp-$80
    add d
    nop
    call nc, $80e0
    rst $38
    ld a, l
    add e
    jp c, $40c0

    rst $38
    jr nz, @+$01

    jr nz, jr_037_650e

    ldh [rIE], a
    add c
    rst $38
    sbc [hl]
    pop hl
    cp a
    ret nz

    rst $38
    ret nz

    dec de
    rst $38
    cp a
    db $fc
    ldh [rIE], a
    ld a, a
    jr nz, jr_037_64f5

    ret nc

    rst $20
    scf
    pop hl
    rst $20
    adc h
    rst $38
    ld b, e
    adc $e3
    and b
    ldh [$90], a
    rst $38
    ld hl, $fe9f
    ld h, e
    db $fc
    rst $08
    ldh a, [rNR22]
    add b
    ret nc

    ldh [$bf], a
    cp $ba
    ldh [$e0], a
    ld a, $e0
    ld e, $f0
    inc e
    ldh a, [$3f]
    db $fc
    ldh a, [rNR23]
    ldh a, [$e2]
    ldh [rNR14], a
    and b
    and b
    ld [$10f8], a
    adc b
    add b
    and b
    ld [c], a
    ld h, b
    ld b, b
    rst $38
    add e
    db $fc
    rst $00
    rst $38
    cp b
    rst $38
    or b
    rst $38
    rst $18
    ld a, a
    ldh [$3f], a
    rst $38
    rst $38
    rst $38
    jp $c740


    ret nz

    cpl
    ldh [$7f], a
    rra
    ldh a, [rNR22]
    ldh a, [$f7]
    ldh a, [rNR13]
    xor e
    pop hl
    rst $38
    jr nz, @+$01

    ld b, a
    ld hl, sp+$4f
    or b
    rst $38
    and b
    sub $e0
    ldh [$c0], a
    ld a, a
    ldh [$e3], a
    ld c, a
    sbc $e0
    daa
    ldh [$ef], a
    rst $20
    ldh [rNR44], a
    ldh [$a2], a
    ld h, b
    ld b, c
    rst $38
    ld c, a
    ld hl, sp+$72
    ret nz

    db $e4
    pop hl
    ldh [$e3], a
    add b
    rst $00
    add b
    adc a
    add b
    ld a, a
    ld c, a
    ret nz

    ld b, a
    ret nz

    rst $00
    ret nz

    ld h, e
    ccf
    ldh [$ea], a
    add b
    ld h, b
    add b
    cp $e1
    cp a
    cp $e0
    sbc a
    add b
    pop bc
    db $e4
    db $f4
    ld [c], a
    ldh a, [$e9]
    nop
    rst $38
    db $ec
    ret nz

    db $e3
    adc a
    add b
    add a
    adc $fe
    ldh [$e3], a
    add b
    di
    call nz, $f0e2
    ld h, a
    add d
    add b
    cpl
    jp nz, $e280

    add b
    ldh a, [$80]
    add b
    or b
    add b
    sub [hl]
    ldh [$0d], a
    rst $08
    ldh a, [$ec]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    di
    nop
    dec e
    nop
    and $00
    push af
    cp d
    cp $e0
    and $f6
    ldh [rIE], a
    rst $38
    rst $38
    nop
    cp $fe
    jp hl


    di
    nop
    rrca
    nop
    ld a, c
    nop
    ld h, c
    rst $38
    nop
    ld b, c
    nop
    inc bc
    nop
    rlca
    nop
    rra
    cp $e4
    and $f1
    ld bc, $03ce
    cp h
    rrca
    ld [hl], e
    db $fd
    rra
    jp nc, $efe5

    ldh [rNR31], a
    ld hl, sp+$07
    cp $f9
    add hl, de
    or d
    ldh [$d0], a
    pop hl
    ld h, e
    inc bc
    ld b, a
    inc b
    rlca
    or $fe
    ldh [$1f], a
    inc b
    or d
    db $e4
    add b
    ldh a, [$80]
    rst $08
    rst $18
    add c
    cp d
    add e
    db $ec
    adc a
    and d
    push hl
    rrca
    nop
    rst $38
    di
    ldh [rNR33], a
    ld hl, sp+$07
    rst $38
    rst $08
    nop
    rst $38
    ldh a, [rP1]
    sbc [hl]
    nop
    add [hl]
    nop
    add d
    nop
    cp a
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp-$80
    add d
    push hl
    ldh a, [$3f]
    nop
    rst $08
    nop
    cp b
    nop
    ld h, a
    ld [hl], h
    ld [$e166], a
    rst $38
    ld d, a
    inc e
    ld l, a
    jr c, jr_037_6727

    inc sp
    cp a
    jr nc, @+$01

    rst $38
    daa
    ei
    ccf
    ei
    ld a, a
    ei
    sbc a
    rst $38
    db $fd
    rst $20
    cp $03
    rst $38
    add hl, de
    rst $38
    ld bc, $ff7f
    inc e
    rst $28
    cp a
    rst $28
    rst $38
    rst $28
    ld b, d
    pop hl
    db $fd
    add b
    cp $e6
    ret nz

    rst $38
    jr nz, @+$01

    inc b
    rst $38
    rst $18
    inc c
    rst $38
    inc d
    rst $38
    rla
    db $fc
    ldh [rNR10], a
    rst $38
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    db $d3
    sbc a
    rst $10
    sbc h
    rst $28
    ld a, a
    cp b
    cp a
    inc sp
    rst $38
    or b
    rst $38

Jump_037_66eb:
    ld h, a
    ret nz

    ldh [$7f], a
    rst $38
    dec de
    cp $ff
    rst $20
    rst $38
    ld [bc], a
    cp [hl]
    rst $20
    rst $38
    rst $38
    ld [hl], b
    rst $38
    jr z, @+$01

    jr @+$01

    ld [$ffab], sp
    adc b
    cp $e2
    call nz, $c2f2
    ld bc, $e0de
    inc b
    rst $38
    rst $38
    dec b
    rst $38
    rlca
    db $fc
    rlca
    ld e, l
    nop
    rst $38
    db $fd
    ldh a, [rIE]
    ld [$74fc], sp
    rst $38
    inc hl
    cp a
    rst $38
    pop hl
    rra
    pop af
    rra
    jp hl


    ret z

jr_037_6727:
    jp $ff7d


    ld [hl], b
    ei
    ret z

    rst $38
    inc h
    db $fd
    inc b
    db $fd
    xor h
    db $10
    push hl
    jp z, Jump_000_03e3

    cp $d0
    ldh [$5d], a

jr_037_673c:
    ld a, [hl-]
    ldh [$f8], a
    push de
    ld [hl], b
    or b
    ldh [rNR22], a
    adc $e0
    ld hl, sp-$68
    call nz, $ff08
    ld a, a
    db $f4
    rst $38
    ld a, [bc]
    rst $38
    add d
    rst $38
    ld b, d
    ld hl, sp-$40
    cp $80
    res 6, a
    rst $38
    sub b
    rst $38
    or b
    rst $18
    ld a, b
    db $eb
    rst $38
    add hl, sp
    ld a, h
    ldh [rDIV], a
    ld b, d
    ldh [$bd], a
    rst $38
    and c
    rst $38
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38
    inc sp
    rst $18
    ld a, [c]
    rst $38
    sbc a
    db $f4
    rst $38
    ld h, h
    ldh a, [$a0]
    rst $28
    jr nz, jr_037_673c

    ld hl, sp-$60
    ld h, a

jr_037_6780:
    ret nz

    db $dd
    add b
    xor b
    pop hl
    cp b
    rst $38
    nop
    rrca
    ld [$04f7], sp
    rra
    ld [bc], a
    rst $20
    ei
    ld [bc], a
    cp e
    cp $e0
    rst $20
    ld [bc], a
    dec e
    ld bc, $95fb
    sbc a
    cp [hl]
    and $38
    jr c, jr_037_6780

    inc c
    xor $c0
    cp [hl]
    db $e3
    dec bc
    rst $28
    rst $38
    inc sp
    rst $38
    jp $e03e


    ld b, h
    rst $38
    jp nz, $febf

    ld b, d
    rst $38
    jp nz, $c27f

    add d
    ldh [$84], a
    rst $38
    db $fc
    add h
    add hl, de
    rra
    db $e3
    ld a, $43
    ld a, [hl]
    rst $38
    rst $00
    ld a, h
    rst $00
    ld a, l
    rst $28
    ld a, c
    rst $38
    jr nc, @+$01

    rra
    db $10
    rst $38
    call nc, Call_000_2efb
    rst $38
    rlca
    ei
    rst $38
    pop bc
    adc [hl]
    ldh [$0e], a
    rst $38
    ld a, $df
    ld a, h
    rst $38
    db $fd
    add h
    rst $38
    jp nz, $e2ff

    rst $38
    ld h, c
    ld [$c0b6], a
    db $10
    cp [hl]
    ret nz

    ld [$c568], sp
    db $dd
    ret nz

    db $fd
    rst $38
    jr nc, @+$01

    jr @-$1a

    inc a
    ld [$f30f], sp
    rst $38
    ccf
    ld b, a
    ld a, h
    add a
    db $fc
    adc a
    ld hl, sp-$71
    rst $38
    ld sp, hl
    rst $18
    pop af
    ld a, a
    ld h, b
    cpl
    sub $f3
    rst $10
    xor a
    di
    ld e, [hl]
    call nz, $83e0
    cp d
    ldh [rNR32], a
    rst $38
    rst $30
    ld a, h
    rst $38

jr_037_681d:
    ld b, d
    jp nz, Jump_000_31e0

    rst $38
    ret c

jr_037_6823:
    rst $38
    ld a, a
    sbc b
    rst $20
    inc a
    rst $38
    inc a
    rst $38
    ld e, $28
    jp $e7ff


    add b
    db $dd
    ld b, b
    db $fd
    jr nz, jr_037_681d

    jr nz, jr_037_6823

    ld hl, sp+$10
    add h
    ret nz

    ld [bc], a
    xor b
    ret nz

    rra

jr_037_6840:
    db $ed
    ccf
    cp a

jr_037_6843:
    push de
    ld a, a
    jp nc, $e27f

    rst $38
    add [hl]
    ret nz

    inc c
    rst $38
    di
    ld a, $e5
    rst $38
    adc c
    rst $38
    ld d, b
    rst $38
    ld sp, hl
    ld h, b
    rst $18
    ret nz

    ldh [$a6], a
    add b
    ld b, b
    ret nz

    jr nz, jr_037_6840

    rst $38
    jr c, jr_037_6843

    rst $38
    adc h
    rst $30
    ld e, [hl]
    db $e3
    ld a, [hl]
    rst $38
    jp $e47f


    ccf
    push de
    rra
    cp l
    rrca
    rst $38
    ld l, d
    rrca
    rst $38
    rlca
    cp $0f
    cp $0f
    rst $10
    ld a, [c]
    ccf
    db $e4
    ld c, a
    ret nz

jr_037_6881:
    ld d, c
    adc $e0
    ld a, a
    ret z

    rst $38
    jr c, jr_037_6881

    ld c, $f8
    ld e, $f8
    ld [hl-], a
    ldh a, [rIE]
    ld h, b
    ldh [$e0], a
    ret nz

    ld a, b
    ret nz

    rst $38
    ld c, $ff
    rrca
    dec b
    ld a, e
    inc bc
    ld h, l
    rlca
    ld b, l
    rlca
    ei
    inc bc
    inc bc
    ld b, b
    and c
    rst $18
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fd
    ld hl, sp+$20
    ldh [$e9], a
    rst $38
    reti


    rst $38
    ld a, [c]
    ld l, a
    db $dd
    ld a, [hl]
    ldh [$a0], a
    ld b, $fd
    rlca
    cp $e1
    rst $38
    rrca
    rst $38
    ld sp, hl
    rrca
    ld hl, sp-$61
    rst $20
    inc a
    call nz, $ff7c
    add [hl]
    db $fc
    ld c, [hl]
    ld hl, sp+$0a
    ld hl, sp+$10
    ldh a, [rIE]
    db $10
    ldh a, [rNR23]
    ldh a, [rIE]
    jr nz, jr_037_68f9

    inc e
    rst $38
    ld a, a
    dec bc
    ld h, a
    rlca
    ld c, e
    rrca
    dec bc
    rrca
    rst $38
    rlca
    rlca
    rra
    ld bc, $f8bf
    cp a
    ld hl, sp-$06
    ret nz

    ldh [$f0], a
    sbc d
    and b

jr_037_68f3:
    jp nc, $b2ff

    rst $38
    db $e4
    ld [hl], a

jr_037_68f9:
    rst $30
    rra
    ei
    ret z

    ldh [$f9], a
    rrca
    ld a, [$e0fe]
    ld a, a
    cp $1f
    ld a, [c]
    rra
    rst $38
    jr c, jr_037_68f3

    add b
    ldh [$27], a
    ld c, $f8
    adc d
    ret nz

    ldh [$50], a
    ld [c], a
    ld bc, $e2fe
    cp d
    and e
    cp $f4
    ldh [$e2], a
    ccf
    db $e3
    ccf
    ret nz

    ld a, a
    ret nz

    cp $65
    and b
    ret nz

    ld a, a
    rst $38
    ld a, a
    rst $38
    ld b, b
    add d
    db $ec
    ei
    and b
    db $dd
    db $e3
    inc bc
    cp $66
    ldh [rDIV], a
    ld a, a
    ret nc

    db $f4
    nop
    ret nz

    add d
    and c
    ld [$a050], sp
    jr nz, @+$01

    ld h, b
    ld e, d
    rst $38
    rrca
    ld d, d
    rra
    ld [hl], e
    rra
    and b
    ccf
    ldh [$9e], a
    cp $e0
    and b
    ccf
    cp a
    ccf
    inc hl
    and c
    ld e, a
    add a
    rst $38
    di
    rst $38
    ld a, a
    or e
    ldh [$fc], a
    rst $20
    rst $38
    ret nz

    ld h, e
    ccf
    rst $38
    ld e, a

jr_037_6968:
    rra
    ld h, [hl]
    inc bc
    cp d
    inc bc
    call z, Call_037_7f07
    db $f4
    rlca
    sbc a
    rrca
    adc a
    ld [$b8f0], sp
    ret nz

    db $fc
    or [hl]
    pop bc
    ld a, e
    add d
    rst $38
    db $fc
    ld a, a
    rra
    ldh a, [rIF]
    pop af
    ld hl, sp-$02
    pop hl
    dec [hl]
    and b
    cp $e2
    rst $38
    cp $65
    ccf
    rst $38

jr_037_6991:
    ld a, h
    rra
    cp [hl]
    rlca
    adc $03
    db $f4
    rlca
    rst $38
    sbc h
    rlca
    add a
    rlca
    ldh a, [$3f]
    ldh [rIE], a
    ld a, c
    and b
    rst $00
    add b
    ei
    ld h, e
    ld hl, sp-$01
    rra
    ldh a, [$ce]
    db $eb
    ld a, $ac
    add b
    ld b, b
    rst $38
    ld b, [hl]
    rst $38
    ld hl, $80a6
    cp $e3
    call $c204
    add b
    ld bc, $cbff
    pop hl
    cp $e1
    ld d, b
    ldh a, [$9f]
    and b
    rst $08
    ld b, b
    cp b
    add b
    jr nz, @-$3e

    ld e, $c0
    rst $20
    rst $28

jr_037_69d2:
    ld b, b
    ld hl, sp+$20
    cp a
    ret c

    pop hl
    db $10
    rst $38
    ld [de], a
    ld d, d
    adc $e0
    ld b, b
    add $e0
    jr nz, jr_037_6968

    db $10
    adc $e0
    ld h, b
    jp z, $dfe1

    ldh a, [rLCDC]
    rst $08
    ld b, b
    ld hl, sp-$2a
    ldh [$dd], a
    add b
    cp a
    db $fd
    ldh [rIE], a
    ret c

    db $fc
    inc b
    ldh a, [$8c]
    ld bc, $8fff
    ld [$08cf], sp
    rst $28
    ld [$11ff], sp
    ld c, d
    cp $e0
    jr nz, jr_037_6991

    ldh [$81], a
    or $80
    ld h, b
    ld h, c
    jr nz, jr_037_69d2

    pop bc
    cp $16
    add c
    call nz, $f7fc
    inc a
    ld hl, sp+$18
    rst $30
    rst $38
    db $10
    db $fd
    jr nz, @-$21

    ret nz

    rst $20
    add b
    ld hl, sp-$03
    ld h, b
    or b
    adc e
    rra
    rrca
    add a
    inc b
    rst $00
    inc b
    ld d, e
    rst $20
    inc b
    or d
    call nz, $e129
    rlca
    jr nz, jr_037_6a9d

    sub b
    ld c, [hl]
    ldh [$fe], a
    ld [hl], b
    pop hl
    ret nz

    db $fc
    db $fc
    rst $38
    ld [$08f8], sp
    rst $38
    rst $38
    ld [$10fd], sp
    db $fd
    ld h, b
    rst $20
    ret nz

    ei
    ld hl, sp+$20
    db $10
    ld h, b
    ld bc, $037a
    ld h, h
    rlca
    rst $20
    ld b, h
    rlca
    rlca
    ccf
    ld h, b
    ld a, [c]
    ld b, b
    ld b, b
    rst $38
    ld hl, sp-$69
    daa
    cp $11
    sub h
    jp nz, $e304

    ld b, b
    ld l, c
    and b
    rst $10

jr_037_6a72:
    rst $38
    ld hl, sp+$6f
    ldh a, [rIE]
    ld [hl], b
    rst $18
    rst $38
    rst $18
    cp $fc
    ldh [rIE], a
    rst $28
    jr nz, jr_037_6a72

    sub b
    ld a, [hl]
    add sp, -$61
    ld e, $f8
    ld a, [de]
    ld hl, sp-$10
    ret nc

    and b
    or d
    ld b, b
    ld bc, $0fff
    rlca
    ld a, b
    rrca
    ld [hl], b
    rra
    ld d, b
    rra
    rst $28
    rra
    rra
    db $10

jr_037_6a9d:
    rra
    or d
    ld b, d
    pop hl
    sbc a
    ld sp, hl
    ld d, a
    ld b, a
    cp $01
    and a
    ld b, b
    ld de, $e1c0
    sub b
    ld a, b
    ld h, c
    xor a
    cp $8b
    cp $87
    ld [c], a
    ld h, b
    inc bc
    sub d
    ld b, b
    ld c, $ff
    ld a, [$fa1e]
    cp $02
    cp $0e
    cp $ef
    ld a, [c]
    cp $0c
    db $fc
    ld [hl], d
    ld b, b
    inc bc
    rrca
    ld c, $ff
    ld [hl], c
    rra
    ld h, b
    ccf
    ld h, b
    ccf
    ccf
    ccf
    di
    jr nc, jr_037_6b18

    ld [hl], d
    ld b, b
    ret nz

    and c
    add d
    ld a, a
    cp $43
    rst $20
    cp $ff
    cp $de
    and b
    ld [hl], b
    pop hl
    ld c, a
    ld hl, sp+$2f
    or $5a
    ret nz

    ccf

jr_037_6af0:
    rst $38
    db $fc
    pop hl
    rst $38
    rst $38

jr_037_6af5:
    db $10
    ld hl, sp-$01
    adc b
    ld a, [hl]
    ld hl, sp+$2e
    db $fc
    ld d, $fc
    db $fc
    cp e
    db $fc
    inc b
    ret nz

    ldh [$f1], a
    rra
    jr nz, @-$3a

    ldh [$78], a
    cp a
    ccf
    ld h, a
    ccf
    jr jr_037_6b30

    rlca
    ld b, b
    pop hl
    nop
    xor a
    rst $38
    add c

jr_037_6b18:
    ld a, a
    pop bc
    ret nz

    add sp, -$40
    ret nz

    ldh a, [$e4]
    ld b, c
    ld a, $c0
    and $00
    ld b, b
    ret nz

    ld b, a
    or $e8
    ld b, b
    ld b, b
    add b
    jr z, jr_037_6af0

    pop de

jr_037_6b30:
    nop
    rst $38
    db $ec
    jr jr_037_6af5

    ld [de], a
    ret nz

    cp b
    ld [c], a
    ldh [$f0], a
    add b
    rst $08
    sbc [hl]
    add b
    add [hl]
    add b
    cp b
    dec h
    ret z

    dec h
    add d
    add b
    rrca
    ret nz

    add b
    ldh [$80], a
    jr z, @+$42

    ld l, d
    ld b, h
    cp b
    dec l
    nop
    ld c, e
    inc bc
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $ff, $ff, $ff, $3f, $00, $cf, $00, $f7, $00, $df, $33, $00, $11, $00, $19, $fe
    db $e0, $ff, $ff, $fb, $ff, $00, $fe, $e9, $3d, $00, $fb, $00, $07, $bb, $00, $b7
    db $fe, $e0, $ef, $00, $1f, $e6, $ea, $fc, $f3, $00, $f3, $ec, $e0, $d2, $e4, $0c
    db $ff, $0f, $fd, $5f, $05, $f3, $02, $ef, $02, $c2, $e8, $c0, $a8, $e1, $fe, $b2
    db $ea, $03, $fe, $07, $cc, $00, $88, $00, $fd, $98, $fe, $e0, $bc, $00, $df, $00
    db $e0, $e0, $c3, $1d, $f8, $88, $e5, $98, $e5, $82, $eb, $74, $ea, $01, $ff, $fb
    db $03, $fc, $c0, $e8, $ff, $f0, $0c, $fc, $03, $ff, $ff, $33, $00, $19, $08, $1d
    db $0c, $1b, $df, $0a, $3d, $18, $fb, $10, $58, $e1, $ce, $06, $ef, $8e, $0e, $9c
    db $0c, $e0, $e7, $f8, $0f, $33, $ff, $3f, $d7, $6c, $a7, $dc, $af, $d8, $8f, $ff
    db $f9, $df, $f1, $7f, $60, $07, $fe, $83, $ff, $ff, $e3, $7e, $fb, $1e, $ff, $87
    db $ff, $df, $06, $ff, $1c, $ff, $7c, $28, $e0, $c0, $ff, $ff, $20, $ff, $d0, $ff
    db $90, $ef, $38, $ff, $e7, $38, $ff, $18, $28, $e5, $58, $e5, $f9, $1f, $2b, $ff
    db $36, $d3, $6e, $d7, $6c, $47, $7c, $6f, $ff, $78, $3f, $30, $1f, $10, $c1, $ff
    db $f1, $ff, $3f, $fd, $0f, $ff, $43, $ff, $83, $ff, $ff, $82, $ff, $36, $ff, $3e
    db $f7, $e0, $ff, $7f, $10, $ff, $68, $ff, $c8, $f7, $1c, $b2, $e0, $ff, $0c, $fb
    db $0e, $3f, $20, $ff, $1c, $0f, $ff, $0b, $b7, $07, $bb, $1f, $ff, $17, $1f, $ff
    db $17, $ff, $0f, $bf, $f8, $bf, $f8, $ff, $ff, $f8, $ff, $f0, $ff, $81, $ff, $d1
    db $ff, $ff, $b2, $ff, $e4, $f7, $1c, $fb, $0f, $fb, $7b, $0f, $fa, $fe, $e2, $fd
    db $1f, $f0, $1f, $38, $e0, $ff, $e0, $18, $f8, $0d, $f8, $1d, $f4, $3f, $f7, $e2
    db $3f, $e1, $a3, $e0, $0e, $ff, $05, $07, $ff, $02, $b7, $03, $b6, $07, $ee, $0b
    db $1f, $fd, $0b, $a8, $c0, $1e, $ef, $7c, $ef, $fc, $ff, $ff, $fc, $ff, $e8, $ff
    db $d9, $ff, $f2, $ff, $f7, $ff, $fd, $07, $fe, $e2, $87, $fd, $87, $fe, $ff, $0f
    db $f8, $0f, $f8, $1f, $fc, $e0, $1f, $ab, $f8, $08, $c2, $e3, $e2, $65, $e0, $f1
    db $d0, $e8, $db, $0f, $ff, $f1, $ff, $fc, $d0, $e4, $ca, $e0, $d0, $e3, $e0, $ea
    db $75, $f0, $e0, $ec, $8f, $e0, $e0, $08, $ff, $0b, $fc, $e0, $f7, $04, $ff, $03
    db $f8, $a3, $df, $de, $e5, $ff, $ff, $e4, $7f, $f4, $1f, $fc, $0f, $fe, $c7, $ff
    db $fa, $3b, $ef, $03, $f0, $3f, $e0, $ff, $e7, $a0, $ff, $c1, $73, $c0, $fe, $e1
    db $f0, $ff, $3f, $d7, $e1, $7f, $c1, $f6, $c0, $14, $b4, $c0, $2c, $ff, $df, $24
    db $ff, $84, $ff, $09, $fe, $e0, $04, $ff, $f9, $02, $52, $c0, $b8, $a2, $ce, $4f
    db $d2, $df, $fa, $ff, $ff, $fe, $2f, $fe, $07, $fe, $87, $fa, $ad, $7b, $c0, $e0
    db $ff, $50, $fe, $e0, $61, $c0, $e9, $c2, $7a, $c0, $ea, $08, $c0, $eb, $cf, $4f
    db $d2, $5f, $c0, $e9, $fb, $ff, $00, $50, $a9, $1f, $0f, $ee, $03, $f7, $f5, $05
    db $52, $e0, $09, $7a, $c0, $20, $ff, $c0, $ff, $df, $00, $7f, $ff, $ff, $9b, $3e
    db $a0, $10, $ff, $f7, $e0, $ff, $40, $fe, $e0, $c0, $ff, $fc, $fc, $ff, $e8, $fb
    db $08, $ff, $08, $fc, $10, $e8, $df, $60, $d8, $c0, $f8, $20, $d0, $e4, $08, $ff
    db $dd, $11, $0a, $c0, $40, $ff, $80, $d0, $ea, $c0, $ff, $ff, $c0, $31, $1f, $e0
    db $3f, $30, $3f, $ac, $7f, $3f, $b3, $1f, $ec, $0f, $1f, $03, $f2, $82, $ff, $81
    db $7f, $e1, $7f, $ff, $43, $fe, $ff, $f7, $fe, $03, $fe, $e2, $80, $c0, $ff, $4f
    db $f8, $ed, $2f, $fa, $c0, $3f, $ff, $fc, $e1, $ff, $fc, $10, $7f, $ff, $88, $7c
    db $e4, $3d, $fc, $15, $5c, $c0, $ff, $04, $fc, $ff, $ff, $3d, $01, $ff, $0e, $5f
    db $11, $1f, $a0, $3f, $a0, $e0, $e0, $20, $e0, $e0, $2e, $d7, $c2, $02, $ff, $fe
    db $c0, $e6, $40, $c0, $eb, $90, $80, $fd, $80, $fe, $f3, $fc, $80, $f3, $80, $ef
    db $80, $7d, $00, $ff, $ec, $cc, $80, $88, $80, $98, $fe, $e0, $ff, $bc, $80, $df
    db $80, $e0, $80, $ed, $80, $df, $33, $01, $13, $01, $1b, $fe, $e0, $3f, $01, $ff
    db $fb, $01, $07, $01, $b7, $01, $ed, $80, $c7, $f7, $80, $f8, $ae, $e8, $48, $8d
    db $88, $82, $00, $ed, $0e, $fe, $e0, $f7, $00, $f8, $12, $80, $00, $00

    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    scf
    di
    nop
    ld b, $fa
    ldh [$64], a
    nop
    ldh a, [$e3]
    db $fc
    add sp, -$02
    ldh [$e2], a
    ld hl, sp+$00
    push hl
    nop
    call z, $ac00
    rst $38
    nop

jr_037_6e61:
    cp b
    nop
    ld [hl], h
    nop

jr_037_6e65:
    db $f4
    nop
    db $e4
    di
    nop
    nop
    adc $e0
    ret c

    db $ec
    nop
    rst $38
    ld bc, $f7fe
    inc bc
    db $fc
    rrca
    jp nz, $e0e8

    rra
    ld hl, sp+$06
    rst $38
    cp $83
    nop
    add a
    nop
    rst $00
    nop
    db $e3
    ret c

    cp [hl]
    ldh [$d0], a
    xor $88
    ldh [$f9], a
    ld bc, $eb92
    db $e4
    ldh [$f8], a
    add d
    db $eb
    jp z, $8aed

    rst $28
    di
    rra
    rst $10
    inc e
    xor a
    rst $38
    jr c, jr_037_6e61

    inc sp
    cp a
    jr nc, jr_037_6e65

    daa
    ld sp, hl
    rst $38
    ccf
    ei
    ld a, a
    add hl, de
    rst $38
    db $fd
    rst $20
    cp $ff
    inc bc
    rst $38
    add hl, de
    rst $38
    ld bc, $1cff
    rst $20
    db $eb
    cp a
    rst $28
    ld [hl-], a
    db $e3
    add b
    cp $e6
    ret nz

    and $03
    rst $38
    call z, $b30f
    rra
    or a
    inc e
    xor a
    add hl, sp
    ld a, a
    cp a
    inc sp
    rst $38
    jr nc, @+$01

    daa
    dec de
    ld e, h
    ldh [$c2], a
    call z, $13e2
    call z, Call_000_02e3
    and $cc
    db $e4
    ld [$ade1], sp
    ld bc, $badf
    inc bc
    adc h
    rrca
    sub e
    sub [hl]
    ldh [$ef], a
    add hl, sp
    adc [hl]
    ret c

    pop bc
    db $e4
    ldh [rNR32], a
    jp z, $d2e7

    set 2, b

jr_037_6efb:
    ldh [$cd], a
    xor a
    ld bc, $03ae
    cp h
    jp nc, $97e0

    jp nc, $ffe0

    cpl
    ld [hl], $f3
    nop
    and $d2
    jp hl


    dec c
    jp nc, Jump_037_66eb

    ldh [$fc], a
    jr z, jr_037_6efb

    add b
    add $9f
    rst $38
    or a
    rst $38
    sub b
    rst $38
    ld e, a
    or b
    rst $18
    ld a, b
    rst $38
    jr c, @-$2c

    ldh [rDIV], a
    ld h, b
    ret nz

    rst $38
    cp l
    rst $38
    and c
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38
    rst $30
    db $e3
    rst $38
    ld d, $f0

jr_037_6f38:
    ldh [rNR41], a
    rst $38
    and b
    rst $38
    ld a, a
    jr nz, jr_037_6f38

    and b
    ld h, l
    ret nz

    call z, Call_037_7080
    pop bc
    dec d
    ei

jr_037_6f49:
    inc c
    ldh [$fb], a
    call z, $efe8
    inc c
    ldh [$0a], a
    ldh [$cc], a
    rst $20
    db $fc
    inc c
    ldh [$d0], a
    pop hl
    push hl
    jr nz, jr_037_6f49

    and b
    ld l, h
    ret nz

    rst $28
    cp b
    add b
    rst $38
    ld [hl], $0a
    ldh [rNR42], a
    rst $38
    scf
    sbc $ca
    pop hl
    ei
    cp a
    rst $38
    sub a
    ld l, [hl]
    ldh [rSB], a
    rst $38
    rst $20
    db $10
    rst $38
    dec e
    ret z

    and $d4
    jp nz, $80f8

    push hl
    ld e, e
    ret nz

    db $ec
    adc $e0
    ld hl, sp+$20
    jp nc, $b0ec

    jp nc, $95ec

    ld b, c
    ret nc

    db $e4
    ret nz

    and b
    pop hl
    db $ec
    ld l, b
    ldh [$4e], a
    ldh [rDIV], a
    rst $38
    rst $38
    ld c, $f5
    rra
    push af
    rra
    ld [c], a
    ccf
    ld sp, hl
    pop hl
    cp $e0
    ld a, $e0
    ld b, $fd
    rrca
    db $f4
    rra
    rst $38
    db $f4
    rst $38
    cp h
    rst $38
    xor b
    rst $38
    add sp, -$01
    ld c, h
    ldh a, [$a4]
    sbc [hl]
    ldh [$7f], a
    ret nz

    cp $e1
    xor $c0
    dec b
    cp $e0
    rst $38
    inc c
    di
    ld e, $f3
    rra
    ldh [$3f], a
    ld [c], a
    rst $38
    ccf
    rst $38
    or $9f
    db $f4
    rst $38
    or $fd
    rst $38
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    ldh [rIE], a
    db $e4
    add $d0
    push hl
    nop
    ld hl, sp+$3c
    ret nz

    ret nc

    ld [c], a
    and $c5
    dec c
    rst $30
    rst $18
    dec e
    rst $30
    dec e
    rst $20
    dec a
    and $c4
    or $fd
    ei
    rst $30
    db $fc
    cp $e0
    call c, $e3f7
    and b
    ld b, a
    rlca
    ret nz

    rst $00
    add b
    sub b
    and d
    adc $e2
    jp nc, $d0eb

    ldh [$d2], a
    ld [$1c3f], a
    rst $30
    ld b, e
    ret nz

    add a
    add b
    and b
    jp hl


    ld c, [hl]
    ldh [$f7], a
    ccf
    cp a
    ld sp, $e3fe
    rst $38
    ld sp, $20ff
    cp a
    ld [$0fff], sp
    rst $38
    rrca
    ld hl, sp-$02
    push hl
    sbc a
    add hl, hl
    ldh a, [$4e]
    ldh [$fe], a
    jp hl


    ld b, b
    inc e
    pop hl
    cp a
    adc $e4
    ret nc

    ldh [$37], a
    ld sp, $ff08
    adc $e9
    sbc a
    ld hl, sp+$1c
    ld [c], a
    call z, Call_037_7ee8
    ld a, h
    pop hl
    and a
    dec a
    cp a
    inc a
    cp a
    scf
    add b
    and b
    ld a, [$e09e]
    inc e
    ld a, h
    ldh [$fc], a
    rst $30
    rst $38
    rlca
    rst $38
    inc bc
    inc e
    rst $28
    ret nc

    and $9c
    jp hl


    ld c, h
    pop hl
    jp nc, $a0e2

    db $e4
    jp nc, $fee9

    and b
    pop hl
    rst $38
    ld d, d
    rst $38
    ld l, e
    rst $38
    add hl, hl
    rst $38
    db $dd
    ld a, $e8
    and b
    ld b, b
    rst $38
    add c
    cp $e0
    db $f4

Call_037_7080:
    rst $38
    ld [hl], a
    sbc l
    rst $38
    add hl, bc
    or b
    ldh [rP1], a
    rst $38
    ldh a, [$75]
    ldh [$dd], a
    ld [$a0d2], sp
    ld h, b
    rst $38
    ld b, b
    ld h, b
    ret nz

    ld b, b

jr_037_7096:
    db $ec
    rra
    jr nz, jr_037_7096

    db $10
    ld hl, sp+$10
    ret nz

    and b
    adc $e5
    ret nc

    db $e3
    and a
    ldh a, [rIE]
    sub h
    adc $e4
    ret nc

    db $e3
    ld b, b
    adc $e1
    ld hl, sp-$57
    ld b, b
    nop
    pop bc
    ret nc

    ld [c], a
    ld de, $e6ce
    ld e, [hl]
    and b
    ld [c], a
    ld hl, sp-$2c
    ld h, d
    and b
    adc $e3
    rst $30
    and b
    ld [c], a
    add b
    adc $e1
    ld hl, sp+$60
    ld a, [c]
    and b
    ldh [$a0], a
    and b
    pop hl
    ldh [$61], a
    push hl
    ld bc, $0302
    xor a
    ld b, $03
    rst $38
    inc bc
    ld a, b
    add b
    rst $38
    add h
    add b
    cp $97
    rlca
    rst $38
    ld [bc], a
    cp $e0
    rst $38
    ld l, l

jr_037_70e8:
    add b
    sub d
    ld h, b
    sub b
    ld a, a
    rst $38
    ld h, a
    cp $6f
    db $f4
    rst $38
    ld h, h
    add a
    ld h, b
    db $fd
    ld l, b
    add e
    ld h, b
    di
    db $10
    rst $30
    ldh a, [rIF]
    ld hl, sp-$01
    rlca
    db $fc
    inc b
    db $fc
    rst $38
    db $fc
    rlca
    db $fc
    ret nc

    rst $18
    pop hl
    ld d, d
    adc b
    or $ee
    ld a, [$01a0]
    cp $e9
    dec b
    ld bc, $75ec
    ld h, b
    db $fd
    ld [$80e5], a
    add sp, -$80
    add b
    cp b
    add b
    dec sp
    add e
    add b
    jr z, jr_037_70e8

    add b
    db $e3
    add b
    jr z, jr_037_7192

    ld c, b
    ld h, l
    call c, $6538
    ld l, b
    ld h, l
    di
    ld bc, $ba07
    ldh [$65], a
    ld bc, $757f
    ld bc, $01f5
    push hl
    ld bc, $7001
    ld h, h
    inc d
    db $10
    ld h, a
    ld b, b
    ld l, h
    rst $38
    nop
    ld l, h
    rst $38
    nop
    nop
    nop
    and c
    ld [hl], c
    jr jr_037_71c7

    sbc d
    ld [hl], d
    ld de, $0073
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub h
    ld [hl], e
    rst $38
    ld [hl], e
    ld l, c
    ld [hl], h
    call nc, Call_000_0074
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ld [hl], l
    xor [hl]
    ld [hl], l
    dec de
    db $76
    adc d
    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $f9, $76, $68, $77

    rst $10
    ld [hl], a
    ld c, b
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or a

jr_037_7192:
    ld a, b
    dec d
    ld a, c
    ld [hl], e
    ld a, c
    rst $08
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    dec c
    rst $38
    and $2d
    ld hl, sp-$1b
    dec l
    or $e5
    db $ed
    rst $20
    jp c, $99e7

    ld c, l
    rst $30
    add sp, -$28
    rst $20
    ld c, l
    ld c, l
    add sp, -$1e
    ld sp, hl
    ldh [$66], a
    rst $38
    ld h, a
    nop
    nop
    nop
    ld bc, $0101
    ld l, b
    rst $38
    ld l, c

jr_037_71c7:
    ld l, h
    dec sp
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    rst $38
    dec b
    ccf
    ld l, d
    ld l, h
    dec b
    dec hl
    ld [bc], a
    ld c, $ff
    rrca
    db $10
    ld l, a
    ld [bc], a
    ld l, d
    ld [hl], h
    dec b
    dec sp
    rst $38
    ld [bc], a
    dec e
    ld e, $1f
    ccf
    ld [bc], a
    ld [hl], l
    ld l, d
    rst $38
    ld l, e
    dec b
    dec hl
    inc l
    dec l
    ld l, $02
    ld l, e
    rst $38
    ld l, h
    ld l, l
    ld [bc], a
    ld l, e
    dec sp
    inc a
    dec a
    ld a, $ff
    ld l, e
    dec b
    ld l, [hl]
    ld l, h
    ld [hl], b
    ld [hl], c
    ld c, c
    ld c, d
    rst $38
    ld c, e
    ld c, h
    ld [hl], d
    ld [hl], e
    ld l, d
    ld h, [hl]
    ld bc, $7f01
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    nop
    nop
    ld l, c
    nop
    nop
    nop
    rrca
    dec l
    dec l
    dec l
    dec c

jr_037_721d:
    rst $38
    ldh [$f9], a
    ld [c], a
    or $e4
    db $fc
    db $e3
    jr jr_037_721d

    ld [c], a
    db $e3
    db $e3
    ld [c], a
    pop hl
    dec l
    ld l, l
    ret c

    push hl
    push af
    ldh [$ce], a
    push hl
    and $d8
    and $6d
    ld l, l
    db $ec
    ld [c], a
    ld sp, hl
    ldh [rBCPD], a
    ld l, b
    ld bc, $01ff
    ld bc, $0000
    nop
    ld h, a
    ld h, [hl]
    ld l, d
    rst $38
    ccf
    dec b
    dec b
    ld b, $07
    ld [bc], a
    ld [bc], a
    dec sp
    rst $38
    ld l, h
    ld l, d
    ld [bc], a
    ld l, a
    ld de, $1312
    inc d
    rst $38
    dec hl
    dec b
    ld l, h
    ld [hl], l
    ld [bc], a
    ccf
    jr nz, jr_037_7285

    rst $38
    ld [hl+], a
    inc hl
    dec sp
    dec b
    ld [hl], h
    ld l, h
    ld l, e
    ld [bc], a
    rst $38
    cpl
    jr nc, jr_037_72a2

    ld [hl-], a
    dec b
    ld l, e
    ld l, d
    ld l, [hl]
    rst $38
    dec b
    ld l, e
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld l, e
    ld [bc], a
    rst $38
    ld l, l
    ld l, d
    ld [hl], e
    ld [hl], d
    ld c, l

jr_037_7285:
    ld c, [hl]
    ld c, a
    ld d, b
    rst $38
    ld [hl], c
    ld [hl], b
    ld l, h
    ld l, c
    nop
    nop
    ld e, l
    ld e, [hl]
    rra
    ld e, a
    ld h, b
    ld bc, $6601
    nop
    nop
    nop
    dec d
    dec c
    rst $38
    and $2d
    ld hl, sp-$1b
    dec l

jr_037_72a2:
    or $e5
    db $ed
    rst $20
    jp c, $99e7

    ld c, l
    rst $30
    add sp, -$28
    rst $20
    ld c, l
    ld c, l
    add sp, -$1e
    ld sp, hl
    ldh [$66], a
    rst $38
    ld h, a
    nop
    nop
    nop
    ld bc, $0101
    ld l, b
    rst $38
    ld l, c
    ld l, h
    dec sp
    ld [bc], a
    ld [$0a09], sp
    dec b
    rst $38
    dec b
    ccf
    ld l, d
    ld l, h
    dec b
    dec hl
    dec d
    ld d, $ff
    rla
    jr jr_037_7343

    ld [bc], a
    ld l, d
    ld [hl], h
    dec b
    dec sp
    rst $38
    inc h
    dec h
    ld h, $27
    ccf
    ld [bc], a
    ld [hl], l
    ld l, d
    rst $38
    ld l, e
    dec b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $02
    ld l, e
    rst $38
    ld l, h
    ld l, l
    ld [bc], a
    ld l, e
    dec sp
    ld b, e
    ld b, h
    ld b, l
    rst $38
    ld l, e
    dec b
    ld l, [hl]
    ld l, h
    ld [hl], b
    ld [hl], c
    ld d, c
    ld d, d
    rst $38
    ld d, e
    ld d, h
    ld [hl], d
    ld [hl], e
    ld l, d
    ld h, [hl]
    ld bc, $7f01
    ld e, c
    ld e, d
    ld h, c
    ld h, d
    nop
    nop
    ld l, c
    nop
    nop
    nop
    rrca
    dec l
    dec l
    dec l
    dec c
    rst $38
    ldh [$f9], a
    ld [c], a
    or $e4
    db $fc
    db $e3
    inc [hl]
    or $e2
    db $e3
    db $e3
    ld c, l
    db $db
    ldh [$2d], a
    ld l, l
    ret c

    push hl
    push af
    ldh [$cc], a
    adc $e5
    ret c

    and $6d
    ld l, l
    db $ec
    ld [c], a
    ld sp, hl
    ldh [rBCPD], a
    ld l, b
    rst $38
    ld bc, $0101
    nop
    nop
    nop
    ld h, a
    ld h, [hl]
    rst $38

jr_037_7343:
    ld l, d
    ccf
    dec b
    dec bc
    inc c
    dec c
    ld [bc], a
    ld [bc], a
    rst $38
    dec sp
    ld l, h
    ld l, d
    ld [bc], a
    ld l, a
    add hl, de
    ld a, [de]
    dec de
    rst $38
    inc e
    dec hl
    dec b
    ld l, h
    ld [hl], l
    ld [bc], a
    ccf
    jr z, @+$01

    add hl, hl
    ld a, [hl+]
    inc e
    dec sp
    dec b
    ld [hl], h
    ld l, h
    ld l, e
    rst $38
    ld [bc], a
    scf
    jr c, jr_037_73a4

    ld a, [hl-]
    dec b
    ld l, e
    ld l, d
    rst $38
    ld l, [hl]
    dec b
    ld l, e
    ccf
    ld b, [hl]
    ld b, a
    ld c, b
    ld l, e
    rst $38
    ld [bc], a
    ld l, l
    ld l, d
    ld [hl], e
    ld [hl], d
    ld d, l
    ld d, [hl]
    ld d, a
    rst $38
    ld e, b
    ld [hl], c
    ld [hl], b
    ld l, h
    ld l, c
    nop
    nop
    ld e, l
    ccf
    ld h, e
    ld h, h
    ld h, l
    ld bc, $6601
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    nop
    and $e0

jr_037_73a4:
    push hl
    db $e3
    db $dd
    push hl
    db $ed
    ld [c], a
    db $db
    pop hl
    ld [c], a
    and $f6
    db $ec
    cp d
    pop hl
    ei
    ld c, b
    nop
    rst $38
    db $e4
    ld c, b
    ld c, e
    ld bc, $0101
    ei
    ld [bc], a
    inc bc
    ei
    ldh [rWX], a
    ld c, h
    ld [$0808], sp
    ld a, a
    add hl, bc
    ld a, [bc]
    dec bc
    ld [$4c08], sp
    ld c, l
    db $ec
    ldh [rIE], a
    inc de
    inc d
    dec d
    ld bc, $4d01
    ld c, c
    ld [$08ff], sp
    dec e
    ld e, $1f
    jr nz, jr_037_73e8

    ld [$de49], sp
    ret c

    ldh [$28], a
    add hl, hl
    ld a, [hl+]

jr_037_73e8:
    dec hl
    ret c

    db $e3
    ld [hl], $37
    ei
    jr c, jr_037_7429

    ret c

    ldh [$4e], a
    ld b, c
    ld b, c
    ld b, c
    ld b, d
    dec b
    ld b, e
    ei
    ldh [$4e], a
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    nop
    and $e0
    push hl
    db $e3
    db $dd
    push hl
    db $ed
    ld [c], a
    db $db
    pop hl
    ld [c], a
    and $f6
    db $ec
    cp d
    pop hl
    ei
    ld c, b
    nop
    rst $38
    db $e4
    ld c, b
    ld c, e
    ld bc, $0101
    ei
    inc b

jr_037_7429:
    dec b
    ei
    ldh [rWX], a
    ld c, h
    ld [$0808], sp
    ld a, a
    inc c
    dec c
    ld c, $08
    ld [$4d4c], sp
    db $ec
    ldh [rIE], a
    ld d, $17
    jr @+$03

    ld bc, $494d
    ld [$08ff], sp
    ld hl, $2322
    inc h
    ld [$4908], sp
    sbc $d8
    ldh [$2c], a
    dec l
    ld l, $2f
    ret c

    db $e4
    ld a, [hl-]
    dec sp
    db $fd
    inc a
    ret c

    ldh [$4e], a
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    ld b, l
    ld [bc], a
    ei
    ldh [$4e], a
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    nop
    and $e0
    push hl
    pop hl
    rst $30
    ld [c], a
    db $db
    db $e4
    db $d3
    db $e3
    ld [c], a
    rst $20
    or $ec
    cp d
    pop hl
    ei
    ld c, b
    nop
    rst $38
    db $e4
    ld c, b
    ld c, e
    ld bc, $0101
    ei
    ld b, $07
    ei
    ldh [rWX], a
    ld c, h
    ld [$0f08], sp
    rst $38
    db $10
    ld de, $0812
    ld [$4d4c], sp
    ld bc, $01ff
    add hl, de
    ld a, [de]
    dec de
    inc e
    ld bc, $4d01
    rst $38
    ld c, c
    ld [$0808], sp
    dec h
    ld h, $27
    ld [$08bb], sp
    ld c, c
    ret c

    pop hl
    jr nc, @+$33

    ld [hl-], a
    ret c

    db $e3
    ld [$3df7], sp
    ld a, $3f
    ret c

    ldh [$4e], a
    ld b, c
    ld b, c
    ld b, c
    dec bc
    ld b, [hl]
    ld b, a
    ei
    ldh [$4e], a
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e1
    ld a, [c]
    ld [c], a
    or $e4
    nop
    and $e0
    push hl
    db $e3
    db $dd
    push hl
    db $ed
    ld [c], a
    db $db
    pop hl
    ld [c], a
    and $f6
    db $ec
    cp d
    pop hl
    ei
    ld c, b
    nop
    rst $38
    db $e4
    ld c, b
    ld c, e
    ld bc, $0101
    ei
    inc b
    dec b
    ei
    ldh [rWX], a
    ld c, h
    ld [$0808], sp
    ld a, a
    inc c
    dec c
    ld c, $08
    ld [$4d4c], sp
    db $ec
    ldh [rIE], a
    ld d, $17
    jr @+$03

    ld bc, $494d
    ld [$08ff], sp
    ld hl, $2322
    inc h
    ld [$4908], sp
    sbc $d8
    ldh [$33], a
    inc [hl]
    dec [hl]
    cpl
    ret c

    db $e3
    ld [hl], $40
    ei
    dec sp
    inc a
    ret c

    ldh [$4e], a
    ld b, c
    ld b, c
    ld b, c
    ld b, h
    dec b
    ld b, l
    ei
    ldh [$4e], a
    nop
    nop
    nop
    rst $28
    dec c
    dec c
    dec l
    dec c
    db $fc

jr_037_7545:
    ld [c], a
    dec l
    dec c
    dec l
    nop
    or $e6
    rst $38
    db $e4
    rst $28
    pop hl
    di
    db $e3
    push hl
    ldh [$e2], a
    ld [c], a
    push de
    db $e3
    ld [c], a
    rst $28
    ei
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    ld h, c
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld h, c
    ld h, d
    add hl, bc
    ld [bc], a
    ld [bc], a
    rst $38
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld h, d
    ld h, h
    ld h, l
    rst $38
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld a, [bc]
    ld h, l
    ld h, h
    rst $38
    ld h, [hl]
    ld h, a
    jr jr_037_759d

    add hl, de
    ld a, [de]
    dec de
    jr jr_037_7545

    ld h, a
    ld h, [hl]
    ld [c], a
    pop hl
    jr z, jr_037_75b9

    ld a, [hl+]
    ld [c], a
    db $e3
    ld [hl], $77
    scf
    jr c, @+$3b

    ld [c], a
    db $e4
    ld b, e
    ld b, h
    ld b, l

jr_037_759d:
    ld [c], a
    ldh [rIE], a
    ld h, c
    ld bc, $5168
    ld d, d
    ld d, e
    ld d, h
    ld l, b
    inc bc
    ld bc, $0061
    nop
    nop
    rst $28
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    dec l
    dec c
    dec l
    ret nz

jr_037_75b9:
    or $e1
    di
    db $e3
    rst $30
    db $e4
    jp hl


    ld [c], a
    or $e4
    ld [c], a
    ld a, [$4d4d]
    cp $c6
    db $e3
    ld c, l
    ld l, l
    ld h, c
    ld bc, $0000
    ld bc, $fcfe
    pop hl
    ld h, c
    ld h, d
    add hl, bc
    ld [bc], a
    dec b
    ld b, $07
    rst $38
    ld [$0902], sp
    ld h, d
    ld h, h
    ld h, l
    ld a, [bc]
    ld c, $ff
    rrca
    db $10
    ld de, $650a
    ld h, h
    ld h, [hl]
    ld h, a
    rst $38
    jr @+$1e

    dec e
    ld e, $1f
    jr jr_037_765c

    ld h, [hl]
    sbc $e2
    ldh [rSC], a
    dec hl
    inc l
    dec l
    ld [c], a
    db $e3
    ld a, [bc]
    ld a, [hl-]
    ld a, e
    dec sp
    inc a
    ld [c], a
    db $e3
    jr jr_037_764e

    ld b, a
    ld c, b
    ld [c], a
    ldh [rIE], a
    ld h, c
    ld bc, $5568
    ld d, [hl]
    ld d, a
    ld e, b
    ld l, b
    inc bc
    ld bc, $0061
    nop
    nop
    rst $28
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    dec l
    dec c
    dec l
    nop
    ld a, [$f6e1]
    ld [c], a
    rst $38
    db $e4
    di
    rst $20
    push hl
    ldh [$e2], a
    pop hl
    db $eb
    ld [c], a
    ld [c], a
    pop af
    ei
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    ld h, c
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld h, c
    ld h, d
    add hl, bc
    ld [bc], a
    ld [bc], a
    db $fd
    add hl, bc
    db $fc
    pop hl

jr_037_764e:
    ld h, d
    ld h, h
    ld h, l
    ld a, [bc]
    ld [de], a
    inc de
    rst $38
    inc d
    ld a, [bc]
    ld a, [bc]
    ld h, l
    ld h, h
    ld h, [hl]
    ld h, a

jr_037_765c:
    jr jr_037_76dd

    jr nz, jr_037_7681

    ld [hl+], a
    inc hl
    jr jr_037_76cb

    ld h, [hl]
    ld [c], a
    ldh [$ef], a
    ld l, $2f
    jr nc, jr_037_769d

    ld [c], a
    db $e3
    ld a, [bc]
    dec a
    ld a, $bd
    ccf
    ld [c], a
    db $e3
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [c], a
    ldh [$61], a
    rst $38
    ld bc, $5968
    ld e, d

jr_037_7681:
    ld e, e
    ld e, h
    ld l, b
    ld bc, $6101
    nop
    nop
    nop
    rst $28
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    dec l
    dec c
    dec l
    nop
    ld a, [$f6e1]
    ld [c], a
    rst $38
    db $e4
    di
    rst $20

jr_037_769d:
    push hl
    ldh [$e2], a
    pop hl
    db $eb
    ld [c], a
    ld [c], a
    pop af
    ei
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    ld h, c
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld h, c
    ld h, d
    add hl, bc
    ld [bc], a
    ld [bc], a
    db $fd
    add hl, bc
    db $fc
    pop hl
    ld h, d
    ld h, h
    ld h, l
    ld a, [bc]
    dec d
    ld d, $ff
    rla
    ld a, [bc]
    ld a, [bc]
    ld h, l
    ld h, h
    ld h, [hl]
    ld h, a

jr_037_76cb:
    jr @+$81

    inc h
    dec h
    ld h, $27
    jr @+$69

    ld h, [hl]
    ld [c], a
    ldh [$ef], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [c], a
    db $e3

jr_037_76dd:
    ld a, [bc]
    ld b, b
    ld b, c
    cp l
    ld b, d
    ld [c], a
    db $e3
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld [c], a
    ldh [$61], a
    rst $38
    ld bc, $5d68
    ld e, [hl]
    ld e, a
    ld h, b
    ld l, b
    ld bc, $6101
    nop
    nop
    nop

    db $ef, $0d, $0d, $2d, $0d, $fc, $e2, $2d, $0d, $2d, $00, $fa, $e1, $f6, $e2, $ff
    db $e4, $f7, $e7, $e5, $e0, $e2, $e1, $eb, $eb, $e2, $e8, $fb, $4d, $4d, $cf, $e3
    db $4d, $6d, $38, $01, $00, $fb, $00, $01, $fc, $e1, $38, $39, $03, $02, $02, $fd
    db $03, $fc, $e1, $39, $3b, $08, $09, $06, $07, $ff, $08, $09, $09, $08, $3c, $3d
    db $3e, $11, $7f, $0e, $0f, $10, $11, $11, $3e, $3d, $e2, $e0, $ef, $15, $16, $17
    db $18, $e2, $e3, $21, $22, $23, $bd, $24, $e2, $e3, $2b, $2c, $2d, $2e, $e2, $e0
    db $38, $ff, $01, $3f, $31, $32, $33, $34, $3f, $01, $01, $38, $00, $00

    nop

    db $ef, $0d, $0d, $2d, $0d, $fc, $e2, $2d, $0d, $2d, $00, $fa, $e1, $f6, $e2, $ff
    db $e4, $f7, $e7, $e5, $e0, $e2, $e1, $eb, $eb, $e2, $e8, $fb, $4d, $4d, $cf, $e3
    db $4d, $6d, $38, $01, $00, $fb, $00, $01, $fc, $e1, $38, $39, $03, $02, $02, $fd
    db $03, $fc, $e1, $39, $3b, $08, $09, $0a, $0b, $ff, $08, $09, $09, $08, $3c, $3d
    db $3e, $11, $7f, $12, $13, $14, $11, $11, $3e, $3d, $e2, $e0, $ef, $19, $1a, $1b
    db $1c, $e2, $e3, $25, $26, $27, $bd, $28, $e2, $e3, $2b, $2c, $2d, $2e, $e2, $e0
    db $38, $ff, $01, $3f, $31, $32, $33, $34, $3f, $01, $01, $38, $00, $00

    nop
    rst $28
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    dec l
    dec c
    dec l
    nop
    ld a, [$f6e1]
    ld [c], a
    rst $38
    db $e4
    rst $30
    rst $20
    push hl
    ldh [$e2], a
    pop hl
    db $eb
    db $eb
    db $dd
    push hl
    or $e2
    ldh [rKEY1], a
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    jr c, jr_037_77fe

    rst $30

jr_037_77fe:
    nop
    nop
    ld bc, $e1fc
    jr c, jr_037_783e

    inc bc
    ld [bc], a
    ei
    ld [bc], a
    inc bc
    db $fc
    pop hl
    add hl, sp
    dec sp
    ld [$0a09], sp
    rst $38
    dec bc
    inc c

jr_037_7814:
    add hl, bc
    add hl, bc
    ld [$3d3c], sp
    ld a, $ff
    ld de, $1312
    inc d
    ld de, $3e11
    dec a
    sbc $e2
    ldh [rNR24], a
    dec e
    ld e, $1c
    ld [c], a
    db $e3
    add hl, hl
    ld a, [hl+]
    ld a, e
    daa
    jr z, jr_037_7814

    db $e3
    ld de, $302f
    ld l, $e2
    ldh [rIE], a
    jr c, jr_037_783d

    ccf

jr_037_783d:
    dec [hl]

jr_037_783e:
    ld [hl], $37
    inc [hl]
    ccf
    inc bc
    ld bc, $0038
    nop
    nop
    rst $28
    dec c
    dec c
    dec l
    dec c
    db $fc
    ld [c], a
    dec l
    dec c
    dec l
    add b
    or $e6
    rst $38
    db $e4
    rst $30
    rst $20
    push hl
    ldh [$e2], a
    ld [c], a
    db $eb
    ld [$e8e2], a
    ld c, l
    db $fd
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    jr c, jr_037_786b

    nop

jr_037_786b:
    nop
    db $fd
    ld bc, $e1fc
    jr c, @+$3b

    inc bc
    ld [bc], a
    ld [bc], a
    inc b
    rst $38
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    add hl, sp
    dec sp
    ld [$ff09], sp
    ld a, [bc]
    dec c
    ld [$0909], sp
    ld [$3d3c], sp
    rst $38
    ld a, $11
    ld [de], a
    inc de
    inc d
    ld de, $3e11
    cp l
    dec a
    ld [c], a
    ldh [rNR24], a
    rra
    jr nz, jr_037_78b5

    ld [c], a
    db $e3
    add hl, hl
    rst $30
    ld a, [hl+]
    daa
    jr z, @-$1c

    db $e3
    dec hl
    inc l
    dec l
    ld l, $fe
    ld [c], a
    ldh [$38], a
    ld bc, $313f
    ld [hl-], a
    inc sp
    inc [hl]
    rlca
    ccf
    ld bc, $0038

jr_037_78b5:
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld c, c
    ld bc, $0002
    ld bc, $fcfe
    pop hl
    ld c, c
    ld c, d
    ld a, [bc]
    ld b, $03
    inc b
    dec b
    rst $38
    ld b, $03
    add hl, bc
    ld c, e
    ld c, l
    ld c, [hl]
    dec bc
    dec bc
    rst $38
    inc c
    dec c
    ld c, $0b
    ld c, a
    ld d, b
    ld c, d
    ld a, [bc]
    rst $38
    ld d, c
    jr jr_037_7908

    ld a, [de]
    dec de
    jr jr_037_78fc

    ld c, e
    xor $e2
    pop hl
    dec h
    ld h, $27
    ld [c], a
    db $e4

jr_037_78fc:
    ld sp, $3332
    xor $e2
    db $e4
    inc a
    dec a
    ld a, $e2
    ldh [rOBP1], a

jr_037_7908:
    ld bc, $7f52
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, e
    ld bc, $0049
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld c, c
    ld bc, $0002
    ld bc, $fcfe
    pop hl
    ld c, c
    ld c, d
    ld a, [bc]
    ld b, $03
    rlca
    ld [$06ff], sp
    inc bc
    add hl, bc
    ld c, e
    ld c, l
    ld c, [hl]
    dec bc
    dec bc
    rst $38
    rrca
    db $10
    ld de, $4f0b
    ld d, b
    ld c, d
    ld a, [bc]
    rst $38
    ld d, c
    jr jr_037_7969

    dec e
    ld e, $18
    add hl, bc
    ld c, e
    xor $e2
    pop hl
    jr z, jr_037_7980

    ld a, [hl+]
    ld [c], a
    db $e4
    inc [hl]
    dec [hl]
    ld [hl], $ee
    ld [c], a
    db $e4
    ccf
    ld b, b
    ld b, c
    ld [c], a
    ldh [rOBP1], a
    ld bc, $7f52

jr_037_7969:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, e
    ld bc, $0049
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15

jr_037_7980:
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld c, c
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    ld c, c
    ld c, d
    ld a, [bc]
    ld b, $03
    add hl, bc
    db $fc
    pop hl
    rst $38
    ld c, e
    ld c, l
    ld c, [hl]
    dec bc
    dec bc
    ld [de], a
    inc de
    inc d
    rst $38
    dec bc
    ld c, a
    ld d, b
    ld c, d
    ld a, [bc]
    ld d, c
    jr jr_037_79c7

    rst $18
    jr nz, @+$23

    jr jr_037_79b6

    ld c, e
    ld [c], a
    pop hl
    dec hl
    inc l
    db $dd
    dec l
    ld [c], a
    db $e4

jr_037_79b6:
    scf
    jr c, jr_037_79f2

    ld [c], a
    db $e4
    ld b, d
    ld b, e
    db $fd
    ld b, h
    ld [c], a
    ldh [rOBP1], a
    ld bc, $4552
    ld b, [hl]
    ld b, a

jr_037_79c7:
    rrca
    ld c, b
    ld d, e
    ld bc, $0049
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld c, c
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    ld c, c
    ld c, d
    ld a, [bc]
    ld b, $03
    add hl, bc
    db $fc
    pop hl

jr_037_79f2:
    rst $38

jr_037_79f3:
    ld c, e
    ld c, l
    ld c, [hl]
    dec bc
    dec bc
    dec d
    ld d, $17
    rst $38
    dec bc
    ld c, a
    ld d, b
    ld c, d
    ld a, [bc]
    ld d, c
    jr jr_037_7a26

    rst $18
    inc hl
    inc h
    jr jr_037_7a12

    ld c, e
    ld [c], a
    pop hl
    ld l, $2f
    db $dd
    jr nc, jr_037_79f3

    db $e4

jr_037_7a12:
    ld a, [hl-]
    dec sp
    ld [hl], $e2
    db $e4
    ccf
    ld b, b
    db $fd
    ld b, c
    ld [c], a
    ldh [rOBP1], a
    ld bc, $4552
    ld b, [hl]
    ld b, a
    rrca
    ld c, b
    ld d, e

jr_037_7a26:
    ld bc, $0049
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

Call_037_7ee8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_037_7efc:
    rst $38
    rst $38
    rst $38

Call_037_7eff:
Jump_037_7eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_037_7f07:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_037_7fe1:
Jump_037_7fe1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_037_7feb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_037_7ffb:
    rst $38
    rst $38
    rst $38
    rst $38

Call_037_7fff:
    rst $38
