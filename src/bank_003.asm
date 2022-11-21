; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $003", ROMX[$4000], BANK[$3]

    db $fe, $4b

    ld b, l
    ld c, e

    db $60, $4c, $89, $4b

    pop af
    ld c, h

    db $41, $4d, $93, $4d, $f0, $4d, $7d, $4f

    or a
    ld c, a

    db $39, $50

    add a
    ld d, b

    db $6a, $4e, $b8, $4e

    db $dc
    ld c, [hl]

    db $02, $4f, $58, $4f, $21, $4f, $6c, $4f, $cd, $50

    call Call_000_23b6
    xor a
    ldh [$c1], a
    call Call_000_304d
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_2683
    ld hl, $40ab
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $4950
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $9800
    ld c, $40
    call Call_000_04db
    ld hl, $4a9e
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b800
    ld c, $40
    call Call_000_04db
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld a, $07
    ldh [rWX], a
    ld a, $90
    ldh [rWY], a
    ld hl, $4b05
    ld de, $0008
    call Call_000_056c
    call Call_000_05f6
    call Call_000_0371
    rst $08
    ld b, $cd
    add d
    cpl
    ldh a, [$94]
    or a
    jr z, @-$06

    ret


    sub l
    nop
    rst $38
    db $ec
    rst $38
    rst $38
    db $ec
    nop
    cp $ed
    rst $08
    db $e4
    add d
    cp a
    nop
    ld [de], a
    nop
    ld [hl], $00
    ld h, [hl]
    pop bc
    ld [c], a
    inc b
    rst $38
    nop
    ld [$1900], sp
    nop
    inc de
    nop
    inc sp
    jp Jump_000_3700


    cp a
    ldh [$ce], a
    push hl
    push de
    ldh [$fa], a
    pop hl
    rst $38
    add b
    add $fd
    ldh [$c8], a
    or a
    ld a, [$f4e0]
    db $e3
    and $e2
    xor l
    ld d, d
    cp e
    ld b, b
    cp a
    and d
    db $e3
    rst $38
    rst $38
    ld bc, $e0fd
    ld l, e
    pop af
    sub l
    ld a, [$92e0]
    db $e4
    adc $e1
    and e
    call c, $a1de
    db $fc
    adc $e3
    ld l, a
    pop hl
    nop
    rst $38
    dec l
    jp nc, Jump_000_0df2

    cp h
    ld h, l
    db $e3
    adc $e3
    dec de
    push hl
    push af
    dec bc
    adc $e3
    ld l, [hl]
    adc $5f
    db $ec
    ld [hl], a
    nop
    ld a, a
    cp $e0
    ld c, c
    pop hl
    rst $30
    ld [$f30f], sp
    inc c
    ld sp, hl
    ld b, $2f
    jp hl


    or h
    db $e3
    ld h, [hl]
    push hl
    ld e, [hl]
    db $e3
    rst $38
    cp h
    jp $9ce3


    sbc a
    ldh [$f0], a
    adc a
    rst $38
    adc a
    ldh a, [$f0]
    adc a
    rst $18
    and b
    add b
    rst $38
    rst $38
    adc $31
    add hl, sp
    add $c7
    jr c, jr_003_41be

    add a
    rst $38
    adc a
    ld [hl], b
    ldh a, [rIF]
    rra
    ldh [rP1], a
    rst $38
    rst $38
    call z, Call_000_3b33
    call nz, Call_000_39c6
    ld a, c
    add [hl]
    sbc $f0
    push hl
    dec e
    db $e3
    rst $20
    add hl, de
    add d
    pop hl
    rrca
    pop af
    rst $28
    ld sp, hl
    rlca
    rlca
    ld sp, hl
    ld c, d
    pop hl
    ret


    rst $30
    jp z, $f57f

    set 6, h
    ret


    or $cb
    db $f4
    cp $e1
    cp $c0
    pop bc
    ld a, a
    rst $38
    rra
    rst $38
    ld c, a
    cp a
    ld c, a
    rst $38
    cp a
    dec hl
    rst $18
    ld l, e
    rst $18
    rst $18
    jr nz, @-$2f

    rst $38
    jr nc, jr_003_41f5

    sbc b
    ld h, a
    sbc b
    inc hl
    call c, $ff23
    call c, $fe01
    ld bc, $f8fe
    rlca
    db $fc
    rst $38

jr_003_419e:
    inc bc
    sbc h
    ld h, e
    call z, Call_003_6633
    sbc c
    ld h, [hl]
    rra
    sbc c
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    ld a, [$62c5]
    db $eb
    sub a
    jp nz, $83fe

    jp $9b80


    db $e4
    or $89
    call $ffb2
    cp e

jr_003_41be:
    call nz, $99e6
    sbc c
    and $f7
    adc b
    rst $38
    rst $38
    nop
    rst $08
    jr nc, jr_003_423b

    adc a
    adc a
    ld [hl], b
    rst $38
    db $76
    adc c
    sbc c
    ld h, [hl]
    and $19
    jr c, jr_003_419e

    rst $38
    rst $38
    nop
    jp $fc3c


    inc bc
    inc bc

jr_003_41df:
    db $fc
    rst $38
    db $fc
    inc bc
    daa
    ret c

    call c, Call_000_3323
    call z, $ffff
    ld bc, $619f
    ld [hl], c
    adc a
    adc a
    ld [hl], c
    rst $38
    ld a, c
    add a

jr_003_41f5:
    rst $00
    add hl, sp
    dec a

jr_003_41f8:
    jp $1de3


    cp $6a
    pop hl
    call $cdf2
    or $c9
    or $cd
    db $fd
    ld a, [c]
    ld e, [hl]
    pop hl

jr_003_4209:
    ld l, e
    rst $18
    dec hl
    rst $18
    ld c, e
    cp a
    sbc $fe
    db $e3
    dec bc
    rst $38
    ld c, e
    cp a
    jr nz, jr_003_41df

    ld bc, $f7ff
    inc bc
    rst $38
    rlca
    db $10
    jp nz, $ff10

    ld h, b
    rst $38

jr_003_4224:
    dec e
    ret nz

    ld c, b
    ret nz

    adc b
    rst $38
    jr jr_003_41f8

    add $c4
    rst $00
    push af
    xor c
    rst $18
    rst $38
    nop
    rrca
    rst $38
    sbc [hl]
    cp $e0
    cp [hl]
    rst $38

jr_003_423b:
    rst $30
    inc a
    rst $38
    ld a, l
    cp $e0
    rst $38
    rst $38
    jr nc, @+$01

    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    db $fd
    rst $28
    or l
    and d
    inc c
    di
    ei
    inc b
    call z, $fb33
    scf
    ret z

    or d
    pop bc
    pop hl
    ld e, $00
    rst $38
    rst $00
    ld a, a
    jr c, jr_003_4224

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_003_4209

    pop bc
    rst $38
    di
    inc c
    nop
    rst $38
    ld a, $c1
    pop bc
    ld a, $ff
    ld a, a
    add b
    add b
    ld a, a
    ld a, a
    add b
    ret nz

    ccf
    rst $38
    ccf
    ret nz

    nop
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rst $38
    rra
    ldh [$f0], a
    rrca
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $38
    rst $18
    jr nz, jr_003_4294

jr_003_4294:
    rst $38
    cp d
    ld a, l
    ld b, l
    add $ff
    rst $00
    ld b, h
    ld b, h
    rst $00
    rst $00
    ld b, h
    call nz, $ff47
    ld b, a
    call nz, $c744
    rst $20
    jr jr_003_42e2

    rst $00
    rst $38
    adc a
    ld [hl], b
    ld e, b
    cp a
    xor a
    ld h, h
    rst $20
    daa
    rst $38
    inc h
    db $e4
    inc h
    db $e4
    inc c
    di
    ld sp, hl
    rlca
    rst $38
    swap [hl]
    ld [hl], $cc
    db $f4
    inc c
    sbc h
    db $e4
    rst $28
    db $f4
    ld a, h
    jr jr_003_42d7

    and b
    ldh [$c0], a
    ld [hl], b
    ld c, a
    rst $38
    ld c, a
    ld [hl], b
    ld a, b
    ld b, a
    ld [hl], a
    ld a, b

