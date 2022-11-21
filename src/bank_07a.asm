; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07a", ROMX[$4000], BANK[$7a]

    ld e, d
    ld c, c
    ld c, $40
    or $43
    and l
    ld b, [hl]
    ld bc, $f952
    ld e, h
    jr nz, jr_07a_4072

    ld d, $40
    ld d, [hl]
    ld b, b
    ld [$5443], sp
    ld b, e
    nop
    nop
    nop
    nop
    ld b, $41
    rst $38
    ld a, a
    ld h, b
    ld bc, $7fff
    rst $28
    dec a
    nop
    nop
    add a
    ld h, l
    rst $38
    ld a, a
    sub h
    ld d, d
    nop
    nop
    ld e, a
    ld c, d
    cp a
    ld e, a
    rst $18
    jr z, jr_07a_4035

jr_07a_4035:
    nop
    ld a, [c]
    inc bc
    ld c, e
    inc bc
    ret z

    ld [de], a
    ldh [rNR24], a
    jr nz, jr_07a_4041

    db $10

jr_07a_4041:
    ld [bc], a
    jr jr_07a_4067

    rst $38
    ld d, e
    jr nz, jr_07a_4049

    rrca

jr_07a_4049:
    nop
    jr jr_07a_406d

    sbc a
    ld d, d
    jr nz, jr_07a_4051

    nop

jr_07a_4051:
    ld b, b
    add h
    ld d, c
    db $f4
    ld a, a
    ld d, l
    nop
    rst $38
    db $ec
    di
    cp $e0
    call z, $e8fe
    rrca
    cp $ec
    db $fd
    rst $38
    cp $ec

jr_07a_4067:
    rrca
    rrca
    ld [$0b0f], sp
    inc c

jr_07a_406d:
    cp $fa
    and $07
    rst $18

jr_07a_4072:
    add b
    rra
    ret nz

    rst $18
    ld de, $d7ff
    add hl, de
    ld e, a
    adc d
    jp c, $de0f

    add l
    ei
    dec a
    jp nz, $e2d0

    inc e
    inc sp
    xor [hl]
    ld a, $bd
    cp a
    and c
    ld a, $bf
    inc e
    or c
    ld c, $c0
    pop hl
    ld a, a
    ld a, a
    ld e, c
    ld [hl], e
    ld l, l
    ld c, a
    ld [hl], c
    ld e, a
    ld h, b
    cp $e0
    db $fd
    jr nz, jr_07a_4051

jr_07a_40a1:
    ld [c], a
    ld de, $9a77
    db $76
    cp e
    or $df
    db $db
    sub a
    ld a, c
    rst $30
    add sp, -$60
    ld [c], a
    push bc
    ccf
    rst $38

jr_07a_40b3:
    and $ec
    scf
    db $ed
    ld [hl], $ed
    sub $1d
    db $fd
    ld [c], a
    sub b
    pop hl
    rst $28
    add a
    ld l, h
    set 1, a
    ld l, a
    rst $38
    ret c

    ld l, a
    rst $18
    ld h, a
    call c, $f023
    nop
    rst $38
    ldh a, [rP1]
    ret nz

    nop
    ret nz

    add b
    add b
    ld b, b
    rst $38
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    ld a, a
    nop
    cp $fe
    ldh [rSTAT], a
    ld e, a
    ld l, c
    ld e, e
    ld l, l
    ld e, e
    ld l, l
    rst $38

jr_07a_40eb:
    ld a, a
    ld [hl], $64
    dec de
    cp a
    jr nz, jr_07a_40a1

    jr nc, jr_07a_40b3

    rst $28
    inc a
    ld [hl], e
    cp [hl]
    ld l, [hl]
    or e
    cp $e1
    xor $fd
    ld de, $e1e0
    rst $38
    jr c, jr_07a_40eb

    ld e, h
    db $dd
    ld h, [hl]
    rst $38
    db $dd
    ld h, [hl]
    db $fd
    ld a, [hl-]
    db $e3
    inc e
    inc bc
    ld bc, $03bf
    ld bc, $0383
    add e
    ld bc, $e2fe
    nop
    db $fd
    add e
    ld [hl], d
    pop hl
    add b
    rst $38
    adc e
    ld a, $cd
    ld a, c
    rst $38
    adc [hl]
    ld a, e
    adc h
    ei
    call z, Call_07a_649b
    rst $38
    rst $38
    db $10
    rst $30
    ld [$31ff], sp
    ld [hl], a
    sbc d
    rst $30
    sbc a
    dec de
    or $1b
    rst $30
    add hl, de
    db $f4
    ldh [$0e], a
    pop hl
    jp Jump_000_3eff


    push hl
    rst $28
    db $d3
    ld e, $e1
    rst $38
    rst $00
    rst $38
    inc e
    db $e3
    db $fd
    nop
    db $fd
    nop
    ld sp, hl
    ret nz

    rst $38
    add hl, de
    ldh [$f9], a
    add b
    ld a, c
    ret nz

    reti


    and b
    sbc a
    add hl, sp
    ret nz

    and b
    nop
    and b
    cp l
    jp z, $c7e0

    ei
    xor b
    cp $e2
    ret nc

    set 6, b
    pop hl
    db $fc
    cp h
    jp z, Jump_07a_7f80

    ret nz

    ldh [$f8], a
    inc l
    ldh [$fe], a
    push hl
    sub b
    jp nz, Jump_000_0c07

    dec bc
    dec bc
    dec c
    cp a
    rrca
    ld b, $0c
    inc bc
    rrca

jr_07a_4187:
    rlca
    sub b
    jp nz, $ff0e

    ld sp, hl
    sub a
    or a
    reti


    or a
    reti


    cp a
    adc $ff
    cp b
    ld b, a
    rst $38
    ld h, c
    rst $28
    ld [hl-], a
    xor $33
    ld a, e
    rst $28
    scf
    jr nz, jr_07a_4187

    rst $38

jr_07a_41a3:
    add b
    ccf
    ret nz

    xor h
    jp nz, $80fd

    ld h, [hl]
    call nz, $f318
    inc l
    rst $28
    ld sp, $ffff
    ld [hl], b
    rst $20
    add hl, sp
    rst $28
    ld [hl-], a
    rst $28
    ld sp, $ffef
    db $10
    rst $38
    ld b, $fe
    inc bc
    cp $c3

jr_07a_41c3:
    ld a, $ff
    db $e3
    xor $f3
    ld l, $f3

jr_07a_41ca:
    cp $d3
    ld d, $ff
    jp hl


    rst $38
    ld h, b
    rst $28
    jr nc, jr_07a_41c3

    inc sp
    xor $7d
    dec [hl]
    db $fc
    ldh [$31], a
    rst $28
    scf
    db $ec
    inc de
    jr nc, jr_07a_41a3

    rst $38
    ret nz

    rra
    ldh [rIE], a
    add b
    ld a, a
    ret nz

    rst $18
    ret


    and b
    or h
    ldh [rP1], a
    pop hl
    ld [hl-], a
    ld [bc], a
    pop hl
    cp $e2
    add hl, bc
    db $fc
    cp $50
    ldh [$fc], a

jr_07a_41fb:
    ret nz

    cp h
    ld h, b
    ld l, h
    or b
    db $ec
    ld a, l

jr_07a_4202:
    jr nc, jr_07a_4202

    ldh [rNR10], a
    rra
    jr jr_07a_4224

    inc c
    cp $e0
    db $dd
    dec c
    cp $e2
    inc c
    dec de
    inc b
    ldh a, [$a2]
    ld [c], a
    sbc [hl]
    rst $38
    ld [hl], e
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $30
    add sp, -$71
    push af
    ld [hl], b
    ldh [$a2], a

jr_07a_4224:
    inc hl
    and b
    ldh [$57], a
    ld e, h
    rst $20
    rst $18
    rst $28
    and e
    cp [hl]
    ld b, c
    ldh [rNR43], a
    ldh [$e0], a
    add b
    ld h, b
    rst $38
    ret nz

    ret nz

    and b
    jr nz, jr_07a_41fb

    ldh [$80], a
    jr nz, jr_07a_41ca

    ret nz

    add b
    ld [de], a
    ldh [$f8], a
    cp d
    xor b
    add b
    and l
    db $fc
    push bc
    ld a, a
    xor a
    nop
    rra
    nop

jr_07a_424f:
    rlca
    or b
    ret nc

    rra
    db $76
    xor c
    ld [$0bf3], sp
    dec c
    cp $e1
    sbc $c1
    rst $30
    ld [bc], a
    or $01
    rst $38
    rst $30
    ld h, $e6
    inc sp
    ld h, [hl]
    or e
    ld h, [hl]
    or e
    cp a
    and $d3
    sub [hl]
    ld h, c
    rst $38
    ld hl, $e002
    ld [hl], c
    ld a, [$e002]
    ld sp, $c0fa
    add hl, de
    di
    inc c
    cp $00

jr_07a_427f:
    rst $38
    ld a, [hl]
    add b
    ld a, [hl]
    ldh [$9e], a
    ldh a, [rPCM12]
    sbc b
    cp $fe
    ld [c], a
    adc b
    rrca
    inc b
    dec c
    ld b, $0f
    ld c, $ef
    inc c
    rlca
    dec c
    ld b, $f8
    ldh [$03], a

jr_07a_429a:
    ld c, $01
    ei
    rst $38
    jr nz, @-$0e

    ret nz

    inc a
    di
    ld a, $ee
    inc sp
    and $fe
    pop hl
    ld l, [hl]
    sub c
    jr nz, jr_07a_424f

    ret nc

    and b
    db $fd
    ld a, d
    jp Jump_07a_7c9f


    rst $38
    jr c, jr_07a_429a

    inc e
    call c, $d2a1
    and b
    ld [bc], a
    xor $d2
    and d
    inc bc
    add d
    ld bc, $a200
    push hl
    rrca
    or $ff
    db $fc
    rst $00
    ccf
    and $ed
    rst $10
    dec e
    and $fe
    ldh a, [$82]
    add a
    ld a, h
    set 3, e
    ld l, h
    db $db
    ld l, h
    rst $28
    rst $18
    and a
    inc a
    jp $82e0


    ld d, $fc
    sbc e
    rst $38
    or e
    call c, $d8b7
    or a
    ld e, b
    ld [hl], a
    adc b
    sub h
    and b
    pop hl
    ld [hl], d
    ret nz

    jr c, jr_07a_427f

    ret nz

    jr nc, jr_07a_4368

    pop hl
    ret nz

    adc c
    cp $03
    add b
    ld a, $f0
    ret nz

    cp $e7
    rst $38
    pop hl
    nop
    nop
    nop
    ld b, c
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09

jr_07a_4314:
    jr z, jr_07a_4314

    ldh [rP1], a
    ld sp, hl
    ld [c], a
    db $fc
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_4327:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    nop
    nop
    nop
    ld de, $ff00
    rst $38
    rst $38
    rst $38
    db $eb
    ld [$dd01], a
    rst $38
    rst $38
    rst $38
    jp hl


    add sp, -$23
    ld [bc], a
    rst $38
    pop hl
    inc bc

jr_07a_4368:
    inc bc
    inc bc
    ei
    pop hl
    ld [bc], a
    nop
    db $fc
    or $e1
    call z, $03e9
    nop
    inc b
    dec b
    ld b, $07
    rst $38
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rra
    db $10
    ld de, $1312
    inc d
    xor l
    db $eb
    add $e0
    jp $dde0


    dec d
    ld sp, hl
    pop hl
    ld d, $17
    jr jr_07a_4327

    ldh a, [rNR24]
    ld a, [de]
    rst $38
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07a_43c2

    ld [hl+], a
    adc a
    inc hl
    inc h
    dec h
    ld h, $80
    ldh a, [$be]
    db $e3
    cp b
    pop hl
    daa
    rst $30
    jr z, jr_07a_43da

    ld a, [hl+]
    add b
    db $ec
    nop
    nop
    dec hl
    inc l
    rst $38
    dec l
    ld l, $2f
    jr nc, jr_07a_43ef

    ld [hl-], a
    inc sp
    inc [hl]
    rrca

jr_07a_43c2:
    dec [hl]
    ld [hl], $37
    jr c, @+$32

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_43da:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_43ef:
    rst $38
    nop
    rst $38
    push hl
    nop
    nop
    nop
    cp $43
    ld a, $44
    ldh [rLYC], a
    ld h, $46
    nop
    nop
    nop
    nop
    ld b, $41
    rst $38
    ld a, a
    ld h, b
    ld bc, $7fff
    rst $28
    dec a
    nop
    nop
    add a
    ld h, l
    rst $38
    ld a, a
    sub h
    ld d, d
    nop
    nop
    ld e, a
    ld c, d
    cp a
    ld e, a
    rst $18
    jr z, jr_07a_441d

jr_07a_441d:
    nop
    ld a, [c]
    inc bc
    ld c, e
    inc bc
    ret z

    ld [de], a
    ldh [rNR24], a
    jr nz, jr_07a_4429

    db $10

jr_07a_4429:
    ld [bc], a
    jr @+$25

    rst $38
    ld d, e
    jr nz, jr_07a_4431

    rrca

jr_07a_4431:
    nop
    jr jr_07a_4455

    sbc a
    ld d, d
    jr nz, jr_07a_4439

    nop

jr_07a_4439:
    ld b, b
    add h
    ld d, c
    db $f4
    ld a, a
    ld d, l
    nop
    rst $38
    db $ec
    rst $38
    cp $ec
    add b
    cp $ea
    rst $38
    jp nc, $beee

    ret nz

    jp hl


    ld bc, $fc00
    nop
    inc bc
    cp $e2

jr_07a_4455:
    rlca
    db $f4
    cp $e4
    or d
    push hl
    cp $fe
    and $f8
    ld hl, sp-$7e
    db $fc
    rst $38
    add d
    ret nz

    di
    pop af
    add e
    ld sp, hl
    add e
    pop bc
    rst $28
    add d
    ret nz

    ld [bc], a
    ld b, b
    sub $e1
    rst $20
    ld [c], a
    rla
    rst $38
    ld [hl], e
    ld d, $9b
    ld d, $9b
    and $eb
    ld b, $7d
    ld [hl], c
    add b

jr_07a_4481:
    ld [c], a
    ret nz

    sbc a
    ld h, b
    ld a, a
    add b
    db $76
    add sp, -$01
    ld e, $f0
    cpl
    rst $38
    inc e
    di
    ld c, $fe
    rst $30
    dec a
    pop hl
    ld e, $60
    ld [c], a
    jr c, jr_07a_4481

    ld e, h
    db $dd
    ld a, a
    ld h, [hl]
    db $dd
    ld h, [hl]
    db $fd
    ld a, [hl-]
    db $e3
    inc e
    ld d, b

jr_07a_44a5:
    ld [c], a
    ld a, a
    or h
    rst $38
    jp c, $ff92

    or [hl]
    db $db
    cp $e0
    rst $38
    ld c, c
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    jr c, jr_07a_4520

    rst $38
    ld e, h
    ld a, l
    ld a, d
    ld b, e
    ld a, h
    rst $38
    jr c, jr_07a_44a5

    rst $30
    inc e
    ld hl, sp+$00
    cp $e6
    ret nz

jr_07a_44c9:
    ret c

    ld h, b
    ret c

    rst $30
    and b
    ccf
    nop
    cp $e0
    inc e
    inc sp
    ld l, $2e
    ld a, a
    scf
    ld a, $1b

jr_07a_44da:
    ld [hl-], a
    rrca
    ld a, $1d
    ld h, [hl]
    ld [c], a
    cp a
    jr c, jr_07a_44c9

    ld e, h
    call c, $dc66
    or b
    db $e3

Jump_07a_44e9:
    jp $deff


    ld h, l
    db $dd
    ld h, [hl]
    rst $18
    ld l, [hl]
    call c, $fe67
    sbc [hl]
    pop hl
    db $dd
    ld [hl+], a
    ldh [rP1], a
    ld h, b
    add b
    ldh [$f9], a
    nop
    cp $e5
    ld [c], a
    ret nz

    ld b, b
    rst $18
    jr nz, @+$01

    rst $00
    rst $38
    call c, $df6b
    ld h, a
    call c, $df63
    ld l, a
    ld a, e
    ret c

    daa
    ret nc

    pop bc
    ldh [$80], a
    jr nz, jr_07a_44da

    call c, Call_000_2fe0
    add b
    and b
    ld b, b

jr_07a_4520:
    ld h, b
    ld c, d
    and $80
    or b
    call z, $c598
    dec h
    ld hl, sp-$10
    db $ec
    ccf
    ldh [$ec], a
    sub h
    pop hl
    ret nz

    ld c, h
    ldh [rBCPS], a
    set 7, h
    or d
    push hl
    ld h, b

