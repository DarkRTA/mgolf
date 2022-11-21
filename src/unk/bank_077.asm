INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $077", ROMX[$4000], BANK[$77]

    ld [$b440], sp
    ld e, d

    db $7f, $65, $3e, $6e

    jr nz, jr_077_404a

    db $10
    ld b, [hl]
    nop
    ld c, h
    and b
    ld d, d
    jr nz, jr_077_4068

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
    ld [$f0fe], a
    db $eb
    inc bc
    inc bc
    rst $38
    rst $38
    ld h, b
    ld h, b
    ldh a, [$7d]
    sub b
    cp $e2
    or b
    db $fc
    call z, $92fe
    jp nc, $fceb

    ret nc

    ldh [$fe], a
    di
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f

jr_077_404a:
    ldh a, [$f7]
    rra
    pop af
    rra
    and d
    pop hl
    cp $fe
    add hl, hl
    rst $10
    rst $38
    ld a, a
    xor d
    ld a, a
    xor h
    ccf
    rst $18
    ld h, b
    rst $38
    rst $38
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    add e
    add e
    rst $38

jr_077_4068:
    ld b, e
    jp nz, $c343

    and e
    ld [c], a
    ld h, c
    pop hl
    rst $38
    cp $a6
    rst $38
    ld c, c
    rst $38
    ld d, c
    rst $38
    push hl
    rst $38
    rst $38
    dec h
    rst $38
    sbc c
    rst $38
    ld b, c
    cp $02
    db $fc
    cp h
    db $ed
    ld l, b
    rst $20
    inc d
    db $eb
    ccf
    call nc, $d53f
    ld a, [hl]
    ld d, d
    rst $20
    add b
    add b
    ld b, b
    ret nz

    and b
    ld h, b
    ld b, d
    pop hl
    sub l
    ld bc, $e0fe
    inc bc
    cp $e0
    rlca
    cp $e0
    ld b, d
    db $eb
    inc b
    ld [hl], c
    rlca
    ld [de], a
    add sp, $7a
    ld [c], a
    ld [bc], a
    ld [$7f80], a
    ret nz

    ld a, [c]
    pop bc
    sub l
    cp $fe
    ldh [$fc], a
    cp $e0
    ld hl, sp-$02
    ldh [$e2], a
    add $07
    rst $38
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    db $e3
    ccf
    rst $38
    push bc
    ld a, a
    rst $00
    ld a, a
    rst $08
    rst $38
    rrca
    ld a, [$1fff]
    ei
    rst $38
    rst $38
    rst $08
    ld a, h
    adc a
    rst $38
    db $fd
    ldh a, [$bd]
    ret nz

    rst $38
    dec e
    rst $38
    ld l, c
    rst $38
    sbc a
    cp $1e
    ldh [rIE], a
    sub d
    di
    ld l, d
    ei
    db $fc
    rst $38
    rst $38
    db $fc
    rst $30
    db $fc
    scf
    db $fc
    rst $28
    ld a, h
    rst $28
    rst $38
    cp a
    ld [hl], a
    cp $86
    ld a, [hl]
    ld [c], a
    dec e
    db $fc
    rst $30
    dec b
    db $fc
    rlca
    cp $e0
    rrca
    ld hl, sp+$0f
    ld hl, sp+$7e
    xor $c7
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    dec b
    db $ec
    pop bc
    rst $38
    db $e3
    ccf
    and $ff
    cpl
    rst $38
    rrca
    rst $38
    rst $38
    sbc a
    ei
    rst $38
    ld a, c
    ccf
    rst $18
    ccf
    jp z, Jump_077_6d7c

    pop bc
    xor d
    ld [c], a
    sbc l
    rst $38
    dec c
    and b
    ld h, b
    cp $e0
    rst $38
    ldh [rSVBK], a
    ldh a, [$0c]
    db $fc
    ld a, h
    db $f4
    db $fc
    rst $38
    db $f4
    ld hl, sp+$28
    rrca
    nop
    rrca
    nop
    rra
    jp z, $e0fe

    ccf
    cp $e0
    ld a, a
    cp $e0
    ld d, d
    ret


    ld bc, $ff01
    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $7f1f
    inc hl
    ccf
    ld b, l
    ld a, a
    rst $00
    rst $38
    ld c, a
    ld e, d
    ldh [$fc], a
    sbc d
    jp $e75a


    ld a, a
    ret nz

    cp a
    ldh [$7f], a
    ldh [rIE], a
    sbc a
    ldh a, [$6f]
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    ld a, a
    rst $38
    inc [hl]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [$fe], a
    ldh [$e5], a
    ret nz

    cp $e0
    add b
    cp $e0
    ld l, h
    ldh [rDIV], a
    rst $38
    ld [bc], a
    db $fc
    cp $e0
    ld d, b
    ret nz

    di
    rra
    rst $20
    inc a
    rst $38
    cp a
    rst $38
    db $e3
    cp a
    rst $30
    ld e, l
    rst $38
    ld l, a
    rst $38
    dec hl
    rst $38
    rst $38
    jp hl


    ccf
    db $e4
    rst $38
    db $e3
    db $f4
    ld a, a
    push hl
    cp $10
    pop hl
    ld c, c
    dec bc
    pop hl
    ld d, [hl]
    ret nz

    add b
    ld e, [hl]
    cp a
    rst $38
    inc a
    rst $38

jr_077_41bb:
    db $fc
    rst $28
    cp $5b
    cp $fb
    rst $38
    cp $eb
    cp $4b
    db $fc
    scf
    rra
    ldh a, [$9e]
    cp $e5
    ccf
    ldh [$3f], a
    ldh [$b0], a
    ret nz

    or b
    ldh [$7f], a
    rst $38
    ld [bc], a
    ld a, a
    ld [bc], a
    ccf
    ld [bc], a
    ccf
    ld bc, $ff1e
    inc bc
    inc e
    rlca
    rst $28
    cp e
    rst $20
    cp a
    rst $20
    rst $18
    cp h
    rst $38
    ld e, a
    rst $38
    ld [hl], a
    ld e, $c0
    ld [c], a
    ccf
    rst $38
    pop hl
    rst $38
    ld b, a
    ld hl, sp-$61
    ld hl, sp-$11
    ldh a, [$f7]
    rra
    db $f4
    rst $38
    xor b
    ldh [$5f], a
    rst $38
    ret


    ld hl, sp-$01
    xor b
    ld a, b
    add sp, -$61
    ld [hl], a
    ld e, a
    cp [hl]
    rra
    rst $38
    db $fc
    ccf
    ld a, [c]
    rst $38
    jp nc, Jump_077_62ff

    rrca
    rst $38
    add hl, bc
    rrca
    ld a, [bc]
    adc a
    add hl, bc
    add a
    inc b
    rst $00
    ld a, a
    inc b
    jp $e302


    ld [bc], a
    rst $20
    rlca
    adc d
    jp Jump_077_6ace


    db $e4
    ld l, e
    rst $38
    jr z, jr_077_41bb

    jp $e86a


    add sp, $7f
    rst $38
    add sp, -$41
    ld [hl], a
    ld e, [hl]

Jump_077_423b:
    cp [hl]
    inc a
    db $fc
    db $fc
    rst $18
    db $ec
    cp $5a
    cp $ea
    ld [hl-], a
    xor e
    jr c, jr_077_4281

    rst $38
    rst $28
    add hl, sp
    rst $18
    db $76
    ld a, a
    ld [hl], b
    rst $38
    ret nc

    rst $38
    rst $38
    call z, $eabf
    cp a
    push hl
    ld e, a
    ld [hl], d
    rst $38
    rst $38
    jr nc, @+$01

    ld e, b
    rst $38
    adc [hl]
    rst $38
    rra
    cp d
    ld a, a
    ret nz

    rlca
    ld a, [$06e0]
    rst $38
    ld a, a
    ldh a, [$82]
    pop bc
    rst $38
    rst $38
    pop hl
    cp $ff
    ldh [rIE], a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $00
    ld hl, sp+$2f
    db $fc
    rra
    db $fc

jr_077_4281:
    rra
    cp a
    cp $ff
    rra
    ld sp, hl
    ld a, a
    ld sp, hl
    jp nc, $8080

    cp [hl]
    cp $e8
    ret nz

    rst $38
    ret nz

    ld [$8e0f], sp
    pop bc
    db $10
    rst $38
    rra
    jr nz, jr_077_42da

    daa
    ccf
    rra
    jr @+$41

    rst $38
    jr nz, jr_077_42e2

    ldh [$1f], a
    ldh a, [$2f]
    db $fc
    ld h, a
    rst $28
    rst $38
    inc hl
    rst $38
    and e
    jp nz, $ffe0

    ld c, $ff
    push af
    ccf
    or b
    push hl
    sbc $b0
    ld [c], a
    rst $38
    add h
    ei
    ld l, $e7
    ld sp, hl
    rra
    db $fd
    or b
    rst $20
    sub h
    and d
    ld hl, sp+$00
    ldh a, [$7f]
    add b
    ldh [$80], a
    ret nz

    ld b, b
    add b
    add b
    jp c, $ff83

    db $e3
    ld a, $cf
    ld a, h
    rst $08
    ld a, e

jr_077_42da:
    sbc a
    ld hl, sp-$01
    cp a
    add sp, -$01
    db $e4
    ccf

jr_077_42e2:
    db $e3
    sbc a
    ldh a, [$2f]
    rst $28
    ld a, b
    rst $38
    sbc [hl]
    db $dd
    and b
    ld b, a
    db $db
    and b
    adc h
    ret nz

    ld [$e55c], a
    cp a
    xor h
    ldh [rIE], a
    adc h
    ret nz

    db $fd
    rst $00
    ld sp, hl
    ei
    cpl
    ld sp, hl
    ld e, h
    db $e4
    ld a, h
    ld b, h
    rst $38
    sbc $ff
    rst $38
    ld hl, $27ff
    rst $38
    add hl, sp
    rst $38
    db $e3
    rst $38
    rst $38
    cp l
    rst $38
    and d
    ld c, a
    ld a, c
    daa
    ccf
    db $10
    cpl
    rra
    rrca
    rrca
    inc bc
    rst $38
    ldh [rSB], a
    rst $38
    ldh [$b8], a
    ldh [$e2], a
    rst $38
    db $eb
    ld a, a
    ldh a, [$ec]
    pop hl
    ld [$c014], a
    ret nz

    cp $c0
    rst $38
    db $fc
    ldh [$f8], a
    ldh [$f0], a
    ldh [$f0], a
    ret nc

    rst $38
    add sp, -$08
    ret z

    ld hl, sp+$3f
    inc l
    sbc a
    db $10
    xor e
    rst $38
    jr nz, jr_077_43aa

    add b
    ld a, [hl+]
    ld a, [$10e0]
    xor $80
    ld l, [hl]
    ld [$c0c4], a
    rrca
    ld [c], a
    add b
    sub a
    adc h
    ldh [$3f], a
    rst $38
    sbc a
    db $e4
    jp nz, $ffea

    ldh [$80], a
    ld a, [hl+]
    ldh [$fe], a
    pop hl
    add e
    add b
    rrca
    cp $4c
    and b
    rst $38
    nop
    cp a
    and $5f
    ld [hl], l
    ld e, a
    rst $38
    ld [hl], d
    cpl
    add hl, sp
    rla
    inc e
    rrca
    rrca
    rlca
    ld d, [hl]
    rst $38
    ldh [rIE], a
    inc de
    adc h
    ret nz

    adc d
    and d
    add b
    rst $08
    ld l, b
    db $e3
    ldh a, [$dc]
    jp nz, $e86c

    adc h
    jp nz, $e94d

    sbc $3f
    db $e4
    ccf
    ld c, a
    ld hl, sp-$01
    ret nz

    db $fc
    ld c, b
    and b
    ld c, [hl]
    and b
    add b
    ld [$aa80], sp
    ld b, h
    and b
    ldh [$3a], a
    and b
    ld hl, sp+$4c

jr_077_43aa:
    add b
    cp $40
    ld h, b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ld a, a
    rra

jr_077_43b5:
    ld a, $1f
    ld a, $df
    rrca
    ld d, $1f
    jr jr_077_43cd

    ld h, e
    add c
    db $fd
    db $fc
    rst $30
    pop bc
    ret nz

    ld b, e
    cp $e0
    ld b, a
    ret nz

    add a
    add b
    rst $30

jr_077_43cd:
    cp $ff
    ld hl, sp-$77
    and b
    db $e3
    ccf
    db $fc
    inc e
    cp $0c
    and c
    add b
    nop
    ld [$10f8], sp
    ldh a, [rNR41]
    rst $08
    ldh [$c0], a
    ret nz

    inc bc
    xor b
    add b
    ld h, b
    pop hl
    ccf
    rlca
    ld a, a
    rrca
    ld bc, $0003
    dec b
    dec b
    dec bc
    jr z, jr_077_43b5

    ld a, h
    jp nc, $d360

    call nz, $fe1f
    rst $00
    cp $81
    rst $38
    ld h, b
    cp $f2
    db $e4
    rlca
    dec de
    inc bc
    inc sp
    inc bc
    inc l
    rlca
    ld sp, hl
    ld a, h
    ldh [$e1], a
    inc de
    add b
    rst $38
    ld hl, sp-$31
    ld hl, sp-$61
    ld [c], a
    inc sp
    add b
    ld b, b
    or $61
    or [hl]
    ld h, [hl]
    or h
    ld h, b
    add b
    rst $38
    rst $38
    rst $38
    rst $00
    rlca
    di
    inc bc
    db $fd
    ld bc, $04ff
    add l
    ei
    inc bc
    add b
    db $fc
    or b
    and $e4
    pop bc
    or b
    rst $20
    cp a
    ld h, c
    rst $08
    ld l, a
    inc bc
    call nc, $8407
    sub b
    and $fe
    cp $b0
    push hl
    cp c
    add b
    rst $38
    ldh [rNR50], a
    ld h, e
    ld b, b
    ret nz

    add b
    or b
    ldh [$3f], a
    ld a, [$8000]
    inc bc
    ld h, d
    ld c, b
    inc c
    rrca
    adc b
    rrca
    ret nc

    cp $a8
    ld b, b

jr_077_445f:
    ld sp, $131f
    ld e, $0d
    inc c
    rst $38
    rst $38
    rst $38
    adc a
    add b
    adc [hl]
    add b
    sbc h
    add b
    jr jr_077_44df

    nop
    inc sp
    nop
    cpl
    ldh [$60], a
    rst $38
    rst $38
    jr z, jr_077_445f

    inc e
    ld [hl+], a
    ld b, l
    db $10
    ld c, b
    ld h, b
    rst $38
    sub b
    cp $e0
    sbc [hl]
    ld [c], a
    db $fc
    rst $20
    nop
    ldh a, [rNR42]
    xor b
    ld h, c
    and b
    ld h, c
    sbc b
    ld h, c
    ld c, $ac
    ld l, $e0
    adc [hl]
    pop bc
    adc h
    pop bc
    jp c, $c18a

    ldh [$a2], a
    ld c, h
    ld [$a20f], sp
    ld c, e
    ld a, a
    xor h
    cp $12
    ld h, [hl]
    inc b
    rst $38
    add h
    ld a, a
    jp nz, $c37f

    ld a, [hl]
    adc h
    ldh [$b0], a
    rst $38
    call z, $92ff
    rst $38
    jr jr_077_44fe

    ldh a, [$82]
    db $eb
    ld e, $e0
    cp $ec
    ld [hl], d
    add hl, hl
    rlca
    rlca
    rrca
    add hl, bc
    ld a, [c]
    ld [hl+], a
    ld h, l
    ld b, a
    ld a, h
    ld b, h
    ld [hl+], a
    ld l, e
    rst $38
    sbc a
    cp a
    ld [c], a

jr_077_44d3:
    rra
    ld a, a
    db $e3
    sbc a
    ld a, [c]
    ld l, a
    or d
    ld h, b
    ld a, h
    ld b, e
    cp b
    inc hl

jr_077_44df:
    cp $92
    ld b, b
    add l
    ld a, [hl]
    ld [c], a
    inc e
    db $fc
    inc b
    db $fc
    ld l, a
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    adc h
    inc hl
    inc bc
    ld [bc], a
    jp nc, $e841

    or d
    ld l, b
    inc e
    ld h, d
    or d
    ld l, h
    rst $38
    inc a
    ld b, c

jr_077_44fe:
    ld e, [hl]
    cp a
    dec a
    ld [hl-], a
    inc e
    ld h, [hl]
    inc b
    cp h
    ldh [$fc], a
    db $e3
    ld [$c4f8], sp
    and c
    ld h, b
    pop bc
    db $fd
    ret nz

    ld b, h
    add b
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    add b
    db $fd
    cp $e2
    ld h, d
    cp a
    add b
    sbc a
    add b
    adc a
    add b
    cp a
    add a
    add b
    add e
    add b
    add c
    add b
    and $61
    and e
    rst $38
    ccf
    rst $00
    ld a, h
    adc a
    ld sp, hl
    sbc a
    or $bf
    rst $30

jr_077_4537:
    ldh a, [rIE]
    ret nc

    ld b, d
    and b
    db $e3
    rra
    ldh a, [$cf]
    rla
    ld hl, sp-$11
    ld a, $fc
    ld b, b
    adc a
    adc b
    ld h, b
    jr nc, jr_077_44d3

    adc h
    ld h, c
    ld l, [hl]
    cp h
    ld b, c
    db $fc
    rst $00
    db $fc
    adc h
    ld h, [hl]
    jr nz, jr_077_4537

    ld [$d4c1], sp
    ld h, b
    ret z

    ld h, h
    jp nz, $fa1f

    jr nz, jr_077_4569

    inc e
    jr nz, jr_077_4566

    nop

jr_077_4566:
    ld a, [hl]
    jr c, jr_077_45ca

jr_077_4569:
    rst $38
    ld h, l
    rst $18
    ld [hl], d
    rst $28
    add hl, sp
    ld a, b
    add d
    sbc l
    inc bc
    ld b, $80
    ld c, $ff
    ld d, $b3
    ld hl, $8318
    add b
    cp $7c
    ldh [$83], a
    add b
    rst $00
    ret nz

    rst $08
    ret nz

    rst $18
    xor b
    ld d, d
    ld h, b
    ld c, [hl]
    ld h, b
    ld b, b
    ld h, h
    cp a
    ld e, [hl]
    ldh [$83], a
    dec b
    ret z

    ret nz

    ld a, [$e03e]
    db $fc
    inc h
    ld h, c
    inc bc
    ld a, a
    ld bc, HeaderManufacturerCode
    inc a
    and b
    add sp, -$28
    ld h, a
    ccf
    cp $1f
    xor $b0
    add d
    rrca
    ld hl, $fc9f
    db $fc
    db $fc
    ret nz

    ld a, b
    cp $e0
    or d
    ld h, l
    ld a, h
    ld l, e

jr_077_45b9:
    ld a, a
    jr nc, jr_077_4626

    pop bc
    ld a, [hl]
    db $ec
    ld b, b
    or b
    rst $18
    ld [bc], a
    ld b, b
    rla
    inc e
    ldh a, [$30]

Call_077_45c8:
    xor d
    add b

jr_077_45ca:
    nop
    ld e, b
    jr nz, jr_077_461e

    xor c
    ld c, b
    nop
    inc d
    sub b
    inc b
    jr c, @-$59

jr_077_45d6:
    ret nz

    add b
    jr nz, jr_077_45d6

    ld a, h
    ld [$4550], sp
    add sp, -$1b
    rst $18
    ldh a, [$1f]
    ld a, h
    rrca
    jr c, jr_077_4613

    jr nz, jr_077_45b9

    rra
    rst $38
    pop hl
    ccf
    add $7e
    rst $38
    rst $38
    ld [hl], b
    ret nz

    rst $38
    pop af
    add b
    db $e3
    add b
    rst $20
    add b
    call z, $1d80
    ret nc

    ld d, d
    ld hl, $fcff
    jr c, @-$06

    ld h, c
    ldh a, [$87]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    rst $38
    rst $38

jr_077_4613:
    rst $38
    nop
    cp $fe
    ldh [$fc], a
    cp $e0
    xor a
    ld hl, sp+$00

jr_077_461e:
    add d
    nop
    ldh a, [$e1]
    ld a, a
    cp $e0
    ccf