jr_003_42d7:
    ld c, e
    ld c, h
    ei
    ld c, b
    rrca
    ret nc

    db $e3
    ld a, b
    add a
    add a
    ld a, b

jr_003_42e2:
    ld hl, sp-$09
    rlca
    rlca
    ld hl, sp+$6a
    and c
    inc a
    jp Jump_000_38c7


    rst $38
    ld sp, hl
    ld b, $0e
    pop af
    or $09
    add hl, de
    and $fd
    rst $20
    rra
    ldh [$dc], a
    inc hl
    ld h, a
    sbc b
    cp b
    ld b, a
    rst $38
    rst $08
    jr nc, @-$08

    add hl, bc
    add hl, sp
    add $cf
    jr nc, jr_003_4385

    rst $38
    nop
    ld h, d
    pop hl
    ld sp, $fece
    ld bc, $c1ac
    rst $38
    adc a
    ld [hl], b
    rst $38
    nop
    sbc d
    ld h, l
    db $76
    adc c
    rst $28
    call Call_000_3b32
    call nz, $e1d0
    rst $30
    ld [$fdc7], sp
    ld b, h
    db $76
    pop hl
    rst $00
    ld b, e
    ld b, b
    ret nz

    ret nz

    ld b, b
    rst $38
    ret nz

    ld b, b
    ccf
    rst $38
    db $e4
    inc h
    and h
    ld h, h
    rst $38
    inc h
    db $e4
    call nz, Call_000_24e4
    inc h
    inc [hl]
    inc h
    rst $38
    inc [hl]
    inc [hl]
    set 7, a
    inc c
    inc b
    inc b
    inc b
    rst $30
    ld h, h
    ld b, h
    ld h, h
    rst $38
    db $e4
    sbc e
    rst $38
    rra
    ld [$34ff], sp
    dec sp
    scf
    jr jr_003_436c

    rra
    dec de
    inc c
    cp a
    ld c, [hl]
    ld b, l
    ld h, l
    ld b, [hl]
    cp c
    cp $50
    jp $ff9b


    ld h, h
    ld l, h

jr_003_436c:
    sub e
    rst $00
    jr c, @-$06

    rlca
    rrca
    ld a, a
    ldh a, [rIE]
    nop
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    ld e, [hl]
    pop hl
    rst $38
    rst $00
    jr c, @+$3e

    jp $1ce3


    ld e, $e1

jr_003_4385:
    rst $38
    di
    inc c
    rrca
    ldh a, [$d8]
    ccf
    xor a
    ld h, h
    ei
    ld h, a
    and a
    xor e
    ldh [$e4], a
    ld [hl-], a
    call Call_000_02fd
    ei
    inc bc
    db $fc
    ld [hl], d
    ldh [rIE], a
    cp h
    call nz, Call_003_7cf4
    rst $38
    dec de
    rrca
    ld a, c
    add [hl]
    add $39
    ld e, a
    ldh [rIE], a
    and b
    cp a
    or a
    cp b
    ld [$0d0f], sp
    dec bc
    rst $38
    or e
    cp [hl]
    call z, Call_000_3a33
    push bc
    call nz, Call_003_7f3b
    ld a, c
    add [hl]

jr_003_43c0:
    ld [hl], e
    rst $38
    ret c

    adc h
    adc h
    add h
    ldh [$ef], a
    dec sp
    call nz, $837c
    and [hl]
    pop hl
    ld h, [hl]
    rst $38
    pop af
    rst $38
    sbc c
    sbc c
    ld [$0808], sp
    jr jr_003_43c0

    or d
    rst $38
    ld c, l
    cpl
    ret nc

    ld l, b
    sub a
    jp c, $eee5

    rst $38
    ccf
    inc sp
    ld de, $1111
    ld a, [de]
    push hl
    ld h, e
    rst $38
    sbc a
    call nz, $943c
    ld l, h
    inc d
    db $ec

jr_003_43f4:
    db $ec
    rst $38
    inc d
    cp b
    ld a, h
    ld h, [hl]
    call nz, $cb34
    call c, $e3ff
    ld h, e
    inc a
    ld [hl], $19
    dec de
    rrca
    ld [$0cff], sp
    ld c, h
    ld b, h
    ld c, a
    ld b, a
    ld a, c
    add [hl]
    ld b, [hl]
    ld l, l
    cp c
    and b
    push hl
    add hl, bc
    rrca
    and b
    pop hl
    dec sp
    call nz, $81f0
    rst $38
    ld [hl], a
    ld hl, sp-$28
    adc a
    adc [hl]
    dec b
    dec b
    rlca
    rst $38
    db $ed
    ld e, $1a
    di
    di
    ld [hl+], a
    ld h, d
    and e
    rst $38
    and e
    ld h, d
    and e
    ld h, d
    ld [c], a
    jp $0382


    rst $38
    ld e, $e1
    pop hl
    ld e, $9f
    ld h, b
    ld h, b
    sbc a
    ld a, a
    rst $18
    jr nz, jr_003_43f4

    ld c, a
    ld a, a
    add b
    nop
    ldh a, [$c2]
    ei
    ld h, h
    and h
    ld b, [hl]
    pop hl
    db $f4
    inc h
    inc d
    db $f4
    set 7, a
    ccf
    rrca
    inc b
    ld b, $05
    ld h, l
    ld b, [hl]
    ld h, [hl]
    rst $38
    ld h, l
    ld h, a
    ld h, h
    ld h, h
    ld h, a
    ld h, a
    ld h, h
    sbc c
    rst $38
    cp $b6
    xor h
    xor h
    cp b
    cp b
    sbc b
    sub h
    rst $38
    sbc b
    call c, Call_003_4e8c
    call z, $cf4b
    or [hl]
    rst $38
    ld a, c
    ld c, h
    ld b, h
    jr jr_003_448a

    ld [hl], h
    inc a
    ld h, h
    rst $38
    ld a, h
    inc [hl]
    inc e
    inc e
    inc c
    adc h
    inc c
    di

jr_003_448a:
    rst $38
    rst $38
    ld [hl], b
    jr c, @-$25

    ld l, b
    adc c
    ld sp, hl
    cp c
    rst $38
    ret


    ret


    cp c
    ret


    cp c
    sbc c
    jp hl


    ld [hl], $ff
    rst $08
    pop hl
    ld [hl], c
    sbc c
    pop af
    add hl, bc
    ld hl, sp-$04
    rst $38
    ld [$4cb4], sp
    ld b, $fc
    inc bc
    cp $0d
    rst $38
    di
    ld b, [hl]
    add $4e
    add $ca
    adc [hl]
    ld c, $ff
    ld a, [bc]
    ld a, [de]
    ld c, $36
    ld a, [de]
    ld h, d
    ld a, $d1
    rst $38
    rst $28
    dec de
    inc c
    ld [hl], $19
    ld h, c
    ld a, $4e
    rst $38
    ld [hl], c
    ld b, e
    ld a, h
    ld d, b
    ld l, a
    ld h, c
    ld e, [hl]
    or b
    rst $28
    rst $08
    ld c, a
    ld b, [hl]
    ld a, [de]
    or b

