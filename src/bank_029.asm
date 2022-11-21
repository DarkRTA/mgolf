; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $029", ROMX[$4000], BANK[$29]

    daa
    ld a, c

Call_029_4002:
    adc $79
    ld b, b
    ld b, b
    ld c, b
    ld b, b
    add sp, $45
    and h
    ld c, d
    ld de, $704e
    ld c, [hl]
    call nz, $c54e
    ld c, [hl]
    adc b
    ld b, b
    ld c, e
    ld c, a
    ld d, e
    ld c, a
    ld b, d
    ld d, [hl]
    ldh a, [$5b]
    ld a, $60
    and c
    ld h, b
    di
    ld h, b
    db $f4
    ld h, b
    sub e
    ld c, a
    ld a, d
    ld h, c
    add d
    ld h, c
    dec [hl]
    ld l, h
    ld a, [hl-]
    ld [hl], c
    rra
    ld [hl], l
    sub e
    ld [hl], l
    db $eb
    ld [hl], l
    inc a
    db $76
    jp nz, $c461

    ld c, [hl]
    di
    ld h, b
    db $eb
    ld [hl], l
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
    db $ec
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $03ec
    di
    inc bc
    nop
    inc bc
    nop
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
    ldh a, [$03]
    ret nz

    ld [bc], a
    ld b, b
    dec l
    ld_long a, $ff01
    ld b, e
    ld b, b
    ld b, e
    ld b, b
    dec l
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

jr_029_40b1:
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

Call_029_40c0:
    rst $20
    add h
    sbc a
    jr z, @-$2e

    ldh [rP1], a
    jp c, $ff00

jr_029_40ca:
    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    jr c, jr_029_40ca

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

Jump_029_40e0:
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
    jp z, Jump_029_486d

    ld [$dd90], a
    sub b
    rst $38
    rst $18
    jr z, jr_029_40b1

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

jr_029_4138:
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
    jr jr_029_416a

    ldh [$f7], a
    rst $28
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, jr_029_4138

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

jr_029_416a:
    rst $38
    rst $18
    db $e4

jr_029_416d:
    rst $38
    jr jr_029_416d

    inc b

jr_029_4171:
    rra
    ld [c], a
    db $fd
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $ff
    db $e3

jr_029_417f:
    and $4f
    add sp, -$71
    ret z

    cpl
    sbc b
    rst $28
    rla
    jr c, jr_029_4171

    ldh a, [$f6]
    jp Jump_029_6fc8


jr_029_418f:
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

    jr c, jr_029_418f

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

Jump_029_41b6:
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

jr_029_41c7:
    pop hl
    sbc b

jr_029_41c9:
    ld d, b
    ld [c], a
    rst $38
    jr jr_029_41c9

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
    jr jr_029_417f

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_029_4267

    ld a, [hl-]
    ret nz

    db $dd
    inc b

jr_029_41ec:
    ei
    jr nz, jr_029_41ec

    ret nz

    push hl
    rst $18
    cp $01
    rst $38
    ld bc, $faf9

jr_029_41f8:
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
    jr nz, jr_029_41c7

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $ffe7


    rrca
    sbc b
    jr c, jr_029_4274

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, jr_029_41f8

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

jr_029_4267:
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

jr_029_4274:
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

Jump_029_42c1:
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

jr_029_4356:
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

jr_029_4368:
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

jr_029_4384:
    adc b
    push af
    db $10
    push de
    add d
    db $76
    ret nz

    jr jr_029_4368

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_029_4396:
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
    jr c, jr_029_4396

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_029_4356

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_029_43d9:
    inc c
    ld hl, sp-$02

jr_029_43dc:
    ldh [rNR44], a
    ret nz

    ld h, h
    and d
    db $10
    rst $28
    jr jr_029_43dc

    inc c
    rst $20
    rst $28
    jr jr_029_43d9

    adc l
    db $e3
    dec a
    and b
    rst $28
    jr c, jr_029_4384

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

Call_029_4400:
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

Call_029_4484:
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
    jr c, jr_029_44ce

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

jr_029_44ce:
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
    rst $28
    ldh a, [$b8]
    rst $00
    ld d, $f9
    db $fc
    rst $38
    db $e3
    db $db
    rst $20
    di
    adc $e6
    sbc $8f
    rst $38
    rst $38
    ld a, a
    rst $38
    ld d, e
    rst $28
    sbc c
    rst $20
    ld sp, hl
    rst $38
    rst $38
    xor [hl]
    rst $18
    ld e, a
    ld h, a
    ld c, e
    ld [hl], a
    rst $20
    rst $38
    ei
    sbc a
    ld sp, hl
    cp l
    ld sp, hl
    rst $38
    rst $38
    cp $fe
    rst $38
    ldh [rIE], a
    cp $fd
    db $fd
    rst $38
    cp $f1
    rst $38
    rst $38
    sbc c
    sbc a
    cp l
    cp a
    rst $38
    rst $38
    ld a, a
    ldh a, [rIE]
    ldh [$fa], a
    pop hl
    ld [$e4e3], a
    db $e3
    ld hl, sp-$08
    cp $fe
    db $fc
    ld [$e4e3], a
    db $e3
    rra
    rra
    ld a, a
    ld a, a
    db $ec
    di
    rst $38
    adc a
    rst $38
    ld a, c
    rst $38
    add sp, -$09
    di
    rst $28
    rst $28
    add $fe
    sbc $fe
    rst $00
    ldh [rIE], a
    ld h, a
    rst $38
    rst $38
    db $d3
    rst $28
    db $fd
    rst $38
    rst $08
    rst $38
    ld h, a
    ld a, a
    dec e
    rst $30
    sub $80
    db $fd
    ld sp, hl
    ei
    pop de
    add c
    adc $80
    sbc [hl]
    ldh [$0e], a
    sbc b
    ldh [$fb], a
    rst $38
    cp a
    db $db
    pop hl
    add hl, sp
    and $ea
    db $e3
    db $e4
    db $e4
    add hl, bc
    ei
    call c, Call_000_24e1
    add sp, -$21
    ld sp, $ffa0

Jump_029_45e4:
    db $ec
    nop
    nop
    nop
    pop bc
    ld d, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    ld [$5b5a], a
    cp b
    db $fc
    rst $28
    rst $38
    rst $38
    jp Jump_029_5ce7


    ld e, l
    ld d, c
    db $fc
    ldh [$5a], a
    pop hl
    ld e, e
    ld hl, sp-$1d
    db $fc
    db $e3
    rst $38
    rst $38
    jp $5ee7


    ld e, a
    ld e, d
    rra
    ld e, e
    ld e, [hl]
    ld e, a
    ld e, h
    ld e, l
    ld hl, sp-$1d
    db $fc
    db $e3
    call nz, Call_000_18ff
    ld [c], a
    pop hl
    jp Jump_029_7ee4


    ld [c], a
    ld e, [hl]
    ld e, a
    add d
    rst $20
    ld a, [hl]
    rst $38
    ld [$0ce3], sp
    jp $c4e5


    pop hl
    ld d, h
    ld d, l
    cp h
    pop hl
    ld a, [hl]
    jp hl


    ld a, d
    db $fd
    sub d
    db $e4
    inc c
    ld b, c
    pop hl
    jp $56e0


    ld d, a
    cp l
    pop hl
    ld a, [hl]
    jp hl


    ld a, d
    db $fd
    inc d
    and $5b
    ld e, h
    ld e, l
    jp $58e0


    ld e, c
    cp l
    pop hl
    ld d, c
    ld a, [hl-]
    ldh [rNR23], a
    ld hl, sp-$39
    jp $8adf


    jp nz, Jump_029_5f5e

    jp Jump_029_40e0


    ldh [$bd], a
    ldh [$c0], a
    add hl, sp
    pop hl
    db $76
    add $3b
    ld hl, sp-$7a
    push bc
    adc d
    pop bc
    ld b, $e1
    ld d, h
    ld d, l
    nop
    add e
    pop hl
    add hl, sp
    db $e3
    db $ec
    db $e3
    or b
    ret nz

    cp c
    add sp, -$7a
    push de
    adc d
    pop bc
    ld c, c
    pop hl
    rrca
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    cp h
    ld [c], a
    add hl, sp
    ldh [$ec], a
    db $e4
    cp l
    pop hl
    ld h, b
    dec sp
    ld [c], a
    ld [hl], d
    res 2, d
    and e
    ld c, c
    add $49
    ld [c], a
    ld d, h

jr_029_469d:
    ld d, l
    ld b, l
    pop hl
    nop
    cp h
    pop hl
    ld a, b
    jp nz, $e335

    ld a, [c]
    pop bc
    dec sp
    ld [c], a
    ld hl, sp-$35
    and d
    ret z

    add e
    db $e3
    nop
    add h
    jp $c011


    ld bc, $78e3
    ret nz

    dec [hl]
    db $e3
    ld l, a
    pop hl
    add d
    xor $a2
    sra h
    call z, $84c2
    jp $4e50


    rst $38

Jump_029_46ca:
    ldh [$50], a
    ld a, h
    db $e3
    ld [hl], e
    db $e3
    ret nz

    daa
    ld [c], a
    ld a, d
    jp $ab70


    jr nz, jr_029_469d

    inc c
    jp nz, $c48a

    ld d, c
    ld d, b
    ld a, a
    ld c, l
    add hl, hl
    jr z, jr_029_470d

    jr z, jr_029_4733

    ld d, b
    di
    ld [c], a
    add b
    dec hl
    add sp, -$1c
    add c
    and $83
    adc d
    xor e
    ld d, d
    and b
    inc c
    jp nz, $a0ca

    ld d, b
    ld hl, $8553
    ldh [$c1], a
    ld [c], a
    cp a
    ldh [$7a], a
    ldh [rHDMA2], a
    ld a, d
    pop hl
    ld b, d
    and b
    nop
    dec hl
    ld [c], a
    ld h, d
    pop bc

jr_029_470d:
    and $81
    nop
    rst $28
    ret


    jp nz, $a0ca

    add [hl]
    db $e3
    db $fc
    jp hl


    inc c
    ld a, d
    db $e4
    ld a, [c]
    and h
    ld d, [hl]
    ld d, a
    ld a, $eb
    sbc d
    add l
    ret


    call nz, $efc1
    nop
    ld a, d
    db $e3
    db $f4
    ret nz

    db $eb
    and e
    ld l, $e3
    xor [hl]
    adc c

jr_029_4733:
    db $10

jr_029_4734:
    add e
    ret


    call nz, $f0c1
    dec bc
    add hl, hl
    jr z, jr_029_4771

    pop hl
    ld c, l
    or e
    jp $c331


    ld h, d
    add d
    sub l
    ld h, e
    nop
    inc e
    add l
    ld b, c
    ld [c], a
    pop bc
    ld a, [c]
    jr nc, jr_029_4734

    or e
    jp $c231


    ldh a, [$66]
    sub l
    ld h, b
    db $f4
    and [hl]
    add a
    adc [hl]
    add b
    ld c, a
    ret


    jp Jump_000_2b2a


    jr nc, @+$32

    inc bc
    dec hl
    ld a, [hl+]
    ld hl, sp-$1d
    rst $30
    ld [c], a
    cp a
    db $e4
    ld a, [$a6a2]
    add b

jr_029_4771:
    ldh a, [$66]
    ret nc

    db $db
    ld h, b
    sub d
    ld h, e
    ld [de], a
    add c
    adc [hl]
    add b
    ld c, a
    adc d
    jp nz, $012e

    db $76
    rst $38
    ld [c], a
    jr nc, jr_029_47b6

    ld hl, sp-$1d
    ld bc, $2a2b
    ld a, [hl]
    push hl
    ret nz

    dec hl
    add e
    ld b, d
    push hl
    call nc, $1044
    ld h, c
    adc c
    and d
    ld a, [bc]
    call nz, $0131
    cp a
    ld bc, $1617
    ld [hl+], a
    ld d, $17
    ld sp, hl
    pop hl
    inc hl
    dec l
    inc hl
    ld hl, sp-$1f
    ld bc, $6d2e
    jp $2b52


    add h
    call z, $f86b
    ld d, [hl]
    ld h, c

jr_029_47b6:
    ld b, $c3
    ld a, [bc]
    jp $012c


    inc c
    ld b, $37
    ld a, a
    scf
    scf
    ld b, $22
    inc hl
    ld b, $3a
    rst $38
    ldh [$0b], a
    ld b, c
    ld b, d
    cp a
    and $4f
    ld a, [hl+]
    and h
    ld b, d
    res 3, a
    and l
    ld b, $c4
    rst $28
    ld sp, $1901
    jr @-$3d

    ldh [$37], a
    nop
    scf
    db $fd
    inc [hl]
    pop bc
    pop hl
    ld a, [hl-]
    ld a, [hl-]
    ld a, $43
    ld b, h
    ld bc, $0103
    ld sp, $c6fe
    ld h, $60
    ld b, d
    call z, $8313
    rst $00
    and h
    add c
    ldh [$fb], a
    add hl, bc
    nop
    ret nz

    ld [$3c48], a
    inc a
    ccf
    ld bc, $2c81
    cp $c7
    cp [hl]
    and c
    ret nz

    xor c
    ld d, a
    add e
    pop bc
    push hl
    add c
    pop hl
    nop
    db $fc
    cp a
    pop hl
    add b
    db $e4
    nop
    nop
    ld b, b
    inc a
    inc a
    dec a
    dec bc
    ld bc, $6b2f
    and e
    ld c, a
    or c
    add h
    ld l, [hl]
    ld b, h
    nop
    jp nz, $83ce

    pop bc
    ld d, e
    inc d
    call nz, $e181
    rst $38
    ldh [rLCDC], a
    db $e4
    push af
    ldh [$38], a
    dec sp
    ld e, a
    ld a, $3c
    ld c, d
    ld bc, $ef2f
    add e
    ld c, a
    ld l, b
    ld b, d
    ldh [$f4], a
    ld b, [hl]
    nop
    jp nz, $6350

    ld b, l
    ret nz

    call z, Call_000_2f82
    ld bc, $f620
    ret nz

    db $e4
    jr c, jr_029_488d

    or a
    pop hl
    inc [hl]
    dec sp
    dec sp
    ld b, b
    ld h, b
    ret nz

    pop hl
    push af
    add h
    cp c
    ld h, l
    nop
    ret z

    call Call_029_5661
    ld d, a
    ret z

    add l

Jump_029_486d:
    scf
    cpl
    ld bc, $8021
    pop hl
    nop
    scf
    add [hl]
    ldh [$bf], a
    ldh [$0d], a
    dec sp
    ret nz

    ldh [$3b], a
    ld c, d
    ld b, b
    ldh [$c1], a
    db $e4
    ld l, b
    ld b, b
    ld l, [hl]
    ld a, [hl+]
    ret c

    call Call_000_0564
    and a
    add b

jr_029_488d:
    db $e4
    dec sp
    jr c, @+$47

    pop hl
    dec [hl]
    dec sp
    ld d, $c0
    ld [c], a
    ld a, $3f
    nop
    db $e3
    ld c, a
    xor e
    ld hl, $2bf4
    ld d, l
    ld h, d
    jr nz, @+$53

    ld b, e
    add e
    and e
    ld b, b
    ld [c], a
    adc h
    ldh [$bf], a
    pop hl
    scf
    ld b, e
    ldh [$80], a
    pop hl
    dec bc
    jr nz, jr_029_48b6

    add b

jr_029_48b6:
    jp $b94f


    ld c, c
    cpl
    inc hl
    ld d, $43
    ld d, c
    ld b, d
    ld c, $03