jr_077_4626:
    sbc $fe
    ldh [$1f], a
    nop
    ld b, a
    rlca
    ldh [$e0], a
    rrca
    rst $38
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec hl
    rst $38
    rra
    rst $38
    rst $30
    inc h
    cp a
    ld [hl], $d0
    ldh [$c0], a
    rst $38
    jr nz, @+$01

    rst $38
    ret nc

    rst $38
    jr z, @+$01

    jr @+$01

    rst $08
    ei
    db $fd
    inc e
    ret nz

    ldh [rSB], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, a
    ld a, [bc]
    rst $38
    inc c
    rst $38
    jp hl


    ld e, a
    cp b
    or b
    ldh [rIE], a
    ld hl, sp-$01
    ld d, h
    rst $38
    xor d
    rst $38
    ld l, d
    rst $38
    rst $38
    ld a, h
    rst $38
    sub d
    rst $38
    ld [hl], $c2
    nop
    ld [c], a
    ei
    nop
    ldh a, [$fe]
    ldh [$e0], a
    nop
    pop hl
    nop
    rst $00
    rst $30
    nop
    rst $08
    nop
    ldh a, [$e8]
    ld bc, $03c6
    adc $ff
    inc bc
    ld e, e
    inc e
    ld l, a
    ld sp, $754f
    ld c, a
    rst $28
    ld [hl], a
    sub a
    ld a, [$a91f]
    ldh [$5c], a
    rst $38
    ld e, d
    rst $38
    cp b
    and $5c
    ld [c], a
    ld e, [hl]
    pop hl
    rst $18
    pop de
    rst $38
    cp a
    ld hl, sp-$01
    inc b
    rst $38
    ld a, $ff
    ld b, e
    rst $28
    nop
    ld b, a
    nop
    rrca
    cp $e0
    rlca
    nop
    rst $00
    rst $38
    ret nz

    inc hl
    ldh [$33], a
    ldh [rIE], a
    ld b, c
    rst $38
    rst $38
    ld e, h
    db $e3
    ld a, $e1
    ccf
    pop hl
    ccf
    jp nz, Jump_077_7fff

    jp nz, $ca7f

    ld a, a
    rst $28
    ld sp, $fbcf
    push af
    rst $08
    jp nz, Jump_077_5ee4

    rst $38
    cp a
    rst $38
    rst $20
    di
    ld e, h
    db $e3
    jp nz, $22e8

    ldh [rSTAT], a
    rst $38
    sbc l
    db $e3
    rst $38
    ccf
    jp $c37e


    cp $21
    rst $38
    ld hl, $ff93
    add hl, hl
    ld [de], a
    ldh [rNR41], a
    jp hl


    ld b, c
    ld a, [c]
    ldh [rP1], a
    db $e3
    rst $38
    rst $10
    rlca
    ei
    inc e
    or h
    ldh [$75], a
    ldh [$e5], a
    rst $38
    ldh [$fb], a
    ld e, a
    cp b
    or h
    pop hl
    cp $0b
    rst $38
    rla
    ld a, [hl]
    rst $38
    inc de
    ld a, a
    dec d
    ccf
    inc de
    ccf
    dec bc
    rra
    rst $38
    dec e
    ld l, a
    add hl, sp
    cp a
    rst $38
    cp a
    ld a, [c]
    rst $38
    rst $38
    db $fd
    ld a, a
    db $d3
    ld a, a
    pop de
    cp $cf
    ldh a, [$f7]
    rst $38
    ld hl, sp+$3f
    ret nz

    ret nz

    daa
    rst $38
    ld e, l
    rst $38
    rst $38
    push hl
    ld a, a
    push bc
    cp a
    ld a, c
    add a
    ld a, a
    rrca
    rst $38
    cp $3f
    add sp, -$01
    db $f4
    cp [hl]
    db $e4
    ld a, [hl]
    rst $38
    call nc, $e47c
    db $fc
    add sp, -$04
    call c, $fffa
    ld c, [hl]
    rst $18
    ld [hl], a
    sbc $73
    ld e, a
    ld [hl], l
    ld e, [hl]
    rst $38
    ld [hl], e
    ld c, a
    ld a, e
    ld c, a
    ld a, l
    ld c, a
    ld a, c
    ld l, a
    push de
    ld a, [hl-]
    jp nz, $dde0

    jp nz, $f1e0

    jp nz, Jump_077_7fe2

    cp $f5
    ld e, a
    jp nz, $c7e4

    jp nz, $ffe2

    ccf
    db $fd
    db $fd
    rst $38
    rst $30
    cp l
    rst $20
    ld a, l
    rst $10
    dec a
    rst $20
    ld sp, hl
    ld a, a
    rst $28
    ld sp, hl
    rst $18
    ld sp, hl
    ld c, a
    ld a, [$602e]
    push hl
    or $60
    jp Jump_000_0787


    ldh a, [$c2]
    ld bc, $030e
    ld b, $db
    inc bc

jr_077_479a:
    adc [hl]
    ld h, [hl]
    ldh [$fe], a
    inc de
    inc b
    db $e3
    jr nc, @+$01

    rst $38
    ld b, b
    rst $38
    sbc a
    rst $38
    cp a
    cp $ff
    di
    xor $04
    ld_long $ff6b, a
    ld b, l
    add b
    jp nz, $30c0

    ldh [$f7], a
    jr nz, jr_077_479a

    add hl, hl
    ld h, [hl]
    ldh [$bf], a
    db $e4
    ld c, a
    ld a, d
    rst $38
    ld b, a
    ld a, [hl]
    ld c, a
    ld a, [hl]
    ld hl, $413f
    ld a, a
    cp a
    rst $08
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    ld b, b
    ld a, [hl]
    ldh [rPCM34], a
    cp $89
    ret nz

    ld d, a
    rst $38
    inc [hl]
    rst $38
    adc $ff
    ld h, c
    rst $38
    rst $38
    ldh a, [$3f]
    db $fd
    rst $38
    rst $30
    rst $38
    sbc l
    rst $38
    rst $38
    push af
    rst $38
    sub a
    rst $38
    add hl, sp
    rst $38
    jp $ffff


    rlca
    ld sp, hl
    cpl
    pop af
    ccf
    ld sp, hl
    ld a, a
    rst $38
    add d
    cp $01
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    add c
    ld h, a
    ld a, $63
    ld a, $21
    ccf
    rst $38
    dec d
    rra
    ld [$900f], sp
    rra
    ldh a, [$1f]
    cp a
    pop af
    ccf
    rst $38
    ld e, a
    rst $38
    ld [hl], h
    ld c, c
    ret nz

    scf
    ei
    rst $38
    sub h
    ret nz

    ldh [$f1], a
    rst $38
    ldh a, [rIE]
    db $fd
    xor $c6
    ldh [$9d], a
    rst $38
    or $f0
    ldh [$39], a
    rst $38
    rst $00
    ld a, a
    rst $38
    rlca
    ld a, [c]
    ld a, $e2
    ld a, $c2
    pop af
    ret nz

    rst $38
    adc b
    ld hl, sp-$7b
    db $fc
    add a
    db $fc
    rst $00
    cp $fe
    jr nc, @-$37

    add a
    ld bc, $03e2
    ld a, [c]
    inc bc
    db $db
    inc e
    adc d
    jp nz, $c53e

    ld c, [hl]
    rst $38
    ld e, e
    adc d
    jp nz, $c700

    ret nz

    xor b
    rst $18
    ret nz

    daa
    ldh [$2f], a
    ldh [$74], a
    and b
    inc de
    rst $38
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    ld a, [bc]
    rst $30
    rst $38
    ld e, $a3
    ld a, $7f
    push de
    ld a, a
    rst $18
    ld a, [$763c]
    jp nz, $e436

    push de
    ld a, a
    push af
    xor a
    db $76
    jp $e236


    rst $38
    ld a, a
    call nc, $e47f
    rst $38

jr_077_488d:
    add sp, -$01
    ret c

    rst $38
    rst $38
    ld c, b
    rst $38
    jr z, jr_077_488d

    inc a
    db $e3
    ld a, $af
    rst $38
    ld h, $ff
    ld c, a
    db $f4
    ldh [rLCDC], a
    ld e, h
    and b
    ld d, h
    rst $28
    rst $38
    ld [hl-], a
    cp a
    ccf
    ld a, [hl-]
    and b
    cpl
    db $fc
    daa
    xor a
    db $fc
    sub a
    ld hl, sp-$71
    add sp, -$20
    ld a, a
    ld a, [c]
    add b
    adc h
    rst $38
    rst $38
    ld a, [$f21f]
    rra
    db $f4
    rrca
    ld hl, sp-$24
    rrca
    pop hl
    ld [c], a
    add b
    ld [hl-], a
    rst $38
    ld a, c
    sub h
    ldh [$81], a
    rst $38
    db $fd
    sub l
    ld a, [$2780]
    rst $38
    cp $f9
    ccf
    rst $38
    cp $fe
    push hl
    rra
    rst $38
    rra
    adc a
    rrca
    rst $28
    ld hl, sp-$19
    rst $20
    ccf
    ldh a, [$fa]
    and c
    db $fd
    db $e4
    ei
    adc a
    di
    rst $30
    cp $07
    cp $f0
    rst $20
    rst $08
    cp $ff
    ld a, [hl]
    ld a, [$e0fe]
    cp $fe
    ldh [$fc], a
    rst $38
    db $fc
    ld sp, hl
    ld hl, sp+$76
    or b
    and c
    cp $13
    ld a, [hl-]
    db $e4
    dec e
    xor a
    add hl, sp
    ld c, d
    ret nz

    ld h, b
    or b
    and e
    xor $a3
    or b
    and a
    xor $a3
    or b
    and d
    cp a
    db $e4
    ld a, [hl-]
    db $e4
    rst $38
    call c, $4efb
    rst $20
    ccf
    jp hl


    ccf
    ret nz

    rst $38
    ld a, a
    pop bc
    ld a, a
    jp $cf7f


    ld a, h
    rst $18
    rst $30
    ld [hl], c
    rst $38
    ld h, d
    ld b, [hl]
    jp nz, Jump_077_7f8e

    pop hl
    rst $38
    ld a, a
    ldh a, [$ef]
    ld a, b
    rst $20
    rst $38
    ldh a, [$1f]
    ld b, [hl]
    ret nz

    rst $20
    sub [hl]
    rst $38
    jr c, jr_077_498e

    pop bc
    db $76
    ldh [rIE], a
    rlca
    db $fc
    rst $18
    di
    ld a, [hl]
    bit 7, [hl]
    add c
    res 0, b
    pop hl
    rst $38
    ld a, a
    ld sp, hl
    rra
    db $fd
    rst $00
    rst $38
    inc hl
    rst $18
    ld c, d
    ldh [$3f], a
    rst $38
    rrca
    rst $30
    rlca
    db $e3
    inc bc
    ld [hl], b
    add e
    ld b, [hl]
    rst $20
    ld l, [hl]
    or $60
    ccf
    cp $1f
    ldh a, [$ea]
    ld a, [hl]
    cp a
    ld c, h
    ldh [$fe], a
    ld c, b
    ldh [$f8], a
    rst $38
    ldh a, [$e7]
    ldh [$87], a
    add b
    rst $38
    db $e3
    nop
    di
    nop
    rst $08
    rrca
    rst $20
    rlca
    rst $38
    di

jr_077_498e:
    inc bc
    pop af
    ld bc, $01e1
    db $e3
    inc bc
    rst $20
    call nz, $cc07
    ldh [$61], a
    reti


    jp nz, $f0f7

    rst $28
    rst $18
    ld hl, sp+$4b
    ld hl, sp+$13
    ldh a, [$f6]
    push bc
    rst $20
    rlca
    rst $38
    db $eb
    rrca
    ret


    rrca
    call z, $fb07
    ld hl, sp-$02
    and $e0
    ldh [$cf], a
    ret nz

    rst $00
    ret nz

    rst $20
    ldh [rIE], a
    inc de
    ldh a, [rNR13]
    ldh a, [$cf]
    ld a, d
    rst $10
    ld a, [hl]
    rst $38
    jp $c77e


    ld a, a
    rst $08
    ld a, c
    rst $18
    ld [hl], b
    xor a
    rst $38
    ld h, [hl]
    rst $38
    ld c, h
    cp $80
    ld l, l
    or [hl]
    ld h, b
    rlca
    xor [hl]
    xor d
    ld h, d
    jr @+$01

    sub h
    add b
    and b
    db $db
    or [hl]
    ld h, b
    ldh a, [$7e]
    xor d
    ld h, d
    inc c
    rst $38
    sub h
    ld sp, hl
    cpl
    push af
    inc d
    add b
    rst $38
    pop af
    ld a, a
    ld sp, hl
    rst $08
    db $fd
    rlca
    rst $38
    inc sp
    ei
    rst $38
    sbc c
    rla
    and b
    ld d, e
    ld a, a
    ld h, $7f
    inc h
    rst $38
    ccf
    jr nz, @+$41

    ld hl, $141f
    ld e, a
    ld a, [de]
    db $d3
    db $fc
    rrca
    add h
    and b
    xor $a1
    ld b, a
    ld l, b
    ret nz

    adc a
    rst $38
    daa
    ld a, a
    rra
    ld hl, sp-$7c
    and b
    ld c, $c1
    pop af
    adc [hl]
    jp nz, Jump_077_6162

    rst $38
    ld h, l
    cp $32
    cp $12
    cp $02
    cp $ff
    ld b, d
    db $fc
    sub h
    cp $2c
    and $3f
    ldh [$fc], a
    call nz, $ae60
    ldh [$1f], a
    pop af
    rra
    ld sp, hl
    rra
    sub c
    rst $38
    rra
    or e
    cp $83
    cp $43
    ld a, [hl]
    ld b, e
    rst $38
    ld a, [hl]
    ld b, a
    ld a, h
    ld b, a
    ld a, h
    ld c, a
    ld a, h
    ld b, l
    rst $38
    ld a, h
    db $fc
    rlca
    ld hl, sp+$0f
    ld [hl], b
    rra
    ld h, b
    rst $38
    ccf
    jr nc, jr_077_4aa1

    ld b, e
    ld a, a
    ld c, a
    ld a, h
    ld [hl], c
    cp a
    jr nc, jr_077_4aa9

    ldh [$7f], a
    ret nz

    ld a, [hl]
    cp $e0
    db $fc
    ld a, l
    add b
    ldh [rSCX], a
    cp $03
    rst $38
    ld bc, $fe7f
    ldh [$fe], a
    ret nz

    ld h, l
    rra
    ldh a, [rIF]
    ld hl, sp+$06
    db $fc
    ld [bc], a
    rst $38
    cp $86
    cp $e1
    ld a, a
    ld sp, hl
    rra
    add [hl]
    db $fd
    ld b, $98
    and b
    ld h, d
    ld a, a
    add hl, hl
    ld a, a
    inc h
    ld e, a
    rst $38
    ld a, e
    ld b, a
    ld a, a
    ld b, e
    ld a, a

jr_077_4a9f:
    ld b, c
    ld a, a

jr_077_4aa1:
    rst $38
    sbc l
    ld e, a
    call c, Call_000_3f60
    rst $38
    rst $18

jr_077_4aa9:
    ld h, c
    add b
    db $db
    and e
    db $fd
    push hl
    rrca
    db $f4
    and c
    db $fd
    ld h, h
    ld [c], a
    ld h, b
    ld h, c
    add hl, bc
    rst $38
    inc hl
    ld a, a
    cp $4a
    cp $92
    db $fd
    rst $28
    pop af
    ld e, h
    ret nz

    rst $38
    pop bc
    rst $38
    ld c, a
    rrca
    ld c, a
    rrca
    ccf

jr_077_4acc:
    scf
    ld a, a
    ld c, h
    ld a, a
    ld b, d
    ld a, a
    ret nz

    ld a, a
    ldh [$a8], a
    and h
    rst $38
    db $fc
    db $fc
    ld a, b
    ld hl, sp+$3c
    db $fc
    inc bc
    cp $fd
    ld b, e
    xor b
    and h
    rra
    rra
    rrca
    rrca
    ld e, $1f
    db $fd
    and b
    db $fc
    ld b, b
    rst $38
    rst $38
    ld a, [$faf8]
    ld hl, sp+$77
    cp $f6
    add hl, de
    inc h
    ld h, b
    ld bc, $03ff
    adc b
    and b
    or $a0
    adc b
    nop
    db $e3
    ld [hl-], a
    ld b, b
    jp nc, $ee1e

    inc c
    ld a, [hl]
    add b
    ld b, a
    rst $38
    rst $38
    ld h, a
    inc a
    ld e, a
    jr @-$1e

    jp hl


    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_077_4b5b

    inc e
    jr nc, jr_077_4a9f

    add hl, hl
    adc b
    ld h, $c0
    jr c, jr_077_4acc

    ld a, a
    di
    add b
    rst $18
    ld c, h
    push hl
    ld hl, $faa5
    or b
    ret nz

    pop bc
    push af
    add b
    add d
    cp $9c
    db $fc
    ld [$f853], sp
    add hl, bc
    ld h, $c0
    sbc $82
    add b
    cp $e1
    cp a
    cp $e0
    rst $18
    sbc a
    add b
    pop bc
    add b
    nop
    rst $38
    db $ec
    jp $d780


    rst $00
    add b
    adc a
    cp $e0
    add a
    cp $e0
    db $e3
    add b
    ld a, e

jr_077_4b5b:
    di
    add b
    jr nc, jr_077_4bc8

    rst $38
    rlca
    sbc e
    inc e
    ld [hl], b
    ld c, c
    cpl
    rst $38
    ldh [$59], a
    cp b
    or d
    pop hl
    cp $fe
    ldh [$90], a
    ret nz

    rst $18
    add b
    ld hl, sp-$80
    add d
    add b
    nop
    ld b, [hl]
    ld bc, $5f86
    inc bc
    ld [c], a
    inc bc
    ld a, [$d20b]
    ld l, e
    sbc a
    ldh [$67], a
    rst $30
    ret nz

    ld hl, $e0e0
    ld h, b
    add sp, -$3e
    add b
    ld [c], a
    cp e
    add b
    ldh a, [$fe]
    ldh [$e0], a
    add b
    pop hl
    add [hl]

jr_077_4b99:
    ldh [$cf], a
    dec a
    add b
    sub d
    adc c
    rst $28
    add hl, sp
    rst $08
    ld a, d
    sub d

jr_077_4ba4:
    adc e
    add b
    ld c, h
    inc c
    call z, $9261
    adc d
    ld sp, hl
    cpl
    ld [hl+], a
    db $e3
    jr nz, jr_077_4b99

    ld b, d
    xor e
    xor d
    ld h, b
    ld e, b
    ld b, d
    xor d
    ld a, [c]
    ld b, b
    ld b, d
    xor d
    rst $38
    db $fd
    ld b, d
    xor h
    add hl, bc
    ld c, [hl]
    add b
    sub $e2
    xor b
    ld b, c

jr_077_4bc8:
    ld a, a
    ld [c], a
    xor h
    rst $38
    ld [c], a
    xor h
    rst $38
    rst $38
    ei
    inc hl
    rst $38
    ld [c], a
    xor b
    pop bc
    rst $38
    ld b, b
    ld a, a
    ld h, b
    sbc [hl]
    ld d, d
    jp nz, Jump_000_0f08

    add a
    rlca
    jr nz, jr_077_4ba4

    ld d, d
    rst $00
    rst $38
    pop hl
    cp a
    inc h
    add b
    ld sp, $0089
    and d
    ld d, d
    push bc
    ld [$f1f8], sp
    add hl, de
    ldh a, [rP1]
    pop bc
    ldh [$cb], a
    rst $38
    rst $38
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
    xor $fe
    and $3e
    rst $38
    jp $eaf0


    rra
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    rst $08
    nop
    cp b
    nop
    ld h, a
    nop
    cp l
    ld e, l
    cp $e0
    ld h, a
    nop
    ld hl, sp-$40
    ldh [$ec], a
    ld h, h
    xor $c0
    ld_long $ff7c, a
    adc e
    or b
    ld_long $ff0f, a
    inc d
    xor [hl]
    and b
    ld_long $fff8, a
    sub h
    and b
    db $ec
    ld h, [hl]
    add b
    ld_long $ffbe, a
    rst $38
    ld c, c
    di
    ld bc, $020f
    ld a, a
    inc b
    rst $38
    ld h, a
    inc b
    ld c, a
    ld [$141f], sp
    rra
    ld de, $1fff
    ld [$0dff], sp
    rst $38
    ld [de], a
    rst $38
    inc a
    rst $38
    rst $38
    ld h, d
    rst $38
    ld c, a
    ei
    sbc h
    rst $28
    ld sp, $cfef
    push af
    rst $38
    inc l
    ldh a, [$e0]

