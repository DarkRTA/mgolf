; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

    db $10
    ld b, b
    ld h, c
    ld e, c
    dec b
    ld d, c
    daa
    ld l, c
    add c
    ld [hl], c

    db $34, $72

    inc sp
    ld [hl], e
    ld a, [de]
    ld a, b
    ld a, [de]
    ld b, b
    ld c, d
    ld b, b
    sbc e
    ld c, e
    sbc e
    ld c, l
    ret


    ld c, a
    or $00
    ccf
    ld [bc], a
    db $ec
    inc bc
    ldh [rSC], a
    rst $38
    ld a, a
    ld a, [c]
    inc bc
    db $ec
    inc bc
    ldh [rSC], a
    sub a
    ld a, l
    sbc a
    ld a, [hl]
    ld hl, sp+$00
    ldh [rSC], a
    rra
    ld h, a
    db $ec
    inc bc
    ldh [rSC], a
    add hl, hl
    ld bc, $015f
    ldh [rSC], a
    rra
    ld h, a
    add hl, hl
    ld bc, $2508
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_052_404b:
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, @-$0f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    cp $42
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    cp h
    ld a, a
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_052_404b

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf

Jump_052_4094:
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rst $38
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    rst $38
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $ff07
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    rst $20
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [rNR41], a
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$0b], a

Call_052_4107:
    db $f4
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$c0e3], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    rst $38
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    ld a, a
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [rIE], a
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    rst $38
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    ld a, [hl]
    call nc, Call_052_48c2
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    rst $28
    ld [bc], a
    ld bc, $0300
    ld [hl], d
    pop hl
    or b
    rst $38
    pop hl
    rst $38
    cp $80
    ld hl, sp+$08
    ldh a, [rSC]
    db $fc
    and b
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ret nc

    rst $38
    pop af
    rst $38
    ldh [rIE], a
    rst $38
    ld b, h
    ei
    ret nz

    di
    add d
    pop af
    db $10
    db $fd
    pop hl
    ld [c], a
    jp Jump_052_7f9f


    dec bc
    ld a, a
    rrca
    ccf
    rst $28
    rlca
    rst $38
    ld e, a
    rst $38
    add [hl]
    add sp, $00
    ld [$ff07], sp
    nop
    rra
    nop
    nop
    ld b, b
    ld b, b
    nop
    jr nz, @+$21

    nop
    db $10
    ld [$0400], sp
    ld [hl], d
    ret nz

    ld h, d
    pop bc
    ldh a, [rIE]
    inc a
    ldh a, [rIE]
    ldh a, [$f7]
    jp $c33c


    inc a
    db $fd
    ldh [$fe], a
    ld [c], a
    cp $f4
    pop hl
    dec de
    rst $20
    cpl
    call c, $f11e
    inc a
    rst $38
    db $e3
    ld a, h
    jp $c37c


    db $e3
    sbc h
    jp $bcf7


    jr @-$17

    ld [c], a
    pop hl
    ld a, [de]
    push hl
    ld [de], a
    rst $28
    rst $38
    ld e, a
    cp b
    ld a, a
    ldh [$f3], a
    adc h
    inc de
    rst $28
    rst $38
    rra
    ld hl, sp-$04
    ld h, e
    db $fc
    add e
    db $fc
    inc bc
    ei
    cp h
    ld b, e
    call nz, $98e1
    rst $20
    db $fc
    ld b, e
    call c, $63ff
    ld hl, sp+$27
    ld l, b
    or a
    ld l, h
    sub e
    db $fc
    rst $38
    inc de
    add sp, $17
    ld hl, sp+$0f
    sbc $25
    inc a
    rst $38
    rst $00
    ld a, $c3
    ccf
    jp nz, $c13e

    jp Jump_000_3d7f


    jp $bb3d


    rst $10
    rst $38
    nop
    and b
    jp hl


    sbc a
    jp $c3bc


    cp h
    ld a, h
    jp nz, $bee0

    pop hl
    ld b, e
    db $fc
    db $f4
    ldh [$a0], a
    pop hl
    nop
    rst $38
    db $dd
    db $eb
    rst $38
    nop
    ei
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    rrca
    ldh a, [rNR32]
    db $e3
    rst $38
    inc e
    di
    inc e
    db $e3
    inc c
    di
    ccf
    ret nc

    rst $38
    dec de
    db $f4
    ld d, a
    rst $38
    xor a
    db $fc
    ld a, [hl]
    pop af
    push af
    cp h
    ld [hl], b
    ldh [$fc], a
    ld [hl], b
    ld [c], a
    ei
    rst $38
    sbc $ff
    ld a, a
    push af
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    cp a
    ld h, a
    and b
    db $db
    di
    adc h
    ld hl, sp-$1f
    ld a, h
    db $e3
    ld [hl], b
    rst $20
    rst $28
    rst $38
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $30
    ccf
    ld l, e
    cp a
    rst $38
    db $76
    sbc a
    ei
    rra
    push af
    rra
    ld a, [$3f0f]
    db $dd
    daa
    ld a, $c7
    ccf
    jp $e06e


    ld [hl], b
    ld [c], a
    cp a
    db $ed
    rst $38
    db $d3
    inc a
    ld a, [hl]
    add c
    ld [hl], b
    jp hl


    db $e3
    or e
    sbc h
    cp h
    inc d
    ldh [rBCPD], a
    ldh [$c3], a
    ld h, e
    db $10
    ldh [$57], a
    sbc [hl]
    and h
    ldh [$7d], a
    rst $38
    db $d3
    rst $28
    ld c, d
    pop hl
    db $e4
    pop bc
    cp e
    rst $38
    db $f4
    ld e, e
    db $f4
    xor h
    di
    ld l, h
    di
    cp h
    rst $38
    db $e3
    ld l, h
    di
    cp e
    db $f4
    db $db
    db $f4
    cp l
    rst $38
    jp $ffe7


    cp d
    rst $38
    ld d, l
    rst $38
    xor e
    ei
    rst $38
    cp $58
    and b
    rst $38
    rst $38
    db $db
    rst $38
    ld l, a
    cp $8e
    ldh [$af], a
    ld a, a
    or l
    ld a, a
    rst $28
    ld a, a
    ld d, a
    db $ec
    ld b, [hl]
    and b
    ret nc

    jp $e718


    ld hl, sp-$1b
    ld d, a
    rst $38
    xor h
    rst $38
    rst $38
    ld [hl], h
    ei
    cp b
    rst $20
    ld e, b
    rst $20
    db $fc
    or $05
    ldh [$98], a
    rst $20
    ld b, b
    rst $20
    cp d
    rst $38

Call_052_42e7:
    db $ec
    di
    sbc l
    sbc b
    ldh [$e0], a
    cp d
    rst $38
    ld l, h
    ld hl, sp-$20
    ret z

    push hl
    rst $28
    cp $26
    ldh [$6d], a
    rst $38
    scf
    rst $38
    dec hl
    rst $38
    ld d, $ff
    rst $38
    dec sp
    rst $38
    dec d
    rst $38
    ld a, [de]
    rst $28
    dec [hl]
    rst $38
    rst $08
    ld a, $c7
    dec de
    rst $20
    ld a, [de]
    rst $20
    dec a
    cp a
    jp $c33f


    add hl, de
    rst $20
    rst $10
    db $e4
    add b
    inc l
    xor l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    ld b, d
    pop hl
    ret c

    and b
    ldh [$bc], a
    add sp, -$22
    ret nz

    or b
    pop hl
    ld b, b
    pop hl
    bit 7, b
    and $b0
    rst $38
    ld d, h
    rst $38
    ei
    and h
    ei
    ld a, b
    rst $30
    xor b
    rst $30
    ld h, h
    rst $38
    ei
    or h
    ei
    ret nc

    rst $38
    pop bc
    rst $38
    or a
    ld c, a
    rst $38
    ld e, l
    rst $38
    ld [$e03e], a
    ld a, [hl-]
    add c
    rst $38
    sub h
    add b
    ld h, l
    ld d, a
    ld a, $e0
    dec [hl]
    ld a, [hl-]
    ldh [$ae], a
    ret nz

    rst $38
    rst $10
    ld hl, $cf83
    rst $38
    db $dd
    rst $38
    ld [hl], a
    sbc h
    ret nz

    call c, $afe1
    rst $38
    ld b, l
    rst $18
    adc $e0
    rst $18
    ld hl, sp-$1a
    rst $38
    push hl
    sbc $e5
    ld e, a
    jp z, $a1e0

    ld l, a
    add $e0
    ld hl, sp-$1b
    ldh [$63], a
    ld hl, sp-$1f
    ld e, a
    sub [hl]
    ldh [$5f], a
    db $fc
    ret nc

    and $c7
    push hl
    ld l, c
    rst $38
    call nc, $81fc
    ldh a, [rIE]
    ld b, [hl]
    ldh [$8b], a
    ret nz

    ld d, a
    ret nz

    dec e
    add b
    rst $10
    xor a
    add b
    db $fd
    xor a
    ld h, b
    jp c, $8048

    and b
    db $fc
    cp a
    ld b, c
    ldh a, [$0b]
    ret nz

    ld d, $00
    ld hl, sp-$1f
    ld a, [bc]
    ld a, a
    ret nz

    rla
    nop
    cp l
    nop
    ld l, a
    nop
    push de
    ld h, b
    rst $38
    nop
    ld hl, sp-$02
    db $f4
    cp $d8
    db $fc
    pop af
    rst $38
    db $fc
    ld [c], a
    ld hl, sp-$2f
    ld hl, sp+$63
    ldh a, [$c6]
    rst $38
    ldh a, [$8b]
    ldh [rBGP], a
    ldh [$8f], a
    ret nz

    dec de
    rst $38
    ret nz

    cpl
    add b
    rra
    add b
    scf
    nop
    ld e, a
    rst $38
    nop
    inc h
    inc a
    ld b, d
    nop
    xor l
    nop
    rst $30
    ld e, e
    nop
    ld a, l
    jp nc, $ffe2

    nop
    db $ec
    pop hl
    cp a
    db $e4
    ldh [rIE], a
    cpl
    add b
    cp a
    add b
    ld d, a
    nop
    ccf
    nop
    db $fd
    push af
    ld a, $e0
    ld b, l
    rst $38
    nop
    rst $00
    stop
    rst $38
    ld l, l
    nop
    cp e
    nop
    rst $28
    nop
    rst $20
    ldh a, [rIE]
    ld b, e
    ldh a, [$e5]
    ldh a, [rBGP]
    ldh [$8a], a
    ldh [$bf], a
    rst $00
    ldh [$a5], a
    ldh a, [$c3]
    ldh a, [$30]
    ld h, e
    rst $18
    cp $2e
    ld h, b
    xor l
    rst $38
    ld b, d
    rst $38
    nop
    jp $effc


    rst $38
    ld a, [$fcff]
    adc h
    ldh [$f8], a
    cp $ec
    db $fd
    cp $f6
    ldh [rIE], a
    rst $38
    add b
    ccf
    add b
    ld a, a
    rst $38
    ret nz

    sbc a
    ret nz

    ld c, a
    ldh [$87], a
    ldh a, [$d5]
    rst $38
    db $fc
    ld l, c
    rst $38
    ccf
    nop
    rrca
    ret nz

    ld b, e
    ld l, a
    ldh a, [$a0]
    db $fc
    db $f4
    ld c, d
    ldh [rIE], a
    rst $38
    ld b, d
    ldh [$fc], a
    adc b
    db $e4
    add sp, -$1b
    db $e3
    rrca
    and $0f
    rr a
    ld a, a
    rst $00
    rra
    adc a
    ccf
    sbc e
    ccf
    cpl
    db $fc
    ld b, b
    rst $38
    cp $00
    cp $00
    db $fc
    ld bc, $01fc
    rst $38
    ld hl, sp+$03
    ld sp, hl
    inc bc
    ld a, [c]
    rlca
    pop af
    rlca
    db $fc
    ret nc

    push hl
    inc h
    pop hl
    db $d3
    nop
    ld b, d
    ld a, [hl]
    cp $00
    push af
    rst $38
    ld [c], a
    ldh [$fe], a
    sbc $e0
    db $fc
    ld bc, $01ff
    ld a, h
    ld a, [c]
    ldh [$0a], a
    ld [c], a
    inc a
    nop
    nop
    rst $00
    ld b, l
    add h
    ret nz

    rst $38
    push af
    rst $38
    rst $20
    rrca
    ld [c], a
    rrca
    rst $30
    rrca
    cp $c6
    pop hl
    di
    rlca
    push hl
    rrca
    db $e3
    rrca
    jr @-$53

    jp Jump_052_5642


    ldh [$f7], a
    db $76
    add $3f
    cp h
    ld h, b
    ccf
    sbc $80
    and b
    sbc a
    ld a, a
    scf
    ld a, a
    or $e0
    rst $38
    ld [$004f], sp
    ld d, l
    nop
    cp [hl]
    ldh a, [$c0]
    ld l, b
    push hl
    ld e, a
    db $fc
    ret nz

    rst $10
    ld a, a
    nop
    xor a
    db $fc
    ldh [$3f], a
    db $f4
    ld [c], a
    ld de, $0980
    ld a, [hl+]
    call nc, $f0c0
    push hl
    cp a
    ld a, [$6ae4]
    jp hl


    db $f4
    db $eb
    nop
    add e
    rst $38
    dec de
    db $e4
    dec d
    xor $2d
    ret nc

    dec b
    ld a, [$34ff]
    ret nz

    ld d, a
    xor d
    and h
    ld a, [bc]
    ld c, e
    add b
    db $fd
    ld b, d
    ldh [rNR41], a
    dec e
    ld [bc], a
    cp h
    inc bc
    sbc b
    ld h, a
    rst $38
    rla
    xor d
    db $e4
    ld a, [bc]
    adc e
    jr nz, jr_052_453b

    nop
    rst $28
    db $dd
    nop
    cp l
    ld b, d
    ld [$16a1], sp
    xor c
    add sp, -$01
    inc bc
    add l
    ld [hl+], a
    ld a, [hl+]
    rlca
    db $db
    nop
    cp h
    cp a
    ld b, e
    ccf
    ret nz

    add hl, de
    and $18
    ld h, b
    and b
    inc a
    rst $38
    jp $e7b8


