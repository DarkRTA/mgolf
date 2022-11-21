INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    ld [bc], a
    ld b, b
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [$d610], a
    cp $00
    jr z, jr_03f_4029

    cp $01
    jr z, jr_03f_402d

    cp $02
    jr z, jr_03f_4031

    cp $03
    jr z, jr_03f_4035

    cp $04
    jr z, jr_03f_4039

    cp $05
    jr z, jr_03f_403d

    ld a, $1f
    jr jr_03f_4046

jr_03f_4029:
    ld a, $01
    jr jr_03f_4046

jr_03f_402d:
    ld a, $02
    jr jr_03f_4046

jr_03f_4031:
    ld a, $04
    jr jr_03f_4046

jr_03f_4035:
    ld a, $08
    jr jr_03f_4046

jr_03f_4039:
    ld a, $10
    jr jr_03f_4046

jr_03f_403d:
    ld a, $01
    ld [$d60f], a
    ld a, $1f
    jr jr_03f_4046

jr_03f_4046:
    ld [$d60e], a
    xor a
    ld [$d616], a
    ld [$d613], a
    ld [$d609], a
    ld [$d60a], a
    ld [$d61a], a
    ld a, $08
    ld [$d615], a
    ld a, $00
    ld [$d614], a
    ld a, $b4
    ld [$d619], a
    call Call_03f_433c
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$d60f], a
    ld a, [$d610]
    cp $06
    jr z, jr_03f_408e

    call Call_000_2e3b
    call Call_03f_5d0a
    ld a, [$d610]
    cp $05
    jr nz, jr_03f_408e

    ld a, $01
    ld [$d60f], a

jr_03f_408e:
    rst $08
    ld d, $cd
    dec sp
    ld l, $0e
    db $10
    call Call_000_25af
    call Call_000_2625
    ld a, $1d
    ld hl, $58dd
    call Call_000_23e8
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d610]
    cp $06
    jr nz, jr_03f_40f6

    ld a, [$d613]
    set 0, a
    ld [$d613], a
    rst $18
    ld l, d
    dec b
    ld d, $00
    ld e, $06
    ld b, $14
    ld c, $05
    ld hl, $1a23
    rst $18
    ld b, $05
    xor a
    rst $18
    ld d, d
    dec b
    ld b, $00
    rst $18
    ld [de], a
    dec b
    xor a
    rst $18
    ld l, [hl]
    dec b
    xor a
    rst $18
    db $76
    dec b
    rst $18
    ld [hl], d
    dec b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d613]
    res 0, a
    ld [$d613], a
    call Call_03f_58b9
    call Call_000_2ed5
    ld bc, $023e
    jr jr_03f_4100

jr_03f_40f6:
    ld a, [$d613]
    set 1, a
    ld [$d613], a
    ld a, $08

Jump_03f_4100:
jr_03f_4100:
    call Call_000_2e3b
    cp $04
    jp z, Jump_03f_411c

    cp $10
    jp z, Jump_03f_4121

    cp $08
    jp z, Jump_03f_4117

    call Call_03f_5f73
    jr jr_03f_4124

Jump_03f_4117:
    call Call_03f_6017
    jr jr_03f_4124

Jump_03f_411c:
    call Call_03f_4140
    jr jr_03f_4124

Jump_03f_4121:
    call Call_03f_418c

jr_03f_4124:
    call Call_000_05dd
    cp $01
    jp nz, Jump_03f_4100

    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    call Call_03f_41f6
    ld hl, $58dd
    call Call_000_2449
    ret


Call_03f_4140:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld a, $0d
    ld [$c321], a
    xor a
    ld [$c320], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d60a]
    ld b, a
    xor a
    call Call_03f_5f4c
    rst $18
    inc a
    inc b
    call Call_000_2e3b
    call Call_000_0341
    call Call_03f_4216
    ld a, $01
    rst $18
    inc b
    dec bc
    call Call_000_0371
    call Call_03f_5ed2
    call Call_03f_5d0a
    ld a, [$d613]
    set 1, a
    ld [$d613], a
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $08
    ret


Call_03f_418c:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    ld a, $21
    ld [$c321], a
    xor a
    ld [$c320], a
    call Call_03f_5f16
    rst $18
    inc a
    inc b
    call Call_000_2e3b
    call Call_000_0341
    call Call_03f_42a9
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d60a]
    ld b, a
    ld a, $01
    call Call_03f_5f4c
    ld a, $01
    rst $18
    inc b
    dec bc
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d613]
    res 1, a
    ld [$d613], a
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $02
    ret


    add hl, de
    ld a, h
    cp b
    jr nc, jr_03f_41eb

    ld a, l
    ld [$c320], a
    ld a, h
    ld [$c321], a
    jr jr_03f_41f1

jr_03f_41eb:
    rst $18
    inc a
    inc b
    ld a, $01
    ret


jr_03f_41f1:
    rst $18
    inc a
    inc b
    xor a
    ret


Call_03f_41f6:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ldh [$8b], a

Call_03f_41ff:
    ld [$c321], a
    ld [$c320], a
    ldh [$8a], a
    ld hl, $c322
    ld [hl+], a
    ld [hl+], a
    ldh [$b9], a
    ldh [$b8], a
    ld hl, $c82d
    res 7, [hl]
    ret


Call_03f_4216:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4e04
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d610]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4889
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    pop af
    add a
    add $d0
    ld h, a
    ld de, $b400
    ld c, $20
    call Call_000_04db
    ld hl, $4841
    ld de, $0008
    call Call_000_0595
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $44f5
    ld de, $d000
    call Call_000_1f2f
    ld de, $b800
    ld hl, $d000
    ld c, $48
    call Call_000_04db
    call Call_03f_431c
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4f54
    ld de, $d000
    call Call_000_1f2f
    ld hl, $5036
    ld de, $d200
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a600
    ld c, $20
    call Call_000_04db
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_03f_42a9:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4e02
    ld de, $d000
    call Call_000_0234
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_04db
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $47f9
    ld de, $0008
    call Call_000_0595
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4485
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4e06
    ld de, $d000
    call Call_000_0234
    ld hl, $4e08
    ld de, $d200
    call Call_000_0234
    ld hl, $4e0a
    ld de, $d400
    call Call_000_0234
    ld hl, $4e0c
    ld de, $d600
    call Call_000_0234
    ld hl, $d000
    ld de, $a600
    ld c, $20
    call Call_000_04db
    ret


Call_03f_431c:
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $0e
    ld hl, $444d

jr_03f_4327:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld h, d
    ld l, e
    call Call_000_039f
    pop hl
    pop bc
    dec c
    jr nz, jr_03f_4327

    ret


Call_03f_433c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d610]
    cp $06
    jr nz, jr_03f_434d

    ld a, $21
    jr jr_03f_434f

jr_03f_434d:
    ld a, $0d

jr_03f_434f:
    ldh [$8b], a
    ld [$c321], a
    xor a
    ld [$c320], a
    ldh [$8a], a
    ld hl, $c322
    ld [hl+], a
    ld [hl+], a
    ldh [$b9], a
    ldh [$b8], a
    call Call_000_0341
    call Call_000_23b6
    call Call_03f_5b9f
    call Call_03f_5bc2
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5119
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8000
    ld c, $20
    call Call_000_04db
    ld hl, $525a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8200
    ld c, $20
    call Call_000_04db
    ld hl, $53d2
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8400
    ld c, $20
    call Call_000_04db
    ld hl, $5530
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a000
    ld c, $20
    call Call_000_04db
    ld hl, $5609
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a200
    ld c, $20
    call Call_000_04db
    ld hl, $5756
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a400
    ld c, $20
    call Call_000_04db
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5811
    ld de, $0808
    call Call_000_0595
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d610]
    cp $06
    jr nz, jr_03f_440e

    call Call_03f_42a9
    jr jr_03f_4411

jr_03f_440e:
    call Call_03f_4216

jr_03f_4411:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4565
    ld de, $d000
    call Call_000_1f2f
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_0371
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    inc a
    inc b
    call Call_000_0341
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    rst $18
    inc b
    dec bc
    call Call_000_0371
    ld hl, $c82d
    set 7, [hl]
    xor a
    ld [$c372], a
    ret


    db $10
    pop de
    rrca
    nop
    ld d, b
    pop de
    stop
    sub b
    pop de
    rrca
    nop
    ret nc

    pop de
    stop
    db $10
    jp nc, Jump_000_000f

    ld d, b
    jp nc, RST_10

    sub b
    jp nc, Jump_000_000f

    ret nc

    jp nc, RST_10

    db $10
    db $d3
    rrca
    nop
    ld d, b
    db $d3
    stop
    sub b
    db $d3
    rrca
    nop
    ret nc

    db $d3
    stop
    ld d, b
    ret nc

    ld bc, $5e00
    ret nc

    ld bc, $9500
    dec bc
    rst $38
    db $fd
    inc c
    rst $38
    ldh a, [$08]
    rst $38
    rst $20
    ret nz

    rst $38
    dec c
    ret nz

    rst $38
    ld_long $ffc0, a
    adc h
    pop hl
    db $fc
    db $e4
    ret nz

    rst $38
    add b
    rst $38
    inc c
    ld c, l
    nop
    rst $38
    pop hl
    cp e
    ld [c], a
    or $e1
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    and $dd
    pop hl
    dec sp
    ld [c], a
    ld [hl], c
    add $c0
    rst $38
    or h
    swap c
    call $ffc0
    nop
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
    rst $18
    rst $38
    add sp, -$40
    rst $38
    nop
    ld b, b
    rst $18
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    jp hl


    call c, $c0e7
    rst $38
    add b
    rst $38
    nop
    ret nz

    rst $38
    add b
    rst $08
    ld a, l
    rst $20
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    jp hl


    nop
    nop
    nop
    add l
    ld [$e9ff], sp
    inc c
    rst $38
    ldh a, [$df]
    ld [$fcfd], a
    ret nz

    ld [c], a
    ld a, [bc]
    ld [bc], a
    rst $38
    rst $20
    inc c
    xor [hl]
    ldh [$ca], a
    rst $38
    ret nz

    ld hl, sp-$80
    rst $38
    ld b, b
    db $ec
    xor l
    rst $28
    nop
    jp z, $c0ff

    db $eb
    rst $08
    db $ec
    ret nz

    rst $38
    ret nz

    rst $38
    and a
    ret z

    ret nz

    rst $38
    add b
    rst $30
    nop
    or d
    ret nz

    add b
    rst $38
    add b
    ld_long a, $ff40
    ret nz

    db $d3
    ei
    call nz, $ff40
    add b
    db $d3
    nop
    add e
    db $e4
    rst $20
    and d
    ret nz

    rst $38
    add b
    pop de
    xor h
    and e
    add b
    rst $18
    nop
    sub $bf
    rst $38
    nop
    ret nz

    cp b
    ld c, b
    ld [c], a
    add d
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    sub [hl]
    ret nz

    ld a, a
    call z, Call_000_00e9
    nop
    nop
    db $fd
    ld l, d
    rst $38
    jp hl


    dec de
    inc e
    jr @+$1b

    ld a, [de]
    dec e
    ld a, [hl]
    rst $38
    rst $20
    dec d
    ld d, $17
    ld e, $70
    ld [hl], c
    rst $38
    ld [$723f], a
    db $76
    adc [hl]
    xor [hl]
    add h
    nop
    rst $38
    rst $20
    ret nz

    ld [$2bff], a
    inc l
    jr z, jr_03f_45aa

    ld a, [hl+]
    ld b, b
    ld b, c
    ld b, d
    rst $38
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    rst $38
    dec h
    jr nz, jr_03f_45c2

    ld l, $80
    ld h, [hl]
    ld h, [hl]
    ld [hl], e
    rst $38
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ld a, a

jr_03f_45aa:
    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    add d
    ld [hl], a
    adc a
    xor a
    ret nz

    ld hl, sp-$01
    jr c, jr_03f_45ef

    ld a, [hl-]
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rst $38
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_03f_45c2:
    ld e, d
    dec [hl]
    ld [hl], $fd
    scf
    ret nz

    pop hl
    sub e
    or b
    or c
    or d
    or e
    or h
    rst $28
    or l
    or [hl]
    or a
    sub l
    ret nz

    ldh [$78], a
    sub [hl]
    cp b
    ld [c], a
    add b
    ld hl, sp+$20
    rst $38
    db $ed
    add b
    pop hl
    cp $e9
    add d
    ld a, c
    sub a
    add hl, sp
    cp c
    ret nz

    rst $38
    ret nz

    ld hl, sp+$7a
    sbc b
    cp d