jr_003_44d8:
    ldh [$66], a
    ld a, h
    inc sp
    rst $38
    ld e, $1d
    dec bc
    adc [hl]
    add hl, bc
    ldh a, [rIE]
    inc bc
    rst $38
    ld [bc], a
    inc hl
    ld [bc], a
    ld [hl-], a
    inc hl
    inc sp
    ld [de], a
    inc bc
    rst $38
    ld [bc], a
    add e
    ld [bc], a
    ld [c], a
    db $e3
    db $dd
    ld a, $ff
    rst $38
    nop
    rst $00
    jr c, jr_003_4534

    rst $00
    cp e
    ld a, h
    ld l, h
    sbc [hl]
    xor [hl]
    and b
    ld l, [hl]
    push bc
    cp c
    ld a, [hl]
    adc h
    pop bc
    ld a, [hl]
    pop bc
    rst $08
    rst $30
    jr nc, jr_003_4541

    call Call_003_614e
    rlca
    rst $38
    ld hl, sp+$08
    ei
    ld [$fcf8], sp
    db $e3
    xor b
    ld e, b
    ld [$ccf8], sp
    rst $38
    di
    ld [hl], d
    dec a
    jr jr_003_4535

    dec c
    ld b, $c7
    ei
    add e
    jp nz, $e1ff

    add d
    ld l, [hl]
    sub c
    ld e, b
    and a
    rst $38

jr_003_4534:
    inc [hl]

jr_003_4535:
    sra l
    jp nc, $feb1

    ld a, b
    ld c, a
    db $fd
    ld c, [hl]
    ldh a, [$c0]
    ld h, b

jr_003_4541:
    sbc a
    pop hl
    ld e, $8b
    ld [hl], h
    rst $28
    sbc d
    ld h, l
    jr c, @+$01

    xor [hl]
    ldh [$83], a
    add e
    ld [bc], a
    rst $38
    rst $20
    jr jr_003_44d8

    ld a, e
    rst $30
    ld [$f936], sp
    rst $38
    ld l, c
    rst $08
    res 1, [hl]
    adc [hl]
    inc c
    inc [hl]
    jr @+$01

    daa
    ret c

    rst $28
    db $10
    sbc [hl]
    ld h, c
    ret nc

    rst $28
    rst $38
    and a
    jr c, jr_003_459d

    ld sp, $3f20
    call $ff73
    ld c, $f1
    add a
    ld a, b
    ld de, $4cee
    cp a
    rst $38
    ld a, $f3
    ld h, e
    pop bc
    pop bc
    add c
    add c
    ld bc, $6cff
    sub e
    ld [hl], d
    adc l
    inc e
    db $e3
    jr nz, @-$1f

    rst $38
    sbc c
    ld h, [hl]
    ld [hl], c
    cp $9e
    adc a
    add e
    add c
    rst $38
    ld l, a
    sub b
    ld l, c
    rst $30

jr_003_459d:
    cp e
    sbc [hl]
    adc [hl]
    add h
    rst $38
    call nz, Call_003_7084
    ldh [rNR24], a
    ldh a, [$09]
    ld sp, hl
    rst $38
    ld l, [hl]
    pop af
    db $d3
    sbc h
    inc e
    inc de
    ld [hl], $19
    rst $38
    ld l, e
    inc [hl]
    call z, $b773
    ret z

    nop
    rst $38
    cp a
    ld a, a
    add b
    adc h
    ld [hl], e
    di
    inc c
    adc d
    pop bc
    ld a, a
    rst $20
    add b
    sbc h
    ld h, e
    sbc d
    ld b, c
    ret nc

    adc c
    ld sp, $f8ce
    rst $38
    ld [$c838], sp
    ret z

    jr c, @+$6a

    sbc b
    sbc b
    rst $38
    ld [hl], b
    pop af
    db $10
    ld de, $eef1
    rra
    ld b, $ff
    ld [bc], a
    inc e
    ld c, $72
    ld a, $d2
    xor $82
    rst $38
    cp $f2
    adc [hl]
    ld [bc], a
    cp $f1
    rrca
    dec sp
    rst $38
    ld e, $66
    inc a
    ld b, h
    ld a, h
    db $76
    ld c, h
    ld d, d
    rst $38
    ld l, [hl]
    ld b, e
    ld a, [hl]
    ld h, c
    ld e, a
    add b
    rst $38
    ld h, $ff
    ld [hl+], a
    dec c
    ld b, $39
    rra
    ld [hl-], a
    dec a
    dec de
    rst $38
    dec c
    dec c
    rlca
    push bc
    add a
    ld a, d
    db $fd
    ld a, c
    rst $38
    jr c, jr_003_4638

    ld [$0c8e], sp
    adc d
    adc [hl]
    sbc [hl]
    rst $38
    inc c
    inc [hl]
    inc e
    ld l, l
    inc [hl]
    di
    rst $08
    db $d3
    rst $38
    xor $62
    ld a, $2a
    ld [hl], $2a
    ld [hl], $61
    rst $38
    ccf
    ret nz

    ld a, a

jr_003_4638:
    sbc b
    rst $20
    jr nc, @-$2f

    ld sp, $11ff
    ld sp, $3131
    ld de, $0101
    add b
    rst $38
    nop
    ldh [$c0], a
    cp h
    ld a, b
    ld h, a
    sbc a
    add c
    ld a, a
    add b
    add b
    add b
    adc h
    adc b
    inc c
    adc h
    rst $38
    db $e3
    rst $38
    ld [hl], e
    rst $38
    sbc c
    jp hl


    sbc c
    jp hl


    ret


    cp c
    res 1, c
    ld sp, hl
    db $fc
    db $e3
    ld b, $bf
    jr nz, jr_003_467b

    adc c
    ld l, [hl]
    sub c
    ld a, e
    rst $38
    nop
    db $10
    adc c
    ldh [$1f], a
    rst $28
    db $10
    and b
    adc c
    rst $38
    nop

jr_003_467b:
    rst $38
    ld [hl], $cf
    ret


    add hl, sp
    ld sp, hl
    add hl, bc
    cp a
    sbc c
    ld l, c
    ld l, c
    sbc c
    ret


    add hl, sp
    db $76
    pop bc
    ld h, e
    rst $38
    sbc h
    sbc b
    ld h, a
    ld [hl], c
    adc [hl]
    adc h
    ld [hl], e
    ld a, b
    rst $38
    add a
    adc [hl]
    rst $38
    db $d3
    ld [hl], c
    ld h, c
    ld sp, $ffd0
    cpl
    add hl, sp
    add $c3
    inc a
    di
    inc c
    inc bc
    rst $38
    rst $38
    inc [hl]
    call z, $fc38
    ld h, a
    rst $00
    ld b, [hl]
    rst $38
    cp c
    ret nz

    ccf
    ld h, b
    rst $38
    sub b
    sbc a
    sbc e
    db $fd
    sbc a
    add a
    add b
    inc b
    sbc e
    sbc a
    ld a, a
    add b
    ld [hl], b
    rst $38
    adc a
    ld l, a
    ldh a, [$91]
    sbc [hl]
    sbc d
    sbc l
    ld b, $de
    ld d, d
    and b
    sbc e
    sbc [hl]
    xor $11
    ld b, b
    add c
    call z, $ff33
    jr nc, @+$01

    ld sp, hl
    rst $08
    adc [hl]
    ld b, $04
    ld b, $ff

jr_003_46e1:
    ld h, d
    sbc l
    ld b, e
    cp h
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$7f
    inc e
    db $e3

