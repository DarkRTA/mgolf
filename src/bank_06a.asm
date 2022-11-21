; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06a", ROMX[$4000], BANK[$6a]

    ld a, [bc]
    ld b, b
    adc d
    ld c, l
    ld e, l
    ld e, b
    pop hl
    ld h, l
    sbc a
    ld [hl], h
    ld [de], a
    ld b, b
    nop
    ld b, [hl]
    dec d
    ld c, l
    scf
    ld c, l
    adc a
    ld c, l
    ld c, l
    ld c, l
    dec c
    db $fc
    ldh [$fb], a
    ld [c], a
    rst $30
    ld [c], a
    ld c, l
    rst $38
    ld c, l
    ld l, $6e
    ld l, $2e
    ld l, $0e
    ld c, $1e
    jp hl


    ldh [$0d], a
    ld l, [hl]
    ld c, $0e
    db $ec
    db $e3
    db $eb
    push hl
    pop hl
    pop hl
    sub c
    ld c, $eb
    and $cd
    and $fa
    jp hl


    dec c
    jp nz, $d5e1

    db $e3
    ld c, l
    ld a, b
    cp b
    ldh [$c0], a
    push hl
    db $eb
    db $e4
    ld l, $0e
    ld l, [hl]
    ld l, $aa
    ldh [rNR34], a
    cp l
    jp hl


Jump_06a_4052:
    dec c
    ld c, l
    dec c
    ld l, l
    rst $38
    ldh [$8b], a
    pop hl
    ld hl, sp-$20
    ret nz

    push de
    and $69
    pop hl
    ld a, c
    ld [c], a
    rst $18
    ldh [$ab], a
    rst $20
    ld h, l
    ldh [$6e], a
    ld c, $eb
    ld c, [hl]
    ld c, [hl]
    ld a, l
    db $eb
    dec c
    jp Jump_000_2ee1


    ld c, [hl]
    ld c, $01
    ld c, [hl]
    sub c
    ldh [$dd], a
    ld [c], a
    add b
    ldh [$b7], a
    ldh [$75], a
    ldh [$8e], a
    ld [c], a
    ld c, d

Call_06a_4085:
    ld [c], a
    ld [$e4eb], sp
    rst $10
    pop hl
    ld a, $e1
    ld c, [hl]
    daa

jr_06a_408f:
    ld [c], a
    and l
    pop hl
    ld [bc], a
    pop hl
    add e
    ldh [$03], a
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [rNR11], a
    ld [c], a
    db $76
    ldh [rPCM34], a
    ldh [rLYC], a
    push hl
    sub c
    pop hl
    inc b
    ld a, [$ebc0]
    db $e3
    dec c
    ret nz

    and $e7
    call nz, $cbcd
    and $c1
    xor $c5
    add b
    push bc
    jp $e14f


    sub d
    and $f8
    call nz, $e9c0
    ld [$6def], a
    ld [c], a
    dec c
    jr c, jr_06a_408f

    ld [c], a

Jump_06a_40c8:
    ld b, $e2
    or e
    jp Jump_000_0d0e


    dec c
    db $ec
    ldh [$c0], a
    db $ec
    nop
    set 0, c
    xor d
    db $ed
    ld l, $e3
    add hl, bc
    db $e3
    call z, $c0e0
    and $99
    jp nz, $c4f7

    nop
    ret nz

    and $b4
    ret nz

    ret nz

    ldh a, [$08]
    db $e4
    ld [hl], h
    push hl
    ret nz

    rst $20
    or a
    push bc
    nop
    push hl
    db $10
    rst $10
    and c
    ld b, c
    jp nz, $c10d

    ld [$6dc3], a
    xor [hl]
    call nz, $e285

Jump_06a_4103:
    inc hl
    jp nz, $8c00

    pop bc
    add hl, hl
    db $e4
    ret c

    pop hl
    cp [hl]
    xor c
    sbc c
    and c
    ld [$9dcc], a
    pop bc
    ld [hl], b
    and b
    ld bc, $ea2d
    and d
    ld [hl], $e3
    sbc a
    ld [c], a
    xor e
    ret z

    add a
    rst $00
    ret nz

    db $e4
    ld l, c
    and d
    ld h, $c2
    and h

Call_06a_4129:
    ld l, l
    dec c
    ld a, [hl]
    ldh [$ae], a
    and b
    dec l
    res 4, d
    inc hl
    and b
    ld bc, $6e2d
    pop hl
    dec sp
    and c
    cp b
    and c
    add b
    pop hl
    ld c, [hl]
    xor b
    add hl, de
    and c
    ld b, h
    ldh [$38], a
    rra
    jp $a474


    ccf
    ldh [$0a], a
    ld a, [bc]
    ld l, d
    cp a
    pop hl
    push bc
    ldh [rTAC], a
    dec bc
    dec bc
    dec bc
    or [hl]
    push hl
    ld b, c
    ld [c], a
    inc b
    and c
    ld d, [hl]
    and [hl]
    rst $10
    and e
    db $e4
    inc e
    and d
    or c
    and c
    dec c
    add l
    jp nz, $c059

    ld a, [bc]
    ld a, [hl+]

Call_06a_416c:
    ld a, [bc]
    rrca
    ld a, [hl+]
    ld c, e
    dec c
    ld c, l
    ld a, b
    ld [c], a
    ld [hl], l
    ld [c], a
    sbc a
    add e
    dec l
    ld [c], a
    ret nz

    xor c
    add b
    ld d, [hl]
    and [hl]
    push bc
    add l
    ld e, a
    push bc
    call nc, $c1c1
    pop hl
    ld a, [bc]
    dec bc
    add hl, sp
    dec hl
    adc b
    ldh [rNR10], a
    ret nz

    ld l, e
    ld a, [bc]
    ld l, d
    ld hl, sp-$1f
    dec a
    ld [c], a
    ret nz

    cp b
    ld [c], a
    ld d, a
    and c
    ld d, [hl]
    xor d
    ret nz

    jp hl


    ld a, [hl-]
    add b
    jp c, $0ba2

    ld a, [bc]
    inc de
    ld c, e
    dec bc
    cp [hl]
    ldh [$fe], a
    ldh [$2b], a
    scf
    ldh [$b7], a
    pop hl
    or h
    pop hl
    ld b, $77
    db $e4
    ld c, $6d
    ld d, [hl]
    and a
    ld b, a
    jp nz, $a1dd

    rst $18
    and [hl]
    ld [bc], a
    push hl
    ld sp, hl
    ld c, e
    rst $38
    pop hl
    cp a
    pop hl
    ld c, e
    ld a, [bc]
    ld c, d
    ld c, d
    dec bc
    ld b, $c0
    push hl
    dec c
    dec l
    xor c
    and d
    nop
    xor c
    inc l
    jp nz, $e068

    ld h, a
    add e
    db $fc
    cp l
    db $e3
    pop bc
    ret nz

    ld c, e
    ld l, e
    dec hl
    ld c, e
    ld c, e
    ld l, e
    dec e
    ld c, e
    ld a, b
    pop hl
    ld a, [hl+]
    ld a, [bc]
    ld c, d
    ld l, [hl]
    jp $e43e


    ld d, a
    add d
    inc b
    ret nz

    add h
    db $e3
    ld h, d
    ld l, l
    add hl, hl
    pop hl
    ld a, [hl]
    ld h, c
    sub l
    ld h, b
    ld b, a
    call nz, $e195
    rst $38
    dec c
    ld l, e
    ld c, e
    dec c
    ld l, e
    ld l, e

Call_06a_420b:
    dec bc
    dec bc
    scf
    ld c, e
    ld a, [bc]
    ld a, [bc]
    cp b
    jp nz, Jump_000_0b0b

    ld l, $c0
    cp $c1
    and b
    add b
    adc b
    ld h, e
    ld h, h
    ld c, d
    ld h, l
    add b
    db $e3
    inc l
    db $e3
    dec l
    cp [hl]
    ldh [$0d], a
    rlca
    dec bc
    ld l, e
    dec bc
    ld a, e
    ldh [$af], a
    pop hl
    cp $c2
    db $ec
    ldh [$96], a
    xor d
    and b
    di
    and d
    ld b, b
    ld h, a
    dec h
    pop bc
    or $61
    push af
    ld b, h
    dec l
    ret


    ret nz

Jump_06a_4244:
    ld l, e
    xor l
    dec bc
    jp nz, Jump_000_2de0

    dec l
    ld [hl], h
    pop bc
    ld a, [bc]
    ld sp, hl
    ret nz

    dec bc
    nop
    ld l, d
    and c
    ld d, $a7
    and a
    ld h, h
    ld h, c
    and l
    ret nz

    add sp, -$08
    and e
    ld a, [hl-]
    pop hl
    jp nz, Jump_000_02e0

    inc sp

Call_06a_4264:
    ret nz

    dec c
    db $76
    pop bc
    ld h, [hl]
    ret nz

    ld a, [hl+]
    and c
    jr jr_06a_42d4

    ret nz

    and $b9
    call nz, Call_000_3280
    add d
    cp $40
    db $10
    ld h, c
    ld a, [hl-]
    add c
    jp Jump_000_36e2


    pop bc
    inc b
    ldh [$0b], a
    inc de
    dec bc
    ld c, d
    ld a, a

Call_06a_4286:
    pop hl
    ld a, [hl+]
    and c
    ld l, l
    call c, $c044
    ld l, d
    add h
    and d
    nop
    inc a
    ld h, c
    db $fc
    ld b, b
    add h
    db $e3
    ld de, $4ca3
    ret nz

    cp b
    ret nz

    ret nz

    pop hl
    ld a, b
    pop bc
    nop

Jump_06a_42a2:
    cp a
    pop hl
    adc a
    ld b, h
    dec hl
    ld h, h

jr_06a_42a8:
    adc d
    ld [c], a
    sbc e
    add l
    ld e, $4f
    or a
    add d
    ld [hl], a
    ret nz

    nop
    ldh a, [$a1]
    ld a, a
    pop hl
    ld a, [hl]
    pop hl
    ld a, d
    and b
    ld hl, sp-$7f
    inc c
    and h
    ld b, [hl]
    ld b, c
    ld l, c
    and e
    jr jr_06a_42e3

    ld d, c
    ld c, e
    ld h, c
    add d
    and d
    ld l, e
    ld l, e
    ld [hl], h
    and b
    inc l
    and b
    ld [hl-], a
    and d
    ld h, b
    ret nz

jr_06a_42d4:
    db $e4
    cp c
    inc h
    or d
    add a
    ld e, $50
    ld l, [hl]
    and e
    dec c
    dec c
    db $76
    and c
    inc bc
    ld a, [bc]

jr_06a_42e3:
    ld a, [hl+]
    cp l
    ret nz

    add hl, hl
    add c
    ld a, [$c0a3]
    push hl
    ld [$1e46], sp
    ld d, b
    inc c
    add c
    push hl
    or b
    add c
    dec hl

jr_06a_42f6:
    ld c, d
    and a
    add b
    ld l, l
    jp Jump_06a_42a2


    db $eb
    ld b, h
    nop
    inc de
    jr nz, jr_06a_430b

    ld b, e
    ld b, $80
    add d
    jp nz, $a91e

    or a

jr_06a_430b:
    jp $81ac


    ld l, [hl]
    add c
    inc a
    dec [hl]
    and b
    db $f4
    add d
    dec l
    dec c
    ld c, $0e
    inc c
    and h
    jr z, jr_06a_4341

    jr nz, @+$15

    db $e3
    jp $de02


    adc d
    jr nc, jr_06a_42a8

    ld hl, $2b20
    ld a, l
    call nz, $a1bb
    nop
    ld a, [hl-]
    and e
    rst $20
    ld hl, $2382
    or d
    ld a, [hl+]
    ld h, c
    ld h, d
    sbc [hl]
    daa
    ld a, [hl]
    db $e3
    ld bc, $00e0
    db $fd
    and c

jr_06a_4341:
    xor h
    add c
    ld l, e
    and c
    ld a, c
    add c
    ld c, l

Jump_06a_4348:
    inc b
    add [hl]
    ld b, h
    ld [hl], d
    daa
    cp h
    add c
    nop
    ld e, $48
    ld a, [hl]
    ld h, h
    jr c, jr_06a_42f6

    cp l
    and c
    ld b, c
    pop hl
    ld a, [c]
    ld b, c
    ld [hl], b
    ld h, h
    inc bc

jr_06a_435f:
    inc h
    ld b, b
    ret z

    ld h, $29
    call nz, Call_000_29de
    ret nz

    push hl
    ld a, [hl]
    and d
    db $76
    add b
    ld c, d
    or l
    ld h, d
    ld bc, $566d
    and [hl]
    ret nz

    add sp, $49
    and d
    call z, Call_06a_4129
    ret z

    ld sp, $3661
    add d
    ld bc, $750a
    ld h, c
    sbc $20
    ld d, [hl]
    and [hl]
    ret nz

    add sp, -$5f
    ld b, l
    ld e, b
    inc h
    ld d, e
    ld hl, $7318
    ld b, d
    rst $30
    ld b, b
    ret nz

    ld [c], a
    ld l, e
    dec bc
    pop bc
    jp $827c


    ld d, [hl]
    and e
    nop
    sbc a
    ld b, d
    or d
    add [hl]

Jump_06a_43a4:
    db $f4
    add [hl]
    rst $10
    nop
    ret z

    call nz, Call_000_21f5
    or a
    jr nz, jr_06a_435f

    ld b, d
    ld [bc], a
    inc [hl]
    ld h, b
    ld a, [hl+]
    inc l
    add c
    inc a
    add h
    sub [hl]
    and c
    ld d, [hl]
    dec h
    or e
    ld [hl+], a
    ld l, h
    inc h
    ld h, h
    or b
    ld h, $04
    and $4d
    cp c
    ld h, b
    nop
    db $e3
    dec l
    dec l
    or e
    jr nz, jr_06a_43cf

jr_06a_43cf:
    ld a, h
    ld h, h
    ld d, [hl]
    and d
    ld [hl], a
    ld h, $0c
    xor b
    ld [$b001], a
    ld hl, $45a2
    ld a, c
    ld h, d
    nop
    add b
    ld [c], a
    pop bc
    ld [c], a
    ld h, c
    jr nz, jr_06a_4405

    and d
    ld d, [hl]
    and c
    db $76
    dec hl
    inc c
    and [hl]
    and h
    add h
    inc b
    inc e
    ret nz

    db $f4
    ld b, e
    ld c, l
    ld b, c
    jp Jump_06a_6077


    push bc
    pop bc
    ei
    ld [hl+], a
    add b
    ld [hl+], a
    ld b, b
    or e
    inc b
    nop
    add d

jr_06a_4405:
    inc c
    and a
    ret nz

    ld [c], a
    ld c, a
    dec b
    or e
    ld b, e
    dec hl
    rst $28
    jr nz, jr_06a_4411

jr_06a_4411:
    xor h
    inc h
    ld e, $61
    ld d, $e6
    adc [hl]
    ld b, d
    add b
    inc c
    jr nc, jr_06a_4440

    ldh a, [rNR52]
    pop bc
    and a
    inc bc
    ld c, e
    ld c, e
    dec b
    jp nz, $e916

    add b

Call_06a_4429:
    rst $20
    ld [$802b], a
    rst $20
    ld b, l
    ld b, e
    ld [bc], a
    nop
    jp nz, Jump_000_3f4b

    ld b, c
    add $62
    ld [hl+], a
    add [hl]
    inc a
    ld l, b

Call_06a_443c:
    xor d
    jr z, jr_06a_44a2

    add b

jr_06a_4440:
    nop
    ld [hl+], a
    ld h, [hl]
    add h
    add e
    pop af
    ld bc, $20b3
    add $65
    ld d, $e6
    ld e, b
    call nz, $85b9
    jr nz, jr_06a_447d

    ld h, $3a
    and d
    add a
    add d
    jp $8161


    call nz, Call_06a_5e0b
    and b
    dec [hl]
    ld bc, $4000
    ld a, [hl+]
    db $fd
    add e
    ccf
    push hl
    ld [$a805], a

jr_06a_446b:
    ld hl, $a482
    ld b, c
    and $79
    ld b, b
    nop
    add $83
    nop
    dec l
    ld c, c
    ld b, l
    inc c
    and a
    ld a, [hl-]
    add d

jr_06a_447d:
    add e
    add a
    add h
    add d

Jump_06a_4481:
    ld bc, $80e0
    inc hl
    inc hl
    ld d, $ea
    cp $22
    ld c, c
    ld b, h
    add [hl]
    ld h, b
    and a
    add b

Call_06a_4490:
    ei
    ld hl, $040d
    dec h
    and l
    ret nz

    add sp, $6b
    ret nz

    ld [c], a
    rst $38
    ld b, $56
    push bc
    ret c

    ld b, b
    di

jr_06a_44a2:
    add l
    ld bc, $416d
    jr nz, @-$49

    ld b, h
    dec sp
    ld b, c
    ld b, c
    and $fa
    ld bc, $0074
    inc bc
    pop bc
    nop
    xor c
    ld bc, $ebc0
    cp e
    add c
    adc c
    ld b, h

jr_06a_44bc:
    ld a, b
    ld b, d
    or l
    ld b, l
    add c
    ld [$01ba], a
    ld bc, $c10b
    ret nz

    rst $38
    jp Jump_000_29e0


    ld c, a
    ld b, c
    add hl, bc
    ld b, l
    jr c, jr_06a_4513

    or l
    ld b, [hl]
    db $10
    add e
    add l
    inc bc
    db $e4
    pop bc
    and b
    or h
    jp $966d


    jr nz, jr_06a_44bc

    ld b, $16
    ld b, c
    db $10
    ret nz

    and $f9
    jr nz, jr_06a_446b

    inc hl
    dec bc
    ld h, l
    ld l, l
    push bc
    and $c2
    and $03
    and c
    nop
    sub d
    push bc
    dec de
    add c
    sub [hl]
    and d
    di
    add l
    ld b, c
    ld [c], a
    cp l
    and l
    add [hl]
    jp hl


    call nz, Call_000_0082
    pop af
    ld h, l
    db $db
    dec b
    ld l, c
    ld b, d
    ld a, [c]
    ld bc, $e0c0
    ld a, e
    ld [hl+], a
    ret nz

jr_06a_4513:
    ld [$012b], a
    nop
    ld c, d
    and e
    ret


    add h
    add e
    db $e4
    db $db
    ld [$a6c7], sp
    ld a, h
    dec b
    add b
    jp hl


    dec b
    ld h, c
    nop
    ret nz

    db $e4
    ld b, a
    add c
    ld d, d
    ldh [$d8], a
    ld h, d
    ld h, h
    and e
    sub d
    call nz, Call_000_2708
    or a
    add e
    db $10
    ld b, b
    rst $20
    xor a
    ld [bc], a
    ld c, $41
    ld a, [bc]
    ld b, b
    dec l
    jp Jump_000_0980


    and d
    rst $10
    ld l, b
    nop
    ld d, d
    jp nz, $c853

    add hl, bc
    ld b, d
    ret nz

    ld [$41c0], a
    add [hl]
    push bc
    ret nz

    push hl
    pop de
    rlca
    nop
    sub d
    jp Jump_000_2508


    add b
    and $77
    dec b
    cpl
    nop
    rst $20
    ld bc, $640a
    ld c, b
    add c
    add b
    adc $41
    inc l
    dec b
    add l
    ld h, l
    ld d, e
    add $02
    ld h, e
    rst $30
    ld h, [hl]
    dec hl
    add [hl]
    dec l
    dec de
    ld l, e
    ld c, e
    rst $38

jr_06a_457e:
    pop hl
    ld l, e
    ld c, e
    adc h
    ld h, e
    inc l
    rlca
    ret nc

    ld l, h
    ld h, b
    ld de, $7441
    ld b, h
    pop hl
    ld h, d
    jp $de42


    and c
    dec c
    dec l
    ld b, [hl]
    jp $cc00


    and b
    and b
    ld h, a
    inc l
    ld [bc], a
    ldh a, [$e8]
    ld a, e
    ld c, b
    add hl, sp
    ld b, c
    add h
    add d
    jp Jump_000_0043


    pop af
    ld [c], a
    ret nc

    ld b, h
    and b
    ld l, e
    ld a, [bc]
    inc h
    ret nz

    ld [$24f9], a
    or c
    ld hl, $6603
    nop
    db $ed
    add sp, -$40
    db $eb
    cp d
    ld l, c
    adc b
    ld h, $6e
    inc b
    add e
    ld b, h
    inc de
    add c
    dec [hl]
    ld h, d
    nop
    ld [hl], d
    jr nz, jr_06a_457e

    ld h, c
    ld d, b
    db $ed
    inc de
    rst $00
    reti


    ld [hl+], a
    dec b
    ld [c], a
    ld l, $03
    ld b, e
    ld b, l
    nop
    cp $02
    ld a, e
    ld b, d
    ld l, e
    ld [bc], a
    db $10
    db $ec
    ld d, e
    rst $00
    rst $10
    pop hl
    ccf
    ld [hl+], a
    db $fd
    ld bc, $de80
    ld h, d
    cp e
    ld [bc], a
    cp $e4
    cp b
    ld bc, $42d9
    ret nz

    xor $ba
    db $e3
    ld l, l
    ld bc, $006d
    nop
    nop
    db $fd

Jump_06a_4601:
    and b
    rst $38
    rst $28
    ret c

    jp nc, $d1d0

    ret nc

    jp nc, $d7dd

    and $e1
    db $d3
    ret nc

    db $d3
    db $eb
    xor $d8
    push de
    di
    push de
    ret c

    jp z, $b7f0

    rst $20
    rst $10
    jp nc, $d2d0

    sub a
    call nc, $dad7
    push af
    ld [c], a
    call nc, $e2b9
    db $eb
    add sp, -$28
    sbc a
    push de
    jp nc, $d4d6

    sub $bd
    pop af
    xor b
    and $da
    ld l, $ca
    ldh [$d9], a
    jp c, $f5dc

    ld [c], a
    reti


    cp c
    ld [c], a
    db $eb
    add sp, $17
    db $d3
    ret nc

    sub $a1
    pop hl
    sub $68
    push hl
    jp $a9e7


    ldh [$5d], a
    jp nc, $e066

    ld [$dca0], a
    jp z, $dbe0

    pop bc
    ld [c], a
    res 4, b
    call c, $e0f8
    ret c

    ld d, c
    ld [c], a
    db $eb
    push hl
    db $d3
    ret nc

    db $db
    rst $10
    call nc, $e060
    rst $10
    jp nc, $eb3c

    db $d3
    sub $02
    ld [$d6e1], a
    ld de, $cae3
    pop hl
    ret


    db $e4
    ld a, [c]
    jp nz, $e1a9

    db $eb
    db $e3
    ld d, $23
    pop hl
    db $dd
    reti


    ld a, [hl+]
    ldh [$dd], a
    rst $20
    add $cd
    call nz, $e30b
    call nz, $e8ea
    push bc
    jp $f2ea


    pop bc
    or d
    ret nz

    adc $c6
    jp c, $bfd3

    ret nc

    ret nc

    db $dd
    reti


    db $dd
    pop de
    ret nz

    db $eb
    db $d3
    ld c, e
    ret nc

    db $dd
    dec bc
    pop hl
    db $dd
    adc d
    jp $c06c


    db $eb
    push bc
    jp nz, $def3

    rst $18
    ld a, [c]
    jp nz, $e150

    and b
    db $e4
    push hl
    ld [$2e86], a
    ld [c], a
    rst $10
    call nc, $e040
    sbc a
    pop bc
    ld d, h
    jp $e593


    pop de
    ld a, [hl]
    xor e
    ldh [$d0], a
    ret nc

    db $d3
    jp c, $e5e4

    ld l, $c1
    sbc e
    db $ec
    db $ed
    push bc
    jp nz, $e1e0

    rlca
    ld [c], a
    ld a, d
    ret nz

    jp c, $a007

    and $e7
    xor d
    pop hl
    xor l
    pop bc
    ld b, b
    ldh [$9f], a
    pop bc
    dec [hl]
    jp nz, $d239

    ld c, l
    call nz, $e3ac
    call nc, $dcd7
    reti


    ldh [$98], a
    ld [c], a
    and $c5
    jp nz, $e3e2

    cp h
    jp nz, $c07a

    call c, $e8a0
    ld bc, $aae9
    pop hl
    xor l
    pop bc
    ldh a, [$e0]
    sbc a
    jp $a1d7


    ld h, d
    call nz, $e3ac
    nop
    ld d, d
    ret nz

    reti


    ldh [$ad], a
    and d
    ld b, l
    pop hl
    ld [hl], $e4
    push bc
    push bc
    call nz, Call_06a_74a2
    jp nz, $db85

    or h
    push bc
    ret nc

    add b
    db $e4
    sbc h
    pop hl
    ld c, e
    ret nz

    ld c, d
    pop bc
    sbc a
    rra
    sbc l
    and d
    sbc l
    sbc l
    sbc a
    ld b, l
    ld [c], a
    ld [hl], $e3
    ld l, $e3
    ldh [$ab], a
    rst $00
    ld h, c
    db $e3
    rst $10
    and l
    xor e
    push hl
    xor h
    push hl
    sbc a
    sbc h
    ld a, c
    rst $18
    ld a, d
    ld a, e
    ld a, h
    sbc h
    sbc a
    ld b, l
    pop hl
    sbc a
    sbc l
    nop
    or [hl]
    pop hl
    ld l, $e6
    or d
    ret nz

    ld [hl], b
    and a
    ld [c], a
    and d
    and c
    and d
    rra
    push bc
    or $82
    cp $c1
    ldh [$7e], a
    ld c, b
    ld c, [hl]
    ld d, e
    ld a, a
    sbc h
    sbc a
    ld a, [hl]
    ld a, b
    ldh [$9c], a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    ld l, $e5
    ret nz

    or d
    pop bc
    ld [hl], b
    and e
    cp $86
    rst $10
    and d
    rra
    push bc
    ld h, c
    jp nz, Jump_06a_799e

    rst $38
    ld a, [hl]
    ld b, a
    ld d, h
    ld d, h
    ld d, h
    ld b, h
    ld a, a
    sbc h
    ld a, [hl]
    ld a, b
    pop hl
    ld a, e
    ld a, e
    ld a, h
    ld a, l
    sbc h
    sbc a
    ld a, b
    ld [c], a
    add b
    dec l
    ldh [$b2], a
    ret nz

    ld [hl], b
    and b
    ld d, [hl]
    and a
    ld h, $a7
    rra
    jp nz, $c20a

    sbc [hl]
    rst $38
    add b
    ld d, c
    ld d, [hl]
    ld a, [hl+]
    inc l
    inc l
    dec l
    ld b, l
    rst $38
    adc [hl]
    ld a, e
    adc a
    ld b, h
    ld c, [hl]
    ld d, e
    ld b, l
    ld b, [hl]
    cp a
    ld a, a
    ld a, l
    sbc h
    and d
    or [hl]
    sub b
    rst $38
    ldh [$b6], a
    pop hl
    sbc a
    ld d, [hl]
    or b
    ld a, [hl-]
    db $e4
    rra
    jp nz, $c20a

    sbc [hl]
    add b
    ld b, [hl]
    rst $38
    ld d, b
    ld a, [hl+]
    jr nz, jr_06a_4808

    add hl, hl
    dec a
    scf
    ld b, l
    rst $38
    ld b, l
    ld b, e
    ld d, h
    ld h, c
    ld d, h
    ld b, e
    ld b, e
    ld a, a
    cpl
    ld a, l
    ld b, [hl]
    sub b
    jp $e5bf


    db $eb
    ld d, [hl]
    or c
    rra
    call nz, $f6fc
    ld h, d
    add b
    ldh [$5f], a
    ld d, d