jr_03f_45ef:
    ret nz

    rst $38
    add b
    ld hl, sp+$07
    ld a, e
    sbc c
    cp e
    ret nz

    rst $38
    ld b, b
    ld [$c15d], a
    dec sp
    ld [c], a
    ld d, h
    pop bc
    rst $08
    add d
    ld a, h
    sbc d
    cp h
    ret nz

    rst $38
    nop
    jp hl


    db $10
    ld de, $12e7
    inc de
    inc d
    ld [hl], $c0
    dec h
    ret nz

    dec de
    inc e
    dec e
    rst $08
    add d
    ld a, l
    sbc e
    cp l
    ret nz

    rst $38
    ret nz

    ret


    jr nz, jr_03f_4643

    rst $38
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03f_4654

    rst $38
    ld a, [hl+]
    dec hl
    inc l
    dec l
    add d
    ld a, [hl]
    sbc h
    cp [hl]
    ld a, h
    ret nz

    rst $38
    add b
    ret


    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    ld [hl], $c0
    cp $25
    ret nz

jr_03f_4643:
    dec sp
    inc a
    dec a
    add d
    ld a, a
    sbc l
    cp a
    ld hl, sp-$40
    rst $38
    ld b, b
    ret


    or b
    xor b
    ld c, e
    ld c, h
    ld c, l

jr_03f_4654:
    add d
    add [hl]
    di
    sbc [hl]

jr_03f_4658:
    ret z

    ret nz

    rst $38
    nop
    push de
    ld e, h
    ld e, l
    add d
    add a
    ld [hl], e
    sbc a
    ret


    ret nz

    rst $38
    ret nz

    cp b
    adc b
    xor b
    jp z, $ffc0

    ld c, $80
    cp b
    adc c
    xor c
    set 0, b
    rst $38
    ld b, b
    xor e
    ld e, h
    add a
    ret nz

    add b
    rst $20
    adc d
    xor d
    call z, $ffc0
    nop
    cp b
    adc e
    xor e
    call $c0f0
    rst $38
    ret nz

    adc c
    add c
    and d
    reti


    ld h, [hl]
    add d
    adc h
    xor h
    adc $b8
    nop
    sub [hl]
    jr nz, jr_03f_4658

    rst $38
    db $ed
    ld a, $90
    sub c
    rst $38
    ld [$0792], a
    adc l
    xor l
    rst $08
    ret nz

    ld l, c
    nop
    nop
    nop
    db $fd
    ld l, d
    rst $38
    jp hl


    dec de
    inc e
    jr jr_03f_46ca

    ld a, [de]
    dec e
    ld a, [hl]
    rst $38
    rst $20
    dec d
    ld d, $17
    ld e, $70
    ld [hl], c
    rst $38
    db $ec
    rst $08
    ld [hl], d
    db $76
    ld [hl], a
    nop
    rst $38
    rst $20
    ret nz

    ld [$2c2b], a
    rst $38

jr_03f_46ca:
    jr z, @+$2b

    ld a, [hl+]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rst $38
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec h
    ld h, $f7
    daa
    ld l, $80
    sbc [hl]
    ldh [$73], a
    and b
    and c
    and d
    cp a
    and e
    and h
    and l
    and [hl]
    and a
    ld [hl], l
    sub c
    ldh [$82], a
    ei
    add [hl]
    add a
    ret nz

    rst $30
    jr c, @+$3b

    ld a, [hl-]
    ld d, b
    ld d, c
    rst $38
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

Jump_03f_4700:
    ld e, b
    ld e, c
    rst $28
    ld e, d
    dec [hl]
    ld [hl], $37
    ret nz

    ldh [$73], a
    ld [hl], h
    sub e
    rst $38
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    ld a, a
    sub l
    ld [hl], h
    ld [hl], l
    ld l, d
    add d
    sbc b
    add h
    add b
    rst $30
    jp hl


    jr nz, @+$01

    db $ed
    add b
    ldh [$83], a
    inc e
    jp hl


    add l
    ld l, d
    add d
    push af
    sbc c
    ret nz

    ld a, [$c029]
    di
    db $10
    ld de, $1312
    sub d
    ret nz

    db $e4
    sbc d
    ret nz

    rst $38
    add b
    db $ec
    inc d
    or a
    ret nz

    and [hl]
    ret nz

    dec de
    rr h
    dec e
    add b
    pop hl
    sbc e
    ret nz

    rst $38
    ld b, b
    db $ed
    jr nz, jr_03f_4771

    daa
    ld [hl+], a
    inc hl
    inc h
    or d
    ret nz

    ld b, b
    ld [c], a
    sbc h
    ret nz

    rst $38
    nop
    db $ed
    cp [hl]
    ld l, c
    ret nz

    dec hl
    inc l
    dec l
    ld l, $2f
    nop
    ld [c], a
    sbc l
    db $fc
    ret nz

    rst $18
    ret nz

    call z, $1f1e
    jr nc, jr_03f_47a2

jr_03f_4771:
    ld [hl-], a
    inc sp
    ret


    inc [hl]
    ld [hl], c
    ret nz

    ret nz

    pop bc
    sbc [hl]
    ret nz

    rst $38
    add b
    srl c
    ld a, [hl-]
    sbc a
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $20
    and d
    add b
    ret nz

    sbc a
    ld e, b
    ret nz

    rst $38
    ld b, b
    call $a3b1
    ld c, e
    ld c, h
    ld b, b
    jp nz, $c0c8

    rst $38
    xor $00
    bit 1, l
    ld c, [hl]
    ld c, a
    xor e
    and e
    ld h, b

jr_03f_47a2:
    ld h, c
    ld h, d
    ld [c], a
    nop
    ret nz

    ret


    ret nz

    rst $38
    ret nz

    xor e
    ld [hl], h
    and c
    ld l, d
    ld e, d
    ld e, e
    ld e, a
    ld l, d
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ret nz

    and b
    jp z, $ffc0

    ld a, [c]
    add b
    cp d
    set 0, b
    rst $38
    ld b, b
    xor l
    ret nz

    pop bc
    jp nz, Jump_000_2fc3

    call nz, $c6c5
    rst $00
    ld b, b
    and d
    call z, $ffc0
    nop
    xor d
    ld a, e
    sub e
    sub h
    rst $38
    add sp, -$6b
    ld l, d
    add d
    call $ffc0
    adc h
    ret nz

    adc d
    rst $38
    db $ec
    add d
    adc $c0
    or $19
    ret nz

    rst $38
    db $ed
    ld a, $1b
    sub b
    sub c
    rst $38
    db $ec
    sub d
    rst $08
    add b
    jp hl


    nop
    nop
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    ld e, a
    ld d, $00
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    ld e, a
    ld d, $00
    nop
    di
    inc bc
    ld b, $00
    ld d, h
    ld bc, $2a1f
    nop
    ld bc, $0fc9
    ld e, a
    ld d, $66
    ld a, [bc]
    ld e, a
    ld d, $ff
    ld l, e
    ld d, h
    ld bc, $0000
    ld e, a
    ld d, $ff
    inc bc
    ld d, h
    ld bc, $0000
    rra
    nop
    nop
    ld b, b
    di
    inc bc
    ld b, $00
    rra
    nop
    ld b, $00
    rra
    ld a, [hl+]
    di
    inc bc
    ld b, h
    ld de, $0006
    rra
    ld a, [hl+]
    di
    inc bc
    ldh [$7f], a
    rst $38
    ld l, e
    ld e, a
    ld d, $00
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    ld e, a
    ld d, $00
    nop
    ld e, a
    ld d, $ff
    ld l, e
    rst $38

jr_03f_4856:
    inc bc
    nop
    nop
    ld [hl], e
    ld de, $0dc9
    ld e, a
    ld d, $14

Call_03f_4860:
    ld a, [bc]
    ld e, a
    ld d, $ff
    ld l, e
    ld d, h
    ld bc, $0000
    ld e, a
    ld d, $ff
    inc bc
    ld d, h
    ld bc, $0000
    rra
    nop
    nop
    ld b, b
    di
    inc bc
    ld b, $00
    rra
    nop
    ld b, $00
    rra
    ld a, [hl+]
    di

jr_03f_4880:
    inc bc
    ld e, a
    ld d, $06
    nop
    rra
    ld a, [hl+]
    di
    inc bc
    rst $38
    ld l, a
    ld h, b
    sbc a
    ret nc

    sbc a
    ldh a, [$9e]
    ldh a, [rIE]
    sbc a
    pop af
    sbc [hl]
    ldh a, [$97]
    pop af
    adc a
    rst $28
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $0e
    pop de
    push de
    rst $38
    jr nz, jr_03f_4856

    db $e3
    rst $28
    ld sp, $38b5
    cp $ff
    or a
    jr nc, jr_03f_4880

    ld e, b
    ld c, e
    ld a, b
    add [hl]
    cp h
    rst $38
    add l
    db $fd
    ld c, d
    ld a, d
    ld c, [hl]
    ld a, e
    adc $fb
    rst $38
    db $fd
    ld bc, $02fa
    db $fc
    dec b
    db $e4
    rst $20
    rst $38
    jr jr_03f_4926

    ld [$6cef], sp
    rst $38
    ld l, h
    rst $38
    rst $38
    or a
    add a
    ld l, b
    bit 2, b
    rst $10
    and e
    xor e
    rst $38
    ld h, l
    db $fc
    ld h, [hl]
    db $fc
    and l
    cp l
    db $e3
    cp e
    rst $38
    rst $18
    ret nz

    ccf
    and b
    ccf
    ldh [$ce], a
    adc $ff
    pop de
    dec d

jr_03f_48ef:
    ldh [$ee], a
    ld h, $ff
    ld h, $ff
    rst $38
    ld l, e
    ld h, e
    sub h
    or l
    sbc b
    ei
    sbc c
    rst $38
    rst $18
    sub b
    rst $30
    sub b
    rst $38
    sbc c
    cp $e0
    ld a, [hl]
    ld a, [hl]
    rst $38
    add c
    cp l
    add c
    rst $38
    ld h, [hl]
    ld a, [hl]
    and l
    cp l
    cp a
    and $be
    ld h, [hl]
    ccf
    and $3f
    sub b
    pop hl
    rst $38
    rst $38
    nop
    and $e6
    add hl, de
    ld e, l
    ld l, b
    rst $28
    add hl, bc
    rst $30
    rst $28

jr_03f_4926:
    ld a, c
    rst $38
    ldh a, [$e3]
    sbc $de
    ld hl, $dffd
    jr nz, jr_03f_48ef

    ldh [$f5], a
    ld l, d
    ldh [$e2], a
    db $dd
    inc e
    rst $38
    and d
    ld a, [hl+]
    ld b, c
    ld e, a
    add $de
    ld h, d
    ld l, d
    rst $00
    ld [hl], c
    db $fd
    nop
    rst $38

jr_03f_4946:
    rst $38

jr_03f_4947:
    rst $38
    rst $38
    jp hl


    add sp, -$7f
    cp a
    rst $08
    ld b, c
    ld e, l
    cp [hl]
    ld a, $7a
    db $e3
    inc b
    pop hl
    jr nz, jr_03f_4946

    rst $28
    ld hl, $defd
    sbc $f0
    rst $20
    adc $fa
    ld c, l
    rst $30
    ld l, c
    or [hl]
    jr nc, jr_03f_4947

    rst $20
    inc c
    rst $28
    inc d
    ld d, [hl]
    ei
    db $eb
    db $e3
    ret nc

    rst $20
    ldh [$af], a
    ret nc

    sub a
    ld l, a
    dec a
    rrca
    ret nz

    jp hl


    ld sp, $ceb5
    adc $b0
    rst $20
    inc c
    ldh [$f7], a
    db $dd
    ld h, [hl]
    ld h, [hl]
    and b
    rst $20
    and $3e
    push hl
    dec [hl]
    ei
    jp c, $9018

    rst $20
    add hl, bc
    rst $28
    add hl, de
    ld e, a
    and $fd
    and $80
    rst $20
    ld [$ea3f], a
    dec sp
    push de
    dec d
    ld a, [hl]
    ld [hl], b
    rst $20
    ld b, c
    db $dd
    ld b, d
    ld a, d
    cp l
    cp h
    ld h, b
    rst $20
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    ld [$00e9], a
    rst $18
    nop
    db $db
    cp e
    add e
    ld [hl], h
    rst $38
    push bc
    ld l, b
    res 6, c
    sub l
    ld [hl], d
    sbc $73
    rst $38
    sbc $b2
    sbc [hl]
    pop af
    sbc l
    rst $28
    ldh [$1f], a
    rst $38
    ret nc

    rra
    ldh a, [$e7]
    rst $20
    add sp, $0a
    ld [hl], b
    rst $38
    ld [hl], a
    sub e
    rst $38
    sub e
    rst $38
    or l
    ld sp, $ffca
    ld e, d
    call z, Call_03f_4c7d
    ld a, a
    ret z

    ei
    ld c, b
    rst $38
    ld a, a
    ld c, h
    rst $38
    ld c, h
    rst $38
    xor a
    adc a
    ld [hl], b
    rst $38
    rst $10
    ld [hl], b
    rst $18
    or e
    sbc a
    ld [hl], e
    rst $18
    ld [hl], b
    rst $38
    rst $18
    or b
    sbc a
    ld a, [c]
    sbc [hl]
    cp a
    add b
    ld e, a
    rst $38
    ld b, b
    ccf
    and b
    dec sp
    ei
    inc h
    rst $30
    ld h, h
    rst $18
    rst $38
    inc h
    cp a
    inc h
    rst $38
    ld [hl], b
    ldh [$b0], a
    sbc a
    cp a
    ldh a, [$97]
    rst $30
    sbc b
    ld a, [$ce93]
    and b
    sub e
    cp $f0
    and d
    db $dd
    inc e
    ld [hl+], a
    ld a, [hl+]
    pop bc
    rst $18
    ld b, [hl]
    rrca
    ld e, [hl]
    ld h, d
    ld l, d
    pop af
    nop
    rst $18
    rst $38
    rst $38
    nop
    rst $18
    nop
    rst $18
    ld a, [hl]
    ret nc

    and $f0
    sub a
    add sp, -$75
    ld [hl], a
    rlca
    ret nz

    rst $20
    cp a
    db $10
    rst $30
    jr @-$24

    rst $20
    rst $20
    or b
    rst $20
    ld c, h
    rst $18
    ld a, a
    call z, Call_000_33ee
    inc sp
    and b
    rst $20
    di
    sbc a
    rst $28
    di
    sub a
    ld l, h
    inc c
    sub b
    add sp, -$11
    jr nc, jr_03f_4ad4

    ei
    rst $08
    rst $08
    add b
    rst $20
    sub b
    rst $30
    sbc b
    jp c, Jump_03f_7d67

    ld h, a
    nop
    ret z

    ld e, l
    jp nz, Jump_000_3dfa

    inc a
    nop
    rst $18
    db $fc

