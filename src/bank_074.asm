; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

    xor [hl]
    ld a, c
    ld d, l
    ld a, d
    ld b, b
    ld b, b
    ld c, b
    ld b, b

Jump_074_4008:
    and d
    ld b, e
    adc d
    ld b, l
    ld [hl-], a
    ld b, a
    ld a, b
    ld b, a
    cp [hl]
    ld b, a
    cp a
    ld b, a
    adc b
    ld b, b
    ld b, l
    ld c, b
    ld c, l
    ld c, b
    ld d, b
    ld d, e
    jr nc, @+$5a

    ld l, h
    ld e, e
    ld [c], a
    ld e, e
    ccf
    ld e, h
    ld b, b
    ld e, h
    adc l
    ld c, b
    dec hl
    ld e, a
    inc sp
    ld e, a
    add l
    ld l, d
    rst $08
    ld [hl], b
    xor [hl]
    ld [hl], l
    inc h
    db $76
    ld [hl], d
    db $76
    jp Jump_074_7376


    ld e, a
    cp [hl]
    ld b, a
    ccf
    ld e, h
    ld [hl], d
    halt
    nop
    nop
    nop
    inc d
    ld [de], a
    nop
    nop
    nop
    jr nz, jr_074_406b

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    xor [hl]
    nop
    ld e, a
    ld [hl+], a
    inc l
    inc bc
    inc d
    ld bc, $7fff
    or b
    inc bc
    inc l
    inc bc
    inc d
    ld bc, $7c8a
    sub h

jr_074_406b:
    ld a, l
    adc h
    nop
    inc d
    ld bc, $7fff
    inc l
    inc bc
    inc d
    ld bc, $046a
    ld [hl], h
    nop
    ccf
    ld bc, $02bf
    ld l, d
    inc b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
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
    rst $38
    rst $38
    cp $ef
    xor $18
    rst $20
    inc a
    jp $c33c


    jr @-$01

    rst $20
    ld hl, sp-$1b
    ei
    rst $38
    sbc $ff
    push af
    rst $38
    rst $38
    xor d
    rst $38

Call_074_40c0:
    ld d, a
    rst $38

Jump_074_40c2:
    cp d
    rst $38
    db $ec
    di
    rst $30
    sbc b
    rst $20
    rst $28
    or $e0
    ld l, l
    rst $38
    scf
    rst $38
    ld a, a
    dec hl
    rst $38
    ld d, $ff
    dec sp
    rst $38
    dec d
    add sp, -$20
    cp a
    xor d
    rst $38
    ld a, l
    rst $38
    set 7, a
    ret z

    push hl
    or b
    rst $38
    rst $38
    ld d, h
    ei
    and h
    ei
    ld a, b
    rst $30
    xor b
    ld a, a
    rst $30
    ld h, h
    ei
    or h
    ei
    ret nc

    rst $38
    rst $38
    db $e3

Jump_074_40f7:
    db $dd
    cp a
    ld hl, sp-$20
    ld e, a
    rst $38
    or a
    db $fc
    ldh [rNR22], a
    xor d
    rst $38
    db $e4
    ld a, [bc]
    adc e
    jr nz, jr_074_412a

    nop
    db $dd
    nop
    ei
    cp l
    ld b, d
    sbc b
    pop hl
    dec a
    ret nz

    ld c, a
    and b
    jr nc, @+$01

    ret


    ld d, d
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    rst $38
    or e
    ld a, [de]
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    rst $38
    cp a
    ld l, l

jr_074_412a:
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
    rst $38
    ret


    ld d, a
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    rst $38
    cp a
    dec hl
    rst $38
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
    rst $38
    rst $38
    ld [hl], h
    rst $38
    ld h, a
    adc b
    call Call_000_32bb
    rst $38
    rst $28
    db $eb
    rst $38
    xor [hl]
    rst $38
    cp $ff
    xor e
    xor $5c
    ldh [rSB], a
    rst $38
    ld h, b
    db $e4
    ldh [rP1], a
    rst $38
    ld [hl+], a
    ei
    rst $38
    ld [$e05e], sp
    ld b, b
    rst $38
    sub b
    rst $38
    ld [bc], a
    xor a
    rst $38
    jr z, @+$01

    add b
    db $fc
    ldh [rP1], a
    ld a, [c]
    ldh [rP1], a
    rst $38
    rst $38
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

Call_074_41a0:
    xor d
    rst $28
    ld d, l
    ld b, c
    cp [hl]
    inc d
    or b
    ldh [$75], a
    rst $38
    sub l
    rst $38
    db $eb
    dec bc
    push af
    and l
    ei
    ld c, d
    rst $30
    and [hl]
    rst $38
    ei
    call $97f3
    jp hl


    ld c, a
    pop af
    push af

jr_074_41bd:
    rst $38
    rst $38
    add sp, -$01
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
    cpl
    db $e4
    cp $f9
    and $df
    sbc c
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
    rst $20

Jump_074_41f8:
    jr jr_074_41bd

    inc h
    rst $20
    inc h
    rst $38
    rst $18
    inc a
    db $db
    inc a
    rst $20
    jr @+$6b

    ldh [rP1], a
    ld h, a

Call_074_4208:
    rst $38
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    and b
    db $10
    rst $38
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    ld h, b
    ld d, $ff
    xor c
    pop hl
    dec bc
    adc d
    daa

Call_074_4220:
    daa
    rrca
    xor l
    xor a
    rra
    sub $3f
    ld a, l
    ld b, $e0
    xor e
    ld h, b
    ldh [$ab], a
    ld a, [$e060]
    or d
    ld h, b
    db $e4
    sub b
    rst $38
    ld a, [hl+]
    rst $28
    inc a
    rst $38
    rst $28
    xor d
    db $eb
    ld a, a
    db $eb
    xor d
    or a
    cp $ff
    xor a
    cp a
    xor l
    db $ed
    sbc a
    ld e, a
    db $ed
    and l
    rst $38
    ei
    ld [hl], $ef
    xor c
    rst $38
    ld a, $ef
    ld [hl], a
    rst $30
    rst $08
    ld l, $ff
    xor h
    pop hl
    db $db
    inc h
    cp $01
    rst $38
    push af
    ld a, [bc]
    jp c, $f425

    dec bc
    add sp, $17
    rst $38
    db $f4
    dec bc
    xor c

Jump_074_426b:
    ld d, [hl]
    pop af
    ld c, $aa
    ld d, h
    rst $38
    ld d, d
    xor h
    add h
    ld a, b
    jr @-$1e

    ld l, b
    add b
    rst $38
    ld a, a
    cp a
    rra
    rst $28
    add a
    ld a, a
    ld d, e
    xor a
    rst $38
    xor e
    ld d, l
    pop af
    rrca
    xor c
    ld d, [hl]
    db $f4
    dec bc
    ld a, a
    sub b
    nop
    adc b
    nop
    ld de, $8001
    db $fc
    ldh [rIE], a
    ret nz

    ld b, b
    ld de, $0201
    ld [bc], a
    ld b, c
    ld b, c
    rst $38
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, l
    inc hl
    inc hl
    ld b, l
    ld b, l
    rst $18
    xor e
    xor e
    ld d, a
    ld d, a
    rst $38
    cp d
    ret nz

    cp $fe
    ld a, a
    db $f4
    ld a, [$f2f6]
    pop af
    or $fe
    db $fc
    ldh [$bf], a
    db $f4
    ld a, [$7fff]
    ccf
    ld a, a
    db $fc
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    cpl
    rst $30
    db $eb
    ld h, a
    inc hl
    rst $28
    rst $38
    ld sp, hl
    cp $fe
    cp $eb
    or $ee
    and $77
    db $e3
    xor $fe
    db $fc
    ldh [$e8], a
    or $ff
    db $ec
    ldh [$de], a
    db $fc
    ld [c], a
    ld b, a
    inc de
    rst $28
    rst $00
    ret c

    ldh [$f5], a
    ld a, [$fcfd]
    cp l
    pop hl
    cp $dd
    cp $f3
    db $fc
    ld d, l
    rst $30
    ld [$fdf2], a
    call nz, Call_000_3fe3
    rst $38
    rst $30
    ld a, a
    ld sp, hl
    ld a, $bc
    and b
    cp b
    ldh [rIE], a
    ld a, [$fdfa]
    db $fd
    ld e, a
    cp $fc
    db $fd
    ld a, [$e4fc]
    and b
    db $fd
    cp a
    ret nz

    ld a, a
    cp a
    ld a, a

jr_074_431a:
    ld c, a
    ccf
    rst $18
    ccf
    sbc a
    db $e4
    ldh [$df], a
    rst $28
    rst $38
    ld e, a
    ccf
    cp $7f
    pop hl
    db $fd
    cp $fa
    ret z

    and b
    cp $d8
    ldh [rIE], a
    db $fc
    xor a
    sbc a
    ld l, a
    ld l, a
    rra
    rst $00
    ld a, a
    rra
    cp h
    and c

Call_074_433d:
    ld a, a
    rst $08
    ret c

    ldh [$fb], a
    ld sp, hl
    cp $c8
    db $e3
    cp $fe
    rst $28
    cp $7e
    cp a
    db $fd
    or $ff
    sbc a
    rst $38
    cpl
    ld a, d
    pop bc
    ccf
    rst $18
    rst $20
    sbc a
    rst $28
    rra
    call $e2d8
    rst $08
    rst $10
    rst $38
    db $e3
    db $db
    add e
    cp e
    ret


    or c
    pop hl
    sub l
    rst $28
    ld [hl], $00
    and c
    add c
    ld a, a
    and c
    rst $28
    rst $08
    rst $08
    rst $38
    rst $38
    sub a
    and a
    db $db
    and e
    sbc a
    db $e3
    ccf
    rst $38
    ld b, e
    ei
    ei
    cp $fe
    ld a, a
    ld a, [hl]
    ld hl, sp-$01
    ldh a, [$a6]
    sbc d
    pop hl
    add c
    daa
    daa
    rst $38
    rst $38
    rst $38
    sub c
    ld b, c
    ld b, d
    add b
    db $e3
    jr nz, jr_074_431a

    ld [hl], a
    nop
    or e
    or e
    inc b
    ldh [$fe], a
    cp a
    cp a
    nop
    nop
    nop
    rst $18
    inc sp
    inc sp
    ld [hl-], a
    add hl, sp
    dec l
    rst $38
    pop hl
    ld l, $2e
    ld a, $f9
    ld [c], a
    ld sp, $4e33
    inc sp
    jr nz, @+$01

    rst $38
    rst $20
    and $e5
    inc sp
    cp a
    ldh [$30], a
    cp [hl]
    db $e3
    cp c
    pop hl
    add hl, sp
    ld [hl-], a
    ld c, a
    ld a, c
    ld d, b
    ret nz

    rst $38
    ret nz

    ld [$4241], a
    inc sp
    ld sp, $e4c0
    rst $00
    ld a, [hl-]
    add hl, sp
    ld [hl-], a
    ld a, [c]
    ldh [$c0], a
    rst $38
    add b
    ld [$4443], a
    adc [hl]
    ret nz

    push hl
    ld a, [hl-]

Call_074_43e0:
    dec sp
    ld sp, $e1f2
    ret nz

    rst $38
    ld b, b
    ld [$6d45], a
    ld b, [hl]
    cp $c4
    dec l
    dec sp
    add b
    ldh [rLYC], a
    ld b, [hl]
    ret nz

    rst $38
    halt
    db $ec
    inc sp
    inc [hl]
    ld bc, $3be5
    ld a, [hl-]
    ld sp, $e1f0
    db $e4
    jp z, $e8ff

    rst $20
    ld c, [hl]
    ld a, a
    add $7e
    ld [c], a
    add hl, sp
    ld [hl-], a
    inc sp
    db $d3
    ld b, a
    ld c, b
    jp z, $e8ff

    rst $20
    ld d, b
    ld b, b
    ret nz

    ld a, [hl-]
    dec l
    or a
    ld h, $22
    inc h
    rst $38
    ldh [rNR43], a
    ld h, $7f
    pop bc
    ld c, c
    jp hl


    ld c, d
    jp z, $e8ff

    rst $20
    ld c, l
    add e
    ret nz

    dec sp
    ld a, [hl-]
    inc hl
    db $db
    scf
    daa
    rst $38
    ldh [$38], a
    inc hl
    or $a0
    inc [hl]
    ld c, e

Jump_074_443c:
    ld sp, hl
    ld c, h
    jp z, Jump_000_00ff

    ret


    ld sp, $2d3a
    dec sp
    dec h
    ld a, a
    jr z, jr_074_4480

    ld hl, $3621
    add hl, hl
    dec h
    cp a
    and d
    db $fc
    nop
    rst $38
    ret nz

    db $eb
    dec sp
    dec l
    dec l
    dec h
    jr z, jr_074_447d

    ret nz

    rst $38
    ldh [$c0], a
    pop hl
    rst $38
    ret nz

    ret nz

    rst $38
    add b
    xor d
    ld b, b
    and c
    inc hl
    ld a, [hl+]
    adc l
    inc l
    rst $38
    ldh [$2b], a
    inc hl
    pop bc
    ld [c], a
    ret nz

    rst $38
    ld b, b
    xor h
    add hl, sp
    ld h, h
    ret nz

    add $c1
    ld [c], a

jr_074_447d:
    ld a, $ca
    rst $38

jr_074_4480:
    nop
    xor b
    ld b, a
    ld c, b
    nop
    add $37
    add hl, sp
    jr nc, @+$34

    jp nz, Jump_000_3e80

    inc a
    jp z, $c0ff

    adc b
    inc hl
    ld c, c
    ld c, d
    ld a, [hl]
    add l
    dec b
    pop hl
    jp nz, Jump_000_3d80

    ret nz

    rst $38
    add b
    adc c
    jp Jump_074_4c4b


    ld a, [hl]
    add c
    rst $38
    pop hl
    push bc
    and c
    ld [hl], c
    add b
    ccf
    dec a

Jump_074_44ad:
    ldh [$ca], a
    rst $38
    ld b, b
    xor e
    ld a, h
    and b
    cp $e3
    ld [hl], h
    ldh [$33], a
    inc sp
    ld b, b
    ld sp, $ca3f
    rst $38
    nop
    adc d
    ld c, $80
    inc sp
    ld c, l
    cp l
    ld [c], a
    ld [hl], h
    pop hl
    nop
    cp a
    ldh [$ca], a
    rst $38
    rst $38
    rst $38
    rst $38
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