jr_077_4c75:
    rrca
    rst $38
    ld de, $efff
    add sp, $5f
    cp h
    rst $20
    ld e, [hl]
    db $e3
    ld e, a
    rst $38
    rst $28
    jr nz, jr_077_4c75

    db $10
    cp $08
    cp $88
    rst $38
    cp $84
    cp $4a
    cp $22
    db $fc
    call nz, $f3bf
    nop
    rrca
    ld bc, $027f
    ret nz

    pop hl
    rrca
    ld a, a
    ld [$101f], sp
    rra
    inc de
    rst $38
    adc c
    ret nz

    ldh [rIE], a
    inc h
    rst $38
    ld e, l
    rst $38
    ld a, a
    jp z, $fff5

    rst $38
    adc d
    ld a, a
    xor d
    rst $38
    db $e4
    rst $38
    sub b
    rst $38
    rst $38
    ld c, e
    rst $38
    and c
    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    rst $38
    ldh a, [rIF]
    ld sp, hl
    rst $08
    add b
    ldh a, [rLCDC]
    cp $ff
    and b
    or $d0
    ld a, [c]
    db $10
    ld hl, sp+$38
    db $fc
    rst $30
    inc b
    cp $1a
    ret nz

    ldh [rP1], a
    ld a, c
    nop
    ld h, e
    rst $38
    inc bc
    ld b, h
    rlca
    rrca
    ld [$0d0f], sp
    rra
    rst $38
    dec c
    rst $38
    ld a, [hl+]
    rst $38
    add hl, hl
    rst $38
    ld c, b
    rst $38
    rst $38
    db $e4
    rra
    db $fc
    rlca
    db $fc
    add e
    ld a, [hl]
    add c
    rst $38
    ld a, a
    rst $38
    ld c, d
    rst $38
    ld [bc], a
    rst $38
    ld [hl], c
    rst $38
    rst $38
    add hl, sp
    rst $38
    ld bc, $03ff
    rst $38
    ld h, b
    rst $38
    rst $38
    adc a
    rst $08
    nop
    ldh a, [rP1]
    sbc [hl]
    nop
    add [hl]
    rst $38
    nop
    add d
    nop
    ret nz

    add b
    ldh [rLCDC], a
    ld hl, sp-$43
    ret nz

    add b
    pop hl
    ld a, e
    ld [bc], a
    ld h, a
    dec b
    add b
    ldh [$0c], a
    xor $80
    ldh [rNR10], a
    rst $38
    adc b
    sub $e0
    and $ff
    ret nz

    cp [hl]
    sbc d
    ret nz

    inc bc
    db $fc
    rlca
    ld hl, sp+$3f
    adc $c0
    db $d3
    rst $38
    rst $38
    ld l, h
    rst $38
    ld d, h
    rst $38
    ld a, [$f90f]
    rst $28
    rlca
    db $fd
    inc bc
    cp $80
    ld [c], a
    ldh [$e6], a

jr_077_4d50:
    jr nz, jr_077_4d50

    add b
    ldh [rNR23], a
    db $fc
    inc d
    db $fc
    inc h
    rst $30
    ld e, $ff
    pop hl
    ccf
    pop hl
    ccf
    ld [c], a
    ccf
    jp nz, $ff7f

    jp z, $df7f

    ld [hl], a
    sbc $73
    rst $08
    ld [hl], a
    rst $38
    sub a
    ld_long a, $ff1f
    jr nz, @+$01

    ld e, [hl]
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    ld a, [c]
    rst $38
    pop de
    pop hl
    rst $18
    sbc a
    pop de
    cp a
    ld hl, sp-$01
    inc b
    ld d, l
    ret nz

    ld b, [hl]
    ret nz

    daa
    rst $38
    rst $38
    ld b, l
    ei
    ld e, $e3
    ld a, [hl]
    jp $f7fe


    inc hl
    cp $21
    ld e, c
    ldh [$fd], a
    rst $30
    cp l
    rst $20
    rst $38
    rst $38
    add hl, bc
    rst $30
    dec e
    di
    rra
    di
    rra
    rst $38
    xor $3f
    rst $28
    dec sp
    rst $28
    dec sp
    rst $20
    dec a
    ld a, a
    ld a, a
    cp [hl]
    ld a, $d5
    ld a, a
    rst $38
    add b
    ld d, c
    ldh [$fe], a
    ld d, $c0
    ld l, $ff
    inc l
    rlca
    cp $27
    db $fc
    rst $38
    di
    rst $38
    add hl, de
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, a
    cp $37
    rst $38
    daa
    rst $20
    ld a, [hl]
    add a
    ld h, $e0
    rst $38
    rlca
    db $fc
    inc de
    cp $bb
    xor $fb
    adc $ff

Call_077_4de0:
    ei
    xor [hl]
    rst $38
    ld b, $ff
    rlca
    db $fc
    rrca
    rst $38
    ldh a, [$3f]
    pop bc
    ld a, a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rst $38
    ld e, $81
    ld a, a
    add c
    rst $38
    ld [hl], b
    rst $38
    cp a
    inc c
    rst $38
    ld a, [c]
    rst $38
    ei
    rst $38
    xor $e0
    ld de, $f07f
    ccf
    ret nz

    ld a, a
    ret nz

    rst $38
    ld b, b
    ld l, [hl]
    ldh [$7f], a
    jr nz, @+$01

    and b
    rst $38
    ldh [rIE], a
    ld a, a
    pop af
    ldh [$f6], a
    db $fc
    pop hl
    ccf
    ldh [$fe], a
    db $e3
    rst $38
    ld c, $f9
    rra
    ld a, [$c0a7]
    rra
    pop af
    db $e4
    ccf
    ld hl, sp+$1f
    ldh a, [$9f]
    ld d, a
    ld [hl], b
    rst $38
    db $10
    cp $e6
    inc bc
    ret


    ret nz

    cp c
    and a
    ldh [$7d], a
    ld bc, $a489
    rst $38
    adc b
    rst $30
    inc a
    rst $00
    and h
    ret nz

    rst $30
    add a
    db $fc
    ld b, e
    ld a, [hl-]
    ldh [rNR44], a
    cp $5f
    ld [hl], l
    rst $38
    sbc $73
    ld c, a
    ld a, e
    rst $08
    ld a, l
    rst $08
    ld a, c
    rst $38
    xor a
    ld a, [hl-]
    rst $20
    ld a, $23
    ld a, $7f
    rst $18
    rst $38
    ld a, a
    pop af
    cp $cf
    ldh a, [rIE]
    ld hl, sp+$7f
    rst $38
    cp $5f
    rst $38
    ld e, a
    rst $38
    inc [hl]
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $00
    cp a
    ld a, c
    add a
    ld a, a
    rrca
    rst $38
    ei
    ccf
    db $fd
    dec sp
    ldh [$96], a
    ld a, l
    rst $10
    dec a
    rst $20
    rst $38
    ld sp, hl
    rst $28
    ld sp, hl
    rst $18
    ld sp, hl
    ld c, a
    ei
    ld l, $ff
    di
    ld a, $e2
    ld a, $27
    dec a
    rst $20
    dec a
    rst $38
    ld [hl], $3f
    xor $3f
    xor [hl]
    ccf
    cp a
    dec de
    rst $38
    rst $38
    ld a, [de]
    rra
    add hl, de
    rst $38
    ei
    add a
    db $fc
    rst $18
    ld b, a
    cp a
    add e
    ld a, [hl]
    dec bc
    inc sp
    and b
    rst $38
    cp $ff
    rst $38
    and h
    db $fd
    rst $30
    ld sp, hl
    ccf
    ld sp, hl
    rst $08
    ei
    rst $38
    ld e, $31
    ldh [$e9], a
    rst $38
    sub c
    rst $38
    pop hl
    rst $38
    ld a, [$fb4e]
    ld c, [hl]
    ld a, [c]
    ld e, [hl]
    di
    sbc [hl]
    rst $30
    di
    sbc [hl]
    push af
    ld a, b
    ldh [rDIV], a
    db $fc
    inc hl
    ccf
    rst $38
    pop de
    ld l, a
    and b
    rst $18
    add c
    rst $38
    rst $00
    ld a, a
    rst $38
    cp a
    ccf
    rst $38
    rra
    ccf
    dec [hl]
    rst $38

jr_077_4eeb:
    ld sp, hl
    rst $38
    cp $1b
    cp $e3
    db $fc
    rlca
    cp $df
    ld e, e
    rst $38
    ld sp, hl
    ld hl, sp-$60
    ldh a, [rNR41]
    db $ed
    add b
    jr nz, @+$09

    ret nz

    rst $18
    ld h, b
    rst $38
    ldh [$bf], a
    ldh [$f4], a
    ret nz

    jr nc, jr_077_4eeb

    ld a, a
    cpl
    ldh [$38], a
    ldh [$27], a
    ldh [$3d], a
    cp $e0
    push hl
    daa
    or $e0
    jr nz, @-$07

    ret nz

    db $fc
    pop hl
    and b
    ccf
    or b
    ld l, $f8
    ret nz

    db $10
    rra
    jr jr_077_4f45

    and b
    ld hl, $c2d2
    db $fc
    pop bc
    ld e, l
    inc e
    sub e
    add d
    add b
    rst $38
    ld a, a
    adc e
    add d
    ld bc, $c068
    ld a, l
    ld [hl+], a
    ld b, h
    ret nz

    ld b, d
    cp $c3
    cp $83
    cp $e0

jr_077_4f45:
    rst $38
    db $e3
    cp $24
    db $fc
    pop hl
    ccf
    db $10
    rra
    rst $38
    ld a, b
    rrca
    ld [hl], b
    rra
    ld d, b
    rra
    ld hl, $2f3f
    ld hl, $333f
    ccf
    call $83e0
    adc a
    ret nz

    rst $38
    ret nz

    cp l
    rst $20
    sub d
    ret nz

    ldh [rIE], a

jr_077_4f69:
    rst $38
    sbc h
    db $f4
    ldh [rSB], a
    or $66
    ret nz

    adc a
    di
    or h
    jp nz, Jump_077_7ec3

    add h
    db $fc
    rst $38
    ld c, $f8
    add [hl]
    db $fc
    add [hl]
    db $fc
    jp nz, $fffe

    jp nz, $e6fe

    cp $ff
    jr jr_077_4fa1

    dec e
    rst $38
    ld h, a
    ld a, $6f
    ld a, $6f
    ccf
    ld a, $3f
    cpl
    ld a, h
    ld a, a
    ld a, h
    ld [hl], a
    sub l
    db $e4
    jr nz, @+$7d

    ldh [rVBK], a
    and b
    ccf

jr_077_4fa1:
    rlca
    rst $38
    rst $38
    ld bc, $03fe
    jr nz, jr_077_4f69

    xor a
    ldh [$fa], a
    or d
    pop hl
    ldh [rNR13], a
    ret nz

    ld [$36f8], sp
    db $fc
    ld b, $ff
    db $fc
    ld [bc], a
    cp $02
    cp $06
    cp $1e
    rst $38
    cp $ff
    ld l, $7f
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    rst $38
    jr nc, @+$71

    ccf
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, e
    ld c, [hl]
    ld d, a
    db $e3
    nop
    rst $38
    ld a, a
    adc $e5
    ld de, $80c1
    nop
    ret nz

    cp $cb
    ld h, l
    ccf
    ldh a, [$50]
    ldh a, [$5e]
    ld hl, sp-$62
    rst $38
    ld hl, sp+$0e
    db $fc
    inc c
    db $fc
    inc e
    db $fc
    inc a
    rst $38
    db $fc
    ldh a, [$1f]
    jr jr_077_5016

    ld l, b
    ccf
    ld h, h
    ei
    ccf
    ld h, b
    ld a, [$60c0]
    ld a, a
    ld [hl], b
    ld a, a
    dec d
    di
    rst $38
    inc de
    rst $10
    add b
    ld [de], a
    push bc
    ld bc, $92ff
    rst $38
    push de
    cp e
    ld a, l
    add b
    pop af
    add b
    and b

jr_077_5016:
    ld a, a
    ld a, [$f9c0]
    rst $38
    rst $38
    ld b, a
    db $fc
    ret z

    ld hl, sp-$3a
    db $fc
    add $fc
    ld c, l
    add d
    ld b, d
    ld [c], a
    cp $fe
    adc d
    and b
    cp $e5
    rra
    add b
    ld h, b
    sbc b
    db $76
    and b
    ld a, b
    and b
    rst $38
    add sp, $07
    cp $3a
    ret nz

    rst $28
    jp hl


    ld a, [hl]
    inc d
    cp $e0
    db $ec
    pop hl
    cp $2f
    and b
    db $fc
    sbc [hl]
    ld h, b
    ld c, $e1
    ld b, h
    and c
    ld e, $c0
    pop hl
    rrca
    rst $38
    rlca
    pop hl
    sbc c
    pop hl
    cp a
    jp hl


    call nc, Call_077_72e9
    ei
    ret nz

    db $e3
    ret nz

    pop hl
    ret nc

    add sp, -$20
    ld a, a
    ldh [$d0], a
    ld [$0141], a
    ret z

    and c
    ld a, a
    jp hl


    sbc d
    pop hl
    sub [hl]
    db $e3
    ret nz

    ld [c], a
    db $fc
    add hl, sp
    pop hl
    ld a, [c]
    sub b
    add sp, $0f
    jp nc, $f2eb

    xor $0f
    rlca
    di
    inc bc
    db $f4
    add b
    ld c, h
    ld l, c
    and b
    db $ec
    pop bc
    add b
    pop hl
    ccf
    pop af
    rra
    cp l
    pop af
    sub e
    push hl
    cp $bf
    db $fc
    sbc e
    db $ec
    and b
    jp Jump_077_7e7f


    ldh a, [$f0]
    rst $28
    ldh [$b8], a
    add b
    add b
    ld b, l
    jp hl


    cp b
    ld [hl+], a
    ld h, b
    ld b, b
    ld c, [hl]
    rst $38

jr_077_50ab:
    db $10
    ld [c], a
    rra
    cp $0f
    daa
    or $1f
    or $53
    db $e3
    ld hl, sp-$40
    rst $08
    cp $e0
    ld [hl], a
    add c
    db $eb
    ldh a, [$c0]
    ld b, b
    ld c, c
    cp b
    ret nc

    add sp, -$01
    rrca
    ld sp, hl
    db $d3
    rrca
    db $fc
    rst $28
    and b
    cp $20
    ld hl, sp+$42
    add l
    ccf
    ldh a, [$fe]
    or b
    db $e3
    cp $3f
    cp $1f
    db $fc
    rrca
    push af
    ei
    rra
    ld hl, sp+$31
    db $e3
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp-$41
    ld h, a
    db $fc
    rst $20
    db $fc
    ld c, a
    ld hl, sp-$20
    ld b, e
    ld h, c
    cp a
    nop
    ld b, c
    nop
    inc bc
    nop
    rlca
    jp nz, $f820

    ld l, e
    rrca
    ld hl, sp-$46
    pop hl
    inc bc
    ld sp, $c785
    db $fc
    cp $e1
    ld [hl], e
    rst $08
    ld a, b
    cp $e1
    jp nz, $f121

    rra
    ld sp, hl
    sbc $e0
    db $f4
    call c, $dae1
    ld [c], a
    rst $38
    db $e3
    ld h, c
    adc a
    ld hl, sp-$71
    ld hl, sp-$1d
    rst $18
    ldh a, [$c1]
    ld h, b
    add d
    jr nz, jr_077_50ab

    ld h, d
    rlca
    cp $03
    db $fc
    cp $e1
    ld e, e
    ld h, c
    ld e, a
    ldh a, [rVBK]
    ld hl, sp+$4f
    ld hl, sp+$03
    ld a, a
    ldh a, [$a8]
    ld h, c
    ld c, c
    ld h, b
    and b
    ldh [$e0], a
    db $e3
    rst $08
    ld h, h
    ld [hl], a
    and b
    add l
    ld e, a
    cp $e2
    sbc a
    cp $e0
    add b
    ld b, b
    ld a, [$4041]
    add hl, hl
    reti


    ld a, [bc]
    jr nc, jr_077_5183

    ld c, l
    ld b, b
    dec hl
    cp b
    xor [hl]
    ldh [$f3], a
    ld b, b
    cp $e9
    nop
    add hl, hl
    cp b
    or $00
    rst $38
    db $ed
    ld [hl], b
    ld [hl+], a
    rlca
    ld h, a
    rlca
    ld [hl], b
    ld h, $21
    ei
    rst $38
    ld c, $3b
    and b
    ld [hl+], a
    db $fd
    dec c
    cp $17
    cp [hl]
    ret


    ret nz

    rst $38
    rst $38
    ld b, d
    rst $38
    jr c, @-$5e

jr_077_5183:
    jr nz, jr_077_51a7

    rst $18
    rst $18
    ret c

    scf
    db $f4
    rrca
    dec a
    ldh [$cf], a
    ld b, b
    rst $38
    ldh a, [rNR41]
    cp $f0
    or $70
    ld a, [$ee08]
    ld [hl-], a
    ld b, b
    ld b, h
    ld hl, sp-$78
    sub d
    push hl
    ldh a, [$80]
    rst $08
    rst $18
    add b
    cp b
    add b

jr_077_51a7:
    rst $20
    add b
    sub d
    dec b
    rrca
    nop
    ld a, h
    ld a, b
    inc bc
    ret nz

    jr z, jr_077_51b3

jr_077_51b3:
    ldh [rP1], a
    ld hl, sp+$00
    nop
    ld b, c
    adc [hl]
    or l
    ld b, c
    ret nz

    ld a, a
    pop bc
    cp $e2
    sub d
    add c
    ld c, a
    pop hl
    sbc h
    ld h, h
    sbc l
    call nz, Call_077_45c8
    inc e
    add h
    ld b, b
    ld b, a
    ld bc, $3cf7
    call nz, Call_077_7763
    add c
    rst $38
    ld b, c
    cp $e2
    db $dd
    add b
    db $dd
    sbc d
    ldh [$fd], a
    cp b
    sub d
    ldh [$f0], a
    add b
    sbc [hl]
    add b
    add [hl]
    add b
    cp b
    ret c

    and l
    ld c, b
    push bc
    ld [de], a
    db $eb
    rst $38
    nop
    ld b, b
    sbc b
    ldh [rLCDC], a
    jp c, Jump_077_423b

    and b
    adc b
    jr nz, jr_077_521e

    ccf
    db $e3
    pop bc
    ret nz

    rst $38
    ld b, a
    or b
    rst $38
    adc a
    inc e
    ld b, b
    ld c, e
    ld hl, $6358
    ld c, $8b
    ld h, d
    sbc l
    nop
    adc b
    jr nz, @-$7d

    rst $38
    pop bc
    db $fc
    ldh [$fe], a
    pop hl
    inc bc
    sbc $4a
    ld h, b

jr_077_521e:
    ld b, d
    cp $82
    add b
    ld [$8020], sp
    ld hl, sp+$14
    xor h
    add $e8
    and e
    rra
    ld a, h
    add $f0
    ld e, $e0
    add b
    xor c
    db $ec
    ld b, c
    cp $20
    ld h, e
    jr nz, jr_077_5279

    jr nc, jr_077_527b

    jr c, @+$41

    sub d
    xor e
    rst $38
    rst $20
    ld a, [c]
    ld b, b
    dec a
    ld l, a
    ld b, b
    rrca
    rrca
    add b
    ld a, a
    cp d
    jp nc, Jump_000_1f60

    add a
    jr nz, @-$20

    rst $38
    inc a
    dec [hl]
    add b
    db $fc
    ld d, $33
    ret nz

    add a
    db $fc
    jr nz, jr_077_52bf

    ld b, $5e
    ld h, d
    ld h, b
    ld h, c
    inc bc
    adc e
    ld b, b
    ld l, l
    ld hl, $8c8f
    db $f4
    ld h, e
    ldh a, [$67]
    reti


    db $e4
    ld l, [hl]
    inc hl
    pop hl
    or h
    ld h, b
    rst $28
    ld a, a
    ld a, a
    add a

jr_077_5279:
    rst $38
    and [hl]

