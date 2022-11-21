INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $01e", ROMX[$4000], BANK[$1e]

    db $4d, $6b

    ld d, l
    ld l, e
    nop
    nop
    dec [hl]
    nop
    ld h, c
    nop
    ld h, a
    nop
    ld l, l
    nop
    ld [hl], e
    nop
    ld a, c
    nop
    ld a, a
    nop
    add l
    nop
    xor c
    nop
    cp e
    nop
    adc $00
    pop hl
    nop
    add hl, de
    ld bc, $013a
    sbc d
    ld bc, $01f2
    inc de
    ld [bc], a
    inc sp
    ld [bc], a
    ld d, l
    ld [bc], a
    db $76
    ld [bc], a
    xor e
    ld [bc], a
    db $ed
    ld [bc], a
    ld d, $03
    ld l, h
    inc bc
    adc d
    inc bc
    xor c
    inc bc
    jp c, $f803

    inc bc
    ld a, [$fc03]
    inc bc
    dec c
    inc b
    rrca
    inc b
    ld de, $1304
    inc b
    dec d
    inc b
    rla
    inc b
    add hl, de
    inc b
    dec de
    inc b
    dec e
    inc b
    ld a, [hl+]
    inc b
    ld a, $04
    ld b, b
    inc b
    ld d, l
    inc b
    ld l, b
    inc b
    ld l, d
    inc b
    ld l, h
    inc b
    ld l, [hl]
    inc b
    ld [hl], b
    inc b
    ld [hl], d
    inc b
    ld [hl], h
    inc b
    add [hl]
    inc b
    adc b
    inc b
    sbc b
    inc b
    xor d
    inc b
    cp c
    inc b
    call z, $dd04
    inc b
    rst $18
    inc b
    pop hl
    inc b
    db $e3
    inc b
    push hl
    inc b
    rst $20
    inc b
    jp hl


    inc b
    ld sp, hl
    inc b
    ei
    inc b
    rrca
    dec b
    ld de, $1305
    dec b
    dec d
    dec b
    daa
    dec b
    add hl, hl
    dec b
    ld a, [hl-]
    dec b
    ld c, h
    dec b
    ld e, c
    dec b
    ld l, b
    dec b
    ld a, b
    dec b
    adc b
    dec b
    sbc b
    dec b
    xor d
    dec b
    xor h
    dec b
    xor [hl]
    dec b
    or b
    dec b
    call nz, $c605
    dec b
    reti


    dec b
    db $db
    dec b
    db $dd
    dec b
    rst $18
    dec b
    pop hl
    dec b
    db $e3
    dec b
    push hl
    dec b
    db $fc
    dec b
    cp $05
    ld de, $2306
    ld b, $36
    ld b, $38
    ld b, $3a
    ld b, $3c
    ld b, $3e
    ld b, $4c
    ld b, $4e
    ld b, $61
    ld b, $72
    ld b, $84
    ld b, $86
    ld b, $88
    ld b, $8a
    ld b, $99
    ld b, $9b
    ld b, $ab
    ld b, $c0
    ld b, $d1
    ld b, $e2
    ld b, $f5
    ld b, $0a
    rlca
    inc c
    rlca
    ld c, $07
    db $10
    rlca
    ld [de], a
    rlca
    inc d
    rlca
    ld d, $07
    jr z, jr_01e_4103

    scf
    rlca
    add hl, sp
    rlca
    ld c, e
    rlca
    ld c, l

jr_01e_4103:
    rlca
    ld c, a
    rlca
    ld d, c
    rlca
    ld d, e
    rlca
    ld h, c
    rlca
    ld [hl], e
    rlca
    ld [hl], l
    rlca
    add [hl]
    rlca
    adc b
    rlca
    adc d
    rlca
    adc h
    rlca
    adc [hl]
    rlca
    sbc [hl]
    rlca
    and b
    rlca
    xor [hl]
    rlca
    or b
    rlca
    or d
    rlca
    or h
    rlca
    or [hl]
    rlca
    jp nz, $c407

    rlca
    pop de
    rlca
    db $e4
    rlca
    push af
    rlca
    ld [bc], a
    ld [$0812], sp
    inc h
    ld [$0826], sp
    jr z, jr_01e_4144

    ld a, [hl+]
    ld [$082c], sp
    ld b, b
    ld [$0842], sp

jr_01e_4144:
    ld d, h
    ld [$0863], sp
    ld h, l
    ld [$0867], sp
    ld l, c
    ld [$086b], sp
    ld [hl], a
    ld [$0879], sp
    adc l
    ld [$088f], sp
    sub c
    ld [$0893], sp
    sub l
    ld [$08a1], sp
    and e
    ld [$08b3], sp
    ret z

    ld [$08da], sp
    db $eb
    ld [$08ed], sp
    rst $28
    ld [$08f1], sp
    di
    ld [$0906], sp
    ld [$1b09], sp
    add hl, bc
    dec e
    add hl, bc
    rra
    add hl, bc
    ld hl, $2309
    add hl, bc
    inc sp
    add hl, bc
    dec [hl]
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld d, [hl]
    add hl, bc
    ld e, b
    add hl, bc
    ld e, d
    add hl, bc
    ld e, h
    add hl, bc
    ld e, [hl]
    add hl, bc
    ld [hl], b
    add hl, bc
    ld [hl], d
    add hl, bc
    add c
    add hl, bc
    adc a
    add hl, bc
    sub c
    add hl, bc
    sub e
    add hl, bc
    sub l
    add hl, bc
    sub a
    add hl, bc
    and h
    add hl, bc
    and [hl]
    add hl, bc
    cp b
    add hl, bc
    ret z

    add hl, bc
    jp z, $cc09

    add hl, bc
    adc $09
    ret nc

    add hl, bc
    db $dd
    add hl, bc
    rst $18
    add hl, bc
    pop af
    add hl, bc
    rst $38
    add hl, bc
    ld [de], a
    ld a, [bc]
    inc d
    ld a, [bc]
    ld d, $0a
    jr jr_01e_41ca

    ld a, [de]
    ld a, [bc]
    inc l
    ld a, [bc]
    ld l, $0a
    ld a, $0a
    ld d, d
    ld a, [bc]

jr_01e_41ca:
    ld h, c
    ld a, [bc]
    db $76
    ld a, [bc]
    add [hl]
    ld a, [bc]
    sub [hl]
    ld a, [bc]
    xor b
    ld a, [bc]
    or a
    ld a, [bc]
    push bc
    ld a, [bc]
    reti


    ld a, [bc]
    add sp, $0a
    ld sp, hl
    ld a, [bc]
    dec c
    dec bc
    rrca
    dec bc
    ld de, $130b
    dec bc
    dec d
    dec bc
    rla
    dec bc
    add hl, de
    dec bc
    dec de
    dec bc
    dec e
    dec bc
    rra
    dec bc
    ld hl, $2c0b
    dec bc
    ld l, $0b
    ld b, c
    dec bc
    ld b, e
    dec bc
    ld e, b
    dec bc
    ld e, d
    dec bc
    ld l, [hl]
    dec bc
    ld [hl], b
    dec bc
    ld [hl], d
    dec bc
    ld [hl], h
    dec bc
    add h
    dec bc
    add [hl]
    dec bc
    sub e
    dec bc
    sub l
    dec bc
    sub a
    dec bc
    sbc c
    dec bc
    sbc e
    dec bc
    sbc l
    dec bc
    sbc a
    dec bc
    and c
    dec bc
    xor [hl]
    dec bc
    jp nz, $c40b

    dec bc
    reti


    dec bc
    db $eb
    dec bc
    db $ed
    dec bc
    rst $28
    dec bc
    pop af
    dec bc
    di
    dec bc
    push af
    dec bc
    rst $30
    dec bc
    add hl, bc
    inc c
    dec bc
    inc c
    dec de
    inc c
    dec l
    inc c
    inc a
    inc c
    ld c, a
    inc c
    ld e, a
    inc c
    ld h, c
    inc c
    ld h, e
    inc c
    ld h, l
    inc c
    ld h, a
    inc c
    ld l, c
    inc c
    ld l, e
    inc c
    ld a, e
    inc c
    ld a, l
    inc c
    sub b
    inc c
    sub d
    inc c
    sub h
    inc c
    sub [hl]
    inc c
    xor b
    inc c
    xor d
    inc c
    cp e
    inc c
    call $da0c
    inc c
    jp hl


    inc c
    ld sp, hl
    inc c
    add hl, bc
    dec c
    add hl, de
    dec c
    ld a, [hl+]
    dec c
    inc l
    dec c
    ld l, $0d
    jr nc, jr_01e_427f

    ld b, l
    dec c
    ld b, a
    dec c
    ld e, c
    dec c
    ld e, e
    dec c
    ld e, l
    dec c
    ld e, a
    dec c
    ld h, c

jr_01e_427f:
    dec c
    ld h, e
    dec c
    ld h, l
    dec c
    ld a, c
    dec c
    ld a, e
    dec c
    adc [hl]
    dec c
    and b
    dec c
    or e
    dec c
    or l
    dec c
    or a
    dec c
    cp c
    dec c
    cp e
    dec c
    ret


    dec c
    rrc l
    sbc $0d
    rst $28
    dec c
    nop
    ld c, $02
    ld c, $04
    ld c, $06
    ld c, $15
    ld c, $17
    ld c, $27
    ld c, $3c
    ld c, $4d
    ld c, $5e
    ld c, $71
    ld c, $86
    ld c, $88
    ld c, $8a
    ld c, $8c
    ld c, $8e
    ld c, $90
    ld c, $92
    ld c, $a3
    ld c, $af
    ld c, $b1
    ld c, $c2
    ld c, $c4
    ld c, $c6
    ld c, $c8
    ld c, $ca
    ld c, $db
    ld c, $ea
    ld c, $ec
    ld c, $fc
    ld c, $fe
    ld c, $00
    rrca
    ld [bc], a
    rrca
    inc b
    rrca
    inc de
    rrca
    dec d
    rrca
    inc hl
    rrca
    dec h
    rrca
    daa
    rrca
    add hl, hl
    rrca
    dec hl
    rrca
    ld [hl], $0f
    jr c, jr_01e_4303

    ld b, l
    rrca
    ld e, b
    rrca
    ld l, c
    rrca
    db $76
    rrca
    add [hl]
    rrca
    sub a
    rrca
    sbc c
    rrca
    sbc e

jr_01e_4303:
    rrca
    sbc l
    rrca
    sbc a
    rrca
    or d
    rrca
    or h
    rrca
    add $0f
    call nc, $d60f
    rrca
    ret c

    rrca
    jp c, $dc0f

    rrca
    add sp, $0f
    ld [$fd0f], a
    rrca
    rst $38
    rrca
    ld bc, $0310
    db $10
    dec b
    db $10
    ld de, $1310
    db $10
    inc hl
    db $10
    jr c, jr_01e_433e

    ld c, d
    db $10
    ld e, e
    db $10
    ld e, l
    db $10
    ld e, a
    db $10
    ld h, c
    db $10
    ld h, e
    db $10
    db $76
    db $10
    ld a, b
    db $10

jr_01e_433e:
    adc e
    db $10
    adc l
    db $10
    adc a
    db $10
    sub c
    db $10
    sub e
    db $10
    and e
    db $10
    and l
    db $10
    or [hl]
    db $10
    add $10
    ret z

    db $10
    jp z, $cc10

    db $10
    adc $10
    ldh [rNR10], a
    ld [c], a
    db $10
    pop af
    db $10
    rst $38
    db $10
    ld bc, $0311
    ld de, $1105
    rlca
    ld de, $1114
    ld d, $11
    jr z, @+$13

    ld [hl], $11
    ld c, b
    ld de, $114a
    ld c, h
    ld de, $114e
    ld d, b
    ld de, $115c
    ld e, [hl]
    ld de, $1170
    add b
    ld de, $1182
    add h
    ld de, $1186
    adc b
    ld de, $119a
    sbc h
    ld de, $11ac
    ret nz

    ld de, $11d0
    push hl
    ld de, $11f5
    dec b
    ld [de], a
    rla
    ld [de], a
    ld h, $12
    inc [hl]
    ld [de], a
    ld c, b
    ld [de], a
    ld d, a
    ld [de], a
    ld l, b
    ld [de], a
    ld a, h
    ld [de], a
    ld a, [hl]
    ld [de], a
    add b
    ld [de], a
    add d
    ld [de], a
    add h
    ld [de], a
    add [hl]
    ld [de], a
    adc b
    ld [de], a
    adc d
    ld [de], a
    adc h
    ld [de], a
    adc [hl]
    ld [de], a
    and b
    ld [de], a
    and d
    ld [de], a
    or [hl]
    ld [de], a
    cp b
    ld [de], a
    rl d
    db $cd
    ld [de], a

    db $cf, $12

    db $db
    ld [de], a
    push hl
    ld [de], a
    rst $28
    ld [de], a

    db $fa, $12, $00, $13, $0e, $13, $1c, $13, $2e, $13, $40, $13

    ld d, b
    inc de
    ld e, [hl]
    inc de
    ld l, h
    inc de
    ld a, [hl]
    inc de
    sub b
    inc de
    and b
    inc de
    xor [hl]
    inc de
    cp h
    inc de
    adc $13
    ldh [rNR13], a
    ldh a, [rNR13]
    rst $38
    inc de
    dec c
    inc d
    dec de
    inc d
    dec l
    inc d
    ccf
    inc d
    ld c, a
    inc d
    ld e, [hl]
    inc d
    ld l, l
    inc d
    add b
    inc d

    db $93, $14

    and a
    inc d
    ret nz

    inc d
    sub $14
    ld [$fd14], a
    inc d
    jr jr_01e_4425

    inc hl
    dec d
    cpl
    dec d
    add hl, sp
    dec d
    ld b, e
    dec d
    ld c, [hl]
    dec d
    ld e, l
    dec d
    ld l, d
    dec d
    ld a, e
    dec d
    adc a
    dec d
    and e
    dec d
    cp d

jr_01e_4425:
    dec d
    ret nc

    dec d
    db $e3
    dec d
    db $fc
    dec d
    ld bc, $0716

jr_01e_442f:
    ld d, $0d
    ld d, $13
    ld d, $19
    ld d, $1f
    ld d, $25
    ld d, $2b
    ld d, $31
    ld d, $37
    ld d, $3d
    ld d, $54
    ld d, $6b
    ld d, $86
    ld d, $a2
    ld d, $be
    ld d, $e0
    ld d, $f1

jr_01e_444f:
    ld d, $01
    rla
    ld [de], a
    rla
    dec h
    rla
    scf
    rla
    ld b, d
    rla
    ld c, l
    rla
    ld d, l
    rla
    ld e, l

jr_01e_445f:
    rla
    ld h, a
    rla
    ld [hl], c
    rla
    ld a, e
    rla
    add h
    rla
    sub b
    rla
    sbc b
    rla
    and [hl]
    rla
    or h

jr_01e_446f:
    rla
    jp nz, $c717

    rla
    ret nc

    rla
    jp c, $e017

    rla
    push hl
    rla
    pop af
    rla
    db $fc
    rla
    rlca
    jr jr_01e_4495

    jr jr_01e_449b

    jr @+$1f

    jr @+$25

    jr @+$2b

    jr jr_01e_44bd

    jr jr_01e_44cd

    jr jr_01e_44d5

    jr jr_01e_44e1

    jr jr_01e_44eb

jr_01e_4495:
    jr jr_01e_44f3

    jr jr_01e_4504

    jr jr_01e_450b

jr_01e_449b:
    jr jr_01e_451b

    jr jr_01e_442f

    jr @-$65

    jr @-$5b

    jr jr_01e_444f

    jr jr_01e_445f

    jr jr_01e_446f

jr_01e_44a9:
    jr @-$32

    jr @-$25

    jr @-$21

    jr jr_01e_4495

    jr @-$15

    jr jr_01e_44a9

    jr jr_01e_44be

    add hl, de
    ld c, $19
    inc d
    add hl, de
    dec de

jr_01e_44bd:
    add hl, de

jr_01e_44be:
    ld [hl+], a
    add hl, de
    cpl
    add hl, de
    add hl, sp
    add hl, de
    ld a, $19
    ld b, l
    add hl, de
    ld d, l
    add hl, de
    ld e, d
    add hl, de
    ld e, a

jr_01e_44cd:
    add hl, de
    ld h, l
    add hl, de
    ld l, [hl]
    add hl, de
    ld a, b
    add hl, de
    ld a, l

jr_01e_44d5:
    add hl, de
    add d
    add hl, de
    adc d
    add hl, de
    sbc c
    add hl, de
    and [hl]
    add hl, de
    xor h
    add hl, de
    cp e

jr_01e_44e1:
    add hl, de
    ret nz

    add hl, de
    push bc
    add hl, de
    rr c
    rst $10
    add hl, de
    db $dd

jr_01e_44eb:
    add hl, de
    push hl
    add hl, de
    xor $19
    ld hl, sp+$19
    rst $38

jr_01e_44f3:
    add hl, de
    inc c
    ld a, [de]
    ld [de], a
    ld a, [de]
    dec e
    ld a, [de]
    ld [hl+], a
    ld a, [de]
    jr z, jr_01e_4518

    dec [hl]
    ld a, [de]
    ld a, $1a
    ld b, l
    ld a, [de]

jr_01e_4504:
    ld c, d
    ld a, [de]
    ld d, b
    ld a, [de]
    ld d, l
    ld a, [de]
    ld h, c

jr_01e_450b:
    ld a, [de]
    ld l, d
    ld a, [de]
    ld [hl], h
    ld a, [de]
    ld a, d
    ld a, [de]
    ld a, a
    ld a, [de]
    add [hl]
    ld a, [de]
    sub c
    ld a, [de]

jr_01e_4518:
    sbc l
    ld a, [de]
    and d

jr_01e_451b:
    ld a, [de]
    or a
    ld a, [de]
    cp e
    ld a, [de]
    ret nz

    ld a, [de]
    add $1a
    rst $08
    ld a, [de]
    call nc, $de1a
    ld a, [de]
    add sp, $1a
    ld a, [c]
    ld a, [de]
    ld sp, hl
    ld a, [de]
    inc b
    dec de
    ld c, $1b
    dec d
    dec de
    ld hl, $2d1b
    dec de
    dec [hl]
    dec de
    dec sp
    dec de
    ld b, d
    dec de
    ld b, a
    dec de
    ld c, e
    dec de
    ld c, [hl]
    dec de
    ld d, c
    dec de
    ld h, a
    dec de
    ld [hl], d
    dec de
    ld a, e
    dec de
    ld a, a
    dec de
    add [hl]
    dec de
    sbc b
    dec de
    and c
    dec de
    xor d
    dec de
    cp a
    dec de
    rst $00
    dec de
    rr e
    sub $1b
    push hl
    dec de
    db $ed
    dec de
    ld hl, sp+$1b
    rst $38
    dec de
    inc c
    inc e
    ld de, $1a1c
    inc e
    jr nz, jr_01e_458c

    ld h, $1c
    ld a, [hl+]
    inc e
    ld [hl-], a
    inc e
    ld c, b
    inc e
    ld d, e
    inc e
    ld e, c
    inc e
    ld h, c
    inc e
    ld l, h
    inc e
    ld [hl], d
    inc e
    ld a, b
    inc e
    add e
    inc e
    adc [hl]
    inc e
    sub a
    inc e
    sbc h
    inc e

jr_01e_458c:
    xor b
    inc e
    xor l
    inc e
    or e
    inc e
    cp l
    inc e
    jp nz, $c71c

    inc e
    call $d41c
    inc e
    db $db
    inc e
    ld [c], a
    inc e
    jp hl


    inc e
    or $1c
    db $fc
    inc e
    nop
    dec e
    dec bc
    dec e
    ld d, $1d
    rra
    dec e
    ld h, $1d
    ld a, [hl+]
    dec e
    ld [hl-], a

jr_01e_45b3:
    dec e
    ld b, a
    dec e
    ld d, d
    dec e
    ld e, a
    dec e
    ld l, h
    dec e
    db $76
    dec e
    add c
    dec e
    adc h
    dec e
    sub h
    dec e
    sbc h
    dec e
    and a
    dec e
    or h
    dec e
    cp d
    dec e
    cp a
    dec e
    call nz, $cc1d
    dec e
    pop de
    dec e
    ld [hl-], a
    ld e, $a6
    ld e, $d6
    ld e, $29
    rra
    ld l, a
    rra
    rst $08
    rra
    dec hl
    jr nz, jr_01e_4656

    jr nz, jr_01e_45b3

    jr nz, jr_01e_4618

    ld hl, $2164
    adc h
    ld hl, $220f
    ld d, b
    ld [hl+], a
    db $76
    ld [hl+], a
    call c, Call_01e_4722
    inc hl
    db $76
    inc hl
    reti


    inc hl
    dec e
    inc h
    ld b, b
    inc h
    ld [hl], b
    inc h
    call $ff24
    inc h
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_01e_4684

    ld h, l
    ld [hl], e
    ld hl, $4120
    ld [hl], e
    ld bc, $6863
    ld h, c
    ld l, h
    ld l, h
    ld h, l