jr_03f_4a74:
    rst $38
    rst $38
    db $f4
    di
    rst $18
    rra
    and b
    ld l, $40
    ld e, a
    rst $38
    adc a
    xor a
    sub a
    ldh a, [$9b]
    di
    sub h
    rst $30
    rst $38
    adc h
    rst $28
    ld a, l
    ld bc, $82fe
    cp $83
    rst $38
    ld a, [hl-]
    dec sp
    ld b, [hl]
    ld d, a
    add d
    cp e
    sbc d
    rst $38
    rst $38
    sbc d
    rst $38
    xor h
    adc h
    ld d, e
    rst $10
    ld h, e
    rst $28
    rst $38
    ld h, l
    db $fd
    ld b, e
    rst $18
    ld b, e
    rst $38
    ld h, l
    db $fd
    rst $38
    ld h, a
    db $fd

jr_03f_4aae:
    rst $30
    ldh a, [rIF]
    ld a, a
    ld [$ffeb], sp
    jr nc, jr_03f_4aae

    inc de
    rst $38
    inc de
    rst $18

jr_03f_4abb:
    jr nc, @-$07

    rst $38
    jr c, jr_03f_4abb

    rst $38
    nop
    cp a
    add b
    ld a, a
    ld b, b
    ld a, a
    ld l, a
    rst $28
    ld d, d
    rst $38
    ld d, e
    rst $38
    ld d, d
    cp $e0
    rst $38
    rst $38
    nop
    cp l

jr_03f_4ad4:
    inc a
    jp nz, $c15a

    db $fd
    ld a, a
    ld e, c
    ld a, a
    reti


    rst $38
    ld b, c
    ld a, l
    ld b, e
    ldh [$e0], a
    cp $ae
    and c
    push af
    pop af
    ld a, [bc]
    db $eb
    dec b
    rst $30
    inc b
    ei
    xor a
    ld d, h
    jr nz, jr_03f_4a74

    cp $00
    sbc l
    sbc l
    ld h, e
    rst $38
    ei
    and c
    cp a
    inc h
    cp $e4
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    sbc c
    cp l
    sbc c
    rst $38
    add hl, bc
    ld a, a
    add hl, bc
    or $e2
    ld h, d
    sbc b
    cp $f0
    ld h, d
    ld bc, $1ada
    db $e4
    rst $38
    dec [hl]
    call c, Call_03f_661d
    ld [hl], $e7
    rst $38
    db $ed
    rst $38
    inc c
    di
    ld d, $92
    sbc [hl]
    ld h, c
    ld l, a
    ld hl, $ff7f
    jp nc, Jump_03f_53de

    ld e, [hl]
    inc sp
    cp [hl]
    ld l, $ff
    ld a, h
    rst $38
    rst $38
    ld [$80e9], a
    cp a
    ld b, b
    ld e, [hl]
    cp a
    ld a, d
    ld h, h
    ld a, [hl]
    inc b
    and c
    add d
    cp e
    add $d7
    add hl, sp
    add hl, sp
    ldh a, [$a7]
    cp a
    ld h, a
    db $fd
    ld h, [hl]
    ld [hl], h
    sbc e
    sbc b
    ldh [$a7], a
    ld c, $df
    ld a, a
    adc d

jr_03f_4b54:
    xor e
    ld [hl], l
    ld [hl], c
    ret nc

    and a
    ld b, d
    rst $18
    rst $28
    ld h, d
    ei
    sbc l
    sbc l
    ret nz

    and a
    ld c, l
    db $fd
    ld c, a
    rst $30
    ld sp, hl
    or a
    or c
    or b
    and a
    ld d, h
    db $fd
    ld d, [hl]
    sbc $fb
    xor l
    xor l
    and b
    and a
    inc h
    cp a
    ld h, h
    db $76
    sbc e
    db $fd
    sbc e
    sub b
    and a
    sbc b
    ei
    sub h
    push de
    ld l, e
    ld h, e
    cp [hl]
    ldh [$e8], a
    db $fd
    inc h
    cp a
    db $db
    db $db
    ld [hl], b
    and a
    inc sp
    rra
    cp [hl]
    ld d, e
    ld e, d
    xor l
    adc h
    nop
    rst $18
    rst $38
    rst $38
    db $f4
    di
    rst $38
    sbc $1e
    and c
    dec l
    ld b, c
    ld e, a
    adc [hl]
    xor [hl]
    cp $02
    add b
    rst $30
    sbc c
    rst $38
    adc c
    rst $28
    ei
    inc bc
    rst $38
    db $fc
    dec b
    db $fc
    rlca
    ld [hl], h
    ld [hl], a
    adc h
    xor a
    rst $38
    inc b
    ld [hl], a
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    ld e, e
    dec de
    rst $38
    and h
    xor l
    call nz, $cadf
    ei
    add [hl]
    cp a
    cp a
    add [hl]
    rst $38
    jp z, $cefb

    ei
    jr nz, jr_03f_4b54

    ld a, d
    rst $38
    ld hl, sp+$65
    db $fd
    ld e, d
    ld_long a, $ff42
    ld c, [hl]
    cp $60
    pop bc
    ld a, [de]
    di
    ld e, $f3
    rst $38
    db $10
    ld a, [hl]
    rst $18
    db $10
    rst $18
    ld [hl], d
    rst $38
    ld [hl], d
    ld b, b
    ld b, h
    dec a
    add hl, sp
    rst $08
    add $f7
    ld b, e
    ld a, e
    ldh a, [$a3]
    sbc [hl]
    pop hl
    pop bc
    rst $18
    ld a, a
    ld c, l
    ld a, a
    call Call_03f_41ff
    ld e, a
    ld h, c
    and b
    ld h, d
    rst $38
    rst $38
    nop
    cp e
    cp e
    ld c, h
    ld e, a
    ld c, e
    rst $38
    rst $38
    ld c, b
    rst $38
    ld c, c
    rst $38
    db $fd
    ld bc, $03fe
    rst $38
    jp c, $261b

    daa
    jp nz, $4edf

    ld e, a
    rst $28
    ld h, [hl]
    rst $20
    ld a, [c]
    ei
    or d
    and c
    ld a, a
    ret nz

    ld l, l
    rst $38
    call $da72
    ld l, [hl]
    adc $53
    db $db
    ld [hl], e
    cp $00
    jp nz, $ded2

    ld hl, $212f
    rst $38
    ld [hl], d
    rra
    cp $33
    ld a, $93
    sbc $2e
    rst $38
    rst $38
    rst $38
    nop
    sbc c
    cp a
    inc b
    ld [hl], a
    adc h
    xor [hl]
    ld [hl], e
    ld [hl], e
    nop
    adc b
    ei
    rst $28
    adc $eb
    dec [hl]
    ld sp, $c810
    jp c, Jump_03f_6565

    db $fd
    sbc d
    ldh a, [$a8]
    ld [de], a
    rst $18
    ld [de], a
    ld a, e
    db $ed
    db $ed
    db $f4
    ret nz

    ld h, a
    db $fc
    add b
    ld a, e
    db $10
    ret


    ld e, c
    rst $18
    ld l, c
    rst $08
    ld a, e
    or [hl]
    add [hl]
    and b
    ld h, a
    ld [$8c7b], sp
    xor h
    and b
    jp hl


Call_03f_4c7d:
    cp a
    ld b, d
    ld e, d
    push bc
    push af
    ld a, [hl-]
    jr c, @-$4e

    add sp, -$02
    ei
    ld [de], a
    ld a, a
    or b
    jp hl


    inc de
    sbc $33
    cp d
    call $ccc1
    nop
    rst $18
    rst $38
    rst $38
    db $f4
    di
    ld b, $67
    db $76
    inc bc
    rst $30
    rlca
    rst $38
    add sp, $0b
    ret nc

    rla
    db $e3
    dec hl
    push hl
    inc a
    cp a
    and $3c
    push hl
    dec a
    db $e3
    dec sp
    jr nc, jr_03f_4cb4

    db $db
    ccf
    db $db

jr_03f_4cb4:
    and h
    scf
    db $e4
    rst $38
    inc h
    cp $e0
    ld d, b
    pop bc
    rst $38
    cp $03
    ld h, [hl]
    ld h, a
    sbc b
    db $db
    ldh a, [$f7]
    rst $28
    sub e
    rst $18
    sub e
    rst $38
    ld d, b
    jp $dc5d


    ld h, d
    ld a, a

jr_03f_4cd1:
    ld [$dd4d], a
    ld b, c
    db $fd
    ld c, [hl]
    cp $50
    jp nz, Jump_000_1eff

    pop hl
    cpl
    pop hl
    ccf
    db $d3
    rra
    di
    db $fc
    cp $e0
    ld a, [bc]
    inc hl
    ld [hl], a
    ld [hl], b
    adc e
    xor b
    rlca
    ld [hl], h
    rst $28
    scf
    db $fc
    scf
    db $fc
    sub b
    ld a, l
    xor l
    adc h
    ld d, e
    rst $38
    sub $63
    xor $65
    db $fc
    ld b, e
    sbc $43
    rra
    cp $65
    db $fc
    ld h, a
    db $fc

jr_03f_4d07:
    ld h, b
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    nop
    ld sp, hl
    ldh [$2f], a
    ret nc

    rla
    rst $28
    jr nc, jr_03f_4d20

    rst $28
    db $eb
    jr nc, jr_03f_4cd1

    ld h, b
    ld c, h
    ei
    ld h, b
    ld c, d

jr_03f_4d20:
    db $dd
    ld h, d
    ld l, d
    ld a, e
    sbc l
    sbc h
    jr nz, jr_03f_4d70

    rra
    ld a, [c]
    ld a, [de]
    db $ed
    jr nz, jr_03f_4d76

    ccf
    rlca
    ld [hl], h
    adc e
    xor b
    ld [hl], a
    ld [hl], b
    and b
    daa
    sub b
    ld a, [hl]
    jp Jump_03f_67fc


    sub b
    ld l, d
    nop
    rst $38
    rst $38
    rst $38
    ld a, [$7df9]
    ld a, h
    rst $38
    add e
    cp [hl]
    add e
    ld a, [$fd9d]
    add [hl]
    rst $38
    rst $18
    add [hl]
    rst $30
    sbc [hl]
    rst $38
    adc [hl]
    ld h, b
    add h
    rst $10
    rst $00
    rst $28
    jr z, jr_03f_4d07

    db $10
    sub $40
    ld bc, $00ff
    ld e, e
    rst $38
    ld e, b

jr_03f_4d65:
    and a
    db $f4

jr_03f_4d67:
    and l
    db $fd
    and [hl]
    cp $c4
    rst $38
    db $fd

jr_03f_4d6e:
    inc h
    ccf

jr_03f_4d70:
    ld h, h
    ld a, a
    rst $10
    db $10
    rst $28
    rst $38

