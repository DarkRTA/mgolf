; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $049", ROMX[$4000], BANK[$49]

    ld a, [bc]
    ld b, b
    or e
    ld c, d
    ld h, e
    ld d, h
    xor b
    ld h, c

    db $af, $6d

    ld [de], a
    ld b, b
    ld d, d
    ld b, b
    cp h
    ld c, b
    ld c, b
    ld c, c
    nop
    nop
    rra
    ld a, [de]
    db $f4
    inc c
    adc h
    nop
    sbc a
    ld [bc], a
    rra
    ld [bc], a
    ld e, a
    ld bc, $00d4
    ld a, a
    ld c, a
    rra
    ld a, [de]
    db $f4
    inc c
    nop
    nop
    rra
    ld [bc], a
    ld e, a
    ld bc, $00d4
    nop
    nop
    sbc a
    ld [bc], a
    rra
    ld [bc], a
    ld e, a
    ld bc, $0000
    rra
    ld a, [de]
    db $f4
    inc c
    rra
    ld [bc], a
    nop
    nop
    rra
    ld a, [de]
    db $f4
    inc c
    ld e, a
    ld bc, $0000
    ld a, a
    ld c, a
    rra
    ld a, [de]
    ld e, a
    ld bc, $0000
    db $dd
    rst $38
    rst $38
    ld sp, hl
    ldh [$e0], a
    rst $18
    ldh [$e8], a
    db $e3
    db $e3
    rst $10
    ld e, l
    inc bc
    db $fd
    ret nc

    db $ec

Call_049_4063:
    cp $fa
    db $e4
    cp $fe
    rst $38
    pop hl
    db $e3
    call c, Call_000_3cc2
    ld c, $f0
    ldh a, [rIE]
    rst $08
    ret nz

    ccf
    rlca
    ld hl, sp+$1f
    ldh [$30], a
    rst $30
    ret nz

    ldh [rP1], a
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rrca
    db $fc
    inc bc
    ld b, $01
    inc bc
    nop
    ld bc, $fedc
    ldh [$90], a
    ld [$fcfc], a
    ei
    or h
    jp hl


    cp $1d
    db $eb
    sbc [hl]
    dec e
    ld hl, sp-$1e
    db $fd
    cp $e0
    ld bc, $f807
    rst $38
    inc c
    ldh a, [$08]
    ldh a, [$c0]
    ccf
    nop
    rst $38
    rst $38
    inc bc
    db $fc
    ld c, $f0
    inc e
    ldh [$f8], a
    nop
    rst $38
    ld [hl], b
    nop
    jr nc, jr_049_40bb

jr_049_40bb:
    rrca
    ldh a, [$78]
    add b

Call_049_40bf:
    ld sp, hl
    ldh a, [$a6]
    db $e3
    and c
    db $e3
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    sbc $ff
    db $e3
    ccf
    rra
    ld a, a
    ccf
    ld l, h
    ld [c], a
    db $fc
    rst $38
    ld a, e
    db $fc
    cp $fe
    ldh [$fc], a
    ldh a, [rIE]
    ldh a, [$66]
    ldh [rIE], a
    ld bc, $00ff
    rlca
    nop
    dec b
    ld [bc], a
    dec b
    rst $38
    ld [bc], a
    jr c, jr_049_40f4

    ldh [$1f], a
    inc a
    ret nz

    inc a
    cpl
    ret nz

jr_049_40f4:
    ldh a, [rP1]
    add b
    cp $e0
    ret nz

    cp $e0
    ld e, h
    db $e3
    ld [hl], h
    sbc l
    ldh [$59], a
    ldh [$7f], a
    cp $e0
    db $fc
    nop
    inc bc
    call nc, Call_000_26e0
    ld a, [c]
    pop hl
    ld hl, sp+$00
    sbc d
    db $e3
    ldh [$cb], a
    db $e3
    ld c, h
    ld [c], a
    cp $e1
    rst $18
    ld sp, hl
    or $fa
    db $f4
    cp $a2
    ldh [$fd], a
    ld a, d
    rst $38

jr_049_4124:
    ld a, l
    cp d
    add hl, sp
    add $f1
    ld c, $31
    ld c, $ff
    rla
    ld [$001c], sp
    jr c, jr_049_4133

jr_049_4133:
    inc c
    inc bc
    sub a
    inc c
    inc bc
    sbc [hl]
    adc [hl]
    ldh [rIF], a

jr_049_413c:
    adc h
    ldh [$fe], a
    ldh [rTAC], a
    rst $30
    jr jr_049_4124

    db $10
    db $f4
    jp nz, Jump_000_00e0

    ldh a, [$60]
    rst $18
    cp $fc
    rst $38
    rst $38
    jr nz, jr_049_413c

    jp nz, Jump_000_0001

    rst $38
    inc bc
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rst $38
    rst $38
    or $f2
    db $e3
    rst $00
    inc bc
    ld a, b
    push bc
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld hl, sp+$6c
    ret c

    cp [hl]
    ldh [$c6], a
    push bc
    ld hl, sp-$09
    pop af
    ld c, $03
    cp $f0
    pop hl
    ret nz

    ret nz

    cp a
    add b
    ld a, a
    rra
    ldh [$f3], a
    ld a, a
    add b
    ld a, [hl-]
    pop hl
    jr nc, @-$3c

    ld e, $1f
    xor $1e
    rst $38
    db $ed
    adc h
    ld [hl], e
    adc a
    ld [hl], b
    rst $38
    nop
    di
    cp a
    adc h
    add e
    ld a, h
    rlca
    ld hl, sp+$3e
    ld a, [bc]
    ldh [$fc], a
    jr c, jr_049_41c1

    ldh [$2a], a
    ldh [$74], a
    ret nz

    call z, Call_000_0703
    ld [hl], h
    ret nz

    ld h, c
    jp Jump_049_7fff


    add b
    rrca
    ldh a, [$1f]
    ldh [$3e], a
    ret nz

    rla
    cp $00
    cp $e0
    ld [c], a
    ldh [$e8], a
    ret nz

    rst $38
    ld sp, hl
    ld [hl], l
    jp hl


jr_049_41c1:
    rst $30
    db $fc
    rst $38
    ld hl, sp-$3f
    and b
    pop bc
    rst $38
    adc [hl]
    pop af
    rst $38
    adc [hl]
    pop af
    rrca
    ldh a, [rTAC]
    ld hl, sp+$73
    adc h
    rst $38
    ld a, [$8104]
    rst $38
    dec c
    di
    dec de
    pop hl
    ld a, a
    inc de
    pop hl
    ld [hl], l
    add e
    ei
    rlca
    rst $28
    ld l, [hl]
    ret nz

    cp [hl]
    ld b, $e0
    add b
    pop af
    add b
    di
    pop hl
    sbc b
    and l
    rrca
    rst $10
    rlca
    rra
    rrca
    adc h
    cp b
    nop
    and d
    pop bc
    ld hl, sp-$09
    rst $38
    ldh a, [$ef]
    ldh a, [$ef]
    pop af
    xor $f9
    or $54
    push bc
    and b
    db $10
    jp nz, Jump_049_4ec0

    jp nz, $ae80

    and b
    inc bc
    ld [hl], b
    db $ed
    add d
    ld c, b
    jp nz, $ee3c

    and [hl]
    ld b, b
    pop hl
    ret c

    pop hl
    db $dd
    and l
    adc h
    and c
    ld b, $a7
    ld bc, $0106
    add h
    and c
    ld l, a
    and c
    jr c, jr_049_422d

jr_049_422d:
    ret nz

    inc e
    rst $38
    ldh [rNR32], a
    ldh [rNR34], a
    ldh [rTAC], a
    ld hl, sp-$79
    rst $30
    ld a, b
    ld h, [hl]
    jr jr_049_4250

    jp hl


    inc c
    nop
    inc bc
    inc e
    cp a
    pop bc
    cp $8f
    ldh a, [$ee]
    pop af
    rra
    xor b
    nop
    cp a
    call z, $a700

jr_049_4250:
    ret nz

    db $db
    rst $20
    ret c

    add l
    ccf
    rst $28
    rra
    ld e, a
    ccf
    cp a
    ld e, [hl]
    push de
    ldh [$e0], a
    sbc a
    db $fc
    or l
    and d
    db $fc
    push hl
    ld a, a
    add c
    rrca
    nop
    db $fc
    inc bc
    ccf
    ld hl, sp+$03
    ld hl, sp+$0f
    rst $38
    ccf
    add hl, hl
    call nz, $a04f
    cp l
    add b
    sbc h
    ret nz

    ret nz

    ldh [$e0], a
    cp $fe
    ldh [$f8], a
    rst $38
    ldh [$7f], a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    ld a, a
    adc $fe
    ldh [$3d], a
    rra

jr_049_428f:
    jr nz, jr_049_428f

    ldh [rSVBK], a
    add e
    db $fd
    rst $38
    rst $30
    xor d
    rst $38

jr_049_4299:
    ld d, l
    inc sp
    pop bc
    nop
    cp $f8
    cp $fb
    db $fc
    db $eb
    ld e, e
    add b
    xor d
    rst $38
    ld d, h
    rst $38
    ld a, [hl+]
    db $fc
    ld e, c
    and c
    xor d
    add b
    ret nz

    add b
    ldh [$c0], a
    and c
    cp $bc
    sub [hl]
    db $e4
    db $f4
    add [hl]
    add b
    nop
    ld hl, $f0c0
    jp hl


    ldh [rIE], a
    nop
    ld [de], a
    pop hl
    nop
    rst $38
    ld [bc], a
    ld bc, $b708
    rlca
    jr nz, @+$21

    inc hl
    and c
    add b
    ld a, a
    ld [hl], h
    add c
    ld b, b
    rst $18
    add b
    jr nz, jr_049_4299

    rrca
    ldh a, [$5a]
    rst $20
    ld e, $00

jr_049_42df:
    rst $20
    ld b, d
    inc a
    ld bc, $e5b4
    and b
    db $e4
    ld [bc], a
    ld bc, $7744
    add e
    jr c, @-$37

    ld [hl], $e3
    jr nz, @+$21

    ld b, b
    pop hl
    add e
    ldh [$28], a
    db $e4
    ld b, $88
    ld a, [bc]
    add c
    ldh a, [$65]
    jr @-$7e

    rrca
    ldh a, [$38]
    rst $30
    ret nz

    ld h, b
    add b
    ld a, [c]
    ld h, h
    pop af
    ldh a, [$6f]
    rst $20
    rst $38
    jr jr_049_42df

    jr nc, @+$01

    nop
    add a
    ld a, b
    inc c
    ld a, e
    ldh a, [$0e]
    db $e4
    and b
    inc bc
    db $fc
    jp Jump_000_323c


    ldh [rIE], a
    nop
    adc a
    ld [hl], c
    ld a, a
    inc bc
    ccf
    inc bc
    rst $38
    push af
    rlca
    cp $e0
    rrca
    rst $38
    pop hl
    ld hl, sp-$20
    rst $08
    ldh a, [$fc]
    ld d, b
    add b
    cp [hl]
    ld h, c
    cp $fe
    db $fc
    db $fd
    cp $c3
    ld d, a
    inc a
    add a
    ld a, b
    ld [hl], h
    and c
    cp $6a
    add b
    rra
    cp [hl]
    ld h, b
    jp hl


    add c
    cp d
    ld h, d
    ld l, d
    add c
    add a
    ld h, [hl]
    and d
    ret z

    ccf
    ld b, b
    ld hl, $d83f
    jp nz, $805e

    ldh a, [$61]
    sub b
    rst $00
    add b
    ld e, $e0
    inc e
    db $e3
    db $fc
    ld d, b
    ldh a, [$ac]
    ld h, d
    ld a, h
    db $e3
    db $fc
    jp $e3fc


    rst $08
    ldh a, [$ef]
    ldh [$df], a
    xor d
    ld h, c
    ld d, [hl]
    jp $8040


    or a
    rst $00
    nop
    rst $00
    ld e, e
    ret nz

    add hl, de
    and $fa
    jp $fffc


    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    pop hl
    ld e, $91
    db $db
    ld c, $9f
    db $fc
    ld h, b
    ld a, c
    add c
    ld b, b
    ld h, c
    inc bc
    rst $38
    ld a, a
    rrca
    db $fc
    ccf
    ldh a, [$7f]
    ret nz

    rst $38
    sbc [hl]
    add b
    jp z, $a243

    rra
    cp $e4
    rrca
    push hl
    ldh [$31], a
    ld l, d
    rst $38
    ldh [$f5], a
    ld hl, sp-$73
    ld h, b
    ldh [$89], a
    ld h, b
    cp b
    adc a
    inc c
    rlca
    rst $38
    ld b, $03
    inc bc
    ld bc, $8041
    ld [bc], a
    pop bc
    add e
    inc h
    jp $e85a


    ld a, [hl-]
    and c
    add c
    ld h, b
    ld a, b
    pop bc
    db $e4
    ld b, c
    add hl, sp
    add a
    nop
    db $10
    rrca
    rla
    ldh [rDIV], a
    ret nz

    sbc b
    bit 7, c
    ldh [$fc], a
    ld e, $b8
    ld b, c
    inc bc
    db $fc
    rrca
    ldh a, [rNR52]
    add e
    ld b, b
    add c
    ld c, h
    ld h, b
    pop hl
    ccf
    add hl, bc
    call z, $e406
    ret c

    ld b, b
    cp $e0
    ld b, b
    ccf
    push af
    cp [hl]
    ld l, l
    ld b, b
    push de
    rst $38
    and b
    rst $38
    ld d, b
    ld a, b
    and h
    ld [hl], e
    rst $38
    ret nz

    and e
    ret nz

    ld h, d
    ret nz

    db $10
    ldh [rDIV], a
    db $fd
    ld hl, sp+$66
    and l
    ldh a, [rIF]
    jr c, jr_049_441f

    jr jr_049_4421

    di
    ccf
    nop
    rra
    ld h, b

jr_049_441f:
    and b
    ld b, b

jr_049_4421:
    inc bc
    db $fc
    ccf
    ret nz

    sbc a
    inc hl
    ret nz

    ld b, c
    add b
    pop bc
    ld b, $62
    ld l, b
    ld h, b
    cp $ff
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [rPCM12]
    cp $e1
    ccf
    ldh [$e4], a
    and l
    inc bc
    rst $38
    ld b, $11

jr_049_4444:
    ldh [$fe], a
    ld h, c
    and b
    nop
    rst $30

jr_049_444a:
    rrca
    dec e
    cp $f7
    ld hl, sp-$43
    rst $18

jr_049_4451:
    sub b
    ld h, b
    cp a
    ret nz

    rst $28

jr_049_4456:
    ldh a, [rNR51]
    ldh [rIE], a
    rst $38
    rst $18
    inc a
    db $fc
    jr jr_049_4456

    jr c, jr_049_4451

    jr nc, @-$1f

    rst $28
    ccf

jr_049_4466:
    reti


    add hl, sp
    add b
    db $db
    ret nz

    ret nz

    rst $38
    rst $38
    ret nz

    ld a, a
    ld h, b
    ccf
    ld h, b
    ccf
    ldh [$3f], a
    rst $38
    ldh a, [$9f]
    rra
    ldh [$3f], a
    ret nz

    ld a, h
    add b
    rst $38
    ld a, b
    add b
    jr c, jr_049_4444

    jr jr_049_4466

    ld [bc], a
    db $fc
    ld a, a
    nop
    rst $38
    sbc a
    ld h, b
    rst $38
    nop
    ld a, b
    ret c

    ld b, b
    xor a
    ld [bc], a
    inc c
    ld de, $680e
    and b
    rst $38
    sub d
    ld h, e
    ld de, $0e79
    cp $c1
    jr nc, jr_049_444a

    ld bc, $4400
    add e
    cp h
    add l
    ld l, h
    ld b, [hl]
    and l
    and [hl]
    add e
    inc b
    ld hl, sp+$52
    xor d
    rst $38
    ld bc, $a052
    ld sp, hl
    adc b
    ld c, l
    ld b, e
    ld bc, $2f62
    ldh [$2f], a
    ldh [$6f], a
    dec bc
    ret nz

    ld c, a
    cp $e2
    ld b, a
    cp $e0
    call c, $fee2
    ldh [$8d], a
    and c
    add l
    rrca
    ld c, a
    ret nz

    ld [hl], b
    ld h, d
    ldh [$d7], a
    ld b, c
    db $ec
    pop hl
    add sp, -$1f
    ei
    rst $38
    db $fc
    ld bc, $71fe
    cp $f8
    rst $38
    cp h
    rst $38
    cp a
    inc a
    ccf
    ld [hl], $3f
    ld l, $33
    db $fc
    rst $38
    inc e
    cp $1e
    rst $38
    rra
    di
    rra
    ld [hl], l
    rst $38
    sbc e

jr_049_44fa:
    ld a, l
    sbc e
    dec l
    db $db
    rrca
    rst $38
    ldh a, [$f7]
    sbc a
    ld [hl], b
    ld e, a
    cp $e3
    ld a, b
    ld e, a
    ld a, b
    ld c, a
    rst $18
    ld a, b
    ld c, a
    ld b, a
    ret nz

    ld b, e
    cp $e0
    ld b, c
    ret nz

jr_049_4515:
    rst $38
    ld h, b
    ret nz

    jr nz, jr_049_44fa

    ld sp, $11e0
    pop af
    jr c, jr_049_4515

    and c
    inc h
    add c
    ld c, e
    ld b, l
    ld bc, $81ff
    cp $e2
    ld hl, sp-$3c
    rst $38
    rst $38
    ld l, $33
    ld l, $33
    ld [hl-], a
    ccf
    sbc [hl]
    rst $38
    sbc a
    sbc [hl]
    sbc a
    ld c, h
    rst $08
    nop
    rst $38
    ld [hl], b
    rst $38
    adc a
    rla
    ei
    ld a, [hl+]
    di
    ld c, e
    ld a, [c]
    dec c
    rst $38

jr_049_4548:
    ld a, [c]
    rlca
    ld hl, sp+$07
    ld hl, sp+$02
    db $fd
    nop
    rst $38
    rst $38
    ld a, h
    ld c, a
    adc $07
    add [hl]
    inc bc
    add e
    rst $08
    inc bc
    jp $f301


    ld e, c
    ld [c], a
    ret nz

    ld h, a
    db $fc
    rst $38
    jp $83c7


    ld [bc], a
    and b
    jr nc, jr_049_4515

    dec e
    ld b, e
    sbc h
    ld h, a
    jr z, jr_049_4548

    cp $90
    ld l, c
    dec b
    ld_long a, $ff00
    dec de
    pop af
    rrca
    db $fd
    ei
    and l
    add b
    db $fd
    rra
    ld hl, sp+$1f
    pop af
    ccf
    cp e
    pop af
    ccf
    adc b
    ld b, [hl]
    db $db
    rst $20
    cp h
    ld a, d
    and b
    inc a
    rst $38
    rst $38
    pop hl
    cp $e3
    db $fc
    di
    db $fc
    ldh [rNR41], a
    ld a, [$64c4]
    ld bc, $87f4
    or e
    nop
    ld a, [de]
    ret nz

    ld a, d
    ld l, d
    ldh [$cc], a
    pop bc
    rst $38
    ld e, $ff
    ld a, [$c8fc]
    ldh a, [$f7]
    rrca
    rst $38
    ld c, l
    cp [hl]
    ld a, [de]
    db $fc
    db $f4
    ld hl, sp-$30
    ldh [$fe], a
    add d
    ld b, c
    rrca
    nop
    reti


    ldh [$ec], a
    jr nc, jr_049_45fc

Call_049_45c5:
    rst $30
    jr jr_049_45e3

    inc c
    ld [hl+], a
    and e
    rst $38
    nop
    ret nz

    ld a, a
    ld l, c
    ld b, b
    inc d
    call nz, $e2fe
    cp a
    add b
    adc e
    xor d
    ld d, l
    db $f4
    jp hl


    ld l, a
    ld bc, $abfe
    ld d, h
    ldh [rSCX], a

jr_049_45e3:
    ld a, [hl+]
    push de
    db $e4
    pop hl
    di
    ld d, l
    xor d
    ret z

    ld h, c
    db $f4
    pop hl
    add b
    ld a, a
    dec b
    ld a, [$a0f3]
    ld e, a
    ldh a, [$e3]
    db $f4
    pop hl
    nop
    rst $38
    ld b, l