jr_01e_4618:
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld [hl], e
    inc l
    jr nz, @+$79

    ld h, l
    daa
    ld l, h
    ld l, h
    ld bc, $6572
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$71

    ld [hl], l
    ld [hl], d
    jr nz, jr_01e_46a5

    ld l, c
    ld [hl], h
    ld l, h
    ld h, l
    ld [hl], e
    ld hl, $0003
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01e_46a9

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_01e_46ac

    ld [hl], h
    inc l
    jr nz, jr_01e_464e

    ld hl, $5701
    ld h, l
    jr nz, jr_01e_46b0

    ld h, c

jr_01e_464e:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01e_46ca

    ld h, c
    ld l, c
    ld [hl], h

jr_01e_4656:
    jr nz, jr_01e_46cc

    ld l, a
    ld bc, $6c70
    ld h, c
    ld a, c
    jr nz, jr_01e_46d9

    ld l, a
    ld [hl], l
    ld hl, $0003
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld b, h

jr_01e_4684:
    ld d, l
    ld c, l
    ld c, l
    ld e, c
    nop
    ld d, a
    ld l, b
    ld l, c
    ld h, e
    ld l, b
    jr nz, jr_01e_4702

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    ccf
    ld bc, $614d
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01e_4711

    ld [hl], d
    jr nz, @+$55

jr_01e_46a5:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e

jr_01e_46a9:
    ld h, l
    ccf
    inc bc

jr_01e_46ac:
    nop
    ld c, l
    ld h, c
    ld [hl], h

jr_01e_46b0:
    ld h, e
    ld l, b
    jr nz, @+$49

    ld h, c
    ld l, l
    ld h, l
    ld bc, $7453
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    nop
    ld c, a
    ld c, e
    ld hl, $4120
    jr nz, jr_01e_4713

    ld h, c
    ld [hl], h
    ld h, e
    ld l, b

jr_01e_46ca:
    jr nz, jr_01e_4713

jr_01e_46cc:
    ld h, c
    ld l, l
    ld h, l
    ld hl, $0003
    ld c, a
    ld c, e
    ld hl, $5320
    ld [hl], h
    ld [hl], d

jr_01e_46d9:
    ld l, a
    ld l, e
    ld h, l
    jr nz, jr_01e_4750

    ld [hl], l
    ld l, h
    ld h, l
    ld [hl], e
    ld hl, $0003
    ld c, b
    ld h, l
    ld a, c
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_01e_4766

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, @+$6f

    ld h, l
    inc l
    ld bc, $6874
    ld h, l
    jr nz, jr_01e_475f

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01e_476e

    ld h, c

jr_01e_4702:
    ld l, e
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01e_477c

    ld l, a
    ld bc, $6f6c
    ld l, a
    ld l, e
    jr nz, jr_01e_4771

    ld [hl], h

jr_01e_4711:
    jr nz, jr_01e_478c

jr_01e_4713:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01e_477b

    ld l, h
    ld [hl], l
    ld h, d
    ccf
    nop
    ld c, c
    ld h, [hl]
    jr nz, jr_01e_479a

    ld l, a

Call_01e_4722:
    ld [hl], l
    jr nz, jr_01e_479c

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01e_4797

    ld h, l
    jr nz, jr_01e_47a1

    ld l, a
    inc l
    ld bc, $656c
    ld [hl], h
    jr nz, jr_01e_47a2

    ld h, l
    jr nz, jr_01e_47a3

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, a
    jr nz, jr_01e_47bb

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, $2e
    ld l, $01

jr_01e_4750:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01e_47c6

    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c
    jr nz, @+$79

    ld h, l
    ld l, h

jr_01e_475f:
    ld l, h
    ld bc, $6162
    ld l, h
    ld h, c
    ld l, [hl]

jr_01e_4766:
    ld h, e
    ld h, l
    ld h, h
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h

jr_01e_476e:
    jr nz, jr_01e_47dd

    ld a, c

jr_01e_4771:
    jr nz, jr_01e_47d6

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01e_47e5

    ld h, c
    ld l, e
    ld h, l

jr_01e_477b:
    ld [hl], e

jr_01e_477c:
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01e_47ea

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01e_47fd

    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l

jr_01e_478c:
    ld h, l
    ld hl, $5701
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld h, c
    jr nz, jr_01e_480a

    ld [hl], d

jr_01e_4797:
    ld a, c
    jr nz, jr_01e_4809

jr_01e_479a:
    ld l, [hl]
    ld h, l

jr_01e_479c:
    ccf
    nop
    ld d, a
    ld h, l
    ld l, h

jr_01e_47a1:
    ld l, h

jr_01e_47a2:
    inc l

jr_01e_47a3:
    jr nz, jr_01e_4808

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6173
    ld [hl], h
    ld l, c
    ld [hl], e
    ld h, [hl]
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$6b

    ld [hl], e
    ld bc, $6f6d

jr_01e_47bb:
    ld [hl], e
    ld [hl], h
    jr nz, jr_01e_4828

    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]

jr_01e_47c6:
    ld [hl], h
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_01e_4837

    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01e_484c

    ld h, c

jr_01e_47d6:
    ld l, [hl]
    ld [hl], h
    jr nz, @+$63

    ld bc, $6e75

jr_01e_47dd:
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    jr nz, jr_01e_4846

    ld l, h
    ld [hl], l

jr_01e_47e5:
    ld h, d
    inc l
    ld bc, $656c

jr_01e_47ea:
    ld [hl], h
    jr nz, jr_01e_485a

    ld h, l
    jr nz, jr_01e_485b

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_01e_4867

    ld l, c

jr_01e_47fd:
    ld l, [hl]
    ld h, h
    ld h, c
    jr nz, jr_01e_4865

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f77

jr_01e_4808:
    ld [hl], l

jr_01e_4809:
    ld l, h

jr_01e_480a:
    ld h, h
    jr nz, jr_01e_4886

    ld l, a
    ld [hl], l
    jr nz, jr_01e_487d

    ld l, c
    ld l, e
    ld h, l
    ccf
    inc bc
    nop
    ld b, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01e_4864

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f43
    ld l, [hl]

jr_01e_4828:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_01e_4871

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6f4e
    ld l, [hl]
    ld h, l
    nop

jr_01e_4837:
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01e_48a3

    ld l, a
    ld [hl], h
    jr nz, jr_01e_48a1

    jr nz, jr_01e_48b5

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c

jr_01e_4846:
    ld h, c
    ld l, h
    ld bc, $6944
    ld [hl], e

jr_01e_484c:
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01e_4896

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    ld e, c

jr_01e_485a:
    ld l, a

jr_01e_485b:
    ld [hl], l
    jr nz, jr_01e_48c5

    ld l, a
    ld [hl], h
    jr nz, jr_01e_48c3

    jr nz, jr_01e_48d7

jr_01e_4864:
    ld [hl], b

jr_01e_4865:
    ld h, l
    ld h, e

jr_01e_4867:
    ld l, c
    ld h, c
    ld l, h
    ld bc, $6f43
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a

jr_01e_4871:
    ld l, h
    jr nz, jr_01e_48b7

    ld l, h
    ld [hl], l
    ld h, d
    ld hl, $0003
    ld c, c
    daa
    ld l, h

jr_01e_487d:
    ld l, h
    jr nz, jr_01e_48eb

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01e_48fe

    ld l, a

jr_01e_4886:
    ld [hl], l
    ld [hl], d
    jr nz, jr_01e_48ed

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6568
    ld [hl], d
    ld h, l
    ld l, $20
    ld b, e
    ld l, a

jr_01e_4896:
    ld l, l
    ld h, l
    jr nz, jr_01e_48fc

    ld h, c
    ld h, e
    ld l, e
    ld bc, $6f66
    ld [hl], d

jr_01e_48a1:
    jr nz, jr_01e_490c

jr_01e_48a3:
    ld [hl], h
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, c
    ld l, l
    ld h, l
    ld l, $03
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    daa
    ld [hl], e

jr_01e_48b5:
    jr nz, jr_01e_491d

jr_01e_48b7:
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, jr_01e_4925

    ld [hl], e
    jr nz, jr_01e_4928

    ld l, [hl]
    jr nz, jr_01e_493b

    ld l, a

jr_01e_48c3:
    ld [hl], l
    ld [hl], d

jr_01e_48c5:
    ld bc, $7965
    ld h, l
    ld [hl], e
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_01e_4932

    ld [hl], d
    ld h, l
    jr nz, jr_01e_494c

    ld l, a
    ld [hl], d

jr_01e_48d7:
    ld [hl], h
    ld l, b
    ld a, c
    jr nz, jr_01e_494b

    ld h, [hl]
    ld bc, $6977
    ld h, l
    ld l, h
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6f

    ld a, c
    jr nz, @+$79

jr_01e_48eb:
    ld l, a
    ld [hl], d

jr_01e_48ed:
    ld l, e
    ld l, $03
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01e_4970

    ld [hl], d
    ld l, a
    ld l, [hl]

jr_01e_48fc:
    ld h, a
    inc l

jr_01e_48fe:
    ld bc, $3f07
    jr nz, jr_01e_4957

    ld l, b
    ld h, l
    ld bc, $6c63
    ld [hl], l
    ld h, d
    daa
    ld [hl], e

jr_01e_490c:
    jr nz, jr_01e_497c

    ld l, a
    ld [hl], h
    jr nz, jr_01e_4978

    ld l, a
    ld [hl], d
    jr nz, jr_01e_498f

    ld l, a
    ld [hl], l
    ccf
    nop
    ld d, l
    ld [hl], e
    ld h, l

jr_01e_491d:
    jr nz, jr_01e_498c

    ld a, c
    jr nz, jr_01e_4985

    ld l, h
    ld [hl], l
    ld h, d

jr_01e_4925:
    inc l
    jr nz, jr_01e_4989

jr_01e_4928:
    ld l, [hl]
    ld h, h
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01e_4998

    ld h, c

jr_01e_4932:
    ld l, l
    ld h, l
    jr nz, jr_01e_49ad

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01e_499e

jr_01e_493b:
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $02
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$74

    ld h, l
    ld l, l
    ld h, l
    ld l, l

jr_01e_494b:
    ld h, d

jr_01e_494c:
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_01e_49b8

    ld l, a
    ld l, h
    ld h, [hl]
    ld bc, $7369

jr_01e_4957:
    jr nz, jr_01e_49c6

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, c
    ld l, [hl]
    ld bc, $756a
    ld [hl], e
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_01e_49cd

    ld l, h
    ld [hl], l
    ld h, d
    ld l, $03
    nop

jr_01e_4970:
    ld d, a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01e_49ef

    ld l, a
    ld [hl], l

jr_01e_4978:
    jr nz, jr_01e_49df

    ld a, b
    ld l, b

jr_01e_497c:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld bc, $6c63
    ld [hl], l
    ld h, d

jr_01e_4985:
    ld [hl], e
    inc l
    jr nz, @+$76

jr_01e_4989:
    ld l, b
    ld h, l
    ld l, [hl]

jr_01e_498c:
    ccf
    nop
    rlca

jr_01e_498f:
    jr nz, jr_01e_49f8

    ld h, c
    db $76
    ld h, l
    ld bc, $6874
    ld h, l

jr_01e_4998:
    jr nz, jr_01e_4a0d

    ld [hl], b
    ld h, l
    ld h, e
    ld l, c

jr_01e_499e:
    ld h, c
    ld l, h
    jr nz, jr_01e_4a05

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6162
    ld h, e
    ld l, e
    ld l, $03
    nop

jr_01e_49ad:
    ld c, h
    ld h, l
    ld [hl], h
    jr nz, jr_01e_4a1f

    ld h, l
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a

jr_01e_49b8:
    jr nz, jr_01e_4a23

    ld h, [hl]
    jr nz, jr_01e_4a36

    ld l, a
    ld [hl], l
    ld bc, $6177
    ld l, [hl]
    ld [hl], h
    jr nz, jr_01e_4a3a

jr_01e_49c6:
    ld l, b
    ld h, l
    jr nz, jr_01e_4a3d

    ld [hl], b
    ld h, l
    ld h, e

jr_01e_49cd:
    ld l, c
    ld h, c
    ld l, h
    ld bc, $6c63
    ld [hl], l
    ld h, d
    jr nz, @+$63

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    rlca

jr_01e_49df:
    jr nz, jr_01e_4a55

    ld [hl], d
    ld h, c
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_01e_4a4e

    ld l, a
    ld [hl], d
    ld bc, $2061
    ld [hl], e
    ld [hl], b

jr_01e_49ef:
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    jr nz, jr_01e_4a59

    ld l, h
    ld [hl], l

jr_01e_49f8:
    ld h, d
    ld hl, $0003
    jr nz, jr_01e_49fe

jr_01e_49fe:
    jr nz, jr_01e_4a00

jr_01e_4a00:
    ld c, l
    ld b, c
    ld d, d
    ld c, c
    ld c, a

jr_01e_4a05:
    jr nz, jr_01e_4a4e

    ld c, a
    ld c, h
    ld b, [hl]
    jr nz, jr_01e_4a5f

    ld d, h

jr_01e_4a0d:
    ld b, c
    ld b, [hl]
    ld b, [hl]
    nop
    jr nz, jr_01e_4a13

jr_01e_4a13:
    jr nz, jr_01e_4a15

jr_01e_4a15:
    jr nz, jr_01e_4a17

jr_01e_4a17:
    jr nz, jr_01e_4a19

jr_01e_4a19:
    jr nz, jr_01e_4a1b

jr_01e_4a1b:
    jr nz, jr_01e_4a1d

jr_01e_4a1d:
    jr nz, jr_01e_4a1f

jr_01e_4a1f:
    jr nz, jr_01e_4a21

jr_01e_4a21:
    ld d, e
    ld [hl], l

jr_01e_4a23:
    ld h, d
    ld [hl], e
    ld h, e
    ld [hl], d
    ld l, c
    ld [hl], b
    ld [hl], h
    jr nz, jr_01e_4a4c

    ld h, $00
    ld c, h
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01e_4a7b

    ld h, c
    ld l, l

jr_01e_4a36:
    ld h, l
    jr nz, @+$46

    ld h, l

jr_01e_4a3a:
    ld [hl], e
    ld l, c
    ld h, a

jr_01e_4a3d:
    ld l, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    jr nz, jr_01e_4a44

jr_01e_4a44:
    jr nz, jr_01e_4a66

    ld c, b
    ld l, c
    ld [hl], d
    ld l, a
    ld a, c
    ld [hl], l

jr_01e_4a4c:
    ld l, e
    ld l, c

jr_01e_4a4e:
    jr nz, jr_01e_4aa4

    ld h, c
    ld l, e
    ld h, c
    ld l, b
    ld h, c

jr_01e_4a55:
    ld [hl], e
    ld l, b
    ld l, c
    nop

jr_01e_4a59:
    jr nz, jr_01e_4a7b

    ld d, e
    ld l, b
    ld [hl], l
    ld h, a

jr_01e_4a5f:
    ld l, a
    jr nz, @+$56

    ld h, c
    ld l, e
    ld h, c
    ld l, b

jr_01e_4a66:
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_4a6c

jr_01e_4a6c:
    jr nz, jr_01e_4a6e

jr_01e_4a6e:
    jr nz, jr_01e_4a70

jr_01e_4a70:
    jr nz, jr_01e_4a72

jr_01e_4a72:
    jr nz, jr_01e_4a74

jr_01e_4a74:
    jr nz, jr_01e_4a76

jr_01e_4a76:
    jr nz, jr_01e_4a78

jr_01e_4a78:
    ld b, a
    ld h, c
    ld l, l

jr_01e_4a7b:
    ld h, l
    jr nz, jr_01e_4ac2

    ld h, l
    ld [hl], e
    ld l, c
    ld h, a
    ld l, [hl]
    jr nz, jr_01e_4ad8

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    nop
    jr nz, jr_01e_4a8c

jr_01e_4a8c:
    jr nz, jr_01e_4aae

    ld d, e
    ld l, b
    ld [hl], l
    ld l, d
    ld l, c
    jr nz, @+$55

    ld l, b
    ld l, c
    ld l, l
    ld l, c
    ld a, d
    ld [hl], l
    nop
    jr nz, @+$22

    ld e, c
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld l, e
    ld h, l

jr_01e_4aa4:
    jr nz, jr_01e_4af9

    ld [hl], l
    ld h, a
    ld l, c
    ld l, l
    ld l, a
    ld [hl], h
    ld l, a
    nop

jr_01e_4aae:
    jr nz, jr_01e_4ad0

    ld b, c
    ld a, c
    ld [hl], l
    ld l, l
    ld [hl], l
    jr nz, @+$55

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, h
    ld l, a
    nop
    jr nz, jr_01e_4adf

    ld d, h
    ld h, c
    ld l, e

jr_01e_4ac2:
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_4b13

    ld l, c
    ld [hl], h
    ld h, c
    ld l, l
    ld [hl], l
    ld [hl], d
    ld h, c
    nop

jr_01e_4ad0:
    jr nz, @+$22

    ld c, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld [hl], d

jr_01e_4ad8:
    ld l, a
    jr nz, @+$55

    ld h, c
    ld l, e
    ld l, a
    ld l, b

jr_01e_4adf:
    jr nz, jr_01e_4ae1

jr_01e_4ae1:
    jr nz, jr_01e_4ae3

jr_01e_4ae3:
    jr nz, jr_01e_4ae5

jr_01e_4ae5:
    jr nz, jr_01e_4ae7

jr_01e_4ae7:
    jr nz, jr_01e_4ae9

jr_01e_4ae9:
    jr nz, jr_01e_4aeb

jr_01e_4aeb:
    jr nz, jr_01e_4aed

jr_01e_4aed:
    ld c, h
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01e_4b43

    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l

jr_01e_4af9:
    ld l, l
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_01e_4aff

jr_01e_4aff:
    jr nz, jr_01e_4b21

    ld e, c
    ld h, c
    ld [hl], e
    ld [hl], l
    ld l, b
    ld l, c
    ld [hl], d
    ld l, a
    jr nz, jr_01e_4b5f

    ld h, c
    ld h, a
    ld [hl], l
    ld h, e
    ld l, b
    ld l, c
    jr nz, jr_01e_4b13

jr_01e_4b13:
    jr nz, jr_01e_4b15

jr_01e_4b15:
    jr nz, jr_01e_4b17

jr_01e_4b17:
    jr nz, jr_01e_4b19

jr_01e_4b19:
    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    ld l, l

jr_01e_4b21:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_4b79

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    nop
    jr nz, jr_01e_4b2d

jr_01e_4b2d:
    jr nz, jr_01e_4b4f

    ld d, h
    ld h, c
    ld l, e
    ld h, l
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_4b86

    ld l, a
    ld l, b
    ld h, c
    ld [hl], d
    ld h, c
    nop
    jr nz, jr_01e_4b60

    ld e, c
    ld [hl], l
    ld [hl], h

jr_01e_4b43:
    ld h, c
    ld l, e
    ld h, c
    jr nz, jr_01e_4ba1

    ld h, c
    ld l, l
    ld h, c
    ld l, l
    ld l, a
    ld [hl], h
    ld l, a

jr_01e_4b4f:
    nop
    jr nz, jr_01e_4b72

    ld b, c
    ld l, e
    ld l, c
    ld l, e
    ld l, a
    jr nz, jr_01e_4bac

    ld h, c
    ld [hl], h
    ld l, a
    nop
    jr nz, jr_01e_4b7f

jr_01e_4b5f:
    ld c, e

jr_01e_4b60:
    ld h, l
    ld l, [hl]
    ld l, d
    ld l, c
    jr nz, jr_01e_4bb4

    ld [hl], l
    ld l, l
    ld h, c
    ld a, c
    ld h, c
    nop
    jr nz, jr_01e_4b8e

    ld c, e
    ld h, c
    ld l, a
    ld [hl], d

jr_01e_4b72:
    ld [hl], l
    jr nz, jr_01e_4bc8

    ld l, b
    ld l, c
    ld l, l
    ld h, c

jr_01e_4b79:
    ld h, h
    ld h, c
    nop
    jr nz, jr_01e_4b9e

    ld c, [hl]

jr_01e_4b7f:
    ld l, a
    ld [hl], d
    ld l, c
    ld l, a
    jr nz, jr_01e_4bd8

    ld l, b

jr_01e_4b86:
    ld l, c
    ld l, l
    ld l, c
    ld a, d
    ld [hl], l
    nop
    jr nz, jr_01e_4bae