Call_029_48c2:
    and e
    cpl
    ld bc, $c209
    pop hl
    cp a
    ld [c], a
    ret nz

    add sp, $00
    jp nz, $8240

    pop bc
    nop
    ld [$02a7], a
    sbc $42
    rst $00
    ld h, c
    adc l
    ld h, d
    inc l
    pop bc
    and b
    ld hl, sp-$41
    db $e3
    cp [hl]
    and c
    ld a, b
    pop hl
    dec sp
    dec sp
    add hl, bc
    ld bc, $022c
    ld [hl], c
    ld h, d
    ld d, d
    cp a
    add e
    adc d
    and l
    add hl, bc
    ld h, h
    sbc $43
    pop bc
    db $e4
    add c
    and b
    ld a, b
    ld a, a
    push hl
    ret nz

    ld [c], a
    ccf
    pop bc
    jr jr_029_491c

    ld bc, $8231
    rst $00
    ldh a, [$fc]
    add $c3
    and l
    ld c, $64
    ld c, d
    ld h, l
    inc l
    ld bc, $021d
    nop
    add b
    and $75
    jp nz, $e081

    add d

jr_029_491c:
    rst $00
    ld a, d
    ld b, a
    rst $38
    push bc
    add [hl]
    push hl
    add hl, bc
    ld h, h
    sbc h
    add c
    add b
    cp a
    ld [c], a
    ld b, $22
    ld [hl+], a
    cp [hl]
    add b
    or h
    and b
    ld b, $01
    rlca
    ld [bc], a
    db $e4
    add l
    db $e3
    ld a, d
    ld b, h
    ld [hl], h
    ld [bc], a
    ld a, [de]
    ld b, d
    pop bc
    db $eb
    ld bc, $ef82
    dec e
    dec d
    inc hl
    dec d
    ld c, b
    add c
    ld bc, $1517
    ld bc, $f722
    ldh [$82], a
    add l
    inc l
    inc bc
    nop
    rst $00
    push bc
    xor $81
    ld h, l
    ret


    ld h, h
    add h
    rst $30
    db $e4
    ld [bc], a
    add h
    ld c, a
    inc l
    inc b
    ld c, [hl]
    ld h, a
    call nc, Call_000_0751
    ld b, d
    ld l, $00
    ld c, c
    ld h, l
    ld [hl], $61
    jp Jump_000_0264


    add d
    or b
    inc bc
    db $fc
    dec b
    ld e, [hl]
    ld c, c
    add a
    ld d, d
    ldh [$f9], a
    dec hl
    ld d, d
    and d
    inc c
    pop bc
    nop
    push hl
    sub a
    dec h
    ld c, l
    ld d, b
    ld d, h
    ld bc, $4655
    ld d, e
    pop bc
    db $eb
    ld a, h
    dec b
    nop
    adc b
    ret c

    ld b, $ce
    nop
    ld b, a
    ld hl, $7806
    pop af
    ld c, l
    ld d, d
    ret nz

    dec h
    jp Jump_029_7e86


    push bc
    ld b, h
    add e
    ld h, e
    ld h, $00
    add $06
    ld b, b
    dec hl
    jp c, Jump_029_45e4

    add l
    ld a, [hl]
    ld [c], a
    pop bc
    add a
    add h
    ld b, e
    rst $18
    inc b
    add h
    scf
    ldh [rDMA], a
    nop
    ld d, e
    ret nz

    ld [$023a], sp
    ld b, l
    ld h, $c3
    adc d
    ld e, d
    ld bc, $695b
    inc bc
    db $ec
    ld h, c
    ld h, c
    ld bc, $03fc
    ld [hl], $47
    add [hl]
    push hl
    ld e, $83
    nop
    jp Jump_000_02c7


    push hl
    ld b, $43
    add l
    inc bc
    db $76
    db $e3
    ld e, a
    and e
    ld [hl], $21
    add sp, -$3a
    nop
    sbc $e4
    jp $80c8


    and [hl]
    ld b, $43
    dec h
    db $e3
    db $76
    db $e3
    sub d
    push hl
    rst $20
    push bc
    nop
    ld [$c3e5], a
    jp z, $2880

    cp h
    ld h, l
    and b
    push hl
    sub d
    and $87
    push hl
    ld [$00c5], a
    jp $c2c8


    daa
    ld a, l
    inc b
    add b
    ld b, d
    add d
    rst $20
    ld l, a
    call nz, $e4f5
    ld [$06c5], a
    ld [$5e65], sp
    ld e, a
    jp nz, $b428

    and l
    cp b
    ld h, b
    add d
    rst $20
    push af
    db $ed
    nop
    jp Jump_029_56e4


    ld b, $42
    add sp, -$4c
    and l
    ld a, [hl+]
    ret nz

    jr z, @+$25

    rst $10
    ld [c], a
    inc l
    ld h, e
    nop
    add d
    db $e4

Jump_029_4a40:
    db $ec

Jump_029_4a41:
    db $e4
    adc d
    and h
    add [hl]
    add hl, hl
    ld bc, $f125
    and h
    sbc [hl]
    add sp, -$0c
    ret


    nop
    rst $08
    and [hl]
    ldh [$ea], a
    ld a, [hl]
    db $eb
    db $eb
    add l
    db $76
    ld bc, $a1df
    add sp, -$5f
    ld [hl], d
    push hl
    nop
    adc d
    and $e0
    and $84
    jp z, Jump_000_2777

    ld l, l
    inc hl
    and d
    add d
    and b
    ld h, e
    jr jr_029_4ab5

    nop
    ld c, l
    xor h
    ld a, [$30f2]
    ld h, [hl]
    and d
    add d
    ld sp, $10e3
    push hl
    ld c, l
    xor d
    cp $fd
    nop
    ld a, d
    add sp, $7e
    db $eb
    rst $38
    rst $38
    ld [$fccf], a
    jp hl


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
    nop
    nop
    nop
    pop bc
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    ld [$0e0e], a
    nop
    db $fc
    rst $28

jr_029_4ab5:
    rst $38
    rst $38
    jp $c0e7


    db $e3
    cp $e1
    ret nz

    rst $38
    jp $c4f1


    db $e3
    nop
    ld a, [$c4eb]
    rst $38
    add e
    and $7e
    and $3e
    rst $38
    ld [$c3ed], sp
    push hl
    ret nz

    rst $20
    nop
    ld a, [hl]
    jp hl


    cp d
    db $fd
    adc d
    db $e4
    cp c
    ld_long $ff7a, a
    add b
    db $ed
    inc a
    add sp, $39
    ld [c], a
    nop
    ld a, d
    jp hl


    inc bc
    rst $38
    ret nz

    rst $28
    db $ed
    call nz, $e929
    add [hl]
    sbc $40
    jp $eeea


    nop
    cp c
    add sp, -$7a
    rst $18
    or d
    adc $b9
    ld [$ad92], a
    and b
    db $eb
    ld a, h
    pop af
    ld [hl-], a
    db $eb
    add b
    ld d, d
    or d
    ld b, a
    and $10
    jp $eaf1


    add d
    db $f4
    and d
    set 0, b
    xor c
    ld c, l
    add [hl]
    rst $38
    ldh [$2d], a
    ld c, l
    or c
    xor l
    or $b1
    sub $cb
    sub e
    and h
    ld l, l
    ccf
    dec hl
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld c, l
    dec l
    db $76
    and $bd
    jp z, Jump_029_7080

    xor c
    sub $cb
    ld d, [hl]
    and d
    add l
    ldh [$c1], a
    ld [c], a
    cp a
    ldh [$7b], a
    pop hl
    dec l
    nop
    ld b, b
    and e
    ei
    db $e4
    or $ad
    and [hl]
    and [hl]
    ld b, $a5
    push bc
    db $e4
    ld a, [$7ae7]
    db $e4
    ld h, b
    ld a, $f4
    and d
    xor b
    reti


    add d
    pop bc
    xor $7a
    db $e3
    ld c, l
    dec l
    and h

jr_029_4b5f:
    adc $18
    ld a, $cd
    adc c
    add d
    pop bc
    ldh a, [$2b]
    ld a, [bc]
    inc [hl]
    pop hl
    cp a
    ldh [$b9], a
    xor e
    ld [$aa4c], sp
    ret nc

    ld h, l
    ld b, e
    and $0b
    dec sp
    rst $20
    jr nc, jr_029_4b5f

    or e
    jp $abfe


    db $10
    dec hl

Call_029_4b81:
    xor d
    ld a, [bc]
    add c
    jp $ffe4


    ldh [$2b], a
    ret z

    ldh [$f8], a
    pop hl
    rst $30
    ld [c], a
    add b
    cp a
    db $e4
    ld [c], a
    ld h, l
    ret nz

    db $eb
    ld d, h
    ld l, c
    pop bc
    and $fc
    jp hl


    ld a, [hl]
    db $e4
    dec bc
    ldh [$31], a
    jp nz, $cdc2

    sbc b
    xor b
    ld a, [bc]
    call nz, $e084
    ld l, e
    ld l, e
    ld c, e
    rla
    ld c, e
    ld c, e
    dec hl
    ld sp, hl
    db $e3
    ld c, e
    ld [hl], e
    pop hl
    ld l, l
    jp $e5c0


    inc a
    sub h
    ld d, c
    jp Jump_029_6bc7


    dec bc
    ld l, e
    ld l, e
    ld b, d
    ldh [$be], a
    ldh [rSB], a
    ld l, e
    ccf
    ld [c], a
    ld a, [$f1e1]
    and e
    ld a, h
    ret nz

    add b
    xor $e4
    and l
    ld b, $c6
    inc c
    rst $08
    ldh [$c1], a
    pop hl
    dec hl
    ld l, e
    add a
    pop hl
    cp $c2
    ld a, l
    pop hl
    xor [hl]
    jp nz, Jump_029_7cc0

    jp nz, $ae80

    ld b, e
    ld [$e04b], a
    ret nz

    db $e4
    nop
    jp hl


    ld l, e
    dec bc
    ld bc, $6f4b
    jp nz, $c4fe

    ld l, [hl]
    ld c, c
    sbc a
    ld h, [hl]
    pop bc
    db $e4
    add c
    ld [c], a
    add d
    pop bc
    ld b, [hl]
    cp d
    call nz, Call_000_2b6b
    inc sp
    ldh [$c0], a
    ldh [rOCPD], a
    and e
    ld l, l
    nop
    ret nc

    ret nz

    ld h, c
    ld b, h
    inc d
    call nz, $e002
    cp $c0
    ld a, a
    push hl
    cp h
    ret nz

    dec hl
    ld c, e
    ld d, $34
    ret nz

    dec bc
    ld c, e
    rst $28
    add e

Jump_029_4c29:
    ld l, l
    cp [hl]
    adc e
    ld [hl+], a
    ld l, c
    rst $10
    and h
    add b
    nop
    ldh [rLY], a
    ldh [$3f], a
    db $e4
    ld a, h
    ret nz

    cp b
    ret nz

    or d
    ret nz

    add b
    db $e4
    dec c
    inc c
    ret nz

    push hl
    nop
    rst $08
    ld c, l
    dec l
    adc l
    add e
    adc h
    ret nz

    add c

Jump_029_4c4c:
    db $e3
    adc b
    ldh [rSB], a
    dec bc
    push bc
    pop hl
    ld a, $c1
    add b
    db $e4
    pop bc
    ldh [$7e], a
    adc l
    rrca
    ld b, a
    cp a
    db $e4
    ld [bc], a
    ld c, h
    ret nz

    dec hl
    ccf
    ret nz

    dec a
    ret nz

    rlca
    jp nz, $e6c0

    nop
    push bc
    db $f4
    inc l
    nop
    ld b, c
    ret z

    add e
    and e
    add b
    ld [c], a
    ret nz

    pop hl
    cp l
    and b
    ret nz

    push hl
    ld [hl], h
    pop bc
    nop
    jp nz, Jump_029_5c80

    ld c, d
    call Call_000_030c
    and h
    call nz, $c2c0
    ld [c], a
    cp a
    pop hl
    ret nz

    add sp, $6b
    nop
    add b
    xor c
    add d
    ldh a, [$c7]
    ld h, c
    ret z

    ld h, e
    ld de, $80c1
    ld [c], a

jr_029_4c9d:
    rst $38
    pop bc
    cp b
    and d
    nop
    ld a, $a1
    add b
    and h
    ld [c], a
    add hl, hl
    adc a
    inc c

jr_029_4caa:
    pop bc
    db $e3
    adc e
    ld [c], a
    ret nz

    db $e4
    ld [hl], l
    pop bc
    jr nz, jr_029_4caa

    pop bc
    ld a, [$82a2]
    add $33
    ld h, a
    or d
    daa
    ld l, l
    rst $38
    ldh [rIF], a
    ld h, d
    jr nz, jr_029_4c9d

    and b
    ld a, a
    and $7d
    and d
    db $76
    and h
    ld b, e
    jp Jump_000_114d


    ld [$6600], a
    add b
    ld b, a
    db $e4
    ret z

    ld h, h
    jp z, $8ac2

    db $e3
    pop bc
    and $02
    db $e3
    ld [hl-], a
    ld b, b
    dec c
    inc [hl]
    cp l
    push hl
    dec [hl]
    ld [bc], a
    dec l
    add a
    ld [c], a
    ld l, l
    ld a, [bc]
    db $e3
    jp nz, Jump_029_46ca

    nop
    adc c
    jp $8505


    ld a, [hl]
    add d
    ld [bc], a
    and $60
    add hl, hl
    call c, $8620
    jp hl


    cp a
    add sp, $48
    add [hl]
    add e
    ld a, $c3
    pop bc
    and $2b
    ret nz

    rst $20
    ld a, c
    dec b
    dec bc
    add hl, de
    ld l, c
    nop
    ld c, d
    ld c, b
    jp nz, $bd61

    and b
    ld l, b
    ldh [$c0], a
    ld h, c
    ld hl, sp-$1f
    ld [bc], a
    add l
    add b
    db $eb
    inc a
    jp c, $d840

    ld b, e
    dec c
    dec l
    dec l
    dec l
    dec sp
    jp hl


    push bc
    pop hl
    add d
    ld c, $c1
    dec bc
    or $e6
    ld b, e
    and l
    ld a, $0a
    jp z, Jump_000_0ae0

    and b
    dec bc
    add b
    jp hl


    add b
    nop
    and a
    ld bc, $9d4f
    db $e4
    inc b
    and b
    ld a, h
    db $10
    ld h, c
    jr nz, jr_029_4d7a

    ld bc, $6a2d
    add d
    sbc $20
    or b
    pop hl
    cp c
    ldh a, [$98]
    ld [c], a
    push bc
    adc b
    ld a, [$0048]
    ld b, d
    ld [$c4ec], sp
    ld a, b
    rst $28
    ld h, d
    pop hl
    dec d
    ld c, d
    ret nz

    xor $6c
    jr z, jr_029_4da4

    add c
    nop
    adc $00
    inc sp
    add d
    daa
    ldh [$62], a
    push hl
    add e
    ld a, [bc]
    pop bc

jr_029_4d7a:
    jr z, jr_029_4d7e

    ld c, c
    ld a, d

jr_029_4d7e:
    rlca
    add b
    ld a, d
    db $e3
    add sp, -$3d
    jp c, $82ed

    rst $28
    xor e
    rst $20
    ld a, [hl-]
    ld [HeaderRAMSize], sp
    dec c
    ld bc, $4d6d
    dec h
    ld b, l
    db $ec
    ld [bc], a
    db $ec
    ld a, d
    inc l
    db $db
    ld [$0046], sp
    ld [hl+], a
    rst $20
    nop
    ld d, [hl]
    dec hl
    cp e
    dec hl