jr_06a_4808:
    ld a, [hl+]
    ld h, $24
    dec [hl]
    rst $38
    dec [hl]
    jr c, jr_06a_4848

    jr c, @+$39

    ccf
    ld e, e
    ld c, a
    cp a
    ld d, [hl]
    ld b, l
    add c
    ld b, [hl]
    sub b
    call nz, $e0bf
    jp $90e3


    and c
    xor c
    and c
    ld d, [hl]
    xor [hl]
    sbc c
    adc c
    sbc $df
    and c
    rst $38
    add d
    add e
    ld d, e
    ld e, c
    ld b, e
    ld b, c
    ccf
    scf
    rst $38
    jr c, jr_06a_486f

    dec a
    jr c, jr_06a_486f

    dec [hl]
    ld [hl], $55
    rst $38
    ld h, c
    ld d, l
    add c
    sub c
    jp $c490


    sub b
    ldh [$fd], a

jr_06a_4848:
    ldh [$3e], a
    ld [c], a
    ld d, [hl]
    and a
    sbc [hl]
    add [hl]
    ret nc

    add a
    ldh [$e1], a
    sbc a
    rst $30
    sbc h
    add a
    adc b
    rst $38
    ldh [$89], a
    add e
    ld b, l
    ld b, l
    rst $38
    xor [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld b, b
    ld e, [hl]
    ld d, l
    db $fd
    add c
    jp nz, $91e0

    ld b, [hl]
    ld b, [hl]
    sub c

jr_06a_486f:
    sub b
    sub b
    pop bc
    sbc [hl]
    ld d, [hl]
    xor d
    ld h, e
    ld l, b
    sub l
    ld h, l
    ld d, b
    and b
    sub h
    jp nz, $9c9d

    rst $38
    add a
    adc c
    add e
    xor a
    ld b, [hl]
    add hl, sp
    dec [hl]
    ld [hl], $ef
    ld b, l
    ld b, e
    add e
    add h
    jp nz, Jump_06a_79e0

    ld a, d
    ld a, h
    add e
    ld a, l
    sub c
    ret nz

    ld [c], a
    ld d, [hl]
    and a
    di
    xor h
    sub l
    ld h, a
    cp d
    and c
    sbc l
    rst $38
    sbc h
    adc e
    ld b, [hl]
    xor [hl]
    ld b, l
    ccf
    ld b, l
    add e
    or a
    adc c
    add a
    add l
    jp nz, $8fe0

    ld d, b
    ld sp, hl
    ret nz

    ld b, [hl]
    add c
    sbc [hl]
    ld a, e
    add b
    ld d, [hl]
    xor b
    adc $ea
    dec de
    xor b
    ld a, l
    add d
    rst $30
    ret nz

    xor a
    rst $38

jr_06a_48c4:
    add e
    adc c
    adc b
    add a
    add l
    ld b, l
    scf
    dec a
    dec de
    add b
    scf
    xor e
    ret nz

    adc h
    ld a, l
    ret nz

    ldh [$7b], a
    add c
    ld [bc], a
    and l
    jr jr_06a_48c4

    adc b
    call z, $55e4
    ld h, h
    and $e7
    ld d, $80
    rst $30
    pop bc
    add l
    ldh [rIE], a
    ld b, [hl]
    ld b, l
    ld [hl], $ac
    dec [hl]
    ld l, c
    dec [hl]
    add hl, sp
    adc a
    ld c, e
    ld e, b
    ld b, h
    add c
    ld [hl], h
    and e
    ld h, d
    add e
    call nz, $a0cb
    pop bc
    db $eb
    ld [hl+], a
    add c
    and l
    ld b, b
    sub a
    ld h, d
    ld a, l
    add e
    rst $30
    call nz, Call_000_3645
    rra
    xor l
    ld h, d
    db $76
    dec [hl]
    ld a, [hl-]
    ld a, b
    ret nz

    ld a, a
    ldh [$74], a
    and b
    ldh [$65], a
    add e
    inc c
    xor d
    pop de
    ld h, c
    ld [hl+], a
    add b
    ld e, $52
    sbc a
    sbc h
    ld b, l
    rst $38
    scf
    add b
    dec a
    jr c, jr_06a_4966

    ld b, b
    ld c, l
    ld e, d
    ld c, $75
    and b
    ld b, [hl]
    or [hl]
    and d
    ld a, d
    and b
    xor d

jr_06a_4937:
    ld h, b
    dec hl
    ld l, h
    ld e, $54
    db $fd
    ld [$6040], a
    and c
    ld b, [hl]
    ld a, c
    adc l
    xor [hl]
    ld b, l
    rra
    ld b, e
    ld b, h
    ld e, [hl]
    ld d, l
    ld b, e
    or [hl]
    and c
    add hl, sp
    and c
    xor d

jr_06a_4951:
    ld h, b
    ldh a, [$0c]
    xor b
    or b
    ld h, $1e
    ld d, b
    ldh a, [$a1]
    ld a, c
    ld a, [hl]
    xor [hl]
    xor a
    ccf
    ld b, l
    ld b, e
    ccf
    ld e, e
    ld c, d
    ld c, h

jr_06a_4966:
    cp l
    ret nz

    ei
    and b
    ldh a, [$f8]
    add d
    inc c
    and a
    or d
    add a
    ld e, $50
    ld [c], a
    db $e3
    sbc [hl]
    ld b, [hl]
    cp $78
    ret nz

    ld b, l
    ld [hl], $3b
    dec [hl]
    ld [hl], $4a
    ld h, c
    daa
    ld e, b
    ld b, h
    ld a, a
    cp a
    pop hl
    cp d
    and b
    db $eb
    inc c
    and a
    ld [$b848], sp
    add hl, bc
    ld b, d
    add a
    ld b, b
    ld e, $49
    sbc [hl]
    sub c
    add l
    ld l, a
    and b
    ld [hl], c
    rst $38
    ld [hl], d
    ld l, h
    dec [hl]
    add hl, sp
    ld d, [hl]
    ld h, c
    ld d, l
    ld b, [hl]
    ld [bc], a
    ld a, $e1
    sbc [hl]
    ld hl, sp+$45
    inc a
    ld h, [hl]
    ld [$ca42], sp
    ld b, e
    add a
    ld b, c
    ld e, $47
    ld a, h
    jr nc, jr_06a_4937

    rst $00
    add b
    sub c
    ld b, b
    xor h
    ld l, [hl]
    ld [hl], h
    ld a, l
    ret nz

    ld bc, $c057
    push hl
    adc h
    ld bc, $653a
    ld [$364a], sp
    ld h, e
    ld e, $46
    jr nc, jr_06a_4951

    cp a
    sub b
    jp $90c4


    ld b, d
    xor l
    db $fd
    and b
    ld [hl], $1f
    ld b, e
    ld b, e
    ld b, l
    add e
    add h
    add b
    ld [c], a
    cp $44
    sbc l
    ld b, d
    ld l, b
    or d
    add [hl]
    ld d, c
    rlca
    ld e, $49
    sbc [hl]
    jp Jump_06a_4481


    inc a
    db $fd
    and b
    call Call_000_3539
    add b
    adc d
    add l
    cp d
    add h
    jr nc, jr_06a_4a63

    and b
    and b
    and b
    or d
    add [hl]
    ld c, c
    and c
    ld d, c
    inc bc
    ld e, $48
    ld b, b
    ldh [$91], a
    or b
    ld b, b
    ld h, h
    inc bc
    ld a, b
    dec [hl]
    ret nz

    ldh [$35], a
    add b
    ccf
    jp $4437


    ld [c], a
    ld [hl+], a
    or d
    add [hl]

jr_06a_4a1e:
    ldh a, [$9f]
    ld hl, $0151
    rlca
    ld b, d
    ld e, $44
    sbc a
    and d
    or [hl]
    sub c
    ld e, a
    ld a, c
    ld a, [hl]
    ld b, l
    ld [hl], $35
    rst $38
    ldh [rLCDC], a
    ret nz

    db $e3
    inc bc
    or [hl]
    sbc a
    ld e, [hl]
    jr nz, jr_06a_4a92

    and l
    ld [hl], c
    inc hl
    ld [$9f43], sp
    ld hl, $0151
    ld c, b
    ld c, h
    ld hl, $2158
    scf
    nop
    sbc a
    rlca
    ld h, b
    ld b, b
    ret nz

    add hl, sp
    pop bc
    pop hl
    inc sp
    inc a
    ld b, h
    db $fd
    add d
    ld a, e
    ld h, b
    and $e7
    ld d, [hl]
    and a
    or d
    adc b
    jr nz, @+$45

jr_06a_4a63:
    add l
    ld c, h
    jr nz, @+$5a

    ld hl, $00f8
    pop bc
    pop hl
    jp $c040


    ld b, d
    pop bc
    ld a, [bc]
    or [hl]
    ld h, c
    ld d, d
    pop bc
    pop bc
    sbc [hl]
    scf
    jr nz, jr_06a_4ad1

    and l
    ld a, $0a
    inc c
    and e
    jr nz, jr_06a_4a1e

    ld bc, $6268
    pop de
    nop
    ld b, h
    pop bc
    add l
    ld h, c
    add hl, sp
    ld b, d
    ret nz

    db $76
    ld h, b
    rlca
    ld e, e

jr_06a_4a92:
    add e
    add [hl]
    pop bc
    ret nz

    cp h
    ld h, d
    ld d, [hl]
    and h
    jp nz, Jump_000_0ce9

    and l
    add sp, -$50
    dec h
    pop de
    nop
    inc b
    ret nz

    call nz, Call_06a_4085
    ld b, [hl]
    ld b, b
    dec [hl]
    inc hl
    ld l, e
    ld l, h
    ld b, b
    ldh [$c1], a
    ld [c], a
    ld a, [hl-]
    ld b, b
    ld [$a656], a
    jr z, jr_06a_4ae2

    ldh a, [$0c]
    and [hl]
    and h
    add a
    ld bc, $04e1
    ld h, c
    ld b, d
    dec [hl]
    ld l, [hl]
    ld [hl], b
    inc bc
    ld [hl], c
    ld [hl], c
    or l

jr_06a_4aca:
    ld h, b
    pop bc
    ld [c], a
    sub h
    ld h, a
    ret nz

    ld c, b

jr_06a_4ad1:
    inc c
    xor b
    or b
    ld h, $7b
    sbc $df
    cp a
    ld [c], a
    sub b
    sub b
    ld b, h
    inc a
    ret nz

    jp nz, Jump_06a_4601

jr_06a_4ae2:
    add e
    pop bc
    ld d, $e9
    ret nz

    ld c, b
    inc c
    xor c
    or b
    dec h
    pop hl
    and b
    ld b, d
    and b
    add hl, sp
    sub b
    add b
    pop hl
    ld b, b
    ret nz

jr_06a_4af6:
    ld a, [hl-]
    ld b, l
    sbc h
    ld l, c
    ld bc, $e916
    db $10
    or e
    ld [$a80c], sp
    or b
    ld h, $e1

Jump_06a_4b05:
    and b

Jump_06a_4b06:
    and c
    add [hl]
    jr nz, jr_06a_4aca

    ret nz

    ld bc, $07c1
    add hl, sp
    ld b, [hl]
    and c
    ld a, [hl]
    ld [bc], a
    ld [hl+], a
    adc b
    ret nz

    ld c, b
    inc c
    and a
    ld a, l
    jp nz, $e604

    ld b, l
    ld b, d
    and c
    ld b, [hl]
    ld sp, hl
    ld hl, $e081
    ld b, e
    ld h, c
    ld c, [hl]
    and b
    ld [hl+], a
    adc b
    or b
    ret nz

    ld c, c
    inc c
    and [hl]
    and d
    and d
    ld [hl-], a
    inc bc
    sbc a
    sbc l
    rst $00
    ld bc, $1a46
    ld bc, $3ee2
    ret nz

    jr nz, jr_06a_4af6

    sbc a
    ld c, [hl]
    and b
    ld [hl+], a
    adc d

Jump_06a_4b45:
    ld a, $29
    adc b
    inc c
    and h
    ld e, [hl]
    ld b, b
    xor b
    ld [hl+], a
    db $eb
    add c
    jp $a07f


    add c
    and d
    ld a, $00
    ld b, l
    ld h, b
    ret nz

    inc hl
    ld d, $e9
    call nz, $d1a6
    ld b, c
    inc c
    and e
    ld e, [hl]
    ld b, b
    xor b
    ld hl, $450c
    add d
    adc b
    ld [bc], a
    ld b, [hl]
    ld a, $01
    db $e3
    dec a
    inc b
    ld d, $e9
    cp $03
    ret nz

    ld c, c
    ld b, l
    dec bc
    and d
    db $76
    jr z, @-$3d

    and c
    ld b, a
    nop
    ret nz

    ld [c], a
    ld [hl], $45
    ld [bc], a
    push bc
    ld b, b
    jp Jump_000_243f


    ld [hl+], a
    add [hl]
    ld a, [hl-]
    ld b, c
    ld c, c
    ld b, [hl]
    ld l, e
    ld h, c
    ld b, a
    ld b, e
    sub b
    jr c, jr_06a_4bf9

    jp $8882


    ld bc, $c181
    dec sp
    pop bc
    ldh [$85], a
    ld b, b
    call nz, $bf80
    ld [bc], a
    ld [hl+], a
    adc b
    ld a, [hl-]
    ld b, c

jr_06a_4bab:
    ld c, c
    ld b, [hl]
    ld a, [bc]
    ld b, c
    or l
    ld b, l
    rst $30
    ld bc, $9ca1
    ld c, l
    ld bc, $0187
    ld b, l
    ccf
    ld b, e
    pop bc
    ldh [$81], a
    nop
    sub b
    jr nz, @-$7b

    add b
    ld h, l
    add d
    ld a, $25
    sub [hl]
    and c
    di
    add a
    db $d3
    or l
    ld b, [hl]
    inc sp
    ld hl, $4300
    and d
    ld c, c
    nop
    cp $e4
    pop bc
    ld [c], a
    nop
    ldh [$c5], a
    ld b, d
    ld c, h
    inc h
    sub [hl]
    and d
    ld h, d
    ld c, c
    ld b, [hl]
    ret c

    ld c, [hl]
    ld b, b
    or l
    ld b, h
    jp c, $9f00

    sbc h
    push bc
    and $18
    jp nz, Jump_000_03e5

    and l
    dec b
    ld [hl+], a
    db $e4
    push hl

jr_06a_4bf9:
    ld a, e
    ld b, c
    ld a, [hl-]
    ld b, b
    ld [hl], a
    ld b, [hl]
    jp $d0d3


    or l
    ld b, [hl]
    add h
    add c
    pop bc
    jp hl


    ld b, h
    pop bc
    sub b
    or [hl]
    add c
    sbc l
    add [hl]
    ld h, c
    db $db
    dec b
    ld [hl], a
    ld bc, $82b6
    ld a, l
    adc b
    or l
    ld c, c
    sbc [hl]
    add hl, bc
    ld b, [hl]
    ld c, b
    nop
    rst $38
    ldh [$37], a
    add $c0
    rlca
    and b
    or l
    nop
    rlca
    jr nz, jr_06a_4bab

jr_06a_4c2b:
    ld b, d
    nop
    db $db
    dec b
    sbc h
    inc bc
    ld bc, $4b2a

jr_06a_4c34:
    ld b, e
    or l
    ld b, c
    cp e
    ld h, b
    sbc [hl]
    ld l, a
    ld b, [hl]
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    adc e
    inc b
    nop
    and h
    ld h, c
    db $e4
    and c
    add l
    ld h, a
    sbc d
    rlca
    inc sp
    ld [bc], a
    ld l, $21
    or l
    ld b, l
    add b
    pop hl
    rst $38
    ld a, $69
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $00
    ret z

    add b
    xor l
    ld b, d
    sub a
    add h
    db $db
    inc b
    ld d, e
    jp z, $a24f

jr_06a_4c6c:
    ld l, $21
    or l
    ld b, l
    db $10
    adc b
    jr nz, jr_06a_4c34

    ldh [$8a], a
    ld b, c
    ret nz

    ldh [$9e], a
    rla
    ld b, d
    inc l
    inc b
    db $db
    ld b, $f0
    ld [$3728], sp
    add l
    or l
    ld b, [hl]
    dec sp
    jr nz, jr_06a_4c2b

    ld b, [hl]
    add hl, sp
    ld l, e
    ld l, l
    ld [hl], c
    rst $38
    ldh [$6d], a
    add hl, sp
    ret nz

    ldh [$e2], a
    db $e3
    inc l
    rlca
    nop
    add l
    ld h, h
    ld d, e
    rst $00
    ld c, a
    and a
    db $f4
    adc b
    ld b, b
    ret nz

    ret nz

    push bc
    ld bc, $20e2
    ld l, c
    ld b, b
    ld d, e
    call z, Call_000_07b5
    push bc
    ld hl, $43c3
    ld b, e
    add d
    cp $a2
    sbc h
    adc h
    ld h, b
    inc c
    ld l, h
    ld b, b
    inc l
    ld [$dfde], sp
    ldh a, [$e2]
    ld [$2f2a], sp
    daa
    jp $0245


    ld a, d
    jr nz, jr_06a_4c6c

    ld c, d
    call nz, $6c20
    ld a, [bc]
    ld [hl+], a
    ld d, e
    ret z

    push bc
    dec hl
    jp Jump_000_0045


    db $e4

jr_06a_4cdb:
    ld [bc], a
    cp d
    ld h, b
    or c
    ld h, h
    inc l
    ld [$220a], sp
    ld d, e
    res 7, b
    ld l, c
    jp Jump_000_0444


    db $e4
    nop
    or l
    jr nz, jr_06a_4cdb

    sbc b
    and c
    or c
    ld h, c
    ld a, [bc]
    adc d
    db $dd
    ld b, h
    ld [$0025], sp
    cp a
    db $ec
    jp Jump_06a_7843


    push bc
    or c
    ld h, h
    inc l
    ld a, [bc]
    ld [$3533], sp
    ld l, b
    rst $28
    dec bc
    nop
    or c
    ld h, d
    inc l
    add hl, bc
    ld c, b
    xor d
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    dec h
    db $10
    ld [bc], a
    ld bc, $1126
    ld [bc], a
    ld [bc], a
    add hl, hl
    ld de, $0302
    inc h
    ld [de], a
    ld [bc], a
    inc b
    ld a, [de]
    inc de
    ld [bc], a
    dec b
    dec de
    dec d
    ld [bc], a
    ld b, $22
    rla
    ld [bc], a
    rlca
    inc h
    ld a, [de]
    ld [bc], a
    ld [$1b23], sp
    ld [bc], a
    add hl, bc
    ld [hl+], a
    ld e, $02
    ld a, [bc]
    dec h
    ld e, $02
    dec bc
    ld hl, $021f
    inc c
    rra
    inc h
    ld [bc], a
    dec c
    ld e, $25
    ld [bc], a
    ld c, $20
    ld h, $02
    rrca
    rra
    ld a, [hl+]
    ld [bc], a
    db $10
    dec e
    ld l, $02
    ld de, $2f1e
    ld [bc], a
    ld [de], a
    dec hl
    cpl
    ld [bc], a
    inc de
    inc e
    jr nc, @+$01

    rst $38
    rst $38
    sub d
    ld c, l
    db $f4
    ld d, c
    ld b, h
    ld d, a
    ld h, [hl]
    ld d, a
    rra
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    db $ed
    db $f4
    db $ed
    adc $d0
    db $ed
    ld l, [hl]
    ld l, $6e
    cp [hl]
    ldh [$bd], a
    ldh [$0d], a
    dec c
    or b
    jp nz, $f0e2

    db $eb
    and [hl]
    add sp, -$20
    ld a, [c]
    ld l, $0e
    pop bc
    ldh [$4e], a
    ld [hl], l
    ld c, [hl]
    ret nz

    rst $20
    ld l, $f0
    jp hl


    dec c
    ld l, l
    dec l
    ret nz

    db $ed
    or h
    ldh [$ea], a
    ret nc

    ld [c], a
    ld l, $3e
    pop hl
    ld c, [hl]
    ld c, $f0
    ldh a, [$0d]
    rlca
    ld l, l
    dec c
    ld c, l
    cp a
    db $e3
    call c, $d0e0
    ei
    ccf
    ld [c], a
    ld hl, sp-$40
    ld [bc], a

Call_06a_4de0:
    ldh a, [$ea]
    ld l, l
    cp l
    pop hl
    dec de
    db $e3
    ldh [$f2], a
    ret nc

    db $ec
    cp b
    pop bc
    or b
    add sp, $00
    pop bc
    ld [c], a
    ld b, b
    ldh [$e8], a
    pop bc

jr_06a_4df6:
    add b
    pop hl
    ldh [$ed], a
    ldh a, [$ee]
    cp l
    ret nz

    ld [hl], b
    ld [$2d01], a
    ld a, $e0
    ld b, b
    ldh [$c0], a
    ld [c], a
    ldh [$f1], a
    ldh a, [$f1]
    rst $28
    jp nz, $e5b0

    nop
    cp a
    db $e3
    ret nz

    ld [$eae0], a
    ldh a, [$ee]
    xor a
    call nz, $e670
    ld a, [hl]
    db $e4
    pop hl
    xor d
    nop
    ret nc

    db $ed
    adc $a6
    ld e, h
    db $e4
    cp [hl]
    xor c
    ld a, l
    ret nz

    cp a
    rst $20
    ldh [$ed], a
    inc l
    push hl
    nop
    jr jr_06a_4df6

    jp $f8a0


    and c
    cp c
    and e
    ldh a, [$e3]
    adc $a1
    ld a, a
    pop bc
    ld a, l
    pop bc
    nop
    ldh [$f1], a
    ret nc

    push hl
    and h
    jp $e0c0


    ld sp, hl
    and h
    ldh a, [$e5]
    pop bc
    add sp, -$7d
    and d
    nop
    ldh [$ed], a
    ret nc

    and $24
    pop bc
    call nc, $b9a0
    and b
    push af
    add e
    ldh a, [$e4]
    add d
    push hl
    nop
    ld a, [hl]
    and d
    ldh [$f0], a
    ret nc

    push hl
    add a
    pop hl
    ld d, a
    pop bc
    ldh a, [$ed]
    ld b, e
    db $e4
    ld a, [hl]
    and d
    nop
    ldh [$f1], a
    sub b
    and $7f
    add b
    add [hl]
    and c
    push af
    add c
    ld [hl], l
    add b
    db $fd
    and b
    ldh a, [$e4]
    nop
    ld bc, $c0c1
    call nz, $f2e0
    ret nc

    jp hl


    sub h
    add e
    jp c, $f0a1

    add sp, -$41
    rst $20
    add h
    ldh [$f3], a
    ret nc

    db $e3
    ld l, l
    rst $38
    add sp, -$4c
    add c
    ldh a, [$e7]
    ld a, [hl]
    push hl
    dec l
    inc bc
    ld c, l
    dec l
    ld a, [c]
    pop hl
    db $db
    ld h, b
    call nc, $d0e9
    push hl
    adc $e2
    sub l
    add b
    ld e, $c3
    pop hl
    ld l, $4e
    ld c, $4e
    ldh a, [$e6]
    ld [$7ce1], a
    add b
    ld b, c
    ld l, e
    cp $e0
    ret nz

    ld [c], a
    ldh [$60], a
    sbc l
    ld [c], a
    ret nc

    db $ec
    ld c, $c0
    rst $20
    db $d3
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$f0], a
    and $6d
    add b
    add c
    dec bc
    ld a, [bc]
    rlca
    ld c, d
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl-]
    add b
    ret nz

    db $e4
    ld [c], a
    ld h, b
    sbc h
    ldh [$d0], a
    ld a, [c]
    ret nc

    and $e0
    ld [hl], $84
    ld [hl], b
    db $e4
    ld b, c
    add c
    ld a, [bc]
    rst $38
    pop hl
    ld a, [hl+]
    dec bc
    ld hl, $3e4b
    ldh [$60], a
    ld h, c
    call c, $d0e4
    db $ed
    dec c
    dec bc
    pop hl
    or $67
    ld a, h
    ldh a, [$e2]
    ld d, e
    ldh [$0d], a
    dec c
    ld c, d
    ld c, d
    ld a, [hl+]
    dec a
    and c
    inc bc
    ld a, [hl+]
    dec bc
    ld a, [hl]
    ld [c], a
    db $10
    push hl
    ld d, c
    ret nz

    ret nc

    db $eb
    dec a
    ld [c], a
    ldh a, [$eb]
    ld a, [$a345]
    dec hl
    pop bc
    ldh [$0b], a
    dec hl
    dec c
    ld c, d
    ld l, d
    ret nz

    scf
    add c
    ret nz

    rst $20
    ret nc

    db $ed
    and h
    push hl
    ldh a, [$e7]
    ld b, $a4
    ld a, [bc]
    ld c, d
    cpl
    dec c
    dec hl
    dec bc
    ld l, e
    ld a, [hl-]
    ldh [rWX], a
    cp a
    db $e3
    sub b

jr_06a_4f49:
    call nz, $d0f2
    db $eb
    ld l, l
    ldh a, [$ef]

jr_06a_4f50:
    rst $00
    add h
    ld l, e
    ld c, d
    ld a, [bc]
    dec c
    ccf
    ld l, e
    ld l, e
    dec l
    dec c
    ld c, d
    ld a, [bc]
    ld [hl], $61
    cp a
    db $e3
    and b
    jr nz, @-$3d

    ret nz

    db $ed
    inc b
    push bc
    ldh a, [$e6]
    add h
    and h
    dec hl
    add b
    ldh [$0d], a
    rlca
    dec l
    dec l
    dec l
    ld a, [hl]
    ret nz

    ld a, b
    add d
    inc b
    call Call_06a_4286
    ret z

    and e
    jr nc, jr_06a_4f49

    and b
    ld b, h
    ld b, c
    jp nz, Jump_06a_43a4

    and l
    ld a, [bc]
    ld a, [bc]
    ret nz

    pop hl
    ld a, [hl]