jr_01e_4b8e:
    ld c, b
    ld h, c
    ld [hl], d
    ld [hl], l
    ld l, e
    ld l, c
    jr nz, jr_01e_4be1

    ld l, a
    ld h, h
    ld h, l
    ld [hl], d
    ld h, c
    nop
    jr nz, jr_01e_4bbe

jr_01e_4b9e:
    ld d, h
    ld l, a
    ld [hl], d

jr_01e_4ba1:
    ld [hl], l
    jr nz, jr_01e_4bf8

    ld h, c
    ld l, e
    ld h, c
    ld l, l
    ld h, c
    ld [hl], h
    ld [hl], e
    ld [hl], l

jr_01e_4bac:
    jr nz, jr_01e_4bae

jr_01e_4bae:
    jr nz, jr_01e_4bb0

jr_01e_4bb0:
    jr nz, jr_01e_4bb2

jr_01e_4bb2:
    jr nz, jr_01e_4bb4

jr_01e_4bb4:
    ld d, b
    ld [hl], d
    ld l, a
    ld h, a
    ld [hl], d
    ld h, c
    ld l, l
    ld l, l
    ld l, c
    ld l, [hl]

jr_01e_4bbe:
    ld h, a
    jr nz, jr_01e_4c14

    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    nop

jr_01e_4bc8:
    jr nz, jr_01e_4bca

jr_01e_4bca:
    jr nz, jr_01e_4bec

    ld d, b
    ld l, $45
    ld l, $4a
    ld h, c
    ld [hl], d
    ld h, l
    ld [hl], h
    ld l, b
    jr nz, jr_01e_4c20

jr_01e_4bd8:
    ld h, l
    ld l, c
    ld l, [hl]
    jr nz, jr_01e_4bdd

jr_01e_4bdd:
    jr nz, jr_01e_4bdf

jr_01e_4bdf:
    jr nz, jr_01e_4be1

jr_01e_4be1:
    jr nz, jr_01e_4be3

jr_01e_4be3:
    jr nz, jr_01e_4be5

jr_01e_4be5:
    jr nz, jr_01e_4be7

jr_01e_4be7:
    jr nz, jr_01e_4be9

jr_01e_4be9:
    ld c, a
    ld [hl], d
    ld l, c

jr_01e_4bec:
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, c
    ld l, h
    jr nz, jr_01e_4c36

    ld l, b
    ld h, c
    ld [hl], d
    ld h, c
    ld h, e

jr_01e_4bf8:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_01e_4c40

    ld a, c
    nop
    jr nz, jr_01e_4c02

jr_01e_4c02:
    jr nz, jr_01e_4c24

    ld d, e
    ld l, b
    ld l, c
    ld h, a
    ld h, l
    ld [hl], d
    ld [hl], l
    jr nz, jr_01e_4c5a

    ld l, c
    ld a, c
    ld h, c
    ld l, l
    ld l, a
    ld [hl], h
    ld l, a

jr_01e_4c14:
    nop
    jr nz, jr_01e_4c37

    ld c, b
    ld l, c
    ld [hl], d
    ld l, a
    ld l, d
    ld l, c
    jr nz, jr_01e_4c6a

    ld l, c

jr_01e_4c20:
    ld a, c
    ld l, a
    ld [hl], h
    ld h, c

jr_01e_4c24:
    ld l, e
    ld h, l
    nop
    jr nz, jr_01e_4c49

    ld c, l
    ld l, c
    ld [hl], h
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld [hl], l
    jr nz, jr_01e_4c78

    ld [hl], l
    ld l, e
    ld [hl], l
    ld l, l

jr_01e_4c36:
    ld l, a

jr_01e_4c37:
    ld [hl], h
    ld l, a
    nop
    jr nz, jr_01e_4c3c

jr_01e_4c3c:
    jr nz, jr_01e_4c3e

jr_01e_4c3e:
    jr nz, jr_01e_4c40

jr_01e_4c40:
    jr nz, jr_01e_4c42

jr_01e_4c42:
    ld c, h
    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_01e_4c8f

    ld [hl], d

jr_01e_4c49:
    ld h, c
    ld [hl], b
    ld l, b
    ld l, c
    ld h, e
    ld [hl], e
    nop
    jr nz, jr_01e_4c52

jr_01e_4c52:
    jr nz, jr_01e_4c74

    ld c, l
    ld l, c
    ld [hl], h
    ld [hl], e
    ld [hl], l
    ld [hl], d

jr_01e_4c5a:
    ld [hl], l
    jr nz, jr_01e_4ca3

    ld [hl], l
    ld l, e
    ld [hl], l
    ld l, l
    ld l, a
    ld [hl], h
    ld l, a
    nop
    jr nz, @+$22

    ld c, l
    ld h, c
    ld [hl], e

jr_01e_4c6a:
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_4cbd

    ld l, c
    ld l, e
    ld h, c
    ld l, l

jr_01e_4c74:
    ld l, c
    nop
    jr nz, jr_01e_4c98

jr_01e_4c78:
    ld b, c
    ld l, e
    ld l, c
    ld l, b
    ld l, c
    ld [hl], h
    ld l, a
    jr nz, jr_01e_4ccc

    ld l, c
    ld l, l
    ld [hl], l
    ld [hl], d
    ld h, c
    jr nz, jr_01e_4c88

jr_01e_4c88:
    jr nz, jr_01e_4c8a

jr_01e_4c8a:
    jr nz, jr_01e_4c8c

jr_01e_4c8c:
    jr nz, jr_01e_4c8e

jr_01e_4c8e:
    ld b, a

jr_01e_4c8f:
    ld [hl], d
    ld h, c
    ld [hl], b
    ld l, b
    ld l, c
    ld h, e
    ld [hl], e
    jr nz, jr_01e_4ceb

jr_01e_4c98:
    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    nop
    jr nz, jr_01e_4c9f

jr_01e_4c9f:
    jr nz, jr_01e_4cc1

    ld b, [hl]
    ld [hl], l

jr_01e_4ca3:
    ld l, l
    ld l, c
    ld l, b
    ld l, c
    ld h, h
    ld h, l
    jr nz, jr_01e_4cec

    ld l, a
    ld l, e
    ld l, c
    nop
    jr nz, jr_01e_4cd1

    ld c, l
    ld l, c
    ld [hl], h
    ld [hl], e
    ld [hl], l
    ld l, l
    ld h, c
    ld [hl], e
    ld h, c
    jr nz, jr_01e_4d09

    ld [hl], l

jr_01e_4cbd:
    ld [hl], d
    ld h, c
    ld l, c
    ld [hl], e

jr_01e_4cc1:
    ld l, b
    ld l, c
    nop
    jr nz, jr_01e_4ce6

    ld d, e
    ld l, b
    ld l, c
    ld h, a
    ld h, l
    ld l, e

jr_01e_4ccc:
    ld l, c
    jr nz, jr_01e_4d1a

    ld l, c
    ld l, l

jr_01e_4cd1:
    ld [hl], l
    ld [hl], d
    ld h, c
    nop
    jr nz, jr_01e_4cf7

    ld c, d
    ld [hl], l
    ld l, [hl]
    ld l, c
    ld h, e
    ld l, b
    ld l, c
    jr nz, @+$51

    ld h, e
    ld l, b
    ld l, c
    ld h, c
    ld l, c
    nop

jr_01e_4ce6:
    jr nz, jr_01e_4d08

    ld c, b
    ld l, c
    ld [hl], d

jr_01e_4ceb:
    ld l, a

jr_01e_4cec:
    ld [hl], h
    ld l, a
    jr nz, @+$50

    ld h, c
    ld l, e
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c
    ld l, l

jr_01e_4cf7:
    ld h, c
    nop
    jr nz, jr_01e_4d1b

    ld c, l
    ld h, c
    ld [hl], e
    ld h, c
    ld a, c
    ld [hl], l
    ld l, e
    ld l, c
    jr nz, jr_01e_4d4d

    ld h, c
    ld [hl], e
    ld l, b

jr_01e_4d08:
    ld l, c

jr_01e_4d09:
    ld l, l
    ld l, a
    ld [hl], h
    ld l, a
    nop
    jr nz, jr_01e_4d10

jr_01e_4d10:
    jr nz, jr_01e_4d12

jr_01e_4d12:
    jr nz, jr_01e_4d14

jr_01e_4d14:
    jr nz, jr_01e_4d16

jr_01e_4d16:
    jr nz, jr_01e_4d18

jr_01e_4d18:
    jr nz, jr_01e_4d1a

jr_01e_4d1a:
    ld c, l

jr_01e_4d1b:
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    jr nz, jr_01e_4d64

    ld l, a
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld h, $20
    jr nz, jr_01e_4d71

    ld [hl], d
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    jr nz, jr_01e_4d3d

jr_01e_4d3d:
    jr nz, jr_01e_4d5f

    ld c, l
    ld l, a
    ld [hl], h
    ld l, a
    ld l, c
    jr nz, jr_01e_4d99

    ld h, c
    ld l, e
    ld [hl], l
    ld [hl], d
    ld h, c
    ld h, d
    ld h, c

jr_01e_4d4d:
    jr nz, jr_01e_4d4f

jr_01e_4d4f:
    jr nz, jr_01e_4d51

jr_01e_4d51:
    jr nz, jr_01e_4d53

jr_01e_4d53:
    jr nz, jr_01e_4d55

jr_01e_4d55:
    jr nz, jr_01e_4d57

jr_01e_4d57:
    ld d, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$47

    ld h, [hl]

jr_01e_4d5f:
    ld h, [hl]
    ld h, l
    ld h, e
    ld [hl], h
    ld [hl], e

jr_01e_4d64:
    nop
    ld h, $20
    jr nz, jr_01e_4dbc

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01e_4dbe

    ld [hl], b
    ld h, l

jr_01e_4d71:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    nop
    jr nz, jr_01e_4d79

jr_01e_4d79:
    jr nz, jr_01e_4d9b

    ld d, h
    ld h, c
    ld l, e
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_4da4

    ld c, l
    ld l, a
    ld [hl], d
    ld l, c
    ld l, a
    nop
    jr nz, jr_01e_4d8c

jr_01e_4d8c:
    jr nz, jr_01e_4d8e

jr_01e_4d8e:
    jr nz, jr_01e_4d90

jr_01e_4d90:
    jr nz, jr_01e_4d92

jr_01e_4d92:
    ld d, e
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01e_4ddd

jr_01e_4d99:
    ld l, c
    ld [hl], d

jr_01e_4d9b:
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld [hl], e
    nop
    jr nz, jr_01e_4da4

jr_01e_4da4:
    jr nz, jr_01e_4dc6

    ld c, l
    ld h, c
    ld [hl], e
    ld h, c
    ld h, c
    ld l, e
    ld l, c
    jr nz, jr_01e_4e04

    ld l, [hl]
    ld l, a
    nop
    jr nz, jr_01e_4db4

jr_01e_4db4:
    jr nz, jr_01e_4db6

jr_01e_4db6:
    jr nz, jr_01e_4db8

jr_01e_4db8:
    jr nz, jr_01e_4dba

jr_01e_4dba:
    ld d, e
    ld [hl], l

jr_01e_4dbc:
    ld [hl], b
    ld h, l

jr_01e_4dbe:
    ld [hl], d
    db $76
    ld l, c
    ld [hl], e
    ld l, a
    ld [hl], d
    ld [hl], e
    nop

jr_01e_4dc6:
    jr nz, jr_01e_4dc8

jr_01e_4dc8:
    jr nz, jr_01e_4dea

    ld c, e
    ld h, l
    ld l, [hl]
    ld l, d
    ld l, c
    jr nz, jr_01e_4e1e

    ld l, c
    ld l, e
    ld l, c
    nop
    jr nz, jr_01e_4df7

    ld d, e
    ld l, b
    ld l, c
    ld h, a
    ld h, l
    ld [hl], d

jr_01e_4ddd:
    ld [hl], l
    jr nz, @+$4f

    ld l, c
    ld a, c
    ld h, c
    ld l, l
    ld l, a
    ld [hl], h
    ld l, a
    nop
    jr nz, jr_01e_4e0a

jr_01e_4dea:
    ld d, h
    ld h, c
    ld l, e
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, @+$56

    ld h, l
    ld a, d
    ld [hl], l
    ld l, e

jr_01e_4df7:
    ld h, c
    nop
    jr nz, jr_01e_4e1b

    ld c, e
    ld l, a
    ld l, d
    ld l, c
    jr nz, jr_01e_4e4c

    ld l, a
    ld l, [hl]
    ld h, h

jr_01e_4e04:
    ld l, a
    nop
    jr nz, jr_01e_4e28

    ld c, b
    ld h, c

jr_01e_4e0a:
    ld [hl], d
    ld [hl], l
    ld l, e
    ld l, c
    jr nz, jr_01e_4e5b

    ld l, a
    ld h, h
    ld h, l
    ld [hl], d
    ld h, c
    nop
    jr nz, jr_01e_4e38

    ld d, h
    ld l, a
    ld [hl], d

jr_01e_4e1b:
    ld [hl], l
    jr nz, jr_01e_4e72

jr_01e_4e1e:
    ld h, c
    ld l, e
    ld h, c
    ld l, l
    ld h, c
    ld [hl], h
    ld [hl], e
    ld [hl], l
    jr nz, jr_01e_4e28

jr_01e_4e28:
    jr nz, jr_01e_4e2a

jr_01e_4e2a:
    jr nz, jr_01e_4e2c

jr_01e_4e2c:
    jr nz, jr_01e_4e2e

jr_01e_4e2e:
    jr nz, jr_01e_4e30

jr_01e_4e30:
    ld b, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]

jr_01e_4e38:
    ld [hl], h
    jr nz, jr_01e_4e7f

    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld [hl], e
    nop
    jr nz, jr_01e_4e46

jr_01e_4e46:
    jr nz, @+$22

    ld e, c
    ld [hl], l
    ld [hl], e
    ld [hl], l

jr_01e_4e4c:
    ld l, e
    ld h, l
    jr nz, jr_01e_4ea3

    ld [hl], l
    ld h, a
    ld l, c
    ld l, l
    ld l, a
    ld [hl], h
    ld l, a
    nop
    jr nz, jr_01e_4e7a

    ld c, l

jr_01e_4e5b:
    ld h, c
    ld [hl], e
    ld h, c
    ld h, c
    ld l, e
    ld l, c
    jr nz, @+$57

    ld l, [hl]
    ld l, a
    jr nz, jr_01e_4e67

jr_01e_4e67:
    jr nz, jr_01e_4e69

jr_01e_4e69:
    jr nz, jr_01e_4e6b

jr_01e_4e6b:
    jr nz, jr_01e_4e6d

jr_01e_4e6d:
    jr nz, jr_01e_4e6f

jr_01e_4e6f:
    ld b, h
    ld l, c
    ld [hl], d

jr_01e_4e72:
    ld h, l
    ld h, e
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_01e_4ebb

    ld a, c

jr_01e_4e7a:
    nop
    jr nz, jr_01e_4e7d

jr_01e_4e7d:
    jr nz, jr_01e_4e9f

jr_01e_4e7f:
    ld e, c
    ld h, c
    ld [hl], e
    ld [hl], l
    ld l, b
    ld l, c
    ld [hl], d
    ld l, a
    jr nz, jr_01e_4edd

    ld h, c
    ld h, a
    ld [hl], l
    ld h, e
    ld l, b
    ld l, c
    jr nz, jr_01e_4e91

jr_01e_4e91:
    jr nz, jr_01e_4e93

jr_01e_4e93:
    jr nz, jr_01e_4e95

jr_01e_4e95:
    jr nz, jr_01e_4e97

jr_01e_4e97:
    jr nz, jr_01e_4e99

jr_01e_4e99:
    ld d, b
    ld [hl], d
    ld l, a
    ld h, h
    ld [hl], l
    ld h, e

jr_01e_4e9f:
    ld h, l
    ld h, h
    jr nz, jr_01e_4ee5

jr_01e_4ea3:
    ld a, c
    nop
    jr nz, jr_01e_4ea7

jr_01e_4ea7:
    jr nz, jr_01e_4ec9

    ld d, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, d
    ld l, c
    jr nz, jr_01e_4ef9

    ld h, c
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld l, a
    nop
    jr nz, jr_01e_4ed9

    ld c, b
    ld l, c

jr_01e_4ebb:
    ld [hl], d
    ld l, a
    ld a, c
    ld [hl], l
    ld l, e
    ld l, c
    jr nz, jr_01e_4f17

    ld h, c
    ld l, e
    ld h, c
    ld l, b
    ld h, c
    ld [hl], e

jr_01e_4ec9:
    ld l, b
    ld l, c
    nop
    jr nz, jr_01e_4eee

    ld d, e
    ld l, b
    ld [hl], l
    ld h, a
    ld l, a
    jr nz, jr_01e_4f29

    ld h, c
    ld l, e
    ld h, c
    ld l, b

jr_01e_4ed9:
    ld h, c
    ld [hl], e
    ld l, b
    ld l, c

jr_01e_4edd:
    nop
    jr nz, jr_01e_4f00

    ld c, b
    ld l, c
    ld h, h
    ld h, l
    ld [hl], h

jr_01e_4ee5:
    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_4f30

    ld l, [hl]
    ld h, h
    ld l, a

jr_01e_4eee:
    nop
    jr nz, jr_01e_4ef1

jr_01e_4ef1:
    jr nz, jr_01e_4ef3

jr_01e_4ef3:
    jr nz, jr_01e_4ef5

jr_01e_4ef5:
    jr nz, jr_01e_4ef7

jr_01e_4ef7:
    ld b, l
    ld a, b

jr_01e_4ef9:
    ld h, l
    ld h, e
    ld [hl], l
    ld [hl], h
    ld l, c
    db $76
    ld h, l

jr_01e_4f00:
    jr nz, jr_01e_4f52

    ld [hl], d
    ld l, a
    ld h, h
    ld [hl], l
    ld h, e
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_01e_4f0c

jr_01e_4f0c:
    jr nz, jr_01e_4f2e

    ld c, b
    ld l, c
    ld [hl], d
    ld l, a
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_4f70

jr_01e_4f17:
    ld h, c
    ld l, l
    ld h, c
    ld [hl], l
    ld h, e
    ld l, b
    ld l, c
    nop
    jr nz, jr_01e_4f21

jr_01e_4f21:
    jr nz, jr_01e_4f23

jr_01e_4f23:
    jr nz, jr_01e_4f25

jr_01e_4f25:
    jr nz, jr_01e_4f27

jr_01e_4f27:
    ld b, a
    ld [hl], d

jr_01e_4f29:
    ld h, c
    ld [hl], b
    ld l, b
    ld l, c
    ld h, e

jr_01e_4f2e:
    jr nz, jr_01e_4f83

jr_01e_4f30:
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    nop
    jr nz, jr_01e_4f39

jr_01e_4f39:
    jr nz, @+$22

    ld e, c
    ld l, a
    ld [hl], l
    ld l, c
    ld h, e
    ld l, b
    ld l, c
    jr nz, jr_01e_4f8f

    ld l, a
    ld [hl], h
    ld h, c
    ld h, d
    ld h, l
    nop
    jr nz, jr_01e_4f6c

    ld e, c
    ld [hl], l
    ld [hl], e
    ld [hl], l
    ld l, e
    ld h, l

jr_01e_4f52:
    jr nz, jr_01e_4fa2

    ld h, c
    ld l, e
    ld h, c
    ld l, [hl]
    ld l, a
    nop
    jr nz, jr_01e_4f5c

jr_01e_4f5c:
    jr nz, jr_01e_4f5e

jr_01e_4f5e:
    jr nz, jr_01e_4f60

jr_01e_4f60:
    jr nz, jr_01e_4f62

jr_01e_4f62:
    ld b, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_01e_4fbe

    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_01e_4fb0

jr_01e_4f6c:
    ld h, l
    ld [hl], e
    ld l, c
    ld h, a

jr_01e_4f70:
    ld l, [hl]
    ld h, l
    ld [hl], d
    nop
    jr nz, jr_01e_4f76

jr_01e_4f76:
    jr nz, @+$22

    ld d, d
    ld a, c
    ld [hl], l
    ld l, d
    ld l, c
    jr nz, @+$4a

    ld h, c
    ld h, a
    ld l, c
    ld l, [hl]

jr_01e_4f83:
    ld l, a
    nop
    jr nz, jr_01e_4fa7

    ld e, c
    ld h, c
    ld [hl], e
    ld [hl], l
    ld l, a
    jr nz, jr_01e_4fd7

    ld l, [hl]

jr_01e_4f8f:
    ld l, a
    ld [hl], l
    ld h, l
    nop
    jr nz, jr_01e_4f95

jr_01e_4f95:
    jr nz, jr_01e_4f97

jr_01e_4f97:
    jr nz, jr_01e_4f99

jr_01e_4f99:
    jr nz, jr_01e_4f9b