jr_07a_453a:
    call nz, $cf70
    jr c, jr_07a_453a

    ld a, h
    res 7, a
    cp h
    rst $38
    ld [hl], h
    push bc
    ld a, [hl-]
    rst $38
    adc [hl]
    pop bc
    ld [bc], a
    cp e
    ld [bc], a
    inc bc
    cp $e1
    inc bc
    ld bc, $4003
    jp nz, $fffd

    ld [$4cf9], sp
    reti


    ld l, h
    reti


    ld l, l
    ld sp, hl
    rst $30
    or h
    dec h
    ret c

    jr nc, @-$3c

    pop hl
    sbc a
    ld [hl], c
    rst $30
    ld a, a
    ld sp, hl
    sub a
    ld a, b
    rst $38
    add sp, -$75
    ld [hl], h
    db $76
    jp nz, Jump_000_10ff

    db $76
    sbc b
    db $76
    cp b
    or $d8
    sub [hl]
    rst $18
    ld a, b
    or $e8
    rrca
    nop
    cp $e0
    rlca
    inc c
    rst $18
    dec bc
    dec bc
    inc c
    dec bc
    inc c
    ld hl, sp-$20
    inc bc
    rst $18
    rst $38
    ld b, $dc
    dec bc
    db $db
    inc c
    rst $18
    sbc h
    sbc c
    rst $38
    adc $9b
    call z, Call_07a_4c9b
    ld e, e
    add h
    pop hl
    rst $30
    ld bc, $00e1
    cp $e9
    db $dd
    adc b
    sbc c
    call nz, $9dbf
    ret c

    sbc c
    call $cc99
    cp $e1
    cp c
    rst $38
    ld b, h
    rst $30
    ld h, b
    rst $00
    or b
    cp a
    rst $00
    db $fc
    rst $38
    res 3, a
    rst $28
    cp b
    rst $08
    cp a
    rst $00
    cp h
    db $fd
    ld b, e
    ret nz

    and h
    add b
    sbc a
    ld b, b
    ld e, a
    add b
    rst $18
    rst $20
    add hl, de
    ld d, e
    adc h
    ld b, $c7
    db $fc
    and b
    sbc b
    ld [hl-], a
    call z, $0000
    nop
    ld bc, $ff08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rP1], a
    nop
    nop
    add c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    ld bc, $fff6
    ldh [rSC], a
    inc bc
    rst $38
    ldh [rDIV], a
    inc bc
    inc bc
    dec b
    db $fd
    ld b, $d0
    rst $28
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    rst $38
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld a, [hl]
    ret nz

    ld a, [c]
    dec d
    ld d, $16
    ld d, $17
    jr @-$03

    ldh [$f7], a
    ld d, $19
    ld a, [de]
    adc a
    xor $1b
    inc e
    dec e
    ld e, $ff
    rra
    jr nz, jr_07a_468d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    sub b
    ld [c], a
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_468d:
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    xor l
    ld b, [hl]
    db $ed
    ld b, [hl]
    sub a
    ld c, b
    db $dd
    ld c, b
    nop
    nop
    nop
    nop
    ld b, $41
    rst $38
    ld a, a
    ld h, b
    ld bc, $7fff
    rst $28
    dec a
    nop
    nop
    add a
    ld h, l
    rst $38
    ld a, a
    sub h
    ld d, d
    nop
    nop
    ld e, a
    ld c, d
    cp a
    ld e, a
    rst $18
    jr z, jr_07a_46cc

jr_07a_46cc:
    nop
    ld a, [c]
    inc bc
    ld c, e
    inc bc
    ret z

    ld [de], a
    ldh [rNR24], a
    jr nz, jr_07a_46d8

    db $10

jr_07a_46d8:
    ld [bc], a
    jr jr_07a_46fe

    rst $38
    ld d, e
    jr nz, jr_07a_46e0

    rrca

jr_07a_46e0:
    nop
    jr jr_07a_4704

    sbc a
    ld d, d
    jr nz, jr_07a_46e8

    nop

jr_07a_46e8:
    ld b, b
    add h
    ld d, c
    db $f4
    ld a, a
    push af
    nop
    rst $38
    db $ec
    rst $38
    cp $ed
    ld sp, hl
    and e
    ld a, l
    rst $28
    db $fd
    ld sp, $e6fe
    db $10
    rst $38

jr_07a_46fe:
    nop
    ld a, a
    add b
    ld a, a
    rst $38
    pop hl

jr_07a_4704:
    sbc a
    ld a, [c]
    ld [hl], a
    sbc e
    db $76
    sbc e
    ld [hl], a
    rst $38
    sbc c
    ld [hl], a
    adc b
    rst $38
    ld [bc], a
    cp $01
    rst $38
    rst $38
    add $3e
    db $e3
    xor $d3
    ld e, $e3
    cp $f7
    jp $e11e


    ret nz

    ld [c], a
    ld e, b
    di
    ld l, h
    rst $08
    rst $30
    ld [hl], b
    rst $18
    ld h, b
    cp $e0
    jr nz, @+$01

    nop
    adc a
    rst $38
    nop
    adc a
    inc bc
    adc [hl]
    dec b
    adc l
    ld b, $8d
    db $dd
    ld b, $f8
    ldh [rSB], a
    rst $38
    ld b, b
    add sp, -$20
    ld l, e
    sbc $ff
    db $ed
    reti


    ld l, [hl]

jr_07a_4749:
    db $db
    db $ec
    db $db
    ld l, h
    ld e, e
    db $fd
    and h

jr_07a_4750:
    sub b
    ld [c], a
    inc e
    ld [hl], e
    xor [hl]
    cp $3d
    pop hl
    rst $18
    ld a, $ff
    inc e
    pop af
    ld c, $80
    ld [c], a
    jr c, jr_07a_4749

    rst $38
    inc e
    db $fd
    ld a, $e5
    ld e, [hl]
    rst $38
    ld a, [hl-]
    ld [c], a
    db $fd
    dec e
    ld [hl], b
    ld [c], a
    ld e, d
    rst $38
    ld l, l
    ret


    ld a, a
    db $db
    push bc
    ld l, l
    cp $e0
    inc h
    ld h, b
    push hl
    ld a, d
    ldh [$fe], a
    ld [c], a
    rst $38
    add b
    rst $38
    cp a
    ld b, b
    rst $38
    adc a
    cp b
    rst $10
    cp a
    adc $3f
    cp c
    rst $00
    cp a
    sbc $b0
    ld c, a
    ld [c], a
    push hl
    call c, $dfe2
    or e
    and $19
    cp $00
    cp $e7
    db $fc
    jr nc, jr_07a_4750

    ld h, h
    sbc b
    rra
    nop
    cp $e1
    db $10
    cp $e2
    jr nz, @+$4a

    cp $e0
    db $10
    db $e3
    ld a, [$f0c7]
    cp $e2
    ld [$f8c7], a
    xor $cc
    sub c
    nop
    or b
    ld [c], a
    ldh a, [$e9]
    cp [hl]
    ret


    rrca

Jump_07a_47c3:
    or d
    adc $a0
    set 4, b
    ld a, [c]
    sub c
    jp z, $fe80

    ldh [$90], a
    jp z, $99cc

    ld h, [hl]
    rst $28
    rst $38
    inc b
    db $ed
    ld b, $ef
    ld c, $ec
    rlca
    db $ed
    db $dd
    ld b, $f8
    ldh [$c3], a
    adc [hl]
    ld h, c
    ldh [$c3], a
    di
    ld l, $ff
    xor $33
    xor $33
    cp $1d
    ld [hl], c
    adc [hl]
    sbc a
    pop af
    ld bc, $01f1
    pop bc
    cp $e7
    or $c3
    pop hl
    rst $38
    rst $18
    or d
    scf
    db $db
    or $9b
    rst $30
    ld l, c
    rst $38

jr_07a_4806:
    rst $08
    jr nc, jr_07a_4806

    nop
    db $fc
    nop
    db $fc
    ret nz

    rst $38
    inc a
    ldh [$ec], a
    ret nc

    inc e
    ldh [$fc], a
    ret nz

    rst $38
    inc e
    ldh [rIE], a
    ld [$0c1b], sp
    rra
    inc e
    rst $28
    add hl, de
    ld c, $1b
    inc c
    ld hl, sp-$20
    ld b, $1c
    inc bc
    cp [hl]
    add b
    jp nz, $e778

    ld a, h
    db $dd
    ld h, [hl]
    cp $e2
    ld [hl+], a
    cp $10
    jp nz, $cf70

    cp b
    ei
    db $f4
    add a
    ld hl, sp-$01
    rst $38
    ld [hl], b
    rst $00
    jr c, @-$57

    inc b
    and l

Call_07a_4847:
    ld b, $df
    ld h, l
    rlca
    ld h, a
    ld b, $64
    db $fc
    ldh [$67], a
    dec b
    db $fd
    ld h, a
    ldh a, [$a3]
    add a
    ld a, h
    set 3, a
    ld l, a
    ret c

    rst $18
    ld l, a
    rst $18
    and a
    inc a
    jp $a2e0


    rrca
    ld hl, sp-$01
    sub a
    cp a
    ld c, [hl]
    ld a, c
    add a
    rst $38
    ld e, $70
    rst $38
    adc a
    rst $38
    db $10
    rst $30

jr_07a_4874:
    jr @+$01

    jr c, jr_07a_48eb

    rst $38
    sbc h
    rst $30
    jr jr_07a_4874

    jr @+$81

    adc h
    ld sp, hl
    ld sp, hl
    ld b, $20
    jp nz, $e3fe

    jr nz, @+$81

    ld b, b
    ld e, a
    jr nz, @+$0d

    ret nz

    nop
    cp $eb
    rlca
    cp $ec
    nop
    nop
    nop
    ld bc, $ff08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rP1], a
    nop
    nop
    add c
    nop
    rst $38
    rst $38
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

jr_07a_48eb:
    ld bc, $fff0
    pop hl
    ld hl, sp-$1b
    rst $30
    pop hl
    call Call_000_02ed
    inc bc
    inc b
    dec b
    rst $38
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld l, a
    ld c, $0f
    db $10
    ld de, $f1bf
    ld [de], a
    inc de
    sub a
    pop hl
    rst $18
    inc d
    dec d
    ld d, $17
    dec d
    adc [hl]
    xor $18
    add hl, de
    rst $38
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07a_4941

    ld a, a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld bc, $2726
    ld l, h
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_4941:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld h, d
    ld c, c
    and d
    ld c, c
    ld a, [hl+]
    ld d, b
    xor a
    ld d, b
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
    jr nz, jr_07a_4a36

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

jr_07a_49d6:
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
    jr jr_07a_4a16

    rst $30
    db $fd

jr_07a_4a16:
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
    jr nz, jr_07a_49d6

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

jr_07a_4a33:
    ld b, b
    cp a
    nop

jr_07a_4a36:
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
    jr nz, jr_07a_4a33

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

Call_07a_4c9b:
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

jr_07a_4cc5:
    push de
    ld hl, sp-$08
    rst $18
    db $fc
    db $fc
    ld a, [$fbfa]
    and $a8
    jp Jump_07a_47c3


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
    jr z, jr_07a_4cc5

    ld d, h
    db $fc
    ldh [$61], a
    jr @-$1e

    nop
    rst $18
    ret nz

    rst $28
    ldh [$f7], a
    ccf
    ldh a, [$f3]
    ld hl, sp-$07
    db $fc
    db $fc
    ret


    jp $a056


    ld [hl], l
    rlca
    cp $e4
    rst $28
    ld d, [hl]
    xor h
    xor a
    rst $38
    rst $18
    db $ec
    add sp, -$01
    scf
    scf
    rst $38
    rst $38
    ld e, a
    ld e, a
    xor a
    xor a
    cp $f1
    add e
    db $e3
    db $e3
    push bc
    push bc
    push de
    push de
    ld [$ea0f], a
    db $fd
    db $fd
    cp $df
    add b
    ld a, e
    and b
    ld a, b
    and b
    rst $10
    add c
    or $f0
    db $e3
    dec d
    dec d
    xor $e1
    call nc, $ead4
    ld [$3d1f], a
    dec a
    sbc a
    sbc a
    ld e, a
    ld h, e
    and b
    xor $e1
    or a
    add e
    rst $38
    adc a
    adc a
    ld d, [hl]
    ld d, [hl]
    db $eb
    db $eb
    rst $38
    rst $38
    rst $30
    dec b
    dec b
    cp $14
    db $e4
    cp a
    cp a
    ld d, a
    ld d, a
    db $dd
    ei
    di
    ret nz

    jr nz, @+$01

    ld d, b
    ld [de], a
    ldh [$d4], a
    rst $38
    rst $00
    ld [$f7ff], a
    ld [hl], h
    ldh [$a1], a
    and b
    rst $18
    ld h, $50
    rst $38
    ld sp, hl
    xor b
    add sp, -$20
    pop de
    add hl, hl
    ld b, d
    rst $38
    xor c
    rst $38
    inc bc
    rst $38
    inc bc
    jp c, $b51b

    scf
    or [hl]
    scf
    jp Jump_000_03ff


    sub c
    dec [hl]
    and b
    ld [hl], $00
    ld l, a
    ld a, a
    ei
    rst $38
    cp a
    sbc h
    and [hl]
    ld a, [hl]
    ld a, [hl]
    ld bc, $fe81
    sbc [hl]
    call z, $bea0
    cp a
    cp a
    cp a
    or b
    and c
    xor b
    and d
    nop
    ei
    cp a
    add b
    nop
    db $e3
    ei
    ld hl, sp-$25
    ld hl, sp-$49

jr_07a_4ddb:
    push bc

jr_07a_4ddc:
    ldh a, [$e0]
    add e
    ld e, a
    jp z, $fce0

    db $e3
    rla
    add l
    rst $30
    rst $30
    ccf
    db $eb
    db $eb
    or a
    or a
    rst $38
    rst $38
    ld e, h
    pop bc
    ld h, [hl]
    pop bc
    ld a, e
    add l
    add l
    ld l, $c1
    rst $38
    rst $38
    ld e, [hl]
    ld e, [hl]
    ld a, [hl+]
    pop bc
    rst $38
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
    nop
    xor a
    rst $30
    xor a
    rst $18
    rst $18
    sub [hl]
    pop hl
    db $f4
    db $f4
    xor b
    xor b
    ld a, [hl+]
    ldh a, [$c2]
    ld d, a
    ld e, e
    and b
    rst $18
    ld bc, $ae8a
    cp c
    and b
    rrca
    ldh [rPCM12], a
    db $ed
    ld l, b
    ld [hl], l
    rst $38
    ld sp, hl
    and e
    db $fd
    rst $38
    xor d
    inc bc
    and e
    ld h, h
    sbc $e2
    ld hl, sp-$1f
    xor l
    rst $00
    ld l, b
    sub e
    and e
    nop
    cp $fe
    ld [c], a
    rst $28
    db $fc
    ld bc, $02f8
    cp $e1
    ld c, a
    nop
    adc a
    ld a, a
    jr nz, jr_07a_4ddc

    jr nc, jr_07a_4ddb

    inc e
    nop
    ld l, a
    db $e3
    ld h, b
    rst $38
    rst $08
    nop
    or c
    rst $30
    and a
    db $eb
    ld c, e
    rst $10
    ccf
    sub a
    ccf
    ccf
    inc a
    cp h
    nop
    db $f4
    and d
    call $9f80
    ld [$54fc], a
    ldh [$e3], a
    db $ed
    ld h, b
    sub l
    ld [bc], a
    rrca
    rst $18
    ret nz

    cpl
    jr nz, @-$0f

    ldh [$fe], a
    pop hl
    rst $18
    ret nz

    ld d, b
    cp $e1
    ld l, h
    and $5e
    ld l, e
    ld sp, hl
    xor c
    db $eb
    and a
    ld h, d
    rst $30
    dec a
    ld l, b
    sub l
    ld e, [hl]
    ld sp, $bf68
    ld l, e
    add b
    xor e
    pop hl
    ld b, h
    ld b, b
    pop hl
    or a
    jp z, $86eb

    cp $d8
    ld h, b
    add b
    dec c
    add b
    sbc d
    ld b, c
    and b
    rst $38
    ld de, $53d5
    add b
    ret


    add c
    ld b, $e1
    ld d, l
    cp h
    ld h, d
    dec l
    pop bc
    and h
    ret nz

    ld b, d
    db $10
    ld [c], a
    xor d
    ld b, e
    ld h, b
    ld [hl], h
    ld hl, $e300
    add l
    and l
    dec d
    and [hl]
    and $6e
    add b
    ld b, e
    ld d, a
    rst $38
    rst $38
    ld a, [bc]
    ldh [$03], a
    db $fc

jr_07a_4eda:
    dec c
    jr nz, jr_07a_4eda

    db $fc
    cp $40
    di
    nop
    rst $20
    nop
    db $dd
    db $dd
    ccf
    ld h, d
    ld h, d
    inc a
    dec a
    ret nz

    inc bc
    dec bc
    add b
    and c
    ld [hl+], a
    rst $38
    ccf
    ccf
    rlca
    rst $00
    add hl, bc
    jp hl


    dec c
    db $ed
    ld h, $fe
    push hl
    cp a
    add b

jr_07a_4eff:
    cp $eb
    scf
    ld b, [hl]
    ld d, l
    sub b
    jp nz, $e558

    ld hl, $f0eb
    ld [c], a
    db $ec
    pop hl
    dec e
    ld b, b
    jr nz, jr_07a_4f72

    and b
    db $f4
    db $e4
    ret c

    pop hl
    sbc b
    ld l, h
    ld hl, $e1f0
    jr nc, jr_07a_4eff

    ld a, [$8cff]
    ld [bc], a
    ld [hl], $20
    dec b
    ld [$c054], sp
    inc h
    db $e3
    add hl, de

jr_07a_4f2b:
    ld h, c
    ld a, [hl+]
    db $ec
    ld b, b
    inc h
    db $e3
    ld b, b
    jp $a024


    inc d
    inc [hl]
    call nz, $e5b8
    rst $38
    jp c, $eac2

    cp h
    ld [c], a
    or d
    dec h
    cp [hl]
    and b
    ld [bc], a
    or h
    ld b, b
    cp a
    jr z, jr_07a_4f2b

    ld l, b
    ld [$29d2], a
    sbc l
    ld h, a
    ld bc, $bbc3
    rlca
    rst $08
    ret nz

    nop
    add b
    ccf
    ld a, [bc]
    db $e4
    rst $28
    and c
    nop
    add hl, de
    ld a, a
    nop
    inc bc
    ret nz

    rst $00
    rst $08
    nop
    sbc a
    nop
    ld h, b
    cp b
    ld [hl], b
    ld b, e
    ldh [$62], a
    adc e

jr_07a_4f6f:
    dec b
    cp $01

jr_07a_4f72:
    db $fc
    cp $e1
    dec c
    rst $38
    db $ed
    dec e
    db $dd
    dec de
    db $db
    rlca
    rlca

jr_07a_4f7e:
    reti