jr_077_527b:
    add b
    cp $f3
    cp $06
    ld d, h
    and b
    ld a, h
    rst $30
    adc h
    add b
    ld e, h
    and c
    cp $e1
    pop hl
    ld b, c
    ld h, h
    and c
    nop
    and [hl]
    and d
    ld h, c
    inc h
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
    db $fc
    nop
    di
    nop
    rst $28
    nop
    rst $18
    call z, $8800
    nop
    sbc b
    cp $e0
    rst $38
    rst $38
    di
    rst $38
    nop
    cp $e9
    rst $38
    db $ed
    cp h
    nop
    rst $18
    nop
    ld [hl], a

jr_077_52bf:
    ldh [rP1], a
    db $ed
    cp $e0
    rst $30
    nop
    ld hl, sp-$2a
    ld [$b8e8], a
    db $e3
    jp nz, $f2eb

    xor $01
    sbc b
    push hl
    cp a
    ccf
    jp z, Jump_077_75ff

    rst $38
    adc d
    ld a, a
    xor d
    inc sp
    nop
    ld de, $00fb
    add hl, de
    cp $e0
    db $fd
    ret nz

    dec sp
    ldh a, [rIF]
    rst $00
    ld hl, sp+$07
    db $fc
    jp nc, $d0eb

    push hl
    jp nc, Jump_077_7fe5

    cp [hl]
    cp [hl]
    ret nc

    db $e3
    reti


    ret nz

    dec a
    ldh a, [$0b]
    jp nc, $03e0

    ld sp, hl
    cp $88
    push hl
    ld b, b
    and $01
    ccf
    ld bc, $01cf
    cp a
    rst $30
    inc bc
    inc a
    rrca
    rra
    dec bc
    cp $e0
    dec b
    rst $38
    ld a, a
    cp [hl]
    ld a, $d5
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    inc bc
    rst $38
    cp a
    rst $38
    rst $38
    xor $ff
    inc l
    rst $38
    inc bc
    cp $23
    cp $f1
    rst $38
    add hl, de
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $77
    rst $38
    daa
    cp $48
    db $e4
    ret nz

    inc a
    ld hl, sp+$38
    add sp, $78
    ret z

    ei
    ld hl, sp-$58
    ld [bc], a
    ldh [$03], a
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    rst $18
    inc d
    cp a
    ld [hl-], a
    rst $38
    ld d, d
    rst $38
    ld c, e
    cp $b0
    ld [c], a
    add e
    db $fc
    adc a
    cp a
    adc e
    rst $38
    db $eb
    ld l, a
    rst $38
    sub l
    rst $38
    adc l
    or d
    db $eb
    rst $38
    ld a, b
    or d
    db $eb
    ld a, e
    db $fd
    or a
    ld hl, sp-$3e
    ret nz

    ccf
    ld hl, sp+$3c
    or d
    ld [c], a
    ei
    ld hl, sp+$48
    add sp, -$3e
    jr nc, @+$01

    ld c, b
    db $fc
    and h
    cp a
    cp $92
    rst $38
    call $b1ff
    ld h, b
    ld [c], a
    inc bc
    or a
    db $fc
    rrca
    ccf
    ld h, d
    ld [c], a
    sbc a
    add l
    or b
    call z, $ff01
    ccf
    dec b
    rst $38
    ld c, l
    ld a, $3f
    cp [hl]
    rra
    rst $38
    cp [hl]
    rrca
    rst $38
    inc sp
    rst $18
    ld a, [c]
    rra
    pop af
    rst $38
    rst $38
    ld a, b
    add a
    cp $47
    cp l
    add e
    ld a, [hl]
    rst $38
    dec bc

jr_077_53b2:
    rst $38
    rra
    rst $38
    rst $38
    cp $ff
    and h
    rst $38
    db $fd
    or a
    ld sp, hl
    ld a, a
    ld sp, hl
    rst $08
    rst $38
    ld e, $ff
    rst $38
    ei
    rst $38
    jp hl


    rst $38
    sub c
    rst $38
    pop hl
    rst $38
    db $fc
    ld c, b
    rst $38
    ld c, b
    ldh a, [$50]
    db $fd
    sub b
    rst $18
    db $fd
    sub b
    rst $30
    jr nz, jr_077_53b2

    cp [hl]
    ret nz

    rst $38
    ld c, h
    rst $38
    rst $38
    inc h
    rst $38
    ld hl, $11ff
    rst $38
    jr @+$01

jr_077_53e8:
    rst $38
    ld d, $ff
    ld [$0fff], sp
    rst $38
    call $feff
    rst $38
    cp $87
    cp $1f
    rst $38
    ld [hl], e
    cp a
    rst $38
    ld [hl-], a
    rst $18
    pop af
    rrca
    ld hl, sp-$4e
    add sp, -$04
    db $fc
    inc d
    pop bc
    or d
    and $d1
    rst $38
    ld sp, $c1ff
    rst $38
    db $ed
    ld bc, $e0b0
    ld d, b
    ldh a, [$b2]
    ldh [$fd], a
    jr nc, jr_077_53e8

    ei
    ld hl, sp+$04
    and b
    pop bc
    ld d, d
    rst $38
    ld e, a
    rst $38
    ld c, b
    cp $ac
    ldh [$3b], a
    rst $38
    ld hl, $1ffe
    ld hl, sp+$0f
    ei
    cp a
    add l
    or b
    ldh [rIE], a
    cp $ab
    rst $38
    ld [hl], e
    db $fd
    sbc a
    ld h, d
    ldh [rIF], a
    ld hl, sp-$02
    inc bc
    cp $03
    di
    db $fc
    rlca
    cp $e1
    sbc l
    ret nz

    ld [bc], a
    rst $38
    inc b
    rrca
    ld a, a
    ld hl, sp-$29
    db $fd
    daa
    cp $2f
    cp $53
    ldh [$dd], a
    ccf
    ei
    ldh [$73], a
    rst $38
    ld a, a
    or b
    and d
    jr nz, @+$01

    ei
    pop hl
    rra
    ld sp, $83c0
    rst $38
    rst $38
    ld bc, $fffe
    inc bc
    db $fd
    rrca
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    sbc a
    rst $38
    db $e3
    rst $38
    di
    ld a, $c5
    pop hl
    cp l
    ldh [$fe], a
    db $fd
    add c
    inc de
    ret nz

    inc bc
    cp $83
    cp $f8
    rrca
    ccf
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
    inc b
    ret nz

    ld a, b
    and d
    ld d, l
    rla
    or d
    ld [c], a
    ld a, a
    adc h
    pop hl
    ld a, a
    inc a
    ldh [$73], a
    or d
    db $ec
    db $fd
    rst $38
    or d
    db $e3
    di
    rst $38
    ld [c], a
    rst $38
    rst $20
    db $fd
    ld a, a
    rst $28
    inc a
    rst $38
    jr c, jr_077_54b4

    cp $01
    add hl, sp

jr_077_54b4:
    pop hl
    ld a, [hl]
    or h
    ldh [$03], a
    cp $c7
    db $fc
    rst $38
    inc a
    or h
    jp hl


    db $f4
    or b
    rst $20
    or l
    ret nz

    ld a, a
    or b
    db $e4
    ld [bc], a
    rst $38
    ld [bc], a
    rst $30
    ld a, a
    dec b
    rst $28
    inc b
    rst $08
    ld [bc], a
    adc c
    ld bc, $a200
    ld a, [de]
    ld c, [hl]
    pop hl
    ccf
    cp $e2
    rst $38
    ccf
    rst $38
    ldh [$f0], a
    add b
    db $fd
    db $eb
    push hl
    ld a, $c7
    and b
    ld hl, sp-$02
    db $e4
    cp l
    and b
    db $e3
    ld a, [hl]
    db $fc
    rst $38
    inc e
    rst $38
    add h
    rst $38
    ld a, h
    cp $f2
    cp $ff
    cp d
    db $fc
    inc h
    db $fc
    ld c, h
    rst $38
    ld a, a
    ld a, a
    ld d, [hl]
    ret nz

    ld [c], a
    ccf
    rra
    rst $38
    ld [c], a
    rrca
    rla
    ldh [$f0], a
    inc de
    ldh [$f9], a
    pop af
    jp nc, $b3e2

    pop hl
    ld [$fcfc], sp
    rst $38
    db $e4
    rst $38
    rst $38
    ld [hl], h
    db $fc
    ld c, b
    ld hl, sp-$68
    ld hl, sp-$10
    ei
    ld hl, sp-$20
    or b
    add c
    pop hl
    ld bc, $03ee
    xor $df
    inc bc
    or $03
    ld sp, hl
    ld bc, $e08c
    rra
    rst $38
    cp a
    rra
    rrca
    rrca
    di
    rst $38
    db $10
    ld a, c
    add b
    ld [bc], a
    ld a, [$e383]
    rst $08
    ld b, c
    and b
    ret nz

    rst $38
    ret nz

    ccf
    ldh [$7b], a
    ccf
    ldh [$72], a
    db $e4
    rra
    db $fc
    rrca
    ld sp, hl
    ret c

    ret nz

    ei
    ld a, [$420f]
    add b
    ldh a, [rIE]
    ldh [$f8], a
    ld hl, sp-$29
    ld h, l
    db $fc
    add e
    ld [hl], a
    ret nz

    inc b
    ld l, $c0
    ccf
    rrca
    set 7, a
    rrca
    ret nz

    db $ec
    ldh [$fe], a
    ldh [$c0], a
    jp hl


    rra
    rst $38
    and c
    rrca
    ret nz

    add sp, -$1e
    ldh [$c0], a
    jp hl


    nop
    add b
    add b
    cp $f3
    db $fc
    rst $38
    add b
    di
    add b
    rst $28
    add b
    call z, $8880
    ei
    add b
    sbc b
    cp $e0
    cp h
    add b
    rst $18
    add b
    ldh [$f7], a
    add b
    db $ed
    add b
    ld b, b
    add l
    dec a
    nop
    ei
    nop
    ld [hl], a
    rlca
    nop
    or a
    ld hl, sp+$63
    inc bc
    rst $38
    inc [hl]
    ld a, b
    and b
    sbc a
    and h
    rst $38
    sub h
    rst $38
    adc $10
    and h
    ret nz

    add b
    sbc a
    rst $18
    adc e
    sbc a
    add l
    sbc a
    add l
    ld [hl], d
    adc b
    rst $28
    rst $38
    rst $10
    ld l, h
    rst $38
    ld a, c
    ld [hl], d
    adc b
    rst $30
    ret nz

    add b
    rst $30
    db $ed
    xor a
    add b
    rst $30
    add b
    ld hl, sp+$7e
    add sp, -$49
    ld h, h
    ld h, b
    rra
    cp $6e
    ld l, c
    or b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld c, c
    cp [hl]
    ld a, [de]
    and b
    inc [hl]
    rst $38
    inc hl
    db $fc
    rra
    jr nz, @-$5e

    cp a
    ccf
    cp $9f
    cp $cf
    cp a
    di
    ld [hl], b
    and e
    jp nc, $bd80

    cp a
    jp nc, $ff87

    ld a, a
    ld sp, hl
    ccf
    jp nc, $ff89

    dec e
    ld bc, $a1b0
    xor a
    cp $ff
    ld [bc], a
    ret nz

    or b
    and e
    ld c, b
    push hl
    ld [bc], a
    sbc b
    db $e4
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    push hl
    nop
    call z, $ac00
    nop
    cp b
    nop
    cp [hl]
    ldh a, [$e3]
    inc b
    nop
    di
    nop
    ld b, $fa
    ldh [$64], a
    ld hl, sp-$10
    db $e4
    db $fc
    rst $20
    rst $38
    db $ed
    add e
    nop
    add a
    nop
    rst $00
    di
    nop
    db $e3
    cp [hl]
    ldh [$d8], a
    db $e3
    ld [hl], h
    nop
    db $f4
    nop
    dec b
    db $e4
    jp c, Jump_000_04e0

    jp z, $bcea

    push hl
    jp c, $ace5

    push hl
    jp c, $bef3

    adc [hl]
    db $e4

jr_077_5666:
    ld bc, $03fe
    db $fc
    rlca
    ld l, b
    and $7c
    ccf
    add e
    rst $38
    ld l, d
    sub l
    rst $38
    ld l, d
    ld l, b
    push hl
    sbc b
    ld [c], a
    or a
    add b
    ld b, b
    ret nz

    jp nc, $f8eb

    rrca
    jr c, jr_077_5666

    db $fc
    or $d2
    db $e4
    ld a, a
    or a
    ret nc

    add sp, -$80
    ld h, h
    ret nz

    and b
    ld a, l
    ld h, b
    call nc, $f0e9
    rra
    ldh a, [$1f]
    push hl
    call nc, $efe8
    cp a
    sbc $e1
    rst $38
    ld [$e4e3], sp
    add b
    ld [hl], h
    ld a, a
    ret nz

    or h
    ld h, b
    inc h
    ldh [$a6], a
    and $48
    push hl
    rst $38
    push hl
    ld bc, $1fdf
    cp a
    ld de, $10bf
    cp $ca
    db $e3
    db $e3
    rst $38
    dec h
    rst $38
    rlca
    rst $38
    adc a
    rst $30
    rst $38
    rst $08
    ld a, d
    jp z, Jump_000_00e3

    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    dec sp
    rst $38
    ld e, $a4
    ld h, b
    rst $38
    ccf
    ldh [$bf], a
    and $7f
    ld [$f21f], a
    ccf
    rst $28
    ld a, [$3aff]
    rst $38
    and h
    ret nz

    and $a0
    push bc
    cp [hl]
    or d
    jp nz, $01f9

    rst $38
    rra
    rst $18
    or d
    ldh [$bf], a
    db $ed
    add hl, bc
    or d
    db $eb
    rst $38
    ld a, [hl-]
    or d
    db $eb
    rst $38
    ld d, a
    inc h
    ld a, [$ebb2]
    ld [hl], a
    add sp, -$3f
    rst $38
    rra
    rst $38
    ld de, $7fff
    db $10
    rst $08
    add hl, bc
    xor a
    inc b
    cp e
    ld [bc], a
    call nz, $efe9
    rst $28
    cp c
    rst $30
    ld a, h
    call nz, $fae9
    dec a
    pop hl
    ei
    cp $6e
    call nz, $cee9
    ccf
    db $ec
    adc a
    add hl, bc
    cp a
    add a
    inc b
    rst $00
    ld [bc], a
    db $e3
    ld bc, $e07e
    ld bc, $26fc
    jp nz, $e2ca

    rst $28
    ld a, a
    di
    ccf
    rst $38
    inc l
    rst $28
    rst $38
    sub c
    rst $38
    pop af
    jp z, $e8e3

    cp a
    db $fc
    sbc $e7
    and b
    rst $38
    sub h
    rst $38
    jp $e3ca


    ccf
    ld a, [$7fff]
    ld a, [c]
    rst $38
    and d
    rst $38
    call nz, Call_000_0efe
    ccf
    add a
    inc b
    add a
    ld [bc], a
    rst $00
    ld bc, $e2c0
    ld e, [hl]
    jp nz, $c2f6

    db $eb
    rra
    ldh a, [$c2]
    add sp, -$6b
    rst $38
    adc [hl]
    rst $38
    db $fd
    ldh a, [$c2]
    jp hl


    rst $38
    ld c, $f9
    rra
    sbc a
    rra
    rst $38
    and b
    ccf
    ret nz

    ld a, a
    sbc a
    rst $38
    cp a
    db $ec
    cp a
    rst $38
    ld e, b
    rst $38
    ld d, d
    rst $38
    add c
    add [hl]
    ldh [rIE], a
    rst $38
    ccf
    db $ec
    rst $18
    ld sp, hl
    rst $38
    ld sp, $49ff
    rst $28
    rst $38
    jr z, @+$01

    inc l
    add [hl]
    add sp, -$74
    rst $38
    ld [hl], b
    rst $38
    rst $38
    add c
    ccf
    ei
    ld a, [hl]
    di
    cp $a3
    rst $38
    db $fd
    rst $00
    db $fd
    rrca
    db $fd
    rra
    rst $38
    rra
    rst $38
    ei
    ccf
    db $e3
    ldh [rNR22], a
    ldh a, [$1f]
    db $fc
    rst $38
    ld a, a
    ld [c], a
    cp $8e
    rst $38
    ld b, d
    rst $38
    add c
    ld hl, sp-$36
    ldh [$0a], a
    jp nz, $c134

    di
    rra

jr_077_57cd:
    rst $38
    inc c
    rst $38
    rst $38
    db $10
    rra
    pop af
    rrca
    ld hl, sp+$07
    db $fc
    daa
    rst $38
    rst $38
    inc de
    rst $38
    db $d3
    rst $38
    rst $38
    ccf
    rst $38
    ld a, l
    rrca
    cp d
    db $e3
    rst $38
    jp $fffc


    ldh [$73], a
    ldh [rIE], a
    rst $38
    ccf
    ld sp, hl
    rra
    db $fc
    rra
    ld a, [$dd3f]
    db $dd
    rst $20
    ldh [rIF], a
    db $fc
    ccf
    dec de
    pop hl
    nop
    rst $38
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $18
    ldh [$df], a
    and b
    rst $38
    ldh [$fc], a
    rlca
    and $a5
    rst $30
    rra
    rst $28
    rst $38
    jr @+$01

    jr nz, jr_077_57cd

    pop hl
    ld b, a
    rst $38
    inc hl
    ld e, [hl]
    cp $e0
    and e
    rst $38
    rst $38
    ld a, a
    add [hl]
    ret nz

    nop
    or d
    push hl
    db $e4
    or b
    db $e3
    or d
    db $e3
    dec c
    or b
    rst $20
    or d
    rst $20
    sub b
    rst $38
    or b
    cp d
    db $fc
    ldh [$89], a
    db $fc
    and b
    ld d, d
    rst $38
    cpl
    ld c, h
    ret nz

    inc bc
    adc [hl]
    cp $e1
    rst $30
    ccf
    db $e3
    xor e
    ret nz

    rst $38
    add sp, $66
    ld [c], a
    ld hl, sp-$1e
    ld d, h
    pop hl
    ccf
    adc l
    pop bc
    ld h, [hl]
    add sp, -$26
    db $e3
    add hl, hl
    rst $38
    sub d
    ei
    rst $38
    db $fc
    ld e, h
    ldh [$c0], a
    rst $38
    ret nc

    rst $28
    ld hl, sp-$01
    ld c, a
    ld hl, sp-$01
    ld d, $ff
    ld [$10ff], sp
    rst $38
    rst $38
    ld [de], a
    rst $38