jr_01e_4f9b:
    ld b, e
    ld l, a
    ld l, a
    ld [hl], d
    ld h, h
    ld l, c
    ld l, [hl]

jr_01e_4fa2:
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld [hl], e

jr_01e_4fa7:
    nop
    jr nz, jr_01e_4faa

jr_01e_4faa:
    jr nz, jr_01e_4fcc

    ld d, h
    ld l, a
    ld [hl], e
    ld l, b

jr_01e_4fb0:
    ld l, c
    ld l, b
    ld h, c
    ld [hl], d
    ld [hl], l
    jr nz, jr_01e_5000

    ld a, d
    ld [hl], l
    ld l, [hl]
    ld l, a
    nop
    jr nz, jr_01e_4fde

jr_01e_4fbe:
    ld c, l
    ld h, c
    ld [hl], e
    ld h, c
    ld l, [hl]
    ld l, a
    ld [hl], d
    ld l, c
    jr nz, jr_01e_501f

    ld h, c
    ld l, e
    ld h, l
    nop

jr_01e_4fcc:
    jr nz, jr_01e_4fce

jr_01e_4fce:
    jr nz, jr_01e_4fd0

jr_01e_4fd0:
    jr nz, jr_01e_4fd2

jr_01e_4fd2:
    jr nz, jr_01e_4fd4

jr_01e_4fd4:
    ld c, h
    ld l, a
    ld h, e

jr_01e_4fd7:
    ld h, c
    ld l, h
    ld l, c
    ld a, d
    ld h, c
    ld [hl], h
    ld l, c

jr_01e_4fde:
    ld l, a
    ld l, [hl]
    nop
    jr nz, jr_01e_4fe3

jr_01e_4fe3:
    jr nz, jr_01e_5005

    ld c, l
    ld l, c
    ld h, e
    ld l, b
    ld h, l
    ld l, h
    ld l, h
    ld h, l
    jr nz, @+$52

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    jr nz, @+$22

    ld b, d
    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$56

    ld [hl], d
    ld l, c
    ld l, [hl]

jr_01e_5000:
    ld h, l
    ld l, [hl]
    nop
    jr nz, jr_01e_5025

jr_01e_5005:
    ld b, a
    ld [hl], d
    ld h, l
    ld h, a
    jr nz, jr_01e_505d

    ld l, c
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, jr_01e_5016

jr_01e_5016:
    jr nz, jr_01e_5018

jr_01e_5018:
    jr nz, jr_01e_501a

jr_01e_501a:
    jr nz, jr_01e_501c

jr_01e_501c:
    jr nz, jr_01e_501e

jr_01e_501e:
    ld d, e

jr_01e_501f:
    ld [hl], b
    ld h, l
    ld h, e
    ld l, c
    ld h, c
    ld l, h

jr_01e_5025:
    jr nz, @+$56

    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    jr nz, jr_01e_50a2

    ld l, a
    nop
    jr nz, jr_01e_5032

jr_01e_5032:
    jr nz, jr_01e_5054

    ld c, [hl]
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld h, h
    ld l, a
    jr nz, jr_01e_5090

    ld h, $44
    ld sp, $2000
    jr nz, jr_01e_5065

    jr nz, jr_01e_5067

    jr nz, jr_01e_508a

    ld [hl], d
    ld [hl], h
    jr nz, jr_01e_50c4

    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_01e_50c6

    ld h, l
    ld h, c

jr_01e_5054:
    ld l, l
    nop
    jr nz, jr_01e_5078

    ld c, e
    ld h, l
    ld l, c
    ld l, e
    ld l, a

jr_01e_505d:
    jr nz, jr_01e_50b3

    ld h, c
    ld l, l
    ld [hl], l
    ld [hl], d
    ld h, c
    nop

jr_01e_5065:
    jr nz, jr_01e_5087

jr_01e_5067:
    ld c, e
    ld h, c
    ld a, d
    ld [hl], l
    ld l, b
    ld l, c
    ld [hl], d
    ld l, a
    jr nz, jr_01e_50be

    ld h, c
    ld [hl], h
    ld [hl], e
    ld [hl], l
    ld l, l
    ld l, a
    ld [hl], h

jr_01e_5078:
    ld l, a
    nop
    jr nz, jr_01e_509c

    ld c, b
    ld l, c
    ld [hl], d
    ld l, a
    ld l, e
    ld l, a
    jr nz, @+$55

    ld [hl], l
    ld h, a
    ld l, c

jr_01e_5087:
    ld l, [hl]
    ld l, a
    nop

jr_01e_508a:
    jr nz, jr_01e_50ac

    ld b, c
    ld [hl], h
    ld [hl], e
    ld [hl], l

jr_01e_5090:
    ld [hl], e
    ld l, b
    ld l, c
    jr nz, jr_01e_50e4

    ld l, e
    ld h, c
    ld h, h
    ld h, c
    nop
    jr nz, @+$22

jr_01e_509c:
    ld c, [hl]
    ld c, a
    ld b, c
    jr nz, jr_01e_50e5

    ld h, l

jr_01e_50a2:
    ld h, d
    ld [hl], l
    ld h, a
    jr nz, jr_01e_50fa

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    nop

jr_01e_50ac:
    jr nz, @+$22

    ld c, b
    ld l, c
    ld [hl], d
    ld l, a
    ld [hl], e

jr_01e_50b3:
    ld l, b
    ld l, c
    jr nz, jr_01e_510a

    ld h, c
    ld [hl], h
    ld l, a
    nop
    jr nz, jr_01e_50dd

    ld d, e

jr_01e_50be:
    ld [hl], l
    ld [hl], b
    ld h, l
    ld [hl], d
    jr nz, jr_01e_5111

jr_01e_50c4:
    ld h, c
    ld [hl], d

jr_01e_50c6:
    ld l, c
    ld l, a
    nop
    jr nz, jr_01e_50eb

    jr nz, @+$22

    jr nz, jr_01e_50ef

    jr nz, jr_01e_50f1

    jr nz, @+$45

    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01e_514b

    ld [hl], h
    ld h, c
    ld h, [hl]
    ld h, [hl]
    nop

jr_01e_50dd:
    jr nz, jr_01e_50ff

    ld d, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, c

jr_01e_50e4:
    ld h, e

jr_01e_50e5:
    ld l, b
    ld l, c
    jr nz, @+$46

    ld l, a
    ld l, c

jr_01e_50eb:
    nop
    jr nz, jr_01e_510e

    ld c, a

jr_01e_50ef:
    ld [hl], e
    ld h, c

jr_01e_50f1:
    ld l, l
    ld [hl], l
    jr nz, jr_01e_5140

    ld [hl], l
    ld l, [hl]
    ld l, c
    ld l, l
    ld h, c

jr_01e_50fa:
    ld [hl], e
    ld h, c
    nop
    jr nz, jr_01e_511f

jr_01e_50ff:
    ld c, [hl]
    ld l, a
    ld [hl], d
    ld l, c
    ld a, c
    ld [hl], l
    ld l, e
    ld l, c
    jr nz, jr_01e_5157

    ld h, c

jr_01e_510a:
    ld l, e
    ld h, c
    ld h, a
    ld h, c

jr_01e_510e:
    ld l, l
    ld l, c
    nop

jr_01e_5111:
    jr nz, jr_01e_5113

jr_01e_5113:
    jr nz, jr_01e_5115

jr_01e_5115:
    jr nz, jr_01e_5117

jr_01e_5117:
    jr nz, jr_01e_5119

jr_01e_5119:
    jr nz, jr_01e_511b

jr_01e_511b:
    jr nz, jr_01e_511d

jr_01e_511d:
    jr nz, jr_01e_511f

jr_01e_511f:
    jr nz, jr_01e_5121

jr_01e_5121:
    jr nz, jr_01e_5123

jr_01e_5123:
    jr nz, jr_01e_5125

jr_01e_5125:
    ld b, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_01e_5170

    ld a, c
    nop
    jr nz, jr_01e_5132

jr_01e_5132:
    jr nz, jr_01e_5154

    ld b, e
    ld b, c
    ld c, l
    ld b, l
    ld c, h
    ld c, a
    ld d, h
    jr nz, jr_01e_5180

    ld l, a
    ld l, $2c

jr_01e_5140:
    ld c, h
    ld [hl], h
    ld h, h
    ld l, $00
    jr nz, jr_01e_5147

jr_01e_5147:
    jr nz, @+$22

    ld c, l
    ld c, a

jr_01e_514b:
    ld c, [hl]
    ld b, l
    ld b, a
    ld c, c
    jr nz, jr_01e_5194

    ld l, a
    ld [hl], d
    ld [hl], b

jr_01e_5154:
    ld l, a
    ld [hl], d
    ld h, c

jr_01e_5157:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    jr nz, jr_01e_515e

jr_01e_515e:
    jr nz, jr_01e_5180

    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld d, h
    ld b, l
    ld c, [hl]
    ld b, h
    ld c, a
    jr nz, jr_01e_51ad

    ld l, a
    ld l, $2c
    ld c, h
    ld [hl], h
    ld h, h

jr_01e_5170:
    ld l, $00
    jr nz, jr_01e_5174

jr_01e_5174:
    inc hl
    nop
    jr nz, jr_01e_5178

jr_01e_5178:
    jr nz, @+$22

    jr nz, @+$22

    ld c, l
    ld b, c
    ld d, d
    ld c, c

jr_01e_5180:
    ld c, a
    jr nz, jr_01e_51ca

    ld c, a
    ld c, h
    ld b, [hl]
    jr nz, jr_01e_5188

jr_01e_5188:
    jr nz, jr_01e_518a

jr_01e_518a:
    jr nz, jr_01e_51ac

    jr nz, jr_01e_51ae

    jr nz, jr_01e_51b0

    jr nz, @+$55

    ld d, h
    ld b, c

jr_01e_5194:
    ld b, [hl]
    ld b, [hl]
    nop
    jr nz, jr_01e_5199

jr_01e_5199:
    jr nz, jr_01e_519b

jr_01e_519b:
    jr nz, jr_01e_519d

jr_01e_519d:
    jr nz, jr_01e_519f

jr_01e_519f:
    jr nz, jr_01e_51a1

jr_01e_51a1:
    jr nz, jr_01e_51a3

jr_01e_51a3:
    jr nz, jr_01e_51a5

jr_01e_51a5:
    ld d, e
    ld d, l
    ld b, d
    ld d, e
    ld b, e
    ld d, d
    ld c, c

jr_01e_51ac:
    ld d, b

jr_01e_51ad:
    ld d, h

jr_01e_51ae:
    jr nz, jr_01e_51d0

jr_01e_51b0:
    ld h, $00
    ld c, h
    ld b, l
    ld b, c
    ld b, h
    jr nz, jr_01e_51ff

    ld b, c
    ld c, l
    ld b, l
    jr nz, jr_01e_5201

    ld b, l
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    ld b, l
    ld d, d
    ld d, e
    nop
    jr nz, jr_01e_51c8

jr_01e_51c8:
    jr nz, jr_01e_51ea

jr_01e_51ca:
    ld c, b
    ld c, c
    ld d, d
    ld c, a
    ld e, c
    ld d, l

jr_01e_51d0:
    ld c, e
    ld c, c
    jr nz, @+$56

    ld b, c
    ld c, e
    ld b, c
    ld c, b
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    nop
    jr nz, jr_01e_51ff

    ld d, e
    ld c, b
    ld d, l
    ld b, a
    ld c, a
    jr nz, jr_01e_523a

    ld b, c
    ld c, e
    ld b, c
    ld c, b

jr_01e_51ea:
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    nop
    jr nz, jr_01e_51f1

jr_01e_51f1:
    jr nz, jr_01e_51f3

jr_01e_51f3:
    jr nz, jr_01e_51f5

jr_01e_51f5:
    jr nz, jr_01e_51f7

jr_01e_51f7:
    jr nz, jr_01e_51f9

jr_01e_51f9:
    jr nz, jr_01e_51fb

jr_01e_51fb:
    ld b, a
    ld b, c
    ld c, l
    ld b, l

jr_01e_51ff:
    jr nz, jr_01e_5245

jr_01e_5201:
    ld b, l
    ld d, e
    ld c, c
    ld b, a
    ld c, [hl]
    jr nz, jr_01e_525b

    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    nop
    jr nz, jr_01e_520f

jr_01e_520f:
    jr nz, jr_01e_5231

    ld d, e
    ld c, b
    ld d, l
    ld c, d
    ld c, c
    jr nz, jr_01e_526b

    ld c, b
    ld c, c
    ld c, l
    ld c, c
    ld e, d
    ld d, l
    nop
    jr nz, @+$22

    ld e, c
    ld d, l
    ld d, e
    ld d, l
    ld c, e
    ld b, l
    jr nz, jr_01e_527c

    ld d, l
    ld b, a
    ld c, c
    ld c, l
    ld c, a
    ld d, h
    ld c, a
    nop

jr_01e_5231:
    jr nz, jr_01e_5253

    ld b, c
    ld e, c
    ld d, l
    ld c, l
    ld d, l
    jr nz, jr_01e_528d

jr_01e_523a:
    ld c, b
    ld c, c
    ld c, [hl]
    ld b, h
    ld c, a
    nop
    jr nz, jr_01e_5262

    ld d, h
    ld b, c
    ld c, e

jr_01e_5245:
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_5296

    ld c, c
    ld d, h
    ld b, c
    ld c, l
    ld d, l
    ld d, d
    ld b, c
    nop

jr_01e_5253:
    jr nz, jr_01e_5275

    ld c, e
    ld b, l
    ld c, [hl]
    ld d, h
    ld b, c
    ld d, d

jr_01e_525b:
    ld c, a
    jr nz, jr_01e_52b1

    ld b, c
    ld c, e
    ld c, a
    ld d, l

jr_01e_5262:
    nop
    jr nz, jr_01e_5265

jr_01e_5265:
    jr nz, jr_01e_5267

jr_01e_5267:
    jr nz, jr_01e_5269

jr_01e_5269:
    jr nz, jr_01e_526b

jr_01e_526b:
    jr nz, jr_01e_526d

jr_01e_526d:
    jr nz, jr_01e_526f

jr_01e_526f:
    ld c, h
    ld b, l
    ld b, c
    ld b, h
    jr nz, jr_01e_52c5

jr_01e_5275:
    ld d, d
    ld c, a
    ld b, a
    ld d, d
    ld b, c
    ld c, l
    ld c, l

jr_01e_527c:
    ld b, l
    ld d, d
    nop
    jr nz, jr_01e_5281

jr_01e_5281:
    jr nz, jr_01e_52a3

    ld e, c
    ld b, c
    ld d, e
    ld d, l
    ld c, b
    ld c, c
    ld d, d
    ld c, a
    jr nz, jr_01e_52e1

jr_01e_528d:
    ld b, c
    ld b, a
    ld d, l
    ld b, e
    ld c, b
    ld c, c
    nop
    jr nz, jr_01e_5296

jr_01e_5296:
    jr nz, jr_01e_5298

jr_01e_5298:
    jr nz, jr_01e_529a

jr_01e_529a:
    ld d, b
    ld d, d
    ld c, a
    ld b, a
    ld d, d
    ld b, c
    ld c, l
    ld c, l
    ld c, c

jr_01e_52a3:
    ld c, [hl]
    ld b, a
    jr nz, jr_01e_52fa

    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    nop
    jr nz, jr_01e_52ae

jr_01e_52ae:
    jr nz, jr_01e_52d0

    ld d, h

jr_01e_52b1:
    ld b, c
    ld c, e
    ld b, l
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_5307

    ld c, a
    ld c, b
    ld b, c
    ld d, d
    ld b, c
    nop
    jr nz, jr_01e_52e1

    ld e, c
    ld d, l
    ld d, h
    ld b, c

jr_01e_52c5:
    ld c, e
    ld b, c
    jr nz, jr_01e_5322

    ld b, c
    ld c, l
    ld b, c
    ld c, l
    ld c, a
    ld d, h
    ld c, a

jr_01e_52d0:
    nop
    jr nz, jr_01e_52f3

    ld b, c
    ld c, e
    ld c, c
    ld c, e
    ld c, a
    jr nz, jr_01e_532d

    ld b, c
    ld d, h
    ld c, a
    nop
    jr nz, jr_01e_5300

    ld c, e

jr_01e_52e1:
    ld b, l
    ld c, [hl]
    ld c, d
    ld c, c
    jr nz, jr_01e_5335

    ld d, l
    ld c, l
    ld b, c
    ld e, c
    ld b, c
    nop
    jr nz, jr_01e_530f

    ld c, e
    ld b, c
    ld c, a
    ld d, d

jr_01e_52f3:
    ld d, l
    jr nz, jr_01e_5349

    ld c, b
    ld c, c
    ld c, l
    ld b, c

jr_01e_52fa:
    ld b, h
    ld b, c
    nop
    jr nz, jr_01e_531f

    ld c, [hl]

jr_01e_5300:
    ld c, a
    ld d, d
    ld c, c
    ld c, a
    jr nz, jr_01e_5359

    ld c, b

jr_01e_5307:
    ld c, c
    ld c, l
    ld c, c
    ld e, d
    ld d, l
    nop
    jr nz, @+$22

jr_01e_530f:
    ld c, b
    ld b, c
    ld d, d
    ld d, l
    ld c, e
    ld c, c
    jr nz, @+$4d

    ld c, a
    ld b, h
    ld b, l
    ld d, d
    ld b, c
    nop
    jr nz, jr_01e_533f

jr_01e_531f:
    ld d, h
    ld c, a
    ld d, d

jr_01e_5322:
    ld d, l
    jr nz, jr_01e_5379

    ld b, c
    ld c, e
    ld b, c
    ld c, l
    ld b, c
    ld d, h
    ld d, e
    ld d, l

jr_01e_532d:
    nop
    jr nz, jr_01e_5330

jr_01e_5330:
    jr nz, jr_01e_5332

jr_01e_5332:
    jr nz, jr_01e_5334

jr_01e_5334:
    ld d, e

jr_01e_5335:
    ld d, l
    ld d, b
    ld d, b
    ld c, a
    ld d, d
    ld d, h
    jr nz, jr_01e_538d

    ld d, d
    ld c, a

jr_01e_533f:
    ld b, a
    ld d, d
    ld b, c
    ld c, l
    ld c, l
    ld c, c
    ld c, [hl]
    ld b, a
    jr nz, jr_01e_5349

jr_01e_5349:
    jr nz, jr_01e_534b

jr_01e_534b:
    jr nz, jr_01e_536d

    ld d, b
    ld l, $45
    ld l, $4a
    ld b, c
    ld d, d
    ld b, l
    ld d, h
    ld c, b
    jr nz, jr_01e_53a1

jr_01e_5359:
    ld b, l
    ld c, c
    ld c, [hl]
    nop
    jr nz, jr_01e_535f

jr_01e_535f:
    jr nz, jr_01e_5361

jr_01e_5361:
    jr nz, jr_01e_5363

jr_01e_5363:
    jr nz, jr_01e_5365

jr_01e_5365:
    jr nz, jr_01e_5367

jr_01e_5367:
    jr nz, jr_01e_5369

jr_01e_5369:
    ld c, a
    ld d, d
    ld c, c
    ld b, a

jr_01e_536d:
    ld c, c
    ld c, [hl]
    ld b, c
    ld c, h
    jr nz, jr_01e_53b6

    ld c, b
    ld b, c
    ld d, d
    ld b, c
    ld b, e
    ld d, h

jr_01e_5379:
    ld b, l
    ld d, d
    ld d, e
    nop
    jr nz, jr_01e_537f

jr_01e_537f:
    jr nz, jr_01e_53a1

    ld d, e
    ld c, b
    ld c, c
    ld b, a
    ld b, l
    ld d, d
    ld d, l
    jr nz, jr_01e_53d7

    ld c, c
    ld e, c
    ld b, c

jr_01e_538d:
    ld c, l
    ld c, a
    ld d, h
    ld c, a
    nop
    jr nz, jr_01e_53b4

    ld c, b
    ld c, c
    ld d, d
    ld c, a
    ld c, d
    ld c, c
    jr nz, jr_01e_53e7

    ld c, c
    ld e, c
    ld c, a
    ld d, h
    ld b, c

jr_01e_53a1:
    ld c, e
    ld b, l
    nop
    jr nz, jr_01e_53c6

    ld c, l
    ld c, c
    ld d, h
    ld d, e
    ld d, l
    ld d, d
    ld d, l
    jr nz, jr_01e_53f5

    ld d, l
    ld c, e
    ld d, l
    ld c, l
    ld c, a

jr_01e_53b4:
    ld d, h
    ld c, a

jr_01e_53b6:
    nop
    jr nz, jr_01e_53b9

jr_01e_53b9:
    jr nz, jr_01e_53bb

jr_01e_53bb:
    jr nz, jr_01e_53bd

jr_01e_53bd:
    jr nz, jr_01e_53bf