jr_003_46ec:
    rst $10
    add sp, $78
    ccf
    inc c
    ld a, [hl]
    add b
    rst $38
    sbc [hl]
    ld h, c
    ld d, e
    xor a
    adc h
    ld [hl], h
    ld e, h
    cp h
    rst $38
    ldh [rNR41], a
    jr nz, jr_003_46e1

    inc e
    db $fc
    swap h
    rst $38
    inc e
    db $e3
    rla
    add sp, -$47
    add $cd
    di
    rst $38
    scf
    ld l, $2c
    jr c, jr_003_46ec

    ldh a, [$b3]
    ld c, h
    cp $e0
    ld h, e
    adc a
    ldh a, [$d6]
    ld l, c
    ld a, c
    ld h, $20
    rst $00
    ccf
    sbc a
    ld h, b
    ldh [rBCPD], a
    ld a, [de]
    ld hl, $83e0
    adc a
    ld [hl], b
    cp $a0
    ld h, c
    db $fc
    inc bc
    add sp, $18
    add hl, sp
    pop de
    pop de
    rst $38
    ld sp, $9070
    sub b
    ld [hl], b
    ldh a, [rNR10]
    rla
    rst $38
    di
    db $ed
    ld e, $31
    ld de, $1119
    add hl, de
    rst $38
    jr jr_003_4788

    jr jr_003_47b2

    inc a
    sub $ec
    ld a, e
    rst $38
    add [hl]
    pop bc
    ccf
    push bc
    ld b, [hl]
    call $c846
    rst $38
    adc a
    ld [$1e0f], sp
    add hl, bc
    inc [hl]
    dec de
    ld h, e
    rst $38
    inc a
    sbc $e1
    sbc a
    sub b
    sub l
    sbc d
    sbc e
    rst $38
    adc h
    adc d
    adc l
    call Call_003_4786
    call nz, $ffc4
    ld b, a
    dec sp
    db $fc
    sub d
    sbc [hl]
    sub [hl]
    sbc h
    sbc h
    rst $38
    adc h
    adc b
    adc h
    adc $84
    ld b, a

Call_003_4786:
    add $c5

jr_003_4788:
    cp a
    ld b, a
    cp d
    ld a, l
    ld h, [hl]
    ld [bc], a
    ld h, d
    rst $38
    ldh [$66], a
    rst $38
    ld b, d
    inc b
    ld b, $1a
    ld c, $b6
    ld a, [hl-]
    push bc
    rst $38
    ei
    rlca
    ld [bc], a
    ld [bc], a
    inc bc
    inc sp
    ld [hl+], a
    ld [hl-], a
    db $fd
    inc sp
    cp $e1
    inc sp
    ld [hl-], a
    call $9cfe
    ld h, h
    rst $38
    sub h
    ld l, h
    inc a

jr_003_47b2:
    call nz, $dc24
    ld a, [hl]
    add h
    rst $38
    ld a, [c]
    ld c, $fe
    ld [bc], a
    pop bc
    ccf
    db $d3
    or b
    rst $38
    or e
    db $e3
    db $e3
    ld h, e
    ld b, e
    ld h, d
    ld [hl], b
    jr nz, @+$01

    jr c, jr_003_47fc

    dec l
    add hl, sp
    sub $ef
    ccf
    db $10
    rst $38
    dec e
    ld [de], a
    inc de
    inc e
    ld a, $11
    ld hl, $f73e
    rst $18
    ld h, b
    add b
    jp nz, $ffa0

    nop
    add $39
    rst $28
    cp a
    ld b, b
    ld h, b
    sbc a
    jr c, @-$1b

    cp d
    ld b, l
    sub e
    rst $38
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    pop de
    rst $30
    ld l, $26
    reti


jr_003_47fc:
    sub b
    ld b, c
    sbc b
    ld h, a
    ld a, a
    add b
    rst $38
    call nz, Call_000_3f3b
    ret nz

    jp Jump_003_7d3c


    add d
    xor a
    add [hl]
    ld a, c
    nop
    rst $38
    jp nc, Jump_000_3841

    adc d
    ld b, b
    inc a
    rst $38
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    nop
    rst $38
    pop hl
    rst $38
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, jr_003_4894

    rst $38
    rst $38
    sbc [hl]
    sub e
    sub e
    add c
    add c
    add c
    sub c
    rst $38
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    ld a, $c1
    xor $ff
    rra
    sbc e
    ld [hl], c
    ld sp, $60e0
    ret nz

    ld d, l
    rst $38
    xor d
    ld d, d
    xor l
    ld l, b
    sub a
    dec c

jr_003_484a:
    cp $9a
    cp a
    ld [hl], e

jr_003_484e:
    ld [hl-], a
    db $e3
    ld [c], a
    jp $b8cc


    nop
    adc $ff
    ld sp, $e718
    ldh a, [rIF]
    call c, Call_000_363f
    db $fd
    db $e3
    ld c, $a1
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    ld e, b
    cp a
    rst $18
    rst $20
    inc h
    and $e7
    ld bc, $e0ff
    and $e7
    ld a, [$e5b0]
    jr nz, jr_003_484e

    nop
    jr nc, jr_003_484a

    nop
    rst $38
    add c
    rst $38
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $3e
    pop bc
    db $e3
    rst $38
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38
    ld d, l
    rst $38
    xor d
    ld d, [hl]
    xor c

jr_003_4894:
    jp hl


    ld d, $6f
    sub b
    or b
    rst $18
    ld c, a
    rst $18
    jr nz, @+$63

    sbc [hl]
    ld b, h
    ld bc, $6699
    rst $28
    db $76
    adc c
    rst $08
    jr nc, jr_003_4915

    pop hl
    inc e
    db $e3
    di
    rst $38
    inc c
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $ff
    add hl, de
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    rst $30
    ld b, a
    rst $38
    nop
    ldh [$89], a
    db $e3
    inc e
    adc [hl]
    add a
    rst $38
    sbc e
    adc l
    sub a
    sbc c
    sub c
    sbc a
    sbc [hl]
    sub c
    rst $38
    sub d
    sbc l
    sbc a
    sub b
    ld h, b
    rst $38
    ret


    adc b
    rst $38
    add e
    ld bc, $070e
    adc h
    rrca
    add [hl]
    add e
    rst $38
    jp Jump_003_7181


    pop hl
    ld e, $ff
    sbc l
    adc a
    rst $38
    ld b, a
    add d
    ld h, d
    jp nz, $e223

    rst $20
    ld b, e
    rst $38
    call Call_003_5847
    rst $08
    cp a
    ld [hl], b
    sub e
    ld de, $06ff
    inc bc
    inc e
    rrca
    dec de
    inc e
    inc c
    rlca
    rst $38
    add a
    ld [bc], a
    ld [c], a

jr_003_490c:
    jp Jump_003_7ebd


    rst $20
    inc h
    rst $38
    push hl
    ld h, $26

jr_003_4915:
    db $e3
    ld [c], a
    inc hl
    inc sp
    pop hl
    cp a
    pop de
    ld sp, $9171
    xor [hl]
    ld e, a
    and b
    db $e3
    inc e
    ld a, a
    rst $38
    rst $30
    ld [hl+], a
    ld h, e
    and d
    or [hl]
    ld h, e
    or b
    ld h, c
    or [hl]
    ret nz

    ld l, c
    ret nz

    ccf
    ldh [rSB], a
    ld bc, $c2fe
    inc hl
    and a
    rst $38
    ld e, b
    add hl, sp
    add $ff
    nop
    inc sp
    call z, $dfdc
    inc hl
    ld h, e
    sbc h
    cp [hl]
    ld b, c
    cp d
    ld b, c
    sbc a
    ld h, b
    nop
    nop
    nop
    ld b, l
    ld bc, $f0ff
    nop
    rst $38
    add sp, -$20
    rst $38
    ldh [$fb], a
    ld c, $ff
    ldh a, [$de]
    ret nz

    jp hl


    jr @+$1a

    ld b, $07
    rst $38
    ld [$1808], a
    db $fd
    jr jr_003_490c

    jp hl


    ld [hl+], a
    ld [hl+], a
    db $10
    ld de, $2726
    rst $38
    jr z, jr_003_499f

    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr z, jr_003_49a5

    cp a
    ld de, $122e
    inc de
    ld [hl+], a
    ld [hl+], a
    add b
    jp hl


    ld [bc], a
    rst $38
    ld [bc], a
    ld a, [de]
    dec de
    cpl
    jr nc, jr_003_49be

    ld [hl-], a
    inc sp
    rst $38
    inc [hl]
    dec [hl]
    ld [hl], $31
    ld [hl-], a
    scf
    jr c, jr_003_49b4

    rst $30
    dec e
    ld [bc], a
    ld [bc], a
    ld h, b
    jp hl


    dec b