jr_06a_4f8c:
    ret nz

    jr nc, jr_06a_4f50

    db $ec
    ret nc

    db $eb
    dec hl
    jp Jump_06a_4052


    dec l
    ld l, l
    sub e
    ldh [$d7], a
    and d
    ld a, $02
    and h
    ld l, e
    ld a, [bc]
    dec hl
    dec bc
    dec bc
    inc a
    ret nz

    ld [hl], a
    ld b, d
    nop
    jr jr_06a_4f8c

    ldh [$e1], a
    ret nc

    db $ed
    rlca
    call nz, $a27d
    or e
    and c
    add a
    inc h
    jp nz, $0542

    ld c, e
    ret nz

    pop hl
    ld a, [hl+]
    pop bc
    db $e4
    ldh [$e4], a
    ret nc

    db $ed
    dec hl
    push bc
    ld e, d
    and b
    jr jr_06a_5009

    and b
    ret nz

    and $81
    ld b, d
    ld c, e
    dec bc
    rst $38
    ldh [$39], a
    ld b, c
    jp c, Jump_000_0081

    ldh [$e4], a
    ret nc

    db $ed
    db $eb
    and h
    ld b, h
    pop hl
    or h
    nop
    sub a
    and b
    inc d
    inc hl
    ld c, d
    ld h, b
    add d
    ccf
    ld b, b
    ld l, e
    ret nz

    ld [c], a
    ld e, l
    ret nz

    inc h
    ld [c], a
    ldh [$e2], a
    ret nc

    db $ec
    dec l
    ld [bc], a
    cp e
    add [hl]
    ld c, $f5
    ldh [$f3], a
    and b
    ld [hl], d
    ld bc, $e311
    cp $20
    nop
    ldh [rSB], a
    ld c, e

jr_06a_5009:
    db $f4
    add d
    ld l, b
    add b
    ldh [$e4], a
    ret nc

    db $ed
    xor l
    add h
    add b
    ld [c], a
    db $e3
    and c
    inc l
    sub h
    inc bc
    ldh a, [$e2]
    ld c, l
    dec l
    ret nz

    ret nz

    ld l, e
    ld b, d
    add c
    ld h, b
    db $e4
    ld a, b
    ret nc

    ldh a, [$30]
    dec c
    ldh a, [$eb]
    dec l
    ld l, e
    dec bc
    ld l, e
    cp $2b
    nop
    ret nc

    db $ed
    jr nc, jr_06a_5044

    ldh a, [$e9]
    ld l, e
    nop
    cp a
    pop bc
    ld b, c
    add d
    ldh [$f1], a
    dec hl
    ld h, d
    db $fc

jr_06a_5044:
    jr nc, jr_06a_5053

    ldh a, [$e9]
    dec c
    ld l, l
    dec bc
    dec bc
    dec hl
    dec bc
    ldh a, [$c0]
    ld h, c
    ldh [$f3], a

jr_06a_5053:
    jr nc, jr_06a_506b

    ldh a, [$e3]
    dec c
    ld l, l
    ld c, e
    ld l, e
    add a
    dec bc
    ld c, e
    ld c, e
    ret nz

    ld h, [hl]
    ret nc

    rst $30
    jr nc, jr_06a_5076

    ld l, d
    ld hl, $834b
    ld l, e
    ld c, e

jr_06a_506b:
    ret nz

    ldh [$7f], a
    ld h, c
    ldh [$f0], a
    jr nc, @+$1f

    ei
    ld h, b
    ld c, e

jr_06a_5076:
    nop
    cp a
    pop hl
    ld a, l
    ld bc, $00fb
    ldh [$ed], a
    ret nc

    xor $30
    inc c
    cp h
    ld h, b
    ld bc, $0ea0
    ld a, [hl]
    and b
    dec hl
    dec bc
    dec l
    ld a, c
    inc bc
    ldh [$eb], a
    ldh a, [$f1]
    ld h, b
    ld [$7d00], sp
    ld h, c
    ret nz

    db $e3
    dec a
    and d
    ld l, b
    and c
    ldh [$ea], a
    ldh a, [$f0]
    xor a
    call nz, $c4f0
    inc e
    rst $38
    add b
    inc bc
    and b
    dec bc
    dec bc
    dec l
    dec a
    ld h, b
    cp d
    inc bc
    ldh [$eb], a
    ld [$0333], sp
    jr nc, jr_06a_50c6

    cp [hl]
    xor b
    dec l
    ld [bc], a
    jp nz, $e13f

    inc a
    ld bc, $812a
    ld b, b
    sbc d

jr_06a_50c6:
    ld [c], a
    ret nc

    db $eb
    jr nc, jr_06a_50d8

    ldh a, [$e5]
    add d
    and h
    rst $38
    jp nz, $bc4b

    ld [bc], a
    nop
    ld a, e
    and e
    ret nc

jr_06a_50d8:
    db $ed
    jr nc, jr_06a_50e9

    ldh a, [$e4]
    ld b, c
    and e
    ld b, d
    ret nz

    ld a, l
    pop bc
    cp h
    ld bc, $c000
    db $e4
    ret nc

jr_06a_50e9:
    xor $30
    inc c
    ldh a, [$e5]
    ld a, a
    and e
    ld a, e
    ld [bc], a
    push af
    jr nz, jr_06a_5076

    jp $db00


    jp nz, $ecd0

    jr nc, jr_06a_510a

    ldh a, [$e5]
    rrca
    and h
    ld a, [hl-]
    ld [$a2df], sp
    ret nc

    xor $00
    jr nc, jr_06a_511c

jr_06a_510a:
    and $c4
    ld a, [hl]
    add d
    add hl, sp
    inc b
    ld a, d
    add e
    sub a
    pop hl
    ret nc

    ldh a, [$30]
    ld [$f080], sp
    add sp, -$13

jr_06a_511c:
    and h
    cp a
    jp hl


    ret nz

    db $e4
    ret nc

    add sp, $30
    dec c
    ld e, c
    ld c, h
    ld c, l
    nop
    scf
    ld h, b
    ld a, [hl]
    add sp, $64
    ld b, c
    ret nc

    db $eb
    jr nc, jr_06a_5140

    ldh a, [$e8]
    ld d, h
    ld bc, $60fc
    nop
    ld [hl], e
    inc hl
    ld a, l
    and h
    or [hl]
    ld h, b

jr_06a_5140:
    ret nc

    db $eb
    ld d, b
    ld b, $30
    inc de
    cp c
    add e
    pop bc
    push hl
    nop
    ld e, d
    and d
    ret nc

    ld a, [$e7c0]
    ld l, a
    jp $eac1


    add b
    jp hl


    ret nc

    add sp, $30
    dec c
    nop
    ldh a, [$e5]
    ret nz

    ld [c], a
    or h
    inc b
    jr z, jr_06a_51a7

    ld b, b
    db $e3
    ret nc

    db $ed
    jr nc, @+$0f

    ldh a, [$e5]
    nop
    ld e, c
    ld b, c
    ld [hl], l
    inc b
    xor c
    inc h
    dec h
    ld [hl+], a
    ret nc

    xor $30
    dec bc
    ldh a, [$e4]
    ld d, h
    inc b
    nop
    or [hl]
    inc bc
    ld b, b
    ld h, e
    push hl
    inc b
    ld b, b
    ld c, $f0
    ld a, [c]
    db $d3
    add h
    rst $30
    inc b
    xor c
    ld [bc], a
    nop
    ret nz

    push af
    jr nc, jr_06a_519d

    rst $38
    and l
    ret nz

    and $bf
    db $e4
    ld [$41c1], sp
    push bc

jr_06a_519d:
    ld d, b
    jp hl


    nop
    jr nc, jr_06a_51b1

    rst $00
    and l
    ld hl, sp+$04
    ret nz

jr_06a_51a7:
    and e
    cp a
    ld [c], a
    call nz, $d0a5
    db $eb
    jr nc, jr_06a_51bc

    nop

jr_06a_51b1:
    ldh a, [$e9]
    jp nc, $bda2

    add e
    ld a, a
    ld [bc], a
    ldh [$ed], a
    ret nc

jr_06a_51bc:
    pop hl
    jr nc, jr_06a_51cd

    ldh a, [$ec]
    ld bc, $3e2d
    jp nz, $a32f

    ldh [$f1], a
    jr nc, @+$16

    ldh a, [$e6]

jr_06a_51cd:
    ld a, c
    ld bc, $e364
    nop
    ldh [$f3], a
    jr nc, jr_06a_51e2

    ldh a, [$ee]
    ld a, c
    nop
    dec h
    ldh [rIE], a
    ld [c], a
    ldh [$f1], a
    jr nc, jr_06a_51f0

jr_06a_51e2:
    nop
    ldh a, [$ed]
    push bc
    db $e3
    ldh [$f7], a
    jr nc, jr_06a_51f7

    ldh a, [$ee]
    jp nz, $e0e4

jr_06a_51f0:
    push af
    nop
    nop
    nop
    rra
    ret c

    push de

jr_06a_51f7:
    push de
    ret c

    and b
    rst $38
    add sp, -$10
    db $ed
    db $f4
    db $ed
    sbc $d0
    db $ed
    jp nc, $d4d6

    sub $bd
    ld [c], a
    sbc $df
    ldh a, [$c2]
    ld [c], a
    ldh a, [$eb]
    and [hl]
    add sp, -$20
    ld a, [c]
    ret c

    push de
    sub $d2
    rst $38
    ret nc

    jp nc, $d6d4

    db $d3
    and b
    and b
    ldh [$ed], a
    pop hl
    ld a, c
    ldh [$d3], a
    ret nc

    ldh a, [$e9]
    sbc a
    sbc l
    sbc a
    ret c

    ld h, l
    rst $20
    ldh [$f0], a
    ret nc

    pop hl
    rst $10
    call nc, $e0bf
    rst $10
    jp nc, $d8ef

    and b
    ld [c], a
    db $e3
    ldh a, [$ed]
    sbc a
    or [hl]
    jp $b6c5


    cp a
    db $e3
    ret c

    inc e
    ldh [$e0], a
    rst $28
    sub b
    ld [c], a
    db $dd
    reti


    rst $18
    rst $10
    call nc, $ddd7
    ret nc

    ld a, a
    ldh [$a0], a
    db $eb
    rst $28
    and b
    and b
    rst $10
    jp nc, $e7f0

    sbc a
    or [hl]
    sub b
    ld c, e
    call nz, Call_06a_7f9c
    db $e3
    db $d3
    ldh [$f1], a
    ret nc

    db $e3
    ret nc

    cp [hl]
    ldh [$fb], a
    db $dd
    pop de
    ret nz

    pop hl
    db $ec
    db $ed
    and b
    and b
    jp c, $d339

    ldh a, [$e6]
    add d
    ldh [$90], a
    sub b
    and c
    add sp, -$3d
    sbc l
    ldh [$84], a
    ldh [$ee], a
    ret nc

    db $e4
    call nc, $e040
    cp $c0
    ldh [$e0], a
    ld a, d
    pop bc
    call c, $d77d
    ldh a, [$e6]
    sbc a
    or [hl]
    call nz, $90c3
    ld b, b
    ldh [$4e], a
    add sp, -$3f
    jp c, $dad9

    ldh [$ee], a
    ret nc

    db $e4
    reti


    ld b, b

Call_06a_52ae:
    ldh [rSCX], a
    call nc, $e0d7
    push hl
    sub $e0
    ldh a, [$e6]
    cp a
    ldh [$90], a
    cp a
    ldh [$ce], a
    add sp, -$3f
    call c, $dcdb
    ldh [$ef], a
    ret nc

    db $e3
    db $db
    db $db
    ld a, [bc]
    call $dae0
    ldh [$e6], a
    call c, $e8f0
    rst $38
    ret nz

    ld a, [hl]
    ld [c], a
    pop hl
    xor c
    add b
    ldh [$e9], a
    ld c, a
    ld [c], a
    call $a2e2
    pop hl
    sbc h
    pop bc
    cp l
    push hl
    sub d
    db $e4
    and c
    add a
    sub b
    call nz, Call_06a_7d90
    push bc
    ldh [$ee], a
    ret nc

    and $82
    and c
    db $e4
    or e
    push hl
    ret c

    ld hl, sp-$60
    db $76
    and a
    db $e4
    push hl
    add b
    db $e3
    sub b
    or b
    ld a, l
    call nz, $efe0
    ret nc

    and $88
    ld [c], a
    and $e7
    db $76
    ret nz

    pop de
    ld hl, $f9d0
    and b
    ldh a, [$e5]
    ld b, b
    pop bc
    ld a, a
    ret nz

    sub b
    ld a, $c3
    ldh [$ef], a
    inc e
    ret nc

    and $24
    jp nz, $e9e8

    jp c, $a3b7

    ldh a, [$e6]
    ld bc, $07c2
    sub b
    sub b
    jp $c03e


    pop hl
    add b
    ldh [$ef], a
    ret nc

    and $24
    jp nz, $46c2

    ret nz

    jp c, $a1b7

    ld e, c
    ret nz

    ldh a, [$e4]
    add d
    db $e3
    jp Jump_000_10c4


    ret nz

    push bc
    ldh [$ed], a
    ret nc

    and $24
    pop bc
    ld [$c286], a
    ld a, [de]
    ret nz

    ld e, c
    ret nz

    inc e
    ldh a, [$e4]
    ld bc, $90c2
    call nz, Call_000_3dc3
    and d
    ldh [$f0], a
    ret nc

    and $f0
    inc h
    rst $00
    ld a, [de]
    jp $c514


    ld bc, $c3c1
    sub b
    call nz, $c0c4
    ld a, $c7
    ldh [$eb], a
    ld [$04a9], a
    sub d
    pop bc
    add b
    ld a, [hl]
    and b
    sub c
    xor [hl]
    ld bc, $fd91
    xor h
    call nc, $c26b
    ld h, d
    inc b
    add c
    or a
    ld h, b
    push af
    ld h, b
    inc a
    jp $04fe


    add e
    and c
    call nz, $c490
    sub c
    ld b, [hl]
    xor a
    add e
    ld b, [hl]
    xor [hl]
    cp h
    jp nz, Jump_06a_63f0

    ret nc

    xor $86
    add d
    inc b
    add c
    db $d3
    push hl
    sub $36
    add c
    sub $f0
    and $80
    add c
    sub c
    ld b, e
    ld b, a
    rrca
    ld d, l
    ld c, b
    ld c, b
    xor a
    ld a, d
    add d
    ldh [$61], a
    and c
    ld h, b
    inc e
    jp nz, $d084

    db $ed
    inc b
    add b
    ret c

    ei
    ld h, b
    cp b
    add c
    ldh a, [$e5]
    pop bc
    ld [c], a
    ld b, a
    ld a, a
    ld c, h
    ld d, a
    ld d, l
    ld d, h
    ld d, h
    ld b, h
    ld b, [hl]
    add hl, sp
    add c
    nop
    call c, $dce2
    and c
    ld [hl], l
    add b
    ret nc

    add sp, $0d
    pop bc
    rlca
    add b
    or $61
    rst $30
    ld h, b
    db $db
    reti


    db $dd
    ldh a, [$e4]
    sbc a
    sbc l
    inc bc
    and b
    ld d, c
    ld e, [hl]
    rst $38
    ld d, d
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    ld c, c
    ld b, l
    xor [hl]
    inc [hl]
    cp b
    ld h, e
    sbc [hl]
    db $e3
    jp c, $ead0

    db $d3
    jp c, $8207

    ld b, [hl]
    ld h, b
    call $f7d1
    ld h, b
    ret nc

    ret nc

    ldh a, [$e3]
    inc bc
    add d
    call nz, $ff44
    ld d, [hl]
    ld a, c
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl+]
    add c
    ld c, e
    ld d, d
    ld d, c
    xor a
    cp c
    add e
    sbc h
    and b
    ld d, [hl]
    add b
    call c, $ead0
    rst $10
    ld h, [hl]
    add h
    and h
    jr c, jr_06a_5496

    or $40
    call nc, $e2f0
    add l
    pop bc
    sub b
    ld b, c
    ldh [rHDMA5], a
    rst $38
    add b
    dec l
    jr nz, jr_06a_546f

    add c
    ld c, a
    ld d, [hl]
    ld b, l
    nop
    cp c
    add e
    sbc h
    and b
    ld d, [hl]
    add [hl]
    ret nc

    push hl
    rlca
    add a
    ld hl, sp+$62
    rst $10
    ld h, d
    pop bc
    db $e3
    rst $38
    sub b
    ld b, l
    ld c, e
    ld e, d
    add b
    dec l
    ld a, [hl+]
    add e
    rrca
    add h
    ld c, d
    ld d, l
    sub c
    ld [hl], $c0
    cp a
    ld [c], a
    ld c, $c7
    ret nc

jr_06a_546f:
    push hl
    ldh a, [rTAC]
    add a
    ld hl, sp+$62
    rlca
    add h
    add h
    and c
    jp Jump_06a_4b45


    ld d, [hl]
    ld a, a
    add d
    add e

Jump_06a_5480:
    add e
    add [hl]
    add l
    ld c, b
    ld c, b
    ld a, b
    and b
    ldh [$37], a
    and [hl]
    ret nc

    db $ec
    dec h
    add a
    ld [$8487], sp
    and e
    call nz, Call_06a_52ae
    rst $38

jr_06a_5496:
    ld e, b
    add l
    add a
    add a
    add l
    ld c, e
    ld d, a
    ld d, d
    add b
    add hl, sp
    add b
    cp b
    ld l, c
    ret nc

    db $eb
    dec hl
    jp $820e


    inc b
    add [hl]
    add h
    ld b, c
    jp $afff


    ld b, l
    ld e, e
    ld b, l
    ld [hl], $39
    ld b, a
    ld h, b
    inc bc
    ld e, h
    sub c
    ld a, c
    ld l, d
    ret nc

    db $ec
    dec hl
    call nz, $810e
    ld a, l
    ld h, e
    inc b
    add c
    cp $42

jr_06a_54c8:
    add e
    sub c
    ld b, [hl]
    add hl, sp
    dec [hl]
    ld a, [hl-]
    ld d, e
    ld d, e
    ld bc, $8291
    push hl
    ld e, l
    ld h, d
    ret nc

    db $ed
    dec hl
    call nz, $800e
    add hl, de
    ld b, h
    or $e1
    cp $83
    ld h, e
    jp Jump_000_3e46


    dec [hl]
    dec [hl]
    add hl, sp
    xor [hl]
    inc bc
    sub b
    or [hl]
    ld a, b
    inc h
    ld sp, hl
    ld [hl+], a
    ret nc

    db $ed
    dec hl
    call nz, $c33c
    add hl, sp
    ld b, h
    db $fc
    db $f4
    ld bc, $a0be
    call nz, Call_000_39ae
    dec [hl]
    dec [hl]

jr_06a_5503:
    ld a, [hl-]
    ld hl, $bdaf
    ld b, [hl]
    ld sp, hl
    ld [hl+], a
    ret nc

    db $ed
    dec hl
    add $ea
    add hl, de
    ld b, e
    db $f4
    ld h, c
    ld a, h
    db $f4
    ld [bc], a
    ld a, a
    jr nz, jr_06a_54c8

    ld b, h
    inc a
    dec [hl]
    ld a, [hl-]
    ld a, h
    ld [hl+], a
    ret nz

    ld h, h
    jr nz, jr_06a_5503

    db $e4
    ret nc

    db $ed
    cpl
    sub c
    db $f4
    ld [bc], a
    ld a, $20
    sbc h
    ld b, d
    rrca
    dec [hl]
    dec [hl]
    ld a, $9e
    dec e
    add b
    ld e, l
    and d
    rst $38
    ld [hl], d
    jr nc, jr_06a_5548

    ld a, $fc
    ld l, d
    sbc a
    sbc h
    ld a, [hl-]
    dec [hl]
    ld a, $fc
    inc b
    call c, $f372

jr_06a_5548:
    and b
    and b
    jr nc, @+$0f

    ldh a, [$e9]
    ld [$9ea0], a
    ld a, $07
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld a, e
    inc bc
    ldh [$f0], a
    adc [hl]
    ld h, c
    jr nc, jr_06a_556b

    ldh a, [$ea]
    ccf
    sbc a
    sbc h
    ld a, $35
    inc a
    ld b, h
    cp d
    ld bc, $f3e0

jr_06a_556b:
    inc l

jr_06a_556c:
    jr nc, jr_06a_557e

    ldh a, [$e9]
    sbc a
    sbc h
    rst $38
    and c
    ld b, l
    ld a, l
    inc hl
    ldh [$f0], a
    ld a, b
    ld a, [hl-]
    add d
    jr nc, @+$0e

jr_06a_557e:
    ldh a, [$e8]
    and b
    and c
    xor [hl]
    ld b, [hl]
    ld a, a
    and b
    add c
    ld b, [hl]
    call nz, $e083
    rst $28
    ret nc

    ld [c], a
    jr nc, jr_06a_559d

    ldh a, [$e7]
    ld b, b
    pop bc
    ld b, [hl]
    rra
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, [hl]
    sub c
    ld a, h
    ld b, e

jr_06a_559d:
    ldh [$ed], a
    ret nc

    db $e3
    cp b
    jr nc, jr_06a_55b1

    ldh a, [$e7]
    cp h
    ld h, b
    ld b, l
    scf
    dec a
    rst $38
    ldh [$37], a
    inc bc
    ld b, l
    sub c

jr_06a_55b1:
    cp d
    dec b
    ldh [$e9], a
    ret nc

    db $e3
    jr nc, jr_06a_55c6

    ldh a, [$e6]
    ld b, c
    ld b, c
    ld [hl], a
    add hl, sp
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    xor [hl]

jr_06a_55c6:
    ld a, c
    ld h, $e0
    ldh [$e7], a
    ld sp, hl
    ld h, h
    jr nc, @+$0f

    ldh a, [$e6]
    ret nz

    ld hl, $693e
    and e
    rra
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $3d
    and a
    ldh [$e7], a
    ld c, a
    db $e4
    cp b
    jr nc, @+$11

    jr z, jr_06a_556c

    ld a, l
    add b
    ld a, $69
    dec [hl]
    rst $38
    ldh [rOCPS], a
    add b
    cp l
    and c
    ld bc, $1842
    ld hl, $eed0
    jr nc, jr_06a_5606

    db $fc
    ld h, [hl]
    inc a
    add b
    add hl, sp
    dec de
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    add hl, sp

jr_06a_5606:
    rst $38
    and b
    db $ed
    add e
    ret nc

    ldh a, [rP1]
    jr nc, @+$0f

    ldh a, [$e4]
    nop
    and e
    ret nz

    call nz, Call_000_007b
    db $ed
    add h
    ret nc

    rst $28
    jr nc, jr_06a_562a

    ld a, b
    ldh a, [$e4]
    ld c, a
    ld [hl+], a
    cp d
    ld h, b
    jp $c390


    sub c
    add c
    push bc

jr_06a_562a:
    nop
    ld [$d041], sp
    xor $30
    dec c
    ei
    ld h, [hl]
    ccf
    and d
    ld a, e
    nop
    push af
    ld b, c
    ld a, [hl-]

jr_06a_563a:
    ld [bc], a
    nop
    ld a, e
    add e
    ret nc

    db $ed
    jr nc, jr_06a_564f

    ldh a, [$e5]
    dec sp
    add e
    ld a, b
    ld [hl+], a
    add d
    ld b, b
    ld a, [hl-]
    inc b
    nop

jr_06a_564d:
    ld a, [bc]
    ld h, b

jr_06a_564f:
    ret nc

    db $ed
    ld bc, $2a8d
    dec c
    ld a, l
    db $e4
    cp [hl]
    ld b, e
    ld a, [bc]
    ld h, b
    pop de
    ld [hl], b
    nop
    inc h
    sub h
    ld l, $c4
    or $41
    dec sp
    pop hl
    cp l
    and c
    db $e4
    ld b, e
    call nc, Call_000_3069
    dec c
    ld [$e8f0], sp
    ld d, h
    ld [bc], a
    dec c
    ret nz

    and c
    cp e
    ret nz

    pop af
    jr nz, jr_06a_563a

    jr z, jr_06a_564d

    add sp, $00
    adc l
    ld b, d
    jr nc, jr_06a_5690

    nop
    ld h, b
    ld d, h
    ld b, $f4
    inc hl
    cp a
    inc hl
    ret nz

    and d
    ret nc

    ldh a, [rP1]

jr_06a_5690:
    jr nc, jr_06a_569a

    ldh a, [$e5]
    ld d, h
    dec b
    ld b, c
    push hl
    ld b, c
    ld a, [hl+]

jr_06a_569a:
    ret nc

    add sp, $0d
    pop bc
    jr nc, jr_06a_56a9

    ret nz

    ldh a, [$e5]
    add hl, hl
    ld b, l
    ld [hl], $02
    cp $26

jr_06a_56a9:
    sub $43
    ret nc

    jp hl


    db $d3
    jp c, $a300

    ld b, e
    jr nc, @+$07

    ldh a, [$e5]
    ld d, h
    inc b
    ld [hl], $01
    ld b, d
    inc hl
    ld c, a
    ld hl, $42dc
    jp nz, $ebd0

    rst $10
    jr nc, jr_06a_56d2

    ldh a, [$e5]
    ld d, h
    inc b
    ld [hl], l
    ld bc, $90c4
    nop
    dec a
    ld b, c
    ld c, a

jr_06a_56d2:
    ld hl, $88fb
    ret nc

    push hl
    rlca
    add a
    jr nc, jr_06a_56de

    rst $30
    ld h, l
    ld a, b

jr_06a_56de:
    dec h
    nop
    add hl, sp
    add c
    add c
    ld h, d
    ld c, a
    ld hl, $86fb
    ret nc

    rst $20
    db $f4
    daa
    jr nc, jr_06a_56f1

    db $ed
    xor d
    nop

jr_06a_56f1:
    dec a
    and e
    jp $a9a5


    xor d
    ret nc

    push hl
    jr nc, jr_06a_570a

    push af
    ld l, b
    dec a
    and e
    or a
    ld h, b
    nop
    ld b, b
    ld h, l
    and a
    xor c
    ret nc

    push hl
    jr nc, @+$0e

jr_06a_570a:
    ldh a, [$ee]
    ret nz

    and c
    jp $d0a9


    db $ec
    nop
    jr nc, jr_06a_5722

    ldh a, [$ed]
    ret nz

    and d
    ld bc, $e063
    ld a, [c]
    jr nc, jr_06a_572c

    ldh a, [$ed]
    ei