jr_049_45fc:
    cp d
    db $db
    rrca
    ldh a, [$e0]
    db $e3
    ld a, [bc]
    push af
    ld e, b
    pop hl
    ld d, l
    xor d
    rst $38
    ld [$7f15], a
    add b
    push af
    ld a, [bc]
    nop
    rst $38
    cp [hl]
    ret c

    pop hl
    ld a, [bc]
    push af
    ld d, a
    xor b

jr_049_4618:
    xor d
    rst $18
    ld b, b
    ld d, a
    rlca
    xor b
    ld d, l
    xor d
    db $e4
    pop hl
    db $f4
    pop hl
    ldh a, [$e1]
    ret nz

    pop hl
    ld [c], a
    xor d
    call z, Call_049_6626
    sub h
    pop bc
    ld a, [bc]
    push af
    jp nc, Jump_049_66e1

    push hl
    dec b
    ld a, [$7e7e]
    pop hl
    ld a, a
    pop hl
    ld a, a
    pop bc
    ld a, a
    pop bc
    db $eb
    and d
    and [hl]
    ld b, a
    and b
    ld a, a
    db $e3
    ld h, [hl]
    ld h, b
    sbc c
    pop bc
    ret nz

    rst $10
    and b
    ccf
    rst $38
    db $e3
    rst $38
    add a
    cp $0e
    cp $1d
    db $fd
    rst $38
    ld [de], a
    di
    inc h
    rst $20
    ld b, d
    jp nz, Jump_000_0101

    rst $38
    inc bc
    ld [hl], e
    push bc
    daa
    ld d, c
    ld [hl], c
    inc c
    rst $08
    sbc a
    jr c, @-$3f

    ld [hl], b
    ld a, a
    ldh a, [rNR23]

jr_049_4671:
    add b
    db $fc
    pop hl
    jr @-$08

    jr nz, jr_049_4618

    ccf
    ret nz

    add l
    ld h, c
    ld [hl], e
    adc h
    ld [hl], c
    adc [hl]
    db $db
    ld h, b
    sbc a
    sbc e
    ld b, c
    cp $01
    ld [hl], h
    ld h, c
    ldh [$1f], a
    ld h, e
    db $fc
    inc bc
    ld bc, $7e20
    jr nz, jr_049_4708

    db $e4
    inc bc
    cp $2d
    add b
    ld d, d
    add [hl]
    ret nz

    ld a, a
    pop de
    ldh [$da], a
    ld h, $d5
    dec hl
    ld b, b
    cp $b8
    ret nz

    jr nz, jr_049_4671

    dec h
    ldh a, [$e1]
    ld [hl], $e3
    or a
    inc hl
    call c, $afc1
    inc sp
    add l
    ld c, a
    ret nz

    dec de
    push af
    ld a, [bc]
    rra
    ld l, e
    ld d, a
    xor b
    rrca
    ld l, h
    rst $38
    ld c, h
    jp nz, $fcc1

    sub [hl]
    jp $c3dc


    xor d
    ld d, l
    dec d
    ld [$40bf], a
    sbc $aa
    push hl
    rrca
    ldh a, [$aa]
    ld d, l
    ld [hl], e
    pop hl
    ld e, a
    and b
    cp h
    ld bc, $a446
    adc c
    rst $38
    rlca
    cp $3e
    ld hl, sp-$1c
    inc e
    ld a, a
    ld hl, sp+$73
    pop hl
    adc $87
    jr c, @+$21

    ld hl, sp-$1b
    call z, $8001
    ldh a, [rNR44]
    ld a, b
    adc a
    jp nc, $fe60

    ld [c], a
    db $fc
    rlca
    ld c, $fe
    ldh [$f0], a
    rst $38
    ld hl, sp-$02
    ld [c], a
    dec l
    ld b, c
    db $10
    inc hl

jr_049_4708:
    ld b, d
    xor c
    cp l
    ldh [$a2], a
    ld [$fe02], a
    inc b
    db $fd
    sub l
    ld h, c
    ld hl, sp-$01
    ccf
    db $ec
    ld h, a
    call nz, $c6c7
    add e
    jp nz, $0393

    add e
    db $d3
    call nz, Call_049_658c
    rlca
    ld l, h
    ld b, d
    add b
    db $e3
    di
    rra
    pop hl
    cp $b7
    ld hl, sp+$1f
    sbc h
    ldh [$b7], a
    pop bc
    or e
    pop bc
    ld [$8228], sp
    db $76
    ld bc, $8182
    ld a, a
    sbc [hl]
    nop
    cp $e1
    add d
    pop hl
    ld h, h
    pop bc
    rst $38
    db $e4
    rst $38
    jp hl


    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $38
    inc c
    rst $38
    jr @+$01

    jr c, @+$01

    jr nc, @+$01

    db $fd
    ld h, b
    dec e
    call nz, $817f
    db $fc
    ld bc, $00f9
    rst $38
    ld a, b
    add b
    ld [hl], c
    add b
    inc sp
    ret nz

    daa
    ret nz

    db $e3
    ld c, a
    add b
    xor h
    add c
    rlca
    pop bc
    ld a, [hl-]
    and c

jr_049_4775:
    jr nz, jr_049_47b6

    jr nc, jr_049_4775

    ld a, h
    ld h, e
    ret nc

    ld h, e
    cp $0f
    db $fd
    rrca
    ei
    rra
    db $dd
    cp $48
    nop
    rst $08
    rst $38
    cp a
    rra
    add b
    db $fc
    cp $03
    ld hl, sp-$04
    ld c, a
    nop
    ld e, $61
    inc e
    ld h, e
    inc b
    and c
    and h
    ld h, c
    ld l, a
    ret


    cp $e5
    jr nz, @+$81

    rrca
    ld a, a
    dec bc
    ld a, a
    rlca
    ccf
    ld [hl], a
    rlca
    ccf
    rrca
    cp $e0
    rst $28
    rst $38
    sbc $36
    add b
    rst $30
    ld sp, hl
    rst $38
    rst $30

jr_049_47b6:
    ret c

    inc h
    inc c
    rst $38
    add hl, sp
    cp $af
    ld [hl], e
    db $fc
    and $f9
    db $e4
    ld h, c
    add b
    ld sp, hl
    nop
    di
    rst $18

Call_049_47c8:
    inc c

Call_049_47c9:
    db $e3
    inc e
    add e
    ld a, h
    ld [de], a
    ld b, e
    rlca
    ld hl, sp+$7f
    rst $08
    ldh a, [rNR10]
    rra
    jr jr_049_47e7

    ld [$e0fe], sp
    rst $30
    inc c
    rlca
    inc b
    cp $e0
    ld d, $03
    rra
    ei
    di
    rra

jr_049_47e7:
    rst $30
    cp $e2
    adc e
    inc h
    ld a, [$fafc]
    db $fc
    cp c
    ei
    cp $e0
    sbc d
    jp $fff9


    ld b, b
    add b
    add b
    ld b, b
    ret nz

    xor [hl]
    and b
    xor d
    and b
    adc h
    ld h, d
    ld [de], a
    ld h, l
    jr c, @+$42

    ld [hl], $40
    rlca
    cp $8f
    rra
    ld a, a
    rra
    ld a, a
    and $c1
    call c, Call_049_45c5
    inc bc
    db $fc
    cp $da
    call nz, $ffe0
    adc a
    ldh a, [$1f]
    ldh [$38], a
    rst $30
    rst $00
    ld h, b
    sbc a
    xor e
    and l
    ld [hl-], a
    inc bc
    ld [c], a
    inc bc
    db $fd
    jp Jump_049_6072


    add e
    ld bc, $0387
    ld c, $07
    db $eb
    ld a, $1f
    call z, Call_000_0341
    or b
    add hl, bc
    di
    cp $87
    pop af
    db $fc
    ld e, h
    jp z, $eb00

    call c, $f000
    ld a, a
    rst $38
    rrca
    sbc c
    ld sp, hl
    cp $e1
    ld b, h
    ldh [$f3], a
    rst $38
    db $db
    nop
    ld d, e
    daa
    nop
    add hl, sp
    ld bc, $02bb
    dec e
    ld b, e
    ld a, l
    nop
    ei
    cp $e0
    cp e
    nop
    db $fc
    cp l
    ld bc, $41bc
    ld c, a
    rst $38
    sbc a
    rst $38
    cp $e3
    rst $38
    ld a, [$e283]
    inc bc
    db $e3
    inc bc
    db $e3
    ld bc, $e3f7
    ld bc, $fee1
    ldh [$3f], a
    di
    ccf
    db $e3
    xor a
    ld a, a
    rst $20
    ld a, a
    rst $00
    ld a, h
    ret nz

    xor a
    pop hl
    ldh [rIF], a
    pop af
    db $fc
    ld b, h
    ld [c], a
    sbc h
    and e
    ld a, h
    add c
    dec [hl]
    rst $08
    ld [hl], l
    adc a
    rla
    ld a, e
    adc a
    ld a, a
    cp $e0
    rst $28
    ld l, d
    ld [bc], a
    ld a, b

Call_049_48a5:
    ld b, l
    ld l, c
    dec b
    db $eb
    adc a
    pop af
    cp $e3
    adc [hl]
    cp $e0
    adc a
    ldh a, [$8f]
    ld bc, $b8f0
    ld b, l
    cp $e5
    nop
    nop
    nop
    ld [hl], c
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
    add hl, bc
    add hl, hl
    db $dd
    ld sp, hl
    or a
    dec bc
    dec bc
    inc c
    cp [hl]
    ld a, [$0a0c]
    ldh [$f9], a
    inc c
    ld l, a
    dec c
    dec c
    ld a, [bc]
    rrca
    ld a, [hl]
    ld hl, sp+$0d
    ld a, [bc]
    rst $38
    ldh [$92], a
    rst $18
    ld hl, sp+$0e
    ldh [rIE], a
    ldh [$e0], a
    ld c, $5d
    or $c0
    ld [c], a
    ld a, [bc]
    ei
    ld a, [bc]
    ld c, $a0
    or $0e
    ld [$0a08], sp
    ld a, [bc]
    ld [hl], e
    dec c
    dec c
    ld h, c
    push af
    rst $38
    ldh [$08], a
    ld [$e108], sp
    db $f4
    ld d, $e2
    ldh [$6d], a
    add hl, bc
    ldh [$e1], a
    ld a, [bc]
    ret nz

    ld a, [c]
    jp $1ee0


    pop hl
    inc b
    ret nz

    ldh [$bf], a
    di
    dec c
    ret


    ld [c], a
    ldh [$f8], a
    ld l, d
    ld [c], a
    ld a, a
    pop hl
    and b
    di
    ld [bc], a
    daa
    jp $bd4d


    jp nz, $f8df

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

jr_049_4937:
    rst $38
    rst $38
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
    cp $00
    nop
    nop
    db $ed
    nop
    rst $38
    db $e4
    ld bc, $f602
    db $e3
    inc bc
    inc b
    dec b
    ld sp, hl
    ld b, $ec
    push hl
    ld hl, sp-$1a
    rlca
    ld [$0a09], sp
    dec bc
    ld a, l
    inc c
    push de
    pop hl
    dec c
    ld c, $0f
    db $10
    ld de, $ebe0
    rst $38
    ld [de], a
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$01

    add hl, de
    ld a, [de]
    dec de
    inc e

jr_049_4977:
    dec e
    ld e, $1f
    jr nz, jr_049_4977

    ld hl, $c022
    jp hl


    inc hl
    inc h
    dec h
    nop
    nop
    rst $38
    ld h, $27
    nop
    jr z, jr_049_498e

    nop
    add hl, hl
    ld a, [hl+]

jr_049_498e:
    ld a, a
    dec hl
    inc l
    dec l
    ld l, $2f
    ld [hl+], a
    jr nc, jr_049_4937

    jp hl


    rst $38
    ld sp, $3332
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $ff
    scf
    jr c, jr_049_49de

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $ef
    ccf
    ld b, b
    ld b, c
    ld b, d
    add b
    db $eb
    ld b, e
    ld b, h
    ld b, l
    rst $38
    ld b, [hl]
    ld b, a
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld sp, hl
    ld c, l
    rst $38
    db $e3
    ld h, b
    ld [$4f4e], a
    ld d, b
    ld d, c
    ld d, d
    cp a
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    pop hl
    pop hl
    ld e, c
    rst $30
    ld e, d
    ld e, e
    ld e, h

jr_049_49d6:
    ld b, b
    jp hl


    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    cp a
    ld h, c

jr_049_49de:
    ld c, l
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    jp $66e2


    rst $28
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    jr nz, jr_049_49d6

    ld c, l
    ld c, l
    ld l, e
    ld a, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    and e
    db $e4
    db $fc
    and b
    db $ec
    adc l
    pop hl
    ld [hl], e
    ld [hl], h

Jump_049_4a01:
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    db $db
    ld a, c
    ld a, d
    add c
    db $e3
    ld a, e
    ld a, h
    ldh [$ed], a
    ld a, l
    ld a, [hl]
    rst $38
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    cp a
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    and b
    ld_long $ff8d, a
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    rst $38
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ei
    sbc l
    sbc l
    and b
    ret


    sbc [hl]
    sbc a
    and b
    and c
    and d
    ccf
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    and $e0
    db $fd
    db $e3
    cp $80
    ret


    sbc l
    xor c
    xor d
    and e
    and c
    sbc l
    xor e
    rst $18
    xor h
    xor l
    xor [hl]
    xor a
    or b
    ldh [$f1], a
    or c
    or d
    db $fd
    or e
    xor [hl]
    ldh [$b4], a
    or l
    or [hl]
    or a
    cp b
    cp c
    xor $c0
    pop af
    cp d
    cp e
    cp h
    adc [hl]
    ldh [$bd], a
    cp [hl]
    nop
    or a
    cp a
    ret nz

    pop bc
    and b
    pop af
    jp nz, $89c3

    pop hl
    call nz, $c59f
    add $c7
    ret z

    ret


    add b
    ld a, [c]
    ld l, d
    ld [c], a
    call nz, $ca3f
    set 1, h
    call $cfce
    ld h, b
    ldh a, [rIE]
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
    db $e3
    nop
    nop
    nop
    cp e
    ld c, d
    ei
    ld c, d
    ld [hl], l
    ld d, d
    inc b
    ld d, e
    nop
    nop
    ld b, l
    ld bc, $061f
    or c
    dec c
    sbc b
    ld b, c
    adc a
    ld a, c
    or e
    ld l, c
    sbc h
    add hl, hl
    nop
    nop
    ld d, h
    nop
    ld e, [hl]
    ld [bc], a
    sbc h
    add hl, hl
    nop
    nop
    ld d, h
    nop
    dec bc
    nop
    or c
    dec c
    nop
    nop
    ld d, h
    nop
    ld e, [hl]
    ld [bc], a
    or c
    dec c
    db $10
    ld b, d
    rl b
    rrca
    dec e
    sbc h
    add hl, hl
    sbc a
    ld c, e
    sub h
    ld hl, $3a5c
    sbc h
    add hl, hl
    nop
    nop
    dec bc
    nop
    ld d, h
    nop
    ld e, [hl]
    ld [bc], a
    ei
    rst $38
    nop
    cp $ed
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld h, a
    ld d, l
    nop
    rst $38
    db $fc
    push hl
    rst $20
    rst $20
    nop
    ld d, l
    db $fc
    ld [c], a
    ld h, c
    nop
    db $fc
    and $f5
    pop hl
    db $d3
    pop hl
    rst $08
    ldh [rIE], a
    rst $38
    db $fc
    push hl
    and $fe
    push hl
    db $fd
    add e
    and h
    ld [c], a
    rst $38
    add sp, -$21
    ccf
    rst $38
    ld sp, hl
    rra
    ldh a, [$e9]
    call nc, $c0e7
    ret nz

    ldh [$ef], a
    add sp, -$01
    rst $20
    or $f1
    rst $30
    ldh a, [$df]
    rst $18
    rst $08
    rst $38
    rst $08
    rst $00
    rst $10
    jp Jump_000_11db


    dec c
    add hl, sp
    rst $18

jr_049_4b49:
    push bc
    ld [$84f6], sp
    ld a, d
    or b
    rst $20
    db $fc
    rst $38
    rst $28
    rst $30
    ld hl, sp-$02
    db $fd
    and b
    db $e4
    cp $cf
    ldh a, [$bf]
    rst $38
    nop
    rst $30
    ld [$f609], sp
    ld b, b
    pop hl
    jp nc, Jump_000_2ddd

    dec sp
    ldh [$c0], a
    ld bc, $e979
    ldh [rIE], a
    cp $ff
    rlca
    ld e, a
    and b
    add a
    ld e, b
    nop
    inc l
    rlca
    rst $38
    rst $10
    rst $38
    rst $38
    sbc a
    ldh [$7f], a
    add b
    rst $08
    rst $18
    cpl
    ldh a, [$0e]
    rlca
    rst $00
    ld l, d
    db $e3
    ld a, a
    rst $38
    ei
    db $fc
    inc bc
    add b
    db $eb
    ld a, a
    rst $38
    ei
    ld hl, sp-$07
    rst $38
    ld a, [$f7f0]
    ldh [$ef], a
    rst $18
    ret nz

    adc a
    rst $38
    add b
    ldh a, [$f0]
    rst $38
    rst $38
    ldh [$1f], a
    ld hl, sp-$01
    rlca
    db $ec
    inc bc
    inc sp
    ret nz

    sbc b
    ld h, b
    db $fd
    rst $38

jr_049_4bb3:
    nop
    db $fc
    nop
    inc bc
    nop
    ld a, b
    ld a, b
    ld h, h
    rst $38
    ld h, e
    db $10
    rrca

jr_049_4bbf:
    ld e, a
    jr nz, jr_049_4b49

    ld a, b
    ld sp, hl
    rst $38
    ld b, $f9
    nop
    cp $00
    rrca
    rrca
    inc de
    rst $38
    db $e3
    ldh [rNR23], a
    ld [hl], $c1
    rst $28
    nop
    call c, $03ef
    rst $18
    nop
    cp a
    jr nz, jr_049_4bbf

    ccf
    ccf
    rrca
    rst $38
    rst $08
    rlca
    rst $30
    add e
    ld a, e
    ld bc, $c1fd

jr_049_4be9:
    ld a, l
    dec a
    ld d, d
    and $e1
    nop
    ccf
    ld hl, sp-$08
    ld a, [c]
    pop bc
    rst $38
    pop af
    or $c7
    ld hl, sp+$1e
    ld hl, $827d
    rst $38
    nop
    jp $f000


    ldh a, [$f1]
    ld a, l
    add d
    rst $38
    rst $38
    nop
    rst $18
    jr nz, jr_049_4bb3

    ld e, b
    dec e
    ld [c], a
    rst $38
    ld l, d
    sub l
    inc b
    ld a, e
    nop
    cp $3f
    ret nz

    cp $7e
    pop bc
    ei
    inc b
    ld e, a
    and b
    adc a
    ld [hl], b
    nop
    rst $38
    rst $10
    nop
    add hl, hl
    rst $38
    ld hl, sp-$01
    jr nc, jr_049_4c5b

    rst $38
    ld c, a
    sub h
    sub h
    rst $38
    rst $38
    sbc $e1
    ret nz

    ld sp, hl
    jr z, jr_049_4be9

    ret nz

    ld [hl], b
    ret nz

    ld bc, $00f6
    dec bc
    ld hl, sp-$09
    ld hl, sp+$0f
    rst $28
    rlca
    ld [c], a
    ld bc, $7f80
    nop
    rst $18
    db $e3
    nop
    add b
    add hl, bc
    rrca
    sub [hl]
    jp $fb03


    cp a
    nop
    rst $38
    inc bc
    rlca
    rra
    ccf
    adc b

jr_049_4c5b:
    rst $00
    rra
    db $fd
    cp a
    adc h
    ret


    ei
    ld hl, sp-$3b
    ret nz

    add a
    or b
    rst $38
    and a
    sub b
    or a
    add b
    db $d3
    ret nz

    db $d3
    ret nz

    rst $38
    push hl
    ldh [rIE], a
    nop
    pop bc
    ld a, $70
    adc a
    cp a
    sbc b
    ld h, a
    add b
    ld a, [hl]
    ld b, b
    cp [hl]
    ld sp, $fee0
    rst $38
    daa
    jr jr_049_4c8a

    ld a, h
    dec b
    ld a, d