jr_03f_4d76:
    jr z, jr_03f_4d67

    jr c, jr_03f_4d65

    ei
    inc l
    db $fd
    jr z, jr_03f_4d6e

    cp e
    jp hl


    rst $38
    jp hl


    jr nz, jr_03f_4d07

    pop hl
    dec l
    and b
    rst $38
    cp [hl]
    ld l, h
    ld a, a
    inc l
    cp a
    and b
    cp $a1
    db $fd
    db $fd
    jr nz, jr_03f_4dd6

    ld a, a
    nop
    or c
    or c
    adc $fe
    rst $18
    or h
    push af
    add h
    rst $30
    sbc h
    jr nc, jr_03f_4da4

    ret nc

jr_03f_4da4:
    sbc a
    rst $38
    ldh a, [$9c]
    db $fc
    inc de
    ei
    ld e, $fe
    jp nc, $fbff

    jp nc, $f7ff

    rlca
    ld hl, sp+$0f
    ld hl, sp-$01
    dec bc
    db $e4
    rst $20
    inc e
    ld [hl], a
    inc e
    rst $30
    call c, $f7f7
    sub h
    or a
    jp nz, $c020

    ld a, a
    ld b, b
    ld a, [$f8ff]
    push bc
    push af
    jp nz, $d2fa

    rst $38
    jp nc, $ffff

    or a

jr_03f_4dd6:
    jr nc, @-$2f

    ld l, b
    rst $08
    ld a, b
    set 7, a
    ei
    inc c
    ld a, a
    dec bc
    rst $38
    ld l, b
    rst $38
    ld l, c
    cp $b0
    ld h, h
    db $76
    ld [hl], $c9
    db $eb
    ld b, c
    ld [hl], a
    ld h, d
    db $e3
    ld a, [hl]
    and d
    nop
    ld e, a
    rst $38
    rst $38
    db $eb
    ld [$bf82], a
    ld b, d
    ld [hl], a
    ld e, e
    cp l
    dec a
    add b
    ld [$98f6], sp
    db $db
    add b
    add hl, bc
    rst $28
    add h
    or l
    adc d
    ld [$4910], a
    jr z, @-$43

    inc l
    rst $30
    db $fd
    db $d3
    db $d3
    ld h, b
    add a
    ld h, $be
    ld h, a
    ld a, h
    cp [hl]
    ldh [$29], a
    add h
    or l
    adc $4e
    or c
    ret nc

    ld l, b
    ld [de], a
    rst $30
    rst $38
    ld [de], a
    sbc $e0
    ld l, c
    ld [$28db], sp
    xor a
    ei
    rst $18
    rst $18
    ret nc

    ld l, b
    ld a, [hl]
    ld d, e
    ei
    xor h
    xor h
    cp [hl]
    ldh [rBCPS], a
    ei
    inc c
    ld l, h
    di
    di
    and b
    xor b
    ld [hl], a
    adc a
    ret


    db $eb
    ld [hl], $36
    nop
    rst $18
    rst $38
    rst $38
    db $f4
    di
    ei
    rst $38
    inc bc
    db $f4
    dec b
    add sp, $0b
    pop af
    dec d
    ld a, [c]
    ld a, a
    ld e, $f3
    ld e, $f2
    ld e, $f1
    dec e
    jr nz, jr_03f_4ea6

    cp a
    rst $20
    rst $20
    add sp, $0a
    ld [hl], b
    ld [hl], a
    nop
    pop bc
    or l
    rst $38
    ld sp, $5aca
    call z, Call_03f_4c7d
    ld a, a
    ret z

    rst $38
    ei
    ld c, b
    ld a, a
    ld c, h
    rst $38
    ld c, h
    rst $38
    xor a
    rst $38
    adc a
    ld [hl], b
    rst $10
    ld [hl], b
    rst $18
    or e
    sbc a
    ld [hl], d
    rst $38
    sbc $72
    sbc $b2
    sbc [hl]
    di
    sbc a
    cp a
    rst $38
    add b
    ld e, a
    ld b, b
    cpl
    and b
    inc e
    ld e, h
    sub e
    rst $38
    ei
    sbc [hl]
    cp $92
    ei
    ld [de], a
    ld a, a
    or $ff
    ld b, $f9

jr_03f_4ea6:
    dec bc
    jp hl


    rrca
    ldh a, [$f7]
    db $10
    cp a
    ld e, a
    add hl, de
    rst $38
    ld l, c
    rst $28
    ld l, c
    db $10
    ld b, d
    ld a, a
    rst $20
    nop
    rst $20
    rst $20

jr_03f_4eba:
    ret nc

    ld h, h
    ld b, $e4
    cp l
    cp h
    ld b, d
    cp a
    ld a, d
    ld b, c
    rst $38
    ld c, h
    cp $4c
    ret nc

    inc h
    cp h
    rst $38
    inc a
    ld b, e
    ld e, e
    add e
    cp a
    or e
    rst $38
    and e
    db $fc
    ldh [rNR41], a
    ld a, [hl]
    jr nz, jr_03f_4ee0

    db $fc
    rst $38
    inc h
    cp a
    ld b, $ff

jr_03f_4ee0:
    rst $30

jr_03f_4ee1:
    add hl, sp
    ld sp, hl
    dec hl
    db $e3
    rst $38
    nop
    scf
    ccf
    jr nc, jr_03f_4eba

    add sp, -$31
    ld hl, sp-$31
    ret


    and b
    ld a, [$f8e1]
    ld l, $ff
    rst $38
    rst $38
    ld [$f0e9], a
    rla
    add sp, $0b
    rst $30
    db $fd
    rlca
    sub b
    ld b, a
    db $10
    rst $30
    jr jr_03f_4ee1

    rst $20
    rst $20
    ld a, [hl]
    add b
    ld b, a
    ld c, h
    ld a, a
    call z, Call_000_33ee
    inc sp
    ld [hl], b
    ld b, a
    rst $18
    ldh a, [$9f]
    ldh a, [$97]
    ld l, a
    ldh [rBCPS], a
    ld [de], a
    sbc $f7
    inc sp
    cp a
    call z, Call_03f_4860
    add hl, de
    rst $38
    add hl, de
    ld e, l
    set 4, [hl]
    and $d0
    ld l, d
    ld a, [$69d0]
    or b
    db $ed
    add c
    rst $30
    rst $28
    adc c
    xor a
    db $76
    db $76
    db $10
    ld b, a
    inc a
    push hl
    inc a
    rst $30
    rst $20
    db $db
    jp Jump_03f_4700


    rrca
    add sp, $17
    ret nc

    inc bc
    rst $28
    ldh [rP1], a
    rst $18
    rst $38
    rst $38
    db $f4
    di
    nop
    nop
    nop
    rst $38
    cp $fe
    ld b, $7f
    inc c
    rrca
    jr c, jr_03f_4f9b

    rst $38
    ld h, b
    ld a, h
    ret nz

    ldh a, [$fe]
    cp $00
    ld a, a
    db $fd
    nop
    rst $38
    db $ec
    ld a, h
    ld a, h
    add $fe
    add $e7
    rst $38
    add $e7
    cp $ff
    add $ff
    add $e7
    db $db
    nop
    ld h, e
    ldh [$ed], a
    db $fc
    db $fc
    ldh [$e1], a
    db $fc
    rst $38
    or $fa
    db $e3
    nop
    ld a, [hl]
    ret nz

    pop af
    ret nz

    db $e3
    ret nz

    ldh [rIE], a
    ret nz

    ldh [$c6], a
    and $7c
    ld a, a
    nop
    ld a, $7e
    and b
    db $ed

jr_03f_4f9b:
    ld hl, sp-$08
    call z, $c6fc
    and $9e
    pop hl
    cp a
    call z, $f8ef
    cp $00
    ld a, h
    add b
    db $ed
    cp $ff
    cp $c0
    rst $38
    ret nz

    ldh [$fc], a
    db $fc
    ret nz

    rst $20
    cp $c0
    ldh [$60], a
    pop af
    ldh [$e9], a
    ret nz

    ldh [rP1], a
    db $ed
    ld h, b
    ld b, b
    db $ed
    ld a, [hl]
    ld a, [hl]
    ret nz

    pop hl

jr_03f_4fc9:
    adc $ee
    add $37
    rst $28
    add $e7
    add b
    pop af
    add $c6
    ld [hl+], a
    rst $20
    jr nz, jr_03f_4fc9

    cp a
    ld a, b
    ld a, b
    jr nc, jr_03f_5019

    jr nc, jr_03f_5017

    cp $e3
    ld a, b
    rst $30
    ld a, b
    nop
    inc a
    and b
    rst $28
    inc c
    ccf
    inc c
    ld c, $7e
    cp $e1
    ld c, h
    ld c, [hl]
    jr c, jr_03f_5031

    nop
    inc e
    and b
    rst $28
    rst $38
    call c, $f0ff
    cp $e0
    ld hl, sp-$10
    ldh a, [$6f]
    call c, $c6fc
    xor $c0
    rst $08
    ret nz

    ret nz

    db $e4
    pop bc
    db $fc
    db $fc
    db $e3
    add b
    pop de
    add $c6
    xor $ef
    xor $ff
    pop af

jr_03f_5017:
    sub $fe

jr_03f_5019:
    ldh [$3e], a
    pop hl
    add b
    rst $08
    add $c6
    and $e7
    rra
    or $f7
    sbc $ff
    adc $20
    ldh [$60], a
    pop de
    ld b, b
    push bc
    nop
    inc a
    pop bc

jr_03f_5031:
    add b
    pop de
    nop
    nop
    nop
    rst $38
    db $fc
    db $fc
    add $fe
    add $e7
    add $e7
    rst $38
    db $fc
    rst $38
    ret nz

    cp $c0
    ldh [rP1], a
    ld h, b
    db $ed
    nop
    rst $38
    db $ec
    ld a, h
    ld a, h
    ldh [$e3], a
    add $e7
    call c, $ff9f
    ld [hl], d
    ld a, [hl]
    nop
    dec sp
    ldh [$ed], a
    ret nz

    db $e3
    db $fc
    db $ed
    rst $38
    cp d
    db $e3
    nop
    ld h, e
    ret nz

    pop af
    ret nz

    rst $20
    ld a, h
    rst $38
    ld a, h
    ld b, $3e
    add $c7
    ld a, h

jr_03f_5070:
    ld a, a
    nop
    cp l
    ld a, $c0
    rst $28
    jr nc, @+$80

    jr nc, jr_03f_50b2

    cp $e5
    nop
    dec c
    jr @-$7e

    db $ed
    add $c6
    add d
    db $e3
    ld e, h
    pop hl
    ret nz

    pop af
    ldh [$e1], a
    rst $38
    xor $ef
    ld l, h
    ld a, a
    ld l, h
    ld a, [hl]
    jr c, jr_03f_50d2

    rst $28
    jr c, jr_03f_50d3

    nop
    inc e
    ret nz

    rst $28
    sub $f7
    sub $b5
    rst $38
    cp $e1
    ld a, h
    call c, Call_000_00e0
    ld [hl], $a0
    rst $28
    xor $ff
    rst $28
    ld a, h
    ld a, a
    jr c, jr_03f_50ee

    ld a, h
    ld a, h

jr_03f_50b2:
    xor $f7
    cp $c6
    rst $30
    ld b, b
    rst $28
    ld h, [hl]
    ld h, [hl]
    ld h, [hl]
    ld [hl], a
    rst $38
    inc a
    ccf
    inc a
    ld a, $18
    ld e, $18
    inc e
    rst $28
    jr @+$1e

    nop
    inc c
    ldh [$cd], a
    cp $fe
    ld b, $ff
    ld a, a

jr_03f_50d2:
    inc c

jr_03f_50d3:
    rrca
    jr c, jr_03f_5114

    ld h, b
    ld a, h
    ret nz

    rst $18
    ldh a, [$fe]
    cp $00
    ld a, a
    ret nz

    push de
    cp $ff
    cp e
    add $ff
    ldh [$d1], a
    ld b, h
    ld b, h
    jr z, jr_03f_5070

    ldh [rNR10], a

jr_03f_50ee:
    sbc $fc
    ld [c], a
    db $10
    jr jr_03f_50f4

jr_03f_50f4:
    ld [$cd80], sp
    ld [hl], b
    ld [hl], b
    sbc $e2
    rst $00
    ld [hl], b
    ld a, b
    nop
    jr c, jr_03f_5161

    call $1818
    ccf
    inc a
    inc a
    ld h, [hl]
    ld a, [hl]
    nop
    inc sp
    ld c, b
    call $f1f2
    rrca
    db $fc
    db $fc
    nop
    ld a, [hl]

