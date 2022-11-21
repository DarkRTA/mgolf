; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $072", ROMX[$4000], BANK[$72]

    cp l
    db $76
    ld h, h
    ld [hl], a
    ld b, b
    ld b, b
    ld c, b
    ld b, b
    cp $4a
    rlca
    ld c, l
    call nz, $124e
    ld c, a
    ld e, a
    ld c, a
    ld h, b
    ld c, a
    adc b
    ld b, b
    ld c, e
    ld d, d
    ld d, e
    ld d, d
    ld e, $58
    ld [hl], $5c
    ld l, a
    ld e, a
    ret nc

    ld e, a
    ld h, c
    ld h, b
    ld h, d
    ld h, b
    sub e
    ld d, d
    add sp, $60
    ldh a, [$60]
    sub $6b
    add hl, bc
    ld [hl], b
    rst $38
    ld [hl], d
    ld l, d
    ld [hl], e
    push bc
    ld [hl], e
    add $73
    jr nc, jr_072_409b

    ld e, a
    ld c, a
    ld h, c
    ld h, b
    push bc
    ld [hl], e
    nop
    nop
    inc d
    ld d, $28
    jr z, jr_072_4047

jr_072_4047:
    nop

Jump_072_4048:
    nop
    jr nz, @+$22

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
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

jr_072_4087:
    dec h
    push de

jr_072_4089:
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
    jr z, jr_072_4087

    ldh [$90], a
    db $eb

jr_072_409b:
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

Call_072_40c0:
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_072_4089

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

Call_072_4181:
    ld e, $12
    ld a, [hl]
    call nc, $48c2
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
    jr nz, jr_072_419b

jr_072_419b:
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
    jp Jump_072_7f7c


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

Jump_072_41fa:
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

Jump_072_4345:
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
    jp z, Jump_072_6fe0

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

Call_072_43a0:
    ret nz

    ld a, a
    ld d, a
    ret nz

Jump_072_43a4:
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

Call_072_43fa:
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

jr_072_4488:
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
    jr jr_072_4488

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

jr_072_453e:
    and $18
    ld h, b
    and b

Jump_072_4542:
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
    jr nc, jr_072_453e

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

Jump_072_45c2:
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

Call_072_45e4:
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

jr_072_4602:
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

jr_072_4615:
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
    jr c, jr_072_4602

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

jr_072_464a:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_072_4615

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_072_61d8

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
    jr nz, jr_072_464a

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
    jp z, Jump_072_5ac8

    and c
    inc a
    jp Jump_072_537f


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
    cp a
    rst $28
    call z, $a4f3
    ei
    dec d
    cp h
    ret nz

    dec b
    xor e
    rst $38
    ld [bc], a
    add hl, hl
    and [hl]
    ld d, e
    or b
    ret nz

    ld [hl], l
    or b
    ret z

    ld [hl], a
    xor e
    adc b
    call z, $cab0
    scf
    or b
    call z, $b04e
    adc $ae
    db $db
    ld sp, hl
    ld a, c
    or b
    ret z

    cp a
    ld e, a
    or b
    jp $e21d


    ei
    ld [$20f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    cp e
    add c
    add sp, $30
    and $61
    ld e, $95
    or b
    ret nz

    add hl, sp
    rst $30
    jp nz, $f00f

    rst $38
    ld h, e
    ld d, a
    xor b
    ei
    nop
    cp a
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    rst $28
    ld h, e
    inc c
    rst $38
    rst $30
    reti


    ld l, a
    ld [$63ff], sp
    cp l
    sub $ff
    ld l, e
    ld l, d
    rst $18
    jr nc, @-$1f

    ld d, e
    db $fd
    nop
    rst $38
    rst $38
    ld e, l
    rst $20
    ld [$40ff], sp
    cp a
    ld l, h
    ei
    or a
    ld c, b
    call c, Call_072_40c0
    rst $38
    inc b
    ei
    ld e, d
    ld sp, hl
    and l
    dec sp
    add b
    ld b, c
    nop
    rst $38
    rst $38
    ld e, d
    and l
    jr nz, @+$01

    rst $18
    inc h
    rst $20
    ld h, [hl]
    and l
    dec h
    and $66
    rst $38
    and l
    ld h, [hl]
    and l
    and h
    ld h, a
    ld h, [hl]
    and l
    inc h
    cp $70
    ret nz

    ld bc, $05fe
    ei
    ld e, $e6
    jr @+$01

    add sp, $30
    ret nc

    ld de, $63f3
    and d
    ld d, l
    ei
    nop
    cp d
    sbc [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$96fa], a
    add b
    xor [hl]
    sub d
    add b
    adc d
    nop
    ld d, h
    nop
    xor d
    cp $f0
    ldh [$aa], a
    nop
    dec d
    nop
    xor b
    nop
    ld d, c
    rst $38
    nop
    ld [$2200], sp
    nop
    sub h
    nop
    add hl, hl
    xor a
    nop
    ld b, h
    nop
    db $10
    db $e4
    ldh [rP1], a
    ld [hl], e
    nop
    ld bc, $94ce
    nop
    jr nz, jr_072_47d8

jr_072_47d8:
    add b
    adc [hl]
    nop
    rst $38
    ldh a, [rNR23]
    inc a
    rst $38
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    db $fc
    inc a
    rst $38
    cp $80
    ld a, h
    ld h, h
    nop
    nop
    ld [$ff1c], sp
    ld a, $36
    ld a, a
    and [hl]
    ld a, a
    add h
    ld l, a
    ld b, b
    ei

jr_072_47fb:
    ld c, $08
    ld l, c
    ld [c], a
    inc bc
    rst $38
    ld b, $ff
    inc b
    rst $28
    rst $38
    rlca
    db $fc
    dec sp
    adc c
    nop
    ld c, h
    di
    ld [hl], a
    rst $38
    rst $38
    sbc c
    rst $38
    ld b, [hl]
    cp c
    rst $28
    db $10
    rst $38
    cp a
    nop
    ld h, [hl]
    sbc c
    nop
    rst $38
    ld h, [hl]
    ld h, $a0
    cp l
    rst $18
    jp $c7b9


    inc de
    rst $28
    ld hl, sp-$1f
    cp l
    jp $1bff


    rst $20
    db $fc
    rst $38
    db $fd
    cp $f1
    cp $ff
    di
    db $fc
    jp $dcfc


    db $e3
    dec e
    db $e3
    rst $38
    ld a, $c3
    reti


    sbc a
    sbc l
    ld c, a
    ld h, $17
    rst $38
    and e
    di
    db $db
    pop hl
    ld l, [hl]
    pop af
    inc [hl]
    ei
    rst $38
    cp c
    rst $18
    reti


    sbc a
    sbc h
    ld c, a
    daa
    ld d, $fe
    ldh a, [$e5]
    reti


    rst $38
    rst $20
    jr @-$3b

    inc h
    rst $20
    ld a, a
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20
    jr jr_072_47fb

    ld b, c
    rst $38

Jump_072_486d:
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    and b
    rst $38
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    ld h, b
    rst $38
    ld d, $a9

jr_072_4881:
    pop hl
    dec bc
    adc d
    daa
    daa
    rrca
    sbc a
    xor l
    rra
    sub $3f
    ld a, l
    db $76
    add b
    jr nz, jr_072_48b8

    inc h
    rst $38
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr jr_072_4881

    sub $ff
    rrca
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    nop
    inc e
    rst $18
    inc bc
    cp a
    nop
    sbc c
    ld h, [hl]
    jr c, jr_072_48cd

    dec a
    jp nz, Jump_000_18e7

    rst $20
    add hl, de
    jr nc, jr_072_48d8

    db $10
    add c
    ld d, [hl]
    xor c

jr_072_48b8:
    ld [hl+], a
    di
    rst $38
    ld [hl], l
    sub b
    add h
    add b
    and e
    ld de, $1fef
    ldh [$bf], a
    dec a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    ldh [$65], a

jr_072_48cd:
    jr z, @+$01

    rst $10
    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    db $db
    rst $38

jr_072_48d8:
    inc a
    rst $00
    inc l
    xor l
    ld l, [hl]
    sub e
    ld c, [hl]
    rst $08
    rst $38
    ld b, [hl]
    ld a, [de]
    rst $08
    ld hl, $8f9f
    add e
    rra

jr_072_48e9:
    rst $38
    rst $00
    db $d3
    ld l, [hl]
    cp l
    ld a, [hl]
    db $eb
    inc a
    rst $38
    rst $38
    ld l, $ef
    cpl
    rst $18
    ccf
    cp $0f
    jr @+$01

    rst $38
    inc b
    rst $28
    inc l
    rst $28
    ld [de], a
    rst $08
    ld c, [hl]
    db $fd
    rst $00
    ldh [$e5], a
    ld d, d
    rst $28
    inc a
    rst $38
    jr z, @+$01

    rst $38
    ld a, $ef
    cpl
    rst $28
    rra
    rst $38
    ld c, $ff
    rst $38
    jr nz, jr_072_48e9

    or [hl]
    dec hl
    db $ed
    cp d
    dec sp
    rst $18
    rst $10
    db $76
    rst $18
    ld d, h
    jr jr_072_4946

    ld a, [hl+]
    ld e, b
    nop
    dec b
    cp $ff
    xor e
    db $fc
    dec c
    ld a, [$fdb2]
    ld d, l
    ld [$a8ff], a
    rst $10
    db $f4
    adc e
    or b
    rrca
    sbc $7f
    rst $18
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld l, [hl]
    ldh [$aa], a

jr_072_4946:
    rst $38
    cpl
    ret nz

    rst $38
    sbc b
    ld h, a
    add b
    pop hl
    ld e, b
    ld d, b
    ld b, $10
    ld l, e
    db $fd
    dec hl
    ld d, b
    ld l, b
    inc a
    inc bc
    add h
    ld [hl], e
    or h
    db $eb
    ei
    inc hl
    call z, $e1a0
    ld a, [hl-]
    rst $18
    rst $30
    ld e, [hl]
    push de
    rst $18
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ld l, $48
    inc bc
    add hl, de
    rst $20
    rst $38
    rla
    xor $3f
    ret z

    cpl
    ret c

    rra
    ldh a, [$f5]
    db $fd
    xor d
    nop
    jp c, Jump_072_4048

    xor a
    cp $df
    ld hl, sp-$51
    ld l, a
    ld hl, sp-$21
    ldh a, [$c3]
    ld b, b
    inc a
    ld h, $61
    ccf
    ld a, a
    jp $c73e


    db $dd
    cpl
    jp c, $f02f

    push hl
    rst $38
    dec a
    jp $c73c


    ret nc

    cpl
    ret c

    cpl
    rst $38
    rra
    and $39
    ret


    cp c
    ld c, c
    ld e, a
    xor a
    rst $28
    ld d, [hl]
    rst $28
    cp b
    rst $20
    ld b, b
    ld h, c
    ld hl, sp-$08
    db $e3
    rst $28
    ldh [$cf], a
    ret nz

    sbc a
    ld b, d
    jr nz, @+$40

    nop
    ld l, e
    rst $38
    nop
    ld a, [hl]

jr_072_49c3:
    nop
    rra
    rra
    rst $00
    rlca
    di
    rst $38
    inc bc
    xor c
    ld bc, $01f5
    and b
    nop
    jp nc, $bcfe

    and b
    ld d, l
    nop
    jr z, jr_072_49d9

jr_072_49d9:
    add b
    add b
    jp hl


    xor a
    jp hl


    rst $30
    rst $38
    ld [c], a
    ld h, d

jr_072_49e2:
    jr nz, jr_072_49e2

    ld b, [hl]
    and b
    dec d
    cp a
    dec d
    xor e
    xor e
    ld a, a
    ld a, a
    rst $18
    ld [hl], $00
    ld a, a
    cp $33
    ld [hl+], a
    ei
    rst $30
    jp hl


    rst $30
    ld sp, hl
    rst $20
    jp z, $f77f

    pop af
    rst $08
    xor b
    rst $10
    ldh a, [$8f]
    ld a, a
    dec bc
    rst $38
    rst $30
    rst $28
    xor c
    rst $10
    ldh [$9f], a
    ld d, d
    xor a
    rst $38
    pop hl
    rra
    dec hl
    rst $10
    pop af
    adc a
    and e
    rst $18
    rst $38
    push de
    rst $28
    ld d, a
    rst $28
    di
    rst $08
    sub a
    rst $28
    rst $38
    db $e3
    sbc a
    pop de
    xor a
    ld h, e
    sbc a
    push bc
    ccf
    rst $20
    ld h, e
    sbc a
    rst $30
    jp c, Jump_072_6ee1

    nop
    rst $30
    rst $38
    ld d, d
    ei
    rst $38
    db $ed
    db $e3
    nop
    add l
    rst $38
    xor e
    rst $18
    rst $28
    xor e
    rst $38
    ei
    jr nc, jr_072_49c3

    ld [bc], a
    ld b, b
    ret nz

    xor a
    ld a, [hl-]
    inc b
    cp $ff
    cp $fc
    db $fc
    ld sp, hl
    ld hl, sp-$0d
    ldh a, [$e7]
    ccf
    ldh [rIE], a
    rst $38
    jp $18c3


    ld e, b
    ldh [rHDMA4], a
    ld bc, $eef9
    ld c, [hl]
    ld bc, $02af
    ld a, a
    ld a, a
    ccf
    ccf
    sbc a
    rst $18
    rra
    rst $08
    rrca
    ld h, a
    rlca
    ret nc

    jp hl


    ld a, [c]
    ldh a, [$d7]
    ldh [$e0], a
    sla h
    ldh [$2f], a
    ld c, b
    nop
    or a
    nop
    push af
    ld e, [hl]
    ld h, d
    nop
    ld d, a
    ld l, [hl]
    nop
    db $dd
    nop
    ld l, d
    nop
    db $dd
    call c, $80be
    call nc, $8800
    or [hl]
    add b
    sub e
    inc bc
    db $fd
    ld c, c
    ld d, $e0
    inc b
    inc b
    adc e
    dec bc
    daa
    daa
    rst $28
    ld a, [bc]
    ld a, [bc]
    ld d, a
    ld d, a
    ld b, [hl]
    push hl
    ld a, a
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $28
    rst $28
    ret nc

    ret nc

    and b
    rst $38
    and b
    call nz, $aac4
    xor d
    push af
    push af
    sbc $fd
    sbc $44
    ld bc, $00ad
    rlca
    nop
    ld a, [bc]
    nop
    rst $38
    add l
    add b
    nop
    nop
    xor b
    xor b
    push de
    push de
    rst $18
    ld a, d
    ld a, d
    adc b
    nop
    ld [bc], a
    cp b
    ldh [rNR42], a
    ld hl, $0aff
    ld a, [bc]
    and l
    and l
    ld e, e
    ld e, e
    push hl
    push hl
    or $e4
    pop bc
    xor a
    xor a
    jp nz, $fbe3

    ei
    ld e, [hl]
    ld e, [hl]
    rst $38
    rst $30
    rst $30
    db $fd
    db $fd
    db $eb
    db $eb
    ld a, l
    ld a, l
    rrca
    xor a
    xor a
    ld e, e
    ld e, e
    push hl
    pop bc
    nop
    nop
    nop
    ld bc, $ff46
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc [hl]
    rst $38
    rst $38
    ld b, [hl]
    ld b, [hl]
    sub a
    rst $38
    ld a, [c]

jr_072_4b5a:
    ret z

    rst $38
    ret nz

    and $46
    cp a
    add hl, sp
    dec [hl]
    dec [hl]
    add hl, sp
    xor e
    xor h
    sub $e1
    xor e
    rst $38
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    sbc d
    sbc e
    db $ec
    ret nz

    rst $38
    ret nz

    jp hl


    jr c, jr_072_4bb0

    pop bc
    db $e3
    ld b, [hl]
    xor h
    ld a, c
    ccf
    ld a, [hl]
    ld a, [hl+]
    cpl
    ld a, [hl+]
    add c
    sbc h
    xor e
    ldh [rIE], a
    rst $38
    cp [hl]
    add b
    and $45
    ld b, l
    ld b, [hl]
    xor h
    xor e
    rst $10
    db $e3
    add d
    rrca
    add e
    dec hl
    or [hl]
    jr nc, jr_072_4b5a

    rst $38
    ld b, b
    db $eb
    ld c, b
    pop hl
    add b
    db $e3
    rst $38
    ld b, [hl]
    add h
    ld l, a
    add e
    dec l
    ld a, [hl+]
    add c
    sbc [hl]
    ld h, b
    ret nz

    rst $38
    ret nz

    db $eb
    ld b, d

jr_072_4bb0:
    db $e3
    ld a, h
    pop hl
    cp a
    ldh [$83], a
    ld l, l
    add b
    rst $38
    ld hl, sp-$80
    db $ec
    push bc
    ld [c], a
    ld a, h
    db $e3
    add h
    add l
    add l
    add h
    sbc d
    pop af
    sbc l
    ret nz

    rst $38
    ret nz

    db $eb
    add d
    jp nz, Jump_072_4345

    ld b, c
    ld b, e
    sbc [hl]
    db $fd
    ldh [rLYC], a
    xor e
    ld b, [hl]
    sbc h
    ret nz

    rst $38
    nop
    rst $00
    ld b, l
    cp [hl]
    call c, Call_072_45e4
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    jp hl


    xor h
    ret nz

    rst $38
    ret nz

    xor c
    ld [hl], $bf
    db $e3
    xor e
    ld b, h
    inc a
    dec sp
    and c
    ld h, h
    rst $38
    ldh [$a2], a
    inc a
    ld b, h
    ret nz

    rst $38
    add b
    xor c
    db $fd
    ld h, [hl]
    cp a
    ld [c], a
    xor e
    xor h
    ld b, d
    dec [hl]
    ld l, c
    and b
    ccf
    dec [hl]
    dec [hl]
    and b
    ld l, d
    dec [hl]
    ld b, d
    nop
    rst $38
    ld b, b
    xor c
    dec l
    ld l, b
    cp a
    ld [c], a
    xor h
    xor e
    ret nz

    ldh [$35], a
    rst $38
    ldh [$c0], a
    ldh [$dc], a
    add b
    rst $18
    nop
    xor c
    and b
    and a
    xor b
    cp a
    ld [c], a
    ld b, h
    inc a
    dec sp
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    xor c
    ld b, d
    nop
    rst $18
    ret nz

    adc c
    rst $08
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $8c
    ret nz

    ret nz

    add $aa
    sbc d
    pop bc
    sbc l
    ret nz

    rst $38
    add b
    adc b
    pop bc
    pop hl
    add b
    and d
    ld b, b
    call nz, $9d9a
    db $e3
    cp c
    cp d
    ret nz

    rst $38
    ld b, b
    add a
    add d
    ldh [$9a], a
    sbc e
    sbc e
    ld a, c
    sbc d
    sub $e3
    or $e0
    sbc l
    ld b, [hl]
    cp e
    cp h
    ret nz

    rst $38
    ld a, [hl-]
    nop
    add a
    sbc e
    call $bde0
    cp [hl]
    sbc l
    cp a
    ld [c], a
    ld b, l
    ldh [$9f], a
    ld b, [hl]
    cp c
    cp d
    ld b, [hl]
    jp $ffc0


    ld b, b
    xor e
    cp a
    rst $10
    ret nz

    ld b, [hl]
    sbc h
    push de
    pop hl
    sbc h
    jp $bbe0


    cp h
    ld h, e
    add $c7
    ret nz

    rst $38
    ret nz

    ld l, b
    adc a
    ldh [$c1], a
    jp nz, $e4c0

    dec de
    cp e
    cp h
    adc $e0
    set 1, h
    ret nz

    rst $38
    ld b, b
    ld a, a
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
    ei
    nop
    nop
    nop
    ld bc, $ff0d
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc [hl]
    rst $38
    rst $38
    dec c
    dec c
    ld [$f2ff], sp
    ret z

    rst $38
    ret nz

    and $0b
    ld a, a
    dec hl
    dec bc
    dec bc
    ld c, e
    dec c
    dec c
    dec bc
    rst $38
    ldh [$e3], a
    dec c
    dec bc
    xor e
    push hl
    ret z

    rst $38
    ret nz

    rst $20
    ld l, e
    ld l, e
    ld l, e
    ld a, h
    pop bc
    db $e3
    jp nz, Jump_000_0be1

    dec bc
    dec hl
    dec c
    dec l
    ret nz

    rst $38
    ld h, d
    ret nz

    ld [$894b], a
    ldh [$c0], a
    ld [c], a
    add c
    ldh [rWX], a
    dec hl
    ret nz

    rst $38
    ld [$ec40], sp
    ld c, b
    ld [c], a
    ret nz

    push hl
    dec c
    ld [hl], e
    ldh [$c0], a
    rst $38
    ret nz

    xor $02
    db $e3
    jp nz, $e23e

    dec l
    ret nz

    rst $38
    add b
    db $ed
    add c
    db $e3
    cp l
    jp $2d0d


    rlca
    dec l
    ld c, l
    dec l
    ret nz

    rst $38
    ret nz

    ldh a, [$78]
    ret nz

    ld a, b
    db $e4
    ret nz

    rst $38
    inc d
    add b
    db $ec
    ld b, e
    ret nz

    ld c, e
    pop bc
    push hl
    dec hl
    ret nz

    rst $38
    ret nz

    xor d
    adc c
    db $e4
    dec b
    dec c
    ret nz

    and $0b
    ret nz

    rst $38
    ret nz

    xor l
    dec b
    pop bc
    cp c
    and b
    cp e
    and b
    dec b
    dec l
    cp c
    and c
    ld l, l
    ret nz

    rst $38
    ld b, b
    ret


    rlca
    pop hl
    ret nz

    ld [c], a
    rst $38
    call nz, $8080
    rst $18
    nop
    xor c
    adc l
    and c
    ld b, b
    jp hl


    ld bc, $c0e0
    rst $38
    nop
    jp hl


    dec hl
    ld [hl], a
    dec hl
    ld l, e
    ld c, e
    ld bc, $6ba0
    ld c, e
    ld l, e
    dec [hl]
    and b
    dec b
    dec bc
    inc [hl]
    and b
    ld l, l
    ret nz

    rst $38
    ret nz

    ld [$a13f], a
    ld [$f8a0], sp
    add b

jr_072_4e1b:
    ld e, $fd
    pop hl
    dec c
    ld l, l
    ld c, $0e
    ret nz

    rst $38
    add b
    ret z

    add d
    ldh [$8c], a
    adc d
    and b
    ccf
    and [hl]
    ld l, l
    dec c
    ret nz

    rst $38
    nop
    ld [$e14f], a
    dec c
    ei
    ld c, l
    dec l
    jr c, jr_072_4e1b

    dec hl
    dec c
    ld l, l
    ld c, l
    ld c, l
    daa
    ld c, $0e
    dec c
    ret nz

    rst $38
    ret nz

    ld l, b
    ld c, l
    call c, $c0e4
    pop hl
    ld bc, $c32d
    pop hl
    rst $38
    ldh [$c0], a
    rst $38
    add b
    ret z

    adc a
    ldh [$d9], a
    pop hl
    ld b, [hl]
    jp nz, $f400

    ld [c], a
    ret nz

    rst $38
    ld b, b
    ld a, a
    rst $38
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
    db $fd
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
    ldh a, [$ef]
    rrca
    nop
    rst $38
    ld [c], a
    ldh [$f8], a
    ei
    and $c1
    db $f4
    ldh [$fc], a
    ld a, [$c0e8]
    push af
    add b
    db $fd
    nop
    ld h, d
    ld hl, sp-$20
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $00
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
    ldh a, [$ef]
    rla
    pop af
    ld de, $e0f1
    ei
    pop af
    ldh [$fb], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $f9
    ld hl, sp+$13
    inc de
    call c, $ffff
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
    ld sp, hl
    nop
    nop
    nop

jr_072_4f5f:
    cp $d5
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
    jr z, jr_072_4f5f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    ld a, [$e0e5]
    add b
    ld [$00e4], a
    nop
    rla
    nop
    ld bc, $d612
    ld [c], a
    ld d, b
    rst $08
    ldh [$e6], a
    pop hl
    ld [$e2da], a
    db $fd
    db $e3
    and $e1
    ld d, a
    cpl
    nop
    inc bc
    ret nz

    ld [c], a
    and b
    xor a
    ldh [$64], a
    xor e
    ldh [$c7], a
    call nc, Call_000_2000
    ret nz

    ld [c], a
    jp z, $9ce1

    pop hl
    ld e, a
    nop
    ld d, l
    ld b, $96
    ld [c], a
    ld b, b
    adc a
    ldh [$b2], a
    adc e
    ldh [$a8], a
    or $e2
    sbc h
    and h
    db $e3
    ld a, h
    pop hl
    cp a
    nop
    inc c
    add b
    ld [c], a
    adc [hl]
    pop hl
    ld e, c
    ld a, [$e06b]
    ld d, b
    add h
    ld [c], a
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    rst $38
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    cp a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    db $ed
    ldh a, [$f8]
    push hl
    jr nz, @-$3e

    ld [hl], c
    db $e3
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
    rst $38
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rst $38
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $07ff
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $28
    rst $38
    add c
    inc a
    db $10
    ld b, h
    and $20
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
    ld [$c0e3], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc

Call_072_5046:
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
    ldh [$83], a
    db $f4
    rst $38
    ld a, b
    ldh [$cb], a
    jp $c5e2


    ldh a, [$e0]
    rst $28
    ld [$f1c0], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    db $ec
    rst $38
    ld sp, hl
    cp $7f
    and $f8
    ld c, b
    ldh a, [$d0]
    ldh [$a8], a
    ld [hl], d
    ldh [$fb], a

jr_072_508d:
    ld b, b
    add b
    db $10
    rst $20
    jp hl


    cp $8e
    ldh a, [$30]
    pop af
    ret nz

    ld hl, sp-$1b
    ld h, d
    pop bc
    db $10
    push hl
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rst $30
    rla
    rrca
    ld [de], a
    inc d
    ldh [$09], a
    rlca
    rla
    inc bc
    rst $38
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    rst $30
    jp Jump_000_3c3c


    sbc d
    add $00
    nop
    ld b, b
    add b
    rst $18
    ret nz

    add b
    jr nz, jr_072_508d

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_072_64e1

    pop bc
    xor b
    ldh a, [$ea]
    ldh a, [$df]
    db $f4
    ld hl, sp-$2c
    ld hl, sp-$0c
    inc d
    ldh [$b8], a
    ldh a, [$fb]
    add sp, -$10
    db $10
    jp hl


    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$fc3b], a
    ld sp, hl
    ld hl, sp-$20
    db $f4
    rst $38