jr_01e_53bf:
    ld c, h
    ld b, l
    ld b, c
    ld b, h
    jr nz, jr_01e_540c

    ld d, d

jr_01e_53c6:
    ld b, c
    ld d, b
    ld c, b
    ld c, c
    ld b, e
    ld d, e
    nop
    jr nz, jr_01e_53cf

jr_01e_53cf:
    jr nz, jr_01e_53f1

    ld c, l
    ld c, c
    ld d, h
    ld d, e
    ld d, l
    ld d, d

jr_01e_53d7:
    ld d, l
    jr nz, jr_01e_5420

    ld d, l
    ld c, e
    ld d, l
    ld c, l
    ld c, a
    ld d, h
    ld c, a
    nop
    jr nz, jr_01e_5404

    ld c, l
    ld b, c
    ld d, e

jr_01e_53e7:
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_543a

    ld c, c
    ld c, e
    ld b, c
    ld c, l

jr_01e_53f1:
    ld c, c
    nop
    jr nz, jr_01e_5415

jr_01e_53f5:
    ld b, c
    ld c, e
    ld c, c
    ld c, b
    ld c, c
    ld d, h
    ld c, a
    jr nz, jr_01e_5449

    ld c, c
    ld c, l
    ld d, l
    ld d, d
    ld b, c
    nop

jr_01e_5404:
    jr nz, jr_01e_5406

jr_01e_5406:
    jr nz, jr_01e_5408

jr_01e_5408:
    jr nz, jr_01e_540a

jr_01e_540a:
    ld b, a
    ld d, d

jr_01e_540c:
    ld b, c
    ld d, b
    ld c, b
    ld c, c
    ld b, e
    ld d, e
    jr nz, jr_01e_5467

    ld d, h

jr_01e_5415:
    ld b, c
    ld b, [hl]
    ld b, [hl]
    nop
    jr nz, jr_01e_541b

jr_01e_541b:
    jr nz, jr_01e_543d

    ld b, [hl]
    ld d, l
    ld c, l

jr_01e_5420:
    ld c, c
    ld c, b
    ld c, c
    ld b, h
    ld b, l
    jr nz, jr_01e_5468

    ld c, a
    ld c, e
    ld c, c
    nop
    jr nz, jr_01e_544d

    ld c, l
    ld c, c
    ld d, h
    ld d, e
    ld d, l
    ld c, l
    ld b, c
    ld d, e
    ld b, c
    jr nz, jr_01e_5485

    ld d, l
    ld d, d

jr_01e_543a:
    ld b, c
    ld c, c
    ld d, e

jr_01e_543d:
    ld c, b
    ld c, c
    nop
    jr nz, jr_01e_5462

    ld d, e
    ld c, b
    ld c, c
    ld b, a
    ld b, l
    ld c, e
    ld c, c

jr_01e_5449:
    jr nz, jr_01e_5496

    ld c, c
    ld c, l

jr_01e_544d:
    ld d, l
    ld d, d
    ld b, c
    nop
    jr nz, jr_01e_5473

    ld c, d
    ld d, l
    ld c, [hl]
    ld c, c
    ld b, e
    ld c, b
    ld c, c
    jr nz, jr_01e_54ab

    ld b, e
    ld c, b
    ld c, c
    ld b, c
    ld c, c
    nop

jr_01e_5462:
    jr nz, jr_01e_5484

    ld c, b
    ld c, c
    ld d, d

jr_01e_5467:
    ld c, a

jr_01e_5468:
    ld d, h
    ld c, a
    jr nz, jr_01e_54ba

    ld b, c
    ld c, e
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    ld c, l

jr_01e_5473:
    ld b, c
    nop
    jr nz, jr_01e_5497

    ld c, l
    ld b, c
    ld d, e
    ld b, c
    ld e, c
    ld d, l
    ld c, e
    ld c, c
    jr nz, @+$4a

    ld b, c
    ld d, e
    ld c, b

jr_01e_5484:
    ld c, c

jr_01e_5485:
    ld c, l
    ld c, a
    ld d, h
    ld c, a
    nop
    jr nz, jr_01e_548c

jr_01e_548c:
    jr nz, jr_01e_548e

jr_01e_548e:
    jr nz, jr_01e_5490

jr_01e_5490:
    jr nz, jr_01e_5492

jr_01e_5492:
    jr nz, jr_01e_5494

jr_01e_5494:
    jr nz, jr_01e_5496

jr_01e_5496:
    ld c, l

jr_01e_5497:
    ld d, l
    ld d, e
    ld c, c
    ld b, e
    jr nz, jr_01e_54e0

    ld c, a
    ld c, l
    ld d, b
    ld c, a
    ld d, e
    ld b, l
    jr nz, jr_01e_54c5

    ld h, $00
    ld b, c
    ld d, d
    ld d, d
    ld b, c

jr_01e_54ab:
    ld c, [hl]
    ld b, a
    ld b, l
    ld c, l
    ld b, l
    ld c, [hl]
    ld d, h
    nop
    jr nz, jr_01e_54b5

jr_01e_54b5:
    jr nz, jr_01e_54d7

    ld c, l
    ld c, a
    ld d, h

jr_01e_54ba:
    ld c, a
    ld c, c
    jr nz, jr_01e_5511

    ld b, c
    ld c, e
    ld d, l
    ld d, d
    ld b, c
    ld b, d
    ld b, c

jr_01e_54c5:
    nop
    jr nz, jr_01e_54c8

jr_01e_54c8:
    jr nz, jr_01e_54ca

jr_01e_54ca:
    jr nz, jr_01e_54cc

jr_01e_54cc:
    jr nz, jr_01e_54ce

jr_01e_54ce:
    ld d, e
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, @+$47

    ld b, [hl]
    ld b, [hl]

jr_01e_54d7:
    ld b, l
    ld b, e
    ld d, h
    ld d, e
    jr nz, jr_01e_54fd

    ld h, $00
    ld d, e

jr_01e_54e0:
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, jr_01e_5535

    ld d, b
    ld b, l
    ld d, d
    ld b, c
    ld d, h
    ld c, a
    ld d, d
    nop
    jr nz, jr_01e_54f0

jr_01e_54f0:
    jr nz, jr_01e_5512

    ld d, h
    ld b, c
    ld c, e
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_5548

    ld c, a
    ld d, d

jr_01e_54fd:
    ld c, c
    ld c, a
    nop
    jr nz, jr_01e_5502

jr_01e_5502:
    jr nz, jr_01e_5504

jr_01e_5504:
    jr nz, jr_01e_5506

jr_01e_5506:
    jr nz, jr_01e_5508

jr_01e_5508:
    ld d, e
    ld c, a
    ld d, l
    ld c, [hl]
    ld b, h
    jr nz, @+$46

    ld c, c
    ld d, d

jr_01e_5511:
    ld b, l

jr_01e_5512:
    ld b, e
    ld d, h
    ld b, l
    ld b, h
    nop
    jr nz, jr_01e_5519

jr_01e_5519:
    jr nz, @+$22

    ld c, l
    ld b, c
    ld d, e
    ld b, c
    ld b, c
    ld c, e
    ld c, c
    jr nz, jr_01e_5579

    ld c, [hl]
    ld c, a
    nop
    jr nz, jr_01e_5529

jr_01e_5529:
    jr nz, jr_01e_552b

jr_01e_552b:
    jr nz, jr_01e_552d

jr_01e_552d:
    jr nz, jr_01e_552f

jr_01e_552f:
    ld d, e
    ld d, l
    ld d, b
    ld b, l
    ld d, d
    ld d, [hl]

jr_01e_5535:
    ld c, c
    ld d, e
    ld c, a
    ld d, d
    nop
    jr nz, jr_01e_553c

jr_01e_553c:
    jr nz, jr_01e_555e

    ld c, e
    ld b, l
    ld c, [hl]
    ld c, d
    ld c, c
    jr nz, jr_01e_5592

    ld c, c
    ld c, e
    ld c, c

jr_01e_5548:
    nop
    jr nz, jr_01e_556b

    ld d, e
    ld c, b
    ld c, c
    ld b, a
    ld b, l
    ld d, d
    ld d, l
    jr nz, jr_01e_55a1

    ld c, c
    ld e, c
    ld b, c
    ld c, l
    ld c, a
    ld d, h
    ld c, a
    nop
    jr nz, jr_01e_557e

jr_01e_555e:
    ld d, h
    ld b, c
    ld c, e
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_55bb

    ld b, l
    ld e, d
    ld d, l
    ld c, e

jr_01e_556b:
    ld b, c
    nop
    jr nz, jr_01e_558f

    ld c, e
    ld c, a
    ld c, d
    ld c, c
    jr nz, jr_01e_55c0

    ld c, a
    ld c, [hl]
    ld b, h
    ld c, a

jr_01e_5579:
    nop
    jr nz, @+$22

    ld c, b
    ld b, c

jr_01e_557e:
    ld d, d
    ld d, l
    ld c, e
    ld c, c
    jr nz, jr_01e_55cf

    ld c, a
    ld b, h
    ld b, l
    ld d, d
    ld b, c
    nop
    jr nz, jr_01e_55ac

    ld d, h
    ld c, a
    ld d, d

jr_01e_558f:
    ld d, l
    jr nz, jr_01e_55e6

jr_01e_5592:
    ld b, c
    ld c, e
    ld b, c
    ld c, l
    ld b, c
    ld d, h
    ld d, e
    ld d, l
    nop
    jr nz, jr_01e_559d

jr_01e_559d:
    jr nz, jr_01e_559f

jr_01e_559f:
    jr nz, jr_01e_55a1

jr_01e_55a1:
    jr nz, jr_01e_55a3

jr_01e_55a3:
    ld b, c
    ld d, e
    ld d, e
    ld c, c
    ld d, e
    ld d, h
    ld b, c
    ld c, [hl]
    ld d, h

jr_01e_55ac:
    jr nz, jr_01e_55f2

    ld c, c
    ld d, d
    ld b, l
    ld b, e
    ld d, h
    ld c, a
    ld d, d
    nop
    jr nz, jr_01e_55b8

jr_01e_55b8:
    jr nz, jr_01e_55da

    ld e, c

jr_01e_55bb:
    ld d, l
    ld d, e
    ld d, l
    ld c, e
    ld b, l

jr_01e_55c0:
    jr nz, jr_01e_5615

    ld d, l
    ld b, a
    ld c, c
    ld c, l
    ld c, a
    ld d, h
    ld c, a
    nop
    jr nz, jr_01e_55ec

    ld c, l
    ld b, c
    ld d, e

jr_01e_55cf:
    ld b, c
    ld b, c
    ld c, e
    ld c, c
    jr nz, jr_01e_562a

    ld c, [hl]
    ld c, a
    nop
    jr nz, jr_01e_55da

jr_01e_55da:
    jr nz, jr_01e_55dc

jr_01e_55dc:
    jr nz, jr_01e_55de

jr_01e_55de:
    jr nz, jr_01e_55e0

jr_01e_55e0:
    ld b, h
    ld c, c
    ld d, d
    ld b, l
    ld b, e
    ld d, h

jr_01e_55e6:
    ld b, l
    ld b, h
    jr nz, jr_01e_562c

    ld e, c
    nop

jr_01e_55ec:
    jr nz, jr_01e_55ee

jr_01e_55ee:
    jr nz, jr_01e_5610

    ld e, c
    ld b, c

jr_01e_55f2:
    ld d, e
    ld d, l
    ld c, b
    ld c, c
    ld d, d
    ld c, a
    jr nz, jr_01e_564e

    ld b, c
    ld b, a
    ld d, l
    ld b, e
    ld c, b
    ld c, c
    nop
    jr nz, jr_01e_5603

jr_01e_5603:
    jr nz, jr_01e_5605

jr_01e_5605:
    jr nz, jr_01e_5607

jr_01e_5607:
    jr nz, jr_01e_5609

jr_01e_5609:
    ld d, b
    ld d, d
    ld c, a
    ld b, h
    ld d, l
    ld b, e
    ld b, l

jr_01e_5610:
    ld b, h
    jr nz, jr_01e_5655

    ld e, c
    nop

jr_01e_5615:
    jr nz, jr_01e_5617

jr_01e_5617:
    jr nz, jr_01e_5639

    ld d, e
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, d
    ld c, c
    jr nz, jr_01e_5669

    ld b, c
    ld d, h
    ld b, c
    ld c, [hl]
    ld c, a
    nop
    jr nz, jr_01e_5649

    ld c, b

jr_01e_562a:
    ld c, c
    ld d, d

jr_01e_562c:
    ld c, a
    ld e, c
    ld d, l
    ld c, e
    ld c, c
    jr nz, jr_01e_5687

    ld b, c
    ld c, e
    ld b, c
    ld c, b
    ld b, c
    ld d, e

jr_01e_5639:
    ld c, b
    ld c, c
    nop
    jr nz, jr_01e_565e

    ld d, e
    ld c, b
    ld d, l
    ld b, a
    ld c, a
    jr nz, jr_01e_5699

    ld b, c
    ld c, e
    ld b, c
    ld c, b

jr_01e_5649:
    ld b, c
    ld d, e
    ld c, b
    ld c, c
    nop

jr_01e_564e:
    jr nz, jr_01e_5670

    ld c, b
    ld c, c
    ld b, h
    ld b, l
    ld d, h

jr_01e_5655:
    ld c, a
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_56a0

    ld c, [hl]
    ld b, h
    ld c, a

jr_01e_565e:
    nop
    jr nz, jr_01e_5661

jr_01e_5661:
    jr nz, jr_01e_5663

jr_01e_5663:
    jr nz, jr_01e_5665

jr_01e_5665:
    jr nz, jr_01e_5667

jr_01e_5667:
    ld b, l
    ld e, b

jr_01e_5669:
    ld b, l
    ld b, e
    ld d, l
    ld d, h
    ld c, c
    ld d, [hl]
    ld b, l

jr_01e_5670:
    jr nz, jr_01e_56c2

    ld d, d
    ld c, a
    ld b, h
    ld d, l
    ld b, e
    ld b, l
    ld d, d
    nop
    jr nz, jr_01e_567c

jr_01e_567c:
    jr nz, jr_01e_569e

    ld c, b
    ld c, c
    ld d, d
    ld c, a
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_56e0

jr_01e_5687:
    ld b, c
    ld c, l
    ld b, c
    ld d, l
    ld b, e
    ld c, b
    ld c, c
    nop
    jr nz, jr_01e_5691

jr_01e_5691:
    jr nz, jr_01e_5693

jr_01e_5693:
    jr nz, jr_01e_5695

jr_01e_5695:
    jr nz, jr_01e_5697

jr_01e_5697:
    ld b, a
    ld d, d

jr_01e_5699:
    ld b, c
    ld d, b
    ld c, b
    ld c, c
    ld b, e

jr_01e_569e:
    jr nz, jr_01e_56f3

jr_01e_56a0:
    ld d, l
    ld d, b
    ld d, b
    ld c, a
    ld d, d
    ld d, h
    nop
    jr nz, jr_01e_56a9

jr_01e_56a9:
    jr nz, @+$22

    ld e, c
    ld c, a
    ld d, l
    ld c, c
    ld b, e
    ld c, b
    ld c, c
    jr nz, jr_01e_56ff

    ld c, a
    ld d, h
    ld b, c
    ld b, d
    ld b, l
    nop
    jr nz, jr_01e_56dc

    ld e, c
    ld d, l
    ld d, e
    ld d, l
    ld c, e
    ld b, l

jr_01e_56c2:
    jr nz, jr_01e_5712

    ld b, c
    ld c, e
    ld b, c
    ld c, [hl]
    ld c, a
    nop
    jr nz, jr_01e_56cc

jr_01e_56cc:
    jr nz, jr_01e_56ce

jr_01e_56ce:
    jr nz, jr_01e_56d0

jr_01e_56d0:
    jr nz, jr_01e_56d2

jr_01e_56d2:
    ld b, c
    ld d, d
    ld d, h
    jr nz, jr_01e_572e

    ld c, a
    ld d, d
    ld c, e
    jr nz, jr_01e_5720

jr_01e_56dc:
    ld b, l
    ld d, e
    ld c, c
    ld b, a

jr_01e_56e0:
    ld c, [hl]
    ld b, l
    ld d, d
    nop
    jr nz, jr_01e_56e6

jr_01e_56e6:
    jr nz, @+$22

    ld d, d
    ld e, c
    ld d, l
    ld c, d
    ld c, c
    jr nz, jr_01e_5737

    ld b, c
    ld b, a
    ld c, c
    ld c, [hl]

jr_01e_56f3:
    ld c, a
    nop
    jr nz, jr_01e_5717

    ld e, c
    ld b, c
    ld d, e
    ld d, l
    ld c, a
    jr nz, jr_01e_5747

    ld c, [hl]

jr_01e_56ff:
    ld c, a
    ld d, l
    ld b, l
    nop
    jr nz, jr_01e_5705

jr_01e_5705:
    jr nz, jr_01e_5707

jr_01e_5707:
    jr nz, jr_01e_5709

jr_01e_5709:
    jr nz, jr_01e_570b

jr_01e_570b:
    ld c, h
    ld c, a
    ld b, e
    ld b, c
    ld c, h
    ld c, c
    ld e, d

jr_01e_5712:
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]

jr_01e_5717:
    nop
    jr nz, jr_01e_571a

jr_01e_571a:
    jr nz, jr_01e_573c

    ld c, l
    ld c, c
    ld b, e
    ld c, b

jr_01e_5720:
    ld b, l
    ld c, h
    ld c, h
    ld b, l
    jr nz, jr_01e_5776

    ld c, a
    ld d, a
    ld b, l
    ld d, d
    ld d, e
    nop
    jr nz, jr_01e_574e

jr_01e_572e:
    ld b, d
    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_01e_5788

    ld d, d
    ld c, c
    ld c, [hl]

jr_01e_5737:
    ld b, l
    ld c, [hl]
    nop
    jr nz, jr_01e_575c

jr_01e_573c:
    ld b, a
    ld d, d
    ld b, l
    ld b, a
    jr nz, @+$54

    ld c, c
    ld b, e
    ld c, b
    ld b, c
    ld d, d

jr_01e_5747:
    ld b, h
    ld d, e
    ld c, a
    ld c, [hl]
    nop
    jr nz, jr_01e_574e

jr_01e_574e:
    jr nz, jr_01e_5750

jr_01e_5750:
    jr nz, jr_01e_5752

jr_01e_5752:
    jr nz, jr_01e_5754

jr_01e_5754:
    ld b, e
    ld c, a
    ld c, a
    ld d, d
    ld b, h
    ld c, c
    ld c, [hl]
    ld b, c

jr_01e_575c:
    ld d, h
    ld c, a
    ld d, d
    nop
    jr nz, jr_01e_5762

jr_01e_5762:
    jr nz, jr_01e_5784

    ld d, h
    ld c, a
    ld d, e
    ld c, b
    ld c, c
    ld c, b
    ld b, c
    ld d, d
    ld d, l
    jr nz, jr_01e_57b8

    ld e, d
    ld d, l
    ld c, [hl]
    ld c, a
    nop
    jr nz, jr_01e_5796

jr_01e_5776:
    ld c, l
    ld b, c
    ld d, e
    ld b, c
    ld c, [hl]
    ld c, a
    ld d, d
    ld c, c
    jr nz, jr_01e_57d7

    ld b, c
    ld c, e
    ld b, l
    nop

jr_01e_5784:
    jr nz, jr_01e_5786

jr_01e_5786:
    jr nz, jr_01e_5788

jr_01e_5788:
    jr nz, jr_01e_578a

jr_01e_578a:
    jr nz, jr_01e_578c

jr_01e_578c:
    ld d, e
    ld d, b
    ld b, l
    ld b, e
    ld c, c
    ld b, c
    ld c, h
    jr nz, jr_01e_57e9

    ld c, b

jr_01e_5796:
    ld b, c
    ld c, [hl]
    ld c, e
    ld d, e
    jr nz, jr_01e_57f0

    ld c, a
    nop
    jr nz, jr_01e_57a0

jr_01e_57a0:
    jr nz, jr_01e_57c2

    ld c, [hl]
    ld c, c
    ld c, [hl]
    ld d, h
    ld b, l
    ld c, [hl]
    ld b, h
    ld c, a
    jr nz, jr_01e_57fe

    ld h, $44
    ld sp, $2000
    jr nz, jr_01e_57d3

    jr nz, @+$22

    jr nz, jr_01e_57f8

    ld d, d

jr_01e_57b8:
    ld d, h
    jr nz, jr_01e_5812

    ld c, a
    ld d, d
    ld c, e
    jr nz, jr_01e_5814

    ld b, l
    ld b, c

jr_01e_57c2:
    ld c, l
    nop
    jr nz, jr_01e_57e6

    ld c, e
    ld b, l
    ld c, c
    ld c, e
    ld c, a
    jr nz, jr_01e_57ed

    ld d, h
    ld b, c
    ld c, l
    ld d, l
    ld d, d
    ld b, c