jr_07a_4f7f:
    ld a, a
    add c
    cp [hl]
    jr @+$81

    inc [hl]
    ld a, a
    ld [$498e], sp
    pop hl
    add b
    ld h, b
    nop
    pop de
    pop bc
    rst $20
    and d
    pop hl
    and b
    nop
    ccf
    jp z, $15e1

    jr c, jr_07a_4f7e

    sub a
    jr nz, jr_07a_4fda

    jr nc, jr_07a_4f7f

    add b
    ld [hl], c
    ld [hl], c
    ld l, [hl]
    rst $38
    ld l, [hl]
    ld e, a
    ld e, a
    rra
    sbc a
    ld c, $ee
    ld bc, $f0fd
    ld d, l
    ld hl, $e7e0
    ldh [$e7], a
    ld b, b
    ld c, a
    cp a
    inc d
    dec hl
    xor b
    ld d, a
    ld d, b
    xor a
    ld b, l

jr_07a_4fbe:
    ld hl, $7f14
    ld [$d42a], a
    dec d
    ld [$fd02], a
    add hl, sp
    dec h
    cp h
    add b
    add b
    ld d, d
    jr nz, jr_07a_4f6f

    ld b, b
    nop
    ldh [rNR41], a
    daa
    nop
    rst $18
    nop
    rst $28
    nop

jr_07a_4fda:
    nop
    db $10
    rla
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
    jp $0131


    xor h
    push hl
    ld h, h
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
    cpl
    ld hl, $a1e2
    ld b, d
    and e
    jr z, jr_07a_4fbe

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
    add c
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, [$5c0c]
    rst $38
    ldh [$e0], a
    ld a, [$0d0d]
    dec c
    rst $18
    ldh [$0b], a
    or [hl]
    pop af
    sbc l
    ld a, [hl+]
    ret nz

    pop hl
    ld [$0d0d], sp
    db $e3
    ld a, [c]
    and b
    rst $20
    dec c
    pop af
    dec bc
    jp nz, $d2e2

    pop hl
    ld [hl], b
    ldh a, [$4c]
    inc c
    inc c
    dec bc
    ld [$f07e], a
    rrca
    rst $38
    pop hl
    add hl, bc
    rst $38
    ldh [$0e], a
    ld [$6b08], sp
    ld [$f20e], sp
    ld [c], a
    rrca
    ldh [$f3], a
    add hl, bc
    add hl, bc
    ldh [$f6], a
    adc b
    cp a
    pop hl
    ldh [$e0], a
    cp $e3
    ld l, a
    ret nz

    db $eb
    jp hl


    push hl
    ld hl, sp-$19
    cpl
    nop
    ret nz

    rst $28
    ld a, [$e0eb]
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_50a5:
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    db $ec
    db $eb
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
    ld a, a
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    jp c, $ffe0

    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    rst $30
    inc d
    dec d
    ld d, $cc
    jp hl


    rla
    jr jr_07a_50ef

    ld a, [de]
    ld l, a
    dec de
    inc e
    dec e
    ld e, $b8
    pop hl
    rra
    jr nz, jr_07a_50a5

    db $eb
    ld l, [hl]
    and h
    pop hl
    ld hl, $2122
    rst $38
    ldh [rNR44], a
    inc h
    ld a, [$4fe1]

jr_07a_50ef:
    dec h
    ld h, $27
    jr z, @-$0c

    pop hl
    adc h
    jp hl


    add hl, hl
    rst $38
    ldh a, [$6e]
    ld l, h
    jp hl


    ld a, [hl+]
    dec hl
    inc l
    rst $38
    db $ec
    dec l
    ld l, $4c
    jp hl


    rst $30
    cpl
    jr nc, jr_07a_513b

    rst $38
    ld [c], a
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    or [hl]
    or $e3
    ld [hl], $2f
    ldh [$ea], a
    cpl
    scf
    rst $18
    ld [c], a
    jr c, @+$01

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld sp, $0031
    dec a
    ei
    ld a, $3f
    ldh [$ea], a
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec a
    cp $bd
    ldh [rLY], a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld sp, $df31
    ld c, c

jr_07a_513b:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    db $ec
    ret


    ld c, [hl]
    ld c, a
    rst $30
    ld d, b
    ld d, c
    ld d, d
    sbc l
    ldh [rHDMA3], a
    ld d, h
    ld d, l
    ld d, [hl]
    rst $38
    ld d, a
    nop
    ld e, b
    cpl
    ld e, c
    ld e, d
    ld c, a
    ld e, e
    cp $cc
    ret


    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    rst $38
    ld h, e
    ld sp, $6432
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rst $18
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    xor h
    ret


    ld l, [hl]
    ld l, a
    rst $30
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld e, l
    pop hl
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld a, a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    adc h
    ret


    rst $18
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    dec a
    pop hl
    add e
    add h
    rst $38
    add l
    ld sp, $8786
    adc b
    adc c
    adc d
    adc e
    db $fd
    adc h
    ld l, h
    ret


    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    rst $38
    ld sp, $9493
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sub $14
    pop hl
    add d
    sbc d
    ld c, h
    ret


    sbc e
    ld bc, $9ce3
    sbc l
    ld e, a
    ld sp, $9f9e
    and b
    and c
    db $f4
    jp nz, Jump_000_2c82

    ret


    or a
    and d
    and e
    and h
    rst $38
    ldh [$a5], a
    and [hl]
    rst $38

jr_07a_51cd:
    pop hl
    and a
    xor $f5
    pop hl
    and h
    xor b
    xor c
    inc c
    ret


    xor d
    xor e
    xor h
    ld [bc], a
    rst $38
    db $ed
    xor l
    ld a, [hl-]
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fd
    nop
    nop
    nop
    add hl, bc
    ld d, d
    ld c, c
    ld d, d
    or e
    ld e, d
    add d
    ld e, e
    and b
    ld bc, $539f
    ret c

    ld [hl+], a
    nop
    nop
    sbc a
    ld d, e
    rst $38
    ld a, a
    ret nz

    ld [bc], a
    nop
    nop
    rst $30
    ld b, e
    sbc a
    ld d, e
    ret c

    ld [hl+], a
    nop
    nop
    rst $30
    ld b, e
    and b
    ld bc, $02c0
    nop
    nop
    rst $18
    ld a, [hl+]
    reti


    jr nc, jr_07a_51cd

    ld e, [hl]
    nop
    nop
    ld e, a
    ld e, a
    rst $18
    ld a, [hl+]
    reti


    jr nc, jr_07a_5238

jr_07a_5238:
    nop
    ld e, a
    ld e, a
    rst $38
    ld a, a
    rst $18
    ld a, [hl+]
    nop
    nop
    rst $38
    ld a, a
    ld e, a
    ld e, a
    sbc a
    ld e, [hl]
    nop
    nop
    push hl
    rst $38
    rst $38
    db $e4
    nop
    cp $e4
    ldh a, [$e7]
    ld bc, $07ff
    rst $30
    rst $38
    rrca
    cp $e0
    push hl
    cp $f0
    ldh a, [$c0]
    add a
    ret nz

    nop

Jump_07a_5262:
    nop
    rst $18
    and $f5
    ldh [$fd], a
    ld [c], a
    ret nz

    push hl
    ld [hl], b
    ld a, a
    ld a, a
    inc e
    rra
    ld b, $07
    inc bc
    inc bc
    or b
    jp hl


    rst $28

jr_07a_5277:
    ld c, $ff
    rra
    ei
    and b
    push hl
    ld [$08f7], sp
    rst $28
    rst $30
    inc b
    ei
    inc b
    ldh a, [$e6]
    ld sp, $31ce
    sbc a
    adc $18
    rst $20
    jr jr_07a_5277

    add b
    push hl
    pop hl
    ldh [$08], a
    jp nz, $e0e1

    inc b
    ld a, a
    add sp, $6d
    ld [c], a
    ld l, b
    push hl
    ld hl, sp-$13
    ld bc, $fdff
    inc bc
    cp $e0
    rlca
    cp $1e
    db $fc
    inc a
    ld hl, sp-$01
    ld a, b
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    sub a
    ret nz

    nop
    add b
    ld l, c
    db $e4
    ld bc, $e6ff
    jr z, @-$19

    ret nz

    ld a, [hl]
    rla
    pop hl
    ld hl, sp-$01
    cp $1c
    rst $38
    ld a, h
    cp $e4
    ccf
    db $fc
    rst $38
    cp $7f
    rst $38
    ld a, a
    sbc $e0
    rst $38
    ld [$80fd], a
    sub $e0
    ld h, b
    ld a, a
    jr nc, jr_07a_531f

    db $10
    rra
    rst $38
    jr jr_07a_5304

    ld [$0c0f], sp
    rrca
    rra
    pop af
    rst $38
    ccf
    pop af
    ccf
    ldh [$7f], a
    ldh [$7f], a
    ret z

    rst $38
    rst $38
    ret z

    rst $38
    call nz, $84ff
    nop
    rst $38
    cp l
    add b
    cp $e2
    ret nz

    rst $38
    ret nz

jr_07a_5304:
    ld a, a
    cp $e1
    ld [bc], a
    ld a, a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $c0
    push bc
    rst $38
    inc c
    di
    inc c
    di
    ld b, $f9
    ld b, $f9
    rst $38
    add e
    ld a, h
    add e

jr_07a_531f:
    ld a, h
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    rst $38
    ld a, l
    add d
    ld a, l
    add d
    ld a, $c1
    ld a, $c1
    rst $38
    rra
    ldh [$1f], a
    ldh [$8f], a
    ld [hl], b
    adc a
    ld [hl], b
    cp $97
    push bc
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    db $fd
    ld b, b
    ld hl, $0fed
    db $fc
    rrca
    db $fc
    ld e, $f8
    rst $38
    ld e, $f8
    inc a
    ldh a, [$3c]
    ldh a, [$38]
    ldh [$fb], a
    ld a, b
    ldh [$98], a
    push bc
    ld bc, $0301
    inc bc
    rlca
    db $fc
    and b
    ret nz

    inc c
    ldh [rIE], a
    rrca
    db $fd
    rst $18
    ld sp, hl
    rst $38
    rra
    pop af
    rst $38
    ld sp, hl
    rst $38
    db $fd
    ld d, c
    add $bf
    ret nz

    xor $e0
    push hl
    ldh a, [$fe]
    ldh [$fd], a
    daa
    ldh [$fe], a
    push hl
    db $fd
    rst $38
    ccf
    cp $30
    pop hl
    ldh [$7f], a

jr_07a_5385:
    ldh a, [$3f]
    rst $38
    rra
    ld hl, sp-$25
    ld a, a
    ret nz

    ld a, [de]
    ret nz

    dec b
    rlca

jr_07a_5391:
    cp $e1

jr_07a_5393:
    rst $38
    rst $38
    db $dd
    add b
    push de
    jp nz, Jump_000_1f1f

    add h
    rst $38
    ld [c], a
    call nz, $ffc4
    db $f4
    ld [hl], h
    db $fc
    inc e
    db $ec
    call c, Call_000_3ece
    or $2a
    pop hl
    ldh [$3f], a
    cp $e7
    jr nz, jr_07a_5391

    jr nz, jr_07a_5393

    rst $28
    db $10
    rst $28
    db $10
    rst $28
    ld b, b
    push bc
    rst $00
    jr c, jr_07a_5385

    sbc a
    jr c, jr_07a_5424

    sbc h
    ld h, e
    sbc h
    ld b, b
    push bc
    pop hl
    ldh [rNR41], a
    jp nc, $e0e1

    db $10
    ld b, b
    push bc
    ld e, h
    call Call_000_3c78
    ldh [$f0], a
    ret nz

    ret c

    cp $e6
    ld e, a
    push bc
    adc e
    add $ff
    rst $38
    ld a, e
    ret nz

    rst $28
    ld a, a
    ret


    db $e3
    sbc [hl]
    ret nz

    sbc d
    ret nz

    ccf
    ld a, $e1
    ld a, [hl-]
    pop hl
    pop af
    rst $38
    rst $38
    di
    cp $37
    db $fc
    rrca
    ld hl, sp+$1f
    db $fc
    jp $f81f


    add c
    ret nz

    ld b, [hl]
    pop hl
    rst $28
    and l
    or $c3
    rrca
    rrca
    ld a, a
    rra
    rla
    cpl
    cpl
    ld e, a
    ld c, a
    rst $38
    ld e, [hl]
    and [hl]
    cp $59
    and e
    ld a, [bc]
    ld a, [$fa9a]
    push de
    push af
    push af
    rst $38
    push af
    db $fd
    db $fd
    ld [c], a
    cp $d1
    rst $18
    ld c, c
    db $ed

jr_07a_5424:
    rst $08
    inc [hl]
    pop hl
    ldh a, [$1f]
    cp $e2
    sbc a
    ld hl, sp-$71
    jp $8ff8


    or b
    xor c
    ld [hl], $c1
    or b
    and a
    xor [hl]
    and e
    rrca
    rst $38
    rst $38
    ccf
    db $fc
    ld a, a
    ldh a, [$fd]
    ldh [$f3], a
    ret nz

    rst $38
    push hl
    add b
    jp $c580


    nop
    ldh a, [$80]
    rst $30
    ldh a, [$80]
    ldh [$fe], a
    ld [c], a
    ret nz

    nop
    ldh [rP1], a
    ei
    ret nz

    nop
    or e
    ldh [$f8], a
    rra
    ld hl, sp+$0f
    db $fd
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$d1ff], sp
    ldh a, [$62]
    ld [c], a
    cp b
    rst $20
    add h
    and c
    ld [bc], a
    rst $38
    ldh [rDIV], a
    inc b
    ld a, l
    ld [$e0ff], sp
    db $10
    db $10
    sbc a
    rst $38
    rra
    cp $e0
    ld a, a
    ccf
    cp $3f
    cp $7f
    db $fc
    ld a, a
    ld h, [hl]
    ret nz

    ei
    db $e3
    db $e3
    add [hl]
    pop bc
    rlca
    rlca
    dec c
    dec c
    rrca
    rst $38
    rrca
    rlca
    rlca
    nop
    nop
    dec h
    rst $20
    sub d
    rst $38
    di
    ld c, c
    ld a, c
    jr z, jr_07a_54dd

    and h
    cp h
    and [hl]
    rst $38
    cp [hl]
    jr c, jr_07a_54e4

    ld h, e
    ld h, e
    adc l
    adc a
    ld h, l
    cpl
    rst $20
    rla
    rst $30
    adc e
    ret z

    add b
    rlca
    rst $38
    ldh [$58], a
    ret nz

    cp $90
    and h
    ldh a, [rIE]
    cp $9f
    rst $38
    add e
    rst $38
    xor c
    add b
    ld e, b
    add c
    ld l, e
    add b
    rst $00
    ld e, c
    call nz, $faf0
    add c
    inc bc
    rst $18
    rst $38
    pop hl
    rst $38
    db $fd
    ld a, a
    ld b, l
    ldh [$03], a

jr_07a_54dd:
    rst $38
    rst $38
    nop
    jp nz, $c100

    nop

jr_07a_54e4:
    ld [$f500], a
    ei
    add b
    ld a, [$c207]
    rst $38

jr_07a_54ed:
    ld hl, sp-$60
    nop
    ld b, b
    ld h, l
    nop
    db $fc
    pop hl
    add b
    db $fc
    db $e4
    db $e4
    add b
    nop
    ld [bc], a
    db $fc
    ldh [rIE], a
    inc bc
    nop
    rlca
    ld bc, $030f
    ccf
    ld a, $ff
    cp b
    db $10
    ld [hl], b
    jr nz, jr_07a_54ed

    ld b, b
    ret nz

    add b
    ld a, a
    and b
    add b
    ret nc

    nop
    xor d
    nop
    call nc, $88f3
    cp $bc
    add c
    inc bc
    ld [bc], a
    rst $38
    ld hl, $23fd
    ld a, [$46ff]
    ld a, [c]
    ld c, [hl]
    db $e4
    sbc h
    call nz, $8c3c
    rst $38
    ld a, h
    dec e
    db $fd
    db $fc
    ld hl, sp-$04
    ld a, b
    cp $7f
    jr c, @+$01

    inc e
    rst $38
    ld e, $e3
    ld a, a
    jp nz, $fec2

    ld h, [hl]
    and c
    ld [bc], a
    rlca
    ld b, $ff
    inc c
    rst $38
    cp $0f
    pop bc
    rst $38
    jr nz, @+$01

    ld e, h
    ldh [$6d], a
    db $e3
    and h
    add b
    inc h
    pop bc
    ld a, [c]
    and b
    ld h, l
    ld hl, sp-$01
    db $e4
    jp $e084


    rst $38
    ldh a, [$7f]
    rra
    ld a, b
    ld a, a
    ld a, b
    rst $38
    db $fc
    ld h, h
    and c
    xor a
    pop bc
    add hl, bc
    and b
    sbc a
    rlca
    cp $07
    cp $03
    ld d, l
    ret nz

    di
    ldh [rTAC], a
    xor $f3
    ldh [$03], a
    cp $03
    ld a, h
    ld h, b
    nop
    nop
    jr nz, @+$01

    jr nz, jr_07a_5598

    db $10
    inc c
    inc c
    inc bc
    rlca
    nop
    rst $38
    rlca
    nop
    inc bc
    add b
    add c
    rra
    rra
    inc bc
    db $fd

jr_07a_5598:
    inc bc
    add h
    ld h, e
    ret nz

    ret nz

    ld [hl], c
    pop af
    dec de
    ei
    rst $38
    ld bc, $c3ff
    rst $38
    rst $38
    db $fc
    ccf
    jr nc, @-$4b

    ld a, a
    ld h, b
    dec e
    add b
    ld sp, $c1c0
    pop bc
    ld a, $e9
    inc bc
    rst $38
    inc bc
    ld a, [$f400]
    add b
    ld hl, sp-$80
    db $f4
    rst $18
    add b
    db $eb
    add b
    rst $38
    adc d