jr_072_5103:
    ld c, b
    ld [hl+], a
    db $eb
    and b
    ldh [$f0], a
    call z, $fba3
    push bc
    pop af
    call $cbe3
    nop
    nop
    db $ed
    cp $ff
    cp $f8
    add sp, -$10
    ld d, d
    ldh [$e8], a
    ret nz

    rst $20
    ret nz

    add b
    ld d, b
    sub $c0
    jr nz, @-$39

    cp l
    cp $ee
    jp $b1f0


    ld a, [de]
    ldh [$f8], a
    push hl
    or d
    and c
    ld d, h
    and c
    rst $38
    ld a, a
    rst $30
    xor a
    ld a, a
    ld a, a
    inc d
    ldh [$b7], a
    rra
    ccf
    rra
    ld a, a

jr_072_5141:
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    inc d
    ld [c], a
    rst $38
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    sub l
    rst $18
    ld [de], a
    ldh [rSCY], a
    sub b
    ld [$0ca0], a
    ld [c], a
    cp $e1
    and b
    ld [hl], h
    jr nc, jr_072_5103

    jr nz, @-$3b

    ei
    jp c, $b0e6

    ldh [$f4], a
    rra
    ret nz

    rst $30
    ret c

    ldh a, [$f8]
    inc d
    ldh [$b4], a
    ldh [$f0], a
    ldh [$fa], a
    jr nz, jr_072_5141

    ei
    ld [de], a
    ldh [$91], a
    nop
    db $fd
    cp $f6
    rst $38
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    ld b, $f8
    ldh [$f5], a
    cp $78
    push hl
    inc l
    push af
    nop
    and c
    xor $cc
    pop af
    xor d
    rst $38
    ld [bc], a
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $a1ff


    jp $8300


    dec b
    add e
    ld b, b
    add c
    di
    ld b, c
    add b
    ldh [$a0], a
    ld [hl], b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [rIE]
    pop af
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $fd
    ld [de], a
    ld [hl], h
    add d
    ld c, b
    nop
    ld bc, $5878
    rst $38
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $85ff


    jp $8304


    ld b, c
    add e
    ld [bc], a
    add c
    or $6d
    add b
    add b
    and b
    ld c, h
    and b
    ret nc

    ldh [$64], a

jr_072_51e6:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_072_51e6

    nop
    add d
    ret nc

    ldh [$a0], a
    xor c
    ld [bc], a
    ld bc, $0300
    nop
    ld [hl], c
    xor c
    pop af
    ldh [$60], a
    add sp, $30
    add e
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
    ccf
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    ld hl, sp+$46
    ld hl, sp+$46
    rst $08
    add hl, hl
    nop
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ret z

    inc bc
    call nz, $0306
    ld [bc], a
    ld [bc], a
    ld bc, $03c8
    ldh a, [$03]
    call nz, $0306
    ld [bc], a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    rst $38
    ld a, a
    ld [$4403], a
    ld [bc], a
    ld b, b
    dec d
    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $40
    dec d
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ei
    rst $38
    nop
    cp $eb
    ld [hl+], a
    rst $18
    nop
    xor a
    ld d, b
    rst $38
    jp c, $fd25

    ld b, d
    cp a
    ld [hl+], a
    db $fd
    adc b
    rst $38
    db $eb
    dec d
    rst $30
    push af
    inc bc
    and $0e
    ret c

    rst $38
    add hl, de
    pop hl
    daa
    and [hl]
    ld l, a
    ret z

    ld e, l
    ld c, h
    rst $38
    db $db
    sub b
    cp a

jr_072_52bc:
    db $fd
    inc bc
    ld a, [$fa02]
    rst $38
    ld b, $f4
    dec b
    db $e4
    dec c
    reti


    dec sp
    ld h, d
    rst $28
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    jp c, $ff00

jr_072_52d5:
    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    jr c, jr_072_52d5

    cp $4f
    add sp, -$02
    pop hl
    sub a
    ret c

    sub a
    ret nc

    cp a
    cpl
    or b
    ld e, a
    ld h, b
    sbc a
    ret nz

    and b
    push hl
    cp $ff
    ld bc, $03f1
    and $0f
    cp b
    ld a, [hl]
    ret z

    rst $38
    ld l, a
    jp z, Jump_072_486d

    ld [$dd90], a
    sub b
    rst $38
    rst $18
    jr z, jr_072_52bc

    ld b, b
    ld l, e
    add b
    rst $30
    rst $38
    push af
    nop
    xor [hl]
    ldh [$03], a
    xor [hl]
    ldh [$0d], a
    ret


    dec de
    or d
    rst $38
    ld [hl], a
    call nz, $c96f
    dec c
    jp nc, $d21b

    rst $38
    dec sp
    db $e4
    scf
    db $e4
    scf
    and [hl]
    ld [hl], l
    ret z

    rst $28
    ld l, a
    ret z

    ld l, a
    ld sp, hl
    add b
    pop hl
    add hl, sp
    pop hl
    rst $20
    rst $38
    ld b, $1f
    add hl, de
    rst $38
    ld [c], a
    db $fd
    db $10
    ld a, [$fbff]
    nop
    rst $30
    rlca
    ret c

    rra

jr_072_5343:
    ldh [$78], a
    rst $38
    add a
    rst $20
    ld a, [de]
    sbc l
    ld h, b
    ld a, d
    add b
    db $fd
    db $fc
    jp nc, $d0e0

    pop hl
    rst $30
    inc b
    rst $28
    jr jr_072_5375

    ldh [$f7], a
    rst $28
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, jr_072_5343

    rst $38
    scf
    and a
    ld l, a
    ret z

    ld e, a
    ret z

    ld e, d
    ret z

    rst $38
    ld e, l
    nop
    rst $38
    db $10
    ld a, [$ad00]
    nop

jr_072_5375:
    rst $38
    rst $18
    db $e4

jr_072_5378:
    rst $38
    jr jr_072_5378

    inc b

jr_072_537c:
    rra
    ld [c], a
    db $fd

Jump_072_537f:
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $ff
    db $e3

jr_072_538a:
    and $4f
    add sp, -$71
    ret z

    cpl
    sbc b
    rst $28
    rla
    jr c, jr_072_537c

    ldh a, [$f6]
    jp Jump_072_6fc8


jr_072_539a:
    ld [$cdff], a
    ld c, b
    sbc d
    db $10
    dec a
    ldh [rIE], a
    jr nz, @+$01

    db $fd
    ld [de], a
    db $eb
    nop
    rst $30
    sub e
    cp b
    cpl
    rst $30
    ld h, b
    ld e, a
    ret nz

    jr c, jr_072_539a

    ld [$309f], sp
    ld a, a
    rst $38
    ld d, b
    ld l, d
    ld b, h
    db $fd
    add b
    rst $38
    jr z, @-$09

    ld sp, hl
    nop
    ldh [$e0], a
    ret nz

    jp Jump_000_01fc


    db $e3
    rlca
    sbc h
    ld e, a
    inc a
    ld h, b
    db $e3
    add e
    sbc a
    ld d, b

jr_072_53d2:
    pop hl
    sbc b

jr_072_53d4:
    ld d, b
    ld [c], a
    rst $38
    jr jr_072_53d4

    ld [c], a
    push af
    nop
    rst $38
    cp $01
    rst $38
    rst $20
    rrca
    ret c

    ccf
    ld h, b
    ld hl, sp-$79
    rst $20
    ei
    jr jr_072_538a

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_072_5472

    ld a, [hl-]
    ret nz

    db $dd
    inc b

jr_072_53f7:
    ei
    jr nz, jr_072_53f7

    ret nz

    push hl
    rst $18
    cp $01
    rst $38
    ld bc, $faf9