jr_049_4c8a:
    inc bc
    ld a, h
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [rP1], a
    rst $38
    rst $38
    ldh [rNR34], a
    ldh a, [$0e]
    ldh a, [rIF]
    sbc b
    ld h, a
    rst $38
    ldh [rNR34], a
    ld hl, sp+$05
    ldh a, [$0d]
    ldh [rNR32], a
    rst $38
    db $fc
    db $fc
    ldh [$e3], a
    ld b, b
    ld e, a
    dec bc
    inc [hl]
    rst $20
    rla
    add sp, $00
    jp nz, Jump_000_00c1

    ldh [$1f], a
    rst $18
    ccf
    ld [hl], a
    cp a
    cp a
    ccf
    inc c
    pop hl
    inc bc
    di
    ld bc, $c570
    ld h, [hl]
    add hl, bc
    call nz, $fcf3
    jr nz, @-$34

    ret nc

    ldh [$c0], a
    ret nz

    ld a, [$5cc3]

jr_049_4cd4:
    add sp, -$5b
    jp nz, Jump_000_17a0

    add b
    add b
    ld [$bfa9], a
    db $eb
    and b
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    add c
    ld a, a
    db $10
    rst $28
    cp [hl]
    pop de
    xor c
    ld a, a
    rst $38
    ccf
    rst $38
    scf
    or c
    and b
    rst $20
    rst $30
    rst $38
    add e
    db $eb
    ld a, [$fca8]
    ld a, [de]
    add hl, de
    dec b
    rst $18
    ld [bc], a
    rst $20
    ldh [$f7], a
    ldh a, [rDMA]
    ret nz

    ld hl, sp-$06
    rst $38
    ld hl, sp+$7f
    ld a, a
    sub e
    inc de
    jr z, jr_049_4cd4

    call Call_000_00ff
    and d
    ld de, $20db
    ei
    nop
    ld [hl], c
    rst $38
    nop
    rst $30
    ldh a, [$f7]
    ldh a, [$03]
    nop
    ld h, e

jr_049_4d23:
    rst $38
    sub b
    ret


    inc h
    push de
    ld [$00d8], sp
    ret nz

    rst $38
    nop
    add b
    db $76
    add b
    ld a, b
    ret nz

    inc l
    ld b, b
    rst $38
    or l
    and b
    ld e, c
    add b
    ld a, l
    ld b, b
    cp h
    nop
    rst $38
    ld a, l
    ld bc, $03ce
    inc a
    inc c
    di
    jr nz, @+$01

    rst $18
    ld bc, $03e6
    sbc h
    dec c
    ld [hl], d
    inc bc
    rst $38
    db $fc
    jp c, $f024

    ld c, $e0
    ld e, $89
    rst $38
    ld [hl], l
    ld [hl], c
    adc c
    db $e4
    ld [de], a
    call z, $8c22
    rst $28
    ld h, d
    ccf
    nop
    rst $08
    ld [hl], d
    ret nz

    ld a, h
    ld [bc], a
    cp [hl]
    rst $38
    add c
    rst $18

jr_049_4d6f:
    ret nz

    rst $20
    ldh [$f8], a
    ld hl, sp-$20
    rst $38
    jr jr_049_4d6f

    rlca
    rst $08
    rrca
    ccf
    ccf
    ld a, a
    call c, $e4ff
    jr nz, jr_049_4d23

    ld hl, sp+$00
    or $42
    add sp, -$40
    ret nz

    rst $18
    ccf
    nop
    ld a, h
    ldh [$e0], a
    ld [$83a5], sp
    ld a, h
    ld a, a
    nop
    rst $38
    ld bc, $3f11
    ccf
    cp $f7
    add l
    db $db
    rrca
    ccf
    db $fc
    add d
    rst $00
    daa
    ld b, $ab
    cp $ff
    ld sp, hl
    db $fd
    ld d, d
    and b
    push hl
    jp $fffd


    call nc, $e0ff
    ei
    rst $38
    ld b, b
    ld [hl], l
    add d
    ld d, b
    xor a
    ld l, b
    sub a
    cp l
    rst $30
    ld b, d
    cp $01
    ld l, b
    add e
    cp $01
    daa
    rst $38
    rst $38
    ld b, e
    cp a
    ld [bc], a
    rst $38
    sub b
    ld l, a
    ret z

    scf
    ccf
    ld e, h
    and e
    db $ec
    inc de
    rst $30
    ld [$a536], sp
    ld [hl-], a
    and c
    sbc $de
    pop bc
    push af
    ld a, [c]
    di
    db $f4
    inc c
    pop hl
    ei
    ld hl, sp-$03
    db $fc
    add h
    jp nz, Jump_000_0c8c

    ret nz

    inc de
    pop de
    ld b, $ff
    db $d3
    inc b
    and [hl]
    add hl, bc
    rst $28
    nop
    rra
    nop
    rst $38
    rst $18
    ret nz

    inc c
    nop
    jr nc, @-$3e

    dec de
    ldh [rIE], a
    ld e, e
    and b
    ld sp, hl
    ld [bc], a
    ld hl, sp+$03
    ld hl, sp+$03
    rst $28
    push af
    ld [bc], a
    add b
    dec c
    ld c, b
    add c
    add b
    ld h, b
    add b
    rst $38
    ld a, h
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    rrca
    rst $18
    ldh a, [rNR34]
    pop hl
    nop
    ld a, b
    inc l
    add b
    jr nc, jr_049_4e2f

    rst $38
    add b
    nop
    ldh a, [$3e]
    ret nz

jr_049_4e2f:
    dec e
    pop bc
    inc hl
    cp c
    inc hl
    ld a, [de]
    pop hl
    db $10
    pop hl
    ccf
    rst $38
    rlca
    ld d, b
    adc b
    ld sp, hl
    xor a
    rst $38
    ldh a, [rIE]
    ret nc

    ld b, h
    db $e4
    db $fc
    db $f4
    ld [c], a
    and c
    ei
    cp $03
    db $10
    ret nz

    db $fd
    rst $38
    ld a, b
    rst $38
    jr nc, @+$01

    rst $38
    jr @+$01

    ld bc, $02fe
    db $fd
    sub h
    db $eb
    ld l, e
    sub b
    xor a
    ld h, b
    inc b
    xor e
    ld h, b
    adc b
    ld [hl], a
    ld [hl-], a
    rst $38
    call Call_049_40bf
    ld a, a
    add b
    ld [bc], a
    db $fd
    dec hl
    ld h, a
    call nc, $8877
    or $e1
    sub [hl]
    ld l, c
    db $fd
    ld [bc], a
    ld e, $e5
    ccf
    ld [c], a
    dec e
    ld [hl], c
    adc [hl]
    ld [$a615], a
    and c
    ld [de], a
    pop hl
    rst $38
    rst $38
    nop
    rra
    rst $38
    adc a
    ld a, a
    rla
    rst $38
    rst $38
    add d
    ld a, a
    sub l
    ld l, a
    ld d, b
    xor a
    cp d
    ld b, l
    ei
    push af
    ld a, [bc]
    call nz, $ff66
    xor a
    rst $38
    push de
    ccf
    rst $18
    ld a, [$df0f]
    ret nz

    rst $00
    xor [hl]
    xor d
    di
    inc b
    rst $38
    rst $28
    nop
    sbc $00
    scf
    nop
    cp a
    add b
    rst $38
    sbc a
    and b
    ld e, a
    jr nz, jr_049_4efb

    ld b, b
    and b
    ld e, a
    di

Jump_049_4ec0:
    ld h, b
    sbc a
    ld h, $e1
    inc h
    pop hl
    sub c
    ld l, [hl]
    inc hl
    call c, $a2ff
    ld e, a
    ld b, a
    cp a
    rst $00
    ccf
    adc a
    ld a, a
    rst $18
    adc a
    ld a, a
    dec de
    rst $38
    inc de
    ld l, a
    and b
    ld b, b
    ld b, e
    cp e
    ld a, b
    ld a, b
    inc [hl]
    push bc
    ld a, a
    ld a, a
    cp a
    ret z

    add b
    rra
    sbc a
    ld a, a
    inc bc
    rrca
    ldh [$e1], a
    jp nz, $e8c3

    ld h, a
    rrca
    ccf
    ccf
    add c
    add a
    ldh a, [$f0]
    cp $39

jr_049_4efb:
    add $a6
    add d
    ei
    rst $38
    rlca
    sbc b
    adc b
    rst $38
    ei
    rst $38
    push af
    rst $38
    cp $10
    ld h, [hl]
    ei
    rst $38
    or h
    rst $38
    ld [$14f7], sp
    ld a, [$a056]
    db $fd
    ret c

    ret nz

    ldh [rIE], a
    xor c
    or $04
    rst $38

jr_049_4f1e:
    ei
    ld l, e
    sub h
    cp a
    ld b, b
    add b
    rst $38
    ld [de], a
    rst $18
    db $ed
    ld e, a
    and b
    cp $01
    nop
    push hl
    rlca
    ld hl, sp-$01
    daa
    ret c

    ld c, e
    or h
    ld l, a
    sub b
    rst $30
    ld [$7fff], sp
    add b
    rst $18
    jr nz, @+$01

    nop
    ld a, [hl]
    add c
    jr z, @-$04

    pop hl
    ld [c], a
    rst $00
    sub $cd
    ld d, l
    sbc l
    ldh [rHDMA5], a
    xor e
    ld b, b
    db $fc
    pop hl
    ld [de], a
    and h
    ld b, c
    ld d, l
    ret nc

    add b
    ldh a, [$e1]
    ld e, a
    ldh a, [$e6]
    ld a, [c]
    and e
    cp b
    and e
    db $f4
    add sp, -$19
    ld a, b
    ld b, c
    ld d, a
    ld h, h
    ld h, c
    ld b, b
    ccf
    ld b, b
    ld e, a
    rst $38
    jr nz, jr_049_4f1e

    sub b
    sbc [hl]
    add b
    xor a
    add b
    ld [hl], a
    rst $38
    nop
    ld l, b
    nop
    ld a, [de]
    push hl
    inc a
    jp $e778


    add a
    ldh a, [rIF]
    cp d
    ld h, b
    dec b
    ld b, b
    ld [bc], a
    ld a, a
    db $fc
    rst $30
    inc bc
    cp $01
    cp $e1
    db $fc
    inc bc
    ld hl, sp+$07
    rst $38
    pop hl
    ld e, $10
    ldh [$3f], a
    cp a
    ccf
    cp a
    dec sp
    rra
    rst $18
    cp $e1
    ld e, a
    sbc a
    ccf
    xor d
    ld h, b
    cp h
    pop hl
    cp $48
    xor d
    cp $fd
    db $fc
    db $fd
    db $fc
    ei
    ld hl, sp-$05
    ei
    ld hl, sp-$01
    db $e3
    jp $a33b


    ld e, e

jr_049_4fbb:
    pop de
    rst $30
    dec l
    pop af
    dec c
    cp $e1
    add hl, bc
    dec b
    dec b
    ld bc, $5850
    push hl
    ld hl, sp+$25
    ld b, h
    jp hl


    ld b, b
    db $e3
    ld a, [$e230]
    ld [hl], l
    jr nc, jr_049_4fbb

    nop
    jr nz, jr_049_4fbb

    jr nc, jr_049_4fbb

    inc hl
    ld b, c
    db $10
    db $e3
    call c, $08e3
    db $e3
    nop
    pop hl
    db $fc
    rst $00
    ld d, b
    ldh a, [$e7]
    cp b
    db $e3
    and b
    add hl, hl
    ld d, h
    and $fa
    sbc d
    inc l
    xor a
    adc d
    inc sp
    ldh a, [$cf]
    jp nz, $e02e

    cp $e1
    or e
    push bc
    ld h, b
    rra
    ldh [$1f], a
    rst $28
    ret nz

    ccf
    and b
    ld e, a
    ret


    ret nz

    ld a, $a0
    sbc a
    rst $28
    ret c

    rst $00
    nop
    add b
    rst $18
    inc bc
    ld b, b
    cp a
    rra
    rst $38
    ld h, b
    nop
    add c
    nop
    rst $18
    ld b, $08
    ld b, $df
    ld hl, sp+$06
    ld hl, sp+$0e
    ldh a, [$fa]
    db $e3
    ld a, $c0
    jp nc, $2110

    xor e
    dec de
    jr z, jr_049_50aa

    add e
    rst $28
    ret z

    add $05
    ld bc, $0311
    adc h
    inc l
    ld h, e
    pop hl
    reti


    ld bc, $d5ea
    inc b
    call $c901
    ld [$b238], sp
    ld [c], a
    cp c
    ld b, $a0
    ld c, h
    rst $38
    ld d, l
    push af
    and b
    ret nc

    sub h
    call $d589
    add h
    rst $08
    cp l
    and c
    ld d, a
    or l
    and c
    cp b
    and h
    pop bc
    and e
    xor e
    inc bc
    rst $38
    ld d, l
    call nz, Call_049_48a5
    inc b
    pop bc
    and [hl]
    ld l, [hl]
    jp hl


    inc e
    push hl
    cp c
    pop bc
    rst $38
    rst $20
    ldh [$e8], a
    ldh [$ec], a
    db $e3
    db $ec
    db $e3
    rst $38
    and $e9
    or $f9
    or $f1
    ld a, [c]
    push af
    rst $38
    add b
    ld e, a
    inc bc
    inc e
    rrca
    ret nc

    nop
    ldh [rIE], a
    nop
    rst $30
    nop
    rst $30
    ld bc, $01ee
    xor [hl]
    rst $30
    cp $00
    db $fd
    ld c, $e0
    db $eb
    inc de
    swap e
    ccf
    swap e
    rst $20
    rla
    rst $20
    rla
    adc b
    jp z, Jump_000_006c

    nop

jr_049_50aa:
    jr nc, jr_049_50af

    ld e, [hl]
    pop hl
    push bc

jr_049_50af:
    add hl, hl
    ld d, [hl]
    and c
    db $76
    db $ec
    add hl, sp
    db $e3
    or c
    xor c
    dec c
    and c
    inc b
    ld sp, hl
    add d
    adc e
    jr z, jr_049_513f

    db $db
    db $ed
    and b
    and c
    cp [hl]
    jp hl


    ret nz

    add c
    ld [hl], e
    xor b
    sub c
    xor d
    ldh a, [$e6]
    xor e
    add a
    ld c, l
    xor l
    ld a, l
    xor c
    or l
    ld a, [de]
    pop bc
    ld a, [c]
    ld a, a
    push af
    rst $20
    add sp, -$19
    add sp, -$1a
    jp hl


    nop
    ldh [$fe], a
    ld [bc], a
    ldh [$f0], a
    ldh a, [$ed]
    nop
    xor $01
    db $ec
    rst $38
    inc bc
    ret nc

    nop
    ret


    rlca
    db $d3
    rrca
    db $d3
    rst $38
    rrca
    daa
    rra
    ld b, a
    scf
    rst $00
    scf
    adc a
    ld a, a
    ld l, a
    ld c, a
    cpl
    cpl
    adc a
    rrca
    rst $08
    cp b
    add c
    nop

jr_049_5109:
    ld d, a
    add [hl]
    sub h
    and d
    inc c
    push bc
    cpl
    add l
    ld d, l
    inc bc
    ld [$51e8], a
    cp c
    jp Jump_000_00e7


    adc d
    inc bc
    ld a, [hl+]
    and c
    add l
    and e
    ei
    xor l
    db $e3
    ld h, h
    ld hl, $6fa2
    adc b
    cp h
    ld h, d
    db $10
    rst $00
    adc l
    sbc a
    ld l, c
    adc [hl]
    push bc
    adc e
    ld h, c
    nop
    ld b, d
    nop
    adc $a1
    adc e
    ld l, c
    ld hl, sp+$65
    rlca
    dec hl
    adc c

jr_049_513f:
    ld l, l
    xor d
    pop af
    or $f3
    db $f4
    di
    rst $38
    db $f4
    ld sp, hl
    ld a, [$f8f8]
    ld sp, hl
    ld_long a, $fffb
    ld hl, sp-$0d
    ldh a, [$a0]
    db $10
    rrca
    and b
    rra
    ld a, a
    add b
    ld hl, $0080
    ld e, $00
    cp a
    cp $e1
    cp a
    rra
    ld e, a
    sbc a
    rra
    sbc a
    ld e, a
    cp $e1
    rra
    ld b, a
    ld e, a
    ld e, a
    rra
    sbc [hl]
    ld h, c
    ld [hl], d
    adc b
    ld sp, hl
    adc c
    cp $45
    res 0, d
    sub [hl]
    ld b, b
    ld a, a
    jr c, jr_049_5109

    push bc
    jp nz, $a516

    and e
    adc b
    ld a, a
    ld l, e
    xor a
    ld a, [hl+]
    rst $38
    and l
    cp $59
    push hl
    ld d, l
    ld a, [c]
    ld h, e
    cp a
    cp [hl]
    ld b, l
    or a
    ld b, l
    add d
    res 0, e
    ld a, [$e432]
    ld e, e
    ld h, c
    ld e, a
    add c
    sbc $80
    add e
    ld b, d
    add b
    ld c, b
    ld a, e
    ld b, b
    add hl, de
    add e
    sub e
    ld b, e
    xor d
    ld a, a
    ld b, d
    dec a
    add e
    xor a
    ld [hl], l
    nop
    nop
    ld h, d
    pop hl
    ld d, a
    ld h, e
    dec hl
    adc e
    scf
    add l
    rla
    pop bc
    call c, Call_000_2ee3
    jp hl


    rlca
    adc b
    rst $38
    cp $fe
    db $fc
    xor b
    ldh a, [$f0]
    ldh [$a0], a
    ccf
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ld e, h
    ld bc, $e4fc
    sub a
    rrca
    nop
    rlca
    scf
    nop
    ccf
    inc sp
    nop
    db $eb
    ld [c], a
    ccf
    add hl, bc
    ccf
    ld e, [hl]
    ld b, c
    ld e, d
    ld b, b
    ccf
    inc a
    inc hl
    and a
    adc h
    ld b, $69
    sbc a
    ld h, c
    db $10
    ld a, b
    jp hl


    sub a
    ld h, l
    inc d
    ld h, c
    adc e
    ld h, e
    ld e, a
    ld [hl], a
    ld h, [hl]
    ld a, e
    ld h, e
    jr nc, jr_049_5227

    jp nc, $e744

    push de
    ret nz

    db $ec
    ld [hl], e
    ld b, l
    nop
    db $fc
    and $00
    rst $38
    push de
    ld d, c
    ldh a, [$e6]
    adc d
    ld c, b
    ld [hl+], a
    dec d
    ldh [$e9], a
    cp $00
    rst $38
    rst $38
    ld d, l
    cp $aa
    push af
    ld bc, $a8e8
    rst $18

jr_049_5227:
    ret nc

    nop
    and b
    and b
    ld b, b
    or e
    ld b, b
    ld b, b
    ld b, b
    db $f4
    ld [hl+], a
    ld [$f4f5], a
    ld bc, $e1ff
    nop
    inc bc
    ld bc, $9103
    nop
    ld e, $e2
    or $63
    rst $10
    ld hl, $8800
    ld [bc], a
    ld h, h
    pop bc
    ld d, h
    ld [hl], b
    add b
    db $e4
    or e
    ld b, c
    db $f4
    db $e3
    ld [hl], b
    db $e3
    ld d, l
    rst $38
    add d
    db $e4
    db $e4
    ld d, c
    xor b
    ldh a, [$e4]
    ld hl, sp-$1f
    ldh [$e9], a
    ld a, [hl+]
    ld b, b
    db $e4
    and d
    ret nc

    db $e4
    ld [$e530], sp
    add sp, -$1f
    ldh a, [$e9]
    add d
    ld a, b
    inc b
    db $10
    ld [$0000], a
    nop
    ld b, c
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    db $f4