jr_052_453b:
    ld [$ccf7], sp
    ei
    sub b
    rst $38
    ld l, a
    ld a, [hl+]
    rst $38
    rra
    ldh [$d0], a
    ld bc, $7f5a
    and c
    ld c, b
    rlca
    ld hl, sp+$07
    inc e
    inc bc
    ret nz

    pop hl
    rst $38
    or b
    rrca
    call z, Call_052_793f
    add [hl]
    ld [de], a
    rst $28
    rst $28
    dec de
    ldh [$3c], a
    jp $e1d0


    dec a
    ret nz

    ld c, a
    rst $38
    and b
    jr nc, @-$35

    ld d, d
    and c
    ld l, l
    jp nz, $ff34

    ret


    ld c, b
    or e
    ld a, [de]
    push hl
    dec d
    cp a
    adc $ff
    ccf

jr_052_457a:
    ld d, [hl]
    cp a
    ld l, l
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    rst $38
    cp a
    dec e
    rst $38
    ld c, [hl]
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    rst $38
    and c
    ld [hl-], a
    ret


    ld d, a
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $28
    rst $08
    ld d, l
    cp a
    dec hl
    sub b
    add d
    cp h
    ld b, e
    ld e, b
    db $fd
    and a
    nop
    and b
    db $e3
    call nz, $b4f3
    db $eb
    sbc d
    rst $38
    ld a, a
    rst $28
    ccf
    ld a, [hl-]
    rst $18
    ld c, l
    rst $38
    or h
    cp a
    rst $38
    ld a, d
    rst $38
    xor b
    rst $38
    ld [hl], h
    cp [hl]
    add b
    inc hl
    rst $28
    rst $18
    dec b
    rst $38
    ld a, [de]
    ld [hl], b
    add [hl]
    call nc, $bbff
    xor a
    cp $74
    rst $38
    xor [hl]
    sbc d
    jr nz, jr_052_457a

    ld a, [hl-]
    add b
    inc bc
    rst $38
    rst $38
    ld d, d
    db $fc
    xor d
    db $fd
    ld [hl], a
    ei
    and d
    ld a, [$60b0]
    dec c
    xor h
    ld h, b
    ld a, [bc]
    rst $38
    ld h, a
    adc b
    call $bbaf
    ld [hl-], a
    rst $28
    db $eb
    sbc $e0
    cp $1c
    add b
    cp d
    rst $38
    rst $38
    daa
    ret z

    ld l, l
    sbc e
    ld [hl+], a
    rst $38

jr_052_45f6:
    ld a, e
    cp a
    rst $38
    or [hl]
    rst $38
    ld e, [hl]
    rst $38
    cp e
    add h
    ld h, b
    ld c, $bf
    cp a
    db $dd
    ccf
    ld l, [hl]
    cp a
    ld d, a
    ld [hl], b
    ldh [$6d], a
    ei
    cp a
    ld e, $70
    ldh [rHDMA2], a
    db $fd
    xor $f9
    ld c, c
    rst $38
    or $a7
    ld hl, sp+$47
    ldh a, [$b4]
    ret


    ld c, d
    rst $38
    or c
    dec de
    db $e4
    rst $38
    rra
    ld c, d
    cp a
    ld l, c
    ld a, a
    sub a
    ld [de], a
    rst $28
    add hl, de
    ld [c], a
    jr c, jr_052_45f6

    nop
    pop hl
    rst $38
    dec hl
    ret nc

    xor d
    ld b, c
    cp $01
    xor b
    rlca
    ei
    ld a, b
    add a
    db $10

jr_052_463e:
    db $e3
    and c
    ld e, $8c
    ld a, d
    ld d, a
    ld a, a
    xor b
    jr c, @-$3c

    dec c
    ldh a, [$3d]
    jp nz, Jump_052_61d8

    rst $38
    cpl
    sub b
    ld sp, hl
    nop
    adc d
    ld hl, $0728
    rst $08
    ret c

    rlca
    cp h
    ld b, e
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    db $fd
    rst $38
    ld bc, $0dfe
    ldh a, [rSC]
    db $fd
    ld a, [hl+]
    ret nc

    rst $38
    dec hl
    sub $f5
    ld a, [bc]
    ld e, a
    add b
    xor c
    ld [bc], a
    rst $38
    ld a, a
    add b
    db $10
    rrca
    ldh [$1f], a
    add b
    ld a, a
    rst $38
    ld d, a
    xor d
    push af
    ld a, [bc]
    sbc a
    jr nz, jr_052_463e

    ld [bc], a
    ei
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    or l
    db $f4
    dec bc
    sbc l
    rst $38
    ld [hl+], a
    cp d
    rlca
    ld a, e
    add b
    inc c
    di
    rlca
    push de
    ld hl, sp-$41
    and c
    add b
    sbc [hl]
    nop
    and b
    sbc d
    nop
    ld l, b
    rst $38
    ld a, [hl]
    sub b
    pop bc
    rla
    add sp, -$2f
    nop
    ld l, $d1
    add b
    pop hl
    adc $c0
    db $e3
    or b
    rrca
    add $90
    call nz, $e3d0
    dec a
    ret nz

    ld a, a
    ld e, a
    and b
    inc [hl]
    ret


    ld e, d
    and c
    ld a, l
    sub b
    ret nz

    cp l
    ld c, h
    sub b
    ret nz

    ld d, l
    cp a
    adc [hl]
    ld a, a
    sub b
    jp z, $ffc8

    ld e, d
    and c
    inc a
    jp $ae53


    ld [hl], a
    call Call_052_42e7
    cp a
    dec d
    ld l, d
    ld h, b
    ld l, e
    add c
    ret nz

    ccf
    ld b, b
    rst $38
    cp a
    ld b, b
    rst $38
    or b
    rst $28
    call z, $a4f3
    ld a, l
    ei
    sub b
    rst $08
    inc bc
    rst $38
    dec b
    rst $38
    ld [bc], a
    add hl, de
    and [hl]
    ld [$cd90], a
    ld d, e
    sub b
    ret nz

    ld [hl], l
    sub b
    ret z

    ld [hl], a
    adc b
    call z, $90ea
    jp z, $9037

    call z, $904e
    adc $ae
    ld sp, hl
    ld a, c
    or $90
    ret z

    cp a
    ld e, a
    sub b
    jp $e21d


    ld [$fef7], sp
    nop
    pop hl
    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    add c
    add sp, -$12
    db $10
    and $61
    ld e, $95
    sub b
    ret nz

    add hl, sp
    jp nz, $fd0f

    ldh a, [$df]
    ld h, e
    ld d, a
    xor b
    ei
    nop
    sbc [hl]
    ld hl, $a8ef
    rlca
    ld [hl], b
    adc a
    rst $08
    ld h, e
    inc c
    rst $30
    reti


    rst $38
    ld l, a
    ld [$63ff], sp
    cp l
    sub $6b
    ld l, d
    rst $38
    rst $18
    jr nc, @-$1f

    ld d, e
    db $fd
    nop
    rst $38
    ld e, l
    rst $38
    rst $20
    ld [$40ff], sp
    cp a
    ld l, h
    or a
    ld c, b
    ld [c], a
    cp h
    ret nz

    ld b, b
    ld h, b
    ld [$ffff], sp
    ld a, [hl-]
    ld bc, $0055
    cp d
    cp [hl]
    ld a, [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$8076], a
    xor [hl]
    cp [hl]
    ld [hl], d
    add b
    adc d
    nop
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    rst $38
    nop
    dec d
    nop
    xor b
    nop
    ld d, c
    nop
    ld [$00ff], sp
    ld [hl+], a
    nop
    sub h
    nop
    add hl, hl
    nop
    ld b, h

jr_052_4795:
    xor e
    nop
    db $10
    db $e4
    ldh [rP1], a
    ld d, e
    nop
    ld bc, $0074
    jr nz, jr_052_4795

    nop
    add b
    ld l, [hl]
    nop
    and b
    ldh a, [rNR23]
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    db $fc
    inc a
    cp $80
    rst $38
    ld a, h
    ld h, h
    nop
    nop
    ld [$3e1c], sp
    ld [hl], $ff
    ld a, a
    and [hl]
    ld a, a
    add h
    ld l, a
    ld b, b
    ld c, $08
    cp $8e
    ldh [rIE], a
    inc bc
    push af
    dec bc
    ei
    rlca
    cp $ff
    ccf
    ld hl, sp+$1f
    ld d, b
    cp a
    or b
    ld a, a
    ldh [$bf], a
    ld a, a
    db $dd
    and e
    ld [hl], a
    db $eb
    inc a
    sbc e
    ld l, b
    inc bc
    cp a
    rst $38
    inc bc
    cp $06
    db $fd
    dec b
    db $fc
    ldh [rTAC], a
    ld e, a
    cp $03
    ei
    inc bc
    ld a, [$8b15]
    ld bc, $ee20
    rst $38
    rst $18
    sbc e
    sbc a
    ld c, a
    daa
    rla
    and e
    di
    rst $38
    db $db
    pop hl
    xor $f1
    ld [hl], h
    ei
    and c
    rst $38
    ld a, a
    rst $18
    sbc a
    sbc l
    ld c, a
    ld h, $17
    and d
    ldh a, [$e0]
    rst $38
    ld l, [hl]
    pop af
    db $f4
    ei
    ld sp, hl
    rst $38
    rst $20
    jr @+$01

    jp $e724


    inc h
    rst $38
    inc a
    db $db
    inc a
    ei
    rst $20
    jr jr_052_488b

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    rst $38
    ret nz

    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    rst $38
    sub c
    adc e
    ld h, b
    ld d, $a9
    pop hl

jr_052_4841:
    dec bc
    adc d
    rst $38
    daa
    daa
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    db $fc
    ld b, [hl]
    add b
    ldh a, [rTAC]
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf

jr_052_4857:
    rst $38
    jr jr_052_4841

    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    rst $38
    ei
    nop
    inc e
    inc bc
    cp a

jr_052_4866:
    nop
    sbc c
    ld h, [hl]
    ld a, $08
    ld hl, $c23d
    jr jr_052_4857

    add hl, de
    nop
    inc h
    ldh [$61], a
    sbc a
    ld d, [hl]
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    ld h, b
    add h
    ld d, b
    and e
    ld de, $efff
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    db $fd
    rst $10

jr_052_488b:
    or b
    ld h, l
    jr z, jr_052_4866

    ld b, h
    ei
    or h
    rst $38
    ei
    ret nc

    rst $38
    adc a
    nop
    inc l
    ld e, $e7
    or l
    adc e
    rst $28
    sbc c
    rst $00
    ei
    ld b, [hl]
    ld a, [$56e1]
    rst $28
    cp l
    rst $38
    ld a, [hl]
    rst $28
    jr c, @+$01

    jr z, jr_052_488b

    ld l, $ef
    rst $38
    cpl
    rst $18
    ccf
    or $0f
    jr @+$01

    inc h
    db $ed
    rst $28
    ldh [$e3], a
    ld a, d
    rst $00
    ldh [$e3], a
    inc a

Call_052_48c2:
    rst $38
    jr z, @+$01

    rst $38
    jr c, @-$0f

    ld a, $ef
    cpl
    rst $28
    rra
    db $e3
    rst $38
    ld c, $20
    rst $18
    rst $38

jr_052_48d3:
    rst $38
    ei
    ld_long a, $ffab
    dec b
    rst $38
    cp $ab
    db $fc
    dec c

jr_052_48de:
    ld a, [$fdb2]
    ld d, l
    rst $38
    ld [$d7a8], a
    db $f4
    adc e
    or b
    rrca
    sbc $bf
    ld a, a
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld e, $e0
    xor d
    ld e, a
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    jr nc, jr_052_48de

    ld e, b
    ld h, b
    ld h, [hl]
    ld a, [$4b90]
    dec hl
    ret nc

    ld c, b
    inc a
    inc bc
    add h
    ld [hl], e
    or h
    ld sp, hl
    db $eb
    pop hl
    xor [hl]
    jr z, jr_052_4973

    add hl, de
    rst $20
    rla
    xor $3f
    cp a
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [hl+]
    nop
    jp c, $c8fe

    jr nz, jr_052_48d3

    cp $df
    ld hl, sp+$6f
    ld hl, sp-$21
    push af
    ldh a, [rSCX]
    ld b, b
    inc a
    and [hl]
    ld b, c
    ccf
    jp $c73e


    rst $28
    db $dd
    cpl
    jp c, $f02f

    push hl
    dec a
    jp $9f3c


    rst $00
    ret nc

    cpl
    ret c

    cpl
    ld a, $ff
    db $ec
    db $eb
    ld b, d
    rst $38
    rst $20
    adc c
    jp Jump_000_001c


    ld a, [hl]
    nop
    inc a
    rst $38
    add c
    sbc a
    add c
    ld [hl], $00
    ld l, e
    jr @-$67

    rst $38
    ret nz

    set 4, b
    add a
    ldh [$cb], a
    ret nz

    sub a
    rst $38
    ret nz

    sbc h
    add c
    ld [hl-], a
    add a
    adc a
    sbc a
    db $fd
    rst $38
    inc bc
    di
    rlca
    ld sp, hl

jr_052_4973:
    rlca
    ei
    inc bc
    ld a, l
    rst $38
    inc bc
    dec e
    add c
    add $e1
    pop af
    ld sp, hl
    db $fc
    rst $38
    cp $fe
    cp $f8
    db $fc
    db $ed
    db $fc
    ld d, c
    ei
    ld hl, sp+$02
    ld h, [hl]
    jr nz, jr_052_49ce

    add b
    ccf
    ld a, a
    rst $38
    rst $38
    ld a, a
    sbc a
    ccf
    ld [hl], a
    ccf
    jp z, $e01f

    ei
    nop
    sub $e6
    nop
    rla
    ret nz

    dec bc
    ldh [$27], a
    rst $38
    ldh [$0b], a
    ret nz

    ld d, a
    ret nz

    dec e
    add c
    or h
    rst $38
    add a
    sub b
    sbc a
    db $fc
    inc bc
    ldh a, [rTAC]
    db $fc
    rst $38
    rlca
    ld hl, sp+$03
    ld a, [hl]
    inc bc
    sbc h
    add c
    daa
    cp a
    pop hl
    add hl, bc
    ld sp, hl
    nop
    cp $02
    cp a
    nop
    dec b
    db $fc
    cp a
    nop

jr_052_49ce:
    ret nz

    db $e3