jr_06a_5722:
    ld h, c
    nop
    jp nz, $e044

    ld a, [c]
    jr nc, jr_06a_5737

    ldh a, [$ed]

jr_06a_572c:
    inc a
    add c
    jp $e0a4


    ld a, [c]
    jr nc, jr_06a_5741

    nop
    ldh a, [$ed]

jr_06a_5737:
    ld h, e
    ld b, $e0
    push af
    rst $38
    ld [hl], a
    rra
    adc l
    ldh [$f1], a

jr_06a_5741:
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    dec e
    inc b
    ld [bc], a
    ld bc, $061b
    ld [bc], a
    ld [bc], a
    inc e
    rlca
    ld [bc], a
    inc bc
    ld e, $09
    ld [bc], a
    inc b
    jr nz, jr_06a_5784

    ld [bc], a
    dec b
    inc e
    inc c
    ld [bc], a
    ld b, $1f
    dec c
    ld [bc], a
    rlca

jr_06a_5784:
    ld a, [de]
    ld c, $02
    ld [$0e1e], sp
    ld [bc], a
    add hl, bc
    dec de
    rrca
    ld [bc], a
    ld a, [bc]
    rra
    rrca
    ld [bc], a
    dec bc
    jr nz, @+$11

    ld [bc], a
    inc c
    dec e
    db $10
    ld [bc], a
    dec c
    inc e
    ld de, $0e02
    ld e, $11
    ld [bc], a
    rrca
    ld hl, $0211
    db $10
    inc hl
    ld [de], a
    ld [bc], a
    ld de, $151b
    ld [bc], a
    ld [de], a
    dec h
    dec d
    ld [bc], a
    inc de
    jr jr_06a_57cc

    ld [bc], a
    inc d
    rla
    rla
    ld [bc], a
    dec d
    daa
    rla
    ld [bc], a
    ld d, $16
    jr @+$04

    rla
    ld h, $18
    ld [bc], a
    jr jr_06a_57f1

    jr jr_06a_57cd

    add hl, de

jr_06a_57cc:
    rla

jr_06a_57cd:
    add hl, de
    ld [bc], a
    ld a, [de]
    ld a, [de]
    add hl, de
    ld [bc], a
    dec de
    daa
    add hl, de
    ld [bc], a
    inc e
    add hl, de
    ld a, [de]
    ld [bc], a
    dec e
    dec de
    ld a, [de]
    ld [bc], a
    ld e, $1a
    dec de
    ld [bc], a
    rra
    dec h
    dec de
    ld [bc], a
    jr nz, @+$1e

    dec e
    ld [bc], a
    ld hl, $1d22
    ld [bc], a
    ld [hl+], a
    dec e

jr_06a_57f1:
    ld e, $02
    inc hl
    inc hl
    inc h
    ld [bc], a
    inc h
    dec e
    dec h
    ld [bc], a
    dec h
    inc h
    dec h
    ld [bc], a
    ld h, $1c
    daa
    ld [bc], a
    daa
    ld h, $27
    ld [bc], a
    jr z, jr_06a_5824

    jr z, jr_06a_580d

    add hl, hl
    dec h

jr_06a_580d:
    jr z, @+$04

    ld a, [hl+]
    jr nz, jr_06a_583f

    ld [bc], a
    dec hl
    ld [hl+], a
    dec l
    ld [bc], a
    inc l
    dec h
    dec l
    ld [bc], a
    dec l
    inc h
    ld l, $02
    ld l, $26
    ld l, $02
    cpl

jr_06a_5824:
    inc hl
    cpl
    ld [bc], a
    jr nc, jr_06a_584e

    cpl
    ld [bc], a
    ld sp, $3027
    ld [bc], a
    ld [hl-], a
    add hl, hl
    ld sp, $3302
    dec h
    ld [hl-], a
    ld [bc], a
    inc [hl]
    jr z, @+$34

    ld [bc], a
    dec [hl]
    ld h, $33
    ld [bc], a

jr_06a_583f:
    ld [hl], $22
    dec [hl]
    ld [bc], a
    scf
    ld hl, $0236
    jr c, @+$25

    ld [hl], $02
    add hl, sp
    ld [hl+], a
    scf

jr_06a_584e:
    ld [bc], a
    ld a, [hl-]
    inc h
    add hl, sp
    ld [bc], a
    dec sp
    ld h, $3a
    ld [bc], a
    inc a
    dec h
    dec sp
    rst $38
    rst $38
    rst $38
    ld h, l
    ld e, b
    ld c, $5e
    ld hl, sp+$64
    ld a, [de]
    ld h, l
    ld a, l
    ld c, l
    rst $38
    push hl
    dec c
    ld c, l
    ld l, $0e
    ld c, $f7
    db $e3
    ld a, e
    ld c, l
    dec c
    push af
    ld [c], a
    ld l, $2e
    ld l, $0e
    db $ec
    pop hl
    daa
    dec c
    dec c
    dec c
    ld [c], a
    ldh [$fb], a
    pop hl
    ld c, $f6
    ldh [$e9], a
    ldh [$e0], a
    reti


    pop hl
    db $ed
    ld [c], a
    ld sp, hl
    ld [c], a
    ret nc

    pop hl
    call z, Call_06a_4de0
    ld l, $6e
    ld c, e
    ld c, $4e
    cp [hl]
    pop hl
    dec c
    push bc
    pop hl
    ret nz

    rst $20
    ld l, l
    push bc
    db $e3
    ld a, [bc]
    rst $38
    pop hl
    ld c, $c0
    ld [c], a
    ld l, [hl]
    ld sp, hl
    pop hl
    rst $08
    pop hl
    sub l
    ld [c], a
    db $fc
    push hl
    add sp, -$7f
    ldh [$80], a
    ldh [$be], a
    ldh [rKEY1], a
    pop hl
    ld [c], a
    ld l, l
    ld l, l
    ld c, $7b
    ld c, l
    ld l, l
    add b
    ldh [$6d], a
    ld l, l
    ld l, l
    ld c, l
    pop de
    push hl
    ld bc, $962d
    db $e3
    add b
    db $e4
    xor [hl]
    pop hl
    ld b, e
    and $3a

jr_06a_58d5:
    pop hl

jr_06a_58d6:
    ld d, d
    db $e3
    dec a
    pop hl
    jr nz, jr_06a_58d5

    db $e4
    ld l, b
    pop hl
    ld [hl], b
    pop hl
    or c
    pop hl
    jp nc, $2de2

    call z, $19e2
    ldh [$e0], a
    ld a, [hl-]
    pop hl
    call c, $b9e4
    db $e4
    jr z, jr_06a_58d6

    ld a, [hl]
    pop hl
    ld l, l
    ld l, $0e
    add hl, bc
    ld l, [hl]
    dec [hl]
    ldh [$b6], a
    pop hl
    dec c
    ld [hl], h

Call_06a_5900:
    ld [c], a
    push hl
    ret nz

    pop bc
    ld [c], a
    cp a
    db $e4
    ld b, h
    reti


    jp nz, $e8dc

    dec c
    ldh a, [$c2]
    and a
    db $e3
    ret nz

    db $e3
    ld l, $f6
    pop bc
    nop
    push af
    pop bc
    and $c2
    call nz, $bbe4
    ret nz

    ld b, b
    ldh [$7e], a
    ldh [$b0], a
    jp nz, $e7dc

    inc b
    ldh a, [$c2]
    ld a, e
    ret nz

    ld l, l
    dec a
    ld [c], a
    ld a, [hl]
    ret nz

    ret nz

    pop hl
    push af
    call nz, $e885
    rla
    ld a, [bc]
    ld a, [bc]
    ld l, d
    cp a
    db $e3
    dec l
    rst $10
    db $e3
    call c, Call_06a_70e6
    call nz, Call_06a_6d81
    adc c
    pop hl
    jp nc, $e0c0

    jp nz, $e3c0

    add hl, de
    pop hl
    add h
    push hl
    ld a, [bc]
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    inc a
    db $e4
    add b
    db $e4
    call c, Call_000_14e4
    jp nz, $8c8e

    ld [c], a
    ld c, [hl]
    ld c, $4e
    ld h, $c0
    db $e4
    jp hl


    ret nz

    and $2b
    ccf
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec hl
    dec bc
    dec bc
    ei
    push bc
    add b
    rst $20
    add [hl]
    ret nz

    rst $20
    ld l, [hl]
    ld l, [hl]
    cp a
    ldh [$f0], a
    call nz, $e680
    adc h
    push bc
    ld a, [bc]
    adc c
    ld a, [bc]
    jp nz, $c0e0

    db $e4
    dec c
    ld a, a
    pop hl
    add b
    add sp, -$7a
    and d
    ld l, [hl]
    ld hl, sp-$33
    jp hl


    ld h, h
    add sp, -$3c
    call nz, Call_000_2a2a
    dec hl
    dec bc
    ld l, e
    ld bc, $416b
    jp nz, $e3c0

    call c, $a7e7
    and d
    adc l
    jp hl


    db $e3
    jp $ebc0


    ccf
    ld l, e
    dec hl
    ld c, e
    ld l, e
    ld a, [bc]
    ld c, d
    ld a, a
    ret nz

    ret nz

    rst $28
    and b
    push bc
    and h
    pop af
    add $22
    and e
    or a
    and h
    add $a5
    dec c
    inc bc
    ldh [$0a], a
    dec e
    ld a, [bc]
    ld sp, hl
    and h
    ld c, l
    dec l
    ld l, l
    dec e
    and c
    sbc d
    and h
    push hl
    add d
    ret nc

    or c
    ret z

    ld [hl-], a
    pop bc
    inc hl
    and d
    rla
    jp nz, $c64d

    and h
    dec hl
    dec bc
    add e
    ld c, e
    ld a, [bc]
    ld b, c
    db $e4
    rst $38
    pop bc
    xor e
    add d
    ld b, l
    xor d
    ld c, l
    call nz, $a06d
    or d
    and d
    or c
    add d
    db $d3
    add c
    adc b
    and l
    add h
    jp nz, $bf2d

    push hl
    dec l
    nop
    ld bc, $62a3
    add b
    cp b
    add l
    ret nz

    jp hl


    and d
    add d
    jp hl


    jp $a349


    ld a, [bc]
    and b
    or a
    ld c, l
    ld c, e
    ld l, e
    ld a, c
    and a
    dec c
    ld l, l
    ld a, d
    and c
    dec c
    ld bc, $560d
    db $e3
    rst $10
    db $e3
    jp nz, $8ba4

    add b
    ret nz

    db $e3
    ld a, [bc]
    and [hl]
    adc c
    and c
    ld [bc], a
    cp $ec
    ld l, l
    add b
    ldh [$dc], a
    ld h, d
    ld hl, sp+$62
    ret nz

    ld l, b
    or [hl]
    ld h, [hl]
    ret


    add $00
    ld c, c
    and b
    adc c
    and h
    add d
    jp hl


    inc l
    add b
    ld h, $81
    sub c
    ld h, e
    ld a, b
    add [hl]
    jp z, Jump_000_0465

    ld [hl], h
    ld h, d
    adc a
    add h
    ld l, e
    adc b
    and c
    ld c, c
    call nz, $e543
    dec d
    and d
    sub e
    and c
    jp nz, $8238

    dec c
    ld d, h
    add l
    ld l, e
    add c
    ld a, a
    ld h, h
    ld a, [bc]
    and [hl]
    dec c
    dec c
    db $10
    adc d
    and c
    ld c, b
    and h
    sbc a
    add d
    rst $10
    add c
    ld l, l
    sub d
    and h
    add d
    ld h, e
    ld d, h
    adc b
    nop
    xor [hl]
    add [hl]
    cp a
    rst $20
    ld a, [bc]
    and b
    ld b, l
    ret nz

    pop bc
    push hl
    ld hl, sp+$40
    and c
    ld h, d
    add sp, $45
    ldh [rPCM12], a
    add h
    jp z, Jump_06a_7fe5

    ld h, [hl]
    jp z, $ce85

    add b
    ld c, e
    dec bc
    dec hl
    ld bc, $c46b
    db $e3
    db $76
    ld h, d
    ccf
    ld h, h
    xor b
    ld b, e
    ld d, [hl]
    ld h, d
    ld d, h
    add a
    ccf
    ld h, l
    and $8c
    add l
    dec c
    dec l
    inc b
    ldh [$0d], a
    db $e3
    dec l
    dec l
    dec l
    db $10
    xor b
    db $e4
    add e
    ld b, c
    xor b
    ld b, h
    add l
    ld h, c
    ld l, [hl]
    ret nz

    jp hl


    ld a, a
    ld h, h
    ld c, l
    add l
    ld [bc], a
    adc h
    add c
    dec hl
    call nc, Call_000_0ca1
    pop hl
    ldh [$65], a
    sub e
    ld h, c
    xor b
    ld b, e
    ld e, c
    ld b, d
    nop
    add b
    ld [$6424], a
    pop de
    ld b, h
    ld c, h
    add e
    sub e
    add d
    and e
    ld h, d
    ldh [$63], a
    dec bc
    call nz, $d500
    and c
    cp d
    ld b, b
    ret nz

    xor $ef
    inc hl
    pop de
    ld b, e
    add h
    jp nz, Jump_06a_620e

    ld c, [hl]
    jp nz, $e000

    ld h, e
    dec bc
    res 0, b
    add sp, -$02
    ld b, b
    sbc e
    ld b, e
    add c
    and h
    add h
    jp nz, $e17f

    add b
    ld c, l
    ld b, d
    ldh [$66], a
    add e
    ld c, e
    ld c, l
    jr nz, jr_06a_5b8d

    add a
    adc b
    add e
    ret nz

jr_06a_5b19:
    push bc
    ld c, l
    dec de
    ld l, e
    ld c, e
    adc l
    ld h, b
    dec hl
    ld c, e
    jp nc, $9166

    ld h, l
    add e
    ld c, c
    db $10
    cp [hl]
    dec h
    dec de
    ld b, e
    inc l
    inc h
    dec c
    add [hl]
    ld c, e
    adc e
    ld b, b
    ccf
    ld [c], a
    ld de, $c06a
    sbc a
    ld b, a
    ld e, a
    ld b, c
    xor d
    add a
    ld sp, hl
    inc h
    pop bc
    and $cd
    ld h, c
    ld a, [hl+]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld c, d
    ld d, d
    add c
    ret nz

    di
    pop bc
    ld h, e
    add c
    dec b
    jp hl


    inc bc
    ret nc

    ld h, $21
    ld l, e
    ld b, l
    and d
    ld a, [hl-]
    ret nz

    ret nz

    ld [$c10b], a
    dec l
    jp $b24b


    add h
    ld [$0369], sp
    ld d, e
    adc b
    dec b
    and e
    dec bc
    ld [$c0a2], sp
    add sp, $72
    db $ec
    add a
    jr nz, @+$12

    or d
    add e
    ld c, l
    inc bc
    inc de
    adc b
    ld a, a
    db $e3
    ld c, e
    dec c
    ld [hl+], a
    and d
    dec h
    ld e, [hl]
    add h
    jr nz, jr_06a_5b19

    ld c, e
    or d
    add h
    ld h, $c2
    dec [hl]

jr_06a_5b8d:
    add b
    ld e, d
    ld b, h
    dec bc
    ccf
    db $e3
    ld b, b
    jp nz, Jump_06a_7900

    ld [bc], a
    sub e
    add l
    sbc h
    ld b, d
    ld b, e
    ld c, b
    ld a, [c]
    adc b
    rlca
    ld h, e
    add hl, de
    ld b, h
    ld b, b
    jp nz, $c000

    db $e4
    xor d
    ld [bc], a
    inc e
    db $e3
    sub h
    add l
    sub a
    add l
    or d
    add a
    xor e
    and l
    cp a
    and $01
    ld l, e
    ld c, h
    ld hl, $2251
    inc e
    and $9e
    add h
    ccf
    ld h, e
    jr jr_06a_5c28

    or d
    add h
    ld a, [bc]
    xor e
    xor b
    ld c, l
    rst $10
    inc h
    dec hl
    rst $38
    ldh [$7f], a
    and c
    and [hl]
    ld h, c
    adc $62
    nop
    add d
    add c
    ret nz

    db $e3
    ret z

    ld b, c
    inc de
    jp nz, $c2c0

    add $41
    ld l, $09
    ei
    pop bc
    ret nz

    ccf
    and d
    add hl, bc
    ld b, b
    cp a
    pop bc
    ld e, h
    jp hl


    jp z, Jump_06a_6a25

    add e
    ld l, $2e
    nop
    ld [hl], h
    ld [c], a
    xor [hl]
    ld [$6280], sp
    cp d
    jp nz, $e040

    add b
    ret nz

    rst $38
    add b
    adc [hl]
    ld h, [hl]

jr_06a_5c07:
    add h
    inc hl
    ld [hl+], a
    ld b, a
    ld h, l
    dec c
    ld c, e
    inc bc
    xor e
    ld h, e
    ld a, l
    ld a, [hl+]
    jp hl


    jp nz, Jump_000_062d

    inc b
    ld h, d
    ld c, e
    ld c, e
    nop
    push bc
    adc $61

jr_06a_5c1f:
    pop de
    inc h
    and c
    add d
    ld hl, $0040
    ld c, e
    ld [bc], a

jr_06a_5c28:
    inc a
    ld [c], a
    ld c, d
    dec bc
    ld b, b
    ld h, h
    ld a, $a1
    pop bc
    ldh [rP1], a
    jp nz, Jump_000_22e2

    nop
    and a
    ld [hl+], a
    rst $18
    inc b
    rlca
    add $91
    ld b, d
    ld [hl], a
    jr nz, jr_06a_5c1f

    adc d
    add h
    ld [hl+], a
    pop bc
    pop hl
    nop
    ld b, c
    add e
    ld a, [$e300]
    inc h
    rst $18
    add hl, bc
    cp c
    add e
    db $76
    pop bc
    or a
    and d
    xor e
    xor b
    nop
    ld b, a
    nop
    pop bc
    ldh [rSTAT], a
    ld h, c
    ret nz

    push hl
    ccf
    ld h, a
    jr jr_06a_5c07

    ld b, a
    push bc
    db $fd
    ld bc, $bc00
    add hl, bc
    ld e, l
    add e
    db $fd
    ld h, e
    jp nz, $c062

    and $3f
    ld h, [hl]
    rst $18
    ld bc, $6355
    nop
    add hl, sp
    add e
    and a
    rst $20
    or [hl]
    ld h, a
    dec b
    ld [hl+], a
    add c
    jp nz, Jump_06a_6040

    ld hl, $bfe1
    and d
    ld b, b
    ccf
    ld h, e
    sbc a
    inc bc
    ld c, e
    rlca
    and $46
    push hl
    ld [hl+], a
    ld b, c
    jr z, jr_06a_5ce6

    ld a, $81
    ld bc, $442b
    ld b, b
    ld b, d
    and b
    ccf
    ld l, b
    rst $00
    and h
    adc [hl]
    add $e6
    ld b, [hl]
    ld a, [c]
    ld b, d
    nop
    push de
    add d
    ld a, a
    ld h, [hl]
    add b
    pop bc
    ld [hl], $c0
    ld c, l
    adc e
    jp c, Jump_06a_4b05

    inc b
    and $46
    inc d
    cpl
    inc b
    ld b, b
    ld h, l
    ld c, l
    add c
    ld hl, $836b
    ld bc, $6b3f
    ld a, h
    add l
    nop
    ld hl, sp-$5c
    inc [hl]
    adc c
    add b
    db $e3
    sub l
    ld b, $43
    and c
    inc [hl]
    ld h, c
    ld a, a
    and h
    ret nz

    and $20
    db $10
    inc h
    adc b
    xor b
    ld h, a
    rst $20
    xor c
    add [hl]
    ccf

jr_06a_5ce6:
    add d
    ld c, e
    add [hl]
    ld [bc], a
    ret nz

    ld [$5800], a
    ld h, d
    ld a, h
    add h
    ld c, c
    call z, Call_06a_64a3
    ld b, l
    and c
    ld a, $45
    or l
    ld b, d
    ld d, [hl]
    ld hl, $ff00
    ld b, a
    ld b, e
    ld hl, $897c
    ld h, $69
    cp c
    ld h, l
    cp a
    push hl
    db $76
    ld b, e
    ld [hl], e
    add c
    nop
    dec de
    push bc
    ld d, a
    add b
    ld a, h
    adc b
    ld c, h
    ld hl, $48e6
    and $c5
    ld a, [hl]
    and $f3
    ld b, h
    nop
    ld a, l
    ld h, c
    rst $00
    ld b, d
    ld h, a
    and d
    sbc b
    rst $20
    ld c, $42
    and a
    push hl
    and $83
    ld b, b
    add d
    nop
    cp d
    jp z, $e5c0

    pop hl
    ld hl, $43da
    add h
    push bc
    ld c, $43
    add a
    and d
    ld e, [hl]
    nop
    ld [$42e9], sp
    ld [c], a
    ld h, l
    ld b, c
    and [hl]
    dec hl
    cp [hl]
    pop bc
    ld a, l
    ld hl, $0247
    ld b, h
    and b
    nop
    ld b, $25
    adc [hl]
    inc h
    ccf
    dec h
    db $ed
    ld h, d
    ret nz

    ldh a, [rP1]
    ld b, b
    cp $a6
    ret nz

    pop hl
    ret nz

    ld e, e
    ld l, d
    or a
    and a
    cp h
    inc h
    add b
    jp hl


    add $20
    inc b
    ld h, b
    dec bc
    dec hl
    nop
    ret nz

    and $de
    and e
    ld e, e
    ld l, c
    ld c, d
    ld b, l
    ld [bc], a
    ld h, d
    and b
    ld b, d
    ld h, d
    ld h, e
    ld a, [hl]
    ld [bc], a
    nop
    add c
    inc h
    ret nz

    ld [c], a
    ld c, d
    ld hl, $eac0
    cp l
    ld b, l
    sub l
    ld h, e
    jp $bc40


    inc h
    nop
    call c, Call_06a_4264
    ld h, c
    pop bc
    inc h
    ccf
    and c
    ld h, a
    inc bc
    ret nz

jr_06a_5d9f:
    ld [hl+], a
    ld e, e
    ld l, b
    cp e
    ld b, e
    sub b
    ld d, e
    ld h, c
    ld a, $83
    ret nz

    and $a0
    add d
    dec l
    add d
    and b
    cp $e0
    ld l, e
    add b
    add d
    db $e3
    ld d, d
    and h
    db $db
    ld c, d
    cp $e7
    ret nz

    and $b4
    ld h, e
    ld h, a
    rst $20
    dec c

Call_06a_5dc3:
    ld bc, $3f2d
    and b
    ret nz

    nop
    ld c, c
    inc bc
    ld b, $2c
    sub $06
    ret nz

    and $1a
    ld h, h
    ld b, $61
    ld h, d
    dec l
    dec l
    ld b, a
    jr nz, jr_06a_5d9f

    ld h, c
    add c
    nop
    sub h
    inc hl
    adc h
    ld h, [hl]
    nop
    add $05
    ld a, [$a263]
    ld [bc], a
    cp h
    inc h
    inc a
    dec hl
    add sp, $40
    rst $30
    ld h, b
    ld e, d
    add e
    nop
    ld d, c
    add sp, $19
    inc h
    rlca
    add $c0
    ld [c], a
    ld a, d
    call nz, Call_000_273c
    ret nz

    ld [c], a
    ld l, d
    and b
    nop
    ret nz

    rst $28
    rst $08
    xor b
    ld b, d
    pop bc

Call_06a_5e0b:
    nop
    nop
    nop
    db $dd
    and b
    rst $38
    rst $20
    ret c

    push de
    ret c

    ld a, [c]
    push hl
    jp c, $fdd9

    jp c, $e0fb

    rst $10
    call nc, $d9d7
    jp c, $efdc

    and b
    and b
    and $e7
    jp c, $e2e0

    db $e3
    and b
    di
    and b
    db $eb
    reti


    db $ec
    ld hl, sp-$16
    ret c

    jp nc, $d2d0

    inc l
    cp [hl]
    ld [c], a
    jp c, $dce0

    db $db
    ret


    ldh [$dc], a
    cp d
    ldh [$f8], a
    pop hl
    or a
    and b
    add sp, -$17
    sbc d
    db $e3
    db $ec
    db $ed
    sub d
    pop hl
    db $d3
    ei
    ret nc

    db $d3
    ret nz

    ld a, [c]
    rst $10
    jp nc, $d1d0

    ret nc

    sbc e
    jp nc, $dad8

    db $e4
    and b
    ld [$e4ba], a
    or $e2
    sbc a
    ld [hl], l
    sbc l
    rst $38
    ldh [$9f], a
    ld d, h
    ldh [$e4], a
    push hl
    and b
    ld l, d
    ldh [$30], a
    add b
    ld a, [c]
    ld d, c
    ldh [$7e], a
    ldh [$e4], a
    pop hl
    ret c

    push de
    ld [hl], $e6
    ld c, [hl]
    ld [c], a
    rst $38
    and b
    sbc a
    or [hl]
    sub b
    sub b
    sub b
    jp $80b6


    cp a
    ldh [$35], a
    ldh [rNR50], a
    ld [c], a
    call c, $fde9
    call nz, $e051
    rrca
    ldh [$da], a
    ld e, $f9
    ret nz

    jp nc, $d4d6

    sub $bd
    db $e3
    ld c, [hl]
    ldh [$85], a
    ldh [rNR33], a
    and d
    pop bc
    pop hl
    sub b
    call nz, $bf90
    ldh [$35], a
    ldh [rNR50], a
    pop hl
    xor h
    call c, $c9e9