Jump_049_5281:
    ld c, $ff
    ldh [$83], a
    ld a, [bc]
    ld a, [bc]
    ld a, [$fce1]
    rst $20
    ldh [$ef], a
    cp $e0
    ldh [$f8], a
    ld c, $67
    ld a, [bc]
    dec bc
    dec bc
    sbc $e9
    adc d
    jp hl


    dec c
    dec c
    pop bc
    pop hl
    ld d, $e0
    jp hl


    dec c
    dec c
    ldh [$eb], a
    dec c
    ldh [$e3], a
    db $e3
    push hl
    rst $28
    ldh [$8c], a
    ldh [$ec], a
    rst $18
    ldh [$0b], a
    rrca
    ld a, l
    ld [c], a
    ld [c], a
    ld [c], a
    ret nz

    db $eb
    ld [$ff3e], sp
    pop hl
    inc c
    rrca
    inc c
    inc c
    ld [$e0fd], sp
    rst $38
    db $e4
    ld c, $e0
    xor $0b
    dec bc
    dec bc
    jp c, $e0e1

    ld hl, sp-$3c
    and $c0
    di
    rla
    rrca
    inc c
    ld c, b
    ldh [$f9], a
    inc c
    ret nz

    db $fc
    ld a, a
    ldh [$e0], a
    ei
    nop
    ld a, [$4aeb]
    rst $18
    rst $38
    rst $38
    rst $38
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
    ldh a, [$ef]
    nop
    nop
    nop
    dec h
    nop
    rst $38
    db $fc
    ld bc, $f0ff
    call z, $02e9
    rst $38
    ldh a, [$ac]
    jp hl


    ret


    inc bc
    rst $38
    ldh a, [$8c]
    jp hl


    inc b
    rst $38
    ldh a, [$6c]
    jp hl


    dec b
    ld b, $df
    rlca
    rlca
    ld [$0709], sp
    rst $38
    add sp, $0a
    dec bc
    cp $4c
    jp hl


    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $7b12
    inc de
    inc d
    db $dd
    db $e4
    dec d
    ld d, $17
    jr jr_049_5369

    jp hl


    rst $38

jr_049_533f:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_049_533f

    ld hl, $2322
    cp e
    pop hl
    inc h
    dec h
    rlca
    ld h, $fd
    daa
    inc c
    jp hl


    jr z, @+$2b

jr_049_5357:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    rst $18
    ld l, $2f
    jr nc, jr_049_5391

    ld [hl-], a
    sbc e
    ldh [$33], a
    inc [hl]
    rst $28
    dec [hl]
    ld [hl], $37

jr_049_5369:
    jr c, jr_049_5357

    ret


    add hl, sp
    ld a, [hl-]
    dec sp
    cp a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld a, l
    db $e3
    ld b, d
    rst $28
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    call z, Call_049_47c9
    ld c, b
    ld c, c
    rst $38
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    rst $38
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_049_5391:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    cp $ad
    jp z, Jump_049_5a5a

    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    rst $38
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    rst $18
    ld l, b
    ld l, c
    ld l, d
    ld l, d
    ld l, e
    adc h
    ret


    ld l, h
    ld l, l
    rst $38
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    rlca
    rst $38
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld h, l
    ei
    ld a, h
    ld a, l
    ld l, h
    ret


    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    rst $38
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rlca
    adc c
    ld a, a
    adc d
    ld a, d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld c, h
    ret


    rst $38
    sub b
    sub c
    sub b
    sub d
    rlca
    sub e
    sub h
    sub l
    rst $38
    ld a, d
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    rst $28
    sbc l
    sbc [hl]
    sbc a
    and b
    inc l
    ret


    and c
    and d
    and e
    rst $38
    and h
    sub b
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst $38
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    db $fd
    or e
    inc c
    ret


    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    rst $38
    cp d
    cp e
    cp h
    cp l
    or l
    or l
    cp [hl]
    cp a
    cp a
    cp [hl]
    cp [hl]
    or l
    ret nz

    pop bc
    jp nz, $a9ec

    jp $c4ff


    push bc
    add $c7
    ret z

    ret


    jp z, $ffcb

    call z, $c3c3
    call $cec3
    rst $08
    ret nc

    rlca
    pop de
    jp nc, $ccd2

    cp l
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
    pop af
    nop
    nop
    nop
    ld l, e
    ld d, h
    xor e
    ld d, h
    or c
    ld e, a
    rla
    ld h, b
    sbc [hl]
    ld bc, $0024
    ld e, [hl]
    ld h, $f9
    nop
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    sbc [hl]
    ld bc, $265e
    ld sp, hl
    nop
    adc [hl]
    nop
    xor $2c
    inc h
    nop
    ld a, $3f
    sbc [hl]
    ld bc, $2cee
    inc h
    nop
    ld a, $3f

jr_049_5491:
    ld sp, hl
    nop
    ld e, [hl]
    ld h, $f9
    nop
    inc h
    nop
    sub c
    nop
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fd
    rst $38
    rst $38
    xor $fe
    cp $f5
    push af
    ld_long a, $fffa
    ret nc

    ret nc

    and h
    and h
    ld c, b
    ld c, b
    and b
    and b
    rst $18
    ld b, b
    ld b, b
    add b
    add b
    nop
    rst $38
    add sp, $01
    ld bc, $02ff
    inc bc
    inc c
    ld c, $10
    jr jr_049_54f0

    jr nc, jr_049_5491

    ld b, b
    ld h, e
    add b
    db $fc
    jr nc, jr_049_5510

    ld [c], a
    db $e4
    ld bc, $00ff
    rrca
    nop

jr_049_54df:
    ld a, a
    nop
    ld c, $00
    jr @+$01

    nop
    inc b
    nop
    inc d
    nop
    ldh a, [rP1]
    ldh [$e7], a
    nop
    ret nz

jr_049_54f0:
    nop
    ret z

    ld [$eef4], a
    inc bc
    nop
    rrca
    cp a
    ld bc, $031d
    ld [hl], e
    nop
    rra
    cp $e0
    ccf
    rst $38
    nop
    rst $38
    jr jr_049_54df

    ld [hl], b
    ld [hl], b
    ret nz

    ret nz

    ld [$e0ba], a
    ld hl, sp-$3e

jr_049_5510:
    ldh [$c0], a
    adc [hl]
    db $e4
    ld h, c
    nop
    rst $38
    call nc, $e5d4
    ret c

    ldh [$7f], a
    ld a, [c]
    ldh [rIE], a
    call nc, Call_000_00e1
    cp $ff
    ld bc, $03fd
    ei
    inc c
    call z, Call_000_3838
    di
    ldh [$e0], a
    ld b, [hl]
    db $eb
    ld b, d
    pop hl
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    ld a, [$f4fa]
    db $f4
    ld l, b
    ld l, b
    ret nc

    ret nc

    ei
    and b
    and b
    sub a
    ldh [$03], a
    ld b, $07
    jr @+$20

    rst $38
    inc hl
    jr c, jr_049_555b

    ld hl, $1f01
    nop
    nop
    rst $38
    ret nz

    ldh [rP1], a
    pop bc
    jr c, jr_049_555e

jr_049_555b:
    ldh [$0e], a
    rst $38

jr_049_555e:
    nop
    ld a, h
    jr nz, @-$06

    ld b, b
    ld [hl], b
    add b
    ldh [rHDMA4], a
    inc h
    ldh [$58], a
    db $eb
    ld [$e462], sp
    rlca
    adc h
    ld [c], a
    ccf
    ld h, b
    ldh [$7f], a
    ld a, [hl]
    ld bc, $00fd
    or $00
    rst $30
    add d

jr_049_557d:
    ld [c], a
    ld a, a
    rst $38
    inc a
    cp h
    ret nz

    jp $9f80


    ld a, d
    ld [c], a
    ld a, [c]
    ld [hl], d
    pop hl
    ld a, $f6
    and $6a
    ldh [$7b], a
    ld a, e
    adc $ce
    cp $f6
    db $e3
    ld bc, $73fd
    ld a, e
    sub $d6
    sbc h
    ld a, l
    sbc h
    ret nc

    ret nz

    ld sp, hl
    rra
    rst $18
    jr nc, jr_049_55d7

    ld h, $e0
    cp $bb
    call nz, $8280
    nop
    dec b
    nop
    ld a, [bc]
    nop
    rst $38
    dec d
    nop
    xor d

jr_049_55b7:
    nop
    ld d, l
    nop
    xor e
    nop
    jp hl


    ld e, a
    jp nz, $b0e6

    db $e3
    rst $20
    ld [hl-], a
    db $ed
    db $fd
    db $fd
    ld a, [$faff]
    push af
    push af
    xor d
    xor d
    ld d, h
    ld d, h
    and b
    rst $30
    and b
    ld d, b
    ld d, b
    jr nc, jr_049_55b7

jr_049_55d7:
    ld d, b
    nop
    and b
    nop
    rst $38
    ld b, b
    inc bc
    add e
    inc b
    ld b, $09
    inc c
    db $10
    rst $38
    jr jr_049_55ef

    rrca
    nop

jr_049_55e9:
    nop
    jr nc, @+$3e

    ret nz

    rst $38
    ld [c], a

jr_049_55ef:
    jr nz, jr_049_557d

    ret nz

    jr jr_049_55f4

jr_049_55f4:
    ld h, b
    nop
    rst $10
    ret nz

    inc bc
    inc bc
    ld h, b
    pop bc
    ld [$c360], sp
    ld h, b
    add b
    rla
    ret nz

    ld bc, $7a80
    push bc
    inc bc
    cp a
    jp nz, $e008

    ld d, h
    pop bc
    cp $24
    pop hl
    ld a, $00
    di
    nop
    rst $00
    ld bc, $fe1d
    ld b, a
    ld [c], a
    nop
    ld hl, sp+$03
    ldh a, [rTAC]
    call nz, $ff1e
    ld [$116c], sp
    sbc b
    ld [$30e8], sp
    or e
    rst $38
    ldh [$e7], a
    add b
    adc a
    ld bc, $023d
    ld a, d
    rst $38
    inc c
    db $ec
    jr nc, jr_049_55e9

    ld a, b
    inc bc
    ldh [$0c], a
    rst $38
    add b
    jr nc, jr_049_5641

jr_049_5641:
    ld b, b
    nop
    add b
    ld [bc], a
    inc bc
    rst $28
    inc b
    ld b, $08
    inc c

jr_049_564b:
    db $f4
    and l
    ret nz

    ret nz

    jr nz, jr_049_55ef

    rst $38
    ldh [rLCDC], a
    ret nz

    nop
    ld [bc], a
    jr nc, @-$04

    ld [hl+], a
    and $07

jr_049_565c:
    ld a, a
    rst $38
    inc a
    cp $e0
    ldh a, [$83]
    ret nz

    inc a
    pop bc
    rst $38
    jr nz, jr_049_565c

    add b
    pop bc
    inc bc
    rlca
    inc l
    ld c, $fd
    add b
    sbc e
    ret nz

    inc bc
    rst $38
    inc c
    cp $30
    db $fc
    sbc a
    jp nz, Jump_000_0ee0

    add b
    jr c, jr_049_564b

    and b
    sub l
    and b
    rrca
    rst $38
    inc bc
    rra
    inc e
    ld a, a
    ld h, b
    ld a, b
    ld bc, $fec0
    dec bc
    pop bc
    ld a, $00
    jr nc, @+$01

    nop
    rst $00
    nop
    ld a, a
    rrca
    ld h, b
    rrca
    ret nz

    rra
    add b
    ccf
    cp $a1
    or $58
    xor c
    db $fd
    db $fd
    ldh [$c7], a
    ld d, l
    ld d, l
    xor d
    xor d
    ldh [$e0], a
    pop bc
    ld d, b
    and c
    ld c, h
    xor l
    ld b, b
    and c
    ld b, d
    ldh [rTAC], a
    db $10
    ld e, $3f
    ld b, b
    ld a, h
    ld [$200f], sp
    inc a
    ld [$a0c1], sp
    pop hl
    rst $30
    ld b, $00
    jr @+$1a

    pop bc
    ld c, $01
    dec a
    ld b, $f5
    db $76
    ld [$b0e0], sp
    ld e, d
    pop bc
    add b
    inc a
    db $10
    ret c

    rst $38
    ld hl, $43b0
    ld h, b
    ld b, h
    ld b, c
    jr jr_049_5729

    rst $38
    nop
    jr c, jr_049_56e7

jr_049_56e7:
    nop
    ld b, $36
    ld [$efe8], sp
    db $10
    ret nc

    ld h, b
    ld h, b
    ld a, [$1185]
    ld de, $e80e
    cp h
    pop bc
    db $ed
    add a
    ld d, h
    and d
    inc bc
    and d

jr_049_56ff:
    pop hl
    inc e
    ld h, c
    ld [hl], b
    rst $38
    rrca
    ldh [rNR42], a
    jr nc, jr_049_574f

    ld h, b
    adc h
    pop bc
    rst $38
    jr @-$7c

    jr nc, jr_049_5715

    ld h, b
    ld [$16c0], sp

jr_049_5715:
    ld c, e
    cp b
    ld [bc], a
    ret nz

    adc b
    ld bc, $c2d4
    db $f4
    push hl
    ld b, $aa
    add h
    adc $cc
    add c
    ld [hl], b
    nop
    add c
    ld [c], a

jr_049_5729:
    ld [c], a
    sub a
    add c
    ld a, [bc]
    nop
    rst $30
    rla
    nop
    cp a
    ld [$dea0], sp
    ld bc, $033d
    rst $30
    ld [hl], e
    rrca
    rst $08
    ld d, $a0
    di
    rra
    rst $18
    ld a, a
    db $ed
    ld a, a
    ld e, h
    adc a
    ld [$e8ea], a
    and c
    db $fd
    db $fd
    ld [$eac7], a

jr_049_574f:
    push de
    push de
    ldh [$a3], a
    ld d, h
    add e
    ld e, [hl]
    add c
    dec b
    ld b, $ff
    nop
    inc b
    ld h, b
    ld h, e
    add b
    ldh a, [rP1]
    and b
    cp [hl]
    db $fc
    ldh [$c0], a
    nop
    add e
    add b
    inc a
    xor h
    add l
    inc c
    ld h, a
    ld l, h
    ld [hl], b
    ld [hl], b
    ld l, $89
    jp nc, Jump_000_00a1

    ld c, $24
    jp Jump_000_11bf


    jr jr_049_57a3

    jr nc, jr_049_56ff

    sub c
    ld b, $a0
    inc e
    cp a
    ld bc, $0631
    or $1c
    db $fc
    ld c, b
    and c
    inc b
    ld e, a
    db $e4
    jr jr_049_5729

    ldh [$e0], a
    ld b, h
    db $e4
    ld a, [bc]
    ld c, h
    and b
    cp [hl]
    ld b, h
    and c

jr_049_579b:
    ld a, [hl+]
    nop
    ld d, a
    nop
    xor a
    ld b, h
    and b
    cp a

jr_049_57a3:
    ld d, b
    inc c
    add b
    db $fc
    pop hl
    inc a
    xor c
    jr nz, @-$77

    rlca
    inc h
    add b
    scf
    ld a, [$f7e2]
    jr c, jr_049_57b6

    ld sp, hl

jr_049_57b6:
    db $ec
    ld h, b
    pop hl
    nop
    pop bc
    nop
    ld a, a
    add a
    rra
    sbc a
    ld a, c
    ld a, c
    ldh [$e4], a
    ld b, $81
    rst $08
    rrca
    adc a
    rra
    rra
    jr z, @-$19

    jr @-$59

    ld [$0fea], a
    ld d, h
    ld d, h
    xor b
    xor b
    jr c, jr_049_579b

    add h
    ld l, a
    bit 4, b
    call c, $fec3
    ld hl, sp-$20
    rrca
    add hl, bc
    rra
    rla
    rst $38
    add b
    cp $ff
    ld b, [hl]
    nop
    nop
    rra
    db $10
    rst $38
    adc a
    ld hl, sp-$01
    ld a, b
    ret nz

    push bc
    nop
    dec hl
    rst $38
    nop
    rlca
    rst $38
    rlca
    nop
    nop

Call_049_57fe:
    ldh a, [rNR10]
    rst $38
    pop hl
    rlca
    dec a
    ld b, $7c
    ld h, b
    cp $00
    ld a, a
    ret nz

    ldh [$80], a
    ld d, d
    and d
    rst $38
    ld b, b
    ldh [$a0], a
    ld [hl], b
    ld d, b
    jr c, jr_049_583f

    inc e
    adc a
    sub h
    daa
    cpl
    jr c, jr_049_5848

    ret nz

    db $eb
    and l
    ld [hl], b
    jp nz, Jump_049_4a01

    inc l
    db $e4
    ld d, l
    inc l
    ld [c], a
    xor e
    inc h
    ld [c], a
    inc l
    rst $20
    ld [bc], a
    ld e, $a0
    rst $30
    inc b
    nop
    add hl, bc
    add b
    ld h, d
    ld hl, sp+$03
    db $e3
    nop
    rst $38
    ld a, $01

jr_049_583f:
    add hl, sp
    inc bc
    ld [hl], e
    rlca
    rst $20
    rra
    db $fd
    sbc a
    ld l, h

jr_049_5848:
    push bc
    ei
    ei
    rst $30
    rst $30
    xor $ee
    cp h
    ld a, h
    pop bc

jr_049_5852:
    db $fc
    db $e3
    ld [$d4ea], a
    call nc, Call_049_47c8
    rlca
    rst $38
    dec b
    rrca
    ld [$111f], sp
    ld a, $26
    jr c, @+$01

    ld [$5070], sp
    ld [hl], e
    jr nc, jr_049_5852

    and e
    ldh a, [$fd]

jr_049_586e:
    jr nc, jr_049_586e

    ld h, d
    ld [bc], a
    jr nc, jr_049_5875

    ld c, b

jr_049_5875:
    db $10
    ld c, b
    rst $00
    db $10
    add sp, $20
    db $10
    ld h, b
    or [hl]
    ld h, e
    ld [hl+], a
    ld h, c
    ld a, a
    nop
    rst $38
    ccf
    ld [hl], b
    ld b, e
    jr jr_049_589c

    inc c
    ret z

    ld b, $ff
    db $e4
    rlca
    push af
    inc bc
    ld a, [$fc01]
    ld bc, $fff7
    ld c, $ca
    db $f4
    ldh [$d5], a

jr_049_589c:
    inc bc
    ld h, d
    rlca
    ld a, a
    ld [hl], $83
    sbc e
    rst $38
    ld [$5cc0], sp
    ld c, b
    push hl
    rst $38
    add b
    adc d
    add b
    dec d
    ret nz

    ld l, d
    ret nz

    ld d, l
    ld hl, sp+$48
    ld [c], a
    ld c, h
    jp hl


    ld [hl], b
    add $01
    cp $03
    db $fc
    ld b, $f9
    ld sp, hl
    ld c, d
    ld h, e
    or $e0
    ld hl, sp-$04
    ld bc, $c318
    cp $54
    ld h, l
    ldh a, [rIF]
    ld e, $d1
    add hl, sp
    and b
    add hl, sp
    ld a, a
    ld [$4e7f], sp
    rrca
    rrca
    ccf
    ccf
    db $fc
    ld hl, $b8e6
    and e
    ld [$90ea], a
    ld h, c
    or b
    and c
    dec d
    dec d
    ld a, [hl+]
    pop af
    ld a, [hl+]
    ld a, h
    pop bc
    adc b
    ld h, [hl]
    ei
    ld [hl+], a
    jr nz, jr_049_58f3

jr_049_58f3:
    rst $20
    ld h, e
    rst $38
    rst $30
    ld [hl], e
    ei
    ld a, c
    rst $30
    ld [hl], l
    ei
    ld a, d
    rst $38
    push af
    ld [hl], h
    ei
    ld a, d
    cp $b8
    ld h, h
    ld [$24ff], sp
    nop
    jp nz, $ffc0

    cp h
    cp $c0
    rst $38
    ldh a, [$87]
    add e
    ld a, [hl-]
    rra
    pop de
    nop
    ld e, a
    rst $38
    inc bc
    jr z, jr_049_595b

    inc hl
    ldh a, [rNR21]
    inc bc
    ld a, [c]
    rst $38
    ld a, a
    ld b, b
    rst $38
    dec a
    rst $38
    ei
    ccf
    add b
    rst $38
    ldh [$3e], a
    nop
    ret nz

    ccf
    jr nz, @+$01

    dec e
    rst $38
    rst $38
    ld c, $f9
    ld sp, hl
    ldh [$e0], a
    ldh [rNR52], a
    rst $38
    ldh a, [$90]
    ld a, a
    ld b, c
    ld hl, sp+$19
    ret nz

    add $ff
    nop
    inc bc
    pop bc
    ld b, b
    rst $30
    sub l
    ld b, b
    dec bc
    rst $38
    ldh [$b7], a
    ldh a, [$1f]
    inc e
    add a
    rrca
    add sp, -$41
    ld b, $75