jr_003_499f:
    dec b
    db $10
    ld de, $39ff
    ld a, [hl-]

jr_003_49a5:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    rst $38
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld [de], a
    inc de
    dec b
    dec b

jr_003_49b4:
    cp $40
    jp hl


    rrca

jr_003_49b8:
    rrca
    ld a, [de]
    dec de
    ld b, l
    ld b, [hl]
    ld b, a

jr_003_49be:
    rst $38
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld b, a
    ld c, l
    ld c, [hl]
    rst $18
    ld c, a
    inc e
    dec e
    rrca
    rrca
    jr nz, jr_003_49b8

    add hl, de
    add hl, de
    rst $38
    db $10
    ld de, $5150
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    rst $38
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld [de], a
    inc de
    ei
    add hl, de
    add hl, de
    nop
    jp hl


    inc hl
    inc hl
    ld a, [de]
    dec de
    ld e, h
    rst $38
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld a, a
    ld h, l
    ld h, [hl]
    ld h, a
    inc e
    dec e
    inc hl
    inc hl
    ldh [$c9], a
    rst $38
    nop
    nop
    db $10
    ld de, $6968
    ld l, d
    ld l, e
    rst $38
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ei
    ld [de], a
    inc de
    ld [c], a
    db $eb
    inc bc
    inc b
    ld a, [de]
    dec de
    ld [hl], h
    rst $38
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, a
    ld a, l
    ld a, [hl]
    ld a, a
    inc e
    dec e
    inc bc
    inc b
    and b
    ret


    rst $38
    inc c
    dec c
    db $10
    ld de, $8180
    add d
    add e
    rst $38
    add h
    add l
    add [hl]
    add a
    add d
    adc b
    adc c
    adc d
    rst $28
    ld [de], a
    inc de
    inc c
    dec c
    add b
    ret


    ld d, $17
    ld a, [de]

jr_003_4a4b:
    rst $38
    dec de
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    rst $38
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    inc e
    dec e
    ld d, $bd
    rla
    ld h, b
    ret


    jr nz, jr_003_4a84

    add hl, bc
    ld a, [bc]
    rst $38
    ld [$db0b], a
    jr nz, jr_003_4a8c

    ld b, b
    ret


    inc h
    dec h
    cp $e4
    inc d
    dec d
    ld a, [de]
    or $e5
    dec h
    jr nz, jr_003_4a4b

    ld e, $1f
    nop
    jp nc, $ffff

    rst $38
    rst $38
    nop
    rst $38
    rst $38

jr_003_4a84:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_003_4a8c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    adc l
    dec c
    rst $38
    ldh a, [rBCPS]
    ld [$e7ff], sp
    ldh [rIE], a
    sbc $ef
    ld c, b
    ld b, h
    ret nz

    rst $38
    ldh [$e8], a
    adc e
    rst $38
    db $ec
    ldh [rIE], a
    ld h, b
    db $eb
    dec bc
    rst $38
    db $ec
    ret nz

    ldh [rIE], a
    ld h, b
    db $eb
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f5], a
    ld a, [bc]
    ld a, [bc]
    ld b, $40
    db $ed
    ld a, [bc]
    ld a, [bc]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e5], a
    cp $e4
    db $10
    rst $00
    pop hl
    di
    db $e4
    ldh [rIE], a
    rst $38
    db $eb
    ld c, b
    rst $38
    db $ec
    pop hl
    db $ec
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
    add d
    nop
    nop
    nop
    ret nz

    add hl, de
    ld e, a
    ld h, a
    cp $3d
    rrca
    nop
    ld h, b
    ld bc, $7fff
    rst $28
    dec a
    nop
    nop
    ld hl, sp+$03
    ld b, h
    inc bc
    nop
    ld [bc], a
    ld b, b
    ld bc, $7f56
    rra
    ld [de], a
    sub $00
    nop
    nop
    rst $38
    inc bc
    rra
    ld [de], a
    sub $00
    nop
    nop
    sbc $7b
    adc [hl]
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, l
    sbc $7b
    jr jr_003_4b9c

    ld d, d
    ld c, d
    adc h
    ld sp, $7bde
    jr @+$65

    ld d, d
    ld c, d
    adc h
    db $31

Call_003_4b45:
    push af
    push bc
    push hl
    sub $20
    push af
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $50f0
    add hl, bc
    push de
    ld c, $10

jr_003_4b59:
    ld a, [hl+]
    call Call_003_4b9d
    ld a, $08
    add e
    ld e, a
    jr nc, jr_003_4b64

    inc d

jr_003_4b64:
    dec c
    jr nz, jr_003_4b59

    pop de
    pop af
    call Call_003_4b93
    ld a, e
    and $07
    add c
    ld b, a
    bit 3, a
    jr z, jr_003_4b7c

    ld a, $80
    add e
    ld e, a
    jr nc, jr_003_4b7c

    inc d

jr_003_4b7c:
    ld a, b
    and $07
    ld b, a
    ld a, e
    and $f8
    or b
    ld e, a
    pop hl
    pop bc
    pop af
    ret


    push af
    push hl
    sub $20
    call Call_003_4b93
    pop hl
    pop af
    ret


Call_003_4b93:
    ld hl, $5750
    add l
    ld l, a
    jr nc, jr_003_4b9b

    inc h

jr_003_4b9b:
    ld c, [hl]

jr_003_4b9c:
    ret


Call_003_4b9d:
    push af
    push bc
    push de
    push hl
    ld b, a
    ld a, e
    and $07
    ld c, a
    push de
    ld de, $ffff
    push bc
    or a
    ld a, b
    jr z, jr_003_4bba

jr_003_4baf:
    sra a
    res 7, a
    sra e
    res 7, e
    dec c
    jr nz, jr_003_4baf

jr_003_4bba:
    pop bc
    ld h, a
    ld a, $08
    sub c
    ld c, a
    or a
    ld a, b
    jr z, jr_003_4bcb

jr_003_4bc4:
    sla a
    sla d
    dec c
    jr nz, jr_003_4bc4

jr_003_4bcb:
    ld c, a
    ld b, h
    ld h, d
    ld l, e
    pop de
    push hl
    sra d
    rr e
    sra d
    rr e
    sra d
    rr e
    ld hl, $d000
    add hl, de
    pop de
    ld a, [hl]
    and d
    or b
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld a, [hl]
    and e
    or c
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_003_4bfe:
    push af
    push bc
    push de
    push hl
    ld de, $d000
    ld b, $80

jr_003_4c07:
    ld hl, $50f0
    ld c, $01
    call Call_000_03eb
    dec b
    jr nz, jr_003_4c07

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_003_4c17:
    push af
    push bc
    push de
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d821]
    rst $18

    db $78, $05

    inc hl
    inc hl
    inc hl
    ld a, [hl+]
    dec a
    dec a
    ld b, [hl]
    dec b
    dec b
    sra b
    inc b
    ld l, b
    ld h, $00
    call Call_000_08b9
    ld b, l
    ld de, $d000
    ld a, [$c36e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a

jr_003_4c50:
    ld hl, $50f0
    ld c, $01
    call Call_000_03eb
    dec b
    jr nz, jr_003_4c50

    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    rst $20

    db $00, $03

    call Call_000_2e3b
    ld hl, $8c00
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d84d]
    bit 3, a
    jr z, jr_003_4c80

    ld hl, $ac00