Jump_074_4546:
    rst $38
    rst $38

Call_074_4548:
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
    ei
    nop
    nop
    nop
    rst $18
    ld c, l
    ld c, l
    ld c, l
    dec l
    dec c
    rst $38
    pop hl
    ld c, l
    ld l, l
    ld a, $f9
    ld [c], a
    dec l
    dec c
    ld c, $4d
    ld [$ffff], sp
    rst $20
    and $32
    ret nz

    ldh [rKEY1], a
    set 4, b
    rst $38
    and $6d
    ld c, $c0
    rst $38
    ret nz

    db $eb
    ld b, b
    add l
    ldh [$c1], a
    add sp, $74
    pop hl
    jp z, $c0ff

    db $eb
    add d
    rst $20
    dec l
    or d
    pop hl
    nop
    add b
    rst $38
    ret nz

    db $ed
    dec b
    db $e3
    ei
    pop bc
    db $f4
    ret nz

    ret nz

    rst $38
    add b
    rst $30
    ld a, a
    ldh [$08], a
    xor a
    ret nz

    jp z, $e8ff

    rst $20
    ld c, $c1
    ret nz

    add c
    and $7f
    pop hl
    ldh a, [$c0]
    ret c

    jp z, $c0ff

    jp hl


    call z, Call_000_2bc1
    dec bc
    rst $38
    pop hl
    dec hl
    dec bc
    jr nz, jr_074_462c

    db $e3
    jp z, $80ff

    add sp, $03
    jp nz, $e3c0

    dec bc
    ret nz

    ldh [$34], a
    pop bc
    ld hl, sp-$36
    rst $38
    add b
    call $e0c6
    dec bc

Jump_074_4604:
    dec bc
    dec l
    dec bc
    dec hl
    nop

Call_074_4609:
    cp $c3
    jp z, $c0ff

    rst $28
    ccf
    db $e3
    cp a
    and c
    ret nz

    rst $38
    add b
    xor d
    ld c, h
    jp nz, Jump_074_6b35

    ld b, b
    db $e3
    ld c, e
    pop bc
    pop hl
    ld l, l
    ld l, l
    jp z, $80ff

    xor d
    or [hl]
    rst $38
    add b
    ld l, e
    ld c, e
    rst $38

jr_074_462c:
    pop hl
    ld l, e
    ld c, e
    add d
    pop hl
    ld l, l
    pop de
    ld l, $ca
    rst $38
    add b
    jp hl


    add b
    xor c
    ld l, l
    jp nz, $2e80

    ld l, [hl]
    ldh a, [$ca]
    rst $38
    ret nz

    db $eb
    ld a, [hl]
    add h
    inc bc
    and b
    ld c, l
    ld c, $0e
    dec c
    ld bc, $802e
    rst $38
    add b
    db $eb
    ld a, [hl]
    add c
    add l
    add d
    or l
    add b
    rst $38
    add b
    ret nz

    rst $38
    ld b, h
    ld b, b
    adc h
    ld c, $80
    dec l
    adc b
    and b
    or [hl]
    ret nz

    ld sp, hl
    ld h, c
    ld c, l
    ret nz

    rst $38
    inc c
    nop
    adc h
    ld c, $80
    dec l
    ld c, $c0
    rst $20
    ret nz

    rst $18
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

Jump_074_46e0:
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
    ldh [rP1], a
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
    ldh [rP1], a
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
    jr nz, jr_074_4870

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    inc sp
    ld bc, $023f
    ld [$a403], a
    ld [bc], a
    rst $38
    ld h, e
    rst $28
    inc bc
    ld [$a403], a
    ld [bc], a
    ld b, b
    ld [hl], c
    ret nz

jr_074_4870:
    ld a, [hl]
    call nc, $a400
    ld [bc], a
    rst $38
    ld a, a
    ld [$a403], a
    ld [bc], a
    jr nz, jr_074_488e

    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $20
    ld de, $2508
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_074_488e:
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

Call_074_48c2:
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_074_488e

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

Call_074_4965:
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
    call nc, Call_074_48c2
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
    jr nz, jr_074_49a0

jr_074_49a0:
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
    jp Jump_074_7f7c


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


Jump_074_4b00:
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
    jp z, $6fe0

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

Jump_074_4c4b:
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

jr_074_4c8d:
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
    jr jr_074_4c8d

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

Jump_074_4d0b:
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

jr_074_4d43:
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
    jr nc, jr_074_4d43

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

Jump_074_4db0:
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

jr_074_4e07:
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

jr_074_4e1a:
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
    jr c, jr_074_4e07

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

jr_074_4e4f:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_074_4e1a

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_074_61d8

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
    jr nz, jr_074_4e4f

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
    jp z, Jump_074_5ac8

    and c
    inc a
    jp Jump_074_537f


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

Call_074_4f00:
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
    sbc e
    or a
    ld c, b
    call c, Call_074_40c0
    rst $38
    ld b, h
    dec b
    inc a
    dec b
    ld d, l
    ei
    nop
    cp d
    cp [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$b6fa], a
    add b
    xor [hl]
    or d
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
    sub e
    nop
    ld bc, $b4ce
    nop
    jr nz, jr_074_4faf

jr_074_4faf:
    add b
    xor [hl]
    nop
    cp l
    ldh [rNR23], a
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

jr_074_4fce:
    add h
    ld l, a
    ld b, b
    di
    ld c, $08
    sbc [hl]
    pop hl
    adc h
    and b

jr_074_4fd8:
    rlca
    cp $1b
    db $fc
    rst $38
    ld e, $f1
    jr z, jr_074_4fd8

    ld a, d
    push hl
    ld [hl], b
    rst $08
    rst $38
    inc a
    rst $38
    ei
    rst $20
    db $fd
    ld b, d
    rst $20
    jr jr_074_4fce

    ld c, d
    or l
    nop
    rst $38
    ld d, h
    sbc [hl]
    and b
    adc [hl]
    di
    rst $38
    sbc d
    rst $20
    ld c, l
    di
    sub a
    jp hl


    rst $00
    ld sp, hl
    ld a, a
    adc a

jr_074_5003:
    di
    ld e, [hl]
    rst $20
    adc [hl]
    di
    push af
    ld a, [hl-]
    and b
    rst $38
    ldh [rIE], a
    adc d
    push af
    ld d, a
    add sp, -$73
    ld a, [c]
    rst $38
    add hl, de
    rst $20
    adc a
    di
    rst $18
    sbc c
    sbc a
    ld c, l
    rst $38
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $f1
    rst $38
    or h
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    sbc h
    ld c, a
    rst $38
    ld h, $17
    and d
    di
    jp c, $eee1

    ld [hl], c
    rst $38
    db $f4
    dec sp
    ld sp, hl
    rst $38
    rst $20
    jr jr_074_5003

    inc h
    rst $38
    rst $20
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20

jr_074_5049:
    jr jr_074_5049

    ret nz

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    rst $38
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    rst $38
    ld h, b
    ld d, $a9

jr_074_5061:
    pop hl
    dec bc
    adc d
    daa
    daa
    ccf
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    and [hl]
    add b
    ld d, b
    daa
    rst $38
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr jr_074_5061

    rst $38
    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    nop
    cp a
    inc e
    inc bc
    cp a

jr_074_5087:
    nop
    sbc c
    ld h, [hl]
    ld l, b
    ld hl, $cf3d
    jp nz, $e718

    add hl, de
    ld h, b
    inc h
    ld b, b
    add c
    ld d, [hl]
    xor c
    rst $20
    ld [hl+], a
    rst $38
    ld [hl], l
    ret nz

    add h
    or b
    and e
    ld de, $1fef
    ld a, a
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    db $10
    add l
    rst $38
    jr z, jr_074_5087

    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $38
    ei
    inc e
    db $ed
    ld h, $8b
    ld b, [hl]
    db $db
    ld h, [hl]
    rst $38
    add $4f
    dec bc
    add a
    sbc e
    add a
    or e
    rst $08
    rst $38
    xor a
    sbc a
    and $5f
    cp a
    ld a, [hl]
    db $eb
    inc a
    rst $28
    rst $38
    ld l, $ef
    cpl
    ld d, c
    ld h, b
    ld e, $1c
    rst $38
    rst $38
    ld l, $e7
    ld c, d
    rst $00
    ld e, d
    rst $20
    ld b, a
    rst $08

jr_074_50e4:
    db $fd
    adc e
    ldh [$e4], a
    ld h, [hl]
    rst $18
    ld a, [hl]
    rst $38
    jr z, @+$01

    rst $08
    ld a, $ef
    cpl
    rst $28
    pop hl
    ldh [rLCDC], a
    ret nz

    pop de
    ld l, a
    rst $38
    jr @+$01

    ld h, a
    and l
    and h
    ld h, a

Jump_074_5100:
    ld a, [hl]
    rst $38
    xor a
    jr c, jr_074_50e4

    ld b, e
    db $fd
    ret c

    ld [bc], a
    db $db
    dec e
    ldh [$e7], a
    add hl, de
    ld a, [hl]
    dec de
    ldh [$d0], a
    add e
    jr @+$01

    ldh a, [$e3]
    rrca
    pop hl
    call z, $d721
    rst $20
    nop
    db $db
    cp $e0
    add c
    ld hl, sp-$20
    rst $38
    nop
    rst $38
    xor e
    rst $38
    dec b
    cp $ab
    db $fc
    dec c
    ld a, [$b2ff]
    db $fd
    ld d, l
    ld [$d7a8], a
    db $f4
    adc e
    rst $38
    or b
    rrca
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    db $fd
    cp [hl]
    ld a, $e0
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    jp nc, $e150

    ld e, b
    ld d, b
    ld b, $10
    ld l, e
    dec hl
    ld d, b
    ld l, b
    inc a
    inc bc
    rst $28
    add h
    ld [hl], e
    or h
    db $eb
    ld e, b
    inc bc
    add hl, de
    rst $20
    rla
    rst $38
    xor $3f
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [$00ba]
    jp c, Jump_000_002e

    xor a
    cp $df
    ld hl, sp+$6f
    rst $10
    ld hl, sp-$21
    ldh a, [$d3]
    ld b, b
    inc a
    ld [hl], $61
    ccf
    jp Jump_000_3ebf


    rst $00
    db $dd
    cpl
    jp c, $f02f

    push hl
    dec a
    ld a, a
    jp $c73c


    ret nc

    cpl
    ret c

    cpl
    and e
    jr nz, @+$01

    ld sp, hl
    db $fc
    ei
    cp $e1
    db $f4
    set 4, b
    db $fd
    rst $18
    cp $e1
    cp a
    ld a, a
    ld e, a
    cp a
    rra
    rst $38
    rst $38
    scf
    rst $08
    dec bc
    rst $30
    ld h, e
    rst $38
    db $d3
    sbc a
    rst $38
    sub e
    sbc a
    ld hl, sp-$79
    ret nc

    cpl
    add b
    ld a, a
    rst $38
    adc h
    ld a, a
    sbc d
    ld [hl], e
    ld d, d
    or e
    adc h
    rst $38
    ld a, a
    ldh a, [$ef]
    ld l, l
    di
    ld [bc], a
    db $fd
    ret nz

    ld a, l
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld d, $ff
    ld bc, $17ff
    rst $38
    rst $38
    add sp, -$09
    pop af
    rst $38
    cp $fe
    rst $38
    cp $ff
    rst $30
    cp $ad
    db $fc
    ld b, [hl]
    cp $eb
    rst $38
    rst $30
    scf
    rst $38
    adc a
    dec a
    jr nz, jr_074_526e

    ld a, a
    ld l, a
    ld a, a
    rst $18
    ld a, $3f

jr_074_51f5:
    ld a, e
    ld a, a
    rst $38
    ld c, [hl]
    jr nz, jr_074_51f5

    db $fd
    rst $38
    db $fc
    ei
    pop hl
    rst $38
    ret nc

    rst $28
    push hl
    rst $18
    ld a, a
    jp z, $e7ff

    rst $18
    ccf
    rst $38
    rra
    jr z, jr_074_520f

jr_074_520f:
    ld a, a
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    db $db
    inc de

jr_074_5218:
    jr nz, @+$01

    adc e
    rst $38
    ld b, l
    cp a
    sub a
    ld a, a
    dec hl
    rst $38
    ld e, a
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    ld [$75e0], a
    db $10
    jr nz, jr_074_52a5

    rst $38
    rst $38
    ld a, [hl]
    ld sp, hl
    nop
    cp $ff
    ld sp, hl
    di
    nop
    rst $20
    push hl
    rst $38
    di
    and b
    pop hl
    sbc h
    ldh [$ee], a
    cp $5e
    adc e
    cp $fb
    sub [hl]
    jr nz, jr_074_5218

    and b
    ld [c], a
    db $fc
    db $e3

jr_074_524d:
    ld sp, $fe08
    cp $e3
    nop
    ld hl, sp-$01
    ldh a, [$fb]
    rst $20
    push af
    res 7, a
    ld a, [c]
    adc l
    pop af
    ld c, $f0
    rrca
    cp $e1
    add sp, -$13
    rla
    or b
    inc bc
    ld a, a
    rst $38
    jr z, jr_074_524d

    cpl
    rst $18

jr_074_526e:
    rla
    pop af

jr_074_5270:
    rst $28
    call z, $9bea
    pop hl
    adc a
    inc bc
    ldh [$fc], a
    jp $fffc


    add e
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ldh [$ef], a
    rst $38
    ret nc

    rst $18
    and b
    ld l, $d1
    sub [hl]
    ld l, e
    ld c, h
    rst $38
    or a
    jr z, jr_074_5270

    dec d
    rst $28
    ret nz

    ccf
    add h
    cp a
    ld a, a
    ld a, [bc]
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    and d
    and b
    xor d
    cp [hl]
    sbc [hl]
    and b
    dec bc
    rst $30