jr_06a_5eb9:
    add $dc
    db $db
    ret


    ret nz

    call c, $e020
    sub $e6
    or $c0
    call nc, Call_000_1ad6
    db $e3
    add l
    pop hl
    jp Jump_06a_7991


    rra
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    sub c
    cp a
    pop hl
    jr z, jr_06a_5eb9

    db $fc
    pop bc
    jr @-$22

    rst $20
    ldh a, [$c8]
    ret


    jp nz, $d0d3

    scf
    db $e3
    push af
    ret nz

    ld b, [hl]
    db $e4
    rst $38
    call nz, Call_06a_7e79
    ld c, b
    ld c, [hl]
    ld d, e
    ld a, a
    ld a, l
    rrca
    sub c
    jp $a2b6


    ei
    pop bc
    call c, $f0eb
    call nz, $e60b
    rst $10
    rst $10
    jp nc, Jump_000_37dd

    pop hl
    db $dd
    sbc c
    jp nz, $909e

    rst $30
    jp $9090


    pop bc
    ldh [$60], a
    ld d, a
    ld d, d
    ld b, l
    rrca
    ld a, a
    ld a, l
    call nz, Call_06a_7d90
    ld [c], a
    call c, Call_000_14eb
    pop bc
    adc $c0
    db $fc
    inc c
    ldh [rSTAT], a
    pop bc
    db $e4
    push hl
    jp c, $d0d3

    ret nc

    rst $08
    db $dd
    reti


    db $dd
    pop de
    ret nz

    db $e4
    call z, $80e0
    ld b, h
    ld a, a
    ld e, [hl]
    ld d, d
    inc l
    ld a, [hl+]
    ld b, l
    ld b, [hl]
    add c
    cp d
    push bc
    ld e, c
    and b
    call c, Call_000_14e9
    pop bc
    db $d3
    sub $84
    pop bc
    sub $26
    ret nz

    sbc a
    and $e7
    call c, $d4d7
    ld [hl], a
    ret nz

    cp $c0
    rst $10
    rst $30
    and b
    sbc $df
    add [hl]
    ret nz

    jp $8090


    ld c, d
    rst $18
    ld h, b
    dec l
    jr nz, jr_06a_5f88

    dec l
    ret nz

    ld [c], a
    call nz, Call_000_0190
    sbc [hl]
    jp hl


    ldh [$dc], a
    add sp, -$3b
    and e
    inc bc
    ret nz

    rst $08
    ldh [$e6], a
    and b
    call nc, Call_06a_73a0
    jp c, $77d9

    ret nz

    add l
    and c
    and b
    ldh [$e1], a
    ld a, a

jr_06a_5f88:
    ld [c], a
    rst $38
    add b
    ld d, l
    ld d, d
    ld l, $20
    inc l
    cp l
    add e
    ld b, c
    add h
    ld a, c
    pop bc
    ret nz

    ldh [$e9], a
    ldh [$dc], a
    rst $20
    xor l
    and e
    db $dd
    ld d, h
    and c
    ld b, c
    db $dd
    ld [bc], a
    jp nz, $a083

    ld [hl], a
    ret nz

    add l
    and d
    ld c, h
    and b
    and c
    ld b, $c0
    rst $38
    add b
    ld b, l
    add hl, sp
    ld hl, $4b2a
    ld d, l
    adc d
    ld b, c
    add l
    di
    pop bc
    add b
    ldh [$35], a
    and b
    call c, Call_06a_6de7
    and e
    pop de
    ld c, $e0
    rlca
    ret nc

    ret nc

    db $d3
    ld [bc], a
    pop bc
    ei
    add c
    cp l
    ldh [$e6], a
    db $e3
    ld b, b
    ld [c], a
    rst $38
    add d
    add e
    ld a, [hl-]
    dec [hl]
    add hl, sp
    ld h, b
    ld d, l
    add c
    dec b
    sub c
    db $fc
    and b
    jp $c23b


    rst $30
    add c
    call c, Call_06a_7de6
    pop bc
    rrca
    ld [c], a
    db $e3
    call nc, $02d7
    pop bc
    ld [hl+], a
    and l
    db $d3
    add b
    sbc a
    sbc l
    or [hl]
    db $fd
    jp $a0c8


    add l
    add a
    ld [hl], d
    ld l, h
    add hl, sp
    ld e, e
    ld a, $41
    ldh [$c3], a

Jump_06a_6008:
    sub b
    jp $c3c4


    rst $38
    ret nz

Jump_06a_600e:
    rst $30
    add b
    nop
    scf
    and b
    ld b, l
    xor b
    rrca
    db $e3
    adc e
    add c
    ld [hl+], a
    and c
    db $e4
    ld [c], a
    add l
    and c
    ld c, c
    and b
    cp $4d
    ret nz

    sub b
    sub c
    ld b, b
    ld l, [hl]
    ld [hl], b
    adc b
    adc b
    rst $28
    add a
    add l
    sub b
    call nz, $e0c1
    call nz, $a190
    ld b, $4c
    add c
    and $e7
    ld d, c
    adc b
    add [hl]
    and c
    sub h
    add b

Jump_06a_6040:
    adc e
    add c
    ld b, [hl]
    add c
    sbc e
    and $e7
    sbc e
    and d
    sbc a
    or [hl]
    adc b
    and b
    adc c
    and c
    sub b
    add a
    sub c
    scf
    scf
    ld a, [$3ce0]
    and c
    pop bc
    ldh [$fe], a
    and d
    ld [$e813], a
    jp hl


    ld a, b
    adc d
    rrca
    db $e4
    ld [$8246], a
    ld d, b
    add b
    ld a, [bc]
    and d
    ld bc, $8891
    and b
    adc c
    and b
    set 0, c
    ret nz

    add c
    ei
    add [hl]

Jump_06a_6077:
    dec bc
    push hl
    ld a, b
    sub e
    inc e
    adc a
    add [hl]
    adc b
    and d
    ld d, h
    ld b, h
    add c
    adc d
    and b
    adc b
    pop bc
    ld [hl], $e1
    add b
    add b
    and l
    sub l
    ld h, c
    ld a, b
    adc h
    and h
    ld h, b
    ld a, a
    ld h, [hl]
    res 0, d
    adc b
    and c
    ld d, h
    rra
    ld d, h
    ld [hl], $36
    add c
    sub c
    cp h
    ret nz

    adc c
    ret nz

    db $fd
    ld h, c
    add b
    ei
    ld h, e
    ld e, [hl]

jr_06a_60a9:
    add b
    rst $10
    ld h, b
    ld [c], a
    ld h, e
    ld d, h
    add l
    and h
    ld h, b
    ld a, a
    ld h, [hl]
    and b
    ld sp, hl
    sbc [hl]
    dec bc
    and b
    inc d
    and b
    add d
    add e
    ld [hl], $3b
    dec [hl]
    rla
    dec [hl]
    ld l, d
    add hl, sp
    add hl, bc
    and b
    call nz, $e649
    ld d, a
    ld h, d
    sub a
    ld h, b
    ldh [$bb], a
    ld h, h
    ld d, h
    adc b
    ld a, a
    ld h, l
    jp z, Jump_06a_5480

    ld [c], a
    sub c
    add l
    add a
    ccf
    ld [hl], c

Call_06a_60dd:
    ld [hl], d
    ld l, h
    ld l, h

Jump_06a_60e0:
    ld l, l
    add hl, sp
    add l
    pop hl
    add e
    ld h, h
    ret nz

    ld b, d
    add c
    ld d, h
    and e
    add [hl]
    and e
    dec b
    jp nz, $8454

    ld a, a
    ld h, a
    sbc [hl]
    sub b
    cp $0e
    add b
    ld a, l
    ld b, l
    scf
    jr c, jr_06a_60a9

    dec sp
    ld [hl], b
    rlca
    ld [hl], b
    ld [hl], $9c
    ld c, h
    add d
    call nz, $b840
    ld b, d
    xor b
    ld c, b

Jump_06a_610b:
    adc l
    ld b, c
    db $ec
    ld d, h
    adc b
    ld a, a
    ld h, h
    sbc $df
    ld c, d
    add b
    ld a, c
    ld a, [hl]
    ld b, l
    ccf
    adc [hl]
    ld a, e
    ld h, [hl]
    inc a
    xor a
    sbc h
    ld [$c464], sp
    ld b, d
    add b
    cp b
    ld b, b
    ld e, h
    ld b, c
    xor b
    ld b, [hl]
    adc l
    ld b, c
    ld d, h
    adc b
    ld a, a
    ld h, h
    res 0, b
    and c
    ld a, [hl]
    dec c
    and b
    ld b, a
    ld c, h
    add hl, sp
    ld l, b
    ld h, [hl]
    ld [hl], $d4
    and d
    nop
    ld [hl+], a
    ld b, h
    ld hl, $8341
    ld b, d
    xor b
    ld b, e
    inc sp
    ld b, b
    adc l
    ld b, b
    ld a, b
    adc b
    add a
    ldh [$f6], a
    ld c, b
    ld b, c
    ld [c], a
    db $e3
    pop de
    ld b, b
    add d
    add e
    ld d, d
    ld d, [hl]
    rrca
    ld a, [hl-]
    dec [hl]
    ld l, b
    ld h, [hl]
    ld d, e
    add c
    xor [hl]
    ld b, e
    ldh [$63], a
    add e
    ld b, a
    ldh [$33], a
    ld b, c
    sbc $20
    ld a, b

jr_06a_616e:
    adc b
    ld d, d
    add b
    sub d
    ld b, [hl]
    add l
    add [hl]
    add e
    ld a, e
    ld [hl], $35
    add h
    ret nz

    sbc h
    sbc a
    ldh [$e1], a
    ld [hl], $40
    ld b, b
    ldh [$66], a
    add e
    ld c, e
    sbc $20
    ld a, b
    adc b
    sbc [hl]
    ld hl, $219c
    sbc [hl]
    add h
    add $62
    ld b, h
    ret nz

    sbc [hl]
    adc b
    ld hl, $67e0
    add e
    ld c, h
    call c, $54db
    add a
    ld hl, sp-$59
    ld b, d
    sbc h
    ld hl, $e1c0
    sub b
    sub c
    ld b, h
    inc a
    ld l, [hl]
    rra
    ld [hl], b
    ld [hl], c
    ld [hl], b
    add hl, sp
    sbc [hl]
    ldh [$6f], a
    ld e, a
    ld c, e
    ld b, h
    or c
    ld e, [hl]
    call z, $9140
    add hl, sp
    dec [hl]
    ld a, [hl-]
    adc e
    ld b, b
    ld b, e
    ld b, e
    jp nz, $e0a0

    ld l, b
    ld h, d
    ret nz

    ld e, a
    ld c, d
    jp nz, Jump_06a_610b

    jr nz, jr_06a_616e

    dec c
    add c
    jp $90ff


Jump_06a_61d4:
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    ld d, d
    ld d, h
    ld d, h
    inc bc
    ld c, h
    ld d, l
    ld a, a
    pop hl
    ldh [rBCPS], a
    dec l
    ld h, b
    ld e, a
    ld c, d
    add b
    ld b, $e9
    ld [bc], a
    di
    and $e7
    pop bc
    ldh [$dd], a
    ld h, b
    call nz, Call_06a_4490
    inc a
    ccf
    dec [hl]
    ld h, d
    ld h, l
    ld h, [hl]
    ld [hl], $52
    ret nz

    ld [c], a
    ldh [rBCPS], a
    ld [hl], b
    ld a, c
    nop
    ld e, a
    ld c, d
    ld b, a
    ld b, $e9
    ld [bc], a
    add sp, -$17
    and c
    inc e
    add d

Jump_06a_620e:
    ld l, $80
    and b
    ld h, e
    ld h, h
    ld a, b
    ld b, b
    ret nz

    add hl, sp
    add e
    and d
    ldh [rBCPS], a
    ret nz

    rla
    ld hl, $4c83
    or d
    add d
    ld [hl], c
    add h
    add e
    pop bc
    dec de
    ld h, c
    ld a, c
    ld a, [hl]
    add hl, bc
    ld a, [hl-]
    ld b, c
    ret nz

    call nz, $a180
    ld d, [hl]
    ld h, e
    rst $28
    ld b, h
    ld e, [hl]
    add e
    add e
    ld c, d
    db $f4
    or d
    add l
    ld b, h
    ld [hl+], a
    ld [$244f], a
    sub b
    add b
    ld b, [hl]
    add hl, sp
    ld b, $c0
    ld [c], a
    ld b, d
    sbc [hl]
    ld a, [bc]
    and d
    ld a, c
    inc bc
    ld e, [hl]
    add l
    add e
    ld c, d
    or d
    adc d
    ld c, $c5
    ld h, [hl]
    add d
    add e
    ld b, l
    ret nz

    and d
    ret nz

    ldh [$72], a
    ld h, b
    inc hl
    add c
    nop
    inc e
    ld [c], a
    ld e, [hl]
    add [hl]
    add e
    ld b, a
    or d
    add [hl]
    ld l, $05
    cp a
    ld [c], a
    add b
    and b
    ld a, [hl]
    ret nz

    nop
    ld b, h
    add b
    add e
    add e
    inc e
    push hl
    ld e, [hl]
    add [hl]
    ld b, $68
    or d
    add e
    ld l, $08
    ld c, d
    ld b, b
    ei
    sub b
    jp $a03f


    ld a, [hl-]
    ld l, h
    ld l, a
    ld l, [hl]
    ld a, [hl-]
    inc bc
    ld b, l
    sbc [hl]
    inc c
    add b
    inc e
    and $5e
    add e
    add hl, bc
    ld l, e
    ld a, b
    ld h, e

jr_06a_629b:
    xor e
    xor d
    ld [hl], a
    sbc a
    or [hl]
    call nz, $61c3
    ld [hl], b
    ld l, [hl]
    dec [hl]
    ret nz

    pop hl
    add b
    adc $68
    ld e, [hl]
    add e
    res 5, c
    ld bc, $abc7
    xor c
    ret


jr_06a_62b4:
    ld bc, $a0be
    dec [hl]
    rlca
    dec [hl]
    add hl, sp
    ld b, [hl]
    nop
    jp nz, $63ce

    add sp, $21
    ld b, h
    add e
    ld l, $85
    jp $d4d6


    cp [hl]
    and l
    ld l, $09
    cp [hl]
    ld h, b
    ld a, [hl]
    ldh [rDMA], a
    ld a, $01
    dec [hl]
    add c
    ldh [rP1], a
    jp $63ce


    add b
    ld h, h
    adc [hl]
    and [hl]
    ld l, e
    add c
    ld a, [hl]
    and e
    ld d, e

jr_06a_62e4:
    db $e4
    push hl
    ld l, $09
    scf
    add c
    and c
    ld a, $a1

jr_06a_62ed:
    dec [hl]
    pop bc
    call nz, $23c4
    call nz, Call_000_20e8
    db $eb
    ld e, e
    ld b, a
    ld c, e
    inc bc
    dec d
    inc hl
    and $e7
    ld [hl], b
    xor e
    xor c
    ld c, l
    add b
    add h
    jr nz, @+$01

    and b
    ld a, [hl-]
    ld b, h
    and c
    ret nz

    ld h, e
    add b
    jr jr_06a_62b4

    dec hl
    jr nz, jr_06a_629b

    ld h, $4b
    inc bc
    ld c, h
    add e
    adc [hl]
    jr nz, @-$53

    xor b
    db $eb
    inc b
    cp e
    add c
    ld bc, $3ee1
    ld [bc], a
    ldh [$aa], a
    ld h, l
    jr nz, jr_06a_62ed

    adc c
    ld h, $6b
    add e
    ld [$293e], sp
    ld l, $04
    db $fd
    ld h, d
    call nz, $80bf
    add d
    jp nz, Jump_06a_63aa

    ccf
    ld h, [hl]
    nop
    jr jr_06a_62e4

    ld c, e
    dec b
    ld a, l
    add hl, hl
    ld l, $06
    ld a, h
    and c
    add c
    jp Jump_06a_4244


    ld [hl], $00
    add b
    ccf
    ld h, [hl]
    ld a, a
    rst $00
    ld l, e
    add e
    and a
    rst $20
    add b
    ld h, e
    dec a
    and [hl]
    nop
    pop hl
    dec [hl]
    inc bc
    ld a, $91
    sub d
    nop
    ld h, l
    ld [hl+], a
    ccf
    ld h, l
    adc l
    add hl, bc
    ld c, e
    ld bc, $e7a7
    ld d, [hl]
    ld bc, $e422
    push hl
    cp l
    add c
    jp $617e


    ld b, b
    ld bc, $00c1
    ld [$7f20], sp
    ld h, e
    ccf
    ld h, a
    jp c, Jump_06a_4b06

    ld [bc], a
    and a
    add sp, -$42
    ld h, c
    sbc l
    jr nz, jr_06a_63bf

    cp a
    add b
    db $fd
    ld h, b
    sub c
    cp [hl]
    ld h, c
    ld [hl], $45
    push af
    ld h, b
    cp $41
    ld b, b
    ccf
    ld l, b
    jp c, $8307

    ld h, d
    and $48
    cpl
    ld bc, $209d
    and c
    ld bc, $1660
    ccf

Jump_06a_63aa:
    ld h, b
    sub b
    ld b, d
    ld b, e
    and b
    sub c
    ld c, [hl]
    nop
    cp l
    ld hl, $683f
    ldh [$da], a
    rlca
    ret nz

    db $e3
    and $46
    cp [hl]
    ld h, a

jr_06a_63bf:
    ccf
    ld h, d
    sub b
    ld b, l
    ld [hl], $03
    add hl, sp
    ld b, [hl]
    cp c
    ld bc, $6c3f
    ld a, h
    adc h
    and $47
    dec h
    and l
    ld b, b
    pop hl
    ld c, [hl]
    adc c
    ldh [$c3], a

Call_06a_63d7:
    sub c
    ld b, l
    add c
    ld [c], a
    ld b, b
    ldh [$ea], a
    ccf
    ld l, c
    ld [hl], b
    ld a, h
    adc h
    and $47
    and $c6
    cp [hl]

Jump_06a_63e8:
    ld h, e
    call nz, $9190
    ld b, d
    pop hl
    nop
    cp a

Jump_06a_63f0:
    call nz, Call_06a_68cf
    ld a, h
    adc e
    and $48
    and $c6
    ld a, l
    ld h, e
    db $fc
    db $e3
    dec [hl]
    ld b, b
    ld b, c
    sbc [hl]
    db $fd
    ld b, e
    call $0e03
    add a
    di
    ld b, h
    res 4, l
    db $eb
    ld h, d
    ld h, [hl]
    rlca
    ld [$9ea0], a
    pop bc
    ret nz

    cp a
    and $7f
    ret nz

    add a
    add b
    add $41
    ldh [$39], a
    ld h, d
    add h
    rst $00
    or $86
    ld c, b
    inc h
    and $c7
    sbc [hl]
    call nz, $b790
    ld b, l
    scf
    dec a
    rst $38
    ldh [$37], a
    ld b, l
    ld a, a
    ret nz

    or [hl]
    add c
    sbc a
    ld l, d
    ret nz

    pop hl
    ld [hl+], a
    ld e, e
    ld l, b
    or $89
    ld [hl], $67
    and $c4
    sbc [hl]
    ld e, a
    sub b
    jp $a439


    ld h, h

jr_06a_644a:
    rst $38
    ldh [$a5], a
    cp a
    and b
    add b
    cp $a3
    ld b, a
    ld [bc], a
    ld b, $2b
    or $86
    ld b, c
    dec h
    ld h, d
    ld h, [hl]
    pop bc
    add b
    ld a, $7f
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, $f3
    ld hl, $fe40
    and c
    ld b, a
    ld [bc], a
    ld b, $2b
    ld [hl], l
    ld l, d
    cp h
    ld [hl+], a
    db $f4
    ld b, e
    db $eb
    jp Jump_000_1760


    sub b
    ld a, $69
    ret nz

    ld [hl+], a
    ld a, $f3
    jr nz, jr_06a_64c1

    and d
    jp c, Jump_06a_7042

    ld b, $33
    cp h
    daa
    ld a, $05
    db $fc
    jr nz, jr_06a_64c9

    ld l, e
    ld [hl], c
    rst $38
    ldh [$83], a
    ld l, l
    add hl, sp
    ld bc, $dae1
    ld b, $06
    ld l, $03
    ld h, [hl]
    cp h
    ld a, [hl+]
    sbc $57

Call_06a_64a3:
    rst $18
    sbc a
    or [hl]
    ret nz

    call nz, $c0ae
    add d
    db $eb
    ld a, d
    ld h, h
    ld h, b
    ld b, $2c
    xor b
    rst $20
    cp h
    dec h
    ld [hl], b
    inc bc
    ld e, h
    nop
    sbc a
    sbc l
    rst $38
    pop hl
    rlca
    sbc h
    ld b, [hl]
    xor a

jr_06a_64c1:
    add c
    add c
    xor a
    ld h, b
    ld c, c
    nop
    jr nz, jr_06a_644a

jr_06a_64c9:
    ld b, $2a
    ld h, h
    cp h
    ld l, $32
    inc bc
    ld [$648d], a
    inc [hl]
    ld hl, $9d9d
    ld b, e
    db $e4
    nop
    db $ed
    db $e4
    ld b, $2a
    cp h
    ld l, $75
    ld l, b
    adc d
    ld [bc], a
    xor [hl]
    ld h, d
    ret nz

    ld c, d
    ld b, $2a
    nop
    ld a, [$e1ee]
    xor c
    inc d
    ld b, [hl]
    ret nz

    ld b, [hl]
    ld sp, hl
    di
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, [hl+]
    inc b
    ld [bc], a
    ld bc, $0624
    ld [bc], a
    ld [bc], a
    dec l
    rlca
    ld [bc], a
    inc bc
    ld hl, $0208
    inc b
    jr nc, jr_06a_6537

    ld [bc], a
    dec b
    ld [hl+], a
    ld a, [bc]
    ld [bc], a
    ld b, $2e
    inc c
    ld [bc], a

jr_06a_6537:
    rlca
    ld [hl+], a
    dec c
    ld [bc], a
    ld [$0d30], sp
    ld [bc], a
    add hl, bc
    jr nz, jr_06a_6550

    ld [bc], a
    ld a, [bc]
    dec l
    ld c, $02
    dec bc
    cpl
    ld c, $02
    inc c
    ld sp, $020e
    dec c

jr_06a_6550:
    ld l, $0f
    ld [bc], a
    ld c, $30
    rrca
    ld [bc], a
    rrca
    cpl
    db $10
    ld [bc], a
    db $10
    inc hl
    ld de, $1102
    ld a, [hl+]
    ld de, $1202
    ld h, $12
    ld [bc], a
    inc de
    add hl, de
    inc de
    ld [bc], a
    inc d
    inc h
    inc de
    ld [bc], a
    dec d
    daa
    inc de
    ld [bc], a
    ld d, $16
    inc d
    ld [bc], a
    rla
    ld e, $16
    ld [bc], a
    jr @+$17

    dec e
    ld [bc], a
    add hl, de
    inc de
    ld e, $02
    ld a, [de]
    ld d, $1e
    ld [bc], a
    dec de
    ld [de], a
    rra
    ld [bc], a
    inc e
    inc d
    rra
    ld [bc], a
    dec e
    inc de
    jr nz, jr_06a_6595

    ld e, $15

jr_06a_6595:
    ld hl, $1f02
    rla
    dec h
    ld [bc], a
    jr nz, @+$1b

    daa
    ld [bc], a
    ld hl, $2b18
    ld [bc], a
    ld [hl+], a
    dec d
    cpl
    ld [bc], a
    inc hl
    rla
    cpl
    ld [bc], a
    inc h
    rra
    cpl
    ld [bc], a
    dec h
    ld d, $30
    ld [bc], a
    ld h, $14
    ld sp, $2702
    rla
    ld sp, $2802
    dec d
    ld [hl-], a
    ld [bc], a
    add hl, hl
    add hl, de
    inc sp
    ld [bc], a
    ld a, [hl+]
    jr nz, jr_06a_65fa

    ld [bc], a
    dec hl
    ld hl, $0235
    inc l
    ld d, $36
    ld [bc], a
    dec l
    rla
    jr c, jr_06a_65d5

    ld l, $20

jr_06a_65d5:
    jr c, jr_06a_65d9

    cpl
    ld [hl+], a

jr_06a_65d9:
    add hl, sp
    ld [bc], a
    jr nc, @+$21

    inc a
    rst $38
    rst $38
    rst $38
    jp hl


    ld h, l
    add [hl]
    ld l, e
    jp nc, $f472

    ld [hl], d
    rra
    ld l, $0e
    ld c, $0e
    ld c, l
    rst $38
    add sp, -$10
    db $ed
    db $e4
    and $f3
    ld l, l
    dec l
    ld sp, hl
    db $e3

jr_06a_65fa:
    rst $38
    ldh [$2e], a
    ld l, $0e
    ld l, l
    adc $cc
    push hl
    ld l, [hl]
    ld l, $6e
    cp [hl]
    ldh [$bd], a
    ldh [$0d], a
    dec c
    add b
    jp nz, $f0e2

    ld [$e2ec], a
    ret nz

    push hl
    cp a
    ldh [$dc], a
    ldh [$c2], a
    pop hl
    ld l, [hl]
    ld h, a
    ld l, $4e
    ld c, $d0
    push hl
    pop bc
    ldh [$4e], a
    ld c, [hl]
    ret nz

    rst $20
    ldh [$e3], a
    ldh [$f0], a
    add sp, -$54
    pop hl
    sub $e0
    adc h
    pop hl
    ld l, l
    dec l
    ld l, l
    ld bc, $c06d
    ld [c], a
    jp nz, $80e0

    ldh [$c0], a
    push hl
    rst $38
    pop hl
    ld a, $e0
    or b
    and $5c
    ldh a, [$eb]
    ld l, h
    ld [c], a
    dec c
    ld l, l
    dec c
    rst $38
    pop hl
    ld c, l
    ld b, b
    ldh [rP1], a
    ret nz

    ld [c], a
    ld b, d
    ldh [$c0], a
    xor $3f
    ld [c], a
    ld hl, sp-$40
    ldh a, [$ed]
    add hl, hl
    pop hl
    pop bc
    db $e3
    nop
    cp a
    db $e3
    inc bc
    ld [c], a
    ret nz

    db $e3
    ret nc

    xor $b8
    pop bc
    ldh a, [$ed]
    add e
    push hl
    ld a, [hl]
    db $e4
    add b
    ld a, [hl-]
    pop hl
    add b
    db $e3
    ret nz

    ret nz

    ret nc

    db $ed
    cp l
    ret nz

    ldh a, [$ee]
    add e
    and $2d
    add b
    cp h
    rst $20
    add d
    pop bc
    db $f4
    ret nz

    ret nc

    ld a, [c]
    rst $28
    jp nz, $e9c0

    dec b
    ld [c], a
    ld a, [bc]
    rlca
    dec hl
    dec c
    dec bc
    cp a
    add sp, -$4f
    jp nz, $f1d0

    xor a
    call nz, $e8f0
    ld e, $c1
    db $e3
    ld a, [bc]
    dec bc
    dec hl
    dec bc
    cp a
    jp hl


    cp l
    pop hl
    pop de
    and l
    ld h, b
    adc $a6
    db $ec
    jp nz, $aabe

    xor $a0
    add c
    db $e3
    ld c, d
    ld c, e
    cp a
    pop hl
    nop
    rst $30
    push bc
    ld a, a
    ld [c], a
    ret nc

    and $66
    pop bc
    ld e, b
    pop hl
    ld hl, sp-$5f
    cp c
    and e
    ldh a, [$e3]
    ld [hl], $c0
    add sp, $4a
    ld a, [bc]
    add c
    ldh [$0a], a
    ld l, d
    db $fd
    push bc
    cp c
    and b
    ret nz

    ret nc

    add sp, -$33
    and b
    add e
    and d
    ld sp, hl
    and l
    ldh a, [$e5]
    add b
    add sp, $4d
    ld a, [bc]
    rra
    ld l, e
    ld l, e
    ld l, e
    ld c, d
    ld a, [hl+]
    or l
    add $77
    and d
    ret nc

    and $c0
    ld b, c
    and b
    reti


    pop bc
    ld [$f0a3], a
    rst $20
    db $ec
    add h
    adc b
    jp nz, Jump_06a_6b4d

    rrca
    ld l, e
    dec bc
    dec hl
    ld c, e
    ld a, l
    push bc
    cp $80
    ret nc

    add sp, -$79
    pop hl
    jr nc, @-$5c

    and c
    ldh a, [$ed]
    xor h
    add l
    ld b, a
    jp $0b6b


    cp l
    ret nz

    add c
    and $00
    ret nc

    jp hl


    adc a
    add c
    sub [hl]
    and d
    add b
    db $e3
    db $fd
    and b
    ldh a, [$e4]
    sub h
    add d
    db $ed
    and b
    dec b
    dec l
    rst $38
    ldh [$0d], a
    add b
    ret nz

    ld a, h
    ret nz

    ei
    and d
    ld hl, sp-$80
    ret nc

    xor $20
    sbc b
    add e
    ld [$f082], a
    db $e4
    ld e, c
    add e
    ld e, b
    add l
    dec l
    ccf
    ldh [$7f], a
    pop bc
    nop
    cp d
    and c
    ret nz

    pop hl
    ret nc

    add sp, -$0e
    and e
    db $ec
    and e
    rst $08
    ld [c], a
    db $f4
    rst $20
    ld e, d
    add b
    dec b
    ld c, [hl]
    ld d, $82
    ld l, l
    cp $c0
    ld a, a
    ldh [$bf], a
    db $e3
    ret nz

    and h
    adc $ea
    ldh [$eb], a
    pop bc
    rst $08
    rst $20
    ldh a, [$e2]
    ld a, [de]
    add b
    add hl, de
    add c
    ld c, $0e
    ld l, l
    ld [bc], a
    ld d, d
    and b
    dec c
    ccf
    ld [c], a
    ld a, [hl]
    db $e3
    add b
    and c