jr_01e_57d3:
    nop
    jr nz, jr_01e_57f6

    ld c, e

jr_01e_57d7:
    ld b, c
    ld e, d
    ld d, l
    ld c, b
    ld c, c
    ld d, d
    ld c, a
    jr nz, jr_01e_582d

    ld b, c
    ld d, h
    ld d, e
    ld d, l
    ld c, l
    ld c, a

jr_01e_57e6:
    ld d, h
    ld c, a
    nop

jr_01e_57e9:
    jr nz, jr_01e_580b

    ld c, b
    ld c, c

jr_01e_57ed:
    ld d, d
    ld c, a
    ld c, e

jr_01e_57f0:
    ld c, a
    jr nz, @+$55

    ld d, l
    ld b, a
    ld c, c

jr_01e_57f6:
    ld c, [hl]
    ld c, a

jr_01e_57f8:
    nop
    jr nz, jr_01e_581b

    ld b, c
    ld d, h
    ld d, e

jr_01e_57fe:
    ld d, l
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_5853

    ld c, e
    ld b, c
    ld b, h
    ld b, c
    nop
    jr nz, @+$22

jr_01e_580b:
    ld c, [hl]
    ld c, a
    ld b, c
    jr nz, jr_01e_5854

    ld b, l
    ld b, d

jr_01e_5812:
    ld d, l
    ld b, a

jr_01e_5814:
    jr nz, jr_01e_5869

    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    nop

jr_01e_581b:
    jr nz, @+$22

    ld c, b
    ld c, c
    ld d, d
    ld c, a
    ld d, e
    ld c, b
    ld c, c
    jr nz, jr_01e_5879

    ld b, c
    ld d, h
    ld c, a
    nop
    jr nz, jr_01e_584c

    ld d, e

jr_01e_582d:
    ld d, l
    ld d, b
    ld b, l
    ld d, d
    jr nz, jr_01e_5880

    ld b, c
    ld d, d
    ld c, c
    ld c, a
    nop
    jr nz, jr_01e_585a

    jr nz, @+$22

    jr nz, jr_01e_585e

    jr nz, jr_01e_5860

    jr nz, @+$45

    ld c, h
    ld d, l
    ld b, d
    jr nz, jr_01e_589a

    ld d, h
    ld b, c
    ld b, [hl]
    ld b, [hl]
    nop

jr_01e_584c:
    jr nz, jr_01e_586e

    ld d, e
    ld c, b
    ld c, c
    ld c, [hl]
    ld c, c

jr_01e_5853:
    ld b, e

jr_01e_5854:
    ld c, b
    ld c, c
    jr nz, jr_01e_589c

    ld c, a
    ld c, c

jr_01e_585a:
    nop
    jr nz, jr_01e_587d

    ld c, a

jr_01e_585e:
    ld d, e
    ld b, c

jr_01e_5860:
    ld c, l
    ld d, l
    jr nz, jr_01e_58af

    ld d, l
    ld c, [hl]
    ld c, c
    ld c, l
    ld b, c

jr_01e_5869:
    ld d, e
    ld b, c
    nop
    jr nz, jr_01e_588e

jr_01e_586e:
    ld c, [hl]
    ld c, a
    ld d, d
    ld c, c
    ld e, c
    ld d, l
    ld c, e
    ld c, c
    jr nz, @+$50

    ld b, c

jr_01e_5879:
    ld c, e
    ld b, c
    ld b, a
    ld b, c

jr_01e_587d:
    ld c, l
    ld c, c
    nop

jr_01e_5880:
    jr nz, jr_01e_5882

jr_01e_5882:
    jr nz, jr_01e_5884

jr_01e_5884:
    jr nz, jr_01e_5886

jr_01e_5886:
    jr nz, jr_01e_5888

jr_01e_5888:
    jr nz, jr_01e_588a

jr_01e_588a:
    jr nz, jr_01e_588c

jr_01e_588c:
    jr nz, jr_01e_588e

jr_01e_588e:
    jr nz, jr_01e_5890

jr_01e_5890:
    jr nz, jr_01e_5892

jr_01e_5892:
    jr nz, @+$45

    ld b, c
    ld c, l
    ld b, l
    ld c, h
    ld c, a
    ld d, h

jr_01e_589a:
    jr nz, @+$45

jr_01e_589c:
    ld c, a
    ld l, $2c
    ld c, h
    ld d, h
    ld b, h
    ld l, $00
    jr nz, jr_01e_58a6

jr_01e_58a6:
    jr nz, @+$4f

    ld c, a
    ld c, [hl]
    ld b, l
    ld b, a
    ld c, c
    jr nz, @+$45

jr_01e_58af:
    ld c, a
    ld d, d
    ld d, b
    ld c, a
    ld d, d
    ld b, c
    ld d, h
    ld c, c
    ld c, a
    ld c, [hl]
    nop
    jr nz, jr_01e_58bc

jr_01e_58bc:
    jr nz, @+$50

    ld c, c
    ld c, [hl]
    ld d, h
    ld b, l
    ld c, [hl]
    ld b, h
    ld c, a
    jr nz, @+$45

    ld c, a
    ld l, $2c
    ld c, h
    ld d, h
    ld b, h
    ld l, $00
    jr nz, jr_01e_58d1

jr_01e_58d1:
    inc hl
    nop

    db $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $00, $50, $61, $6c, $6d
    db $20, $43, $6c, $75, $62, $00, $44, $75, $6e, $65, $20, $43, $6c, $75, $62, $00
    db $4c, $69, $6e, $6b, $73, $20, $43, $6c, $75, $62, $00, $46, $69, $65, $6c, $64
    db $00, $53, $68, $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $53
    db $68, $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32, $00, $41, $70, $70
    db $72, $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $41
    db $70, $70, $72, $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32
    db $00, $50, $75, $74, $74, $69, $6e, $67, $20, $43, $6f, $6e, $74, $65, $73, $74
    db $00, $53, $68, $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $53
    db $68, $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32, $00, $41, $70, $70
    db $72, $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $41
    db $70, $70, $72, $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32
    db $00, $50, $75, $74, $74, $69, $6e, $67, $20, $43, $6f, $6e, $74, $65, $73, $74
    db $00, $53, $68, $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $53
    db $68, $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32, $00, $41, $70, $70
    db $72, $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $41
    db $70, $70, $72, $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32
    db $00, $50, $75, $74, $74, $69, $6e, $67, $20, $43, $6f, $6e, $74, $65, $73, $74
    db $00, $41, $6c, $74, $65, $72, $6e, $61, $74, $65, $20, $47, $61, $6d, $65, $00
    db $53, $68, $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $53, $68
    db $6f, $74, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32, $00, $41, $70, $70, $72
    db $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $31, $00, $41, $70
    db $70, $72, $6f, $61, $63, $68, $20, $4c, $65, $73, $73, $6f, $6e, $20, $32, $00
    db $50, $75, $74, $74, $69, $6e, $67, $20, $43, $6f, $6e, $74, $65, $73, $74, $00
    db $53, $68, $6f, $74, $20, $43, $6f, $6e, $74, $65, $73, $74, $20, $31, $00, $53
    db $68, $6f, $74, $20, $43, $6f, $6e, $74, $65, $73, $74, $20, $32, $00, $41, $70
    db $70, $72, $6f, $61, $63, $68, $20, $43, $6f, $6e, $74, $65, $73, $74, $20, $31
    db $00, $41, $70, $70, $72, $6f, $61, $63, $68, $20, $43, $6f, $6e, $74, $65, $73
    db $74, $20, $32, $00, $57, $69, $6e, $64, $79, $20, $56, $61, $6c, $6c, $65, $79
    db $20, $48, $6f, $6c, $65, $20, $31, $00, $54, $69, $6e, $79, $2d, $54, $6f, $74
    db $73, $20, $47, $6f, $6c, $66, $20, $47, $72, $6f, $75, $6e, $64, $73, $20, $20
    db $00, $4d, $69, $6e, $69, $2d, $4d, $69, $6e, $69, $20, $4c, $61, $6b, $65, $20
    db $43, $6f, $75, $72, $73, $65, $00, $57, $69, $6e, $64, $79, $20, $56, $61, $6c
    db $6c, $65, $79, $20, $48, $6f, $6c, $65, $20, $32, $00, $52, $61, $76, $65, $6e
    db $20, $57, $6f, $6f, $64, $73, $20, $43, $6f, $75, $72, $73, $65, $00, $47, $6f
    db $6c, $66, $20, $47, $75, $72, $75, $27, $73, $20, $50, $69, $74, $63, $68, $20
    db $26, $20, $50, $75, $74, $74, $20, $20, $00, $4e, $61, $76, $69, $67, $61, $74
    db $69, $6f, $6e, $00, $4d, $61, $72, $69, $6f, $6e, $20, $43, $6c, $75, $62, $00
    db $50, $61, $6c, $6d, $20, $43, $6c, $75, $62, $00, $44, $75, $6e, $65, $20, $43
    db $6c, $75, $62, $00, $4c, $69, $6e, $6b, $73, $20, $43, $6c, $75, $62, $00, $50
    db $65, $61, $63, $68, $27, $73, $20, $43, $61, $73, $74, $6c, $65, $00, $47, $6f
    db $6c, $66, $20, $43, $6c, $69, $6e, $69, $63, $20, $00, $43, $6c, $75, $62, $20
    db $4d, $61, $6b, $65, $72, $27, $73, $20, $48, $75, $74, $00, $57, $69, $6e, $64
    db $79, $20, $56, $61, $6c, $6c, $65, $79, $20, $48, $6f, $6c, $65, $20, $31, $00
    db $57, $69, $6e, $64, $79, $20, $56, $61, $6c, $6c, $65, $79, $20, $48, $6f, $6c
    db $65, $20, $32, $00, $54, $69, $6e, $79, $2d, $54, $6f, $74, $73, $20, $47, $6f
    db $6c, $66, $20, $47, $72, $6f, $75, $6e, $64, $73, $00, $4d, $69, $6e, $69, $2d
    db $4d, $69, $6e, $69, $20, $4c, $61, $6b, $65, $20, $43, $6f, $75, $72, $73, $65
    db $00, $52, $61, $76, $65, $6e, $20, $57, $6f, $6f, $64, $73, $20, $43, $6f, $75
    db $72, $73, $65, $00, $47, $6f, $6c, $66, $20, $47, $75, $72, $75, $27, $73, $20
    db $50, $69, $74, $63, $68, $20, $26, $20, $50, $75, $74, $74, $00, $51, $75, $69
    db $74, $00, $41, $20, $2d, $20, $42, $00, $43, $20, $2d, $20, $44, $00, $45, $20
    db $2d, $20, $46, $00

    ld b, a
    jr nz, jr_01e_5c47

    jr nz, jr_01e_5c65

    nop
    ld c, d
    jr nz, jr_01e_5c4d

    jr nz, jr_01e_5c6f

    nop
    ld c, [hl]
    jr nz, jr_01e_5c53

    jr nz, jr_01e_5c78

    nop
    ld d, c
    jr nz, jr_01e_5c59

    jr nz, jr_01e_5c80

    nop
    ld d, e
    jr nz, jr_01e_5c5f

    jr nz, @+$56

    nop
    ld d, l
    jr nz, jr_01e_5c65

    jr nz, jr_01e_5c92

    nop
    ld e, c
    jr nz, jr_01e_5c6b

    jr nz, jr_01e_5c9a

    nop
    ld b, c
    ld [hl], e
    ld l, e
    jr nz, jr_01e_5ca7

    ld h, d

jr_01e_5c47:
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $6f67

jr_01e_5c4d:
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5cc5

    ld h, l
    ld [hl], d

jr_01e_5c53:
    ld l, l
    ld [hl], e
    ld l, $03
    nop
    ld b, c

jr_01e_5c59:
    ld [hl], e
    ld l, e
    jr nz, jr_01e_5cbe

    ld h, d
    ld l, a

jr_01e_5c5f:
    ld [hl], l
    ld [hl], h
    ld bc, $6f67
    ld l, h

jr_01e_5c65:
    ld h, [hl]
    jr nz, jr_01e_5cda

    ld [hl], l
    ld l, h
    ld h, l

jr_01e_5c6b:
    ld [hl], e
    ld l, $03
    nop

jr_01e_5c6f:
    ld b, c
    ld [hl], e
    ld l, e
    jr nz, jr_01e_5cd5

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h

jr_01e_5c78:
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5ce4

    ld [hl], c

jr_01e_5c80:
    ld [hl], l
    ld l, c
    ld [hl], b
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $03
    nop
    ld b, c
    ld [hl], e
    ld l, e
    jr nz, jr_01e_5cf0

    ld h, d
    ld l, a
    ld [hl], l

jr_01e_5c92:
    ld [hl], h
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5d0e

jr_01e_5c9a:
    ld h, l
    ld h, e
    ld l, b
    ld l, [hl]
    ld l, c
    ld [hl], c
    ld [hl], l
    ld h, l
    ld [hl], e
    ld l, $03
    nop
    ld b, c

jr_01e_5ca7:
    ld [hl], e
    ld l, e
    jr nz, jr_01e_5d0c

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld bc, $6f67
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5d1c

    ld h, c
    ld h, e
    ld l, c
    ld l, h
    ld l, c
    ld [hl], h
    ld l, c
    ld h, l

jr_01e_5cbe:
    ld [hl], e
    ld l, $03
    nop
    ld d, [hl]
    ld l, c
    ld h, l

jr_01e_5cc5:
    ld [hl], a
    jr nz, jr_01e_5d3c

    ld l, b
    ld h, l
    jr nz, jr_01e_5d31

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    ld bc, $6964
    ld h, e

jr_01e_5cd5:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c

jr_01e_5cda:
    ld [hl], d
    ld a, c
    jr nz, jr_01e_5d46

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $03
    nop

jr_01e_5ce4:
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5d63

    ld l, a
    ld [hl], l
    ld h, a
    ld l, a
    jr nz, jr_01e_5d5a

jr_01e_5cf0:
    ld l, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5d6d

    ld [hl], l
    ld l, h
    ld h, l
    jr nz, jr_01e_5d6a

    ld l, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5d6f

    ld l, a

jr_01e_5d0c:
    ld [hl], l
    ld h, a

jr_01e_5d0e:
    ld [hl], l
    jr nz, jr_01e_5d7b

    ld l, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5d83

jr_01e_5d1c:
    ld l, c
    ld l, d
    ld a, c
    ld [hl], l
    ld [hl], h
    ld [hl], l
    jr nz, jr_01e_5d8e

    ld l, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5da2

    ld l, c
    ld [hl], e

jr_01e_5d31:
    ld h, l
    ld [hl], h
    ld [hl], l
    jr nz, jr_01e_5da0

    ld l, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld b, a

jr_01e_5d3c:
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5daa

    ld l, [hl]
    ld h, h
    ld h, l
    ld a, b
    nop

jr_01e_5d46:
    ld b, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_5db6

    ld l, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    nop
    ld h, c
    ld h, h
    ld h, h
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    nop
    ld h, c

jr_01e_5d5a:
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    nop
    ld h, c
    ld h, a

jr_01e_5d63:
    ld h, l
    jr nz, jr_01e_5dd9

    ld l, b
    ld l, a
    ld l, a
    ld [hl], h

jr_01e_5d6a:
    nop
    ld h, c
    ld l, h

jr_01e_5d6d:
    ld h, d
    ld h, c

jr_01e_5d6f:
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    nop
    ld h, c
    ld l, h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, [hl]

jr_01e_5d7b:
    ld h, c
    ld [hl], h
    ld h, l
    nop
    ld h, c
    ld [hl], b
    ld [hl], b
    ld [hl], d

jr_01e_5d83:
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    nop
    ld h, c
    ld [hl], h
    jr nz, jr_01e_5e00

    ld l, b
    ld h, l

jr_01e_5d8e:
    jr nz, jr_01e_5e04

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    nop
    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    nop
    ld h, c
    db $76
    ld h, l
    ld [hl], d

jr_01e_5da0:
    ld h, c
    ld h, a

jr_01e_5da2:
    ld h, l
    jr nz, jr_01e_5e09

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    nop

jr_01e_5daa:
    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01e_5e23

    ld [hl], l
    ld [hl], h
    ld [hl], h

jr_01e_5db6:
    ld [hl], e
    nop
    ld h, c
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01e_5e34

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    nop
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    nop
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    nop
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    ld [hl], e

jr_01e_5dd9:
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, d
    ld h, c
    ld h, [hl]
    ld h, [hl]
    ld a, c
    nop
    ld h, d
    ld h, c
    ld l, h
    ld l, h
    nop
    ld h, d
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_01e_5e56

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld h, d
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01e_5e5f

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    nop

jr_01e_5e00:
    ld h, d
    ld h, l
    ld [hl], e
    ld [hl], h

jr_01e_5e04:
    jr nz, jr_01e_5e6d

    ld [hl], d
    ld l, a
    ld [hl], e

jr_01e_5e09:
    ld [hl], e
    nop
    ld h, d
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01e_5e84

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    nop
    ld h, d
    ld h, l
    ld [hl], h
    nop
    ld h, d
    ld l, c
    ld [hl], d
    ld h, h
    ld l, c
    ld h, l
    nop
    ld h, d
    ld l, h

jr_01e_5e23:
    ld l, c
    ld l, [hl]
    ld h, h
    nop
    ld h, d
    ld l, a
    ld h, a
    ld h, l
    ld a, c
    nop
    ld h, e
    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    nop

jr_01e_5e34:
    ld h, e
    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_01e_5ea9

    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    nop
    ld h, e
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    nop
    ld h, e
    ld l, b
    ld l, c
    ld [hl], b
    jr nz, jr_01e_5ec1

    ld l, b
    ld l, a
    ld [hl], h
    nop
    ld h, e
    ld l, b
    ld l, c
    ld [hl], b

jr_01e_5e56:
    dec l
    ld l, c
    ld l, [hl]
    nop
    ld h, e
    ld l, h
    ld h, l
    ld h, l
    ld l, e

jr_01e_5e5f:
    nop
    ld h, e
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01e_5edd

    ld l, a
    jr nz, jr_01e_5edc

    ld l, c

jr_01e_5e6d:
    ld l, [hl]
    nop
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    nop
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01e_5edd

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld h, e
    ld l, h

jr_01e_5e84:
    ld [hl], l
    ld h, d
    jr nz, jr_01e_5eeb

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, b
    ld l, c
    ld [hl], b
    nop
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    jr nz, jr_01e_5f0d

    ld h, l
    ld [hl], h
    nop
    ld h, e
    ld l, h
    ld [hl], l
    ld h, d
    ld l, b
    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    nop
    ld h, e
    ld l, a

jr_01e_5ea9:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    nop
    ld h, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    jr nz, jr_01e_5f22

    ld h, c
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld h, e
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_01e_5ec1:
    ld h, l
    jr nz, jr_01e_5f36

    ld h, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, e
    ld [hl], d
    ld h, l
    ld h, l
    ld l, e
    nop
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    dec l
    ld h, d
    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d

jr_01e_5edc:
    nop

jr_01e_5edd:
    ld h, e
    ld [hl], l
    ld [hl], b
    nop
    ld h, e
    ld [hl], l
    ld [hl], b
    jr nz, jr_01e_5f4f

    ld l, [hl]
    nop
    ld h, h
    ld h, l
    ld h, c

jr_01e_5eeb:
    ld h, h
    nop
    ld h, h
    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_01e_5f65

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, l
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_5f66

    ld l, b
    ld h, c
    ld l, l
    ld [hl], b
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld h, h
    ld l, c

jr_01e_5f0d:
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    nop
    ld h, h
    ld l, c
    db $76
    ld l, a
    ld [hl], h
    nop
    ld h, h
    ld l, a
    ld h, a
    ld l, h
    ld h, l
    ld h, a
    nop
    ld h, h
    ld l, a
    ld [hl], d

jr_01e_5f22:
    ld l, l
    ld l, c
    ld h, l
    nop
    ld h, h
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01e_5f90

    ld l, a
    ld h, a
    ld h, l
    ld a, c
    nop
    ld h, h
    ld l, a
    ld [hl], a

jr_01e_5f36:
    ld l, [hl]
    ld [hl], e
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, h
    ld [hl], d
    ld h, c
    ld [hl], a
    nop
    ld h, h
    ld [hl], d
    ld l, c
    db $76
    ld h, l
    ld [hl], d
    nop
    ld h, h
    ld [hl], d
    ld l, c
    db $76
    ld l, c
    ld l, [hl]

jr_01e_5f4f:
    ld h, a
    jr nz, jr_01e_5fb5

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], e
    ld [hl], h
    nop
    ld h, h
    ld [hl], d
    ld l, a
    ld [hl], b
    nop
    ld h, h
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    nop
    ld h, l
    ld h, c