jr_074_52a5:
    inc bc
    rst $38
    ei
    cp $e0
    rst $38
    ld hl, sp-$04
    ld [c], a
    ld c, a
    ret nz

    ld a, e
    ld [$0ff7], a
    cp $fd
    db $fd
    ccf
    ld a, [$f5fa]
    ldh a, [$ef]
    ret nz

    ld [$ce60], sp
    pop hl
    rst $38
    db $fc
    inc bc
    ld d, h
    xor e
    xor h
    ld d, a
    ld a, [de]
    rst $28
    rst $30
    dec [hl]
    rst $18
    ld a, [hl+]
    ld c, $e0
    rst $38
    rst $38
    ld a, [bc]
    rst $30
    ld d, a
    dec b
    ei
    ld [bc], a
    ld a, [bc]
    add b
    ld a, [hl]
    add b
    ld h, b
    ld a, a
    ld a, h
    ld h, d
    db $ed
    ld d, a
    ld d, h
    ret nz

    sbc $fd
    ld b, l
    ldh [rIE], a
    ld_long $ffff, a
    push de
    rst $38
    sbc $a1
    xor d
    ld d, l
    ld d, [hl]
    xor e
    ld e, a
    dec c
    rst $30
    ld a, [de]
    rst $28
    dec d
    ret c

    ret nz

    ld a, a
    sub b
    ldh [$ea], a
    ret nc

    db $e3
    cp [hl]
    db $ec
    ret nz

    cp a
    ld d, c
    pop hl
    cp $ff
    ld hl, sp-$01
    ld sp, hl
    ldh [$e7], a
    add b
    sbc c
    nop
    and $00
    rst $38
    sbc b
    nop
    pop hl
    nop
    rst $38
    ld a, a
    sbc a
    rra
    rst $38
    add a
    rlca
    add c
    ld bc, $0080
    ld h, b
    nop
    rst $38
    jr jr_074_532a

jr_074_532a:
    add $00
    add a
    nop
    ld e, $00
    rst $38
    ld a, h
    nop
    db $ec
    add b
    call nz, $c580
    add b
    rst $18
    db $fc
    add b
    call nc, $f180
    ld a, [c]
    ldh [$3f], a
    ld bc, $37f7
    ld bc, $fe23
    ldh [$3f], a
    ld bc, $012b
    nop
    nop
    nop
    ccf
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    jp $c5c4


    ld a, [$f4ff]
    push af
    ccf
    set 0, [hl]
    rst $00
    ret z

    ret


    jp z, $fffa

    db $f4
    push af
    ccf
    pop de
    call z, $cecd
    rst $08
    ret nc

    ld a, [$f4ff]
    push af
    nop
    ld e, e
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]

Jump_074_537f:
    rst $38
    add b
    rst $18
    nop
    ld d, l
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    inc c
    ld a, [$80ff]
    jp c, $bebd

    ld b, [hl]
    ldh [rSCX], a
    ldh [$f8], a
    db $e3
    add b
    rst $18
    ld a, $5b
    db $ed
    cp a
    ret nz

    ld b, [hl]
    or a
    cp b
    add $e0
    ld hl, sp-$20
    ld sp, hl
    ld b, [hl]
    add b
    rst $18
    ld e, e
    rst $28
    pop bc
    jp nz, $b946

    cp d
    ld e, $bd
    ldh [$c1], a
    jp nz, $bebd

    add b
    rst $18
    sbc b
    ret z

    ld b, a
    db $e3
    ld b, $84
    pop hl
    cp e
    cp h
    cp l
    pop hl
    ld a, [hl]
    pop hl
    inc sp
    pop hl
    add b
    rst $18
    sbc b
    pop bc
    ld [hl-], a
    ld c, a
    db $e3
    ld b, [hl]
    rst $00
    ld [c], a
    ld [$bbe0], sp
    cp h
    ld a, [hl]
    pop hl
    dec sp
    ldh [$ec], a
    add b
    rst $18
    ld [hl], $a5
    pop bc
    jp nz, $e484

    sbc d
    sbc h
    sbc b
    pop bc
    sbc d
    or a
    ld [c], a
    dec sp
    pop hl
    add b
    rst $18
    push de
    and a
    add h
    db $e3
    sbc d
    sub a
    rrca
    ld b, [hl]
    ld b, [hl]
    sub a
    sbc d
    dec sp
    push hl
    db $76
    add $80
    rst $18
    add h
    ld [c], a
    dec de
    sbc b
    sbc b
    pop bc
    ldh [rDMA], a
    xor b
    cp a
    ldh [$f8], a
    jp nz, $c175

    ld e, b
    ld hl, sp-$3d
    add b
    rst $18
    add h
    ld [c], a
    xor b
    xor b
    ld bc, $a9c1
    cp a
    db $e3
    call nz, $c1f1
    ld hl, sp-$3c
    ld b, [hl]
    nop
    cp h
    ret


    and d
    pop bc
    ldh [$a9], a
    xor c
    rst $38
    ld b, [hl]
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, l
    xor c
    ld b, [hl]
    sub a
    dec de
    sbc b
    sbc b
    ld hl, sp-$40
    cp e
    cp h
    inc sp
    add $b1
    or c
    ret


    xor d
    rst $28
    ld b, [hl]
    ld b, [hl]
    sbc c
    xor b
    jp nz, Jump_074_46e0

    ld a, c
    ld a, [hl]
    rlca
    ld b, [hl]
    ld a, a
    ld a, l
    ld a, e
    and e
    ld hl, sp-$39
    or c
    or e
    ret


    xor c
    adc d
    and b
    di
    sbc e
    xor c
    ld b, d
    ldh [$c1], a
    ldh [rDMA], a
    ld b, [hl]
    adc h
    ld a, e
    ld b, $ff
    ldh [$7c], a
    ld a, l
    or a
    pop bc
    inc sp
    add $3d
    ldh a, [rNR34]
    and l
    dec bc
    and c
    ld d, $8a
    and b
    sbc c
    ld b, [hl]
    ld b, d
    ldh [$80], a
    nop
    and e

jr_074_5485:
    ld a, [$7981]
    ldh [$80], a
    ld hl, sp-$3d
    or c
    and c
    rst $20
    add b
    or c
    xor [hl]
    jp Jump_000_13a5


    and c
    adc d
    and b
    sbc c
    rra
    ld b, [hl]
    xor b
    ld b, [hl]
    ld a, c
    adc e
    ret nz

    rst $20
    cp a
    ld [c], a
    ld a, [c]
    and c
    ld b, b
    ld l, [hl]
    and b
    rst $28
    add c
    or c
    xor [hl]
    ld sp, hl
    ld b, l
    ld h, d
    pop hl
    dec b
    jp nz, $81a9

    ld [c], a
    scf
    add e
    add a
    add [hl]
    rst $38
    ldh [$87], a
    add e
    ld a, [hl]
    ld [c], a
    ld a, [c]
    and d
    jr nc, @-$0f

    add d
    sbc l
    and b
    add b
    ld [hl], a
    ld c, b
    add b
    or a
    cp b
    call nz, Call_074_41a0
    pop hl
    rst $38
    adc b
    add h
    ld b, l
    ld c, b
    ld d, e

jr_074_54d6:
    ld b, l
    add h
    ld l, a
    rrca
    add e
    ld b, [hl]
    add e
    ld l, l
    ld a, [c]
    and h
    jr z, jr_074_5485

    nop
    cp b
    ld c, b
    add b
    db $fc
    cp $c2
    ld bc, $81e1
    ld b, l
    ld c, b
    ld h, b
    ld d, h
    ld b, h
    cp a
    ld b, [hl]
    add h
    add l
    add [hl]
    add l
    add h
    ld a, [c]
    and d
    sbc c
    ld b, [hl]
    xor h
    add b
    cp l
    cp [hl]
    nop
    cp d
    ld c, b
    add b
    adc b
    add b
    sbc e
    pop bc
    pop bc
    rst $38
    add e
    ld l, l
    ld b, h
    ld d, h
    ld d, h
    dec l
    inc l
    or h
    add [hl]
    or a
    add $a9
    sbc c
    rst $28
    ld h, d
    add b
    db $db
    jp z, Jump_000_0461

    and b
    add d
    rst $38
    add e
    add e
    ld l, a
    add h
    ld b, [hl]
    ld b, l
    or h
    or l
    ld a, a
    jr nz, jr_074_555e

    ld b, e
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, l
    db $fc
    ldh [$60], a
    rst $20
    and b
    nop
    db $e3
    add b
    jp c, $60ca

    push bc
    add c
    add h
    add l
    ld c, h
    ld [c], a
    rst $38
    ld [hl-], a
    jr nz, @+$22

    inc h
    dec sp
    ld [hl], $45
    ld b, [hl]
    bit 1, d
    ld b, a
    cp a
    pop hl
    sbc e
    jr z, jr_074_54d6

    add b
    jp c, $bcbb

    ld hl, sp-$7a
    add c
    inc bc
    ld h, c
    db $fc
    add c

jr_074_555e:
    or h
    ld sp, $3c2b
    dec [hl]
    ccf
    dec [hl]
    jr c, jr_074_559e

    ld d, l
    ld h, c
    ld e, h
    add b
    ld [c], a
    nop
    pop hl
    call nz, $d980
    ret


    ld b, c
    sbc c
    call nz, $c282
    add b
    db $fc
    add b
    ld d, c
    ld e, a
    scf
    ld d, h
    ld a, [hl-]
    dec [hl]
    rst $38
    ldh [rWY], a
    ld d, [hl]
    ccf
    pop hl
    nop
    db $e3
    ld [hl], b
    nop
    cp l
    ld b, c
    and b
    cp [hl]
    db $e4
    cp [hl]
    add b
    ld b, e
    ld e, e
    add hl, sp
    ret nz

    ldh [$33], a

jr_074_5597:
    inc a
    ld c, a
    ret nz

    ld [c], a
    ld sp, $c181

jr_074_559e:
    jp nz, $bd00

    pop bc
    and b
    ld a, h
    ret nz

    add c
    cp [hl]
    add d
    adc h
    ld a, h
    ld a, l
    ld b, l
    ld [hl], $7f
    ldh [rNR24], a
    ld d, l
    add b
    ld [c], a
    xor a
    ld h, c
    or a
    cp b
    nop
    ld d, [hl]
    inc c
    ld b, d
    ret nz

    call nz, Call_074_7fb4
    add e
    inc bc
    and d
    ld b, h
    cp $c0
    add hl, sp
    ld b, e
    dec hl
    db $e3
    sbc c
    add b
    db $fc
    add l
    and $23
    add b
    dec bc
    sub [hl]
    ld b, d
    call $be41
    jp $84be


    add c
    adc l
    ld b, l
    cp $c0
    ld a, [hl-]
    ld b, l
    ld l, h
    add c
    ld a, [hl]
    pop bc
    xor l
    ld b, c
    cp a
    ld bc, $e4c0
    jr nz, jr_074_5597

    ld c, b
    inc c
    ld b, a
    ld a, $c8
    db $fd
    and b
    ld a, l
    ld hl, $a045
    and $fe
    ret nz

    inc a
    ld b, h
    db $ec
    ld h, d
    scf
    add d
    cp c
    cp d
    pop bc
    add c
    jp nz, Jump_000_20e4

    xor e
    ld c, b
    sbc [hl]
    rlca
    pop de
    ld hl, $e57e
    rlca
    and c
    ld b, [hl]
    ld e, $ba
    and d
    scf
    jr c, @+$37

    ld b, d
    db $ed
    jp Jump_074_44ad


    daa
    ld b, d
    ret nz

    dec a
    rst $20
    nop
    ld c, l
    cp h
    and c
    cp [hl]
    ld b, b
    rlca
    and b
    ld b, $a3
    ld b, [hl]
    ld b, l
    ld bc, $803f
    and d
    ld a, [hl]
    push hl
    sbc $25
    add sp, $25
    nop
    ld c, e
    db $fc

jr_074_563b:
    pop bc
    pop bc
    ld bc, $b804
    and l
    ld a, [$97ec]
    rst $28
    ld b, b
    db $f4
    ld h, d
    add sp, $27
    sbc [hl]
    dec bc
    call Call_000_0001
    sbc $c2
    ld a, c
    ld b, b
    call z, $ffe6
    ldh [$b1], a
    jp hl


    ld hl, sp-$3d
    ld a, d
    push bc
    nop
    ld c, e
    nop
    call $de01
    jp nz, Jump_074_40f7

    ld c, h
    rst $20
    ld l, d
    push bc
    inc h
    and h
    ld hl, sp-$3c
    dec h
    inc hl
    jr c, jr_074_5672

jr_074_5672:
    ld c, l
    jr c, jr_074_56d9

    rst $30
    and h
    sub a
    sbc b
    sbc d
    dec [hl]
    nop
    add sp, $42
    ld [bc], a
    push af
    pop bc
    ld b, c
    ld [hl], l
    add c
    db $f4
    ld h, c
    sub h
    ld [bc], a
    dec h
    ld [hl+], a
    add b
    ld l, e
    add d
    pop hl
    ldh [$36], a
    add h
    adc $e2
    ld a, [bc]
    add b
    dec [hl]
    nop
    xor b
    add h
    ld b, l
    ld [hl], $a0
    ld b, $71
    add b
    ld b, [hl]
    xor b
    db $f4
    ld h, b
    ld hl, sp-$5f
    add b
    ld [hl], c
    nop
    db $e3
    db $76
    ld b, e
    pop af
    adc a
    ld c, d
    add d
    ld d, l
    db $e3
    xor b
    add c
    ld b, l
    ld [hl], $62
    and c
    dec b
    ld h, [hl]
    jr nc, jr_074_563b

    xor c
    inc [hl]
    ld h, d
    db $f4
    add l
    add b
    ld l, e
    inc e
    ld b, c
    ld [hl], $83
    ccf
    ld b, [hl]
    sbc c
    adc [hl]
    ld b, [hl]
    ld b, [hl]
    adc a
    jp z, $a861

    ld h, c
    ld e, h
    ld a, [c]
    ret nz

    pop bc
    ldh [$67], a
    sbc l
    ld l, b

jr_074_56d9:
    cp a
    ldh [$97], a
    dec l
    ldh [$a0], a
    ld [hl], d
    ld b, c
    add b
    ld de, $039e
    ld a, b
    ld h, e
    add b
    ldh [$8e], a
    inc c
    and c
    cp l
    rst $28
    cp [hl]
    cp c
    cp d