jr_072_5403:
    pop bc
    rlca
    db $f4
    rst $38
    ld b, $48
    rst $28
    sub b
    jp c, $dd90

    inc h
    sbc a
    xor e
    jr nz, jr_072_53d2

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $ffe7


    rrca
    sbc b
    jr c, jr_072_547f

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, jr_072_5403

    ld b, b
    db $ed
    rlca
    rst $30
    rst $38
    jr @-$06

    ldh a, [$e1]
    dec bc
    sbc h
    inc sp
    ld a, b
    cp l
    ld b, a
    ld e, [hl]
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    inc [hl]
    pop bc
    sub b
    rst $38
    or a
    inc h
    ld l, a
    ld b, h
    ei
    add b
    rst $38
    ld b, b
    rst $28
    cp a
    ld [bc], a
    ld e, e
    ld [hl+], a
    add b
    ldh [rOBP0], a
    rst $08
    ld c, b
    rst $38
    rst $18
    sub h
    cp c
    sub b
    cp e
    sub b
    cp a
    ld d, b
    rst $38
    db $fd
    ld c, b
    rst $18
    ld c, d
    rst $08
    sub b
    sbc a
    sub b
    rst $38
    rst $18
    ld c, b
    ld [$6d4a], a
    ld c, b
    ld l, a
    ld d, b
    rst $38
    push af
    sub b

jr_072_5472:
    rst $10
    sub d
    sub a
    ld c, e
    ret z

    ld c, e
    rst $38
    ret c

    sub a
    cp b
    sub a
    or b
    sub a

jr_072_547f:
    or b
    ld d, a
    rst $38
    ret c

    ld c, e
    ret c

    ld c, e
    ret z

    sub a
    sub b
    sub a
    db $fd
    ret c

    inc a
    ret nz

    ld l, b
    ld c, a
    ld l, b
    ld d, a
    ld hl, sp-$61
    rst $30
    ret nc

    sbc a
    sub b
    ldh [$a3], a
    cp l
    ld a, [hl]
    jp $9fff


    nop
    jp Jump_000_3c3c


    jp $e0f9


    ld [hl], d
    ld [c], a
    db $76
    ld a, a
    sbc c
    rst $38
    nop
    sbc c
    ld h, [hl]
    ld h, [hl]
    sbc c
    ld [hl], b
    ldh [$bf], a
    ld [bc], a
    xor l
    ld [bc], a
    jp c, $fd3c

    ldh [$e4], a
    ei
    cp [hl]
    ldh a, [$e0]
    xor a
    nop
    reti


    db $76
    rst $28
    ldh [$e4], a
    rst $18
    rst $18
    ld bc, $0603
    ld c, $18
    ldh a, [$c8]
    dec de
    ld a, b
    rst $20
    ld h, a
    ldh [$df], a
    ld d, [hl]
    ld [c], a
    add [hl]
    and e
    ld d, b
    xor a
    dec h
    rst $38
    jp c, $b807

    rlca
    db $fd
    and d
    ld e, a
    ldh [rIE], a
    rla
    push hl
    cp d
    ld b, d
    db $fd
    db $fd
    db $fd
    rst $18
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    ei
    rst $28
    rst $38
    or $e0
    xor l
    rst $28
    db $76
    rst $38
    and $fe
    xor $e0
    db $e4
    db $eb
    ld [hl], h
    rst $30
    ld c, b
    rst $38
    add b
    rst $38
    cp e
    db $eb
    rst $38
    ld a, h
    rst $38
    ld d, b
    rst $10
    xor h
    db $fd
    db $eb
    ld h, a
    pop hl
    ld b, b
    or l
    nop
    ei
    ld bc, $ffff
    ld [bc], a
    rst $10
    db $10
    db $ed
    dec b
    rst $38
    inc bc
    rst $38
    rst $38
    ld a, [hl+]
    jp c, $bd08

    dec d
    rst $38
    ld c, $ff
    rst $38
    ld b, l
    rst $30
    ld a, [bc]
    cp $25
    rst $28
    sbc e
    rst $30
    rst $38
    ld e, $ff
    db $76
    cp [hl]
    db $db
    rst $38
    cp $ff
    rst $38
    push af
    push af
    ld l, b
    rst $28
    call nc, $b8ff
    xor a
    rst $38
    ret nc

    jp c, $fda5

    ld d, d
    rst $38
    ld [bc], a

Call_072_5554:
Jump_072_5554:
    ei
    rst $38
    ld b, l
    xor a
    ld d, [hl]
    jp c, $fe22

    dec b
    rst $38
    rst $38
    ld h, $fd

jr_072_5561:
    inc bc
    cp e
    ld bc, $b9fd
    ei
    rst $38
    ld [hl], h
    rst $10
    ld a, [hl+]
    db $ed
    ld [bc], a
    rst $38
    jr nz, @-$24

    cp $da
    and c

jr_072_5573:
    nop
    ei
    call c, $faff
    ei
    db $f4
    rst $38
    rst $38
    and $eb
    db $f4
    rst $30
    ld l, b
    rst $38
    jp nc, $fffb

    add sp, $76
    ldh [$fa], a
    cp $ad
    db $fd
    ld e, e
    rst $08
    rst $18

jr_072_558f:
    adc b
    push af
    db $10
    push de
    add d
    db $76
    ret nz

    jr jr_072_5573

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_072_55a1:
    db $fd
    ld b, d
    jp nz, $b781

    ld a, b
    adc e
    inc a
    push bc
    ld c, $bf
    push bc
    ld c, $8b
    inc a
    or a
    ld a, b
    or d
    add c
    rst $18
    rst $38
    ld a, $e7
    ld a, [hl]
    inc bc
    adc $33
    add [hl]
    push af
    rst $18
    ld b, $e7
    inc c
    rst $20
    jr @-$68

    and b
    db $10
    rst $10
    ld a, a
    jr c, @-$53

    ld a, h
    rst $00
    ld l, h
    sub e
    ld b, h
    sub h
    add l
    rst $38
    rst $10
    jr c, jr_072_55a1

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_072_5561

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_072_55e4:
    inc c
    ld hl, sp-$02

jr_072_55e7:
    ldh [rNR44], a
    ret nz

    ld h, h
    and d
    db $10
    rst $28
    jr jr_072_55e7

    inc c
    rst $20
    rst $28
    jr jr_072_55e4

    adc l
    db $e3
    dec a
    and b
    rst $28
    jr c, jr_072_558f

    ld a, l
    ld l, h
    ld d, [hl]
    add a
    rst $08
    inc a
    rst $38
    inc b
    ei
    cp $e0
    db $fc
    ld b, h
    add c
    ld b, c
    adc h
    rst $38
    add b
    cp a
    ld b, b
    rst $38
    ld h, b
    rst $38
    rst $18
    jr nz, @+$01

    and b
    cp a
    jr nz, @+$71

    db $10
    rst $30
    rst $30
    ld d, b
    rst $30
    ldh a, [$e3]
    and b
    ld a, a
    and b
    ld l, a
    ei
    ret nc

    scf
    cp $e1
    db $10
    rst $30
    ld [$08db], sp
    rst $38
    ei
    ld b, h
    rst $38
    and h
    cp l
    ld c, $5b
    ld [bc], a
    rst $38
    or $41
    rst $38
    cp a
    ret nz

    ld e, a
    ld h, b
    ld e, a
    ld a, a
    ld h, b
    cpl
    or b
    cpl
    or b
    rla
    ret c

    cp $e1
    cp $c0
    ldh [$df], a
    or b
    ld l, a
    ldh [$2f], a
    call nc, $ff33
    db $ec
    dec e
    ld a, [c]
    ld c, $fd
    inc bc
    add b
    cp a
    cp $b2
    pop hl
    jr nz, @-$0f

    db $10
    or e
    inc c
    db $ed
    ld [hl+], a
    ld a, h
    ld d, a
    and b
    inc sp
    add l
    ld c, $ce
    ld [hl-], a
    cp a
    ld d, b
    ld b, b
    add b
    ld a, l
    ld bc, $a030
    inc a
    ld a, [hl-]
    push hl
    db $dd
    ld [bc], a
    ld l, b
    and b
    ld sp, hl
    ld d, b
    adc b
    ldh [rNR13], a
    add h
    ld sp, hl
    ld c, $ef
    ld sp, $ffbe
    ld c, a
    ld [hl], b
    cp a
    ret nz

    ld bc, $06fd
    rst $20
    sbc a
    add hl, sp
    ld a, $c7
    ld hl, sp+$3f
    or $64
    sub c
    ld h, b
    rst $00
    rst $00
    jr c, jr_072_56d9

    rst $00
    or d
    and b
    add [hl]
    ld h, e
    ld l, d
    pop hl
    add sp, $1b
    ld a, [c]
    cp $e2
    rra
    ld e, [hl]
    pop hl
    ld [hl], c
    ld h, a
    jr nz, @-$3b

    inc e
    inc e
    rst $28
    db $e3
    db $e3
    add b
    cp a
    dec h
    and b
    rst $38
    ld b, b
    ld e, a
    rst $28
    ld b, b
    ld e, a
    add b
    cp a
    cp $e1
    db $e3
    jp $f33e


    cp a
    ld [hl], b
    ld h, b
    ld h, b
    sub b
    ldh [rIE], a
    ld [$14eb], sp
    rst $38
    rst $30
    add b
    rst $38

jr_072_56d9:
    sub b
    xor a
    ld d, b
    ld e, d
    ld h, l
    rst $38
    db $fd
    ld b, d
    rst $38
    ld b, b
    rst $38
    ret z

    xor e
    sub h
    rst $38
    rst $30
    inc bc
    rst $38
    dec b
    cp $2b
    db $fc
    dec c
    rst $38
    ld a, [$fd32]
    ld d, l
    ld [$d7a8], a
    db $f4
    rst $38
    adc e
    rst $20
    rst $38
    jp c, $f53d

    ld a, [bc]
    xor d
    rst $38
    ld d, l
    ld b, c
    cp [hl]
    inc d
    rst $38
    xor b
    rst $38
    ld [hl], l
    rst $38
    rst $38
    sub l
    db $eb
    dec bc
    push af
    and l
    ei
    ld c, d
    rst $38
    rst $30
    and [hl]
    ei
    call $97f3
    jp hl


    ld c, a
    ei
    pop af
    push af
    inc e
    ret nz

    ld a, [c]
    db $fd
    xor c
    cp $52
    ld a, a
    db $fd
    add c
    cp $2a
    push de
    sub l
    db $eb
    add l
    and b
    cp $fd
    ld [$99df], a
    sbc a
    ld c, l
    daa
    rla
    and e
    rst $38
    di
    db $db
    pop hl
    xor $f1
    or h
    ei
    ld b, c
    rst $38
    rst $38
    rst $18
    sbc a
    sbc h
    ld c, a
    ld h, $17
    and d
    rst $38
    di
    jp c, $eee1

    ld [hl], c
    db $f4
    dec sp
    ld sp, hl
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f9
    db $fc
    ei
    cp $df
    pop hl
    db $f4
    set 4, b
    rst $18
    cp $e1
    cp a
    ld a, a
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    scf
    rst $08
    dec bc
    rst $30
    rst $38
    ld h, e
    rst $38
    db $d3
    sbc a
    sub e
    sbc a
    ld hl, sp-$79
    rst $38
    ret nc

    cpl
    add b
    ld a, a
    adc h
    ld a, a
    sbc d
    ld [hl], e
    rst $38
    ld d, d
    or e
    adc h
    rst $38
    ldh a, [$ef]
    ld l, l
    di
    rst $38
    ld [bc], a
    db $fd
    ret nz

    ccf
    add b
    ld a, a
    ld [bc], a
    rst $38
    rst $38
    ld d, $ff
    ld bc, $17ff
    rst $38
    add sp, -$09
    rst $38
    pop af
    rst $38
    cp $fe
    rst $38
    cp $f7
    cp $ff
    xor l
    db $fc
    ld b, [hl]
    cp $eb
    rst $38
    scf
    rst $38
    db $fd
    adc a
    ld [bc], a
    and b
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld a, $3f
    ei
    ld a, e
    ld a, a
    and c
    ldh [rIE], a
    ld a, [$fcfd]
    ei
    rst $38
    pop hl
    rst $38
    ret nc

    rst $28
    push hl
    rst $18
    jp z, $ffff

    rst $20
    rst $18
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ld a, a
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    db $db
    ret c

    add b
    rst $38
    adc e
    rst $38
    ld b, l
    cp a
    sub a
    ld a, a
    dec hl
    rst $38
    rst $18
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    ld [$75e0], a
    rst $38
    or l
    ld a, [$80c2]
    ld a, [hl]
    cp [hl]
    add b
    cp $ff
    ld h, d
    ldh [rIE], a
    rst $20
    push hl
    rst $38
    di
    and b
    pop hl
    sbc h
    ldh [$ee], a
    cp $5e
    ccf
    cp $fb
    rst $38
    rst $30
    rst $38
    rst $08
    and b
    ld [c], a
    db $fc
    db $e3
    nop
    ld sp, $ffa0
    db $ec
    nop
    nop
    nop
    ld bc, $ff51
    rst $38
    rst $38
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
    and $e3
    ld e, d
    ld e, e
    db $fc
    rst $28
    rst $38
    rst $38
    jp Jump_072_5ce7


    ld e, l
    ld d, c
    ld a, b
    db $fc
    xor $ff
    rst $38
    jp Jump_072_5ee7


    ld e, a
    ld e, d
    ld e, e
    db $fc
    db $ed
    nop
    call nz, $e2ff
    pop hl
    jp Jump_072_7ee4


    rst $38
    ld [$c3f4], sp
    push hl
    ld a, [hl]
    di
    ld a, d
    db $fd
    ld h, b
    adc d
    db $e4
    ld a, [hl]
    or $7a
    db $fd
    inc d
    and $fc
    jp nz, Jump_072_5554

    db $fc
    rst $28
    db $fc
    jp $fcdf


    call nz, Call_072_5554
    ld d, c
    ld d, [hl]
    ld d, a
    ld d, c
    ld [hl], b
    db $fc
    db $ed
    dec sp
    ld hl, sp-$7a
    ret


    jp Jump_072_58e3


    ld e, c
    ld d, c
    db $fc
    db $e4
    inc sp
    ld d, h
    ld d, l
    db $fc
    db $e3
    cpl
    ldh [$5a], a
    ld e, e
    or l
    call nc, $c986
    ldh [$c3], a
    ld [c], a
    ld a, [hl]
    ldh [$7b], a
    ldh [$8b], a
    jp nz, $e682

    ld e, [hl]
    ld e, a
    ld e, h
    ld bc, $3b5d
    xor $92
    and e
    ld [$86e9], sp
    pop hl
    ld b, c
    pop hl
    ld a, $e0

jr_072_58a9:
    cp d
    ld [c], a
    nop
    add d
    and $dd
    pop bc
    ld [hl], d
    xor [hl]
    sbc d
    ret z

    ld [$88e4], sp
    ld [c], a
    ld b, c
    ldh [$3e], a
    ldh [rNR23], a

jr_072_58bd:
    cp d
    db $e3
    or [hl]
    db $e3
    pop bc
    jp nz, Jump_072_5554

    db $f4
    xor l
    sbc d
    xor d
    ld [$7ee2], sp
    add $c0
    ld d, b
    ld c, [hl]
    ld d, d
    ld c, [hl]
    ld c, [hl]
    ld d, b
    cp d
    push hl
    adc h
    or [hl]
    db $e4
    jr nc, @-$1d

    ld d, [hl]
    ld d, a
    ld [hl], d
    xor a
    jr jr_072_58a9

    ld b, l
    ld [c], a

Jump_072_58e3:
    ld e, b
    ld l, a
    ld e, c
    ld d, b
    ld c, l
    add hl, hl
    rst $38
    ldh [rKEY1], a
    ld c, [hl]
    rst $38
    rst $20
    add c
    ld d, b
    ld [hl], e
    ld [c], a
    inc h
    db $e3
    ld [hl], d
    xor e
    inc d
    and l
    jr nz, jr_072_58bd

    call $50c1
    ld e, a
    ld c, [hl]
    ld c, [hl]
    ld c, l
    add hl, hl

jr_072_5903:
    jr z, jr_072_5903

    db $ec
    ld c, l
    ld [hl], e
    ld [c], a
    add b
    inc l
    pop bc
    ld hl, sp-$53
    sbc d
    and l
    jp nc, Jump_072_45c2

    pop hl
    jp $bfef


    ld [c], a
    ld c, [hl]
    inc bc
    ld d, d
    ld d, b
    inc l
    jp nz, $a1e8

    adc d
    or c
    jp nc, Jump_072_45c2

    ld [c], a
    pop bc
    pop af
    nop
    ld a, h
    push hl
    db $ec
    and e
    ld a, [hl]
    db $d3
    call $c1a1
    ld hl, sp+$3b
    pop hl
    db $ed
    and c
    jp hl


    and l
    db $ec
    inc b
    jp z, $a24d

    ld d, h
    ld d, l
    pop bc
    ld a, [$2928]
    ld c, a
    ld l, b
    scf
    xor b
    inc b
    call z, $a3cf
    ld d, d
    pop bc
    ld a, [$4f28]
    or l
    xor b
    ld l, b
    adc [hl]
    add a
    sub [hl]
    add e
    rst $08
    and d
    ld d, b
    pop bc
    ld a, [$4f29]
    or l
    xor c
    jr jr_072_596f

    add [hl]
    sbc [hl]
    and [hl]
    ld [bc], a
    ei
    jr z, jr_072_5993

    ret nz

    pop hl
    ld l, e
    and e
    inc c