jr_049_595b:
    jp nz, Jump_000_2239

    add b
    ld d, d
    ld [c], a
    cp $ff
    or $1c
    ld e, $c1
    ld [hl], $8b
    inc h
    sub c
    rst $38
    inc h
    sub c
    ld c, $f9
    db $fc
    nop
    inc c
    ld b, b
    rst $38
    dec e
    pop de
    ccf
    and c
    ld a, a
    ld c, b
    ld a, h
    ld c, b
    rst $38
    inc a
    jr nz, jr_049_5981

jr_049_5981:
    ld sp, $0000
    db $fc
    ret nz

    rst $38
    db $e3
    xor c
    jp $877a


    and h
    rra
    db $10
    rst $38
    ld a, $20
    ld a, a
    ld c, b
    ccf
    jr nz, jr_049_59b6

    ld d, $ff
    call $e9c4
    ldh [$f9], a
    ldh [$f9], a
    ld [$f1cf], sp
    ldh a, [$d5]
    push de
    ret nz

    and l
    ld c, b
    inc hl
    jr jr_049_59ac

jr_049_59ac:
    rst $38
    inc d
    ld [$0412], sp
    ld a, [de]
    ld [$1834], sp
    rst $18

jr_049_59b6:
    jr c, jr_049_59c8

    jr nc, jr_049_59ba

jr_049_59ba:
    db $10
    inc a
    inc h
    inc bc
    ld [bc], a
    rst $38
    ld b, $04
    dec c
    add hl, bc
    dec de
    ld [de], a
    scf
    dec h

jr_049_59c8:
    rst $38
    ld sp, hl
    and c
    rst $20
    add h
    sbc a
    inc de
    ccf
    ld l, $ff
    rst $38
    sbc l
    rst $38
    ld a, e
    rst $38
    di
    rst $38
    call Call_049_57fe
    ld h, b
    rst $18
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld h, e
    rst $38
    pop bc
    db $ed
    sub d
    rst $38
    cp $ff
    rst $38
    db $fc
    ld a, [$e2f9]
    pop hl
    add e
    add b
    db $fd
    add c
    cp $e0
    ret nz

    ret nz

    rst $38
    rrca
    rst $28
    inc de
    rst $38
    ld d, a
    adc c
    ld d, e
    adc h
    db $eb
    inc b
    jp hl


    ld b, $ff
    adc c
    ld b, $f1
    rrca
    ld [hl], $23
    inc e
    db $10
    rst $38
    ld c, l
    ld [$0687], sp
    inc bc
    nop
    jp $ff11


    inc bc
    ld sp, $7303
    inc hl
    ld b, c
    di
    ld h, c
    rst $38
    di
    pop hl
    di
    ld [c], a
    pop af
    ld h, b
    pop af
    pop hl
    rst $38
    ldh a, [$e0]
    ldh [$c0], a
    inc h
    inc b
    jr nz, @+$22

    cp l
    add b
    ret z

    ldh [$c0], a
    ret nz

    ldh [$60], a
    cp $e1
    ld e, $ff
    db $10
    ld e, $10
    rrca
    ld a, [bc]
    dec c
    dec bc
    inc c

jr_049_5a4a:
    rst $38
    dec bc
    inc c
    rlca
    jr jr_049_5a63

    jr jr_049_5a69

    ld c, $ff
    ld [$7273], sp
    db $fc
    db $fc
    rst $38

Jump_049_5a5a:
    ccf
    ld a, h
    rst $38
    call z, $e31f
    jr jr_049_5a4a

    rra

jr_049_5a63:
    add sp, $73
    rst $38
    ld [hl], d
    ld h, e
    ld h, c

jr_049_5a69:
    ld b, [hl]
    ld b, l
    ld e, $11

jr_049_5a6d:
    ld c, $7f
    add hl, bc
    rlca
    ld b, $ff
    add [hl]
    cp $79
    ld [hl], c
    inc hl
    cp $7e
    rlca
    cpl
    dec bc
    ld a, a
    ld d, [hl]
    ld a, a
    add hl, hl
    ld a, h
    db $fd
    ld b, h
    ld l, h
    dec b
    rst $38
    dec [hl]
    adc a
    add [hl]
    rrca
    ld a, [bc]
    ei
    rlca
    ld [bc], a
    cp $e0
    inc b
    inc bc
    inc d
    inc bc
    add hl, hl
    rst $38
    db $ed
    sub d
    ld a, [$fa81]
    ld bc, $41f2
    rst $38
    db $fc
    add e
    di
    xor h
    rst $38
    db $d3
    rst $38
    ld e, a
    cp $86
    ldh [rLCDC], a
    ldh [$60], a
    ld h, b
    ret c

    ldh [$78], a
    rst $38
    ld [hl], b
    ld e, h
    ld a, b
    ld l, b
    ld hl, sp-$08
    add a
    ld sp, hl
    ei
    rst $38
    add a
    or l
    ld h, [hl]
    cp a
    rst $38
    ld a, a
    inc bc
    ld [hl], e
    cp $05
    ld b, b
    push af
    rlca
    push hl
    rlca
    db $e3
    rrca
    set 3, a
    rrca
    rr a
    sub a
    ret nz

    ld h, $40
    pop af
    pop af
    cp $99
    ld h, l
    rst $38
    cp $e0
    and b
    ret nz

    adc b
    ret nz

    rst $38
    sbc h
    ret nz

    ld e, h
    add b
    inc a
    add b
    jr c, jr_049_5a6d

    rst $38
    cp c
    ld bc, $3879
    cpl
    jr nc, @+$19

    ld h, b
    rst $38
    ld c, a
    ld h, b
    ccf
    ret nz

    sbc a
    ret nz

    ld a, a
    add b
    ld a, a
    ccf
    add b
    ld a, a
    dec de
    db $e3
    dec bc
    di
    cp $e9
    ccf
    call z, $cccb
    set 0, h
    jp $e7fe


    call nc, $f44a
    sub [hl]
    add c
    ld a, [$1541]
    cp $05
    inc bc
    xor b
    inc bc
    ld d, l
    ei
    inc bc
    xor c
    db $fc
    pop hl
    rrca
    ld d, c
    scf
    add c
    rst $08
    rst $38
    inc bc
    scf
    dec bc
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    ld h, a
    rst $30
    rst $38
    ld sp, hl
    adc b
    ret nz

    ld c, $63
    ld sp, hl
    cp $ff
    ldh [$ba], a
    inc bc
    ld h, b
    ld a, a
    ld l, h
    ret nz

    db $e3
    rst $38
    db $fc
    pop bc
    ld b, h
    ld bc, $87ef
    add [hl]
    rst $18
    db $dd
    ld d, b
    ret nz

    rlca
    ccf
    scf
    ei
    ld a, a
    ld l, e
    jp nc, $fce0

    rst $38
    db $fd
    rst $38
    ei
    ld a, [$e0fe]
    pop hl
    ld d, b
    ret nz

    db $fd
    cp $fc
    cp $7a
    rst $38
    db $fc
    sub l
    ld hl, sp-$1d
    ld hl, sp-$15
    ldh a, [$d7]
    cp a
    ld bc, $0171
    ld [hl], b
    inc bc
    ld [c], a
    cp $e0
    pop bc
    rst $38
    rlca
    add l
    rrca
    adc l
    rrca
    ld [$7f80], sp
    ld sp, hl
    add b
    sub h
    add e
    ld b, d
    nop
    ld a, a
    ret nz

    db $e3
    ld [hl+], a
    dec bc
    rst $38
    db $e3
    dec bc
    db $e3
    dec de
    di
    dec de
    db $eb
    dec de
    ld a, a
    swap a
    rst $20
    rst $30
    rlca
    rst $30
    ld h, a
    ld b, h
    pop hl
    inc de
    db $e4
    db $e3
    cp $e7
    ld h, b
    add hl, bc
    ld bc, $e0fe
    add $68

jr_049_5baf:
    or $43
    cp $38
    db $e4
    rrca
    ld d, e
    ccf
    adc h
    ld a, h
    inc bc
    ldh a, [rIE]
    rrca
    inc c
    ld d, b
    dec sp
    adc b
    db $ec
    inc hl
    ldh a, [rIE]
    rst $08
    ret nz

    ccf
    inc bc
    cp $0f
    ld hl, sp+$01
    rst $38
    rst $38
    rlca
    jp z, Jump_000_150f

    rra
    cpl
    ccf
    or a
    ld e, a
    ld a, a
    cp a
    ccf
    ld b, c
    ld e, $ff
    xor l
    ld h, b
    ld b, b
    rst $38
    rst $38
    add sp, -$01
    or $fb
    db $ed
    rst $20
    ld a, [$d0ef]
    rst $38
    ld h, $c3
    ld c, b
    ldh [$fa], a
    rst $38
    push af
    cp $ee
    ldh [$c3], a
    cp $3e
    add sp, $68

jr_049_5bfc:
    ret nc

    rst $10
    cp [hl]
    rst $10
    nop
    ld [hl], b
    db $fc
    inc b
    ldh [rNR41], a
    ld e, d
    nop
    rrca
    cp $b2
    ld b, b
    rst $28
    rst $30
    inc d
    rst $08
    ret z

    inc e
    inc d
    rst $38
    jr jr_049_5c81

    db $10
    rst $00
    jr nc, jr_049_5bfc

    jr nc, @-$29

    cp a
    jr nc, jr_049_5baf

    ldh [$3f], a
    add b
    sbc [hl]
    jp hl


    nop
    db $fc
    cp $c8
    ld h, b
    or b
    nop
    ld b, b
    inc bc
    inc bc
    rrca
    dec bc
    rst $38
    rra

jr_049_5c32:
    dec de
    ld e, $16
    ld a, $36
    ld a, $2e
    ei
    ld a, a
    ld l, a
    ld b, [hl]
    and b

jr_049_5c3e:
    sbc a
    add e
    sbc l
    ld [bc], a
    inc a
    rst $38
    ld [bc], a
    ld a, b
    ld [bc], a
    ld hl, sp+$03
    ld h, c
    inc bc
    ld bc, $c7ff
    add $f3
    ld a, [c]
    rst $20
    rst $20
    daa
    daa
    rst $08
    rrca
    rrca
    rra
    rra
    pop bc
    dec h
    inc h
    db $e3
    db $ec
    db $eb
    rst $38
    call z, $b8c7
    or a
    ld hl, sp-$11
    ldh a, [$df]
    ld a, [c]
    inc l
    pop hl
    inc bc
    ld h, d
    nop
    db $fc
    pop hl
    dec bc
    rst $38
    rla
    db $fd
    db $ec
    ld d, [hl]
    ld h, $ee
    ld b, e
    xor d
    ld bc, $a0ac
    ld b, $52
    inc c

jr_049_5c81:
    rst $38
    and l
    jr jr_049_5cd0

    jr jr_049_5c32

    jr nc, jr_049_5cd9

    add hl, sp
    rst $38
    reti


    ldh [$1f], a
    ldh a, [$cf]
    ld [hl], b
    ld l, a
    jr c, @+$01

    and a
    jr c, jr_049_5c3e

    ld a, b
    ld b, a
    ld hl, sp-$39
    ld hl, sp+$67
    add a
    ccf
    pop hl
    ld [bc], a
    ld c, d
    ld b, h
    add b
    inc bc
    db $fd
    cp $e6
    rst $38
    cp $01
    cp $e0
    rst $28
    ret nz

    jp c, Jump_049_7fc0

    call nz, $f8f0
    db $e3
    db $e3
    rst $20
    rst $20
    dec a
    ld hl, $00f7
    call c, Call_000_2820
    ld b, b
    ret nz

    ret nz

    sbc a
    sbc a
    cp $2f
    inc hl
    jr nc, jr_049_5cda

    ld de, $1f01
    rrca
    rst $18
    rst $38

jr_049_5cd0:
    rst $10
    rst $28
    ldh [$f7], a
    ldh a, [$fb]
    ld a, [$fdff]

jr_049_5cd9:
    rst $38

jr_049_5cda:
    ld d, [hl]
    ldh [$fc], a
    cp $e2
    db $fc
    inc c
    ld hl, sp-$01
    ld l, e
    ldh a, [$e0]
    ldh a, [rNR41]
    rst $30
    rst $20
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $28
    cp a
    or a
    rra
    rst $10
    rrca
    rst $38
    adc d
    rra
    add hl, de
    ld a, a
    ld a, b
    db $fc
    ei
    cp $dc
    ld a, l
    ret nz

    ld l, c
    ld b, b
    ret nz

    rst $38
    ld a, b
    call nc, $ffe0
    nop
    rst $38
    rra
    ld a, a
    add b
    jr nc, @-$2f

    adc h
    ld a, [hl]
    call z, Call_000_3eff
    db $e4
    ld e, $f4
    ld a, [bc]
    ld hl, sp-$0c
    nop
    rst $20
    ld hl, sp-$40
    ccf
    ld [hl], b
    db $eb
    ld h, d
    db $eb
    add b
    rst $38
    rrca
    rst $38
    cp $0f
    db $fd
    rra
    ld a, [$f03f]
    ld e, a
    ld a, a
    ld hl, sp-$41
    ldh a, [$7f]
    add sp, -$01
    ret nc

    ld h, b
    xor h
    pop bc
    ld [bc], a
    inc b
    and $ee
    dec h
    ld [$6e23], a
    ld bc, $a3cc
    sbc a
    ld a, a
    ei
    adc [hl]
    ld a, a
    cp e
    and b
    ccf
    ret nz

    ccf
    ret nz

    rra
    rst $18
    ldh [rTAC], a
    ld hl, sp-$08
    rlca
    cp $e5
    ldh a, [rIF]
    rst $08
    ldh a, [rIF]
    ldh [$1f], a
    add c
    nop
    ld d, b
    adc d
    rst $38
    add b
    rst $38
    ld a, a
    pop bc
    ld a, a
    rst $38
    cp h
    ld a, a
    ld d, e
    cpl
    rst $38
    cpl
    rla
    inc d
    rrca
    add hl, bc
    rlca
    di
    ld a, a
    db $fd
    rst $08
    xor d
    jr nz, jr_049_5db0

    cp $77
    cp $7f
    db $fd
    and $1c
    and e
    nop
    rst $38
    ld l, c
    ldh [$91], a
    ld h, $9f
    ldh a, [$7f]
    ld a, l
    ret nz

    sub a
    and b
    ld a, [bc]
    rst $38

jr_049_5d94:
    dec d
    rst $38
    jr z, @-$7d

    ld hl, $f8ff
    inc d
    ld hl, sp+$2c
    ld hl, sp+$5c
    db $f4
    cp b
    set 6, b
    ld a, b
    cp $e1
    db $f4
    xor [hl]
    and b
    ld d, b
    pop bc

jr_049_5dac:
    inc bc
    rst $38
    db $fd
    ld [bc], a

jr_049_5db0:
    ld d, b
    ret nz

    rlca
    db $fd
    rlca
    cp $81
    rst $38
    ld [hl], a
    ld b, e
    rst $38
    add $ad
    and b
    ld h, c
    rst $38
    inc hl
    xor d
    ldh [$57], a
    rla
    db $fd
    rst $38
    jr z, jr_049_5dac

    ret nz

    dec d
    ldh [rLCDC], a
    xor b
    pop hl
    ld [$aa50], sp

jr_049_5dd2:
    jr nc, jr_049_5d94

    ld d, $24
    xor e
    jp z, Jump_000_3e22

    ld bc, $e824
    add $cf
    rst $30
    ld b, b
    cp a
    ld [bc], a
    jr nc, jr_049_5dd2

    cp $7f
    rst $38
    cp a
    rst $38
    ld a, a
    ld e, a
    ccf
    rra
    ccf
    cpl
    rra
    rla
    ld [hl], a
    rrca
    rla
    rrca
    sbc b
    ld [c], a
    xor b
    rst $38
    call nc, $a02c
    ld [$e1fc], a
    ret nz

    reti


    add d
    dec b
    or l
    and c
    rst $38
    nop
    db $fc
    rst $38
    rlca
    add e
    cp $f8
    db $fc
    ld a, [$fcfc]
    rst $38
    or $fd
    jp nz, Jump_000_03fe

    ldh [$3f], a
    ld e, $a1
    di
    pop bc
    add b
    jp nc, $b7a9

    ret nz

    and b
    adc c
    ld [$e0fe], sp
    rrca
    rst $38
    db $fd
    rrca
    ei
    rra
    or $3f
    ld [c], a
    ld a, a
    rst $38
    pop bc
    cp a
    ld [c], a
    ccf
    ldh [$7f], a
    ret z

    rra
    cp $50
    ret nz

    sub a
    cp $ef
    db $fc
    rst $38
    ld hl, sp-$01
    ld e, a
    or c
    cp $63
    db $fd
    ld [hl], a
    sub $c6
    and b
    ret c

    ret nz

    ld [$e120], sp
    jr c, @-$1b

    ld c, [hl]
    ld [$8a01], sp
    and b
    ld c, d
    add a
    ld e, c
    ret nz

    ld e, d
    ld h, b
    cp $98
    rst $20
    rla
    rrca
    rlca
    ld c, $07
    inc c
    ld a, [bc]
    rst $38
    rlca
    ld [$0907], sp
    ld b, $07
    dec c
    rlca
    rst $38
    add hl, bc
    db $fc
    rlca
    di
    ld e, $cf
    ld a, [hl]
    ccf
    rst $30
    db $fc
    ld a, a
    cp h
    sbc [hl]
    ldh [$f8], a
    rst $38
    ld a, [c]
    rst $38
    db $fd
    ld a, a
    cp $01
    db $f4
    db $f4
    add sp, -$18
    ret nz

    ret nz

    ccf
    pop bc
    pop bc
    add [hl]
    add [hl]
    add c
    add c
    ld a, a
    ld c, e
    rlca
    ret nz

    rst $38
    sbc a
    ld h, b
    ld e, a
    jr nz, jr_049_5eb0

    db $10
    rrca
    db $10
    and $bc
    ldh [$08], a
    inc bc
    ld [c], a
    ld l, c
    sbc $61
    inc e
    rst $38
    inc d

jr_049_5eb0:
    rst $38
    rst $38
    ld [hl-], a
    rst $38
    ld a, c
    rst $28
    ld sp, hl
    rst $18
    db $fc
    rst $38
    adc a
    rst $38
    ld e, a
    ei
    rra
    rst $38
    and d
    ld a, a
    rst $20
    call nz, $887f
    ld d, b
    pop hl
    ld l, h
    jp nz, $ff00

    sbc [hl]
    db $d3
    rst $38
    inc [hl]
    ld h, $c3
    ld h, a
    ld [bc], a
    ld [bc], a
    jp Jump_000_208a


    rst $38
    rst $30
    add b
    rlca
    dec bc
    cp $e1
    rla
    dec bc
    rrca
    dec de
    db $fc
    and e
    ret nz

    sbc a
    ret nz

    rst $38
    db $f4
    rst $38
    ld [$dcff], a
    rst $38
    rst $38
    ld a, [$fdfe]
    cp $f9
    db $fd
    ld a, [$fcff]
    ei
    adc h
    adc h
    sbc b
    sbc b
    or b
    or b
    adc a
    ldh a, [$f0]
    ldh [$e1], a
    and e
    jr nz, jr_049_5f65

    ldh [$e3], a
    jr nz, jr_049_5f1b

    db $fc
    jr c, @-$3c

    inc l
    ld h, h
    inc b
    inc bc
    inc b
    ld bc, $4102
    rst $38
    ld [bc], a
    pop bc
    ld [bc], a

jr_049_5f1b:
    ldh [rSC], a
    ret nc

    ld bc, $ffe0
    ld bc, $03d0
    cp $07
    db $fc
    rrca
    ld a, [$1fb9]
    sub $a0
    and [hl]
    ret nz

    ld a, [$f41f]
    and [hl]
    and b
    sub e
    ret nc

    scf
    ld h, e
    cp b
    push bc
    ret c

    and e
    ld [hl], d
    db $e4
    add h
    ld b, h
    ret nz

    ld a, [bc]
    rst $38
    db $fd
    db $10
    cp l
    sub a
    rrca
    rla
    cpl
    rla
    rra
    cpl
    rst $38
    rra
    cpl
    ld e, a
    cpl
    ccf
    ld l, a
    ccf
    ld e, a
    rst $38
    ccf
    ld e, a
    ld hl, sp-$09
    ld hl, sp-$09
    ld sp, hl
    or $ff
    pop af
    xor $f3
    db $ec
    ld a, [c]