jr_029_4da4:
    ld a, [$c00b]
    rst $20
    sbc a
    ld l, e
    call nz, $bd4a
    dec bc
    ld h, $89
    nop
    pop af
    jp z, $c7ea

    ld e, b
    add hl, bc
    jp Jump_029_7cee


    ld [$edf5], sp
    db $db
    ld l, c
    ld b, d
    db $ec
    nop
    ret nz

    ld l, b
    ld a, h
    adc $8c
    ld [$0b56], a
    ld b, e
    jr z, jr_029_4d7a

    adc d
    ld a, [$8acb]
    call z, Call_029_4400
    ld c, $c4
    call z, $aadf
    ld [$99cb], sp
    db $ec
    ccf
    dec c
    rst $38
    call z, $a970
    nop
    ld c, l
    or b
    ld a, [$b0f2]
    dec l
    add d
    db $ed
    jp Jump_029_70fa


    rst $28
    sub d
    call z, $ffc2
    nop
    ld [hl], c
    rst $28
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    call $0000
    nop
    ld b, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    rrca
    rst $38
    or $00
    ldh [rIE], a
    ldh [$ed], a
    ret nc

    db $eb
    ret nz

    db $ed
    adc [hl]
    db $ed
    and b
    db $ec
    ld l, e
    xor $d2
    pop af
    nop
    ld c, d
    jp hl


    ld h, b
    ld [$f029], a
    ld b, b
    jp hl


    add hl, bc
    pop af
    sub l
    xor $e8
    call z, $ffe0
    nop
    ldh [$f8], a
    add b
    rst $38
    ret nz

    rst $38
    sbc b
    ld [$f500], a
    ld a, [hl+]
    rst $10
    ldh [rIE], a
    ld d, h
    db $ed
    nop
    add b
    reti


    pop de
    ld [$b5e0], a
    pop de
    xor d
    ret nz

    cp a
    ldh [rIE], a
    ldh [rIE], a
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
    db $f4
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38

Call_029_4e75:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    ld a, [c]
    pop af
    rst $38
    db $e3
    pop hl
    db $fc
    ld [bc], a
    ldh [$e4], a
    ld hl, sp-$20
    or $bf
    db $e3
    ldh [$fd], a
    and b
    rst $30
    ldh [rIE], a
    dec [hl]
    db $ec
    ld bc, $5f13
    ld a, [c]
    ldh [$ef], a
    cp $d5
    ldh [rIE], a
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
    db $e3
    nop
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
    or b
    inc bc
    adc [hl]
    ld [bc], a
    inc d
    ld bc, $04aa
    ld c, l
    inc bc
    or b
    inc bc
    adc [hl]
    ld [bc], a
    inc d
    ld bc, $7f48
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    rst $38
    ld a, a
    ld d, b
    inc bc
    call nc, $ce01
    db $10
    push af
    ld [$117f], sp
    rst $38
    ld a, [de]
    adc $10
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

jr_029_4fbc:
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

jr_029_4fd5:
    db $fd
    inc b
    ei
    ld hl, $46ff
    and a
    jr c, jr_029_4fd5

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
    jp z, Jump_029_486d

    ld [$dd90], a
    sub b
    rst $38
    rst $18
    jr z, jr_029_4fbc

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

jr_029_5043:
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
    jr jr_029_5075

    ldh [$f7], a
    rst $28
    nop
    rst $10
    ldh [$e0], a
    rrca
    ret c

    jr c, jr_029_5043

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

jr_029_5075:
    rst $38
    rst $18
    db $e4

jr_029_5078:
    rst $38
    jr jr_029_5078

    inc b

jr_029_507c:
    rra
    ld [c], a
    db $fd
    rst $20
    db $10
    push hl
    rst $28
    ldh a, [rNR31]
    db $fc
    dec b
    ld e, $ff
    db $e3

jr_029_508a:
    and $4f
    add sp, -$71
    ret z

    cpl
    sbc b
    rst $28
    rla
    jr c, jr_029_507c

    ldh a, [$f6]
    jp Jump_029_6fc8


jr_029_509a:
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

    jr c, jr_029_509a

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

jr_029_50d2:
    pop hl
    sbc b

jr_029_50d4:
    ld d, b
    ld [c], a
    rst $38
    jr jr_029_50d4

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
    jr jr_029_508a

    ld d, b
    pop hl
    pop bc
    ld sp, hl
    ld b, $c7
    jr c, jr_029_5172

    ld a, [hl-]
    ret nz

    db $dd
    inc b

jr_029_50f7:
    ei
    jr nz, jr_029_50f7

    ret nz

    push hl
    rst $18
    cp $01
    rst $38
    ld bc, $faf9

jr_029_5103:
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
    jr nz, jr_029_50d2

    ld d, b
    ld a, l
    ldh [$c3], a
    ld e, [hl]
    jp $ffe7


    rrca
    sbc b
    jr c, jr_029_517f

    rst $20
    add a
    sbc a
    ld [$ffff], sp
    nop
    xor a
    jr nz, jr_029_5103

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

jr_029_5172:
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

jr_029_517f:
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

jr_029_5261:
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

jr_029_5273:
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

jr_029_528f:
    adc b
    push af
    db $10
    push de
    add d
    db $76
    ret nz

    jr jr_029_5273

    rst $38
    inc a
    and l
    ld a, [hl]
    jp $c366


    ld h, [hl]
    sbc c

jr_029_52a1:
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
    jr c, jr_029_52a1

    inc e
    push hl
    ld c, $cb
    inc e
    ei
    rst $10
    jr c, jr_029_5261

    add h
    inc a
    add a
    ld a, h
    rst $30

jr_029_52e4:
    inc c
    ld hl, sp-$02

jr_029_52e7:
    ldh [rNR44], a
    ret nz

    ld h, h
    and d
    db $10
    rst $28
    jr jr_029_52e7

    inc c
    rst $20
    rst $28
    jr jr_029_52e4

    adc l
    db $e3
    dec a
    and b
    rst $28
    jr c, jr_029_528f

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

Jump_029_537f:
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
    jr c, jr_029_53d9

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

jr_029_53d9:
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

jr_029_544a:
    ld h, $17
    and d
    rst $38
    di
    jp c, $eee1

    ld [hl], c
    db $f4
    dec sp
    ld sp, hl
    cp [hl]
    ldh a, [$a0]
    rst $18
    nop
    cp $00
    ei
    push bc
    and b
    ld a, a
    cp $fa
    ldh [rIE], a
    nop
    xor [hl]
    nop
    rst $30
    nop
    db $dd
    rst $38
    nop
    ld l, e
    nop
    sub $00
    cp e
    nop
    rst $28
    ei
    nop
    ld [hl], l
    and d
    ld b, d
    db $db
    inc h
    cp $01
    push af
    rst $38
    ld a, [bc]
    jp c, $f425

    dec bc
    add sp, $17
    add sp, -$01
    rla
    or c
    ld c, [hl]
    jp hl


    ld d, $d2
    inc l

jr_029_548f:
    ld h, e
    rst $38
    sbc h
    ret nc

    ld l, $e9
    ld d, $b4
    ld c, e
    rst $28
    rst $38
    db $10
    ld a, l
    add d
    rst $10
    jr z, jr_029_544a

    ld d, l
    ld b, l
    rst $38
    cp d
    add b
    ld a, a
    jr jr_029_548f

    ld l, [hl]
    add c
    ld a, [hl]
    rst $38
    cp l
    jr @-$17

    add b
    ld a, a
    ld b, l
    cp d
    xor d
    rst $38
    ld d, l
    rst $10
    jr z, jr_029_5536

    add d
    rst $28
    db $10
    ld e, a
    rst $38

jr_029_54be:
    add b
    rla
    ldh [$83], a
    ld a, b
    ld d, c
    xor h
    xor e
    rst $38
    ld d, h
    ldh a, [$0e]
    xor c
    ld d, [hl]
    db $f4
    dec bc
    db $f4
    rst $38
    dec bc
    xor c
    ld d, [hl]
    pop af
    ld c, $aa
    ld d, h
    ld d, d
    rst $38
    xor h
    add h
    ld a, b
    jr jr_029_54be

    ld l, b
    add b
    ld a, a
    rst $38
    cp a
    rra
    rst $28
    add a
    ld a, a
    ld d, e
    xor a
    xor e
    rst $30
    ld d, l
    pop af
    rrca
    ldh [$e1], a
    ld d, a
    nop
    adc [hl]
    nop
    rst $38
    rla
    nop
    adc d
    nop
    rlca
    nop
    ld c, d
    ld b, b
    rst $38
    dec b
    nop
    ld [bc], a
    nop
    sub b
    nop
    adc b
    nop
    rst $30
    ld de, $8001
    db $fc
    ldh [$c0], a
    ld b, b
    ld de, $ff01
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, b
    ld [bc], a
    nop
    ld b, b
    ld b, b
    rst $38
    and d
    and b
    ld b, b
    ld b, b
    and b
    and b
    ld d, l
    ld d, l
    rst $28
    ld [$41ea], a
    ld b, c
    db $ec
    ldh [rLYC], a
    inc hl
    inc hl
    rst $38
    ld b, l
    ld b, l
    xor e
    xor e
    ld d, a
    ld d, a
    rst $38
    rst $38
    rst $38

jr_029_5536:
    sub b
    nop
    adc c
    nop
    ld de, $8300
    nop
    rst $38
    ld [de], a
    nop
    rst $00
    ld b, b
    dec e
    nop
    ld [hl], a
    nop
    rst $38
    cp $ff
    cp $fe
    db $f4
    ld a, [$f2f6]
    rst $30
    pop af
    or $fe
    db $fc
    ldh [$f4], a
    ld a, [$7fff]
    ei
    ccf
    ld a, a
    db $fc
    ldh [rIE], a
    rst $38
    ld a, a
    cpl
    rst $30
    rst $38
    db $eb
    ld h, a
    inc hl
    rst $28
    ld sp, hl
    cp $fe
    cp $7f
    db $eb
    or $ee
    and $e3
    xor $fe
    db $fc
    ldh [$e7], a
    add sp, -$0a
    rst $38
    db $ec
    ldh [$fc], a
    ld [c], a
    ld b, a
    inc de
    rst $28
    db $dd
    rst $00
    ret c

    ldh [$f5], a
    ld a, [$bdfc]
    pop hl
    cp $dd
    ld a, a
    cp $f3
    db $fc
    ld d, l
    ld [$fdf2], a
    call nz, $ffe3
    ccf
    rst $38
    rst $30
    ld a, a
    ld a, $ff
    ld d, a
    rst $38
    cp $b8
    ldh [rIE], a
    ld a, [$fdfa]
    db $fd
    cp $fc
    rst $10
    db $fd
    ld a, [$0afc]
    add b
    db $fd
    adc a
    ret nz

    cp a
    ld a, a
    rst $18
    ld c, a

jr_029_55b7:
    ccf
    rst $18
    ccf
    sbc a
    db $e4
    ldh [$ef], a
    rst $38
    or a
    ld e, a
    ccf
    cp $7f
    pop hl
    db $fd
    cp $ee
    ld h, b
    cp $fe
    ret c

    ldh [rIE], a
    db $fc
    xor a
    sbc a
    ld l, a
    rra
    rst $00
    cp e
    ld a, a
    rra
    sbc $60
    cp a
    ld a, a
    rst $08
    ret c

    ldh [$f9], a
    db $fd
    cp $c8
    db $e3
    cp $fe
    rst $28
    cp $7e
    db $fd
    rst $18
    or $ff
    sbc a
    rst $38
    cpl
    ld c, d
    pop bc
    ccf
    rst $20
    rst $28
    sbc a
    rst $28
    rra
    call $e2d8
    rst $08
    rst $10
    db $e3
    rst $38
    db $db
    add e
    cp e
    ret


    or c
    pop hl
    sub l
    ld [hl], $f7
    nop
    and c
    add c
    jr nz, @-$3d

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
    ld b, e
    rst $38
    ei
    ei
    cp $fe
    ld a, a
    ld a, [hl]
    ld hl, sp-$10
    rst $38
    and [hl]
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
    jr nz, jr_029_55b7

    nop
    ld a, e
    or e
    or e
    adc [hl]
    ldh [$fe], a
    cp a
    cp a
    nop
    rst $38
    db $ec
    nop
    nop
    nop
    pop af
    ld d, c
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    di
    ld e, h
    ld e, c
    ld e, c
    ld e, h
    ldh a, [$da]
    rst $38
    ret nc

    jp hl


    pop de
    add sp, -$3d
    ldh [$5a], a
    ld e, b
    ld e, d
    ld d, [hl]
    cp b
    cp [hl]
    pop hl
    add sp, -$16
    ld sp, hl

Call_029_5661:
    ld hl, sp+$57
    ld d, h
    ld d, a
    di
    add sp, $5a
    sbc a
    ld e, b
    ld d, [hl]
    ld d, h
    ld d, [hl]
    ld e, d
    db $ed
    pop hl
    add sp, -$1f
    ld l, b
    db $fd
    ld l, c
    ld e, c
    rst $38
    ld e, e
    ld e, b
    ld e, e
    ld d, c
    ld d, c
    ld l, a
    ld a, [hl]
    sbc b
    ldh [$62], a
    ld h, e
    ld d, c
    ld e, h
    ld d, [hl]
    ld e, e
    pop bc
    ldh [$b3], a
    ld e, b
    ld e, e
    xor l
    pop hl
    add sp, -$1f
    ld l, d
    ld l, e
    ld d, d
    db $f4
    ld e, h
    di
    ld e, c
    ld d, [hl]
    ld e, b
    ldh [rNR21], a
    ld [c], a
    ld e, [hl]
    ld e, l
    ld e, [hl]
    ld d, c
    ld e, e
    ld [hl], b
    ld [hl], c
    ld e, b
    ldh [$64], a
    ld h, l
    ld [hl], h
    ldh [$61], a
    or c
    ldh [$67], a
    ld e, l
    ld h, c
    ld d, [hl]
    xor l
    ldh [$e8], a
    pop hl
    ld l, h
    ld l, l
    ld b, b
    pop hl
    ld e, h
    and a
    ldh [rHDMA2], a
    db $ed
    ld d, a
    ld d, h
    ld e, d
    sub a
    pop hl
    ld e, d
    ld b, l
    ldh [$b7], a
    ld h, b
    ld e, a
    ld h, b
    ei
    jp Jump_029_6766


    inc [hl]
    ldh [rHDMA5], a
    ld a, a
    ld h, c
    ld e, l
    ld h, c
    ld d, h
    ld d, h
    ld d, a
    ld e, [hl]
    add sp, -$1c
    and b
    ld bc, $a7e2
    ldh [$f9], a
    add $52
    ld [c], a
    dec bc
    pop hl