jr_077_5875:
    dec d
    rst $18
    db $10
    xor a
    ld [$bfef], sp
    dec b
    rst $38
    scf
    inc e
    ldh [rTAC], a
    rst $38
    add e
    dec sp
    rst $38
    ld c, e
    dec c
    ldh [$1f], a
    rst $38
    ld c, a
    cp d
    db $e3
    db $fc
    ld hl, sp-$03
    and b
    cp $e1
    ld hl, sp-$40
    push hl
    add b
    call z, $ea80
    db $10
    add d
    inc l
    or d
    ldh [rNR41], a
    ld sp, $2aa0
    rst $38
    jr nz, jr_077_5875

    ld [hl], b
    and b
    ld a, [bc]
    rst $38
    ld l, a
    and d
    and b
    xor [hl]
    pop hl
    sub a
    rst $38
    dec d
    daa
    ret nz

    ret nz

    sbc a
    ld a, [hl-]
    ldh [$90], a
    ret nc

    ld [$e13a], a
    jp nz, $e4a0

    ret nc

    ld l, b
    ld [hl-], a
    and $7f
    rst $38
    ldh [$82], a
    ld_long $fffe, a
    ld hl, sp-$29
    cp $ff
    db $fd
    ld [hl+], a
    ldh [$f0], a
    and a
    and b
    ldh a, [$9f]
    rst $18
    pop af
    rra
    rst $38
    ld c, $8f
    ld d, e
    pop bc
    ld hl, sp+$18
    or a
    ldh a, [$e5]
    ldh [$80], a
    db $e3
    add e
    inc bc
    ret nz

    ld h, d
    ld [bc], a
    db $ed
    db $fd
    adc b
    ret nz

    cp $03
    or a
    push hl
    adc a
    rst $38
    db $e3
    rst $08
    rst $38
    ld b, b
    rst $38
    inc b
    call c, Call_000_16c6
    ret nz

    ld bc, $e7fe
    add e
    cp $83
    xor h
    ld [c], a
    cp $e0
    rst $20
    db $fc
    rst $08
    db $db
    rst $38
    ld [bc], a
    ld c, c
    ldh [rIE], a
    rst $38
    add b
    ld h, h
    ld b, b
    cp b
    ld [hl], a
    ldh [$3f], a
    ldh [$3c], a
    ret nz

    rst $38
    add a
    rlca
    or b
    db $eb
    jp c, Jump_077_6560

    rst $38
    db $e4
    ld h, b
    db $fc
    rlca
    ld e, h
    pop hl
    sbc a
    rst $38
    ld [hl], a
    add $7f
    and b
    cp e
    add b
    add e
    cp $07
    dec de
    and c
    ld bc, $00c0
    pop bc
    db $fc
    and b
    ld a, [de]
    ld h, e
    ret nc

    and $30
    ld h, h
    ld a, [$e081]
    db $e3
    ld h, $fa
    ld a, [c]
    ld hl, sp-$80
    ld [hl], d
    add b
    cp $e8
    dec b
    add sp, -$3a
    add sp, $43
    db $e3
    rst $38
    ld a, $50
    ld l, d
    jp nz, $8840

    jp nz, $b880

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
    cp [hl]
    ret nc

    db $eb
    db $e3
    nop
    di
    ld bc, $ba07
    ldh [$65], a
    rst $38
    ld bc, $0175
    push af
    ld bc, $01e5
    ld bc, $9afa
    add h
    inc b
    ld h, $60
    ld [$710f], sp
    ld a, a
    sub d
    rst $38
    rst $38
    pop bc
    rst $38
    dec [hl]
    jp z, $b57f

    ccf
    rst $28
    db $db
    ld e, a
    rst $28
    ld [hl], b
    ld b, a
    and b
    rst $28
    rst $38
    add h
    cp $44
    and b
    cp a
    ld h, b
    rst $18
    or b
    sbc a
    ld [hl], b
    rst $18
    sbc a
    di
    ccf
    push af
    adc a
    ld sp, hl
    xor b
    ld b, l
    ld b, b
    ld b, l
    adc a
    rst $38
    rrca
    adc a
    ld [$08cf], sp
    rst $20
    inc b
    ei
    db $fd
    ld [bc], a
    db $10
    add e
    add e
    rst $38
    rst $00
    rst $38
    rst $20
    dec a
    rst $38
    rst $38
    sbc l
    rst $30
    ld e, h
    ei
    ld a, $f7
    cp a
    cp a
    ld sp, hl
    sbc a
    rst $38
    push af
    rst $38
    sbc l
    jp c, $fb80

    rst $38
    db $fd
    sbc [hl]
    ldh a, [$7f]
    db $f4
    rst $18
    cp $ff
    ei
    rst $30
    db $fd
    ldh a, [$e0]
    ld a, [c]
    rst $38
    cp e
    ld a, a
    rst $20
    cp a
    sbc a
    db $76
    rra
    db $fd
    ccf
    jp hl


jr_077_59f5:
    jr nz, jr_077_5a3b

    add b
    ldh a, [rDMA]
    ld b, [hl]
    ld l, d
    ld b, d
    cp $e3
    adc b
    add c
    rst $38
    sub [hl]
    ld a, a
    ret


    rst $38
    ccf
    ld sp, hl
    rrca
    ld hl, sp+$17
    db $fc
    dec sp
    cp $af
    ld b, a
    rst $38
    rrca
    ld sp, hl
    or b
    jr nz, jr_077_59f5

    ld [$e0a0], sp
    ld a, d
    xor d
    jr nz, jr_077_5a5d

    adc d
    add c
    rst $38
    pop af
    cp $c3
    xor h
    add b
    ccf
    rrca
    db $fc
    rrca
    rst $38
    sbc a
    db $ec
    ld [hl], c
    add b
    sub b
    add c
    rst $30
    ld a, a
    ret nz

    ccf
    ld d, d
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [$fb]

jr_077_5a3b:
    rst $18
    ldh a, [$90]
    add c
    cp $03
    ld a, [$e703]
    rst $38
    inc bc
    rst $08
    inc bc
    xor a
    inc bc
    cp c
    ld bc, $f71f
    ld a, [c]
    ccf
    db $e4
    ld [hl], $c0
    jp $d67f


    rst $38
    rst $38
    call nc, $e1ff
    rst $38
    db $e4

jr_077_5a5d:
    ld hl, sp+$3f
    rst $38
    push af
    ld e, a
    jp nz, $4f82

    cp h
    add d
    sbc a
    ccf
    ldh a, [rIE]
    ld d, l
    db $ec
    ld e, d
    ld h, b
    db $ed
    and [hl]
    ld h, b
    and $c9
    add b
    di
    sbc h
    add b
    rst $38
    ld d, b
    rst $38
    db $10
    ld hl, sp-$70

jr_077_5a7e:
    push af
    or b
    db $fc
    rst $38
    db $10
    db $ec
    jr nz, jr_077_5a7e

    ld b, b
    add e
    ld bc, $b587
    ld bc, $2070
    inc bc
    or b
    and [hl]
    ld a, [c]
    rst $38
    ld l, h
    ldh [$3f], a
    ld [de], a
    ld d, h
    ld b, b
    ld h, b
    or b
    and e
    ld e, [hl]
    and l
    pop bc
    or b
    and h
    sub [hl]
    add h
    or b
    and l
    adc a
    jp $c7c0


    ret nz

    ld l, b
    ret nz

    or b
    and [hl]
    jr nc, jr_077_5adc

    rst $38
    nop
    nop
    nop
    inc b
    ld e, e
    ld a, [hl]
    ld e, e
    ld hl, sp+$5b
    ld [hl], e
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor $5c
    ld c, a
    ld e, l
    cp a
    ld e, l
    daa
    ld e, [hl]
    adc c
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$555e], a
    ld e, a
    cp a
    ld e, a
    add hl, hl
    ld h, b

jr_077_5adc:
    sub e
    ld h, b
    cp $60
    ld l, c
    ld h, c
    call nc, Call_000_3f61
    ld h, d
    xor h
    ld h, d
    add hl, de
    ld h, e
    add [hl]
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ld h, e
    ld d, l
    ld h, h
    or a
    ld h, h
    dec e
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    dec c
    rst $38
    db $e4
    dec l
    dec l
    dec c
    dec l
    push af
    push hl
    db $fd
    ld [c], a
    ld [hl], b
    db $ec
    db $e3
    or $e8
    ret c

    and $f6
    ldh a, [rKEY1]
    ld c, l
    ld c, l
    or a
    ld [c], a
    rst $38
    ld l, l
    ld l, l
    ld h, b
    ld h, c
    nop
    nop
    nop
    ld bc, $01ff
    ld bc, $6263
    ld l, b
    jr nz, jr_077_5b34

    dec b
    rst $38
    dec b
    inc b
    inc b

jr_077_5b34:
    inc b
    dec de
    ld l, c
    ld l, b
    inc b
    rst $38
    ld de, $0a05
    dec bc
    inc c
    dec c
    dec b
    ld l, c
    rst $38
    ld [hl], h
    inc b
    jr nz, jr_077_5b5e

    jr @+$1b

    ld a, [de]
    dec de
    rst $38
    dec b
    ld [hl], l
    ld l, c
    ld c, h
    inc b
    ld h, $27
    jr z, @+$01

    add hl, hl
    dec b
    ld a, e
    ld l, b
    ld a, a
    dec b
    ld c, h
    inc [hl]
    rst $38

jr_077_5b5e:
    dec [hl]
    ld [hl], $37
    jr c, jr_077_5b67

    add b
    ld l, b
    add [hl]
    rst $38

jr_077_5b67:
    add a
    ld b, e
    ld b, h
    ld b, b
    ld b, l
    ld b, [hl]
    adc b
    ld l, c
    rst $38
    ld h, b
    ld bc, $5101
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    inc bc
    nop
    ld h, d
    nop
    nop
    nop
    dec a
    dec c
    rst $38
    db $e4
    dec l
    dec l
    dec c
    dec l
    push af
    push hl
    db $fd
    ld [c], a
    ld [hl], b
    db $ec
    db $e3
    or $e8
    ret c

    and $f6
    ldh a, [rKEY1]
    ld c, l
    ld c, l
    or a
    ld [c], a
    rst $38
    ld l, l
    ld l, l
    ld h, d
    ld h, e
    ld bc, $0101
    nop
    rst $38
    nop
    nop
    ld h, c
    ld h, b
    ld l, c
    dec de
    inc b
    inc b
    rst $38
    inc b
    dec b
    dec b
    dec b
    jr nz, jr_077_5c19

    ld l, c
    dec b
    rst $38
    dec c
    inc b
    ld c, $0f
    db $10
    ld de, $6804
    rst $38
    ld [hl], l
    dec b
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$01

    inc b
    ld [hl], h
    ld l, b
    ld a, e
    dec b
    ld a, [hl+]
    dec hl
    inc l
    rst $38
    dec l
    ld l, $4c
    ld l, c
    add b
    inc b
    ld a, e
    add hl, sp
    rst $38
    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec b
    ld a, a
    ld l, c
    adc b
    rst $38
    adc c
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    add [hl]
    ld l, b
    rst $38
    ld h, d
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    inc bc
    ld bc, $0060
    nop
    nop
    dec a
    dec c
    rst $38
    db $e4
    dec l
    dec l
    dec c
    dec l
    push af
    push hl
    db $fd
    ld [c], a
    ld [hl], b
    db $ec
    db $e3
    or $e8
    ret c

    and $f6
    ldh a, [rKEY1]
    ld c, l
    ld c, l
    or a
    pop hl
    rst $38
    ld c, l
    ld l, l
    ld l, l
    ld h, b
    ld h, c
    nop

jr_077_5c19:
    nop
    nop
    rst $38
    ld bc, $0302
    ld h, e
    ld h, d
    ld l, b
    jr nz, @+$07

    rst $38
    dec b
    ld b, $07
    ld [$1b09], sp
    ld l, c
    ld l, b
    rst $38
    inc b
    ld de, $1312
    inc d
    dec d
    ld d, $05
    rst $38
    ld l, c
    ld [hl], h
    inc b
    jr nz, jr_077_5c5d

    ld [hl+], a
    inc hl
    inc h
    rst $38
    dec h
    dec b
    ld [hl], l
    ld l, c
    ld c, h
    inc b
    cpl
    jr nc, @+$01

    ld sp, $3332
    ld a, e
    ld l, b
    ld a, a
    dec b
    ld c, h
    rst $38
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    inc b
    add b
    ld l, b
    rst $38
    add [hl]
    add a

jr_077_5c5d:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    adc b
    rst $38
    ld l, c
    ld h, b
    ld bc, $5b01
    ld e, h
    ld e, l
    ld e, [hl]
    rlca
    nop
    nop
    ld h, d
    nop
    nop
    nop
    dec a
    dec c
    rst $38
    db $e4
    dec l
    dec l
    dec c
    dec l
    push af
    push hl
    db $fd
    ld [c], a
    ld [hl], b
    db $ec
    db $e3
    or $e8
    ret c

    and $f6
    ldh a, [rKEY1]
    ld c, l
    ld c, l
    jp nz, $ffe1

    ld c, l
    ld l, l
    ld l, l
    ld h, d
    ld h, e
    ld bc, $0101
    rst $38
    nop
    nop
    ld e, a
    ld h, c
    ld h, b
    ld l, c
    dec de
    inc b
    rst $38
    inc b
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    jr nz, jr_077_5d0f

    ld l, c
    rst $38
    dec b
    dec c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    inc b
    rst $38
    ld l, b
    ld [hl], l
    dec b
    dec de
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    rst $38
    ld [hl], e
    inc b
    ld [hl], h
    ld l, b
    ld a, e
    dec b
    db $76
    ld [hl], a
    rst $38
    ld a, b
    ld a, c
    ld a, d
    ld c, h
    ld l, c
    add b
    inc b
    ld a, e
    rst $38
    ld a, h
    ld a, l
    ld c, c
    ld c, d
    ld a, [hl]
    dec b
    ld a, a
    ld l, c
    rst $38
    adc b
    adc c
    add c
    add d
    add e
    add h
    add l
    add [hl]
    rst $38
    ld l, b
    ld h, d
    nop
    nop
    ld e, [hl]
    adc d
    adc e
    adc h
    rlca
    ld bc, $6001
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ld h, b
    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $f2
    ld h, h
    nop
    rst $38
    db $e4
    rst $30
    ld h, h
    ld h, [hl]
    ld b, $ff

jr_077_5d0f:
    db $e4
    ld h, [hl]
    ld l, c
    rrca
    rrca
    rst $30
    rrca
    db $10
    ld de, $e0fb
    ld l, c
    ld l, l
    ld b, $06
    rst $38
    dec de
    inc e
    dec e
    ld e, $06
    ld b, $6d
    ld [hl], d
    rst $38
    rrca
    rrca
    dec hl
    inc l
    dec l
    ld l, $0f
    rrca
    cp l
    ld [hl], d
    ret c

    ldh [$3b], a
    inc a
    dec a
    ld a, $d8
    db $e3
    ld c, e
    rst $30
    ld c, h
    ld c, l
    ld c, [hl]
    ret c

    ldh [$7f], a
    ld e, l
    ld e, l
    ld e, c
    ccf
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, l
    ld a, a
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    db $fd
    ldh [$2d], a
    db $fd
    pop hl
    or $e1
    cp $e0
    add b
    or $ea
    db $ed
    db $e4
    cp $e2
    or $e5
    ret c

    db $ec
    call nz, $bae7
    pop hl
    ld h, h
    rst $18
    nop
    nop
    nop
    ld bc, $fb01
    ldh [$64], a
    ld h, [hl]
    rst $38
    ld b, $06
    rlca
    ld [$0a09], sp
    ld b, $06
    rst $38
    ld h, [hl]
    ld l, c
    rrca
    rrca
    ld [de], a
    inc de
    inc d
    dec d
    rst $38
    rrca
    rrca
    ld l, c
    ld l, l
    ld b, $06
    rra
    jr nz, @+$01

    ld hl, $0622
    ld b, $6d
    ld [hl], d
    rrca
    rrca
    ld a, a
    cpl
    jr nc, @+$33

    ld [hl-], a
    rrca
    rrca
    ld [hl], d
    ret c

    ldh [$ef], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ret c

    db $e3
    rrca
    ld c, a
    ld d, b
    cp $fb
    ldh [rBCPD], a
    ld a, a
    ld e, l
    ld e, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld [bc], a
    ei
    ldh [$7f], a
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    rst $38
    pop hl
    dec l
    ld sp, hl
    ldh [$f6], a
    ldh a, [$e0]
    db $e3
    db $e4
    cp $e2
    or $e5
    adc $f4
    db $db
    ld [c], a
    dec l
    ld h, h
    nop
    rst $38
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    ld h, h
    rst $38
    ld h, [hl]
    ld b, $06
    dec bc
    inc c
    dec c
    ld c, $06
    rst $38
    ld b, $66
    ld l, c
    rrca
    rrca
    ld d, $17
    jr @+$01

    add hl, de
    rrca
    rrca
    ld l, c
    ld l, l
    ld b, $06
    inc hl
    rst $38
    inc h
    dec h
    ld h, $06
    ld b, $6d
    ld [hl], d
    rrca
    rst $38
    rrca
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $0f
    rrca
    ld [hl], d
    sbc $d8
    ldh [rSCX], a
    ld b, h
    ld b, l
    ld b, [hl]
    ret c

    db $e3
    ld d, c
    ld d, d
    ld e, e
    ld d, e
    ld d, h
    ret c

    ldh [$7f], a
    ld e, l
    rst $38
    db $e4
    ld a, a
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    rst $28
    pop hl
    db $fd
    pop hl
    pop bc
    dec c
    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $f2
    ld h, h
    nop
    xor $ff
    db $e4
    ld h, h
    ld h, [hl]
    ld b, $ff
    db $e4
    ld h, [hl]
    ld l, c
    rrca
    rst $28
    rrca
    rrca
    ld a, [de]
    ld a, [de]
    ei
    ldh [rBCPD], a
    ld l, l
    ld b, $ff
    ld b, $27
    jr z, jr_077_5e85

    ld a, [hl+]
    ld b, $06
    ld l, l
    rst $38
    ld [hl], d
    rrca
    rrca
    scf
    jr c, @+$3b

    ld a, [hl-]
    rrca
    ld a, e
    rrca
    ld [hl], d
    ret c

    ldh [rBGP], a
    ld c, b
    ld c, c
    ld c, d
    ret c

    db $e3
    rst $28
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ret c

    ldh [$7f], a
    ld e, l
    ld e, l
    ld a, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld e, l
    ld e, l

jr_077_5e85:
    ld a, a
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ld h, b
    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $f2
    ld h, h
    nop
    rst $38
    db $e4
    rst $30
    ld h, h
    ld h, [hl]
    ld b, $ff
    db $e4
    ld h, [hl]
    ld l, c
    rrca
    rrca
    rst $30
    rrca
    ld h, a
    ld l, b
    ei
    ldh [rBCPD], a
    ld l, l
    ld b, $06
    rst $38
    ld l, d
    ld l, e
    dec c
    ld l, h
    ld b, $06
    ld l, l
    ld [hl], d
    rst $38
    rrca
    rrca
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    rrca
    rrca
    cp l
    ld [hl], d
    ret c

    ldh [$73], a
    ld [hl], h
    ld [hl], l
    db $76
    ret c

    db $e3
    ld [hl], a
    rst $30
    ld a, b
    ld a, c
    ld a, d
    ret c

    ldh [$7f], a
    ld e, l
    ld e, l
    ld a, e
    ccf
    ld a, h
    ld a, l
    ld a, [hl]

Jump_077_5ee4:
    ld e, l
    ld e, l
    ld a, a
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    rst $38
    pop hl
    dec l
    ld sp, hl
    db $e3
    rst $30
    pop hl
    db $ec
    or $ff
    db $ec
    xor $4d
    ld c, l
    cp d
    pop hl
    dec l
    dec c
    ld l, l
    rst $38
    ld l, l
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld bc, $0302
    rst $38
    nop
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, [bc]
    dec bc
    rst $38
    inc c
    dec c
    ld a, c
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    rst $38
    ld a, [de]
    dec de
    inc e
    dec e
    add b
    ld a, a
    ld a, [hl]
    add l
    rst $38
    add [hl]
    add a
    ld a, [hl+]
    dec hl
    inc l
    dec l
    add a
    add [hl]
    cp l
    add l
    ld [c], a
    ldh [$3a], a
    dec sp
    inc a
    dec a
    ld [c], a
    db $e3
    ld c, d
    rst $30
    ld c, e
    ld c, h
    ld c, l
    ld [c], a
    db $e3
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    cp $e2
    ldh [rSVBK], a
    ld [hl], c
    ld h, h
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, h
    rlca
    ld h, h
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    ld sp, hl
    pop hl
    db $fd
    pop hl
    reti


    dec l
    or $ff
    db $ec
    rst $28
    ld c, l
    ld c, l
    cp d
    db $e3
    ld l, l
    ld l, l
    rst $38
    ld [hl], b
    ld [hl], c
    nop
    nop
    inc b
    dec b
    nop
    nop
    rst $38
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld c, $0f
    db $10
    rst $38
    ld de, $7879
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    ld e, $ff
    rra
    jr nz, jr_077_5fad

    add b
    ld a, a
    ld a, [hl]
    add l
    add [hl]
    rst $38
    add a
    ld l, $2f
    jr nc, jr_077_5fc8

    add a
    add [hl]
    add l
    sbc $e2
    ldh [$3e], a
    ccf
    ld b, b
    ld b, c
    ld [c], a
    db $e3
    ld c, [hl]
    ld c, h
    ld a, e
    ld c, a
    ld d, b
    ld [c], a
    db $e3
    ld e, h
    ld e, l
    ld e, [hl]

jr_077_5fad:
    ld e, a
    ld [c], a
    ldh [rIE], a
    ld [hl], b
    ld [hl], c
    ld h, h
    ld h, h
    ld h, a
    ld l, b
    ld h, h
    ld h, h
    inc bc
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    ld sp, hl