jr_049_5f65:
    db $dd
    pop af
    xor [hl]
    rst $38
    db $e3
    ld e, h
    ret nz

    jp nz, $8580

    add b
    add b
    rst $38
    rrca
    ld [$85fc], sp
    ret nz

    ld b, a
    add b
    adc a
    di
    nop
    rra
    add hl, de
    ld [c], a
    ld l, e
    ret nz

    ld bc, $00fc
    cp $ef
    nop
    db $fd
    nop
    cp $6c
    pop hl
    ld bc, $03a0
    rst $38
    ld [bc], a
    db $e3
    ld hl, $893b
    rra
    dec d
    rrca
    ld e, a
    adc c
    ccf
    ld hl, sp+$7f
    ldh a, [$f0]
    ld b, b
    ret nc

    ldh [$c2], a
    ld a, [bc]
    ld c, d
    and c
    ld bc, $a025
    inc b
    db $eb
    xor d
    sbc a
    ld l, d
    nop
    nop
    nop
    dec h
    ld [$e7ff], sp
    ld a, [bc]
    db $f4
    add sp, -$0b
    ldh a, [$0a]
    ldh [$f5], a
    ret z

    ld [c], a
    ld bc, $ff0a
    ldh [$be], a
    ldh [$bc], a
    xor $e8
    pop hl
    and a
    pop hl
    ld [c], a
    ld [c], a
    cp h
    ld hl, sp-$20
    cp e
    db $e3
    ld a, [hl]
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    push af
    inc c
    ld [$980b], sp
    ldh [rIE], a
    rst $38
    rst $38
    cp l
    push de
    dec c
    dec c
    call c, $d9ff
    ld a, [$000d]
    rst $38
    ld [c], a
    push bc
    ld a, [$fbe0]
    ld a, l
    cp $e0
    rst $38
    ld b, b
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

jr_049_6008:
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
    ld h, $97
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    push hl
    ld bc, $0302
    inc b
    dec b
    ld b, $9f
    rlca
    ld [$0a09], sp
    dec bc
    db $ec
    and $f7
    rst $20
    inc c
    rst $38
    dec c
    ld [bc], a
    ld c, $0f
    db $10
    ld de, $1312
    rst $28
    inc d
    dec d
    ld d, $17
    ldh [$ec], a
    jr jr_049_603e

jr_049_603e:
    nop
    rst $38
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_049_6008

    ld hl, $2322
    ld b, $24
    dec h
    ret nz

    jp hl


    ld h, $ff
    daa
    jr z, jr_049_607f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $ff
    cpl
    jr nc, jr_049_6090

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $fb
    inc h
    dec h
    ldh [$ea], a
    scf
    jr c, jr_049_60a5

    ld a, [hl-]
    dec sp
    rst $38
    inc a
    ld b, $3d

Jump_049_6072:
    ld a, $3f
    ld b, $06
    ld b, $df
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ldh [$eb], a

jr_049_607f:
    ld b, l
    ld b, [hl]
    rst $38
    ld b, a
    ld c, b
    ld c, c
    ld b, $06
    ld c, d
    ld c, e
    ld c, h
    ld a, a
    ld c, l
    ld c, [hl]
    ld b, $4f
    ld d, b

jr_049_6090:
    ld d, c
    dec h
    rst $38
    ldh [$fe], a
    ld h, b
    jp hl


    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld [bc], a
    ld b, $06
    rst $38
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_049_60a5:
    ld e, h
    ld e, l
    cp e
    ld e, [hl]
    ld e, a
    ldh [$ec], a
    ld h, b
    ld h, c
    ld h, d
    and a
    ldh [rTMA], a
    rst $38
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    cp e
    ld l, e
    ld l, h
    ret nz

    db $ec
    ld l, l
    ld b, $6e
    add a
    ldh [$6f], a
    rst $38
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    cp e
    ld a, b
    ld a, c
    and b
    db $ec
    ld b, $06
    ld a, d
    ld h, a
    ldh [$7b], a
    rst $38
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    di
    add h
    add l
    ldh [$ee], a
    ld c, b
    ldh [$86], a
    add a
    adc b
    adc c
    rst $38
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $30
    dec h
    dec h
    sub d
    ldh [$ed], a
    sub e
    sub h
    sub l
    sub [hl]
    rst $38
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    rst $28
    sbc a
    dec h
    dec h
    and b
    ret nz

    db $ec
    and c
    and d
    and e
    rst $38
    dec h
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    cp a
    xor e
    xor h
    xor l
    sub d
    xor [hl]
    xor a
    add b
    ld_long $ffb0, a
    or c
    or d
    or e
    or h
    dec h
    dec h
    or l
    or [hl]
    rst $28
    or a

jr_049_6132:
    cp b
    cp c
    cp d
    ld [bc], a
    ldh [$bb], a
    cp h
    cp l
    cp [hl]
    ld h, b
    ret


    cp [hl]
    cp a
    ret nz

    dec h
    pop bc
    db $eb
    pop bc
    jp nz, $c3ff

    call nz, $c6c5
    rst $00
    dec h
    ret z

    ret


    ei
    jp z, $40cb

    ret


    call z, $2525
    call $fece
    set 0, c
    dec h
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    adc a
    push de
    sub $d7
    ret c

    jr nz, jr_049_6132

    push hl
    ld [c], a
    ldh [$e2], a
    reti


    rst $38
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    db $fd
    ld [c], a
    ldh [$f3], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $07
    jp hl


    ld [$e0e2], a
    ld_long $ffff, a
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
    or b
    ld h, c
    ldh a, [$61]
    add e
    ld l, e
    add hl, de
    ld l, h
    rra
    ld bc, $0000
    add hl, de
    nop
    ld [hl], b
    nop
    nop
    nop
    rst $38
    ld e, a
    ld [hl], b
    nop
    ccf
    inc bc
    nop
    nop
    ccf
    inc bc
    sbc a
    ld l, $1f
    ld bc, $011f
    ccf
    inc bc
    ccf
    ld [bc], a
    ld [hl], b
    nop
    nop
    nop
    sbc a
    ld a, [hl+]
    rra
    ld bc, $001a
    nop
    nop
    sbc a
    ld a, [hl+]
    ld [hl], b
    nop
    add hl, de
    nop
    nop
    nop
    sbc a
    ld a, [hl+]
    ld [hl], b
    nop
    rra
    ld bc, $0000
    rst $38
    ld e, a
    ld [hl], b
    nop
    rra
    ld bc, $00ab
    rst $38
    cp $fa
    rst $28
    ldh [$ec], a
    db $fd
    ret nc

    ld [c], a
    cp $be
    ld hl, sp-$20
    ld [$5500], a
    nop
    xor d
    db $fc
    ldh [$fa], a
    ld [hl], e
    nop
    push de
    ld hl, sp-$1e
    db $f4
    pop hl
    cp a
    nop
    ld e, a
    db $ec
    ldh [rIE], a
    ld d, a
    nop
    xor a
    nop
    ld a, a
    nop
    cp [hl]
    nop
    xor c
    push af
    call c, $a0e2
    db $eb
    cp $c2
    db $e4
    ei
    jp z, $abe0

    ld l, $d2
    ldh [$bf], a
    nop
    rst $18
    jp z, Jump_049_7fe0

    ldh [$ea], a
    ld l, [hl]
    db $e3
    sub l
    ld a, [$e094]
    xor d
    and h
    ldh [$ea], a
    cp b
    ldh [$98], a
    pop hl
    xor e
    xor a
    nop
    ld e, [hl]
    nop
    or a
    and b
    ld [c], a
    ld d, l
    and b
    ldh [$5f], a
    ld hl, sp-$78
    ldh [$e8], a
    db $e3
    db $fc
    rst $20

jr_049_6255:
    ld d, h
    nop
    xor b
    nop
    ld b, b
    cp $74
    db $e4
    ld d, b
    nop
    and b
    nop
    ld bc, $0200
    adc e
    nop
    dec d
    jr nz, jr_049_6255

    ld a, [$e836]
    ld a, $e3
    inc l
    pop hl
    rst $30
    cp $74
    ldh [$57], a
    nop
    xor [hl]
    nop
    ld e, l
    nop
    cp d
    ld b, b
    ld h, $e2
    ld h, h
    pop hl
    ld a, [hl-]
    pop hl
    ld h, b
    pop hl
    ld h, h
    rst $20
    ld l, h
    pop hl
    rst $30
    add $e4
    sub c
    push de
    ld a, h
    ld [c], a
    call nz, $70c1
    db $e3
    ld a, a
    ld [hl], b
    and $68
    rst $20
    ld d, b
    dec sp
    nop
    and d
    ld l, b
    db $e4
    and b
    nop
    nop
    ld [hl], h
    ldh [$d0], a
    jp $80c5


    ld l, b
    ldh [$0a], a
    ld c, b

jr_049_62ab:
    ld [$ebf4], a
    ld [hl], b
    add $03
    db $fc
    ld sp, hl
    ld bc, $c0d2
    ld a, [$00e3]
    rst $38
    rlca
    ld hl, sp-$01
    rst $18
    rlca
    rst $38
    ld a, a
    ld a, a
    sbc a
    ld d, c
    ret nz

    rst $38
    ld hl, sp-$41
    ld a, b
    cp $7e
    rst $38
    ccf
    rst $38
    rst $38
    ld [c], a
    nop
    rst $38
    rst $38
    ldh [$1f], a
    ld hl, sp-$19
    ld e, $19
    rlca
    ld a, a
    ld b, $83
    add e
    pop bc
    pop bc
    ldh a, [$f0]
    jr nc, jr_049_62ab

    ccf
    add b
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    inc b
    ld [$c1b6], a
    sub b
    ld b, d
    pop bc
    ld h, [hl]
    jp $e366


    ld b, d
    jp $cea8


    ret nz

    ld h, [hl]
    pop hl
    ld [bc], a
    dec hl
    nop
    ld d, c
    ld c, d
    ldh [rTIMA], a
    ld e, [hl]
    ldh [$15], a
    sub [hl]
    call nz, $c186
    ld bc, $f857
    call z, $e7b2
    db $10
    jp hl


jr_049_6313:
    inc l
    db $ed
    jp z, $e0e3

    push bc
    adc d
    db $e3
    ld sp, hl
    push de
    sbc [hl]
    ret nz

    ld c, b
    rst $00
    xor e
    nop
    ld a, a
    rra
    db $e3
    cpl
    rlca
    ld sp, hl
    rra
    rst $20
    jr z, @-$1e

    ld a, a
    jr nc, jr_049_6313

    ld a, [hl+]
    db $e3
    rst $38
    db $e3

jr_049_6334:
    db $e3
    add hl, sp
    add hl, sp
    adc [hl]
    adc [hl]

jr_049_6339:
    jp $f7c3


    pop af
    pop af
    ld bc, $a8c4
    ld bc, $03fc
    ldh a, [rIE]
    rra
    rst $18
    rrca
    rst $28
    rlca
    rst $20
    dec bc
    db $e3
    rst $00
    dec e
    add c
    ld a, [hl]
    ld b, l
    and d
    sub $a2
    ld a, [hl]
    and h
    add b
    ld d, b
    inc de
    ret nz

    and b
    adc [hl]
    ret z

    db $fd
    db $e3
    ld b, b
    adc [hl]

jr_049_6363:
    ret nz

    di
    push hl
    xor $a1
    ld [bc], a
    inc h
    db $e3
    ld a, [hl+]
    jr nz, jr_049_6334

    inc e
    call $a534
    jr nz, jr_049_6339

    ld e, d
    and e
    ld a, $a9
    add b
    ld b, d
    and c
    ld e, h
    and l
    ld a, [hl-]
    and c
    inc h
    pop hl
    ldh a, [$89]
    ld d, b
    and e
    xor [hl]
    jp $f800


    ld [hl], h
    and d
    ld a, [hl]
    db $e3
    add d
    ld [c], a
    rrca
    rst $30
    rrca
    rst $30
    rra
    ld c, l
    rst $28
    cp $e1
    ccf
    rst $18
    cp $e1

jr_049_639c:
    add b
    adc b
    db $fc
    ld [bc], a
    and [hl]
    rst $38
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
    jr c, @+$01

    cp a
    ld hl, sp+$7f
    ld a, b
    rrca
    ret nz

    ccf
    ld e, l
    add h
    ld sp, hl
    ei
    ld b, $f0
    ld [hl], c
    adc [hl]
    ldh [rP1], a
    nop
    rra
    ld b, b
    rst $38
    rra
    ldh [$03], a
    db $ec
    dec c
    call c, $9e1d
    sbc a
    ld e, $0c
    ld c, $08
    ld c, $14
    add sp, $3c
    pop bc
    dec hl
    ld [bc], a
    inc [hl]
    ret nz

    dec hl
    inc [hl]
    and h
    ld d, $83
    sub h
    add l
    ld c, b
    adc c
    ld d, b
    db $eb
    jr z, jr_049_6363

    ld [de], a
    call nz, Call_000_2a83
    sub h
    add h
    ld e, [hl]
    add c
    db $eb
    db $10
    and d
    nop
    add e
    db $fc
    ld h, e
    ld [hl+], a
    ld l, b
    add c
    ld d, h
    or [hl]
    adc b
    jr jr_049_639c

    or d
    and e
    ld b, b
    add b
    add $76
    jp $b010


    rst $20
    ld a, d
    pop bc
    xor b
    pop hl
    call z, Call_049_4063
    db $f4
    and $cc
    db $e4
    ld_long a, $ffa5
    cp $ff
    push af
    rst $38
    xor b
    db $fc
    ld b, e
    ld hl, sp-$05
    ret nz

    rst $18
    cp $e7
    ld b, b
    ld e, a
    nop
    rra
    ld a, a
    ld a, a
    ld a, b
    ccf
    cp b
    ccf
    cp h
    rra
    call c, $e2fe
    rst $30
    sbc $1f
    rst $18
    ld [hl], e
    ld h, c
    ld hl, sp+$00
    di
    inc bc
    rst $30
    pop hl
    ld bc, $17c0
    jp nz, Jump_000_0c8c

    ld a, [hl]
    ld a, [hl]
    rst $38
    cp $fe
    ld a, h
    ld a, [hl]
    or b
    cp [hl]
    add d
    cp h
    rst $38
    add l
    ret c

    inc bc
    ld e, b
    inc b
    ld b, $00
    jr nz, @+$01

    ld b, $30
    cpl
    ld b, b
    rst $38
    nop
    xor $11

jr_049_645c:
    ld a, a
    ldh [rNR34], a
    pop af
    ld [$ff5f], sp
    cp a
    rst $00
    add b
    rst $38
    dec e
    rra
    ld h, d
    rlca
    ld a, c
    inc bc
    ld a, h
    ld bc, $7dc3
    ld bc, $6a40
    ret nz

    ld h, a
    cp [hl]
    and a
    ld b, b
    ret


    ld a, [bc]
    nop
    add hl, hl
    db $10
    inc [hl]
    and $ca
    add e
    nop
    sbc [hl]
    ret nz

    ld e, a
    inc d
    ld h, d
    adc h
    ld h, c
    jr nz, jr_049_645c

    db $e3
    ld [hl], h
    ld h, e
    adc d
    and l
    ld hl, sp-$5b
    db $fd
    push af
    ld a, [bc]
    ld c, b
    ld h, b
    pop hl
    jp hl


    db $fd
    xor d
    call nc, $f4eb
    ldh a, [$f3]
    ldh a, [$f7]
    ldh a, [$df]
    or $f0
    ld sp, hl
    ld hl, sp-$05
    cp $e0
    db $fc
    db $fc
    ld a, a
    ret nz

    rra
    add b
    rra
    ld h, b
    rrca
    ldh [$fe], a
    ldh [$c7], a
    add b
    rlca
    ld a, b
    db $dd
    ld h, b
    jp z, $ee89

    ld h, c
    ld e, $de
    rst $38
    ld c, $ee
    inc c
    db $ec
    ld [$00e8], sp
    ldh a, [$3f]
    ld bc, $03f1
    db $e3
    ld bc, $f8c1
    add e
    sbc a
    ld b, c
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld d, a
    ld d, b
    ld a, e
    rrca
    nop
    xor [hl]
    and l
    rst $38
    nop
    ldh a, [$08]
    dec d
    ld c, b
    rst $38
    db $10
    sbc [hl]
    ld bc, $403e
    ld a, [hl]
    nop
    ld a, [hl]
    or $43
    ld b, b
    ccf
    ld b, b
    sbc e
    ldh [rSVBK], a
    ld bc, $7e00
    di
    ld a, [hl]
    add b
    call z, $fea3
    ldh [$80], a
    ccf
    add b
    ccf
    cp $c5
    ldh [$fd], a
    inc b
    db $fd
    ld [$14fd], sp
    cp $ff
    xor d
    cp $54
    cp $ab
    rst $38
    ld e, a
    rst $38
    rst $38
    db $fc
    and c
    ld a, [hl]
    ld b, b
    ld a, a
    ld d, b
    rst $38
    ldh [rIE], a
    cp a
    and b
    cp a
    cp b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    cp $5a
    add b
    ld sp, hl
    rlca
    scf
    rst $00
    ld d, a
    rst $20
    daa
    rst $38
    rst $30
    rla
    ei
    dec bc
    db $fd
    dec b
    nop
    ld b, $ff
    ret nz

    rst $08
    ldh a, [$f7]
    ld hl, sp-$05
    inc e
    inc e
    rst $38
    rst $28
    rst $28
    rst $30
    rst $30
    sbc l
    sbc l
    ccf
    ret nz

    sbc e
    rra
    ld h, b
    and h
    pop hl
    rlca
    ld hl, sp+$20
    ld h, e
    add c
    dec l
    ld [bc], a
    rst $38
    cp $00
    db $fc
    dec b
    db $fd
    inc bc
    ei
    rlca
    rst $38
    or $07
    db $f4
    rrca
    add sp, $1f
    ret nc

    add e
    rst $38
    add e
    ld a, h
    ld c, h
    rst $38
    rst $20
    rst $38
    inc de
    rst $38
    ei
    add hl, bc
    rst $38
    push af
    ld h, d
    cp a
    cp a
    rst $18
    rst $18
    ld e, a
    rst $38
    ld e, a
    xor a
    xor a
    rst $08
    ld c, a

Call_049_658c:
    rst $08
    adc a
    rst $28
    and a
    xor a
    rst $28
    adc a
    and [hl]
    ret z

    xor b
    and d
    ld bc, $e0ff
    rlca
    rst $38
    rlca
    rrca
    rrca
    rlca
    rrca
    ld b, $56
    inc c
    rst $38
    xor h
    add hl, de
    ld a, c
    rlca
    ld e, b
    add b
    sbc h
    ret nz

    ld a, a
    jp c, $ebe0

    ldh a, [$f3]
    db $fc
    db $fd
    cp $e2
    rst $38
    nop
    db $fd
    ld bc, $433b

jr_049_65bd:
    rlca
    ld [hl], a
    ld c, $ff
    ld l, [hl]
    ld a, [de]
    sbc [hl]
    inc d
    cp [hl]
    add hl, hl
    cp l
    ld h, b
    ld e, a
    nop
    ld h, b
    ld c, h
    nop
    ld e, $0b
    ldh [$fe], a
    cp $e2
    ei
    sbc $00
    ld e, a
    ld b, b
    rst $00
    inc c
    db $fc
    inc bc
    add b
    rst $38
    ld a, a
    ld a, $ff
    ld a, a
    cp $7f
    pop af
    rst $38
    rst $38
    ret nz

    db $fc
    db $fc
    nop
    ld [bc], a
    pop hl
    db $ed
    ret


    rst $38
    db $db
    dec de
    ccf
    scf
    ld a, a
    ld c, l
    rst $38
    ccf
    ld a, a
    jr nc, jr_049_663b

    jr nz, jr_049_65bd

    and b
    rst $38
    ldh [$fe], a
    ld [c], a
    rst $30
    ldh a, [rIE]
    ld hl, sp-$3f
    ld a, [bc]
    ld bc, $01ff
    rst $28
    ld e, l
    rrca
    cp $e4
    xor a
    rst $18
    sbc a
    cp $e0
    rra
    ld h, b
    ld [$0a21], a
    call c, $c0a4
    and e
    ldh [$63], a
    nop
    pop bc
    and b
    ret nc

    adc b