jr_07a_55c5:
    ld de, $07c1
    ld [bc], a
    ccf
    rrca
    inc b
    ccf
    ld [$30ff], sp
    rst $28
    ld h, b
    rra
    ld h, c
    ld e, a
    ccf
    rst $38
    ld e, $ff
    ld a, $fe
    ldh [$7e], a
    cp b
    and b
    call $b0fe
    add b
    ld sp, hl
    ccf
    db $ed
    ldh [$4e], a
    pop bc
    ld e, $fe
    rst $38
    ld e, [hl]
    cp $7e
    cp $3e
    cp $f9
    ld sp, hl
    push af
    ei
    inc a
    ld h, b
    rrca
    rst $38
    ldh [$0e], a
    ld c, $0f
    rrca
    rst $38
    inc e
    inc e
    db $fc
    db $fc
    cp $9e
    cp $0e
    dec hl
    cp $06
    cp $e4
    add [hl]
    ld l, [hl]
    add b
    inc bc
    sub [hl]
    ld h, h
    rst $28
    ld b, h
    jp c, $a5a6

    ret nz

    sbc [hl]
    ld h, b
    adc a
    adc a
    ret nz

    adc e
    add h
    ei
    ldh a, [$c5]
    ld h, c
    jr @-$5d

    ld a, [de]
    ld [c], a
    ld e, $e0
    rrca
    cp $0f
    ld a, h
    ei
    rrca
    jr c, jr_07a_55c5

    ld h, b
    db $10
    ccf
    jr nc, jr_07a_5676

    jr nz, @-$01

    ld a, a
    db $10
    adc b
    ld b, $06
    jr jr_07a_5658

    jr nz, jr_07a_5662

    cp $16
    and c
    ld e, $1e
    dec a
    dec a
    ld a, [$0dfa]
    rst $18
    dec c
    ld [bc], a
    ld [bc], a
    ld bc, $5001
    ld b, b
    ld e, a
    rst $38
    rst $30
    xor a

jr_07a_5658:
    rst $38
    ld b, a
    ld h, e
    ld b, b
    rlca
    cp $0e
    db $fc
    db $fd
    inc e

jr_07a_5662:
    ld b, b
    ld b, e
    db $fd
    db $fd
    ld a, [$d5fa]
    push de
    rst $38
    and c
    and c
    ld bc, $f901
    rst $38
    ret c

    rst $18
    ld a, a
    sub b
    sbc a

jr_07a_5676:
    db $10
    rra
    db $10
    rra
    ldh a, [rNR11]
    ld h, b
    ei
    db $fc
    rst $38
    sbc c
    ld h, b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    cp $41
    rst $38

jr_07a_568f:
    jr nc, jr_07a_568f

    cp [hl]
    ld c, b
    cp $07
    ld sp, hl
    rst $38
    rlca
    ld a, $fe
    cp $0e
    pop hl
    ld a, [hl]
    cp $40
    ret nz

    pop bc
    pop bc
    add e
    ld a, a
    add e
    ld b, $06
    rst $38
    jr c, @+$01

    ld [hl], b
    cp b
    ld h, b
    ret


    ldh [$5e], a
    pop bc
    jp c, Jump_000_08c0

    inc d
    ldh [$fe], a
    ldh [$fc], a
    inc e
    rst $38
    db $fc
    inc e
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp+$38
    cp $a0
    ld c, e
    inc bc
    inc bc
    ld [c], a
    db $fd
    ld a, [hl-]
    dec a
    ld c, $f1
    rrca
    db $fc
    pop bc
    xor $23
    nop
    ld h, [hl]
    db $fc
    jp Jump_07a_61fc


    and a
    ld a, [hl]
    ld sp, $3e3e
    ret nz

    xor b
    ld a, [hl+]
    ret nz

    rst $38
    ld [c], a
    add b
    add l
    add b
    adc b
    dec h
    ld b, b
    ld l, l
    and c
    xor b
    ld a, [hl+]
    ld b, $e3
    ret z

    and [hl]
    cp b
    jp nz, $a0c6

    ld a, b
    cp e
    add b
    ld d, a
    inc h
    cp $c2
    rst $38
    cp $f0
    ldh a, [rNR52]

jr_07a_5703:
    jr z, @+$27

    db $fd
    db $fd
    adc [hl]
    pop hl
    jp z, $8ee8

    ldh [rLY], a
    sub $e5
    ld a, a
    jr nc, jr_07a_5703

    ld [hl], b
    ldh [$60], a
    ldh [$e0], a
    ld hl, sp+$05
    rst $08
    rra
    rra
    rlca
    rlca
    db $ec
    ld hl, $2918
    add b
    add b
    ld de, $c1c0
    ld [hl+], a
    call nc, $ea01
    inc hl
    inc b
    cp [hl]
    ld b, b
    add $03
    ldh a, [rLYC]
    or [hl]
    ld l, h
    db $ed
    nop
    rst $30
    cp $e0
    ei
    nop
    nop
    ld h, $00
    ld e, l
    add $fe
    ldh [$e3], a
    nop
    db $e3
    sub b
    ld b, $08
    cp $e0
    di
    inc b
    nop
    db $10
    ld h, $94
    add c
    ld b, $05
    inc c
    dec bc
    ld b, [hl]
    ld [hl], b
    dec b
    add b
    ld a, a
    ld [hl], b
    dec bc
    xor $80
    ld [$0380], a
    ld [hl], b
    ld b, $be
    or c
    jr nz, @+$21

    db $e3
    rra
    db $fc
    ccf
    ldh [$e6], a
    ld hl, sp-$37
    ccf
    inc e
    jr nz, jr_07a_57b5

    rlca
    add c
    inc l
    inc b
    ld d, b
    rlca
    ld hl, sp-$08
    ld e, c
    rlca
    ldh a, [$ea]
    cp h
    add e
    nop
    db $fd
    cp $e0
    cp $fe
    ldh [$aa], a
    ld [$f145], a
    cp $e0
    ld hl, sp-$02
    ldh [$7c], a
    cp $e0
    cp [hl]
    xor d
    cp $e0
    add d
    cp $e0

jr_07a_579d:
    pop bc
    xor e
    ld h, b
    ld h, b
    cp $e0
    jr nc, jr_07a_579d

    cp $e0
    rst $10
    ld b, $ad
    ld h, d
    ld b, b
    jr jr_07a_57c5

    jr nc, jr_07a_57ef

    cp a
    jr nc, jr_07a_57e2

    ld h, b
    ld a, a

jr_07a_57b5:
    ld h, b
    ld e, a
    xor $00
    cp a
    xor e
    ret nz

    cp a
    ld e, d
    rrca
    ld b, $da
    ld b, b
    db $10
    and $60

jr_07a_57c5:
    ld b, b
    or d
    add $00
    rrca
    ld e, h
    ld [c], a
    ld b, b
    inc bc
    rrca
    cp $12
    ld b, b
    jp Jump_000_3446


    inc bc
    ccf
    cp $e7
    db $e4
    ld c, h
    push hl
    ld c, c
    dec b
    cp b

jr_07a_57df:
    ldh a, [$ec]
    rst $38

jr_07a_57e2:
    nop
    jr nz, jr_07a_57c5

    db $10
    ldh a, [$08]
    ld hl, sp-$38
    rst $38
    ld hl, sp-$18
    jr jr_07a_57df

jr_07a_57ef:
    db $10
    ldh a, [$30]
    ldh [$97], a
    ld h, b
    nop
    rst $18
    cp $e0
    rst $28
    cp $e0
    sub b
    call nz, Call_07a_6500

jr_07a_5800:
    jr jr_07a_5800

    ldh [$8c], a
    cp $e0
    sub b
    call nz, Call_000_2000
    cp $e0
    pop hl
    db $10
    cp $e0
    sub b
    call nz, Call_000_01b8
    ld d, b
    ld h, c
    rlca
    inc b
    rlca
    push af
    inc b
    scf
    ret nz

    ld [$81e2], sp
    add b
    ld a, a
    ld b, b
    cp a
    cp d
    db $fc
    push hl
    ld bc, $4228
    dec b
    rst $38
    dec bc
    cp $e0
    rla
    ld a, [$e0fe]
    ccf
    inc a
    ld h, h
    ld hl, sp-$08
    ldh [$e0], a
    add b
    xor a
    add b
    inc bc
    inc bc
    db $fc
    sbc e
    nop
    ld hl, sp-$72
    ld h, b
    rst $38
    ld e, l
    ld a, h
    add $60
    ld b, $ff
    ld [c], a
    ld d, a
    db $e3
    cp $19
    and l
    cp a
    nop
    ld a, h
    db $fc
    ld a, [hl]
    cp $fe
    ld e, d
    ret nz

    db $e3
    ld a, a
    rst $38
    pop af
    rst $08
    db $fc
    jp $b9fe


    ld sp, hl
    inc bc
    ccf
    cp $06

jr_07a_5869:
    db $fc
    inc e
    ldh a, [$30]
    ld [$04a1], sp
    and c
    add [hl]
    db $fd
    add hl, bc
    rrca
    ld [$8104], sp
    ld [bc], a
    add e
    cp $e1
    ld [hl], h
    push hl
    and b
    rst $38
    ld e, a
    ret nz

    ccf
    and b
    ld e, a
    ret nc

    cpl
    ld d, $f7
    cp $16
    cp $83
    add b
    db $fc
    inc [hl]
    db $f4
    jr nz, jr_07a_5869

    ld e, c
    and b
    ret nz

    ret nz

    ld c, d
    ldh [$08], a
    call z, Call_000_10e0
    rra
    db $fd
    ld de, $e3fe
    ld hl, sp+$18
    db $e4
    ld a, h
    add d
    cp $c3
    adc [hl]
    cp $9c

jr_07a_58ac:
    jr nz, jr_07a_58ac

    ld [c], a
    add c
    jp z, Jump_000_20c3

    ld a, h
    ld b, h
    ld a, a
    cp $8e
    ld a, [c]
    sbc [hl]
    rst $20
    cp a
    rst $28
    cp $e3
    db $db
    cp l
    add b
    rst $38
    ldh [$c0], a
    ld b, b
    cp $e1
    ldh [rNR41], a
    sbc c
    ldh [rHDMA1], a
    ld b, b
    adc d
    db $e3
    ccf
    jr nc, jr_07a_594f

    pop hl
    bit 4, b
    jr @+$01

    xor b
    ld d, a
    ret nc

    cpl
    add sp, $17
    call nc, $cf2b
    ld [$f515], a
    ld a, [bc]
    ld a, [hl+]
    pop hl
    add sp, $04
    cp $8f
    ld a, a
    ld [hl], a
    ld d, a
    xor [hl]
    xor a
    ld e, l
    rst $38
    ld c, $42
    ld h, b
    db $fd
    ld b, b
    ld h, c
    ld [c], a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, [hl]
    xor e
    cp l
    xor e
    ld a, b
    db $e3
    rrca
    add hl, bc
    rrca
    ld [$c1ae], sp
    add e
    rst $10
    add d
    ccf
    db $fd
    ld a, b
    db $e3
    sbc a
    cp $e0
    rst $08
    ld a, a
    db $d3
    rst $08
    ld a, a
    ld [de], a
    ld b, d
    cp $e3
    pop bc
    or $e1
    ld [hl], a
    ld e, a
    ccf
    ld a, [hl]
    ld e, [hl]
    ld a, b
    ld e, b
    ld h, b
    ld h, b
    ld hl, sp-$3b
    ld a, [c]
    pop bc
    reti


    inc bc
    cp $e2
    ld a, [hl+]
    ld b, l
    ldh [rNR41], a
    ld h, $c0
    db $10
    ld hl, sp+$59
    ld [$e3fe], sp
    ld [de], a
    pop hl
    rrca
    inc c
    ld d, d
    ret nz

    ld b, $9c
    ld h, a
    cp $8c
    inc h
    inc b
    add a
    add h
    rst $08
    ret z

    rra
    rra

jr_07a_594f:
    ei
    ld a, a
    ld h, e
    add hl, sp
    dec b
    pop bc
    ld a, $bc
    ld a, a
    ld d, l
    ld a, a
    ld d, l
    xor d
    xor d
    push de
    push de
    ld a, [$397a]
    ld b, d
    db $fd
    rlca
    inc bc
    ld h, b
    ld b, c
    cp a
    and b
    ld a, a
    ld h, b
    cp a
    push af
    and b
    ld [hl], c
    ld b, b
    add c
    ld h, [hl]
    ld hl, $3fe7
    pop af
    sbc a
    jp Jump_07a_7e7e


    dec sp
    and e
    ld a, [bc]
    add d
    ld b, l
    ld [bc], a
    and a
    add b
    rlca
    ei
    rst $30
    rlca
    di
    rrca
    add [hl]
    and a
    ld a, a
    add b
    rra
    ldh [$f3], a
    add a
    ld hl, sp-$17
    ld h, b
    cpl
    xor b
    db $fc
    inc bc
    nop
    rst $38
    sbc $68
    db $e3
    ldh a, [rNR10]
    ret nc

    jr nc, jr_07a_5a12

    pop bc
    ldh [$e0], a
    ei
    ld a, a
    ld a, b
    ld b, h
    ld b, b
    jr jr_07a_59c7

    inc e
    dec bc
    inc c
    rst $38
    rrca
    inc c
    dec c
    ld c, $07
    ld b, $c3
    ld a, a
    db $fd
    ld b, b
    add c
    ret nz

    sub c
    ld l, a
    jp nc, $f82f

    rlca
    db $fd
    ld hl, sp+$4f
    add b
    ccf

jr_07a_59c7:
    ret nz

    sbc a
    ldh [rVBK], a
    ldh a, [$df]
    rst $28
    ldh a, [$27]
    ld hl, sp+$17
    cp $e0
    daa
    ld hl, sp-$06
    ld c, b
    ld b, c
    rst $38
    sub h
    ldh [$fb], a
    rlca
    db $fd
    inc bc
    db $fd
    daa
    inc bc
    cp $01
    ld [hl], a
    ld h, [hl]
    rst $00
    ld h, d
    ei
    add hl, hl
    ld b, b
    ld [hl], $6d

jr_07a_59ee:
    jr c, jr_07a_59ee

    db $e3
    sub l
    ldh [rSC], a
    ret nz

    add b
    add b
    ld [bc], a
    sub b
    ld [hl+], a
    ld e, c
    rlca
    rst $38
    cp $01
    ld a, h
    add e
    cp a
    ret nz

    rst $18
    ldh [rIE], a
    ld l, a
    ld [hl], b

jr_07a_5a08:
    jr c, jr_07a_5a49

    rrca
    rrca
    nop
    nop
    rst $30
    ld c, a
    ldh a, [$3f]

jr_07a_5a12:
    or [hl]
    add b
    pop af
    ld c, $c0
    ccf
    cp a
    ld e, $ff
    rst $30
    rst $30
    xor e
    xor e
    jr nc, jr_07a_5a08

    ccf
    rst $38
    ret nz

    ccf
    ret nz

    rra
    ldh [$7f], a
    rst $38
    sbc a
    sbc a
    ld a, a
    jp $fc3f


    inc bc
    call c, $52a6
    ld h, e
    rst $38
    rst $30
    rst $38
    ld b, $fd

jr_07a_5a3a:
    db $ec
    ld [c], a
    pop hl
    rst $38
    call z, $dcf3
    call $ae20
    pop bc
    pop bc
    cp a
    ld a, [hl]
    cp a

jr_07a_5a49:
    ld h, c
    ld a, h
    db $fc
    dec bc
    adc b
    ld a, b
    ld [hl], d
    jp nz, $6898

    pop bc
    and b
    add l
    ld [hl], b
    ld b, a
    ld b, $23
    cp $07
    ld h, [hl]
    ld d, l
    rst $38
    cp d
    rst $38
    db $fd
    rra
    ld a, [de]
    cp $f8
    ld b, l
    sbc a
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$c7]
    inc a
    call $e780
    ld b, l
    or a
    ld a, b
    adc a
    ld [hl], b
    ld h, a
    ld h, a
    inc a
    add b
    and [hl]
    ld a, b
    and b
    ldh [$60], a
    or b
    jp hl


    db $fc
    jp hl


    nop
    ld sp, $3880
    cp h
    cp $e8
    ldh [$e9], a
    inc bc
    ld bc, $3f3f
    ld [hl], c
    ld h, l
    ret nz

    ld a, e
    nop
    ldh a, [rOBP1]
    ld h, b
    db $fc
    nop
    cp $f0
    ld [bc], a
    and c
    ld e, a
    rst $20
    nop
    pop hl
    nop
    ldh [$fe], a
    ld [c], a
    ld a, b
    inc sp
    ld h, d
    ld [bc], a
    db $fc
    db $e3
    jr c, jr_07a_5a3a

    ld b, b
    nop
    nop
    nop
    sub l
    inc c
    rst $38
    and $0f
    push af
    and $0b
    rst $38
    add sp, -$20
    db $e3
    ld c, $d1
    ld c, $e0
    ldh [$df], a
    and $e0
    xor $0e
    rst $38
    ldh [$0c], a
    dec c
    ld a, [$fae0]
    inc c
    ldh [$fb], a
    inc c
    ld c, $0f
    dec c
    dec c
    inc sp
    rrca
    inc l
    add b
    rst $28
    adc d
    db $e4
    dec c
    rrca
    rst $38
    ld [c], a
    ldh [$f0], a
    cp h
    add h
    ldh [rDMA], a
    db $e3