Jump_029_56e4:
    ld e, e
    rla
    pop hl
    ld e, e
    push bc
    ld d, [hl]
    ld [hl], d
    push hl
    ld d, h
    or $e2
    db $eb
    pop hl
    ld b, b
    ldh [$58], a
    ld e, e
    ret nz

    push bc
    db $e4
    and h
    jp $e0a7


    ld l, d
    add $52
    pop hl
    dec bc
    pop hl
    ld d, [hl]
    ld h, c
    push af
    ld e, l
    rlca
    ldh [$61], a
    call nz, Call_029_5cc2
    ld d, [hl]
    ld d, h
    ld d, l
    inc d
    or h
    ldh [$e2], a
    ld [c], a
    ld e, e
    jp Jump_029_5de0


    call c, $e7e3
    ld [c], a
    ld [hl], l
    jp nz, $11bc

    add sp, $6a
    db $e4
    ld e, [hl]
    ld d, a
    ld d, h
    ld d, h
    ld d, [hl]
    ldh [rHDMA5], a
    ld [c], a
    add h
    ret nz

    ld l, [hl]
    or e
    ldh [$cc], a
    pop bc
    xor b
    pop hl
    ld h, b
    ld e, a
    ld e, [hl]
    ld a, [bc]
    jp Jump_029_5fe0


    ld b, [hl]
    ld [c], a
    ld l, [hl]
    sbc d
    pop hl
    and a
    pop hl
    add hl, sp
    ret nz

    ld de, $42e8
    cpl
    jp $9860


    ldh [rHDMA5], a
    ld [c], a
    adc d
    ld [c], a
    call z, Call_029_5ec1
    ld [de], a
    db $e3
    ld bc, $c360
    db $e3
    add hl, bc
    jp $e0e7


    dec de
    pop hl
    ld de, $38ed
    db $e3
    ld d, l
    db $e3
    nop
    adc d
    ld [c], a
    ld a, l
    ret nz

    cp e
    ret nz

    or a
    and a
    add hl, bc
    push bc

jr_029_5770:
    rst $20
    ldh [rNR43], a
    ret nz

    or h
    ret nz

    nop
    ld de, $ede8
    and h
    sbc b
    ldh [rHDMA5], a
    ld [c], a
    sbc h
    jp nz, $c395

    or a
    and d
    ld d, h
    jp nz, Jump_000_0900

    pop bc
    xor $a1
    jr nc, jr_029_5770

    ld h, a
    pop hl
    ld de, $ede8
    and a
    ld d, l
    db $e4
    sbc h
    and [hl]
    ld b, $b7
    and d
    ld h, h
    ld h, l
    ld [$09e0], sp
    ret nz

jr_029_57a1:
    xor $a0
    add hl, bc
    jp nz, $c33a

    ld [$e811], sp
    db $ed
    and e
    add hl, hl
    and [hl]
    ld l, a
    sbc h
    and a
    ld h, l
    jp nz, $c154

    add hl, bc
    ret nc

    ret nz

    ld de, $ede9
    add l
    xor c
    and c
    add a
    and b
    sbc h
    and c
    sub h
    ret nz

    ld h, d
    ld h, e
    ld d, $cf
    and h
    ld d, b
    ld c, [hl]
    rst $38
    ld [c], a
    ld d, b
    or l
    db $e4
    db $fd
    add e
    ld de, $f0e9
    adc a
    add l
    xor c
    xor c
    sbc e
    and h
    ld sp, hl
    add b
    ld d, b
    ld c, l
    add hl, hl
    jr z, jr_029_57a1

    add hl, hl
    jr z, jr_029_580d

    jr z, jr_029_5834

    ld d, b
    add l
    add d
    ld l, [hl]
    ld c, b
    db $fd
    add [hl]
    ld h, [hl]
    call nz, $a594
    ld l, [hl]
    ld d, b
    and c
    sub h
    ld [c], a
    ld d, e
    sub d
    and $00
    ld sp, hl
    add b
    pop bc
    db $e3
    cp a
    ld [c], a
    add sp, -$1d
    db $fd
    add b
    or l
    jp nz, Jump_029_65e2

    sub h
    and [hl]
    ld b, h
    ld d, l

jr_029_580d:
    pop hl
    db $d3
    db $e4
    add hl, hl
    sub d
    push hl
    xor $e8
    ld a, d
    ldh [$29], a
    add sp, -$1d
    sub b
    or l
    jp $64d9


    sub h
    and l
    ld a, [de]
    ld [c], a
    ld c, l
    db $dd
    ldh [$fd], a
    db $e3
    jr z, jr_029_582f

    ld c, l
    ld a, [bc]
    ld [c], a
    ld d, e
    pop bc

jr_029_582f:
    jp hl


    dec sp
    ldh [$e8], a
    ld [c], a

jr_029_5834:
    scf
    ldh [$65], a
    add d
    nop
    reti


    ld h, d
    sub h
    and h
    push bc
    add sp, -$41
    db $e4
    cp $f3
    inc [hl]
    pop hl
    or $c0
    ld h, l
    add b
    nop
    reti


    ld h, h
    sub h
    and h
    push bc
    db $ed
    cp a
    push af
    di
    jp nz, $c2b5

    reti


    ld h, l
    add hl, hl
    add e
    or h
    ld b, a
    and $48
    ld [c], a
    ld c, l
    add d
    db $eb
    ld l, $30
    rst $38
    ldh [$2b], a
    dec e
    ld a, [hl+]
    pop bc
    push hl
    jr z, jr_029_5896

    ld d, d
    ld e, h
    and [hl]
    pop af
    ld b, l
    inc bc
    push hl
    ld a, [$c35a]
    ld d, b
    cp a
    ld [$012e], a
    ld bc, $4b4b
    cpl
    ld bc, $0101
    ld l, $b6
    add $4f
    cp d
    ld d, c
    ret c

    and d
    push af
    ld d, b
    sbc $41
    ld l, a
    cp a
    rst $20
    ld a, [hl+]
    dec hl
    jr nc, jr_029_58c6

jr_029_5896:
    ld a, a
    ld bc, $4201
    inc a
    inc a
    ld b, e
    ld b, h
    cp a
    ldh [rP1], a
    ld hl, sp-$5f
    ld [hl-], a
    pop bc
    ret nz

    ldh [$b6], a
    ld b, e
    inc h
    ld c, a
    sbc $40
    inc bc
    ld h, c
    ld a, [hl]
    db $e4
    ld [hl], b
    add l
    ldh [$83], a
    ldh [$c1], a
    ldh [$fe], a
    ldh [rSCY], a
    ld bc, $3c01
    ld [c], a
    ld d, b
    add b
    ld [c], a
    cp c
    and d
    bit 1, b

jr_029_58c6:
    ld [$6e44], sp
    pop af
    add [hl]
    ld c, a
    pop bc
    db $e4
    cp a
    ld b, h
    ld b, e
    ld c, c
    ld b, l
    ld b, a
    ld b, l
    db $fc
    ldh [rBGP], a
    ld bc, $bf45
    ldh [$7d], a
    pop hl
    ld a, [hl]
    jp Jump_029_41b6


    cp d
    ld l, e
    ld [$4648], sp
    ld b, b
    push af
    ld c, a
    pop de
    and b
    dec l
    ld b, [hl]
    ld [c], a
    ld b, c
    dec sp
    dec sp
    dec sp
    rst $38
    scf
    nop
    nop
    scf
    dec sp
    ld b, [hl]
    ld d, $17
    rlca
    ld bc, $2d01
    dec a
    push bc
    dec e
    ld b, b
    bit 1, e
    or [hl]
    ld b, h
    sbc a
    ld b, h
    sbc l
    ld c, a
    sub e
    and b
    inc l
    ld bc, $c13f
    db $e3
    ret nz

    db $e3
    dec sp
    ld e, a
    dec sp
    inc e
    add hl, de
    ld bc, $fc2c
    and e
    ld c, a
    dec e
    ld b, c
    ret nc

    bit 1, d

jr_029_5924:
    or [hl]
    ld b, l
    ld e, a
    ld hl, $4046
    ld d, d
    jp z, Jump_000_2f80

    ld bc, $3d6f
    inc a
    ld a, $38
    ret nz

    add sp, $3b
    add hl, bc
    ld a, a
    pop hl
    ldh [$7e], a
    add $cb
    ld c, b
    cpl
    jp z, $40d6

    ld a, $c2
    cpl
    ld bc, $274a
    inc a
    ld b, b
    nop
    cp a
    pop hl
    ret nz

    push hl
    jr jr_029_59d1

    ld [c], a
    ld a, [hl]
    jp nz, Jump_029_62e0

    jr nz, jr_029_5924

    ld c, c
    xor h
    inc hl
    call nz, $ff05
    and e

jr_029_5960:
    cpl
    ld bc, $8742
    ld a, $00
    nop
    cp a
    pop hl
    nop
    ldh [$78], a
    ld [c], a

jr_029_596d:
    ld a, a
    ldh [$2f], a
    add b
    cp $a4
    cp e
    ld hl, $48cb
    xor h
    ld hl, $26c9
    jp nz, Jump_029_42c1

    jp $f409


    ret nz

    ldh [$7e], a
    ldh [$38], a
    cp c
    db $e3
    dec sp
    nop
    jr nz, @+$03

    ld bc, $802f
    db $e4
    cp e
    ld hl, $48cb
    ld d, e
    jr nz, jr_029_5960

    dec h
    sbc e
    nop
    ld b, d
    jp nz, $bf32

    jp nz, Jump_029_7f40

    db $e3
    cp a
    db $e3
    nop
    nop
    add b
    push hl
    ld a, $a1
    jr nz, jr_029_59cc

    ld c, l
    ret


    dec h
    sbc e
    nop
    add b
    db $e3
    ccf
    pop bc
    jr nz, @-$78

    db $e4
    ld a, [hl]
    pop hl
    inc bc
    scf
    nop
    nop
    push hl
    pop hl
    ld h, l
    jr c, jr_029_596d

    ret


    dec h
    sbc e
    nop
    add b
    db $e4
    nop
    ld a, [hl]
    ret nz

jr_029_59cc:
    ret nz

    push hl
    db $fd
    and d
    add c

jr_029_59d1:
    ldh [$80], a
    jp nz, Jump_029_6334

    db $d3
    jp Jump_029_6773


    inc a
    ret


    inc h
    ld [hl], a
    ld l, c
    cpl
    ld bc, $3809
    rst $38
    ldh [$fd], a
    and l
    rrca
    rrca
    rlca
    ld bc, $f32c
    ld b, c
    ld b, b
    and b
    sbc h
    dec b
    inc de
    and c
    db $f4
    ld b, a
    ld b, h
    ld e, [hl]
    ld [$096f], sp
    ld h, h
    inc l
    ld bc, $1819
    cp $88
    jp nz, Jump_000_063b

    ld [hl+], a
    ld [hl+], a
    ld b, $06
    rlca
    nop
    add b
    and b
    add b
    add h
    ld [$716a], sp
    add b
    cp b
    and $f3
    db $e4
    adc c
    ld b, e
    ld a, $a0
    dec hl
    inc c
    ld b, $c2
    pop hl
    dec d
    ld b, l
    and b
    rla
    ld b, c
    and b
    nop
    and d
    or b
    ld [hl], l
    ld b, c
    sbc h
    ld b, $1a
    daa
    ld [hl], b
    adc c
    ld h, d
    ld h, e
    ld c, b
    ld b, c
    jr z, jr_029_5a85

    ld a, a
    add c
    rla
    dec d
    inc hl
    jp nz, $fee1

    ld [c], a
    ld l, $fd
    ld b, d
    ld b, c
    ld d, b
    sub $20
    sbc h
    ld b, $c9
    add a
    inc sp
    add b
    ld [hl], c
    add b
    ld d, [hl]
    cp l
    and d
    ld a, b
    cp $81
    ld a, $87
    jp $2b60


    ld a, [hl+]
    ld a, [hl+]
    dec hl
    ld b, c
    add h
    ld e, b
    call nz, $d3a2
    add $c9
    add a
    ld d, a
    ld e, d
    or d
    add c
    ld e, d
    ld [hl-], a
    and d
    inc c
    cp $84
    cp [hl]
    ld h, h
    jr nc, @+$32

    add h
    ld h, a
    add d
    ld h, c
    call nz, $d3a3
    nop
    inc b
    push de
    and b
    ret


    add [hl]
    ld e, h
    ld [hl], a
    add b
    rst $38

jr_029_5a85:
    and c
    add hl, sp
    add l
    dec b
    ld c, d
    ld [hl], c
    ld c, c
    ld [hl], b
    ld b, d
    ld h, c
    cp l
    inc hl
    ld [hl], e
    ld hl, $46f8
    ld d, a
    ld d, h
    ld h, c
    rst $38
    and c
    add c
    ld h, c
    xor e
    pop bc
    ld hl, sp-$7e
    cp a
    push af
    jp nz, Jump_029_4a40

    push bc
    add e
    add hl, bc
    ld d, a
    dec sp
    ld d, h
    ld d, l
    dec l
    nop
    ld d, h
    ld d, h
    ld d, a
    ld [hl], b
    ldh [$e3], a
    ld hl, $6ec1
    ld a, [hl]
    db $f4
    add h
    and [hl]
    inc bc
    ld l, h
    or h
    ld h, c
    ccf
    and b
    ld e, b
    ld e, e
    inc l
    xor h
    nop
    db $eb
    jp nz, Jump_029_6968

    dec a
    pop af
    ld c, l
    sbc l
    ld b, d
    sub e
    jp z, Jump_000_2d00

    dec b
    ld l, $02
    cp d
    ld h, d
    db $eb
    jp nz, $80f8

    ld a, [hl+]
    inc h
    add h
    rst $20
    jr c, jr_029_5ae3

    nop

jr_029_5ae3:
    ld a, [hl]
    ld [bc], a
    sub e
    ret


    ld [hl], b
    dec b
    ld l, $02
    dec l
    nop
    ld l, d
    jr nz, jr_029_5b17

    ld bc, $0596
    nop
    xor d
    dec c
    sbc l
    ld b, c
    sub e
    call Call_000_092e
    ld [hl], l
    and a
    ld [hl], $41
    and a
    ld h, b
    and h
    ld [bc], a
    add b
    ld [c], a
    ld [hl+], a
    sbc d
    ld h, b
    ld h, e
    ld h, b
    sub e
    call z, $2ab3
    ld a, b
    ld h, d
    jp hl


    add hl, hl
    ld h, h
    ld bc, $ce65

jr_029_5b17:
    db $e3
    and a
    ld b, l
    ld e, h
    ld h, e
    sub e
    ret


    ld [hl], e
    ld a, [hl+]
    ld h, [hl]
    nop
    jp hl


    dec hl
    add h
    call nc, $92a1
    inc h
    ld l, a
    rst $00
    and d
    ld b, a
    ld [bc], a
    sub e
    ret


    ld bc, $5ca9
    nop
    add l
    ld b, b
    jp hl


    dec hl
    ld l, d
    dec h
    sbc l
    add [hl]
    ld c, a
    and d
    sub e
    ret


    db $fd
    xor c
    db $76
    ld b, c
    nop
    jp hl


    jr z, jr_029_5b61

    add c
    xor [hl]
    ld b, c
    ret c

    xor c
    ld c, a
    and d
    sub e
    rst $00
    or l
    add hl, bc
    db $f4
    add e
    nop
    jp hl


jr_029_5b57:
    add hl, hl
    db $ec
    ld b, b
    inc e
    add $d3
    inc b
    ld b, a
    ld [bc], a
    ld e, l

jr_029_5b61:
    pop bc
    jp $bdec


    ld h, $00
    jp hl


    add hl, hl
    ld e, d
    ret nz

    reti


    ld h, b
    dec hl
    ld b, c
    db $d3
    ld a, [bc]
    jp nc, Jump_000_3f6a

    ret


    ld l, [hl]
    add c
    nop
    jp hl


    add hl, hl
    db $ec
    ld b, b
    ld e, $21
    pop hl
    ld [bc], a
    db $d3
    dec b
    ld a, $c2
    ret


    ld l, d
    ld a, c
    xor $08
    jp hl


    ld h, $19
    add b
    rra
    add b
    ld e, [hl]
    ld l, l
    jr nz, @-$2b

    ld a, [bc]
    sub $27
    ld a, b