jr_052_49d0:
    nop
    ld a, a
    ret nz

    ld a, a
    add b
    ccf
    and a
    ld h, b
    ccf
    ret nz

    ret nz

    db $e4
    ld b, [hl]
    dec l
    or l
    inc [hl]
    ld l, $7f
    db $fc
    db $fc
    db $e4
    or $e3
    jr jr_052_49d0

    dec a
    jp nz, $c439

    rst $38
    rla
    add sp, $27
    ret nc

    rrca
    ldh [$bf], a
    ld b, b
    rst $38
    ccf
    add b
    db $eb
    dec d
    rst $30
    add hl, bc
    rst $38
    ld de, $bfff
    ld c, e
    sbc $2e
    cp b
    ld c, b
    ld hl, sp-$67
    rst $38
    ldh a, [$f0]
    db $dd
    and e
    rst $30
    rst $28
    ld a, h
    ld a, h
    cp a
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    ld d, b
    ld c, c
    add b
    ld [hl], l

jr_052_4a1b:
    rst $38
    inc bc
    add e
    inc bc
    ld d, d
    ld b, $85
    dec b
    sub $ff
    ld b, $ad
    rlca
    sub $07
    rst $38
    inc bc
    jp c, Jump_000_17ee

    jr nz, jr_052_4a1b

    nop
    call c, $8037
    call nz, $a800
    rst $38
    ld bc, $0341
    adc e
    dec d
    ld [$bf40], a
    cp l
    add b
    and c

jr_052_4a44:
    ldh [$80], a
    ld a, a
    xor d
    ld d, l
    add hl, de
    add b
    ret nz

    ld a, e
    ld e, d
    and l
    ld [hl], e
    push hl
    and l
    ld e, d

jr_052_4a53:
    nop
    and l
    ld e, a
    add d
    rst $38
    db $fc
    ld c, $f1
    jr jr_052_4a44

    jr nc, @-$2f

    jr nz, @+$01

jr_052_4a61:
    rst $18
    ld h, b
    sbc a
    ld b, b
    cp a
    rst $38
    ld a, [bc]
    add c
    db $fd
    ld a, [hl]
    ld d, a
    pop hl
    jp $c37d


    rst $38
    add d
    rst $38
    db $fd
    jp $41b2


    cp a
    ld [hl], b
    xor a
    jr c, jr_052_4a53

    ld e, h
    rst $38
    xor e
    inc a
    rst $00
    ld e, [hl]

jr_052_4a82:
    and l
    cp [hl]
    ld b, e
    ld b, b
    cp a
    cp a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld b, h
    ld b, b
    adc d
    ld a, a
    push af
    sub l

jr_052_4a93:
    ld l, d
    xor a
    ret nc

    jp Jump_052_5a7d


    add b
    rst $38
    cp $02
    db $fd
    dec d
    ld [$54ab], a
    ld e, a
    rst $38
    and b
    rst $30
    ld [$837e], sp
    cp a
    ld c, d
    ld a, a
    rst $10
    add c
    rst $38
    add hl, bc
    daa
    jr nz, jr_052_4afc

    inc hl
    jr nz, jr_052_4a61

    sbc e
    rst $38
    db $e4
    xor a
    ret nc

    rst $18
    jr nz, @-$47

    ret z

    rst $18
    rla
    jr nz, jr_052_4a82

    ret nz

    ld hl, sp-$20
    ld c, b
    push bc
    ldh [$c1], a
    jr nz, jr_052_4acd

    ld b, b

jr_052_4acd:
    push de
    dec b
    db $fd
    jr nz, jr_052_4ae7

    ld sp, hl
    jr nz, jr_052_4b32

    xor c
    ld b, b
    ld a, l
    rst $38
    push af
    cp a
    ld a, a
    ld b, b
    ei
    ld a, e
    ld b, b
    xor d
    rst $18
    jr nz, jr_052_4a93

    rst $38
    ld d, b
    dec de

jr_052_4ae7:
    db $e4
    xor a
    ld d, b
    dec d
    ld [$df8a], a
    ld [hl], l
    ld bc, $10fe
    rst $28
    ld d, e
    ld b, b
    db $10
    rst $38
    ei
    inc b
    rst $38
    ld b, d
    nop

jr_052_4afc:
    ld a, [$5505]
    xor d
    xor b
    db $fd
    ld d, a
    add a
    add b
    xor b
    rst $38
    ld d, c
    ei
    and h
    push af
    rst $38
    ld a, [bc]
    xor d
    ld d, l
    ld d, c
    xor [hl]
    add d
    ld a, l
    rlca
    rst $30
    ld sp, hl
    inc e
    db $e3
    ld b, h
    push hl
    ld b, c
    cp [hl]
    ld c, b
    or a
    rst $38
    ldh a, [$6f]
    inc a
    bit 2, [hl]
    xor l
    xor [hl]
    ld d, e
    rst $38
    ld [hl], a
    adc d
    cp a
    ld b, c
    ld a, a
    sub e
    rst $38
    add hl, hl
    rst $38
    ld l, c

jr_052_4b32:
    sbc $34
    or a
    inc bc
    add e
    nop
    and b
    rst $38
    nop
    adc b
    ld bc, $00a1
    sub b
    nop
    and h
    cp $ec
    ldh [$3f], a
    db $dd
    db $dd
    cp a
    cp a
    ld e, l
    ld e, l
    rst $38
    ld l, $2e
    ld e, l
    ld e, l
    ld a, [hl+]
    ld a, [hl+]
    nop
    ret nc

    ld [$600b], a
    ld a, [c]
    rlca
    ld h, b
    db $f4
    rst $20
    ld b, b
    db $fd
    nop
    rst $30
    rst $38
    sbc l
    sbc l
    jr z, jr_052_4b8e

    dec d
    dec d
    ld c, b
    ld c, b
    ld a, d
    db $d3
    ld b, b
    add d
    db $d3
    ld b, b
    xor d
    ld a, [hl]
    nop
    ld e, [hl]
    or h
    and b
    rst $38
    inc l
    add c
    jr @-$3b

    sbc c
    jp $e742


    ld bc, $70a1
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_052_4b8e:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, [$0000]
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
    nop
    nop
    nop

Call_052_4c51:
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

Jump_052_4d3f:
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
    nop
    nop
    ld a, l
    inc sp
    rst $38
    db $ec
    ld de, $1113
    inc sp
    inc de
    ld hl, sp-$1f
    ld b, [hl]
    rst $38
    pop hl
    inc de
    inc de
    ldh a, [$e0]
    ld a, [c]
    pop hl
    ldh a, [$e1]
    ld sp, $e0fe
    dec [hl]
    inc sp
    cp $e1
    ld sp, $e0fe
    inc sp
    ld sp, $e3e9
    pop bc
    ldh [rNR42], a
    inc de
    ret nc

    and $c0
    ld [c], a
    cp $e5
    cp a
    db $e3
    ld sp, $e1ba
    xor h
    ldh [rNR23], a
    db $e4
    ld [c], a
    db $fc
    ld sp, hl
    cp d
    ldh [$31], a
    inc de
    and [hl]
    ld [c], a
    adc h
    ldh [$7a], a
    ldh [rP1], a
    sub h
    ldh [$72], a
    ld [c], a
    ld l, b
    and $a1
    ld [c], a
    ld [hl], b
    ldh [$7b], a
    ldh [$8e], a
    pop hl
    ld [hl], d
    db $e3
    and h
    jp c, Jump_000_3ce3

    pop hl
    rst $38
    rst $38
    rst $38
    di
    ld a, [c]
    ld h, [hl]
    rst $38
    db $e4
    nop
    rrca
    ld b, $06
    ld h, [hl]
    ld b, $f8
    pop hl
    rst $38
    pop hl
    ldh a, [$e1]
    rst $20
    db $e4
    rst $28
    ld h, b
    nop
    ld h, b
    nop
    di
    ldh [rP1], a
    ld h, [hl]
    ld h, b
    ldh [$fe], a
    ldh [rIE], a
    ldh a, [$d1]
    db $e4
    db $dd
    ld [c], a
    rst $10
    pop hl
    sbc c
    sub [hl]
    sub [hl]
    dec de
    ld h, [hl]
    sub [hl]
    xor e
    ldh [rNR11], a
    sbc c
    rst $38
    ldh [$a3], a
    ldh [$fc], a
    pop hl
    sbc $9c
    pop hl
    ld l, c
    sub c
    ld l, c
    sub c
    di
    ldh [$99], a
    ld h, [hl]
    ld bc, $fe69
    ldh [$f0], a
    pop hl
    db $db
    pop hl
    add e
    ld [c], a
    ret nc

    db $e3
    pop de
    db $e4
    db $dd
    ld [c], a
    call nc, $e2fc
    ret nz

    ldh [rNR24], a
    ld a, e
    ret nz

    sbc c
    cp $e1
    sub c
    sbc c
    ld sp, hl
    ld de, $e268
    ld h, e
    ldh [$99], a
    sub b
    sub b
    nop
    sub b
    ldh a, [$5b]
    ldh [$a0], a
    ld [c], a
    ldh a, [$e1]
    rst $20
    db $e4
    add hl, bc
    sub c
    add hl, bc
    sub c
    ld c, $f3
    ldh [$99], a
    nop
    add hl, bc
    cp $e0
    ldh a, [$e1]
    db $db
    pop hl
    inc sp
    ld [c], a
    or b
    ret nc

    db $e3
    pop de
    db $e4
    db $dd
    ld [c], a
    reti


    pop hl
    sub b
    add hl, bc
    and b
    ldh [$91], a
    inc b
    and b
    pop hl
    add $e1
    sbc c
    ld de, $4dc2
    pop hl
    sub b
    ld [c], a
    adc d
    ldh [$f0], a
    pop af
    reti


    sub c
    add sp, -$1c
    call nc, Call_000_22e4

jr_052_4ea3:
    sub d
    cp $e0
    ld de, $3f19
    add hl, de
    sbc c
    sbc c
    sub d
    sub d
    ld [hl+], a
    db $fc
    pop hl
    rst $38
    pop hl
    rst $38
    ld de, $1999
    sub d
    add hl, de
    sub d
    sbc c
    ld [hl+], a
    ld c, $e2
    db $e3
    ld [hl+], a
    ld [hl+], a
    add hl, hl
    jp hl


    db $e3
    db $e4
    ldh [$f0], a
    db $e3
    jp hl


    pop bc
    jr nz, jr_052_4ea3

    pop hl
    sbc $e1
    jp c, $88e1

    push hl
    adc c
    db $e4
    sbc c
    xor h
    pop hl
    jp nz, Jump_052_7ee0

    ld hl, sp-$20
    sbc c
    sub d
    add hl, de
    sbc c

Jump_052_4ee1:
    ld de, $c619
    db $e3
    ld c, $f1
    pop hl
    add hl, hl
    sub c
    add hl, hl
    ld hl, sp-$40
    xor l
    pop hl
    cp $e0
    cp h
    ld [c], a
    nop
    and d
    db $e4
    ldh a, [$e1]
    add h
    ld [c], a
    and h
    ld [c], a
    and a
    db $e4
    dec [hl]
    ld [c], a
    ret nz

    push bc
    cp d
    ret nz

    nop
    ld a, d
    push hl
    cp $fd
    sbc b
    push bc
    rst $38
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
    and $a3
    ld h, a
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    ld h, d
    dec a
    ld d, l
    rst $38
    rst $20
    ld d, c
    ld d, l
    ld de, $1851
    and [hl]
    ld c, $ed
    ld hl, sp-$40
    ld a, l
    and b
    ld [hl], l
    jr c, jr_052_4f99

    rla
    ld de, $1777
    ld [hl], a
    rla
    ld de, $7711
    rst $38
    db $e3
    ld [hl], c
    cp $e4
    rst $38
    db $fc
    adc [hl]
    rst $18
    call nz, $ffff
    ld e, b
    rst $18
    ld de, $f610
    or $f5
    ret nc

    ret nz

    ld d, a
    ld d, l
    di
    ld [hl], a
    ld d, a
    ld h, b
    rst $38
    ld [$06e9], a
    nop
    ld h, [hl]
    ld de, $1955
    ld h, [hl]
    add b
    sub [hl]
    ld [hl], d
    ld h, h
    ld l, c
    ld l, c
    ld h, h
    ld h, b
    ld de, $a263
    cp a
    pop af
    sub d
    xor h
    add b
    db $fc
    ld [c], a
    cp $e3
    sbc c
    adc d
    add d
    add hl, hl
    ld h, e
    sbc c
    add hl, hl
    jr z, jr_052_4fe4

    ld [hl+], a
    add b
    jr c, @-$7e

    ld de, $1b29
    add c
    xor b
    ldh [$ee], a
    sub a
    ld h, b
    ldh [$e3], a
    nop
    ldh [$e3], a
    xor $ff
    db $f4

jr_052_4f99:
    nop
    ld c, a
    ld c, $00
    xor $0e
    db $e3
    ldh [$98], a
    ld [hl+], a
    ld [hl], a
    cp $e0
    add b
    ld h, b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    xor d
    jp c, $92c1

    ld bc, $a429
    ld b, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor b
    add a
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

jr_052_4fe4:
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
    rst $38
    nop
    nop
    dec c
    nop
    db $dd
    dec c
    db $dd
    db $dd
    ld a, e
    db $dd
    xor $ff
    ldh [$de], a
    xor $d0
    nop
    ld hl, sp-$1f
    rst $30
    xor $ee
    nop
    ld hl, sp-$1d
    rst $28
    nop
    rrca
    ldh a, [$7f]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    db $dd
    ldh [rIE], a
    ret nc

    db $dd
    nop
    ret nc

    nop
    rst $38
    rst $38
    rrca
    ld l, $ef
    ldh [rP1], a
    rrca
    cp e
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ldh a, [$e3]
    rst $38
    dec bc
    cp e
    nop
    nop
    or b
    nop
    cp e
    nop
    di
    cp e
    or b
    add sp, -$1b
    xor $e0
    cp e
    nop
    dec bc
    nop
    ld a, l
    nop
    ret nc

    push hl
    cp e
    xor d
    cp e
    xor d
    cp d
    cp $e0
    jp z, $e5ff

    sbc d
    cp $e0
    sbc c
    cp $e1
    cp b
    ld [$bbbb], a
    db $db
    adc b
    adc b
    sbc b
    db $e3
    call z, $88cc
    db $e4
    cp $0f
    ld a, e
    xor $00
    ld l, b
    ldh [$ed], a
    db $dd
    xor $d0
    ld h, c
    ldh [rP1], a
    ld c, b
    rst $38
    ld c, b
    rst $38
    sub b
    ld_long $ff48, a
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld c, $ee
    call $bcee
    rst $38
    ret nc

    cp e
    or b
    xor $e0
    xor $f8
    rrca
    rst $30
    adc c
    add hl, bc
    sbc c
    db $db
    and h
    ldh [$dd], a
    rst $28
    db $dd
    rst $10
    rst $28
    ret nc

    rrca
    ret nz

    ld [c], a
    inc c
    cp d
    pop hl
    db $dd
    ret nc

    or e
    call z, Call_000_10cc
    pop bc
    ld a, [c]
    and d
    ld [$d800], sp
    ldh [$f0], a
    rra
    nop
    adc b
    nop
    sbc c
    sub b
    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld b, e
    ld [$9688], sp
    and d
    and b
    ldh [$9d], a
    and $fe
    and b
    inc c
    ld [c], a
    and h
    ld bc, $bfcc
    rst $38
    rst $38
    rst $38
    rst $38
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
    and $00
    nop
    nop
    db $10
    ld d, c
    db $10
    ld e, c
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
    dec b
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr z, jr_052_5122