jr_07a_5aea:
    rrca
    rrca
    ld c, $0d
    ld b, b
    ldh a, [rIF]
    ld d, c
    ld c, $e7
    pop hl
    and $e0
    sub $e1
    ld l, h
    jr nz, jr_07a_5aea

    ld c, h
    and a
    pop hl
    db $ed
    ld c, $a1
    pop hl
    ld c, $4f
    ld a, [de]
    ldh [$4c], a
    inc c
    inc c
    sub e
    ld l, h
    ld c, h
    nop
    jp hl


    db $f4
    ret


    add hl, bc
    rst $38
    ldh [$e4], a
    di
    ld a, [bc]
    add a
    ld a, [bc]
    ld a, [bc]
    ld c, e
    pop hl
    pop hl
    di
    db $e3
    ldh [$f2], a
    pop bc
    ld [c], a
    ld [$0863], sp
    ld [$f2e0], sp
    cp a
    ldh [$a1], a
    db $e3
    ld [$d509], sp
    ld [c], a
    ld b, [hl]
    ldh [$f2], a
    dec bc
    ld [$e1e0], sp
    rst $18
    ldh [$7e], a
    ld a, [c]
    dec bc
    and h
    ldh [rNR24], a
    ld [$e19f], sp
    ldh [$f4], a
    ld a, [bc]
    ld a, [bc]
    rst $18
    pop hl
    ldh [$f6], a
    rst $18
    and $fa
    add b
    db $ec
    ld c, e
    rst $38
    ld [c], a
    ld l, e
    dec bc
    ld l, e
    ld c, d
    ld c, d
    ld e, $7f
    ldh [rOBP0], a
    ld c, b
    ld [$f70a], sp
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc h
    xor l
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    ldh [rSB], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    nop
    cp a
    dec b
    nop
    ld b, $07
    ld [$ff09], sp
    pop hl
    ld l, h
    cp $ff
    add sp, $0a
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $ff
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $f3
    rla
    jr @+$01

    ldh [$e0], a
    db $ec
    add hl, de
    ld a, [de]
    dec de
    inc e
    rst $38
    dec e
    ld e, $1f
    jr nz, jr_07a_5bdb

    ld a, [bc]
    ld [hl+], a
    inc hl
    db $fd
    inc h
    ldh [$ef], a
    dec h
    ld h, $27
    jr z, jr_07a_5bef

    ld a, [hl+]
    sbc a
    dec hl
    inc l
    dec l
    ld l, $2f
    cp a
    db $e4
    and b
    ld_long $ff30, a
    ld sp, $2732
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_07a_5bdb:
    rst $08
    jr c, jr_07a_5c17

    ld a, [hl-]
    dec h
    cp a
    db $e3
    add b
    jp hl


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

jr_07a_5bef:
    rst $08
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld a, [hl]
    db $e3
    ld h, b
    jp hl


    ld c, c
    ld c, d
    rst $38
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld a, [bc]
    ld a, [bc]
    ccf
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld a, [hl]
    pop hl
    ld b, b
    ld [$57ff], a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_07a_5c17:
    rst $38
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    dec c
    ld h, h
    ld h, l
    db $fc
    dec a
    ldh [rNR41], a
    jp hl


    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    rst $38
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc bc
    ld [hl], b
    ld [hl], c
    rst $18
    ld [hl], d
    inc bc
    ld [hl], e
    ld [hl], h
    ld [$ea00], sp
    nop
    nop
    rst $28
    ld [hl], l
    db $76
    ld [hl], a
    inc bc
    rst $38
    pop hl
    ld a, b
    ld a, c
    nop
    ld a, a
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    inc bc
    ldh [$cb], a
    rst $38
    add b
    add c
    add d
    add e
    daa
    daa
    daa
    db $10
    rst $38
    add h
    ld a, [bc]
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    cp e
    adc e
    daa
    ret nz

    call z, $8d8c
    adc [hl]
    ldh [$e0], a
    adc a
    rst $38
    sub b
    ld a, [bc]
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    ld sp, hl
    sub a
    ldh [$ed], a
    cp a
    db $e3
    sbc b
    sbc c
    ld a, [bc]
    sbc d
    sbc e
    sbc a
    sbc h
    sbc l
    sbc [hl]
    sbc a
    daa
    ret nz

    db $ed
    cp a
    db $e3
    and b
    rst $38
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    ld sp, hl
    xor c
    ldh [$ee], a
    ld a, [hl]
    ld [c], a
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    sbc a
    xor a
    or b
    or c
    or d
    or e
    ret nz

    xor $7e
    db $e3
    or h
    rst $38
    or l
    or [hl]
    or a
    ld l, h
    ld l, h
    cp b
    cp c
    cp d
    db $fc
    ldh [$ef], a

jr_07a_5cb9:
    dec a
    ld [c], a
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    and e
    pop bc
    jp nz, $eb80

    ldh [$a1], a
    db $fc
    ret nz

    jp $c0fc


    call nz, $c57f
    add $09
    add hl, bc
    rst $00
    ret z

    inc bc
    nop
    ld_long $ff00, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_07a_5cb9

    nop
    nop
    nop
    ld bc, $415d
    ld e, l
    jp z, Jump_07a_5262

    ld h, e
    ei
    ld l, a
    or c
    ld b, [hl]
    ld h, a
    dec e
    nop
    nop
    ei
    ld l, a
    or c
    ld b, [hl]
    ldh [$3b], a
    nop
    nop
    or c
    ld b, [hl]
    ld h, a
    dec e
    ldh [$3b], a

jr_07a_5d17:
    nop
    nop
    ldh [$3b], a
    ei
    ld l, a
    ld h, a
    dec e
    nop
    nop
    ccf
    ld h, a
    push af
    dec a
    db $ec
    inc e
    nop
    nop
    ccf
    ld h, a
    push af
    dec a
    ccf
    ld e, [hl]
    nop
    nop
    push af
    dec a
    db $ec
    inc e
    ccf
    ld e, [hl]
    nop
    nop
    rst $38
    ld a, a
    ccf
    ld h, a
    push af
    dec a
    nop
    nop
    db $fd
    nop
    rst $38
    db $ec
    inc c
    ld hl, sp+$06
    db $fc
    ld [bc], a

jr_07a_5d4a:
    cp $9f
    inc bc
    cp $01
    rst $38
    nop
    cp $e2
    ld sp, hl
    db $e4
    rlca
    rst $38
    db $fc
    jr jr_07a_5d4a

    and b
    ld h, b
    ret nz

    ld c, a
    adc $fe
    jp hl


    db $e3
    cp a
    ret nz

    rst $28

jr_07a_5d65:
    ld [hl], b
    dec a
    ld e, $1b
    rst $38
    rrca
    rrca
    inc b
    ld h, b
    ret nz

    or b
    ld h, b
    ret nc

    rst $38
    jr nc, jr_07a_5d65

    jr nz, jr_07a_5d17

    ld h, b
    ldh [rLCDC], a
    ld b, b
    rst $30
    ret nz

    ret nz

    ret nz

    or b
    push hl
    rra
    rra
    ld [hl], $19
    rst $38
    cpl
    jr nc, jr_07a_5e08

    ccf
    rst $28
    ld [hl], b
    dec sp
    inc e
    rst $38
    rrca
    rlca
    ld bc, $8000
    nop
    ldh a, [$e0]
    rst $38
    ret c

    jr nc, jr_07a_5e09

    sbc h
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, a
    ld h, c
    sbc a
    rst $38
    cp $07
    nop
    inc bc
    cp $e0
    rst $38
    ld bc, $1f00
    ldh a, [$7f]
    ldh [rIE], a
    add c
    rst $38
    cp $03
    db $fc
    rlca
    ld sp, hl
    rrca
    rst $30
    ld e, $ff
    rst $28
    jr c, jr_07a_5de0

    ccf
    ld h, b
    ld a, a
    ldh a, [$9f]
    rst $38
    rst $30
    rra
    db $fc
    ld hl, sp+$18
    db $10
    db $10
    db $10
    rst $38
    jr c, jr_07a_5e01

    rra
    rst $38
    ld sp, $e0e0
    ret nz

    db $fd
    add b
    ld h, h
    db $e3
    nop
    jr c, @+$12

    nop
    rst $38

jr_07a_5de0:
    add b
    rst $38
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf

jr_07a_5de9:
    jr nz, jr_07a_5de9

    cp $e0
    ld hl, sp-$01
    rst $08
    add e
    adc a
    add b
    add l
    rst $38
    add b
    res 0, b
    ld b, a
    ret nz

    ld c, e
    pop bc
    ld h, a
    rst $38
    jp nz, $e027

jr_07a_5e01:
    call nz, $e687
    jp $ffe3


    ld h, e

jr_07a_5e08:
    or d

jr_07a_5e09:
    ld h, e
    di
    ld [hl-], a
    db $db
    or d
    db $db
    rst $38
    ld a, d
    cp e
    ld a, d
    ldh a, [$30]
    inc a
    call z, $ff8f
    di
    ld h, e
    db $fc
    ld a, b
    rst $18
    xor $47
    and e
    rst $28
    ld h, c
    pop af
    jr nz, jr_07a_5e27

    rrca

jr_07a_5e27:
    ldh [$03], a
    inc bc
    db $fd
    rst $38
    cp $be
    pop bc
    ld l, a
    sbc a
    or $96
    or [hl]
    cp a
    sub $e3
    cp $39
    rra
    rst $38
    ld a, [de]
    pop hl
    rst $38
    db $fd
    ldh [rIE], a
    ld [c], a
    ld bc, $8100
    nop
    add e
    add e
    rst $38
    ld a, a
    cp $2d
    ld a, [c]
    add b
    rst $38
    adc $bf
    rst $38
    rst $18
    or c
    rst $38
    ccf
    ldh a, [rIE]
    rst $20
    rra
    rst $30
    ld a, h
    db $fc
    call c, $e0ff
    db $fc
    db $fc
    ld a, b
    ld hl, sp-$01
    ld hl, sp-$01
    rlca
    rst $38
    ld [c], a
    cp $f4
    inc e
    cp $fe
    pop hl
    db $e4
    inc a
    add sp, $38
    rst $38

jr_07a_5e75:
    ld h, c
    cp a
    rst $38
    ld [c], a
    ld e, $f4
    inc e
    ld hl, sp+$18
    ldh a, [rNR10]
    rst $38
    ldh a, [$31]
    ldh [$39], a
    ldh [$8c], a
    rlca
    ld b, $ff
    inc bc
    rrca
    ld bc, $073f
    ld a, h
    jr @-$0e

    rst $18
    jr nz, jr_07a_5e75

    ld b, b
    pop bc
    add b
    cp d
    jp $ffc0


    rst $38
    ld h, b
    ccf
    jr nc, @+$21

    ld hl, sp+$0f
    db $fc
    ld a, a
    ccf
    inc sp
    ldh [rNR11], a
    ldh a, [rNR23]
    ldh a, [$9a]
    pop bc
    sbc h
    jp $9aff


    ld a, e
    db $db
    add hl, sp
    jp hl


    add hl, de
    ld a, c
    ld [$18fd], sp
    ld [hl], a
    ret nz

    add e
    ld bc, $c6ef
    ret c

    jr nc, @+$01

    db $ec
    jr @+$6a

    sbc b
    sbc b
    ldh a, [$f0]
    ld h, b
    db $fd
    nop
    call z, Call_000_00c0
    nop
    rst $30
    ld d, a
    ld e, e
    ld l, e
    rst $38
    ld a, b
    jr z, @+$26

    inc a
    inc sp
    rra
    jr jr_07a_5eee

    rst $38
    ld c, $07
    inc bc
    ld bc, $e1e1
    pop bc
    pop bc
    rst $38
    inc bc
    ld [bc], a
    ld b, $05
    dec e

jr_07a_5eee:
    dec de
    ei
    and $ff
    rrca
    db $fc
    cp $f0
    cp c
    ld h, b
    or b
    ld h, b
    rst $18
    ld [hl], b
    ret nz

    ldh [$80], a
    ret nz

    jp nc, Jump_000_00e2

    nop
    rst $18
    ret nz

    ret nz

    pop hl
    ld h, c

jr_07a_5f09:
    ld a, [hl]
    sub h
    ldh [$1f], a
    rrca
    rst $38
    rrca
    ld [$040f], sp
    rlca
    inc b
    ld a, a
    ld c, a
    rst $38
    pop af
    sub b
    ldh [rNR41], a
    ldh [$c0], a
    ld b, b
    ld b, b
    rst $38
    ld a, b
    ld b, b
    ccf
    ld a, $21
    ccf
    jr nz, jr_07a_5f09

    rst $38
    and c
    pop hl
    ld [hl], c
    ld h, c
    ld sp, $3b11
    ld de, $1fff
    add hl, bc
    rrca
    rlca
    pop bc
    add c
    add e
    add b
    rst $38
    add a
    ld bc, $028f
    adc $04
    db $fc
    inc b
    rst $38
    db $fc
    ld [$08f8], sp
    ld a, b
    adc b
    add $83
    rst $30
    add e
    ld bc, $6801
    ret nz

    ld b, a
    nop
    ld a, a
    inc h
    xor a
    ld a, a
    inc a
    rst $38
    inc a
    ld a, [$80a1]
    adc h
    ret nz

    ld b, b
    ld a, [hl]
    adc h
    ret nz

    ld b, b
    ld a, a
    ret nz

    ld a, a
    ld a, $fe
    ld [c], a
    and e
    sbc $fe
    pop hl
    inc bc
    cp $06
    cp $c0
    and a
    add b
    nop
    di
    add b
    add b
    ld d, a
    call nz, $a4ab
    inc bc
    ld bc, $0307
    db $ed
    ld hl, sp-$61
    xor b
    ldh [$c0], a
    ldh [$e5], a
    stop
    db $10
    rst $38
    db $10
    jr @+$12

    jr jr_07a_5f9c

    inc c
    ld [$9f07], sp
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc

jr_07a_5f9c:
    ld bc, $e0d6
    cp $e0
    ld c, $8f
    inc bc
    ld a, $03
    ret nz

    sbc h
    ldh [$90], a
    pop hl
    add d
    and e
    nop
    db $fd
    rst $38
    adc l

jr_07a_5fb1:
    ldh [$c0], a
    ld l, a
    ret nz

    ld h, a
    ret nz

    ld h, c
    rst $38
    ret nz

    ld sp, $3be0
    ldh [$1f], a
    ldh a, [$ec]
    rst $38
    sbc b
    adc a
    ld hl, sp-$11
    ld a, b
    ei
    ld a, h
    cp l
    rst $38
    ld h, [hl]
    rst $38
    inc hl
    rst $00
    jr nz, jr_07a_5fb1

    nop
    cp $ff
    ld a, c
    add sp, $5f
    cp b
    ld c, a
    add sp, $1f
    or b
    add h
    cp c
    and b
    pop hl
    ldh [rIF], a
    ret nz

    pop hl
    db $fc
    push hl
    cp b
    jp hl


    ld [hl-], a
    and e
    ld bc, $ffff
    ld c, $fa
    ld e, $f2
    ld [hl], $e4
    inc h
    rst $38
    db $e4
    ld h, h
    call nz, $84cc
    adc h
    adc b
    sbc b
    rst $38
    ld [$40c0], sp
    ld h, b
    ld b, b
    ld h, b
    jr nz, jr_07a_6036

    cp a
    jr nz, jr_07a_6039

    db $10
    jr jr_07a_600c

jr_07a_600c:
    inc b
    di
    add b
    ld c, $fc
    ei
    pop hl
    ld c, h
    ld [$70f8], a
    ccf
    ld e, $07
    inc bc
    cp $d8
    add l
    rrca
    inc b
    rrca
    inc bc
    rra
    nop
    rst $38
    rst $38
    ld hl, sp+$1f
    nop
    ccf
    ld bc, $033f
    ld a, [hl]
    ld a, a
    rlca
    inc b
    rlca
    ld [$f00f], sp
    rst $38

jr_07a_6036:
    ld c, h
    and b
    rst $38

jr_07a_6039:
    rst $18
    ld hl, sp-$71
    call z, $8607
    inc bc
    rrca
    cp a
    ld hl, sp+$07
    cp $07
    db $fd
    ld b, $b1
    ret nz

    inc c
    push af
    ld hl, sp-$51
    ret nz

    ld hl, sp+$68
    pop bc
    pop bc
    add b

jr_07a_6054:
    inc bc
    nop
    ei
    rlca
    ld bc, $a110
    inc bc
    nop
    rla
    ld bc, $ff2f
    ld bc, $031e
    inc a
    rrca
    db $fc
    rst $30
    ld a, h
    jp Jump_000_3c07


    cp $e0
    ld l, h
    pop hl
    or [hl]
    pop bc
    cp $e1
    rlca
    db $fc
    ei
    rlca
    db $fc
    ld c, [hl]
    db $eb
    ld bc, $0ffe
    ldh a, [$1f]
    cp a
    ldh [$2f], a
    ret nc

    ld e, a
    and b
    ccf
    jp hl


    pop bc
    nop
    db $ec
    db $fc
    pop hl
    dec l
    jp hl


    ei
    rlca
    ld e, c
    add e
    cp $01
    ei
    rst $38
    rlca
    rst $28
    inc e
    cp [hl]
    ld [hl], b
    ld hl, sp-$40
    call c, Call_000_38ff
    or b
    ld h, b
    ld l, a
    rst $00
    rst $18
    adc a
    cp b
    rst $30
    db $10
    ld [hl], b
    jr nz, @-$41

    and b
    nop
    ccf
    db $10
    rla
    rst $38
    jr jr_07a_6054

    ld [$cceb], sp
    db $fd
    ld h, [hl]
    ld a, $ef
    inc de
    rra
    add hl, bc
    dec c
    call nc, $fde2
    inc bc
    ld a, [$06ff]
    push af
    inc c
    ld [$5519], a
    or d
    xor b
    rst $38
    rst $20
    ld e, d
    jp $81bd


    ld a, l
    ld bc, $fffd
    ld bc, $837a
    or l
    ld b, [hl]
    ld c, e
    xor h
    rla
    dec e
    ret c

    rst $08
    call z, $f800
    rrca
    cp $eb
    pop hl
    db $ec
    rst $20
    ld h, b
    call c, $e5fe
    inc a
    db $e3
    ld [bc], a
    db $fd
    ld bc, $e0fc