jr_029_5b97:
    ld c, h
    nop
    ld a, a
    ld [hl+], a
    jp hl


    jr z, jr_029_5c08

    and d
    sbc c
    ld h, c
    ld [$03cd], a
    ld l, d
    ld b, b
    ld h, a
    pop de
    push bc
    nop
    jp hl


    jr z, jr_029_5b57

    ld b, c
    ld c, a
    ld h, c
    ld [$03cb], a
    ld h, e
    ld a, [$d12d]
    rst $00
    res 4, e
    nop
    ldh a, [rTIMA]
    ld c, a
    ld h, c
    ld [$03cb], a
    ld h, e
    cp l
    jr nc, jr_029_5b97

    call nz, $a3cb
    db $e3
    ld b, l
    nop
    ld c, a
    ld h, c
    ld [$d6cb], a
    dec h
    ld a, a
    call z, $c4d1
    and e
    ld h, l
    db $e3
    ld b, a
    ld [$00cd], a
    jp nz, $d1f1

    ret


    rst $28
    xor c
    ld e, a
    adc l
    db $fd
    ld a, [$eaa5]
    sbc b
    or $c1
    dec c
    nop
    nop
    nop
    dec e
    dec c
    rst $38
    di
    dec l
    dec l
    dec l
    ld hl, sp-$1c
    rst $18
    db $f4
    db $fd
    db $fc
    ld a, $c0
    ldh [$2d], a
    ld l, $2e
    ld l, $0e
    ret nz

    rst $38
    ld a, a

jr_029_5c08:
    rst $20
    rst $20
    ld l, $0e
    ld c, $80
    rst $20
    jp Jump_000_2ee0


    ld l, [hl]
    ld c, $c3
    ld c, [hl]
    ld l, $ed
    ldh [$e8], a
    jp hl


    ret nz

    rst $38
    ret nz

    and $6e
    ld l, [hl]
    rlca
    ld l, $4e
    ld c, $c0
    rst $38
    adc c
    pop hl
    adc b
    db $e3
    add b
    ld [c], a
    ld a, l
    db $e4
    jp Jump_029_6e2e


    ld b, d
    pop hl
    cp $e1
    add b
    push af
    ld d, d
    db $e4
    ld l, $0e
    nop
    sbc c
    pop hl
    cp l
    ld [c], a
    ld b, b
    pop hl
    dec a
    push hl
    ld b, c
    pop hl
    ret nz

    pop hl
    add sp, -$1b
    ret nz

    ld hl, sp+$00
    add hl, de
    pop hl
    cp [hl]
    ldh [rP1], a
    db $e4
    xor c
    push hl
    ret nz

    db $e3
    db $ed
    jp hl


    ret nz

    or $99
    ld [c], a
    ld bc, $724e
    push hl
    or $e3
    ret nz

    jp hl


    or c
    jp $c075


    dec l
    jp nz, $e511

    nop
    sub a
    rst $20
    ld e, c
    ld [c], a
    add h
    jp nz, $c08e

    or $e5
    add b
    push hl
    ld sp, hl
    and e
    pop af
    ret nz

    db $10

Jump_029_5c80:
    ld [hl], l
    ret nz

    db $ed
    and b
    ld de, $57e7
    and $0e
    ret nz

    push hl
    db $ec
    ldh [$b6], a
    rst $20
    nop
    ret nz

    add sp, $7d
    pop bc
    ld sp, $5dc1
    pop hl
    ld de, $d7e8
    push bc
    ret nz

    and $b3
    db $e3
    nop
    ld [hl], d
    jp $a5c2


    ld a, c
    and h
    or c
    jp $e3c0


    ld de, $cae8
    and h
    ret nz

    db $ec
    nop
    rst $08
    or b
    ret nz

    rst $20
    ld de, $c0e9
    xor $7d
    and h
    adc a
    xor e
    ld [hl], c
    ld [c], a
    ret nz

    rst $20

Call_029_5cc2:
    nop
    pop de
    jp hl


    cp [hl]
    xor l
    scf
    xor e
    ld [hl-], a
    and e
    ld sp, $7ee4
    jp nz, $f4c0

    sbc c
    and $c0
    rst $30
    sub b
    ld [hl], c
    adc c
    ld l, l
    add c
    ret nz

    push af
    call nz, $2584
    ret


    dec c
    ld c, l
    add [hl]
    rst $38
    ld [c], a
    dec l
    ld c, l

Jump_029_5ce7:
    sbc e
    adc h
    ld de, $a7c7
    sub a
    db $76
    add c
    ld l, l
    ld a, a
    dec hl
    ld a, [bc]
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, l
    or $63
    nop
    ld h, h
    add a
    rst $08
    add h
    sub h
    and l
    sub h
    rst $20
    adc a
    pop hl
    sub d
    db $e3
    ld [hl], $81
    pop bc
    ld [c], a
    ld c, $bf
    db $e3
    ld l, l
    ld l, l
    ld l, l
    or c
    ld h, d
    set 1, d
    sub h
    and [hl]
    ld a, l
    ld h, c
    ld [hl+], a
    db $d3
    db $e4
    dec hl
    sub d
    push hl
    xor $e8
    ld a, d
    ldh [$2b], a
    add sp, -$1d
    ld b, a
    xor h
    inc h
    ld c, d
    and h
    ld a, [de]
    pop hl
    ld l, l
    db $dd
    ldh [$fd], a
    db $e3
    ld a, [bc]
    dec bc
    db $e3
    pop bc
    ld [$3b00], a
    ldh [$e8], a
    ld [c], a
    inc [hl]
    and h
    ret nz

    ld [$e8c5], a
    cp a
    db $e4
    cp $f3
    inc [hl]
    pop hl
    nop
    or $c3
    reti


    ld h, h
    sub h
    and h
    push bc
    db $ed
    cp a
    push af
    di
    jp nz, $c2b5

    reti


    ld h, l
    db $e4
    ld de, $4763
    push hl
    ld c, e
    adc c
    ld b, e
    add d
    db $eb
    dec bc
    dec hl
    dec bc
    add e
    dec bc

jr_029_5d68:
    dec bc
    ld l, h
    ld [c], a
    pop hl
    call nz, $e5c0
    ld d, h
    ld c, e
    inc bc
    pop hl
    dec c
    ld a, c
    ld l, l
    inc de
    jp $eac1


    dec bc
    dec bc
    ld c, e
    ld c, e
    cp [hl]
    pop hl
    ld [c], a
    or [hl]
    add $6d
    ld de, $e051
    and d
    and $e0
    ld c, l
    dec c
    ld c, $01
    ld l, l
    cp a
    and $87
    ldh [$c1], a
    pop hl
    ld h, a
    ldh [$be], a
    ldh [$80], a
    ret nz

    cp h
    jp nz, Jump_000_2b11

    ret nz

    and $0d
    xor l
    dec d
    and h
    ld c, l
    cp a
    push hl
    jp nz, $c1e3

    ldh [$82], a
    ld b, h
    ret nz

    ld l, e
    inc a
    db $e4
    add b
    ld [c], a
    bit 1, l
    rst $28
    push bc
    ld d, b
    and l
    ld l, l
    dec de
    ld c, l
    ld c, e
    add d
    db $e3
    ld l, e
    ld l, e
    add a
    pop hl
    ld a, c
    pop hl
    cp a
    pop hl
    ld b, b
    ld a, l
    pop hl
    ld l, e
    ldh [$3d], a
    add $ba
    ld l, c
    ld de, $3ba7
    pop hl
    ld c, l
    pop de
    and b
    jr nz, jr_029_5d68

    ldh [$85], a
    db $e3
    cp [hl]
    ret nz

    add d

Jump_029_5de0:
    pop hl
    ld a, [$4bc1]
    ei
    and c
    cp a
    ld [c], a
    db $e4
    ld b, h
    ld h, c
    bit 0, a
    dec l
    pop de
    adc c
    call z, Call_029_4b81
    dec hl
    ld a, [bc]
    add c
    ld l, e
    pop bc
    push hl
    ld a, [hl]
    ret nz

    cp a
    pop bc
    cp [hl]
    ldh [$fe], a
    ldh [$fc], a
    and d
    dec l
    ld [$411d], sp
    bit 1, c
    ret nz

    db $ed
    dec c
    ld b, b
    ldh [$c0], a
    ld [c], a
    inc bc
    ld [c], a
    ret nz

    db $e4
    pop bc
    dec bc
    ld a, a
    ld [c], a
    or b
    add c
    ld a, h
    ld b, e
    dec bc
    ld l, b
    add b
    rst $20
    dec c
    ld c, l
    dec b
    ld c, $74
    ret nz

    ld l, l
    adc e
    add b
    ld c, h
    ld [c], a
    cp a
    ld [c], a
    ld [bc], a
    ret nz

    or l
    call nz, Call_029_7460
    ret nz

    cp $a5
    ld a, d
    ld [hl], b
    call nz, Call_029_4002
    pop hl
    ld l, l
    ld a, [bc]
    add b
    ld [c], a
    nop
    jp z, Jump_029_7ea1

    pop hl
    add b
    push hl
    ld a, a
    ldh [$80], a
    add sp, -$46
    ld l, l
    ret


    inc h
    ld a, $81
    ld [de], a
    pop bc
    pop hl
    ld a, [bc]
    dec c
    jp nz, $c042

    ld c, e
    add b
    and b
    cp [hl]
    and d
    ld a, c
    pop hl
    jr @-$7e

    add sp, $7a
    ld l, h
    ret


    daa
    ld c, l
    dec c
    add l
    and a
    call Call_000_3fe2
    and b
    nop
    db $fc
    ld [c], a
    nop
    db $eb
    bit 1, h
    ret


    daa
    ld b, d
    pop bc
    rrca
    add d
    adc h
    jp nz, $a2c0

    nop
    jp $f8e2


    and e
    ld [hl], c
    ld h, b
    ld e, b
    and c
    ld a, $0f
    ret nz

    add sp, -$48
    ld h, h
    cp $a2
    nop
    add b
    and e
    cp d
    and c
    cp b
    and d
    pop bc

jr_029_5e99:
    ld [c], a
    di
    ld b, c
    jr nz, jr_029_5ee1

    cpl
    ld l, b
    ret


    inc hl
    inc de
    dec c
    dec l
    jp nc, Jump_029_4a41

    ld h, e
    ld l, e
    add c
    ld [c], a
    ret nz

    ld [$41f3], a
    jr nz, jr_029_5eb4

    ret nz

    sbc h

jr_029_5eb4:
    dec b
    cp $26
    ld e, [hl]
    rlca
    sub [hl]
    ld b, b
    ld c, $bf
    db $e4
    ld b, a
    pop bc
    add b

Call_029_5ec1:
    ld a, [hl]
    and h
    ld a, [hl-]
    and h
    ld a, d
    add d
    cp [hl]
    ld bc, $6a08
    ld b, a
    ld b, [hl]
    dec d
    ld hl, $412d
    dec l
    xor c
    jr nz, jr_029_5f53

    db $e4
    ld a, $c3
    add $e4
    pop bc
    and b
    ld l, e
    ld [bc], a
    push hl
    ld b, b
    sbc h

jr_029_5ee1:
    ld b, $5a
    ld h, $da
    ld bc, $04d2
    ld a, [bc]
    ld b, d
    dec a
    ldh [$0a], a
    dec a
    jp $c404


    and e
    ld a, [$6b61]
    db $fd
    ld b, c
    jp $c0c2


    ldh a, [$63]
    ld bc, $a0ff
    ld h, b
    ld e, a
    ld [hl+], a
    ret


    ld hl, $4248
    ret z

    and h
    ld a, b
    add c
    ld c, e
    ld l, e
    add d
    ld [c], a
    ld [$a784], sp
    jp c, Jump_000_250b

    jr nz, jr_029_5f84

    jr nc, jr_029_5e99

    ret nz

    push hl
    db $fc
    and h
    ret nz

    pop bc
    jr nc, @-$77

    pop hl
    jr c, @+$49

    add b
    ld c, d
    sbc d
    rlca
    ld l, $6e
    or b
    add e
    add b
    and $00
    ld a, h
    call nz, Call_029_4e75
    ld [hl], a
    ld hl, $2719
    ret nz

    rst $20
    inc hl
    ld [bc], a
    or b
    and c
    inc [hl]
    add e
    nop
    dec sp
    add $be
    daa
    inc b
    pop bc
    add h
    add d
    ld c, $31
    ret nz

    db $e4
    xor b
    ld b, b
    db $f4
    ld h, e
    dec b

jr_029_5f50:
    ld c, $bf
    ld a, [c]

jr_029_5f53:
    dec bc
    add h
    and e
    sub e
    rst $00
    ret nz

    ldh a, [$63]
    ld b, [hl]
    dec a
    db $ed

Jump_029_5f5e:
    nop
    pop bc
    and $93
    ret z

    add b
    rst $28
    ld [c], a
    and c
    inc [hl]
    ld h, l
    ldh a, [$a2]
    adc b
    db $e3
    add h
    ld [c], a
    inc bc
    dec l
    dec l
    ld b, h
    ld b, e
    sub e
    rst $00
    ld b, b
    rst $28
    ld h, $62
    rst $18
    add $33
    and c
    nop
    pop bc
    and $47
    ld b, a
    sub e

jr_029_5f84:
    add $c0
    daa
    jp nz, $a7a5

    daa
    ld a, [hl-]
    db $e4
    inc [hl]
    ld [bc], a
    nop
    ld [c], a
    inc h
    ld b, e
    inc b
    sub e
    rst $00
    or l
    ld sp, $2be9
    ld e, b
    inc l
    rst $18
    jp $c8d3


    nop
    jp nz, $e9ef

    add hl, hl
    and a
    add hl, hl
    ret nz

    db $fd
    db $ec
    inc bc
    jp hl


    jr z, jr_029_6024

    and c
    ldh a, [$84]
    jr nz, jr_029_5f50

    add [hl]
    add b
    db $eb
    ld b, b
    rst $00
    ret nz

    jp hl


    jp hl


    dec h
    ld c, $ae
    add b
    xor a
    add l
    nop
    ld b, b
    di
    ret nz

    pop af
    jp hl


    jr z, jr_029_5ff4

    and b
    xor a
    add [hl]
    dec d
    ld h, h
    ld b, a
    ld [bc], a
    and a
    pop hl
    nop
    ld d, l
    add d
    ret nz

    ld a, [c]
    jp hl


    daa
    dec hl
    and d
    ld h, b
    ld hl, $0bd3
    inc e

Jump_029_5fe0:
    and c
    dec c
    add h
    nop
    ret nz

    rst $38
    ld [$84cd], a
    inc b
    ld b, [hl]
    jp nc, Jump_029_4c29

    db $ec
    ld h, d
    ld h, a
    inc bc
    db $d3
    add hl, bc

jr_029_5ff4:
    nop
    sub $25
    inc b
    call Call_029_617f
    add b
    ld h, b
    ret nz

    add sp, -$55
    ld h, d
    ld [$03d0], a
    ld l, e
    nop
    dec a
    ld b, a
    pop de
    push bc
    jp hl


    dec h
    inc l
    ld h, d
    rst $28
    ld h, d
    ld [$c0cb], a
    push af
    pop de
    add $00
    rst $28
    xor c
    ld [c], a
    ld h, $c0
    rst $38
    pop de
    add $c0
    xor $13
    add hl, hl
    inc bc