jr_06a_678b:
    ld h, b
    and $de
    pop hl
    ret nz

    and $e0
    rst $08
    push hl
    and b
    pop bc
    ld a, [de]
    add h
    pop af
    db $e3
    ret nz

    db $e4
    dec hl
    ld c, e
    ld c, e
    nop
    ld hl, sp-$80
    cp d
    add c
    jr nz, jr_06a_678b

    sbc l
    ldh [$c0], a
    push hl
    rst $08
    ld [$a1f1], a
    ret nz

    db $eb
    dec bc
    dec c
    ld c, e
    cp [hl]
    pop bc
    dec hl
    ld a, c
    add h
    dec sp
    jp nz, $e59d

    or c
    ret nz

    or b
    db $10
    db $e4
    adc a
    db $e4
    ldh a, [$e1]
    ret nz

    jp hl


    dec c
    ld l, l
    ld sp, hl
    and b
    ld l, e
    db $10
    cp a
    pop hl
    dec sp
    and e
    cp l
    add h
    add h
    ld h, l
    ld l, l
    dec a
    ld [c], a
    adc a
    add sp, $2d
    pop hl
    nop
    or c
    db $ec
    add e
    ld h, b
    cp a
    db $e3
    ld [hl], $82
    or h
    ld b, b
    ret nz

    jp hl


    ld l, [hl]
    add d
    ld c, a
    add sp, $00
    db $e3
    jp hl


    dec d
    add b
    sbc $c2
    ld b, d
    ld h, b
    cp l

jr_06a_67f7:
    jp nz, $e03e

    pop bc
    and d
    ld a, [c]
    ld b, b
    nop
    inc b
    ld h, h
    and $42
    rst $08
    ld [$ecc0], a
    and b
    db $e3
    db $fc
    and b
    ld a, $e2
    db $fd
    jp nz, $b800

    ld h, h
    ret nz

    db $e4
    ld [hl-], a
    ld [$a5ff], a
    ld [hl], l
    ld b, c
    db $f4
    and $34
    ld b, d
    ei
    ld h, c
    nop
    cp a
    rst $20
    ret nz

    push hl
    ldh a, [rNR51]
    rst $08
    add sp, -$30
    and b
    ld c, l
    ld b, b
    sub $22
    call nc, Call_000_0820
    cp $a0
    ret nz

    ld [$64f7], a
    dec l
    or $22
    dec [hl]
    ld h, c
    ldh a, [rNR44]
    sbc b
    ld b, b
    ld [bc], a
    and a
    ld h, b
    dec l
    sbc e
    ld [hl+], a
    or b
    and d
    ld a, [bc]
    ld b, b
    rst $28
    pop hl
    ld a, d
    and b
    or [hl]
    ld h, e
    ld bc, $c16d
    db $e4
    ei
    and b
    ld a, [hl-]
    add h
    ret nc

    ld [c], a
    ldh a, [rNR51]
    ld a, l
    and d
    sub h
    pop hl
    sbc [hl]
    ret nz

    db $e4
    dec c
    ld l, l
    dec bc
    dec bc
    dec c
    ld b, c
    sbc c
    ld h, l
    ld l, l
    add d
    ld a, l
    and h
    dec bc
    jr c, jr_06a_67f7

    ld a, [hl]
    jp nz, $c456

    ldh a, [rNR42]
    ld l, $e3
    ld c, [hl]
    add b
    jr z, jr_06a_689f

    ld [$9142], sp
    pop hl
    adc a
    add b
    and c
    ld h, h
    cp h
    ld [hl+], a
    dec a
    and d
    ld l, e
    ld bc, $716b
    add c
    ret nz

jr_06a_6891:
    push hl
    ret nc

    ldh [$b0], a
    dec h
    ld b, h
    pop hl
    or h
    nop
    db $db
    nop
    jr nc, jr_06a_6891

    ld [bc], a

jr_06a_689f:
    ld d, d
    pop hl
    ld d, d
    and b
    ret nz

    and $0d
    dec c
    inc b
    push hl
    ld c, c
    ldh [rP1], a
    cpl
    ld b, d
    ret nc

    db $e4
    rra
    ldh [$f0], a
    ld [hl+], a
    jr @-$3e

    inc d
    ldh [$a8], a
    dec b
    rst $08
    add d
    inc d
    ret nz

    ld [c], a
    ld a, c
    ld b, e
    ld l, l
    pop bc
    db $e4
    ld l, e
    inc bc
    db $e3
    cp d
    ld b, d
    ret nc

    db $e3
    db $10
    ldh a, [rNR51]
    add b

Call_06a_68cf:
    ld [c], a
    ldh a, [$e2]
    cp a
    jp $d46b


    ldh [rKEY1], a
    ld bc, $e273
    ret nz

    inc bc
    push hl
    ld a, d
    ld c, b
    ret nc

    push hl
    ld d, d
    ld b, [hl]
    ei
    db $eb
    adc $60
    ld c, e
    ld l, l
    ld h, b
    add b
    db $e3
    ret nz

    ld [bc], a
    ld b, h
    call nz, Call_000_2677
    nop
    ld b, l
    ld c, l
    ld l, [hl]
    ccf
    nop
    nop
    pop bc
    inc bc
    jr nc, jr_06a_68fe

jr_06a_68fe:
    db $f4
    and h
    rst $00
    ld b, e
    ld c, c
    ld h, b
    adc h
    ld [bc], a
    add c
    ld bc, $c406
    ld de, $fb6b
    dec h
    sbc c
    pop bc
    ld b, b
    ld [bc], a
    ld c, $38
    ld b, c
    rlca
    ld b, h
    sub a
    ld h, b
    nop
    db $f4
    and e
    add [hl]
    ld h, $51
    nop
    ld b, d
    ld bc, $a4c8
    ld [bc], a
    ldh [$ba], a
    inc h
    ld [de], a
    ldh [$80], a
    ld b, b
    dec bc
    rlca
    ld b, b
    ld e, a
    ld bc, $64ca
    ret nz

    rst $20
    sub c
    ld h, b
    add [hl]
    jp Jump_000_076b


    ld c, e
    ld c, e
    ld c, e
    dec a
    add c
    ld b, h
    add $c0
    db $eb
    jr nc, @+$06

    inc h
    ld b, $04
    ld b, $24
    add [hl]
    ld b, b
    dec l
    ld b, a
    jp nz, Jump_06a_4103

    or $e1
    inc bc
    jp $2300


    nop
    ld c, d
    ld b, c
    ret nz

    jp hl


    cp h
    nop
    ret nz

    rst $20
    ld b, a
    inc bc
    ret nc

    ldh [rTMA], a
    ld h, e
    ld b, a
    ld h, b
    nop
    nop
    ld hl, $a8c4
    ret c

    and e
    ld b, b
    dec bc
    add b
    db $e4
    ld a, h
    and c
    ld d, e
    ld [hl+], a
    ld a, l
    and c
    ld de, $054b
    ld b, c
    inc c
    and h

Call_06a_6980:
    ld b, h
    rst $00
    ld l, l
    call nz, $c003
    db $ec
    db $f4
    and l
    nop
    ld c, $c0
    ld d, d
    ld bc, $8590

Jump_06a_6990:
    inc c
    and [hl]
    ccf
    ld h, $fd
    ld bc, $e2c0
    ccf
    ld [c], a
    db $10
    add b
    rst $20
    sub c
    and a
    ld b, a
    push hl
    adc a
    add c
    dec bc
    inc c
    and l
    nop
    ld h, $3f
    ld [bc], a
    nop
    ld c, [hl]
    db $e3
    ccf
    ld [hl+], a
    ld c, c
    and l
    add a
    ld b, $89
    ret nz

    add d
    rst $20
    call $8381
    dec b
    nop
    pop bc
    rst $20
    ld e, b
    rst $00
    jr nc, jr_06a_69c4

    ret nz

    db $eb

jr_06a_69c4:
    adc d
    ret nz

    ld b, d
    rst $20
    call $cb85
    add d
    nop
    add sp, $61
    jr z, jr_06a_69d2

    ret z

jr_06a_69d2:
    and c
    jp z, $5fc2

    add d
    xor h
    pop bc
    add b
    and $24
    and c
    add e
    dec c
    dec hl
    ld [bc], a
    and $37
    and c
    rlca
    and $d0
    and $c9
    and l
    ld c, l
    nop
    ld b, c
    and b
    ld a, e
    ld [c], a
    ld [$9383], sp
    add d
    inc bc
    add sp, -$3f
    db $eb
    ld [$d0a1], sp
    db $e4
    nop
    ld b, b
    dec b
    or a
    pop hl
    or b
    inc bc
    ret z

    and l
    ld c, a
    and c
    pop bc
    jp hl


    ld c, [hl]
    add a
    ld l, b
    ld h, d
    nop
    ret nc

    db $e4
    ret nz

    push hl
    ld d, b
    ld [bc], a
    ld a, [hl]
    add h
    ld b, h
    add c
    sub [hl]
    ld h, [hl]
    ld [de], a
    add d
    ld a, d
    add e
    nop
    ret nz

    jp hl


    ret nc

    and $80
    db $e3

Jump_06a_6a25:
    db $fd
    and b
    inc b
    ld h, c
    ld [$1701], a
    add d
    ld hl, sp+$60
    ld [bc], a
    sub h
    inc b
    ld l, e
    ld a, $80
    dec b
    ld [c], a
    ld b, e
    push bc
    jr z, jr_06a_6a80

    ret nc

    db $e3
    add e
    add d
    nop
    ld b, c
    ldh [$33], a
    ld [$c209], sp
    ld c, a
    and h
    jp nz, $8be1

    add $b9
    add d
    ld c, a
    inc bc
    nop
    pop de
    dec h
    cp $05
    ld b, l
    ld h, e
    ld d, b
    ld b, h
    rst $08
    add d
    db $10
    and e
    adc h
    add $ce
    ld h, l
    ld c, $d1
    ld [hl+], a
    ld c, [hl]
    ld c, $4e
    ret nc

    and $f0
    db $e4
    ld b, b
    dec b
    ld c, e
    jp nz, $8a02

    and [hl]
    ld c, e
    ld e, b
    ld h, [hl]
    cp c
    ld h, c
    ld c, h
    and d
    reti


    jr nz, @-$26

    ld hl, $e5d0
    nop

jr_06a_6a80:
    ldh a, [$ec]
    ld de, $4341
    and $0d
    ret z

    sbc c
    ld b, c
    ld b, h
    and b
    inc d
    ld b, b
    reti


    inc hl
    nop
    ret nz

    and $f0
    add sp, $5f
    nop
    jp nc, $a120

    inc bc
    inc e
    ld b, e
    adc $a8
    cp h
    ld b, b
    add b
    ld c, [hl]
    ld b, c
    ld d, $88
    cpl
    ld [bc], a
    ld d, b
    add hl, bc
    adc d
    ld hl, $41a5
    db $fd
    pop hl
    dec hl
    ld [bc], a
    adc c
    pop bc
    dec bc
    ld e, $45
    and l
    call nz, Call_06a_416c
    ret nc

    db $eb
    ret nz

    ld [$0034], a
    nop
    inc hl
    inc b
    rst $18
    ld b, b
    ld e, d
    ld bc, $82d3
    ret


    ld [c], a
    ld [$6002], a
    dec bc
    ret nc

    ld [c], a

Call_06a_6ad2:
    nop
    ld d, b
    ld a, [bc]

Call_06a_6ad5:
    ret nz

    pop hl
    ld h, h
    ld b, c
    ld b, c
    db $e3
    inc bc
    and c
    ld e, d
    add l
    ld [hl], d
    and c
    ldh [$e2], a
    nop
    ret nc

    db $ed
    ret nz

    jp hl


    add hl, bc
    add d
    ld h, l
    inc b
    rst $18
    jr nz, @+$1f

    ld h, c
    ld b, [hl]
    db $e3
    ld d, a
    ld [hl+], a
    nop
    add b
    xor $04
    rst $00
    cp l
    add d
    bit 4, h
    and l
    ld b, b
    ld a, [hl]
    db $e4
    push de
    and e
    xor [hl]
    and h
    nop
    ccf
    ld b, b
    db $ec
    inc h
    jp nz, $f0a9

    jp hl


    ld e, a
    ld hl, $6087
    dec h
    ld b, c
    jp nz, Jump_000_01c0

    dec hl
    rra
    ld hl, $e4c5
    dec [hl]
    inc h
    db $ec
    inc h
    ld a, [bc]
    ld h, d
    xor l
    jp nz, $ebf0

    nop
    ld d, b
    ld h, $23
    ld b, b
    pop bc
    ld [c], a
    adc e
    call nz, $c20c
    and e
    and c
    db $ec
    inc h
    ldh a, [$f5]
    add [hl]
    rrca
    daa
    ld c, e
    dec bc
    add d
    pop hl
    ld h, [hl]
    ld [hl+], a

Jump_06a_6b40:
    cp h
    jp nz, Jump_000_01a6

    ld c, [hl]
    nop
    dec de
    and l
    inc e
    add b
    ldh a, [$f3]
    ld b, l

Jump_06a_6b4d:
    ld h, [hl]
    add sp, $05
    push bc
    ld [c], a
    ld e, b
    ld h, b
    and b
    ld bc, $0e03
    ld c, $61
    ld bc, $62d6
    ldh a, [$f5]
    dec b
    ld h, h
    ld l, c
    pop bc
    ld d, h
    and c
    ld b, $c0
    rst $20
    ld l, l
    ld c, $30
    inc bc
    sbc e
    add [hl]
    ldh a, [$f3]
    adc $41
    dec b
    ld h, b
    nop
    pop bc
    db $e4
    ret nz

    ld [c], a
    ld c, a
    and c
    or c
    ld [c], a
    ret nz

    ld [c], a
    db $ec
    inc h
    ldh a, [$f5]
    nop
    nop
    nop
    rra
    ret c

    push de
    push de
    ret c

    and b
    rst $38
    add sp, -$10
    db $ed
    db $f4
    pop af
    cp l
    ret c

    call $d2e8
    sub $d4
    sub $bd
    ld [c], a
    sbc $c1
    rst $18
    jp nz, $f0e2

    ld [$e2ec], a
    and d
    add sp, -$24
    push hl
    ret nc

    jp nc, $d8f5

    ret nc

    push hl
    sub $f3
    ldh [$d4], a
    sub $d3
    and b
    scf
    and b
    ldh [$e1], a
    ld a, c
    ldh [$d3], a
    ret nc

    ldh a, [$ea]
    db $ec
    pop hl
    cpl
    ld [$9fa0], a
    sbc l
    rst $38
    pop hl
    sbc a
    ld e, d
    ldh [$dc], a
    pop hl
    ld a, a
    ret c

    jp nc, $d1d0

    ret nc

    jp nc, $d0d7

    push hl
    ld l, e
    rst $10
    call nc, $e0b2
    rst $10
    or b
    ldh [$e2], a
    db $e3
    ldh a, [$ef]
    cp $ec
    ld [c], a
    sbc a
    or [hl]
    jp $c390


    jp Jump_06a_6990


    or [hl]
    cp a
    ldh [$dc], a
    pop hl
    rst $10
    adc a
    pop hl
    rst $10
    jp c, $e5d0

    ld a, a
    db $dd
    reti


    rst $10
    call nc, $ddd7
    ret nc

    ld a, a
    ldh [$e3], a
    and b
    db $eb
    db $e3
    pop hl
    ldh a, [$eb]
    jp nz, $a2e0

    or [hl]
    sub b
    ld c, a
    call nz, $c4c3
    call nz, $e3bf
    sub $c0
    jp c, $e0d0

    rst $10
    reti


    jp c, $d0dc

    push hl
    ret nc

    cp [hl]
    ldh [$dd], a
    pop de
    sub [hl]
    ret nz

    pop hl
    db $ec
    db $ed
    db $e3
    ldh [$d3], a
    ldh a, [$eb]
    add e
    db $e3
    sub b
    cp e
    call nz, $fd90
    ldh [$c3], a
    or [hl]
    and d
    ld a, [hl-]
    pop hl
    call c, $da4f
    reti


    jp c, $c1db

    pop hl
    ret nc

    db $e3
    call nc, $e040
    ld c, h
    ld l, a
    pop hl
    ld a, h
    jp $d7dc


    ldh a, [$eb]
    ld b, h
    ldh [$c4], a
    jp nz, $17e0

    sub c
    xor [hl]
    sub c
    cp [hl]
    pop hl
    sub b
    cp h
    ldh [$bf], a
    ldh [$c2], a
    ld [c], a
    and d
    ret nc

    push hl
    reti


    ld b, b
    ldh [$6f], a
    pop hl
    inc a
    call nz, $f0da
    db $eb
    and d
    ld a, [hl]
    pop bc

jr_06a_6c77:
    ldh [$90], a
    sub c
    ld c, b
    ld b, e
    xor a
    ld b, [hl]
    cp a
    ldh [$72], a
    pop bc
    ldh [$c4], a
    cp a
    pop hl
    ld de, $dac9
    db $db
    db $db
    call $e8e0
    ld l, a
    db $e3
    ld a, a
    ld [c], a
    ldh a, [$eb]
    sbc [hl]
    ld [$90e0], sp
    ld c, d
    ld d, [hl]
    rlca
    ld a, [hl+]
    inc l
    ld b, l
    cp a
    ldh [$38], a
    pop hl
    cp a
    db $ed
    ld hl, sp-$40
    call $d0e0
    ld a, [c]
    pop bc
    db $eb
    and [hl]
    ldh a, [$e4]
    xor $a2
    sbc [hl]
    ld [$4fe1], sp
    ld d, [hl]
    rst $18
    ld a, [hl+]
    jr nz, jr_06a_6c77

    ld b, e
    ld b, l
    ccf
    db $e3
    call nz, Call_06a_5dc3
    sbc [hl]
    cp e
    xor a
    and b
    db $e4
    push hl
    add hl, hl
    ret nz

    jp nc, $a776

    db $eb
    db $e4
    push hl
    ld [de], a
    jp $819e


    ldh [$c4], a
    ld c, d
    ld h, c
    sbc a
    dec l
    jr nz, jr_06a_6d09

    ld c, a
    ld d, d
    db $fd
    ret nz

    or [hl]
    ret nz

    jp $c431


    ret nz

    pop hl
    ret nc

    add sp, $73
    and d
    and $e7
    add hl, hl
    ret nz

    jp hl


    and b
    ret nc

    dec [hl]
    and b
    ldh a, [$e4]
    inc l
    and b
    xor $a0
    sbc [hl]
    set 0, c
    sub c
    ld e, e
    rrca
    dec l
    ld h, $21
    ld c, d
    ret nz

    pop hl
    ld a, b
    jp nz, $e180

jr_06a_6d09:
    ret nc

    add sp, $0d
    db $d3
    inc b
    pop bc
    add sp, -$17
    add hl, hl
    ret nz

    or a
    and c
    ldh a, [$e6]
    add b
    push bc
    cp $8b
    pop bc
    sub c
    ld b, e
    ld a, [hl-]
    dec [hl]
    ld [hl], $44
    sub c
    ld b, b
    push af
    ret nz

    ld a, l
    ret nz

    ld sp, hl
    and d
    ret nc

    add sp, -$3f
    and b
    ld b, [hl]
    jp nz, $b7da

    and c
    ldh [$79], a
    ret nz

    ldh a, [$e4]
    xor h
    add h
    cp a
    pop hl
    dec b
    ret nz

    add hl, sp
    dec [hl]
    dec [hl]
    inc bc
    ld [hl], $45
    db $fd
    and b
    ld a, $c0
    ld bc, $d0e4
    and $f1
    and b
    inc e
    and b
    ret nz

    add [hl]
    pop bc
    rst $20
    and b
    xor c
    and b
    ldh a, [$e5]
    cp a
    push hl
    inc bc
    and b
    or [hl]
    call nz, Call_06a_420b
    dec [hl]