jr_003_4c80:
    push hl
    ld de, $ff00
    add hl, de
    push hl
    add hl, de
    push hl
    add hl, de
    push hl
    add hl, de
    ld d, h
    ld e, l
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $10
    call Call_000_0468
    call Call_000_0684
    call Call_000_2e3b
    ld hl, $d100
    pop de
    ld c, $10
    call Call_000_0468
    call Call_000_0684
    call Call_000_2e3b
    ld hl, $d200
    pop de
    ld c, $10
    call Call_000_0468
    call Call_000_0684
    call Call_000_2e3b
    ld hl, $d300
    pop de
    ld c, $10
    call Call_000_0468
    call Call_000_0684
    call Call_000_2e3b
    ld c, $10
    rst $30

    db $60, $03

    jr z, jr_003_4cd7

    ld c, $07

jr_003_4cd7:
    ld hl, $d400
    pop de
    call Call_000_0468
    call Call_000_0684
    call Call_000_2e3b
    rst $28

    db $00, $03

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push hl
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d821]
    rst $18
    ld a, b
    dec b
    inc hl
    inc hl
    inc hl
    ld b, [hl]
    dec b
    dec b
    ld c, b
    pop hl
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    call Call_003_4bfe
    ld de, $0000

jr_003_4d19:
    ld a, [hl+]
    cp $02
    jr z, jr_003_4d37

    cp $03
    jr z, jr_003_4d37

    cp $01
    jr nz, jr_003_4d32

    ld e, $00
    ld d, c
    sra d
    rr e
    ld a, c
    add b
    ld c, a
    jr jr_003_4d19

jr_003_4d32:
    call Call_003_4b45
    jr jr_003_4d19

jr_003_4d37:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $0000
    ld a, [$d821]
    or a
    jr z, jr_003_4d61

    ld a, [$c36e]
    ld d, a
    ld e, $00
    sra d
    rr e

jr_003_4d61:
    ld hl, $c36a
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$d821]
    rst $18

    db $78, $05

    inc hl
    inc hl
    inc hl
    ld a, [hl]
    dec a
    dec a
    ld d, a
    ld e, a
    ld a, [$d821]
    or a
    jr z, jr_003_4d80

    ld a, [$c36e]
    add e
    ld e, a

jr_003_4d80:
    ld hl, $c36c
    ld [hl], d
    inc hl
    ld [hl], e
    call Call_003_4c17
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c36c
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, $c36a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $d869
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    cp $02
    jr z, jr_003_4dd8

    cp $03
    jr z, jr_003_4dd8

    cp $01
    jr nz, jr_003_4dcd

    ld e, $00
    ld d, c
    sra d
    rr e
    ld a, c
    add b
    ld [$c36d], a
    jr jr_003_4dd8

jr_003_4dcd:
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    call Call_003_4b45

jr_003_4dd8:
    ld hl, $c36a
    ld a, e
    ld [hl+], a
    ld [hl], d
    sla e
    rl d
    ld a, d
    ld [$c36e], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$d821]
    ld b, a
    ld a, [$d820]
    cp b
    jr nz, jr_003_4e15

    ld b, a
    ld a, [$d824]
    cp b
    jr z, jr_003_4e0a

    pop hl
    pop de
    pop bc
    pop af
    ret


jr_003_4e0a:
    ld a, [$c82d]
    bit 7, a
    jr nz, jr_003_4e15

    and $7f
    jr nz, jr_003_4e1a

jr_003_4e15:
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_003_4e1a:
    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c96d]
    or a
    jr z, jr_003_4e2d

    ld b, $5f
    jr jr_003_4e2f

jr_003_4e2d:
    ld b, $7f

jr_003_4e2f:
    ld a, [$c36e]
    cp b
    jr nc, jr_003_4e60

    ld hl, $c36a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rl l
    ld l, h
    rl l
    ld h, $00
    rl h
    ld a, h
    or l
    jr z, jr_003_4e49

    dec hl

jr_003_4e49:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld d, h
    ld e, l
    ld bc, $d000
    add hl, bc
    push hl
    ld hl, $8800
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld c, $02
    call Call_000_0468

jr_003_4e60:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    push hl
    ld hl, $c36c
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld hl, $c36a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, [hl+]
    cp $02
    jr z, jr_003_4ea8

    cp $03
    jr z, jr_003_4ea8

    cp $01
    jr nz, jr_003_4e9d

Call_003_4e8c:
    ld e, $00
    ld d, c
    sra d
    rr e
    ld a, c
    add b
    ld [$c36d], a
    ld [$c36e], a
    jr jr_003_4ea8

jr_003_4e9d:
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    call Call_003_4b45

jr_003_4ea8:
    ld hl, $c36a
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    xor a
    ld hl, $c36a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    call Call_003_4bfe
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    xor a
    ld hl, $c36a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, $00
    ld [hl+], a
    ld [hl+], a
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    call Call_003_4bfe
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$c36e]
    ld d, a
    ld e, $00
    sra d
    rr e
    ld hl, $c36a
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c36c
    ld [hl], c
    inc hl
    ld [hl], c
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $c36a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rl l
    ld l, h
    rl l
    ld a, [$c36f]
    ld b, a
    ld a, l
    inc a
    sub b
    ld l, a
    ld a, [$c36e]
    ld b, $80
    add b
    ld c, l
    ld b, l
    ld h, d
    ld l, e

jr_003_4f42:
    ld [hl+], a
    inc a
    dec c
    jr nz, jr_003_4f42

    ld b, $80
    sub b
    bit 7, a
    jr z, jr_003_4f50

    ld a, $7f

jr_003_4f50:
    ld [$c36e], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push hl
    ld hl, $c36e
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    sub b
    inc hl
    ld [hl+], a
    ld [hl], b
    dec hl
    dec hl
    ld [hl], c
    pop hl
    pop bc
    pop af
    ret


    push af
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_003_4f78

    call Call_003_4fb7
    jr jr_003_4f7b

jr_003_4f78:
    call Call_003_5039

jr_003_4f7b:
    pop af
    ret


    push af
    push bc
    ld a, [$d821]
    ld b, a
    ld a, [$d824]
    cp b
    jr nz, jr_003_4f94

    ld a, [$c82d]
    bit 7, a
    jr nz, jr_003_4f94

    and $7f
    jr nz, jr_003_4fa2

jr_003_4f94:
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_003_4f9f

    call Call_003_4fb7
    jr jr_003_4fa2

jr_003_4f9f:
    call Call_003_5039

jr_003_4fa2:
    ld hl, $c36c
    ld b, [hl]
    inc hl
    ld c, [hl]
    ld a, [$c36e]
    ld [$c36f], a
    ld a, c
    add b
    ld [hl], a
    ld [$c36e], a
    pop bc
    pop af
    ret


Call_003_4fb7:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    rst $20

    db $00, $03

    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c96d]
    or a
    jr z, jr_003_4fd1

    ld b, $60
    jr jr_003_4fd3

jr_003_4fd1:
    ld b, $80

jr_003_4fd3:
    ld a, [$c36e]
    cp b
    jr c, jr_003_4fda

    ld a, b

jr_003_4fda:
    ld b, $00

jr_003_4fdc:
    inc b
    sub $10
    jr c, jr_003_4fe3

    jr jr_003_4fdc

jr_003_4fe3:
    push bc
    ld hl, $0000
    ld b, h
    ld c, l
    ld de, $8800
    add hl, de
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d84d]
    bit 3, a
    jr z, jr_003_5001

    ld de, $2000
    add hl, de

jr_003_5001:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld h, b
    ld l, c
    ld de, $d000
    add hl, de
    pop de
    pop bc
    ld c, $1a