jr_074_56f1:
    sbc c
    pop bc
    ld [c], a
    dec [hl]
    dec [hl]
    ld l, h
    rlca
    xor a
    or b
    ld b, d
    ld hl, sp-$7d
    add b
    ld [de], a
    ld a, d
    inc b
    ld a, b
    ld h, d
    ld b, c
    pop hl
    cp $c0
    ldh [$bb], a
    cp h
    cp a
    ret nz

    cp e
    cp h
    sbc c
    rst $38
    xor b
    ld [hl], $b1
    or d
    sbc l
    dec [hl]
    ld l, h
    ld l, a
    rlca
    ld l, [hl]
    ld [hl], $45
    or [hl]
    ld b, c
    scf
    daa
    or b
    dec c
    ld a, d
    ld bc, $e442
    db $fc
    adc a
    and h
    ld c, b
    ld hl, $a999
    ld [hl], $6e
    ld l, a
    ld l, h
    nop
    pop bc
    ld [c], a
    db $ec
    pop bc
    scf
    jr z, @-$4e

    ld l, l
    sbc d
    inc bc
    ret nz

    db $e3
    dec c
    add d
    adc b
    ld b, b
    ld [bc], a
    ld [$4521], a
    cp a
    ldh [$c1], a
    ld [c], a
    or [hl]
    ld b, d
    jr c, jr_074_56f1

    add b
    ld l, e
    ld a, d
    ld h, a
    nop
    cp b
    ld bc, $c182
    ld b, d
    jp nz, Jump_000_00e7

    xor b
    ld b, d
    cp a
    ldh [$c1], a
    ld [c], a
    or [hl]
    inc hl
    nop
    pop de
    nop
    add b
    ld l, l
    ld a, d
    ld h, l
    ret nc

    pop bc
    ld de, $8262
    ret nz

    ld bc, $82e2
    ld [bc], a
    nop
    ld a, [hl]
    pop hl
    pop bc
    db $e3
    add d
    jp nz, Jump_000_0033

    add b
    ret nc

    ld b, e
    ld [c], a
    ret nc

    pop bc
    ld [bc], a
    jp nz, $8ec1

    ld d, $e2
    xor a
    and d
    ld l, d
    add e
    or $81
    jr c, jr_074_57b5

    pop bc
    jp nz, $8000

    pop de
    ld a, d
    ld h, d
    or [hl]
    ld [bc], a
    ld [bc], a
    pop bc
    ld b, d
    ret nz

    ld bc, $7ee2
    db $e4
    and b
    inc hl
    nop
    inc b
    pop bc
    ld b, e
    and $00
    xor l
    ld a, d
    ld h, h
    ld [bc], a
    and c
    jp nz, Jump_000_01a3

    ld [c], a
    ld h, l
    ld [bc], a

jr_074_57b5:
    nop
    inc b
    ld h, c
    db $fc
    push hl
    ld b, e
    and $80
    ret nc

    ld a, d
    ld b, c
    ld b, d
    add c
    add d
    and e
    ld bc, $c0e2
    ld c, a
    ld [hl+], a
    jp nz, $fc01

    push hl
    ld b, e
    and $80
    ret nc

    inc b
    and e
    xor b
    xor c
    add b
    ld b, b
    pop hl
    inc c
    ld c, c
    db $e4
    ld h, l
    dec a
    dec l
    jr nc, jr_074_582d

    ld a, d
    ld b, c
    pop de
    and b
    adc [hl]
    nop
    ld b, d
    and c
    cp a
    pop hl
    inc c
    ld b, l
    add sp, -$7d
    ldh [$83], a
    add b
    ld de, $a5c3
    nop
    ld [c], a
    dec de
    sbc c
    adc [hl]
    add c
    and c
    adc a
    adc [hl]
    nop
    and d
    push de
    and [hl]
    ld a, [$44f2]
    jp Jump_000_00ad


    ld [c], a
    sbc e
    add c
    pop hl
    ld a, a
    pop hl
    jp z, Jump_074_4604

    call c, $088e
    add b
    sub $04
    add e
    ld b, h
    add c
    adc a
    ld a, a
    ldh [$ca], a
    inc b
    ld c, c
    cpl
    nop
    cp b
    nop
    inc b
    add h
    dec a
    pop hl
    cp [hl]
    and b
    sub d
    res 0, b
    rrca

jr_074_582d:
    nop
    nop
    nop
    ccf
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    rst $38
    db $f4
    rst $30
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$5b
    rst $38
    db $f4
    ld hl, sp-$5f
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    nop
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    db $f4
    ld b, [hl]
    ldh [rSCX], a
    ld [c], a
    nop
    ld a, [$80e3]
    rst $18
    xor e
    xor $03
    db $e4
    ld h, b
    rst $18
    ret nz

    rst $30
    jp c, $80ff

    ret nc

    nop
    ld c, c
    push hl
    ld a, [hl-]
    db $e4
    ld sp, hl
    and $80
    rst $18
    jp z, Jump_000_09e4

    and $80
    db $e4
    ld a, c
    rst $38
    inc c
    ret nz

    ld [$e6ba], a
    ld c, l
    dec l
    ld a, e
    db $e4
    jp z, $9eff

    ret


    add l
    call nz, Call_074_6d07
    dec bc
    dec bc
    cp a
    ldh [$75], a
    rst $00
    ld l, [hl]
    rst $00
    add b
    db $db
    ld b, l
    jp nz, Jump_074_4d0b

    ld c, l
    pop bc
    ldh [$0b], a
    ld a, [hl]
    ld [c], a
    ld hl, sp-$35
    ld [hl], e
    rst $38
    add h
    ld [c], a
    dec bc
    dec c
    dec c
    pop bc
    ldh [$0b], a
    dec a
    db $e3
    ld hl, sp-$37
    ret nz

    or $c9
    xor d
    ld hl, sp-$3f
    ldh [$c0], a
    ldh [$bf], a
    and c
    dec bc
    ld c, l
    ld c, l
    ld c, l
    dec l
    inc bc
    ld c, l
    dec l
    cp d
    ret z

    or c
    or c
    add c
    db $ed
    add d
    ld [c], a
    ld a, l
    ldh [$7a], a
    db $e3
    nop
    ld hl, sp-$37
    or c
    cp a
    ld b, a
    and e
    pop bc
    ld [c], a
    ld a, l
    db $e3
    ld a, d
    ld [c], a
    ld hl, sp-$3d
    ld e, [hl]
    rst $00
    inc b
    ld b, e
    sub e
    nop
    push bc
    dec bc
    ld b, d
    pop hl
    add l
    db $e3
    ld sp, hl
    jp $e3bf


    or c
    cp b
    nop
    ld c, $a7
    ret nz

    db $e4

jr_074_590a:
    ld b, l
    push hl
    cp a
    rst $20
    inc sp
    jp $dabc


    adc e
    add h
    ret z

    and b
    add b
    add c
    ld [c], a
    add h
    jp $e0f3


    rst $30
    jp $a3b1


    inc a
    call nc, $a8c3
    ld c, $f7
    ld c, $4d
    dec l
    ld b, c
    ld [c], a
    dec c
    dec l
    dec hl
    ld a, [bc]
    ld hl, $796a
    pop bc
    or [hl]
    ldh [$f2], a
    and h
    db $e4
    ldh [rKEY1], a
    nop
    cp d
    dec b
    add h
    sbc $c0
    db $e3
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    jr c, jr_074_590a

    dec l
    dec l
    ret nc

    ld a, [c]
    and d
    ld [hl], c

jr_074_594e:
    and c
    ld c, e
    sbc a
    cp [hl]
    push bc
    dec l
    ret nz

    ldh [$2a], a
    dec hl
    add e
    dec hl
    dec hl
    cp b
    rst $00
    ld a, d
    rst $00
    add b

jr_074_5960:
    db $db
    inc b
    and b
    adc h
    pop hl
    dec l
    inc bc
    dec bc
    ld l, e
    cp $e0
    ret nz

    ld [c], a
    cp e
    db $e3
    add b
    db $e3
    add b
    rst $18
    push bc
    add b
    inc b
    ld c, h
    db $e4
    ei
    add b
    ld c, e
    cp [hl]
    pop hl
    jr c, jr_074_5960

    ret nz

    db $e3
    ret nc

    jr c, jr_074_594e

    ld h, l
    cp h
    push bc
    add c
    ld a, a
    and e
    dec bc
    ld c, e
    ld c, e
    ld l, e

jr_074_598e:
    add d
    pop hl
    dec hl
    rst $00
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    add b
    jp hl


    nop
    cp h
    ret nz

    rst $20
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld l, d
    cp a
    pop hl
    ld hl, sp-$20
    ld c, e
    cpl
    call nz, Call_074_7174
    nop
    or d
    ld b, c
    and e
    dec de
    ld c, e
    ld a, [bc]
    ld a, a
    ld [c], a
    ld a, [bc]
    ld c, d
    ld hl, sp-$7c
    ccf
    sbc a
    ld [bc], a
    ret nz

    inc l
    ret z

    add h
    cp [hl]
    add d
    dec c
    ld l, e
    add [hl]
    pop hl
    ld a, [hl+]
    add b
    ld [c], a
    xor a
    ld h, e
    ld b, b
    ld b, e
    sbc e
    ld c, l
    jr nz, jr_074_598e

    and b
    nop
    push hl
    db $fc
    ld h, c
    ccf
    jp nz, Jump_074_754b

    add e
    ld b, b
    inc a
    and [hl]
    scf
    db $ec
    inc c

jr_074_59dd:
    ld b, a
    ld a, [hl]
    db $e3
    jp nz, $c262

    add h
    ld l, e
    cp $c2
    nop
    xor [hl]
    ld h, e
    cp [hl]
    and a
    ld a, [hl-]
    or e
    ld c, b
    ld b, h
    ld a, [hl]
    ld [c], a
    adc $e5
    ld a, [$fba0]
    and b
    add b
    ld l, [hl]
    ld h, e
    cp $c7
    ld a, [bc]
    ld l, l
    or [hl]

Call_074_5a00:
    dec bc
    dec a
    pop hl
    ld a, e
    ld h, d
    cp d
    and d
    ld c, e
    nop
    add e
    ret nz

    or l
    ld l, d
    ld e, d
    ld c, b
    nop
    ld d, c
    db $fc
    pop bc
    add a
    add c
    ld b, $a5
    ld a, b
    and b
    nop
    pop bc
    jp nz, $c57c

    sbc [hl]
    daa
    nop
    ld d, e
    ld l, a
    inc hl
    cp c
    call nz, $edfb
    rst $28
    ld b, c
    nop
    ld a, b

jr_074_5a2c:
    call z, Call_074_4f00
    dec l
    ld [hl+], a
    ld hl, sp+$61
    rst $30
    and [hl]
    rst $30
    ld h, b
    cp e
    jp hl


    and l
    inc hl
    jr jr_074_5a2c

    ld d, c
    ld a, [hl]
    add sp, $76
    and [hl]
    ld l, l
    dec c
    ld a, l
    ld b, b
    ld [hl], b
    jp hl


    db $f4
    ld h, e
    jr nc, @-$0a

    sub d
    jp nz, $f707

    and h
    ld [hl], l
    jr nz, jr_074_5a62

    ld c, $3d
    ld b, b
    db $ec
    ld [hl+], a
    nop
    jr nc, jr_074_59dd

    ld l, $80
    ld [c], a
    jp $eb93


jr_074_5a62:
    add b
    ld h, a
    or [hl]
    rlca
    ld c, d
    add e
    ld h, l
    nop
    nop
    ret nz

    pop hl
    ld l, l
    ld hl, $60f2
    rst $28
    ld h, c
    or h
    ld h, l
    add b
    ld [hl], l
    ld a, [hl]
    and $c0
    and $c4
    ld [$f323], a
    ld h, h
    dec hl
    ld e, l
    ld hl, $7980
    ld [hl], $06
    dec bc
    dec bc
    dec b
    ld l, l
    cp e
    ld bc, $402d
    ld [c], a
    ld [hl], h
    ld h, d
    dec [hl]
    ld h, b
    or d
    and b
    dec l
    ldh [rNR41], a
    or h
    daa
    xor d
    ld de, $6378
    add hl, sp
    ld hl, $650a
    dec c
    ld [hl], l
    ld h, d
    cpl
    ld h, e
    add b
    or [hl]
    ld h, a
    dec l
    ld [hl], l
    ld a, b
    ld h, d
    ld a, d
    ld b, e
    ld b, $26
    inc l
    ld b, c
    rst $28
    ld b, b
    dec hl
    inc bc
    ld l, e
    ld c, e
    daa
    inc b
    or a
    ld e, e
    ld a, e
    inc b
    or d
    ld bc, $03e8
    cp h
    ld h, c
    ld [bc], a

Jump_074_5ac8:
    pop bc
    ld [c], a
    dec hl
    ld [hl], c
    inc h
    cp l
    or h
    cp d
    dec b
    cp c
    ld [bc], a
    rst $10
    pop bc
    ccf
    ld b, b
    nop
    ld [$f521], a
    ld h, c
    add d

jr_074_5add:
    pop hl

jr_074_5ade:
    or $46
    add b
    db $10
    ld b, d
    ret


    ld a, e
    inc h
    ld h, h
    dec h
    nop
    cp a
    ld [c], a
    pop bc
    ld [c], a
    xor e
    db $e3
    dec a
    db $fd
    ret nz

    ld h, c
    add d
    ret nz

    ld c, e
    daa
    ld a, [hl]
    pop hl
    nop
    pop bc
    db $e3
    inc d
    rst $00
    ld b, e
    di
    cp [hl]
    add h
    call z, Call_074_7e24
    add sp, -$01
    ld [c], a
    dec l
    ld [c], a
    nop
    push af
    ld b, h
    jr nc, jr_074_5b5f

jr_074_5b0f:
    ld [hl+], a
    add h
    ld b, b
    ld [c], a
    ld c, h
    ld [hl+], a
    ld d, l
    and a
    ld c, b
    adc c
    ld a, b
    ld e, $02
    ld [bc], a
    pop bc
    dec l
    adc h
    jr z, @+$68

    xor d
    ld c, c
    ld c, a
    jr nc, jr_074_5b72

    jp $82a1


    and l