jr_03f_5114:
    jp c, Jump_000_00ed

    nop
    nop
    push af
    nop
    rst $38
    add sp, $01
    rst $38
    ldh [rTAC], a
    rlca
    dec de
    ld e, $ff
    ld hl, $213f
    ccf
    ld b, d
    ld a, [hl]
    ld b, l
    ld a, l
    rst $38
    ld b, l
    ld a, l
    ld c, b
    ld a, b
    rlca
    rlca
    jr jr_03f_5155

    rst $38
    jr nz, jr_03f_5178

    ld b, b
    ld a, a
    add b
    rst $38
    add d
    rst $38
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    dec e
    rst $30
    sbc a
    or $ff
    ccf
    ldh [$3f], a
    db $ec
    cp a
    ld a, [$4efb]
    rst $38
    rst $38
    ld c, $ff

jr_03f_5155:
    and b
    ldh a, [$f0]
    inc c
    db $fc
    rst $38
    ld [bc], a
    cp $01
    rst $38
    db $10
    rst $38

jr_03f_5161:
    jr nc, @+$01

    rst $38
    ld [hl], b
    rst $18
    ld hl, sp-$71
    db $fc
    rlca
    db $fc
    scf
    rst $38
    cp $03
    cp $1b
    cp $2f
    rst $28
    add hl, sp
    xor a
    rst $38
    cp b

jr_03f_5178:
    rst $38
    ld [bc], a
    and b
    push hl
    add b
    rst $38
    ldh [rLCDC], a
    rst $38
    ret nz

    ld b, b
    ret nz

    ld [hl], b
    ldh a, [$ec]
    cp h
    ld b, d
    rst $38
    cp $42
    cp $a1
    cp a
    pop de
    ld e, a
    pop de
    rst $38
    ld e, a
    adc c
    adc a
    ld c, b
    ld a, b
    ld e, b
    ld a, b
    ld l, b
    rst $20
    ld l, b
    jr nz, jr_03f_51bf

    ld a, b
    jp hl


    ld [hl], h
    push hl
    ld bc, $0301
    rst $38
    ld [bc], a
    ld a, a
    ld h, c
    rra
    db $10
    rrca
    inc c
    rlca
    rst $38
    rlca
    add hl, de
    rra
    jr c, @+$31

    ld a, l
    ld b, a
    ld a, a
    rst $38
    ld d, e
    cp a
    ldh a, [$df]
    ldh a, [rIE]

jr_03f_51bf:
    or b
    rst $38
    rst $38
    sub b
    rst $38
    db $10
    rst $28
    cpl
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    ld a, a
    jp $84fc


    ld hl, sp+$18
    ldh a, [rIE]
    ldh a, [$cc]
    ld a, h
    adc [hl]
    ld a, [$f15f]
    ld a, a
    ld a, a
    push hl
    cp $87
    db $fd
    rlca
    rst $38
    ld b, $55
    ldh [rIE], a
    inc b
    ei
    ld a, [$feff]
    rst $38
    cp $09
    ccf
    rrca
    dec c
    rrca
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld a, b
    ld [$e174], a
    db $e4
    ld [hl], l
    ldh [$71], a
    ldh [$e0], a
    adc b
    xor $f2
    ret


    inc bc
    inc bc
    ld bc, $016f
    rra
    rra
    ccf
    rst $38
    ld [c], a
    rrca
    ld [$e6fe], sp
    rst $38
    rrca
    rra
    db $10
    ccf
    inc a
    ld b, e
    ld a, a
    ret nz

    ei
    rst $38
    rst $38
    db $fd
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    rst $38
    rst $18
    db $fc
    rst $38
    rst $38
    ld hl, sp-$78
    cp $e6
    ld hl, sp-$04
    ld a, a
    add h
    cp $9e
    pop hl
    rst $38
    add c
    rst $38
    db $fd
    pop hl
    or $98
    pop hl
    add b
    add b
    sbc d
    pop af
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], e
    ret nz

    ret nz

    add b
    rst $38
    add b
    ei
    db $fc
    db $fc
    cp $ff
    ld [c], a
    nop
    add b
    push af
    and b
    rst $30
    add b
    db $e3
    nop
    nop
    nop
    rst $38
    ld c, b
    ld a, b
    ld e, b
    ld a, b
    ld l, b
    ld l, b
    jr nz, @+$22

    push af
    nop
    rst $38
    db $ec
    ld bc, $e2ff
    inc bc
    ld [bc], a
    ld a, a
    ld h, c
    rst $38
    rra
    db $10
    rrca
    inc c
    rlca
    rlca
    add hl, de
    rra
    rst $38
    jr c, @+$31

    ld a, l
    ld b, a
    ld a, a
    ld d, e
    cp a
    ldh a, [rIE]
    rst $18
    ldh a, [rIE]
    or b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    rst $28
    cpl
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    jp $fcff


    inc b
    ld hl, sp+$18
    ldh a, [$f0]
    call z, $ff7c
    adc [hl]
    ld a, [$f15f]
    ld a, a
    push hl
    cp $87
    rst $38
    db $fd
    rlca
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    ei
    ld a, [$feff]
    rst $38
    cp $09
    rrca
    cp a
    dec c
    rrca
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    and b
    push hl
    add b
    sub [hl]
    rst $38
    db $e4
    ret nz

    ld b, b
    cp $e1
    ldh [$88], a
    ld [$e18c], a
    rlca
    rst $38
    rlca
    dec de
    ld e, $21
    ccf
    ld hl, $423f
    rst $38
    ld a, [hl]
    ld b, l
    ld a, l
    ld b, l
    ld a, l
    ld c, b
    ld a, b
    rlca
    rst $38
    rlca
    jr @+$21

    jr nz, @+$41

    ld b, b
    ld a, a
    add b
    ei
    rst $38
    add d
    xor e
    ldh [$0c], a
    rst $38
    dec e
    rst $30
    sbc a
    rst $38
    or $3f
    ldh [$3f], a
    ldh [$bf], a
    ldh [rIE], a
    rst $38
    ld e, b
    rst $38
    ld c, $ff
    and b
    ldh a, [$f0]
    inc c
    rst $38
    db $fc
    ld [bc], a
    cp $01
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    rst $38
    ld [hl], b
    rst $18
    ld hl, sp-$71
    db $fc
    rlca
    db $fc
    rst $30
    scf
    cp $03
    cp $e1
    rst $38
    dec c
    rst $38
    cp b
    ld sp, hl
    rst $38
    adc b
    ld [$e18d], a
    ld [hl], b
    ldh a, [$ec]
    cp h
    ld b, d
    rst $38
    cp $42
    cp $a1
    cp a
    pop de
    ld e, a
    pop de
    rst $30
    ld e, a
    adc c
    adc a
    nop
    db $e3
    jr nc, jr_03f_536c

    inc a
    inc l
    rst $38
    ld a, [hl]
    ld [hl], d
    rst $38
    adc e
    rst $38
    add b
    ld a, a
    ld a, h
    rst $08
    rlca
    inc b
    inc bc
    inc bc
    ld a, [c]
    rst $00
    nop
    push hl
    add hl, sp
    ccf
    rst $38
    ld a, [$7ecf]
    rst $10
    cp [hl]
    di
    rst $38
    ld [hl], c
    ld l, [hl]
    sbc c
    ldh [$d0], a
    rra
    db $10
    ld [$0fc0], a
    rra
    rst $38
    ldh [$fa], a
    nop
    ldh [$84], a
    nop

jr_03f_536c:
    db $e3
    sbc [hl]
    ld a, [c]
    cp a
    pop hl
    rst $38
    ld a, a
    ret


    rst $38
    dec bc
    db $fc
    rrca
    ei
    rrca
    nop
    pop hl
    set 7, a
    db $fc
    cp $e0
    ld hl, sp+$00
    push af
    ld a, [$49c5]
    ld a, c
    rst $38
    ld e, e
    ld a, e
    ld l, a
    ld l, h
    daa
    daa
    rlca
    dec b
    jp c, $e088

    ld [bc], a
    cp $e3
    ld bc, $7201
    rst $00
    rst $38
    ld h, c
    rst $38
    rst $18
    ld d, b
    rst $28
    ld l, h
    rst $30
    sub a
    ld sp, hl
    ccf
    ccf
    ld hl, sp+$4f
    db $fd
    ld d, a
    rst $38
    inc sp
    add hl, de
    ldh [$15], a
    ldh [$fc], a
    ld a, [hl]
    pop hl
    add b
    db $eb
    adc $7e
    adc a
    ld sp, hl
    ld e, a
    pop af
    dec sp
    ld a, [hl]
    db $eb
    add b
    rst $00
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [$80], a
    rlc [hl]
    add [hl]
    rst $00
    add b
    add b
    ld c, $c3
    nop
    nop
    nop
    cp e
    inc bc
    ld [bc], a
    cp $e1
    ld bc, $0001
    rst $38
    xor $01
    rst $38

Jump_03f_53de:
    ld bc, $0303
    ld bc, $ff01
    rra
    rst $38
    ld a, a
    ld e, a
    rst $38
    ld a, a
    cp a
    cp a
    rrca
    ld [$e6fe], sp
    rst $38
    rrca
    rra
    db $10
    ccf
    inc a
    ld b, e
    ld a, a
    ret nz

    ei
    rst $38
    rst $38
    db $fd
    ldh [rIE], a
    db $fc
    rst $38
    db $fd
    rst $38
    rst $18
    rst $38
    cp $fe
    ld hl, sp-$78
    cp $e6
    ld hl, sp-$04
    ld a, a
    add h
    cp $9e
    pop hl
    rst $38
    add c
    rst $38
    db $fd
    pop hl
    db $db
    ldh [rNR41], a
    cp $e1
    ret nz

    ret nz

    and b
    rst $28
    ret nz

    ret nz

    rst $38
    ldh [$e0], a
    ret nz

    ret nz

    ld c, b
    ld a, b
    ld e, b
    ld a, b
    rst $38
    ld l, b
    ld l, b
    jr nc, jr_03f_5460

    inc a
    inc l
    ld a, [hl]
    ld [hl], d
    rst $38
    rst $38
    adc e
    rst $38
    add b
    ld a, a
    ld a, h
    rlca
    inc b
    ei
    inc bc
    inc bc
    ld [hl], d
    rst $20
    ld a, a
    ld h, c
    rra
    db $10
    rrca
    rst $38
    inc c
    rlca
    rlca
    add hl, sp
    ccf
    ld a, [$7ecf]
    rst $38
    rst $10
    cp [hl]
    di
    rst $38
    ld [hl], c
    rst $38
    ld [hl], b
    rst $18
    or a
    ret nc

    rra
    db $10
    ld [$0fe0], a

jr_03f_5460:
    rra
    rst $38
    ldh [$7f], a
    rst $38
    jp $04fc


    ld hl, sp+$18
    ldh a, [$f0]
    call z, Call_03f_7cff
    sbc [hl]
    ld a, [c]
    cp a
    pop hl
    rst $38
    ret


jr_03f_5475:
    rst $38
    ld a, a
    dec bc
    db $fc
    rrca
    ei
    rrca
    rst $38
    inc b
    cp $e0
    db $fd
    db $fc
    ld h, h
    ldh [$f8], a
    add hl, bc
    rrca
    dec c
    rrca
    ld a, [bc]
    rst $10
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    jr nz, jr_03f_5475

    add b
    rst $38
    ld [$40c0], a
    rst $38
    ld c, c
    ld a, c
    ld e, e
    ld a, e
    ld l, a
    ld l, h
    daa
    daa
    db $e3
    rlca
    dec b
    adc b
    ldh [$f4], a
    jp nz, $cbf2

    rst $38
    ld h, c
    rst $18
    rst $38
    ld d, b
    rst $28
    ld l, h
    rst $30
    sub a
    ld sp, hl
    ccf
    ld hl, sp-$01
    ld c, a
    db $fd
    ld d, a
    rst $38
    inc sp
    rst $38
    jr nc, @+$01

    rst $20
    db $10
    rst $38
    jr nc, jr_03f_553f

    pop hl
    add b
    db $eb
    adc $7e
    adc a
    rst $38
    ld sp, hl
    ld e, a
    pop af
    ld a, [hl]
    db $eb
    cp $87
    db $fd
    scf
    rlca
    rst $38
    ld b, $80
    ld [c], a
    rst $38
    db $fc
    rst $38
    ldh [$80], a
    db $eb
    call z, $e38c
    cp $e1
    add b
    add b
    adc [hl]
    rst $08
    ld a, h
    rlc e
    inc bc
    rst $18
    rlca
    rlca
    inc bc
    inc bc
    ccf
    rst $38
    db $e4
    rra
    ld de, $fefe
    and $1f
    ccf
    ld hl, $3d3f
    ld b, e
    ld a, a
    sub a
    pop bc
    rst $38
    rst $38
    db $fd
    ldh [$f8], a
    rst $38
    ldh [$98], a
    pop hl
    ld a, h
    sbc a
    ld b, h
    ld a, h
    ld b, h
    ld a, $22
    cp $e1
    ld [$11c0], a
    rst $38
    ld e, $13
    inc e
    rra
    pop af
    cp $ff
    pop af
    db $db
    rst $38
    rst $38
    sbc d
    pop af
    ret nz

    ret nz

    ld l, e
    pop bc
    ldh [rNR41], a
    rrca
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    ld [c], a
    ld bc, $0201
    inc bc
    ld [bc], a
    inc bc
    rst $38
    inc b
    rlca
    inc b
    rlca