Call_049_6626:
    ldh [$e7], a
    ret nz

    adc d
    ld b, c
    rst $28
    ret nz

    or h
    ld b, h
    adc b
    inc bc
    jp z, $f503

    ret nz

    inc bc
    rst $38
    ld a, [hl]
    adc b
    inc bc
    add hl, de

jr_049_663b:
    ld sp, hl
    dec sp
    ei
    rst $30
    rst $30
    db $f4
    ld hl, $df3f
    rst $18
    ccf
    cp a
    ld a, c
    ld a, c
    sub h
    ld a, [bc]
    add $00
    sub a
    ld bc, $01fe
    sub $01
    ld [$02e2], a
    inc e
    ld b, b
    cp h
    rst $38
    inc a
    db $dd
    dec e
    ld e, a
    rra
    ld l, a
    rrca
    ld l, a
    rst $38
    rrca
    xor a
    adc a
    or a
    add a
    or a
    add a
    nop
    rst $30
    ld e, $c0
    db $dd
    cp $e0
    db $db
    add d
    and e
    sbc e
    ld a, a
    sbc e
    ld a, l
    ld a, l
    cp $fe
    nop
    rrca
    ld c, [hl]
    ld bc, $40fd
    cp $e0
    jr nz, @+$01

    and b
    rst $38
    ret nc

    rst $38
    ld sp, hl
    sub d
    adc c
    jp $e71d


    nop
    add b
    add b
    ld d, b
    ld d, b
    rst $38
    xor b
    xor b
    db $f4
    db $f4
    ld a, [$fcfa]
    db $fc
    ei
    ld a, [$77fa]
    ldh [$e2], a
    rst $38
    add $ff
    call z, $ffef
    sbc h
    rst $38
    cp b
    ld a, [c]
    ret nz

    ldh a, [$df]
    ld e, a
    rst $38
    rst $08
    ld c, a
    xor a
    cpl
    or a
    or a
    or a
    sub a
    cp a
    ld a, e
    ld e, e
    ld a, e
    ld c, e
    ei
    adc e
    ld [hl], d
    ld l, b
    inc d
    add d
    inc b
    db $e4
    dec b
    sbc h
    ldh [$9c], a
    ld b, c
    ld e, l
    ld b, e
    and h
    ld b, c
    ld [hl], d
    inc hl
    dec b
    ld [bc], a
    ld l, d
    ld b, b
    rla
    ld l, b
    ld h, b
    db $e4
    dec h
    and b
    ld bc, $635c
    sbc h
    ld b, l

Jump_049_66e1:
    ld [$ffe1], sp
    xor e
    ld bc, $0755
    rst $38
    rrca
    rst $18
    rra

jr_049_66ec:
    rst $38
    cp a
    rrca
    ld e, a
    ld a, [hl]
    cp $ff
    rst $38
    di
    rst $38
    di
    rst $20
    rst $20
    rst $28
    rst $28
    jp $87c3


    rra
    add a
    adc a
    adc a
    rra
    rra
    ldh a, [rP1]
    jr jr_049_66ec

    nop
    ld b, l
    rst $38
    rst $10
    rst $00
    db $db
    jp $c3db


    db $eb
    db $e3
    rst $38
    db $ed
    pop hl
    db $ed
    pop hl
    push af
    pop af
    or $f0
    rst $38
    add a
    rlca
    ld h, e
    inc bc
    ld de, $0901
    ld bc, $04a5
    sbc e
    ret nz

    ld bc, $8035
    adc d
    daa
    ld a, a
    rst $38
    ldh [$3f], a
    rst $38
    ccf
    db $f4
    db $f4
    ld hl, sp-$08
    db $f4
    db $f4
    add sp, -$05
    add sp, -$10
    rst $38
    ldh [$e4], a
    db $e4
    add sp, -$18
    rst $38
    rst $30
    pop af
    rst $38
    pop hl
    ld e, $e0
    jp nz, $c4ff

    rst $38
    rst $38
    add h

jr_049_6751:
    rst $38

jr_049_6752:
    adc b
    rst $38
    db $10
    db $fd
    add l
    db $fd
    db $ed
    dec b
    cp $e1
    cp $06
    cp $e0
    inc c
    cp $08
    jp nz, $8c26

    ld bc, $ca3c
    db $e4
    ld h, c
    db $76
    ld b, e
    jr nc, jr_049_6752

    db $fd
    nop
    jp hl


    rst $10
    inc h
    add sp, $05
    and e
    xor a
    xor b
    dec b
    dec d
    ld [$efaa], a
    ld d, l
    ld bc, $07fe
    add hl, de
    and b
    ld [bc], a
    db $fd
    dec b
    sbc a
    ld a, [$55aa]
    ld d, l
    xor d
    db $fc
    pop hl
    jr z, jr_049_6751

    rst $38
    ld a, a
    sbc a
    ld l, a
    ld c, a
    cp a
    cp a
    ld e, a
    ld e, a
    db $fc
    ldh [rIE], a
    ld a, h
    cp h
    rst $38
    rst $38
    db $db
    db $db
    sub a
    sub a
    rst $38
    cpl
    cpl
    pop bc
    pop bc
    add a
    add a
    rrca
    rrca
    sbc a
    ccf

jr_049_67b0:
    ccf
    or $f0
    ld a, [$62e6]
    inc hl
    and e
    cp $bc
    xor $c0
    ld [hl], $e3
    ld a, a
    ld a, a
    cp a
    ccf
    cp $e3
    sbc a
    cp e
    rra
    ld e, a
    cp $e0
    ld c, a
    rrca
    cpl
    cp $e2
    ret c

    rst $38
    ret c

    ld sp, hl
    ld hl, sp-$0f
    ldh a, [$f2]
    ldh a, [$f4]
    rst $38
    ldh a, [$e0]
    ldh [$e5], a
    db $e4
    ret z

    ret z

    rst $18
    cp $25
    nop
    ccf
    nop
    ld l, a
    nop
    rst $08
    nop
    adc a
    dec bc
    nop
    rra
    cp $e0
    xor $fd
    add b
    push af
    add c
    ret c

    add b
    rla
    ld [hl+], a
    jr nz, jr_049_67b0

    db $e3
    ld a, [$90e7]
    adc d
    ld e, b
    and c
    inc h
    pop hl
    ld a, [hl+]
    ld b, h
    jp nz, $0130

    ret z

jr_049_680b:
    or b
    daa
    call z, $f803
    pop hl
    ld a, a
    ret nz

    rlca
    ld c, $81
    ld bc, $fffe
    ld a, [bc]
    push af
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d

jr_049_6820:
    ld [$2fbf], a
    ret nc

    ld e, a
    and b
    ld a, [hl+]
    push de
    jr jr_049_680b

jr_049_682a:
    ld b, a
    rst $38

jr_049_682c:
    cp h
    cp a
    ld b, h
    rst $38
    inc b
    rst $38
    ld c, $ff
    rst $28
    ld c, $aa
    ld d, l
    ld a, a
    adc l
    ld h, c
    inc bc
    rst $38
    rlca
    xor $ae
    add e
    ld hl, sp+$58
    ld a, a
    ldh a, [rNR42]
    ei
    rst $38
    rst $00
    cp a
    rst $38
    rrca
    cp $7e
    db $fc
    inc e
    db $e3
    ld hl, $fff7
    rst $30
    rst $28
    rst $28
    rst $08
    rst $08
    rra
    rra
    ccf
    inc bc
    ccf
    ld e, a
    and b
    pop bc
    and e
    ld b, a
    cp [hl]
    and c
    cp [hl]
    adc c
    ld a, [hl-]
    nop
    inc e
    ret nz

    db $fd
    ld [$a404], sp
    add sp, $00
    ret nc

    nop
    and b
    rst $18
    di
    rra
    rst $18
    ldh a, [$c0]
    nop
    and a
    ret c

    rst $18
    add sp, -$11
    ccf
    add sp, -$11
    db $f4
    or $f8
    ld hl, sp-$65
    ld b, b
    cp $e0
    rst $38
    daa
    rst $38
    ld b, b
    cp $00
    pop hl
    nop
    rra
    cp $12
    ld h, b
    jr c, jr_049_6820

    inc b
    rra
    ld [hl], b
    nop
    ret nz

    ld a, a
    jr nc, jr_049_68a8

    jr nc, jr_049_682a

    jr nc, jr_049_682c

    nop
    add h
    nop

jr_049_68a8:
    cp $fe
    pop hl
    ld bc, $0401
    ldh a, [rDIV]
    pop af
    inc b
    inc bc
    pop af
    nop
    ld b, e
    ld h, b
    call $cc61
    and c
    and b
    pop bc
    sbc h
    ret nz

    rst $38
    ldh [rNR13], a
    sbc a
    rra
    ld a, [hl]
    db $e4
    add d
    inc bc
    ld a, [hl+]
    ld c, b
    add b
    ld b, b
    and c
    db $e4
    jp Jump_049_7ef8


    inc bc
    db $e4
    jp $0272


    ld [bc], a
    db $fd
    dec d
    ld [$ed00], a
    cp a
    ldh a, [$c1]
    dec d
    ld [$c1f8], a
    xor a
    ld d, b
    ld a, a
    rst $38
    add b
    xor e
    ld d, h
    ld d, a
    xor b
    xor e
    ld d, h
    ld e, a
    rst $30
    and b
    cp a
    ld b, b
    ld hl, sp-$3e
    nop
    rst $38
    rra
    rst $38
    and l
    rrca
    db $fc
    ldh [$3f], a
    ld hl, sp-$20
    rst $30
    pop bc
    rra
    sub b
    add b
    rla
    cp a
    rst $38
    cp e
    rst $38
    rst $38
    db $fc
    db $fc
    jp c, $fe02

    rst $38
    ld hl, sp-$48
    ldh a, [$f0]
    ret nz

    ret nz

    ld [$df08], sp
    ld [hl], e
    ld [hl], e
    rst $00
    rst $00
    rrca
    rst $38
    ldh [$bf], a
    cp a
    rst $30
    ccf
    ccf
    ld a, a
    call $f7c2
    rst $30
    rst $08
    rst $08
    db $e3
    ccf
    ccf
    ld a, $02
    jp nz, Jump_049_5281

    inc bc
    and b
    nop
    ld a, l
    ld h, h
    ld c, $20
    db $f4
    ld h, c
    ld b, b
    ld l, d
    inc hl
    ldh [$81], a
    db $eb
    db $e3
    ldh [$81], a
    cp $e2
    add c
    or $f0
    ldh a, [$f1]
    pop af
    rst $30
    db $f4
    cp e
    rst $30
    db $e4
    db $ec
    ret nz

    add sp, -$11
    pop hl
    cp $e0
    rst $38
    rst $38
    db $e4
    rst $38
    ret c

    rst $38
    ld hl, sp-$41
    ldh a, [$7f]
    ld d, c
    ldh a, [rNR12]
    ld h, b
    ld a, [bc]
    ld h, b
    ld a, [$dfc1]
    cp $e2
    cp a
    dec e
    jp nz, $c920

    ld b, e
    ld a, [$8ae7]
    and l
    add d
    and l
    ld hl, sp-$3e
    ld [bc], a
    ldh [$88], a
    db $ec
    and c
    rst $38
    xor d
    inc b
    dec d
    inc c
    xor [hl]
    ld e, $5f
    ld e, $db
    cp [hl]
    ld e, $1c
    add b
    dec b
    ld a, [$24fd]

jr_049_6995:
    ld d, a
    nop
    rra
    xor e
    ld bc, $ab5e
    ld d, h
    ld [$e8a3], sp
    pop hl
    nop
    and d
    ld c, $dd
    add c
    ld d, b
    ld d, l
    xor d
    call nc, $eca1
    add $94
    ld b, e
    db $fd
    ld b, b
    ld [c], a
    jp c, Jump_000_3fa0

    ld a, e
    jr nz, jr_049_6995

    and d
    daa
    ld [bc], a
    rst $38
    ld hl, sp-$08
    cp $ee
    dec bc
    nop
    nop
    add c
    add c
    rlca
    rlca
    ld [c], a
    rst $38
    ld [c], a
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    jp Jump_000_07c3


    or c
    rlca
    inc d
    add l
    ldh [$e6], a
    add [hl]
    ld c, e
    nop
    rlca
    rst $38
    ld b, b
    inc e
    di
    inc bc
    ccf
    dec c
    ld [hl+], a
    ld h, h
    ld hl, $00c0
    ldh a, [rP1]
    rst $38
    jr jr_049_69ec

jr_049_69ec:
    inc c
    add b
    add [hl]
    ld h, b
    and $10
    ld c, c

jr_049_69f3:
    rst $30
    jp nc, $ec00

    ret nz

    db $eb
    cp $e1
    xor [hl]
    jr nz, jr_049_69f3

    cp $e1
    ld a, [$24f6]
    ldh [$d8], a
    ld h, b
    rst $30
    ld a, a
    db $fc
    ccf
    ei
    cp $30
    ld [hl+], a
    ld [$60ff], sp

jr_049_6a11:
    rst $38
    add c
    rst $38
    ld [bc], a
    add [hl]
    ld [$9840], a
    cp a
    ld [hl], d
    ret nz

    and [hl]
    ld h, c
    ld [hl], b
    and $f0
    call nz, $ff01
    inc bc
    ld bc, $0215
    dec bc
    inc bc
    ld d, a
    ld a, [hl-]
    rst $38
    cp e
    add hl, sp
    ld a, c
    ld a, c
    ld a, c
    cp b
    cp b
    db $fc
    ldh a, [rLY]
    add b
    ld b, d
    add c
    inc b
    add c
    nop
    add b
    ei
    set 6, a
    rst $10
    rst $38
    db $eb
    db $eb
    rst $30
    or $ee
    sbc a
    ld h, b
    ld a, a
    rst $18
    add b
    xor d
    ld d, l
    dec d
    ld [$a1e4], a
    rst $38
    jr c, jr_049_6a11

    rst $38
    cp l
    reti


    ret nz

    xor b
    cp a
    ld b, b
    adc h
    ld a, [hl+]
    rrca
    cp $d2
    add d
    rra
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    rst $28
    cp $35
    ld h, c
    db $ed
    db $ed
    set 1, e
    add e
    add e
    nop
    cp a
    nop
    pop bc
    pop bc
    add e
    add e
    rst $28
    xor $e0
    di
    adc l
    di
    db $e4
    and c
    ld bc, $d401
    ld b, c
    sub b
    rlca
    dec hl
    ld bc, $fe3f
    pop de
    ld a, [hl+]
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], b
    db $76
    ld a, b
    rst $18
    ld a, d
    ld a, h
    ld a, h
    ld a, h
    ld a, l
    jp nc, $fd01

    db $fd
    rst $38
    ld sp, hl
    ei
    ld a, a
    rst $38
    ld e, a
    cp $3f
    db $fc
    ld e, e
    ld a, a
    ei
    sub e
    and c
    rst $38
    db $fc
    db $10
    jr nz, jr_049_6ae2

    db $e3
    jr nz, @-$16

    ld a, d
    rst $00
    or d
    nop
    cp $e1
    ld sp, hl
    cp $e2
    push af
    dec b
    push af
    ld sp, hl
    dec b
    jr nc, jr_049_6ae5

    db $fc
    pop hl
    dec d
    nop
    cpl
    nop
    rra
    cp a
    inc b
    ccf
    inc c
    ld a, l
    ld bc, $35ab
    add c
    inc bc
    db $fc
    reti


    jr nz, jr_049_6b13

    and e
    rst $38
    rst $38
    ld h, c
    pop hl
    ldh a, [$f0]
    di

jr_049_6ae2:
    ld hl, sp-$08
    db $10

jr_049_6ae5:
    pop hl
    add h
    ld c, c
    ccf
    ccf
    rra
    rra
    rst $38
    adc a
    adc a
    rst $20
    rst $20
    ld a, a
    ld a, l
    rst $38
    ld_long a, $ffef
    rst $38
    inc sp
    inc sp
    jr c, @-$3d

    sbc a
    sbc a
    rst $08
    rlca
    rst $08
    rst $38
    pop bc
    ldh a, [$e0]
    jr nz, jr_049_6b29

    ld c, h
    push bc
    inc c
    and b
    inc e
    ret z

    ret nc

    ld a, [$1061]
    res 7, d

jr_049_6b13:
    inc c
    ld h, $c5
    ld d, b
    sbc d
    ld [bc], a
    add b
    rra
    db $fc
    ld e, $c0
    ld c, h
    ld c, c
    ld sp, hl
    ei
    ld sp, hl
    ei
    di
    rst $30
    ld a, [hl]
    cp $e1

jr_049_6b29:
    rst $30
    rst $30
    rst $20
    rst $28
    rst $20
    rst $28
    ld a, [de]
    and e
    xor $12
    ld b, b
    ret z

    rst $38
    or b
    db $f4
    pop hl
    push af
    ld bc, $7fed
    add hl, bc
    xor $0a
    xor $02
    sbc $10
    cp $e0
    rst $38
    nop
    cp [hl]
    jr nz, jr_049_6b67

    dec a
    inc e
    ld e, h
    inc a
    rra
    inc a
    jr c, @+$7a

    ld a, h
    ld a, h
    sub h
    ld b, h
    or h
    xor b
    cp c
    ld hl, $f1c3
    pop af
    ld [hl+], a
    pop hl
    ld h, h
    add e
    ld b, a
    ld h, d
    add $c0
    rra

jr_049_6b67:
    rra
    ei
    ld bc, $9d01
    ld hl, $1111
    adc a
    adc a
    db $e4
    ld sp, $5ce4
    ld b, e
    nop
    push hl
    ld [$0fe1], sp
    rrca
    cp $c3
    ld l, d
    and c
    nop
    nop
    nop
    pop hl
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    jr z, jr_049_6b97

    ld [$0efb], sp
    dec c
    reti


    ld sp, hl
    ld c, $0e

jr_049_6b97:
    ld c, $0c
    inc c
    and $b8
    or $0c
    dec c
    pop hl
    pop hl
    rst $18
    rst $30
    ld c, $0e
    ld [$e074], sp
    ld [c], a
    cp [hl]
    push af
    inc c
    and c
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, [hl]
    ld [c], a
    ld a, c
    dec bc
    rst $38
    ld [c], a
    sbc a
    db $eb
    inc c
    rrca
    ld [$e00e], sp
    ld [c], a
    inc l
    db $e3
    db $e3
    ldh [$ed], a
    ld [$5f0a], sp
    ldh [$0b], a
    ret nz

    ldh [$e1], a
    and $50
    ldh [$ed], a
    xor b
    pop hl
    and b
    ld [c], a
    ret nz

    db $f4
    rrca
    adc b
    ld [c], a
    rrca
    ret nz

    push af
    ld e, l
    ld [$e080], sp
    rrca
    add hl, bc
    rrca
    ldh [$f9], a
    rrca
    ldh [$fa], a
    ld b, b
    cp [hl]
    ldh [rIE], a

jr_049_6bec:
    pop hl
    ldh [$fc], a
    ld b, c
    rst $20
    nop
    ld [$c1f1], a
    cpl
    ldh [$f8], a
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
    db $e4
    db $e3
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    ld [$0001], a
    ld [bc], a
    inc bc
    inc b
    dec b
    db $fc
    db $ec
    db $eb
    sbc $e7
    ld b, $07
    ld [$0a09], sp
    dec bc
    ei
    inc c
    dec c
    ldh [$f2], a
    ld c, $0f
    db $10
    ld de, $bf12
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_049_6bec

    ld_long $ff19, a
    ld a, [de]
    dec de
    inc e

jr_049_6c46:
    dec e
    nop
    ld e, $1f
    jr nz, @+$01

    ld hl, $0022
    inc hl
    inc h
    jr jr_049_6c78

    ld h, $fd
    daa
    ldh [$eb], a
    dec e
    jr z, jr_049_6c84

    ld a, [hl+]
    dec hl
    inc l
    rst $28
    dec l
    ld l, $2f
    jr nc, jr_049_6c46

    ldh [$31], a
    ld [hl-], a
    inc sp
    rst $30
    inc [hl]
    dec [hl]
    ld [hl], $6c
    ld [$3837], a
    add hl, sp
    ld a, [hl-]
    rst $38
    dec sp
    inc a
    dec a
    ld a, $3f