jr_074_5b2b:
    nop
    jr jr_074_5add

    ld c, d
    ld [hl], e
    add d
    call z, $e240
    inc c
    ld c, c
    ld a, [hl]
    jp hl


    db $76
    ld e, $00
    db $e4
    nop
    ld d, $83
    ret nz

    ei
    jp Jump_074_7aad


    jr z, jr_074_5ade

    ld h, b
    call nc, $d6a6
    sub h
    add b
    rst $10
    jr nz, jr_074_5b0f

    inc hl
    ld d, $88
    rst $38
    rst $38
    ld a, [hl]
    ld l, b
    ld b, h
    add c
    ld c, l
    nop
    ld b, b
    sub [hl]
    ld l, h
    jr nz, jr_074_5b2b

jr_074_5b5f:
    ld hl, sp-$80
    rlc d
    ld [c], a
    add b
    adc b
    ld b, e
    or $0d
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38

jr_074_5b72:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ld a, [$0f07]
    rrca
    rrca
    pop hl
    db $fc
    rst $18
    ld sp, hl
    jp nz, $dde1

    ld hl, sp-$5d
    ld [c], a
    nop
    cp l
    ld [c], a

jr_074_5b8d:
    sbc e
    di
    add h
    and $9a
    db $f4
    ld h, h
    rst $20
    ld a, c
    di
    ld b, h
    jp hl


    ldh [rIE], a
    nop
    rla
    xor $04
    db $eb
    ldh [$f1], a
    rst $18
    pop bc
    ldh [$f9], a
    ret nz

    db $eb
    cp a
    di
    sbc b
    call nz, $9500
    pop de
    ldh [$eb], a
    ld a, [$62d0]
    call z, $f2df
    ld b, b
    jp nz, $c53a

    dec sp
    di
    nop
    ld a, [hl-]
    rst $00
    ldh [$f5], a
    ld [hl], l
    push bc
    ld e, l
    ldh a, [$e0]
    db $fd
    jr c, jr_074_5b8d

    ldh [$f9], a
    db $fc
    push hl
    nop
    ldh [$f9], a
    reti


    and h
    ld h, c
    push af
    ld [hl], l
    or l
    sbc [hl]
    and l
    ld hl, $e4b7
    or l
    ldh [$fa], a
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
    inc h
    rst $38
    rst $38
    ld hl, sp-$09
    pop af
    pop hl
    db $fc
    ldh [$fb], a
    pop af
    rst $38
    db $e3
    ldh [$fd], a
    nop
    sbc e
    or $e0
    push hl
    sbc c
    push af
    ldh [rIE], a
    rst $18
    ld a, [$e165]
    ld a, l
    ld a, [$fcc0]
    nop
    add b
    rst $20
    rst $30
    call nc, $fde0
    dec a
    rst $38
    ld e, e
    db $e3
    or l
    push bc
    ld a, l
    ret c

    ldh [rIE], a
    jr nc, jr_074_5c9c

    reti


    ldh [rIE], a
    ldh [rIE], a
    rla
    db $d3
    inc de
    inc de
    sbc e
    cp a
    rst $38
    rst $38
    inc b
    rst $38
    rst $38
    push af
    db $f4
    inc de
    rst $38
    ldh [$da], a
    xor $00
    nop
    nop

jr_074_5c3f:
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
    jr z, jr_074_5c3f

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

jr_074_5c9c:
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

jr_074_5d6d:
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
    jr nz, jr_074_5d6d

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_074_64e1

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

jr_074_5de3:
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

jr_074_5e21:
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
    jr nc, jr_074_5de3

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
    jr nz, jr_074_5e21

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

jr_074_5ec6:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_074_5ec6

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
    nop
    jr nz, jr_074_5f56

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    inc sp
    ld bc, $023f
    ld [$a403], a
    ld [bc], a
    rst $38
    ld h, e
    rst $28
    inc bc
    ld [$a403], a
    ld [bc], a
    ld b, b
    ld [hl], c
    ret nz

jr_074_5f56:
    ld a, [hl]
    call nc, $a400
    ld [bc], a
    rst $38
    ld a, a
    ld [$a403], a
    ld [bc], a
    jr nz, jr_074_5f74

    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $20
    ld de, $2508
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_074_5f74:
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
    jr nz, jr_074_5f74

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
    ld e, $12
    ld a, [hl]
    call nc, Call_074_48c2
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
    jr nz, jr_074_6086

jr_074_6086:
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
    jp Jump_074_7f7c


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

Jump_074_61d2:
    ld e, b
    rst $20
    db $fc
    dec b
    ldh [$98], a

Jump_074_61d8:
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
    jp z, $6fe0

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

Jump_074_6355:
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

jr_074_6373:
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
    jr jr_074_6373

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

jr_074_6429:
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
    jr nc, jr_074_6429

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

Jump_074_64e1:
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

jr_074_64ed:
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

jr_074_6500:
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
    jr c, jr_074_64ed

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

jr_074_6535:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_074_6500

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_074_61d8

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
    jr nz, jr_074_6535

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
    jp z, Jump_074_5ac8

    and c
    inc a
    jp Jump_074_537f


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
    call c, Call_074_40c0
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
    jr nz, jr_074_66c3

jr_074_66c3:
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
    ld c, $08
    ld l, c
    ld [c], a
    inc bc
    rst $38

jr_074_66ec:
    rlca
    cp $1b
    rst $38

jr_074_66f0:
    db $fc
    ld e, $f1
    jr z, jr_074_66ec

    ld a, d
    push hl
    ld [hl], b
    rst $38
    rst $08
    inc a
    rst $38
    ei
    rst $20
    db $fd
    ld b, d
    rst $20
    cp a
    jr jr_074_674e

    or l
    nop
    rst $38
    ld d, h
    ld l, [hl]
    and b
    adc [hl]
    rst $38
    di
    sbc d
    rst $20
    ld c, l
    di
    sub a
    jp hl


    rst $00
    rst $38
    ld sp, hl
    adc a

jr_074_6717:
    di
    ld e, [hl]
    rst $20
    adc [hl]
    di
    push af
    cp $0a
    and b
    ldh [rIE], a
    adc d
    push af
    ld d, a
    add sp, -$73
    rst $38
    ld a, [c]
    add hl, de
    rst $20
    adc a
    di
    rst $18
    sbc c
    sbc a
    rst $38
    ld c, l
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $ff
    pop af
    or h
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    sbc h
    rst $38
    ld c, a
    ld h, $17
    and d
    di
    jp c, $eee1

    rst $38
    ld [hl], c
    db $f4

jr_074_674e:
    dec sp
    ld sp, hl
    rst $38
    rst $20
    jr jr_074_6717

    rst $38
    inc h
    rst $20
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20
    db $fd
    jr jr_074_66f0

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    rst $38
    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    rst $38
    adc e
    ld h, b
    ld d, $a9
    pop hl
    dec bc
    adc d
    daa
    ld a, a
    daa
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    db $76
    add b
    cp $20
    daa
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr @+$01

    rst $20
    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    ld a, a
    nop
    inc e
    inc bc
    cp a

jr_074_679b:
    nop
    sbc c
    ld h, [hl]
    jr c, jr_074_67c1

    sbc a

jr_074_67a1:
    dec a
    jp nz, $e718

    add hl, de
    jr nc, jr_074_67cc

    db $10
    add c
    ld d, [hl]
    rst $08
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    sub b
    add h
    add b
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

jr_074_67c1:
    ld h, l
    jr z, jr_074_679b

    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $38
    ei

jr_074_67cc:
    inc e
    db $ed
    ld h, $8b
    ld b, [hl]
    db $db
    rst $38
    ld h, [hl]
    add $4f
    dec bc
    add a
    sbc e
    add a
    or e
    rst $38
    rst $08
    xor a
    sbc a
    and $5f
    cp a
    ld a, [hl]
    db $eb
    rst $18
    inc a
    rst $38
    ld l, $ef
    cpl
    ld hl, $1e60
    inc e

jr_074_67ee:
    rst $38
    rst $38
    ld l, $e7
    ld c, d
    rst $00
    ld e, d
    rst $20
    ld b, a

jr_074_67f7:
    ei
    rst $08
    adc e
    ldh [$e4], a
    ld h, [hl]
    rst $18
    ld a, [hl]
    rst $38
    jr z, jr_074_67a1

    rst $38
    ld a, $ef
    cpl
    rst $28
    pop hl
    ldh [rNR10], a
    ret nz

    pop de
    rst $28
    ld l, a
    jr @+$01

    ld h, a
    ld b, d
    ret nz

    ld a, [hl]
    rst $38
    jr c, jr_074_67ee

    rst $18
    ld b, e
    db $fd
    xor b
    ld [bc], a
    db $db
    dec e
    ldh [$e7], a
    ld a, [hl]
    cp $1b
    ldh [rNR23], a
    rst $20
    jr nz, jr_074_67f7

    or [hl]
    dec hl
    db $ed
    cp a
    cp d
    dec sp
    rst $18
    db $76
    rst $18
    ld d, h
    ld hl, sp+$00
    ld a, [hl+]
    add $cb
    ld [hl+], a
    jr @+$01

    ldh [$e3], a
    rst $38
    pop bc
    adc h
    ld hl, $00e7
    push af
    db $db
    cp $e0
    add c
    ld hl, sp-$20
    rst $38
    nop
    xor e
    rst $38
    rst $38
    dec b
    cp $ab
    db $fc
    dec c
    ld a, [$fdb2]
    rst $38
    ld d, l
    ld [$d7a8], a
    db $f4
    adc e
    or b
    rrca
    ld a, a
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld l, $e0
    cp a
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    ld b, b
    pop hl
    ld e, b
    db $f4
    ld b, b
    ld b, $d0
    ld c, e
    dec hl
    db $10
    ld l, b
    inc a
    inc bc
    add h
    ld [hl], e
    rst $28
    or h
    db $eb
    inc hl
    call z, $e180
    ld a, [hl-]
    rst $18
    rst $30
    ld a, a
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ld l, $68
    ld h, e
    rst $38
    add hl, de
    rst $20
    rla
    xor $3f
    ret z

    cpl
    ret c

    rst $10
    rra
    ldh a, [$fd]
    ld l, d
    nop
    jp c, Jump_074_4008

    xor a
    cp $bf
    rst $18
    ld hl, sp+$6f
    ld hl, sp-$21
    ldh a, [$83]
    ld b, b
    inc a
    cp $e6
    ld b, c
    ccf
    jp $c73e


    db $dd
    cpl
    jp c, Jump_000_2ffd

    ldh a, [$e5]
    dec a
    jp $c73c


    ret nc

jr_074_68c4:
    cpl
    ei
    ret c

    cpl
    ld d, e
    jr nz, jr_074_68c4

    db $fc
    ei
    cp $e1
    rst $28
    db $f4
    set 4, b
    rst $18
    cp $e1
    cp a
    ld a, a
    ld e, a
    rst $38
    cp a
    rra
    rst $38
    scf
    rst $08
    dec bc
    rst $30
    ld h, e
    rst $38
    rst $38
    db $d3
    sbc a
    sub e
    sbc a
    ld hl, sp-$79
    ret nc

    rst $38
    cpl
    add b
    ld a, a
    adc h
    ld a, a
    sbc d
    ld [hl], e
    ld d, d
    rst $38
    or e
    adc h
    rst $38
    ldh a, [$ef]
    ld l, l
    di
    ld [bc], a
    ei
    db $fd
    ret nz

    dec l
    jr nz, @+$04

    rst $38
    ld d, $ff
    ld bc, $ffff
    rla
    rst $38
    add sp, -$09
    pop af
    rst $38
    cp $ff
    cp $ff
    cp $f7
    cp $ad
    db $fc
    ld b, [hl]
    cp a
    cp $eb
    rst $38
    scf
    rst $38
    adc a
    db $ed
    nop
    ld a, a
    rst $38
    ld a, a
    ld l, a
    ld a, a
    ld a, $3f
    ld a, e
    ld a, a
    rst $38
    cp $fe
    nop
    ld a, [$fcfd]
    ei
    pop hl
    rst $38
    ret nc

    rst $38
    rst $28
    push hl
    rst $18
    jp z, $e7ff

    rst $18
    ccf
    ei
    rst $38
    rra
    ld [hl+], a
    nop
    ld d, a
    rst $38
    db $eb
    rst $38
    ld a, a
    ei
    rst $38
    db $db

jr_074_694c:
    jp $8b00


    rst $38
    ld b, l
    cp a
    sub a
    rst $38
    ld a, a
    dec hl
    rst $38
    sbc a
    ld a, a
    dec l
    rst $38
    sbc a
    cp d
    ld [$75e0], a
    ret nz

    nop
    rst $38
    rst $38
    ld a, [hl]
    xor c
    nop
    cp $3b
    rst $38
    ld sp, hl
    and e
    nop
    push hl
    rst $38
    di
    and b
    pop hl
    sbc h
    ldh [$5f], a
    xor $fe
    ld e, [hl]
    cp $fb
    ld b, [hl]
    jr nz, jr_074_694c

    and b
    ld [c], a
    db $f4
    db $fc

jr_074_6981:
    db $e3
    cp $e8
    cp $93
    nop
    ld hl, sp-$01
    ldh a, [$fb]
    rst $38
    rst $20
    push af
    set 6, d
    adc l
    pop af
    ld c, $f0
    ld l, l
    rrca
    cp $e1
    add sp, $17
    ld h, b
    inc bc
    ld a, a
    rst $38
    jr z, jr_074_6981

    adc a
    cpl
    rst $18
    rla