jr_01e_5f65:
    ld h, a

jr_01e_5f66:
    ld l, h
    ld h, l
    nop
    ld h, l
    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_01e_5fdf

    ld h, c
    ld [hl], d
    nop
    ld h, l
    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld h, [hl]
    ld h, c
    ld h, e
    ld h, l
    nop
    ld h, [hl]
    ld h, c
    ld h, h
    ld h, l
    nop
    ld h, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    nop
    ld h, [hl]
    ld h, c

jr_01e_5f90:
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01e_5ff9

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    nop
    ld h, [hl]
    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01e_601d

    ld l, a
    ld l, a
    ld h, h
    nop
    ld h, [hl]
    ld l, h
    ld l, c
    ld h, l
    ld [hl], d
    nop
    ld h, [hl]
    ld l, a
    ld l, h
    ld l, h
    ld l, a

jr_01e_5fb5:
    ld [hl], a
    jr nz, jr_01e_602c

    ld l, b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld l, e
    nop
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld [hl], h
    nop
    ld h, a
    ld h, c
    ld l, l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01e_604a

    ld l, b
    ld l, a
    ld [hl], h
    nop
    ld h, a
    ld l, c
    ld l, l
    ld l, l

jr_01e_5fdf:
    ld h, l
    nop
    ld h, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01e_605c

    ld [hl], b
    nop
    ld h, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_6051

    ld h, c
    ld h, a
    nop
    ld h, a
    ld l, a
    ld l, h
    ld h, [hl]
    jr nz, jr_01e_605b

    ld l, h

jr_01e_5ff9:
    ld [hl], l
    ld h, d
    nop
    ld h, a
    ld l, a
    ld l, h
    ld h, [hl]
    ld h, l
    ld [hl], d
    nop
    ld h, a
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    jr nz, jr_01e_606c

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    nop
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld h, a
    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_01e_6082

jr_01e_601d:
    ld h, h
    ld h, a
    ld h, l
    nop
    ld h, a
    ld [hl], d
    ld l, c
    ld [hl], b
    nop
    ld h, a
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    nop

jr_01e_602c:
    ld h, a
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_01e_6095

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    nop
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], b
    nop
    ld l, b
    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld l, b

jr_01e_604a:
    ld h, l
    ld h, c
    ld h, h
    nop
    ld l, b
    ld h, l
    ld h, c

jr_01e_6051:
    ld [hl], h
    ld l, b
    nop
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    nop
    ld l, b
    ld l, a

jr_01e_605b:
    ld l, h

jr_01e_605c:
    ld h, l
    jr nz, jr_01e_60c8

    ld l, [hl]
    jr nz, jr_01e_60d1

    ld l, [hl]
    ld h, l
    nop
    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01e_60da

    ld [hl], l

jr_01e_606c:
    ld [hl], h
    nop
    ld l, b
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_01e_60dc

    ld l, a
    ld l, h
    ld h, l
    nop
    ld l, b
    ld l, a
    ld l, [hl]
    ld l, a
    ld [hl], d
    nop
    ld l, b
    ld l, a
    ld l, a
    ld l, e

jr_01e_6082:
    nop
    ld l, c
    ld l, l
    ld [hl], b
    ld h, c
    ld h, e
    ld [hl], h
    nop
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    dec l
    ld l, a
    ld [hl], l
    ld [hl], h
    nop

jr_01e_6095:
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    nop
    ld l, c
    ld [hl], d
    ld l, a
    ld l, [hl]
    nop
    ld l, h
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld h, c
    ld l, h
    jr nz, jr_01e_6126

    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01e_611d

    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld l, h
    ld l, c
    ld h, l
    nop
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, l
    nop
    ld l, h
    ld l, c
    ld l, [hl]
    ld l, e

jr_01e_60c8:
    ld [hl], e
    nop
    ld l, h
    ld l, a
    ld h, d
    jr nz, jr_01e_6142

    ld l, b
    ld l, a

jr_01e_60d1:
    ld [hl], h
    nop
    ld l, h
    ld l, a
    ld h, [hl]
    ld [hl], h
    nop
    ld l, h
    ld l, a

jr_01e_60da:
    ld l, [hl]
    ld h, a

jr_01e_60dc:
    jr nz, jr_01e_6146

    ld l, a
    ld l, h
    ld h, l
    nop
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_6151

    ld [hl], d
    ld l, a
    ld l, [hl]
    nop
    ld l, h
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_01e_6154

    ld h, c
    ld l, h
    ld l, h
    nop
    ld l, l
    ld h, c
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], d
    nop
    ld l, l
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01e_6174

    ld l, h
    ld h, c
    ld a, c
    nop
    ld l, l
    ld h, l
    ld h, l
    ld [hl], h
    jr nz, jr_01e_616f

    ld [hl], d
    ld h, l
    ld h, c
    nop
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    nop
    ld l, l
    ld l, c
    ld h, h
    ld h, h

jr_01e_611d:
    ld l, h
    ld h, l
    jr nz, jr_01e_6189

    ld l, a
    ld l, h
    ld h, l
    nop
    ld l, l

jr_01e_6126:
    ld l, c
    ld h, h
    ld h, h
    ld l, h
    ld h, l
    jr nz, jr_01e_6196

    ld [hl], d
    ld l, a
    ld l, [hl]
    nop
    ld l, l
    ld l, c
    ld [hl], e
    dec l
    ld l, b
    ld l, c
    ld [hl], h
    nop
    ld l, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld l, [hl]
    ld h, c
    ld [hl], e

jr_01e_6142:
    ld [hl], e
    ld h, c
    ld [hl], l
    nop

jr_01e_6146:
    ld l, [hl]
    ld h, l
    ld h, e
    ld l, e
    nop
    ld l, [hl]
    ld h, l
    ld [hl], h
    nop
    ld c, a
    ld b, d

jr_01e_6151:
    nop
    ld l, a
    ld l, [hl]

jr_01e_6154:
    nop
    ld l, a
    ld l, [hl]
    jr nz, jr_01e_61bf

    ld h, c
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_01e_61d1

    ld h, l
    ld [hl], d
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    ld [hl], e

jr_01e_616f:
    ld l, c
    ld h, h
    ld h, l
    dec l
    ld l, c

jr_01e_6174:
    ld l, [hl]
    nop
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01e_61ec

    ld h, c
    ld [hl], d
    nop
    ld [hl], b
    ld h, c
    ld [hl], d
    nop
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_01e_61f7

    ld l, [hl]

jr_01e_6189:
    nop
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_01e_61fe

    ld l, [hl]
    jr nz, jr_01e_6202

    ld h, l
    ld [hl], d
    ld h, e
    ld h, l

jr_01e_6196:
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    nop
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_01e_6211

    ld l, h
    ld h, c
    ld a, c
    nop
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_01e_621d

    ld h, c
    db $76
    ld h, l
    nop
    ld [hl], b
    ld h, c
    ld [hl], d
    jr nz, jr_01e_6226

    ld h, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_01e_6229

    ld h, l
    ld [hl], d
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_01e_61bf:
    ld h, c
    ld h, a
    ld h, l
    nop
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, c
    ld l, h
    ld [hl], h
    ld a, c
    nop
    ld [hl], b
    ld l, c
    ld l, [hl]
    nop
    ld [hl], b
    ld l, c

jr_01e_61d1:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01e_6249

    ld l, b
    ld l, a
    ld [hl], h
    nop
    ld [hl], b
    ld l, c
    ld [hl], h
    ld h, e
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_625b

    ld h, l
    ld h, h
    ld h, a
    ld h, l
    nop
    ld [hl], b
    ld l, h
    ld h, c

jr_01e_61ec:
    ld a, c
    ld l, a
    ld h, [hl]
    ld h, [hl]
    nop
    ld [hl], b
    ld l, a
    ld [hl], h
    jr nz, jr_01e_6258

    ld [hl], l

jr_01e_61f7:
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    nop
    ld [hl], b
    ld [hl], l

jr_01e_61fe:
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d

jr_01e_6202:
    nop
    ld [hl], b
    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_6278

    ld l, c
    ld l, [hl]
    ld h, l
    nop
    ld [hl], d

jr_01e_6211:
    ld h, c
    ld l, e
    ld h, l
    nop
    ld [hl], d
    ld h, l
    ld h, e
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld a, c

jr_01e_621d:
    nop
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    nop
    ld [hl], d
    ld l, a

jr_01e_6226:
    ld [hl], l
    ld l, [hl]
    ld h, h

jr_01e_6229:
    nop
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    nop
    ld [hl], d
    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], e
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01e_62af

    ld h, c
    db $76
    ld h, l
    ld [hl], e
    jr nz, jr_01e_62b2

    ld h, l
    ld [hl], d
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld h, c

jr_01e_6249:
    ld h, a
    ld h, l
    nop
    ld [hl], e
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01e_62c9

    ld h, l
    ld h, h
    ld h, a
    ld h, l
    nop
    ld [hl], e

jr_01e_6258:
    ld h, e
    ld l, a
    ld [hl], d

jr_01e_625b:
    ld h, l
    nop
    ld [hl], e
    ld h, e
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    nop
    ld [hl], e
    ld h, l
    ld l, l
    ld l, c
    dec l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    nop
    ld [hl], e
    ld l, b
    ld h, c
    ld h, [hl]
    ld [hl], h
    nop
    ld [hl], e
    ld l, b

jr_01e_6278:
    ld h, c
    ld l, [hl]
    ld l, e
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01e_62eb

    ld l, a
    ld l, h
    ld h, l
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_01e_62f7

    ld [hl], d
    ld l, a
    ld l, [hl]
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, e
    ld [hl], l
    ld [hl], h
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], h
    nop
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    jr nz, @+$64

    ld [hl], l
    ld l, [hl]
    ld l, e
    ld h, l
    ld [hl], d
    nop
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_01e_62af:
    ld l, e
    nop
    ld [hl], e

jr_01e_62b2:
    ld l, h
    ld l, c
    ld h, e
    ld h, l
    nop
    ld [hl], e
    ld l, h
    ld l, a
    ld [hl], a
    jr nz, jr_01e_632d

    ld l, h
    ld h, c
    ld a, c
    nop
    ld [hl], e
    ld l, a
    ld l, h
    ld h, l
    nop
    ld [hl], e
    ld [hl], b
    ld l, c

jr_01e_62c9:
    ld l, [hl]
    nop
    ld [hl], e
    ld [hl], b
    ld l, a
    ld l, a
    ld l, [hl]
    nop
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld [hl], e
    ld [hl], h
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    nop
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    nop
    ld [hl], e
    ld [hl], h
    ld a, c
    ld l, l
    ld l, c

jr_01e_62eb:
    ld h, l
    nop
    ld [hl], e
    ld [hl], l
    ld h, h
    ld h, h
    ld h, l
    ld l, [hl]
    jr nz, jr_01e_6359

    ld h, l
    ld h, c

jr_01e_62f7:
    ld [hl], h
    ld l, b
    nop
    ld [hl], e
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld h, l
    ld h, l
    nop
    ld [hl], h
    ld h, l
    ld h, l
    jr nz, jr_01e_6370

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld [hl], h
    ld h, l
    ld h, l
    jr nz, jr_01e_6381

    ld h, c
    ld [hl], d
    ld l, e
    ld h, l
    ld [hl], d
    nop
    ld [hl], h
    ld h, l
    ld h, l
    jr nz, jr_01e_6392

    ld l, b
    ld l, a
    ld [hl], h
    nop
    ld [hl], h
    ld h, l
    ld h, l
    jr nz, jr_01e_639d

    ld [hl], b
    nop
    ld [hl], h
    ld l, a
    ld [hl], b

jr_01e_632d:
    nop
    ld [hl], h
    ld l, a
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    nop
    ld [hl], h
    ld l, a
    ld [hl], h
    ld h, c
    ld l, h
    jr nz, jr_01e_63a1

    ld [hl], d
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01e_63a7

    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    nop
    ld [hl], h
    ld l, a
    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld [hl], h
    ld [hl], d
    ld l, c

jr_01e_6359:
    ld [hl], b
    ld l, h
    ld h, l
    jr nz, jr_01e_63c0

    ld l, a
    ld h, a
    ld h, l
    ld a, c
    nop
    ld [hl], h
    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    jr nz, jr_01e_63df

    ld l, b
    ld l, a
    ld [hl], h
    nop

jr_01e_6370:
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    jr nz, jr_01e_63e7

    ld h, c
    ld [hl], d
    nop
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld [hl], l
    ld l, h
    ld h, c
    ld [hl], h

jr_01e_6381:
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld [hl], l
    ld l, [hl]
    ld [hl], b
    ld l, h
    ld h, c
    ld a, c
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    nop
    ld [hl], l
    ld [hl], b

jr_01e_6392:
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    nop
    db $76
    ld l, c
    ld [hl], e
    ld l, c
    ld [hl], h

jr_01e_639d:
    ld l, a
    ld [hl], d
    nop
    ld [hl], a

jr_01e_63a1:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    jr nz, jr_01e_6408

jr_01e_63a7:
    ld [hl], d
    ld h, l
    ld h, c
    nop
    ld [hl], a
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_01e_641a

    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld [hl], a
    ld h, l
    ld h, h
    ld h, a
    ld h, l
    nop
    ld [hl], a
    ld l, a

jr_01e_63c0:
    ld l, a
    ld h, h
    nop
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld a, c
    ld h, c
    ld [hl], d
    ld h, h
    ld h, c
    ld h, a
    ld h, l
    nop
    ld a, c
    ld l, c
    ld [hl], b
    ld [hl], e
    nop
    ld d, h
    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_643e

    jr nz, jr_01e_6452

jr_01e_63df:
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6e61

jr_01e_63e7:
    ld h, h
    jr nz, jr_01e_645a

    ld [hl], d
    ld h, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f74
    jr nz, jr_01e_645f

    ld l, c
    ld [hl], h
    jr nz, jr_01e_646f

    ld l, b
    ld h, l
    jr nz, jr_01e_6461

    ld h, c
    ld l, h
    ld l, h
    ld l, $02
    ld c, c
    ld l, [hl]
    jr nz, jr_01e_6469

jr_01e_6408:
    jr nz, jr_01e_6472

    ld h, c
    ld a, d
    ld h, c
    ld [hl], d
    ld h, h
    inc l
    jr nz, jr_01e_648b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld bc, $6c63
    ld [hl], l
    ld h, d

jr_01e_641a:
    jr nz, jr_01e_6489

    ld h, c
    ld a, c
    jr nz, jr_01e_648e

    ld l, a
    ld [hl], h
    jr nz, jr_01e_6498

    ld l, a
    ld [hl], l
    ld h, e
    ld l, b
    ld bc, $6874
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $03
    nop
    ld d, d
    ld h, l
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$76

jr_01e_643e:
    ld l, a
    jr nz, jr_01e_64a9

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_64aa

    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01e_64b9

    ld l, [hl]
    ld [hl], h

jr_01e_6452:
    ld l, a
    jr nz, jr_01e_64c9

    ld l, b
    ld h, l
    jr nz, @+$79

    ld l, c

jr_01e_645a:
    ld l, [hl]
    ld h, h
    ld l, $01
    ld d, h

jr_01e_645f:
    ld l, b
    ld h, l

jr_01e_6461:
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_01e_64df

    ld l, a

jr_01e_6469:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_01e_64d5

    ld l, a

jr_01e_646f:
    ld [bc], a
    ld h, c
    ld [hl], e

jr_01e_6472:
    jr nz, jr_01e_64da

    ld h, c
    ld [hl], d
    inc l
    jr nz, jr_01e_64ec

    ld l, a
    jr nz, jr_01e_64f1

    ld [hl], e
    ld h, l
    jr nz, jr_01e_64e1

    ld bc, $6f6d
    ld [hl], d
    ld h, l
    jr nz, jr_01e_64f7

    ld l, a
    ld [hl], a

jr_01e_6489:
    ld h, l
    ld [hl], d

jr_01e_648b:
    ld h, [hl]
    ld [hl], l
    ld l, h

jr_01e_648e:
    jr nz, jr_01e_64f3

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $726f
    jr nz, jr_01e_6500

jr_01e_6498:
    ld l, c
    ld [hl], h
    jr nz, jr_01e_6510

    ld l, b
    ld h, l
    jr nz, jr_01e_6502

    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$6e

    ld l, a
    ld [hl], a
    ld l, $03

jr_01e_64a9:
    nop

jr_01e_64aa:
    ld d, e
    ld h, e
    ld l, a
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6e

    ld h, l
    ld [hl], e
    ld [hl], e
    jr nz, jr_01e_652c

    ld l, b

jr_01e_64b9:
    ld h, c
    ld l, [hl]
    ld bc, $6f79
    ld [hl], l
    ld [hl], d
    jr nz, jr_01e_6523

    ld h, a
    ld h, l
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_01e_652a

jr_01e_64c9:
    ld bc, $6f72
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_01e_653b

    ld l, a

jr_01e_64d5:
    ld l, h
    ld h, [hl]
    ld l, $03
    nop

jr_01e_64da:
    ld b, c
    jr nz, @+$75

    ld h, e
    ld l, a

jr_01e_64df:
    ld [hl], d
    ld h, l

jr_01e_64e1:
    jr nz, jr_01e_6552

    ld h, [hl]
    jr nz, jr_01e_6519

    ld bc, $7473
    ld [hl], d
    ld l, a
    ld l, e

jr_01e_64ec:
    ld h, l
    ld [hl], e
    jr nz, jr_01e_6565

    ld l, [hl]

jr_01e_64f1:
    ld h, h
    ld h, l

jr_01e_64f3:
    ld [hl], d
    ld bc, $6170

jr_01e_64f7:
    ld [hl], d
    jr nz, jr_01e_6569

    ld l, [hl]
    jr nz, jr_01e_655e

    jr nz, @+$6a

    ld l, a

jr_01e_6500:
    ld l, h
    ld h, l

jr_01e_6502:
    ld l, $02
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01e_657e

    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld h, l
    ld [hl], d

jr_01e_6510:
    jr nz, jr_01e_6586

    ld l, a
    ld bc, $6567
    ld [hl], h
    jr nz, jr_01e_658d

jr_01e_6519:
    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01e_657f

    jr nz, jr_01e_6588

    ld l, a
    ld l, h
    ld h, l

jr_01e_6523:
    ld bc, $6e69
    jr nz, jr_01e_6597

    ld l, [hl]
    ld h, l

jr_01e_652a:
    ld l, $03

jr_01e_652c:
    nop
    ld b, c
    jr nz, jr_01e_6597

    ld h, c
    ld l, l
    ld h, l
    jr nz, jr_01e_659e

    ld l, [hl]
    jr nz, jr_01e_65af

    ld l, b
    ld l, c
    ld h, e

jr_01e_653b:
    ld l, b
    jr nz, @+$63

    ld bc, $6574
    ld h, c
    ld l, l
    jr nz, jr_01e_65b4

    ld h, [hl]
    jr nz, jr_01e_65b8

    ld l, h
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    ld [hl], e
    ld bc, $6174
    ld l, e

jr_01e_6552:
    ld h, l
    ld [hl], e
    jr nz, jr_01e_65ca

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    ld [hl], e
    jr nz, jr_01e_65c4

    ld l, c
    ld [hl], h

jr_01e_655e:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld [hl], h
    ld l, b

jr_01e_6565:
    ld h, l
    jr nz, jr_01e_65db

    ld h, c

jr_01e_6569:
    ld l, l
    ld h, l
    jr nz, jr_01e_65cf

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01e_65e9

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    dec l
    ld h, h
    ld l, c
    ld [hl], e

jr_01e_657e:
    ld [hl], h

jr_01e_657f:
    ld h, c
    ld l, [hl]
    ld h, e
    ld h, l
    ld bc, $6873

jr_01e_6586:
    ld l, a
    ld [hl], h

jr_01e_6588:
    jr nz, @+$76

    ld l, a
    jr nz, jr_01e_6601

jr_01e_658d:
    ld l, b
    ld h, l
    jr nz, jr_01e_6601

    ld l, c
    ld l, [hl]
    inc l
    ld bc, $7375

jr_01e_6597:
    ld [hl], l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_01e_65d4

jr_01e_659e:
    jr nc, jr_01e_65c0

    ld a, c
    ld h, h
    ld [hl], e
    jr nz, jr_01e_6614

    ld [hl], d
    ld [bc], a
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $20
    ld b, e
    ld l, b

jr_01e_65af:
    ld l, c
    ld [hl], b
    jr nz, jr_01e_6614

    ld l, [hl]

jr_01e_65b4:
    ld h, h
    ld bc, $6970

jr_01e_65b8:
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01e_6630

    ld l, b
    ld l, a
    ld [hl], h

jr_01e_65c0:
    ld [hl], e
    jr nz, jr_01e_6624

    ld [hl], d