jr_077_5fc8:
    pop hl
    db $fd
    pop hl
    reti


    dec l
    or $ff
    db $ec
    rst $28
    ld c, l
    ld c, l
    cp d
    db $e3
    ld l, l
    ld l, l
    rst $38
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld b, $07
    nop
    nop
    rst $38
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld [de], a
    inc de
    inc d
    rst $38
    dec d
    ld a, c
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    ld [hl+], a
    rst $38
    inc hl
    inc h
    dec h
    add b
    ld a, a
    ld a, [hl]
    add l
    add [hl]
    rst $38
    add a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    add a
    add [hl]
    add l
    sbc $e2
    ldh [rSCY], a
    ld b, e
    ld b, h
    ld b, l
    ld [c], a
    db $e3
    ld d, c
    ld d, d
    ld a, e
    ld d, e
    ld d, h
    ld [c], a
    db $e3
    ld e, h
    ld h, b
    ld h, c
    ld e, a
    ld [c], a
    ldh [rIE], a
    ld [hl], b
    ld [hl], c
    ld h, h
    ld h, h
    ld l, c
    ld l, d
    ld h, h
    ld h, h
    inc bc
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    ld sp, hl
    pop hl
    db $fd
    pop hl
    reti


    dec l
    or $ff
    db $ec
    rst $28
    ld c, l
    ld c, l
    cp d
    db $e3
    ld l, l
    ld l, l
    rst $38
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld [$0009], sp
    nop
    rst $38
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld d, $17
    jr @+$01

    add hl, de
    ld a, c
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    ld h, $ff
    daa
    jr z, jr_077_6089

    add b
    ld a, a
    ld a, [hl]
    add l
    add [hl]
    rst $38
    add a
    ld [hl], $37
    jr c, @+$3b

    add a
    add [hl]
    add l
    sbc $e2
    ldh [rDMA], a
    ld b, a
    ld c, b
    ld c, c
    ld [c], a
    db $e3
    ld d, l
    ld d, [hl]
    ld a, e
    ld d, a
    ld d, b
    ld [c], a
    db $e3
    ld e, h
    ld h, d
    ld h, e
    ld e, a
    ld [c], a
    ldh [rIE], a
    ld [hl], b
    ld [hl], c
    ld h, h
    ld h, h

jr_077_6089:
    ld l, e
    ld l, h
    ld h, h
    ld h, h
    inc bc
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    rst $38
    pop hl
    dec l
    ld sp, hl
    db $e3
    rst $30
    pop hl
    db $ec
    or $ff
    db $ec
    xor $4d
    ld c, l
    cp d
    pop hl
    dec l
    dec c
    ld l, l
    rst $38
    ld l, l
    ld [hl], b
    ld [hl], c
    nop
    nop
    ld l, l
    ld l, [hl]
    ld l, a
    rst $38
    nop
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], e
    ld [hl], h
    rst $38
    ld [hl], l
    db $76
    ld a, c
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    rst $38
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    add b
    ld a, a
    ld a, [hl]
    add l
    rst $38
    add [hl]
    add a
    add c
    add d
    add e
    add h
    add a
    add [hl]
    cp l
    add l
    ld [c], a
    ldh [$88], a
    adc c
    adc d
    adc e
    ld [c], a
    db $e3
    ld c, d
    rst $30
    adc h
    adc l
    adc [hl]
    ld [c], a
    db $e3
    ld e, b
    adc a
    sub b
    ld e, e
    cp $e2
    ldh [rSVBK], a
    ld [hl], c
    ld h, h
    ld h, h
    sub c
    sub d
    ld h, h
    rlca
    ld h, h
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    cp a
    dec c
    dec c
    dec l
    dec c
    dec l
    dec l
    db $fc
    pop hl
    dec c
    or b
    push af
    ldh [rIE], a
    db $e3
    or $ff
    db $ec
    db $ed
    ld c, l
    ld c, l
    cp d
    db $e3
    ld l, l
    rst $38
    ld l, l
    ld [hl], b
    ld [hl], c
    nop
    nop
    add hl, bc
    ld [$ff00], sp
    nop
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    add hl, de
    jr @+$01

    rla
    ld d, $79
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    rst $38
    add hl, hl
    jr z, jr_077_615c

    ld h, $80
    ld a, a
    ld a, [hl]
    add l
    rst $38
    add [hl]
    add a
    add hl, sp
    jr c, jr_077_6177

    ld [hl], $87
    add [hl]
    cp l
    add l
    ld [c], a
    ldh [rOBP1], a
    ld c, b
    ld b, a
    ld b, [hl]
    ld [c], a
    db $e3
    ld d, b
    rst $30
    ld d, a
    ld d, [hl]
    ld d, l
    ld [c], a
    db $e3
    ld e, a
    ld h, e
    ld h, d
    ld e, h
    cp $e2
    ldh [rSVBK], a

jr_077_615c:
    ld [hl], c
    ld h, h
    ld h, h
    ld l, h
    ld l, e
    ld h, h

Jump_077_6162:
    rlca
    ld h, h
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    cp a
    dec c
    dec c
    dec l
    dec c
    dec l
    dec l
    db $fc
    pop hl
    dec c
    or b
    push af
    ldh [rIE], a

jr_077_6177:
    db $e3
    or $ff
    db $ec
    db $ed
    ld c, l
    ld c, l
    cp d
    db $e3
    ld l, l
    rst $38
    ld l, l
    ld [hl], b
    ld [hl], c
    nop
    nop
    rlca
    ld b, $00
    rst $38
    nop
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    dec d
    inc d
    rst $38
    inc de
    ld [de], a
    ld a, c
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    rst $38
    dec h
    inc h
    inc hl
    ld [hl+], a
    add b
    ld a, a
    ld a, [hl]
    add l
    rst $38
    add [hl]
    add a
    dec [hl]
    inc [hl]
    inc sp
    ld [hl-], a
    add a
    add [hl]
    cp l
    add l
    ld [c], a
    ldh [rLYC], a
    ld b, h
    ld b, e
    ld b, d
    ld [c], a
    db $e3
    ld d, h
    rst $30
    ld d, e
    ld d, d
    ld d, c
    ld [c], a
    db $e3
    ld e, a
    ld h, c
    ld h, b
    ld e, h
    cp $e2
    ldh [rSVBK], a
    ld [hl], c
    ld h, h
    ld h, h
    ld l, d
    ld l, c
    ld h, h
    rlca
    ld h, h
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    cp a
    dec c
    dec c
    dec l
    dec c
    dec l
    dec l
    db $fc
    pop hl
    dec c
    or b
    push af
    ldh [rIE], a
    db $e3
    or $ff
    db $ec
    db $ed
    ld c, l
    ld c, l
    cp d
    db $e3
    ld l, l
    rst $38
    ld l, l
    ld [hl], b
    ld [hl], c
    nop
    nop
    dec b
    inc b
    nop
    rst $38
    nop
    ld [hl], c
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld de, $ff10
    rrca
    ld c, $79
    ld a, b
    ld [hl], a
    ld a, [hl]
    ld a, a
    add b
    rst $38
    ld hl, $1f20
    ld e, $80
    ld a, a
    ld a, [hl]
    add l
    rst $38
    add [hl]
    add a
    ld sp, $2f30
    ld l, $87
    add [hl]
    cp l
    add l
    ld [c], a
    ldh [rSTAT], a
    ld b, b
    ccf
    ld a, $e2
    db $e3
    ld d, b
    rst $30
    ld c, a
    ld c, h
    ld c, [hl]
    ld [c], a
    db $e3
    ld e, a
    ld e, [hl]
    ld e, l
    ld e, h
    cp $e2
    ldh [rSVBK], a
    ld [hl], c
    ld h, h
    ld h, h
    ld l, b
    ld h, a
    ld h, h
    rlca
    ld h, h
    ld [hl], c
    ld [hl], b
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    cp $e9
    rst $38
    db $e4
    dec l
    ld h, d
    or $e5
    dec l
    or $e0
    ld [$e2e3], a
    db $f4
    ld c, l
    ld c, l
    call z, Call_077_7fe3
    ld c, l
    ld l, l
    ld b, c
    ld bc, $0000
    ld bc, $e1fc
    cp a
    ld b, c
    ld b, d
    inc b
    inc bc
    inc bc
    inc b
    db $fc
    pop hl
    ld b, d
    rst $38
    ld b, e
    ld b, h
    dec b
    ld b, $07
    ld [$0505], sp
    rst $38

jr_077_6277:
    ld b, h
    ld b, e
    ld c, c
    ld c, d
    inc c
    dec c
    ld c, $0f
    rst $38
    db $10
    inc c
    ld c, d
    ld c, c
    ld b, d
    inc b
    jr @+$1b

    rst $30
    ld a, [de]
    dec de
    inc e
    ld [c], a
    ld [c], a
    inc h
    dec h
    ld h, $27
    ld a, l
    jr z, jr_077_6277

    ld [c], a
    jr nc, jr_077_62c9

    ld [hl-], a
    inc sp
    inc [hl]
    ld [c], a
    ldh [rIE], a
    ld b, c
    ld bc, $3938
    ld a, [hl-]
    dec sp
    inc a
    ld d, b
    inc bc
    ld bc, $0041
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    cp $e9
    rst $38
    db $e4
    dec l
    ld h, d
    or $e5
    dec l
    or $e0
    ld [$e2e3], a
    db $f4
    ld c, l
    ld c, l
    call z, Call_077_7fe3
    ld c, l
    ld l, l

jr_077_62c9:
    ld b, c
    ld bc, $0000
    ld bc, $e1fc
    cp a
    ld b, c
    ld b, d
    inc b
    inc bc
    inc bc
    inc b
    db $fc
    pop hl
    ld b, d
    rst $38
    ld b, e
    ld b, h
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    dec b
    dec b
    rst $38
    ld b, h
    ld b, e
    ld c, c
    ld c, d
    ld de, $1312
    inc d
    rst $38
    dec d
    inc c
    ld c, d
    ld c, c
    ld b, d
    inc b
    dec e
    ld e, $f7
    rra
    jr nz, jr_077_631a

    ld [c], a
    ld [c], a
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l

Jump_077_62ff:
    ld a, l
    dec l
    ld [c], a
    ld [c], a
    inc c
    dec [hl]
    ld [hl-], a
    ld [hl], $37
    ld [c], a
    ldh [rIE], a
    ld b, c
    ld bc, $3d38
    ld a, $3f
    ld b, b
    ld d, b
    inc bc
    ld bc, $0041
    nop
    nop
    adc a

jr_077_631a:
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    cp $e9
    rst $38
    db $e4
    dec l
    ld h, d
    or $e5
    dec l
    or $e0
    ld [$e2e3], a
    db $f4
    ld c, l
    ld c, l
    call z, Call_077_7fe3
    ld c, l
    ld l, l
    ld b, c
    ld bc, $0000
    ld bc, $e1fc
    cp a
    ld b, c
    ld b, d
    inc b
    inc bc
    inc bc
    inc b
    db $fc
    pop hl
    ld b, d
    rst $38
    ld b, e
    ld b, h
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    dec b
    dec b
    rst $38
    ld b, h
    ld b, e
    ld c, c
    ld c, d
    ld d, $17
    inc de
    inc d
    rst $38
    dec d
    inc c
    ld c, d
    ld c, c
    ld b, d
    inc b
    ld [hl+], a
    inc hl
    rst $30
    rra
    jr nz, jr_077_6387

    ld [c], a
    ld [c], a
    ld l, $2f
    dec hl
    inc l
    ld a, l
    dec l
    ld [c], a
    ld [c], a
    inc c
    dec [hl]
    ld [hl-], a
    ld [hl], $37
    ld [c], a
    ldh [rIE], a
    ld b, c
    ld bc, $3d38
    ld a, $3f
    ld b, b
    ld d, b
    inc bc
    ld bc, $0041
    nop
    nop
    adc a

jr_077_6387:
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    cp $e9
    rst $38
    db $e4
    dec l
    ld h, d
    or $e5
    dec l
    or $e0
    ld [$e2e3], a
    db $f4
    ld c, l
    ld c, l
    call z, Call_077_7fe3
    ld c, l
    ld l, l
    ld b, c
    ld bc, $0000
    ld bc, $e1fc
    cp a
    ld b, c
    ld b, d
    inc b
    inc bc
    inc bc
    inc b
    db $fc
    pop hl
    ld b, d
    rst $38
    ld b, e
    ld b, h
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    dec b
    dec b
    rst $38
    ld b, h
    ld b, e
    ld c, c
    ld c, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    rst $38
    dec d
    inc c
    ld c, d
    ld c, c
    ld b, d
    inc b
    ld c, e
    ld c, h
    rst $30
    ld c, l
    ld c, [hl]
    ld hl, $e2e2
    ld l, $4f
    dec hl
    inc l
    ld a, l
    dec l
    ld [c], a
    ld [c], a
    inc c
    dec [hl]
    ld [hl-], a
    ld [hl], $37
    ld [c], a
    ldh [rIE], a
    ld b, c
    ld bc, $3d38
    ld a, $3f
    ld b, b
    ld d, b
    inc bc
    ld bc, $0041
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
    ld d, d
    ld [bc], a
    nop
    ld bc, $7e02
    db $fc
    pop hl
    ld d, d
    ld d, e
    rlca
    inc b
    dec b
    ld b, $fc
    pop hl
    rst $38
    ld d, h
    ld d, a
    ld d, [hl]
    ld [$0a09], sp
    dec bc
    ld [$08ff], sp
    ld e, b
    ld e, c
    ld d, e
    rlca
    ld [de], a
    inc de
    inc d
    rst $38
    dec d
    ld d, $5d
    ld b, $54
    ld d, e
    rlca
    rra
    rst $30
    jr nz, jr_077_6455

    ld [hl+], a
    ld [c], a
    db $e3
    inc l
    dec l
    ld l, $2f
    ld a, l
    jr nc, @-$1c

    ld [c], a
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [c], a
    ldh [rIE], a
    ld d, d
    ld [bc], a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [hl], d
    inc bc
    ld [bc], a
    ld d, d
    nop
    nop
    nop

jr_077_6455:
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
    ld d, d
    ld [bc], a
    nop
    ld bc, $7e02
    db $fc
    pop hl
    ld d, d
    ld d, e
    rlca
    inc b
    dec b
    ld b, $fc
    pop hl
    rst $38
    ld d, h
    ld d, a
    ld d, [hl]
    ld [$0d0c], sp
    ld c, $08
    rst $38
    ld [$5958], sp
    ld d, e
    rlca
    rla
    jr jr_077_64a3

    rst $38
    ld a, [de]
    ld d, $5d
    ld b, $54
    ld d, e
    rlca
    inc hl
    rst $30
    inc h
    dec h
    ld h, $e2
    db $e3
    ld sp, $3332
    inc [hl]
    ld a, l
    dec [hl]
    ld [c], a
    ld [c], a
    ld b, b
    ld b, c

jr_077_64a3:
    dec a
    ld a, $42
    ld [c], a
    ldh [rIE], a
    ld d, d
    ld [bc], a
    ld c, l
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [hl], d
    inc bc
    ld [bc], a
    ld d, d
    nop
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
    ld hl, sp-$1e
    push af
    ret c

    ld [c], a
    call nc, Call_077_4de0
    ld l, l
    ld d, d
    ld [bc], a
    nop
    ei
    ld bc, $fc02
    pop hl
    ld d, d
    ld d, e
    rlca
    inc b
    dec b
    db $fd
    ld b, $fc
    pop hl
    ld d, h
    ld d, a
    ld d, [hl]
    ld [$100f], sp
    rst $38
    ld de, $0808
    ld e, b
    ld e, c
    ld d, e
    rlca
    dec de
    rst $38
    inc e
    dec e
    ld e, $16
    ld e, l
    ld b, $54
    ld d, e
    cp a
    rlca
    daa
    jr z, jr_077_6524

    ld a, [hl+]
    dec hl
    ld [c], a
    ld [c], a
    ld [hl], $ef
    scf
    jr c, jr_077_653d

    ld a, [hl-]
    ld [c], a
    ld [c], a
    ld b, e
    ld b, h
    ld b, l
    ei
    ld b, [hl]
    ld b, a
    ld [c], a
    ldh [rHDMA2], a
    ld [bc], a
    ld c, [hl]
    ld c, a
    ld d, b
    rra
    ld [bc], a
    ld d, c
    ld [hl], d
    ld [bc], a
    ld d, d
    nop
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6

jr_077_6524:
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld d, d
    ld [bc], a
    nop
    ld bc, $7e02
    db $fc
    pop hl
    ld d, d
    ld d, e
    rlca
    inc b
    dec b

jr_077_653d:
    ld b, $fc
    pop hl
    cp a
    ld d, h
    ld d, a
    ld d, [hl]
    ld [$5508], sp
    db $fc
    ldh [$58], a
    rst $38
    ld e, c
    ld d, e
    rlca
    ld d, $5a
    ld e, e
    ld e, h
    ld d, $ff
    ld e, l
    ld b, $54
    ld d, e
    rlca
    ld e, [hl]
    ld e, a
    ld h, b
    ei
    ld h, c
    ld h, d
    ld [c], a

Jump_077_6560:
    ld [c], a
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    cp [hl]
    ld [c], a
    ld [c], a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld [c], a
    ldh [rHDMA2], a
    rst $38
    ld [bc], a
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [bc], a
    ld bc, $0052
    nop
    nop
    rst $08
    ld h, l
    ld b, l
    ld h, [hl]
    cp a
    ld h, [hl]
    add hl, sp
    ld h, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    ld h, a
    add hl, de
    ld l, b
    ld a, e
    ld l, b
    push hl
    ld l, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, h
    ld l, c
    cp a
    ld l, c
    ld l, $6a
    sbc l
    ld l, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $0c, $6b

    db $76
    ld l, e
    db $e4
    ld l, e
    ld c, [hl]
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    ld l, h
    jr jr_077_6630

    ld a, d
    ld l, l
    call c, Call_000_006d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    dec c
    rst $38
    pop hl
    ld c, l
    ld c, l
    ld c, l
    dec c
    ld c, l
    or $e2
    add d
    pop af
    pop hl
    dec l
    or $f0
    rst $30
    rst $20
    db $ec
    ld a, [c]
    jp $b9e4


    ldh [rP1], a
    rst $38
    ld bc, $0202
    ld [bc], a
    rrca
    rrca
    rrca
    db $10
    rst $38
    dec bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    rst $38
    ld b, $11
    add hl, bc
    inc bc
    ld b, $07
    dec b
    inc e
    rst $38
    dec e
    ld e, $12
    dec b
    add hl, bc
    ld [$0406], sp
    rst $38
    jr z, jr_077_6639

    ld a, [hl+]
    dec hl
    ld de, $1305
    add hl, bc
    rst $38
    ld a, [bc]
    ld b, $36
    scf
    jr c, @+$3b

    dec b
    inc d
    rst $38
    inc bc
    inc c
    dec b
    ld a, [bc]
    ld b, h
    ld b, l
    ld b, [hl]
    ld de, $14ff
    ld b, $15
    inc bc
    dec c
    ld c, $50

jr_077_6630:
    ld d, c
    rst $38
    ld d, d
    ld d, e
    ld d, $17
    add hl, bc
    nop
    rrca

jr_077_6639:
    rrca
    ld a, a
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld [bc], a
    ld [bc], a
    dec bc
    nop
    nop
    nop
    cp a
    ld l, l
    dec l
    ld l, l
    ld l, l
    ld l, l
    dec l
    rst $38
    pop hl
    dec c
    ret nz

    db $fd
    ldh [rIE], a
    ldh [$f6], a
    ld [$e1e9], a
    db $ec
    rst $38
    pop bc
    ldh [$6d], a
    ld l, l
    cp $d8
    db $e3
    ld l, l
    dec bc
    db $10
    rrca
    rrca
    rrca
    ld [bc], a
    rst $38
    ld [bc], a
    ld [bc], a
    ld bc, $0900
    ld de, $0606
    rst $38
    jr jr_077_668d

    dec b
    dec b
    inc b
    inc bc
    add hl, bc
    dec b
    rst $38
    ld [de], a
    rra
    jr nz, jr_077_66a0

    dec b
    rlca
    ld b, $03
    rst $38
    inc de
    dec b
    ld de, $2d2c
    ld l, $2f
    inc b
    rst $38

jr_077_668d:
    ld b, $08
    inc bc
    inc d
    dec b
    ld a, [hl-]
    dec sp
    inc a
    rst $38
    dec a
    ld b, $0a
    add hl, bc
    dec d
    ld b, $14
    ld b, a
    rst $38
    ld c, b