jr_029_6024:
    ld h, [hl]
    ret nz

    rst $38
    nop
    ret nz

    ld a, [c]
    add d
    push de
    pop de
    ret z

    add b
    rst $28
    xor b
    adc [hl]
    ret nz

    pop af
    pop de
    add $c0
    ld a, [c]
    nop
    db $fd
    rst $30
    nop
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
    rst $38
    rst $38
    rrca
    nop
    rst $38
    pop hl
    ld [$e9f3], a
    pop hl
    rst $30
    db $e3
    db $dd
    db $ed
    ld [$c5e6], a
    db $e4
    cp e
    db $ed
    nop
    xor a
    db $e4
    and [hl]
    jp hl


    sbc d
    pop af
    db $76
    db $ed
    ld l, c
    db $eb
    ldh [$f8], a
    ld l, l
    ldh a, [$e0]
    ldh a, [rP1]
    rst $18
    ld hl, sp+$08
    db $e3
    ld a, a
    ld sp, hl
    ld a, [c]
    db $ec
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fc], a
    ld a, c
    call $f000

Jump_029_6082:
    db $fd
    sub b
    rst $38
    ldh [$fc], a
    adc [hl]
    call $b3e3
    ld b, c
    jp c, $adf7

    db $dd
    or $00
    ld [hl], a
    cp a
    rst $38
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
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    db $ec
    inc de
    ldh [rIE], a
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$10
    ld [bc], a
    db $dd
    add sp, -$0f
    rst $38
    ldh [$e0], a
    ld hl, sp-$1f
    pop hl
    sbc $f0
    pop hl
    db $ec
    ldh [rIE], a
    nop
    rst $18
    db $fc
    ldh [$fc], a
    dec l
    rst $30
    db $e3
    ld_long a, $ffff
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
    nop
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

Call_029_617f:
    ccf
    nop
    nop
    nop
    jr nz, jr_029_61a5

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    or h
    ld d, l
    ccf
    ld a, a
    push hl
    cpl
    add c
    ld h, $ff
    ld a, a
    db $ec
    dec hl
    rst $20
    dec hl
    add c
    ld h, $5a
    ld a, l
    cp a

jr_029_61a5:
    ld a, [hl]
    ld [hl], h
    db $10
    add c
    ld h, $ff
    ld a, a
    push hl
    cpl
    add c
    ld h, $ca
    nop
    rst $38
    ld a, a
    ccf
    ld a, [hl]
    scf
    ld [hl], c
    jp z, Jump_000_0800

    dec h
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_029_61c3:
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

Jump_029_61d8:
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
    jr nz, jr_029_61c3

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
    call nc, Call_029_48c2
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
    jr nz, jr_029_62d5

jr_029_62d5:
    db $10
    ld [$0400], sp
    or d
    ret nz

    ret nz

    and d
    pop bc
    ldh a, [rIE]

Jump_029_62e0:
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
    jp Jump_029_7f7c


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

Jump_029_6334:
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
    jp z, Jump_029_6fe0

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

Jump_029_64e1:
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

jr_029_65c2:
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

Jump_029_65e2:
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
    jr jr_029_65c2

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

jr_029_6678:
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
    jr nc, jr_029_6678

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

jr_029_673c:
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

jr_029_674f:
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

Jump_029_6766:
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

Jump_029_6773:
    jr c, jr_029_673c

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

jr_029_6784:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_029_674f

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_029_61d8

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
    jr nz, jr_029_6784

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

Call_029_67fc:
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
    jp Jump_029_537f


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
    sbc e
    or a
    ld c, b
    call c, Call_029_40c0
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
    jr nz, jr_029_68e4

jr_029_68e4:
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
    add h
    ld l, a
    ld b, b
    db $eb
    ld c, $08
    sbc [hl]
    ldh [$03], a
    sbc h
    and b
    ld b, $ff
    ld e, h
    rst $38
    rst $38
    ld de, $74fe
    ei
    ret nz

    rst $38
    sub c
    rst $28
    rst $28
    ld c, [hl]
    rst $38
    ei
    ld d, d
    ret nz

    inc b
    ei
    ld c, d
    rst $28
    or l
    and b
    ld e, a
    ld a, [bc]
    xor b
    jr nz, jr_029_6952

    rst $18
    sub e
    rst $38
    rst $28
    ld h, $df
    add d
    rst $38

jr_029_6934:
    ld d, e
    rst $28

jr_029_6936:
    adc c
    xor a
    rst $30
    ld d, e
    rst $28
    add d
    sbc d
    jr nz, jr_029_6934

    ld d, d
    ld b, b
    ldh a, [rIE]
    rst $38
    xor d
    db $fd
    ld d, c
    cp $80
    rst $38
    ld d, l
    rst $38
    db $eb
    pop de
    sbc a
    sbc l
    ld c, a
    daa

jr_029_6952:
    rla
    and e
    rst $38
    di
    db $db
    pop hl
    xor $f1
    or h
    ei
    ret


    ei
    rst $38
    jp c, $e0f0

    ld h, $17
    and d
    di
    ld e, d
    rst $38

Jump_029_6968:
    pop hl
    ld l, [hl]
    pop af
    inc [hl]
    ei
    ld sp, hl
    rst $38
    rst $20
    rst $38
    jr jr_029_6936

    inc h
    rst $20
    inc h
    rst $38
    inc a
    db $db
    rst $30
    inc a
    rst $20
    jr @-$3e

    ld b, c
    ld h, a
    sbc d
    call nz, $ff8a
    dec bc
    ret nz

    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    rst $38
    ld h, b
    sub c
    adc e
    ld h, b
    ld d, $a9
    pop hl

jr_029_6994:
    dec bc
    rst $38
    adc d
    daa
    daa
    rrca
    xor l
    rra
    sub $3f
    ld sp, hl
    ld a, l
    and [hl]
    add b
    ld d, b
    daa
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $ff

jr_029_69aa:
    rst $08
    jr jr_029_6994

    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rst $38
    rrca
    ei
    nop
    inc e
    inc bc
    cp a

jr_029_69b9:
    nop
    sbc c
    ld a, l
    ld h, [hl]
    ld l, b
    ld hl, $c23d
    jr jr_029_69aa

    add hl, de
    ld h, b
    inc h
    ld a, $40
    add c
    ld d, [hl]
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    ret nz

    add h
    or b
    and e
    rst $38
    ld de, $1fef
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    ei
    dec l
    rst $10
    db $10
    add l
    jr z, jr_029_69b9

    ld b, h
    ei
    or h
    rst $38
    rst $38
    ret nc

    rst $38
    rst $28
    jr @-$23

    inc l
    rst $10
    rst $38
    inc l
    rst $28
    inc a
    sub l
    ld l, [hl]
    sbc e
    ld b, [hl]

jr_029_69f6:
    rst $18
    rst $38
    ld l, [hl]
    ld a, [bc]
    rst $10

jr_029_69fb:
    dec e
    add e
    adc a
    rst $10
    cp l
    ld a, a
    ld a, [hl]
    rst $28
    jr c, @+$01

    jr z, jr_029_69f6

    ld a, $51
    ld h, b
    rst $38
    ld e, $18
    rst $38
    inc e
    rst $28
    inc d
    rst $28
    inc l
    rst $38

jr_029_6a14:
    rst $38
    ld d, $ef
    ld a, [de]
    rst $00
    ld e, [hl]
    rst $28
    dec bc
    cp $e0
    ld [c], a
    ld a, [hl]
    rst $38
    jr z, @+$01

    jr c, jr_029_6a14

    ld l, $fe
    pop hl
    pop hl
    rst $38
    jr nz, jr_029_69fb

    or [hl]
    dec hl
    db $ed
    cp d
    ld e, a
    dec sp
    rst $18
    db $76
    rst $18
    ld d, h
    ld c, b
    jr nz, jr_029_6a63

    sub b
    ldh [$7f], a
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld a, [hl]
    ldh [$bf], a
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    and b
    ld h, c
    ld e, b
    db $f4
    sub b
    ld b, $50
    ld l, e
    dec hl
    sub b
    ld l, b
    inc a
    inc bc
    add h
    ld [hl], e
    rst $28
    or h
    db $eb
    and e
    ld c, h
    or b
    pop hl
    ld a, [hl-]

jr_029_6a63:
    rst $18
    rst $30
    ld a, a
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ld l, $88
    inc bc
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
    ld [$da00], a
    ld e, [hl]
    nop
    xor a
    cp $bf
    rst $18
    ld hl, sp+$6f
    ld hl, sp-$21
    ldh a, [$03]
    ld h, b
    inc a
    cp $66
    ld h, c
    ccf
    jp $c73e


    db $dd
    cpl
    jp c, Jump_000_2ffd

jr_029_6a99:
    ldh a, [$e5]
    dec a
    jp $c73c


    ret nc

    cpl
    rst $38
    ret c

    cpl
    jr nc, jr_029_6a99

    ld d, h
    pop bc
    xor d
    add b
    ei
    sbc $80
    and d
    ld b, c
    ld a, $81
    inc c
    jp $f2b5


    or h
    ld c, [hl]
    ld a, a
    db $fc
    db $e4
    or $e3
    jr @-$17

    dec a
    jp nz, Jump_000_39ff

    call nz, $e817
    daa
    ret nc

    rrca
    ldh [$bf], a
    cp a
    ld b, b
    ccf
    add b
    cp $ff
    rst $20
    add b
    cp $fe

jr_029_6ad4:
    adc d
    jr nz, jr_029_6ad4

    ei
    ldh a, [$fd]
    cp $f9
    rst $38
    db $ed
    ld a, a
    cp $e0
    rst $38
    ld a, a
    or b
    ld bc, $ef1f
    ld a, a
    cp $90
    nop
    db $f4
    ei
    jp hl


    or $ef
    ret nz

    ld a, [c]
    rst $38
    ld sp, hl
    db $e3
    rst $38
    ret nc

    rst $28
    add l
    jp c, $fbbb

    inc b
    xor a
    ld d, b
    nop
    add a
    ld a, e
    rst $18
    cp a
    rst $30
    cp $c8
    and b
    ld d, a
    db $fd
    xor c
    ld a, [hl]
    call $f3e3
    ei
    rst $30
    or $a4
    add b
    rst $38
    cp $f5
    cp $bf
    rst $38
    ld_long $fff4, a
    jp $efbf


    rst $18
    rst $28
    jp nz, $e2ba

    ld e, a
    ld e, h
    ret nz

    ld [hl], b

jr_029_6b29:
    ld bc, $e0a1
    ld e, b
    jr nz, jr_029_6b29

    db $fd
    sbc a
    db $f4
    ei
    rst $38
    cp $fb
    ld [hl], b
    ld [$0364], sp
    di
    rst $38
    rst $38
    ld [$d8f7], a
    rst $20
    db $fd
    ei
    rst $28
    rst $38
    rst $38
    set 7, a
    and d
    rst $18
    ld l, b
    sub a
    rst $38
    db $e3
    rst $38
    rst $28
    ld h, $00
    jr c, jr_029_6b55

    sbc [hl]

jr_029_6b55:
    pop hl
    ld l, c
    rst $38
    db $d3
    ld sp, hl
    rst $28
    sub e
    jr nz, @-$44

    ld [c], a
    or $ff
    xor [hl]
    ei
    push af
    inc h
    inc l
    nop
    add [hl]
    dec h
    rst $18
    ld [bc], a
    ld hl, $0a22
    ei
    inc sp
    ldh [$ee], a
    add sp, -$11
    or a
    ld [c], a
    rra
    add c
    inc sp
    ldh [$fe], a
    rst $38
    rst $28
    sub e
    ei
    ld d, b
    ld [bc], a
    add b
    add h
    jp hl


    ld d, a
    ld h, [hl]
    ld [c], a
    db $fd
    rst $28
    db $eb
    ld a, h
    adc a
    nop
    or d
    and $f7
    cp l
    ld h, d
    ld [$9e15], a
    jp hl


    sbc a
    rst $18
    cp a
    ld h, $dd
    rst $38
    ld h, b
    nop
    adc d
    jp hl


    ld a, a
    xor b
    xor d
    ld h, b
    db $f4
    dec b
    inc [hl]
    ld bc, $6aea
    db $ec
    adc d
    xor h
    add b
    xor a
    ld [c], a
    ld e, c
    add sp, -$51
    and b
    pop bc
    ld c, b
    db $ec
    call z, $fde9
    cp $54
    rst $08
    ei
    add c
    rst $38
    ld d, h
    adc h
    add b
    adc h
    db $e3
    ld b, b
    cp a

Jump_029_6bc7:
    push de
    ld [$6022], sp
    ld d, l
    ld b, h
    ld h, b
    ld a, [hl]
    ld a, e
    ld [c], a
    nop
    rst $38
    dec e
    add h
    ld a, d
    and b
    ld d, a
    rst $38
    cp l
    ld a, [$7ec6]
    pop hl
    or h
    jp Jump_000_2d4e


    db $ed
    push af
    rst $38
    cp a
    cp c
    push hl
    ccf
    ldh [$aa], a
    add hl, bc
    ldh [$7d], a
    jp z, $ec09

    xor a
    rst $38
    ld d, d
    db $fd
    xor d
    ret c

    ldh [$7c], a
    ei
    and c
    inc e
    db $e3
    dec hl
    push de
    dec b
    ld a, [$d454]
    pop hl
    ld e, h
    ld [$5ae2], a
    pop bc
    ld l, [hl]
    cp e
    ld bc, $a016
    ld d, a
    inc h
    ld [c], a
    ld b, d
    cp b
    db $e3
    dec d
    ld l, $e2
    ldh [$e3], a
    ld d, [hl]
    and b
    ld l, $e2
    rst $28
    adc d
    add sp, -$31
    xor c
    cp $48
    rst $30
    xor d
    db $e3
    ld c, $e3
    ld d, l
    rst $38
    dec de
    ld [de], a
    rst $28
    call z, $ffe3
    rst $38
    nop
    nop
    nop
    rst $38
    call nz, $46c5
    add $c7
    ret z

    ret


    jp z, $cbeb

    call z, $f6f6
    ld b, [hl]
    rst $38
    ldh [$99], a
    ld [$ff94], sp
    sub e
    sub d
    sub c
    sub c
    sub d
    sub d
    sub e
    sub e
    rst $18
    sub h
    sub h
    sub e
    sub e
    sub d
    db $f4
    and $cd
    adc $ff
    rst $08
    ld b, [hl]
    ret nc

    pop de
    jp nc, $d4d3

    ld b, [hl]
    ld e, $f6
    push af
    ld b, [hl]
    ld b, [hl]
    set 1, h
    ret nz

    rst $30
    add l
    ei
    ld h, a
    ld [c], a
    cp b
    add b
    ld a, [$fa85]
    ld h, a
    db $e3
    ld b, [hl]
    cp [hl]
    cp a
    ld b, b
    push af
    sub e
    dec a
    sub h
    nop
    rst $38
    rst $00
    ld b, [hl]
    ret nz

    pop bc
    nop
    di
    di
    pop bc
    ld e, $00
    rst $38
    ld b, [hl]
    ld b, [hl]
    jp nz, $c0c3

    pop de
    ld a, a
    db $e3
    nop
    rst $38
    ld b, $00
    ldh [$dd], a
    sbc $80
    adc $7f
    push hl
    nop
    rst $38
    add c
    pop bc
    ld b, b
    call Call_029_7f30
    rst $20
    nop
    rst $38
    nop
    rst $08
    ld a, a
    rst $20
    sub e
    sub e
    nop
    rst $38
    add b
    call Call_029_7f08
    rst $20
    or d
    and c
    nop
    rst $38
    call z, $ca80
    ld a, a
    rst $20
    ld [hl], d
    and e
    nop
    rst $38
    ldh a, [$80]
    ret


    ld a, a
    rst $20
    ld a, $a5
    add l
    cp [hl]
    add $c7
    db $dd
    sbc $07
    ld b, [hl]
    sbc d
    sub a
    nop
    and c
    ld a, a
    rst $20
    cp $a7
    nop
    ld a, [$a087]
    ld e, $ff
    ld [c], a
    sbc d
    sub a
    ld [bc], a
    rrca
    jp z, $c081

    db $ec
    cp l
    and c
    db $fc
    adc a
    call nc, $e3c6
    ret nz

    pop bc
    set 1, h
    cp b
    cp c
    ld c, $82
    add b
    ld [bc], a
    rrca
    sub b
    adc c
    add b
    cp a
    ret


    cp $a2
    ld [hl], b
    add b
    ld [hl], b
    adc a
    sub h
    ld c, l
    and b
    ld c, c
    ldh [$87], a
    and b
    ld b, [hl]
    cp d
    cp e
    ld b, d
    add c
    rst $00
    nop
    ld bc, $3f90
    res 7, l
    and l
    nop
    rst $08
    ld b, [hl]
    ld b, [hl]
    ld hl, sp-$73
    ldh [$c6], a
    pop hl
    ld [$d581], sp
    sub $bc
    cp l
    rst $10
    jp nz, $8002

    sub b
    add b
    db $eb
    cp l
    and a
    nop
    pop de
    adc l
    pop hl
    ld b, [hl]
    sbc d
    db $fd
    sbc b
    rst $38
    ldh [$9a], a
    ret c

    reti


    jp c, $dcdb

    ret nz

    jp nz, $ca61

    ld h, d
    res 0, h
    cp l
    xor c
    inc d
    adc a
    adc l
    db $e3
    sbc d
    sub a
    ccf
    xor b
    xor b
    ld b, [hl]
    ld b, [hl]
    sub a
    sbc d
    pop bc
    jp Jump_029_6082


    call nz, $c7cd
    cp l
    xor c
    sub c
    adc a
    rst $08
    adc l
    ld [c], a
    pop bc
    ldh [$a9], a
    xor c
    ld [bc], a
    ld b, a
    ld h, b
    sub a
    ld a, d
    pop hl
    add d
    call nz, $818c
    cp l
    xor e
    ld l, $60
    nop
    xor d
    inc b
    ld d, $81
    ld c, a
    call nz, $c2a8
    pop hl
    db $fd
    db $e4
    add d
    jp $818b


    cp l
    xor d
    or b
    ld a, d
    add d
    nop
    xor e
    ld d, $80
    ld [$97e2], sp
    ld b, [hl]
    pop bc
    add sp, $46
    rlca
    ld [$0001], sp
    cp a
    ld [c], a
    ret z

    ld l, c
    ld a, d
    add l
    add l
    adc d
    sub [hl]
    and d
    jr jr_029_6db3

    pop hl
    add h
    push hl
    db $f4
    db $e3
    ld [$4190], sp