jr_03f_553f:
    inc c
    rrca
    ld e, $1b
    rst $38
    inc h
    ccf
    ld b, h
    ld a, a
    ld b, [hl]
    ld a, a
    add a
    db $fd
    rst $38
    adc a
    db $fc
    adc e
    ld a, [$1f1f]
    ld h, b
    ld a, a
    rst $30
    add b
    rst $38
    nop
    cp $e0
    ld [$11ff], sp
    rst $38
    rst $38
    inc sp
    cp $77
    call c, $d87f
    rst $38
    add b
    cp $fe
    ld [c], a
    ld h, b
    rst $38
    ld a, [hl-]
    rst $38
    add b
    ret nz

    ret nz

    rst $38
    jr nc, @-$0e

    ld [$04f8], sp
    db $fc
    ld b, d
    cp $ff
    jp nz, $c1fe

    ld a, a
    pop hl
    ccf
    pop af
    rra
    rst $38
    di
    sbc $f9
    rrca
    ld sp, hl
    ld l, a
    ld a, [$3fbe]
    cp a
    push hl
    rst $38
    pop hl
    cp $0a
    and b
    db $e3
    ld a, [$f7e7]
    ret nz

    ret nz

    or b
    ret nc

    ldh [$84], a
    db $fc
    ld b, h
    ld a, h
    cp a
    ld [hl+], a
    ld a, $22
    ld a, $12
    ld e, $e0
    rst $20
    db $10
    ccf
    nop
    jr c, jr_03f_55b0

jr_03f_55b0:
    inc l
    nop
    rrca
    cp $e6
    add $ed
    rst $38
    inc b
    nop
    ld c, $00

jr_03f_55bc:
    ld a, [de]
    nop
    ld a, b
    nop
    ld sp, hl
    ld hl, sp-$02
    db $e4
    and [hl]
    db $ed
    jr nc, jr_03f_55c8

jr_03f_55c8:
    jr z, jr_03f_55ca

jr_03f_55ca:
    inc c
    db $fc
    call c, $c0e0
    push af
    inc c
    nop
    ld e, $00
    ld [hl], $00
    ld b, a
    db $f4
    nop
    ldh a, [$fe]
    ldh [$c0], a
    rst $30
    add b
    rst $30
    ld b, $80
    ldh [$d1], a
    inc d
    add b
    ld hl, sp+$3e
    pop hl
    ld [de], a
    rst $20
    inc e
    rlca
    db $ec
    ld [$5500], sp
    jr jr_03f_5613

    ldh [rNR23], a
    ld hl, sp-$20
    ld [$e214], sp
    jr nc, jr_03f_55bc

    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    nop
    nop
    nop
    rst $38
    adc c
    ld sp, hl
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld e, c
    ld a, c
    cp a

jr_03f_5613:
    add hl, hl
    add hl, hl
    ld hl, $0321
    ld [bc], a
    cp $e1
    ld bc, $01fb
    nop
    rst $38
    add sp, -$01
    ld [c], a
    rst $38
    db $10
    rst $38
    rst $38
    ld [$1fff], sp
    di
    ld e, $f1
    ccf
    ld a, [$2fff]
    cp $3f
    rst $38
    daa
    rst $38
    ld b, b
    rst $38
    rst $38
    add b
    ld a, a
    ld a, h
    ccf
    inc hl
    rra
    rra
    ccf
    cp $ff
    ldh [$fc], a
    inc c
    ldh a, [rNR10]
    ldh [$60], a
    sbc b
    rst $38
    ld hl, sp-$64
    db $f4
    inc a
    db $e4
    db $fc

jr_03f_5652:
    call nz, $ffbc
    db $e4
    call c, $ecf4
    inc [hl]
    ld hl, sp+$18
    ld hl, sp-$11
    jr z, @-$06

    ret z

    ldh a, [rIE]
    ldh [$f8], a
    ld hl, sp+$1a
    sbc a
    ld e, $14
    inc d
    inc b
    inc b
    xor [hl]
    jp hl


    db $f4
    pop af
    rrca
    rst $38
    rrca
    ld d, $19
    cpl
    jr nc, jr_03f_56b8

    jr nz, jr_03f_56da

    rst $38
    ld h, b
    ld l, a
    ld [hl], b
    sbc a
    ldh [$bf], a
    ret nz

    ld e, c
    rst $38
    ld h, [hl]
    ld a, [hl+]
    scf
    dec d
    dec de
    add hl, bc
    rrca
    ld b, $ff
    ld b, $00
    nop
    inc e
    inc e
    ld a, [hl+]
    ld [hl], $de
    rst $38
    ld [c], a
    cp d
    add $74
    adc h
    add sp, $18
    ret nc

    ld a, a
    jr nc, jr_03f_5652

    ld [hl], b
    xor b
    ld e, b
    ld hl, sp+$08
    or $e1
    set 4, b
    ldh [$58], a
    ld [c], a
    inc bc
    cp $e0
    ret nz

    ldh [$1f], a
    ld de, $3eff
    inc hl

jr_03f_56b8:
    ld a, [hl]
    ld b, e
    ld a, [hl]
    ld c, a
    ld [hl], d
    ld a, a
    rst $38
    ld h, $3f
    ld a, $3f
    rra
    inc de
    ccf
    ld hl, $7fff
    ld b, h
    ld a, a
    ld c, a
    ld a, a
    ld a, b
    add b
    ldh [rIE], a
    nop
    ldh [$80], a
    add b
    ldh a, [$f0]
    ld [$f7f8], sp

jr_03f_56da:
    inc b
    db $fc
    call c, $e2fe
    inc b
    db $fc
    inc h
    db $fc
    rst $38
    rrca
    rst $38
    rst $38
    pop af
    cp $0a
    sbc h
    db $fc
    db $db
    ld hl, sp-$18
    cp [hl]
    db $fd
    nop
    nop
    cp [hl]
    di
    inc c
    db $fc
    cp a
    db $fc
    db $f4
    cp $0a
    sbc [hl]
    ld a, [$c5d4]
    ld bc, $00ff
    ld [bc], a
    ld bc, $0205
    ld a, [bc]
    inc b
    inc d
    rra
    ld [$0814], sp
    jr z, @+$12

    cp $e3
    db $f4
    pop hl
    ld [hl+], a
    ld [c], a
    rst $38
    nop
    ld [hl], b
    rrca
    adc a
    ld [hl], b
    ld [hl], b
    add b
    add b
    cp $f9
    call nc, Call_000_00f8
    inc b
    ld hl, sp-$0c
    ld [$fc04], sp
    cp $f2
    ld [hl], h
    pop bc
    rra
    nop
    jr nz, jr_03f_5751

    cpl
    db $10
    ld sp, hl

jr_03f_5735:
    jr nz, jr_03f_5735

    ld a, [c]
    ld d, h
    pop bc
    ldh a, [rP1]
    ld c, $f0
    pop af
    di
    ld c, $0e
    ld b, a
    res 1, l
    call z, Call_000_0080
    ld b, b
    add b
    rrca
    and b
    ld b, b
    ld d, b
    jr nz, jr_03f_57b8

    push hl

jr_03f_5751:
    ld e, b
    push hl
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    or $03
    inc bc
    rlca
    rlca
    inc bc
    inc bc
    db $ed
    ccf
    rst $38
    db $e4
    rra
    ld de, $e6fe
    rra
    ccf
    ld hl, $3f7f
    dec a
    ld b, e
    ld a, a
    pop bc
    rst $38
    rst $38
    db $fd
    ldh [$f5], a
    ld hl, sp-$01
    ldh [$fc], a
    rst $38

jr_03f_577b:
    ldh [$7c], a
    ld b, h
    ld a, h
    ld b, h
    db $db
    ld a, $22
    cp $e1
    rra
    rra
    call nc, $13e0
    inc e
    rst $08
    rra
    ldh a, [rIE]
    rst $38
    db $fd
    ldh [$a0], a
    di
    ret nz

    ret nz

    rst $38
    jr nz, @-$1e

    jr nz, jr_03f_577b

    ldh a, [$30]
    ldh [$e0], a
    ld hl, sp-$80
    rst $30
    rst $38
    rst $38
    ld b, h
    pop hl
    rra
    db $10
    rra
    rra
    ld [$0fdf], sp
    add hl, bc
    rrca
    ld b, $06
    ld [hl], $f3
    ld hl, sp+$08
    rst $38
    ldh a, [$f0]

jr_03f_57b8:
    sub b
    ldh a, [$a0]
    ldh [$c0], a
    ret nz

    or [hl]
    ld d, $f3
    ld a, a
    ld a, b
    cp [hl]
    ei
    db $fc
    db $ec
    cp [hl]
    ei
    ld a, [bc]
    cp a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $5701
    ld hl, sp-$80
    rst $38
    nop
    ld [hl], b
    add b
    adc a
    ld [hl], b
    ld [hl], b
    rrca
    rrca
    or $95
    jp nc, Jump_000_0804

    cp $e1
    db $f4
    ld [$f804], sp
    db $ed
    ld hl, sp+$75
    jp nc, $1020

    cp $e1
    cpl
    db $10
    jr nz, @-$03

    rra
    rra
    ld d, l
    call nc, Call_000_0001
    ld c, $01
    pop af
    rst $28
    ld c, $0e
    ldh a, [$f0]
    dec [hl]
    jp nc, Jump_000_2050

    and b
    rrca
    ld b, b
    ld b, b
    add b
    add b
    or a
    sub $00
    nop
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    ccf
    nop
    nop
    nop
    rra
    nop
    add b
    ld l, b
    di
    inc bc
    ld b, $00
    ldh [$7f], a
    rst $38
    nop
    add b
    ld a, l
    nop
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    adc $7e
    nop
    nop
    ldh [$7f], a
    rst $38
    nop
    rst $38
    ld h, a
    nop
    nop
    ldh [$7f], a
    ld e, a
    ld d, $ff
    inc bc
    nop
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    ld d, h
    ld bc, $0000
    ldh [$7f], a
    ld [hl], a
    add hl, hl
    rst $18
    inc bc
    nop
    nop
    rra
    nop
    nop
    ld [bc], a
    di
    inc bc
    ld b, $00
    ldh [$7f], a
    rst $38
    nop
    add b
    ld a, l
    nop
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    adc $7e
    nop
    nop
    ldh [$7f], a
    rst $38
    nop
    rst $38
    ld h, a
    nop
    nop
    ldh [$7f], a
    ld e, a
    ld d, $ff
    inc bc
    nop
    nop
    ld e, a
    ld d, $ff
    ld l, e
    ld d, h
    ld bc, $0000
    ldh [$7f], a
    sbc l
    ld e, a
    nop
    ld d, b
    nop
    nop
    rra
    nop
    inc e
    ld b, c
    di
    inc bc
    ld b, $00
    ldh [$7f], a
    rst $38
    nop
    add b
    ld a, l
    nop
    nop
    ldh [$7f], a
    rst $38
    ld l, e
    adc $7e
    nop
    nop
    ldh [$7f], a
    rst $38
    nop
    rst $38
    ld h, a
    nop
    nop
    ldh [$7f], a
    ld e, a
    ld d, $ff
    inc bc
    nop
    nop
    ld e, a
    ld d, $ff
    ld l, e
    ld d, h
    ld bc, $0000

Call_03f_58b9:
    ld a, [$d614]
    cp $03
    jr nc, jr_03f_58ca

    ld a, $04
    ld [$d614], a
    ld a, $ff
    ld [$d619], a

jr_03f_58ca:
    ret


Call_03f_58cb:
    ld a, $b4
    ld [$d619], a
    ldh a, [$8c]
    and $03
    cp $03
    jr nz, jr_03f_58d9

    xor a

jr_03f_58d9:
    ld [$d614], a
    ret


    ldh a, [$96]
    push af
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $30
    jr nz, jr_03f_58f0

    jr z, jr_03f_58f4

    rst $08

jr_03f_58f0:
    sub b
    call Call_03f_58cb

jr_03f_58f4:
    ld a, [$d614]
    cp $04
    jr nz, jr_03f_590b

    ld a, [$d619]
    dec a
    ld [$d619], a
    jr nz, jr_03f_5924

    ld a, $03
    ld [$d614], a
    jr jr_03f_5924