Jump_07a_60f7:
    dec b
    ld a, [$0b5b]
    db $f4
    db $fc
    pop hl
    dec d
    ld [$e362], a
    db $fd

Jump_07a_6103:
    rra
    ldh [$fd], a
    ld a, [$e021]
    or $0f
    rst $18
    inc a
    ld l, a
    ldh a, [rIE]
    sbc a
    ldh [$1f], a
    ldh [$6f], a
    ldh a, [$fb]
    db $fc
    rst $18
    db $fd
    cp $ff
    sbc $e0
    ld a, [de]
    and d
    add b
    nop
    push af
    ret nz

    cp $e0
    ldh [$fe], a
    ldh [rIE], a
    nop
    db $fd
    inc bc
    rst $38
    ei
    rlca
    push af
    rrca
    ei
    dec c
    db $ed
    add hl, de
    rst $38
    ld sp, hl
    ld de, $11f1
    ld hl, sp-$10
    db $fc
    ld hl, sp-$01
    adc [hl]
    db $fc
    ld [hl], a
    cp $df
    ld d, a
    rst $38
    ld d, a
    rst $38
    rst $38
    db $76
    rst $38
    ld [hl], a
    ldh a, [rVBK]
    ld [hl], b
    cpl
    rst $38
    add hl, sp
    ld d, $3d
    dec hl
    rst $28
    rst $00
    pop bc
    add b
    cp $8f
    ld h, b
    add b
    ld l, a
    or b
    rst $18
    ld h, b
    sbc a
    ldh [rIE], a
    rlca
    ld hl, sp+$00
    rst $38
    ldh a, [rIE]
    rst $08
    ld a, a
    ei
    ld a, e
    ld b, a
    ld c, c
    ld h, e
    db $dd
    ld a, $77
    db $e3
    pop bc
    push hl
    add b
    jp z, $f861

    cp a
    ret nz

    cp $e1
    ldh [$3f], a
    ldh [$e3], a
    cp a
    ret nz

    jp z, $4660

    and c
    db $ec
    xor c
    db $fc
    nop
    ld a, [$00ff]
    db $f4
    add b
    ld a, [$7c80]
    ret nz

    ld a, d
    rst $38
    ret nz

    dec a
    ldh [$3e], a
    ldh [$0b], a
    ld c, $1f
    ld a, a
    rrca
    inc de
    rra
    inc de
    rra
    ld sp, $a01f
    ld h, c
    rst $38
    jr nz, jr_07a_61ed

    jp nc, $d7db

    db $db
    push de
    rst $18
    rst $38
    ld d, l
    rst $18
    ld d, c
    rst $18
    sbc c
    rst $18
    sbc a
    rst $08
    rst $18
    adc a
    rst $08
    ldh [rP1], a
    ldh a, [$fe]
    and $e0
    nop
    cpl
    ld h, b
    add b
    pop hl
    ld de, $e3f0
    ld hl, sp+$48
    ldh [$cd], a
    ld b, c
    rst $38
    rlca
    rst $38
    adc d
    ei
    ld [hl], a
    ld [hl], d
    dec c
    ld b, $8f
    dec sp
    inc e
    rst $28
    ldh a, [$bd]
    ld b, c
    rst $28
    adc d
    db $10
    ld h, b
    ld a, a
    rst $38
    ld b, d
    ld a, [hl]
    ld b, d
    ld a, d

jr_07a_61ed:
    ld b, [hl]
    cp $44
    or h
    ld a, a
    call z, $88fc
    db $ec
    sbc b
    rst $18
    or b
    sub $40
    rst $38

Jump_07a_61fc:
    rrca
    inc sp
    inc e
    ld h, [hl]
    jr c, jr_07a_627e

    ld a, b
    add $ff
    ld a, h
    adc a
    ld a, [c]
    sbc [hl]
    ldh [rNR41], a
    ccf
    or b
    db $eb
    rra
    db $10
    cp $e2
    jr nc, @+$80

    ldh [$60], a
    ccf
    dec e
    rst $20
    ldh a, [$0e]
    ld hl, sp-$5c
    pop bc
    ld [hl], b
    ld b, l
    jr nz, jr_07a_6261

    and b
    rst $38
    ccf
    ld sp, $911f
    rra
    pop af
    sbc a
    ld a, c
    ei
    rst $28
    dec e
    ld a, d
    add b
    adc a
    and $db
    cp [hl]
    ld a, l
    ld a, c
    add e
    rst $10
    and b
    ld c, a
    ld b, d
    ld a, a
    add b
    ldh a, [$e0]
    ret z

    ld h, c
    rst $38
    ld h, b
    add b
    ldh [$80], a
    ld b, c
    add b
    add e
    ld bc, $a7e3
    ld e, [hl]
    ld h, b
    adc d
    ld a, [hl]
    pop hl
    sub h
    add c
    inc bc
    rlca
    ld b, $f9
    inc c
    rlca
    ld b, h
    ld e, a
    ld b, b
    rst $18
    ldh [$b9], a
    ret nc

jr_07a_6261:
    ld l, c
    rst $30
    ld l, b
    ld b, a
    ld h, a
    or $80
    ldh a, [$60]
    db $fc
    add b
    rst $38
    ldh a, [$80]
    pop hl
    ld b, b
    db $e3
    ld hl, $27be
    ccf
    inc a
    ccf
    ld a, b
    cpl
    ldh a, [$5f]
    inc c
    add c

jr_07a_627e:
    cp d
    adc c
    ld a, [hl]
    inc e
    add c
    ld b, b
    ret nz

    ld h, b
    ret nz

    jr nc, @-$1e

    ld a, [hl-]
    ld h, e
    rst $08
    ld hl, sp+$7e
    ret nz

    inc a
    push af
    ldh [$fe], a
    jp nz, Jump_000_00f8

    ld sp, hl
    db $fc
    inc e
    ld [c], a
    sbc h
    db $e3
    rrca
    ld b, $1c
    ld [$ef30], sp
    nop
    or $f9
    rst $18
    ld [bc], a
    ld h, b
    ld c, [hl]
    pop af
    rst $20
    rst $38
    ld a, c
    ld h, a
    ld a, c
    ld d, e
    ld a, l
    ld d, e
    ld a, l
    ret nc

    ld [hl], e
    sbc a
    and b
    ld a, [hl+]
    ldh [$b6], a
    ld h, c
    ret nz

    rst $38
    ld b, b
    and b
    ld hl, $fe06
    ld a, [c]
    rst $30
    rst $30
    rst $20
    push hl
    nop
    nop
    nop
    ld d, c
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$0e
    db $dd
    and $0d
    rst $38
    and $2a
    ldh [$ee], a
    rrca
    ldh [$f8], a
    ld c, $be
    ldh [rIF], a
    rst $18
    pop hl
    ret nz

    di
    or c
    dec c
    ldh [$e1], a
    and c
    db $eb
    ldh [$eb], a
    dec c
    dec c
    ld a, l
    db $e3
    ld c, $e8
    add b
    di
    rst $38
    rst $38
    db $fc
    ei
    dec bc
    rst $38
    db $e3
    ld a, [bc]
    add hl, bc
    ld [$ffbe], sp
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ldh [$f0], a
    dec bc
    db $f4
    ldh [$e4], a
    rst $10
    ldh [$09], a
    ldh [$f9], a
    ld [$080a], sp
    add hl, bc
    add hl, de
    ld a, [bc]
    ret nz

    pop af
    cp a
    db $e3
    add hl, bc
    add hl, bc
    sbc b
    ldh [$e0], a
    ld a, [c]
    rst $20
    pop hl
    inc b
    add c
    ldh [$98], a
    ldh [$0a], a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    pop af
    ld l, b
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$38
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
    db $fc
    rst $38
    push hl
    jp z, Jump_07a_44e9

    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    rst $18
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ldh [$f2], a
    ld c, a
    ld d, b
    rst $38
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    db $fd
    ld e, c
    ret nz

    ld a, [c]
    ld b, e
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    rst $18
    nop
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ldh [$f3], a
    ld b, e
    ld b, e
    ld a, a
    ld h, e
    ld h, h
    nop
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    add c
    and $e8
    add b
    ld_long $ffff, a
    db $fc
    ei
    nop
    rst $38
    db $e3
    ld bc, $0302
    rst $38
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    ei
    nop
    nop

Call_07a_63bc:
    ldh [$f0], a
    nop
    inc c
    dec c
    ld c, $0f
    ld a, a
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $e0
    ld a, [c]
    rst $38
    rla
    jr jr_07a_63ea

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $ef
    rra
    jr nz, @+$23

    ld [hl+], a
    ret nz

    pop af
    nop
    inc hl
    inc h
    rst $38
    dec h
    ld h, $27
    jr z, jr_07a_640f

    ld a, [hl+]
    dec hl
    inc l
    db $fd

jr_07a_63ea:
    dec l
    and b
    pop af
    ld l, $2f
    jr nc, jr_07a_6422

    ld [hl-], a
    inc sp
    rra
    inc [hl]
    nop
    dec [hl]
    ld [hl], $37
    add b
    ld_long $ffff, a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07a_640f:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    jr z, jr_07a_6486

jr_07a_6422:
    ld l, b
    ld h, h
    ld c, d
    ld l, a
    add hl, bc
    ld [hl], b
    add hl, sp
    ld a, a
    rst $28
    ld d, l
    rst $20
    inc [hl]
    nop
    nop
    add hl, sp
    ld a, a
    rst $28
    ld d, l
    ld b, b
    ld a, [hl]
    nop
    nop
    rst $28
    ld d, l
    rst $20
    inc [hl]
    ld b, b
    ld a, [hl]
    nop
    nop
    rst $38
    ld a, a
    rst $28
    ld d, l
    rst $20
    inc [hl]
    nop
    nop
    ld e, c
    ld a, [hl-]
    ld d, c
    add hl, de
    xor d
    nop
    nop
    nop
    ld e, c
    ld a, [hl-]
    ld d, c
    add hl, de
    cp a
    nop
    nop
    nop
    ld a, a
    ld l, a

jr_07a_645a:
    ld e, c
    ld a, [hl-]
    cp a
    nop
    nop
    nop
    ld a, a
    ld l, a
    ld e, c
    ld a, [hl-]
    ld d, c
    add hl, de
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    db $fc
    rst $38
    ccf
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    rst $38
    nop
    sbc a
    rra
    rst $38
    ldh a, [$e0]
    add b
    db $eb
    pop hl
    db $fc
    db $e4
    ldh [$fd], a

jr_07a_6486:
    rst $38
    db $f4
    pop hl
    ei
    inc b
    rla
    add sp, $2b
    call nc, Call_000_15cf
    ld [$fc03], a
    and $e7
    ldh [$e4], a
    ccf
    jr nc, jr_07a_645a

Call_07a_649b:
    rra
    db $10
    rra
    jr @+$11

    ld [$e0fe], sp
    inc b
    rst $30
    rlca
    inc b
    rlca
    pop hl
    db $ec
    rst $38
    rlca
    rst $38
    ld bc, $cdfc
    ld [$e1ff], a
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    cp $fd
    ccf
    ld hl, sp-$20
    ld a, b
    ldh a, [$8f]
    rlca
    rst $30
    di
    rst $38
    adc a
    dec bc
    rst $00
    rst $00
    scf
    inc sp
    adc a
    adc a
    ld a, a
    rst $38
    rst $30
    rra
    rrca
    ldh a, [rIE]
    db $fc
    call c, Call_000_1fe2
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$02
    ldh [$75], a
    db $e3
    ld h, l
    ld [c], a
    db $fc
    ld l, e
    db $e3
    rst $38
    db $ec
    dec b
    ld a, [$fc03]
    rlca
    ld hl, sp-$01
    dec bc
    db $f4
    dec b
    ld a, [$f708]
    ld bc, $f9ff
    ld b, $52
    ld [c], a
    ld b, d
    pop hl
    xor $1f
    ld [hl], b
    rst $38

Call_07a_6500:
    add a
    rst $30
    ld hl, sp+$3f
    ret nz

    ld [hl], $e5
    ld a, [hl]
    add c
    ei
    rlca
    cp a
    xor $1c
    cp b
    ld [hl], b
    db $fc
    rlca
    cp $e1
    cp $ff
    dec de
    di
    db $e3
    add e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    db $fd
    ld bc, $e515
    ldh a, [rIE]
    rra
    rrca
    nop
    nop
    ei
    ret nz

    nop
    dec b
    rst $20
    add b
    rst $38
    ld hl, sp+$7f
    ld c, $ff
    rlca
    ld bc, $07ff
    cp $0f
    ld hl, sp+$1f
    rst $18
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    sbc $c1
    ldh [$c0], a
    ld e, a
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$fe]
    ldh [$f8], a
    cp $e2
    ei
    rlca
    inc bc
    ld l, [hl]
    db $eb
    db $fc
    rst $38
    cp $7f
    jr nc, jr_07a_65a9

    ldh a, [$c0]

Call_07a_655d:
    inc c
    rlca
    ld b, $a1
    ldh [$a0], a
    rst $20
    nop
    ld hl, sp-$40
    cp $fe
    pop hl
    inc e
    rst $38
    ld sp, $63fe
    db $fc
    jp $fcef


    add e
    db $fc
    add b
    adc b
    ret nz

    ld c, $fc
    cp $fd
    ld bc, $e168
    ret c

    jr nc, jr_07a_65f2

    ldh [$c0], a
    add b
    pop de
    add b
    inc hl
    ldh [$f9], a
    ldh [rNR33], a
    ld [c], a
    ld bc, $e0a6
    dec e
    ld c, $ff
    ld [hl], a
    jr c, @+$03

    ld bc, $0103
    ld c, $07
    rst $18

jr_07a_659c:
    dec sp
    inc e
    rst $28
    ldh a, [$7f]
    db $fd
    jp nz, $e01f

    cp h
    ld hl, sp-$1d
    ld e, [hl]

jr_07a_65a9:
    jp Jump_000_07fb


    inc bc
    ld bc, $e1de
    ld b, $6f
    inc bc
    inc c
    rlca
    jr c, jr_07a_659c

    ld [c], a
    rst $38
    add b
    ret c

    pop hl
    rst $38
    db $fd
    inc bc
    ei
    rlca
    rst $30
    rrca
    ld l, a
    sbc a
    rst $28
    cp a
    ret nz

    db $fc
    nop
    cp $e2
    ret nz

    sbc $e0
    cp a
    cp $e0
    xor $f0
    ld a, [hl]
    ldh a, [$c0]
    jp $ff03


    inc bc
    rlca
    inc bc
    rlca

jr_07a_65de:
    rlca
    rrca
    rlca
    rrca
    jp hl


    ld c, $c1
    ldh [$94], a
    ldh [$c0], a
    jr z, @-$1e

    ldh a, [$e0]

jr_07a_65ed:
    ld sp, hl
    dec b
    ldh a, [$f0]
    pop bc

jr_07a_65f2:
    add b
    cp $e2
    inc de
    ldh [$fe], a
    ld [c], a
    ld [hl-], a
    rst $08
    jr c, jr_07a_65de

    or $ec
    pop bc
    ccf

jr_07a_6601:
    ldh a, [rBCPD]
    ret nz

    nop
    inc a
    ldh a, [$7a]
    rst $38
    ret nz

    db $fd
    add b
    ld_long a, $ff80
    ld b, b
    rst $38
    db $fd
    jr nz, jr_07a_6629

    ret nz

    ld b, $01
    nop
    add a
    inc bc
    ld c, l
    rst $38
    ld b, $bb
    inc e
    rst $28
    jr nc, jr_07a_6601

    ldh [rOCPS], a
    rst $28
    sub l
    ld d, a
    xor b
    rst $18

jr_07a_6629:
    ld d, b
    add sp, -$42
    ld b, c
    ei
    db $fd
    rlca
    and [hl]
    and c
    db $fd
    inc bc
    or $0f
    add sp, $1f
    ld e, l
    or b
    adc a
    and b
    nop
    rst $38
    inc a
    cpl
    ldh [$c0], a
    sub d
    ld [c], a
    cp a
    ldh [$7f], a
    rst $38
    ccf

jr_07a_6649:
    ldh a, [$30]
    and c
    xor e
    add b
    rst $38
    rst $38
    ld a, a
    ret nz

    rst $18

jr_07a_6653:
    ld h, b
    xor a
    ld [hl], b
    rst $08
    rst $28
    jr nc, jr_07a_6649

    db $10
    cp $bf
    jp nz, Jump_07a_78b6

    rst $18
    rst $38
    jr c, jr_07a_6653

    jr jr_07a_65ed

    ld a, b
    ld [hl], e
    db $fc
    db $db
    rst $38
    adc h
    adc a
    inc b
    rra
    inc e
    db $ed
    ld e, $fb
    rst $38
    inc e
    rst $30
    jr @-$1d

    ld e, $ce
    ccf
    db $db
    rst $38
    ld sp, $20f1
    db $fc
    jr c, jr_07a_6686

    ld [bc], a
    rlca
    rst $38