jr_072_596f:
    adc b
    ld e, b
    sbc [hl]
    add l
    ld c, a
    add b
    ld b, l
    rst $00
    ld l, $30
    rst $38
    and $2e
    nop
    jp hl


    call z, $84f0
    ldh a, [rOBP0]
    ld e, d
    ld e, e
    ld c, c
    and d
    rrca
    add b
    ld e, b

jr_072_598a:
    ld e, c
    ld h, l
    ld c, a
    pop bc
    and $01
    rst $38
    add sp, -$41

jr_072_5993:
    rst $20
    ld c, l
    ld d, b
    ldh a, [$84]
    and [hl]
    ldh a, [rOBP0]
    ld e, h
    ld e, l
    ld c, c
    and d
    jp z, $4f82

    pop bc
    rst $20
    inc c
    ld l, a
    inc hl

jr_072_59a7:
    ld [hl+], a
    inc hl
    ld [hl+], a
    db $fd
    ldh [rNR44], a
    inc c
    cp a
    rst $20
    add b
    ld a, h
    and b
    xor d
    add d
    ld l, [hl]
    ld c, b
    ld d, a
    ld b, c
    ld c, c
    and d
    jp z, $8082

    push hl
    cpl
    rst $38
    ld bc, $120c
    nop
    nop
    scf
    scf
    scf
    rrca
    inc [hl]
    nop
    add hl, sp
    ld [de], a
    cp a
    rst $20
    ld b, d
    db $e3
    db $f4
    ld c, d
    ld h, a
    ld b, h
    ld hl, sp+$54
    ld h, c
    sub b
    ld h, b
    add b
    push hl
    cpl
    ld bc, $3b20
    ld [hl], $b7
    ld [hl], $3b
    jr c, jr_072_59a7

    ldh [rP1], a
    dec sp
    cp a
    rst $20
    ld d, d
    nop
    db $ec
    ld h, d
    add sp, $41
    ldh [rNR42], a
    call Call_072_5046
    jr nz, jr_072_598a

    ld h, d
    ld b, $a7
    ret nz

    ldh [rIE], a
    jr c, jr_072_5a37

    ld [hl], $38
    nop
    jr c, @+$3a

    dec [hl]
    ld b, $bf
    db $e3
    cpl
    add hl, hl
    ld [bc], a
    call nz, $84bc
    nop
    ld [$654c], a
    rst $00
    add a
    adc a
    inc l
    ld bc, $0020
    rst $38
    ldh [$bc], a
    pop hl
    cp a
    ldh [$3a], a
    rlca
    jr nz, jr_072_5a26

    inc l

jr_072_5a26:
    ld [bc], a
    push bc
    sbc c
    jp nz, Jump_000_276e

    sub $00
    ld l, e
    ld b, b
    ld h, $3c
    jp $5351


    ld c, e
    add [hl]

jr_072_5a37:
    ld b, b
    ldh [$33], a
    rst $38
    pop hl
    cp l
    ldh [$0e], a
    ld a, [hl]
    pop hl
    jr nz, jr_072_5a44

    cpl

jr_072_5a44:
    ld sp, $3c82
    add b
    add e
    add d
    db $f4
    daa
    ldh [$de], a
    ld hl, $e23f
    ld h, a
    ld h, c
    add d
    push bc
    nop
    pop hl
    inc c
    ld [de], a
    ld [hl], $7e
    rst $38
    ldh [rP1], a
    nop
    dec [hl]
    jr c, @+$3a

    inc sp
    ld b, b
    and $80
    ei
    ld h, b
    ld l, e
    ld b, b
    nop
    jp hl


    xor $21
    ccf
    ld [c], a
    ld b, $81
    ld [bc], a
    add $29
    ld a, c
    dec l
    ld b, b
    ret nz

    cp a
    pop hl
    nop
    dec [hl]
    dec [hl]
    ld [de], a
    ld a, $cd
    inc c
    nop
    call z, $c2b6
    ld e, [hl]
    ld e, a
    ld b, $81
    add b
    rst $20
    cp a
    push hl
    pop bc
    ldh [rP1], a
    ld bc, $bec0
    xor e
    nop
    rr h
    ld hl, $21aa
    db $d3
    ld hl, $610b
    ld a, [hl]
    jp hl


    add hl, bc
    inc hl
    rst $38
    ldh [$c2], a
    and b
    dec hl
    ld a, a
    xor b
    inc a
    ret nz

    nop
    ld [$c238], a
    db $10
    ld h, e
    inc bc
    jp nz, Jump_072_7e82

    ld [$a33c], a
    ld a, [hl+]
    ld a, $8c
    nop
    ld [$e282], a
    nop
    db $ec
    inc hl
    add hl, bc
    ld b, c
    cp $c7
    db $fc

Jump_072_5ac8:
    ret nz

    jp nz, Jump_000_3e8f

    add e
    nop
    xor c
    add d
    db $e3
    nop
    dec hl
    ld [hl+], a
    add hl, bc
    ld b, c
    cp $c8
    ld d, e
    add b
    cp [hl]
    ld [hl], e
    nop
    db $ec
    cp l
    db $e3
    ld h, [hl]
    ld [bc], a
    nop
    add hl, bc
    ld b, c
    pop bc
    db $fd
    cp $42
    nop
    xor b
    db $fc
    ld h, [hl]
    db $d3
    inc bc
    cp $c7
    jp $80f2


    dec a
    ld b, c
    add hl, hl
    nop
    nop
    xor b
    db $fc
    ld h, a
    push hl
    inc hl
    ld a, h
    and l
    ret nz

    dec h
    jr z, jr_072_5b04

jr_072_5b04:
    add h
    ld [$2101], a
    ld h, [hl]
    ld [bc], a
    dec sp
    inc c
    db $fc
    ld h, c
    sbc e
    ld bc, $c6fe
    ld b, l
    di
    ld b, b
    dec [hl]
    rlca
    dec sp
    inc c
    db $fc
    ld h, d
    jp nz, Jump_072_7e22

    ld h, e
    rlca
    jr nz, jr_072_5b75

    inc a
    dec l
    nop
    ccf
    jr nz, jr_072_5b84

    ld h, d
    add hl, sp
    ld hl, $0d3d
    db $fd
    add e
    ld h, e
    ld hl, $627e
    reti


    inc hl
    nop
    jr c, jr_072_5b63

    ld b, [hl]
    and e
    ld bc, $9260
    and c
    dec a
    dec c
    inc a
    add h
    cp a
    ret nz

    cp $42
    nop
    inc e
    pop bc
    ld [hl], e
    ld c, b
    ld a, c
    ld bc, $2004
    ret nz

    inc b
    call nc, Call_072_4181
    db $ec
    inc a
    add h
    nop
    ld l, b
    ld hl, $41fe
    inc e
    jp nz, Jump_000_0196

    or [hl]
    inc bc
    ld b, a

jr_072_5b63:
    db $e3
    ld c, d
    inc hl
    ret nz

    nop
    add b
    call nc, $ff81
    dec c
    rst $28
    inc bc
    ld a, [hl]
    and l
    jp c, Jump_000_2c21

    ld b, d

jr_072_5b75:
    ld [hl], $00
    ld d, d
    inc bc
    ld c, [hl]
    ld c, [hl]
    adc l
    add h
    sbc a
    ld b, d
    ld [de], a
    add d
    ld a, e
    nop
    rst $38

jr_072_5b84:
    call $02f5
    ld a, [bc]
    cp l
    ld b, c
    ld d, e
    adc h
    ld bc, $e053
    jp nz, Jump_000_23ae

    and $a2
    ld c, d
    inc hl
    db $10
    ld [$c822], sp
    ld h, a
    ld a, e
    db $10
    cp $24
    ld c, a
    ld [hl], e
    dec b
    ld l, e
    inc hl
    call z, Call_000_2004
    ld b, a
    ld bc, $a356
    jp nz, Jump_072_7bac

    xor b
    cp $23
    ld c, a
    xor [hl]
    add e
    ld d, h
    dec h
    nop
    ld c, h
    jp Jump_072_64d4


    add c
    pop de
    ld [hl-], a
    ld [$e600], sp
    ld h, [hl]
    nop
    adc $c5
    rra
    add $58
    ld d, d
    inc bc
    add d
    ld a, [c]
    ld [hl], l
    ld b, l
    ld c, a
    add hl, hl
    rst $38
    ldh [rVBK], a
    ld l, d
    ld h, e
    nop
    db $10
    ld [c], a
    ldh [rSCY], a
    ld e, e
    ld b, h
    ld d, d
    inc bc
    add d
    push af
    ld a, [c]
    ld b, d
    ret nz

    db $e4
    ld l, d
    ld h, d
    nop
    db $10
    ld [c], a
    sub d
    ld b, e
    inc e
    ld h, d
    ld a, [hl]
    db $e4
    add d
    push af
    ret nz

    and h
    add b
    ld [c], a
    add sp, $65
    nop
    sub [hl]
    ld b, e
    ld a, d
    db $e4
    ld a, [hl]
    db $e4
    jp nz, $c0f8

    and $a5
    ld h, [hl]
    db $fc
    jp hl


    add hl, de
    add d
    nop
    ld b, d
    rst $30
    ret nz

    db $ec
    add d
    add sp, $10
    adc c
    ld b, d
    ld a, [$eac0]
    add d
    db $ec
    rst $38
    rst $38
    nop
    add b
    db $ec
    ld l, d
    ld h, c
    db $fc
    jp hl


    rst $38
    rst $38
    ld b, b
    db $eb
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
    adc [hl]
    or l
    nop
    nop
    nop
    ld bc, $ff0d
    rst $38
    rst $38
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
    and $83
    ld c, $0e
    db $fc
    rst $28
    rst $38
    rst $38
    jp $c0e7


    rst $38
    jp Jump_000_0efb


    nop
    rst $38
    ldh a, [$c4]
    rst $38
    add e
    and $7e
    rst $38
    ld [$c3f6], sp
    push hl
    ld a, [hl]
    di
    cp d
    db $fd
    nop
    adc d
    db $e4
    ld a, [hl]
    or $c0
    rst $38
    ld a, [hl]
    ei
    ld a, [hl-]
    db $fc
    ld [$fce7], sp
    push de
    ld a, e
    ld hl, sp+$00
    add [hl]
    srl d
    bit 5, b
    add sp, $75
    sub $86
    call z, $c67a
    add sp, -$34
    dec [hl]
    ret nc

    nop
    sbc h
    rst $20
    inc b
    rst $00
    push af
    xor b
    ld [$a2ca], a
    and l
    ld d, d
    or h
    ld e, e
    and $c0
    db $eb
    ldh a, [$e8]
    and a
    inc e
    jp $d38a


    inc b
    ret


    dec c
    dec c
    ld c, l
    dec c
    rlca
    ld c, l
    ld c, l
    dec l
    xor h
    bit 2, [hl]
    jp hl


    ld a, [hl]
    rst $30

jr_072_5caf:
    push bc
    ldh [$08], a
    ret nz

    cp e
    ld l, l
    dec bc
    rst $38
    ldh [rKEY1], a
    ld l, l
    ld c, l
    rst $38
    and $2d
    ldh a, [$c1]
    ret z

    ld [hl], d
    xor e
    add b
    db $ed
    add h
    ldh [rKEY1], a
    ld l, l
    dec bc
    ld a, [bc]
    ld [bc], a
    cp $eb
    ld c, e
    ld [hl], e
    db $e3
    ld [hl], b
    push bc
    nop
    ld sp, hl
    add h
    ldh [$c3], a
    db $ec
    pop bc
    ldh [$0e], a
    cp a
    ldh [rKEY1], a
    dec l
    dec l
    ld a, d
    or d
    jr nz, @-$32

    pop bc
    pop af

Jump_072_5ce7:
    cp a
    ld [c], a
    inc bc
    ld a, [bc]
    dec bc
    rst $28
    ret nz

    db $ed
    jp Jump_072_74d0


    rrca
    and d
    pop bc
    or $bf
    ld [c], a
    add b
    ld sp, hl
    adc h
    and b
    xor [hl]
    add d
    di
    cp a

Jump_072_5d00:
    and $c0
    push hl
    and [hl]
    xor h
    jr nz, jr_072_5caf

    dec hl
    ret nz

    adc d
    rst $28
    nop
    ld [c], a
    db $fc
    db $e3
    ld a, d
    ret nz

    ld h, [hl]
    xor h
    ld [bc], a
    call $6b0a
    inc bc
    ld a, [bc]
    dec hl
    cp $e2
    ld a, [hl]
    ret


    ldh a, [$e3]
    add b
    pop hl
    cp l
    jp nz, Jump_072_6970

    ld d, $a2
    adc h
    ld l, l
    ld l, e
    pop de
    db $e4
    dec hl
    inc c
    db $e4
    ld a, [$7ce5]
    ld [c], a
    rlca
    dec bc
    dec l
    ld l, l
    ld a, $ad
    ld [bc], a
    xor e
    pop bc
    and $c1
    and c
    db $fc
    db $e4
    ld bc, $bb2b
    add sp, -$46
    xor c
    ld c, e
    ld l, b
    dec bc
    ld h, [hl]
    ld [bc], a
    pop hl
    pop bc
    db $ec
    cp a
    db $e4
    ld b, $fc
    jp nz, Jump_072_6d0d

    ei
    ld l, a
    daa
    adc d
    ld [bc], a
    ldh [rNR12], a
    pop hl
    ld b, e
    and b
    inc sp
    ld l, e
    ld c, e
    rst $38
    push hl
    ld a, [hl]
    rst $20
    dec c
    ld l, l
    ret nz

    db $e3
    ld [hl], h
    ld l, b
    ld a, h
    rst $20
    ld l, h
    ld [bc], a
    db $e4
    dec hl
    dec bc
    ld l, e
    dec bc
    dec hl
    rst $38
    db $e3
    nop
    ld b, c
    ldh [$3d], a
    ld [c], a
    ld a, h
    and c
    db $fc
    add e
    db $f4
    ld c, d
    ld sp, hl
    add sp, -$80
    ld [c], a
    sub d
    call nz, Call_000_0704
    db $e3
    cp l
    ldh [rOCPD], a
    cp a
    and $02
    ld [$ea80], a
    ld l, c
    ld h, a
    ret


    add d
    sbc h
    ccf
    ret nz

    ret nz

    db $e4
    ld l, e
    ld c, e
    ld l, e
    rst $38
    ldh [$7e], a
    ld [c], a
    ld c, e
    ldh [$af], a
    add c
    ld a, h
    add l
    ld a, l
    xor l
    ld e, b
    ld b, l
    adc d
    add h
    dec hl
    ld a, [bc]
    ld l, e
    xor d
    nop
    ldh [rOCPD], a
    pop bc
    ldh [rWX], a
    cp a
    ldh [$2b], a
    dec [hl]
    ldh [$0b], a
    ld bc, $824b
    and e
    add hl, sp
    ld l, [hl]
    sub $4b
    db $d3
    and [hl]
    ld b, b
    ldh [$c1], a
    jp nz, $e040

    add b
    ld a, [hl]
    pop hl
    ld sp, $31e0
    add d
    xor a
    ld h, b
    reti


    add [hl]
    ret nz

    and $cf
    rlca
    ld c, l
    inc h
    reti


    add h
    nop
    pop hl
    dec hl
    ret nz

    db $e3
    ld b, b
    pop hl
    ld c, e
    ld [hl], d
    ldh [rLCDC], a
    pop hl
    ld [$85c0], sp
    add b
    db $ec
    rst $08
    rlca
    ld c, l
    sub h
    and [hl]
    ret nz

    ret nz

    cp a
    ld [c], a
    add c
    pop hl
    add d
    or [hl]
    and d
    ld l, e
    rst $30
    add h
    dec l
    ld h, h
    ldh a, [$08]
    jr z, jr_072_5e56

    add b
    rst $20
    ld c, e
    nop
    cp a
    db $e4
    pop bc
    db $ed
    db $fd
    ld h, d
    ld [hl], h
    dec hl
    ld b, d
    rst $20
    ret nc

    ld b, b
    reti


    jp nz, $8214

    inc b
    ld a, [hl]
    pop hl
    inc a
    and h
    ld l, e
    add d
    pop hl
    or [hl]
    add [hl]
    xor h
    ld b, b
    nop
    ld [$26d9], a
    ld b, $d3
    nop
    ld c, l
    dec l
    res 0, a
    adc h
    pop bc
    ld a, l
    and d
    ld b, l
    ld [c], a
    cp a
    rst $20
    nop
    add b
    db $eb
    sub [hl]
    daa
    adc e
    ld b, b
    sub c
    nop
    adc h
    adc b

jr_072_5e4c:
    cp [hl]
    jp $e5c1


    ld sp, hl
    ld h, e
    ld [bc], a
    ld h, $80
    dec l

jr_072_5e56:
    ld h, d
    ld b, c
    ld h, [hl]
    add hl, hl
    ret


    ld a, [hl+]
    nop
    push hl
    rst $08
    ld b, c
    ld b, b
    adc l
    nop
    rst $20
    add d
    add b
    db $ec
    rlca
    jr z, jr_072_5ea8

    jp nz, $e33f

    cp a
    ld h, d
    rst $38
    ld h, l
    or d
    ld h, e
    jr nz, jr_072_5ede

    ld h, l
    ld a, [hl]
    sub c
    call nz, $fe47
    jp Jump_072_6180


    ld l, e
    adc a
    ld h, h
    ld sp, hl
    ld a, [hl+]
    inc bc
    dec c
    dec l
    ret nz

    ld h, l
    ld a, c
    inc c
    and a
    jr z, jr_072_5e4c

    and e
    pop bc
    ldh [$f7], a
    ld b, e
    dec b
    ld a, [bc]
    pop bc
    jp hl


    ld l, l
    sub a
    add hl, bc
    db $fd
    inc de
    ld a, h
    and c
    ld b, e
    ld [c], a
    cp h
    cpl
    db $10
    pop bc
    pop hl
    ld a, h
    inc d
    ld h, a
    daa