jr_03f_590b:
    cp $03
    jr nz, jr_03f_5911

    jr jr_03f_5924

jr_03f_5911:
    ld a, [$d619]
    dec a
    ld [$d619], a
    jr nz, jr_03f_5924

    ld a, $04
    ld [$d614], a
    ld a, $ff
    ld [$d619], a

jr_03f_5924:
    ld a, [$d610]
    cp $06
    jp nz, Jump_03f_59d5

    ld a, [$d615]
    dec a
    ld [$d615], a
    jr nz, jr_03f_5946

    ld a, $08
    ld [$d615], a
    ld a, [$d616]
    inc a
    cp $10
    jr nz, jr_03f_5943

    xor a

jr_03f_5943:
    ld [$d616], a

jr_03f_5946:
    ld hl, $5ad0
    ld a, [$d614]
    add a
    add a
    add a
    add a
    add l
    ld l, a
    jr nc, jr_03f_5955

    inc h

jr_03f_5955:
    ld a, [$d616]
    add l
    ld l, a
    jr nc, jr_03f_595d

    inc h

jr_03f_595d:
    ld a, [hl]
    add a
    add a
    add a
    push af
    pop af
    ld hl, $5b20
    add l
    ld l, a
    jr nc, jr_03f_596b

    inc h

jr_03f_596b:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [$d613]
    bit 1, a
    jr z, jr_03f_597b

    ld de, $907e
    jr jr_03f_597e

jr_03f_597b:
    ld de, $707e

jr_03f_597e:
    push hl
    ld hl, $5b78
    call Call_000_26ea
    pop hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [$d613]
    bit 1, a
    jr z, jr_03f_5996

    ld de, $886e
    jr jr_03f_5999

jr_03f_5996:
    ld de, $686e

jr_03f_5999:
    push hl
    ld hl, $5b81
    call Call_000_26ea
    pop hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [$d613]
    bit 1, a
    jr z, jr_03f_59b1

    ld de, $887e
    jr jr_03f_59b4

jr_03f_59b1:
    ld de, $687e

jr_03f_59b4:
    push hl
    ld hl, $5b81
    call Call_000_26ea
    pop hl
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    ld a, [$d613]
    bit 1, a
    jr z, jr_03f_59cc

    ld de, $888e
    jr jr_03f_59cf

jr_03f_59cc:
    ld de, $688e

jr_03f_59cf:
    ld hl, $5b81
    call Call_000_26ea

Jump_03f_59d5:
    ld a, [$d613]
    bit 1, a
    jr z, jr_03f_5a56

    ld a, [$d613]
    bit 0, a
    jr nz, jr_03f_59ea

    ld a, [$d61a]
    inc a
    ld [$d61a], a

jr_03f_59ea:
    ld a, [$d60a]
    ld b, a
    inc b
    ld a, $14
    ld e, $10
    sub e

jr_03f_59f4:
    add e
    dec b
    jr nz, jr_03f_59f4

    add e
    add $14
    ld e, a
    ld hl, $5a90
    ld a, [$d61a]
    and $0f
    add l
    ld l, a
    jr nc, jr_03f_5a09

    inc h

jr_03f_5a09:
    ld a, [hl]
    add $0a
    ld d, a
    ld hl, $5ac7
    ld bc, $0b28
    call Call_000_26ea
    ld a, [$d613]
    bit 2, a
    jr z, jr_03f_5a29

    ld hl, $5aa0
    ld de, $1810
    ld bc, $0d34
    call Call_000_26ea

jr_03f_5a29:
    ld a, [$d613]
    bit 3, a
    jr z, jr_03f_5a3c

    ld hl, $5aa0
    ld de, $8810
    ld bc, $0d3a
    call Call_000_26ea

jr_03f_5a3c:
    ld hl, $5ac2
    ld de, $2018
    ld bc, $0860
    call Call_000_26ea
    ld hl, $5ac2
    ld de, $9018
    ld bc, $0864
    call Call_000_26ea
    jr jr_03f_5a86

jr_03f_5a56:
    ld a, [$d60a]
    cp $09
    jr c, jr_03f_5a71

    cp $12
    jr c, jr_03f_5a69

    ld d, $98
    ld b, $02
    sub $12
    jr jr_03f_5a75

jr_03f_5a69:
    ld d, $90
    sub $09
    ld b, $01
    jr jr_03f_5a75

jr_03f_5a71:
    ld d, $88
    ld b, $ff

jr_03f_5a75:
    add a
    add a
    add a
    add a
    add $10
    add b
    ld e, a
    ld hl, $5ab9
    ld bc, $0e60
    call Call_000_26ea

jr_03f_5a86:
    pop hl
    pop de
    pop bc
    pop af
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    nop
    ld bc, $0201
    inc bc
    inc b
    ld b, $08
    ld b, $04
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    stop
    jr nz, jr_03f_5aa8

jr_03f_5aa8:
    nop
    ld [$0002], sp
    db $10
    ld [$0022], sp
    nop
    db $10
    inc b
    nop
    db $10
    db $10
    inc h
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp
    add b
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
    ld [$0002], sp
    add b
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    ld bc, $0100
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    dec b
    inc b
    inc bc
    inc b
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld [$0607], sp
    rlca
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
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
    nop
    nop
    ld [$0009], sp
    nop
    jr nz, jr_03f_5b26

jr_03f_5b26:
    ld b, b
    nop
    ld [$0009], sp
    nop
    ld [$4000], sp
    nop
    ld [$2809], sp
    nop
    jr nz, jr_03f_5b36

jr_03f_5b36:
    ld b, b
    nop
    inc c
    add hl, bc
    nop
    nop
    ld c, b
    nop
    stop
    inc c
    add hl, bc
    nop
    nop
    jr nc, jr_03f_5b46

jr_03f_5b46:
    stop
    inc c
    add hl, bc
    jr z, jr_03f_5b4c

jr_03f_5b4c:
    ld c, b
    nop
    stop
    db $10
    add hl, bc
    nop
    nop
    ld d, b
    nop
    jr jr_03f_5b58

jr_03f_5b58:
    db $10
    add hl, bc
    nop
    nop
    jr c, jr_03f_5b5e

jr_03f_5b5e:
    jr jr_03f_5b60

jr_03f_5b60:
    db $10
    add hl, bc
    jr z, jr_03f_5b64

jr_03f_5b64:
    ld d, b
    nop
    jr jr_03f_5b68

jr_03f_5b68:
    inc d
    add hl, bc
    nop
    ld [$0820], sp
    ld b, b
    ld [$0914], sp
    nop
    ld [$0820], sp
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp
    add b
    nop
    nop
    nop
    nop
    nop
    ld [$0002], sp
    nop
    db $10
    inc b
    nop
    nop
    jr jr_03f_5b96

    nop
    add b

Call_03f_5b92:
    push af
    push bc
    push de
    push hl

jr_03f_5b96:
    ld [hl+], a
    dec c
    jr nz, jr_03f_5b96

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03f_5b9f:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5dfc
    ld c, $00
    ld a, [$d60e]
    ld d, a

jr_03f_5bae:
    ld a, [hl+]
    cp $00
    jr z, jr_03f_5bae

    cp $40
    jr z, jr_03f_5bbd

    and d
    jr z, jr_03f_5bae

    inc c
    jr jr_03f_5bae

jr_03f_5bbd:
    ld a, c
    ld [$d60b], a
    ret


Call_03f_5bc2:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5dfc
    ld c, $00

jr_03f_5bcd:
    ld a, [hl+]
    cp $40
    jr nz, jr_03f_5bcd

    dec hl
    ld a, h
    ld [$d60c], a
    ld a, l
    ld [$d60d], a
    ret


Call_03f_5bdc:
    ld d, $00
    ld c, a
    inc c
    ld hl, $5dfc

jr_03f_5be3:
    ld a, [hl+]
    cp $00
    jr z, jr_03f_5be3

    inc d
    and b
    jr z, jr_03f_5be3

    dec c
    jr nz, jr_03f_5be3

    dec d
    ld a, d
    ret


Call_03f_5bf2:
    ld d, $00
    ld c, a
    inc c
    ld hl, $5dfc

jr_03f_5bf9:
    ld a, [hl+]
    cp $00
    jr z, jr_03f_5bf9

    inc d
    and b
    jr z, jr_03f_5bf9

    dec c
    jr nz, jr_03f_5bf9

    cp $01
    jr z, jr_03f_5c18

    cp $02
    jr z, jr_03f_5c1a

    cp $04
    jr z, jr_03f_5c1d

    cp $08
    jr z, jr_03f_5c20

    ld a, $04
    ret


jr_03f_5c18:
    xor a
    ret


jr_03f_5c1a:
    ld a, $01
    ret


jr_03f_5c1d:
    ld a, $02
    ret


jr_03f_5c20:
    ld a, $03
    ret


Call_03f_5c23:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d60b]
    ld d, a
    ld a, [$d60a]
    ld c, a
    ld a, [$d609]
    add c
    cp d
    jr c, jr_03f_5c39

    sub d

jr_03f_5c39:
    ret


Call_03f_5c3a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5dfc
    call Call_03f_5c23
    ld b, a
    ld c, a
    inc b
    xor a
    ld [$d60a], a
    ld a, [$d60e]
    ld e, a
    jr jr_03f_5c65

Call_03f_5c53:
    push af
    ld a, [$d60b]
    dec a
    ld c, a
    ld a, [$d60c]
    ld h, a
    ld a, [$d60d]
    ld l, a
    dec hl
    dec hl
    pop af
    ret


jr_03f_5c65:
    ld a, [hl+]
    and e
    jr z, jr_03f_5c65

    dec b
    jr nz, jr_03f_5c65

    dec hl

jr_03f_5c6d:
    ld a, [hl-]
    ld d, a
    and e
    jr z, jr_03f_5c73

    dec c

jr_03f_5c73:
    ld a, d
    cp $40
    jr z, jr_03f_5c7e

    cp $00
    jr nz, jr_03f_5c6d

    jr jr_03f_5c81

jr_03f_5c7e:
    call Call_03f_5c53

jr_03f_5c81:
    ld a, [hl-]
    cp $40
    jr nz, jr_03f_5c89

    call Call_03f_5c53

jr_03f_5c89:
    and e
    jr z, jr_03f_5c81

    dec c

jr_03f_5c8d:
    ld a, [hl-]
    ld d, a
    and e
    jr z, jr_03f_5c93

    dec c

jr_03f_5c93:
    ld a, d
    cp $40
    jr z, jr_03f_5ca0

    cp $00
    jr nz, jr_03f_5c8d

    inc hl
    inc c
    jr jr_03f_5ca4

jr_03f_5ca0:
    call Call_03f_5c53
    inc hl

jr_03f_5ca4:
    ld a, [hl+]
    cp $40
    jr nz, jr_03f_5cb0

    ld c, $00
    ld hl, $5dfc
    jr jr_03f_5ca4

jr_03f_5cb0:
    and e
    jr z, jr_03f_5ca4

    ld a, c
    ld [$d609], a
    ret


Call_03f_5cb8:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5dfc
    ld a, [$d60b]
    ld b, a
    ld a, [$d60a]
    ld c, a
    ld a, [$d609]
    add c
    cp b
    jr c, jr_03f_5cd1

    sub b

jr_03f_5cd1:
    ld b, a
    ld d, a
    inc b
    xor a
    ld [$d60a], a
    ld a, [$d60e]
    ld e, a

jr_03f_5cdc:
    ld a, [hl+]
    and e
    jr z, jr_03f_5cdc

    dec b
    jr nz, jr_03f_5cdc

jr_03f_5ce3:
    ld a, [hl+]
    cp $00
    jr z, jr_03f_5cf7

    ld c, a
    and e
    jr z, jr_03f_5ced

    inc d

jr_03f_5ced:
    ld a, c
    cp $40
    jr nz, jr_03f_5ce3

    ld hl, $5dfc
    ld d, $ff

jr_03f_5cf7:
    inc d

jr_03f_5cf8:
    ld a, [hl+]
    cp $40
    jr nz, jr_03f_5d02

    ld hl, $5dfc
    ld d, $00

jr_03f_5d02:
    and e
    jr z, jr_03f_5cf8

    ld a, d
    ld [$d609], a
    ret


Call_03f_5d0a:
    rst $18
    inc e
    inc bc
    ld a, [$c372]
    xor $08
    ld [$c372], a
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $0e
    ld hl, $444d

jr_03f_5d20:
    push bc
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    push hl
    ld h, d
    ld l, e
    ld a, $20
    call Call_03f_5b92
    pop hl
    pop bc
    dec c
    jr nz, jr_03f_5d20

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld a, [$d609]
    ld b, a
    inc b
    ld hl, $5dfc
    ld a, [$d60e]
    ld e, a

jr_03f_5d4a:
    inc c