jr_07a_6686:
    ld [bc], a
    ld c, $04
    inc c
    nop
    ld [$8000], sp
    ei
    nop
    add b
    rst $38
    ldh [$e0], a
    ccf
    ld h, b
    ccf
    jr nz, @-$1e

    cp $e0
    ld e, d
    and c
    cp $e1
    xor l
    and [hl]
    rra
    ret nz

    ld a, a
    rst $00
    jr c, @+$80

    ret nc

    and e
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$0b], a
    and d
    sbc a
    ld hl, sp+$0f
    push af
    ld a, [hl-]
    ret nz

    rst $28
    ldh [$4e], a
    jp $ff03


    rst $38
    ld a, [hl+]
    push de
    ld d, l
    xor d
    ld bc, $47ff
    rst $38
    cp [hl]
    dec e
    cp $7e
    rst $38
    cp a
    rst $38
    ld e, e
    ld a, a
    ei
    call c, Call_07a_7a3f
    rst $20
    db $fd
    add e
    ld [hl], h
    ldh [$f2], a
    rst $00
    add b
    cp $a4
    ret nz

    ld h, $c3
    add c
    rst $38
    add e
    cp $ff
    jp nz, $427e

    ld a, [hl]
    ld h, d
    ld a, $60
    ret nz

    rst $38
    ret nz

    add b
    sbc l
    ld c, $39
    ld e, $33
    inc a
    rst $38
    dec sp
    inc a
    ld l, a
    inc a
    ld b, a
    ld a, h
    ret nz

    ld a, a
    db $e3
    ld b, b
    ld a, a
    ld a, [hl]
    db $e3
    db $fc
    db $e3
    ld sp, hl
    and e
    ld a, a
    add c
    rst $38
    rst $38
    add c
    cp [hl]
    pop bc
    rst $38
    ret nz

    rst $18
    ldh [$3f], a
    rst $38
    inc a
    ccf
    inc [hl]
    scf
    inc [hl]
    dec a
    ld [hl], $b9
    rst $38
    ccf
    ld a, [c]
    rst $38
    db $e3
    ld e, $f5
    ld c, $fc
    rst $38
    inc a
    db $fc
    inc l
    db $ec
    inc l
    db $fc
    inc l
    rst $18
    rst $20
    cp h
    ld l, a
    rst $18
    ld b, $e1
    inc a
    pop hl
    add b
    add b
    add c
    rst $18
    add b
    add c
    add c
    add e
    ld bc, $c14a
    jr jr_07a_6753

    rst $38
    adc e
    rrca
    adc [hl]
    adc h
    adc h
    adc b
    adc a
    adc b
    rst $38
    adc a
    add l
    add a
    add a
    add a

jr_07a_6753:
    ld b, $e0
    rst $38
    ei
    cp b
    rra
    sub h
    and c
    ld a, [c]
    di
    ld a, [c]
    sub e
    ld a, [c]
    rst $10
    inc bc
    jp nz, Jump_07a_6103

    adc e
    inc bc
    or $e8
    rrca
    rst $38
    rst $38
    ld a, a
    db $fd
    rst $18
    rst $28
    ld b, $ff
    add hl, de
    rst $38
    cp a
    dec hl
    rst $38
    push de
    rst $28
    ld a, [hl]
    add c
    inc e
    add h
    db $db
    ei
    rst $38
    ld e, a
    cp $e0
    ld l, $9f
    sub c
    adc $8e
    ccf
    ldh [rLCDC], a
    ld sp, hl
    ld sp, $8070
    ld a, b
    and b
    cp $e7
    rst $38
    nop
    ld h, $3c
    inc h
    inc a
    inc l
    jr c, @+$2a

    rst $38
    jr c, jr_07a_67d7

    jr nc, jr_07a_67d1

    nop
    rlca
    rlca
    rlca
    rst $38
    inc bc
    ld a, [hl]
    ld b, h
    ld a, [hl]
    ld b, b
    db $fc
    ld b, b
    pop af
    db $eb
    ld b, b
    jp $a08c


    sbc h
    ld d, d
    add b
    ld h, b
    ccf
    ld b, b
    sbc h
    rst $20
    add b
    ld l, l
    and a
    ld a, a
    ldh [rIE], a
    ld d, b
    call nz, Call_07a_63bc
    db $ec
    rst $38
    ld e, $de
    inc [hl]
    or $20
    db $fd
    ld l, $c3
    rst $38
    ccf

jr_07a_67d1:
    db $fd
    nop
    call c, Call_07a_7e38
    db $fc

jr_07a_67d7:
    jr c, @+$01

    jr nc, jr_07a_6817

    jr z, @+$2e

    inc b
    ld a, h
    inc [hl]
    db $e4
    ld a, [hl]
    jr @-$5e

    inc a
    jr jr_07a_6866

    ld a, $07
    ld b, $52
    jp Jump_000_28fa


    add l
    rlca
    cp h
    ld h, b
    inc b

jr_07a_67f3:
    rlca
    dec b
    ld b, $07
    rst $30
    inc b
    ld b, $04
    rst $38
    pop hl
    jp nz, $c683

    jp $c4ff


    ld b, a

jr_07a_6804:
    call z, Call_07a_4847
    rrca
    jr jr_07a_6819

    sbc a
    jr nc, jr_07a_682c

    ld h, b
    ccf
    db $fd
    ld e, b
    call nz, Call_07a_655d
    rst $28
    rst $38

jr_07a_6816:
    add hl, hl

jr_07a_6817:
    rst $20
    and a

jr_07a_6819:
    pop af
    sub c
    ld e, a
    adc $60
    rst $38
    ret nz

    jr nz, @-$1e

    jr nc, jr_07a_6804

    jr jr_07a_6816

    cp a
    rst $38
    ld b, b
    rst $18
    ld h, b
    and b

jr_07a_682c:
    ld h, b
    ldh [rNR41], a
    ldh [rIE], a
    jr nz, jr_07a_67f3

    ld b, b
    ldh [rLCDC], a
    or a
    ld a, b
    rst $28
    reti


    ld e, $b0
    add e
    and b
    and $02
    rlca
    and h
    ldh [$0c], a
    inc b
    rst $38
    inc c
    inc c
    inc e
    ld [$1818], sp
    jr c, @+$12

    cp $12
    and c
    ldh [rIE], a
    ld hl, sp-$61
    rst $08
    ld b, a
    ld b, a
    rst $18
    ld b, d
    ld h, e
    ld b, c
    ld h, c
    jr nz, @+$07

    ld h, e
    ccf
    rst $38
    db $fd
    ldh [$f5], a
    ld h, b

jr_07a_6866:
    nop
    nop
    sub b
    add b
    db $fd
    inc bc
    rst $38
    rst $30
    rrca
    db $dd
    ld a, $f7
    ld a, b
    rst $28
    ld [hl], b
    rst $38
    di
    inc c
    db $db
    inc a
    rst $28

jr_07a_687b:
    ldh a, [$e7]
    jp Jump_07a_60f7


    add b
    ldh a, [$29]
    ld h, c
    rrca
    cp $1c
    ld hl, sp-$41
    jr nc, jr_07a_687b

    nop
    rst $20
    jp Jump_07a_6d01


    ld h, b
    ld hl, sp+$7f
    ldh [$fc], a
    ldh a, [$7e]
    jr c, jr_07a_68b7

    inc c
    cp [hl]
    ld h, b
    rst $38
    add b
    ldh a, [$e0]
    ld a, h
    jr c, jr_07a_68c1

    ld c, $0e
    sub a
    ld b, $18
    nop
    ld h, a
    ret nz

    inc bc
    db $ed
    ld b, b
    ld [$4c40], a
    rst $38
    rlca
    ld c, b
    ld c, a
    ret z

    ld c, a

jr_07a_68b7:
    ret c

    rst $08
    ret nc

    ccf
    sbc a
    inc c
    ld hl, sp+$06
    db $fc
    inc bc

jr_07a_68c1:
    pop bc
    and e

jr_07a_68c3:
    sbc e
    ld b, d
    rst $10
    inc e
    ld [$2d04], sp
    ld h, b
    add b
    ld a, [hl]
    add b
    ld h, b
    ret nz

    rst $38
    jr c, jr_07a_68c3

    inc c
    ld hl, sp-$7d
    nop
    sbc a
    ld c, $93
    ld hl, sp+$30
    or b
    ldh [rOBP0], a
    add b
    cp $9e
    and b
    db $10
    ld h, e
    ld bc, $00ff
    inc bc
    ld bc, $0307
    rrca
    rlca
    rra
    rst $38
    inc c
    ld [hl], b
    jr nc, jr_07a_6954

    ld [hl], b
    ret nc

    ld h, b
    ret c

    rst $38
    ldh [$9c], a
    ldh [$0e], a
    ldh a, [$e7]

jr_07a_68ff:
    ld hl, sp-$01
    rst $38
    rra
    jr nz, jr_07a_6925

    jr nc, jr_07a_6927

    jr nc, jr_07a_6919

    db $10
    rst $38

jr_07a_690b:
    db $10
    jr jr_07a_691e

    ld e, $1c
    ccf
    inc de
    rst $38
    rst $38
    and b
    cp $51
    ld e, a
    ld [hl], c

jr_07a_6919:
    ld a, l
    inc sp
    scf
    rst $38
    dec sp

jr_07a_691e:
    dec sp
    ld a, $2b
    ld a, $ef
    ld a, $ef

jr_07a_6925:
    db $fd
    db $fc

jr_07a_6927:
    cp $45
    ld a, a
    add b
    cp a
    ret nz

    ld e, a
    ldh [$7b], a
    scf
    ld hl, sp+$46
    ld h, e
    ret z

    jr nc, jr_07a_690b

    jr c, jr_07a_68ff

    add b
    db $fc
    ld [hl], d
    add b
    or b
    ld b, e
    inc c
    nop
    inc e
    ld [$30f8], sp
    ld hl, sp+$24
    ld h, c
    ld [hl-], a
    pop hl
    call c, Call_000_0164
    rlca
    ld [bc], a
    ld e, $0c
    rst $38
    ldh a, [$1f]

jr_07a_6954:
    cp $3f
    di
    ld sp, $50f0
    rst $08
    ldh a, [$90]
    ldh a, [rNR10]
    cp $e1
    ld [hl], d
    ld b, e
    ld a, b
    ccf
    ld a, c
    ld c, $86
    ld h, h
    ret nc

    ld c, c
    pop hl
    ld a, a
    ccf
    ld e, $c5
    daa
    ld [c], a
    cp h
    jp $1407


    add sp, -$04
    ld b, c
    inc d
    pop hl
    pop af
    pop hl
    rra
    db $fc
    jp Jump_000_0ec0


    ld h, e
    ccf

jr_07a_6984:
    jr jr_07a_6984

    ld [hl], b
    db $fc
    ldh a, [rIE]
    ld c, $fc
    db $e3
    rra
    ld hl, sp+$07
    or $0f
    push af
    db $fd
    or d
    ld b, [hl]
    add b
    or $40
    add hl, sp
    ldh a, [$8f]
    rst $38
    ei
    rst $38
    ld b, b
    cp a
    add b
    ld b, b
    rst $38
    ld h, e
    cp [hl]
    db $e4
    rst $38
    cp [hl]
    push hl
    sbc h
    rst $30
    sbc a

jr_07a_69ad:
    di
    rst $08
    inc a
    rst $38
    rst $28
    inc e
    db $fd
    ld c, $f5
    adc [hl]
    ld a, l
    ld b, [hl]
    rst $38
    ld a, h
    ld b, a
    db $fc
    ld b, a
    ld a, [$0d87]
    cp $ff
    inc bc
    rst $38
    rra
    ldh [$3c], a
    ret nz

    jr c, @-$3e

    rst $20
    ld a, b
    add b
    ld [hl], b
    cp $e0
    ld d, $e1
    rst $38
    rst $38
    rst $28
    rst $38
    ld [hl], b
    ld l, a
    jr nc, @+$41

jr_07a_69db:
    db $10
    rla
    jr @+$1d

    rrca
    inc c
    ret nz

    nop
    pop hl
    adc e
    jr nz, jr_07a_69db

    ld h, b
    inc h
    ld b, b
    cp $e1

jr_07a_69ec:
    ld a, a
    ld a, [hl]
    ld [hl-], a
    ld [c], a
    jp nz, $0282

    ld [bc], a
    inc b
    ld b, c
    cp $fc
    ld [c], a
    ld hl, sp+$10
    ld hl, sp+$18
    ret c

    jr c, jr_07a_69ec

    rst $38
    jr c, @-$0a

    inc l
    cp $24
    ld_long a, $ff26
    pop af
    ld [hl+], a
    ld c, h
    ld b, b
    cp [hl]
    ld h, b
    add b
    and c
    rlca
    inc b
    ccf
    inc b
    rst $38
    push hl
    rra
    inc e
    ld [$1038], sp
    ld [hl], b
    jr nz, @+$01

    ld [hl], b
    nop
    ld a, h
    nop
    ld c, [hl]
    jr nc, jr_07a_69ad

    ld a, b
    ld sp, hl
    sbc a
    rrca
    add b
    ld a, [hl]
    add hl, hl
    add b
    nop
    inc bc
    cp $06
    rst $38
    db $fc
    ld b, $fc
    inc c
    ld hl, sp+$0a
    ld hl, sp+$1c
    rst $38
    ldh a, [rNR30]
    ldh a, [rNR33]
    ldh a, [$fe]
    ld bc, $ebf3
    rrca
    db $fc
    adc c
    add a
    nop
    call nc, $e7c0
    cp [hl]
    pop af
    rst $28
    ld a, a
    ld hl, sp-$25
    inc a
    sub b
    pop bc
    cp $01
    cpl
    rst $38
    ret c

    rst $38
    ld [$887f], sp
    scf
    call z, $ffdf
    inc h
    rst $38
    inc b
    ld a, a
    add h
    db $db
    and $fe
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld [hl], c
    rst $08
    adc c
    adc $ff
    xor c
    sbc a
    add sp, -$01
    ld [hl], b
    rst $38
    nop
    rrca
    rst $38
    ldh a, [$cf]
    ldh a, [rPCM34]
    jr c, @+$1f

    ld c, $06
    ld a, [hl]
    call nz, $0e20
    ld bc, $0738
    dec c
    ld b, $1d
    ld b, b
    call c, $c4ee
    ld e, d
    ld b, b
    ld b, b
    ldh [rP1], a
    add b
    and b
    ret nz

    ld a, b
    ccf
    jr nz, jr_07a_6adc

    jr jr_07a_6ab0

    inc b
    rlca
    ld b, b
    jr nz, @+$56

    pop hl
    rst $38
    ld c, $04
    ld a, [bc]
    inc c
    ld [$0c0c], sp

jr_07a_6ab0:
    ld [$9dff], sp
    ld [$08f5], sp
    ld h, e
    ld [hl+], a
    ld b, e
    ld h, c
    rst $38
    ld h, c
    ld b, c
    ld h, c
    ld b, c
    pop af
    ld b, c
    cp e
    pop bc
    rst $38
    rst $38
    add e
    rst $38
    add l
    ld c, $f7
    dec d
    rst $20
    rst $18
    daa
    rst $00
    ld b, [hl]
    add a
    add [hl]
    xor b
    add d
    inc b
    rlca
    sbc a
    ld hl, sp-$20
    and b
    ret nz

    ld b, b

jr_07a_6adc:
    sub [hl]
    jr nz, @-$14

    adc e
    nop
    ld l, a
    nop
    inc b
    nop
    inc b
    adc [hl]
    add b
    rlca
    ld b, $3c
    pop hl
    ld a, l
    ld e, $fc
    ld [c], a
    rra
    ldh a, [$0e]
    ld hl, sp+$0f
    ld a, a
    ld [bc], a
    ld h, h
    add [hl]
    ld hl, $a0c0
    ld b, b
    db $fc
    pop hl
    ld h, $e7
    cp $01
    ld b, [hl]
    ldh [rIE], a
    ld [bc], a
    rst $38
    nop
    rst $30
    rrca
    call c, $b038
    ld sp, hl
    ld h, b
    ld [$4061], sp
    ld hl, $72af
    rst $18
    ld a, [c]
    push af
    rst $20
    ld a, e
    dec de
    inc c
    ldh [$a1], a
    ld d, h
    ld bc, $07fe
    ei
    ei
    inc a
    rst $18
    and l
    ld b, d
    rst $18
    ldh [$fb], a
    inc a
    rra
    sbc a
    rlca
    ldh [$1f], a
    add b
    ld a, a
    ld [$12c0], a
    and b
    cp [hl]
    rst $38
    ld a, h
    ld a, e
    add a
    ld a, [$2ffd]
    ldh a, [rNR31]
    adc a
    db $fc
    cp $07
    ccf
    adc c
    and d
    inc c
    pop bc
    push hl
    add h
    ldh [rIE], a
    rra
    rra
    rlca
    inc b
    inc bc
    inc bc
    ld [$ff00], sp
    rst $18
    pop hl
    sbc a
    ld h, c
    ccf
    ld bc, $033d
    rst $30
    db $fc
    rst $38
    inc bc
    sub [hl]
    nop
    rst $38
    rst $38
    dec bc
    db $fd
    rst $38
    rla
    ld sp, hl
    rra
    ld a, [c]
    ld l, $f2
    ld a, $e4
    cp a
    ld e, h
    ld hl, sp-$0f
    ldh [$86], a
    nop
    ld a, [hl+]
    db $e3
    ld d, $ff
    inc bc
    sub d
    inc bc
    ld a, [bc]
    inc bc
    dec bc
    ld bc, $ec05
    ld [hl], e
    add b
    inc d
    jp Jump_000_01e1


    ld h, h
    ldh [rDIV], a
    rst $38
    inc b
    sbc a
    rrca
    ld b, $1e
    ld c, $78
    ld h, $a0
    xor d
    inc bc
    ld b, b
    ei
    ld b, b
    rst $38
    rst $38
    db $ec
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    ld a, [$886e]
    and b
    ret c

    and b
    add sp, $00
    push af
    nop
    ld a, [$00ff]
    db $fd
    add b
    ld a, [hl]
    ret nz

    ccf
    ldh [$fa], a
    rst $18
    ld b, $fe
    inc b
    rst $30
    inc c
    ld c, h
    pop bc
    cp a
    ld c, b
    sub h
    db $fc
    pop hl
    ret


    jp $bac0


    add b
    db $fc
    ld a, d
    ld [bc], a
    cp c
    set 0, b
    rst $20
    nop
    rrca
    rlca
    cp [hl]
    add a
    sbc l
    pop bc
    jr nz, @-$1e

    db $f4
    rst $38
    ldh [$b2], a
    ld [hl], b
    jp c, $e930

jr_07a_6be5:
    jr @-$01

    ccf
    ld [$0df4], sp
    db $fc
    dec b
    ld b, $9e
    adc b
    ld a, l
    jp $bcfe


    db $eb
    inc a
    nop
    ld hl, sp+$10
    jr jr_07a_6c03

    inc c
    rst $38
    ld [$040e], sp
    ld b, $06
    rlca