jr_003_5011:
    push bc
    push hl
    push de
    call Call_000_0468
    ld bc, $0100
    pop hl
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    push hl
    call Call_000_0684
    pop hl
    call Call_000_2e3b
    dec b
    jr nz, jr_003_5011

    rst $28

    db $00, $03

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_003_5039:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld hl, $c36a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rl l
    ld l, h
    rl l
    ld b, l
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld b, $00

jr_003_5055:
    inc b
    sub $20
    jr z, jr_003_505e

    jr c, jr_003_505e

    jr jr_003_5055

jr_003_505e:
    ld hl, $d000
    ld de, $8800
    ld c, $20

jr_003_5066:
    push bc
    push hl
    push de
    ld a, $00
    ldh [rVBK], a
    call Call_000_2096
    ld bc, $0200
    pop hl
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    add hl, bc
    pop bc
    dec b
    jr nz, jr_003_5066

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $07
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$c371]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld b, h
    ld c, l
    ld de, $8800
    add hl, de
    ld a, [$c372]
    or a
    jr z, jr_003_50ad

    ld de, $2000
    add hl, de

jr_003_50ad:
    push hl
    ld h, b
    ld l, c
    ld de, $d000
    add hl, de
    pop de
    ld a, [$c370]
    cp $20
    jr c, jr_003_50be

    ld a, $20

jr_003_50be:
    ld c, a
    call Call_000_0468
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    push de
    push hl
    ld a, d
    and $0f
    ld d, a
    sla e
    rl d
    sla e
    rl d
    sla e
    rl d

jr_003_50e1:
    ld a, [hl+]
    cp $00
    jr z, jr_003_50eb

    call Call_003_4b45
    jr jr_003_50e1

jr_003_50eb:
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00
    db $ff, $40, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20, $ff, $40, $df, $20
    db $ff, $d8, $db, $6c, $db, $b4, $b7, $48, $ff, $00, $ff, $00, $ff, $00, $ff, $00

    rst $38
    ld d, b
    rst $18
    ld a, b
    di
    ld a, h
    rst $18
    ld hl, sp-$0d
    ld a, h
    rst $10
    ld hl, sp-$29
    ld a, b
    rst $10
    jr z, @+$01

    jr nz, @+$01

    ld a, b
    db $e3
    cp h

jr_003_5136:
    rst $38
    ld [hl], b
    rst $28
    jr c, jr_003_5136

    db $f4
    and a
    ld a, b
    rst $28
    db $10
    rst $38
    add sp, -$55
    db $fc
    ei
    db $f4
    and a
    ld a, b
    rst $38
    ld a, b
    db $eb
    cp h
    cp e
    db $fc
    and e
    ld e, h

    db $ff, $20, $ff, $50, $f7, $28, $ff, $54, $dd, $aa, $bb, $cc, $ff, $74, $c5, $3a
    db $ff, $c0, $df, $60, $df, $a0, $bf, $40, $ff, $00, $ff, $00, $ff, $00, $ff, $00

    rst $38
    ld b, b
    rst $18
    and b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ld b, b
    rst $18
    jr nz, @+$01

    add b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    and b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    adc b

jr_003_5194:
    ei
    ld d, h
    rst $30
    jr z, @+$01

    ld d, b
    rst $18
    xor b

jr_003_519c:
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_003_5194

    jr nc, @+$01

    ld hl, sp-$5d
    ld a, h
    rst $28
    jr nc, jr_003_519c

    db $10
    rst $38
    nop

    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $c0, $df, $60, $df, $a0
    db $ff, $00, $ff, $00, $ff, $00, $ff, $f8, $83, $7c, $ff, $00, $ff, $00, $ff, $00
    db $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $00, $ff, $60, $cf, $30

    rst $38
    ld [$14fb], sp
    rst $30
    jr @-$07

    jr z, @-$0f

    ld d, b
    rst $18
    ld h, b
    rst $18
    and b
    cp a
    ld b, b
    rst $38
    ld [hl], b
    rst $08
    cp b
    cp e
    call z, $ccbb
    cp e
    call z, $ccbb
    ei
    ld [hl], h
    rst $00
    db $38

    db $ff, $40, $df, $e0, $df, $60, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20
    db $ff, $70, $cf, $b8, $bb, $4c, $fb, $34, $e7, $58, $df, $a0, $ff, $f8, $83, $7c
    db $ff, $70, $cf, $b8, $bb, $4c, $fb, $74, $cf, $38, $fb, $8c, $fb, $74, $c7, $38

    rst $38
    db $10
    rst $30
    jr c, @-$07

    ld e, b

jr_003_5236:
    rst $10
    cp b
    rst $38
    ld hl, sp-$6d
    ld a, h
    rst $30
    jr jr_003_5236

    ld [$f8ff], sp
    add e
    db $fc
    rst $38
    ldh a, [$8f]
    ld a, b
    ei
    inc c
    ei
    adc h
    ei
    ld [hl], h
    rst $00
    jr c, @+$01

    ld [hl], b
    rst $08
    cp b
    cp e
    call nz, $f0ff
    adc a
    ld hl, sp-$45
    call z, Call_003_74fb

jr_003_525e:
    rst $00
    jr c, @+$01

    ld hl, sp-$75
    db $fc
    cp e
    ld c, h
    ei
    inc d
    rst $30
    jr z, @-$0f

    jr nc, @-$0f

    jr nc, jr_003_525e

    db $10
    rst $38
    ld [hl], b
    rst $08
    cp b
    cp e
    call z, Call_003_74fb
    rst $08
    cp b
    cp e
    call z, Call_003_74fb
    rst $00
    db $38

    db $ff, $70, $cf, $b8, $bb, $cc, $fb, $7c, $cb, $3c, $fb, $8c, $fb, $74, $c7, $38

    rst $38
    nop
    rst $38
    ret nz

    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

jr_003_52a4:
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    ret nz

    rst $18
    ld h, b
    rst $18
    and b
    cp a
    ld b, b
    rst $38
    db $10
    rst $30
    jr z, jr_003_52a4

    ld d, b
    rst $18
    and b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $30
    ld [$00ff], sp
    rst $38
    ld hl, sp-$7d
    ld a, h
    rst $38
    nop
    rst $38
    ld hl, sp-$7d
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $30
    jr z, @-$0f

    ld d, b
    rst $18
    and b
    cp a
    ld b, b

    db $ff, $70, $cf, $b8, $bb, $cc, $bb, $54, $f7, $28, $ef, $10, $ff, $20, $ef, $10

    rst $38
    jr c, @-$17

    ld e, h
    rst $38
    cp d
    and d
    rst $38
    cp [hl]
    ei
    and $5d
    db $fd
    ld a, [hl-]
    db $e3
    inc e

    db $ff, $20, $ff, $50, $d7, $78, $db, $ac, $fb, $fc, $8b, $fc, $bb, $cc, $bb, $44
    db $ff, $f0, $8f, $f8, $bb, $cc, $fb, $f4, $8f, $f8, $bb, $cc, $fb, $f4, $87, $78
    db $ff, $70, $cf, $b8, $bb, $c4, $bf, $c0, $bf, $c0, $bf, $c8, $fb, $74, $c7, $38
    db $ff, $f0, $8f, $f8, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $cc, $fb, $f4, $87, $78
    db $ff, $f8, $83, $fc, $bf, $c0, $ff, $f0, $87, $f8, $bf, $c0, $ff, $f8, $83, $7c
    db $ff, $f8, $83, $fc, $bf, $c0, $ff, $f0, $87, $f8, $bf, $c0, $bf, $c0, $bf, $40
    db $ff, $70, $cf, $b8, $bb, $c4, $bf, $f8, $ab, $dc, $bb, $dc, $fb, $6c, $cb, $34
    db $ff, $88, $bb, $cc, $bb, $cc, $fb, $fc, $8b, $fc, $bb, $cc, $bb, $cc, $bb, $44
    db $ff, $e0, $cf, $70, $df, $60, $df, $60, $df, $60, $df, $60, $ff, $e0, $8f, $70