jr_074_69a4:
    rst $28
    call z, $9bea
    pop hl
    ccf
    inc bc
    ldh [rIE], a
    db $fc
    jp $83fc


    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    rst $38
    ldh [$ef], a
    ret nc

    rst $18
    and b
    ld l, $d1
    rst $38
    sub [hl]
    ld l, e
    ld c, h
    or a
    jr z, jr_074_69a4

    dec d
    rst $28
    ld a, a
    ret nz

    ccf
    add h
    ld a, a
    ld a, [bc]
    rst $38
    inc d
    ld d, $c0
    db $fd
    ld d, l
    ld d, b
    ret nz

    ld d, l
    rst $38
    dec bc
    rst $30
    inc bc
    rst $38
    push bc
    ei
    cp $e0
    rst $38
    db $fc
    ld [c], a
    ccf
    ret nz

    ld a, e
    ld [$0ff7], a
    rst $38
    cp $fd
    db $fd
    ld a, [$f5fa]
    ldh a, [$ef]
    ld sp, hl
    ret nz

    cp b
    ld b, b
    adc $e1
    db $fc
    inc bc
    ld d, h
    xor e
    xor h
    cp a
    ld d, a
    ld a, [de]
    rst $28
    dec [hl]
    rst $18
    ld a, [hl+]
    ld c, $e0
    rst $38
    cp a
    rst $38
    ld a, [bc]
    rst $30
    dec b
    ei
    ld [bc], a
    cp d
    ld h, b
    ld a, [hl]
    ld l, d
    jr nc, jr_074_6a73

    ld a, a
    inc l
    ld h, d
    ld d, a
    ld d, h
    ret nz

    sbc $fd
    ld b, l
    ldh [rIE], a
    rst $38
    ld [$d5ff], a
    rst $38
    sbc $a1
    xor d
    rst $38
    ld d, l
    ld d, [hl]
    xor e
    dec c
    rst $30
    ld a, [de]
    rst $28
    dec d
    ld d, d
    ret c

    ret nz

    ld a, a
    sub b
    ldh [$d0], a
    db $e3
    cp [hl]
    db $ec
    ret nz

    cp a
    ld d, c
    pop hl
    rst $38
    cp $ff
    ld hl, sp-$07
    ldh [$e7], a
    add b
    sbc c
    rst $38
    nop
    and $00
    sbc b
    nop
    pop hl
    nop
    rst $38
    rst $38
    ld a, a
    sbc a
    rra
    add a
    rlca
    add c
    ld bc, $ff80
    nop
    ld h, b
    nop
    jr jr_074_6a5e

jr_074_6a5e:
    add $00
    add a
    rst $38
    nop
    ld e, $00
    ld a, h
    nop
    db $ec
    add b
    call nz, $80ff
    push bc
    add b
    db $fc
    add b
    call nc, $f180

jr_074_6a73:
    cp [hl]
    ld a, [c]
    ldh [$3f], a
    ld bc, $0137
    inc hl
    cp $e0
    ccf
    rlca
    ld bc, $012b
    nop
    nop
    nop
    cp a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ret z

    ret


    jp z, $ebfa

    call nz, $c56f
    ld b, [hl]
    cp [hl]
    cp a
    rst $20
    ldh [$c0], a
    pop bc
    ld [c], a
    ldh [$e6], a
    ld a, [$bce3]
    cp l
    push af
    pop hl
    sub $ee
    ld b, [hl]
    ret z

    ret nc

    rst $18
    set 1, h
    call $cfce
    ld a, [$46ea]
    add $c1
    rst $00
    push bc
    db $e4
    db $fc
    rst $20
    or b
    pop hl
    sub $ef
    call nz, $d6e0
    pop de
    rst $08
    jp nc, $d4d3

    push de
    ld a, [$c6ea]
    db $e3
    sbc l
    sbc a
    dec c
    sbc e
    rst $38
    push hl
    sbc a
    sbc l
    ld [hl], l
    ld [c], a
    sub $ef
    call nz, Call_074_43e0
    jp hl


    or e
    jp nz, $8bc3

    db $e3
    ld d, e
    pop hl
    sbc l
    sbc d
    ld a, a
    add sp, -$66
    pop bc
    sbc l
    ld [hl], d
    and $13
    db $ed
    ld c, c
    add sp, $08
    pop hl
    ld d, e
    push hl
    sbc l
    sbc d
    scf
    add e
    add a
    add [hl]
    rst $38
    push hl
    add a
    add e
    cp a
    push hl
    inc de
    rst $28
    ret c

    ld c, c
    jp hl


    ld [$d7e0], sp
    jp nz, $c1c0

    pop bc
    ldh [$6f], a
    add h
    rst $18
    ld [bc], a
    rlca
    rlca
    rlca
    ld [bc], a
    ei
    ldh [rSC], a
    add h
    pop bc
    ld l, a
    cp a
    ld [c], a
    cp h
    ret nz

    inc de
    ld a, [c]
    add b
    ret


    add a
    jp $9c46


    rst $38
    ld b, [hl]
    adc b
    add h
    ld [bc], a
    rrca
    sub a
    nop
    ld bc, $977f
    sub [hl]
    sub [hl]
    sub [hl]
    rrca
    rlca
    ld [bc], a
    cp a
    ld [c], a

Jump_074_6b35:
    ldh a, [$e5]
    db $e3
    add b
    reti


    cp $c0
    ld c, h
    ret nz

    sbc l
    sbc e
    sbc e
    sbc d
    ld a, a
    add e
    ld l, l
    ld [bc], a
    rrca
    sub [hl]
    sub [hl]
    sub a
    pop bc
    ldh [rNR33], a
    sub l
    cp [hl]
    ldh [$08], a
    add h
    adc c
    xor l
    ldh [$31], a
    ret nz

    sbc $c0
    ld d, b
    add b
    reti


    cp $c2
    add $c1
    ld b, d
    ldh [$08], a
    add [hl]
    ldh [$96], a
    ret nz

    pop hl
    ccf
    sub l
    sub l
    sub [hl]
    rrca
    ld [bc], a
    add d
    db $fd
    jp $a0e6


    ld c, b
    add b
    ret c

    cp $c2
    add $c2
    add l
    ld b, d
    ldh [$c1], a
    pop hl
    sbc b
    ld b, b
    pop hl
    ld b, b
    ld a, a
    ld [c], a
    db $fd
    jp $c1de


    or a
    xor e
    add b
    ret


    call $9ea2
    dec b
    pop hl
    dec bc
    rlca
    rlca
    pop bc
    pop hl
    rrca
    ld sp, hl
    ld [c], a
    dec sp
    pop hl
    db $fd
    push bc
    ld a, d
    rst $08
    ld hl, sp-$37
    xor b
    ld bc, $59c0
    and b
    sbc h
    ld b, [hl]
    add c
    ld [bc], a
    rrca
    ei
    ld bc, $cb00
    pop hl
    ld [bc], a
    ld b, l
    ld b, l
    ld [bc], a
    rlca
    add hl, bc
    rrca
    cp e
    jp $c1fd


    sbc [hl]
    add hl, sp
    and h
    add b
    jp nc, $a509

    ret nz

    ldh [$fb], a
    ld [$8c97], sp
    ld [c], a
    ld [bc], a
    ld b, l
    ld a, [hl+]
    inc l
    ld sp, $2b39
    ld a, c
    ret nz

jr_074_6bd3:
    cp e
    pop bc
    rrca
    ld [bc], a
    add b
    ld l, d
    ret nz

    jp hl


    add b
    ret nz

    sbc e
    and l
    nop
    xor e
    add e
    and c
    add hl, bc
    and e
    ret nz

    pop hl
    inc c
    db $e3
    ld b, [hl]
    inc [hl]
    sbc a
    jr nz, @+$22

    jr nz, jr_074_6c1a

    ld b, l
    or a
    ret nz

    cp l
    ret nz

    sub [hl]
    ld bc, $c008
    pop hl
    xor [hl]
    add b
    and e
    add b
    ld a, d
    ret


    inc c
    and [hl]
    add e
    and h
    add a
    and b
    ei
    ld l, l
    ld [$c48b], sp
    ld b, l
    dec hl
    ld sp, $452b
    inc e
    jr c, jr_074_6bd3

    ld a, l
    ret nz

    sub l
    sub [hl]
    ld [$c47d], sp

jr_074_6c1a:
    and e
    add b
    ld a, d
    ret


    and b
    ld b, e
    add [hl]
    adc e
    add b
    ld e, e
    add b
    add a
    and c
    adc $e1
    sub h
    add hl, bc
    ret nz

    rrca
    scf
    rlca
    inc b
    inc b
    or a
    jp nz, $9495

    pop af
    ldh [$7d], a
    call nz, Call_000_3726
    add c
    add $c7
    nop
    or e
    ld [bc], a
    ld [c], a
    adc b
    ld b, $c1
    ret nz

    ldh [$c7], a
    sub l
    sub [hl]
    sub a
    cp d
    jp nz, $a1fe

    ld a, [c]
    pop hl
    rrca
    ld [bc], a
    ld b, b
    cp e
    and d
    scf
    adc l
    ld c, c
    adc c
    ld [bc], a
    db $e3
    ld c, a
    ld [c], a
    adc [hl]
    pop hl
    sub [hl]
    ld b, b
    and d
    nop
    ret nz

    and b
    di
    db $e3
    cp [hl]
    jp $8d37


    ld b, $a7
    ld b, d
    add d
    jp nz, $c0c3

    ld [c], a
    inc b
    cp a
    pop hl
    ld b, b
    and c
    sub h
    rst $38
    ldh [$73], a
    ld [c], a
    cp [hl]
    jp nz, $861a

    add b
    call Call_074_4220
    add e
    add d
    call nz, $e5bf
    or l
    db $e3
    ld [hl], e
    db $e3
    sub a
    ret nz

    db $e4
    ld a, [de]
    add d
    nop
    add b
    rst $08
    ld h, h
    and e
    ld [bc], a
    jp $e38a


    adc c
    pop bc
    db $fc
    and $ba
    add c
    cp $a1
    inc hl
    cp h
    cp l
    inc a
    and d
    add b
    ld [hl], d
    add d
    and e
    ld [$a183], sp
    ccf
    ld [c], a
    add c
    sub l
    rlca
    jp nz, $c2be

    ld [hl], c
    pop bc
    cp [hl]
    and l
    add b
    db $76
    adc e
    ld b, b
    sbc [hl]
    ret nz

    ld b, d
    and c
    ld a, [bc]
    ld [c], a
    push bc
    db $e4
    ld [bc], a
    add b
    ld a, $c1
    ld a, h
    add c
    ld a, c
    adc e
    ld a, b
    jr c, @+$62

    ld l, h
    ld b, c
    add b
    ret c

    sbc l
    sbc d
    adc d
    ld a, l
    rst $38
    jp $c1ce


    call nz, Call_000_020f
    ccf
    or $61
    ret nz

    and b
    ld a, c
    ld a, [hl]
    db $10
    ld sp, hl
    ld b, d
    db $db
    ld b, b
    nop
    or h
    add b
    and h
    ld a, a
    ld c, $a3
    nop
    ret nz

    add c

jr_074_6cf9:
    ld h, c
    rrca
    ld [$3540], sp
    add hl, sp
    ld a, l
    and c
    ld b, b
    and c
    ret nz

    add d
    db $db
    ld b, l

Call_074_6d07:
    ldh [$80], a
    adc $81
    ld b, h
    ret nz

    add c
    add hl, bc
    add c
    ld b, c
    call nz, Call_074_4208
    dec [hl]
    ld bc, $fd3a
    add c
    nop
    and e

jr_074_6d1b:
    xor c
    jr nz, jr_074_6d1b

    ld h, e
    add b
    ret nc

    adc c
    ld hl, $8540
    inc e
    ld b, a
    ld h, c
    ld bc, $02e4
    ld [hl], $36
    add b
    db $e3
    ld a, l
    ld h, c
    ld l, [hl]
    ld hl, $7506
    jr nz, jr_074_6cf9

    jp Jump_074_5100


    adc c
    jr nz, jr_074_6d7d

    add d
    cp $c0
    nop
    add d
    ld d, $bb
    db $e3
    rrca
    ld [bc], a
    nop
    db $e3
    rrca
    cp [hl]
    ld h, l
    dec h
    jr nz, jr_074_6d66

    ld b, h
    inc e
    add b
    ld l, a
    ld b, b
    add c
    xor e
    xor e
    ld a, a
    jp z, $8460

    ld h, b
    ld b, h
    ld b, c
    add hl, de
    rrca
    cp h
    ld b, b
    inc a
    ld l, c
    sbc e
    sbc e

jr_074_6d66:
    ld a, h
    pop hl
    add hl, sp
    ld h, d
    nop
    ld c, a
    cp $7f
    ld [hl+], a
    sbc h
    xor h
    xor h
    ld b, [hl]
    ld a, a
    ld a, l
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    ld a, h

jr_074_6d7d:
    ld a, l
    ld [$bb30], sp
    add b
    add hl, sp
    ld h, b
    jr nc, jr_074_6de7

    cp a
    add b
    ld l, a
    add e
    ld [hl], h
    jr z, jr_074_6d8d

jr_074_6d8d:
    ld d, b
    db $fc
    ld a, a
    ld hl, $a11d
    ld b, [hl]
    adc h
    ld a, e
    ld a, e
    adc l
    xor e
    cp b
    rst $38

jr_074_6d9b:
    ldh [$74], a
    pop bc
    rlca
    ret nz

    ld a, d
    ld a, h
    ld a, l
    rst $30
    pop hl
    rlca
    db $e3
    ld [bc], a
    add l
    ld [hl], h
    inc h
    ld [hl], c
    inc bc
    add b
    ld c, $c6
    rst $00
    cp h
    and l
    cp l
    rlca
    ld h, $ac
    rst $38
    ldh [$34], a
    ld h, b
    sbc c
    rlca
    ret nz

    ld b, l
    inc bc
    ld b, l
    ld a, a
    db $ec
    jp nz, Jump_000_20b6

    ld [hl], h
    inc hl
    jr c, jr_074_6e2e

    nop
    ld c, [hl]
    dec b
    inc hl
    and $45
    dec b
    xor e
    xor e
    db $f4
    ld b, b
    rlca
    ld h, b
    ld b, l
    ld [hl], $36
    dec c
    ld b, l
    ld [$97a2], a
    sbc c
    ld [hl], h
    jr nz, jr_074_6d9b

    ld b, c
    jr c, jr_074_6e49

    ld l, [hl]

jr_074_6de7:
    ld bc, $80d8
    inc c
    ld e, b
    ld bc, $e87e
    ld b, [hl]
    adc d
    rst $30
    ret nz

    adc e
    ld b, h
    add a
    inc a
    dec [hl]
    ld b, b
    ld [$3a43], a
    add a
    ld d, d
    pop bc
    add b
    dec d
    sbc l
    pop af
    sbc d
    add [hl]
    ldh [$80], a
    db $e3
    or $c0
    adc l
    ld b, l
    ld [hl], $35
    nop
    ret nz

    db $e4
    rst $28
    ld bc, $e5c0
    add b
    ret nc

    and d
    inc hl
    db $fc
    ld hl, $c07c
    add b
    db $e3
    rst $38
    ld b, l
    ld b, e
    ccf
    scf
    jr c, jr_074_6e5b

    dec [hl]
    inc a
    inc bc
    ld b, h
    ld b, e
    add b
    db $e3
    ld a, d