jr_077_66a0:
    ld c, c
    ld c, d
    ld a, [bc]
    dec b
    inc c
    add hl, bc
    rla
    rst $38
    ld d, $54
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, $0d
    inc bc
    rst $38
    dec bc
    ld [bc], a
    ld [bc], a
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rrca
    inc bc
    rrca
    nop
    nop
    nop
    nop
    ld a, l
    dec c
    rst $38
    pop hl
    ld c, l
    ld c, l
    ld c, l
    dec c
    ld c, l
    or $e2
    and d
    pop af
    pop hl
    dec l
    or $eb
    pop af
    ld a, [c]
    call c, $2deb
    jp $2de2


    db $fd
    dec l
    cp c
    ldh [rP1], a
    ld bc, $0202
    ld [bc], a
    rrca
    rst $38
    rrca
    rrca
    db $10
    dec bc
    inc bc
    inc b
    dec b
    dec b
    rst $38
    dec b
    ld b, $06
    ld b, $11
    add hl, bc
    inc bc
    ld b, $ff
    rlca
    ld [hl+], a
    inc hl
    inc h
    ld b, $12
    dec b
    add hl, bc
    rst $38
    ld [$0406], sp
    jr nc, jr_077_672d

    ld sp, $1132
    rst $38
    dec b
    inc de
    add hl, bc
    ld a, [bc]
    ld b, $3e
    jr c, @+$41

    rst $38
    ld b, b
    dec b
    inc d
    inc bc
    inc c
    dec b
    ld a, [bc]
    inc b
    rst $38
    ld c, e
    ld b, l
    ld c, h
    inc d
    ld b, $15
    inc bc
    dec c
    rst $38
    ld c, $58
    ld e, c
    ld d, c
    ld e, d
    ld d, $17
    add hl, bc
    rst $38
    nop
    rrca

jr_077_672d:
    rrca
    ld h, [hl]
    ld h, a
    ld e, a
    ld h, d
    ld [bc], a
    inc bc
    ld [bc], a
    dec bc
    nop
    nop
    nop
    cp a
    ld l, l
    dec l
    ld l, l
    ld l, l
    ld l, l
    dec l
    rst $38
    pop hl
    dec c
    db $10
    db $fd
    ldh [rIE], a
    ldh [$f6], a
    ld [$e1e9], a
    dec c
    and $e1
    ld [c], a
    db $e3
    or $e2
    or $ec
    ld a, [c]
    ld l, l
    ld l, l
    ret nc

    db $e3
    ld l, l
    dec bc
    db $10
    rrca
    rst $38
    rrca
    rrca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0900
    rst $38
    ld de, $0606
    ld a, [de]
    dec de
    dec b
    dec b
    inc b
    rst $38
    inc bc
    add hl, bc
    dec b
    ld [de], a
    ld b, $25
    ld h, $27
    rst $38
    rlca
    ld b, $03
    inc de
    dec b
    ld de, $3433
    rst $38
    dec l
    dec [hl]
    inc b
    ld b, $08
    inc bc
    inc d
    dec b
    rst $38
    ld b, c
    ld b, d
    dec sp
    ld b, e
    ld b, $0a
    add hl, bc
    dec d
    rst $38
    ld b, $14
    ld c, l
    ld c, [hl]
    ld c, b
    ld c, a
    ld a, [bc]
    dec b
    rst $38
    inc c
    add hl, bc
    rla
    ld d, $5b
    ld e, h
    ld d, l
    ld e, l
    rst $38
    ld c, $0d
    inc bc
    dec bc
    ld [bc], a
    ld [bc], a
    ld l, b
    ld l, c
    rra
    ld h, e
    ld e, [hl]
    rrca
    rrca
    nop
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    rst $38
    pop hl
    db $ec
    ldh [$60], a
    rst $30
    db $e4
    db $db
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    or $f0
    ld e, b
    ld e, c
    rst $38
    db $e4
    rst $30
    ld e, b
    ld e, d
    nop
    rst $38
    db $e4
    ld e, d
    ld e, e
    inc b
    inc b
    rst $38
    inc b
    dec b
    ld b, $07
    inc b
    inc b
    ld e, e
    ld e, h
    rst $38
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $00
    nop
    rst $38
    ld e, h
    ld e, l
    inc b
    inc b
    inc hl
    inc h
    dec h
    ld h, $f7
    inc b
    inc b
    ld e, l
    ret c

    ldh [$33], a
    inc [hl]
    dec [hl]
    ld [hl], $ee
    ret c

    db $e4
    ld b, d
    ld b, e
    ld b, h
    ret c

    ldh [$5e], a
    ld c, [hl]
    ld c, [hl]
    ld a, a
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    rst $38
    pop hl
    db $ec
    ldh [$60], a
    rst $30
    db $e4
    db $db
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    or $f0
    ld e, b
    ld e, c
    rst $38
    db $e4
    rst $30
    ld e, b
    ld e, d
    nop
    rst $38
    db $e4
    ld e, d
    ld e, e
    inc b
    inc b
    rst $38
    ld [$0a09], sp
    dec bc
    inc b
    inc b
    ld e, e
    ld e, h
    rst $38
    nop
    nop
    rla
    jr jr_077_6867

    ld a, [de]
    nop
    nop
    rst $38
    ld e, h
    ld e, l
    inc b
    inc b
    daa
    jr z, jr_077_6882

    ld a, [hl+]
    rst $30
    inc b
    inc b
    ld e, l
    ret c

    ldh [$37], a
    jr c, jr_077_689c

    ld a, [hl-]
    sbc $d8
    db $e3

jr_077_6867:
    ld b, l
    ld b, [hl]
    ld b, e
    ld b, a
    ret c

    ldh [$5e], a
    ld c, [hl]
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l

jr_077_6882:
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
    ld [c], a
    rst $20
    or $f0
    ld e, b
    db $fd
    ld e, c
    rst $38
    db $e4

jr_077_689c:
    ld e, b
    ld e, d
    nop
    nop
    nop
    ld bc, $02fd
    ei
    ldh [$5a], a
    ld e, e
    inc b
    inc b
    inc c
    dec c
    rst $38
    ld c, $0f
    inc b
    inc b
    ld e, e
    ld e, h
    nop
    nop
    rst $38
    dec de
    inc e
    dec e
    ld e, $00
    nop
    ld e, h
    ld e, l
    rst $38
    inc b
    inc b
    dec hl
    inc l
    dec l
    ld l, $04
    inc b
    db $dd
    ld e, l
    ret c

    pop hl
    dec sp
    inc a
    dec a
    ret c

    db $e3
    ld [$fb48], sp
    ld c, c
    ld c, d
    ret c

    ldh [$5e], a
    ld c, [hl]
    ld c, [hl]
    ld d, d
    ld d, e
    rra
    ld d, h
    ld d, l
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
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
    ld [c], a
    or $e5
    ld [c], a
    rst $20
    jp z, $f6e2

    db $e4
    or $ce
    db $e4
    ld e, b
    ld e, c
    rst $38
    db $e4
    ld e, b
    ld e, d
    nop
    nop
    rst $30
    nop
    ld bc, $fb03
    ldh [$5a], a
    ld e, e
    inc b
    inc b
    rst $38
    inc b
    db $10
    ld de, $0412
    inc b
    ld e, e
    ld e, h
    rst $38
    nop
    nop
    rra
    jr nz, jr_077_6948

    ld [hl+], a
    nop
    nop
    rst $38
    ld e, h
    ld e, l
    inc b
    inc b
    cpl
    jr nc, jr_077_6963

    ld [hl-], a
    rst $30
    inc b
    inc b
    ld e, l
    ret c

    ldh [$3e], a
    ccf
    ld b, b
    ld b, c
    sbc $d8
    db $e3
    dec bc
    ld c, e
    ld c, h
    ld c, l
    ret c

    ldh [$5e], a
    ld c, [hl]

jr_077_6948:
    rst $38
    ld c, [hl]
    ld d, [hl]
    ld d, a
    ld d, h
    ld d, l
    ld c, [hl]
    ld c, [hl]
    ld e, [hl]
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f7e0]
    db $e4
    ldh a, [$e1]
    ld h, h
    db $fd

jr_077_6963:
    ld [c], a
    or $e6
    dec l
    db $ec
    pop hl
    ld [c], a
    ld sp, hl
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld a, a
    ld c, l
    ld l, l
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, c
    db $fc
    pop hl
    rst $38
    ld h, b
    ld h, h
    ld h, a
    nop
    nop
    ld bc, $0002
    rst $38
    nop
    ld h, a
    ld h, h
    ld h, l
    ld l, b
    dec d
    ld [$ff09], sp
    ld a, [bc]
    dec bc
    dec d
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, c
    inc h
    ld a, a
    ld d, $17
    jr jr_077_69b2

    inc h
    ld l, c
    ld h, [hl]
    ld [c], a
    ldh [$f7], a
    inc bc
    dec h
    ld h, $e2
    db $e4
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $de
    ld [c], a
    db $e3
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld [c], a
    ldh [$60], a

jr_077_69b2:
    ld h, c
    rst $38
    ld h, e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld h, e
    ld h, c
    ld h, b
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f7e0]
    db $e4
    ldh a, [$e1]
    call nz, $e2fd
    or $e6
    dec l
    db $ec
    pop hl
    jp hl


    db $e3
    ld [c], a
    di
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, c
    cp $fc
    pop hl
    ld h, b
    ld h, h
    ld h, a
    nop
    inc bc
    inc b
    dec b
    rst $38
    nop
    nop
    ld h, a
    ld h, h
    ld h, l
    ld l, b
    dec d
    inc c
    rst $38
    dec c
    ld c, $0f
    dec d
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, c
    rst $38
    inc h
    ld a, [de]
    dec de
    inc e
    dec e
    inc h
    ld l, c
    ld h, [hl]
    sbc $e2
    ldh [$27], a
    jr z, jr_077_6a38

    ld a, [hl+]
    ld [c], a
    db $e3
    scf
    jr c, jr_077_6a90

    add hl, sp
    ld a, [hl-]
    ld [c], a
    db $e3
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld [c], a
    ldh [rIE], a
    ld h, b
    ld h, c
    ld h, e
    ld d, a
    ld e, b
    ld e, c
    ld d, [hl]
    ld h, e
    inc bc
    ld h, c
    ld h, b
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f7e0]

jr_077_6a38:
    db $e4
    ldh a, [$e1]
    call nz, $e2fd
    or $e6
    dec l
    db $ec
    pop hl
    jp hl


    db $e3
    ld [c], a
    di
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, c
    cp $fc
    pop hl
    ld h, b
    ld h, h
    ld h, a
    nop
    inc bc
    inc b
    dec b
    rst $38
    nop
    nop
    ld h, a
    ld h, h
    ld h, l
    ld l, b
    dec d
    inc c
    rst $38
    db $10
    ld de, $150f
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, c
    rst $38
    inc h
    ld e, $1f
    jr nz, jr_077_6a92

    inc h
    ld l, c
    ld h, [hl]
    sbc $e2
    ldh [$2b], a
    inc l
    dec l
    ld l, $e2
    db $e3
    dec sp
    inc a
    ld a, e
    dec a
    ld a, $e2
    db $e3
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld [c], a
    ldh [rIE], a
    ld h, b

jr_077_6a90:
    ld h, c
    ld h, e

jr_077_6a92:
    ld d, e
    ld e, d
    ld e, e
    ld e, h
    ld h, e
    inc bc
    ld h, c
    ld h, b
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f7e0]
    db $e4
    ldh a, [$e1]
    call nz, $e2fd
    or $e6
    dec l
    db $ec
    pop hl
    jp hl


    db $e3
    ld [c], a
    di
    ld c, l
    ld c, l
    cp $ba
    db $e3
    ld c, l
    ld l, l
    ld h, b
    ld h, c
    ld h, d
    ld h, d
    ld h, c
    cp $fc
    pop hl
    ld h, b
    ld h, h
    ld h, a
    nop
    inc bc
    ld b, $07
    rst $38
    nop

Jump_077_6ace:
    nop
    ld h, a
    ld h, h
    ld h, l
    ld l, b
    dec d
    ld [de], a
    rst $38
    inc de
    inc d
    dec d
    dec d
    ld l, b
    ld h, l
    ld h, [hl]
    ld l, c
    rst $38
    inc h
    ld hl, $2322
    inc h
    inc h
    ld l, c
    ld h, [hl]
    sbc $e2
    ldh [$2f], a
    jr nc, @+$33

    ld [hl-], a
    ld [c], a
    db $e3
    ccf
    ld b, b
    ld a, e
    ld b, c
    ld b, d
    ld [c], a
    db $e3
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld [c], a
    ldh [rIE], a
    ld h, b
    ld h, c
    ld h, e
    ld d, [hl]
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, e
    inc bc
    ld h, c
    ld h, b
    nop
    nop
    nop

    db $0f, $0d, $0d, $0d, $2d, $fc, $e2, $fa, $e0, $f7, $e4, $f0, $e1, $b0, $fd, $e2
    db $f7, $e7, $ec, $e1, $e2, $f9, $4d, $4d, $cf, $e3, $4d, $bf, $6d, $4d, $4e, $4f
    db $4f, $4e, $fc, $e1, $4d, $ff, $51, $55, $00, $00, $01, $02, $00, $00, $ff, $55
    db $51, $52, $56, $13, $08, $09, $0a, $ff, $0b, $13, $56, $54, $53, $57, $58, $14
    db $bf, $15, $16, $17, $58, $57, $53, $e2, $e0, $03, $7b, $20, $21, $e2, $e4, $2c
    db $2d, $2e, $2f, $e2, $e3, $ef, $3a, $3b, $3c, $3d, $e2, $e0, $4d, $4e, $50, $7f
    db $46, $47, $48, $49, $50, $4e, $4d, $00, $00

    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f7e0]
    db $e4
    ldh a, [$e1]
    ld h, b
    db $fd
    ld [c], a
    rst $30
    rst $20
    db $ec
    pop hl
    jp hl


    db $e3
    ld [c], a
    di
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld a, a
    ld c, l
    ld l, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, [hl]
    db $fc
    pop hl
    rst $38
    ld c, l
    ld d, c
    ld d, l
    nop
    inc bc
    inc b
    dec b
    nop
    rst $38
    nop
    ld d, l
    ld d, c
    ld d, d
    ld d, [hl]
    inc de
    inc c
    dec c
    rst $38
    ld c, $0f
    inc de
    ld d, [hl]
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    ld a, a
    jr jr_077_6bd3

    ld a, [de]
    dec de
    ld e, b
    ld d, a
    ld d, e
    ld [c], a
    ldh [$ef], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [c], a
    db $e3
    jr nc, jr_077_6bfb

    ld [hl-], a
    cp l
    inc sp
    ld [c], a
    db $e3
    ld a, $3f
    ld b, b
    ld b, c

jr_077_6bd3:
    ld [c], a
    ldh [rKEY1], a
    rst $38
    ld c, [hl]
    ld d, b
    ld c, d
    ld c, e
    ld c, h
    ld c, c
    ld d, b
    ld c, [hl]
    ld bc, $004d
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f7e0]
    db $e4
    ldh a, [$e1]
    or b
    db $fd
    ld [c], a
    rst $30
    rst $20
    db $ec
    pop hl
    ld [c], a
    ld sp, hl
    ld c, l

jr_077_6bfb:
    ld c, l
    rst $08
    db $e3
    ld c, l
    cp a
    ld l, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, [hl]
    db $fc
    pop hl
    ld c, l
    rst $38
    ld d, c
    ld d, l
    nop
    nop
    ld bc, $0002
    nop
    rst $38
    ld d, l

jr_077_6c14:
    ld d, c
    ld d, d
    ld d, [hl]
    inc de
    ld [$0a09], sp
    rst $38
    dec bc
    inc de
    ld d, [hl]
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    inc d
    cp a
    dec d
    ld d, $17
    ld e, b
    ld d, a
    ld d, e
    ld [c], a
    ldh [rNR52], a
    ld a, e
    daa
    jr z, jr_077_6c14

    db $e4
    inc [hl]
    dec [hl]
    ld [hl], $13
    ld [c], a
    db $e3
    rst $28
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld [c], a
    ldh [rKEY1], a
    ld c, [hl]
    ld d, b
    ld a, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld d, b
    ld c, [hl]
    ld c, l
    nop
    nop
    nop
    rrca
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f7e0]
    db $e4
    ldh a, [$e1]
    or b
    db $fd
    ld [c], a
    rst $30
    rst $20
    db $ec
    pop hl
    ld [c], a
    ld sp, hl
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld c, l
    cp a
    ld l, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, [hl]
    db $fc
    pop hl
    ld c, l
    rst $38
    ld d, c
    ld d, l
    nop
    nop
    ld b, $07
    nop
    nop
    rst $38
    ld d, l
    ld d, c
    ld d, d
    ld d, [hl]
    inc de
    db $10
    ld de, $ff12
    inc de
    inc de
    ld d, [hl]
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    inc e
    cp a
    dec e
    ld e, $1f
    ld e, b
    ld d, a
    ld d, e
    ld [c], a
    ldh [$29], a
    cp e
    ld a, [hl+]
    dec hl
    ld [c], a
    db $e4
    scf
    jr c, @+$3b

    ld [c], a
    db $e4
    ld b, d
    rst $30
    ld b, e
    ld b, h
    ld b, l
    ld [c], a
    ldh [rKEY1], a
    ld c, [hl]
    ld d, b
    ld b, [hl]
    ccf
    ld b, a
    ld c, b
    ld c, c
    ld d, b
    ld c, [hl]
    ld c, l
    nop
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
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, e
    cp $fc
    pop hl
    ld l, d
    ld l, a
    ld [hl], e
    inc bc
    nop
    ld bc, $ff02
    inc bc
    nop
    ld [hl], l
    ld [hl], c
    ld [hl], b
    ld [hl], h
    inc de
    inc c
    rst $38
    dec c
    ld c, $0f
    inc de
    db $76
    ld [hl], d
    ld l, a
    ld [hl], e
    rst $38
    inc hl
    inc e
    dec e
    ld e, $1f
    ld d, e
    ld [hl], l
    ld [hl], c
    xor $e2
    ldh [$2c], a
    dec l
    ld l, $e2
    db $e4
    dec sp
    inc a
    dec a
    cp l
    ld a, $e2
    db $e3
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld [c], a
    ldh [rOCPS], a
    rst $38
    ld l, e
    ld l, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld l, [hl]
    ld l, e
    ld bc, $006a
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
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, e
    cp $fc
    pop hl
    ld l, d
    ld l, a
    ld [hl], e
    inc bc
    nop
    inc b
    dec b
    rst $38
    inc bc
    nop
    ld [hl], l
    ld [hl], c
    ld [hl], b
    ld [hl], h
    inc de
    db $10
    rst $38
    ld de, $1312
    inc de
    db $76
    ld [hl], d
    ld l, a
    ld [hl], e
    rst $38
    inc hl
    jr nz, jr_077_6d71

    ld [hl+], a
    inc hl
    ld d, e
    ld [hl], l
    ld [hl], c
    sbc $e2
    ldh [$2f], a
    jr nc, @+$33

    ld [hl-], a
    ld [c], a
    db $e3
    ccf
    ld b, b
    ld a, e
    ld b, c
    ld b, d
    ld [c], a
    db $e3
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld [c], a
    ldh [rIE], a
    ld l, d
    ld l, e
    ld l, c
    ld e, [hl]
    ld e, a

jr_077_6d71:
    ld h, b
    ld h, c
    ld l, [hl]
    inc bc
    ld l, e
    ld l, d
    nop
    nop
    nop
    ld h, l
    dec c