jr_052_5122:
    nop
    nop
    sub b
    nop
    nop
    nop
    push af
    nop
    ret z

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rla
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld d, b
    nop
    nop
    nop
    ret z

    nop
    nop
    nop
    ld [$9000], a
    nop
    nop
    nop
    nop
    nop
    nop

Call_052_5151:
    nop
    nop
    nop
    ld bc, $0000
    nop
    cpl
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    and b
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    call nc, Call_000_2000
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld b, $00
    nop
    nop
    dec b
    nop
    ld b, b
    nop
    nop
    nop
    or d
    nop
    nop
    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    nop
    inc c
    nop
    nop
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$bc]
    rst $38

jr_052_51d2:
    add sp, -$01
    add c
    cp $08
    ldh a, [rNR41]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_052_51e0:
    ld a, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    add c
    inc a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_052_51d2

    add b
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    jr nz, jr_052_51e0

    rst $38
    rst $38

jr_052_5222:
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    add c
    inc a
    ld [$0000], sp
    nop
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    ld hl, sp-$1c
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38

jr_052_5252:
    or $ff
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    jr nz, jr_052_5222

    nop
    add b
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

jr_052_526e:
    nop
    nop
    nop
    ret nz

    nop
    add b
    add b
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
    ret nz

    ld b, b
    add b
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
    jr nz, jr_052_5252

    nop
    add b
    add b
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
    db $ec
    rst $38
    ld sp, hl
    cp $e6
    ld hl, sp+$48
    ldh a, [$d0]
    ldh [$a8], a
    ret nz

    jr nz, jr_052_526e

    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rla
    rrca
    ld [de], a
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    rla
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    jp Jump_000_3c3c


    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ret nz

    add b
    jr nz, @-$3e

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld d, b
    add b
    ld b, b
    add b
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    jp Jump_000_3c3c


    nop
    ld b, b
    nop
    nop
    nop
    xor b
    ldh a, [$ea]
    ldh a, [$f4]
    ld hl, sp-$2c
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp-$48
    ldh a, [$e8]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$f9fc], a
    cp $fd
    cp $f4
    rst $38
    ld c, b
    add b
    add b
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
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    add b
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

Jump_052_537f:
    nop
    add b
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
    db $ed
    cp $fe
    ld hl, sp-$18
    ldh a, [rHDMA2]
    ldh [$e8], a
    ret nz

    ret nz

    add b
    ld d, b
    add b
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    jr nz, jr_052_53ba

jr_052_53ba:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    xor a
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    or a
    rra
    ccf
    rra
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    rlca
    rla
    inc bc
    dec b
    inc bc
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    rst $18
    inc a
    inc a
    nop
    ld b, d
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
    add b
    nop
    and b
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    nop
    add b
    nop
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ei
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    or b
    ldh [$f4], a
    ldh [$f8], a
    ldh a, [$d8]
    ldh a, [$f8]
    ldh a, [$e8]
    ldh a, [$b4]
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    ei
    rst $20
    ld h, [hl]
    add c
    sub c
    nop
    db $fd
    cp $f6
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    db $fc
    cp $fc
    push af
    cp $20
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
    nop
    nop
    nop
    nop
    add b
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
    and b
    nop
    nop
    nop
    add b
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
    ld [bc], a
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    nop
    add b
    add b
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $c385


    inc b
    add e
    ld b, c
    add e
    ld [bc], a
    add c
    nop
    add b
    nop
    add b
    and b
    ret nz

    add b
    ret nz

    ret nc

    ldh [$64], a
    ldh a, [$f0]
    db $fc
    call c, Call_000_1eff
    rst $38
    ld b, c
    ld e, $0c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_052_54dc

jr_052_54dc:
    add d
    ld a, b
    ld e, b
    rst $38
    nop
    ret nz

    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    or $ff
    db $fc
    rst $38
    or b
    rst $38
    pop hl
    cp $80
    ld hl, sp+$08
    ldh a, [rSC]
    db $fc
    and b
    rst $38
    ld sp, hl
    rst $38
    ret nc

    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ld b, h
    ei
    ret nz

    di
    add d
    pop af
    db $10
    pop hl
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    dec bc
    ld a, a
    rrca
    ccf
    rlca
    rst $38
    ld e, a
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
    ld [bc], a
    nop
    ld [$0007], sp
    rra
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    or $ff
    db $fc
    rst $38
    or e
    db $fc
    db $e4
    ld hl, sp-$68
    ldh [$30], a
    ret nz

    ld c, $f0
    and c
    cp $f9
    rst $38
    ret nc

    rst $38
    push af
    ei
    db $ec
    di
    ld c, d
    pop af
    jp nc, $a2e1

    pop bc

jr_052_555e:
    ld hl, $2fc0
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld e, a
    ccf
    ld c, e
    ccf
    rst $28
    rra
    rlca
    rst $38
    ld e, a
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
    inc de
    nop
    inc c
    inc bc
    db $10
    rrca
    and b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    nop
    or $ff
    db $fd
    cp $b6
    ld hl, sp-$17
    ldh a, [$b0]
    ret nz

    ld b, h
    add b
    jr c, jr_052_555e

    and a
    ld hl, sp-$07
    rst $38
    call nc, $fbfb
    pop af
    ld [$52f1], a
    pop hl
    push hl
    ret nz

    and c
    ret nz

    ld d, c
    add b
    xor a
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    cp a
    rra
    dec hl
    rra
    rra
    rrca
    rst $30
    rrca
    ld e, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $1600
    ld bc, $0708
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_052_5642:
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
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld b, $02
    nop
    rrca
    ld [$0002], sp
    rrca
    ld b, $02
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    rst $38
    nop
    ld a, [bc]
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $28
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $ff
    ld bc, $0337
    ld de, $3a1e
    inc bc
    ld de, $ff1e
    ld [bc], a
    dec a
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $3f
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $ff
    ld bc, $6bfe
    ld e, c
    sbc e
    ld e, c
    inc bc
    ld h, h
    inc bc
    ld h, [hl]
    db $eb
    ld h, a
    sub h
    ld bc, $029f
    db $ec
    dec de
    add [hl]
    ld [bc], a
    rst $38
    ld a, a
    ld a, [c]
    inc sp
    db $ec
    dec de
    add [hl]
    ld [bc], a
    ret nz

    ld a, l
    ldh [$7f], a
    ld [de], a
    ld bc, $0286
    rst $38
    ld a, a
    db $ec
    dec de
    add [hl]
    ld [bc], a
    add hl, hl
    dec b
    dec l
    ld [bc], a
    ld d, d
    inc bc
    rst $18
    nop
    add hl, hl
    dec b
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_052_599a:
    dec h
    push de

jr_052_599c:
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, jr_052_599a

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    cp $42
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    cp h
    ld a, a
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_052_599c

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rst $38
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    rst $38
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $ff07
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    rst $20
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [rNR41], a
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$0b], a
    db $f4
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$c0e3], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    rst $38
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    ld a, a
    add e
    dec b

Jump_052_5a7d:
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [rIE], a
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    rst $38
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    ld a, [hl]
    call nc, Call_052_48c2
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    rst $38
    ld [bc], a
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b
    ld a, a
    nop
    jr nz, jr_052_5aae

jr_052_5aae:
    db $10
    ld [$0400], sp
    or d
    ret nz

    ret nz

    and d
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $e33c


    jp $fd3c


    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    rst $38
    call c, $f11e
    inc a
    db $e3
    ld a, h
    jp Jump_052_7f7c


    jp $9ce3


    jp $18bc


    rst $20
    ld [c], a
    pop hl
    rst $38
    ld a, [de]
    push hl
    ld [de], a
    rst $28
    ld e, a
    cp b
    ld a, a
    ldh [rIE], a
    di
    adc h
    inc de
    rst $28
    rra
    ld hl, sp-$04
    ld h, e
    cp a
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    call nz, $98e1
    rst $38
    rst $20
    db $fc
    ld b, e
    call c, $f863
    daa
    ld l, b
    rst $38
    or a
    ld l, h
    sub e
    db $fc
    inc de
    add sp, $17
    ld hl, sp-$01
    rrca
    sbc $25
    inc a
    rst $00
    ld a, $c3
    ccf
    rst $38
    jp nz, $c13e

    jp $c33d


    dec a
    cp e
    rst $30
    rst $10
    rst $38
    nop
    and b
    jp hl


    jp $c3bc


    cp h
    ret


    ld a, h
    jp nz, $bee0

    pop hl
    ld b, e
    db $f4
    ldh [$a0], a
    pop hl
    nop
    rst $38
    cp a
    db $dd
    db $eb
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    rst $38
    rrca
    ldh a, [rNR32]
    db $e3
    inc e
    di
    inc e
    db $e3
    rst $38
    inc c
    di
    ccf
    ret nc

    dec de
    db $f4
    ld d, a
    rst $38
    ld e, a
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    ld [hl], b
    ldh [$fc], a
    ld [hl], b
    ld [c], a
    rst $38
    ei
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    or a
    ld d, a
    rst $38
    cp a
    ld h, a
    and b
    di
    adc h
    ld hl, sp-$1f
    ld a, h
    db $fd
    db $e3
    ld [hl], b
    rst $20
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $38
    rst $30
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    rst $38
    push af
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    di
    ccf
    jp $e06e


    ld [hl], b
    ld [c], a
    db $ed
    rst $38
    db $d3
    inc a
    dec sp
    ld a, [hl]
    add c
    ld [hl], b
    jp hl


    db $e3
    sbc h
    cp h
    inc d
    ldh [rBCPD], a
    ldh [$eb], a
    jp $1063


    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    db $d3
    ld sp, hl
    rst $28
    ld c, d
    pop hl
    db $e4
    pop bc
    cp e
    db $f4
    ld e, e
    db $f4
    xor h
    rst $38
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    di
    cp e
    rst $38
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    cp d
    cp a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $58
    and b
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    ld l, a
    adc [hl]
    ldh [$af], a
    ld a, a
    or l
    rst $08
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld b, [hl]
    and b
    ret nc

    jp $e718


    cp $f8
    push hl
    ld d, a
    rst $38
    xor h
    rst $38
    ld [hl], h
    ei
    cp b
    ld l, a
    rst $20
    ld e, b
    rst $20
    db $fc
    dec b
    ldh [$98], a
    rst $20
    ld b, b
    rst $20
    rst $18
    cp d
    rst $38
    db $ec
    di
    sbc b
    ldh [$e0], a
    cp d
    rst $38
    jp hl


    ld l, h
    ld hl, sp-$20
    ret z

    push hl
    rst $28
    ld h, $e0
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    ld d, $ff
    dec sp
    rst $38
    dec d
    rst $38
    rst $38
    ld a, [de]
    rst $28
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $38
    rst $20
    ld a, [de]
    rst $20
    dec a
    jp $c33f


    add hl, de
    db $db
    rst $20
    rst $10
    db $e4
    add b
    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    adc d
    ld b, d
    pop hl
    ret c

    and b
    ldh [$bc], a
    sbc $c0
    or b
    pop hl
    ld b, b
    pop hl
    set 7, [hl]
    ld a, b
    and $b0
    rst $38
    ld d, h
    ei
    and h
    ei
    ld a, b
    rst $38
    rst $30
    xor b
    rst $30
    ld h, h
    ei
    or h
    ei
    ret nc

    rst $38
    rst $38
    pop bc
    rst $38
    or a
    rst $38
    ld e, l
    rst $38
    ld [$3e54], a
    ldh [$3a], a
    add c
    rst $38
    sub h
    add b
    ld d, a
    ld a, $e0
    dec [hl]
    ld a, [hl-]
    ldh [$f6], a
    xor [hl]
    ret nz

    rst $38
    rst $10
    ld hl, $ff83
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    sbc h
    ret nz

    call c, $afe1
    rst $38
    rst $18
    adc $e0
    rst $18
    ld hl, sp-$1a
    inc d
    rst $38
    push hl
    sbc $e5
    ld e, a
    jp z, Jump_052_6fe0

    add $e0
    ld hl, sp-$1b
    ldh [$63], a
    jp z, $e1f8

    ld e, a
    sub [hl]
    ldh [$5f], a
    ret nc

    and $c7
    push hl
    ld l, c
    rst $38
    rst $38
    call nc, $81fc
    ldh a, [rDMA]
    ldh [$8b], a
    ret nz

    ld a, a
    ld d, a
    ret nz

    dec e
    add b
    xor a
    add b
    db $fd
    xor a
    ld h, b
    db $fd
    jp c, $8048

    and b
    db $fc
    ld b, c
    ldh a, [$0b]
    ret nz

    ei
    ld d, $00
    ld hl, sp-$1f
    ld a, [bc]
    ret nz

    rla
    nop
    cp l
    rst $30
    nop
    ld l, a
    nop
    push de
    ld h, b
    nop
    ld hl, sp-$02
    db $f4
    rst $38
    cp $d8
    db $fc
    pop af
    db $fc
    ld [c], a
    ld hl, sp-$2f
    rst $38
    ld hl, sp+$63
    ldh a, [$c6]
    ldh a, [$8b]
    ldh [rBGP], a
    rst $38
    ldh [$8f], a
    ret nz

    dec de
    ret nz

    cpl
    add b
    rra
    rst $38
    add b
    scf
    nop
    ld e, a
    nop
    inc h
    inc a
    ld b, d
    cp a
    nop
    xor l
    nop
    rst $30
    nop
    ld a, l
    jp nc, $ffe2

    push af
    nop
    db $ec
    pop hl
    cp a
    db $e4
    ldh [$2f], a
    add b
    cp a
    add b
    rst $18
    ld d, a
    nop
    ccf
    nop
    push af
    ld a, $e0
    ld b, l
    rst $38
    rst $38
    nop
    rst $00
    stop
    ld l, l
    nop
    cp e
    nop
    rst $38
    rst $28
    nop
    rst $20
    ldh a, [rSCX]
    ldh a, [$e5]
    ldh a, [rIE]
    ld b, a
    ldh [$8a], a
    ldh [$c7], a
    ldh [$a5], a
    ldh a, [$eb]
    jp $30f0


    ld h, e
    rst $18
    ld l, $60
    xor l
    rst $38
    ld b, d
    rst $38
    rst $38
    nop
    jp $fffc


    ld a, [$fcff]
    sbc $8c
    ldh [$f8], a
    cp $ec
    cp $f6
    ldh [rIE], a
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    ld c, a
    rst $38
    ldh [$87], a
    ldh a, [$d5]
    db $fc
    ld l, c
    rst $38
    ccf
    rst $38
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    db $f4
    add $4a
    ldh [rIE], a
    rst $38
    ld b, d
    ldh [$88], a
    db $e4
    add sp, -$1b
    db $e3
    rrca
    rst $38
    and $0f
    rr a
    rst $00
    rra
    adc a
    ccf
    rst $30
    sbc e
    ccf
    cpl
    db $fc
    ld b, b
    cp $00
    cp $00
    rst $38
    db $fc
    ld bc, $01fc
    ld hl, sp+$03