jr_029_6db3:
    pop bc
    cp l
    push bc
    ld a, h
    ret z

    ldh [$79], a
    ld b, b
    add l
    ld c, h
    ld [$43e5], sp
    db $e4
    db $f4
    db $e3
    ld [bc], a
    rlca
    rlca
    add a
    rlca
    rrca
    sub h
    dec a
    jp $c87c


    cp c
    ld h, d
    nop
    adc h
    sbc c
    add b
    ld [$7ce3], sp
    jp hl


    db $fc
    push bc
    dec sp
    pop hl
    ld a, h
    ret z

    cp c
    ld h, h
    inc d
    ld c, h
    sbc c
    ld a, c
    xor c
    ld b, d
    ld [c], a
    add h
    pop bc
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    ld [hl], $e8
    pop bc
    ld [bc], a
    ld a, l
    ldh [$bc], a
    add c
    ld b, $65
    cp c
    ld h, h
    add l
    xor h
    sbc d
    sub a
    ld a, [hl]
    adc b
    push bc
    ld a, c
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    adc h
    ld a, e
    cp l
    db $e3
    ret nz

    or $a0
    xor b
    ldh [$bc], a
    add d
    ld b, l
    ld c, b
    ld a, b
    ld [hl+], a
    adc a
    adc l
    sbc d
    sub a
    inc b
    pop bc
    rst $20
    ld b, a
    ld hl, $7c7f
    ldh [$34], a
    jp nz, $a0f2

    ld a, d
    xor e
    jr c, jr_029_6e4a

    jr nz, jr_029_6e29

jr_029_6e29:
    adc $bf
    db $e3
    pop bc
    push hl

Jump_029_6e2e:
    cp a
    ld [c], a
    inc l
    db $e3
    xor b
    ld a, b
    ret nz

    ld a, d
    add h
    ld hl, sp-$08
    ld [$ce00], sp
    cp a
    db $e3
    add b
    ld b, [hl]
    ld b, [hl]
    add e
    add a
    ld c, a
    add [hl]
    add [hl]
    add a
    add e
    cp a
    db $e3

jr_029_6e4a:
    ld [hl], h
    jp nz, Jump_029_7a46

    add [hl]
    add sp, -$48
    ld [$8c85], sp
    add h
    add c
    sbc c
    ret nz

    db $e3
    adc b
    add h
    ld b, [hl]
    ld a, a
    ld b, [hl]
    add h
    ld l, a
    add e
    ld b, [hl]
    add e
    ld l, l
    db $f4
    and h
    ldh [$78], a
    and h
    ld a, d
    ld l, c
    nop
    ld l, [hl]
    ld de, $c081
    ldh [$79], a
    adc e
    ld b, [hl]
    ld a, e
    ld b, [hl]
    add c
    ld c, b
    ld bc, $8584
    add [hl]
    add l
    cp b
    ldh [$80], a
    db $f4
    and d
    ccf
    ldh [$7a], a
    add [hl]
    ld a, c
    ld b, l
    nop
    ld c, e
    ld de, $8083
    ldh [$80], a
    inc c
    add [hl]
    and b
    ret nz

    ld [c], a
    ld b, [hl]
    ld b, l
    rst $38
    ldh [$b3], a
    and l
    cp a
    ret nz

    ld b, l
    add hl, bc
    or b
    ld l, [hl]
    and d
    nop
    ld c, e
    ld de, $c082
    ld [c], a
    xor c
    xor c
    add b
    ldh [rLYC], a
    ccf
    dec hl
    ld sp, $2a2c
    ld c, d
    ld d, d
    cp a
    push hl
    ei
    ld b, c
    add b
    nop
    ret


    cp l
    pop hl
    add l
    ld l, e
    sub l
    ld b, b
    ld a, a
    jp nz, $c0c1

    ld b, b
    pop hl
    ld b, l
    ccf
    ld l, $20
    jr nz, jr_029_6ef3

    ld c, a
    ld d, [hl]
    ld a, a
    push hl
    ld b, c
    pop hl
    call z, Call_029_67fc
    or b
    add c
    sub h
    sub h
    nop
    db $ed
    rst $00
    ld h, c
    ld b, [hl]
    ld b, [hl]
    push af
    add d
    adc b
    ret nz

    adc d
    add d
    and b
    or c
    inc hl
    inc hl
    dec hl
    pop bc
    ld c, e
    ret nz

    add sp, -$41
    adc b
    cp a
    db $e4
    add l

jr_029_6ef3:
    ld c, [hl]
    cp $82
    add h
    adc c
    ld a, $c5
    and e
    ld b, h
    inc a
    dec [hl]
    ld [hl], $52
    ret nz

    db $eb
    ld a, $83
    jr @-$01

    db $e3
    ld a, [hl]
    ldh [rNR14], a
    inc l
    cp [hl]
    cp a
    cp $83
    ld a, a
    pop hl
    ld a, [hl]
    ret nz

    ccf
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    jr c, jr_029_6f5e

    ld hl, sp+$66
    ei
    ld b, a
    inc c
    cp a
    and $85
    inc c
    ret nz

    pop bc
    cp $80
    rlca
    ld h, b
    rlca
    pop bc
    ld a, $e1
    rra
    add hl, sp
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $7f
    call nz, Call_000_26fb
    cp $e5
    and b
    nop
    jr nc, jr_029_6fbc

    ld h, c
    cp a
    db $e3
    ld a, $e1
    ld a, a
    ldh [$36], a
    cp a
    ldh [rLCDC], a
    inc b
    ld a, $8a
    ret nz

    jp hl


    sub d
    nop
    dec l
    ld d, d
    inc hl
    add $41
    cp l
    ret nz

    add [hl]
    and c
    ld [bc], a
    ld a, $e1
    add hl, sp
    ld a, a
    add c

jr_029_6f5e:
    ld [bc], a
    and c
    cp [hl]
    ld h, e
    ld bc, $40e4
    inc hl
    add l
    dec l
    jr nc, jr_029_6ef3

    ld hl, $827c
    add [hl]
    and l
    ld a, $e0
    ld a, [hl-]
    ld b, l
    ld [$bc61], a
    inc hl
    sub b
    add [hl]
    add $f5
    ld b, h
    nop
    ld c, a
    ld c, c
    and b
    sbc c
    db $fd
    ld c, b
    ld a, $e1
    ld b, d
    nop
    ld [hl], d
    ld b, c
    inc a
    ld [hl+], a
    rst $38
    and $f5
    ld b, e
    nop
    ld c, l
    dec b
    ld hl, $e1c0
    ld a, d
    ld h, e
    xor $bf
    db $e4
    ld a, [hl-]
    dec [hl]
    add hl, sp
    push af
    ld hl, $9008
    rrca
    add b
    ld hl, sp+$40
    push af
    ld c, b
    pop af
    ld [hl+], a
    nop
    inc l
    pop af
    nop
    ld a, [hl]
    add d
    ld b, c
    ld c, c
    add hl, sp
    inc c
    ccf
    ldh [$3a], a
    ld b, c
    rrca
    ld [bc], a
    or d
    dec h
    push af

jr_029_6fbc:
    ld b, h
    rst $28
    ld hl, $0c85
    cp b
    pop af
    nop
    ld a, [hl]
    add d
    ret nz

    ld c, c

Jump_029_6fc8:
    ld b, h
    inc a
    inc a
    db $fd
    and c
    ld [bc], a

jr_029_6fce:
    dec e
    ld [bc], a
    ld [hl-], a
    ld hl, $b9b8
    sbc d
    ld [hl], c
    jr nz, jr_029_6fce

    rst $00
    nop
    dec l
    jr z, @-$6f

    ld [bc], a
    db $fc
    and e

Jump_029_6fe0:
    cp $24
    xor b
    inc a
    ret nz

    add hl, sp
    jp hl


    jp $80e1


    ret nz

    ld sp, $bf00
    pop hl
    rst $30
    add $00
    adc l
    adc a
    inc bc
    cp a
    rst $20
    xor c
    xor c
    ld bc, $bfa9
    ldh [$c0], a
    db $e4
    and h
    ld b, $ee
    ld hl, $c3f3
    nop
    db $ec
    ld a, e
    ld b, d
    ldh [$79], a
    ld [hl+], a
    nop
    inc hl
    ret nz

    nop
    ld l, [hl]
    ld b, b
    db $fd
    ld h, b
    ld b, l
    ld b, c
    ld b, l
    add b
    ld [hl], d
    nop
    ld sp, $2403
    inc bc
    cp $e3
    nop
    dec hl
    ld a, e
    ld b, $b9
    ld b, h
    sub a
    dec e
    sbc d
    ld l, [hl]
    ld b, h
    ld b, l
    ld [hl], $a0
    add hl, sp
    and b
    ld sp, $db03
    add b
    add b
    and h
    rlca
    nop
    xor h
    ld a, e
    rlca
    ld a, [$f541]
    ld b, b
    ld l, [hl]
    nop
    ldh a, [rLCDC]
    ld b, l
    rrca
    ld [hl], $62
    and c
    ld h, [hl]
    ld hl, sp-$80
    db $eb
    ld [c], a
    ld e, d
    ld bc, $61d7
    ld b, b
    call nc, Call_000_00a2
    xor h
    ld a, e
    inc bc
    dec a
    ret nz

    ret nz

    push hl
    ld l, [hl]
    ld b, b
    sbc c
    pop bc
    pop hl
    rlca
    ld h, a
    sbc l
    ld l, b
    cp a
    ldh [$a5], a
    ld b, b
    rst $18
    and b
    ld e, d
    ld b, c
    ld [hl+], a
    dec b
    ldh [rP1], a
    pop af
    cp e
    ld b, c
    add b
    db $e4
    ld l, [hl]
    ld [bc], a
    pop bc
    pop hl
    dec [hl]
    dec [hl]
    ld l, h
    rlca
    xor e
    xor h

Jump_029_7080:
    ld b, d
    add b
    db $e3
    ld c, a

jr_029_7084:
    adc c
    nop
    ldh a, [$9b]
    jp $e440


    cp $2f
    ld bc, $ad36
    xor [hl]
    sbc l
    dec [hl]
    ld l, h
    ld l, a
    ld bc, $806e
    ldh [rTIMA], a
    db $e4
    jp z, Jump_000_0027

    ldh a, [$9b]
    jp nz, Jump_000_2338

    push af
    jr nz, jr_029_7084

    ld l, [hl]
    nop
    ld [hl], $6e
    ld l, a
    ld l, h
    pop bc
    ld [c], a
    sub a
    sbc d
    add e
    ret nz

    pop bc
    ld c, a
    xor h
    nop
    ldh a, [$3c]
    add e
    ld c, $c4
    ld l, [hl]
    ld bc, $0045
    cp a
    ldh [$c1], a
    db $e3
    ldh [$60], a
    ld c, a
    call z, $cf00
    cp [hl]
    add e
    ld [bc], a
    jp $c050


    nop
    ld l, [hl]
    ld bc, $e0bf
    pop bc
    db $e3
    ld h, b
    ld b, b
    ld c, a
    ld l, h
    nop
    ret nc

    jr nz, @-$3d

    ld b, d
    jp nz, Jump_000_110c

    jp Jump_000_016e


    ld b, l
    ld [hl], $43
    pop hl
    rst $20
    and d
    ld c, a
    ld l, h
    nop
    rst $08
    ld b, e
    add $c7
    inc c
    jp $a3fd


    ld [hl], d
    add b
    sub d
    and h

Jump_029_70fa:
    sbc d
    rst $20
    and e
    nop
    nop
    rst $38
    inc c
    jp $87d0


    or $66
    ld [$00c2], sp
    cp $7b
    ld [hl+], a
    add d
    and h
    ret nz

    ret nc

    add e
    ld c, a
    and e
    ld e, c
    xor $00
    or $42
    and a
    ret nc

    add h
    ret nz

    pop bc
    nop
    ld l, c
    ld h, d
    call nc, Call_000_00d1
    pop af
    ld [bc], a
    and a
    ld h, b
    and d
    cpl
    pop hl
    ld e, c
    pop de
    nop
    reti


    nop
    ret nz

    add $6a
    ld b, h
    ld e, c
    pop de
    nop
    jp nz, $0000

    nop
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $f4
    ccf
    dec c
    ld c, l
    ld c, l
    ld c, l
    dec c
    inc c
    rst $38
    db $f4
    ret


    pop hl
    adc b
    jp $f6e3


    push af
    and c
    pop hl
    dec c
    ret nz

    ld sp, hl
    add l
    ld hl, sp+$67
    ld [c], a
    ld c, l
    db $10
    ld a, a
    ldh [$c0], a
    ld a, [$f685]
    ld a, [hl+]
    db $e3
    ld c, l
    cp l
    pop hl
    ld b, b
    rst $30
    nop
    cp $60
    ret nz

    ldh [rLCDC], a
    ld_long a, $ff00
    add b
    ld a, [$fe00]
    dec c
    ld c, l