jr_06a_6d62:
    cp a
    pop hl
    sub c
    cp e
    and b
    ld bc, $d0e2
    jp hl


    pop af
    and a
    ld hl, sp-$19
    and e
    pop hl
    and a
    dec h
    add [hl]
    sbc a
    or [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld e, a
    ld h, d
    ld h, e
    ld a, h
    ld a, l
    sub c
    dec [hl]
    and b

Call_06a_6d81:
    and c
    jp $e0a7


    or a
    xor b
    inc b
    adc [hl]
    add sp, $60
    ld h, $80
    ld l, l
    call nz, $91a1
    add hl, sp
    rra
    ld h, d
    ld h, a
    dec [hl]
    add hl, sp
    ld a, a
    cp a
    pop hl
    ld b, c
    call nz, Call_06a_6ad2
    ld e, b
    inc b
    add c
    rst $08
    jp hl


    db $f4
    ld h, b
    db $d3
    sub $67
    add c
    sub $a7
    add b
    cp $23
    ldh [$9e], a
    jp Jump_06a_6b40


    ld l, h
    dec [hl]
    ld a, [hl-]
    rrca
    ld b, l
    ld a, a
    ld a, l
    sub b
    add c
    jp nz, Jump_06a_63e8

    sbc l
    ld [c], a
    add [hl]
    add d
    ld [$8104], sp
    rst $08
    rst $20
    db $f4
    ld h, c
    ret c

    inc l
    add b
    ld e, b
    add c
    ld h, a
    add d
    ld a, c
    and b
    rst $38
    ld b, h
    ld l, [hl]
    ld l, a
    ld l, h
    inc a

jr_06a_6dd9:
    ld b, h
    ld b, [hl]
    add c

jr_06a_6ddc:
    add c
    sub c
    jr c, jr_06a_6d62

    call nc, $9d62
    db $e3
    ld b, [hl]
    add d
    inc b

Call_06a_6de7:
    add b
    rst $08
    ld [$c9e2], a
    db $e3
    daa
    add b
    ld e, b
    add c
    db $dd
    ld l, $c1
    add hl, sp
    and b
    sub b
    xor [hl]
    dec a
    ld [hl], $bf
    ldh [$38], a
    scf
    adc h
    ld a, l
    cp l
    add d
    call nc, $e062
    sbc l
    db $e3
    dec c
    pop bc
    rla
    add c
    rst $08
    jp hl


    rst $30
    ld h, b
    db $d3
    ret nc

    pop de
    ld hl, sp+$28
    add b
    and d
    ldh [$a7], a
    add d
    sbc a
    or [hl]
    xor a
    ld b, l
    ld [hl], $3f
    ld l, [hl]
    ld [hl], h
    dec [hl]
    dec [hl]
    add hl, sp
    add c
    cp $87
    sbc l
    db $e3
    ret nz

    rst $18
    ldh [rNR22], a
    add d
    rst $08
    add sp, -$09
    ld h, c
    ld l, c
    ld h, c
    daa
    ld h, b
    call nc, Call_06a_7cd7
    rst $10
    ld h, b
    xor b
    ld h, b
    sbc a
    or [hl]
    sub c
    ld b, l
    ld [hl], $fd
    pop bc
    ld c, $bd
    ret nz

    call nz, $b690
    inc sp
    ld h, d
    sbc l
    db $e3
    rst $18
    pop hl
    add b
    ld b, c
    ld h, b
    rst $08
    jp hl


    jr c, jr_06a_6dd9

    add hl, hl
    add d
    jr z, jr_06a_6ddc

    cp b
    ld h, h
    sub c
    ld b, b
    ld a, a
    pop hl
    ld bc, $7c36
    ret nz

    ld sp, $3360
    ld h, c
    sbc l
    db $e3
    rlca
    add a
    rst $08
    and $38
    add e
    ret c

    add hl, hl
    add d
    push de
    ld h, a
    db $fc
    and b
    ld [hl], $69
    cp d
    and c
    ld a, a
    ld a, l
    ret nz

    ld a, [hl-]
    add h
    sbc l
    db $e3
    rlca
    add a
    rst $08
    db $ec
    add hl, sp
    add [hl]
    ld c, b
    ld b, h
    and c
    ld b, [hl]
    ld de, $c044
    pop hl
    ld a, [hl]
    pop hl
    cp b
    ld h, c
    and c
    sbc l
    db $e4
    ldh a, [$27]
    rst $08
    add sp, -$48
    ld [$d448], sp
    ld [hl+], a
    inc h
    ld b, c
    sbc [hl]
    ld b, [hl]
    ld b, b
    ret nz

    ld [c], a
    dec [hl]
    ld bc, $bc40
    ret nz

    cp c
    and e
    add $63
    ldh a, [rNR44]
    ld c, $82
    ld [hl], a
    dec h
    db $f4
    ld hl, $0a30
    ld b, b
    jp c, $e4c3

    jr nz, jr_06a_6ee5

    ld b, b
    sbc a
    sbc h
    ld b, b
    db $e3
    cp d
    and b
    add c
    add c
    dec [hl]
    ld h, c
    ld a, c
    and [hl]
    ldh a, [rNR50]
    ld c, $81
    ld l, b
    ld h, $d0
    ld [c], a
    ld b, [hl]
    di
    ld b, [hl]
    sbc h
    jp c, $a5c2

    ld b, d
    sbc a
    sbc h
    xor [hl]
    add hl, sp
    add hl, de
    dec [hl]
    ld a, h

jr_06a_6ee5:
    and b
    dec a
    ret nz

    add e
    add h
    or a
    ld b, c
    ld a, d
    ld h, c
    jr c, jr_06a_6f12

    ldh [$f0], a
    inc h
    ld c, $81
    push af
    ld h, d
    ld [$9143], sp
    ldh [$37], a
    scf
    ld b, l
    cp b
    ld d, l
    ld h, b
    ld h, c
    add c
    pop bc
    ld [c], a
    xor a
    ld a, [hl-]
    dec [hl]
    cp l
    and d
    add e
    inc bc
    add [hl]
    add l
    or b
    jr nz, jr_06a_6f8b

    ld h, d

jr_06a_6f12:
    push bc
    ld h, d
    ldh a, [$27]
    push af
    ld h, h
    ld hl, sp+$21
    adc $52
    pop hl
    dec [hl]
    ld a, [hl-]
    xor [hl]
    dec d
    ld h, b
    ld d, d
    ld b, e
    sbc [hl]
    xor [hl]
    ei
    xor a
    ld [hl], $3d
    add b
    ld l, [hl]
    ld [hl], b
    adc b
    adc b
    add a
    ld hl, $3985
    add b
    ld a, [$c543]
    ld h, d
    ldh a, [rNR52]
    ld [$e494], a
    adc b
    ld b, d
    xor $52
    ldh [$35], a
    add hl, sp
    xor a
    sub h
    add l
    sbc a
    sbc h
    xor a
    rrca
    ld [hl], $62
    ld h, e
    ld h, [hl]
    cp e
    ld h, c

jr_06a_6f51:
    ld a, e
    ld h, e
    ld a, [$d041]
    push hl
    adc h
    rst $38
    ld l, l
    ld c, b
    ld b, d
    xor a
    add hl, sp
    ret nc

    ld h, c
    sub l
    ld b, b
    and l
    ld h, b
    sbc a
    add hl, de
    sbc l
    inc bc
    ldh [rLCDC], a
    add b
    ld l, b
    ld h, [hl]
    cp [hl]
    add b
    cp d
    ld hl, $20f8
    ldh a, [$33]
    ld [hl+], a
    or [hl]
    ld hl, $890c
    ld c, c
    ld l, b
    sbc h
    ld b, l
    ld b, c
    ld b, l
    ld h, c
    sub c
    ld d, l
    ld b, e
    push bc
    ret nz

    inc bc
    ldh [$c4], a
    and c
    ld [hl], a

jr_06a_6f8b:
    ld h, h
    cp l
    ld h, c
    ld [$2079], sp
    pop bc
    db $e3
    dec h
    ld [bc], a
    jp nc, $800b

    sbc b
    ld h, d
    inc c
    call nz, Call_06a_4429
    ld b, [hl]
    adc e
    ld bc, $c490
    ld a, a
    pop bc
    push bc
    pop bc
    ld b, d
    ldh [rPCM12], a
    call nz, $e3a1
    jr c, jr_06a_6ff3

    cp $61
    ld [hl], h
    inc bc
    db $fc
    ld h, d
    ret c

    push de
    sub $82
    ld [hl], c
    ld bc, $b8d6
    ret nz

    inc l
    add d
    db $f4
    and e
    add [hl]
    inc hl
    ld de, $9c21
    sbc e
    sbc l
    and d
    add [hl]
    ret nz

    scf
    jr c, jr_06a_6f51

    ld h, b
    cp $42
    ld b, [hl]
    inc sp
    ld b, [hl]
    add c
    ld b, e
    push hl
    db $fc
    ld h, d
    db $d3
    ret nc

    ld a, c
    ld b, e
    rlca
    ld b, b
    ret nz

    inc h
    ld bc, $a4f4
    dec c
    add e
    ld e, b
    pop hl
    add h
    nop
    add [hl]
    pop bc
    ld h, d
    ld h, a
    rra
    jr c, jr_06a_702f

    dec a

jr_06a_6ff3:
    dec a
    scf
    pop bc
    ldh [$03], a
    ret nz

jr_06a_6ff9:
    db $fd
    ld b, h
    jr z, jr_06a_6ff9

    ld h, d
    ld a, [bc]
    add b
    ld a, c
    ld b, c
    db $dd
    jp z, $eb62

    db $f4
    and l
    ret nz

    and $fc
    ld c, c
    ld bc, $c186
    ld a, b
    ld a, [hl-]
    add e
    adc c
    adc b
    adc c
    dec c
    add e
    pop bc
    ldh [$86], a
    add l
    dec [hl]
    nop
    ld a, $24
    ret c

    and b
    jp $86a0


    cp [hl]
    ldh [$dd], a
    pop de
    adc d
    ld h, c
    add hl, bc
    add b
    db $f4
    and a
    nop

jr_06a_702f:
    pop hl
    jp $91f9


    adc d
    nop
    add $42
    dec [hl]
    add hl, sp
    adc d
    add l
    ld b, [hl]
    jp $8785


    inc bc
    pop bc
    cp e

Jump_06a_7042:
    ld hl, $03fe
    reti


    ld h, c
    jp c, $81d3

    call nc, Call_06a_63d7
    call z, $f423
    and [hl]
    pop bc
    ret nz

    ld d, $20
    ld a, l
    and b
    ld b, e
    ld b, c
    ccf

jr_06a_705a:
    add [hl]
    pop bc
    inc c
    and h
    add l
    jp nz, $c3c2

    sbc $24
    call c, Call_06a_60dd
    ret nz

    rst $10
    ld h, d
    add hl, bc
    add [hl]
    dec l
    ld b, d
    ld c, c
    jr nz, @-$3d

    pop hl
    adc l
    and b
    dec sp
    dec [hl]
    nop
    add [hl]
    pop bc
    inc c
    and h
    cp a
    ld bc, $c405
    ld [$dd45], sp
    ld h, b
    ld [$f682], sp
    ld a, [hl+]
    db $10
    ld b, e
    jp $e1c1


    adc c
    jr nz, jr_06a_705a

    ld h, b
    ld [hl], $09
    ld [c], a
    or d
    pop bc
    add c
    nop
    ld [c], a
    pop bc
    ld [$7fa0], a
    ld [hl+], a
    cp b
    jr z, jr_06a_70c6

    ld b, d
    sbc [hl]
    jp Jump_000_01c4


    sub b
    db $10
    ld h, b
    ld [de], a
    add d
    adc e
    add b
    call $c381
    inc bc
    rlca
    and b
    add $a6
    ld d, b
    ld d, e
    add [hl]
    ld a, l
    ld hl, $8602
    ld h, $42
    and c
    ld c, b
    ret nz

    ld b, [hl]

jr_06a_70c1:
    call $9000
    pop de
    ld h, d

jr_06a_70c6:
    call z, $cd80
    add b
    dec [hl]
    jp nz, $f4b6

    nop
    add h
    ld b, e
    db $e4
    ld bc, $09e5
    add b
    ld h, e
    inc hl
    adc a
    and d
    ld [bc], a
    add c
    ld b, $85
    adc h
    inc bc
    ld c, $20
    nop
    cp a
    db $e4
    ret z

Call_06a_70e6:
    nop
    dec [hl]
    jp Jump_06a_4348


    ret nc

    db $e4
    add hl, bc
    add b
    ret


    ld h, b
    ldh [rP1], a
    nop
    sbc a
    ld h, d
    ld [bc], a
    add c
    ld [$4d82], sp
    inc b
    ld b, d
    and $89
    ld [bc], a
    adc h
    add c
    ld c, e
    and d
    add b
    ld c, b
    ld hl, $e4d0
    add hl, bc
    add b
    add a
    and c
    sbc a
    ld h, [hl]
    ld e, b
    ld b, h
    ld b, $a2
    sub c
    dec b
    ld b, [hl]
    pop bc
    jp hl


    jp $a279


    add a
    ld [bc], a
    ld c, b
    ld hl, $646f
    add hl, bc
    add b
    ld b, b
    sub b
    jr nz, jr_06a_7148

    ld b, b
    dec sp
    add c
    ld [hl-], a
    call nz, $84c7
    ld [$38c0], sp
    sub $42
    rra
    jr c, @+$3a

    jr c, @+$39

    ld b, l
    ret nc

    jr nz, jr_06a_70c1

    jp Jump_06a_600e


    ld b, b
    ld c, b
    ld hl, $e5d0
    ld c, a
    ld b, c
    adc c
    ld h, c

jr_06a_7148:
    ld a, [hl-]
    ld [$40cd], sp
    sbc l
    ld b, $c0
    ld a, [bc]
    ld b, a
    jp $c43b


    ldh [rLYC], a
    dec b
    db $e4
    ld c, l
    adc c
    pop de
    ld [hl], c
    add hl, bc
    ret z

    ld c, $47
    call nz, Call_000_3738
    ld b, e
    ret


    call nz, $a3ca
    adc c
    ld [bc], a
    call nc, $986d
    call nz, Call_000_1161
    add d
    jr nc, jr_06a_7174

    sbc a

jr_06a_7174:
    sbc l
    ld c, h
    and b
    add $c5
    ld a, [hl-]
    nop
    set 0, l
    ld d, d
    add b
    jp z, $97a4

    ld h, b
    push de
    ld h, b
    ld c, h
    jp Jump_06a_61d4


    ldh a, [$e4]
    call z, Call_000_0250
    jr nc, jr_06a_7190

jr_06a_7190:
    sbc a
    sbc h
    ld d, c
    add c
    ret


    and l
    add hl, sp
    ld b, [hl]
    ld e, b
    set 0, e
    db $ec
    ld [c], a
    adc e
    and e
    db $d3
    sub $16
    add c
    sub $d0
    push hl
    ld b, $f0
    ld [$e3e2], a
    ld de, $6541
    ld h, b
    adc d
    and h
    dec c
    jp $81d5


    inc b
    xor $c3
    sub b
    ld h, b
    ret c

    db $db
    ld h, b
    sbc b
    add c
    ret nc

    db $e4
    ldh a, [$e6]
    dec a
    pop bc
    add hl, bc
    db $eb
    jp nc, Jump_000_0f21

    ld h, b
    ld b, [hl]
    ld c, b
    jp $c18b


    db $d3
    add c
    add hl, de
    ld h, h
    ret z

    ld [hl], a
    inc hl
    sub $60
    rla
    ld b, c
    db $dd
    ret nc

    db $e3
    ldh a, [$e7]
    db $d3
    jp c, Jump_000_07aa

    pop bc
    sbc [hl]
    ld c, $c0
    and [hl]
    ld h, c
    ld h, b
    ld b, d
    adc c
    jp nz, Jump_06a_7246

    ld e, l
    nop
    call nz, $a753
    and c
    ld b, d
    db $d3
    ret nc

    pop de
    rst $10
    ld h, b
    db $e3
    ret nc

    ret nc

    ret nc

    db $e3
    ldh a, [$e7]
    ld a, a
    inc bc
    sbc [hl]
    ld b, l
    ld [hl], $ff
    ld h, d
    and a
    ld h, [hl]
    ld [hl], $45
    ld b, l
    ccf
    ld b, e
    ld [bc], a
    ld e, e
    ld h, b
    sub c
    ret nz

    add b
    ld d, c
    jp Jump_000_07ea


    jr @+$63

    ret c

    ld h, b
    ld c, a
    ld b, $fc
    ldh a, [$e5]
    adc $23
    sbc [hl]
    ld [hl], $62
    ld h, a
    and e
    ld l, b
    nop
    cp a
    ldh [$fa], a
    jp nz, Jump_06a_6008

    ld [de], a
    call nz, $86e8
    jr c, jr_06a_7259

    ret c

    ld h, d
    sbc [hl]
    ld h, $1c
    ldh a, [$e5]
    rlca
    add e
    sbc [hl]
    xor b
    xor c
    db $e4

Jump_06a_7246:
    nop
    cp a
    ld [c], a

jr_06a_7249:
    db $e3
    nop
    nop
    jp z, $d3c0

    and h
    add sp, -$7e
    and h
    inc h
    ret c

    ld h, d
    sub h
    jr z, jr_06a_7249

jr_06a_7259:
    db $e3
    sub b
    inc h
    dec a
    ld [hl], $e4
    nop
    dec [hl]
    and e
    xor d
    xor e
    ld e, a
    ld hl, $6bde
    ret nz

    db $ec
    ld h, $d8
    ld h, a
    ldh a, [$ea]
    ld [hl], $62
    nop
    ldh [$a3], a
    nop
    ld l, h
    ld l, a
    rlca
    ld l, [hl]
    ld [hl], $45
    and h
    inc h
    ld b, $e7
    db $ec
    inc hl
    ldh a, [$f7]
    ld d, b
    inc h
    inc b
    ld a, [hl]
    ldh [$c1], a
    pop hl
    sbc h
    sbc $64
    xor $61
    ld [hl], h
    ld [hl+], a
    db $ec
    inc h
    ldh a, [$f6]
    nop
    cp a
    add sp, -$3f
    pop hl
    ld h, [hl]
    dec h
    xor $61
    push hl
    ld h, d
    db $ec
    inc h
    ldh a, [$f6]
    ld [$0024], sp
    add h
    add c
    ld h, c
    ld h, h
    ld [hl], $22
    ld e, h
    jp Jump_06a_60e0


    db $ec
    daa
    ldh a, [$f3]
    jp nc, Jump_000_00e3

    cp $68
    ld h, [hl]
    inc hl
    dec e
    ld b, c
    push hl
    ld h, c
    db $ec
    daa
    ldh a, [$f4]
    jp nc, $fbe4

    pop af
    nop
    push hl
    ld h, e
    rrca
    adc l
    rst $38
    ld l, e
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    inc h
    inc b
    ld [bc], a
    ld bc, $0426
    ld [bc], a
    ld [bc], a
    daa
    inc b
    ld [bc], a
    inc bc
    dec h
    dec b
    ld [bc], a
    inc b
    jr z, jr_06a_730d

    ld [bc], a
    dec b
    ld hl, $0206

jr_06a_730d:
    ld b, $23
    ld b, $02
    rlca
    ld a, [hl+]
    ld b, $02
    ld [$0720], sp
    ld [bc], a
    add hl, bc
    ld h, $07
    ld [bc], a
    ld a, [bc]
    ld l, $07
    ld [bc], a
    dec bc
    rra
    ld [$0c02], sp
    dec l
    ld [$0d02], sp
    cpl
    ld [$0e02], sp
    jr nz, jr_06a_7339

    ld [bc], a
    rrca
    dec hl
    add hl, bc
    ld [bc], a
    db $10
    jr nc, jr_06a_7341

    ld [bc], a

jr_06a_7339:
    ld de, $0a22
    ld [bc], a
    ld [de], a
    cpl
    ld a, [bc]
    ld [bc], a

jr_06a_7341:
    inc de
    ld sp, $020a
    inc d
    rra
    dec bc
    ld [bc], a
    dec d
    dec l
    dec bc
    ld [bc], a
    ld d, $30
    dec bc
    ld [bc], a
    rla
    inc hl
    dec c
    ld [bc], a
    jr jr_06a_7382

    dec c
    ld [bc], a
    add hl, de
    dec h
    ld c, $02
    ld a, [de]
    dec l
    ld c, $02
    dec de
    jr nc, jr_06a_7372

    ld [bc], a
    inc e
    cpl
    rrca
    ld [bc], a
    dec e
    jr nc, jr_06a_737c

    ld [bc], a
    ld e, $26
    ld [de], a
    ld [bc], a
    rra

jr_06a_7372:
    daa
    inc d
    ld [bc], a
    jr nz, @+$33

    inc d
    ld [bc], a
    ld hl, $1532

jr_06a_737c:
    ld [bc], a
    ld [hl+], a
    inc sp
    rla
    ld [bc], a
    inc hl

jr_06a_7382:
    dec [hl]
    rla
    ld [bc], a
    inc h
    ld [hl], $18
    ld [bc], a
    dec h
    dec [hl]
    add hl, de
    ld [bc], a
    ld h, $37
    add hl, de
    ld [bc], a
    daa
    add hl, hl
    inc e
    ld [bc], a
    jr z, jr_06a_73ce

    inc e
    ld [bc], a
    add hl, hl
    jr z, jr_06a_73b9

    ld [bc], a
    ld a, [hl+]
    inc [hl]
    dec e

Call_06a_73a0:
    ld [bc], a
    dec hl
    ld [hl], $1d
    ld [bc], a
    inc l
    inc e
    ld e, $02
    dec l
    daa
    ld e, $02
    ld l, $37
    ld e, $02
    cpl
    rla
    rra
    ld [bc], a
    jr nc, jr_06a_73e7

    rra
    ld [bc], a

jr_06a_73b9:
    ld sp, $1f36
    ld [bc], a
    ld [hl-], a
    ld h, $20
    ld [bc], a
    inc sp
    dec [hl]
    jr nz, jr_06a_73c7

    inc [hl]
    inc e

jr_06a_73c7:
    ld hl, $3502
    inc h
    ld hl, $3602

jr_06a_73ce:
    dec h
    ld hl, $3702
    add hl, de
    ld [hl+], a
    ld [bc], a
    jr c, jr_06a_73fa

    ld [hl+], a
    ld [bc], a
    add hl, sp
    inc sp
    ld [hl+], a
    ld [bc], a
    ld a, [hl-]
    dec e
    inc hl
    ld [bc], a
    dec sp
    ld [hl+], a
    inc hl
    ld [bc], a
    inc a
    ld [hl-], a

jr_06a_73e7:
    inc hl
    ld [bc], a
    dec a
    rra
    inc h
    ld [bc], a
    ld a, $21
    inc h
    ld [bc], a
    ccf
    inc sp
    inc h
    ld [bc], a
    ld b, b
    add hl, de
    ld h, $02
    ld b, c

jr_06a_73fa:
    dec de
    ld h, $02
    ld b, d
    jr nc, jr_06a_7426

    ld [bc], a
    ld b, e
    jr jr_06a_742b

    ld [bc], a
    ld b, h
    ld a, [de]
    daa
    ld [bc], a
    ld b, l
    ld sp, $0227
    ld b, [hl]
    add hl, de
    jr z, jr_06a_7413

    ld b, a
    dec hl

jr_06a_7413:
    jr z, @+$04

    ld c, b
    ld l, $28
    ld [bc], a
    ld c, c
    jr nc, @+$2a

    ld [bc], a
    ld c, d
    ld d, $29
    ld [bc], a
    ld c, e
    dec l
    add hl, hl
    ld [bc], a
    ld c, h

jr_06a_7426:
    cpl
    add hl, hl
    ld [bc], a
    ld c, l
    dec d

jr_06a_742b:
    ld a, [hl+]
    ld [bc], a
    ld c, [hl]
    jr z, jr_06a_745a

    ld [bc], a
    ld c, a
    rla
    dec hl
    ld [bc], a
    ld d, b
    ld a, [hl+]
    dec hl
    ld [bc], a
    ld d, c
    inc h
    dec l
    ld [bc], a
    ld d, d
    jr z, jr_06a_746d

    ld [bc], a
    ld d, e
    inc de
    ld l, $02
    ld d, h
    ld [hl+], a
    ld l, $02
    ld d, l
    ld h, $2e
    ld [bc], a
    ld d, [hl]
    add hl, hl
    ld l, $02
    ld d, a
    ld [de], a
    cpl
    ld [bc], a
    ld e, b
    jr z, jr_06a_7487

    ld [bc], a
    ld e, c

jr_06a_745a:
    dec c
    ld sp, $5a02
    ld hl, $0231
    ld e, e
    inc h
    ld sp, $5c02
    ld h, $31
    ld [bc], a
    ld e, l
    inc c
    ld [hl-], a
    ld [bc], a

jr_06a_746d:
    ld e, [hl]
    add hl, de
    ld [hl-], a
    ld [bc], a
    ld e, a
    dec e
    ld [hl-], a
    ld [bc], a
    ld h, b
    jr nz, @+$34

    ld [bc], a
    ld h, c
    inc hl
    ld [hl-], a
    ld [bc], a
    ld h, d
    dec h
    ld [hl-], a
    ld [bc], a
    ld h, e
    dec de
    inc sp
    ld [bc], a
    ld h, h
    inc h

jr_06a_7487:
    inc sp
    ld [bc], a
    ld h, l
    inc e
    inc [hl]
    ld [bc], a
    ld h, [hl]
    jr jr_06a_74c5

    ld [bc], a
    ld h, a
    ld d, $36
    ld [bc], a
    ld l, b
    dec d
    scf
    ld [bc], a
    ld l, c
    ld de, $ff3a
    rst $38
    rst $38
    and a
    ld [hl], h
    pop hl

Call_06a_74a2:
    ld [hl], a
    add e
    ld a, h
    sbc [hl]
    ld a, h
    cpl
    dec c
    ld c, $0e
    ld c, $fc
    db $ed
    ld c, l
    db $eb
    ldh [$fc], a
    pop af
    inc c
    call nc, $fdf1
    ld sp, hl
    ld c, l
    ld c, l
    db $fc
    db $e3
    rst $38
    rst $38
    add $ee
    ld a, [hl]
    ld [c], a
    ccf
    dec c
    dec c

jr_06a_74c5:
    ld c, l
    ld c, l
    dec l
    ld c, l
    ld [hl], d
    jp hl


    rst $38
    rst $38
    ld b, $bc
    jp hl


    ld l, l
    ld l, e
    cp [hl]
    ldh [$bf], a
    ldh [$59], a
    ei
    ld [bc], a
    rst $28
    add d
    db $e4
    ret nz

    pop bc
    pop hl
    cp a
    db $e3
    ldh a, [$c6]
    cp $df
    ld c, $e5
    add d
    pop hl
    ld l, e
    dec c
    adc d
    ld a, a
    ldh [rOCPD], a
    inc a
    ldh [$2d], a
    ld d, d
    rst $38
    inc b
    xor $43
    ldh [$2b], a
    ld l, a
    ld a, [bc]
    ld l, d
    dec c
    ld l, e
    rst $38
    pop hl
    ld c, l
    dec l
    nop
    rst $38
    inc a
    ld a, [hl+]
    db $ed
    add d
    ldh [$0a], a
    ld c, d
    ld a, [hl+]
    dec bc
    ret nz

    ld [c], a
    ld a, [$b0c0]
    ld [bc], a
    rst $38
    inc b
    call nz, $c14c

jr_06a_7518:
    nop
    pop bc
    ld l, e
    ld l, e
    pop bc
    pop hl
    dec hl
    add h
    cp a
    ldh [$3a], a
    pop hl
    ld l, l
    db $ec
    and e
    cp $cf
    inc b
    sub $47
    ldh [$0a], a
    rrca
    dec bc
    dec bc
    ld c, e
    ld c, e
    ret nz

    db $e4
    db $e4
    ret


    nop
    rst $38
    ld b, h
    ret nz

    ld e, d
    ld b, $e0
    dec hl
    ret nz

    ldh [$0a], a
    ld c, d
    ld b, b
    pop hl
    ld l, e
    ret nz

    ldh [$f8], a
    db $fc
    cp a
    add [hl]
    xor c
    add a
    ret nz

    ld l, e
    ld l, e
    ld c, e
    ld l, e
    dec hl
    jp Jump_000_0a2a


    cp [hl]
    jp nz, $f880

    inc b
    pop de
    ret nz

    push hl
    dec bc
    dec bc
    ret


    dec hl
    cp $c0
    ld a, e
    ret nz

    dec l
    nop
    rst $18
    jr nz, @-$15

    ld c, l
    ld c, l
    add h
    set 4, c
    cp a
    ld [c], a
    dec bc
    ret nz

    ld [c], a
    jr c, jr_06a_7518

    ld c, d
    rst $38
    add [hl]
    adc b
    ld c, l
    add hl, de
    dec l
    jp nz, Jump_000_03a1

    ret nz

    dec bc
    dec c
    cp a
    ldh [$3f], a
    pop hl
    ld hl, sp-$7e
    sub h
    rst $38
    rst $38
    add h
    add [hl]
    dec l
    ld c, c
    pop hl
    dec c
    ret nz

    pop hl
    ld a, $e2
    ld l, l
    nop
    add b
    db $f4
    ld [$c897], sp
    and c
    ld b, c
    and b
    inc a
    jp nz, $c07f

    nop
    rst $18
    inc b
    adc h
    nop
    ret nz

    db $e3
    rst $38
    ret nz

    db $fd
    and b
    ld b, b
    pop hl
    nop
    rst $18
    add [hl]
    ld l, c
    add hl, bc
    add b
    ld a, a
    ld [c], a
    ret nz

    ld a, a
    and b
    ret nz

    db $e4
    nop
    rst $18
    adc d
    ld l, c
    cp a
    and b
    add d
    add b
    ld l, e
    dec c
    ld h, d
    ld b, d
    db $e3
    ld l, e
    ccf
    and b
    nop
    db $dd
    inc b
    ret


    ld c, l
    ld c, l
    ld b, d
    add e
    add b
    ld a, [hl]
    and c
    ld a, [$0062]
    and h
    nop
    sbc c
    ld [$8584], sp
    pop hl
    ld c, l
    and d
    dec hl
    nop
    jp Jump_000_0180


    ret nz

    db $fc
    ld h, c
    add d
    db $e4
    inc b
    rst $38
    add [hl]
    and d
    dec b
    and c
    add l
    ld [c], a
    ld [bc], a
    jp Jump_000_2ba1


    add hl, sp
    ld [c], a
    nop
    sbc a
    ld a, [bc]
    ld l, b
    ld c, d
    pop bc
    pop bc
    db $e3
    ccf
    and c
    ld b, b
    inc a
    pop bc
    ld [bc], a
    sub $04
    ld c, b
    ld [$4685], sp
    and b
    ret nz

    push hl
    ld c, e
    ld a, h
    add c
    ret nz

    cp d
    pop bc
    add d
    and h
    ld [bc], a
    ld a, a
    ret z

    and e
    ld b, l
    add e
    ld b, h
    db $e3
    ld l, e
    dec c
    add c
    dec l
    dec [hl]
    and b
    nop
    rst $38
    ld [$0d67], sp
    ld h, c
    inc bc
    db $e4
    ld b, e
    pop hl
    dec c
    ld b, e
    dec c
    dec l
    add d
    and l
    cp h
    rst $38
    inc c
    ld b, e
    jp nz, Jump_000_2be5

    ret nz

    db $e3
    nop
    ld b, c
    ld h, d
    nop
    ld e, e
    inc c
    ld b, a
    ret z

    ld b, c
    inc b
    ld [c], a
    add hl, bc
    and d
    jp $83e2


    add d
    nop
    nop
    db $db
    ld h, h
    db $e3
    adc [hl]
    ld [hl+], a
    ld c, c
    ld h, b
    ld [$48c1], sp
    pop bc
    ret nz

    ret nz

    ld b, l
    ret nz

    add b
    ld bc, $08e2
    cp l
    adc d
    ld b, d
    inc c
    and d
    rst $00
    and c
    dec b
    push hl
    inc bc
    ld b, b
    dec l
    nop
    pop bc
    pop bc
    add d
    ld h, h
    ret nc

    dec de
    ld a, [bc]
    ld h, d
    rst $00
    and c
    add $a4
    add $c2
    add d
    jp nz, $8200

    ld b, l
    nop
    ld e, c
    inc c
    add h
    adc h
    ld h, e
    add h
    jp $e384


    call nz, Call_06a_7e81
    inc b
    nop
    ld [bc], a
    ld a, a
    ld c, h
    db $e3
    ld b, h
    push bc
    pop bc
    push hl
    ld c, b
    rst $18
    inc a
    db $e3
    ret nz

    ld [c], a
    ld c, $20
    nop
    jp z, Jump_000_0942

    ld h, e
    add d
    add sp, $00
    rst $18
    sub [hl]
    nop
    ld a, $e3
    cp a
    rst $20
    push bc
    add b
    nop
    ld h, h
    ld c, l
    nop
    reti


    adc c
    ld b, c
    add a
    ld b, d
    pop bc
    and h
    ld b, [hl]
    inc hl
    inc b
    sub a
    nop
    rlc b
    adc b
    ld [hl+], a
    ld b, a
    ld b, e
    cp l
    push bc
    ld b, $26
    nop
    rst $18
    add [hl]
    dec h
    adc h
    jp nz, $c47c

    nop
    add [hl]
    rlca
    call nz, Call_000_029f
    ld h, l
    inc a
    db $e3
    cp l
    push bc
    add [hl]
    sbc l
    inc b
    ld c, [hl]
    cp a
    pop hl
    nop
    ld a, h
    push bc
    ld b, e
    nop
    ret z

    ld hl, $04ec
    ld [bc], a
    ld a, $fa
    xor d
    call nz, $8001
    ld [$0400], a
    ld e, a
    inc b
    ld b, [hl]
    ld a, c
    and [hl]
    ld b, $60
    ld [$fc46], sp
    sbc $96
    rst $20
    inc a
    add $00
    ld [$8821], sp
    db $fd
    inc [hl]
    adc e
    sub [hl]
    add d
    ld b, b
    ld b, e
    db $fd
    ld b, b
    ld b, a
    ld [bc], a
    ld a, [hl]
    add sp, $00
    cp $df
    add h
    rlca
    ld a, [hl]
    ld b, e
    cp a
    db $e3
    ld bc, $fc7f
    dec hl
    ld a, [hl]
    pop bc
    ccf
    ldh [rSC], a
    cp a
    pop bc
    ld l, e
    ld a, [hl+]
    and b
    inc b
    ccf
    ld a, h
    dec l
    db $fc
    and l
    ld a, a
    add d
    inc a
    pop hl
    jr @+$04

    rst $38
    ld hl, sp+$69
    ld a, d
    and e
    ld c, e
    ld c, e
    ret nz

    db $e3
    cp a
    ld [c], a
    nop
    sbc a
    nop
    or $6b
    ld b, e
    add d
    ld b, l
    ld [bc], a
    ld b, b
    ld hl, $dfff
    ld hl, sp+$0d
    ld bc, $f9e2
    inc h
    nop
    nop
    ld e, a
    or b
    ld c, [hl]
    cp h
    and b
    ld sp, hl
    daa
    add b
    ld a, [hl-]
    jr nc, jr_06a_77be

    ld a, [c]
    ld hl, $00ba
    ldh a, [$c0]
    ld [$df00], a
    jr nc, jr_06a_77c5

    jr c, jr_06a_77bf

    dec c
    dec bc
    dec bc
    dec l
    nop
    ld b, b
    ld [c], a
    nop
    rst $38
    ld hl, sp+$0c
    ei
    ld [$e4c0], sp
    nop
    rst $38
    or $4a
    cp e
    rlca
    jr nc, jr_06a_77d0

    nop
    add b
    rst $30
    nop
    push de
    or $41
    ld c, e
    ld l, e
    cp l
    ld b, b
    cp d
    ld b, b
    jr jr_06a_781c

    add l
    ld [bc], a
    rst $38
    ld a, d
    ld l, b
    ld c, l
    dec l
    ccf
    ld b, h
    or l
    ld h, b
    add b
    ld a, [de]
    nop
    db $fc
    sub l
    sub d
    ret nz

    or h
    ld b, e
    cp [hl]
    jr nz, jr_06a_77b9

jr_06a_77b9:
    cp a
    xor [hl]
    ld [de], a
    ld [hl], a
    add c

jr_06a_77be:
    inc a

jr_06a_77bf:
    ld b, b
    nop
    add d
    ei
    nop
    pop de

jr_06a_77c5:
    inc c
    ld h, [hl]
    cp a
    pop hl
    add d
    and $00
    rst $18
    db $f4
    ld d, c
    inc b

jr_06a_77d0:
    rst $38
    ld h, b
    ld hl, sp+$55
    ld hl, sp-$3b
    nop
    ld a, a
    ld hl, sp+$53
    adc d
    ld e, a
    ld c, $0e
    nop
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    xor $a0
    ret c

    reti


    rrca
    and b
    and b
    jp nc, $fcd3

    rst $20
    ldh a, [$e1]
    db $ec
    ldh [$d4], a
    ldh a, [$ef]
    rst $18
    ldh [$e1], a
    ld [c], a
    db $fc
    db $ed
    sub $d7
    jp c, $db7f

    ret nc

    pop de
    call nc, $a0d5
    and b
    db $fc
    db $e3
    rst $08
    ret nc

    pop de
    jp c, $ecdb

    pop hl
    call nc, $e3f1
    db $e4
    di
    push hl
    and $fc
    db $ed

jr_06a_781c:
    add d
    push hl
    sbc a
    and d
    sbc l
    sbc l
    di
    sbc a
    and b
    ld a, [hl]
    rst $20
    call nc, $e7f1
    add sp, -$17
    ld [$fcfc], a
    db $ed
    add d
    db $e4
    sbc a
    sbc h
    ld b, [hl]
    xor [hl]
    xor [hl]
    sbc h
    ret nz

    cp a
    ldh [$7e], a
    push hl
    call nc, Call_000_02f1
    pop af
    add d
    db $e4

Jump_06a_7843:
    pop bc
    ldh [$af], a
    xor a
    ldh a, [$bf]
    ld [c], a
    db $fc
    add $d2
    rst $08
    ld [bc], a
    rst $28
    and b
    and b
    sub $d7
    or $82
    db $e3
    ld b, [hl]
    xor a
    cp [hl]
    ldh [rDMA], a
    sbc h
    sbc l
    and d
    pop bc
    sbc a
    db $fc
    push bc
    jp nc, $02cf

    rst $28
    add d
    jp $e143


    ld b, l
    ld c, b
    rlca
    ld d, e
    xor a
    ld b, [hl]
    rst $38
    pop hl
    dec sp
    ldh [$7a], a
    jp $cfd2


    ld [bc], a
    rst $28
    ld a, d
    add d
    jp $82a1


    ldh [rOBP0], a
    ld e, [hl]
    ld d, h
    ld b, l
    ret nz

    ld [c], a
    add $fa
    ret nz

    call nc, Call_06a_6ad5
    pop bc
    jp nc, Jump_000_04cf

    push de
    sbc [hl]
    ld b, [hl]
    cp a
    ld b, [hl]
    ld d, c
    ld e, [hl]
    ld d, d
    ld a, [hl+]
    ld a, [hl+]
    cp a
    ldh [$ae], a
    rrca
    ld b, [hl]
    xor a
    xor [hl]
    sbc [hl]
    nop
    db $e4
    cp $ce
    inc b
    push de
    ret nz

    ldh [$9f], a
    ld b, l
    ld d, e
    ld a, [hl+]
    jr nz, jr_06a_78df

    ld a, a
    ldh [$fa], a
    pop bc
    sbc [hl]
    and $fc
    and e
    and b
    and b
    nop
    db $dd
    add [hl]
    and h
    sbc a
    sbc h
    xor [hl]
    rst $38
    ld b, [hl]
    ld b, [hl]
    dec l
    jr nz, jr_06a_78e8

    dec l
    ld c, c
    ld d, l
    adc [hl]
    cp $c0
    xor a
    ld b, [hl]
    sbc [hl]
    db $fc
    or l
    inc b
    rst $08
    add d
    jp nz, Jump_06a_7e9e

    add a
    ret nz

    ld b, [hl]
    dec l
    ld h, $21

jr_06a_78df:
    ld [hl], $56
    ret nz

    pop hl
    scf
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    ld a, d

jr_06a_78e8:
    and e
    and b
    and b
    nop
    call c, $a092
    or $18
    jp nz, $af9e

    add b
    ldh [rLYC], a
    ld b, c
    dec [hl]
    dec [hl]
    scf
    jr c, @+$39

    ld b, l
    rst $38
    ret nz

Jump_06a_7900:
    ld b, [hl]
    and c
    ldh a, [$83]
    nop
    db $dd
    call z, $c104
    inc b
    and c
    and b
    sbc [hl]
    inc b
    ret nz

    cp $c0
    ld [hl], $35
    rlca
    dec [hl]
    dec [hl]
    add hl, sp
    push af
    pop hl
    ld a, c
    and b
    ld a, [hl]
    pop bc
    nop
    db $dd
    add [hl]
    add [hl]
    inc a
    jp nz, Jump_06a_7ea1

    pop hl
    ld a, [hl-]
    dec [hl]
    xor h
    ld a, [hl-]
    inc a
    jp nz, $c07f

    sbc b
    nop
    rst $18
    inc b
    jp nz, $a182

    ret nc

    pop de
    inc bc
    and b
    call nz, $aea0
    rst $18
    add hl, sp
    dec [hl]
    xor l
    dec [hl]
    ld [hl], $3e
    pop hl
    sbc [hl]
    and b
    ret nz

    ld a, d
    add c
    nop
    call c, $8518
    inc b
    add c
    cp a
    and b
    nop
    and b
    xor [hl]
    ld a, [hl-]
    inc bc
    dec [hl]
    dec [hl]
    ld a, a
    ldh [$7f], a
    ret nz

    nop
    db $e3
    nop
    jp c, $8308

    inc b
    add h
    inc c
    cp a
    and b
    ret z

    and b
    xor a
    ld a, $ff
    pop bc
    ld b, b
    ld [c], a
    ld a, [hl]
    and c
    nop
    db $db
    ld [$698a], sp
    ld a, $c0
    cp a
    ld [c], a
    ld a, [hl-]
    ld b, c
    pop hl
    nop
    and $00
    db $db
    adc d
    ld l, c
    inc de
    sbc a
    sbc h
    ld a, $c0
    ld b, [hl]
    and b
    inc a
    pop bc
    ret nz

    or l
    and b
    ld sp, hl
    ld h, b

Jump_06a_7991:
    ld [hl], b
    nop
    sbc $96
    ld h, h
    adc b
    ld h, e
    ld b, d
    add d
    xor a
    ld b, l
    scf
    ld b, c

Jump_06a_799e:
    ret nz

    ret nz

    ld a, [$bac0]
    ld h, c
    nop
    db $dd
    ld [$c784], sp
    ld h, d
    res 0, c
    ld b, l
    scf
    ccf
    scf
    ld b, c
    ld [hl], $62
    ld h, e
    ld a, l
    ld a, [$82c1]
    pop bc
    ldh [rP1], a
    db $dd
    sbc [hl]
    add l
    dec b
    and d
    add l
    ldh [$c4], a
    ldh [$64], a
    ld h, h
    ld a, b
    inc bc
    inc a
    ld a, a
    cp a
    ldh [$81], a
    and b
    nop
    sbc a
    add [hl]
    and h
    add $80
    ld b, $e1
    cp $c1
    ldh [$67], a
    dec [hl]
    jr c, jr_06a_7a15

    dec [hl]
    dec [hl]
    xor [hl]

Jump_06a_79e0:
    ret nz

    cp a
    ldh [$82], a
    call nz, $9a00
    inc c
    ld b, l
    ld b, [hl]
    and b
    ld c, e
    ld h, b
    xor a
    ld b, d
    cp $c1
    ldh [$3a], a
    xor [hl]
    ld b, l
    ld a, [hl-]
    inc a
    xor a
    ld b, [hl]
    pop bc
    add c
    add d
    add $00
    ld e, b
    inc c
    ld b, [hl]
    add a
    ld h, c
    ld b, $a1
    ld l, c
    dec [hl]
    rst $38
    dec [hl]
    ld a, $af
    xor [hl]
    add hl, sp
    ld [hl], $ae
    add e
    add c
    add a
    ld b, d
    and c
    db $fc

jr_06a_7a15:
    ld hl, $5900
    inc c
    ld b, [hl]
    ld [bc], a
    ld [c], a
    inc bc
    ldh [rPCM12], a
    ld a, [hl]

jr_06a_7a20:
    add a
    and c
    xor a
    xor [hl]
    xor [hl]
    xor a
    adc d
    add l
    ld b, d
    and c
    ld hl, sp+$72
    ld hl, $5900
    inc c
    ld b, a
    xor a
    xor [hl]
    ld b, l
    scf
    jr c, jr_06a_7a15

    inc bc
    ldh [$35], a
    dec [hl]
    inc a
    ld b, h
    ccf
    ld b, c
    add c
    ld b, [hl]
    pop hl

jr_06a_7a42:
    xor a
    add d
    add h
    nop
    ld e, b
    inc c
    ld b, [hl]
    adc c
    ld h, b
    xor a
    add hl, sp
    dec [hl]
    ld a, a
    dec [hl]

jr_06a_7a50:
    ld l, c
    ld a, [hl-]
    ccf
    scf
    jr c, jr_06a_7a8c

    or [hl]
    pop bc
    pop bc
    xor a
    ld bc, $00e4
    ld e, d
    inc c
    ld b, a
    inc b
    pop hl
    call z, Call_06a_6980
    ld a, $2f
    xor [hl]
    xor [hl]
    ld b, l
    ld b, l
    cp [hl]
    and b
    ld b, [hl]
    ld bc, $82e3
    add d
    jr jr_06a_7a74

jr_06a_7a74:
    sub a
    adc d
    ld h, l
    dec bc
    ld h, b
    xor [hl]
    ld b, [hl]
    add c
    ldh [$80], a
    ldh [$85], a
    jr nz, jr_06a_7a50

    cp $81
    add e
    add [hl]
    add l
    add d
    ld h, [hl]
    nop
    sub a
    and b

jr_06a_7a8c:
    and b
    db $f4
    adc d
    ld h, e
    pop de
    jr nz, jr_06a_7a42

    add c
    pop hl
    dec [hl]
    ld l, c
    dec [hl]
    add hl, sp
    sbc $43
    jr nz, jr_06a_7a20

    adc c
    adc b
    add a
    pop bc
    ldh [$9c], a
    sbc a
    ldh a, [$82]
    and e
    nop
    db $db
    inc c
    add d
    adc h
    ld h, e
    dec [hl]
    dec [hl]
    ld l, e
    ld l, h
    ld bc, $453a
    ldh [$84], a
    pop hl
    add d
    jr z, jr_06a_7aba

jr_06a_7aba:
    db $db
    adc d
    ld b, e
    ld c, c
    ld b, b
    ld b, b
    pop hl
    rrca
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc b
    add h
    ld [c], a
    add d
    jp hl


    nop
    db $dd
    adc d
    ld b, c
    nop
    adc b
    ld b, b
    jp z, $c942

    ld h, h
    add d
    jp hl


    nop
    sbc $0b
    add c
    add e
    and e
    cp a
    pop hl
    ld c, $c8
    ld b, d
    xor [hl]
    ld b, [hl]
    and c
    inc b
    push hl
    inc b
    ld c, a
    nop
    pop de
    pop de
    ld [bc], a
    nop
    cp l
    jp nz, Jump_06a_40c8

    ld b, $22
    add [hl]
    dec h
    ld [bc], a
    or c
    nop
    res 0, d
    add c
    rst $00
    ld h, e
    nop
    dec a
    pop bc
    ld b, $40
    ld b, $22
    add [hl]
    inc bc
    inc b
    ld d, c
    nop
    call Call_000_229e
    jp nz, Jump_000_0062

    ld a, a
    db $e3
    add a
    ld b, c
    add [hl]
    ld h, c
    ld l, d
    ld b, e
    ld [bc], a
    or c
    nop
    ret


    ld a, [hl]
    db $e4
    add c
    ld h, e
    nop
    ld a, a
    db $e4
    add [hl]
    add l
    inc b
    sub e
    nop
    sub d
    ld a, a
    ld h, e
    ld a, h
    jp $e2c0


    nop
    and $68
    cp $d2
    inc b
    ld c, c
    ld a, [hl]
    push hl
    and c
    dec sp
    call nz, Call_06a_443c
    ld [$4043], sp
    inc b
    and e
    inc b
    ld c, a
    nop
    adc l
    nop
    ld b, l
    jp $ba02


    add c
    ld b, b
    ld b, c
    ret nz

    jr nz, jr_06a_7bbb

    ld b, h
    nop
    rst $18
    db $fc
    rst $00
    add l
    ld hl, $82b9
    ld b, d
    ld c, b
    ld hl, $21f0
    ld h, b
    add d
    add e
    nop
    ret c

    ld a, [$7e04]
    inc hl
    ld b, l
    ld [hl+], a
    ld b, [hl]
    ld b, b
    ld b, [hl]
    ld [hl+], a
    add b
    ld b, $41
    ld a, [hl]
    rst $20
    nop
    ld e, c
    or $01
    add d
    inc bc
    ld b, e
    nop
    ld b, h
    nop
    ld b, h
    ld bc, $7d3c
    and d
    cp a
    db $e3
    db $fc
    call nz, Call_06a_5900
    db $fc
    jr z, jr_06a_7bc3

    and c
    cp c
    ld h, c
    ld c, $bf
    pop bc
    ld b, [hl]
    sbc h
    sbc l
    ld a, l
    pop hl
    nop
    ld e, a
    ld hl, sp+$68
    db $fc
    and [hl]
    add c
    ld b, d
    ld sp, $42a2
    ld hl, $9e00
    ld hl, sp+$69
    inc a
    inc hl
    cp c
    ld b, b
    ld b, b
    ld b, b
    ld a, l
    add c
    ld bc, $0023
    ld e, h
    ld hl, sp+$69
    db $fc
    and d
    ld b, e
    add c
    ld b, l
    ld b, l
    ld [bc], a

jr_06a_7bbb:
    ldh a, [rLCDC]
    ld [hl+], a
    nop
    ld e, l
    ld hl, sp+$2d
    ld a, h

jr_06a_7bc3:
    pop bc
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    and b
    db $fd
    ldh [$38], a
    add b
    nop
    ld e, a
    ld hl, sp+$27
    ld a, d
    inc bc
    sbc [hl]
    db $fd
    ld bc, $1b3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    nop
    inc h
    nop
    rst $18
    db $fc
    and l
    ld e, [hl]
    cp d
    ld [bc], a
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    and b
    ldh [rP1], a
    inc h
    nop
    sbc $fc
    and e
    db $76
    ld b, c
    ld c, e
    nop
    ld b, d
    dec [hl]
    ld l, c
    rra
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld a, d
    ret nz

    ld a, d
    add l
    nop
    db $dd
    inc b
    db $fc
    and e
    db $76
    ld b, d
    ld b, [hl]
    ret nz

    pop hl
    rst $30
    ld b, c
    ret nz

    db $e3
    nop
    rst $18
    inc h
    add l
    ld l, h
    db $76
    dec h
    ld a, a
    and b
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    inc a
    ret nz

    ld bc, $0000
    rst $18
    ld hl, sp+$69
    or $42
    ret nz

    add $40
    pop bc
    nop
    rst $18
    ld hl, sp+$67
    db $fc
    ld h, c
    ld b, b
    cp a
    ld [c], a
    ld b, b
    push bc
    ret nz

    and b
    nop
    rst $18
    nop
    set 7, e
    add b
    sbc l
    or h
    ld b, c
    nop
    db $fc
    ld bc, $a181
    nop
    rst $18
    nop
    ret


    ld a, d
    ld h, c
    ldh a, [rNR43]
    ccf
    ld b, b
    add d
    db $e3
    nop
    nop
    rst $18
    db $fc
    ld l, e
    ldh a, [rNR52]
    ld a, [hl]
    ld b, d
    nop
    sbc a
    db $fc
    ld l, l
    ldh a, [rNR52]
    ld b, d
    add b
    nop
    add d
    dec b
    nop
    rst $18
    db $fc
    ld h, a
    ld hl, sp-$39
    nop
    ld h, a
    nop
    rst $18
    db $f4
    daa
    ld hl, sp-$37
    nop
    ld a, [hl]
    dec h
    nop
    pop de
    nop
    nop
    nop
    pop bc
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
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    ld e, $04
    ld [bc], a
    ld bc, $041f
    ld [bc], a
    ld [bc], a
    dec e
    dec b
    ld [bc], a
    inc bc
    jr nz, jr_06a_7cb3

    ld [bc], a
    inc b
    rra
    ld b, $02

jr_06a_7cb3:
    dec b
    dec de
    rlca
    ld [bc], a
    ld b, $25
    ld [$0702], sp
    inc hl
    add hl, bc
    ld [bc], a
    ld [$0926], sp
    ld [bc], a
    add hl, bc
    dec h
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    add hl, de
    dec bc
    ld [bc], a
    dec bc
    jr jr_06a_7cda

    ld [bc], a
    inc c
    add hl, de
    dec c
    ld [bc], a
    dec c
    inc h
    dec c
    ld [bc], a

Call_06a_7cd7:
    ld c, $1b
    rrca

jr_06a_7cda:
    ld [bc], a
    rrca
    ld hl, $020f
    db $10
    ld e, $10
    ld [bc], a
    ld de, $1026
    ld [bc], a
    ld [de], a
    dec e
    ld de, $1302
    rra
    ld de, $1402
    ld e, $12
    ld [bc], a
    dec d
    ld a, [de]
    inc de
    ld [bc], a
    ld d, $1f
    inc de
    ld [bc], a
    rla
    dec de
    inc d
    ld [bc], a
    jr @+$1f

    inc d
    ld [bc], a
    add hl, de
    inc h
    inc d
    ld [bc], a
    ld a, [de]
    inc hl
    dec d
    ld [bc], a
    dec de
    dec h
    dec d
    ld [bc], a
    inc e
    jr jr_06a_7d28

    ld [bc], a
    dec e
    inc h
    ld d, $02
    ld e, $14
    rla
    ld [bc], a
    rra
    inc de
    jr jr_06a_7d21

    jr nz, jr_06a_7d36

jr_06a_7d21:
    jr @+$04

    ld hl, $1817
    ld [bc], a
    ld [hl+], a

jr_06a_7d28:
    ld hl, $0218
    inc hl
    inc d
    add hl, de
    ld [bc], a
    inc h
    dec e
    add hl, de
    ld [bc], a
    dec h
    ld e, $1a

jr_06a_7d36:
    ld [bc], a
    ld h, $21
    ld a, [de]
    ld [bc], a
    daa
    ld [de], a
    dec de
    ld [bc], a
    jr z, @+$21

    dec de
    ld [bc], a
    add hl, hl
    jr nz, jr_06a_7d61

    ld [bc], a
    ld a, [hl+]
    inc h
    dec de
    ld [bc], a
    dec hl
    inc de
    inc e
    ld [bc], a
    inc l
    ld e, $1c
    ld [bc], a
    dec l
    ld hl, $021c
    ld l, $10
    dec e
    ld [bc], a
    cpl
    dec e
    dec e
    ld [bc], a
    jr nc, @+$21

jr_06a_7d61:
    dec e
    ld [bc], a
    ld sp, $1e19
    ld [bc], a
    ld [hl-], a
    ld a, [de]
    ld e, $02
    inc sp
    ld c, $1f
    ld [bc], a
    inc [hl]
    ld de, $021f
    dec [hl]
    dec de
    rra
    ld [bc], a
    ld [hl], $1c
    rra
    ld [bc], a
    scf
    ld a, [de]
    jr nz, jr_06a_7d81

    jr c, jr_06a_7d90

jr_06a_7d81:
    ld hl, $3902
    ld c, $22
    ld [bc], a
    ld a, [hl-]
    db $10
    ld [hl+], a
    ld [bc], a
    dec sp
    rrca
    inc hl
    ld [bc], a
    inc a

Call_06a_7d90:
jr_06a_7d90:
    ld de, $0223
    dec a
    rra
    inc h
    ld [bc], a
    ld a, $14
    dec h
    ld [bc], a
    ccf
    dec e
    dec h
    ld [bc], a
    ld b, b
    jr nz, jr_06a_7dc7

    ld [bc], a
    ld b, c
    rra
    ld h, $02
    ld b, d
    dec d
    add hl, hl
    ld [bc], a
    ld b, e
    ld d, $2a
    ld [bc], a
    ld b, h
    ld e, $2b
    ld [bc], a
    ld b, l
    jr jr_06a_7de2

    ld [bc], a
    ld b, [hl]
    rla
    ld l, $02
    ld b, a
    inc hl
    jr nc, jr_06a_7dc1

    ld c, b
    inc h

jr_06a_7dc1:
    ld sp, $4902
    ld a, [de]
    inc [hl]
    ld [bc], a

jr_06a_7dc7:
    ld c, d
    add hl, de
    dec [hl]
    ld [bc], a
    ld c, e
    inc h
    jr c, @+$04

    ld c, h
    jr nz, jr_06a_7e0d

    ld [bc], a
    ld c, l
    ld hl, $ff3c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06a_7de2:
    rst $38
    rst $38
    rst $38
    rst $38

Call_06a_7de6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_06a_7e0d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06a_7e79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06a_7e81:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06a_7e9e:
    rst $38
    rst $38
    rst $38

Jump_06a_7ea1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06a_7f9c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_06a_7fe5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