jr_074_6e2e:
    ld h, h
    ret nz

    pop bc
    add b
    ld [de], a
    rst $18
    nop
    ld a, d
    add d
    sbc $82
    db $e4
    ld b, l
    ld [hl], $3b
    dec [hl]
    rst $38
    pop hl
    ld [hl], $4a
    rlca
    ld e, d
    add c
    ld [bc], a
    ld [hl], h
    ld [bc], a
    ld a, d

jr_074_6e49:
    add e
    ld [hl], l
    dec b
    add b
    dec c
    inc a
    and c
    db $e3
    ret nz

    pop bc
    ld a, l
    jp $e182


    ld b, [hl]
    ldh [$35], a
    dec [hl]

jr_074_6e5b:
    dec sp
    rra
    dec [hl]
    ld [hl], $45
    ld c, a
    ld d, l
    ret nz

    pop hl
    ld a, d
    add [hl]
    ld [hl], l
    inc bc
    ldh a, [$80]
    ret nc

    and e
    ld h, c
    ld a, $c6
    rlca
    pop hl
    xor c
    xor c
    ld [hl], $50
    rra
    ccf
    ld c, b
    ld c, [hl]
    ld b, e
    ld b, l
    add sp, $42
    cp d
    inc hl
    ld d, d
    dec h
    add sp, -$80
    ret nc

    cp [hl]
    ld [hl+], a
    ld [hl-], a
    add l
    add hl, sp
    ld b, h
    ldh [$aa], a
    xor d
    add hl, sp
    rra
    ld d, h
    ld c, h
    ld d, h
    ld d, e
    ld b, l
    xor d
    ld hl, $673c
    add b
    ret c

    call c, $e043
    add d
    jp Jump_074_4546


    ld a, [hl-]
    inc b
    ld [c], a
    ld a, [hl-]
    ld b, l
    nop
    ld hl, sp-$60
    xor d
    ld hl, $81ad
    ld a, [$8008]
    pop de
    add b
    ld [bc], a
    ld [$42c1], sp
    db $e4
    ld [bc], a
    jp Jump_074_40c2


    xor $80
    xor d
    jr nz, @+$7a

    ld bc, $e3c0
    ld a, [$8003]
    pop de
    jr jr_074_6e49

    ld [bc], a
    inc bc
    rst $20
    add h
    jp nz, Jump_074_443c

    sbc a
    and b
    db $ec
    ld h, l
    ld a, d
    ld h, d
    nop
    ld d, e
    ld b, l
    add b
    rst $08
    add b
    ld [bc], a
    inc bc
    rst $20

jr_074_6edf:
    ld b, b
    db $e4
    ret nz

    pop hl
    ld l, h
    ld h, h
    cp d
    dec b
    ld b, b
    sub c
    inc hl
    nop
    xor a
    add b
    add d
    ld b, $c2
    inc bc
    db $e3
    ld [bc], a
    ret nz

    add hl, sp
    ld hl, sp-$7d
    nop
    db $ec
    ld b, e
    cp d
    ld h, h
    ld hl, sp+$44
    nop
    ld c, h
    cp d
    ld b, d
    nop
    db $e4
    inc c
    and b
    ld bc, $23e3
    ld [hl], $45
    ld hl, sp-$7f
    ld a, [hl+]
    inc hl
    cp d
    jr nz, jr_074_6f1a

    cp d
    dec b
    nop
    or b
    ld e, h
    add hl, hl
    add d
    add h

jr_074_6f1a:
    and d
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld b, d
    jp hl


    ld b, [hl]
    ld b, d
    pop bc
    and b
    ld a, c
    dec b
    cp d
    dec b
    add b
    ld [hl], b
    ld b, d
    adc b
    ld b, b
    push hl
    add hl, sp
    jp $87e0


    inc bc
    add [hl]
    add l
    ld l, e
    ld bc, $03f8
    ret nz

    add [hl]
    add b
    db $10
    ld b, l
    and l
    ret nz

    add $47
    jr c, jr_074_6f7b

    ld b, l
    dec b
    pop bc
    ld b, c
    ld h, c
    ld l, l
    jr nz, jr_074_6edf

    ld l, e
    ld bc, $3880
    ld b, b
    dec a
    ld h, [hl]
    add b
    ld de, $25b5
    push bc
    add b
    jp nz, $c6e1

    and b
    add h
    nop
    xor $03
    ret nz

    ld [c], a
    ld hl, sp+$22
    ld a, a
    add e
    cp l
    and e
    add b
    ld c, $82
    and l
    ld b, l
    add b
    nop
    ld b, a
    pop bc
    pop bc
    ldh [$f1], a
    inc hl
    ld l, $00
    ret nz

    pop hl
    ld a, [hl]

jr_074_6f7b:
    and c
    cp c
    inc bc
    cp l
    and e
    nop
    add b
    call z, $a682
    ld l, $24
    pop bc
    ld [c], a
    ld a, l
    inc bc
    ld bc, $c0e0
    rst $20
    dec sp
    ld b, d
    inc a
    nop
    ld c, a
    ld b, [hl]
    add c
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [$ca], a
    and b
    ld [bc], a
    nop
    ld h, b
    adc b
    push af
    jr nz, jr_074_6fe5

    ld [bc], a
    db $fd
    ld [c], a
    ret nz

    call nz, Call_074_433d
    add b
    ld l, l
    ld c, a
    sbc l
    sbc e
    sbc e
    sbc e
    pop bc
    pop hl
    call Call_000_3b60
    db $fd
    ldh [$c0], a
    ld [$bbc5], sp
    ld bc, $0272
    rst $38
    and l
    add b
    call nc, Call_074_4548
    ld b, h
    inc a

jr_074_6fc9:
    dec de
    and c
    ld h, h
    rst $38
    ldh [$a2], a
    inc a
    db $fc
    ld b, d
    adc b
    and b
    or h
    inc bc
    ldh [$33], a
    ld [bc], a
    nop
    call nz, $0278
    add b
    call z, Call_074_4609
    ld b, d
    dec [hl]
    ld l, c
    ccf

jr_074_6fe5:
    and b
    dec [hl]
    dec [hl]
    and b
    ld l, d
    dec [hl]
    db $fc
    ld b, d
    ld c, b
    and d
    jr jr_074_6ff8

    ld h, d
    ld a, h
    jp nz, $203a

    ld a, c
    adc e

jr_074_6ff8:
    ld a, $86
    add b
    ld l, b
    dec bc
    ld b, a
    ld e, h
    ret nz

    ldh [$0d], a
    ld h, c
    ld l, d
    dec [hl]
    ld b, d
    nop
    ld b, e
    sbc c
    add hl, bc
    ld h, b
    ret nz

    ld a, [bc]
    ld b, b
    db $fc
    and e
    add c
    and d
    ld a, $20
    nop
    ld c, l
    ld [$44c8], sp
    inc a
    bit 5, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld c, c
    add b
    add b
    ld hl, $0f02
    ld bc, $3e98
    ld [hl+], a
    db $f4
    nop
    ld a, b
    nop
    pop bc
    ld b, c
    ld b, c
    ld b, h
    nop
    ld c, b
    ret z

    and a

jr_074_7036:
    or d
    and b
    nop
    sbc d
    ret nz

    rst $00
    and a
    jr nz, jr_074_6fc9

    ld a, l
    ld a, e
    nop
    ld [bc], a
    inc bc
    ld a, c
    ld a, [hl]
    sbc h
    jr nz, @-$53

    nop
    or $e3
    rst $38
    ld b, h
    nop
    ld b, a
    adc b
    and [hl]
    ld d, $a4
    ld bc, $9a9d
    ld b, b
    add $9a
    ld [hl], b
    ret nz

    or [hl]
    nop
    or h
    nop
    ld d, $48
    nop
    sbc e
    sbc d
    push af
    pop hl
    adc l
    call c, $c1a2
    ld [bc], a
    dec c
    add a
    sub b
    ld c, b
    and l
    ld h, l
    inc bc
    jr c, jr_074_7036

    db $fd
    db $e3
    sbc l
    db $f4
    pop hl
    or c
    nop
    sbc d
    nop
    or $e0
    add sp, -$1d
    and h
    ld bc, $4401
    add a
    and h
    ret


    and d
    ld c, d
    inc b
    jr z, jr_074_70b0

    nop
    ld h, l
    ld b, $5a
    inc b
    jp hl


    and b
    pop de
    add c
    ld c, [hl]
    inc bc
    call c, Call_000_01a1
    ld b, d
    ld c, d
    ld b, $00
    ld a, a
    db $e4
    ret nz

    rst $20
    and l
    ld hl, $80e5
    ld e, $c1
    sbc d
    ld hl, $c116
    db $f4
    jp hl


jr_074_70b0:
    nop
    sbc a
    db $e4
    ld c, d
    ld h, [hl]
    add b
    ret


    xor b
    ld [bc], a
    push hl
    ld h, c
    ld h, h
    nop
    ld e, [hl]
    ld hl, $61da
    nop
    ld d, [hl]
    ld hl, $e8f4
    jr nz, jr_074_70eb

    ld b, e
    dec h
    call nz, Call_000_0080
    nop
    nop
    cp a
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    ld [$0b4d], a
    ld c, $0e
    db $fd
    pop hl
    ld c, l
    ei
    db $e3
    pop hl
    ldh [$f5], a
    db $e4
    sub $ef
    nop
    call nz, $fde2

jr_074_70eb:
    xor $c0
    db $e3
    and a
    ldh [$fd], a
    add sp, -$63
    pop hl
    call nc, $c0f1
    pop af
    jr @-$38

    push hl
    ld a, [hl]
    ldh [$fd], a
    db $e3
    dec l
    dec l
    ld a, e
    ld [c], a
    ret nc

    ld hl, sp+$3d
    push hl
    ld l, [hl]
    sub e
    rst $20
    dec c
    ld l, l
    ld l, e
    rst $38
    rst $20
    ld c, l
    dec l
    or c
    pop hl
    ret nz

    ld [hl], a
    db $e4
    inc de
    db $eb
    adc c
    jp hl


    inc b
    pop hl
    adc e
    pop hl
    nop
    ldh [$0d], a
    ld l, l
    inc c
    call Call_000_3ce1
    db $e4
    dec l
    dec c
    cp a
    db $e3
    ld a, l
    rst $30
    add hl, bc
    ld [c], a
    dec bc
    ld [c], a
    cp [hl]
    cp b
    db $e4
    ld l, l
    dec l
    dec l
    dec l
    inc c
    rst $38
    ldh [$2c], a
    nop
    db $fc
    pop hl
    inc [hl]
    pop hl
    ld a, [hl]
    ldh [$92], a
    ld [$f043], a
    ld a, d
    pop bc
    add h
    ld [c], a
    dec b
    ldh [rNR13], a
    dec bc
    dec c

Jump_074_7150:
    pop bc
    ld [c], a
    db $fc
    ld [c], a
    inc l
    cp [hl]
    pop hl
    dec a
    ldh [rNR42], a
    rst $20
    ret nz

    add b
    push de
    ld [hl], c
    jp nz, $c1c7

    ld b, d
    ldh [$c1], a
    and $7e
    db $e3
    ld l, e
    ld l, l
    nop
    add b
    db $e3
    ld a, d
    jp c, $c214

    add $c1
    ld b, d

Call_074_7174:
    db $e4
    ld a, [hl]
    and $7f
    ld [c], a
    xor $a3
    nop
    add b
    ret c

    call nc, $c6a2