jr_072_5ea8:
    ld a, h
    and d
    dec hl

jr_072_5eab:
    ld d, a
    ldh [rHDMA4], a
    ldh [$c1], a
    xor $a0
    cp l
    ld [$2ebf], sp
    call nz, $9805
    ld h, e
    di
    and c
    ld c, l
    cp a
    ld [$030d], a
    ld l, l
    ld c, l
    jp nc, $c0a7

    di
    ld l, c
    ld [hl+], a
    ld d, a
    ld hl, $a35c
    cp a
    and $00
    ret


    ret nz

    rst $00
    pop bc
    db $d3
    ld l, l
    add b
    ld a, [c]
    cp $a1
    ret nz

    and $7e
    db $e3

jr_072_5ede:
    add [hl]
    ldh [rNR10], a
    ld e, $a5
    inc bc
    ld c, l
    or a
    rrca

Jump_072_5ee7:
    ld a, [hl]
    and c
    ld c, e
    inc e
    and e
    cpl
    and c
    add l
    pop hl
    inc bc
    ld l, l
    ld c, l
    ret nz

    db $e4
    db $dd
    dec b
    add b
    rst $08
    or [hl]
    ld c, b
    sbc b
    ld b, d
    sub $e8
    nop
    ld e, a
    db $10
    ret


    ld b, a
    ld a, e
    stop
    ld [c], a
    sub [hl]
    db $eb
    rst $18
    ld a, [bc]
    ld a, a
    db $d3
    db $76
    ld b, a
    nop
    ld b, $a1
    ld e, b
    ld b, l
    ld hl, $996c
    xor c
    rst $38
    call nc, $c280
    nop
    db $e4
    add hl, hl
    xor b
    nop
    ret c

    ld c, d
    cp a
    reti


    ld b, b
    ret nz

    adc b
    jr nz, jr_072_5eab

    jp $ee45


    add [hl]
    adc l
    ret nz

    ld a, [$d300]
    xor e
    ldh a, [$ed]
    cp $f7
    ret nz

    add sp, -$6c
    ld a, [hl+]
    sub $68
    rst $38
    ld a, [$e340]
    nop
    xor b
    dec hl
    res 1, c
    ret nz

    rst $38
    ret nz

    db $e4
    add hl, bc
    ret z

    sub b
    ld c, h
    ret nz

    rst $38
    xor h
    ld a, [bc]
    nop
    inc c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $28
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
    adc [hl]
    or l
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
    ld a, [$01f9]
    rrca
    rst $38
    db $eb
    pop hl

jr_072_5f84:
    pop af
    call nc, $c1e9
    rst $28
    pop af
    ld sp, hl
    and c
    ldh [$f0], a
    ei
    nop
    ret nc

    db $fd
    ld [hl], b
    rst $28
    ldh [rIE], a
    and c
    ld a, [$ec51]
    ld sp, $d1fd
    ret nc

    ldh [$fb], a
    nop
    rrca
    db $eb
    ldh [$fe], a
    sbc a
    ldh a, [$e0]
    rst $38
    ret nz

    ret c

    ld a, $ce
    cpl
    pop bc
    ld a, [hl+]
    rst $00
    nop
    jr nz, jr_072_5f84

    dec e
    rst $00
    ld bc, $e0d1
    ld [c], a
    db $db
    and l
    pop bc
    or d
    dec de
    ld a, [c]
    ldh [rIE], a
    nop
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
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
    add d
    ei
    ld_long a, $fff1
    push hl
    pop hl
    db $fc
    sbc $f3
    pop hl
    jp hl


    cp l
    ldh a, [$f1]
    inc sp
    pop af
    ld hl, $e5ff
    sbc l
    db $ed
    db $10
    db $10
    add e
    pop hl
    add sp, -$1d
    ld [hl], b
    ld a, h
    ldh [$df], a
    ld [c], a
    ldh [$ed], a
    pop bc
    ldh [$f1], a
    pop af
    ld de, $e1ff
    nop
    rst $18
    ld [c], a
    inc sp
    ld [$e5e0], a
    db $e4
    pop hl
    ei
    ld [c], a
    ldh [$f6], a
    dec de
    pop hl
    cp [hl]
    ldh [rSC], a
    ret nz

    xor $f8
    adc c
    pop hl
    ldh [$f6], a
    push hl
    jp $e280


    ld a, l
    pop hl
    ld [hl], l
    ld [c], a
    nop
    ld hl, $83f0
    ld [c], a
    ld a, l
    pop hl
    ccf
    xor $01
    db $e4
    ld hl, $ffe5
    adc $e0
    rr h
    ret nz

    push de
    add c
    db $db
    ld sp, $3131
    dec a
    add $1c
    jp c, $bff8

    inc c
    rst $38
    rst $38
    pop af
    ldh a, [rNR13]
    inc de
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
    add sp, $00
    nop
    nop
    cp $01
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
    db $e4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_072_6113

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    sub e
    add hl, hl
    rra
    ld d, e
    ld [$6003], a
    ld [bc], a
    rst $38
    ld a, a
    ld a, [c]
    inc bc
    db $ec
    inc bc
    ld h, b
    ld [bc], a
    and b
    ld a, l
    rst $38

jr_072_6113:
    ld a, a
    rrc h
    ld h, b
    ld [bc], a
    dec sp
    ld l, e
    ld [$6003], a
    ld [bc], a
    nop
    dec c
    sub h
    ld bc, $2bff
    ld h, b
    ld [bc], a
    nop
    dec c
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_072_612f:
    dec h
    push de
    nop
    rst $38

jr_072_6133:
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, jr_072_612f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $fc
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    cp $c2
    ld hl, sp-$78
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ldh [$fd], a
    rst $38
    ld_long a, $ffff
    call c, $e0ff
    rst $38
    add c
    cp $08
    db $ed
    ldh a, [$f8]
    push hl
    jr nz, jr_072_6133

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    sbc a

Jump_072_6180:
    ld a, a
    rst $38
    rla
    ld a, a
    dec bc
    ld a, a
    ld b, a
    ccf
    rlca
    rra
    rst $38
    inc bc
    rra
    ld [de], a
    rrca
    ld bc, $090f
    rlca
    rst $38
    ld bc, $0007
    rlca
    inc b
    inc bc
    jr @+$01

    rra
    nop
    rst $38
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [$c8], a
    ldh [rIE], a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [rP1], a
    ld a, d
    and d
    ldh [rNR41], a
    and b
    ldh [$7b], a
    rst $38
    rst $30
    rst $38
    jp c, $fde3

    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$20
    db $fc
    rst $38
    ldh a, [$fc]
    jp nc, $a0fc

    db $fc
    ldh [$f8], a
    ei
    db $e4
    ld hl, sp-$80
    pop hl
    rst $38
    rst $38
    rst $18

Jump_072_61d8:
    rst $38
    cp l
    ei
    rst $38
    jp $e0b6


    nop
    rst $20
    db $fc
    rst $38
    db $f4
    sbc a
    rst $38
    add sp, -$01
    ld hl, sp-$02
    cp $e0
    or $e0
    db $fc
    add l
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$f1c0], a
    ld b, b
    ldh [$ea], a
    ret nc

Jump_072_6202:
    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    pop bc
    rst $38
    nop
    pop bc
    add l
    jp $c3a1


    nop
    add e
    cp a
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [$c0], a
    rst $38
    and b
    ret nz

    ld b, b
    ldh [$e8], a
    ldh a, [$d1]
    db $fc
    ld a, a
    db $ec
    rst $38
    ld a, [de]
    rst $38
    add b
    ld e, $12
    call nc, $bfc2
    ld c, b
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    ld [bc], a
    rst $38
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b
    nop
    ccf
    jr nz, jr_072_6245

jr_072_6245:
    db $10
    ld [$0400], sp
    or d
    ret nz

    and d
    pop bc
    ldh [$f0], a
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $c33c


    pop af
    inc a
    db $fd
    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    call c, Call_000_1eff
    pop af
    inc a
    db $e3
    ld a, h
    jp $c37c


    rst $38
    db $e3
    sbc h
    jp $18bc


    rst $20
    inc a
    jp Jump_000_3dff


    jp nz, $e719

    rla
    xor $5f
    cp b
    rst $38
    ld a, a
    ldh [$f3], a
    adc h
    dec de
    rst $20
    rra
    db $fc
    rst $38
    ld a, [hl]
    pop hl
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    cp $c4
    pop hl
    sbc b
    rst $20
    db $fc
    ld b, e
    call c, $f863
    rst $38
    daa
    ld l, b
    or a
    ld a, h
    sub e
    db $f4
    dec de
    ld hl, sp-$01
    rrca
    ld hl, sp+$0f
    sbc $25
    inc a
    rst $00
    ld a, $ff
    jp $c23f


    ld a, $c3
    rst $00
    add hl, sp
    jp Jump_000_3d7f


    db $d3
    rst $38
    rst $10
    jr z, @+$01

    nop
    and b
    rst $20
    rst $38
    db $e3
    sbc h
    db $e3
    sbc h
    ld a, h
    add e
    inc a
    jp $fcf1


    db $fc
    ldh [$f4], a
    pop hl
    and b
    pop hl
    jr @+$01

    db $db
    rst $20
    rst $28
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    ccf
    ret nc

    rst $38
    inc c
    di
    inc a
    db $e3
    inc a
    db $e3
    inc c
    di
    rst $38
    ccf
    ret nc

    dec de
    db $f4
    xor e
    rst $38
    ld e, a
    db $fc
    rst $18
    cp [hl]
    pop af
    ld a, h
    db $e3
    db $fc
    ld [hl], b
    db $e4
    rst $38
    rst $38
    rst $38
    jp c, $f5ff

    rst $38
    xor e
    rst $38
    ld d, a
    cp $77
    cp a
    ld hl, sp-$01
    ld [hl], b
    ldh [$57], a
    rst $38
    cp a
    ld [hl], b
    ld [$efff], a
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $30
    ccf
    rst $38
    ld l, e
    cp a
    ld [hl], l
    sbc a
    ei
    rra
    db $fd
    rrca
    rst $38
    ld a, [$dd0f]
    daa
    ld a, $c7
    ccf
    jp Jump_072_6ebc


    ldh [rSVBK], a
    ld [c], a
    rst $10
    rst $38
    ei
    inc a
    ld [hl], b
    xor $c3
    ld a, [$e1a2]
    cp h
    ld [hl], b
    ld [c], a
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, l
    ld sp, hl
    rst $38
    and e
    and c
    ldh a, [$c3]
    cp e
    db $f4
    ld e, e
    db $f4
    cp h
    rst $20
    db $e3
    ld a, h
    db $e3
    db $fc
    pop hl
    db $f4
    pop hl
    rst $38
    add c
    rst $38
    ld [hl], a
    rst $20
    cp [hl]
    rst $38
    jp c, $f7e1

    rst $38
    db $dd
    di
    add b
    ei
    rst $10
    rst $38
    sub d
    ldh [$7f], a
    db $eb
    ccf
    rst $30
    ccf
    ccf
    db $ed
    ld a, a
    rst $10
    ld a, a
    rst $28
    rst $38
    ret nc

    pop bc
    ld l, $e0
    db $fd
    rst $20
    ld hl, sp-$1b
    rst $10
    rst $38
    xor h
    rst $38
    ld d, h
    ei
    rst $18
    xor b
    rst $30
    ld e, b
    rst $20
    db $fc
    sbc [hl]
    ldh [$98], a
    rst $20
    cp $40
    push hl
    ld d, [hl]
    rst $38
    cp b
    rst $38
    db $e4
    ei
    sbc b
    ccf
    rst $20
    ld d, a
    rst $38
    cp h
    rst $38
    ld h, h
    ld hl, sp-$20
    ret z

    push hl
    rst $38
    rst $28
    rst $38
    ld d, a
    rst $38
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    dec sp
    rst $18
    dec c
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $20
    ld a, a
    ld a, [de]
    rst $20
    ccf
    jp $c33d


    add hl, de
    or b
    ldh [$ef], a
    jr c, @+$01

    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    cp h
    adc [hl]
    ld d, [hl]
    ret nz

    ret c

    rst $20
    ld e, b
    ld hl, sp-$20
    and b
    pop hl
    ld b, b
    db $e3
    jp Jump_072_78fa


    and $b0
    add d
    ldh [$a4], a
    ei
    ld l, b
    rst $30
    xor b
    cp a
    rst $30
    ld h, h
    ei
    or h
    ei
    ld d, b
    ld b, c
    pop hl
    rst $38
    xor [hl]
    ld b, b
    db $eb
    ld l, l
    rst $38
    ld [hl], a
    sub d
    ldh [$37], a
    adc d
    ldh [$57], a
    ld d, e
    rst $38
    rst $28
    and c
    add e
    xor $e0
    db $dd
    ld hl, sp-$40
    ld d, l
    inc de
    add b
    push bc
    xor a
    sub h
    add b
    or a
    sub b
    add b
    ld hl, sp-$1b
    rst $38
    push hl
    xor $ff
    ld e, l
    cp e
    ld a, [$bfc2]
    rst $38
    ld l, a
    db $fc
    ldh [$5f], a
    ld hl, sp-$1a
    adc d
    ld h, b
    add e
    cp a
    reti


    ld h, b
    ld e, a
    ret z

    ldh [$f0], a
    push hl
    ld sp, hl
    rst $20
    xor c
    rst $38
    rst $38
    ld d, h
    db $fc
    add c
    ldh a, [rDMA]
    ldh [$8b], a
    rst $38
    ret nz

    ld d, a
    ret nz

    rra
    add b
    xor a
    add b
    rst $30
    cp $36
    add b
    ld [$54ff], a
    rst $38
    and b
    db $fc
    ld b, c
    rst $38
    ldh a, [$0a]
    ret nz

    rla
    nop
    xor b
    cp $41
    rst $38
    ld hl, sp-$7e
    ldh [$15], a
    add b
    cpl
    nop
    ld e, a
    cp $21
    add b
    rst $38
    nop
    add sp, -$02
    or h
    cp $e8
    rst $38
    db $fc
    pop de
    db $fc
    ld h, d
    ld hl, sp-$2f
    ld hl, sp-$5d
    rst $38
    ldh a, [$c5]
    ldh a, [$a3]
    ldh a, [rBGP]
    ldh [$8b], a
    rst $28
    ldh [rNR22], a
    ret nz

    adc a
    jp nz, Jump_000_2fe0

    add b
    ld e, a
    rst $38
    nop
    sub c
    rst $38
    inc h
    inc a

jr_072_648e:
    add l
    nop
    ld e, d
    ei
    nop
    xor l
    jp nc, $ffe2

    nop
    xor a
    add b
    rla
    rst $38
    add b
    ld l, a
    ret nz

    rra
    ret nz

    sub a
    ret nz

    ld c, a
    di
    ret nz

    rla
    and b
    ldh [$30], a
    pop bc
    ld b, c
    rst $38
    nop
    jp $28df


    nop
    ld d, l
    nop
    cp d
    rst $08
    ld h, b
    ld b, e
    ldh a, [rIE]
    and l
    ldh a, [rWX]
    ldh [$87], a
    ldh [rWX], a
    ldh [$d3], a
    add l
    ldh [$f4], a
    pop hl
    jr nc, jr_072_652a

    rst $28
    jr nc, jr_072_648e

    ld b, c
    rst $38
    rst $38
    inc h
    rst $20
    sub l
    add c
    push af

Jump_072_64d4:
    rst $38
    add sp, -$02
    db $fd
    di
    adc [hl]
    ld [c], a
    ld [$f4fe], a
    cp $e9
    rst $38

Jump_072_64e1:
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    rst $38
    ld c, a
    ldh [$87], a
    ldh a, [rHDMA5]
    db $fc
    xor c
    rst $38
    rst $38
    ccf
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    sbc a
    call nc, Call_072_7aff
    rst $38
    db $ed
    di
    ld b, c
    adc b
    db $e4
    ccf
    rst $38
    nop
    rlca
    ret nz

    ld b, c
    ld hl, sp-$58
    cp $e3
    rst $38
    rrca
    push hl
    rrca
    rr a
    rst $00
    rra
    adc l
    rst $38
    ccf
    sub a
    ccf
    cpl
    ld a, a
    dec de
    ld a, a
    cp $ff
    nop
    db $fc
    ld bc, $01fc
    ld sp, hl
    inc bc

jr_072_652a:
    ld hl, sp+$7f
    inc bc
    ld sp, hl
    inc bc
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    cp [hl]
    ld b, e
    ld h, c
    and l
    nop
    add c
    rst $38
    rst $38
    ld [c], a

jr_072_653e:
    ldh [$fe], a
    db $ec
    sbc $e0
    ld_long a, $ffe3
    ld bc, $e33a
    inc a
    nop
    nop
    db $db
    rst $20
    and d
    sbc d
    and b
    db $eb
    rst $38
    or b
    pop hl
    ld a, [c]
    rrca
    cp a
    pop af
    rlca
    ld a, [c]
    rlca