jr_01e_65c4:
    ld h, l
    ld bc, $666f
    ld [hl], h
    ld h, l

jr_01e_65ca:
    ld l, [hl]
    jr nz, jr_01e_6642

    ld [hl], e
    ld h, l

jr_01e_65cf:
    ld h, h
    ld l, $03
    nop
    ld d, a

jr_01e_65d4:
    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, @+$72

    ld l, h
    ld h, c

jr_01e_65db:
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_6642

    ld l, [hl]
    jr nz, jr_01e_6615

    jr c, @+$2f

    ld l, b
    ld l, a
    ld l, h

jr_01e_65e9:
    ld h, l
    ld bc, $6f72
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01e_6661

    ld h, [hl]
    jr nz, jr_01e_665c

    ld l, a
    ld l, h
    ld h, [hl]
    inc l
    jr nz, jr_01e_6674

    ld l, a
    ld [hl], l
    jr nz, jr_01e_6660

    ld [hl], d
    ld h, l

jr_01e_6601:
    ld bc, $7461
    jr nz, jr_01e_667a

    ld l, b
    ld h, l
    jr nz, jr_01e_667e

    ld [hl], l
    ld [hl], d
    ld l, [hl]
    jr nz, jr_01e_6686

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_01e_668d

jr_01e_6614:
    ld l, a

jr_01e_6615:
    ld [hl], l
    jr nz, jr_01e_661a

    ld l, b
    ld h, c

jr_01e_661a:
    db $76
    ld h, l
    jr nz, jr_01e_6684

    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    ld h, l

jr_01e_6624:
    ld h, h
    jr nz, @+$4a

    ld l, a
    ld l, h
    ld h, l
    jr nz, jr_01e_6665

    ld l, $03
    nop
    ld d, h

jr_01e_6630:
    ld l, b
    ld h, l
    jr nz, jr_01e_66a9

    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    jr nz, @+$63

    ld l, l
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld [hl], h
    ld l, $01
    ld b, c

jr_01e_6642:
    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01e_66bd

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01e_66b1

    ld l, [hl]
    ld h, h
    ld bc, $7264
    ld l, c
    db $76
    ld h, l
    jr nz, jr_01e_66be

    ld h, c
    ld [hl], h

jr_01e_665c:
    ld h, c
    jr nz, @+$63

    ld [hl], d

jr_01e_6660:
    ld h, l

jr_01e_6661:
    ld [bc], a
    ld [hl], e
    ld h, c
    db $76

jr_01e_6665:
    ld h, l
    ld h, h
    jr nz, jr_01e_66de

    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld bc, $7453
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], e

jr_01e_6674:
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l

jr_01e_667a:
    jr nz, jr_01e_66dd

    db $76
    ld h, l

jr_01e_667e:
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    jr nz, jr_01e_66e8

jr_01e_6684:
    ld l, c
    ld [hl], e

jr_01e_6686:
    dec l
    ld bc, $6174
    ld l, [hl]
    ld h, e
    ld h, l

jr_01e_668d:
    jr nz, jr_01e_6703

    ld [hl], d
    ld h, c
    db $76
    ld h, l
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_01e_66fa

    ld a, c
    ld bc, $6162
    ld l, h
    ld l, h
    ld [hl], e
    jr nz, jr_01e_6715

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6e

    ld h, c
    ld l, [hl]
    ld h, h

jr_01e_66a9:
    ld h, l
    ld h, h
    ld [bc], a
    ld l, a
    ld l, [hl]
    jr nz, jr_01e_6724

    ld l, b

jr_01e_66b1:
    ld h, l
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    inc l
    ld bc, $7267
    ld h, l

jr_01e_66bd:
    ld h, l

jr_01e_66be:
    ld l, [hl]
    jr nz, jr_01e_6726

    ld h, h
    ld h, a
    ld h, l
    jr nz, jr_01e_6735

    ld [hl], d
    ld bc, $6166
    ld l, c
    ld [hl], d
    ld [hl], a
    ld h, c
    ld a, c
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01e_674c

    ld [hl], e
    ld [hl], l
    ld h, c
    ld l, h
    jr nz, jr_01e_674b

jr_01e_66dd:
    ld [hl], l

jr_01e_66de:
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    jr nz, jr_01e_6753

    ld h, [hl]
    ld bc, $7570

jr_01e_66e8:
    ld [hl], h
    ld [hl], h
    ld [hl], e
    jr nz, jr_01e_6761

    ld h, c
    ld l, e
    ld h, l
    ld l, [hl]
    jr nz, jr_01e_6762

    ld l, [hl]
    jr nz, @+$63

    ld bc, $6f68
    ld l, h

jr_01e_66fa:
    ld h, l
    ld l, $02
    ld c, c
    ld l, l
    ld [hl], b
    ld [hl], d
    ld l, a
    db $76

jr_01e_6703:
    ld h, l
    ld h, h
    jr nz, jr_01e_6777

    ld [hl], l
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6e61
    ld h, h
    jr nz, jr_01e_6774

    ld [hl], b
    ld [hl], b

jr_01e_6715:
    ld [hl], d
    ld l, a
    ld h, c
    ld h, e
    ld l, b
    jr nz, jr_01e_678f

    ld l, b
    ld l, a
    ld [hl], h
    ld [hl], e
    ld bc, $6163
    ld l, [hl]

jr_01e_6724:
    jr nz, @+$6a

jr_01e_6726:
    ld h, l
    ld l, h
    ld [hl], b
    jr nz, jr_01e_6797

    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_01e_679a

    ld [hl], h
    ld l, $03
    nop

jr_01e_6735:
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01e_679b

    db $76
    ld h, l
    ld [hl], d
    ld h, c
    ld h, a
    ld h, l
    jr nz, @+$71

    ld h, [hl]
    ld bc, $6c61
    ld l, h
    jr nz, jr_01e_67c2

    ld l, a
    ld [hl], l

jr_01e_674b:
    ld [hl], d

jr_01e_674c:
    jr nz, jr_01e_67c1

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e

jr_01e_6753:
    ld bc, $6e69
    jr nz, jr_01e_6789

    jr c, @+$2f

    ld l, b
    ld l, a
    ld l, h
    ld h, l
    jr nz, @+$74

    ld l, a

jr_01e_6761:
    ld [hl], l

jr_01e_6762:
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, @+$6e

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_01e_67ab

    jr nz, jr_01e_67dc

jr_01e_6774:
    ld l, a
    ld l, h
    ld h, l

jr_01e_6777:
    ld [hl], e
    ld bc, $6e6f
    jr nz, @+$63

    ld l, [hl]
    jr nz, @+$33

    jr c, jr_01e_67af

    ld l, b
    ld l, a
    ld l, h
    ld h, l
    ld bc, $6f63

jr_01e_6789:
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, $03

jr_01e_678f:
    nop
    ld d, [hl]
    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, c
    ld h, e
    ld h, c

jr_01e_6797:
    ld l, h
    jr nz, @+$75

jr_01e_679a:
    ld [hl], b

jr_01e_679b:
    ld l, c
    ld l, [hl]
    jr nz, jr_01e_680e

    ld l, [hl]
    jr nz, jr_01e_6803

    ld bc, $6162
    ld l, h
    ld l, h
    jr nz, jr_01e_6818

    ld [hl], b
    ld [hl], b

jr_01e_67ab:
    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h

jr_01e_67af:
    ld h, l
    jr nz, jr_01e_6826

    ld l, b
    ld h, l
    ld bc, $6964
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$76

    ld l, b

jr_01e_67c1:
    ld h, l

jr_01e_67c2:
    jr nz, jr_01e_6826

    ld h, c
    ld l, h
    ld l, h
    ld [bc], a
    ld l, c
    ld [hl], e
    jr nz, jr_01e_6839

    ld l, a
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld b, d
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    ld bc, $6977
    ld [hl], h

jr_01e_67dc:
    ld l, b
    jr nz, jr_01e_6841

    ld h, c
    ld h, e
    ld l, e
    ld [hl], e
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld bc, $7473
    ld l, a
    ld [hl], b
    jr nz, jr_01e_685a

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01e_6863

    ld [hl], l
    ld l, c
    ld h, e
    ld l, e
    ld l, h
    ld a, c
    ld [bc], a
    ld [hl], h
    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01e_6861

    ld h, c
    ld l, h
    ld l, h
    ld [hl], e

jr_01e_6803:
    jr nz, jr_01e_687c

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$70

    ld l, a
    ld bc, $7073

jr_01e_680e:
    ld l, c
    ld l, [hl]
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01e_6885

jr_01e_6818:
    ld l, a
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_01e_688e

    ld h, [hl]
    ld bc, $7773
    ld l, c
    ld l, [hl]
    ld h, a

jr_01e_6826:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, @+$65

    ld l, h
    ld [hl], l
    ld h, d
    ld bc, $6562
    ld l, b
    ld l, c
    ld l, [hl]

jr_01e_6839:
    ld h, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_01e_68a1

    ld h, [hl]

jr_01e_6841:
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_01e_68ac

    ld h, h
    ld h, h
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01e_68c3

jr_01e_685a:
    ld [hl], e
    jr nz, @+$63

    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b

jr_01e_6861:
    ld h, l
    ld [hl], d

jr_01e_6863:
    ld bc, $616e
    ld l, l
    ld h, l
    jr nz, jr_01e_68d0

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $2034
    ld [hl], a
    ld l, a
    ld l, a
    ld h, h
    ld l, $03
    nop
    ld d, h
    ld l, b

jr_01e_687c:
    ld h, l
    jr nz, @+$74

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_01e_68f4

jr_01e_6885:
    ld h, d
    ld l, d
    ld h, l
    ld h, e
    ld [hl], h
    ld [bc], a
    ld a, c
    ld l, a
    ld [hl], l

jr_01e_688e:
    jr nz, jr_01e_68f8

    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, a
    ld [hl], a
    ld h, c
    ld [hl], d
    ld h, h
    ld bc, $6874
    ld h, l
    jr nz, jr_01e_6906

    ld [hl], d
    ld h, l

jr_01e_68a1:
    ld h, l
    ld l, [hl]
    ld l, $20
    ld b, d
    ld h, c
    ld l, h
    ld l, h
    ld [hl], e
    ld [bc], a
    ld [hl], a

jr_01e_68ac:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$71

    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_01e_6923

    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_01e_692a

    ld h, [hl]
    ld bc, $6566
    ld h, c
    ld [hl], h
    ld l, b
    ld h, l

jr_01e_68c3:
    ld [hl], d
    ld [hl], e
    jr nz, jr_01e_6929

    ld [hl], l
    ld [hl], h
    jr nz, @+$66

    ld l, c
    ld h, h
    jr nz, @+$70

    ld l, a

jr_01e_68d0:
    ld [hl], h
    ld bc, $6f67
    jr nz, jr_01e_694c

    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_01e_6941

    ld h, c
    ld [hl], d
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01e_6956

    ld [hl], b
    ld l, a
    ld [hl], h
    jr nz, jr_01e_695f

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    ld bc, $7267
    ld h, c

jr_01e_68f4:
    ld [hl], e
    ld [hl], e
    jr nz, jr_01e_6961

jr_01e_68f8:
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    jr nz, jr_01e_6961

    ld l, [hl]
    ld h, h
    ld bc, $6964
    ld [hl], d

jr_01e_6906:
    ld [hl], h
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    jr nz, @+$64

    ld h, l
    jr nz, jr_01e_6983

    ld h, l
    ld h, l
    ld l, [hl]
    ld l, $02
    ld c, l
    ld l, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_01e_698d

    ld l, [hl]
    jr nz, jr_01e_6983

    ld h, c
    ld [hl], d

jr_01e_6923:
    ld h, l
    ld bc, $7267
    ld l, a
    ld [hl], l

jr_01e_6929:
    ld l, [hl]

jr_01e_692a:
    ld h, h
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_01e_6992

    ld h, c
    ld h, h
    inc l
    jr nz, jr_01e_69a8

    ld l, a
    ld bc, $6177
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_01e_69b7

    ld l, a
    ld [hl], l
    ld [hl], d

jr_01e_6941:
    jr nz, jr_01e_69b7

    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0003
    ld d, h

jr_01e_694c:
    ld l, b
    ld h, l
    jr nz, jr_01e_69bc

    ld l, a
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], e
    ld [hl], h

jr_01e_6956:
    jr nz, jr_01e_69bc

    ld l, c
    ld [hl], e
    dec l
    ld bc, $6174
    ld l, [hl]

jr_01e_695f:
    ld h, e
    ld h, l

jr_01e_6961:
    jr nz, jr_01e_69dc

    ld l, a
    ld [hl], l
    jr nz, jr_01e_69cc

    db $76
    ld h, l
    ld [hl], d
    ld bc, $6968
    ld [hl], h
    jr nz, jr_01e_69e4

    ld l, b
    ld h, l
    jr nz, @+$64

    ld h, c
    ld l, h
    ld l, h
    ld l, $03
    nop
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_01e_69e9

    ld [hl], e
    jr nz, jr_01e_69f7

jr_01e_6983:
    ld l, b
    ld h, l
    jr nz, jr_01e_69e9

    ld h, l
    ld [hl], e
    ld [hl], h
    ld bc, $6373

jr_01e_698d:
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01e_69f7

jr_01e_6992:
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01e_6a0a

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    ld bc, $6f6e
    ld [hl], h
    jr nz, jr_01e_6a0a

    ld l, [hl]
    ld h, e
    ld l, h
    ld [hl], l
    ld h, h
    ld l, c
    ld l, [hl]

jr_01e_69a8:
    ld h, a
    jr nz, jr_01e_6a0c

    ld [bc], a
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld [hl], b
    ld l, $20
    ld c, c

jr_01e_69b7:
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_01e_6a1d

jr_01e_69bc:
    ld bc, $7274
    ld [hl], l
    ld h, l
    jr nz, jr_01e_6a30

    ld h, l
    ld h, c
    ld [hl], e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_01e_6a3a

    ld h, [hl]

jr_01e_69cc:
    ld bc, $6b73
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_01e_6a35

    ld [hl], h
    jr nz, @+$69

    ld l, a
    ld l, h
    ld h, [hl]
    ld l, $03

jr_01e_69dc:
    nop
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_01e_6a48

    ld h, l
    ld [hl], a

jr_01e_69e4:
    ld h, l
    ld [hl], e
    ld [hl], h
    jr nz, jr_01e_6a57

jr_01e_69e9:
    ld [hl], l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld bc, $666f
    jr nz, jr_01e_6a66

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e

jr_01e_69f7:
    ld h, l
    ld [hl], e
    jr nz, jr_01e_6a74

    ld l, a
    ld [hl], l
    jr nz, @+$67

    db $76
    ld h, l
    ld [hl], d
    ld bc, $6f74
    ld l, a
    ld l, e
    jr nz, @+$76

    ld l, a

jr_01e_6a0a:
    jr nz, @+$68

jr_01e_6a0c:
    ld l, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld l, b
    jr nz, jr_01e_6a74

    ld [bc], a
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, h
    jr nz, jr_01e_6a8c

    ld l, a
    ld [hl], l
    ld l, [hl]

jr_01e_6a1d:
    ld h, h
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01e_6a9b

    ld h, c
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, @+$71

    ld l, [hl]
    jr nz, jr_01e_6aa0

    ld h, e
    ld l, a
    ld [hl], d

jr_01e_6a30:
    ld h, l
    inc l
    ld bc, $6f68

jr_01e_6a35:
    ld l, h
    ld h, l
    ld [hl], e
    jr nz, jr_01e_6ab1

jr_01e_6a3a:
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_01e_6aa4

    ld [hl], h
    ld h, e
    ld l, $03
    nop
    ld d, h
    ld h, l
    ld [hl], d
    ld l, l

jr_01e_6a48:
    jr nz, jr_01e_6ab0

    ld l, a
    ld [hl], d
    jr nz, @+$6a

    ld l, a
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $756f
    ld [hl], h

jr_01e_6a57:
    jr nz, jr_01e_6ac2

    ld l, [hl]
    jr nz, @+$33

    jr nz, jr_01e_6ad1

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld bc, $656c

jr_01e_6a66:
    ld [hl], e
    ld [hl], e
    jr nz, jr_01e_6ade

    ld l, b
    ld h, c
    ld l, [hl]
    jr nz, jr_01e_6adf

    ld h, c
    ld [hl], d
    ld l, $03
    nop

jr_01e_6a74:
    ld b, d
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_01e_6ae4

    ld [hl], e
    jr nz, @+$79

    ld l, b
    ld h, l
    ld l, [hl]
    ld bc, $6874
    ld h, l
    jr nz, jr_01e_6af7

    ld l, c
    ld l, [hl]
    jr nz, jr_01e_6afa

    ld [hl], d

jr_01e_6a8c:
    jr nz, @+$69

    ld [hl], d
    ld h, l
    ld h, l
    ld l, [hl]
    ld bc, $6163
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$64

    ld h, l

jr_01e_6a9b:
    jr nz, jr_01e_6b10

    ld h, l
    ld h, l
    ld l, [hl]

jr_01e_6aa0:
    ld [bc], a
    ld h, [hl]
    ld [hl], d
    ld l, a

jr_01e_6aa4:
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_01e_6b1f

    ld h, l
    ld h, l
    ld bc, $6562

jr_01e_6ab0:
    ld h, e

jr_01e_6ab1:
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_01e_6b26

    ld h, [hl]
    jr nz, @+$63

    jr nz, jr_01e_6b20

    ld l, a
    ld h, a
    dec l
    ld bc, $656c

jr_01e_6ac2:
    ld h, a
    jr nz, jr_01e_6b34

    ld [hl], d
    jr nz, jr_01e_6b3b

    ld l, b
    ld h, c
    ld h, h
    ld l, a
    ld [hl], a
    ld [hl], e
    ld l, $03
    nop

jr_01e_6ad1:
    ld b, c
    jr nz, jr_01e_6b47

    ld h, e
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_01e_6b49

    ld h, [hl]
    jr nz, jr_01e_6b4c

    ld l, [hl]

jr_01e_6ade:
    ld h, l

jr_01e_6adf:
    ld bc, $7473
    ld [hl], d
    ld l, a

jr_01e_6ae4:
    ld l, e
    ld h, l
    jr nz, @+$71

    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_01e_6b5d

    ld h, c
    ld [hl], d
    ld bc, $6e6f
    jr nz, jr_01e_6b55

    jr nz, jr_01e_6b69

    ld l, c

jr_01e_6af7:
    ld l, [hl]
    ld h, a
    ld l, h

jr_01e_6afa:
    ld h, l
    jr nz, jr_01e_6b65

    ld l, a
    ld l, h
    ld h, l
    ld l, $03
    nop
    ld b, c
    jr nz, jr_01e_6b69

    ld h, c
    ld h, h
    ld h, h
    ld l, c
    ld h, l
    jr nz, jr_01e_6b75

    ld h, l
    ld l, h
    ld [hl], b

jr_01e_6b10:
    ld [hl], e
    jr nz, @+$63

    ld bc, $6c70
    ld h, c
    ld a, c
    ld h, l
    ld [hl], d
    jr nz, @+$64

    ld a, c
    jr nz, @+$65

jr_01e_6b1f:
    ld h, c

jr_01e_6b20:
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, c
    ld l, [hl]
    ld h, a

jr_01e_6b26:
    ld bc, $6c63
    ld [hl], l
    ld h, d
    ld [hl], e
    jr nz, jr_01e_6b8f

    ld l, [hl]
    ld h, h
    jr nz, jr_01e_6ba1

    ld h, [hl]
    ld h, [hl]

jr_01e_6b34:
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    ld [bc], a
    ld l, a

jr_01e_6b3b:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_01e_6ba2

    ld [hl], e
    ld [hl], e
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, c

jr_01e_6b47:
    ld l, [hl]
    ld h, e

jr_01e_6b49:
    ld h, l
    ld l, $03

jr_01e_6b4c:
    nop

    push af
    ld a, $00
    call Call_01e_6b5d
    pop af
    ret


jr_01e_6b55:
    push af
    ld a, $01
    call Call_01e_6b5d
    pop af
    ret


Call_01e_6b5d:
jr_01e_6b5d:
    push bc
    push de
    push hl
    ld hl, $4004
    sla e

jr_01e_6b65:
    rl d
    add hl, de
    ld e, [hl]

jr_01e_6b69:
    inc hl
    ld d, [hl]
    ld hl, $4604
    add hl, de
    or a
    jr nz, jr_01e_6b7a

    ld de, $c600

jr_01e_6b75:
    ld bc, $0180
    jr jr_01e_6b80

jr_01e_6b7a:
    ld de, $d880
    ld bc, $0020

jr_01e_6b80:
    call MemCopy
    pop hl
    pop de
    pop bc
    ret


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01e_6b8f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01e_6ba1:
    rst $38

jr_01e_6ba2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