jr_003_5390:
    rst $38
    db $10

jr_003_5392:
    rst $30
    jr @-$07

    jr @-$07

    jr jr_003_5390

    jr jr_003_5392

    sbc b
    rst $30
    ld l, b
    rst $08
    db $30

    db $ff, $88, $bb, $d4, $b7, $e8, $ef, $d0, $bf, $e0, $bf, $d0, $bf, $c8, $bb, $44
    db $ff, $80, $bf, $c0, $bf, $c0, $bf, $c0, $bf, $c0, $bf, $c0, $ff, $f8, $83, $7c
    db $ff, $82, $fe, $c7, $de, $e7, $be, $eb, $aa, $ff, $ba, $d7, $b6, $cb, $be, $41
    db $ff, $88, $fb, $cc, $db, $ec, $bb, $ec, $bb, $dc, $bb, $dc, $bb, $cc, $bb, $44
    db $ff, $78, $c7, $bc, $bd, $c6, $bd, $c6, $bd, $c6, $bd, $c6, $fd, $7a, $c3, $3c
    db $ff, $f0, $8f, $f8, $bb, $cc, $fb, $f4, $87, $f8, $bf, $c0, $bf, $c0, $bf, $40
    db $ff, $78, $c7, $bc, $bd, $c6, $bd, $c6, $bd, $f6, $ad, $da, $ff, $74, $c5, $3a

    rst $38
    ldh a, [$8f]
    ld hl, sp-$45
    call z, $f4fb
    sub a
    ld hl, sp-$41
    ret z

    cp e
    call z, $44bb

    db $ff, $70, $cf, $b8, $bb, $c4, $ff, $70, $cf, $38, $fb, $8c, $fb, $74, $c7, $38
    db $ff, $f8, $a3, $7c, $ef, $30, $ef, $30, $ef, $30, $ef, $30, $ef, $30, $ef, $10
    db $ff, $88, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $cc, $fb, $74, $c7, $38
    db $ff, $88, $bb, $cc, $bb, $cc, $fb, $54, $d7, $78, $f7, $28, $ef, $30, $ef, $10
    db $ff, $82, $be, $d3, $b6, $db, $b6, $db, $be, $eb, $aa, $ff, $ee, $55, $dd, $22

    rst $38
    adc b
    ei
    ld d, h
    rst $10
    ld a, b
    rst $30
    jr z, @+$01

    ld d, b
    rst $10
    ld a, b
    rst $18
    xor b
    cp e
    ld b, h

    db $ff, $88, $fb, $54, $f7, $58, $f7, $28, $ef, $30, $ef, $30, $ef, $30, $ef, $10

    rst $38
    ld hl, sp-$75
    ld a, h
    ei
    inc d
    rst $30
    jr z, @-$0f

    ld d, b
    rst $18
    and b
    rst $38
    ld hl, sp-$7d
    ld a, h
    rst $38
    ret nz

    sbc a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    sbc a
    ld h, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $18
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $30
    jr @+$01

    ld [$04fb], sp
    rst $38
    ret nz

    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ldh [$9f], a
    ld h, b
    rst $38
    jr nz, @+$01

    ld d, b
    rst $18
    xor b
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$7d
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

    db $ff, $00, $ff, $00, $ff, $70, $cf, $38, $fb, $7c, $cb, $bc, $ff, $74, $c5, $3a
    db $ff, $80, $bf, $c0, $bf, $f0, $ef, $d8, $9b, $ec, $fb, $cc, $fb, $b4, $e7, $18
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $bb, $c4, $bf, $c8, $fb, $74, $c7, $38
    db $ff, $08, $fb, $0c, $fb, $6c, $db, $bc, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $34
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $fb, $f4, $87, $f8, $ff, $70, $c7, $38
    db $ff, $30, $e7, $58, $df, $60, $ff, $e0, $cf, $70, $df, $60, $df, $60, $df, $20
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $bb, $dc, $fb, $6c, $cb, $3c, $fb, $74
    db $ff, $80, $bf, $c0, $bf, $f0, $cf, $f8, $bb, $cc, $bb, $cc, $bb, $cc, $bb, $44
    db $ff, $40, $df, $20, $ff, $c0, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20

    rst $38
    jr nz, @-$0f

    db $10
    rst $38
    ld h, b
    rst $28
    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    jr nc, @-$0f

    ret nc

    db $ff, $80, $bf, $c0, $bf, $c8, $bb, $d4, $b7, $e8, $ff, $d0, $9f, $e8, $bb, $44
    db $ff, $c0, $df, $60, $df, $60, $df, $60, $df, $60, $df, $60, $df, $60, $df, $20
    db $ff, $00, $ff, $00, $ff, $b4, $ff, $da, $92, $ff, $b6, $db, $b6, $db, $b6, $49
    db $ff, $00, $ff, $00, $ff, $b0, $ef, $d8, $9b, $ec, $bb, $cc, $bb, $cc, $bb, $44
    db $ff, $00, $ff, $00, $ff, $70, $cf, $b8, $bb, $cc, $bb, $cc, $fb, $74, $c7, $38
    db $ff, $00, $ff, $00, $ff, $b0, $ef, $d8, $9b, $ec, $fb, $cc, $bb, $f4, $a7, $d8
    db $ff, $00, $ff, $00, $ff, $68, $db, $bc, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $3c
    db $ff, $00, $ff, $00, $ff, $b0, $e7, $d8, $9f, $e0, $bf, $c0, $bf, $c0, $bf, $40
    db $ff, $00, $ff, $00, $ff, $78, $c3, $bc, $ff, $70, $cf, $38, $fb, $f4, $87, $78
    db $ff, $40, $df, $60, $ff, $e0, $cf, $70, $df, $60, $df, $60, $ff, $30, $e7, $18
    db $ff, $00, $ff, $00, $ff, $88, $bb, $cc, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $34
    db $ff, $00, $ff, $00, $ff, $88, $bb, $cc, $fb, $54, $d7, $78, $f7, $28, $ef, $10
    db $ff, $00, $ff, $00, $ff, $82, $be, $d3, $b6, $db, $b6, $db, $fe, $6d, $c9, $36
    db $ff, $00, $ff, $00, $ff, $88, $fb, $54, $f7, $28, $ff, $50, $df, $a8, $bb, $44
    db $ff, $00, $ff, $00, $ff, $88, $bb, $cc, $bb, $dc, $fb, $6c, $cb, $3c, $fb, $74

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$75
    ld a, h
    ei
    ld [hl], h
    rst $00
    cp b
    rst $38
    ld hl, sp-$7d
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $05, $04, $06

    ld b, $06
    db $06

    db $07, $04

    inc b
    inc b
    ld b, $06

    db $04, $06, $04

    ld b, $06

    db $04, $06, $06

    ld b, $06
    ld b, $06
    db $06

    db $06

    inc b
    inc b
    dec b
    ld b, $05

    db $06

    db $08

    db $06, $06, $06, $06, $06, $06, $06, $06, $04

    dec b

    db $06, $06, $08, $06, $07, $06, $07

    db $06

    db $06, $06, $06, $06, $08

    db $06

    db $06

    ld b, $04
    ld b, $04
    ld b, $06
    dec b

    db $07, $06, $06, $06, $06, $04, $06, $06, $03

    inc b

    db $06, $04, $08, $06, $06, $06, $06, $05, $06, $04, $06, $06, $08, $06, $06

    ld b, $05
    dec b
    dec b
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_5847:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_614e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_6633:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_7084:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7181:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_74fb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_7cf4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7d3c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_003_7ebd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_003_7f3b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