jr_072_655c:
    push af
    rrca
    and h
    pop hl
    inc a
    rst $08
    nop
    inc h
    rst $20
    add d
    add b
    and h
    ld [hl], h
    ld b, c
    rla
    ld a, a
    push de
    cpl
    adc b
    and b
    adc e
    sub d
    ldh [$cf], a
    adc [hl]
    ld b, b
    cpl
    ld a, a
    ld [hl], l
    xor b
    jr jr_072_655c

    cp $9c
    add sp, -$41
    nop
    ld a, a
    db $fc
    and $55
    ccf
    xor h
    ret nz

    ld [$c0f8], sp
    ld l, $ec
    ld [c], a
    ld e, a
    ldh a, [$e2]
    ld [c], a
    db $ec
    pop hl
    cp a
    ld l, h
    add sp, -$0a
    db $ed
    jr nc, jr_072_653e

    dec de
    db $e4
    dec d
    rst $38
    xor $2d
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    cp a
    xor d
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    rst $38
    ld [bc], a
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    rst $38
    ld a, [bc]
    adc e
    jr nz, jr_072_65e1

    nop
    db $dd
    nop
    cp l
    db $fd
    ld b, d
    ld [$16a1], sp
    xor c
    add sp, $03
    add l
    ld [hl+], a
    rst $38
    ld a, [hl+]
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    rst $30
    add hl, de

jr_072_65d8:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    rst $38

jr_072_65e1:
    ld [$ccf7], sp
    ei
    sub b
    ld l, a
    ld a, [hl+]
    rst $38
    rst $38
    rra
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    rst $28
    ld hl, sp+$07
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, Call_000_3fff
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    db $fd
    jp $e1d0


    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_072_65d8

    rst $38
    ld d, d
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    rst $38
    ld a, [de]
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    rst $38
    ld l, l
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    rst $38
    ld c, [hl]
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    rst $38
    ld d, a
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    cp l
    dec hl
    sub b
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    rst $38
    call nz, $b4f3
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    rst $18
    ld a, [hl-]
    rst $18

jr_072_6653:
    ld c, l
    rst $38
    or h
    ld h, b
    ret nz

    xor b
    rst $38
    ld a, l
    ld [hl], h
    cp d
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    ld [hl], b
    add [hl]
    ld a, a
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]
    inc e
    add b
    db $fd
    xor [hl]
    ld a, [hl-]
    add b
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    db $fd
    rst $10
    ld [hl], a
    ei
    and d
    adc d
    add b
    dec c
    add [hl]
    add b
    ld a, [bc]
    rst $38
    ld a, a
    ld h, a

Jump_072_6686:
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    sbc $e0
    db $fd
    cp $9a
    ld h, b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    sbc e
    db $dd

jr_072_6699:
    ld [hl+], a
    ld l, h
    jr nz, jr_072_6653

    rst $38
    ld e, [hl]
    ld c, $a0
    sbc $ff
    ld a, a
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp a
    ld d, a
    ld [hl], b
    ldh [$f7], a
    ld l, l
    cp a
    ld e, $70
    ldh [rHDMA2], a
    db $fd
    xor $f9
    rst $38
    ld c, c
    or $a7
    ld hl, sp+$47
    ldh a, [$b4]
    ret


    rst $38
    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rra
    ld c, d
    cp a
    rst $38
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    ld [c], a
    jr c, jr_072_6699

    cp $00
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp $01
    xor b
    rst $30
    rlca
    ld a, b
    add a
    db $10

jr_072_66e1:
    db $e3
    and c
    ld e, $8c
    ld a, d
    rst $38
    ld d, a
    xor b
    jr c, @-$3c

    dec c
    ldh a, [$3d]
    jp nz, $d8fe

    ld h, c
    cpl
    sub b
    ld sp, hl
    nop
    adc d
    ld hl, $9f28
    rlca
    ret c

    rlca
    cp h
    ld b, e
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    rst $38
    db $fd
    ld bc, $0dfe
    ldh a, [rSC]
    db $fd
    ld a, [hl+]
    rst $38
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    ld e, a
    add b
    xor c
    rst $38
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    ldh [$1f], a
    add b
    rst $38
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    sbc a
    jr nz, jr_072_66e1

    rst $30
    ld [bc], a
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    or l
    db $f4
    dec bc
    rst $38
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    add b
    inc c
    di
    ld d, a
    rlca
    ld hl, sp+$01
    dec b
    ret nz

    add b
    sbc [hl]
    nop
    and b
    sbc d
    nop
    ei
    ld l, b
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    nop
    ld l, $39
    pop de
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $90
    call nz, $e3d0
    rst $38
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    ld e, d
    and c
    push af
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b
    ret nz

    ld d, l
    cp a
    adc [hl]
    ld a, a
    cp $90
    jp z, Jump_072_5ac8

    and c
    inc a
    jp $ae53


    sbc a
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    ld l, e
    add c
    ret nz

    rst $38
    ccf
    ld b, b
    cp a
    ld b, b
    rst $38
    or b
    rst $28
    call z, $f3ef
    and h
    ei
    dec d
    cp h
    ret nz

    dec b
    rst $38
    ld [bc], a
    ld [$a629], a
    ld d, e
    or b
    ret nz

    ld [hl], l

jr_072_67a1:
    or b
    ret z

    ld [hl], a
    adc b
    call z, $b0ea
    jp z, $b037

    call z, $b04e
    adc $ae

jr_072_67b0:
    ld sp, hl
    ld a, c
    or $b0
    ret z

    cp a
    ld e, a
    or b
    jp $e21d


    ld [$fef7], sp
    jr nz, jr_072_67a1

    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    add c
    add sp, -$12
    jr nc, jr_072_67b0

    ld h, c
    ld e, $95
    or b
    ret nz

    add hl, sp
    jp nz, $fd0f

    ldh a, [rIE]
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
    rst $28
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

jr_072_67f4:
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
    ld a, [hl]
    call c, Call_072_40c0
    rst $38
    inc b
    ei
    ld e, d
    and l
    dec sp
    add b
    cp $41
    nop
    rst $38
    rst $38
    ld e, d

jr_072_6812:
    and l
    jr nz, jr_072_67f4

    inc h
    rst $38
    rst $20
    ld h, [hl]

jr_072_6819:
    and l
    dec h
    and $66
    and l
    ld h, [hl]
    cp a
    and l
    and h
    ld h, a
    ld h, [hl]
    and l
    inc h
    ld [hl], b
    ret nz

    ld bc, $feff
    dec b
    ei
    ld e, $e6
    jr jr_072_6819

    jr nc, jr_072_6812

    ret nc

    ld de, $63f3
    and d
    cp d
    ld h, c
    ld d, l
    nop
    ld e, a
    xor e
    nop
    ld e, l
    nop
    ld [$60ae], a
    xor [hl]
    xor d
    ld h, b
    rst $18
    adc d
    nop
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    nop
    rst $18
    dec d

jr_072_6853:
    nop
    xor b
    nop
    ld d, c
    sbc [hl]
    add b
    ld [hl+], a
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
    ld [hl], e
    nop
    ld bc, $0094
    jr nz, jr_072_686e

jr_072_686e:
    add b
    adc [hl]
    nop
    xor $ff
    ldh a, [rNR23]
    inc a
    ld a, [hl]
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    rst $28
    ld a, b
    db $fc
    inc a
    ld a, [hl]
    rlca
    add b
    ld [$3e1c], sp
    rst $38
    ld a, $3e
    ld [hl], $7f
    ld h, $7f
    inc b
    ld l, $ef
    nop
    inc c
    nop
    nop
    and d
    ret nz

    cp $2b
    db $fc
    rst $38
    dec c
    ld a, [$fd32]
    ld d, l
    ld [$d7a8], a
    rst $38
    db $f4
    adc e
    rst $20
    rst $38
    jp c, $f53d

    ld a, [bc]
    rst $18
    xor d
    ld d, l
    ld b, c
    cp [hl]
    inc d
    jr nz, jr_072_6853

    ld [hl], l
    rst $38
    rst $38
    sub l
    db $eb
    dec bc
    push af
    and l
    ei
    ld c, d
    rst $30
    rst $38
    and [hl]
    ei
    call $97f3
    jp hl


    ld c, a
    pop af
    cp $40
    ld h, b
    rst $38
    ld a, [c]
    db $fd
    xor c
    cp $52
    db $fd
    rst $38
    add c
    cp $2a
    push de
    sub l
    db $eb
    rst $18
    sbc c
    rst $38

jr_072_68db:
    sbc a
    ld c, l
    daa
    rla
    and e
    di
    db $db
    pop hl
    rst $38
    xor $f1
    or h
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    rst $38
    sbc h
    ld c, a
    ld h, $17
    and d
    di
    jp c, $ffe1

    xor $71
    db $f4
    dec sp
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
    jr jr_072_68db

    ld h, c
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

jr_072_6921:
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
    db $76
    add b
    jr nz, jr_072_6958

    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    rst $38
    jr jr_072_6921

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

jr_072_6946:
    nop
    sbc c
    ld h, [hl]
    ld a, $d0
    ld h, c
    dec a
    jp nz, $e718

    add hl, de
    ld hl, sp+$04
    db $10
    add c
    rst $00
    ld d, [hl]
    xor c

jr_072_6958:
    ld [hl+], a
    ld d, [hl]
    ldh [$90], a

jr_072_695c:
    add e
    add b

jr_072_695e:
    and e
    ld de, $ffef
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    cp $e0
    ld h, l
    jr z, jr_072_6946

    ld b, h

Jump_072_6970:
    ei
    or h
    rst $38
    ret nc

    cp $62
    nop
    rst $10

jr_072_6978:
    ld d, [hl]
    rst $20
    and l
    or a
    db $ed
    db $fd
    ld a, a

jr_072_697f:
    rst $28
    db $eb
    cp a
    rst $38
    ld a, [hl-]
    rst $28
    jr c, jr_072_6998

    jr nz, jr_072_6978

    jr z, @+$01

    jr c, jr_072_695c

    db $fc
    pop hl
    ld l, $ef
    ccf
    cp a
    rst $38
    ld e, $38
    rst $38
    ld d, [hl]

jr_072_6998:
    rst $10
    ldh [$e3], a
    xor e
    ld e, e

jr_072_699d:
    rst $38
    ld a, [hl-]
    push hl
    pop hl
    rst $38
    jr c, jr_072_697f

    ldh [$28], a
    rst $10
    ldh [$fe], a
    pop hl
    ld [c], a
    rst $38
    rst $18
    jr c, jr_072_695e

    ld e, [hl]
    bit 4, [hl]
    rst $38
    ld e, a
    and a
    and c
    sbc a
    xor e
    rst $10
    rst $38
    ld a, [hl]
    rst $38
    ret c

    cpl
    jr c, @+$01

    ld l, [hl]
    rst $18
    ld a, [bc]
    rst $20
    db $fd
    rst $18
    ldh a, [$e2]
    ld a, [hl]
    rst $38
    ccf
    rst $28
    jr nz, jr_072_699d

    rst $38
    or [hl]
    dec hl
    db $ed
    cp d
    dec sp
    rst $18
    db $76
    rst $18
    rst $18
    ld d, h
    rst $38
    ld e, l
    rst $38
    ld a, [hl+]
    ld [hl], b
    ldh [$de], a
    ld a, a
    rst $10
    add hl, hl
    cp $55
    db $ec
    nop
    ld [hl], l
    add $00
    ret nz

    rst $38
    ld c, e
    sbc b
    ld h, a
    ld d, b
    ld h, c
    ld e, b
    ld b, b
    ld b, $00
    ld l, e
    dec hl
    ld b, b
    ld l, b
    rst $38
    inc a
    inc bc
    add h
    ld [hl], e
    or h
    db $eb
    inc hl
    call z, $b0fe
    pop hl
    ld a, [hl-]
    rst $18
    rst $30
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    rst $30
    ld a, a
    ei
    ld l, $e0
    push bc
    dec de
    rst $20
    ccf
    call nz, Call_000_3fff
    ret z

    rra
    add sp, -$01
    rst $38
    ld a, [$fdff]
    push de
    ld e, $20
    rst $10
    rst $38
    xor a
    db $fc
    rst $18
    ld hl, sp-$15
    xor a
    ld hl, sp-$4d
    ld b, b
    inc a
    ld d, $61
    ccf
    jp $df3e


    rst $00
    db $dd
    cpl
    jp c, $f02f

    rst $20
    inc a
    rst $00
    rst $38
    ret c

    cpl
    ret c

    cpl
    rst $28
    ldh a, [$b8]
    rst $00
    rst $38
    ld d, $f9
    db $fc
    db $e3
    db $db
    rst $20
    di
    adc $ff
    and $de
    adc a
    rst $38
    ld a, a
    rst $38
    ld d, e
    rst $28
    rst $38
    sbc c
    rst $20
    ld sp, hl
    rst $38
    xor [hl]
    rst $18
    ld e, a
    ld h, a
    rst $38
    ld c, e
    ld [hl], a
    rst $20
    ei
    sbc a
    ld sp, hl
    cp l
    ld sp, hl
    rst $30
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    cp $fd
    db $fd
    ld a, a
    rst $38
    cp $f1
    rst $38
    sbc c
    sbc a
    cp l
    sub c
    nop
    pop hl
    ld a, a
    rst $38
    ldh [$fa], a
    pop hl
    ld [$e4e3], a
    db $e3
    ld hl, sp-$08
    cp $f9
    cp $ea
    db $e3
    db $e4
    db $e3
    rra
    rra
    ld a, a
    ld a, a
    db $ec
    rst $38
    di
    adc a
    rst $38
    ld a, c
    rst $38
    add sp, -$09
    di
    rst $18
    rst $28
    add $fe
    sbc $fe
    ld e, b
    ld bc, $ff67
    rst $38
    db $d3
    rst $28
    db $fd
    rst $38
    rst $08
    rst $38
    ld h, a
    ld a, a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    ld sp, hl
    ei
    ei
    jr c, jr_072_6afa

    inc bc
    sbc [hl]
    ldh [$98], a
    ldh [$fb], a
    rst $38
    cp a
    inc sp
    ld bc, $0640
    ld h, h
    ld [$e4e3], a
    db $e4
    ei
    call c, Call_000_22e1
    rlca
    rst $18
    rst $18
    or d
    nop
    rst $38
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$0c
    ldh a, [$f8]
    cp [hl]
    cp $e4
    rst $18
    rra
    rrca
    rrca
    rra
    rst $38
    ld [c], a
    dec e
    rra
    inc e
    ld e, $1e
    inc e
    inc e
    or l
    rst $20
    ld c, [hl]
    pop hl
    ld c, h
    pop hl
    db $fc
    sub l

jr_072_6afa:
    pop hl
    ld c, [hl]
    ld [c], a
    db $fc
    cp $fe
    db $ed
    pop hl
    ld hl, sp-$41
    ldh a, [rBCPS]
    nop
    sbc b
    db $10
    ld [$2058], sp
    ld [$00ff], sp
    jr nc, jr_072_6b31

    stop
    ld e, $1e
    dec a
    rst $38
    dec a
    ld [hl], $06
    ld b, e
    inc bc
    add $86
    ld b, a
    cp a
    rlca
    ld b, a
    rlca
    rst $00
    rlca
    ccf
    rst $38
    db $e4
    cp a
    rst $38
    cp a
    rra
    rra
    sbc a
    sbc a
    ld e, a
    ld e, a

jr_072_6b31:
    ld a, [c]
    rst $38
    ret nz

    pop hl
    pop bc
    pop hl
    pop bc
    db $e3
    jp $ff83


    add b
    db $e4
    ret nz

    adc h
    adc b
    sub b
    sub b
    or b
    rst $38
    and b
    or c
    and c
    ldh a, [$e0]
    pop hl
    pop hl
    ld [hl], d
    rst $38
    ld h, d
    pop bc
    pop bc
    ld [c], a
    ld [c], a
    push de
    push de
    add a
    rst $38
    rlca
    add a
    rlca
    add h
    inc b
    add a
    nop
    adc h
    ei
    ld [$9184], sp
    add b
    sbc b
    db $10
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $08
    rrca
    rlca
    rlca
    dec bc
    dec bc
    rlca
    rst $38
    rlca
    inc bc
    inc bc
    dec b
    dec b
    adc d
    adc d
    ld d, l
    cp a
    ld d, l
    cp [hl]
    cp [hl]
    db $eb
    rst $38
    pop af
    xor [hl]
    nop
    ld d, a
    or $00
    ldh [$eb], a
    db $eb
    xor d
    ret nz

    rst $38
    xor a
    rst $38
    push bc
    cp $9e
    nop
    ld e, l
    rst $38
    xor $ff
    ld [hl+], a
    ld [hl+], a
    ld d, l
    ld e, a
    ld d, l
    cp a
    cp a
    ld l, e
    ld a, a
    ldh [$e1], a
    rst $10
    ldh [$c0], a
    rst $38
    inc hl
    inc hl
    ld d, l
    ld d, l
    cp e
    cp e
    rst $38
    rst $38
    push af
    ld [hl], a
    ld a, [hl]
    nop
    ld [hl], a
    dec bc
    ldh [rP1], a
    nop
    ld c, [hl]
    ld [hl], b
    ld a, a
    inc e
    ld h, b
    ld a, [hl-]
    ld b, b
    ld [hl], h
    nop
    ld l, d
    ld hl, sp+$60
    cp [hl]
    ld l, $81
    ld b, d
    nop
    inc h
    nop