jr_049_6c78:
    inc h
    ld b, b
    ld b, c
    ld a, a
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, h

jr_049_6c84:
    jp hl


    rst $38
    ld c, c
    ld c, d
    nop
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    rst $38
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    rst $28
    ld e, b
    ld e, c
    ld d, a
    ld d, a
    inc l
    jp hl


    ld e, d
    ld e, e
    ld e, h
    ld a, a
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld d, a
    rst $38
    rst $20
    cp $0c
    jp hl


    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    db $db
    ld l, d
    ld l, e
    ldh [$e6], a
    ld l, h
    ld l, l
    db $ec
    jp z, $6f6e

    cp a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ret nz

    ldh [rPCM12], a
    ld a, a
    ld [hl], a
    ld a, b
    ld l, h
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    call z, $ffc9
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    db $fd
    add l
    and b
    pop hl
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    db $fd
    adc h
    xor h
    ret


    adc l
    ld d, a
    adc [hl]
    ld d, a
    adc a
    sub b
    rst $30
    sub c
    sub d
    sub e
    add b
    ldh [$94], a
    sub l
    sub [hl]
    sub a
    rst $28
    sbc b
    sbc c
    sbc d
    sbc e
    adc h
    ret


    ld d, a
    ld d, a
    sbc h
    rst $38
    sbc l
    ld d, a
    sbc [hl]
    sbc a
    and b
    and c
    and d
    ld d, a
    rst $38
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    db $fd
    xor e
    ld l, h
    ret


    xor h
    xor l
    xor [hl]
    xor a
    ld d, a
    or b
    rst $38
    or c
    or d
    or e
    or h
    sub h
    or l
    or [hl]
    or a
    cp a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    ld c, h
    ret


    cp [hl]
    rst $38
    cp a
    ld d, a
    ret nz

    ld d, a
    pop bc
    jp nz, $c4c3

    rst $38
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    rst $30
    call $cfce
    inc l
    ret


    ret nc

    ld d, a
    ld d, a
    pop de
    rst $38
    jp nc, $d4d3

    push de
    call nz, $d7d6
    ret c

    rst $38
    reti


    jp c, $dcdb

    ld e, h
    db $dd
    sbc $5c
    cp $80
    db $eb
    ld d, a
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    rst $38
    push hl
    and $e7
    add sp, -$17
    ld [$eb5c], a
    ei
    db $ec
    ld e, h
    ldh [$ea], a
    db $ed
    xor $57
    rst $28
    call $f0ff
    pop af
    ld l, b
    ld a, [c]
    di
    db $f4
    push af
    or $07
    rst $30
    ld hl, sp+$5c
    rst $38
    pop hl
    ldh [$b5], a
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
    ld sp, hl
    nop
    nop
    nop

    db $b7, $6d, $f7, $6d, $40, $74, $aa, $74, $00, $00, $ff, $7f, $28, $35, $5e, $03
    db $00, $00, $ff, $7f, $6b, $39, $f6, $62, $00, $00, $4a, $29, $94, $52, $ff, $7f
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $bd, $00, $ff, $f8, $04, $03, $2f, $1f
    db $e0, $e7, $7f, $d3, $00, $ff, $ff, $e0, $d0, $e7, $ff, $f0, $e5, $01, $01, $ff
    db $03, $03, $07, $07, $0f, $0f, $1f, $3f, $ff, $1f, $1e, $3f, $bf, $7f, $ff, $ff
    db $fe, $ff, $ff, $f4, $f8, $d0, $e0, $80, $c0, $00, $5b, $80, $03, $cc, $e2, $7f
    db $80, $9a, $e5, $f0, $bc, $e2, $aa, $bb, $e7, $1f, $f0, $ec, $0f, $e0, $ec, $c0
    db $8c, $e2, $fe, $ed, $01, $5a, $e7, $fd, $fe, $b0, $e0, $ff, $2f, $1f, $ff, $0b
    db $07, $01, $03, $70, $71, $a8, $a8, $ff, $7c, $3e, $3e, $7c, $f8, $7c, $fc, $78
    db $b7, $78, $f8, $70, $fe, $e2, $01, $03, $fe, $eb, $f8, $ff, $f0, $f0, $f8, $fc
    db $f8, $fe, $fc, $fc, $ff, $fe, $ef, $fe, $ee, $f7, $e3, $f7, $1f, $0e, $ff, $eb
    db $9f, $0e, $1f, $fe, $e1, $19, $e2, $f6, $e2, $f0, $c7, $e7, $01, $1e, $1e, $d3
    db $e0, $e0, $c7, $3a, $7c, $ff, $ff, $fe, $6f, $9f, $00, $00, $10, $0f, $1f, $bf
    db $0f, $7f, $0f, $3f, $7f, $7f, $f8, $e0, $9f, $ff, $0f, $00, $00, $40, $80, $c0
    db $80, $f0, $ff, $80, $e0, $f0, $f2, $81, $c3, $87, $c7, $fd, $8f, $b0, $c5, $f8
    db $00, $fa, $fc, $fe, $8f, $e1, $07, $f0, $e6, $c8, $e1, $cf, $e1, $90, $c5, $3c
    db $00, $bd, $df, $7e, $7f, $ff, $b7, $cf, $80, $c7, $02, $01, $bf, $87, $03, $cf
    db $87, $0f, $07, $fe, $e3, $ff, $7f, $07, $ff, $f7, $cf, $ff, $c7, $8f, $a3, $e0
    db $fe, $fe, $e4, $83, $c1, $83, $c7, $87, $cf, $01, $fe, $ff, $e2, $00, $00, $88
    db $70, $fe, $fc, $de, $fe, $a0, $e0, $54, $54, $64, $64, $54, $54, $88, $f7, $88
    db $70, $70, $36, $c2, $80, $e3, $f3, $e3, $bf, $f1, $e0, $f1, $e1, $f0, $e0, $fe
    db $e4, $df, $cf, $9f, $9f, $df, $df, $7c, $c1, $79, $c0, $7f, $3f, $53, $1f, $3f
    db $10, $e3, $fa, $e7, $1e, $fe, $ec, $97, $7f, $e5, $ee, $77, $e4, $1f, $8f, $9f
    db $fe, $ea, $df, $8f, $cf, $fd, $9f, $fe, $e3, $df, $8f, $c7, $8f, $c3, $87, $f7
    db $8f, $07, $07, $e9, $a2, $80, $00, $8f, $07, $e7, $0f, $87, $f6, $e2, $e0, $dd
    db $e0, $df, $cf, $1f, $ef, $0f, $1f, $cf, $9f, $e1, $c0, $1f, $0f, $87, $eb, $83
    db $07, $fe, $e9, $87, $c1, $e5, $cf, $87, $cf, $7f, $8f, $c7, $87, $c3, $8f, $87
    db $0f, $fe, $e6, $3f, $87, $cf, $cf, $ff, $9f, $cf, $c0, $e1, $bc, $e1, $e6, $de
    db $e1, $83, $c7, $bd, $c0, $fe, $e6, $07, $8f, $ae, $b7, $df, $c0, $80, $ee, $c5
    db $c0, $80, $8b, $e0, $00, $f7, $00, $03, $00, $ee, $e0, $d0, $e0, $f4, $f8, $4e
    db $e7, $a0, $ff, $bf, $7f, $9d, $a0, $50, $a5, $80, $50, $a1, $41, $20, $3e, $a6
    db $50, $a4, $f0, $ed, $3e, $c0, $30, $a9, $10, $3e, $c6, $36, $20, $a3, $42, $81
    db $10, $ab, $fa, $fc, $d0, $ec, $c0, $ec, $db, $80, $07, $e0, $8b, $02, $c1, $d0
    db $8b, $f8, $f7, $da, $b0, $ed, $f8, $7d, $84, $fe, $01, $b0, $87, $0b, $07, $bb
    db $2f, $1f, $b7, $80, $ff, $fd, $fe, $73, $a5, $03, $7f, $04, $06, $09, $0d, $13
    db $1b, $27, $50, $82, $fd, $3f, $90, $c0, $7f, $7f, $ff, $f0, $ff, $ef, $fe, $12
    db $e3, $70, $f0, $08, $c8, $30, $28, $f4, $f7, $ec, $f0, $74, $b3, $e3, $07, $07
    db $08, $0c, $de, $d4, $e0, $17, $2f, $37, $4f, $b9, $83, $c0, $20, $ff, $60, $90
    db $a0, $d0, $b0, $c8, $d0, $e8, $ee, $99, $83, $0f, $10, $18, $e2, $e0, $1b, $27
    db $0b, $fd, $17, $00, $82, $f1, $f1, $0a, $1b, $e0, $ea, $df, $f1, $db, $e0, $d1
    db $ea, $75, $e3, $fe, $01, $ff, $03, $fc, $fd, $fe, $7b, $fc, $7a, $fd, $fe, $90
    db $e3, $3f, $40, $60, $9f, $6f, $9f, $67, $fb, $9f, $37, $50, $a1, $07, $03, $fc
    db $fc, $03, $dd, $03, $f3, $60, $81, $ff, $be, $22, $e1, $80, $80, $ff, $4f, $cf
    db $30, $78, $87, $b7, $cf, $bb, $f7, $c7, $dd, $e3, $03, $a3, $f8, $04, $0c, $f2
    db $bf, $f4, $fa, $ec, $f2, $d8, $e4, $a0, $68, $01, $ef, $01, $02, $02, $05, $60
    db $e3, $1f, $20, $60, $bf, $9f, $9f, $7f, $78, $ff, $f7, $03, $e3, $c0, $ff, $f0
    db $08, $1c, $e2, $e6, $f9, $7b, $fc, $f3, $bd, $7e, $e3, $83, $90, $e1, $df, $3f
    db $bc, $7f, $e3, $b3, $7c, $75, $83, $89, $60, $83, $60, $f9, $ff, $76, $fd, $f9
    db $50, $62, $e0, $e0, $10, $30, $c8, $d8, $df, $e0, $e8, $f4, $6c, $f0, $1c, $e0
    db $0f, $2f, $fd, $5f, $fe, $e7, $d9, $e6, $b0, $c0, $a0, $d0, $fb, $a0, $c0, $fe
    db $e4, $d0, $b4, $78, $d4, $38, $ff, $64, $18, $38, $45, $00, $19, $01, $02, $ff
    db $01, $02, $03, $3c, $2f, $5f, $6d, $9f, $ff, $58, $bf, $da, $3d, $b6, $79, $b7
    db $78, $fd, $70, $b6, $60, $d8, $e4, $d8, $e4, $e8, $f4, $fd, $ec, $52, $e0, $76
    db $f9, $76, $f9, $fb, $fc, $fe, $ca, $c1, $17, $2f, $16, $2f, $36, $4f, $2d, $ff
    db $5e, $2d, $5e, $6d, $9e, $db, $e4, $ee, $ff, $f1, $ee, $f1, $f5, $fb, $f5, $fb
    db $7b, $eb, $ff, $7b, $a0, $a0, $7b, $e8, $c0, $fd, $fe, $dd, $ff, $fe, $9e, $ff
    db $9e, $ff, $5e, $bf, $5e, $ff, $bf, $17, $af, $17, $8f, $17, $8f, $97, $fd, $4f
    db $fe, $e3, $d7, $2f, $bf, $c0, $b3, $cc, $ff, $8d, $fe, $fe, $ff, $86, $ff, $bb
    db $c7, $ff, $a4, $cb, $a3, $c4, $5d, $e3, $b5, $4b, $ff, $65, $9b, $85, $4b, $85
    db $4b, $45, $8b, $bf, $c5, $3b, $bd, $43, $d8, $e0, $fe, $ea, $e1, $fe, $2a, $c0
    db $03, $0d, $13, $0b, $17, $1b, $07, $fe, $fe, $e0, $27, $3b, $c7, $ec, $f3, $e8
    db $f4, $6f, $e8, $f0, $d0, $e8, $fe, $e5, $dd, $3e, $9a, $e0, $fd, $3f, $1e, $e7
    db $6f, $f0, $99, $66, $f1, $0a, $fb, $61, $92, $fe, $e5, $77, $f8, $74, $fb, $74
    db $fd, $fa, $fe, $e7, $b4, $7a, $cc, $32, $78, $84, $db, $30, $48, $28, $45, $37
    db $0f, $18, $c1, $0d, $13, $ef, $06, $09, $03, $04, $0a, $c1, $b0, $c0, $d8, $ef
    db $e5, $ef, $f0, $f0, $bc, $40, $80, $7f, $ff, $ff, $00, $38, $c7, $3a, $c5, $ce
    db $31, $35, $7f, $fb, $e3, $ff, $cf, $ff, $30, $cf, $f0, $e1, $ff, $c0, $ff, $df
    db $e0, $b0, $c0, $d9, $e0, $ff, $e9, $f0, $19, $e0, $ff, $00, $10, $ef, $ce, $6c
    db $c1, $bd, $7e, $be, $92, $a0, $d0, $e1, $26, $d9, $ff, $5b, $bc, $da, $3d, $da
    db $3d, $bb, $7c, $ff, $7d, $fe, $83, $7c, $ff, $00, $31, $ce, $ff, $be, $7f, $de
    db $3f, $5d, $be, $6d, $1e, $ff, $2a, $5d, $36, $08, $ff, $00, $8e, $71, $ff, $ef
    db $1f, $af, $5f, $2f, $df, $6f, $1f, $ff, $5f, $3f, $60, $9f, $ff, $00, $03, $fc
    db $7f, $57, $af, $57, $af, $77, $8f, $af, $7c, $60, $7b, $20, $df, $f0, $e1, $a0
    db $c0, $bf, $c0, $67, $82, $fc, $c1, $21, $a0, $e0, $6d, $93, $d5, $3b, $35, $fb
    db $ff, $eb, $f7, $e7, $ff, $d8, $e7, $3f, $c0, $ff, $62, $9d, $d9, $e6, $df, $e0
    db $dc, $e3, $fd, $e3, $e0, $e4, $18, $e7, $e3, $1f, $95, $7b, $ff, $75, $fb, $ee
    db $f1, $eb, $f4, $11, $ea, $ef, $fe, $01, $d1, $2e, $54, $c0, $f3, $f7, $f8, $df
    db $f8, $ff, $3f, $ff, $c0, $fa, $80, $88, $77, $ff, $5f, $bf, $de, $3f, $be, $7f
    db $7d, $fe, $ff, $f3, $fc, $0e, $f1, $ff, $00, $c4, $3a, $ff, $61, $92, $c1, $22
    db $c3, $24, $86, $49, $ff, $05, $8b, $06, $09, $ff, $00, $46, $39, $3c, $e4, $c1
    db $28, $c1, $fd, $fe, $03, $fc, $10, $e1, $10, $24, $fe, $c4, $61, $f0, $f0, $08
    db $18, $e4, $30, $08, $ff, $31, $02, $30, $28, $18, $26, $36, $0f, $ff, $30, $00
    db $1f, $20, $0f, $1f, $30, $08, $ff, $e1, $12, $63, $50, $23, $32, $20, $31, $ff
    db $30, $48, $ff, $20, $87, $df, $18, $28, $ff, $09, $99, $88, $18, $88, $99, $09
    db $18, $ff, $19, $28, $ff, $10, $86, $ef, $00, $10, $ff, $fc, $00, $3c, $28, $34
    db $e8, $e4, $18, $ff, $04, $e8, $07, $88, $03, $07, $06, $25, $ff, $c2, $26, $e0
    db $12, $f0, $50, $b0, $49, $ff, $b9, $69, $9f, $60, $0e, $9f, $31, $52, $ff, $21
    db $32, $02, $a5, $86, $86, $84, $4a, $ff, $cc, $4c, $ff, $00, $7f, $ff, $06, $89
    db $ff, $06, $25, $22, $55, $02, $03, $00, $73, $ff, $70, $89, $8f, $50, $07, $8f
    db $01, $02, $ff, $31, $12, $03, $04, $03, $20, $31, $10, $fd, $31, $d0, $c0, $c6
    db $ef, $02, $05, $3e, $21, $fe, $fc, $e1, $03, $3d, $03, $01, $fe, $03, $7c, $7f
    db $fe, $10, $20, $13, $21, $10, $23, $fa, $e0, $fe, $fe, $e0, $1e, $21, $0c, $1e
    db $22, $51, $22, $ff, $31, $22, $31, $63, $d0, $e0, $13, $20, $ff, $d0, $3f, $40
    db $1f, $3f, $10, $28, $30, $ff, $02, $22, $55, $e0, $00, $40, $a7, $07, $ff, $48
    db $f8, $05, $f0, $f8, $70, $81, $70, $df, $00, $30, $42, $32, $01, $d0, $e0, $80
    db $fe, $ff, $01, $6c, $fe, $88, $40, $08, $c0, $08, $bf, $41, $09, $00, $09, $80
    db $89, $5e, $00, $7e, $ff, $ff, $44, $a2, $04, $62, $04, $22, $04, $ff, $82, $84
    db $42, $c4, $02, $7f, $80, $3f, $ff, $7f, $42, $05, $40, $03, $40, $09, $48, $ff
    db $04, $4c, $02, $4e, $00, $fb, $04, $b1, $ff, $fb, $20, $10, $21, $02, $23, $04
    db $23, $ff, $06, $20, $11, $30, $08, $ef, $10, $c3, $ff, $e7, $18, $04, $f8, $04
    db $18, $04, $98, $ff, $04, $18, $84, $18, $24, $f0, $08, $c0, $f5, $f0, $a0, $ac
    db $fb, $a0, $ab, $f0, $00, $75, $fa, $ef, $77, $f8, $77, $f8, $a0, $c7, $88, $00
    db $74, $af, $00, $54, $00, $64, $fc, $e0, $88, $e2, $e0, $18, $01, $e0, $00, $00

    nop

    db $11, $08, $ff, $ff, $ff, $ff, $f9, $f8, $0a, $e0, $ff, $e0, $ff, $e0, $f9, $4e
    db $ff, $ec, $2a, $2a, $0a, $ad, $ea, $e0, $e3, $4a, $ff, $e4, $40, $de, $e2, $e0
    db $f0, $be, $ea, $c0, $eb, $cc, $e2, $9a, $e9, $6a, $e0, $ff, $18, $60, $ea, $84
    db $e5, $7c, $e3, $6a, $6a, $60, $eb, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $50, $ff, $ff, $ff
    db $ff, $ff, $ff, $eb, $ea, $09, $fa, $e3, $09, $f8, $e3, $20, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $08, $00, $00

    nop

    db $81, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f5, $f4, $01, $db
    db $02, $03, $ff, $e8, $02, $01, $ce, $ec, $04, $05, $f7, $06, $07, $07, $de, $e5
    db $08, $09, $0a, $0b, $fd, $04, $ad, $eb, $0c, $0d, $0e, $0f, $10, $11, $ff, $12
    db $13, $14, $15, $16, $17, $18, $19, $ef, $1a, $1b, $1c, $0c, $e0, $ed, $1d, $1e
    db $1f, $ff, $20, $21, $22, $23, $24, $25, $26, $27, $ef, $28, $29, $2a, $2b, $e0
    db $ec, $04, $2c, $2d, $ff, $2e, $2f, $2f, $30, $31, $32, $33, $34, $3f, $35, $36
    db $37, $32, $38, $39, $a0, $ec, $60, $fd, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f8, $ff, $ff, $ff, $ff, $ea, $e9
    db $3a, $3b, $3c, $3d, $3e, $ff, $3f, $40, $41, $42, $43, $44, $45, $46, $df, $47
    db $48, $49, $4a, $4b, $cc, $eb, $4c, $4d, $ff, $4e, $4f, $50, $51, $52, $53, $54
    db $55, $ff, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $fe, $ac, $eb, $5e, $5f, $60
    db $61, $62, $63, $64, $ff, $65, $66, $67, $68, $69, $6a, $6b, $6c, $f7, $6d, $6e
    db $6f, $8c, $eb, $70, $71, $72, $73, $ff, $74, $75, $76, $77, $78, $79, $7a, $7b
    db $3f, $7c, $7d, $7e, $7f, $80, $81, $6c, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $e0, $00, $00

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

Jump_049_7ef8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_049_7fc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_049_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_049_7fff:
    rst $38