jr_029_717c:
    ld e, l
    ret nz

    nop
    nop
    rst $38
    ld a, e
    ret c

    cp a
    ldh [rP1], a
    rst $38
    nop
    ret c

    ld a, [hl]
    ldh [rP1], a
    rst $38
    nop
    rst $38
    add b
    nop
    rst $38
    nop
    db $d3
    ret nz

    cp l
    nop
    call c, $bc80
    add l
    jp c, $e5ff

    ld l, l
    nop
    nop
    rst $38
    or $d0
    ld b, h
    and b
    ld b, h
    ret nz

    ld b, c
    ret nz

    pop bc
    or $00
    ld a, [c]
    call $8084
    ld l, b
    push bc
    ld [bc], a
    ret c

    nop
    ld a, [c]
    jr nc, jr_029_717c

    cp d
    push hl
    ret nz

    cp $00
    call $084d
    db $10
    and c
    jp hl


    and c
    adc b
    add b
    dec l
    ld b, e
    add d
    ld [bc], a
    rst $10
    nop
    push de
    call z, $80a2
    ret


    ld h, b
    ret nz

    ldh [$c0], a
    and d
    ld b, b
    ei
    inc d
    adc c
    rst $08
    pop bc
    ld l, h
    and d
    ld l, l
    rrca
    dec c
    dec c
    ld c, e
    ld c, e
    ld a, a
    ldh [$83], a
    and c
    pop bc
    rst $10
    nop
    call z, $8f08
    jp $c24f


    add hl, hl
    and b
    ld c, e
    cp a
    ldh [$7a], a
    pop hl
    pop bc
    ld hl, sp+$00
    xor e
    ld hl, sp-$2a
    ld h, c
    inc de
    ld h, c
    adc [hl]
    ldh [$0d], a
    dec c
    dec bc
    dec bc
    dec bc
    ldh [$bf], a
    ldh [$fd], a
    pop hl
    pop bc
    ld hl, sp+$00
    xor [hl]
    ld [$6de3], sp
    ld c, e
    dec c
    di
    ld c, e
    dec bc
    cp $e1
    ei
    pop hl
    ld c, e
    inc c
    inc l
    inc l
    jr nz, jr_029_7224

jr_029_7224:
    rst $38
    call nc, $8643
    ld [c], a
    adc c
    pop hl
    rst $00
    ld [c], a
    dec bc
    db $fc
    ret nz

    ret nz

    pop hl
    ld b, b
    add b
    ei
    inc d
    xor d
    ld [$46e1], sp
    ldh [$c3], a
    pop hl
    ret nz

    and $4c
    rst $38
    pop hl

jr_029_7242:
    ret nz

    nop
    rst $38
    ld [de], a
    and h
    jp nz, $02e1

    ldh [$7c], a
    and $fb
    jp Jump_029_4c4c


    nop
    dec sp
    di
    nop
    adc e
    ld d, [hl]
    ld h, c
    ld b, h
    pop hl
    ld c, b
    pop hl
    or h

jr_029_725d:
    ld [c], a
    cp $c0
    db $fc
    jp Jump_000_0d01


    ld a, l
    db $f4
    add l
    xor h
    adc [hl]
    and b
    call $cfc2
    ldh [$bd], a
    push hl
    ld [hl], c
    pop hl
    jr c, @+$70

    pop hl
    add hl, sp
    ldh [rP1], a
    rst $18
    ld c, $4d
    dec l
    rst $00
    jp nz, $e23e

    nop
    ld a, [hl]
    pop bc
    ld [hl], $e1
    inc [hl]
    pop bc
    ld l, a
    ret nz

    jr c, jr_029_725d

    nop
    ld l, e
    jp nc, $bf21

    pop hl
    nop
    rst $38
    pop bc
    cp c
    ld [c], a
    ld a, l
    jp nz, $c4ec

    ret nz

    db $f4
    nop
    ld l, e
    jp nc, Jump_029_7e00

    pop hl
    nop
    ld bc, $04c0
    and c
    ld [hl-], a
    ldh [$b4], a
    pop bc
    or h
    and d
    ret nz

    or $00
    ld [$4170], a
    dec l
    ld l, e
    ret nz

    ld [c], a
    dec c
    dec l
    ei
    pop bc
    dec c
    cp b
    ldh [$30], a
    pop bc
    jr z, jr_029_7242

    pop hl
    dec sp
    pop de
    inc d
    ld [hl], c
    ld l, e
    ret z

    and c
    ld c, e
    dec a
    pop bc
    ld a, e
    pop bc
    inc bc
    dec l
    dec l
    ret nz

    db $e4
    ccf
    ld a, [c]
    nop
    xor e
    ret nz

    and $42
    pop bc
    ld a, d
    and c
    inc bc
    dec bc
    dec hl
    cp $e0
    add b
    ld [c], a
    dec a
    ret nz

    ret nz

    di
    nop
    ld c, b
    add h
    add h
    jr c, jr_029_733e

    pop bc
    add c
    add c
    push bc
    ld [c], a
    dec hl
    ld a, [bc]
    ld l, d
    cp a
    push hl
    nop
    cp a
    ld a, [c]
    sub e
    ld [hl+], a
    ld l, l
    sub h
    pop bc
    inc b
    and b
    ld c, e
    ld c, e
    ld l, e
    ld l, e
    ld [bc], a
    ret nz

    pop hl
    ld a, [bc]
    cp e
    and d
    ret nz

    ld hl, sp+$0a
    ld c, b
    sub h
    ld b, c
    ld c, $c4
    cp b
    add e
    rrca
    ld l, e
    ld l, e
    ld a, [bc]
    ld c, d
    add b
    ei
    nop
    ld a, [hl+]
    jp nz, $ca62

    and e
    ld c, $c5
    and c
    dec hl
    ld c, e
    ld c, e
    add b
    db $e4
    ld hl, sp+$75
    inc d
    inc l
    or c
    ld [bc], a
    inc c
    ld b, d
    and e
    ld a, [hl]
    pop bc
    ld l, e
    ld l, e
    cp a
    ldh [$fc], a
    add e
    ret nz

jr_029_733e:
    rst $30
    add l
    dec bc
    db $10
    adc h
    ld b, c
    jp Jump_029_7f82


    ld [c], a
    ret nz

    ldh [rWX], a
    ld a, a
    ret nz

    ld a, d
    add d
    nop
    sbc a
    ld b, b
    ld a, a
    and d
    ld c, e
    ld b, c
    ld [$c8a3], sp
    add b
    ret nz

    pop hl
    inc a
    add h
    inc c
    ld a, c
    ld [hl], d
    ld [$2f85], sp
    ld a, [bc]
    ld b, c
    ld [bc], a
    db $e3
    dec l
    ld a, l
    jp nz, $82b2

    ld a, d
    db $76
    add l
    dec l
    nop
    add c
    ld b, c
    cp $83
    add [hl]
    and c
    ld a, a
    pop bc
    ld [hl], d
    add e
    ret nz

    ld hl, sp-$71
    ld de, $4285
    nop
    ld a, a
    ld b, d
    cp $c1
    ret nz

    db $fc
    nop
    xor e
    rst $38
    inc hl
    ld b, e
    add e
    cp $a3
    rst $30
    pop bc
    ld [bc], a
    ld a, [hl-]
    ld b, c
    ld l, h
    rst $30
    ld b, d
    push af
    ld c, e
    nop
    ld l, $be
    add e
    ret nz

    add sp, $3e
    ldh [rNR21], a
    ld b, d
    and e
    ld l, h
    ld l, h
    ld h, d
    ld [c], a
    dec l
    push af
    ld c, d
    nop
    adc $33
    ld [bc], a
    ld [hl], b
    ret nz

    add sp, -$43
    add b
    cp [hl]
    pop hl
    ld a, d
    ld b, b
    ld l, h
    dec c
    ld l, l
    and h
    ld bc, $4d01
    cp a
    ldh [rP1], a
    ld sp, hl
    dec a
    call nz, Call_029_4484
    ld h, d
    ret nz

    ld a, [hl]
    jp nz, $81f3

    nop
    or d
    ld bc, $625e
    ld [hl-], a
    ld c, b
    nop
    ld c, l
    ld a, $c3
    db $fc
    and d
    cp c
    ld b, h
    cp a
    db $e4
    ld [bc], a
    ld [hl], h
    and b
    dec l
    ld sp, $bf03
    ld [c], a
    cp $e5
    nop
    xor $fa
    and e
    db $fc
    and e
    inc a
    ld a, a
    ld h, d
    ld l, [hl]
    ld b, b
    ld l, e
    ld c, e
    dec hl
    dec hl
    rst $30
    ld h, b
    ld sp, $8004
    ld h, $00
    ld e, c
    push bc
    ld c, d
    inc hl
    nop
    ld l, c
    or a
    ld h, h
    ld a, [hl]
    ldh [$f8], a
    ld [hl+], a
    ld l, l
    ld [$416e], sp
    ld a, [$b661]
    ld h, c
    ld l, e
    cp a
    pop hl
    inc e
    ld h, d
    jp c, $2601

    ld [bc], a
    ld [hl], b
    db $10
    ld h, b
    nop
    xor h
    dec a
    add $04
    add b
    ld c, e
    dec l
    dec l
    ldh a, [rSCX]
    nop
    ld a, h
    ld h, d
    ld [hl], l
    ld h, b
    ld a, $e0
    ret nz

    db $e4
    ld a, d
    ld [c], a
    ld d, b
    ld h, d
    nop
    xor h
    ld [hl], c
    ld b, e
    ld h, h
    ret


    pop bc
    add h
    add b
    dec l
    or b
    ld b, d
    ld b, h
    ldh [$0b], a
    dec bc
    ld a, [$8740]
    dec hl
    dec bc
    dec l
    rst $28
    pop hl
    ld a, h
    pop bc
    add c
    pop hl
    call nc, $4d60
    ld [$834f], sp
    ld a, e
    ld l, l
    ret nz

    db $e4
    ld l, e
    ret nz

Call_029_7460:
    ldh [$af], a
    ld h, c
    add hl, sp
    ld h, d
    cp e
    db $e3
    ld bc, $052d
    pop hl
    ld c, a
    adc e
    nop
    xor $fa
    ld h, l
    add b
    ld [c], a
    ld [hl], b
    ld h, d
    add d
    ldh [$82], a
    cp a
    ret nz

    dec hl
    or b
    ldh [$9b], a
    add h
    jp z, $002a

    db $ed
    db $fc
    add e
    ld l, l
    ld [$e280], sp
    xor [hl]
    inc bc
    add b
    db $e3
    ld l, e
    or c
    jp nz, $cf4f

    nop
    db $ed
    ld a, d
    ld [bc], a
    ld bc, $866d
    add d
    ld c, $c1
    cp a
    and c
    ld b, b
    pop hl
    pop bc
    pop hl
    sub c
    jp $cb4f


    ld b, b
    or c
    xor $be
    ld [c], a
    ld [bc], a
    pop hl
    rst $08
    pop hl
    or c
    ld h, c
    ld b, a
    ldh [$0b], a
    add d
    ld [c], a
    add b
    pop af
    ret nz

    ld c, a
    rst $08
    nop
    rst $28
    inc a
    ld [hl+], a
    pop bc
    ret nz

    db $10
    and b
    ld c, a
    pop bc
    dec l
    ld b, b
    or [hl]
    pop bc
    ld b, e
    db $e3
    adc a
    jp nz, $cd4f

    inc l
    ldh a, [rSCY]
    call nz, $400d
    jp nz, $9202

    and h
    ld l, l
    db $f4
    and b
    rst $08
    and d
    nop
    cp $bc
    ld [bc], a
    dec b
    add b
    ld b, d
    pop bc
    nop
    xor l
    ld h, a
    db $f4
    and e
    adc a
    and c
    nop
    ei
    ld hl, $02a3
    jp nz, $84d0

    db $db
    and a
    nop
    call nc, Call_000_00cf
    pop de
    ldh [$81], a
    add b
    ld [c], a
    ret nc

    add h
    rst $08
    xor b
    call nc, Call_000_00d0
    rst $08
    nop
    add b
    ld [c], a
    ret nz

    db $e3
    ld de, $85e7
    pop af
    nop
    push de
    add b
    rst $20
    ld de, $85e2
    rst $30
    inc bc
    dec c
    ld c, $00
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
    cp $fd
    rlca
    rrca
    rrca
    rrca
    pop hl
    db $fc
    db $fd
    pop hl
    db $e3
    ld hl, sp-$06
    db $e4
    pop hl
    or $00
    sbc e
    or $e3
    and $9a
    db $e3
    ld h, [hl]
    ldh a, [$e4]
    ld [c], a
    di
    rst $20
    ldh [$f0], a
    dec sp
    push hl
    nop
    add hl, sp
    pop af
    ld h, $e8
    sbc l
    ld [c], a
    cp a
    ld sp, hl
    sbc a
    or $7f
    add sp, -$61
    ldh a, [$f2]
    rst $30
    nop
    ldh [rIE], a
    add l
    call z, $d5fe
    rra
    rst $20
    ld b, h
    reti


    ldh [$f3], a
    db $dd
    jp z, $d77d

    nop
    cp $a3
    cp a
    or $de
    and h
    inc a
    call nc, $c838
    ldh [rIE], a
    add e
    or d
    and b
    ld hl, sp+$00
    add c
    db $e4
    ld e, e
    db $e3
    and c
    or $5b
    and h
    ld b, c
    or $5e
    cp c
    ld [$00f1], sp
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
    inc c
    rst $38
    rst $38

jr_029_75a6:
    ld a, [$f1f9]
    pop af
    pop hl
    db $fc
    cp $e1
    db $e3
    ld a, [$f6e0]
    nop
    pop hl
    and $be
    push af
    rst $18
    jp hl


    ld a, c
    ld a, [c]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    inc e
    or $00
    ld h, b
    rst $38
    rra
    db $fc
    db $fd
    ret z

    ldh [rIE], a
    ldh [rIE], a
    rst $18
    rst $38
    jr nz, jr_029_75a6

    ldh [rIE], a
    add b
    ld a, [hl]
    ld hl, sp-$20
    rst $38
    pop bc
    db $fd
    cp d
    and c
    add c
    cp a
    ldh [rIE], a
    ld [hl-], a
    or b
    inc de
    ld bc, $1d13
    xor a
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
    ld [bc], a

jr_029_763b:
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
    jr z, jr_029_763b

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

jr_029_7769:
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
    jr nz, jr_029_7769

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_029_64e1

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

jr_029_77df:
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

jr_029_781d:
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
    jr nc, jr_029_77df

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
    jr nz, jr_029_781d

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

jr_029_78c2:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_029_78c2

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
    jr nz, jr_029_7959

    jr jr_029_79c9

jr_029_7959:
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

jr_029_7975:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_029_79b1

    cp $ff
    jr nz, jr_029_7975

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
    jr nz, jr_029_7975

jr_029_79b1:
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
    ld hl, $79dd
    call Call_000_23e8
    add sp, $02

jr_029_79c9:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $79dd
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_029_79e6

    rst $30
    nop
    inc bc
    ret nz

jr_029_79e6:
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

jr_029_79f8:
    ld a, [hl]
    cp $ff
    jr z, jr_029_7a1a

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
    jr nz, jr_029_79f8

    ld a, b
    call Call_029_7a24
    ld a, c
    cp $04
    jr nz, jr_029_79f8

jr_029_7a1a:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_029_7a24:
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

jr_029_7a3a:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $403a
    add hl, bc
    ld a, [hl+]

Jump_029_7a46:
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_029_7a63

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_029_7a3a

jr_029_7a63:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7cc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7cee:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7e86:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7ea1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7ee4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_029_7f08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_029_7f30:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7f40:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_029_7f82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