jr_072_6bca:
    jr jr_072_6bca

    ldh [rNR50], a
    ld b, $f6
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $08
    ld b, [hl]
    push bc
    add $c7
    db $fc
    rst $38
    ld hl, sp-$09
    ret z

    ret


    di
    jp z, $fccb

    rst $38
    ld hl, sp-$09
    call z, $cecd
    rst $08
    inc a
    db $fc
    rst $38
    ld hl, sp-$09
    ret nc

    pop de
    jp nc, $fcd3

    rst $38
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
    ld h, b
    ld c, $ec
    rst $38
    push hl
    nop
    rst $18
    ld [de], a
    ld a, [c]
    ret nz

    ldh [$bf], a
    ret nz

    cp e
    ldh [$f8], a
    nop
    rst $18
    ld d, $f3
    add b
    ldh [$c1], a
    jp nz, $b946

    cp d
    ld hl, sp+$00
    rst $18
    ld d, $f3
    push bc
    ldh [$c3], a
    call nz, $bb46
    cp h
    ret c

    nop
    rst $18
    ld a, [bc]
    ldh a, [rDMA]
    pop hl
    cp e
    cp h
    db $fd
    ret nz

    cp l
    cp [hl]
    jr nc, jr_072_6c89

    db $e4
    nop
    rst $18
    inc c
    jp nz, $e00d

    cp c
    cp d
    ld b, [hl]
    ld [c], a
    push bc
    ldh [$1f], a
    sbc l
    sbc e
    sbc a
    sbc l
    ld b, [hl]
    dec a
    ldh [$38], a
    ldh [rP1], a
    rst $18
    ldh a, [rNR10]
    jp $e00d


    adc b
    pop hl
    ld b, [hl]
    ldh [rDMA], a
    ld b, [hl]
    sbc l
    sbc d
    rrca
    xor e
    xor e
    sbc d
    sbc l
    dec a
    ldh [$38], a
    ldh [rP1], a
    rst $18
    db $10
    jp Jump_000_0dfc


    ldh [$88], a
    pop hl

jr_072_6c89:
    sbc e
    sbc a
    sbc e
    sbc e
    sbc e
    sbc d
    ccf
    ld b, [hl]
    xor h
    xor h
    ld b, [hl]
    sbc d
    sbc l
    dec a
    ld [c], a
    nop
    rst $18
    jr @+$59

    pop hl
    inc c
    jp $e088


    ld b, [hl]
    xor e
    ld bc, $7ec6
    ldh [$2e], a
    ldh [$ac], a
    pop af
    add b
    nop
    call c, $c0bf
    rst $08
    ret nz

    sbc l
    adc b
    db $e4
    ld b, [hl]
    sbc c
    xor h
    cp a
    and $3d
    ldh [$bb], a
    cp h
    pop af
    add c
    nop
    call c, $d5c1
    jp nz, $c0cf

    sbc d
    jp z, $ace6

    add b
    and l
    xor h
    xor e
    rlca
    sbc h
    cp l
    cp [hl]
    pop af
    add c
    nop
    call c, $c013
    ld b, a
    pop hl
    jp z, $0ee5

    ld b, c
    and [hl]
    ld b, [hl]
    xor h
    sbc h
    ld bc, $00e3
    db $db
    ld c, d
    ret nz

    sub b
    ret nz

    ld [$e8c9], sp
    ld b, h
    ld [c], a
    ld sp, hl
    jp nz, $ee9e

    and l
    nop
    ret c

    sub a
    and b
    ld b, e
    ldh [$c0], a
    pop bc
    db $ec
    add b
    pop bc
    cp c
    add b
    add b
    ldh [$fc], a
    or d
    ld [de], a
    xor d
    cp l
    cp [hl]
    ld sp, hl
    sbc h
    adc e

Jump_072_6d0d:
    jp $e38c


    ld b, [hl]
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    ret nz

    ld a, [hl]
    rst $00
    db $fc
    or d
    ld [de], a
    xor d
    ld e, c
    ldh [$cc], a
    jp $e28c


    ld a, c
    ld a, d
    rrca
    adc l
    ld b, [hl]
    ld b, [hl]
    ld a, a
    cp a
    db $e4
    cp e
    and b
    db $fc
    or d
    ld e, $68
    ld a, [$8156]
    sbc h
    call z, Call_072_79c7
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, l
    dec bc
    ld b, c
    ld b, l
    cp a
    db $e4
    xor h
    ld a, d
    and c
    db $e3
    and e
    nop
    sub h
    ld d, [hl]
    add b
    di
    cp c
    cp d
    ld b, b
    db $e4
    pop bc
    db $e3
    ld b, l
    dec hl
    inc l
    ld h, $19
    ld a, [hl+]
    cp a
    and $7a
    and b
    cp e
    cp h
    ld a, [c]
    ld h, b
    nop
    sub l
    db $10
    and b
    db $fc
    ret nz

    pop bc
    inc c
    call nz, Call_072_7e79
    ld b, l
    scf
    jr c, @+$29

    rst $28
    jr nz, jr_072_6d91

    daa
    ld b, d
    ld a, [hl]
    push hl
    xor e
    xor e
    sbc [hl]
    add e
    cp l
    cp [hl]
    ld a, [c]
    ld h, b
    nop
    sub l
    ld d, a
    add e
    jp nz, Jump_072_43a4

    ldh [$39], a
    rst $38
    dec [hl]
    dec [hl]
    ld hl, $312c
    dec hl
    ld c, e
    ld d, l
    inc bc
    ld b, [hl]

jr_072_6d91:
    add c
    ld a, b
    call nz, $a0fc
    ld a, [c]
    ld h, b
    nop
    sbc b
    ld c, c
    add c
    rst $10
    and b
    cp $43
    db $e3
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld [hl], $47
    ld e, l
    ld e, l
    add c
    ld h, b
    ret nz

    push hl
    ei
    add c
    inc sp
    ld h, b
    nop
    sbc b
    ld [bc], a
    and d
    ret nz

    ld [c], a
    add b
    rst $38
    ld b, [hl]
    ld b, [hl]
    ld b, h
    inc a
    dec [hl]
    dec [hl]
    add hl, sp
    ld d, d
    ccf
    ld d, h
    ld e, c
    ld d, e
    ld b, l
    add e
    ld l, l
    cp h
    add h
    ei
    ld h, c
    ld hl, sp+$00
    sbc c
    ld [bc], a
    and c
    add b
    db $e3
    add d
    add e
    ld b, [hl]
    ld b, b
    dec [hl]
    rst $38
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, [hl]
    add e
    dec bc
    ld l, a
    add h
    ld a, c
    ld b, d
    sbc h
    ei
    ld h, d
    nop
    sbc c
    rst $08
    ld h, d
    ld d, a
    and d
    scf
    add h
    ld l, a
    add e
    ld b, b
    pop hl
    dec [hl]
    ld b, b
    pop bc
    rst $20
    ld a, [hl]
    and b
    ldh a, [$38]
    ld h, c
    nop
    ld e, h
    ld a, $c1
    cp a
    ld [c], a
    adc c
    ld b, [hl]
    ld a, $35
    rlca
    dec [hl]
    inc a
    ld b, h
    pop bc
    rst $20
    rst $20
    jp $5c00


    sub l
    ld b, b
    ret nz

    db $e3
    inc a
    cp $c0
    add b
    ret nz

    ld a, [hl-]
    ld b, l
    ld b, [hl]
    adc b
    pop bc
    push hl
    cp [hl]
    add b
    sub e
    cp a
    ret nz

    nop
    ld e, l
    ret nc

    ld b, c
    sbc d
    adc b
    ld h, d
    ret nz

    ld [c], a
    add hl, sp
    add hl, de
    ld b, [hl]
    add h
    push bc
    ld a, l
    ld h, d
    pop bc
    jp nz, Jump_072_5d00

    ld b, [hl]
    ld h, e
    adc b
    ld h, b
    jp $8b79


    ld b, b
    ret nz

    ld b, c
    ldh [$c0], a
    and $82
    pop bc
    jp Jump_000_08c4


    nop
    ld e, h
    ld d, c
    inc hl
    ld a, h
    and c
    add b
    ld b, b
    pop bc
    ld b, c
    ldh [rLY], a
    ret nz

    ld a, [$0042]
    ld a, l
    ld b, d
    nop
    ld e, l
    dec d
    ld hl, $81fb
    ld a, $60
    ld b, c
    db $e4
    ld b, h
    pop bc
    ld a, [$8041]
    ld a, $40
    cp d
    jr nz, jr_072_6e71

jr_072_6e71:
    ld e, l
    cp a
    add c
    ei
    add c
    sub e
    ld h, b
    pop bc
    ret nz

    jr c, jr_072_6e8f

    scf
    ld b, l
    dec b
    jp nz, Jump_072_41fa

    sbc h
    xor a
    ld [hl+], a
    nop
    ld e, l
    call nz, $8ae2
    ld d, d
    ld hl, $bf9c
    and b

jr_072_6e8f:
    ld b, l
    ld b, e
    ldh [$c6], a
    and d
    cp e
    ld b, c
    sbc [hl]
    nop
    scf
    ld [hl+], a
    nop
    ld e, h
    ld d, $25
    cp h
    add c
    cp a
    and b
    dec b
    ret z

    cp a
    ld [hl+], a
    scf
    ld [bc], a
    ld [hl], b
    nop
    ld e, b
    inc c
    ld [hl+], a
    inc b
    ld b, h
    ld a, [hl]
    and b
    add l
    add [hl]
    add l
    dec b
    add $c0
    ld b, d
    call nz, $db00
    sub h

Jump_072_6ebc:
    ld bc, $4704
    ld a, h
    ld c, h
    ret nz

    ld b, b
    jp $e0c4


    nop
    db $db
    call nz, $4da2
    jr nz, jr_072_6f19

    ld h, b
    cp e
    xor $ac
    ld b, [hl]
    sbc h
    ldh a, [$6e]
    nop
    nop
    jp c, Jump_072_6202

    adc [hl]
    jr nz, jr_072_6f22

    ld [hl], $a3
    ld [hl], $80

Jump_072_6ee1:
    cp a
    db $ec
    cp $20
    ld b, b
    ld hl, $b002
    nop
    ld b, a
    ld [bc], a
    ld h, b
    jp nz, Jump_072_4542

    ld l, a
    ld [hl], $62
    and h
    ld h, [hl]
    cp a
    db $ec
    xor h
    xor h
    ld a, $00
    ldh [$a5], a
    ret nz

    nop
    reti


    ld [bc], a
    ld h, b
    jp nz, $c141

    ldh [$67], a
    and b
    ld l, b
    add d
    cp a
    db $e3
    sbc d
    or [hl]
    jp Jump_072_6686


    nop
    jp c, $2091

    add h
    add c
    ld b, d
    rra

jr_072_6f19:
    and l
    and [hl]
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    ld [c], a
    adc h
    and c

jr_072_6f22:
    or h
    inc bc
    ld hl, sp-$7a
    ld h, e
    nop
    sbc $c0
    pop bc
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h
    ccf
    dec [hl]
    and b
    and a
    xor b
    ld [hl], $45
    adc h
    and d
    ld a, [c]
    ld b, d
    ret nz

    jp nz, $a6a1

    nop
    ld [bc], a
    or b
    nop
    adc c
    ldh [$a1], a
    cp a
    db $e4
    ld l, h
    ld l, a
    daa
    ld l, [hl]
    ld [hl], $45
    adc h
    and d
    or d
    ld b, c
    adc a
    add [hl]
    ld h, e
    ld [bc], a
    or c
    ret nz

    nop
    ld c, c
    pop bc
    ld hl, $00d9
    ld a, [hl]
    pop hl
    pop bc
    pop hl
    call $9cc3
    adc a
    rlca
    ld b, [hl]
    ld b, [hl]
    adc [hl]
    ld l, l
    ld h, e
    ld [bc], a
    or c
    nop
    ld c, c
    add $84
    cp a
    pop hl
    inc c
    pop bc
    ld [c], a
    ld d, b
    and d
    sbc h
    adc [hl]
    ret nz

    db $e3
    ld h, h
    and b
    ld [bc], a
    or c
    nop
    ld c, e
    ld b, [hl]
    pop bc
    inc h
    ld b, l
    ld [hl], $82
    ld [c], a
    cpl
    pop bc
    ret nz

    ld [c], a
    adc a
    inc bc
    add e
    add b
    ld [bc], a
    ld [hl], c
    nop
    ld c, e
    jp nz, $bf61

    ld [c], a
    ld b, e
    ldh [$92], a
    ld h, c
    or d
    ld b, b
    sbc [hl]
    pop bc
    adc [hl]
    ccf
    pop hl
    add h
    ld [bc], a
    ld [bc], a
    ld [hl], c
    nop
    ld c, e
    jp nz, $4661

    sbc l
    ld [bc], a
    cp a
    add b
    sbc e
    adc a
    db $e4
    ldh a, [rSB]
    ld a, a
    pop hl
    cp $c2
    ld [bc], a
    ld [hl], c
    nop
    ld c, e
    nop
    ld hl, $0c22
    and h
    ld [hl], $82
    ldh a, [rSC]

Jump_072_6fc8:
    cp [hl]
    push bc
    ld [bc], a
    ld [hl], c
    nop
    ld c, [hl]
    or $85
    ret nz

    xor $47
    cp [hl]
    call nz, Call_000_2f06
    nop
    ld d, c
    or $85
    ldh a, [rNR52]
    cp a
    ret nz

    daa

Jump_072_6fe0:
    sbc h
    adc [hl]
    adc a
    ld b, b
    pop hl
    ld b, $23
    ld b, [hl]
    nop
    ld e, h
    or $84
    inc c
    ld d, $66
    dec c
    ld b, b
    sbc h
    adc [hl]
    rst $38
    ldh [rSC], a
    add c
    nop
    db $dd
    db $fc
    add hl, hl
    ld h, [hl]
    ld [$c386], a
    call nz, $e4c0
    ld [bc], a
    ld [hl], e
    ret nc

    pop de
    nop
    nop
    nop
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
    rst $38
    db $fc
    rst $38
    ld [bc], a
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
    ld e, $fc
    rst $38
    push hl
    cp $df
    and h
    di
    add $e1
    nop
    pop bc
    db $e3
    rst $38
    rst $38
    ret nz

    or $d8
    rst $38
    inc h
    ld sp, hl
    ret nz

    ei
    ld a, [bc]
    ld hl, sp+$01
    pop hl
    ld [hl], b
    dec a
    jp hl


    ld a, [$aad2]
    or $c0
    and $4d
    dec l
    dec l
    rst $38
    jp Jump_000_383c


    rst $38
    ret nz

    rst $28
    dec c
    dec c
    ld l, l
    dec c
    cp [hl]
    ldh [$c0], a
    rst $38
    or $80
    rst $28
    ld c, l
    ld c, l
    db $fd
    ldh [rKEY1], a
    ld l, l
    dec bc
    dec c
    adc a
    dec c
    dec bc
    ld c, l
    dec l
    ld a, d
    ret c

    db $10
    rrc h
    add $6d
    rrca
    dec c
    dec bc
    dec c
    dec bc
    rst $38
    push hl
    ld a, [hl]
    ld [c], a
    add b
    db $e4
    cp $dd
    add b
    call z, $88a0
    db $e3
    add [hl]
    pop hl
    cp [hl]
    db $e4
    ei
    ret nz

    ld c, e
    rst $38
    ld [hl], b
    and l
    ld l, l
    inc b
    jp z, $c0e6

    rst $20
    dec c
    ret nz

    rst $38
    adc [hl]
    and l
    ld b, a
    ldh [$8a], a
    push hl
    ld b, b
    and $03
    dec bc
    dec c
    ld a, h
    call nz, $dd00
    sub b
    jp nz, $e7c9

    ld a, d
    rst $20
    inc a
    ret nz

    nop
    db $fc
    or d
    ld a, [bc]

jr_072_70cc:
    call $e108
    ret nz

    db $f4
    ld [hl], h
    cp a
    sub c
    ld h, b
    adc e
    jp $c4c6


    nop
    add c
    add c
    ld a, [hl]
    ret


    ret nz

    db $fd
    ld d, c
    add d
    add $c6
    jp Jump_072_7ce2


    push bc
    ld a, [hl]
    jp nz, Jump_072_7610

    sub d
    ld [bc], a
    ld [$e803], a
    ld b, d
    pop bc
    dec hl
    ld [hl], l
    add sp, -$04
    and e
    db $f4
    ld l, a
    nop
    sub h
    adc e
    res 4, [hl]
    adc c
    and b
    jp nz, $bee0

    ldh [$34], a
    push hl
    ld a, d
    and d
    ld a, [hl-]
    cp b
    nop
    ld hl, $19a2
    ldh [rDIV], a
    push bc
    jp nz, Jump_072_7ee1

    db $eb
    ret nz

    db $fc
    sub d
    add h
    add d
    and $ff
    ld c, e
    ld c, e
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    ld a, [bc]
    ld c, d
    ret nz

    jr c, jr_072_70cc

    cp h
    and b
    or d
    ld [hl], b
    ld [bc], a
    xor a
    ld b, e
    push hl
    ret nz

    ldh [rOCPD], a
    ld a, [bc]
    rrca
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld hl, sp-$7b
    ld [hl], l
    add b
    ld [bc], a
    cp a
    add b
    call nz, $c5fe
    pop bc
    ld c, e
    ld c, e
    dec bc
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]