jr_052_5d9b:
    ld sp, hl
    inc bc
    rst $08
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    inc h
    pop hl
    db $d3
    nop
    ld e, a
    ld b, d
    ld a, [hl]
    cp $00
    rst $38
    ld [c], a
    ldh [$fe], a
    sbc $e0
    rst $08
    db $fc
    ld bc, $01ff
    ld a, [c]
    ldh [$0a], a
    ld [c], a
    inc a
    nop
    rst $30
    nop
    rst $00
    ld b, l
    add h
    ret nz

    push af
    rst $38
    rst $20
    rrca
    rst $28
    ld [c], a
    rrca
    rst $30
    rrca
    add $e1
    di
    rlca
    push hl
    cp a
    rrca
    db $e3
    rrca
    jr jr_052_5d9b

    ld b, d
    ld d, [hl]
    ldh [$f7], a
    ld [$c676], a
    ccf
    ld a, [hl]
    ret nz

    ccf
    add b
    and b
    sbc a
    ld a, a
    scf
    db $fd
    ld a, a
    or $e0
    rst $38
    ld [$5500], sp
    nop
    cp [hl]
    ld [hl], h
    ldh a, [$c0]
    ld l, b
    push hl
    ld e, a
    db $fc
    ret nz

    ld a, a
    nop
    xor a
    db $fc
    ldh [$9d], a
    ccf
    db $f4
    ld [c], a
    ld de, $2a80
    call nc, $f0c0
    push hl
    cp a
    ldh a, [$fa]
    db $e4
    ld l, d
    jp hl


    db $f4
    db $eb
    nop
    add e
    dec de
    db $e4
    dec d
    xor $ff
    dec l
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    xor d
    rst $18
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    ld [bc], a
    rst $38
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    ld a, [bc]
    rst $38
    adc e
    jr nz, @+$24

    nop
    db $dd
    nop
    cp l
    ld b, d
    cp $08
    and c
    ld d, $a9
    add sp, $03
    add l
    ld [hl+], a
    ld a, [hl+]
    rst $38
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    add hl, de
    ei

jr_052_5e51:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    ld [$f7ff], sp
    call z, $90fb
    ld l, a
    ld a, [hl+]
    rst $38
    rra
    rst $38
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    ld hl, sp-$09
    rlca
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, $ff3f
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    jp $d0fe


    pop hl
    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_052_5e51

    ld d, d
    rst $38
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    ld a, [de]
    rst $38
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    ld l, l
    rst $38
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    ld c, [hl]
    rst $38
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    ld d, a
    rst $38
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    dec hl
    sbc $90
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    call nz, $f3ff
    or h
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    ld a, [hl-]
    rst $38
    rst $18
    ld c, l
    rst $38
    or h
    rst $38
    ld a, d
    rst $38
    xor b
    ei
    rst $38
    ld [hl], h
    cp [hl]
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    cp $70
    add [hl]
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    xor a
    db $fd
    ld [hl], a
    ei
    and d
    or b
    ld h, b
    dec c
    xor h
    ld h, b
    ld a, [bc]
    rst $38
    rst $38
    ld h, a
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    ld a, [$e0de]
    cp $1c
    add b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    rst $38
    sbc e
    ld [hl+], a
    rst $38

jr_052_5f15:
    ld a, e
    rst $38
    or [hl]
    rst $38
    ld e, [hl]
    ei
    rst $38
    cp e
    add h
    ld h, b
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp e
    cp a
    ld d, a
    ld [hl], b

jr_052_5f28:
    ldh [$6d], a
    cp a
    ld e, $70
    ldh [rHDMA2], a
    rst $38
    db $fd
    xor $f9
    ld c, c
    or $a7
    ld hl, sp+$47
    rst $38
    ldh a, [$b4]
    ret


    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rst $38
    rra
    ld c, d
    cp a
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    rst $30
    ld [c], a
    jr c, jr_052_5f15

    nop
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp a
    cp $01
    xor b
    rlca
    ld a, b
    add a
    db $10
    db $e3

jr_052_5f5d:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_052_5f28

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_052_61d8

    cpl
    sub b
    ld sp, hl
    nop
    rst $38
    adc d
    ld hl, $0728
    ret c

    rlca
    cp h
    ld b, e
    db $fc
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    db $fd
    ld bc, $0dfe
    ldh a, [rIE]
    ld [bc], a
    db $fd
    ld a, [hl+]
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    rst $38
    ld e, a
    add b
    xor c
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    cp a
    sbc a
    jr nz, jr_052_5f5d

    ld [bc], a
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    rst $38
    or l
    db $f4
    dec bc
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    ld e, a
    add b
    inc c
    di
    rlca
    ld hl, sp-$41
    and c
    add b
    sbc [hl]
    nop
    db $ed
    and b
    sbc d
    nop
    ld l, b
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    rst $20
    nop
    ld l, $d1
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $fc
    sub b
    call nz, $e3d0
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    rst $10
    ld e, d
    and c
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b
    ret nz

    ld d, l
    cp a
    ei
    adc [hl]
    ld a, a
    sub b
    jp z, $5ac8

    and c
    inc a
    jp Jump_052_537f


    xor [hl]
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    cp $6b
    add c
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    rst $38
    or b
    rst $18
    rst $28
    call z, $a4f3
    ei
    sub b
    rst $08
    inc bc
    rst $38
    and a
    dec b
    rst $38
    ld [bc], a
    add hl, de
    and [hl]
    sub b
    call $9053
    ret nz

    ld [hl], l
    xor [hl]
    sub b
    ret z

    ld [hl], a
    adc b
    call z, $ca90
    scf
    sub b
    call z, Call_052_6e4e
    sub b
    adc $ae
    ld sp, hl
    ld a, c
    sub b
    ret z

    cp a
    ld e, a
    sub b
    jp Jump_000_1def


    ld [c], a
    ld [$00f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    rst $28
    ld h, c
    ld a, [hl]
    add c
    add sp, $10
    and $61
    ld e, $95
    sbc $90
    ret nz

    add hl, sp
    jp nz, $f00f

    rst $18
    ld h, e
    ld d, a
    xor b
    rst $38
    ei
    nop
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    cp $cf
    ld h, e
    inc c
    rst $30
    reti


    ld l, a
    ld [$63ff], sp
    rst $38
    cp l
    sub $6b
    ld l, d
    rst $18
    jr nc, @-$1f

    ld d, e
    rst $38
    db $fd
    nop
    rst $38
    ld e, l
    rst $20
    ld [$40ff], sp
    ld l, a
    cp a
    ld l, h
    or a
    ld c, b
    cp h
    ret nz

    ld b, b
    rst $38
    inc h
    dec b
    call c, $ffff
    db $e4
    db $e3
    ld d, l
    nop
    cp d
    ld a, [hl]
    add b
    xor e
    nop
    rst $10
    ld e, l
    nop
    ld [$8076], a
    xor [hl]
    ld [hl], d
    add b
    adc d
    nop
    rst $30
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    nop
    dec d
    nop
    rst $38
    xor b
    nop
    ld d, c
    nop
    ld [$2200], sp
    nop
    ld a, a
    sub h
    nop
    add hl, hl
    nop
    ld b, h
    nop
    db $10
    db $e4
    ldh [$75], a
    nop
    ld d, e
    nop
    ld bc, $0074
    jr nz, jr_052_60c2

jr_052_60c2:
    add b
    ld l, [hl]
    nop
    cp $a0
    ldh a, [rNR23]
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    rst $38
    ld a, b
    db $fc
    inc a
    cp $80
    ld a, h
    ld h, h
    nop
    rst $38
    nop
    ld [$3e1c], sp
    ld [hl], $7f
    and [hl]
    ld a, a
    sbc a
    add h
    ld l, a
    ld b, b
    ld c, $08
    jr nc, jr_052_60ea

    inc a

jr_052_60ea:
    and b
    ld b, $bf
    rst $38
    inc b
    rst $38
    rlca
    db $fc
    dec sp
    ld l, c
    nop
    ld c, h
    rst $38
    di
    ld [hl], a
    rst $38
    sbc c
    rst $38
    ld b, [hl]
    cp c
    rst $28
    rst $38
    db $10
    rst $38
    nop
    ld h, [hl]
    sbc c
    nop
    rst $38
    ld h, [hl]
    ld a, [hl]
    ld b, $a0
    cp l
    jp $c7b9


    inc de
    rst $28
    ld hl, sp-$1f
    rst $38
    cp l
    jp $e71b


    db $fc
    rst $38
    db $fd
    cp $ff
    pop af
    cp $f3
    db $fc
    jp $dcfc


    db $e3
    rst $28
    dec e
    db $e3
    ld a, $c3
    ld e, a
    ld c, l
    reti


    sbc a
    sbc l
    rst $38
    ld c, a
    ld h, $17
    and e
    di
    db $db
    pop hl
    ld l, [hl]
    rst $38
    pop af
    inc [hl]
    ei
    cp c
    rst $18
    reti


    sbc a
    sbc h
    rst $30
    ld c, a
    daa
    ld d, $f0
    push hl
    reti


    rst $38
    rst $20
    jr @+$01

    jp $e724


Jump_052_614f:
    inc h
    rst $38
    inc a
    db $db
    inc a
    ei
    rst $20
    jr jr_052_61b8

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    rst $38
    ret nz

    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    rst $38
    sub c
    adc e
    ld h, b
    ld d, $a9
    pop hl

jr_052_616e:
    dec bc
    adc d
    rst $38
    daa
    daa
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    db $fc
    ld b, [hl]
    add b
    ldh a, [rTAC]
    inc h

Jump_052_617f:
    db $db
    inc c
    rst $30
    ld [hl], $cf

jr_052_6184:
    rst $38
    jr jr_052_616e

    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    rst $38
    ei
    nop
    inc e
    inc bc
    cp a

jr_052_6193:
    nop
    sbc c
    ld h, [hl]
    ld a, $08
    ld hl, $c23d
    jr jr_052_6184

    add hl, de
    nop
    inc h
    ldh [$61], a
    sbc a
    ld d, [hl]
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    ld h, b
    add h
    ld d, b
    and e
    ld de, $efff
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    db $fd
    rst $10

jr_052_61b8:
    or b
    ld h, l
    jr z, jr_052_6193

    ld b, h
    ei
    or h
    rst $38
    rst $38
    ret nc

    rst $38
    db $db
    inc a
    rst $00
    inc l
    xor l
    ld l, [hl]
    rst $38
    sub e
    ld c, [hl]
    rst $08
    ld b, [hl]
    ld a, [de]
    rst $08
    ld hl, $ff9f
    adc a
    add e
    rra
    rst $00
    db $d3

Jump_052_61d8:
    ld l, [hl]
    cp l
    ld a, [hl]
    rst $38
    db $eb
    inc a
    rst $38
    ld l, $ef
    cpl
    rst $18
    ccf
    rst $38
    cp $0f
    jr @+$01

    inc b
    rst $28
    inc l
    rst $28
    rst $28
    ld [de], a
    rst $08
    ld c, [hl]
    rst $00
    ldh [$e5], a
    ld d, d
    rst $28
    inc a
    rst $38
    rst $38
    jr z, @+$01

    ld a, $ef
    cpl
    rst $28
    rra
    db $e3
    rst $38
    ld c, $20
    rst $18
    rst $38

jr_052_6206:
    rst $38
    ei
    ld_long a, $ffab
    dec b
    rst $38
    cp $ab
    db $fc
    dec c

jr_052_6211:
    ld a, [$fdb2]
    ld d, l
    rst $38
    ld [$d7a8], a
    db $f4
    adc e
    or b
    rrca
    sbc $bf
    ld a, a
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld e, $e0
    xor d
    ld e, a
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    jr nc, jr_052_6211

    ld e, b
    ld h, b
    ld h, [hl]
    ld a, [$4b90]
    dec hl
    ret nc

    ld c, b
    inc a
    inc bc
    add h
    ld [hl], e
    or h
    ld sp, hl
    db $eb
    pop hl
    xor [hl]
    jr z, jr_052_62a6

    add hl, de
    rst $20
    rla
    xor $3f
    cp a
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [hl+]
    nop
    jp c, $c8fe

    jr nz, jr_052_6206

    cp $df
    ld hl, sp+$6f
    ld hl, sp-$21
    push af
    ldh a, [rSCX]
    ld b, b
    inc a
    and [hl]
    ld b, c
    ccf
    jp $c73e


    rst $28
    db $dd
    cpl
    jp c, $f02f

    push hl
    dec a
    jp Jump_000_1f3c


    rst $00
    ret nc

    cpl
    ret c

    cpl
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    rst $30
    rra
    and $39
    ret


    cp c
    ld c, c
    ld e, a
    rra
    xor a
    ld d, [hl]
    rst $28
    cp b
    rst $20
    ld b, b
    ld b, c
    adc $ff
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    add sp, -$19
    ld hl, sp-$08
    db $e3
    ldh [$cf], a
    ret nz

    rst $38
    sbc a
    add b
    cp a
    add b
    ld a, $00

jr_052_62a6:
    ld l, e
    nop
    rst $38
    ld a, [hl]
    nop
    rra
    rra
    rst $00
    rlca
    di
    inc bc
    ld a, a
    xor c
    ld bc, $01f5
    and b
    nop
    jp nc, $806c

    rst $38
    ld d, l
    nop
    jr z, jr_052_62c0

jr_052_62c0:
    add b
    add b
    jp hl


    jp hl


    rst $18
    rst $30
    rst $38
    ld [c], a
    rst $38
    db $fc
    ld e, h
    ld h, b
    nop
    nop
    rst $38
    dec d
    dec d
    xor e
    xor e
    ld a, a
    ld a, a
    rst $18
    rst $38
    rst $30
    rst $28
    rst $38
    ld a, a
    call $fb82
    rst $30
    jp hl


    rst $30
    rst $38
    ld sp, hl
    rst $20
    jp z, $f1f7

    rst $08
    xor b
    rst $10
    ei
    ldh a, [$8f]
    or c
    adc e
    rst $30
    rst $28
    xor c
    rst $10
    ldh [rIE], a
    sbc a
    ld d, d
    xor a
    pop hl
    rra
    dec hl
    rst $10
    pop af
    rst $38
    adc a
    and e
    rst $18
    push de
    rst $28
    ld d, a
    rst $28
    di
    rst $38
    rst $08
    sub a
    rst $28
    db $e3
    sbc a
    pop de
    xor a
    ld h, e
    ccf
    sbc a
    push bc
    ccf
    ld h, e
    sbc a
    rst $30
    jp c, Jump_052_4ee1

    ret nz

    rst $18
    rst $30
    rst $38
    ld d, d
    rst $38
    db $ed
    ld a, l
    add b
    add l
    rst $38
    ld e, a
    xor e
    rst $18
    rst $28
    rst $38
    ei
    ldh [rLCDC], a
    ld [bc], a
    nop
    and b
    db $fd
    xor a
    ld l, d
    add h
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$01
    di
    ldh a, [$e7]
    ldh [rIE], a
    rst $38
    jp $c9c3


    jr jr_052_639d

    ldh [$84], a
    add c
    xor $5e
    ld bc, $8249
    ld a, a
    ld a, a
    rst $38
    ccf
    ccf
    sbc a
    rra
    rst $08
    rrca
    ld h, a
    rlca
    cp [hl]
    ret nc

    jp hl


    ld a, [c]
    ldh a, [$e0]
    ldh [$cb], a
    inc h
    ldh [$2f], a
    rst $38
    nop
    ld e, a
    nop
    or a
    nop
    ld e, [hl]
    nop
    ccf
    rst $28
    nop
    ld d, a
    nop
    rst $28
    ld d, [hl]
    nop
    ld l, d
    nop
    call c, Call_052_6eee
    ld h, b
    call nc, $8800
    ld h, [hl]
    ld h, b
    sub e
    inc bc
    ld c, c
    cp $16
    ldh [rDIV], a
    inc b
    adc e
    dec bc
    daa
    daa
    ld a, [bc]
    rst $30
    ld a, [bc]
    ld d, a
    ld d, a
    rst $30
    ld h, l
    ld a, a
    ld a, a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ret nc

    ret nc

    and b

jr_052_639d:
    and b
    rst $38
    call nz, $aac4
    xor d
    push af
    push af
    sbc $de
    cp $de
    ld h, c
    xor l
    nop
    rlca
    nop
    ld a, [bc]
    nop
    add l
    rst $38
    add b
    nop
    nop
    xor b
    xor b
    push de
    push de
    ld a, d
    rst $28
    ld a, d
    adc b
    nop
    ld [bc], a
    cp b
    ldh [rNR42], a
    ld hl, $7f0a
    ld a, [bc]
    and l
    and l
    ld e, e
    ld e, e
    push hl
    push hl
    db $e4
    pop bc
    ei
    xor a
    xor a
    jp nz, $fbe3

    ei
    ld e, [hl]
    ld e, [hl]
    rst $30
    rst $38
    rst $30
    db $fd
    db $fd
    db $eb
    db $eb
    ld a, l
    ld a, l
    xor a
    rlca
    xor a
    ld e, e
    ld e, e
    sbc [hl]
    ld h, c
    ld l, [hl]
    rst $18
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
    ld hl, sp-$09
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
    nop
    nop
    nop
    nop
    nop
    ld a, l
    inc sp
    rst $38
    db $ec
    ld de, $1113
    inc sp
    inc de
    ld hl, sp-$1f
    ld b, [hl]
    rst $38
    pop hl
    inc de
    inc de
    ldh a, [$e0]
    ld a, [c]
    pop hl
    ldh a, [$e1]
    ld sp, $e0fe
    dec [hl]
    inc sp
    cp $e1
    ld sp, $e0fe
    inc sp
    ld sp, $e3e9
    pop bc
    ldh [rNR42], a
    inc de
    ret nc

    and $c0
    ld [c], a
    cp $e5
    cp a
    db $e3
    ld sp, $e1ba
    xor h
    ldh [rNR23], a
    db $e4
    ld [c], a
    db $fc
    ld sp, hl
    cp d
    ldh [$31], a
    inc de
    and [hl]
    ld [c], a
    adc h
    ldh [$7a], a
    ldh [$88], a
    sub h
    ldh [$72], a
    ld [c], a
    ld h, b
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [$66]
    ld a, $ff
    db $e4
    nop
    ld b, $06
    ld h, [hl]
    ld b, $f8
    pop hl
    rst $38
    pop hl
    cp h
    ldh a, [$e1]
    rst $20
    db $e4
    ld h, b
    nop
    ld h, b
    nop
    di
    ldh [rP1], a
    add e
    ld h, [hl]
    ld h, b
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    db $dd
    ld [c], a
    rst $10
    pop hl
    sbc c
    ld l, a
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub [hl]
    xor e
    ldh [rNR11], a
    sbc c
    rst $38
    ldh [$78], a
    and e
    ldh [$fc], a
    pop hl
    sbc h
    pop hl
    ld l, c
    sub c
    ld l, c
    sub c
    di
    ldh [rTAC], a
    sbc c
    ld h, [hl]
    ld l, c
    cp $e0
    ldh a, [$e1]
    db $db
    pop hl
    add e
    ld [c], a
    ret nc

    db $e3
    ld d, b
    pop de
    db $e4
    db $dd
    ld [c], a
    db $fc
    ld [c], a
    ret nz

    ldh [rNR24], a
    ld a, e
    ret nz

    sbc c
    cp $e1
    rst $20
    sub c
    sbc c
    ld de, $e268
    ld h, e
    ldh [$99], a
    sub b
    sub b
    jp $9000


    ld e, e
    ldh [$a0], a
    ld [c], a
    ldh a, [$e1]
    rst $20
    db $e4
    add hl, bc
    sub c
    dec sp
    add hl, bc
    sub c
    di
    ldh [$99], a

Jump_052_66cf:
    nop
    add hl, bc
    cp $e0
    ldh a, [$e1]
    ret nz

    db $db
    pop hl
    inc sp
    ld [c], a
    ret nc

    db $e3
    pop de
    db $e4
    db $dd
    ld [c], a
    reti


    pop hl
    sub b
    add hl, bc
    ld [de], a
    and b
    ldh [$91], a
    and b
    pop hl
    add $e1
    sbc c
    ld de, $4dc2
    pop hl
    sub b

Jump_052_66f2:
    ld [c], a
    ld h, h
    adc d
    ldh [$f0], a
    pop af
    sub c
    add sp, -$1c
    call nc, Call_000_22e4
    sub d
    cp $e0
    rst $38
    ld de, $1919
    sbc c
    sbc c
    sub d
    sub d
    ld [hl+], a
    db $fc
    db $fc
    pop hl
    rst $38
    pop hl
    ld de, $1999
    sub d
    add hl, de
    sub d
    dec sp
    sbc c
    ld [hl+], a
    ld [c], a
    db $e3
    ld [hl+], a
    ld [hl+], a
    add hl, hl
    jp hl


    db $e3
    db $e4
    ldh [$80], a
    ldh a, [$e3]
    jp hl


    pop bc
    rst $10
    pop hl
    sbc $e1
    jp c, $88e1

    push hl
    adc c
    db $e4
    sbc c
    ld hl, sp-$54
    pop hl
    jp nz, $f8e0

    ldh [$99], a
    sub d
    add hl, de
    sbc c
    ld de, $1939
    add $e3
    pop af
    pop hl
    add hl, hl
    sub c
    add hl, hl
    ld hl, sp-$40
    xor l
    pop hl
    nop
    cp $e0
    cp h
    ld [c], a
    and d
    db $e4
    ldh a, [$e1]
    add h
    ld [c], a
    and h
    ld [c], a
    and a
    db $e4
    dec [hl]
    ld [c], a
    nop
    ret nz

    push bc
    cp d
    ret nz

    ld a, d
    push hl
    cp $fd
    sbc b
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_052_676c:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and $a3
    ld h, a
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $38
    sbc l
    ld h, d
    ld d, l
    rst $38
    rst $20
    ld d, c
    ld d, l
    ld de, $e051
    jr @-$58

    ld c, $ed
    ret nz

    ld a, l
    and b
    ld [hl], l
    jr c, jr_052_67f4

    rla
    ld de, $5f77
    rla
    ld [hl], a
    ld de, $7711
    rst $38
    db $e3
    ld [hl], c
    cp $e4
    db $10
    rst $38
    db $fc
    adc [hl]
    rst $18
    rst $38
    rst $38
    ld e, b
    rst $18
    ld de, $f610

Jump_052_67ae:
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $20
    and $06
    nop
    ld h, [hl]
    ld de, $6619
    add b
    sub [hl]
    ld a, [bc]
    ld [hl], d
    ld h, h
    ld l, c
    ld l, c
    ld h, h
    ld h, b
    ld de, $ff63
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $f4
    di
    ld a, b
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$bf], a
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
    xor b
    adc c
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