jr_07a_6c03:
    ld b, $05
    rst $28
    rlca
    dec b
    nop
    ld [bc], a
    ld l, h
    adc b

jr_07a_6c0c:
    add b
    nop
    adc c
    rst $38
    rst $38
    ret


    ld a, a
    or c
    ld a, a
    pop de
    ccf
    jr nc, jr_07a_6c0c

    ld e, a
    ld d, b
    inc l
    jr nz, jr_07a_6c0c

    ld b, b
    ld b, b
    ld [hl], b
    ld b, b
    ld a, [hl]
    rst $38
    jr nz, jr_07a_6be5

    rra
    add b
    add b
    sbc a
    adc a
    cp b
    rra
    sub b

jr_07a_6c2e:
    or b
    and b
    rra
    ldh a, [$2e]
    ldh [$ec], a
    add b
    sbc [hl]
    ld h, l
    rst $38
    xor b
    ld [$0ccc], sp
    rst $08
    rlca
    rst $20
    rlca
    rst $38
    rst $30
    jp $a3f3


    ei
    sub c
    ld a, l
    ret


    ld a, h
    ld d, e
    add [hl]
    dec bc
    ld h, b
    rst $38
    cp $ff
    rst $38
    ldh [$f2], a
    ld h, b
    db $e4
    call Call_000_0a28
    ld h, d
    nop
    call c, Call_000_3e60
    and l
    add b
    nop
    rst $20
    ld a, a
    inc bc
    cp $0c
    ld hl, sp+$30
    pop hl
    ld b, b
    jr nz, jr_07a_6c2e

    cp a
    add a
    ld bc, $0405
    rst $38
    cp $6f
    and c
    add b
    ld a, a
    nop
    ld hl, sp-$10
    ld c, $0c
    di
    ld [c], a
    ld b, h
    ld h, h
    ld a, a
    ldh [$d8], a
    jr c, @-$0a

    inc c
    ld a, [$4006]
    add a
    ld a, [c]
    and c
    and c
    ccf
    ld h, b
    ldh [$32], a
    ld b, c
    inc c
    rlca
    ld [$f90f], sp
    ld [$4040], sp
    add l
    ld bc, $80c0
    ld b, b
    ret nz

    ld h, e
    rst $28
    pop bc
    ld a, $e7
    jr @-$0c

    ld h, d
    ld bc, $30ff
    rst $38
    rra
    ld [hl], c
    rra
    ld sp, hl
    rst $08
    ld e, b
    rst $08
    call c, $87ff
    adc h
    add a
    adc [hl]
    inc bc
    rlca
    ld bc, $ffb0
    and b
    cp e
    inc hl
    ld a, [hl]
    ld c, h
    ld a, b
    ld d, b
    ld [hl], b
    rst $30
    jr nz, @-$1e

    ld b, b
    ld a, $40
    add b
    ld a, $e4
    ccf
    rst $38
    ld [c], a
    rra
    pop af
    dec bc
    ld hl, sp+$0d
    ld hl, sp+$05
    ld a, [$8098]
    ld [bc], a
    ld c, [hl]
    ldh [$bf], a
    ld a, a
    adc a
    rst $38
    ld h, b
    ei
    rst $38
    rra
    dec a
    inc b
    rst $38
    cp $e9
    rst $38
    sub b
    ldh a, [$f0]
    ldh [$7e], a
    dec h
    call nz, $eea2
    ld h, b
    inc bc
    db $fc
    rrca
    ldh a, [$e8]
    inc b
    ld h, c
    ld a, [c]
    and c

Jump_07a_6d01:
    inc b
    add l
    ldh [$fe], a
    ldh [$7d], a
    add hl, de
    ld a, $cf
    inc b
    rrca
    ld [bc], a
    rlca
    ld b, [hl]
    ld h, b
    cp $e3
    pop bc
    add b
    rst $38
    ld a, h
    ld a, b
    rlca
    rlca
    add hl, sp
    jr jr_07a_6d9a

    ld h, $f7
    ld h, a
    ld b, c
    ld b, b
    rst $38
    ldh [$98], a
    adc a
    adc h
    add a
    rst $18
    ld b, [hl]
    jp $c143


    and c
    cp h
    jr nz, jr_07a_6d80

    or b
    db $ed
    ld hl, sp+$10
    ld h, b
    ld bc, $1cff
    add c
    adc h
    ld hl, sp-$38
    rst $38
    ld a, b
    ld a, b
    jr nc, jr_07a_6db1

    ld d, b
    di
    cp $9a
    rst $38
    ld c, $0f
    rlca
    jr nc, jr_07a_6d4b

jr_07a_6d4b:
    ld [hl], b

jr_07a_6d4c:
    jr nz, jr_07a_6dae

    or $5e
    ldh [$c3], a
    ld b, b
    cp b
    ldh [$03], a
    adc l
    adc [hl]
    rst $30
    sub a
    ld a, b
    ld a, a
    inc a
    ld [hl], d
    add c
    ld bc, $604a
    sub b
    add hl, hl
    ret nz

    pop af
    ret nz

    inc d
    ld b, c
    jr jr_07a_6d4c

    rst $28
    ld h, l
    rra
    nop
    inc bc
    nop
    rst $38
    ccf
    nop
    sbc a
    nop
    rst $08
    add b
    ld h, a
    ret nz

    sbc a
    ccf
    ldh a, [rIF]
    rst $38
    inc bc

jr_07a_6d80:
    cp c
    and e
    and $40
    ld e, $be
    ld bc, $9080
    rst $38
    ldh a, [rIF]
    ld bc, $20a5
    ld a, b
    dec bc
    ldh a, [$b0]
    ld [hl-], a
    jr nz, jr_07a_6dc6

    adc l
    ld b, b
    ld d, b
    ld b, e

jr_07a_6d9a:
    db $f4
    ld hl, $63ac
    ld [hl], a
    inc bc
    ld [bc], a
    ld b, $fe
    ldh [$0e], a

jr_07a_6da5:
    inc b
    add hl, bc
    add d
    ld b, b
    pop hl
    pop bc
    ld [hl], $40
    ld c, h

jr_07a_6dae:
    pop hl
    ld c, [hl]
    ld [bc], a

jr_07a_6db1:
    ld d, b
    ld b, d
    ld c, $04
    db $fc
    ei
    db $10
    rst $38
    cp $e0
    rst $18
    ccf
    ld [hl], a
    ld hl, sp-$03
    db $fd
    cp $90
    ld h, c
    ld [hl], c
    ld d, b

jr_07a_6dc6:
    pop af
    and b
    pop hl
    and b
    rst $38
    db $e3
    pop hl
    ld h, e
    pop hl
    db $e3

jr_07a_6dd0:
    ld hl, $a163
    rst $38
    db $e3
    pop hl
    rst $00
    add d
    add [hl]
    add d
    adc [hl]

jr_07a_6ddb:
    add h
    push hl
    adc h
    cp $01
    inc b
    cp $00
    add a
    ld [bc], a
    jr nc, jr_07a_6de7

jr_07a_6de7:
    ld [hl], c
    rst $38
    jr nz, jr_07a_6e4c

    jr nz, jr_07a_6dd0

    ld b, b
    jp $c741


    rst $38
    ld b, c
    ld a, a
    jr nz, jr_07a_6e35

    db $10
    ld e, $11
    jr nc, @+$71

    rra
    rst $38
    rst $38
    adc a
    ret nz

    ret nz

    pop af
    cp $e2
    add e
    ld hl, sp-$02
    ldh [$fa], a
    ret nz

    sub $81
    sub b
    rst $38
    adc b
    rst $38
    ld c, e
    cp e
    rst $38
    ld c, h
    db $fc
    jr nz, jr_07a_6e1c

    ld a, [$fc00]
    ldh [$1f], a

jr_07a_6e1c:
    or a
    di
    inc a
    rst $38
    jr nz, jr_07a_6da5

    ld e, a
    and b
    db $fc
    db $e3
    ld a, a
    rst $38
    add b
    rra
    ldh [$af], a
    ld [hl], b
    ld e, e
    inc a
    ld d, $f3
    rrca
    dec b
    ld c, [hl]
    add c

jr_07a_6e35:
    ld d, e
    ld [$e0df], sp
    cp [hl]
    ld a, a
    rst $38
    db $fc
    ld [$18e8], sp
    ret c

    jr nc, jr_07a_6ddb

    ld [hl], b
    rst $30
    call nc, $e638
    db $fd
    and b
    add b
    nop

jr_07a_6e4c:
    and e
    ld h, c
    rst $38
    db $e3
    ld hl, $21e3
    rst $30
    ld hl, $13ff
    ld [hl], a
    rst $38
    rrca
    pop af
    nop
    ld b, b
    jr jr_07a_6e67

    add hl, de
    cp $e6
    rst $38
    dec e
    ld [$0c1f], sp

jr_07a_6e67:
    add $43
    adc $83
    rst $38
    adc h
    add a
    sbc l
    add [hl]
    sbc c
    adc [hl]
    di
    sbc h
    rlca
    rst $20
    ld hl, sp-$71
    ld [hl+], a
    and b
    cp $eb
    ld a, h
    pop hl
    jp nz, $e1c0

    ret nz

    cp $fc
    pop hl
    nop
    rst $38

jr_07a_6e87:
    cp a
    ld b, b
    ld d, a
    xor b
    ccf
    rst $38
    ret nz

    ld d, a
    xor b
    cpl
    ret nc

    ld d, l
    xor d
    rrca
    rst $30
    ldh a, [rHDMA5]
    xor d
    ld d, b
    add l
    rst $38
    nop
    ldh [$1f], a
    jp z, $2ba0

    db $fc
    sub h
    ld b, b
    db $fd
    sbc a
    dec b
    ld a, [bc]
    and h
    ld hl, sp+$00
    db $fc
    dec a
    ret nz

    and $48
    inc bc
    nop
    cp a
    rrca
    ldh a, [$9f]
    ld [hl], a
    ld h, a
    ld hl, sp-$71
    ld h, [hl]
    ld b, b
    ldh [$1f], a
    nop
    ld e, a
    ld b, b
    ld [hl], a
    ret nz

    nop
    add d
    add $40
    ld a, [hl+]
    nop
    ld d, l
    ld c, e
    ret nz

    xor c
    push de
    ld b, h
    add d
    sbc l
    pop hl
    xor d
    ldh a, [$e2]
    ld a, a
    scf
    ret nz

    dec bc
    rst $18
    db $f4
    dec d
    ld [$fd02], a
    db $fc
    rst $20
    rst $38
    ret nz

    rst $38
    ld a, a
    jr nc, jr_07a_6e87

    ld [$87cf], sp
    ld [hl], c
    ldh [$f7], a
    inc e
    ld hl, sp+$06
    sbc b
    ld h, b
    rst $38
    inc bc
    rst $38
    ld b, b
    rst $38
    rst $38
    jr nz, jr_07a_6f7a

    sub b
    rst $08
    ld hl, sp+$77
    inc a
    rst $38
    rra
    ld c, $03
    ld bc, $e0de
    cpl
    ldh a, [$8f]
    sub a
    ld a, b
    srl h
    inc b
    ld hl, $63b0
    call nz, Call_07a_7923
    jp hl


    add a
    ld h, e
    add b
    rst $20
    and b
    ld e, $9a
    ld b, b
    or $0f
    sbc e
    ld [hl], a
    ld a, h
    rst $28
    ldh a, [$ac]
    ld [hl+], a
    inc bc
    cp a
    ret nz

    ld [hl], d
    ld b, c
    ld a, $a0
    ld hl, $03fd
    cp [hl]
    ld a, [hl]
    ret nz

    ld [hl+], a
    inc b
    cp c
    and b
    add a
    ccf
    call z, $41c7
    ld b, b
    add [hl]
    ld hl, $e0f4
    jp hl


    push hl
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    ld [$0a0a], sp
    ld [$0808], sp
    ld a, [bc]
    add hl, bc
    ld a, a
    add hl, bc
    ld [$0d08], sp
    dec c
    inc c
    dec c
    rst $38
    pop hl
    ret nc

    db $ed
    ldh [$fe], a
    rst $20
    db $e3
    ldh [$e0], a
    ldh [$09], a
    jp c, Jump_000_0de1

    inc c
    inc e
    ldh [$f6], a
    cp [hl]
    ldh [$08], a
    ld [$ff0c], sp
    ldh [$e0], a
    push af
    sbc d
    pop hl
    sub a

jr_07a_6f7a:
    inc c
    inc c
    rrca
    ldh [$f6], a
    ld [$e080], sp
    ldh [$f6], a
    dec bc
    and b
    ld a, a
    ldh [$e0], a
    ld [c], a
    sbc a
    db $e3
    ld h, b
    db $eb
    ld e, l
    db $e3
    add hl, bc
    add b
    push hl
    ld l, l

jr_07a_6f94:
    db $10
    ld b, b
    db $ed
    ld b, l
    ld [c], a
    ld a, [hl-]
    ld [c], a
    ret nz

    ld [c], a
    ld c, $e0
    xor $df
    and $40
    pop hl
    rrca
    rrca
    rrca
    inc c
    inc c
    ldh [$ee], a
    inc e
    db $e4
    push hl
    ldh [$3d], a
    pop hl
    nop
    ldh [$f7], a
    jp $c0e0


    ld a, [c]
    and b
    push hl
    rst $18
    ldh [$dc], a
    pop hl
    add b
    db $ed
    ld e, [hl]
    push hl
    add b
    add d
    pop hl
    ldh [$f2], a
    ld a, [hl]
    db $e4
    ld h, c
    ld [c], a
    ldh [$f3], a
    ld e, c
    jp nz, $e4e0

    rrca
    jr jr_07a_6f94

    rst $28
    dec a
    db $e3
    jr nz, @-$1b

    rrca
    ld c, h
    ldh [$f9], a
    jr nz, @-$0d

    ld a, a
    push hl
    nop
    nop
    ret nz

    ld e, $c2
    ldh [$aa], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, [de]
    add e
    nop
    nop
    nop
    rst $38
    adc a
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    rst $38
    dec b
    adc a
    adc a
    ld b, $07
    ld [$0a09], sp
    push af
    dec b
    or $e0
    nop
    rst $38
    add sp, -$71
    dec b
    dec b
    inc c
    rst $38
    dec c
    ld c, $0f
    db $10
    ld de, $8f8f
    ld [de], a
    rst $20
    inc de
    inc d
    dec d
    pop hl
    ldh [$e0], a
    db $ed
    ld d, $17
    jr @+$01

    add hl, de
    ld a, [de]
    dec de
    inc e
    adc a
    adc a
    dec e
    ld e, $f7
    rra
    jr nz, jr_07a_7068

    ret nz

    xor $22
    inc hl
    inc h
    dec h
    rst $38
    ld h, $27
    jr z, jr_07a_707b

    adc a
    adc a
    ld a, [hl+]
    dec hl
    rst $30
    inc l
    dec l

jr_07a_7059:
    ld l, $a0
    xor $2f
    jr nc, jr_07a_7090

    ld [hl-], a
    rst $38
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $8f
    adc a
    scf

jr_07a_7068:
    jr c, jr_07a_7059

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    add b
    db $ed
    dec a
    ld a, $3f
    rst $38
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    adc a
    adc a

jr_07a_707b:
    ld b, l
    rst $18
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld h, b
    db $ed
    ld c, e
    ld c, h
    rst $38
    ld c, l
    ld c, [hl]
    dec bc
    ld c, a
    ld d, b
    ld d, c
    adc a
    adc a
    cp a

jr_07a_7090:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec a
    ld b, b
    xor $57
    rst $38
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    adc a
    adc a
    rst $38
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    cp $20
    db $ed
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    adc a
    rst $38
    adc a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    db $fd
    ld [hl], e
    nop
    db $ed
    ld [hl], h
    inc bc
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    rst $38
    adc a
    adc a
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ei
    ld a, a
    add b
    ldh [$cd], a
    add c
    add d
    add e
    add h
    add l
    rst $38
    add [hl]
    adc a
    adc a
    add a
    adc b
    adc c
    adc d
    adc e
    rst $30
    adc h
    adc l
    adc [hl]
    ret nz

    call $9190
    sub d
    sub e
    rst $38
    sub h
    dec bc
    adc a
    adc a
    sub l
    sub [hl]
    sub a
    sbc b
    rst $28
    sbc c
    sbc d
    sbc e
    sbc h
    and b
    call $9d05
    sbc [hl]
    rst $38
    sbc a
    and b
    and c
    adc a
    adc a
    and d
    and e
    and h
    rst $18
    and l
    and [hl]
    and a
    xor b
    xor c
    ldh [$ee], a
    dec b
    xor d
    rst $38
    xor e
    xor h
    xor l
    adc a
    adc a
    xor [hl]
    xor a
    or b
    rst $18
    or c
    or d
    or e
    or h
    or l
    ldh [$ef], a
    or [hl]
    or a
    rst $38
    cp b
    cp c
    adc a
    adc a
    cp d
    cp e
    cp h
    cp l
    rst $28
    cp [hl]
    cp a
    ret nz

    pop bc
    ret nz

    rst $28
    dec b
    jp nz, $ffc3

    call nz, $8f8f
    push bc
    add $c7
    dec bc
    ret z

    di
    ret


    jp z, $ee20

    dec c
    ret nz

    set 1, h
    call $ff8f
    adc a
    adc $cf
    ret nc

    dec bc
    pop de
    jp nc, $fdd3

    call nc, $f1e0
    dec b
    push de
    adc a
    adc a
    sub $d7
    ccf
    ret c

    reti


    jp c, $dcdb

    db $dd
    ldh [$aa], a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_07a_78b6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_07a_7923:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_07a_7a3f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_07a_7c9f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_07a_7e38:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_07a_7e7e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_07a_7f80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