jr_074_7181:
    jp nz, $e5c1

    ld bc, $7fe1
    db $e4
    db $fd
    push bc
    ld a, d
    call z, Call_000_0978
    res 3, e
    and c
    dec b
    rst $20
    ld l, h
    ld c, h
    ld c, h
    ld c, h
    db $fd
    jp z, Jump_074_7150

    and c
    adc e
    or h
    adc h
    and e
    ld b, d
    and c
    dec bc
    dec b
    ldh [$2c], a
    adc b
    pop bc
    rst $28
    ld l, h
    ld l, h
    dec hl
    dec bc
    cp [hl]
    rst $20
    dec c
    dec c
    ld c, e
    nop
    cp l
    jp nz, $cc3a

    nop
    and [hl]
    ld h, b
    call nz, $e3c0
    add d
    ld [c], a
    pop bc
    ldh [$fe], a
    ldh [$84], a
    ld a, l
    db $e4
    db $fd
    ret nz

    ld c, e
    cp l
    call nz, $acb7
    inc bc
    add $c0
    db $ec
    inc l
    ld e, $c2
    ldh [$0b], a
    dec bc
    ld l, e
    ld c, e
    ld a, h
    add $7d
    ret z

    ret z

    adc [hl]
    jr c, @-$7b

    and [hl]
    add a
    and c
    adc e
    push bc
    ld l, e
    ld c, e
    ld c, e
    pop bc
    and $ff
    call nz, Call_074_5a00
    push hl
    nop
    xor a
    ld [hl+], a
    jp $a187


    ret z

    xor b
    rst $30
    jp $c97d


    jr nz, jr_074_7181

    nop
    nop
    or d
    ld c, e
    add c
    add a
    xor e
    jp $fce6


    and h
    cp $c3
    scf
    sub h
    ret nz

    add e
    nop
    jp nz, $fac5

    rst $28
    cp [hl]
    add $43
    ldh a, [$a4]
    add e
    rlca
    and e
    pop bc
    or $7e
    jp nz, $d800

    db $e4
    add b
    ld l, l
    add hl, sp
    ld h, d
    ld d, e
    ld h, b
    add b
    ld hl, sp+$78
    add b
    ret nz

    db $e4
    scf
    sub b
    add b
    jp nz, $c065

    cp $d6
    jp $f13d


    nop
    and $c9
    jp z, $8779

    ld l, h
    ld h, c
    ld l, h
    cp [hl]
    and h
    or a
    ld c, d
    ret


    ld c, b
    db $db
    ld b, d
    dec bc
    dec c
    inc c
    and l
    add b
    ei
    add a
    pop bc
    push hl
    dec hl
    ld h, b
    ld b, b
    rst $00
    add b
    call nc, $6016
    adc d
    db $ec
    ld c, e
    inc b
    cp e
    add e
    ld a, d
    ld h, c
    ld l, l
    ld a, [de]
    and l
    nop
    or d
    inc de
    ld b, c
    sub e
    ld b, b
    ld a, a
    db $eb
    ld bc, $3b2c
    and b
    ld a, d
    add d
    ld b, b
    and b
    ld a, l
    ld h, d
    sbc a
    ld h, d
    nop
    xor a
    ld b, l
    ld h, h
    inc b
    ld a, [hl]
    adc $c0
    pop hl
    dec bc
    nop
    xor e
    jp c, Jump_000_0ce1

    ld d, b
    ret


    inc h
    dec b
    ld h, b
    ld e, $fe
    ret


    inc l
    inc l
    ld c, e
    ld l, e
    nop
    and a
    cp c
    inc hl
    or $2c
    nop
    dec a
    dec h
    nop
    add [hl]
    ld a, l
    jp z, $85fe

    inc a
    ld h, e
    sbc [hl]
    ld b, d
    rst $10
    dec h
    add b
    call z, Call_074_7c00
    and e
    reti


    ld hl, $6088
    add h
    ld h, b
    add c
    ld h, c
    db $76
    jp hl


    ld l, l
    inc hl
    ld a, h
    pop hl
    ld [$b2bd], sp
    rst $00
    inc h
    reti


    nop
    ld c, e
    cp [hl]
    ldh [rHDMA2], a
    pop bc
    and h
    nop
    call nz, Call_000_0a41
    cp b
    ld [c], a
    ld c, h
    cp e
    ld b, d
    dec c
    ld [hl], h
    ld hl, $c19a
    push bc
    ld b, $73
    inc l
    ld c, $0a
    jr nz, @+$4d

    dec bc
    dec bc
    cp a
    ldh [$c1], a
    inc b
    rst $38
    ld b, b
    rlca
    jp nz, $eae0

    and c
    ld hl, sp+$22
    ld [hl], h
    ld [hl+], a
    and c
    rlca
    add d
    db $10
    dec l
    dec bc
    ld c, e
    ld [hl+], a
    cp l
    ldh [$0b], a
    ld sp, hl
    ret nz

    db $76
    pop hl
    add c
    ld [hl+], a
    dec hl
    db $ec
    call nz, $22b6
    nop
    or l
    inc hl
    dec de
    ld [hl+], a
    cp l
    or h
    jp nz, $bee1

    db $e3
    or h
    ld b, b
    ld c, c
    and b
    ld hl, sp+$41
    ret nz

    ld l, c
    and e
    cp h
    pop hl
    cp b
    ld b, h
    ld l, $07
    xor d
    dec b
    and [hl]
    push bc
    ld c, l
    dec l
    dec l
    ld c, e
    rst $38
    ldh [$0b], a
    ld c, e
    ld [hl], a
    ret nz

    ld c, e
    rst $30
    jp nz, Jump_074_41f8

    nop
    db $76
    pop hl
    ld a, [hl-]
    adc c
    ld d, d
    ld b, e
    add b
    ld c, $77
    and e
    ld d, c
    nop
    ei
    ret nz

    add b
    pop hl
    db $10
    ld a, [hl-]
    pop hl
    cp c
    ld b, c
    ret nz

    push hl
    or d
    ld bc, $fa0b
    ld h, c
    ld a, [$fe2f]
    ld h, d
    jr jr_074_73d4

    ld [hl+], a
    sbc [hl]
    add c
    ret nz

    db $e3
    ld c, e
    dec hl
    ld a, c
    ldh [$3a], a
    ld b, c
    pop af
    ret nz

    jr jr_074_73e1

    adc h
    add b
    pop de
    db $fc
    dec h
    dec c
    ld l, e
    ld [bc], a
    db $e3
    ld a, $42
    or h
    pop bc
    rrca
    ld l, e

Jump_074_7376:
    ld a, [bc]
    ld a, [bc]
    dec c
    ld [hl], l
    ld [hl+], a
    ld a, d
    add [hl]
    ld d, h
    ld b, d
    ld [hl], l
    dec l
    ld b, $2a
    db $e4
    dec c
    ld l, l
    dec a
    ret nz

    ei
    and b
    add d
    ldh [rLYC], a
    ld [c], a
    ei
    jr nz, @+$06

    ret nz

    ldh [$f7], a
    ld b, $6d
    ld d, $82
    or a
    ld d, c
    ld a, e
    ld h, h
    pop bc
    pop hl
    ld a, $c1
    ld a, h
    ret nz

    ld hl, $0046
    ld a, [bc]
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld l, e
    ret nz

    push bc
    jr nz, jr_074_7428

    ld hl, $819a
    ld b, b
    ret z

    add b
    ld l, b
    pop hl
    ld [bc], a

jr_074_73b7:
    ld l, l
    add d
    pop bc
    ret nz

    rst $20
    ld b, $c2
    ldh [$2a], a
    ld a, [hl+]
    inc b
    jr nz, @+$3e

    ld l, c
    ld a, a
    and b
    add b
    adc $80
    ld h, e
    ld b, b
    pop bc
    pop hl
    add d
    pop bc
    add c
    pop hl
    ld [bc], a
    push hl

jr_074_73d4:
    push bc
    ld bc, $042f
    ld l, h
    add d
    pop bc
    jr z, @-$6a

    dec b
    add b
    rst $08
    ld h, d

jr_074_73e1:
    ld h, c
    ld l, e
    ld c, b
    jp nz, Jump_000_034b

    db $e4
    cp b
    and l
    nop
    inc l
    inc b
    cp d
    ld [$d080], sp
    ld a, [hl]
    ld [hl+], a
    ld a, [bc]
    jr nz, jr_074_73b7

    ld [$c03d], a
    or l
    and b
    nop
    inc a
    ld b, a
    ld bc, $fba0
    ld h, $80
    call $e380
    inc bc
    and $81
    jp $a172


    nop
    ld l, d
    ld b, b
    cp d
    rlca
    scf
    add d
    ld c, h
    dec b
    cp l
    xor d
    add hl, sp
    ld h, c
    ld b, b
    db $e3
    inc bc
    and $00
    ld [hl], $c2
    add b
    rst $20

Jump_074_7422:
    cp d
    ld h, e
    ld d, l
    ld h, e
    dec a
    adc l

jr_074_7428:
    cp [hl]
    ld b, e
    ld d, l
    ret nz

    add $a8
    nop
    inc b
    ret nz

    ret nz

    jp hl


    dec a
    add c
    cp $c5
    nop
    xor [hl]
    ld a, l
    inc hl
    ld b, b
    db $e3
    add [hl]
    and l
    ld [bc], a
    or a
    add c
    ld c, e
    ld b, d
    push bc
    cp d
    ld d, $7d
    ld b, h
    or c
    ld h, c
    add h
    and b
    ld c, [hl]
    and d
    nop
    ld sp, hl
    call nz, $60b2
    db $ed
    jr nz, @+$2e

    rlca
    ret nz

    add e
    rst $38
    jp Jump_074_4b00


    ld b, l
    and [hl]
    ld a, [bc]
    adc $c2
    dec bc
    cp c
    jp nz, Jump_074_426b

    ldh [rTIMA], a
    push bc
    cp d
    rlca
    cp c
    ld b, d
    add b
    add b
    ld l, e
    ret nz

    ld b, $11
    ldh [$83], a
    and e
    ld [$c2e0], sp
    pop hl
    add $a0
    dec l
    inc c
    xor $0a
    ld a, $a0
    ld c, e
    ld l, l
    push de
    ld h, h
    add b
    db $10
    jp nz, $c7a3

    call nz, $c10c
    db $e4
    cpl
    dec hl
    dec c
    dec bc
    cp a
    ret


    cp l
    ld c, c
    ld b, c
    ld hl, $a282
    add b
    nop
    ld h, c
    add hl, bc
    jp nz, $efc1

    add b
    db $e3
    ld a, [$8006]
    ld a, [bc]
    sbc a
    ld bc, $c06b
    rlca
    rst $00
    nop
    ld h, e
    inc [hl]
    dec c
    ld a, [hl]
    add b
    cp b
    ld [bc], a
    jp Jump_074_4db0


    ld c, l
    rlca
    ld l, l
    ld l, e
    ld l, e
    call Call_074_4965
    and b
    add b
    ld b, e
    add b
    xor $80
    jp nz, Jump_000_3a14

    dec b
    ld b, $a5
    ld c, l
    add l
    ldh [rOCPD], a
    adc e
    ret nz

    ret nz

    rst $20
    ld a, d
    add d
    nop
    add b
    xor $40
    ld h, c
    ld b, b
    ld b, d
    add b
    call $e085
    ret nz

    push hl
    jp Jump_000_3c40


    ld b, b
    add b
    ld [bc], a
    ld h, b
    ld [$f8a1], sp
    inc c
    add b
    and l
    nop
    xor h
    pop bc
    ld [c], a
    add b
    ldh [rOCPD], a
    ld c, b
    ret z

    add a
    ld [$c882], sp
    add e
    ld l, h
    db $f4
    ld b, $c1
    ld b, b
    dec bc
    ccf
    ld h, b
    nop
    nop
    ld c, l
    ld a, [bc]
    add b
    ld b, d
    db $e3
    ret nz

    rst $20
    nop
    ld [c], a
    inc [hl]
    inc bc
    ld a, $23
    inc [hl]
    dec h
    ret nz

    ccf
    ld h, c
    sub c
    and l
    nop
    ld b, e

jr_074_7521:
    db $ed
    ld b, c
    inc b
    ld [c], a
    ld c, h
    ld hl, $4b2d
    nop
    cp c
    ld [c], a
    add [hl]
    and b
    jp z, Jump_074_7422

    ld [bc], a
    push af
    jp Jump_000_0069


    pop bc
    pop hl
    ret nz

jr_074_7539:
    db $e4
    ld [bc], a
    ld b, [hl]
    jp z, $c02d

    db $e3
    ld h, [hl]
    ld b, b
    ld e, a
    nop
    ld [hl], $e1
    pop bc
    ld [c], a
    jp nc, $0000

Jump_074_754b:
    ld a, [$7502]
    inc bc
    add hl, bc
    add c
    xor b
    ld [hl+], a
    add d
    and c
    ld b, b
    ld b, $59
    inc bc
    add b
    db $e3
    nop
    jr z, jr_074_7521

    ld h, $a4
    ld d, a
    ld b, d
    dec e
    ld b, b
    or [hl]
    jp nz, $e0f6

    ld c, h
    ld [bc], a
    push hl
    ld bc, $0100
    db $e3
    ret nc

    daa
    ld [hl], e
    ld hl, $e380
    jr z, jr_074_7539

    cp d
    ld h, d
    ld a, b
    ld hl, $6332
    nop
    or c
    pop hl
    jp nz, $cee1

    inc hl
    call $aa21
    ldh [rOBP1], a
    adc h
    inc b
    ret nz

    ld c, d
    ld h, d
    nop
    rst $20
    jr nz, jr_074_75b7

    inc bc
    pop hl
    ld h, $fc
    xor $b6
    db $e3
    inc bc
    dec hl
    set 0, c
    ret nz

    db $e3
    jr nz, jr_074_75da

    add h
    ret nz

    ld hl, sp+$07
    jp Jump_074_6355


    ld a, $a1
    dec c
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

jr_074_75b7:
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
    db $eb
    ld [$000f], a
    rst $38
    db $e3
    ld hl, sp-$1d
    ldh [$f1], a
    db $db
    and $f4
    db $e4
    ret nz

jr_074_75da:
    xor $da
    db $e3
    ldh [$e2], a
    nop
    rst $18
    di
    add $e7
    cp a
    push af
    add a
    push hl
    ld a, a
    ldh a, [rOCPD]
    push hl

jr_074_75ec:
    sbc c
    db $e4
    ld h, b
    ldh a, [rP1]
    jp Jump_000_3fe7


    pop af
    inc l
    jp hl


    jr nz, jr_074_75ec

    ret nz

    add sp, -$7f
    rst $30
    scf
    push hl
    and c
    rst $30
    nop
    jp nz, Jump_074_61d2

    rst $20
    ld h, h
    ld a, [c]
    adc l
    add $a4
    di
    ld [hl], b
    add $65
    ret c

    add e
    ld hl, sp+$00
    ld sp, $2cc1
    call nz, $d525
    ld [bc], a
    call nz, $d605
    inc l
    ld a, [c]
    rst $38
    ld [c], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_074_7644:
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld de, $0000
    pop af
    pop af
    jr jr_074_7644

    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    inc de
    inc de
    call c, $ffff
    push af
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
    ld bc, $d5fe
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

jr_074_77f0:
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
    jr nz, jr_074_77f0

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_074_64e1

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

jr_074_7866:
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

jr_074_78a4:
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
    jr nc, jr_074_7866

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
    jr nz, jr_074_78a4

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

jr_074_7949:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_074_7949

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
    jr nz, jr_074_79e0

    jr jr_074_7a50

jr_074_79e0:
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

jr_074_79fc:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_074_7a38

    cp $ff
    jr nz, jr_074_79fc

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
    jr nz, jr_074_79fc

jr_074_7a38:
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
    ld hl, $7a64
    call Call_000_23e8
    add sp, $02

jr_074_7a50:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7a64
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_074_7a6d

    rst $30
    nop
    inc bc
    ret nz

jr_074_7a6d:
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

jr_074_7a7f:
    ld a, [hl]
    cp $ff
    jr z, jr_074_7aa1

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
    jr nz, jr_074_7a7f

    ld a, b
    call Call_074_7aab
    ld a, c
    cp $04
    jr nz, jr_074_7a7f

jr_074_7aa1:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_074_7aab:
    push af
    push bc

Jump_074_7aad:
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

jr_074_7ac1:
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
    jr nz, jr_074_7aea

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_074_7ac1

jr_074_7aea:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_074_7c00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_074_7e24:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_074_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_074_7fb4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