jr_052_67f4:
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
    rst $38
    nop
    nop
    dec c
    nop
    db $dd
    dec c
    db $dd
    db $dd
    ld a, e
    db $dd
    xor $ff
    ldh [$de], a
    xor $d0
    nop
    ld hl, sp-$1f
    rst $30
    xor $ee
    nop
    ld hl, sp-$1d
    rst $28
    nop
    rrca
    ldh a, [$7f]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    db $dd
    ldh [rIE], a
    ret nc

    db $dd
    nop
    ret nc

    nop
    rst $38
    rst $38
    rrca
    ld l, $ef
    ldh [rP1], a
    rrca
    cp e
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ldh a, [$e3]
    rst $38
    dec bc
    cp e
    nop
    nop
    or b
    nop
    cp e
    nop
    di
    cp e
    or b
    add sp, -$1b
    xor $e0
    cp e
    nop
    dec bc
    nop
    ld a, l
    nop
    ret nc

    push hl
    cp e
    xor d
    cp e
    xor d
    cp d
    cp $e0
    jp z, $e5ff

    sbc d
    cp $e0
    sbc c
    cp $e1
    cp b
    ld [$bbbb], a
    db $db
    adc b
    adc b
    sbc b
    db $e3
    call z, $88cc
    db $e4
    cp $0f
    ld a, e
    xor $00
    ld l, b
    ldh [$ed], a
    db $dd
    xor $d0
    ld h, c
    ldh [rP1], a
    ld c, b
    rst $38
    ld c, b
    rst $38
    sub b
    ld_long $ff48, a
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld c, $ee
    call $bcee
    rst $38
    ret nc

    cp e
    or b
    xor $e0
    xor $f8
    rrca
    rst $30
    adc c
    add hl, bc
    sbc c
    db $db
    and h
    ldh [$dd], a
    rst $28
    db $dd
    rst $10
    rst $28
    ret nc

    rrca
    ret nz

    ld [c], a
    inc c
    cp d
    pop hl
    db $dd
    ret nc

    or e
    call z, Call_000_10cc
    pop bc
    ld a, [c]
    and d
    ld [$d800], sp
    ldh [$f0], a
    rra
    nop
    adc b
    nop
    sbc c
    sub b
    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld b, e
    ld [$9688], sp
    and d
    and b
    ldh [$9d], a
    and $fe
    and b
    inc c
    ld [c], a
    and h
    ld bc, $bfcc
    rst $38
    rst $38
    rst $38
    rst $38
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
    and $00
    nop
    nop
    jr nc, @+$6b

    jr nc, jr_052_699c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr z, jr_052_6942

jr_052_6942:
    nop
    nop
    sub b
    nop
    nop
    nop
    push af
    nop
    ret z

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rla
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld d, b
    nop
    nop
    nop
    ret z

    nop
    nop
    nop
    ld [$9000], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    cpl
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    and b
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    call nc, Call_000_2000
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld b, $00

jr_052_699c:
    nop
    nop
    dec b
    nop
    ld b, b
    nop
    nop
    nop
    or d
    nop
    nop
    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    nop
    inc c
    nop
    nop
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$bc]
    rst $38

jr_052_69f2:
    add sp, -$01
    add c
    cp $08
    ldh a, [rNR41]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_052_6a00:
    ld a, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    add c
    inc a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_052_69f2

    add b
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    jr nz, jr_052_6a00

    rst $38
    rst $38

jr_052_6a42:
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    add c
    inc a
    ld [$0000], sp
    nop
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    ld hl, sp-$1c
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38

jr_052_6a72:
    or $ff
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    jr nz, jr_052_6a42

    nop
    add b
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

jr_052_6a8e:
    nop
    nop
    nop
    ret nz

    nop
    add b
    add b
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
    ret nz

    ld b, b
    add b
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
    jr nz, jr_052_6a72

    nop
    add b
    add b
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
    db $ec
    rst $38
    ld sp, hl
    cp $e6
    ld hl, sp+$48
    ldh a, [$d0]
    ldh [$a8], a
    ret nz

    jr nz, jr_052_6a8e

    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rla

Jump_052_6b01:
    rrca
    ld [de], a
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    rla
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    jp Jump_000_3c3c


    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ret nz

    add b
    jr nz, @-$3e

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld d, b
    add b
    ld b, b
    add b
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    jp Jump_000_3c3c


    nop
    ld b, b
    nop
    nop
    nop
    xor b
    ldh a, [$ea]
    ldh a, [$f4]
    ld hl, sp-$2c
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp-$48
    ldh a, [$e8]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$f9fc], a
    cp $fd
    cp $f4
    rst $38
    ld c, b
    add b
    add b
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
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    add b
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
    add b
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
    db $ed
    cp $fe
    ld hl, sp-$18
    ldh a, [rHDMA2]
    ldh [$e8], a
    ret nz

    ret nz

    add b
    ld d, b
    add b
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    jr nz, jr_052_6bda