Jump_077_6d7c:
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
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, e
    cp $fc
    pop hl
    ld l, d
    ld l, a
    ld [hl], e
    inc bc
    nop
    ld b, $07
    rst $38
    ld [$7500], sp
    ld [hl], c
    ld [hl], b
    ld [hl], h
    inc de
    inc d
    rst $38
    dec d
    ld d, $17
    inc de
    db $76
    ld [hl], d
    ld l, a
    ld [hl], e
    rst $38
    inc hl
    inc h
    dec h
    ld h, $27
    ld d, e
    ld [hl], l
    ld [hl], c
    sbc $e2
    ldh [$33], a
    inc [hl]
    dec [hl]
    ld [hl], $e2
    db $e3
    ld b, e
    ld b, h
    ld a, e
    ld b, l
    ld b, [hl]
    ld [c], a
    db $e3
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld [c], a
    ldh [rIE], a
    ld l, d
    ld l, e
    ld l, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld l, [hl]
    inc bc
    ld l, e
    ld l, d
    nop
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
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, e
    cp $fc
    pop hl
    ld l, d
    ld l, a
    ld [hl], e
    inc bc
    nop
    add hl, bc
    ld a, [bc]
    rst $38
    dec bc
    nop
    ld [hl], l
    ld [hl], c
    ld [hl], b
    ld [hl], h
    inc de
    jr @+$01

    add hl, de
    ld a, [de]
    dec de
    inc de
    db $76
    ld [hl], d
    ld l, a
    ld [hl], e
    rst $38
    inc hl
    jr z, jr_077_6e3d

    ld a, [hl+]
    dec hl
    ld d, e
    ld [hl], l
    ld [hl], c
    sbc $e2
    ldh [$37], a
    jr c, @+$3b

    ld a, [hl-]
    ld [c], a
    db $e3
    ld b, a
    ld c, b
    ld a, e
    ld c, c
    ld c, d
    ld [c], a
    db $e3
    ld d, a
    ld e, b
    ld e, c
    rra
    ld [c], a
    ldh [rIE], a
    ld l, d
    ld l, e
    ld l, c
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, [hl]
    inc bc
    ld l, e
    ld l, d
    nop
    nop

jr_077_6e3d:
    nop

    push bc
    ld hl, $6f86
    ld a, b
    add l
    ld l, a
    jr nc, jr_077_6e48

    inc h

jr_077_6e48:
    ld b, [hl]
    ld a, c
    and $0f
    cp $0b
    jr c, jr_077_6e68

    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d444], a
    pop af
    ld a, $01
    ld hl, $70b6
    call Call_000_23e8
    jp Jump_077_6f7c


jr_077_6e68:
    push bc
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d34c], a
    ld a, c
    and $0f
    ld [$d34b], a
    ld l, a
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    and $0f
    sla a
    ld hl, $7346
    add l
    ld l, a
    jr nc, jr_077_6e8d

    inc h

jr_077_6e8d:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    ld a, b
    call Call_000_069a
    call Call_000_2e3b
    ld hl, $d000
    ld de, $9200
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d200
    ld de, $9400
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d400
    ld de, $9600
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d600
    ld de, $8800
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $d800
    ld de, $8a00
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld hl, $da00
    ld de, $8c00
    ld c, $20
    call Call_000_0468
    call Call_000_2e3b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d444], a
    pop bc
    ld a, c
    and $0f
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld h, $00
    ld a, b
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    bit 4, c
    jr nz, jr_077_6f1b

    ld de, $7376
    jr jr_077_6f1e

jr_077_6f1b:
    ld de, $752e

jr_077_6f1e:
    add hl, de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d34b]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $76e6
    add hl, de
    ld d, h
    ld e, l
    ld a, [$d34c]
    ld h, $00
    ld l, a
    add hl, hl
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ld [$d347], a
    ld [$d349], a
    ld a, h
    ld [$d348], a
    ld [$d34a], a
    call Call_000_2e3b
    xor a
    ld [$d346], a
    ld a, $01
    ld hl, $7033
    call Call_000_23e8
    pop hl
    ld de, $0601
    call Call_000_056c
    ld a, [$d34c]
    cp $01
    jr c, jr_077_6f7c

    cp $05
    jr nc, jr_077_6f7c

    xor a
    ld [$c3f4], a
    ld a, $01
    ld hl, $6f8e
    call Call_000_23e8

Jump_077_6f7c:
jr_077_6f7c:
    pop bc
    ld a, b
    rst $18

    db $02, $4a

    call Call_000_2ed5

    db $0a

    ret


    nop
    nop
    db $01
    ld [bc], a

    db $03

    inc b
    inc b
    inc b

    ld a, [$c3f4]
    cp $27
    jr c, jr_077_6f99

    xor a
    ld [$c3f4], a

jr_077_6f99:
    sla a
    ld hl, $6fd5
    ld e, a
    ld d, $00
    add hl, de
    ld d, $06
    ld e, $00
    call Call_077_6fae
    ld hl, $c3f4
    inc [hl]
    ret


Call_077_6fae:
    push de
    ld c, $02
    ld a, d
    add a
    add a
    add e
    add a
    ld e, a
    ld d, $c1

jr_077_6fb9:
    ld a, [hl+]
    ld [de], a
    inc d
    ld [de], a
    dec d
    inc e
    dec c
    jr nz, jr_077_6fb9

    ld hl, $ff9d
    pop de
    bit 3, d
    jr nz, jr_077_6fcc

    set 0, [hl]

jr_077_6fcc:
    ld a, e
    add d
    cp $09
    jr c, jr_077_6fd4

    set 1, [hl]

jr_077_6fd4:
    ret


    db $20, $7e, $40, $72, $60, $66, $81, $5a, $a4, $4e, $c7, $42, $ea, $36, $0d, $2b
    db $30, $1f, $53, $13, $76, $07, $b9, $03, $dc, $03, $ff, $03, $bf, $03, $7f, $03
    db $3f, $0b, $df, $12, $bf, $1a, $7f, $22, $3f, $2a, $ff, $31, $bf, $39, $7f, $41
    db $3f, $49, $ff, $50, $bf, $58, $bc, $5c, $d9, $60, $f6, $64, $13, $69, $30, $6d
    db $4d, $71

    ld l, d
    ld [hl], l
    add a
    ld a, c
    and h
    ld a, l
    pop bc
    ld a, l
    ldh [$7d], a
    nop
    ld a, [hl]
    jr nz, @+$80

    ld b, b
    ld [hl], d
    ld h, b
    ld h, [hl]
    add c
    ld e, d
    and h
    ld c, [hl]
    rst $00
    ld b, d
    ld [$0d36], a
    dec hl

    call Call_000_068a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d34d]
    cp $ff
    jr z, jr_077_7053

    or a
    jr nz, jr_077_7053

    ld hl, $7033
    call Call_000_2449
    ld hl, $6f8e
    call Call_000_2449
    ret


jr_077_7053:
    ld hl, $d346
    ld a, [hl]
    or a
    jr nz, jr_077_70a0

    ld hl, $d347
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $ff
    jr nz, jr_077_7077

    xor a
    ld [$d34d], a
    ld hl, $7033
    call Call_000_2449
    ld hl, $6f8e
    call Call_000_2449
    jr jr_077_70a0

jr_077_7077:
    cp $fe
    jr nz, jr_077_7089

    ld b, [hl]
    ld hl, $d349
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add l
    ld l, a
    jr nc, jr_077_7088

    inc h

jr_077_7088:
    ld a, [hl+]

jr_077_7089:
    ld b, a
    ld a, [hl+]
    ld [$d346], a
    ld a, [$d34b]
    ld c, a
    ld a, l
    ld [$d347], a
    ld a, h
    ld [$d348], a
    call Call_077_70d0
    call Call_000_0684

jr_077_70a0:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d346
    dec [hl]
    ld a, [$d34d]
    cp $ff
    jr z, jr_077_70b5

    dec a
    ld [$d34d], a

jr_077_70b5:
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d34d]
    dec a
    ld [$d34d], a
    or a
    ret nz

    xor a
    ld [$d34d], a
    ld hl, $70b6
    call Call_000_2449
    ret


Call_077_70d0:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d444], a
    ld a, [$d34c]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    sla a
    ld hl, $735e
    add l
    ld l, a
    jr nc, jr_077_70f0

    inc h

jr_077_70f0:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    sla a
    sla a
    sla a
    add b
    ld de, $d000
    call Call_000_069a
    ld de, $d000
    ld hl, $ffb0
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl], a
    ld de, $c600
    ld b, $02
    ld hl, $d100
    ld c, $08

Jump_077_7115:
    push bc
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $000a
    add hl, bc
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, [hl+]
    and $f0
    or $06
    ld [de], a
    inc de
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    pop hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jp nz, Jump_077_7115

    dec b
    ld hl, $d100
    ld c, $08

Jump_077_71b5:
    push bc
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $000a
    add hl, bc
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ffb0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, [hl+]
    add $20
    ld [de], a
    inc de
    ld a, l
    ldh [$b0], a
    ld a, h
    ldh [$b1], a
    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jp nz, Jump_077_71b5

    ld hl, $c600
    ld de, $b880
    ld c, $10
    call Call_000_0468
    ld hl, $c700
    ld de, $9880
    ld c, $10
    call Call_000_0468
    call Call_000_0460
    ret


    ret


    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d444], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $c600
    ld hl, $d100
    ld c, $08

jr_077_7272:
    push bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_077_7272

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d100
    ld c, $08

jr_077_72ca:
    push bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Call_077_72e9:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_077_72ca

    ld hl, $c600
    ld de, $b880
    ld c, $10
    call Call_000_0468
    ld hl, $c700
    ld de, $9880
    ld c, $10
    call Call_000_0468
    call Call_000_0460
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    or $03
    adc h
    inc bc
    ret z

    ld [bc], a
    nop
    nop
    ret z

    ld [bc], a
    and $01
    inc b
    ld bc, $0000
    nop
    ld [hl], $04
    ld [hl], $00
    scf

    db $04, $37

    nop
    ld b, e
    inc b
    ld b, e
    nop
    ld [hl], l
    inc b
    ld [hl], l
    nop
    db $76

    db $04, $76

    nop
    ld [hl], a
    nop
    nop
    ld [bc], a
    ld [hl], $06
    ld [hl], $02
    scf

    db $06, $37

    ld [bc], a
    ld b, e
    ld b, $43
    ld [bc], a
    ld [hl], l
    ld b, $75
    ld [bc], a
    db $76

    db $04, $77

    ld [bc], a
    ld [hl], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rst $18
    jr jr_077_737d

jr_077_737d:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    nop
    ld h, e
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    nop
    ld h, e
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    nop
    ld h, e
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop

    db $ff, $03, $ff, $6b, $1f, $02, $00, $00

    nop
    ld h, e
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rst $18
    jr jr_077_7445

jr_077_7445:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    nop
    ld h, e
    rst $38
    ld l, e
    ld a, [hl]
    ld hl, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    nop
    ld h, e
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    ret c

    ld a, h
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rst $38
    jr nz, jr_077_74bd

jr_077_74bd:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rst $38
    jr nz, jr_077_74c5

jr_077_74c5:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rst $38
    jr nz, jr_077_74cd

jr_077_74cd:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rst $38
    jr nz, jr_077_74d5

jr_077_74d5:
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    rst $38
    jr nz, jr_077_74dd

jr_077_74dd:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop

    db $ff, $03, $ff, $6b, $80, $12, $00, $00

    nop
    ld h, e
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    rra
    ld [bc], a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_755d

jr_077_755d:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_7565

jr_077_7565:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_756d

jr_077_756d:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_7575

jr_077_7575:
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_757d

jr_077_757d:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_7585

jr_077_7585:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_758d

jr_077_758d:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_7595

jr_077_7595:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_759d

jr_077_759d:
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_75a5

jr_077_75a5:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38

Jump_077_75ff:
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_7625

jr_077_7625:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_762d

jr_077_762d:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_7635

jr_077_7635:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_763d

jr_077_763d:
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    sbc a
    jr nz, jr_077_7645

jr_077_7645:
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    nop
    ld h, e
    rst $38
    ld l, e
    sbc a
    ld bc, $0000
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    sbc a
    ld d, c
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    inc b
    ld a, a
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    rst $38
    inc bc
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    nop
    ld h, e
    rst $38
    ld l, e
    nop
    ld a, d
    nop
    nop
    sub [hl]
    ld [hl], a
    and b
    ld [hl], a
    xor d
    ld [hl], a
    or h
    ld [hl], a
    add $77
    nop
    nop
    nop
    nop
    nop
    nop
    jp nc, $e077

    ld [hl], a
    db $ec
    ld [hl], a
    inc b
    ld a, b
    inc d
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_077_7780

    ld a, [hl+]
    ld a, b
    inc [hl]
    ld a, b
    ld a, $78
    ld d, h
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld a, b
    db $76
    ld a, b
    add b
    ld a, b

    db $96, $78

    xor h
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    jp nz, $cc78

    ld a, b
    ldh [$78], a
    db $f4
    ld a, b
    ld b, $79
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_077_77b1

    ld [hl+], a
    ld a, c
    ld l, $79
    ld a, [hl-]
    ld a, c
    ld b, h
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld a, c
    ld h, h
    ld a, c
    ld l, [hl]
    ld a, c
    add b
    ld a, c
    sub h
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    ld a, c
    call nz, $ce79
    ld a, c
    call c, $ee79
    ld a, c
    nop
    nop
    nop

Call_077_7763:
    nop
    nop
    nop
    nop
    ld a, d
    ld [de], a
    ld a, d
    inc h
    ld a, d
    jr nc, @+$7c

    ld c, d
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    ld a, d
    ld [hl], b
    ld a, d
    add d
    ld a, d

    db $94, $7a

    and [hl]
    ld a, d

jr_077_7780:
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    ld a, d
    cp [hl]
    ld a, d
    adc $7a
    ldh [$7a], a
    xor $7a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld bc, $020c
    inc c
    inc bc
    inc c
    cp $00
    nop
    inc d
    ld bc, $020a
    ld [$2803], sp
    cp $00
    nop
    inc d
    ld bc, $020f
    ld a, [bc]
    inc bc

jr_077_77b1:
    inc a
    cp $00
    nop
    db $10
    ld bc, $0210
    db $10
    ld bc, $0210
    db $10
    ld bc, $001e
    ld [$3c03], sp
    cp $00
    nop
    db $10
    ld bc, $020a
    ld a, [bc]
    ld bc, $030a
    ld a, [bc]
    cp $02
    nop
    rrca
    ld bc, $000f
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    cp $00
    nop
    rrca
    ld bc, $020f
    rrca
    ld bc, $030f
    rrca
    cp $02
    nop
    ld e, $01
    ld a, [bc]
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld bc, $fe0a
    nop
    nop
    jr z, @+$03

    ld c, $04
    rlca
    ld [bc], a
    rlca
    inc bc
    ld c, $02
    rlca
    inc b
    rlca
    cp $02
    nop
    rrca
    ld bc, $020f
    rrca
    ld bc, $030f
    rrca
    cp $02
    nop
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    cp $00
    nop
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    cp $00
    nop
    ld [$1401], sp
    ld [bc], a
    ld e, $03
    ld a, [bc]
    cp $00
    nop
    inc d
    ld bc, $0214
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    cp $00
    nop
    jr z, jr_077_7858

    ld a, [bc]

jr_077_7858:
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld bc, $fe28
    inc b
    nop
    inc c
    ld bc, $020c
    inc c
    inc bc
    inc c
    ld [bc], a
    inc c
    ld bc, $fe0c
    nop
    nop
    rrca
    ld bc, $020a
    rrca
    inc bc
    ld a, [bc]
    cp $00
    nop
    rrca
    ld bc, $0214
    add hl, de
    inc bc
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    cp $00

    db $00, $19, $01, $14

    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    cp $00
    nop
    dec b
    ld bc, $020a
    rrca
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    cp $08
    nop
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    cp $00
    nop
    inc d
    ld bc, $0028
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    cp $00
    nop
    inc d
    ld bc, $000a
    jr z, jr_077_78e9

    rrca
    inc bc

jr_077_78e9:
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    cp $00
    nop
    inc d
    ld bc, $0014
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    ld [bc], a
    inc d
    inc bc
    inc d
    cp $00
    nop
    rrca
    ld bc, $020f
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    cp $00
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    cp $00
    nop
    jr z, jr_077_7926

    ld a, [bc]

jr_077_7926:
    ld [bc], a
    ld a, [bc]
    inc bc
    inc a
    ld bc, $fe0f
    nop
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    inc b

jr_077_7937:
    jr z, jr_077_7937

    nop
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    cp $04
    nop
    jr z, jr_077_7948

    rrca

jr_077_7948:
    ld [bc], a
    rrca
    inc bc
    inc a
    cp $00
    nop
    rrca
    ld bc, $020f
    rrca
    ld bc, $020f
    rrca
    ld bc, $020f
    rrca
    ld bc, $020f
    rrca
    ld bc, $fe0f
    nop
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    cp $00
    nop
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    cp $00
    nop
    inc d
    ld bc, $020f
    rrca
    ld bc, $020f
    rrca
    ld bc, $020f
    rrca
    ld bc, $020f
    rrca
    cp $00
    nop
    inc d
    ld bc, $0214
    rrca
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    ld a, [bc]
    cp $08
    nop
    rrca
    ld bc, $020f
    rrca
    ld bc, $030f
    rrca
    ld bc, $030f
    rrca
    ld bc, $030f
    rrca
    ld bc, $030f
    rrca
    ld bc, $fe0f
    nop
    nop
    ld e, $01
    rrca
    ld [bc], a
    ld e, $03
    dec l
    cp $00
    nop
    ld e, $01
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    inc bc
    inc a
    ld [bc], a
    ld a, [bc]
    ld bc, $fe0a
    nop
    nop
    ld e, $01
    ld [$1e02], sp
    inc bc
    dec l
    ld [bc], a
    ld e, $03
    dec l
    ld [bc], a
    ld e, $01
    ld [$00fe], sp
    nop
    dec l
    ld bc, $020f
    rrca
    inc bc
    ld e, $02
    rrca
    ld bc, $020f
    rrca
    inc bc
    ld e, $fe
    nop
    nop
    inc c
    ld bc, $000c
    inc c
    ld bc, $020c
    inc c
    ld bc, $000c
    inc c
    inc bc
    inc c
    cp $00
    nop
    inc d
    ld bc, $0014
    inc d
    ld bc, $0014
    inc d
    ld bc, $0314
    ld e, $02
    ld [hl-], a
    cp $00
    nop
    inc d
    ld bc, $0214
    ld [$3c03], sp
    ld [bc], a
    ld a, [bc]
    cp $00
    nop
    inc d
    ld bc, $020f
    ld a, [bc]
    inc bc
    rrca
    ld [bc], a
    ld a, [bc]
    ld bc, $020f
    ld a, [bc]
    inc bc
    rrca
    ld [bc], a
    ld a, [bc]
    ld bc, $041e
    ld e, $01
    ld [hl-], a
    cp $02
    nop
    inc d
    ld bc, $0014
    inc d
    ld bc, $0014
    inc d
    ld bc, $0214
    rrca
    inc bc
    jr z, @+$04

    rrca
    cp $00
    nop
    rrca
    ld bc, $000f
    rrca
    ld bc, $020f
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    cp $00
    nop
    ld a, [bc]
    ld bc, $000a
    ld a, [bc]
    ld bc, $000a
    ld a, [bc]
    ld bc, $020a
    rrca
    inc bc
    inc a
    cp $00
    nop
    ld e, $01
    rrca
    nop
    rrca
    ld bc, $000f
    rrca
    ld [bc], a
    ld a, [bc]
    inc bc
    inc a
    ld [bc], a
    ld a, [bc]
    cp $00

    db $00, $1e

    ld bc, $020a
    ld e, $03
    rrca
    ld [bc], a
    rrca
    inc bc
    rrca
    ld [bc], a
    rrca
    ld bc, $fe0a
    nop
    nop
    dec l
    ld bc, $020a
    ld e, $03
    ld e, $02
    ld e, $03
    ld e, $fe
    nop
    nop
    inc d
    ld bc, $0214
    inc d
    inc bc
    inc d
    cp $00
    nop
    inc d
    ld bc, $020a
    inc d
    inc bc
    ld b, $04
    ld b, $03
    ld b, $04
    inc d
    cp $00
    nop
    ld [$0801], sp
    ld [bc], a
    ld [$0803], sp
    inc b
    ld [$0805], sp
    ld b, $08
    rlca
    ld [$00fe], sp
    nop
    ld e, $01
    ld a, [bc]
    ld [bc], a
    rrca
    ld bc, $020a
    inc d
    inc bc

jr_077_7aeb:
    jr z, jr_077_7aeb

    nop
    nop
    ld b, $01
    ld b, $00
    ld b, $01
    ld b, $00
    ld b, $01
    ld b, $02
    inc d
    inc bc
    ld a, [bc]
    ld [bc], a
    inc d
    inc bc

jr_077_7b01:
    jr z, jr_077_7b01

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

Jump_077_7e7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_077_7ec3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_077_7f8e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_077_7fe2:
    rst $38

Call_077_7fe3:
    rst $38
    rst $38

Jump_077_7fe5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_077_7fff:
    rst $38