jr_03f_5d4b:
    ld a, [hl+]
    cp $00
    jr z, jr_03f_5d4b

    and e
    jr z, jr_03f_5d4a

    dec b
    jr nz, jr_03f_5d4a

    dec c
    dec hl
    ld b, $00
    push af
    push bc
    push de
    push hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af

jr_03f_5d68:
    inc c

jr_03f_5d69:
    ld a, [hl+]
    cp $00
    jr z, jr_03f_5d69

    cp $40
    jr nz, jr_03f_5d79

    ld hl, $5dfc
    ld c, $00
    jr jr_03f_5d68

jr_03f_5d79:
    and e
    jr z, jr_03f_5d68

    dec c
    push hl
    ld hl, $1a2b
    ld a, c
    add l
    ld l, a
    jr nc, jr_03f_5d87

    inc h

jr_03f_5d87:
    inc c
    inc b
    push de
    push bc
    ld de, $d0d0

jr_03f_5d8e:
    ld a, $80
    add e
    ld e, a
    jr nc, jr_03f_5d95

    inc d

jr_03f_5d95:
    dec b
    jr nz, jr_03f_5d8e

    pop bc
    ld a, c
    ld c, $40
    rst $18
    ld [hl+], a
    dec b
    ld c, a
    call Call_03f_6142
    pop de
    pop hl
    ld a, b
    cp $06
    jr nz, jr_03f_5d68

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    call Call_03f_5dba
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_03f_5dba:
    call Call_03f_5c23
    ld b, a
    inc b
    ld a, [$d60e]
    ld e, a
    ld hl, $5dfc
    ld d, $00

jr_03f_5dc8:
    ld a, [hl+]
    cp $00
    jr nz, jr_03f_5dd0

    inc d
    jr jr_03f_5dc8

jr_03f_5dd0:
    and e
    jr z, jr_03f_5dc8

    dec b
    jr nz, jr_03f_5dc8

    push af
    push bc
    push de
    push hl
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ld hl, $d000
    ld a, d
    rrca
    rrca
    rrca
    ld b, a
    and $e0
    ld c, a
    xor b
    ld b, a
    add hl, bc
    ld de, $a600
    ld c, $10
    call Call_000_0468
    ret


    ld b, b
    ld [$0101], sp
    ld [bc], a
    ld [bc], a
    ld [$0101], sp
    ld bc, $0101
    nop
    ld bc, $0808
    inc b
    inc b
    db $10
    ld bc, $0101
    ld bc, $1002
    ld [bc], a
    nop
    ld bc, $0101
    ld [$0408], sp
    ld bc, HeaderLogo
    ld bc, $1004
    db $10
    ld bc, $1002
    db $10
    db $10
    ld bc, $0800
    db $10
    ld bc, HeaderLogo
    db $10
    ld [bc], a
    ld [bc], a
    ld [$0408], sp
    ld bc, $0802
    nop
    ld [bc], a
    ld [bc], a
    ld [$0400], sp
    ld [$1010], sp
    inc b
    ld [$0108], sp
    inc b
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $1001
    db $10
    db $10
    inc b
    ld [bc], a
    stop
    ld [bc], a
    db $10
    inc b
    db $10
    db $10
    ld [bc], a
    ld [bc], a
    ld bc, $0802
    nop
    ld [$0808], sp
    inc b
    nop
    nop
    nop
    db $10
    ld bc, $1001
    ld [$1004], sp
    inc b
    ld bc, $0100
    ld [bc], a
    ld [$1001], sp
    inc b
    ld [$0010], sp
    ld bc, $0204
    nop
    db $10
    ld bc, $0801
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $1002
    ld [$0204], sp
    db $10
    inc b
    ld [$0000], sp
    inc b
    ld [$0210], sp
    ld bc, $0008
    ld bc, $0204
    ld [bc], a
    db $10
    inc b
    ld [$0410], sp
    ld bc, $1001
    ld bc, $0108
    inc b
    ld [$0804], sp
    ld bc, $1002
    ld [bc], a
    ld bc, $0400
    db $10
    db $10
    ld bc, $0801
    ld [$0101], sp
    ld [bc], a
    ld [$0200], sp
    ld bc, $0802
    nop
    ld bc, $1000
    db $10
    inc b
    inc b
    nop
    nop
    ld bc, $0801
    nop
    ld b, b

Call_03f_5ed2:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld hl, $5dfc
    ld a, [$d60e]
    ld e, a
    ld a, [$d60a]
    ld b, a
    or a
    jr z, jr_03f_5efa

jr_03f_5ee8:
    ld a, [hl+]
    and e
    jr z, jr_03f_5eed

    inc c

jr_03f_5eed:
    cp $40
    jr z, jr_03f_5efa

    cp $00
    jr nz, jr_03f_5ee8

    dec b
    jr nz, jr_03f_5ee8

    jr jr_03f_5f02

jr_03f_5efa:
    xor a
    ld [$d60a], a
    ld [$d609], a
    ret


jr_03f_5f02:
    xor a
    ld [$d60a], a
    ld a, [$d60b]
    cp c
    jr nz, jr_03f_5f11

    xor a
    ld [$d609], a
    ret


jr_03f_5f11:
    ld a, c
    ld [$d609], a
    ret


Call_03f_5f16:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d60e]
    ld b, a
    call Call_03f_5c23
    ld b, a
    inc b
    ld c, $00
    ld hl, $5dfc
    ld a, [$d60e]
    ld e, a

jr_03f_5f2e:
    ld a, [hl+]
    and e
    jr z, jr_03f_5f37

    dec b
    jr nz, jr_03f_5f2e

    jr jr_03f_5f47

jr_03f_5f37:
    cp $40
    jr z, jr_03f_5f42

    cp $00
    jr nz, jr_03f_5f2e

    inc c
    jr jr_03f_5f2e

jr_03f_5f42:
    xor a
    ld [$d60a], a
    ret


jr_03f_5f47:
    ld a, c
    ld [$d60a], a
    ret


Call_03f_5f4c:
    or a
    jr z, jr_03f_5f6c

    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld a, b
    rrca
    rrca
    ld b, a
    and $c0
    ld c, a
    xor b
    ld b, a
    add hl, bc
    ld de, $a600
    ld c, $20
    call Call_000_0468
    jr jr_03f_5f6c

jr_03f_5f6c:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_03f_5f73:
    push bc
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ldh a, [$94]
    bit 0, a
    jr z, jr_03f_5f8a

    pop af
    rst $08
    adc [hl]
    ld a, $04
    push af
    jp Jump_03f_6014


jr_03f_5f8a:
    bit 1, a
    jr z, jr_03f_5f96

    pop af
    rst $08
    ld e, l
    ld a, $01
    push af
    jr jr_03f_6014

jr_03f_5f96:
    ldh a, [$91]
    bit 6, a
    jr z, jr_03f_5fbd

    ld a, [$d60a]
    ld b, a
    dec a
    cp $ff
    jr z, jr_03f_6014

    ld [$d60a], a
    push af
    xor a
    call Call_03f_5f4c
    pop af
    rst $08
    adc e
    ld a, [$d60a]
    ld b, a
    ld a, $01
    call Call_03f_5f4c
    ld a, $01
    jr jr_03f_6014

jr_03f_5fbd:
    bit 7, a
    jr z, jr_03f_5fe2

    ld a, [$d60a]
    ld b, a
    inc a
    cp $1a
    jr z, jr_03f_6014

    ld [$d60a], a
    push af
    xor a
    call Call_03f_5f4c
    pop af
    rst $08
    adc e
    ld a, [$d60a]
    ld b, a
    ld a, $01
    call Call_03f_5f4c
    ld a, $01
    jr jr_03f_6014

jr_03f_5fe2:
    bit 5, a
    jr z, jr_03f_5ffc

    ld a, [$d60a]
    cp $09
    jr c, jr_03f_6014

    sub $09
    rst $08
    adc e
    ld [$d60a], a
    ld b, a
    ld a, $01
    call Call_03f_5f4c
    jr jr_03f_6014

jr_03f_5ffc:
    bit 4, a
    jr z, jr_03f_6014

    ld a, [$d60a]
    cp $11
    jr nc, jr_03f_6014

    add $09
    rst $08
    adc e
    ld [$d60a], a
    ld b, a
    ld a, $01
    call Call_03f_5f4c

Jump_03f_6014:
jr_03f_6014:
    pop af
    pop bc
    ret


Call_03f_6017:
    push bc
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d613]
    res 2, a
    res 3, a
    ld [$d613], a
    ldh a, [$94]
    bit 0, a
    jr z, jr_03f_60a3

    rst $08
    ld e, h
    call Call_03f_58cb
    ld a, [$d613]
    set 0, a
    ld [$d613], a
    ld a, [$d60e]
    ld b, a
    ld a, [$d60f]
    cp $01
    jr z, jr_03f_6057

    call Call_03f_5c23
    call Call_03f_5bdc
    ld hl, $1ae7
    add l
    ld l, a
    jr nc, jr_03f_6055

    inc h

jr_03f_6055:
    jr jr_03f_6065

jr_03f_6057:
    call Call_03f_5c23
    call Call_03f_5bf2
    ld hl, $1a1e
    add l
    ld l, a
    jr nc, jr_03f_6065

    inc h

jr_03f_6065:
    push hl
    rst $18
    ld l, d
    dec b
    pop hl
    ld d, $00
    ld e, $06
    ld b, $14
    ld c, $05
    rst $18
    ld [$af05], sp
    rst $18
    ld d, d
    dec b
    ld b, $00
    rst $18
    ld [de], a
    dec b
    rst $20
    ld h, b
    inc bc
    xor a
    rst $18
    ld l, [hl]
    dec b
    rst $28
    ld h, b
    inc bc
    xor a
    rst $18
    db $76
    dec b
    rst $18
    ld [hl], d
    dec b
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d613]
    res 0, a
    ld [$d613], a
    call Call_03f_58b9
    jp Jump_03f_613f


jr_03f_60a3:
    bit 1, a
    jr z, jr_03f_60bd

    pop af
    rst $08
    adc a
    ld a, [$d610]
    cp $06
    jr z, jr_03f_60b7

    ld a, $01
    push af
    jp Jump_03f_613f


jr_03f_60b7:
    ld a, $10
    push af
    jp Jump_03f_613f


jr_03f_60bd:
    ldh a, [$91]
    bit 6, a
    jr z, jr_03f_60e9

    rst $08
    ld e, e
    ld a, [$d60a]
    dec a
    cp $ff
    jr z, jr_03f_60d5

    ld [$d60a], a
    call Call_03f_5dba
    jr jr_03f_613f

jr_03f_60d5:
    ld a, [$d609]
    dec a
    cp $ff
    jr nz, jr_03f_60e1

    ld a, [$d60b]
    dec a

jr_03f_60e1:
    ld [$d609], a
    call Call_03f_5d0a
    jr jr_03f_613f

jr_03f_60e9:
    bit 7, a
    jr z, jr_03f_6113

    rst $08
    ld e, e
    ld a, [$d60a]
    inc a
    cp $06
    jr nc, jr_03f_60ff

    ld [$d60a], a
    call Call_03f_5dba
    jr jr_03f_613f

jr_03f_60ff:
    ld a, [$d60b]
    ld b, a
    ld a, [$d609]
    inc a
    cp b
    jr nz, jr_03f_610b

    xor a

jr_03f_610b:
    ld [$d609], a
    call Call_03f_5d0a
    jr jr_03f_613f

jr_03f_6113:
    bit 5, a
    jr z, jr_03f_6129

    ld a, [$d613]
    set 2, a
    ld [$d613], a
    rst $08
    adc e
    call Call_03f_5c3a
    call Call_03f_5d0a
    jr jr_03f_613f

jr_03f_6129:
    bit 4, a
    jr z, jr_03f_613f

    ld a, [$d613]
    set 3, a
    ld [$d613], a
    rst $08
    adc e
    call Call_03f_5cb8
    call Call_03f_5d0a
    jr jr_03f_613f

Jump_03f_613f:
jr_03f_613f:
    pop af
    pop bc
    ret


Call_03f_6142:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    push de
    call Call_03f_61a0
    ld hl, $c600
    ld c, $01
    call Call_000_03eb
    pop de
    push de
    ld h, d
    ld l, e
    ld de, $d010
    call Call_000_08ac
    sra h
    rr l
    ld de, $9810
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    push de
    ld c, $01
    call Call_000_0468
    pop hl
    ld bc, $2000
    add hl, bc
    ld d, h
    ld e, l
    pop hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $01
    call Call_000_0468
    rst $18
    ld d, $03
    call Call_000_2e3b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_03f_61a0:
    ld a, [$c372]
    ld b, a
    ld a, $00
    or b
    ld hl, $c600
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_03f_6565:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03f_661d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_03f_67fc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_03f_7cff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_03f_7d67:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