jr_052_6bda:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    xor a
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    or a
    rra
    ccf
    rra
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    rlca
    rla
    inc bc
    dec b
    inc bc
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    rst $18
    inc a
    inc a
    nop
    ld b, d
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
    add b
    nop
    and b
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    nop
    add b
    nop
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ei
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    or b
    ldh [$f4], a
    ldh [$f8], a
    ldh a, [$d8]
    ldh a, [$f8]
    ldh a, [$e8]
    ldh a, [$b4]
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    ei
    rst $20
    ld h, [hl]
    add c
    sub c
    nop
    db $fd
    cp $f6
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    db $fc
    cp $fc
    push af
    cp $20
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
    nop
    nop
    nop
    nop
    add b
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
    and b
    nop
    nop
    nop
    add b
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
    ld [bc], a
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    nop
    add b
    add b
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $c385


    inc b
    add e
    ld b, c
    add e
    ld [bc], a
    add c
    nop
    add b
    nop
    add b
    and b
    ret nz

    add b
    ret nz

    ret nc

    ldh [$64], a
    ldh a, [$f0]
    db $fc
    call c, Call_000_1eff
    rst $38
    ld b, c
    ld e, $0c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_052_6cfc

jr_052_6cfc:
    add d
    ld a, b
    ld e, b
    rst $38
    nop
    ret nz

    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    and b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
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
    nop
    nop

Call_052_6e4e:
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

Call_052_6eee:
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
    nop
    nop

Jump_052_6fe0:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld b, $02
    nop
    rrca
    ld [$0002], sp
    rrca
    ld b, $02
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    rst $38
    nop
    ld a, [bc]
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $28
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $ff
    ld bc, $0337
    ld de, $3a1e
    inc bc
    ld de, $ff1e
    ld [bc], a
    dec a
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $3f
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $ff
    ld bc, $f5fe
    push bc
    push de
    push hl
    ld a, $ff
    ld b, $01
    ld hl, $c330
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld hl, $0401
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_052_71bb

    jp Jump_052_722f


jr_052_71bb:
    add sp, -$02
    ld de, $c332
    push hl
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld d, h
    ld e, l
    ld b, $ff
    ld c, $03
    xor a
    ld hl, $c330
    ld [hl], a
    ld hl, $c338
    ld [hl], a
    inc hl

jr_052_71d7:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_052_7213

    cp $ff
    jr nz, jr_052_71d7

    inc b
    ld a, b
    inc a
    ld [hl], a
    push de
    push hl
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld [de], a
    inc de
    inc de
    push hl
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    ld a, [de]
    inc a
    inc de
    push hl
    push de
    ld d, a
    ld a, $04
    sub c
    ld hl, $c330
    ld e, a
    ld a, d
    ld d, $00
    add hl, de
    add hl, de
    inc hl
    ld [hl], a
    pop de
    pop hl
    inc hl
    dec c
    jr nz, jr_052_71d7

jr_052_7213:
    ld a, c
    or a
    jr z, jr_052_7225

    ld a, $ff
    dec hl
    ld [hl], a
    push hl
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    dec de
    dec de
    ld [de], a

jr_052_7225:
    ld a, $01
    ld hl, $7243
    call Call_000_23e8
    add sp, $02

Jump_052_722f:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7243
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_052_724c

    rst $30
    nop
    inc bc
    ret nz

jr_052_724c:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld hl, $c338

jr_052_725e:
    ld a, [hl]
    cp $ff
    jr z, jr_052_7287

    push hl
    ld l, c
    ld h, $00
    add hl, hl
    ld de, $c330
    add hl, de
    inc hl
    ld a, [hl]
    dec a
    ld [hl], a
    pop hl
    inc hl
    ld b, c
    inc c
    ld d, a
    ld a, c
    cp $04
    jr z, jr_052_7287

    ld a, d
    or a
    jr nz, jr_052_725e

    ld a, b
    call Call_052_7291
    ld a, c
    cp $04
    jr nz, jr_052_725e

jr_052_7287:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_052_7291:
    push af
    push bc
    push de
    push hl
    push af
    add sp, -$01
    ld hl, sp+$00
    ld [hl], a
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [hl]
    ld [$c33c], a

jr_052_72a7:
    ld hl, $0401
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_052_72d9

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_052_72a7

jr_052_72d9:
    ld b, a
    inc hl
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]
    push af
    push bc
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $b000
    add hl, de
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    ld hl, $0400
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, bc
    pop de
    pop bc
    call Call_000_0468
    ld a, [$c33c]
    add $04
    ld [$c33c], a
    pop af
    ld d, a
    add sp, $01
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [$c33c]
    ld [hl+], a
    ld [hl], d
    pop hl
    pop de
    pop bc
    pop af
    ret


    dec sp
    ld [hl], e
    ld l, e
    ld [hl], e
    dec sp
    db $76
    and $77
    ret nz

    rra
    adc d
    inc bc
    add b
    ld [bc], a
    ld h, b
    ld bc, $03ef
    db $f4
    inc bc
    adc d
    inc bc
    add b
    ld [bc], a

Jump_052_734b:
    rra
    ld [bc], a
    ld c, e
    ld c, $38
    ld bc, $038a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    ld c, e
    ld a, [bc]
    dec bc
    ld c, e
    dec bc
    ld l, e
    ld l, e
    ld c, e
    cp $ff
    ldh [$0b], a
    inc l
    inc c
    inc c
    inc l
    inc l
    inc c
    inc l
    ld a, [$fee0]
    ld [c], a
    ld c, h
    ld c, h
    ld sp, hl
    push hl
    ld c, h
    db $ec
    and $f9
    rst $28
    ld b, $c7
    ldh [rOCPD], a
    dec bc
    pop bc
    ld [c], a
    ret nz

    pop hl
    call $bfe0
    and $c0
    add sp, $23
    inc l
    inc l
    cp e
    or $c0
    pop hl
    add c
    ld [c], a
    dec hl
    ld a, a
    db $e4
    pop bc
    and $a2
    ld sp, hl
    and $4c
    ret nz

    db $e3
    ld h, l
    ldh [$7a], a
    ldh a, [$0a]
    add c
    db $e4
    dec bc
    add e
    dec hl
    dec hl
    ccf
    ld [c], a
    add b
    ld a, [c]
    ld [hl-], a
    ld [c], a
    ret nz

    di
    ld b, c
    pop hl
    dec bc
    cp $c1
    ld [c], a
    dec hl
    dec hl
    dec bc
    dec bc
    ld c, h
    ld c, h
    ld l, h
    nop
    add b
    ldh a, [$fe]
    db $e4
    db $fc
    push bc
    rst $18
    call nz, $c3d8
    ld b, a
    ldh [$c0], a
    ldh [$c1], a
    pop hl
    dec e
    ld l, e
    ret nz

    ldh [$0c], a
    ld c, h
    ld l, h
    nop
    pop af
    cp e
    db $e4
    ret nz

    db $d3
    nop
    adc c
    ldh [$82], a
    ld [c], a
    add b
    pop hl
    pop bc
    ret z

    ret nz

    db $eb
    cp e
    db $e3
    add b
    pop de
    jp nz, Jump_000_0be0

    dec bc
    ld c, e
    ld b, e
    pop hl
    dec hl
    scf
    ldh [$c0], a
    rst $28
    ret nz

    jp nz, $e23c

    inc [hl]
    add b
    di
    pop bc
    pop hl
    dec bc
    ld a, $c0
    ld l, e
    ld l, e
    add b
    db $ec
    db $10
    push hl
    nop
    ret nz

    add $fd
    or e
    add c
    ld [c], a
    ret nz

    and b
    dec sp
    ret nz

    add b
    ld [c], a
    nop
    pop de
    ret nz

    call z, $c000
    pop af
    cp a
    ld [c], a
    add b
    pop af
    nop
    jp nz, $c23d

    ld a, a
    push bc
    ld h, b
    and d
    ld l, a
    and [hl]
    ld bc, $812c
    jp nz, $e182

    ret nz

    db $ec
    ret


    pop hl
    ld b, a
    push hl
    cp e
    db $e4
    ld [hl-], a
    or c
    inc hl
    inc l
    ld c, h
    add d
    ret nz

    ld a, h
    and d
    ld hl, sp-$60
    ld l, h
    ld d, l
    and b
    ret nz

    ld [$4420], a
    pop bc
    ld sp, hl
    db $e3
    ld l, a
    and h
    ld [hl-], a
    and e
    ret nz

    jp hl


    inc l
    ld b, d
    pop bc
    ld b, c
    and b
    nop
    add hl, sp
    pop bc
    ld [c], a
    and e
    cp a
    add e
    add a
    call nz, $8bbc
    ld [hl-], a
    and h
    sbc c
    add b
    ld [hl-], a
    and a
    nop
    ld bc, $c0c1
    db $e3
    add h
    and b
    add b
    adc e
    ld a, h
    ret


    ld bc, $32a3
    and h
    ret nz

    db $ed
    nop
    cp h
    and c
    jp nz, $80a3

    adc e
    dec a
    add h
    ld bc, $32a6
    and h
    add c
    add sp, $1d
    db $e4
    nop
    ldh [$c3], a
    di
    push hl
    ld c, d
    db $ec
    ld [hl], l
    add sp, $32
    and e
    ld b, c
    jp hl


    and $66
    rst $10
    ld h, l
    nop
    rst $08
    ld h, h
    or a
    ld h, b
    ld c, e
    add l
    ld bc, $f2a8
    add h
    or c
    ld [hl], c
    and l
    push bc
    rst $08
    ld h, e
    nop
    sbc $c2
    ld c, e
    add l
    jp z, Jump_000_32e6

    and h
    pop bc
    jp nz, Jump_052_676c

    rla
    and a
    call z, Call_000_00e1
    rst $08
    ld h, e
    sbc [hl]
    pop bc
    ld c, d
    db $ec
    ld a, [c]
    ld h, a
    ret nz

    db $ec
    sub b
    res 1, b
    ret


    and l
    add sp, $00
    xor e
    jp z, $cbff

    sub a
    add [hl]
    ld e, c
    and h
    rst $08
    ld h, l
    adc d
    db $ec
    ld [hl-], a
    and a
    cp a
    jp nc, $e500

    push bc
    rrca
    add [hl]
    ret nz

    db $ec
    cp h
    ld b, b
    dec hl
    ret


    add b
    jp nc, $ebc0

    ld c, d
    jp hl


    nop
    ld a, h
    ld b, c
    ld [hl-], a
    and [hl]
    ld b, b
    push af
    ld c, $4c
    ld c, d
    ld [$b680], a
    ret nz

    call $87dc
    nop
    ld a, a
    and a
    ret nz

    xor c
    add b
    and d
    nop
    db $d3
    ld d, [hl]
    ld b, e
    scf
    ret


    and l
    jp z, Jump_052_66f2

    nop
    push af
    inc l
    push hl
    jp hl


    ld c, $48
    add b
    db $eb
    add hl, sp
    ld h, a
    ld sp, $dc2a
    ld h, [hl]
    add b
    ld [$0900], a
    ld b, h
    db $f4
    add l
    ld a, h
    ld b, h
    ld a, [c]
    ld h, [hl]
    ret nz

    ld [$87bf], a
    sbc h
    ld l, b
    adc e
    ld l, e
    nop
    sbc c
    rst $20
    ei
    ld [hl-], a
    ldh [$e8], a
    rst $30
    xor h
    ret nz

    jp z, Jump_052_67ae

    ld b, l
    or e
    ld c, a
    dec b
    nop
    dec hl
    and $40
    jp hl


    rst $30
    inc h
    add h
    jp Jump_052_617f


    add l
    ret nc

    inc e
    adc b
    ld a, [bc]
    adc a
    nop
    adc l
    ld b, b
    ld h, [hl]
    add h
    ld b, c
    xor [hl]
    and c
    ld b, [hl]
    sub d
    db $eb
    ld a, [bc]
    adc e
    ld [hl], c
    add c
    ld a, d
    dec b
    nop
    ld [bc], a
    ld l, b
    ld e, h
    ld c, b
    jp nc, $f7c9

    add a
    xor $a9
    ld a, d
    inc b
    jp nz, $8549

    jp z, Jump_000_1c00

    ret


    ld a, [bc]
    adc a
    ld a, d
    ld d, $18
    ld c, c
    call c, $ae87
    set 0, b
    push bc
    ld [bc], a
    or l
    nop
    add hl, bc
    jp z, Jump_052_4d3f

    xor $a5
    ret nz

    db $fd
    sbc c
    dec bc
    nop
    sra a
    adc d
    nop
    sub e
    nop
    add hl, sp
    ld b, h
    ld hl, sp-$57
    add b
    cp a
    add b
    adc e
    ei
    ld h, $80
    or b
    add e
    ld a, c
    ret nz

    xor $00
    rst $28
    adc c
    jr nz, @-$39

    ld a, d
    ld b, $3b
    rst $30
    ld h, $43
    ld [hl+], a
    ld [bc], a
    call c, Call_052_4107
    dec b
    nop
    inc bc
    ld [hl], d
    xor [hl]
    db $fc
    and b
    xor e
    add b
    rst $28
    rst $08
    ld hl, $40e6
    xor b
    sub $36
    ldh a, [rP1]
    call nz, Call_000_29ae
    db $fd
    ld c, d
    ld h, h
    add d
    ldh a, [$b0]
    reti


    pop hl
    add sp, $2f
    inc hl
    ld h, b
    or $00
    ret nz

    cp $e0
    jp c, $da6d

    ret nz

    rst $38
    sbc $fe
    ret nz

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
    ld c, [hl]
    ld [hl], e
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
    nop
    ld b, l
    ld d, c
    nop
    nop
    nop
    rst $38
    ld e, e
    ld e, d
    ld e, e
    ld e, e
    ld h, b
    ld c, l
    ld b, l
    ld d, h
    cp a
    ld d, l
    ld b, l
    ld c, l
    ld sp, $2008
    rst $38
    db $e3
    nop
    db $fc
    rst $38
    rst $38
    rst $20
    and $5b
    ld e, e
    ld e, e
    ld e, a
    ld sp, $7f39
    ld l, d
    ld l, d
    ld l, d
    ld l, l
    add hl, sp
    ld sp, $c00d
    rst $38
    xor $c0
    pop af
    ld e, [hl]
    ld c, c
    ld c, b
    pop bc
    ldh [$30], a
    ld c, b
    ld c, c

jr_052_766e:
    db $d3
    ld sp, $c00c
    rst $38
    xor $ed
    ld e, d
    add c
    db $e3
    ld l, l
    jr nc, jr_052_76ba

    ld l, l
    ld l, d
    add hl, sp
    ld sp, $2c15
    ret nz

    rst $38
    ld b, b
    xor $f7
    ld e, [hl]
    ld sp, $c152
    ld [c], a
    ld l, d
    ld d, d
    ld sp, $7331
    rla
    jr z, @-$3e

    rst $38
    nop
    db $ed
    ld h, c
    ld sp, $c153
    ld [c], a
    rra
    jr nc, jr_052_76f1

    ld sp, $2a31