jr_072_714a:
    ld a, [hl+]
    add hl, bc
    ld c, e
    dec l
    pop hl
    or a
    pop bc
    ld l, l
    ld b, d
    cp a
    add b
    jp hl


    ret nz

    pop hl
    cp l
    ldh [$3f], a
    dec hl
    dec l
    dec l
    dec l
    dec hl
    dec hl
    db $76
    ret nz

    rst $38
    and e
    sbc h
    ret nc

    ld e, [hl]
    ret nz

    and h
    dec c
    ld l, e
    ld l, e
    ld bc, $47e1
    and b
    dec l
    nop
    xor $c1
    scf
    ret nz

    ld b, c
    jp $9ffe


    add l
    add [hl]
    ret nz

    ld [c], a
    pop bc
    pop hl
    add d
    pop hl
    ld b, b
    add b
    pop hl
    ld hl, sp+$33
    ld a, $ae
    add h
    add h
    add b
    ldh [$fe], a
    ret nz

    dec c
    pop bc
    ld [c], a
    nop
    or $a1
    ld b, b
    rst $38
    sub d
    ld [bc], a
    ccf
    ret nz

    add $a1
    ld b, b
    jp $813c


    ld a, h
    and b
    nop
    ld bc, $82e1
    jp nz, $ff00

    jp nc, $8542

    ld h, c
    ld b, b
    ret nz

    ld bc, $b9e1
    and c
    nop
    ld a, b
    and c
    add d
    push de
    ld [de], a
    dec l
    ld c, a
    ld b, d
    dec b
    ld h, c
    ld b, b
    pop bc
    ld bc, $fae0
    ld b, b
    jr c, jr_072_714a

    and $00
    ld e, a
    ld d, $23
    ld c, l
    dec l
    dec hl
    add c
    pop hl
    pop bc
    pop hl
    nop
    add e
    ret nz

    ld a, d
    add d
    ld a, [hl-]
    ld b, b
    ld b, d
    rst $38
    cp h
    xor b
    pop bc
    ret nz

    ccf
    ret nz

    add e
    jp nz, $f600

    add c
    ld b, h
    push de
    adc [hl]
    ld de, HeaderDestinationCode
    set 4, b
    ld b, h
    call nz, Call_072_43fa
    ret nz

    ld sp, hl
    nop
    ld [bc], a
    db $ec
    adc h
    ld [hl+], a
    call nz, $8762
    and h
    ld b, e
    pop bc
    ld b, l
    add h
    cp $1a
    ld d, b
    inc h
    inc b
    adc h
    ld [hl+], a
    ld a, [bc]
    add c
    dec c
    add a
    and l
    ld b, c
    ld l, b
    inc c
    ld a, $04
    ld b, [hl]
    ld [bc], a
    add d
    nop
    add h
    ld [c], a
    jp $73a1


    ldh [$c0], a
    rst $38
    push bc
    ld hl, $634c
    ld b, a
    ld h, d
    call z, $0681
    inc b
    jp Jump_000_2b2b


    inc sp
    ldh [$c0], a
    inc d
    ld [bc], a
    ld l, h
    sub c
    and h
    cp $29
    nop
    ld a, $62
    ld b, e
    add c
    ld [bc], a
    rst $38
    inc c
    ld h, h
    cp a
    db $ec
    add hl, sp
    ld b, c
    push bc
    ld h, l
    ld b, d
    ld sp, hl
    nop
    ld [bc], a
    ld b, c
    ld d, l
    and d
    jp z, $bdc4

    pop bc
    add [hl]
    ld l, c
    inc b
    ld e, l
    ret nz

    push hl
    ret


    ld b, l
    nop
    adc h
    and b
    ld a, [c]
    ld b, e
    add [hl]
    ld h, e
    nop
    sbc $82
    ld b, c
    adc $61
    ld b, c
    ld h, h
    ld de, $0043
    ld b, h
    inc hl
    sub $10
    cp $50
    call c, $bf21
    ld [c], a
    call z, Call_072_43a0
    and b
    or d
    ld b, l
    add c
    ld l, l
    ld b, d
    cp a
    and $e5
    ld [bc], a
    ld b, b
    ld c, h
    ld h, c
    pop bc
    pop hl
    inc c
    db $e4
    ld c, l
    nop
    ld b, e
    ret nz

    add h
    ld [bc], a
    ret nz

    rst $38
    ret nz

    db $e3
    cp a
    pop hl
    pop bc
    ld [c], a
    cpl
    push bc
    ld a, l
    ld h, b
    add b
    ld [$0250], sp
    ld [hl], c
    add b
    ldh [$c1], a
    ld hl, $20cb
    add d
    push hl
    xor [hl]
    nop
    dec hl
    ld bc, $eb2b
    ldh [rTMA], a
    inc sp
    ld [bc], a
    ld l, [hl]
    ld b, c
    ld h, e
    ld b, $60
    adc [hl]
    call nz, $c2ed
    nop
    ld a, $80
    add h
    ld [bc], a
    ld b, d
    rst $38
    add d
    ld h, e
    ld a, a
    add d
    or e
    add e
    ldh a, [rSC]
    ld a, a
    ldh [rNR41], a
    cp $c2
    ret nz

    rst $38
    ld b, b
    add [hl]
    ld [hl], $85
    inc sp
    ld h, d
    ld c, l
    cp $c3
    adc b
    ld a, [de]
    ret nz

    db $fc
    dec l
    xor $49
    cp [hl]
    jp $df00


    ld hl, sp+$69
    db $ec
    ld l, d
    ld c, l
    ld l, l
    nop
    ret nz

    ld [c], a
    ld b, e
    ld a, [de]
    ret nz

    ld sp, hl
    or l
    ld h, c
    rst $00
    rst $38
    db $fc
    ld a, [hl+]
    ret nz

    rst $28
    ld [bc], a
    or l
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
    ld [bc], a
    db $fd
    db $fc
    rrca
    rst $38
    ld [c], a
    push hl
    ld hl, sp-$21
    or $e6
    add sp, -$20
    db $f4
    and b
    ld [c], a
    nop
    sbc e
    db $e4
    add a
    pop af
    ld a, l
    push hl
    cp a
    ld a, [c]
    ld l, e
    pop hl
    ld l, b
    and $e0
    db $f4
    or e
    ldh a, [$80]
    ldh [$f3], a
    ld e, [hl]
    ldh a, [$e0]
    rst $38
    ldh [rIE], a
    ldh [$fb], a
    xor c
    ret z

    rst $38
    jp c, Jump_000_000f

    ldh [$d5], a
    ldh [$e8], a
    ld c, b
    db $d3
    pop hl
    rst $18
    ld h, d
    ld hl, sp-$3e
    rst $18
    ld b, [hl]
    push bc
    ld b, d
    ret c

    nop
    ldh [$f5], a
    ld [bc], a
    push bc
    ldh [$f8], a
    add hl, bc
    jp nz, $e5f9

    ld h, a
    or [hl]
    sbc a
    or $9f
    push bc
    nop
    ldh [$f6], a
    rra
    or l
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
    inc b
    rst $38
    rst $38
    cp $fd
    pop af
    db $e4
    ld sp, hl
    rst $38
    ld [c], a
    db $e3
    ld a, [$f6df]
    pop hl
    rst $20
    nop
    sbc [hl]
    ld a, [c]
    pop hl
    add sp, -$20
    cp $df
    rst $38
    sbc a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $18
    ld a, [c]
    and d
    db $db
    ldh [rIE], a
    and c
    db $dd
    ld [bc], a
    rst $38
    ld h, $d8
    ld hl, $e0d5
    rst $38
    ld h, b
    rst $20
    and e
    pop hl
    cp b
    ld sp, hl
    jp hl


    sbc h
    cp c
    ld e, h
    cp e
    inc de
    inc de
    inc a
    or [hl]
    inc bc
    db $10
    db $10
    db $fd
    pop hl
    rst $38
    db $eb
    nop
    nop
    nop

jr_072_73c5:
    cp $d5
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
    jr z, jr_072_73c5

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    ld a, [$e0e5]
    add b
    ld [$00e4], a
    nop
    rla
    nop
    ld bc, $d612
    ld [c], a
    ld d, b
    rst $08
    ldh [$e6], a
    pop hl
    ld [$e2da], a
    db $fd
    db $e3
    and $e1
    ld d, a
    cpl
    nop
    inc bc
    ret nz

    ld [c], a
    and b
    xor a
    ldh [$64], a
    xor e
    ldh [$c7], a
    call nc, Call_000_2000
    ret nz

    ld [c], a
    jp z, $9ce1

    pop hl
    ld e, a
    nop
    ld d, l
    ld b, $96
    ld [c], a
    ld b, b
    adc a
    ldh [$b2], a
    adc e

jr_072_7418:
    ldh [$a8], a
    or $e2
    sbc h
    and h
    db $e3
    ld a, h
    pop hl
    cp a
    nop
    inc c
    add b
    ld [c], a
    adc [hl]
    pop hl
    ld e, c
    ld a, [$e06b]
    ld d, b
    add h
    ld [c], a
    add b
    nop
    db $fc
    rst $38
    ret nc

    rst $38
    rst $38
    and b
    cp $c2
    ld hl, sp-$78
    ldh a, [$80]
    cp a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ldh [$fd], a
    rst $38
    rst $38
    ld a, [$dcff]
    rst $38
    ldh [rIE], a
    add c
    or a
    cp $08
    ldh a, [$f8]
    push hl
    jr nz, jr_072_7418

    ld [hl], c
    db $e3
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld a, a
    rla
    ld a, a
    dec bc
    ld a, a
    ld b, a
    ccf
    rlca
    rst $38
    rra
    inc bc
    rra
    ld [de], a
    rrca
    ld bc, $090f
    rst $38
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    jr @+$41

    rst $38
    nop
    rst $38
    add c
    inc a
    db $10
    ld b, h
    and $c8
    ldh [rIE], a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [rP1], a
    ld a, d
    and d
    ldh [rNR41], a
    and b
    ldh [$7b], a
    rst $38
    rst $30
    rst $38
    jp c, $fde3

    ld [$c0e3], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$20
    db $fc
    rst $38
    ldh a, [$fc]
    jp nc, $a0fc

    db $fc
    ldh [$f8], a
    ei
    db $e4
    ld hl, sp-$80
    pop hl
    rst $38
    rst $38
    rst $18
    rst $38
    cp l
    ei
    rst $38
    jp $e0b6


    nop
    rst $20
    db $fc
    rst $38
    db $f4
    sbc a
    rst $38
    add sp, -$01
    ld hl, sp-$02
    cp $e0
    or $e0

Jump_072_74d0:
    db $fc
    pop bc
    rst $38
    ld a, b
    ldh [$cb], a
    jp $c5e2


    ldh a, [$e0]
    rst $28
    ld [$40c0], a
    ld hl, sp-$20
    ld [$e1d0], a
    rst $08
    jp hl


    db $fc
    rst $38
    pop de
    cp $a6
    cp a
    ld hl, sp-$38
    ldh a, [$90]
    ldh [$a8], a
    ld [hl], d
    ldh [rLCDC], a
    db $fd

jr_072_74f6:
    add b
    db $10
    rst $20
    pop hl
    cp $8e
    ldh a, [$30]

jr_072_74fe:
    ret nz

    ld hl, sp-$08
    push hl
    ld h, d
    pop bc
    db $10
    push hl
    xor a
    ld a, a
    sbc a
    ld a, a
    ld e, a
    rst $38
    ccf
    ld d, a
    ccf
    ld c, e
    ccf
    daa
    rra
    rla
    rst $38
    rrca
    inc de
    rrca
    ld a, [bc]
    rlca
    add hl, bc
    rlca
    dec d
    rst $38
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ef18
    rst $38
    jp Jump_000_3c3c


    sbc d
    add $00
    nop
    ld b, b
    cp a
    add b
    ld b, b
    add b
    jr nz, jr_072_74f6

    and b
    cp $e0
    jr nz, jr_072_74fe

    ret nz

    ld d, b
    db $f4
    ldh [rNR10], a
    push hl
    jp c, Jump_072_64e1

    pop bc
    xor b
    ldh a, [rIE]
    ld [$e4f0], a
    ld hl, sp-$0c
    ld hl, sp-$2c
    ld hl, sp-$41
    and h
    ld hl, sp-$18
    ldh a, [$e8]
    ldh a, [rNR10]
    jp hl


    jr @+$01

    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    push af
    cp $e9
    rst $38
    cp $fa
    db $fc
    ld a, [$f9fc]
    cp $f5
    rrca
    cp $fc
    rst $38
    ld c, b
    ld [hl+], a
    db $eb
    and b
    ldh [$cc], a
    and e
    ei
    push bc
    db $fc
    pop af
    call $cbe3
    nop
    nop
    db $fd
    cp $d6
    ld hl, sp+$77
    xor b
    ldh a, [$d2]
    ld [de], a
    ldh [$c0], a
    add b
    ld d, b
    sub $c0
    ld a, $20
    push bc
    db $dd
    cp $ee
    ldh a, [$b1]
    ld a, [de]
    ldh [$f8], a

jr_072_759a:
    push hl
    db $fc
    or d
    and c
    ld d, h
    and c
    rst $38
    ld a, a
    cp a
    ld a, a
    ld l, a
    ccf
    rst $38
    ld e, a
    ccf
    cp a
    rra
    scf
    rra
    dec hl
    rra
    ld a, a
    ld d, a
    rrca
    rrca
    rlca
    dec bc
    rlca
    ld d, $14
    ldh [rIE], a
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    ld d, l
    db $db
    ld [de], a
    ldh [rSCY], a
    sub b
    ld [$0ca0], a
    ldh [$c0], a
    cp $e0
    rst $00
    ld b, b
    add b
    and b
    jr nc, @-$5e

    jr nz, jr_072_759a

    jp c, $b0e7

    ldh [rIE], a
    db $f4
    ldh [$e8], a
    ldh a, [$f8]
    ldh a, [$d8]
    ldh a, [$bf]
    xor b
    ldh a, [$f4]
    ldh [$f0], a
    ldh [rNR41], a
    rst $00
    db $db
    ld a, [$e012]
    sub c
    ld h, b
    ldh [$f6], a
    db $fc
    ld [$fdfc], a
    rst $38
    ld hl, sp-$04
    ld hl, sp-$06
    db $fc
    or $fc
    db $fd
    pop bc
    cp $78

jr_072_7605:
    push hl
    inc l
    push af
    nop
    and c
    xor $cc
    pop af
    xor d
    ld [bc], a
    add c

Jump_072_7610:
    rst $38
    and b
    pop bc
    nop
    pop bc
    add l
    jp $c3a1


    rst $38
    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    db $f4
    ldh [$a0], a
    ld [hl], b
    ret nz

    ld b, b
    ld a, d
    ldh [$d1], a
    db $fc
    db $ec
    rst $38
    rst $18
    ld a, [de]
    rst $38
    add b
    ld e, $12
    ld [hl], h
    add d
    ld c, b
    nop
    rst $38
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    rst $38
    jr nz, jr_072_7605

    and c
    jp $c385


    inc b
    add e
    ld l, a
    ld b, c
    add e
    ld [bc], a
    add c
    ld l, l
    add b
    add b
    and b
    ld sp, $dfe0
    ld d, b
    ldh [$e4], a
    ldh a, [$d0]
    ret nc

    ld [c], a
    ld b, c
    ld e, $3e
    add $81
    nop
    nop
    jr nc, jr_072_7666

jr_072_7666:
    add d
    ret nc

    ldh [$a0], a
    xor c
    rrca
    ld [bc], a
    ld bc, $0300
    ld [hl], c
    xor c
    pop af
    ldh [$60], a
    add sp, $30
    add e
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
    ccf
    ld bc, $0000
    nop
    push af
    push bc
    push de
    push hl
    ld [$c32f], a
    ld c, a
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
    ld a, c
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $403a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_072_76ef

    jr jr_072_775f

jr_072_76ef:
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

jr_072_770b:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_072_7747

    cp $ff
    jr nz, jr_072_770b

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
    jr nz, jr_072_770b

jr_072_7747:
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
    ld a, $01
    ld hl, $7773
    call Call_000_23e8
    add sp, $02

jr_072_775f:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7773
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_072_777c

    rst $30
    nop
    inc bc
    ret nz

jr_072_777c:
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

jr_072_778e:
    ld a, [hl]
    cp $ff
    jr z, jr_072_77b0

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
    or a
    jr nz, jr_072_778e

    ld a, b
    call Call_072_77ba
    ld a, c
    cp $04
    jr nz, jr_072_778e

jr_072_77b0:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_072_77ba:
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

jr_072_77d0:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $403a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_072_77f9

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_072_77d0

jr_072_77f9:
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
    ld bc, $d800
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


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_78fa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_072_79c7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_072_7aff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_7bac:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_7ce2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_7e22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_072_7e79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_7e82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_7ee1:
    rst $38
    rst $38
    rst $38

Jump_072_7ee4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_072_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