jr_052_76a1:
    ld a, a
    ld [c], a
    jp z, $c0ff

    db $ec
    sbc a
    jr nc, jr_052_7715

    ld l, c
    ld l, c
    jr nc, jr_052_766e

    rst $38
    add b

jr_052_76b0:
    jp nc, Jump_000_0760

    ld sp, $5231
    ret nz

    db $e3
    ld b, b
    pop hl

jr_052_76ba:
    ret nz

    rst $38
    db $ed
    db $ec
    pop bc
    ldh [$8b], a
    ld sp, $4052
    and $2b
    ret nz

    rst $38
    db $ed
    db $ec
    pop bc
    ldh [$31], a
    ld de, $c053
    jp $ffc0


    ret nz

    push af
    ld h, a
    ld b, b
    jp nz, $ffc0

    pop af
    ldh a, [$85]
    ld de, $e140
    jr nc, jr_052_76a1

    ld [c], a
    ld b, b
    ret nz

    ret nz

    rst $38
    xor $ed
    ld d, $9f
    dec d
    ld sp, $3931
    jr nc, jr_052_76b0

jr_052_76f1:
    ld [c], a
    ret nz

    and b
    ld d, $fc
    nop
    rst $18
    db $ed
    db $ec
    jr z, @+$19

    ld sp, $4931
    ld c, b
    rrca
    jr nc, jr_052_7733

    ld h, [hl]
    ld l, c
    ld b, b
    and b
    pop bc
    and e
    ret nz

    rst $38
    jp hl


    add sp, $19
    jr nz, @-$40

    pop bc
    ld a, a
    ldh [$66], a
    ld l, c

jr_052_7715:
    add c
    pop hl
    nop
    cp a
    ret nz

    ld a, [c]
    nop
    ld b, b
    add h
    add c
    db $e4
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

jr_052_7733:
    rst $38
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
    db $f4
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_052_7845

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop
    nop
    ld [hl+], a
    ld a, b
    ld d, d
    ld a, b
    db $f4
    ld a, d
    cp l
    ld a, h
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e
    ld bc, $008a
    ldh a, [$03]
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e
    ld bc, $47ff
    ldh a, [rP1]
    ld e, l
    add hl, de
    ld c, h
    inc bc
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_052_7845:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    ld c, d
    ld c, d
    ld c, d
    ld l, d
    dec bc
    dec bc
    dec bc
    ld l, e
    db $fd
    ld c, e
    rst $38
    pop hl
    dec bc
    dec bc
    dec hl
    ld c, d
    ld l, d
    ld l, d
    sbc a
    ld l, d
    inc c
    ld c, h
    inc c
    ld c, h
    db $fd
    db $e4
    ld hl, sp-$20
    inc c
    ld h, d
    di
    pop hl
    inc l
    ld sp, hl
    rst $20
    db $fd
    db $eb
    pop bc
    db $e4
    dec bc
    dec hl
    cp e
    ldh [$e1], a
    dec hl
    cp a
    db $e4
    ret nz

    push hl
    cp c
    ldh [$c2], a
    db $e3
    ld c, h
    inc l
    inc l
    ld h, b
    ld sp, hl
    push hl
    ret nz

    xor $c1
    db $e4
    ret nz

    pop hl
    cp a
    db $e3
    dec bc
    dec bc
    call z, $98e3
    add [hl]
    ldh [$fc], a
    ld [c], a
    add b
    pop hl
    inc l
    inc l
    ld sp, hl
    db $e4
    ld a, [hl]
    xor $6a
    inc bc
    ld a, [bc]
    ld l, e
    pop bc
    ld [c], a
    ret nz

    ld [c], a
    ld a, [hl]
    ld [c], a
    ret nz

    ldh [$82], a
    db $e4
    ld b, b
    add sp, -$50
    ld c, b
    pop hl
    inc [hl]
    pop hl
    ld a, [hl]
    xor $8f
    pop hl
    dec hl
    ld c, e
    ret nz

    push hl
    ld l, e
    ld [bc], a
    ld a, d
    pop hl
    ld l, h
    dec de
    db $e3
    set 4, e
    ccf
    db $e4
    ld sp, hl
    push hl
    ld a, $e1
    ei

jr_052_78d4:
    call nz, $f43a
    jp Jump_000_060a


    pop hl
    dec hl
    dec bc
    ld l, e
    cp a
    jp nz, $e27c

    add b
    ld b, c
    ldh [$c1], a
    push hl
    adc b
    ld [c], a
    jr c, jr_052_78d4

    ret


    and $80
    add sp, $7f
    pop hl
    dec hl
    ld b, b
    ret nz

    add sp, -$7f
    ldh [$c0], a
    rst $00
    ld a, a
    add $7e
    rst $20
    ld b, b
    db $ed
    ld a, [bc]
    ld a, a
    pop hl
    nop
    ld b, b
    push bc
    add c
    db $e4
    add c
    add $38
    call nz, $e63a
    ret nz

    ldh a, [$08]
    ld [c], a
    ld bc, $40c2
    ccf
    db $e3
    adc [hl]
    jp $e4fe


    ld [hl], l
    ret


    ld [hl], d
    call nz, $abfd
    ld a, [bc]
    ret


    jp nz, Jump_052_6b01

    ld b, b
    jp $c2fe


    jp nz, $bea4

    rst $00
    ld a, a
    ld [$adbf], a
    ret


    ld [c], a
    nop
    pop bc
    ldh [rLCDC], a
    jp $e4c0


    ld b, $c6
    ld c, l
    db $e3
    ret nz

Call_052_793f:
    jp z, $a37c

    ld [hl], a
    and [hl]
    ret nz

    ld c, d
    jp $c900


    adc e
    and h
    ret nz

    and l
    ld b, b
    bit 0, b
    xor $2c
    inc l
    nop
    nop
    call $a642
    ld a, l
    push bc
    db $fc
    jp z, $cd3e

    ld h, [hl]
    and b
    rlca
    and c
    nop
    jp $c100


    and d
    ld b, [hl]
    and h
    ld b, c
    and l
    ld b, b
    call $a3bd
    rst $38
    ldh [$7f], a
    and $c7
    jp nz, Jump_052_7fc0

    add c
    cp c
    ret nz

    nop
    push hl
    add l
    xor b
    ld [hl], a
    db $ec
    ret nz

    db $ed
    inc c
    inc l
    ld bc, $4a4c
    and b
    ld [$7aa2], sp
    ret nz

    nop
    push hl
    cp h
    and h
    ld [hl], a
    ldh a, [$0b]
    db $e3
    nop
    db $76
    add [hl]
    dec d
    rst $20
    dec c
    and $c4
    xor c
    or [hl]
    ret nc

    cp d
    add d
    ret nz

    rst $20
    push de
    ld l, a
    nop
    di
    pop af
    or [hl]
    ret


    cp h
    ld l, d
    push de
    ld [hl], b
    ret z

    ld l, l
    or [hl]
    adc $c2
    pop bc
    or $66
    nop
    push de
    ld l, a
    di
    rst $28
    db $f4
    adc h
    ret nz

    jp hl


    push de
    ld [hl], d
    di
    xor $f4
    adc e
    ld a, d
    ld h, b
    nop
    add b
    ret z

    push de
    ld [hl], b
    ret z

    ld l, c
    jp $b445


    ld l, d
    ret nz

    db $eb
    push de
    ld l, l
    ret z

    ld l, c
    nop
    jp z, $f444

    adc e
    ret nz

    call z, $d17c
    rlca
    ld h, [hl]
    jp $f442


    adc l
    add b
    and a
    nop
    ret nz

    add sp, $7c
    call $4641
    ld [hl], l
    ld h, l
    cpl
    and a
    cp a
    xor e
    ld a, h
    push de
    call z, Call_000_0086
    ld a, l
    xor l
    ld hl, sp+$28
    rla
    ld h, a
    ld d, c
    ld c, l
    adc b
    ld c, c
    ld a, a
    call Call_000_2f78
    ld d, c
    ld c, h
    nop
    adc a
    ld c, b
    ld [hl], e
    ld [hl], b
    pop bc
    db $f4
    ld a, h
    jp z, Jump_052_66cf

    ld a, h
    inc h
    ld [hl], e
    ld l, c
    ld b, h
    jp z, $c000

    ret


    ld d, c
    ld c, b
    rst $38
    ld l, c
    ld [hl], e
    ld l, a
    dec e
    adc d
    ld d, c
    ld d, h
    ld sp, hl
    dec b
    ld [hl], e
    ld l, a
    nop
    add h
    xor d
    ldh [$c7], a
    ld d, c
    ld c, b
    jp Jump_052_734b


    ld l, l
    ccf
    and c
    add b
    call z, Call_052_4c51
    nop
    dec c
    adc h
    ld [hl], $09
    add c
    ld l, h
    ld d, a
    add hl, bc
    adc [hl]
    ld [$aacf], a
    ld h, c
    adc d
    ld bc, $0061
    rst $38
    call Call_052_5151
    ld c, h
    ld l, b
    ld l, [hl]
    adc d

jr_052_7a58:
    ld [bc], a
    ld l, c
    add [hl]
    ret


    ld e, l
    xor d
    inc a
    ld [$6100], sp
    sub e
    add b
    db $ec
    jp c, Jump_052_614f

    sub [hl]
    ld b, d
    adc h
    ld a, [hl+]
    jr nc, jr_052_7a58

    ld h, l
    push hl
    or c
    nop
    ld [bc], a
    adc l
    rst $30
    or $c1
    ld h, l
    ld [hl], $0d
    rst $38
    rst $38
    xor b
    ld l, c
    push hl
    xor a
    rst $38
    rst $38
    nop
    xor b
    inc hl
    ld b, h
    add hl, bc
    ret nz

    ret c

    ld a, [hl]
    db $fc
    ld [hl], $0f
    rst $38
    rst $38
    add b
    db $e4
    ld b, $c8
    nop
    jp Jump_052_4094


    rst $38
    push hl
    or [hl]
    rst $38
    rst $38
    ld l, a
    ld b, l
    push hl
    cp b
    ccf
    call c, $0f7f
    nop
    rst $38
    rst $38
    ld [hl], e
    call nc, $bfcd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    reti


    or e
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    db $eb
    call c, $ffff
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
    nop
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
    ld e, h
    ld [hl], e
    nop
    nop
    nop
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    adc h
    ld e, e
    ld h, b
    ld sp, $ff3c
    ld d, h
    ld d, l
    ld d, l
    ld d, h
    inc a
    ld sp, $6031
    push bc
    adc h
    rst $28
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $c1
    db $e4
    ld b, d
    ld l, d
    rrca
    ld l, b
    ld l, b
    ld l, d
    ld b, d
    cp a
    db $e4
    jp z, $c0ff

    add sp, -$3f
    db $e4
    ld l, a
    ld l, d
    ld l, h
    ld l, h
    ld l, d
    cp a
    db $e3
    ld e, h
    ld e, l
    jp z, $eeff

    add sp, -$19
    adc h
    ld e, d
    ld e, a
    add d
    ldh [rBCPD], a
    ld l, c
    ld l, e
    rst $18
    jr nc, jr_052_7b69

    ld l, e
    ld l, c
    ld l, c
    ld a, [hl]
    pop hl
    ld sp, $5c31
    jp z, $e8ff

    rst $20
    ld e, e
    ld e, e
    ld e, [hl]
    ret nz

    db $ed
    dec d
    jp z, $feff

jr_052_7b4e:
    add sp, -$19
    ld e, d
    ld e, e
    ld e, a
    ld sp, $3931
    jr nc, jr_052_7b6e

    ld b, b
    db $e3
    ld l, c
    add hl, sp
    add c
    pop hl
    rla
    jp z, $80ff

    jp hl


    ld a, a
    ldh [rPCM34], a
    ld c, c
    ld c, b
    ld l, d

jr_052_7b69:
    ret nz

    pop bc
    ld l, d
    ld c, b
    ld c, c

jr_052_7b6e:
    add c
    pop hl
    pop af
    ld d, $ca
    rst $38
    ld b, b
    jp hl


    rst $38
    ret nz

    ld sp, $6739
    ld l, b
    ld c, d
    rst $38
    ldh [$67], a
    add c
    db $e3
    jr z, jr_052_7b4e

    rst $38
    add b
    ld [$3f60], a
    ldh [$99], a
    ld h, l
    rst $38
    ld [c], a
    ld b, c
    ld [c], a

jr_052_7b90:
    dec hl
    db $10
    jp z, Jump_000_00ff

    add sp, $5c
    dec hl
    ld e, l
    ld sp, $e040
    ld l, l
    nop
    pop bc
    ld l, l
    ld b, b
    ld [c], a
    ret nz

    rst $38
    jr z, jr_052_7b90

    jp hl


    jp nz, $c0e0

    ret nz

    ld l, l
    nop
    jp $c06d


    pop bc
    ret nz

    rst $38
    ld e, h
    ld [$10e9], a
    pop bc
    inc a
    ld b, d
    ld l, e
    nop
    jp Jump_052_7e6b


    and c
    call z, $ffc0
    ld [$12e9], a
    ld de, $ffc0
    ld a, [$20f9]
    ld d, $e1
    dec d
    cp a
    pop hl
    ld b, b
    and a
    ret nz

    rst $38
    ret nz

    db $eb
    jr z, jr_052_7bf0

    ld sp, $3137
    add c
    ld [hl], d
    ret nz

    add e
    ld [hl], d
    add c
    ret nz

    rst $38
    add b
    db $ed
    cp $7f
    ldh [$ac], a
    xor c
    add b
    ld [hl], d
    ld d, l
    ld d, h
    ld d, h

jr_052_7bf0:
    rra
    ld d, l
    ld [hl], d
    add b
    xor c
    xor h
    ret nz

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
    rst $30
    nop
    nop
    nop
    and l
    nop
    rst $38
    push hl
    ld [hl-], a
    or $e6
    rst $30
    rst $20
    dec [hl]
    db $ec
    xor $37
    db $ec
    jp c, $c7f0

    add sp, $33
    ld sp, $f2e0
    ld [hl], $30
    scf
    cp a
    ld h, $20
    daa
    db $10
    ld d, $17
    jp nz, Jump_000_34f6

    rst $38
    ld [hl], $32
    jr nc, jr_052_7d1c

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
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

jr_052_7d1c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_052_7e6b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_052_7ee0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_052_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_052_7f9f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_052_7fc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
