; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $06e", ROMX[$4000], BANK[$6e]

    ld a, [bc]
    ld b, b
    sbc b
    ld c, l
    ld a, c
    ld d, a
    push af
    ld h, c
    ld d, c
    ld l, a
    ld [de], a
    ld b, b
    xor h
    ld b, l
    ld h, d
    ld c, h
    ld a, l
    ld c, h
    ld e, l
    dec l
    rst $38
    ld [c], a
    ld c, $0e
    ld c, $f9
    db $e3
    ld l, $f3
    rst $20
    inc h
    rst $20
    and $ea
    ldh [$0d], a
    jp hl


    db $ec
    rst $30
    jp hl


    dec c
    db $e3
    ldh [$e4], a
    ld [$b318], a
    ld [c], a
    or [hl]
    ld [c], a
    and a
    db $e3
    dec c

Jump_06e_4035:
    dec c
    xor b
    ld [c], a
    sbc h
    rst $20
    or d
    pop hl
    or b
    jp z, $c5e1

    ldh [$a7], a
    ldh [$c0], a
    push hl
    ld c, $4e
    rst $38
    pop hl
    ld l, $c0
    add $e5
    ld [hl], d
    db $e3
    ret nz

    ld [c], a
    add b
    add sp, $7c
    db $f4
    dec a
    pop hl
    ld l, [hl]
    dec hl
    ld [bc], a
    or c
    ldh [$0d], a
    cp a
    ldh [$2f], a
    ld [c], a
    or l
    ld [c], a
    pop hl
    jp hl


    ld [hl], b
    push hl
    ld hl, $78e6

Jump_06e_406a:
    ld a, [de]
    rst $20
    ld a, [bc]
    db $e3
    pop bc
    ldh [$0b], a
    dec hl
    dec c
    ld a, [bc]
    ld a, d
    ld [c], a
    add l
    ld c, [hl]
    or e
    ldh [$2b], a
    or $e3

Jump_06e_407d:
    ld a, [$3be8]
    ld [c], a
    db $ed
    jp $ec2e


    dec hl
    pop hl
    dec c
    jp hl


    dec l
    ld c, $c1
    ldh [$0b], a
    ld l, e
    dec c
    ld bc, $c70a
    ldh [rIE], a
    pop hl
    dec h
    ldh [$f8], a
    db $e3
    ld a, [c]
    ld [c], a
    or $e3
    ld h, h
    db $e3
    ldh a, [$94]

Jump_06e_40a2:
    jp $e2c0


    nop
    ld [c], a
    ret nz

    rst $20
    ld c, e
    ld l, e
    dec l
    dec c
    add hl, sp
    ld a, [bc]
    rst $00
    db $e4
    ret nz

    and $4b
    dec bc
    dec hl
    ld l, c
    ldh [$ae], a
    ld [c], a
    nop
    ld l, [hl]
    pop hl
    db $ed
    jp $ee03


    add b
    ld [c], a
    or d
    jp $e7c7


    rst $38
    push hl
    cp d
    pop hl
    add [hl]
    ld a, [c]
    ldh [$0d], a
    dec hl
    ld e, [hl]
    ldh [$ea], a
    ret z

    add d
    db $e4
    ld hl, $4ec4
    ld b, a
    ld l, $0a
    ld a, [bc]
    add d
    ld [c], a
    ld b, b
    ld [c], a
    jp Jump_06e_4be5


    rst $38
    pop hl
    nop
    cp d
    db $e4
    ld [c], a
    ret nz

    xor l
    ldh [$7e], a
    ld [c], a
    and l
    ret


    ld hl, $bfc4
    ldh [$80], a
    pop bc
    db $fc
    ld [$86e2], sp
    ld [c], a
    ld l, e
    ld c, e
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    ret nz

    rst $38
    pop hl
    cp e
    ld [c], a
    ld [hl], c
    pop hl
    and $e1
    ld e, [hl]
    push bc
    ld a, [hl]
    db $e4
    ld c, $0e
    nop
    ld hl, $7bc4
    and b
    ret nz

    db $e4
    call nz, $c2e2
    ldh [$c6], a
    add $af
    pop bc
    cp d
    pop hl
    ld b, $7b
    ld [c], a
    dec c
    dec c
    ld [$a0a1], a
    and b
    ld c, h
    and e
    inc sp
    add $58
    and b
    inc c
    db $e4
    ldh [$c1], a
    ld [c], a
    ld l, e
    ld l, e
    ld a, l
    ret nz

    ld a, [bc]
    ldh [$fe], a
    db $ec
    cp [hl]
    db $e3
    sub b
    ret nz

    db $e4
    inc c
    and d
    add b
    db $e3
    inc hl
    and l
    ld c, $98
    pop bc
    dec sp
    pop bc
    ld a, [bc]
    adc $ff
    pop hl
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    cp l
    xor $ef
    pop bc
    dec c
    ld c, $c1
    ld l, [hl]
    ret nz

    and $00
    and [hl]
    ret nz

    push hl
    dec b
    pop hl
    pop bc
    ldh [$2a], a
    ld a, [hl+]
    ld [bc], a
    cp [hl]
    ld [c], a
    ld a, [hl+]
    cp [hl]
    db $ec
    db $eb
    jp nz, $e0c1

    adc h
    add [hl]
    nop
    add $40
    push hl
    jr nz, @-$3d

    db $e4
    ld a, a
    ld [c], a
    cp [hl]
    ld [c], a
    ld a, [hl-]
    add sp, -$54
    jp $bc0b


    and h
    call z, $44c4
    ld a, [hl-]
    ld [c], a
    ccf
    and h
    ld l, [hl]
    ld a, [hl]
    and d
    call nz, $bce5
    db $e3
    ld l, d
    ld sp, hl
    add $1d
    ld l, e
    ld b, e
    ld [c], a
    dec bc
    ld c, $6e
    ld l, l
    add [hl]
    ld [bc], a
    call nz, $e0c0
    ld [$83c0], sp
    pop bc
    ldh a, [$bf]
    add sp, $6b
    cp a
    ldh [$03], a
    db $e4
    ld l, l
    adc b
    dec h
    add b
    jr nz, jr_06e_4221

    add e
    add c
    add c
    pop de
    and b
    ld b, e
    rst $20
    dec sp

jr_06e_41bf:
    push hl

Call_06e_41c0:
    ld c, d
    ld a, a
    rst $20
    add sp, -$60
    jr nz, jr_06e_41bf

    ld h, a
    ld [hl], d
    add a
    ld b, b
    ldh [$9b], a
    ld h, b
    jp z, Jump_06e_4ba1

    ret nz

    ldh [$cd], a
    and b
    ld [bc], a
    jp nz, Jump_000_2ac1

    push bc
    and b
    ret nz

    db $e3
    ld a, a
    and $73
    and b
    ret nz

    rst $20
    ld l, h
    ld h, d
    ld d, h
    or [hl]
    add h
    ret nz

    and $2b
    ld b, [hl]
    ret nz

    dec hl
    ld b, b
    jp $f84b


    pop hl
    ld h, c
    ld c, d
    or a
    jp $806f


    jp hl


    ldh [$33], a
    and b
    dec hl
    dec hl
    ld a, [$0466]
    pop bc
    ld l, [hl]
    add h
    pop bc
    ld c, e
    ld a, [bc]
    ret nz

    ld c, h
    and b
    ret nz

    ld [c], a
    ld b, h
    and b
    or c
    pop hl
    nop
    ccf
    ldh [$39], a
    db $e3
    add c
    pop hl
    ret nz

    pop hl
    dec [hl]
    ld h, e
    cp [hl]
    adc l
    ld bc, $9f80

jr_06e_4221:
    ret nz

    adc b
    add b
    ldh [$93], a
    add b
    add b
    db $e4
    dec hl
    ret nz

    db $e4
    inc sp
    call nz, $e181
    dec c
    nop
    add b
    rst $20
    dec bc
    pop hl
    ret nz

    xor b
    add c
    add b
    ret nz

    cp $21
    and c
    ld bc, $c088
    and l
    adc b
    nop
    ld [c], a

Call_06e_4245:
    ld e, d
    ld b, b
    ld e, a
    ret nz

    dec hl
    ld c, d
    and b
    inc de
    pop hl
    add b
    db $e3
    dec hl
    ret nz

    ld b, l
    push hl
    ei
    jp $e8c0


    ld [hl], b
    ld c, c
    ld a, [de]
    ld b, [hl]
    ld e, a
    pop bc
    ld a, [bc]
    ld a, [hl+]
    nop
    ld d, c
    pop bc
    adc d
    call nz, $c033
    or $82
    ldh a, [$81]
    dec sp
    add b
    call nz, Call_000_0081
    pop hl
    add b
    ld c, c
    and l
    cp b
    ld b, [hl]
    xor h
    db $e4
    ld b, e
    and b
    ret nz

    pop hl
    ld a, e
    jp nz, $a187

    ld c, e
    nop
    ld bc, $82e5
    add l
    ret nz

    and $fb
    jr z, @+$42

    add sp, -$40
    db $e3
    ret nz

    xor [hl]
    ret nz

    push hl
    nop
    ld a, a
    and c
    ld hl, $8c46
    ld h, l
    or b
    daa
    ld [bc], a
    and b
    ret nz

    db $e3
    rst $38
    rst $28
    cp $88
    jr nz, jr_06e_4321

    ld b, e
    adc h
    ld h, a
    ld h, d
    ld h, $c3
    add c
    sbc b
    ld b, b
    ld c, d
    ld b, [hl]
    add e
    ret nz

    db $f4
    ldh [rNR34], a
    pop bc
    dec sp
    ld b, c
    ldh [rTMA], a
    inc a
    ld b, d
    ld [c], a
    ld bc, $6e0e
    dec bc
    nop
    db $e4
    ld b, c
    add b
    ret nz

    ret nz

    ld hl, sp+$7d
    add c
    ld a, [$9322]
    ld bc, $00eb
    or a
    xor b
    inc c
    add l
    ld h, b
    ld d, d
    ld b, d
    ld c, d
    ld c, d
    ret nz

    ld a, [$e23e]
    ld a, h
    and d
    cp e
    adc h
    ld bc, $a46e
    add c
    sub a
    ld b, c
    ret nz

    ld [$6080], a
    ld c, c
    ld b, d
    cp a
    jp hl


    ld h, [hl]
    jr nz, @+$52

    jr c, jr_06e_4317

    ld l, b
    ld bc, $06ed
    ld h, [hl]

jr_06e_42f9:
    ld b, c
    ld l, e
    call $0b80
    rst $38

Call_06e_42ff:
    ret nz

    inc b
    add d
    add d
    rst $38
    ld b, d
    ld c, e
    adc d
    ld b, b
    call Call_000_3ee2
    add sp, -$65
    ld bc, $267b
    jr c, jr_06e_4352

    ld [bc], a
    add $43
    ld a, a
    ld [c], a

jr_06e_4317:
    ld c, e
    dec bc
    ld l, e
    ret nz

    ld [c], a
    or a
    ret nz

    nop
    dec c
    and d

jr_06e_4321:
    ld [bc], a
    ld b, e
    ret nz

    ld [$415c], a
    db $fd
    jp nz, $a47a

    ld b, b
    add e
    ld c, l
    ld b, b
    inc b
    cp $c4
    bit 0, b
    ld a, [hl+]
    adc l
    add l
    cp l
    ld hl, $20bc
    ei
    add hl, hl
    ld h, $40
    jr c, jr_06e_437a

    jr nz, jr_06e_42f9

    inc b
    ld b, e
    add [hl]
    ld c, [hl]
    ld l, $0b
    add d
    add c
    adc d
    ld [hl+], a
    ld [$4189], sp
    ld b, h
    ld b, b

jr_06e_4352:
    cp b
    pop hl
    ld l, d
    dec b
    ld hl, $28ba
    xor [hl]
    pop hl
    cp [hl]
    db $e3
    ld [$a5f9], sp
    ld b, b
    db $e3
    dec hl
    add b
    dec bc
    pop de
    ld bc, $435e
    call nz, $fbe3
    db $e3
    ld [hl], b
    ld a, h
    ld a, [hl+]
    xor d
    ld h, c
    rst $28
    nop
    and d
    ld hl, $2b0b
    ld c, [hl]
    ld b, e

jr_06e_437a:
    add $00
    ld a, h
    add c
    inc b
    jr nz, @+$62

    ld [hl+], a
    cp a
    db $e3
    cp [hl]
    and $7a
    add d
    jp nz, $b1e7

    ld [c], a
    nop
    daa
    ld [hl+], a
    ld l, l
    nop
    cp c
    and [hl]
    jp $cf04


    ld [bc], a
    adc d
    add c
    ld a, a
    ld h, $ce
    inc bc
    ld b, b
    jp nz, $72e7

    push hl
    ld hl, $2c20
    nop
    or $81
    add b
    ld h, [hl]
    ld c, $bf
    ld [c], a
    nop
    cp [hl]
    ld [c], a
    or [hl]
    and h
    ei
    and $f0
    ld h, h
    add e
    db $e3
    ld a, b
    inc h
    ld hl, sp-$5e
    or l
    ld h, a
    nop
    xor [hl]
    ld b, d
    cp a
    ld [c], a
    ld a, [hl-]
    db $e4

Jump_06e_43c5:
    jp Jump_06e_4802


    add d
    db $76
    daa
    ld [hl], c
    ld [$039f], sp
    ld d, h
    or l
    ld h, l
    ld l, [hl]
    ld b, l
    ld c, [hl]
    dec hl
    add c
    dec c
    ld hl, sp-$3d
    dec bc
    cp [hl]
    ld [bc], a
    nop
    add c
    ld b, h
    jp nz, Jump_000_33ec

    inc bc
    add b
    db $e4
    cp [hl]
    add e
    inc sp
    and l
    cp c
    ret nz

    ld b, b
    nop
    ld h, b
    scf
    ld h, c
    push bc
    and $77
    ld [bc], a
    jp nz, $6aeb

    and c
    dec c
    dec hl
    db $76
    inc h
    adc [hl]
    di
    jr nz, @+$6f

    ld l, l
    ld l, l
    db $f4
    dec h
    rst $30
    and b
    ld a, b
    add c
    dec bc
    ld [bc], a
    inc a
    ld b, d
    ld a, [hl+]
    scf
    nop
    add b
    and c
    jp nz, $81ec

    ld [c], a
    db $76
    ld b, b
    add l
    dec b
    nop
    ld [hl], e
    ld h, h
    xor a
    add e
    cp a
    push hl
    call nz, $fdc6
    rst $28
    sbc b
    add c
    add c
    pop hl
    ret z

    ld h, b
    add b
    inc a
    add d
    cp [hl]
    ld h, l
    inc [hl]
    jr nz, jr_06e_4461

    add b
    dec a
    pop hl
    ld a, l
    add $c1
    push af
    dec hl
    nop
    cp b
    nop
    adc b
    ld h, c
    inc [hl]
    ld h, l
    inc sp
    ld [$2077], sp
    dec e
    add b
    add l
    db $f4
    push bc
    jp $b400


    ret nz

    ld d, e
    ld bc, $e8c0
    xor l
    ld b, h
    ld a, b
    ld b, h
    rst $10
    ld [bc], a
    ret nz

    db $f4
    rst $28
    ld h, e
    nop
    pop bc
    ld [c], a

jr_06e_4460:
    push bc

jr_06e_4461:
    ld [hl+], a
    ret nz

    and [hl]
    or a
    and $75
    ld h, h
    pop bc
    db $f4
    db $fd
    ld b, d
    call nz, Call_000_00c0
    ld b, l
    jp $c4bc


    ld l, l
    add hl, hl
    inc [hl]
    add e
    dec b
    db $f4
    rst $00
    and c
    ret nz

    rst $20
    dec sp
    ld b, [hl]
    nop
    ld l, $04
    db $ec
    inc hl
    inc [hl]
    add [hl]
    jp nz, Jump_000_06f1

    and b
    ld b, l
    and d
    ret nz

    db $e3
    ret z

    add $80
    db $ec
    ld a, [hl+]
    or [hl]
    nop
    inc [hl]
    add h
    rlca
    add l
    cp d
    ld h, b
    jp nz, Jump_06e_73e3

    ld h, c
    ld l, e

Call_06e_44a0:
    inc bc
    dec hl
    dec l
    ld b, b
    db $e4
    ld b, b
    ld b, $6e
    inc b
    scf
    ld b, d
    or $82
    inc [hl]
    add e
    ld [c], a
    cp e
    call nz, $fe4b
    ldh [$c2], a
    db $e4
    add b
    ld [c], a
    dec hl
    dec l
    dec l
    nop
    jr jr_06e_4460

    ret nz

    ret z

    ld a, e
    ld b, e
    ld hl, sp-$19
    inc [hl]
    nop
    or c
    ld h, c
    db $76
    add [hl]
    cp b
    ld b, e
    dec bc
    ld l, e
    dec l
    add b
    db $e3
    ld c, e
    ret nz

    pop hl
    pop bc
    jp $e742


    ret nz

    add sp, $00
    add sp, $20
    or c
    ld h, d
    ld [hl], l
    ld h, b
    pop bc
    push hl
    or $e2
    add b
    db $e3
    dec de
    ld b, b
    inc d
    ld hl, $7b10
    ld bc, $4afd
    ei
    add $b0
    inc h
    dec c
    ld d, d
    jr nz, jr_06e_4553

Call_06e_44f9:
    add c
    ccf
    ld [c], a
    nop
    or $e1
    add d
    pop hl
    inc b
    ld h, b
    add [hl]
    add d
    inc c
    ld hl, $0285
    cp d
    inc hl
    rst $38
    add l
    nop
    ld l, l
    ld b, e
    ld a, e
    and h
    cp c
    and b
    rst $00
    pop bc
    ld de, $bd60
    ld hl, $e3f6
    ld b, e
    and e
    inc b
    ret nz

    pop hl
    add c
    and c
    ld l, $c0
    push hl
    rst $38
    add l
    or d
    ld h, a
    ret nz

    ld [c], a
    sub e
    ld hl, $3c00
    ld h, a
    ld [hl-], a
    ld h, c
    add c
    ld b, e
    push bc
    add d
    ld b, b
    db $e3
    add a
    and h
    add b
    and $32
    ld h, a
    nop
    jr jr_06e_4562

    cp c
    and [hl]
    ld a, $84
    cp e
    jp $a204


    pop bc
    and e
    cp l
    add [hl]
    ld a, d
    xor d
    nop
    ld [hl-], a
    ld h, h

jr_06e_4553:
    rst $10
    jr nz, jr_06e_455e

    pop bc
    ld d, c
    ld b, b
    db $fd
    pop hl
    push af
    push hl
    sub e

jr_06e_455e:
    and b
    push bc
    add e
    adc b

jr_06e_4562:
    rst $00
    add sp, -$0a
    ld a, [c]
    cp a
    ldh [$0d], a
    adc a
    ld bc, $207d
    ld h, c
    and b
    ld l, $00
    ld sp, hl
    pop bc
    ld [hl], d
    ld hl, $e3c1
    ret nz

    push af
    dec hl
    inc hl
    xor c
    inc bc
    pop af
    ld b, b
    cp $e4
    ld bc, $f36e
    db $ec
    rst $00
    add h
    inc a
    jp nz, $cb3b

    ld l, e
    ld [bc], a
    or e
    ld h, h
    daa
    rst $28
    nop
    ld e, $c4
    ld b, $a2
    sub l
    ld b, c
    inc a
    rst $28
    ld a, [hl-]
    and l
    ld [hl], c
    and e
    sbc a
    and l
    inc de
    rst $20
    nop
    ld d, c
    ld h, d
    ld c, c
    ld h, d
    add e
    add $00
    nop
    nop
    db $dd
    and b
    rst $38
    ld [c], a
    reti


    jp c, $f7db

    pop hl
    call nc, $1dd5
    call nc, $e0f0
    call c, $dedd
    ld [$e7e3], a
    db $e4
    ld [$78e3], a
    call c, $fce5
    ld a, [c]
    call $a0e9
    rst $18
    ldh [$e1], a
    or l

Jump_06e_45d0:
    ldh [$80], a
    call z, $b4e2
    db $e4
    xor b
    ld [c], a
    xor c
    db $e4
    or d
    db $e4
    or l
    db $eb
    call $9fe1
    add l
    sbc l
    rst $38
    pop hl
    sbc a
    add $e5
    ld [hl], d
    db $e3
    or h
    add sp, -$57
    ld [c], a
    ld [c], a
    db $fd
    db $e3
    ld a, h
    push af
    sbc a
    sbc h
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, h
    add a
    ld a, l
    sbc h
    sbc a
    ld a, [c]
    db $e3
    or l
    ld [c], a
    ld d, b
    add sp, $70
    db $e4
    db $e4
    rra
    push hl

Jump_06e_4608:
    and b
    sub $d7
    ret c

    dec bc
    ld [c], a
    or l
    rst $20
    ld d, h
    ld [c], a
    rst $38
    sbc [hl]
    ld b, [hl]
    ld a, c
    ld a, [hl]
    ld a, [hl+]
    ld a, [hl+]
    add c
    jp $9c3d


    ld a, c
    ld [c], a
    sbc h
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    or $e3
    ei
    add sp, $06
    and l
    ldh [$e6], a
    rst $20
    db $ed
    jp $c0d8


    or l
    ldh [$d9], a
    add $69
    ldh [$c5], a
    sbc [hl]
    pop bc

Jump_06e_4639:
    ldh [rNR41], a
    ret nz

    ldh [$c7], a
    ldh [rIE], a

Call_06e_4640:
    pop hl
    xor [hl]
    xor a
    nop
    ld hl, sp-$1c
    ld a, [c]
    ld [c], a
    or $e3
    ld h, h
    db $e3
    and c
    push bc
    or l
    ldh [$99], a
    add $69
    ldh [rIE], a
    sbc [hl]
    add d
    add e
    cpl
    ld a, [hl+]
    add e
    add h
    jp $c7ee


    db $e4
    xor a
    xor [hl]
    xor a
    cp b
    ldh [rLYC], a
    ld b, e
    xor a
    adc a
    ccf
    ld b, c
    ld b, e
    ld b, l
    xor h
    ld [c], a
    xor a
    ldh [$64], a
    ldh [$9f], a
    ld hl, sp-$5f
    jp $cc76


    ld l, c

jr_06e_467a:
    ldh [$9e], a
    add l
    add a
    adc b
    adc b
    db $e3
    add a
    add l

Jump_06e_4683:
    adc b
    ldh [$c7], a
    pop hl
    cp a
    ldh [$3f], a
    scf
    dec a
    rst $38
    dec a
    jr c, jr_06e_46cb

    dec [hl]
    dec [hl]
    dec [hl]
    dec sp
    jr c, jr_06e_4715

    scf
    xor a
    ccf
    ccf
    ld b, c
    ld b, l
    xor a
    ld h, l
    pop hl
    ld hl, sp-$20
    call nz, $c9e6
    ld hl, $9fc3
    ret nc

    jp $aec3


    inc e
    add d
    pop hl
    adc b
    ld [c], a
    ccf
    scf
    jr c, jr_06e_467a

    ldh [$c4], a
    ldh [rIE], a
    pop hl
    ld e, $f6
    ld [c], a
    dec [hl]
    jr c, jr_06e_46fc

    scf
    ld l, l
    pop hl
    sbc a
    ret nz

    dec a
    call $c9a6
    and e
    db $d3
    ret nc

jr_06e_46cb:
    add h
    pop hl
    ld [$45e1], sp
    jp Jump_000_38e2


    ld e, a
    dec a
    dec a
    scf
    ld b, c
    ld b, e
    rst $38
    pop hl
    ld b, c
    db $76
    push hl
    ld b, e
    jr c, jr_06e_4718

    dec [hl]
    ldh [$7e], a
    db $eb
    cpl
    ret nz

    rrca
    push bc
    jp nc, $e3c1

    sbc c
    xor a
    add l
    ldh [$94], a
    ldh [rSTAT], a
    ld b, l
    add $c6
    xor a
    pop bc
    ld b, l
    ld a, l
    ld b, e
    ld l, [hl]

jr_06e_46fc:
    ld [c], a
    ld [hl], $45
    xor a
    xor [hl]
    sbc [hl]
    set 4, e
    add sp, $38
    jp $c47a


    dec hl
    pop bc
    sbc [hl]
    set 0, c
    xor [hl]
    xor a
    ld [hl], $e2
    sbc c
    pop hl
    ld b, e

jr_06e_4715:
    set 0, b
    rst $38

jr_06e_4718:
    db $ed
    ld l, c
    ld [c], a
    add hl, sp
    xor [hl]
    xor a
    and c
    sbc [hl]
    ld b, l
    jp $a30c


    ld a, d
    call nz, $81ff
    sbc [hl]
    adc d
    ret nz

    ld b, [hl]
    cp $c1
    ldh [$36], a
    ld c, b
    ld c, [hl]
    ld c, c
    ld c, h
    ld c, h
    ld c, c
    db $db
    ld c, [hl]
    ld c, b
    cp l
    db $ed
    ld b, l
    ld [hl], $c0
    ldh [$af], a
    ret nc

    pop bc
    sbc a
    ld b, l
    jp $aa0c


    call z, $c081
    ldh [$dd], a
    pop hl
    ld [hl], $47
    sbc e
    ld h, b
    ld h, c
    rst $38
    ld [c], a
    ld h, b
    ld c, c
    cp [hl]
    db $eb
    pop bc
    pop hl
    ld [hl], $e7
    ld b, l
    ret nc

    db $d3
    reti


    adc c
    call z, $9e89
    ld b, [hl]
    xor [hl]
    db $e4
    pop bc
    jp hl


    cp [hl]
    pop hl
    ld b, a
    ei
    rst $00
    nop
    ld [c], a
    ld [hl], $45
    ld b, [hl]
    ld sp, $bbd2
    adc e
    ld [hl-], a
    and d
    sub e
    add d
    sbc a
    sbc h
    inc b
    pop hl
    pop bc
    jp hl


    ld [$e079], a
    ld d, d
    cp d
    add $39
    or $a0
    ld a, [hl-]
    xor [hl]
    ld b, [hl]
    add e
    ret nc

    sbc a
    nop
    and e
    ld a, c
    add l
    ld a, [hl+]
    add [hl]
    pop bc
    ld a, [c]
    cp a
    add sp, $45
    dec b
    ld a, [hl-]
    inc bc
    ld [c], a
    db $d3
    call nc, Call_000_2163
    add e
    ld [hl], d
    add b
    db $d3
    ld h, d
    ld l, d
    add b
    db $fc
    add c
    add b
    add [hl]
    ret nz

    ld a, [hl-]
    ld c, d
    ld h, b
    ld d, h
    ld e, c
    ld d, h
    inc [hl]
    ld bc, $f8e2
    push hl
    ld d, l
    ld a, a
    rst $20
    inc a
    ld b, h
    ld b, d

Jump_06e_47c0:
    pop hl
    and c
    ld l, b
    ldh a, [$72]
    add b
    db $d3
    ld h, d
    ld bc, $a2a1
    jp $564b


    ld b, l
    ld b, [hl]
    dec de
    ld b, l
    ld d, [hl]
    ld b, a
    db $e3
    ld b, l
    ld d, d
    cp b
    pop bc
    rst $28
    ldh [$bd], a
    add e
    ccf
    ld b, d
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    sbc [hl]
    ret z

    push bc
    and b
    ld h, d
    ld hl, sp-$43
    add l
    ld bc, $1fa1
    pop hl
    inc a
    ld c, d
    ld h, b
    ld d, l
    ld b, l
    ld h, a

jr_06e_47f5:
    ld b, l
    ld b, [hl]
    ld c, a
    jp z, $f8e1

    ldh [rHDMA1], a
    ld e, [hl]
    ld [hl], a
    pop bc
    ld l, e
    ld e, h

Jump_06e_4802:
    ld d, b
    ld a, e
    and b
    ld d, b
    pop bc
    and c
    add hl, sp
    ld b, [hl]
    ret nz

    pop hl
    db $ec
    dec b
    adc d
    rla
    ld h, [hl]
    sbc [hl]
    xor [hl]
    jr nz, jr_06e_47f5

    ld a, [hl-]
    ld c, a
    ld h, c
    ld l, l
    ld e, h
    ret nz

    db $e3
    ld e, d
    ld b, [hl]
    cp b
    ldh [rLY], a
    ld c, l
    ccf
    ld [c], a
    ld a, a
    ld e, a
    ld c, h
    ld c, h
    ld c, h
    ld e, l
    ld d, [hl]
    ld a, [hl-]
    add c
    pop hl
    ret c

    add b
    ldh [rTIMA], a
    adc l
    ret


    ld b, h
    sbc [hl]
    xor a
    ldh [$c0], a
    ld a, $4b
    ld b, e
    ld e, b
    ld b, h
    ld [bc], a
    add b
    ret nz

    ld [c], a
    ld a, [$c060]
    db $e3
    ld e, d
    cp d
    ld [c], a
    dec bc
    ld e, b
    ld a, $81
    ldh [$ae], a
    add b
    db $e4
    dec b
    add d
    ld a, b
    ld h, l
    ld b, c
    ld h, h
    xor l
    ret nc

    ld e, a
    ret nz

    ld a, $4d
    ret nz

    ld sp, hl
    ld b, b
    xor h
    ld h, b
    sbc [hl]
    add sp, -$37
    rst $20
    ld [hl], b
    ld c, b
    dec l
    ld h, c
    jp nc, $c05f

    ld a, $4d
    ld h, c
    ld c, c
    ld e, h
    add b
    add sp, $00
    db $e3
    ld e, d
    ld a, [$40c2]
    ldh [$39], a
    xor h
    ld h, b
    sub c
    sbc [hl]
    ld l, $47
    add hl, de
    ld c, b
    ld [bc], a
    and e
    add hl, sp
    ret nz

    pop hl
    ld d, c
    ret nz

    ld b, l
    push af
    ld c, e
    adc d
    call nz, Call_000_374a
    and d
    ld e, d
    ld b, e
    ld e, e
    ld e, e
    daa
    ld e, e
    ld b, e
    ld b, e
    inc hl
    ret nz

    cp [hl]
    ld h, b
    sbc [hl]
    ld [c], a
    daa
    ld a, b
    ld h, l
    inc e
    ld d, $40
    ld [bc], a
    and d
    xor [hl]
    ld b, h
    inc a
    add b
    ldh [$87], a
    ret nz

    nop
    and d
    db $10
    ld b, b
    pop bc
    cp b
    ldh [rP1], a
    pop hl
    jp Jump_000_3986


    nop
    pop hl
    ld [c], a
    inc hl
    ei
    dec hl
    cp d
    ld [bc], a
    and d
    xor a
    ret nz

    ld [c], a
    ld h, c
    ld c, c
    ld c, c
    pop bc
    add e
    ld c, c

jr_06e_48ce:
    ld sp, $f74e
    db $e4
    ret nz

    db $e4
    ld a, a
    and b
    ld a, [hl-]
    xor a
    jp $b967


    ld h, $86
    ld b, c
    ld h, l
    sbc h
    xor [hl]
    ld b, b
    ld [c], a
    rst $38
    rst $28
    ret nz

    push hl
    cp $80
    add hl, sp
    ld bc, $7caf
    ld b, d
    adc h
    ld h, a
    or c
    ld [hl+], a
    ld a, [bc]
    ld hl, $81c3
    ret nz

    ret nz

    ld c, [hl]
    db $e3
    nop
    ret nz

    db $f4
    ld a, a
    ldh [$6c], a
    ld h, b
    sbc a
    jr nz, jr_06e_490a

    ld b, a
    db $fc
    ld hl, $2116
    ld [bc], a

jr_06e_490a:
    and e
    inc bc
    dec [hl]
    ld a, $86
    and b
    ld a, [hl]
    xor $ff
    add [hl]
    ld a, a
    pop hl
    ld a, [$0622]
    ld b, e
    ld h, b
    sbc $01
    db $fc
    dec h
    ld [bc], a

jr_06e_4920:
    and e
    pop bc
    add c
    ccf
    db $ec
    ld d, a
    ld d, a
    ld l, $c2
    ld b, b
    ld a, a
    rst $20
    ld [$7c20], a
    and c
    jp $83a8


    add e
    ld hl, $3880
    call z, Call_06e_4640
    ccf
    ld [$5354], a
    db $fd
    jr nz, jr_06e_48ce

    ld b, b
    ld a, a
    add sp, $40
    ld h, [hl]
    jr nz, @+$4a

    db $dd
    ld bc, $a8c3
    add e
    add e
    ld a, [hl-]
    and l
    ld b, b
    push bc

jr_06e_4952:
    add b
    ld c, d
    ld c, h
    add e
    ld hl, $8655
    add e
    call z, $ca61
    add c
    inc a
    dec h
    ld b, h
    inc a
    and c
    ld a, e
    jp nz, $038c

    ld l, b
    add e
    add d
    ld b, h
    inc a
    inc hl
    add b
    add l
    add b
    ld b, h
    add d
    ld e, b
    ld c, e
    ld b, h
    ld b, h
    add [hl]
    add c
    ld e, d
    adc h
    ld h, d
    ret nz

    jp hl


    add hl, sp
    cp h
    and c
    ld b, $27
    jr nz, jr_06e_4920

    sbc a
    dec sp
    add c
    cp c
    daa
    add b
    db $e4
    rst $00
    ld bc, $e286
    ld bc, $8655
    and d
    inc a
    add b
    ld b, b
    db $eb
    ld [hl], b
    pop hl
    inc [hl]
    jr nz, jr_06e_4952

    ld b, $c3
    adc b
    adc b
    ld hl, $bf61
    ld [c], a
    bit 4, d
    ld h, b
    ld a, [hl]
    ld b, e
    inc bc
    ld h, a
    cp l
    inc hl
    ld b, a
    jp Jump_000_3c55


    ld a, e
    ld [hl+], a
    and [hl]

Jump_06e_49b4:
    nop
    ld sp, hl
    and h
    ld b, d
    dec h
    jp nc, Jump_000_2146

    xor [hl]
    inc h
    ld b, b
    ld h, c
    ld hl, $648a
    ld a, $43
    ld c, c
    ld [hl-], a
    add c
    pop bc
    rst $20
    and a
    ld h, b
    ld d, l
    ld b, c
    add sp, $02
    add hl, sp
    ld hl, $fa9c
    ld l, d
    sbc a
    inc sp
    ret nc

    xor a
    dec bc
    ld [hl+], a
    inc a
    pop hl
    ld b, l
    ld d, e
    rst $38
    ld b, e
    add c
    ret nz

    dec e
    ld e, e
    ld b, h
    add sp, $48
    ld c, c
    ld h, b
    ld [hl], e
    ld b, d
    ld a, d
    inc hl
    ld a, [hl-]
    pop bc
    db $ec
    inc bc
    call nz, Call_000_2201
    db $d3
    ret nc

    ld h, b
    inc hl
    jr c, jr_06e_4a32

    ccf
    sub [hl]
    rst $38
    ld b, b
    ld d, e
    ld e, c
    rst $38
    ldh [rHDMA3], a
    rst $38
    ld [$e1c2], sp
    ld d, h
    add b
    rst $28
    push hl
    db $76
    ld b, b
    or $40
    scf
    ld [$61ed], sp
    cp a
    pop hl
    add a
    inc bc
    jr c, jr_06e_4a3b

    dec a
    ld c, d
    jp hl


    add l
    ld [c], a
    or l

Jump_06e_4a20:
    add c
    di
    ret z

    ld a, $7f
    db $e4
    or l
    ld h, l
    inc d
    or [hl]
    ld h, d

Jump_06e_4a2b:
    cp a
    ld [c], a
    xor [hl]
    ld a, [hl-]
    db $e3
    ld b, e
    ret nz

jr_06e_4a32:
    nop
    call $c840
    ld b, c
    inc hl
    ld c, b
    ld c, [hl]
    ld a, b

jr_06e_4a3b:
    add d
    add e
    and $c0
    db $e4
    ld a, $79
    and c
    ld a, [hl]
    ld h, c
    db $fc
    or l
    ld b, c
    or $03
    db $d3
    pop de
    pop de
    ret nc

    xor a
    xor [hl]
    ld l, [hl]
    cp [hl]
    ld [c], a
    dec sp
    add hl, sp
    ld c, a
    call Call_06e_4b40
    ld c, e
    ret z

    ld b, b
    add b
    db $f4
    ld [bc], a
    jp nz, $b6ea

    inc hl
    add hl, sp
    and c
    cp [hl]
    ld bc, $81be
    or $06
    db $d3
    xor a
    ret nc

    xor a
    xor a
    xor [hl]
    sub [hl]
    ld hl, $783e
    and c
    ld e, b
    ld c, [hl]
    or d
    add c
    ld d, a
    ld d, a
    ld d, h
    or $ca
    ld [hl], $23
    ld [hl], $37
    ld hl, $f680
    ld [hl+], a
    cp [hl]
    add l
    inc l
    ld b, e
    cp c
    ret nz

    rst $18
    add b
    sub l
    ld b, b
    cp l
    pop bc
    ld d, e
    db $10
    ld b, a
    ld h, b
    dec a
    ldh [$3a], a
    ld c, $15
    and c
    xor a
    cp b
    inc bc
    or l
    ld l, b
    inc l
    ld b, e
    ld b, d
    ld a, b
    ret nz

    xor [hl]
    ldh [$c0], a
    reti


    add b
    cp $f5
    ld e, l
    ld bc, $8145
    ld [c], a
    ld h, b
    cp c
    ld h, a
    or e
    ld bc, $8035
    ld a, c
    ld bc, $e03d
    xor [hl]
    ld a, $17
    jr nz, @+$04

    pop bc
    ld a, [$b846]
    ld bc, $27ba
    ld [hl], e
    ld h, h
    jr c, jr_06e_4b12

    ld [hl], a
    ld h, b
    ret nz

    rst $30
    dec b
    ld b, l
    ld a, [$4602]

jr_06e_4ad7:
    pop bc
    pop hl
    dec b
    rst $20
    db $ed
    ld [hl+], a
    cpl
    ld bc, $4238
    rst $18
    xor a
    ld b, d
    dec [hl]
    dec [hl]
    ld b, d
    ld b, e
    or $40
    inc a
    nop
    ld b, l
    ret nz

    pop bc
    ld [c], a
    db $fd
    rlca
    or [hl]
    ld h, $38
    ld b, d
    inc [hl]
    add b
    inc c
    adc c
    inc b
    db $ec
    ld [bc], a
    ret nz

    ld [c], a
    jp nc, $227a

    ld a, l
    ld b, [hl]
    db $ed
    ld a, [hl+]
    inc [hl]
    add d
    push de
    ld bc, $cfc6
    nop

Call_06e_4b0d:
    sbc $81
    db $db
    jr nz, jr_06e_4ad7

jr_06e_4b12:
    and l
    dec sp
    ld b, [hl]
    ld l, $04
    scf
    ld b, h
    inc [hl]
    add a
    jp nz, Jump_000_1fef

    dec [hl]
    inc a
    ld b, h
    dec [hl]
    ld a, [hl-]
    push bc
    and l
    ret z

    rst $00
    db $ec
    ld a, [hl+]
    jp $d0d3


Call_06e_4b2c:
    or h
    ld b, c
    inc [hl]
    add d
    jp nz, $9eed

    ld b, b
    add hl, sp
    dec [hl]
    ld bc, $7a3c
    ld h, $bc
    ld l, b
    add hl, sp
    and c
    scf
    ld b, c

Call_06e_4b40:
    ld sp, $bfa1
    ldh [rNR30], a
    add d
    ld [hl], c
    ld b, h
    ld c, e
    and [hl]
    jp nz, Jump_000_08e5

    and b
    ld a, $35
    inc a
    ld a, d
    ld bc, $ffe0
    db $ed
    db $f4
    ld h, l
    db $ec
    ld h, d
    ld a, [hl]
    ldh [$b1], a
    ld h, c
    ld b, b
    jr c, jr_06e_4b9e

    ld d, $ff
    db $e3
    ld b, h
    ld b, b
    add h
    ld [c], a
    and e
    or e
    ld b, c
    db $e4
    ret nz

    ld a, d
    ld bc, $7d00
    ld hl, $09fc
    rst $30
    dec h
    cp d
    and e
    ld hl, sp-$80
    pop de
    ld bc, $80d8
    ld c, h
    db $e3
    ld [hl], $f6
    push hl
    dec [hl]
    ld [hl], $6e
    ld b, b
    add hl, sp
    xor a
    dec b
    and b
    add h
    ld l, b
    add b
    rst $30
    pop af
    jr nc, @+$62

    pop de
    nop
    ld b, c
    ld b, d
    adc h
    pop hl
    or $e1
    add d
    pop hl
    ld [hl], $18

jr_06e_4b9e:
    push bc
    ld h, c
    ld b, c

Jump_06e_4ba1:
    pop bc
    add a
    dec h
    sub $d7
    or h
    rlca
    dec l
    push bc
    and l
    ld hl, $9efd
    ld a, [de]
    ld b, b
    add hl, sp
    dec [hl]
    ld [hl], $37
    jr c, @+$3d

    rlca
    dec sp
    jr c, @+$39

    and $40
    or $e4
    ld e, e
    ld hl, $6245
    ld b, b
    dec h
    ld h, e
    reti


    jp c, Jump_000_0772

    xor l
    dec h
    ld a, e
    and e
    xor [hl]
    xor a
    add hl, de
    add b
    sub d
    ld [hl-], a
    ld h, b
    ld b, c
    add a
    jp $e2f6


    dec a
    sbc $41
    ld b, e
    and b
    sbc a
    ld b, $86
    ld h, [hl]
    call c, $fddd

Jump_06e_4be5:
    ld b, a
    cp d
    and l
    ld a, e
    and c
    or b
    ld b, b
    jr @-$7c

    ld [hl], $8a
    jp Jump_000_3b3b


    or $e5
    jr c, jr_06e_4c2e

    add [hl]
    add b
    push bc
    add b
    add [hl]
    ld b, c
    dec h
    rst $18
    ldh [$3d], a
    rst $00
    cp d
    ld h, l
    or d
    ld h, d
    or b
    ld b, c
    xor [hl]
    ld a, [hl-]
    ld b, c
    ldh [$35], a
    ld b, b
    ldh [rSTAT], a
    ld b, e
    ld b, e
    ld a, d
    ldh [$f5], a
    ld [c], a
    jp $ae45


    add [hl]
    add d
    ld b, c
    add hl, hl
    cp b
    call nc, Call_06e_62b6
    ld b, l
    ld b, e
    dec b
    ccf
    pop bc
    ld h, b
    ret nc

    daa
    ld h, b
    push af
    db $e4
    ld b, a
    add e

jr_06e_4c2e:
    ld c, [hl]
    ld l, b
    ld a, a
    xor e
    nop
    ld a, [hl+]
    ret


    pop af
    ld b, b
    cp $e4
    dec d
    add b
    di
    ld [$c506], a
    add b
    inc h
    cp d
    xor l
    nop
    add sp, -$5f
    push hl
    ld [$4559], a
    ld d, l
    xor c
    call nz, $fca1
    xor a
    xor [hl]
    ld hl, $626d
    nop
    or a
    and $21
    adc d
    db $e4
    and $49
    ld h, e
    add b
    ld [hl+], a
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
    add hl, de
    dec b
    ld [bc], a
    ld bc, $0612
    ld [bc], a
    ld [bc], a
    jr jr_06e_4c8f

    ld [bc], a
    inc bc

Jump_06e_4c8b:
    ld a, [de]
    ld b, $02
    inc b

jr_06e_4c8f:
    jr nz, @+$08

    ld [bc], a
    dec b
    ld a, [hl+]
    ld b, $02
    ld b, $11
    rlca
    ld [bc], a
    rlca
    inc de
    rlca
    ld [bc], a
    ld [$0719], sp
    ld [bc], a
    add hl, bc

Jump_06e_4ca3:
    ld h, $07
    ld [bc], a
    ld a, [bc]
    dec hl
    rlca
    ld [bc], a
    dec bc
    db $10
    ld [$0c02], sp
    ld [de], a
    ld [$0d02], sp
    dec l
    ld [$0e02], sp
    dec c
    add hl, bc
    ld [bc], a
    rrca
    rrca
    add hl, bc
    ld [bc], a
    db $10
    ld de, $0209
    ld de, $0a0c
    ld [bc], a
    ld [de], a
    ld c, $0a
    ld [bc], a
    inc de
    db $10
    ld a, [bc]
    ld [bc], a
    inc d
    ld [de], a
    ld a, [bc]
    ld [bc], a
    dec d
    ld sp, $020a
    ld d, $0d
    dec bc
    ld [bc], a
    rla
    rrca
    dec bc
    ld [bc], a
    jr @+$13

    dec bc
    ld [bc], a
    add hl, de
    ld [hl-], a
    dec bc
    ld [bc], a
    ld a, [de]
    ld c, $0c
    ld [bc], a
    dec de
    db $10
    inc c
    ld [bc], a
    inc e
    ld sp, $020c
    dec e
    dec c
    rrca
    ld [bc], a
    ld e, $0c
    db $10
    ld [bc], a
    rra
    ld l, $10
    ld [bc], a
    jr nz, jr_06e_4d0b

    ld de, $2102
    add hl, bc
    dec d
    ld [bc], a
    ld [hl+], a
    dec l
    ld d, $02
    inc hl

jr_06e_4d0b:
    inc l
    rla
    ld [bc], a
    inc h
    ld l, $17
    ld [bc], a
    dec h
    dec l
    jr jr_06e_4d18

    ld h, $0a

jr_06e_4d18:
    ld a, [de]
    ld [bc], a
    daa
    dec l
    ld a, [de]
    ld [bc], a
    jr z, jr_06e_4d4e

    dec de
    ld [bc], a
    add hl, hl
    ld a, [bc]
    inc e
    ld [bc], a
    ld a, [hl+]
    add hl, bc
    dec e
    ld [bc], a
    dec hl
    jr nc, jr_06e_4d4b

    ld [bc], a
    inc l
    ld [hl-], a
    jr nz, @+$04

    dec l
    ld sp, $0221
    ld l, $33
    ld hl, $2f02
    ld [hl-], a
    ld [hl+], a
    ld [bc], a
    jr nc, jr_06e_4d74

    inc hl
    ld [bc], a
    ld sp, $2508
    ld [bc], a
    ld [hl-], a
    ld c, $29
    ld [bc], a
    inc sp

jr_06e_4d4b:
    rrca
    ld a, [hl+]
    ld [bc], a

jr_06e_4d4e:
    inc [hl]
    db $10
    ld a, [hl+]
    ld [bc], a
    dec [hl]
    ld de, $022b
    ld [hl], $37
    dec hl
    ld [bc], a
    scf
    ld [de], a
    dec l
    ld [bc], a
    jr c, jr_06e_4d96

    dec l
    ld [bc], a
    add hl, sp
    inc de
    ld l, $02
    ld a, [hl-]
    ld [de], a
    cpl
    ld [bc], a
    dec sp
    inc sp
    inc [hl]
    ld [bc], a
    inc a
    inc [hl]
    dec [hl]
    ld [bc], a
    dec a
    rla

jr_06e_4d74:
    ld [hl], $02
    ld a, $33
    ld [hl], $02
    ccf
    jr jr_06e_4db5

    ld [bc], a
    ld b, b
    rla
    add hl, sp
    ld [bc], a
    ld b, c
    add hl, de
    add hl, sp
    ld [bc], a
    ld b, d
    jr jr_06e_4dc3

    ld [bc], a
    ld b, e
    jr nc, jr_06e_4dc8

    ld [bc], a
    ld b, h
    dec de
    inc a
    ld [bc], a
    ld b, l
    cpl
    inc a
    rst $38

jr_06e_4d96:
    rst $38
    rst $38
    and b
    ld c, l
    ld a, c
    ld d, c
    rst $08
    ld d, [hl]
    ld [$dd56], a
    dec c
    rst $38
    ld a, [$0e0e]

Call_06e_4da6:
    ld c, $f1
    xor $0e
    ld c, $01
    ld l, $dd
    pop af
    jp hl


    and $cd
    jp hl


    ret nz

    jp hl


jr_06e_4db5:
    ret z

    ldh [$b1], a
    db $e4
    cp [hl]
    ld [$ac98], a
    db $e4
    cp [hl]
    rst $20
    db $f4
    db $e3
    ld c, [hl]

jr_06e_4dc3:
    ld c, [hl]
    sbc d
    pop hl
    add b
    pop af

jr_06e_4dc8:
    dec c
    ld a, b
    add b
    ldh a, [rBCPS]
    ld [c], a
    add b
    add sp, $0e
    ld l, [hl]
    ld a, [bc]
    ld a, [hl+]
    cp a
    pop hl
    ldh a, [rLCDC]
    ldh a, [$2e]
    db $eb
    add b
    jp hl


    add hl, bc
    add sp, $6e
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    pop hl
    ld c, d
    ld a, [hl]
    ld [c], a
    db $10
    ldh a, [$d0]
    reti


Call_06e_4deb:
    call Call_000_2be4
    ld a, [bc]
    ld a, [bc]
    rlca

jr_06e_4df1:
    ld a, [bc]
    ld c, d
    dec bc
    ld a, $e3
    adc $c3

jr_06e_4df8:
    or [hl]
    add $80
    rst $28
    or c
    jp z, $8180

Call_06e_4e00:
    push hl
    cp a
    pop hl
    ld a, $e3
    db $10
    db $e3
    or [hl]
    bit 5, d
    call z, $ebbe
    ld c, $01
    ld l, [hl]
    add c
    pop hl
    ld a, a
    pop hl
    cp h
    ret nz

    adc c
    rst $20
    ret nz

    push af
    adc d
    push bc
    ld b, c
    push bc
    daa
    ld c, [hl]
    ld l, [hl]
    dec bc
    add c
    ld [c], a
    cp a
    ld [c], a
    ld c, [hl]
    ld [hl], $d3
    cp c
    rst $08
    sub [hl]
    jr nz, jr_06e_4df1

    ld c, [hl]
    ld c, [hl]
    jp nz, Jump_000_0be0

    add c
    db $e3
    cp $c1
    dec bc
    nop
    cp [hl]
    ldh [$36], a
    jp $d679


    add sp, -$3a
    call c, $86c0
    ldh [$fe], a

Jump_06e_4e46:
    pop hl
    rst $38
    and $03
    ld a, [hl+]
    ld a, [hl+]
    ldh a, [$e2]
    ld [hl], a
    add $97
    xor b
    ret nz

    xor $4a
    call nz, $e0fe
    nop
    ld a, [$c2e1]
    ld [c], a

jr_06e_4e5d:
    cp a
    ld [c], a
    xor $e0
    push af
    and d
    call $80ea
    xor d
    and $a6
    dec de
    ld c, d
    ld c, d
    adc c
    db $e4
    ld c, e
    ld l, e
    ld a, [$f5e6]
    jp $a467


    jr jr_06e_4df8

    or c
    and [hl]
    xor b
    ret nc

    and $0b
    dec hl
    or [hl]
    pop hl
    ld a, [$b0e3]
    ld [c], a
    ret c

    push hl
    add [hl]
    add a
    jp z, $8cd7

    ld c, [hl]
    ld l, $8f
    db $e4
    dec bc
    dec bc
    db $ed
    ld c, e
    ret nz

    and c
    ld l, e
    dec hl
    jr c, jr_06e_4e5d

    ld a, [hl+]
    ld c, e
    ld c, $89
    ld l, [hl]
    ret nz

    rst $38
    ld h, [hl]
    add c
    dec bc
    ld c, [hl]
    db $e3
    adc c
    ret nz

    ld [hl], $e1
    dec hl
    ld h, b
    ret nz

    db $e3
    pop bc
    rst $20
    ld sp, $3389
    and $01
    xor b
    ld c, $0b
    cp a
    db $e4
    inc bc
    ld c, e
    ld l, e
    push af
    pop bc
    ld a, [$82e3]
    db $e4
    ret


    sub d
    ld b, c
    adc e
    dec b
    pop bc
    ld c, e
    dec bc
    ld l, e
    cp h
    ret nz

    ld l, d
    cp $a2
    ld a, [$0ae3]
    ld b, e
    db $e4
    jr nz, jr_06e_4ee8

    ret z

    adc a
    add $ad
    ld l, b
    db $10
    add b
    ld c, d
    and d
    ld a, [hl+]
    ld b, [hl]
    ld [c], a
    ld b, b
    add $80
    or h

jr_06e_4ee8:
    pop bc
    inc bc
    ret


    or a
    add a
    add b
    db $eb
    ld c, h
    and b
    adc l
    add b
    rrca
    pop bc
    ld a, [bc]
    ret nz

    add e
    and l
    ld [hl], l
    push bc
    ret nz

    db $e4
    dec l
    ld [hl], l
    ld de, $4d83
    and [hl]
    ld a, [hl+]
    ld c, e
    ldh [$fb], a
    and l
    inc [hl]
    add $78
    ld l, h
    db $fc
    ld c, a
    pop bc
    rst $20
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    ret nc

    ld b, d
    xor b
    ld a, e
    add h
    jr c, @+$72

    db $fc
    ld c, e
    ld c, $c1
    and $4b
    dec c
    add c
    dec bc
    ret nz

    db $ed
    add b
    add sp, -$79
    ld c, c
    push af
    jp hl


    ld de, $4984
    and b
    dec bc
    ld bc, $760d
    and $80
    rst $20
    ld hl, sp+$48
    ld b, l
    ld c, e
    ld a, [bc]
    add $82
    add sp, $05
    add e
    rlca
    ld a, [hl+]
    ld a, [hl+]
    dec c
    or h
    ldh [$3f], a
    jp hl


    adc e
    db $ed
    ret nz

    ldh a, [$82]
    ldh [rNR32], a
    ld b, c
    db $e4
    ld [hl], a
    pop hl
    ld a, [bc]
    dec hl
    dec c
    ld [hl], d
    and l
    ld a, [hl-]
    ld h, e
    jr c, jr_06e_4fac

    ld e, b
    add b
    db $eb
    ld b, e
    ldh [rSB], a
    ldh [rWY], a
    ld c, d
    cp e
    ret nz

    dec hl
    dec a
    and c
    rlca
    dec c
    dec c
    dec hl
    ld a, a
    add d
    ret nz

    or $c1
    add $81
    push hl
    sub c
    ld h, b
    ld b, $fe
    add b
    dec c
    dec hl
    cp d
    ld h, b
    ld [hl], $a0
    ld [hl], d
    ldh [rHDMA5], a
    jr nz, jr_06e_4fef

    ldh [$90], a
    add b
    and $01
    ld b, [hl]
    ret nz

    pop af
    ld c, c
    ld h, d
    ld a, [hl+]
    adc c
    ld [c], a
    cp b
    pop hl
    ld c, e
    dec d
    ld c, e
    ld [hl-], a
    ldh [$2e], a
    ld l, h
    add b
    dec bc
    add e
    add b
    add hl, hl
    ld b, l
    ret nz

    db $f4
    ld h, h
    ret


    ld h, d
    adc h
    ld b, l
    dec c
    ld c, d
    add b

jr_06e_4fac:
    ret nz

    pop hl
    dec c
    dec l
    ret nz

    pop hl
    inc hl
    dec c
    ld c, [hl]
    add e
    add [hl]
    ret z

    ld d, l
    add hl, bc
    add d
    ld a, [hl+]
    call z, Call_06e_4245
    db $e4
    ld b, $82
    ldh [$0d], a
    dec l
    push bc
    add sp, $45
    or l
    cp a
    push hl
    rst $08
    ld h, c
    ld b, [hl]
    add d
    ld h, b
    ei
    jp nz, Jump_06e_407d

    add c

jr_06e_4fd5:
    db $e4
    daa
    rla
    ld a, [hl]
    jp hl


    ld c, $2e
    ld c, l
    ld b, l
    add hl, de
    dec bc
    inc bc
    ldh [$bf], a
    ld h, d
    dec l
    dec l
    add c
    and $cb
    ld l, c
    push af
    dec b
    db $10
    rst $08
    dec c

jr_06e_4fef:
    push bc
    ld b, h
    cp l
    and h
    ccf
    ld h, b
    dec bc
    ret z

    pop bc
    sub h
    and $02
    jr z, jr_06e_501d

    inc [hl]
    ld c, d
    ld d, b
    ld b, $85
    ld b, h
    jp nz, $40c0

    ld [c], a
    ld c, e
    adc $80
    ret z

    add $00
    ret nz

    add sp, -$7b
    ld d, e
    add b
    and $85
    jr nz, jr_06e_4fd5

    add b
    add d
    jp nz, $ad55

    ld c, d
    rrca

jr_06e_501d:
    nop
    ld [hl], l
    jp hl


    ld b, b
    db $e4
    cp h
    and h
    add e
    and c
    ld b, h
    rlca
    rst $08
    xor [hl]
    inc a
    sub b
    dec b
    ld b, h
    nop
    cp $82
    add d
    and c
    add b
    db $e3
    ret nz

    rst $20
    rst $38
    db $10
    add a
    ld a, [bc]
    db $fc
    and e
    cp [hl]
    add e
    nop
    ld b, d
    jp nz, Jump_06e_648a

    call z, Call_000_39a4
    ld bc, $8b46
    cp b
    dec hl
    ld e, b
    and d
    ld c, b
    db $e3
    ld bc, $416b
    pop bc
    pop bc
    ret nz

    dec c
    ld c, [hl]
    jp nz, Jump_06e_406a

jr_06e_505b:
    xor d
    push de
    jp nz, $e1bf

    add d
    ld e, d
    ld h, b
    ld l, $c0
    db $e3
    dec bc
    ld h, h
    reti


    add hl, bc
    dec a
    ld h, $77
    or h
    ld c, [hl]
    ld d, $4e
    jp nz, Jump_06e_6b0e

    ld b, $c0
    ld l, e
    add c
    push bc
    sub b
    ld l, e
    rst $00
    or c
    inc b
    db $ed
    ld c, l
    dec a
    jr nz, jr_06e_50ce

    cp l
    ldh [rSTAT], a
    jp Jump_06e_6e90


    or [hl]
    ld l, a
    ld a, [hl+]
    dec l
    dec b
    ld l, [hl]
    ld a, [$0d62]
    dec bc
    ld h, d
    ld c, a
    jp c, $d2f2

    rst $30
    jr nz, jr_06e_505b

    db $e4
    nop
    call nz, Call_06e_7c92
    call z, $87f4
    db $fd
    ld b, $c1
    db $e3
    ld b, e
    ld h, c
    ld a, a
    di
    or h
    ld a, [c]
    nop
    ld a, l
    ld b, $8f
    add b
    ld a, a
    and h
    add h
    ld h, b
    ld a, $eb
    ld e, c
    ld [$b574], sp
    db $76
    ld h, c
    nop
    ret nz

    and h
    or l
    ld b, d
    dec d
    ld [$fec0], a
    ld [hl], $63
    cp a
    rst $20
    ld b, e
    ld h, d
    ld e, e

jr_06e_50ce:
    inc h
    nop
    cp c
    ld b, b
    ret nz

    rst $38
    cp h
    and h
    ld a, a
    and $40
    adc b
    ld a, a
    daa
    ld a, a
    inc de
    ld [c], a
    ld b, $00
    ld a, [hl-]
    and l
    add b
    ld b, b
    inc b
    ld l, l
    ld c, b
    ret nc

    ccf
    pop de
    ld a, a
    push bc
    ld b, h
    ld l, a
    cp b
    ld hl, sp+$00
    ret nz

    jp hl


    ld a, $82
    jp $c8c9


    ld d, l
    ccf
    ld b, $24
    nop
    ld [hl+], a
    ld h, [hl]
    add c
    and e
    nop
    add b
    xor b
    add hl, bc
    db $ed
    sub l
    and a
    xor d
    rlca
    push af
    ld c, b
    ld [bc], a
    ld h, e
    jr c, jr_06e_5132

    rst $00
    sub b
    inc b
    ret nz

    ld [$f26d], a
    ld l, [hl]
    pop bc
    ld b, h
    add b
    or c
    add hl, bc
    rst $10
    add hl, hl
    add a
    add c
    ld b, l
    ld d, b
    cp $c7
    db $e4
    adc b
    ret nz

    rst $38
    db $d3
    nop
    dec hl
    inc a
    ld bc, $3f2d
    rst $20

jr_06e_5132:
    inc b
    jp z, Jump_000_3bfb

    db $ed
    ld c, $81
    ld hl, $ca00
    db $e4
    add h
    or e
    sbc l
    ld e, a
    dec b
    add b
    ret nz

    rst $20
    ld h, e
    rst $00
    ld de, $f58c
    ld [$acf0], a
    or [hl]
    nop
    rst $38
    db $e3
    ld c, e
    nop
    inc [hl]
    ld h, d
    xor c
    ld h, a
    ld [hl], h
    adc h
    inc hl
    rst $08
    sub c
    inc h
    ei
    ld b, b
    cp $e3
    push bc
    ld bc, $1508
    ld [hl], h
    ld b, $d2
    ld d, [hl]
    inc b
    ld c, l
    rst $38
    and $d5
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, l
    ld b, e
    nop

Jump_06e_5177:
    nop
    nop
    db $dd
    and b
    rst $38
    ld a, [$d7d6]
    ret c

    pop af
    xor $d4
    push de
    reti


    call nc, $f1dd
    jp hl


    and $e2
    db $e3
    xor h
    rst $20
    reti


    jp c, $db01

    sbc a
    and $c8
    ldh [$f1], a
    db $e4
    cp [hl]
    ld [$e2dd], a
    call z, $a7e2
    db $e4
    ld a, e
    db $e4
    push hl
    ld l, h
    ldh [$9f], a
    sbc l
    sbc l
    sbc a
    ld h, l
    ldh [$27], a
    call c, $dedd
    ld e, a
    jp hl


    pop af
    db $e3
    call nc, $ea80
    db $dd
    ld [c], a
    db $ec
    call z, $e9e1
    push hl
    and $e7
    pop bc
    ldh [$9c], a
    ld c, b
    ld c, b
    dec e
    sbc h
    cp a
    ldh [$df], a
    ldh [$e1], a
    rra
    jp hl


    pop af
    pop hl
    ld h, c
    jp hl


    ld hl, sp-$14
    push hl
    call z, $f6e2
    ret z

    sbc a
    sbc h
    ld c, d
    ld h, b
    ld h, b
    pop bc
    ld d, l
    cp a
    pop hl
    ld d, d
    db $ed
    ld h, c
    db $e4
    jp z, $65d5

    db $e4
    sbc [hl]
    ld b, l
    ccf
    ld c, e
    ld h, c
    ld h, c
    ld d, [hl]
    ld b, l
    sbc [hl]
    ld a, [c]
    call nz, $c1ce
    ld [hl], b
    or [hl]
    add $95
    db $ec
    or c
    call $e581
    ld h, c
    ld h, c
    ld h, c
    ld a, a
    ld [c], a
    ld h, b
    ld a, [c]
    ret nz

    db $10
    ld [c], a
    or [hl]
    ret


    ld l, d
    call z, $edbe
    sbc a
    sbc h
    add c
    pop hl
    add b
    ld a, a
    pop hl
    db $fd
    ret nz

    ld h, $e5
    or [hl]
    ret


    ld l, d
    ret


    or c
    push bc
    ld a, [hl+]
    add $9f
    rst $20
    sbc l
    sbc h
    ld b, [hl]
    add c
    ld [c], a
    ld a, a
    ldh [rDMA], a
    sbc h
    sbc l
    ld b, b
    reti


    jp z, $c879

    cp c
    call $a2e8
    ld c, d
    ret nz

    jp nz, $46e0

    add c
    db $e3
    ld [bc], a
    cp $c1
    ld b, [hl]
    cp [hl]
    ldh [$36], a
    jp $cd79


    cp c
    add $d1
    and l
    ld a, [hl+]
    ret nz

    ld l, a
    sbc a
    sbc h
    ld b, e
    ld d, b
    cp $e0
    ld c, b
    ld c, c
    add c
    db $e3
    cpl
    ld h, c
    ld h, c
    ld c, c
    ld c, b
    ldh a, [$e1]
    ld d, b
    ld [hl], a
    call nz, $a4a7
    ld hl, sp-$80
    and e
    ld c, [hl]
    add $70
    rst $00
    sbc a
    sbc h
    ld b, a
    ld c, h
    ld e, l
    sbc [hl]
    cp $e0
    ld h, b
    ld h, c
    ld d, h
    ld d, h
    nop
    pop hl
    ld a, [$60e0]
    ld b, $f0
    pop hl
    ld e, l
    ld b, a
    ld [hl], $c3
    ld b, [hl]
    add $3e
    xor d
    dec b
    jp $a117


    rst $30
    sbc [hl]
    ld d, c
    ld e, [hl]
    ld c, b
    db $e3
    ld d, d
    ld b, l
    ld b, l
    ld d, d
    inc b
    ld a, [$f7e5]
    jp nz, Jump_000_365c

    pop bc
    and a
    and b
    pop af
    add e
    add b
    xor e
    rla
    and a
    db $dd
    sbc [hl]
    ret nc

    push hl
    ld e, h
    ld [hl], $36
    or l
    ldh [$5c], a
    ld a, [hl+]
    add l
    ld a, [hl+]
    xor a
    db $e4
    ld d, d
    or $a2
    add a
    adc $d7
    adc c
    rla
    and c
    sbc a
    cp l
    ret nc

    adc a
    db $e3
    ld e, b
    ld b, h
    inc a
    ld a, [hl-]
    rst $38
    and b
    ld d, l
    cpl
    ld l, $30
    ld b, h
    ld c, l
    ld [hl], c
    db $e3
    ret nc

    cp [hl]
    call nz, $8bf1
    inc c
    db $76
    xor c
    rla
    and d
    jp nc, Jump_06e_4e46

    ld [c], a
    ret nz

    ld [c], a
    pop bc
    and b
    ret nz

    db $e4
    add d
    pop bc
    ldh [$d3], a
    dec sp
    rst $08
    ld h, $80
    dec bc
    and d
    ld e, $82
    ld c, l
    add h
    sbc [hl]
    nop
    ld b, l
    ret nz

    dec c
    pop hl
    ld b, b
    ld [$e4c1], a
    ret


    adc l
    ld h, $85
    ld e, $82
    ld c, l
    add h
    ld e, b
    dec b
    ret nz

    inc b
    jp nz, $c0c0

    ld b, a
    ld h, b
    ld a, [$56e4]
    add d
    db $e4
    or b
    ret


    add [hl]
    xor l
    ld h, h
    ld h, $85
    ld e, $82
    and $e7
    db $10
    add b
    sbc h
    cp a
    ld b, l
    ld d, b
    ld c, b
    ld c, [hl]
    ld c, b
    ld b, l
    ld b, [hl]
    ldh [$61], a
    add hl, sp
    ld c, c
    cp $a2
    ld a, [$55e2]
    ld b, [hl]
    jp nc, $88c9

    dec b
    add b
    ldh a, [$ad]
    ld h, h
    ld h, $85
    ld e, $82
    ld c, h
    and c
    ld b, l
    ld c, b
    ld c, c
    ld e, l
    rst $08
    ld h, b
    ld h, c
    ld h, b
    ld e, h
    call z, $fcc3
    push hl
    ld e, b
    ld b, h
    pop bc
    ld b, [hl]
    add h
    call nz, Call_06e_6bbc
    ld de, $c28c
    pop hl
    inc c
    and d
    ld d, d
    ld b, l
    nop
    ei
    and l
    dec b
    push bc
    ret nz

    ld [c], a
    ld hl, sp+$48
    xor l
    ld h, d
    db $fc
    ld c, d
    pop bc
    pop hl
    db $10
    ldh [rNR52], a
    adc [hl]
    and c
    ld d, e
    ld b, l
    call nz, Call_06e_7b85
    push hl
    ld d, l
    add b
    ld [c], a
    adc [hl]
    adc e
    ld a, [$4cfc]
    sbc [hl]
    pop bc
    push hl
    ld d, d
    ld b, l
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    dec c
    ld c, a
    add c
    ld [$5a61], a
    ld b, b
    ld [c], a
    ld hl, sp+$42
    add a
    ld c, c
    db $fc
    ld c, b
    db $ec
    ld de, $c180
    push hl
    ld b, [hl]
    xor a
    add h
    add l
    ld d, h
    ld e, c
    ld e, c
    nop
    db $fc
    add d
    ei
    ld h, e
    ld hl, sp+$45
    ld b, l
    ld c, e
    ld a, [bc]
    add $11
    add e
    add d
    ld [c], a
    dec b
    add e
    ld a, a
    ld d, h
    ld d, e
    xor h
    ccf
    ld b, l
    xor [hl]
    ld d, e
    cp d
    add d
    ld c, b
    ccf
    db $e3
    adc e
    db $ed
    or $48
    sbc [hl]
    ld c, l
    db $e3
    inc de
    add b
    xor a
    ld b, c
    db $e4
    ccf
    ld d, d
    ld b, l
    scf
    xor l
    jp Jump_06e_7436


    ldh [$c0], a
    add c
    ldh [$3f], a
    ld [c], a
    adc e
    ld c, h
    xor c
    inc hl
    adc e
    ld b, h
    ret nz

    db $e4
    ld d, l
    ld b, [hl]
    xor [hl]
    ld hl, sp+$41
    ldh [$85], a
    ld h, b
    cp e
    ret nz

    add hl, sp
    jp Jump_06e_6362


    ld h, h
    rrca
    ld a, h
    ld a, l
    ld b, [hl]
    ld b, l
    ld a, l
    ldh [$bf], a
    jp nz, Jump_06e_4c8b

    ccf
    ld l, d
    ld hl, sp-$80
    db $e3
    add c
    pop hl
    add c
    and b
    ld b, [hl]
    ld b, l
    ld e, e
    xor [hl]
    ld b, l
    rst $38
    scf
    jp Jump_06e_6762


    dec [hl]
    ld [hl], $ae
    add c
    ccf
    ld b, [hl]
    ret nc

    pop de
    ret nc

    ld e, e
    ld b, l
    rst $38
    and c
    dec de
    add a
    ret z

    ld h, d
    ld [hl+], a
    xor c
    ld a, [hl+]
    ld b, b
    db $e3
    ld d, l
    ld c, c
    ld h, b
    add c
    and c
    ld b, [hl]
    xor [hl]
    rst $38
    xor a
    add hl, sp
    dec [hl]
    dec [hl]
    ld l, c
    dec [hl]
    ld a, [hl-]
    ld b, l
    dec sp
    xor a
    add c
    add l
    and b
    db $d3
    ret nc

    ld b, [hl]
    add e
    add b
    adc [hl]
    inc h
    ret nz

    ld [hl-], a
    ld hl, $2262
    xor c
    ld a, [hl+]
    ret nz

    ret nz

    db $dd
    ld h, c
    cp [hl]
    and e
    ld d, l
    ld b, [hl]
    rst $38
    xor a
    ld b, l
    ld a, [hl-]
    jp Jump_06e_7662


    dec [hl]
    add hl, sp
    scf
    xor [hl]
    add e
    add h
    add l
    and c
    db $d3
    pop de
    add e
    add l
    ld [hl-], a
    inc hl
    add sp, $01
    ld c, l
    dec d
    jr nz, @+$0b

    add c
    ld d, d
    cp [hl]
    and h
    ld d, l
    xor [hl]
    ld b, l
    ld a, e
    ld [hl], $c3
    add c
    pop hl
    xor [hl]
    xor a
    adc d
    add l
    add hl, bc
    add l
    ld a, h
    ld a, h
    ld d, c
    ld c, b
    ld [$d0d3], sp
    ld b, l
    ld e, e
    ld b, l
    ld c, l
    ld b, e
    rst $38
    ld d, [hl]
    ld b, l
    xor a
    ld [hl], $35
    dec [hl]
    dec [hl]
    ld l, e
    add a
    ld l, h
    ld a, $af
    add c
    ldh [$c6], a
    add e
    ld d, c
    ld [hl-], a
    ld a, [$d30a]
    db $db
    pop de
    ret nc

    ld c, l
    ld b, h
    ld d, l
    ld b, [hl]
    inc bc
    ldh [$ca], a
    rr a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc b
    add a
    add c
    and $2f
    rlca
    ld d, h
    daa
    ld a, [$0cfa]
    jp nc, Jump_06e_43c5

    ld d, [hl]
    ld b, l
    xor [hl]
    ld a, $35
    rst $38
    dec [hl]
    ret z

    ret


    dec [hl]
    dec [hl]
    add hl, sp
    ld b, [hl]
    ld b, [hl]
    nop
    adc d
    ld h, [hl]
    cpl
    nop
    ld c, [hl]
    ld h, $12
    dec h
    adc a
    ld [$e175], sp
    add l
    ld b, h
    jp nz, $15c0

    ld a, [hl-]
    ld b, c
    ldh [$35], a
    ld bc, $d0e0
    ret z

    rst $00
    cpl
    nop
    rst $00
    ld b, l
    ldh a, [$85]
    ld d, c
    add e
    ld h, c
    ld b, l
    ld b, e
    inc de
    add b
    ld b, h
    inc a
    dec [hl]
    jp $ff06


    ret nz

    add hl, sp
    xor a
    inc b
    db $eb
    dec bc
    sub b
    ld [hl], l
    ld [$4305], a
    ld d, b
    jr nz, jr_06e_5521

    xor [hl]
    inc a
    add b
    ld [c], a
    add hl, sp
    xor [hl]
    ld b, h
    dec b
    sub h
    inc bc
    add [hl]
    db $d3
    ret z

    ld b, l
    rlca
    dec b
    ld b, e
    dec a
    and b
    xor a
    ret nz

    ldh [$7f], a
    ldh [$39], a
    xor a
    ret nz

jr_06e_5521:
    ld c, d
    add c
    jp hl


    ld b, c
    ld b, $8f
    ccf
    ld b, $87
    ld [$4005], sp
    ld d, e
    ld e, c
    ld a, [de]
    jp $af60


    add b
    db $e3
    inc a
    xor [hl]
    ld c, d
    ld h, d
    rst $18
    add c
    ld d, c
    ld h, c
    add b
    adc b
    add b
    ld b, [hl]
    adc e
    ccf
    inc c
    ld [hl], e
    ld h, b
    ld e, b
    and b
    rst $38
    ld [c], a

jr_06e_554a:
    ret nz

    ret nz

    jp z, $cb0f

    dec [hl]
    ld a, [hl-]
    xor a
    push bc
    and [hl]
    call z, Call_06e_4da6
    ld l, c
    db $fc
    ld c, d
    ld a, h
    ld a, [hl+]
    add e
    cp a
    pop hl
    ret nc

    pop de
    pop de
    ret nc

jr_06e_5563:
    add hl, sp
    ld b, c
    pop bc
    pop bc
    add hl, sp
    adc e
    ld b, d
    dec de
    ld l, d
    inc b
    add l
    rst $00
    and d
    ld [hl], a
    or c
    db $d3
    pop de
    ld [hl], $16
    and c
    jp nc, $8045

    and b
    ld [hl], $45
    pop bc
    jp nz, Jump_06e_6d90

    jr jr_06e_554a

    or c
    db $ed
    ld c, l
    db $f4
    ld b, b
    scf
    scf
    jr c, jr_06e_55ec

    adc a
    ld [bc], a
    sub b
    ld l, h
    ld h, b
    adc e
    ld b, d
    ret nz

    adc a
    ld h, e
    ld c, c
    ld [hl], $40
    dec sp
    ld h, c
    xor [hl]
    ld b, [hl]
    dec bc
    ld h, c
    nop
    ld c, a
    reti


    ccf
    ld c, c
    ld l, d
    rlca
    rst $30
    jr nz, jr_06e_5563

    ld h, d
    ld a, b
    ld h, b
    jp z, Jump_000_002c

    ld l, a
    nop
    db $fd
    daa
    xor [hl]
    ld [hl+], a
    xor a
    add d
    cp a
    nop
    cp h
    ld b, c
    ld a, [hl]
    pop hl
    ld a, a
    di
    or h
    ld a, [c]
    ld c, h
    add hl, hl
    add d
    cp l
    ld bc, $9c9f
    db $fd
    ld b, d
    ccf
    pop hl
    xor a
    ld a, $ec
    nop

jr_06e_55d0:
    ld e, c
    ld [$2874], sp
    or l
    ld l, b
    ld a, [hl-]
    and d
    ld a, [hl]
    ld b, d
    ld sp, hl
    and d
    or e
    ld b, b
    ld c, c
    ld b, l
    nop
    ld d, h
    ld [hl+], a
    ld e, c

jr_06e_55e4:
    rlca
    ld l, [hl]
    or e
    ld [hl], a
    inc h
    cp a
    and $7f

jr_06e_55ec:
    ldh [$88], a
    jr nz, jr_06e_5609

    inc h
    nop
    ld [de], a
    jr nz, jr_06e_564e

    inc b
    or h
    sub l
    ld [hl], $65
    pop bc
    jp $c2be


    ld b, e
    ld h, a
    ret


jr_06e_5601:
    ld hl, $4500
    ld l, b
    ld a, [hl-]
    ld l, a
    ld [c], a
    ld h, [hl]

jr_06e_5609:
    ld a, [hl-]
    and l
    ld a, b
    jr nz, jr_06e_55d0

    ld h, [hl]
    ret


    ld d, $f1
    ld sp, $d241
    ld a, a
    push bc
    add e
    ld h, l
    add a
    inc l
    cp b
    di
    pop af
    daa
    sbc [hl]
    add [hl]
    pop bc
    jr nc, jr_06e_55e4

    and c
    pop bc
    ld h, l
    ld d, c
    xor l
    db $f4
    ld d, b
    ld [c], a
    db $e3
    ld l, b
    ld b, [hl]
    add c
    and b
    nop
    ld a, e
    ld [hl+], a
    ld b, d
    rst $00
    ld de, $0c47
    inc hl
    scf
    ld h, $b4
    rlca
    inc h
    jr z, jr_06e_5601

    and b
    ret nz

    rst $38
    push bc
    add b
    xor [hl]
    inc c
    add e
    ld bc, $aeb0
    daa
    ret nz

jr_06e_564e:
    and b
    ld b, l
    ld b, e
    jp nz, $e2ff

    ld b, l
    add b
    xor a
    ld c, c
    rst $10
    ldh a, [rNR52]
    ret nz

    and b
    ld b, h
    and h
    dec c
    ld h, h
    rst $38
    ldh [$a5], a
    ld b, h
    ld bc, $93c2
    xor d
    add e
    inc [hl]
    ldh a, [$29]
    cp $00
    ret nz

    ld b, b
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld de, $bf44
    add l
    sub e
    or a
    dec sp
    pop af
    jp nc, $e0c0

    nop
    ld b, c
    ret nz

    ldh [$f0], a
    ccf
    ld h, h
    ld d, [hl]
    ld [bc], a
    dec bc
    jp nc, Jump_06e_5177

    sbc [hl]
    ld b, [hl]
    ld b, h
    ld l, e
    dec c
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, h
    inc b
    dec h
    call Call_000_1104
    ret z

    ld b, $c8
    nop
    ei
    ld [$4335], sp
    ld [hl], l
    nop
    ret nz

    call nz, Call_06e_41c0
    ld [$7728], sp
    ld l, d
    add hl, bc
    ld b, [hl]
    nop
    ei
    rlca
    ld d, [hl]
    ld h, l
    ei
    ld b, b
    cp $e3
    ld b, e
    ld hl, $7415
    ld a, [hl+]
    ld h, a
    inc [hl]
    ld [hl], b
    nop
    daa
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], c
    ld [hl], h
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
    ld c, $17
    ld [bc], a
    ld bc, $190c
    ld [bc], a
    ld [bc], a
    rla
    add hl, de
    ld [bc], a
    inc bc
    ld a, [de]
    add hl, de
    ld [bc], a
    inc b
    dec c
    ld a, [de]
    ld [bc], a
    dec b
    dec bc
    dec de
    ld [bc], a
    ld b, $12
    inc e
    ld [bc], a
    rlca
    ld a, [de]
    inc e
    ld [bc], a
    ld [$1d11], sp
    ld [bc], a
    add hl, bc
    add hl, de
    ld e, $02
    ld a, [bc]
    db $10
    rra
    ld [bc], a
    dec bc
    jr @+$21

    ld [bc], a
    inc c
    rrca
    ld [hl+], a
    ld [bc], a
    dec c
    rla
    inc hl
    ld [bc], a
    ld c, $0f
    dec h
    ld [bc], a
    rrca
    rla
    dec h
    ld [bc], a
    db $10
    ld c, $26
    ld [bc], a
    ld de, $270f
    ld [bc], a
    ld [de], a
    ld d, $27
    ld [bc], a
    inc de
    ld d, $2a
    ld [bc], a
    inc d
    ld de, $022c
    dec d
    dec d
    inc l
    ld [bc], a
    ld d, $10
    ld l, $02
    rla
    rla
    ld l, $02
    jr jr_06e_575b

    cpl
    ld [bc], a
    add hl, de
    ld d, $2f
    ld [bc], a
    ld a, [de]
    rrca
    jr nc, @+$04

    dec de
    jr jr_06e_578a

    ld [bc], a

jr_06e_575b:
    inc e
    db $10
    ld sp, $1d02
    rla
    ld sp, $1e02
    ld de, $0234
    rra
    db $10
    dec [hl]
    ld [bc], a
    jr nz, jr_06e_5782

    dec [hl]
    ld [bc], a
    ld hl, $380e
    ld [bc], a
    ld [hl+], a
    rla
    jr c, @+$01

    rst $38
    rst $38
    add c
    ld d, a
    ld de, $f35b
    ld h, b
    ld c, $61
    add hl, bc

jr_06e_5782:
    inc c
    rst $38
    rst $38
    db $e4
    db $e3
    inc l
    db $dd
    rst $38

jr_06e_578a:
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
    sbc h
    rst $38
    rst $38
    ld [$4ce9], a
    ld c, h
    ld c, h
    db $db
    rst $38
    ld sp, hl
    ld hl, sp+$2e
    pop af
    dec bc
    cp [hl]
    ldh [$bc], a
    rst $38
    rst $30
    or $4e
    ld c, $2e
    dec bc
    ld a, l
    dec bc
    cp h
    pop hl
    inc c
    inc l
    inc l
    inc c
    ld l, h
    ld hl, sp-$1c
    ld a, h
    rst $38
    rst $38
    rst $20
    and $0d
    dec c
    ld c, [hl]
    ld c, $0e
    cp h
    ldh [$0e], a
    ld a, d
    ld [c], a
    ld l, h
    dec hl
    dec hl
    ld [hl], h
    rst $20
    or e
    ldh [$c1], a
    rst $38
    ret nz

    ldh [$fc], a
    cp $e1
    cp h
    ldh [$2e], a
    dec hl
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    daa
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    cp c
    ldh [$b4], a
    ld [c], a
    ld c, h
    ld h, $e0
    ret nz

    rst $38
    cp a
    dec c
    ld c, $0e
    dec c
    ld c, $2e
    cp d
    ldh [$0e], a
    rst $28
    ld l, e
    ld c, d
    ld a, [hl+]
    dec bc
    cp h
    ldh [$0a], a
    dec hl
    dec bc
    cpl
    ld c, h
    dec hl
    ld c, e
    dec bc
    db $fd
    pop hl
    dec bc
    ret nz

    rst $38
    ret nz

    ld [c], a
    inc d
    cp h
    ldh [$bb], a
    ldh [$2b], a
    add $e0
    dec bc
    set 4, b
    db $fd
    pop hl
    call nz, $f1e0
    dec c
    ret nz

    ldh [$c1], a
    rst $38
    ret nz

    rst $20
    ld c, [hl]
    ld l, $4a
    ld l, e
    rst $38
    dec bc
    dec bc
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    dec bc
    dec bc
    add c
    ld a, [bc]
    xor l
    ret nz

    ret nz

    ldh [$bf], a
    rst $38
    nop
    db $e4
    add b
    pop hl
    cp a

jr_06e_5859:
    ldh [rOCPD], a
    ld a, e
    ld c, e
    ld l, e
    ld b, b
    ldh [rOCPD], a
    dec bc
    ld c, e
    ld c, e
    add hl, sp
    ldh [rLY], a
    or l
    pop hl
    pop bc
    rst $38
    inc c
    add h
    ret nz

    ret nz

    db $e4
    ld [hl], a
    ret nz

    ld l, $c0
    ldh [$1f], a
    ld a, [hl+]
    dec c
    dec c
    dec bc
    ld l, e
    cp a
    ldh [rLCDC], a
    ld [c], a
    inc [hl]
    rst $18
    ld b, b
    inc bc
    pop hl
    pop bc
    jp nz, $c1bc

    ld a, c
    jp nz, $c16e

    ld a, [hl-]
    ldh [$0d], a
    jp hl


    and b
    add b
    jr c, jr_06e_5859

    cp b
    ret c

    add e
    jp nz, $e281

    ld [hl], $c5
    cp [hl]
    push hl
    ret nz

    call nz, Call_000_016c
    ld l, h
    ld l, a
    ret nz

    ld [hl], a
    rst $10
    nop
    db $e4
    ld a, h
    call nz, $e439
    ld a, h
    pop hl
    di
    ret nz

    ld a, [bc]
    nop
    ld [c], a
    inc l
    ld l, d
    ret nz

    dec c
    ret nz

    sbc $c0
    add sp, -$4a
    pop bc
    cp a
    db $e3
    ld c, $c8
    inc hl
    dec hl
    dec bc
    dec hl
    ret nz

    ld hl, sp-$3b
    jp $c47c


    ld a, l
    ld [c], a
    add b
    ldh a, [$a1]
    ei
    pop bc
    ld [bc], a
    db $e4
    ld b, c
    ldh [$c0], a
    rst $38
    inc a
    push bc
    dec [hl]
    call nz, $f96e
    dec bc
    add hl, hl
    and b
    add hl, bc
    pop hl
    inc l
    inc l
    inc l
    dec hl
    dec hl
    add e
    ld a, [bc]
    ld c, e
    ret nz

    rst $38
    ld a, e
    add $75
    and e
    ld [$8081], a
    and e
    inc l
    ld d, b
    ld hl, sp-$3b
    add b
    rst $38
    ld a, [$3581]
    and d
    ld l, [hl]
    xor e
    add c
    dec hl
    ccf
    ret nz

    ret nz

    ret


    ld bc, $e0bf
    add b
    cp a
    cp h
    add h
    or $c4
    db $fd
    and c
    dec hl
    dec hl
    nop
    ccf
    ldh [$88], a
    rra
    ld b, b
    rst $00
    cp d
    push bc
    ret nz

    push hl
    or [hl]
    add c
    ld b, c
    cp a
    nop
    rlc d
    ret nz

    add sp, $0b
    ld [hl], d
    add c
    pop bc
    rst $38
    ret nz

    ld h, h
    add b
    add $42
    rst $00
    add c
    add c
    nop
    cp a
    ld a, a
    add b
    ld h, c
    rst $38
    add h
    dec sp
    and [hl]

jr_06e_593f:
    ret nz

    push hl
    rst $38
    ld a, a
    ld b, b
    add a
    ld b, a
    call nz, $760e
    ld h, c
    dec l
    dec c
    ld l, $01
    ret nz

    inc [hl]
    add b
    cp a
    pop bc
    ld a, a
    sbc [hl]
    jr jr_06e_5958

    add d

jr_06e_5958:
    add h
    rst $00
    nop
    add $6b
    ld l, e
    ld a, [hl]
    ld h, b
    ccf
    rst $38
    nop
    rst $20
    nop
    add hl, sp
    add sp, $41
    and b
    jp Jump_000_31e1


    ld h, c
    push hl
    ld a, $47
    jp z, $a680

    ld b, b
    and b
    nop
    ld a, a
    pop bc
    ld a, [$a1a0]
    ld hl, $79ba
    rlca
    ret z

    cp c
    rst $00
    rst $38
    pop bc
    cp h
    ld b, e
    nop
    ld a, d
    jp Jump_000_385f


    inc b
    and l
    cp l
    ld l, b
    add b
    add e
    di
    ld b, b

jr_06e_5993:
    cp e
    ld b, c
    jr c, jr_06e_5958

    ld bc, $7a4b
    ld [c], a
    nop
    db $fd
    ld a, b
    jp hl


    rst $28
    jr nz, @+$81

    ld h, b
    ld a, e
    ld b, c
    add hl, sp
    ld h, c
    nop
    inc sp
    and b
    ld a, h
    db $76
    ret nz

    ldh a, [$7f]
    jp hl


    ret nz

    db $e3
    ld sp, $3980
    db $e3
    inc l
    cpl
    jr nc, jr_06e_593f

    ld [$22b5], a
    ld l, $22
    cp c
    ld b, b
    dec hl
    ld l, e
    ld a, l
    ld [c], a
    db $fd
    ld [c], a
    nop
    ld [hl-], a
    add d
    sbc c
    ld bc, $ce2e
    ld b, l
    call z, $a7fd
    cp a
    add c
    db $fc
    pop bc
    ld a, b
    ld b, c
    add b
    cp l
    ld [c], a
    ld hl, sp+$41
    ld l, d
    jr nz, jr_06e_5993

    call z, $c803
    ld a, [hl]
    and l
    ld a, l
    jp Jump_000_002b


    xor l
    ld bc, $e07d
    db $fd
    jp $e437


    add sp, -$7f
    db $eb
    and d
    dec l
    add $03
    ld h, h
    inc d
    add b
    db $ed
    ld a, [hl+]
    nop
    ld l, [hl]
    ld a, e
    pop hl
    dec hl
    jr c, @+$42

    ld a, [hl]
    push hl
    ld a, [c]
    jp $fd00


    ld [c], a
    ld l, $c7
    add b
    call $89b6

jr_06e_5a11:
    cp c
    ld b, b
    inc a
    ldh [$31], a
    jr nz, jr_06e_5a11

    jp $a100


    ld bc, $02e8
    ld a, e
    push hl
    add sp, -$5f
    ld b, d

jr_06e_5a23:
    xor l
    dec sp
    ld h, e
    ld hl, sp+$46
    ld a, c
    ld h, b
    ld bc, $310b
    jr nz, jr_06e_5a23

    and c
    or c
    push bc
    ld e, [hl]
    ld [bc], a
    ld [$cac5], a
    xor c
    ld sp, hl
    ld c, c
    nop
    ei
    push bc
    ret nz

    ld [c], a
    rst $28
    nop
    rst $38
    pop hl
    ld [hl], $e3
    ld a, d
    ld [c], a
    ld a, l
    db $e3
    call nc, $1840
    push de
    ld b, d
    inc a
    xor a
    ei
    add $0e
    ld l, $fc
    and h
    cp h
    push bc
    dec sp
    pop hl
    ld b, c
    dec l
    inc [hl]
    db $e4
    adc a
    ld b, h
    add $46
    or l
    daa
    or c
    ld h, a
    ld c, [hl]
    cp a
    pop hl
    nop

jr_06e_5a6a:
    ld l, e
    ld b, b
    db $fd
    pop hl
    or h
    ldh [$2f], a
    and e
    or $c1
    sub b
    ld l, b
    add h
    ld b, l
    ret nz

    jp hl


    nop
    db $76
    add $6c
    nop
    ld e, d
    push hl
    jr z, jr_06e_5aa4

    add d
    ldh [$32], a
    and b
    ld l, c

jr_06e_5a88:
    ret nz

    rst $10
    push bc
    nop
    jp nz, $be6a

    ret


    inc l
    ld l, d
    jr nz, jr_06e_5ab8

    db $eb
    add d
    ld a, [hl+]
    jp nz, $e85d

    ei
    di
    nop
    ld l, h
    ld b, $ee
    call nz, $8327
    xor d

jr_06e_5aa4:
    add c
    pop bc
    ld [c], a
    sbc h
    jr nz, jr_06e_5a6a

    xor $b7
    ld c, d
    jr c, jr_06e_5adb

    ld b, [hl]
    ld [$aa84], a
    and h
    ld l, $4b
    dec bc
    pop bc

jr_06e_5ab8:
    db $e4
    ld h, d
    jp hl


    nop
    ld c, d
    rst $00
    ld b, c
    and h
    ei
    jp z, $e780

    inc h
    ld bc, $00f0
    ld c, c
    jp $ef40


    nop
    cp $47
    or d
    xor b
    db $fc
    jp z, $c22c

    ld b, e
    db $e3
    rlca
    rst $30
    set 1, c

jr_06e_5adb:
    ld l, b
    rst $20
    ld h, b
    or l
    xor $06
    ret z

    cp h
    push de
    xor e
    ld [$641b], sp
    ld c, $2e
    ld d, a
    daa
    nop
    cp [hl]
    push af
    and a
    db $eb
    cp e
    jp $e9b6


    ld d, d
    dec b
    add b
    rst $30
    ld [hl], $43
    or b
    jp z, $1700

    jr nc, jr_06e_5a88

    or $c8
    jp z, $cf70

    ld c, c
    ret z

    cp a
    cp h
    ret nz

    pop af
    db $dd
    db $eb
    nop
    nop
    nop
    adc l
    sbc b
    rst $38
    di
    sbc c
    sbc c
    db $fd
    ldh [$fe], a
    ldh [$e1], a
    db $e4
    sub a
    inc bc
    sub a
    sub a
    jp hl


    db $e4
    xor $e2
    push hl
    ld [c], a
    ei
    db $e3
    and $e0
    db $e4
    ld [c], a
    nop
    rst $18
    db $e4
    db $d3
    ld [c], a
    cp e
    rst $20
    cp l
    and $bf
    db $eb
    ret nz

    db $ed
    ei
    push hl
    sub l
    db $e4
    ldh [$b4], a
    rst $20
    sub a
    db $e4
    jp hl


    db $e4
    ld h, a
    db $e4
    add b
    db $eb
    sub [hl]
    sub [hl]
    sub [hl]
    nop
    cp h
    ld [$e6b5], a
    ld l, a
    db $e4
    cp a
    db $ec
    ccf
    db $ed
    pop bc
    ldh [$be], a
    ld [c], a
    ld a, [$e0e3]
    ld [hl-], a
    pop hl
    xor a
    add sp, $38
    rst $20
    ld a, [hl]
    and $fe
    call $9696
    sub l
    ld b, b
    cp l
    db $e3
    or a
    db $e4
    ld hl, sp-$1b
    cp l
    ld [$e63d], a
    cp $cf
    sub l
    rst $38
    pop hl
    nop
    ld a, e
    pop hl
    ld a, [$f6e3]
    ld [c], a
    or e
    and $ea
    add $bf
    db $eb
    ret nz

    xor $fb
    and $00
    cp b
    ld [c], a
    xor a
    db $e4
    ld a, b
    rst $20
    ld a, [hl]
    db $eb
    dec a
    set 1, l
    and $fb
    db $ec
    jr z, @-$17

    nop
    ld a, [hl]
    db $eb
    db $fc
    xor l
    dec c
    db $e4
    inc a
    push hl
    ld a, h
    add sp, $78
    and $08
    add sp, -$02
    rst $08
    nop
    adc h
    add $7c
    call nz, $c4bc
    dec l
    ld [$c746], a
    inc a
    rst $08
    ld h, c
    and l
    ld b, h
    push bc
    ldh [$3c], a
    push bc
    ld [hl], b
    ld [$e708], a
    inc a
    ret z

    dec sp
    and e
    rlca
    rlca
    dec c
    add b
    dec de
    and d
    add h
    and [hl]
    ld de, $eca3
    and [hl]
    ld a, [hl]
    push hl
    cp $c9
    ld a, e
    xor c
    ret nc

    ccf
    ld b, [hl]
    dec bc
    ld [bc], a
    rlca
    rlca
    rrca
    and [hl]
    and [hl]
    ld e, b
    and $f0
    ld [hl], a
    and $21
    pop bc
    cp $c9
    ld a, l
    set 2, e
    pop de
    ret nc

    ld b, [hl]
    rst $30
    ld b, [hl]
    ld b, [hl]
    ld [bc], a
    ld a, d
    ldh [rSB], a
    nop
    sbc c
    rrca
    add b
    or [hl]
    ldh [$f8], a
    pop hl
    cp h
    add [hl]
    cp a
    db $e3
    cp $c9
    ld a, l
    ret z

    ld e, a
    add d
    and b
    rst $08
    and b
    db $d3
    pop de
    pop de
    cp h
    ldh [$7a], a
    pop hl
    rlca
    ld [bc], a
    ld a, a
    ld b, l
    ld b, e
    ld [bc], a
    rlca
    rrca
    nop
    ld bc, $829c
    ld bc, $6a0f
    pop hl
    daa
    and b
    cp $c9
    ld a, l
    rst $00
    ret nz

    rst $20
    cp $e1
    cp h
    ldh [rIE], a
    ret nc

    ld b, l
    ld c, b
    ld c, [hl]
    ld b, h
    ld c, c
    ld c, h
    ld c, c
    ld sp, hl
    ld c, b
    cp [hl]
    ldh [$b5], a
    ldh [rTAC], a
    ld [bc], a
    dec bc
    ld b, [hl]
    ld [bc], a
    ldh a, [$bf]
    pop hl
    cp $c8
    ld a, l
    rst $00
    ld sp, hl
    ld h, a
    and b
    ld [c], a
    db $e3
    and b
    ei
    call nc, $bad4
    ldh [$d2], a
    ld b, l
    ld c, e
    ld d, d
    dec hl
    rst $38
    dec hl
    ld d, e
    ld e, c
    ld e, c
    ld b, l
    ld b, l
    dec bc
    ld b, l
    rst $38
    ccf
    ld b, l
    ld b, l
    ccf
    scf
    scf
    ld b, l
    ld [bc], a
    pop hl
    sbc c
    ret nz

    ldh [$fe], a
    push bc
    ld a, l
    rst $00
    cp b
    ld l, c
    and b
    db $e4
    push hl
    rst $38
    and b
    and b
    sub $d7
    ret c

    and b
    sbc [hl]
    ld b, l
    rst $38
    ld c, e
    dec l
    jr nz, jr_06e_5cac

    cpl
    ld a, [hl+]
    dec a
    jr c, @+$01

    jr c, jr_06e_5cd0

    jr c, jr_06e_5cca

    jr c, jr_06e_5ccf

    xor h
    rst $08
    add a
    rst $08
    add hl, sp
    inc c
    ret nz

    ldh [$ae], a
    add a

jr_06e_5ca1:
    ccf
    xor $44
    ld h, c
    and b
    rst $38
    and $e7
    and b
    and b
    reti


jr_06e_5cac:
    jp c, $a0db

    ei
    sbc a
    ret nc

    ret nz

    push hl
    dec [hl]
    dec [hl]
    jp Jump_000_3535


    ld a, a
    dec [hl]
    xor l
    adc $ce
    ld a, $46
    ld [$c234], sp
    ld [hl], b
    rst $20
    and h
    ccf
    db $eb
    inc h
    ld h, h

jr_06e_5cca:
    nop
    ld [c], a
    call c, $dedd

jr_06e_5ccf:
    cp b

jr_06e_5cd0:
    ret nz

    ld a, a
    ret nc

jr_06e_5cd3:
    ld b, l
    ld a, [hl+]
    ld a, [hl+]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld b, [hl]
    ldh [$df], a
    jr c, jr_06e_5ca1

    jp z, Jump_000_35cb

    add b
    ldh [rSC], a
    rrca
    or b
    adc h
    and h
    ld h, c
    ld h, l
    ei
    adc c
    db $e3
    ld b, e
    call nc, Call_000_03d5
    ldh [$df], a
    ei
    ldh [$e1], a
    cp e
    jp nz, Jump_06e_45d0

    ld d, e
    ld e, c
    ld d, e
    rst $38
    xor [hl]
    xor [hl]
    ld b, [hl]
    ld b, l
    ld [hl], $c8
    ret


    xor h
    rrca
    dec [hl]
    inc a
    ld b, h
    ld [$c234], sp
    xor [hl]
    and h
    ld a, [hl]
    res 7, h
    ld b, l
    db $e3
    and b
    and b
    cp [hl]
    ld [c], a
    cp h
    jp $c179


    ld b, [hl]
    xor a
    xor a
    rst $38
    xor [hl]
    xor [hl]
    ld b, l
    scf
    jr c, jr_06e_5cd3

    dec [hl]
    dec [hl]
    inc bc
    ld b, b
    ld [$417f], sp
    db $eb
    and c
    ld b, c
    ld l, d
    ld [hl], h
    ld b, a
    nop
    pop bc
    add e
    pop bc
    sub b
    ld a, h
    ret nz

    rst $38
    push hl
    or b
    and c
    cp [hl]
    ld [c], a
    ld [hl], $80
    pop hl
    pop bc
    pop hl
    ld [bc], a
    inc bc
    ld b, l
    ld b, l
    scf
    jp nz, $a97d

    or h
    ld b, [hl]
    nop
    jp $c57c


    cp b
    ld [c], a
    sbc $be
    db $e4
    ld b, l
    ld [hl], $36
    ld b, l
    ret nz

    pop hl
    ld [$0745], sp
    ld [hl], $39
    xor [hl]
    or a
    ldh [$03], a
    ld l, b
    ld e, l
    ld c, c
    ret nz

    and d
    ld a, h
    push bc
    inc e
    inc [hl]
    pop bc
    or d
    and c
    ret nc

    ld b, [hl]
    xor [hl]
    cp a
    ldh [$89], a
    ldh [$b9], a
    jr nz, jr_06e_5d9c

    ld [$3542], sp
    ld a, $af
    ld a, b
    jp nz, $c949

    dec de
    ld b, [hl]
    ldh a, [rTIMA]
    pop bc
    ld a, h
    add $34
    ret nz

    ldh a, [$e2]
    jp nc, $af46

    xor [hl]
    rst $28
    xor a
    ld b, [hl]
    inc c
    sbc c
    ld [hl], $a0

jr_06e_5d9c:
    rrca
    ld [bc], a
    add hl, sp
    ld c, a
    dec [hl]

jr_06e_5da1:
    ld a, $ae
    ld [$4782], sp
    dec c
    adc e
    sbc b
    dec b
    pop bc
    ret c

    inc a
    and d
    ld a, h
    jp $a2f5


    and b
    sbc h
    add b
    push hl
    ld bc, $1f00
    ld [$3a45], sp
    jp $8039


    ldh [$80], a
    jp $28af


    ld d, b
    bit 4, h
    dec b
    jp nz, $c87b

    push af
    and c
    sbc [hl]
    ld b, c
    pop hl
    xor a
    nop
    ld [c], a
    dec b
    sbc c
    ld bc, $36e0
    ret nz

    pop bc
    inc sp
    ld c, d
    add sp, $08
    adc c
    db $e4
    add hl, sp
    push bc
    ld a, d
    push af
    and d
    sbc h
    pop bc
    pop hl
    add hl, sp
    xor h
    dec [hl]
    ld b, d
    add b
    ret nz

    ld b, b
    add c
    rst $00
    or a
    ld b, h
    ret nz

    dec b
    ret nz

    ret


    cp h
    add l
    ld [hl], e
    add e
    sbc [hl]
    ld [bc], a
    pop hl
    rlca
    ld b, l
    ld a, [hl-]
    xor l
    ret nz

    and b
    ld h, d
    nop
    ld bc, $33c5
    ld c, b
    add sp, $09
    ld [hl], b
    ld b, b
    add $37
    add e
    or $a1
    ld b, c
    ld [c], a
    add hl, sp
    rst $08
    rst $08
    add b
    ldh [rP1], a
    cp b
    ld h, a
    rra

jr_06e_5e1e:
    jr z, jr_06e_5da1

    xor c
    nop
    add e
    cp h
    add c
    ld [hl], a
    jp $8172


    add b
    ld [c], a
    rlca
    ld a, $c3
    adc $80
    and b
    jr z, jr_06e_5e35

    xor [hl]
    ld c, c

jr_06e_5e35:
    ld a, h
    add sp, $00
    add h
    ldh a, [$86]
    and l
    ld [hl], a
    jp $8172


    pop bc
    jp nz, $ce3e

    adc $3c
    ld bc, $bf44
    ld h, c
    ld a, a
    add d
    or a
    ld b, [hl]
    sbc c
    dec b
    ret nz

    call nz, $8280
    rst $38
    add e
    ld [$c477], sp
    nop
    push hl
    ret nz

    ldh [$35], a
    ld a, a
    jp nz, $4472

    ld e, e
    inc h
    add sp, $0c
    ld b, b
    ld b, b
    add h
    ld a, e
    add c
    ld a, h
    add c
    ld a, h
    call nz, $80bc
    nop
    pop hl
    xor h
    ld a, a
    add l
    ld b, b
    ld [hl], a
    ld b, [hl]
    sub e
    ld b, $61
    rlca
    inc bc
    jp nz, $c784

    ld [hl], l
    ld h, d
    jp nc, $a041

    rra
    ld b, l
    ld a, [hl-]
    dec [hl]
    xor l
    dec [hl]
    rst $38
    ld h, b
    or e
    ld b, e
    ld a, c
    ld h, l
    ret nz

    and e
    add hl, bc
    ret nz

    and e
    add $e7
    jr c, jr_06e_5e1e

    ld [hl], l
    ld h, c
    ccf
    ret nz

    ld b, [hl]
    xor [hl]
    ccf
    ld a, $cd
    rst $08
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld [hl], c
    ld b, b
    ld c, l
    and e
    add b
    ld h, h
    ld [hl+], a
    ld h, c
    db $10
    ld b, a
    ret


    or h
    ld h, c
    add b
    and e
    ret nz

    add b
    ld a, a
    pop bc
    xor h
    dec b
    jr c, @-$42

    ld b, b
    rlca
    ld a, [hl-]
    and b
    xor l
    ld h, $39
    db $eb
    ld de, $0720
    add l
    nop
    cp c
    ld b, b
    ld a, c
    ld b, d
    ld [hl], l
    ld h, d
    rst $38
    pop bc
    cp a
    pop bc
    cp h

jr_06e_5ed7:
    ld h, b
    cp [hl]
    ld [c], a
    ld e, a
    inc hl
    add b
    add hl, sp
    and $a4
    add hl, bc
    inc b
    and l
    cp c
    ld b, c
    cp e
    ld h, [hl]
    rst $38
    pop bc
    cp a
    and c
    dec [hl]
    dec a
    xor h

jr_06e_5eee:
    or a
    ld b, b
    jr c, @+$39

    ccf
    ld b, e
    jr c, jr_06e_5ed7

    daa
    ld h, $10
    or $c7
    sbc e
    nop
    jp z, Jump_000_35e8

    xor b
    ret nc

    ret nz

    ld h, c
    ld a, e
    ld b, c
    cp [hl]
    ld [c], a
    inc bc
    xor h
    dec sp
    jr c, jr_06e_5eee

    or l
    ret


    or d
    rst $00
    ret nz

    db $ed

jr_06e_5f13:
    cp l
    ld h, e
    rst $38
    ld h, c
    daa
    ld b, l
    ld [hl], $3b
    cp [hl]
    ld [c], a
    cp d
    ld [c], a
    xor h
    ld a, e
    add b
    ld d, l
    nop
    ret nz

    inc l
    inc h
    and h
    ld [$e84a], sp
    or l
    ld h, d
    jr c, jr_06e_5f13

    cp c
    ld b, b
    ld b, [hl]
    ld b, l
    reti


    ld b, e
    ld a, l
    pop hl
    db $fd
    ld [c], a
    xor l
    xor l
    or e
    and b
    ld b, [hl]
    ld b, [hl]
    ld bc, $2c0b
    inc hl
    db $f4
    ret z

    add b
    db $e3
    ld b, l
    rst $00
    db $fd
    and a
    rst $38
    pop hl
    ld a, l

jr_06e_5f4e:
    pop hl
    jr jr_06e_5f4e

    pop bc
    cp c
    pop hl
    ld a, [hl]
    ldh [rDMA], a
    xor [hl]
    cp $e0
    ld a, c
    pop hl
    ret z

    ld b, b
    ldh [$e7], a
    inc hl
    nop
    and $45
    push bc
    pop af
    ld hl, $626d
    ret nc

    ld b, [hl]
    ret nc

    sub b
    ld h, $00
    ld a, l
    ldh [$fd], a
    jp $c1f5


    add hl, sp
    ld a, [hl+]
    ld h, d
    and a
    ldh [$0b], a
    ld h, b
    ld h, a
    ld h, c
    inc [hl]
    inc bc
    ret nz

    and h
    ld b, l
    rst $00
    ld [hl], d
    ld h, $d1
    db $d3
    ld a, e
    ld [c], a
    jr @+$3a

    ld b, b
    db $fd
    pop bc
    scf
    pop hl
    ld a, [hl-]
    ld b, l
    xor b
    and b
    ld a, h
    ldh [$7b], a
    push hl
    add b
    or h
    ld b, d
    add b
    call $e8b8

jr_06e_5fa0:
    jr c, @+$63

    inc a
    ldh [$31], a
    jr nz, jr_06e_5fa0

    jp $893c


    ld b, h
    dec hl
    pop hl
    add sp, -$40

jr_06e_5faf:
    xor a
    push af
    ret nz

    db $f4
    ret nz

    add sp, -$5f
    rlca
    add b
    ld b, d
    xor e
    dec sp
    ld h, h
    cpl
    nop
    ld l, l
    ld [bc], a
    sub b
    db $e4
    ld [hl], d
    jr nz, jr_06e_603a

    ret nz

    dec sp
    sbc h
    cp [hl]
    pop bc
    db $eb
    jp nz, Jump_000_36a6

    ld b, l
    ld a, d
    ldh [$de], a
    jp nz, $e0d0

    nop
    call Call_06e_44f9
    ei
    push bc
    sub b
    pop hl
    ret


    ret nz

    ld b, l
    ld b, e
    ld b, c
    di
    ld b, c
    ld b, e
    ret nz

    pop bc
    xor h
    pop bc
    ld h, d
    and a
    ld h, [hl]
    ld [hl], $06
    ld hl, sp-$3e
    ret nc

    pop de
    dec de
    ldh [$c4], a
    xor [hl]
    ld sp, $fb23
    call nz, $c0bc
    ldh a, [$bd]
    ld [c], a
    sub c
    db $e3
    jp nz, $c1c0

    ldh [$67], a
    and e
    ld l, b
    ld h, [hl]
    ld [bc], a
    ld [hl], h
    ld [c], a
    jp nc, $e98f

    ld sp, hl
    ld c, b
    cp h
    and c
    ld l, b
    ld b, l
    ld [hl], h
    jr nz, jr_06e_5faf

    ld [c], a
    db $f4
    cp $e1
    ld [hl], c
    ldh [$ae], a
    pop bc

jr_06e_6020:
    ldh [$35], a
    dec [hl]
    ld l, h
    or a
    inc bc
    cp b
    ld b, d
    add e
    ldh [rKEY1], a
    db $ec
    db $fc
    add [hl]
    db $f4

jr_06e_602f:
    add [hl]
    db $ec
    ld bc, $006c
    cp $5a
    push hl
    db $d3
    ret nc

    ld b, l

jr_06e_603a:
    xor l
    cp c
    cp d
    and e
    ccf
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $45
    add e
    db $e3
    inc c
    ld b, b
    ldh a, [$c2]
    ld l, c
    cp [hl]
    ret


    xor [hl]
    xor b
    and a
    ld h, [hl]
    ld b, l
    ld [hl], $6e
    ld l, a
    ld bc, $c16c
    ld [c], a
    rst $00
    ret nz

    dec b
    ld h, $fa
    ld a, [c]
    ei
    push bc
    xor $c5
    xor d
    and e
    nop
    cp a
    pop hl
    pop bc
    ld [c], a
    rst $00
    ret nz

    and d
    jp hl


    ld a, l
    jr z, jr_06e_6020

    inc b
    ei
    add $ed
    ld hl, $aa1c
    add b
    xor d
    and h
    ret nc

    ld [hl], $6e
    pop bc
    db $e4
    adc [hl]
    ld c, b
    ld c, d
    add $60
    ld b, c
    and [hl]
    rst $28
    ld l, b
    ld l, [hl]
    add c
    rst $18
    jr nz, jr_06e_602f

    inc b
    db $d3
    ret nc

    ldh a, [rP1]
    nop
    pop bc
    ld [c], a
    sbc b
    and a
    db $fd
    ld b, a
    scf
    ld b, l
    or d
    xor c
    and [hl]
    ld l, b
    ld h, d
    ld hl, $c4b0
    nop
    ld d, a
    ld hl, $f302
    xor c
    jp hl


    ld l, b
    jp hl


    jr jr_06e_60da

    db $10
    ld h, d
    ld b, $c7
    cp b
    call nc, Call_000_270c
    ld c, b
    dec de
    ld h, l
    call nc, $89d4
    jp Jump_06e_6210


    cp [hl]
    db $f4
    and a
    db $eb
    nop
    ld e, c
    jp nz, $28dd

    ld e, $41
    adc $23
    ld b, $cb
    ld a, [$2e8d]
    ld b, l
    ei
    and a
    nop
    rla
    dec l
    add a

jr_06e_60da:
    or $6f
    ld [hl+], a
    dec hl
    dec b
    ld e, c
    call nz, $c6cf
    ldh [$c8], a
    cp e
    rst $10
    nop
    ld [hl-], a
    xor b
    ld b, a
    call nz, $c8c4
    sub e
    ld c, c
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
    add hl, de
    inc de

Call_06e_6112:
    ld [bc], a
    ld bc, $1612
    ld [bc], a
    ld [bc], a
    inc de
    ld d, $02
    inc bc
    add hl, de
    ld d, $02
    inc b
    inc d
    rla
    ld [bc], a
    dec b
    dec d
    rla
    ld [bc], a
    ld b, $16
    jr jr_06e_612d

    rlca
    rla

jr_06e_612d:
    jr @+$04

    ld [$1918], sp
    ld [bc], a
    add hl, bc
    dec h
    add hl, de
    ld [bc], a
    ld a, [bc]
    rla
    ld a, [de]
    ld [bc], a
    dec bc
    add hl, de
    ld a, [de]
    ld [bc], a
    inc c
    jr jr_06e_615d

    ld [bc], a
    dec c
    dec h
    dec de
    ld [bc], a
    ld c, $17
    inc e
    ld [bc], a
    rrca
    add hl, de
    inc e
    ld [bc], a
    db $10
    ld d, $1d
    ld [bc], a
    ld de, $1d18
    ld [bc], a
    ld [de], a
    dec d
    ld e, $02
    inc de
    rla

jr_06e_615d:
    ld e, $02
    inc d
    ld a, [de]

Call_06e_6161:
    ld e, $02
    dec d
    ld d, $1f
    ld [bc], a
    ld d, $15
    jr nz, jr_06e_616d

    rla
    rla

jr_06e_616d:
    jr nz, jr_06e_6171

    jr jr_06e_6187

jr_06e_6171:
    ld hl, $1902
    dec d
    ld [hl+], a
    ld [bc], a
    ld a, [de]
    rla
    ld [hl+], a
    ld [bc], a
    dec de
    ld d, $23
    ld [bc], a
    inc e
    rla
    inc h
    ld [bc], a
    dec e
    dec de
    inc h
    ld [bc], a

jr_06e_6187:
    ld e, $16
    dec h
    ld [bc], a
    rra
    jr jr_06e_61b4

    ld [bc], a
    jr nz, @+$19

    daa
    ld [bc], a
    ld hl, $271d
    ld [bc], a
    ld [hl+], a
    jr jr_06e_61c2

    ld [bc], a
    inc hl
    rla
    add hl, hl
    ld [bc], a
    inc h
    ld e, $29
    ld [bc], a
    dec h
    jr @+$2c

    ld [bc], a
    ld h, $20
    ld a, [hl+]
    ld [bc], a
    daa
    inc h
    ld a, [hl+]
    ld [bc], a
    jr z, jr_06e_61ca

    dec hl
    ld [bc], a
    add hl, hl

jr_06e_61b4:
    ld h, $2b
    ld [bc], a
    ld a, [hl+]
    daa
    dec hl
    ld [bc], a
    dec hl
    ld hl, $022d
    inc l
    add hl, hl
    dec l

jr_06e_61c2:
    ld [bc], a
    dec l
    dec l
    dec l
    ld [bc], a
    ld l, $2f
    dec l

jr_06e_61ca:
    ld [bc], a
    cpl
    inc hl
    ld l, $02
    jr nc, @+$30

    ld l, $02
    ld sp, $2f31
    ld [bc], a
    ld [hl-], a
    inc [hl]
    cpl
    ld [bc], a
    inc sp
    ld e, $30
    ld [bc], a
    inc [hl]
    ld hl, $0231
    dec [hl]
    scf
    ld sp, $3602
    inc h
    ld [hl-], a
    ld [bc], a
    scf
    dec l
    ld [hl-], a
    ld [bc], a
    jr c, jr_06e_6220

    inc [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    ld h, c
    sbc d
    ld h, a
    rst $00
    ld l, [hl]
    ld [c], a
    ld l, [hl]
    sbc a
    ld c, $0e
    ld l, $0d
    dec l
    rst $38
    db $e3
    push af
    rst $20
    ld c, $63
    ld c, $0e
    db $ec
    db $e4
    push hl
    and $ef

Jump_06e_6210:
    pop hl
    ld c, [hl]
    ld l, [hl]
    sub $ee
    rlca
    dec l
    dec c
    dec c
    cp [hl]
    ldh [$c3], a
    ld [c], a
    push af
    db $e3
    push bc

jr_06e_6220:
    ld [c], a
    ret nz

    db $f4
    ld [$e6ac], sp
    set 4, c
    or h
    db $e4
    dec c
    add b
    db $e4
    ret nz

    pop hl
    ld [hl], l
    pop hl
    ret nz

    add sp, $03
    ld c, $4e
    rst $38
    db $e3
    and c
    ldh [$6f], a
    ldh [$6c], a
    jp hl


    set 4, l
    ld c, c
    db $e4
    cp b

Call_06e_6243:
    ld a, [$d6e7]
    push hl
    ld a, e
    ld [c], a
    ld l, [hl]
    dec c
    dec bc
    rst $38
    ldh [$0a], a
    add hl, bc
    dec bc
    cp a
    ldh [$c0], a
    and $0d
    ld d, b
    pop hl
    ei
    ldh [rOBP1], a
    ldh [rNR13], a
    rst $20
    ld hl, sp+$68
    rst $20
    sub [hl]
    db $e4
    add h
    ld [c], a
    ld l, [hl]
    dec bc
    dec c
    dec bc
    inc c
    inc bc
    inc c
    inc l
    cp [hl]
    ldh [$7d], a
    push hl
    ld d, c
    db $e3
    ret nz

    db $e4
    or [hl]
    ldh [$c0], a
    xor $d6
    ld l, a
    and $0e
    ld l, [hl]
    add l
    ldh [$0c], a
    rst $38
    ldh [$6c], a
    inc l
    inc bc
    inc c
    inc l
    cp l
    ldh [$7d], a
    db $e3
    add b
    ld [$c0c8], a
    sbc l
    res 7, d
    pop bc
    ld hl, sp+$32
    db $e4
    pop bc
    pop hl
    jp Jump_06e_6ce1


    inc c
    ld c, h
    ld l, h
    ld l, h
    inc bc
    ld l, h
    inc l
    cp [hl]
    ldh [$fb], a
    pop bc
    sub c
    jp $e73f


    ld c, $e7
    db $fc
    add $78
    or $e3
    add d
    ldh [$c2], a
    ld [c], a

Call_06e_62b6:
    ld l, h
    ld c, h
    ld l, h
    ld c, h
    cp a
    pop hl
    add b
    cp [hl]
    ldh [$bf], a
    push hl
    ld h, $c0
    add a
    push hl
    ret nz

    or $c1
    ld [c], a
    rst $00
    pop hl
    dec hl
    ld h, b
    ret nz

    ret nz

    pop bc
    pop hl
    cp a
    and $79
    jp nz, $c2bf

    ld c, [hl]
    ld l, [hl]
    nop
    pop hl
    add sp, $06
    call nz, $e980
    adc b
    pop bc
    ld a, [bc]
    pop bc
    pop hl
    ld c, h
    ld c, h
    dec bc
    rrca
    ld l, e
    ld c, e
    dec hl
    dec hl
    ld a, [hl]
    ldh [$7a], a
    ldh [$7e], a
    db $e4
    ret nz

    db $e3
    ret nz

    add $c2
    cp a
    pop hl
    sub e
    xor l
    ld c, c
    call nz, $c08a
    ld c, b
    ld [c], a
    dec bc
    dec bc
    rst $08
    dec hl
    ld a, [bc]
    ld l, d
    ld l, d
    ld a, [$b3c0]
    pop hl
    inc l
    inc c
    ld b, c
    dec bc
    ret nz

    add sp, -$80
    ret


    ld e, e
    xor e
    pop bc
    db $e3
    dec bc
    pop hl
    ld c, h
    inc b
    ret nz

    ld b, $ff
    ldh [$6c], a
    ld c, h
    cp [hl]
    pop hl
    or l
    ret nz

    cp h
    add $52
    adc $83
    call nz, $b774
    jp nz, $e7c1

    inc l
    add c
    ldh [$0a], a
    ld a, [bc]
    ld c, e
    or l
    ld [c], a
    add $f1
    pop hl
    inc c
    dec c
    ld a, [hl-]
    add $c0
    xor $77
    rst $00
    dec bc
    inc l
    ld e, b
    add d
    ld [c], a
    adc b
    and c
    add c
    pop hl
    ld c, d
    dec bc
    cp e
    ret nz

    dec hl
    db $fc
    pop bc
    add a
    ld l, h
    inc c
    dec c
    ld a, $e3
    pop bc
    adc d
    ret nz

    db $ec
    ret z

    and b
    inc l

Jump_06e_6362:
    ld a, [hl-]
    ld c, a
    pop bc
    inc c
    dec b
    ldh [$0b], a
    dec bc
    ld c, d
    ld b, b
    pop hl
    ld a, e
    pop bc
    and e
    dec bc
    ld c, e
    cp $c8
    adc h
    adc d
    inc bc
    db $ed
    dec hl
    add c
    db $e3
    inc c
    rst $28
    dec hl
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    ret nz

    pop hl
    ld a, [hl+]
    ld c, e
    ld l, e
    add b
    pop bc
    pop hl
    scf
    jp nz, $c1fe

    ret nz

    db $e3
    adc h
    add a
    add hl, bc
    add [hl]
    ld c, b
    add e
    dec hl
    or a
    ld a, [bc]
    inc l
    ld l, h
    add $a2
    inc l
    ld a, [bc]
    call z, $6be0
    ld e, $bb
    pop hl
    ld l, e
    ld c, e
    ld c, e
    ld l, e
    ret nz

    ld [c], a
    ld a, l
    pop bc
    cp $cb
    ld [$63da], sp
    cp $63
    ret nz

    db $e4
    inc l
    dec c
    and b
    ld c, b
    and b
    add [hl]
    ret nz

    jp nz, $11c2

    ld l, d
    ld a, [hl]
    add c
    db $fc
    db $e4
    rst $20
    ldh [$0b], a
    cp l
    ret nz

    and h
    ld l, b
    cp [hl]
    add e
    nop
    cp $63

jr_06e_63d0:
    add e
    jp $e381


    adc h
    add c
    add e
    jp nz, $c1c0

    inc a
    add c
    inc a
    pop hl
    call nz, $e0c0
    ld a, l
    ret nz

    dec c
    ret nz

    jp hl


    adc b
    adc l
    ld [bc], a

jr_06e_63e9:
    push hl
    inc l
    inc l
    ld bc, $c34b
    ld [c], a
    ret nz

    and $80
    db $e4
    ld a, a
    pop hl
    ld e, a
    ld h, d
    and b
    ld h, h
    rlca
    db $e4
    ld [hl-], a
    dec de
    ld h, [hl]
    dec bc
    add e
    jp $818e


    ld c, d
    ld c, d
    add e
    jp nz, $a0bf

    nop
    ld a, $e5
    jr z, jr_06e_63d0

    ld a, e
    and d
    ldh [rDMA], a
    rlca
    push hl
    ret nz

    rst $20
    inc b
    pop bc
    ld d, b
    and c
    ld [hl-], a
    ld b, [hl]
    add b
    ld a, [hl+]
    ld a, [hl]
    db $e4
    add l
    ret nz

    ld c, e
    ld c, e
    ei
    pop hl
    jr z, jr_06e_63e9

    sub b
    ld h, $e1
    inc sp
    ld h, l
    rlca
    jp hl


    adc $44
    ld c, $ce
    ld h, d
    ld b, [hl]
    add e
    dec bc
    ld [$e4c0], sp
    nop
    pop hl
    ret nz

    pop hl
    ld c, e
    push hl
    db $e3
    cp d
    add a
    ld a, $ac
    call nz, $c4a3
    ld a, [bc]
    add e
    cp [hl]
    jp nz, $fe6b

    call nz, $c47e
    or e
    ld h, d
    inc c
    ld c, h
    ld bc, $330c
    ld h, b
    ld e, l
    ld b, b
    cp $8f
    sbc a
    ld b, c
    inc e
    pop hl
    jp nz, Jump_06e_4ca3

    ld h, b
    adc l
    inc l
    cp [hl]
    jp Jump_000_0a2a


    cp $41
    or d
    ld h, e
    and $a1
    dec bc
    jp Jump_000_2b2b


    cp c
    sub d
    ret nz

    db $e3
    add [hl]
    add h
    cp l
    and d
    ld a, [bc]
    ld c, d
    ld b, $7d
    ldh [$2a], a
    ld l, d
    ld b, [hl]
    add c
    jp hl


    add sp, $6e

Jump_06e_648a:
    ld b, c
    cp c
    adc h
    rlca
    ld h, h
    cp b
    add c
    pop bc
    dec c
    ld h, d
    cp l
    jp nz, Jump_06e_6b6c

    ld c, d
    add [hl]
    pop bc
    dec hl
    ld de, $bf4a
    ldh [$c3], a
    add d
    add sp, -$3c
    dec hl
    ld l, h
    ld h, c
    ld a, c
    adc c
    jp nz, $e0e5

    ld b, c
    jr nz, jr_06e_6500

    ld b, c
    add c
    db $e3
    ld b, [hl]
    ld h, c
    ld b, [hl]
    jp nz, Jump_06e_4a2b

    ld a, [bc]
    pop af
    ld c, d
    xor $c2
    add sp, -$3d
    rst $20
    ldh [$0d], a
    dec bc
    dec hl
    ld c, e
    jr nc, jr_06e_6500

    sub b
    ld c, h
    ld b, c
    ld de, $c041
    jp nz, $2c6c

    ld b, [hl]
    ld h, b
    ld b, $c2
    db $10
    ld a, $81
    jp $8061


    db $e3
    ld sp, $6b40
    xor h
    ld hl, $82b9
    ld c, d
    ld l, h
    add b
    dec b
    add c
    ret nz

    rst $20
    push bc
    ld h, d
    ld b, b
    ld h, c
    ld a, [hl]
    ld h, c
    add l
    jp nz, $e4fb

    ld l, e
    ld b, $71
    add b
    ld c, e
    dec bc
    ret nz

    db $ed
    inc hl
    ld [hl+], a
    ret nz

    db $e3
    add hl, bc

jr_06e_6500:
    ld b, d
    add e
    pop bc
    ldh a, [rLCDC]
    add b
    db $fd
    add e
    ret nz

    ldh [rBCPD], a
    push bc
    inc c
    inc l
    dec c
    dec hl
    ld d, b
    or c
    and b
    ret nz

    ldh a, [rSTAT]
    and e
    reti


    call nz, $084c
    add b
    ld a, [hl+]
    adc e
    and b
    db $10
    cp h
    ret nz

    cp $40
    ld l, a
    ld h, e
    ld l, b
    jp $ed4c


    ld bc, $6078
    add b
    jp z, $cd0e

    dec b
    dec bc
    dec bc
    ld c, h
    ld a, a
    and h
    jp $8a61


    ld h, c
    ret nz

    db $e3
    ldh [$c1], a
    and $80
    pop bc
    ld l, e
    ld b, b
    ret nz

    ld [$2649], a
    ld c, $4e
    ld l, $08
    ret nz

    db $e3
    ld bc, $4162
    ld h, c
    dec hl
    ld a, a
    ld h, d
    db $ec
    and l
    ret nz

    push hl
    xor a
    add c
    ret nz

    ld [hl-], a
    ld [hl+], a
    ld a, [$0046]
    and a
    ld d, h
    ld b, b
    adc [hl]
    nop
    ld b, $82
    ld a, [hl+]
    ld l, d
    ld [$20c1], sp
    pop bc
    push hl
    ld a, $e6
    ld c, h
    or $62
    ld a, [hl-]
    add b
    add c
    add [hl]
    ret nz

    jp hl


    dec b
    dec c
    rst $38
    ret nz

    ld c, h
    sub b
    nop
    ld b, [hl]
    add [hl]
    ei
    ld b, b
    add b
    ld [hl+], a
    ld l, d
    and l
    nop
    ld bc, $70e2
    add b
    cp d
    ld h, d
    ld a, [$8d45]
    inc b
    ld h, [hl]
    ld [hl+], a
    ld a, a
    db $e3
    inc bc
    and d
    ld [hl], b
    db $fd
    pop bc
    rlca
    ld h, b
    db $fc
    nop
    cp a
    push hl
    inc l
    ld l, h
    ld c, h
    add c
    ret nz

    ld [hl], e
    dec bc
    ld a, [bc]
    ld a, a
    call nz, $2e83
    ld c, [hl]
    ld l, $0d
    call nc, $80e0
    ld e, c
    add d
    ld c, [hl]
    nop
    ld b, $64
    call nz, $8041
    add $f2
    ld b, d
    xor d
    nop
    ld c, $01
    ld l, [hl]
    cp a
    xor b
    add b
    ld b, [hl]
    and b
    jr nz, @-$6b

    pop hl
    db $fd
    ld h, e
    rst $00
    ld c, b
    db $ed
    ld hl, $ab0c
    inc h
    or c
    ld b, e
    ld c, $6e
    db $fc
    ld l, c
    add b
    ld c, b
    cp a
    rst $20
    ld a, [hl]
    and $f1
    inc l
    add c
    add c
    xor e
    ld h, e
    add h
    and c
    ld a, [bc]
    dec bc
    ld l, e
    ld l, e
    pop hl
    ld c, e
    ld a, [$c023]
    and $78
    pop bc
    ldh a, [$e4]

jr_06e_65f9:
    ld c, [hl]
    ld c, $2e
    pop bc
    ld a, [bc]
    ld b, l
    nop
    sub $61
    ret z

    push hl
    inc [hl]
    ld bc, $826e
    dec bc
    ld a, [bc]
    nop
    or l
    ld hl, $c06b
    ld [bc], a
    ld a, [c]
    add hl, sp
    ld b, b
    ld l, h
    ld h, d
    inc a
    db $e3
    or a
    and l
    cp h
    push hl
    inc b
    xor $02
    ld b, l
    add c
    dec hl
    ldh a, [rP1]
    ld [bc], a
    ld [c], a
    pop bc
    ld l, a
    inc l
    ld h, h
    cp c
    and b
    sub e
    dec c
    ld l, e
    cp [hl]
    push hl
    rlca
    add [hl]
    dec bc
    add [hl]
    pop bc
    or e
    ld [hl+], a
    ld a, [bc]
    ld [$e302], sp
    add hl, sp
    ld de, $85f8
    dec c
    ld e, e
    add b
    adc [hl]
    ld bc, $a671
    pop bc
    ldh [$80], a
    ld b, $c2
    ld l, h
    and c
    jp Jump_06e_47c0


    xor c
    ld [hl], a
    dec b
    cp e
    ld b, l
    jr c, jr_06e_65f9

    dec c
    db $10
    pop de
    db $e3
    ld c, e
    add $f0
    db $e4

jr_06e_665f:
    dec l
    nop
    ld c, e
    jp Jump_06e_7c68


    inc b
    inc [hl]
    rlca
    nop
    scf
    add h

jr_06e_666b:
    cp a
    ld [c], a
    ld a, a
    ld h, d
    db $fd
    db $e3
    ret nz

    pop hl
    ld b, d
    push hl
    inc b
    add b
    add e
    ld l, e
    nop
    ld a, [hl-]
    and [hl]
    ld a, [$f8c8]
    and c
    ret nz

    ld [$c3c4], a
    ld l, a
    nop
    halt
    ret nz

    db $ed
    inc b
    cp d
    add [hl]
    ld h, [hl]
    jr z, jr_06e_66de

    dec h
    jr nz, jr_06e_665f

    push hl
    ld a, c
    and h
    adc b
    ld h, c
    ld b, e
    ld h, c
    nop
    call nz, $baa8
    ld [hl+], a
    ld b, e
    db $e4
    scf
    ld [hl+], a
    ld [hl], $e7
    ld a, h
    push hl
    sub a
    jr nz, jr_06e_671e

    db $e3
    ld [bc], a
    ret


    and b
    ld l, e
    ret z

    add b
    jp nz, $c0c5

    ld [$2472], a
    ld [hl], b
    add l
    ld h, e
    inc h
    nop
    ld a, h
    ldh [$6d], a
    jr nz, jr_06e_666b

    ld [bc], a
    ld hl, sp-$7b
    ld b, [hl]
    and d
    ret nz

    rst $30
    ldh a, [$64]
    inc hl
    call z, Call_06e_6a00
    nop
    ld a, h
    ld [bc], a
    ld [hl], a
    ld bc, $c544
    add hl, bc
    ld l, b
    add b
    db $e4
    ld a, [c]
    ld c, a
    ld [$0545], a

jr_06e_66de:
    ld l, [hl]
    or [hl]
    add l
    ld a, [bc]
    ld b, e
    rst $20
    ld [bc], a
    db $e3
    nop
    push bc
    ret nz

    ld sp, hl
    xor e
    nop
    nop
    add $a3
    inc b
    ret nz

    ld b, e
    rst $20
    ret nz

    db $eb
    cp h
    ld h, [hl]
    rst $30
    jp hl


    inc l
    ld b, h
    pop bc
    ldh [$c0], a
    add l
    and h
    di
    jp nz, $a859

    nop
    push bc
    or e
    db $10
    ld [hl], d
    jp $2d0e


    ld bc, $c16d
    db $e3
    ld c, h
    ld b, d
    add a
    ret z

    ret nz

    db $ed
    ld a, l
    and l
    ld l, c
    and [hl]
    xor [hl]
    dec b
    inc bc
    ld l, l

jr_06e_671e:
    ld c, $53
    ld b, c
    inc c
    ld h, d
    adc $42
    reti


    ld h, d
    ld b, e

jr_06e_6728:
    inc c
    db $fd
    ld b, b
    nop
    ld b, a
    rst $00
    xor e
    adc [hl]
    cp h
    and a
    adc [hl]
    ld b, b
    ld d, a
    ld b, $d7
    xor c
    ld b, $82
    add b
    ld [$6c94], a
    inc bc
    ld [bc], a
    db $e4
    dec hl
    pop bc
    pop bc
    dec l
    ret nz

    db $e3
    ld l, e
    db $e4
    ld l, l
    ld b, b
    dec c
    xor c
    ld l, a
    db $ec
    xor d
    dec bc
    xor [hl]
    nop
    add b
    ld [$411c], a
    ld l, $c0
    ldh [rP1], a
    rst $10
    xor c
    inc b
    jp nz, $c6b0

    and l

Jump_06e_6762:
    call nz, $e4eb
    ld l, [hl]
    jr nz, jr_06e_6728

    db $ed
    sub e
    xor $20
    add b
    and a
    ret nz

    rst $28
    or b
    ld b, b
    add hl, bc
    and b
    db $fd
    pop hl
    ld c, e
    ld [hl], $a2
    adc d
    ld l, d
    nop
    add b
    xor e
    ld a, [c]
    ld h, [hl]
    add b
    push hl
    cp d
    add h
    and e
    dec b
    inc b
    jp $f9c0


    cp $ae
    nop
    rst $38
    db $fc
    add b
    xor e
    jp nc, $e4f2

    ld sp, hl
    add h
    ld b, l
    nop
    nop
    nop
    rst $08
    call nc, $d4d5
    and b
    rst $38
    db $e4
    push af
    rst $20
    sub $d7
    adc c
    ret c

    db $eb
    push hl
    rst $28
    jp hl


    call nc, $e5d5
    set 5, b
    ret


    push hl
    ld [c], a
    add hl, sp
    db $e3
    cp [hl]
    db $e3
    push bc
    ld [c], a
    reti


    jp c, $c0db

    db $eb
    rst $28
    xor $cc
    adc c
    rst $20
    xor e
    db $e4
    db $e4
    push hl
    and b
    db $e3
    push bc
    ld [c], a
    call c, Call_000_2ddd
    sbc $6b
    ldh [$9f], a
    sbc l
    rst $38
    db $e3
    sbc a
    rst $28
    ld [c], a
    ld l, h
    ld [$769c], a
    and $86
    push hl
    and b
    and $e7
    add hl, sp
    db $e3
    push bc
    ldh [$e2], a
    rst $28
    db $e3
    rst $18
    ldh [$e1], a
    pop bc
    ldh [$9c], a
    xor [hl]
    ld b, [hl]
    ld a, $ff
    ldh [$c3], a
    ld b, [hl]
    sbc h
    sbc a
    and b
    rst $28
    ldh [$6c], a
    and $80
    ret nc

    db $e3
    inc sp
    rst $20
    add [hl]
    pop hl
    ld [de], a
    rst $20
    push bc
    ldh [$75], a
    pop hl
    add h
    ldh [$9c], a
    cp a
    ld b, [hl]
    xor a
    ld b, [hl]
    inc bc
    add hl, bc
    inc bc
    cp [hl]
    ldh [$9c], a
    ld h, b
    ld a, l
    db $e4
    ld d, c
    db $e3
    ret nc

    db $eb
    add [hl]
    rst $20
    rst $28
    jp hl


    sbc a
    sbc h
    add l
    ldh [rIE], a
    inc bc
    inc b
    rlca
    dec c
    sbc c
    dec c
    rlca
    inc b
    add b
    cp l
    ldh [$7d], a
    db $e3
    ret nc

    db $eb
    ld a, b
    db $e4
    dec l
    db $ec
    cp b
    jp nz, $e1c1

    inc bc
    rst $38
    inc b
    dec c
    sbc c
    sbc c
    nop
    ld bc, $9999
    inc bc
    sbc c
    dec c
    cp [hl]
    ldh [$3c], a
    ldh [rIF], a
    db $ec
    ld c, b
    and $53
    pop bc
    db $fc
    jp Jump_06e_49b4


    pop bc
    ld b, e
    ld [c], a
    sbc h
    jp nz, $0fe2

    inc b
    rst $38
    ldh [rIF], a
    ld c, $bf
    ldh [$99], a
    dec c
    ld [bc], a
    cp a
    push hl
    db $dd
    push hl
    adc $c8
    ld d, e
    pop bc
    ld hl, sp-$04
    jp $c149


    ld b, e
    db $e3
    ld [bc], a
    dec c
    sbc b
    sbc b
    rrca
    cp a
    ld [bc], a
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, $c0
    pop hl
    sbc c
    dec c
    rrca
    cp a
    db $e3
    ld [c], a
    db $e3
    db $dd
    db $e4
    push af
    and h
    rst $28
    and d
    ld d, e
    pop bc
    db $fc
    add d
    jp $c449


    sbc h
    jp Jump_000_0f02


    sbc b
    sbc b
    rst $28
    sbc b
    ld b, $46
    ld b, l
    rst $38
    ldh [rTIMA], a
    db $10
    sbc b
    scf
    sbc b
    sbc c
    sbc b
    cp a
    db $e4
    db $e4
    push hl
    cp d
    call nz, $c93e
    ret c

    rst $20
    add $dd
    jp $e182


    rrca
    sbc c
    set 4, b
    ld a, [bc]
    ld b, [hl]
    ld a, a
    ld b, [hl]
    ld b, l
    ld b, a
    ld d, h
    ld d, d
    ld [$f399], sp
    ldh [$3f], a
    sbc b
    sbc b
    ld c, $05
    ld b, [hl]
    sbc [hl]
    dec de
    ret nz

    db $d3
    rst $20
    ldh a, [$f9]
    rst $28
    ld c, d
    and d
    pop bc
    db $e3
    dec bc
    pop hl
    dec b
    ld b, [hl]
    ld b, [hl]
    ld c, d
    rst $28
    ld h, b
    ld d, [hl]
    add sp, $06
    cp h
    pop bc
    sbc b
    sbc c
    sbc c
    pop bc
    ld b, $bc
    jp z, $acc1

    ld h, $a2
    ld c, d
    and c
    pop bc
    db $e4
    rrca
    inc b
    rst $38
    add hl, bc
    inc b
    inc c
    ld b, [hl]
    ld b, l
    ld c, e
    ld h, c
    ld e, d
    xor a
    ld b, e
    dec b
    rlca
    rlca
    add hl, sp
    ret nz

    sbc c
    ld a, a
    ldh [$ae], a
    ldh a, [$b7]
    and b
    and $8e
    pop bc
    xor b
    ld c, d
    and c
    sbc [hl]
    ld b, [hl]
    dec b
    ld c, $ea
    ld c, l
    ret nz

    ld [bc], a
    add h
    ldh [rLYC], a
    add c
    ldh [$61], a
    ld d, [hl]
    ld b, l
    ld l, a
    ld b, l
    dec hl
    ld sp, $342b
    jp nz, $af06

    ld a, $e0
    ld b, b
    and $82
    pop bc
    adc d
    pop bc
    and a
    ld c, d
    and b
    ret z

    and b
    adc a
    jp nz, $8405

    ldh [rIE], a
    ld b, h
    ld b, [hl]
    ld c, a
    ld h, c
    ld h, c
    ld h, c
    ld e, h
    dec l
    cpl
    jr nz, jr_06e_6972

    jr nz, @+$2f

    or h
    and b
    rrca
    cp $c2
    ld a, d
    and l
    ld hl, sp-$74
    add a
    inc bc
    db $ec
    add c
    ld [c], a
    sbc c
    ld b, $45
    ld b, a
    ld d, d

jr_06e_6967:
    ld e, $80
    ldh [$61], a
    ld h, c
    ld d, d
    ld b, l
    ret nz

    db $e3
    scf
    pop bc

jr_06e_6972:
    cp $c1
    ldh a, [$7a]

jr_06e_6976:
    and e
    adc h
    adc b
    add hl, bc
    add l
    ld c, l
    add d
    sbc [hl]
    ld b, [hl]
    jp $de06


    add l
    pop bc
    rrca
    rlca
    dec d
    ld d, [hl]
    inc b
    ret nz

    ld b, l
    ld d, e
    rlca
    ld d, e
    ld b, l
    ld b, [hl]
    ld b, b
    pop hl
    ld hl, sp-$60
    jr z, jr_06e_6976

    ld a, l
    ret nz

    cp $cb
    or b
    adc h
    add l
    cp h
    ld h, c
    ld c, l
    add d
    ld [bc], a
    pop hl
    sbc b
    sub a
    add $a0
    ld b, [hl]
    ld a, a
    ld c, d
    ld d, l
    ld b, [hl]
    ld b, l
    ld c, b
    ld c, c
    ld c, h
    ld a, e
    ldh [rSC], a
    rst $38
    and $08
    ld a, l
    ret nz

    cp l
    ret nz

    db $e4

jr_06e_69bb:
    ld l, [hl]
    xor c
    ld h, e
    ld c, l
    add c
    add $a0
    cp $81
    ld [c], a
    ld [$4646], sp
    ld c, a
    ld b, h
    ld b, l
    ld b, a
    push af
    ld h, b
    ld bc, $55e0
    ret nz

    jp hl


    ld c, $05
    xor a
    xor [hl]
    ld h, c
    sbc [hl]
    cp [hl]
    and [hl]
    ld hl, sp-$52
    ld [bc], a
    and $52
    and b
    ld c, a
    ld e, h
    pop bc
    ld [c], a
    jr jr_06e_6967

    ret nz

    add b
    add sp, -$04
    and b
    xor a
    sbc [hl]
    db $e4
    ld h, c
    ld sp, $bb64
    call z, $9e39
    ld [de], a
    and l
    ld de, $4aa0
    ld d, l
    ld c, l
    pop bc
    pop hl
    add b

Call_06e_6a00:
    ret nz

    nop
    ccf
    push hl
    jr z, @-$3d

    ld a, e
    and d
    ld sp, $c368
    ld b, c
    pop bc
    ld h, a
    inc b
    jp $a095


    rra
    nop
    ld bc, $150e
    ld d, [hl]
    add c
    ld [c], a
    add b
    add sp, -$49
    add b
    inc c
    inc l
    and c
    ret nz

    ldh [$e2], a
    db $e3
    or h
    ld h, [hl]
    ld b, a
    ld h, d
    push bc
    ld b, c
    adc [hl]
    ld b, c
    rst $20
    sbc [hl]
    ld b, [hl]
    ld a, [bc]
    dec d
    and d
    ld d, e
    and b
    ld [bc], a
    ld b, [hl]
    ld d, l
    jr jr_06e_69bb

    db $e3
    ld b, b
    and $ad
    add d
    sbc b
    ld a, [bc]
    cp d
    add e
    ld a, [$c58b]
    ld b, c
    db $fc
    adc [hl]
    ld b, b
    adc h
    ld h, b
    ld a, [bc]
    sbc b
    sbc b
    sub a
    sub a
    sub a
    ld e, $8f
    add b
    ld [bc], a
    ld b, [hl]
    ld b, l
    ld d, d
    ld b, b
    db $e3
    ld a, [hl]
    call nz, $81ec
    ld c, $fb
    add d
    jp $9f9c


    ld c, a
    ld l, l
    push bc
    ld b, c
    adc [hl]
    ld b, b
    ld bc, $f7e2
    sbc b
    sub a
    sub [hl]
    cp a
    pop hl
    rrca
    inc b
    inc bc
    ld d, b
    dec sp
    ld d, e
    ld d, h
    add c
    and b
    ld d, h
    ld e, c
    inc bc
    cp $40
    add d
    and b
    ld a, [hl]
    cp c
    ld h, c
    nop
    ld bc, $4608
    add hl, sp
    ld [hl], $b9
    sub d
    ld [hl], h
    adc [hl]
    ld b, b
    pop bc
    ret nz

    ld [$e081], sp
    sub [hl]
    sub [hl]
    sub [hl]
    ld a, [hl]
    ldh [rIE], a
    dec c
    ld [bc], a
    ld e, a
    ld d, l
    ld b, l
    ld e, e
    ld e, e
    ld d, l
    rst $08
    ld d, d
    dec d
    rrca
    dec c
    ret nz

    add d
    and a
    jp Jump_06e_4608


    rst $00
    ld a, $35
    add hl, sp
    cp c
    adc h
    xor d
    dec h
    ret nz

    db $e3
    sub [hl]
    sub l
    call c, $e0c1
    add c
    ldh [rLYC], a
    ld c, e
    ld e, d
    ld b, d
    ld b, b
    ld b, h
    ld c, l
    rst $20
    ld d, d
    ld [bc], a
    rrca
    ccf
    add d
    add sp, -$3d
    ld [$3a45], sp
    ld h, a
    dec [hl]
    ld a, [hl-]
    ld b, l
    cp c
    add h
    or $2c
    sbc [hl]
    xor [hl]
    add b
    db $e4
    ld l, e
    sub a
    sbc b
    ld b, [hl]
    ld h, c
    ld c, a
    ret nz

    db $e3
    ld h, c
    ld d, l
    add a
    pop bc
    cp $e8
    call nz, Call_000_0898
    add hl, sp
    xor h
    dec [hl]
    inc a
    ld b, h
    call z, $86b9
    cp e
    ld a, [hl+]
    sbc [hl]
    xor a
    ld e, l
    and b
    nop
    pop hl
    sbc b
    sbc c

jr_06e_6b01:
    pop bc
    inc c
    ld b, [hl]
    ld h, b
    add b
    ld [c], a
    ld a, $81
    cpl
    add d
    add b
    push hl
    add hl, sp

Jump_06e_6b0e:
    xor l
    ld bc, $3f35
    pop hl
    sbc a
    jr nz, @+$43

    ld b, [hl]
    db $d3
    ld [bc], a
    ld b, c
    jr nz, jr_06e_6b1c

jr_06e_6b1c:
    ld [c], a
    add b
    jp nz, $9905

    push bc
    ld h, b
    ld b, a
    ld b, l
    and c
    cp a
    ld h, b
    ld a, $80
    ld a, $60
    nop
    and $1e
    ld b, b
    ldh [$35], a
    add hl, sp
    ld b, [hl]
    sbc [hl]
    sbc a
    nop
    adc c
    ld h, $d3
    nop
    db $e3
    ld [c], a
    db $e3
    ld b, c
    jr nz, jr_06e_6b01

    pop bc
    dec d
    ld h, d
    sbc c
    ld c, $0c
    add a
    ld c, b
    ld c, c
    ld h, b
    ld b, b
    add b
    db $fd
    add e
    ret nz

    pop hl
    jp hl


    and h
    sbc c
    dec de
    ld [$00ae], sp
    pop hl
    ld b, [hl]
    sbc [hl]
    sbc a
    nop
    adc c
    ld h, $d3
    nop
    jr c, jr_06e_6ba0

    ld [hl+], a
    ld b, c
    and h
    dec d
    ld h, c
    ld b, a
    ld h, b
    ld d, h
    ld b, [hl]

Jump_06e_6b6c:
    add b
    add c
    db $e3
    ldh a, [rLCDC]
    ldh [$ea], a
    and d
    ld bc, $7ce1
    ld h, b
    inc a
    dec [hl]
    ld a, [hl-]
    xor [hl]
    sbc c
    ld b, [hl]
    cp e
    adc d
    db $d3
    nop
    and $e7
    jr z, @+$62

    ld bc, $0aa0
    ld b, $d6
    ld b, d
    sbc c
    ld b, $08
    add c
    call nz, $bf01
    ld h, b
    ret nz

    ret nz

    dec hl
    call nz, $a63e
    and c
    ld a, [bc]
    add hl, sp
    dec [hl]
    dec [hl]
    inc a

jr_06e_6ba0:
    jr c, jr_06e_6c02

    ld c, h
    ld b, a
    db $e4
    jr c, @+$46

    add b
    and c
    ret nc

    add b
    and c
    ret z

    jr nz, @+$09

    rlca
    dec d
    rst $30
    ld b, [hl]
    ld b, l
    ld d, b
    add $60
    ld b, l
    ld d, c
    ld e, [hl]
    ld h, c
    ld a, b

Call_06e_6bbc:
    ld b, b
    ret nz

    xor e
    and b
    jp hl


    and l
    ld a, [bc]
    ld a, [hl-]
    dec [hl]
    jp $e000


    sub b
    ld [hl-], a
    ld [hl+], a
    ld a, [$7e46]
    ld b, c
    push bc
    ld hl, $c2d2
    ld h, c
    call c, Call_06e_44a0
    cp a
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, c
    ld e, l
    ld d, d
    jp nz, Jump_06e_4a20

    ld h, [hl]
    pop bc
    pop hl
    ld bc, $f200
    jr nz, jr_06e_6c28

    db $e3
    ld c, $05
    pop bc
    ret nz

    add d
    rst $38
    and b
    xor [hl]
    ld a, d
    add d
    cp b
    ld b, l
    ld b, e
    ld hl, $21c5
    rst $38
    and b
    ld b, $e6
    adc $00
    rrca
    ld [bc], a

jr_06e_6c02:
    ld b, [hl]
    and d
    ld b, [hl]
    add c
    ld c, a
    ld d, d
    ld b, l
    cp c
    dec bc
    ld b, h
    and e
    xor c
    add e
    ld b, $ae
    ld a, $c0
    ld [c], a
    xor a
    jr nc, jr_06e_6c96

    pop bc
    ld a, l
    ld h, $f7
    ld [bc], a
    rst $38
    pop bc
    xor a
    xor [hl]
    ccf
    add d
    inc bc
    and b
    rst $00
    ld d, e
    ld e, c
    ld e, c

jr_06e_6c28:
    cp a
    jp nz, $e13b

jr_06e_6c2c:
    or b
    dec h
    sbc c
    sbc d
    inc e
    add b
    ld h, b
    ld b, c
    ret nz

    jp Jump_06e_4639


    ld a, a
    jp nz, Jump_000_2b83

    rst $38
    jp nz, $afc1

    ld e, c
    add h
    ld c, [hl]
    ld bc, $6407
    cp h
    rlca
    cp e
    nop
    scf
    jr c, jr_06e_6c8b

    ld b, c
    ldh [$3c], a
    ld b, h
    ld b, [hl]
    ret nc

    sbc a
    push de
    nop
    cp a
    and l
    inc c
    ld a, [c]
    inc hl
    call nz, $d301
    ret nc

    ld d, a
    add d
    rla
    pop bc
    cp a
    jr nz, jr_06e_6c2c

    ld b, a
    db $e4
    push bc
    ld h, d
    ld a, h
    nop

Call_06e_6c6c:
    ld [hl], $03
    ldh [rP1], a
    ldh [rLCDC], a
    ret nc

    db $d3
    ret nz

    rlc c
    add a
    ld h, a
    or b
    ld hl, $02c4
    cp a
    ld [c], a
    sub e
    add d
    ld [bc], a
    dec bc
    dec a
    dec bc
    add [hl]
    ld b, e
    dec bc
    dec bc
    ld [bc], a
    rlca

jr_06e_6c8b:
    push bc
    ld h, d
    ld sp, $3e00
    ld b, e
    pop hl
    dec [hl]
    jr c, jr_06e_6ccc

    ld b, l

jr_06e_6c96:
    jp nc, $223a

    add a
    ld h, $78
    ld [hl], l
    ld bc, $00fb
    rst $30
    ld bc, $d1d3
    ret nc

    jp Jump_000_2253


    ldh [$fa], a
    ret nz

    ld [$0520], sp
    jr nz, jr_06e_6cb7

    add b
    cp a
    nop
    sbc b
    sbc c
    dec c
    rst $30

jr_06e_6cb7:
    ld [bc], a
    ld b, [hl]
    jp $c003


    dec [hl]
    ld [hl], $45

jr_06e_6cbf:
    jp Jump_000_0200


    ldh a, [$b6]
    ld hl, $23b2
    inc a
    pop hl
    ld de, $3920

jr_06e_6ccc:
    ld h, e
    ld c, e
    and e
    ld l, [hl]
    ld b, c
    ld [bc], a
    rst $28
    pop bc
    ld b, l

jr_06e_6cd5:
    ld b, b
    ldh [$03], a
    ldh [rSC], a
    db $e3
    ld a, l
    ld l, l
    db $fd
    add d
    cp a
    db $e4

Jump_06e_6ce1:
    pop de
    xor [hl]
    cp [hl]
    ld [c], a
    ld c, c
    add c
    inc sp
    ld h, d
    sbc c
    add e
    pop hl
    xor [hl]
    ld b, l
    ld c, $c3
    jp nz, Jump_06e_4035

    jp $e302


    db $fc
    dec l
    inc [hl]
    ld hl, $0363
    adc a
    jp nc, $af46

    xor [hl]
    ld c, l
    ld h, c
    ld c, c
    ld bc, $c174
    rlca
    ld l, l
    rlca
    ld [hl], d
    ret nz

    xor [hl]
    xor a
    jp Jump_000_3cc3


    ld b, h
    jp $60c0


    rst $00
    ld l, h
    inc [hl]
    ld h, $65
    jr nz, jr_06e_6cd5

    nop
    jr c, jr_06e_6cbf

    xor a
    xor [hl]
    cp [hl]
    ldh [$a8], a
    call nz, $fec1
    pop hl
    rst $30
    add b
    xor [hl]
    pop bc
    db $e3
    jp $a184


    jp nc, $fec0

    ld b, $85
    ld h, d
    inc [hl]
    add hl, bc
    db $fc
    nop
    ld [hl+], a
    ld hl, $c039
    xor a
    xor a
    xor a
    ld b, [hl]
    ld b, [hl]
    add $c7
    db $fd
    db $e4
    ld b, [hl]
    pop af
    ldh [rLCDC], a
    add b
    ld b, l
    jp $8104


    ld b, e
    ld l, b
    ld a, [hl-]
    xor c
    db $fc
    inc bc
    cp c
    ld [bc], a
    ld hl, sp-$5f
    ld b, [hl]
    ld h, a
    ld b, [hl]
    call nz, $fdc5
    db $e4
    db $76
    add c
    ld b, h
    inc a
    inc b
    pop bc
    ret nz

    ld b, h
    ret nz

    ret nz

    ldh [$fe], a

jr_06e_6d6d:
    dec bc
    rst $38
    ld b, l
    rst $30
    ld b, e
    ld h, a
    add e
    db $d3
    pop de
    or c
    pop de
    cp l
    ld [c], a
    add e
    rlca
    adc b
    ld h, c
    dec sp
    ld [hl], $e8
    ret nz

    ret nc

    ld b, c
    sbc a
    sub l
    ld bc, $a284
    ld a, e
    ld c, h
    ld [hl], $e9
    ld a, h
    push hl
    ret nc

Jump_06e_6d90:
    or a
    db $e4
    rst $38
    jp Jump_000_3946


    jr c, jr_06e_6dcf

    ld b, e
    ld b, l
    xor a
    ld bc, $c246
    call nz, $c214
    ld [hl], $05
    cp b
    and $af
    inc bc
    xor c
    db $e4
    ld a, h
    ldh [$0b], a
    pop de
    pop de
    sub h
    ret nz

    jp nc, $87f8

    or b
    ldh [$83], a
    call nz, Call_06e_6243
    jr nz, jr_06e_6df1

    dec b
    or d
    ld b, $b5
    ld h, [hl]
    inc h
    ret


    ld l, c
    ld h, b
    jp $e37d


    pop bc
    rst $20
    nop
    jp z, Jump_06e_7b63

    ld h, l
    push bc

jr_06e_6dcf:
    add c
    ld [hl], d
    ld b, [hl]
    and e
    dec b
    xor a
    nop
    sbc a
    add d
    ld [$0200], a
    or a
    add h
    jp $e543


    ld [$48e3], sp
    rlca
    call nz, Call_000_3a61
    ld b, $a3
    dec b
    nop
    jr nc, jr_06e_6d6d

    cpl
    and c
    xor e
    nop

jr_06e_6df1:
    push af
    and d
    ld a, h
    pop hl
    add $a5
    ld d, b
    db $e3
    cp d
    dec bc
    nop
    ld [hl], d
    ld b, [hl]
    ld l, c
    ld b, l
    xor a
    nop
    ld e, [hl]
    ld b, b
    pop bc
    pop hl
    ld [hl], d
    and c
    or l
    jp nz, $a187

    ret nz

    inc d
    ld h, l
    rst $38
    ei
    ld l, [hl]
    add b
    jr nc, @-$7c

    pop bc
    db $e3
    or h
    and b
    ld b, [hl]
    xor [hl]
    sub b
    add a
    ret z

    ld [bc], a
    xor l
    or a
    ld b, l

jr_06e_6e22:
    xor a
    ld h, h
    call nc, $e0ff
    call nz, $45c6
    ld e, a
    xor a
    ld b, e
    xor a
    ld b, e
    ld b, e
    ld b, [hl]
    ret nz

    jp nc, $a34f

    ld [hl], b
    ld c, d
    db $eb
    ld a, l
    xor e
    xor a
    ld h, a
    add h
    rst $00
    ld b, h
    and h
    ld h, h
    rst $38
    ldh [$03], a
    and l
    ld b, h
    ld c, c
    and b
    sub [hl]
    and a
    rst $10
    xor c
    ld a, [hl-]
    ld h, c

jr_06e_6e4e:
    ld a, h
    inc b
    xor a
    ld l, d
    db $fc
    and e
    and c
    add h
    ret nz

    ld b, b
    ld l, c
    and e

jr_06e_6e5a:
    dec [hl]
    dec [hl]
    and e
    add c
    ld l, d
    ret nz

    ld [c], a
    dec c
    or c
    adc e
    db $ec
    ld l, l
    and a
    db $eb
    and c
    ld l, [hl]
    jr nz, @+$42

    ld bc, $0c69
    ld h, c
    ret nz

    db $e3
    ld c, h
    ld b, [hl]
    jr nz, jr_06e_6e5a

    ld a, [hl-]
    ld h, l
    jr c, jr_06e_6e22

    or l
    and h
    cp b
    and l
    ld b, b
    or b
    ld b, c
    ld l, [hl]
    jr nz, jr_06e_6ec8

    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a

jr_06e_6e89:
    add b
    ld b, b
    ld [c], a
    ld c, h
    ld c, l
    adc b
    and l

Jump_06e_6e90:
    inc [hl]
    ld c, b
    ld l, l
    and h
    dec [hl]
    ld h, b
    or b
    ld b, h
    ld b, l
    dec de
    ld b, e
    ld b, c
    pop bc
    ret nz

    ld b, e
    ld b, l
    ret


    add b
    ld c, b
    call z, $a597
    nop
    jr c, jr_06e_6e4e

    adc e
    jp nz, $04e8

    ld h, h
    ld b, $fb
    add d
    rst $30
    add h
    ld c, d
    ld l, h
    sub a
    and l
    nop
    jr nc, jr_06e_6e89

    ld h, d
    ld [hl], b
    ld c, h
    ret nc

    ld [hl], $d3
    rst $38
    rst $38
    ld bc, $00cc
    nop
    nop
    pop bc

jr_06e_6ec8:
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
    inc e
    inc b
    ld [bc], a
    ld bc, $0d2b
    ld [bc], a
    ld [bc], a
    ld l, $12
    ld [bc], a
    inc bc
    cpl
    inc de
    ld [bc], a
    inc b
    dec bc
    inc e
    ld [bc], a
    dec b
    jr nc, jr_06e_6f16

    ld [bc], a
    ld b, $2f
    rra
    ld [bc], a
    rlca
    inc sp
    jr nz, @+$04

    ld [$2335], sp
    ld [bc], a
    add hl, bc
    inc c
    inc h
    ld [bc], a
    ld a, [bc]
    ld l, $24
    ld [bc], a
    dec bc
    dec c
    dec h
    ld [bc], a
    inc c
    inc d
    dec hl

jr_06e_6f16:
    ld [bc], a
    dec c
    jr z, jr_06e_6f45

    ld [bc], a
    ld c, $15
    inc l
    ld [bc], a
    rrca
    daa
    inc l
    ld [bc], a
    db $10
    ld d, $2d
    ld [bc], a
    ld de, $2d17
    ld [bc], a
    ld [de], a
    dec h
    dec l
    ld [bc], a
    inc de
    ld h, $2d
    ld [bc], a
    inc d
    dec l
    jr nc, jr_06e_6f39

    dec d
    ld [hl+], a

jr_06e_6f39:
    dec [hl]
    ld [bc], a
    ld d, $21
    ld [hl], $02
    rla
    inc hl
    ld [hl], $02
    jr jr_06e_6f65

jr_06e_6f45:
    scf
    ld [bc], a
    add hl, de
    ld [hl+], a
    scf
    ld [bc], a
    ld a, [de]
    daa
    scf
    rst $38
    rst $38
    rst $38
    ld e, c
    ld l, a
    ld b, c
    ld [hl], h
    dec h
    ld a, e
    ld b, h
    ld a, e
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $e0
    rst $18

jr_06e_6f65:
    ld c, l
    ld c, l
    dec c
    ld c, l
    inc c
    rst $38
    ei
    ld c, h
    ld c, h
    ld hl, $de4c
    add sp, -$37
    pop hl
    jp $bfe3


    pop hl
    ld c, l
    ret nz

    rst $38
    cp a
    db $ec
    ret nz

    add l
    rst $20
    ld a, e
    ld [c], a
    ret nz

    rst $38
    ld a, [hl]
    db $ec
    add l
    and $3e
    push hl
    dec c
    dec c
    nop
    ret nz

    cp $3d
    jp hl


    nop
    rst $38
    db $fc
    db $d3
    nop
    ld hl, sp-$20
    jp z, $fd3e

    nop
    db $ec
    add l
    dec l
    db $fd
    ret nz

    dec l
    cp a
    rst $38
    ld a, a
    rst $20
    nop
    db $ec
    ret nz

    pop hl
    ld c, l
    ld bc, $512d
    rst $30
    dec sp
    ret z

    ld a, [hl-]
    jp $ec00


    add b
    ldh [$fb], a
    ret nz

    ld b, d
    db $eb
    rrca
    ld l, h
    ld c, h
    inc l
    inc l
    ld l, [hl]
    rst $28
    cp [hl]
    pop hl
    push af
    and b
    nop
    sla a
    dec l
    dec l
    dec l
    cp e
    pop bc
    pop bc
    db $eb
    ld l, h
    push de
    ld [c], a
    cp a
    db $f4
    jr jr_06e_6fd7

jr_06e_6fd7:
    call z, $a1bc
    cp [hl]
    call z, Call_06e_4b2c
    rst $38
    pop hl
    db $ec
    push de
    nop
    call z, Call_06e_4deb
    ld c, l
    ld a, d
    and c
    dec l
    ld c, $e9
    inc l
    dec hl
    dec bc
    rlca
    dec bc
    dec hl
    dec bc
    cp a
    push af
    nop
    call z, $a1f4
    rst $38
    pop bc
    ld c, $e8
    rla
    inc l
    inc l
    ld c, e
    cp a
    ld [c], a
    ld l, h
    add b
    push af
    nop
    jp hl


    ret nz

    db $e3
    add hl, bc
    dec c
    call c, $c289
    ret nz

    ld l, e
    ret nz

    ld [c], a
    ld a, [hl+]
    jp nc, $e985

    ei
    and $c7
    ld l, l
    dec c
    ld l, e
    sbc e
    add [hl]
    sub e
    add b

Jump_06e_7021:
    cp $c0
    ld l, e
    dec bc
    ld h, e
    dec c
    ld c, e
    nop
    ei
    ld b, h
    push hl
    pop bc
    pop hl
    ld l, e
    dec c
    cp a
    pop hl
    ld a, $1c
    call nz, Call_06e_6c6c
    ld l, h
    dec hl
    dec bc
    xor $e0
    ret nz

    push de
    jr nc, jr_06e_7040

jr_06e_7040:
    xor b
    db $fd
    add e
    pop bc
    ldh [$fe], a
    ldh [rOCPD], a
    dec bc
    adc b
    ret nz

    inc c
    pop hl
    rlca
    inc l
    ld c, e
    dec hl
    pop bc
    ret nz

    add c
    ldh [rBCPD], a
    or d
    nop
    adc d
    or e
    add c
    and a
    ld l, l
    ld l, e
    ld l, e
    jp nz, $bee1

    pop hl
    dec c
    inc c
    pop hl
    ld l, h
    rlca
    ld l, h
    dec c
    dec c

jr_06e_706b:
    ld a, a
    ret nz

    or h
    ldh [$ba], a
    or c
    nop
    xor $05
    ldh [$64], a
    rst $38
    db $e3
    ret nz

    pop hl
    ld l, e
    ld bc, $34c1
    ldh [$0b], a
    dec bc
    ld bc, $20e0
    cp c
    and b
    nop
    db $fd
    add $c1
    dec b
    ldh [$7e], a
    db $e4
    ld l, e
    pop bc
    pop hl
    ret nz

    ldh [rNR33], a
    ld c, e
    inc [hl]
    ldh [$0b], a
    dec hl
    dec c
    ld [hl-], a
    db $e3
    and h
    adc l
    add l
    adc d
    jr jr_06e_706b

    ret nz

    ret nz

    add sp, -$7d
    call nz, Call_06e_4b0d
    ld a, a
    ld [c], a
    db $fd
    ret nz

    ld a, $c0
    ret c

    dec b
    ld h, b
    ld h, e
    adc e
    add l
    adc d
    dec c
    ld c, l
    inc b
    db $e3
    dec hl
    ld a, [bc]
    dec hl
    ld l, d
    dec bc
    add d
    db $e3
    ld c, h
    ld b, b
    pop hl
    ld c, e
    rst $38
    ret nz

    cp $c0
    ret nz

    ld a, $c2
    di
    add e
    ei
    rst $20
    add l
    xor b
    ret nz

    db $e3
    ld bc, $0ae2
    ld a, [bc]
    nop
    ld c, e
    ldh [$cf], a
    jp $e1c0


    ld a, $a0
    ld a, [hl]
    pop bc
    cp $a0
    or d
    ret nz

jr_06e_70e7:
    sbc h
    add b
    ldh [$fd], a
    add sp, $00
    rst $00
    ld b, l
    ld h, b
    ld b, $a0
    add d
    pop bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, d
    ld c, l
    ret nz

    ld l, e
    rst $08
    jp $0c2c


    dec c
    dec c
    ccf
    pop bc
    nop
    ret nz

    pop hl
    push af
    and b
    sbc $c2
    ret nz

    ld [$4785], a
    call nz, $bf80
    ldh [$c4], a
    and b
    dec b
    ld a, [hl+]
    ret nz

    pop hl
    ld c, e
    ld a, [hl-]
    and l
    ld b, b
    ret nz

    cp $a0
    pop af
    and d
    pop bc
    ldh [rP1], a
    sbc a
    add c
    dec de
    and e
    jp z, $8544

    ld c, b
    cp $c2
    ret nz

    ld [c], a
    ret nc

    jp nz, $e03d

    nop
    ret nz

    and e
    pop bc
    jp nz, $8239

    rst $18
    add h
    jp z, Jump_06e_7bac

    ld b, d
    ld b, l
    ret nz

    cp [hl]
    add $00
    pop de
    and b
    ld c, d
    ret nz

    db $fd
    ret nz

    ld [bc], a
    and d
    add c
    jp nz, $e3bf

    ret nz

    rst $20
    jp z, RST_28

    add l
    ld h, e
    dec b
    pop bc
    ld [bc], a
    push bc
    sub c
    and b
    ld a, $a0
    ld b, a
    ret nz

    ld d, h
    jr nz, jr_06e_70e7

    add b
    nop
    ccf
    add b
    cp [hl]
    call nz, Call_06e_6161
    db $10
    ld b, h
    jp z, $8525

    ld b, [hl]
    ld b, h
    ld h, d
    add b
    and c
    inc e
    jp nc, $81c1

    ld [c], a
    dec c
    ld l, e
    inc l
    cp [hl]
    jp $a07e


    ld [hl-], a
    and b
    ld [bc], a
    ld [hl], $c0
    ld c, l
    adc h
    add $00
    xor $b4
    jp nz, $c07c

    ld b, b
    and c
    ld d, b
    and b
    add b
    add hl, bc
    ret nz

    or $80
    ret nz

    pop hl
    cp [hl]
    ret nz

    ld a, $a2
    cp a
    ld [c], a
    ld c, [hl]
    pop bc
    dec l
    ld b, b
    nop
    ld a, [c]
    rst $38
    and e
    add hl, bc
    and d
    pop de
    db $e3
    ld bc, $fea2
    ld b, d
    inc c
    cp [hl]
    add b
    sub b
    add d
    pop hl
    ld b, l
    jp nz, $f400

    cp a
    and a
    dec c
    ccf
    ldh [$ce], a
    add b
    dec l
    and c
    dec c
    ld b, e
    pop hl
    ld c, l
    and b
    ld d, c
    nop
    cp l
    add b
    dec hl
    ld a, b
    and c
    ld c, e
    add b
    ld e, d
    db $e3
    nop
    ld a, [c]
    push bc
    ld h, h
    ld b, c
    and c
    sub b
    and c
    inc [hl]
    ld b, b
    ld b, e
    db $e3
    inc l
    nop
    ld [bc], a
    ld b, b
    ret nz

    db $e4
    db $76
    ld b, b
    rst $38
    ret nz

    jp c, Jump_000_0024

    ret nc

    add [hl]
    ld h, c
    pop bc
    call nz, $cf9c
    ret nz

    ld [de], a
    and l
    inc l
    ld l, h
    ld c, h
    db $fd
    ld h, c
    ret nz

    db $e3
    dec bc
    nop
    cp [hl]
    pop bc
    nop
    db $f4
    jp Jump_06e_40a2


    add c
    rst $10
    ld [c], a
    add l
    ret nz

    call nz, $b461
    ld b, b
    ld de, $866c
    pop bc
    ccf
    pop hl
    ld a, [hl]
    pop hl
    ld l, e
    ld a, [bc]
    and l
    nop
    rst $28
    ld b, c
    add c
    ld b, $05
    ld h, c
    ld l, e
    ld c, e
    cp [hl]
    ldh [$c4], a
    ld h, b
    add l
    ld h, d
    add hl, bc
    db $e3
    cp [hl]
    add c
    add b
    ld a, $e3
    ret nz

    pop hl
    nop
    call Call_000_2049
    rst $00
    inc hl
    jp $c162


    add b
    ld a, [bc]
    rlca
    ld l, d
    ld l, e
    ld c, e
    ld b, [hl]
    ld h, d
    ld [hl], $80
    ld [hl], $c1
    xor $c2
    ld a, e
    ld h, c
    ldh a, [$b3]
    ld h, b
    nop
    rst $08
    ld a, [bc]
    inc hl
    ld [bc], a
    rst $00
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    inc bc
    dec hl
    ld c, e
    jp z, $c7c0

    add b
    ld [hl], $80
    add [hl]
    ld h, b
    pop bc
    db $e3
    db $eb
    and e
    ld h, b
    add c
    add sp, $00
    xor d
    ld bc, $5485
    pop hl
    ld d, b
    add c
    inc c
    ld c, h
    ld c, d
    db $e3
    add b
    ld b, $40
    cp $86
    ret nz

    push hl
    ld a, e
    xor e
    nop
    ld b, [hl]
    ret nz

    db $e3
    ret nz

    jp nz, Jump_000_000b

    pop de
    jr nz, jr_06e_730a

    and c
    ret nc

    ret nz

    ld bc, $2fe5
    ld b, c
    ld b, b
    ld [c], a
    ld a, $c1
    ld a, e
    rst $00
    jr nc, jr_06e_729c

jr_06e_729c:
    inc hl
    inc bc
    and e
    ld b, l
    ld b, c
    ret nz

    db $e4
    dec bc
    ld l, h
    rst $00
    ld h, b
    xor $01
    ld bc, $ed2d
    ld h, b
    pop bc
    jp nz, Jump_000_21fa

    ret nz

    db $e3
    nop
    pop de
    ld b, e
    and l
    add l
    jr nz, @+$06

    ld b, d
    add c
    ret nz

    ldh [$2c], a
    inc bc
    and e
    ld a, a
    add c
    ld b, c
    and $c0
    jp nz, $9100

    sbc b
    jp Jump_06e_4683


    ld b, l
    ret nz

    and b
    ld l, e
    dec bc
    ld d, l
    ld b, h
    add b
    and b
    inc c
    nop
    ld bc, $00e5
    ret c

    scf
    ld [bc], a
    ret


    inc h
    ret nz

    pop hl
    inc bc
    add e
    dec bc
    inc h
    cp $63
    ld b, b
    ret nz

    and $00
    sub b
    dec a
    pop bc
    ld b, b
    db $e3
    ret nz

    add c
    ret nz

    db $e3
    dec bc
    dec a
    ld b, $19
    dec hl
    rst $38
    ld h, c
    ld a, $a3
    dec c
    ld l, l
    rst $10
    dec b
    nop
    ld l, [hl]
    ret nz

    db $e4
    nop
    ld b, b
    db $e3
    cp h

jr_06e_730a:
    nop
    ret nz

    push hl
    nop
    and b
    ld b, c
    and $24
    nop
    add l

jr_06e_7314:
    ld h, a
    nop
    jp hl


    nop
    add b
    push hl
    ld a, a
    add d
    cp a
    add c
    ret nz

    ldh [$fe], a
    push bc
    rst $28
    ld h, d
    ld [bc], a
    call nz, Call_06e_42ff

jr_06e_7328:
    ld b, b
    nop
    pop de
    ld b, e
    ld b, d
    ccf
    call nz, $42cf
    ld c, a
    ldh [$3e], a
    ld b, e
    ld c, h
    ld l, $81
    nop
    ld b, c
    pop hl
    ret nz

    db $e3
    rst $38
    inc h
    nop
    call $2441
    ld a, a
    add e
    ld de, $0fe1
    ldh [rTMA], a
    cp l
    ld [bc], a
    ld l, h
    ld c, h

jr_06e_734e:
    ld a, $43
    add d
    adc d
    nop
    ld c, a
    ld bc, $be25
    and e
    nop
    rst $08
    ld bc, $40cb
    ret nz

    ld b, e
    ld a, $42
    ld b, d
    call nz, $a295
    nop
    sub [hl]
    nop
    ld [hl+], a
    jr jr_06e_7328

    ld b, h
    adc l
    nop
    ret nz

    ld b, h
    ld c, e
    dec hl
    jr nc, jr_06e_7314

    pop bc
    call nz, Call_000_2985
    stop
    adc a
    ret nz

    add sp, -$42
    ld [hl+], a
    add d
    ld h, b
    inc l
    cp $21
    pop af
    ldh [$e6], a
    ret nz

    nop
    ld b, e
    ret nz

    add c
    ld b, l
    nop

jr_06e_738e:
    ld d, c
    pop bc
    inc b
    ld a, l
    and l
    ld [hl], h
    ld [bc], a
    ld e, d
    ld bc, $c0bf
    nop
    or e
    ld hl, $4068
    push bc
    add e
    nop
    ld d, e
    pop bc
    inc b
    cp $a4
    ld a, e
    ld h, c
    inc sp
    inc b
    nop
    db $fd
    ld b, b
    ld l, l
    ld h, c
    daa
    and c
    ld b, h
    inc b
    nop
    ld d, a
    cp [hl]
    and [hl]
    db $fc
    ldh a, [$80]
    ld [c], a
    nop
    ld d, [hl]
    add e
    nop
    ld sp, $e6c0
    ld bc, $fc42
    ldh a, [$c0]
    rst $20
    nop
    jr nc, jr_06e_738e

    inc bc
    jr nz, jr_06e_734e

    db $e3
    ld d, d
    ld h, h
    ld a, [$80ee]
    push hl
    nop
    dec [hl]
    dec l
    ld [bc], a
    ld [hl+], a
    ret nz

    pop hl
    ld [bc], a
    ld de, $2d40
    db $fc
    db $ed
    ret nz

Jump_06e_73e3:
    db $e3
    add h
    ld h, d
    nop
    ld [hl-], a
    ld a, a
    add d
    ld b, c
    inc bc
    nop
    add b
    ld hl, sp-$7b
    ld a, [hl+]
    nop
    ld [$6369], a
    ret nz

    rst $38
    nop
    dec [hl]
    add sp, $02
    cp $a1
    adc b
    jp nz, $fc21

    rst $28
    cpl
    jp nz, $da2d

    ld hl, $b600
    ld l, d
    ret nz

    ld c, l
    dec bc
    ld c, l
    dec l
    db $d3
    jr nz, jr_06e_743d

    cp [hl]
    pop af
    pop bc
    ret nz

    inc bc
    add e
    nop
    inc [hl]
    sub b
    ld a, e
    add c
    cp e
    ld h, d
    ld [hl], l
    push bc
    ld [hl-], a
    add c
    ld l, e
    ld d, l
    add d
    db $fc
    push hl
    ld l, l
    ld [$a3dc], sp
    nop
    jp nc, $a57b

    ld c, l
    cp a
    rst $20
    add c
    and c
    pop bc

Jump_06e_7436:
    jp hl


    ld e, c
    ld [hl+], a
    nop
    sub a
    pop bc
    nop

jr_06e_743d:
    xor b
    nop
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    ei
    db $e3
    db $e4
    or $e2
    and b
    and b
    and b
    sbc [hl]
    ld [$98ff], sp
    sub a
    sub [hl]
    sub l
    sub l
    sub [hl]
    sub [hl]
    sub [hl]
    pop hl
    sub a
    rst $38
    ldh [$f9], a
    ldh [$fd], a
    and $f0
    ldh [$98], a
    sbc b
    sbc b
    rst $20
    sbc c
    sbc c
    sbc c
    ld a, [$e5e0]
    db $e3
    sub l
    sub l
    push hl
    rst $38
    and $e7
    and b
    add sp, -$17
    ld [$eceb], a
    add c
    and b
    or $e1
    rst $38
    pop hl
    ret nz

    db $e4
    cp a
    ld [c], a
    jp nz, $bfe9

    pop af
    sub l
    ld bc, $8595
    rst $20
    ld a, e
    ld [c], a
    add b
    push hl
    cp a
    db $e4
    sbc l
    ld [c], a
    cp $e5
    ld a, [hl]
    xor $78
    ld h, h
    pop hl
    add l
    and $7b
    db $e3
    push af
    or $a0
    and c
    ld b, b
    ldh [rP1], a
    and l
    ld [c], a
    jp nz, $bfeb

    xor $23
    db $e3
    nop
    ld a, [c]
    and h
    pop hl
    cp $c2
    adc c
    db $e4
    ret c

    ld [hl], a
    push hl
    db $fc
    ret z

    db $fd
    jp $9797


    nop
    ldh a, [rSC]
    rrca
    ld b, b
    pop hl
    ret nz

    cp $c2
    ld c, e
    and $13
    db $e4
    dec a
    and $bc
    add $97
    nop
    db $ed
    rrca
    sub $d7
    sbc a
    sbc h
    cp a
    ldh [$be], a
    jp nz, $c2bb

    adc e
    jp Jump_000_2de0


    db $e4
    ld l, d
    jp $e57f


    add sp, -$1f
    nop
    db $ec
    and b
    ret c

    reti


    rlca
    and b
    sbc a
    sbc h
    cp [hl]
    push bc
    ld a, [hl-]
    ret nz

    ld d, c
    and $7e
    and $7f
    push hl
    adc h
    cp [hl]
    db $e3
    nop
    call $dbda
    cp $a3
    ld [hl+], a
    jp $e0c0


    sbc b
    rra
    sbc b
    rrca
    dec c
    ld bc, $bf00
    and $7f
    push hl
    cp [hl]
    ld [c], a
    ldh [$f5], a
    and b
    nop
    adc $7e
    ret nz

    cp [hl]
    jp $c37c


    sub a
    sbc b
    rrca
    rra
    ld [bc], a
    inc bc
    inc b
    rlca
    rlca
    db $ec
    pop bc
    jp hl


    and h
    ld l, $e4
    ldh [$bf], a
    db $e3
    nop
    call z, $a071
    cp [hl]
    call nz, $c47c
    sub a
    sbc b
    ld [$4681], sp
    rst $38
    pop hl
    xor e
    jp $a268


    adc b
    jp nz, $e401

    nop
    xor $a0
    db $d3
    ret nc

    pop de
    rst $38
    pop bc
    rra
    jp nz, $c196

    pop bc
    sbc b
    ld [$451f], sp
    dec hl
    ld sp, $452b
    cp a
    pop hl
    ld a, [hl+]
    push bc
    cp a
    jp hl


    add [hl]

jr_06e_756b:
    nop
    xor [hl]
    jp nc, $fdd3

    add c
    ld c, $e1
    inc b
    and c
    ld c, $a0
    rrca
    rst $38
    ld [bc], a
    ld a, [hl+]
    jr nz, jr_06e_759d

    ld a, [hl+]
    ld b, l
    ld b, [hl]
    ld b, $f0
    ld a, [hl+]
    push bc
    push af
    add h
    add hl, hl
    jp $ac00


    db $ed
    xor $d4
    push de
    rst $08
    rst $28
    and b
    and c
    ld [bc], a
    db $10
    db $e3
    inc d
    jp Jump_000_020f


    ld a, a
    ld l, $20
    daa

jr_06e_759d:
    ld b, d
    ld b, [hl]
    dec b
    ld c, $28
    xor c
    db $fc
    cp a
    push hl
    add l
    adc d
    and b
    and b
    ldh a, [$f1]
    ld a, [c]
    di

jr_06e_75ae:
    ld a, a
    db $f4
    sbc a
    sbc h
    xor [hl]
    ld b, [hl]
    ld [bc], a
    dec c
    rra
    call nz, $99ff
    nop
    ld bc, $bd08
    inc hl
    ld hl, $c342
    xor [hl]
    ld b, [hl]
    jr z, jr_06e_756b

    ld l, h
    xor b
    nop
    xor b
    add h
    add c
    sub $d7
    ld a, [hl]
    ld a, [hl]
    add c
    sbc a
    sbc h
    ld b, [hl]
    xor a
    xor [hl]
    ld b, [hl]
    adc e
    pop bc
    db $fc
    adc d
    ret nz

    add b
    ret nz

    inc b
    inc bc
    add hl, sp
    dec [hl]
    inc a
    xor [hl]
    pop bc
    xor a
    ld l, c
    and d
    xor b
    and a
    daa
    add h
    nop
    adc d
    jp $a0a0


    sbc a
    ccf
    sbc l
    sbc h
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    xor a
    adc e
    jp nz, $e00c

    ld a, [hl]
    add b
    pop bc
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    xor a
    ld b, [hl]
    xor h
    call nz, $aa50
    adc h
    nop
    adc d
    jp $83a0


    ldh [rDMA], a
    jp nz, $aee2

    db $fd
    pop hl
    cp $0c
    ldh [rIF], a
    ld [bc], a
    ld a, c
    ld a, d
    ld h, [hl]
    dec [hl]
    ld a, $00
    or h
    ldh [$ac], a
    jp nz, $86f5

    jr z, jr_06e_75ae

    add l
    ld l, c
    ld b, e
    add b
    dec b
    pop hl
    add l
    db $e3
    ld a, [$e07e]
    xor a
    ld a, [bc]
    pop bc
    ld [$7e79], sp
    ld b, b
    ld l, b
    rra
    ld h, [hl]
    ld a, [hl-]
    or d
    ld b, [hl]
    dec b
    ld [hl-], a
    ld [c], a
    rlca
    add [hl]
    nop
    pop af
    or b
    pop bc
    pop hl
    dec b
    ldh [$82], a
    db $e3
    res 4, h
    ld [$4080], sp
    ldh [rBCPS], a
    add a
    ld h, [hl]
    ld [hl], $b2
    ld [hl-], a
    pop hl
    push af
    add l
    cp $e7
    add l

Jump_06e_7662:
    adc d
    and b
    add c
    and c
    add $c0
    dec b
    ld [c], a
    nop
    pop hl
    dec sp
    ret nz

    ld d, $60
    ret nz

    ldh [$b2], a
    ld a, a
    add hl, sp
    dec [hl]
    ld l, d
    dec [hl]
    add hl, sp
    ld b, [hl]
    xor [hl]
    ld a, $c0
    ret nc

    ld [hl], d
    ret nz

    add [hl]
    add l
    ld a, a
    add e
    add l
    adc e
    sbc [hl]
    inc b
    db $e3
    ld b, l
    ld c, b
    cp a
    ld d, e
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld [$d39b], sp
    pop hl
    ld [$822f], sp
    add e
    ld b, [hl]
    or d
    ret nz

    ldh [$3e], a
    xor h
    ret nz

    and [hl]
    ld h, b
    pop bc
    rrca
    ld l, d
    ret nz

    db $fd
    jp hl


    add l
    adc e
    ret nz

    ldh [rNR12], a
    and c
    ld b, h
    ld e, [hl]
    ei
    ld d, [hl]
    ld b, h
    rst $08
    call nz, Call_000_0898
    add l
    adc e
    ld b, [hl]
    inc [hl]
    add b
    ld [c], a
    xor a
    ret nz

    ld [$80b3], sp
    sbc h
    sbc l
    rst $38
    ld [$ed00], a
    sbc $86
    pop bc
    ld b, l
    ld b, a
    ld d, [hl]
    dec l
    ld c, a
    and b
    dec b
    db $10
    cp $3c
    and b
    sbc b
    ld c, $05
    add d
    add e
    ld a, [hl-]
    ld l, h
    ld d, a
    ld l, l
    ld a, [hl-]
    ld b, l
    dec l
    ret nz

    ld b, $c1
    ldh [$9f], a
    sub $c3
    db $ec
    ld a, [$85e5]
    ld c, d
    ret nc

    pop de
    call nz, $aea0
    xor a
    ld b, l
    ld [hl], a
    ld d, [hl]
    ld e, d
    ld l, $4f
    and b

jr_06e_76fa:
    xor [hl]
    inc bc

jr_06e_76fc:
    inc b
    ret nz

    and c
    ld a, a
    ld b, $85
    add a
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    ld a, [hl-]
    cpl
    ldh [$7b], a
    ld b, [hl]
    dec b
    pop bc
    pop hl
    ret nc

    pop de
    push af
    or $ca
    daa

jr_06e_7714:
    db $f4
    add l
    ld c, d
    call nz, $9e80
    add h
    and c
    ld d, l
    ld d, l
    daa
    jr nz, jr_06e_777a

    dec l
    cp h
    and c
    ret nz

    and e
    add hl, sp
    dec [hl]
    rst $38
    ldh [rLCDC], a
    add hl, sp
    add d
    pop bc
    sbc [hl]
    sbc a
    add e
    jp z, $8527

    jr z, jr_06e_76fa

    add d
    cp [hl]
    jp nz, Jump_000_3945

    ld b, a
    ld hl, $2d26
    add hl, bc
    add c
    call z, $c080
    push hl
    add hl, sp
    ret nz

    db $e3
    ld d, b
    sbc a
    add d
    ld c, a
    jr z, @-$79

    jr z, jr_06e_7714

    add d
    and c
    jp nc, $b261

    ld c, a
    and b
    ld a, b
    db $10
    ret nz

    jr c, jr_06e_76fc

    ld [hl], h
    ld b, b
    rrca
    ld [bc], a
    ld b, l
    ld [hl], $7f
    ldh [rNR50], a
    ccf
    ldh [$6d], a
    and b
    sbc [hl]
    sbc a
    add d
    ld c, a
    daa
    add sp, -$7b
    ld a, [hl+]
    cp a
    and d
    add sp, $41
    ret nz

    ret nc

    ldh [$91], a
    ld [c], a

jr_06e_777a:
    xor a
    ld a, a
    ld [c], a
    ld c, $05
    xor [hl]
    inc bc
    ld a, [hl-]
    dec [hl]
    cp [hl]
    add b
    xor d
    add c
    pop bc
    jp nz, $294f

    add l
    ld l, c
    add c
    add b
    ld a, c
    sbc [hl]
    pop bc
    and c
    ret nc

    add b
    ld h, d
    ld a, d
    ld a, h
    ld a, l
    cp a
    add h
    ld [hl+], a
    cp [hl]
    ret nz

    xor a
    cp $c1
    ld l, h
    add b
    ld l, c
    add b
    sbc [hl]
    ld e, e
    add d
    nop
    ld a, [c]
    db $fc
    cp a
    and d
    add a
    add b
    xor [hl]
    ld b, [hl]
    add hl, sp
    ld h, d
    ld h, a
    add hl, sp
    rlca
    or d
    ld a, a
    ld a, l
    inc a
    add b
    dec c
    and d
    ld a, a
    ldh [rLCDC], a
    ldh [$67], a
    and b
    jp nz, $a023

    and c
    ld e, $40
    ld c, a
    add hl, bc
    add l
    add hl, bc
    cp a
    and h
    xor a
    ld b, [hl]
    rst $38
    add hl, sp
    ld l, e
    ld l, h
    ld a, [hl-]
    ld b, l
    add e
    add h
    dec b
    ld sp, hl
    rrca
    ld d, d
    and c
    ld d, c
    nop
    ld b, $af
    ld a, [hl-]
    dec [hl]
    ld a, $0e
    add b
    pop hl
    ld b, [hl]
    xor a
    sbc [hl]
    ld e, $41
    nop
    or $42
    add d
    db $10
    add b
    ld a, a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc b
    add a
    add l
    ld b, $18
    ld hl, $99ff
    ld bc, $9b00
    ld b, $ae
    add hl, sp
    dec [hl]
    ld bc, $e73e
    add e
    ret nz

    and b
    sbc h

jr_06e_780d:
    nop
    nop
    call nc, $a1c2
    pop bc
    jp $c150


    db $fc
    add h
    pop bc
    ld a, h
    ld h, b
    dec c
    sbc d
    ld c, $05
    xor a
    xor [hl]
    ld b, b
    cp [hl]
    ld h, b
    ld h, $83
    ld a, a
    and d
    nop
    di
    pop bc
    add b
    ld b, c
    add b
    xor [hl]
    sub c
    ld h, b
    cp h
    ld d, b
    pop bc
    call nz, Call_06e_7d64
    inc bc
    inc b
    ld [bc], a
    ld l, h
    and b
    inc a
    add e
    dec [hl]
    ld [hl], $e5
    ldh [$bd], a
    and h
    jp z, $85a8

    ld a, [bc]
    ld b, c
    add b
    ld b, [hl]
    db $fd
    xor a
    ld bc, $35e0
    jr c, jr_06e_788a

    dec [hl]
    inc a
    ld a, [bc]
    and $85
    ld h, c
    ld a, [hl]
    ld b, e
    cp c
    ret nz

    ld sp, $3960
    ld h, d
    ld h, e
    add e
    ld h, [hl]
    ld [hl], $e5
    ldh [$7d], a
    and e
    nop
    call $0248
    rst $00
    jr nz, jr_06e_780d

    cp $9e
    ld [c], a
    ld b, l
    ld c, b
    ld c, [hl]
    ld c, c
    ld d, d
    ld a, [hl-]
    dec [hl]
    ld a, l
    ld a, [bc]
    pop bc
    pop hl
    ld b, h
    ld c, c
    ld d, h
    ld a, a
    ld a, l
    ld l, a
    and b
    rra
    ld a, [hl-]
    ld l, c
    dec [hl]
    ld l, b
    ld h, [hl]

jr_06e_788a:
    ld a, l
    add b
    cp l
    and c
    ld e, h
    nop
    ldh a, [rP1]
    xor e
    ld a, [bc]
    inc hl
    inc bc
    and c
    sbc [hl]
    ld [c], a
    ld b, l
    ld d, d
    ld d, h
    ld d, h
    rst $38
    ld d, h
    ld a, [hl-]
    ld a, [hl-]
    ld b, $06
    ld a, c
    ld a, [hl]
    dec hl
    rst $38
    dec hl
    ld d, e
    ld e, c
    ld b, l
    add c
    ld b, [hl]
    ld b, [hl]
    ld b, d
    sbc a
    ld h, d
    db $76
    dec [hl]
    dec [hl]
    ld l, d
    db $fd
    ret nz

    xor b
    ld b, b
    sbc [hl]
    or b
    ld e, h
    nop
    nop
    xor a
    inc bc
    and l
    ld b, c
    add c
    scf
    jr c, jr_06e_7906

    ldh [$39], a
    rst $38
    ld [$8005], sp
    ld b, d
    daa
    jr nz, jr_06e_78ff

    ld a, [hl+]
    ld d, $c0
    pop hl
    ld b, b
    ld l, c
    cp l
    add b
    ld l, d
    inc a
    add b
    add b
    ld [c], a
    ld e, h
    ld bc, $7bd0
    and l
    nop
    dec h
    rst $00
    ld [hl+], a
    pop bc
    ld h, d
    xor a
    ret nz

    jp Jump_000_0840


    cp $07
    add b
    ld a, [hl+]
    inc l
    inc l
    ld a, [hl+]
    add e
    add h
    ld b, [hl]
    ld a, a
    xor [hl]
    ld b, d
    ld l, e
    ld l, h
    dec [hl]
    ld l, h
    ld l, l

jr_06e_78ff:
    cp l
    add b
    ld [bc], a
    jr z, jr_06e_7944

    and c
    ld e, h

jr_06e_7906:
    ld [bc], a
    ld a, e
    push bc
    nop
    ld b, l
    jp nz, $1d65

    pop hl
    sub b
    add e
    dec [hl]
    ld b, $07
    add b
    adc b
    rst $38
    ldh [$87], a
    add l
    pop bc
    ret nz

    rst $28
    and b
    inc bc
    ld [hl], b
    ld l, [hl]
    db $ed
    ld h, b
    nop
    ld [c], a
    jp z, Jump_000_3669

    add [hl]
    inc bc
    and d
    dec b
    ld b, b
    or [hl]
    ret nz

    ld b, b
    ld b, h
    inc a
    ld b, b
    jp nz, Jump_000_040f

    ld a, l
    ld hl, $df07
    rlca
    inc b
    inc bc
    ld b, [hl]
    ld a, $2e
    jp nz, $ae45

    add d

jr_06e_7944:
    ld a, [hl]
    pop bc
    sbc [hl]
    jr @+$42

    nop
    adc a
    inc bc
    and l
    add [hl]
    ld hl, $a2ff
    inc a
    ld a, c
    ld b, h
    ld b, d
    ld b, c
    ld c, a
    ld b, b
    ld bc, $1000
    dec b
    ret nz

    ld [c], a
    ld de, $6a39
    inc hl
    nop
    call nc, $2084
    and c
    adc h
    ld [hl+], a
    ccf
    db $e4
    adc $20
    ld [$4001], sp
    ld b, b
    nop
    cp a
    nop
    ld b, $7e
    ld h, d
    ld l, $60
    nop
    call nc, $e200
    and e
    push af
    or $83
    add c
    jp c, Jump_000_3f82

    pop hl
    add hl, sp
    rst $08
    jr nz, jr_06e_7992

    xor h
    db $d3
    ld hl, $80fb
    ld b, $44
    rst $38

jr_06e_7992:
    ld h, c
    ld b, h
    push hl
    ld [hl+], a
    sbc h
    and c
    sbc a
    rst $10
    and b
    nop
    sub e
    nop
    pop hl
    pop bc
    ld [hl+], a
    ld b, b
    rrca
    ld h, b
    or d
    ld h, $ba
    nop
    ld [$bf9b], sp
    add b
    ld a, l
    ld b, c
    or d
    rst $38
    ret nz

    ld a, [hl]
    ld b, d
    nop
    cp a
    ld h, c
    rst $10
    and b
    nop
    ldh a, [rSB]
    and c
    inc c
    ld [hl+], a
    ld b, [hl]
    jr nz, @-$2f

    ld b, c
    ld [de], a
    pop hl
    dec de
    ld [bc], a
    dec c
    sub c
    ld [hl+], a
    ld [$bf46], sp
    pop bc
    ld a, a
    jr nz, jr_06e_7a0f

    ld h, c
    nop
    jp c, $0042

    rst $08
    add d
    ld h, c
    ld [bc], a
    ld b, e
    nop
    push hl
    ld a, [hl]
    jr nz, jr_06e_7a1d

    ld b, l
    ld a, $01
    nop
    ld b, c
    pop hl
    add d
    and c
    rst $10
    and d
    dec b
    ld b, d
    nop
    call z, $2341
    ret nz

    nop
    add b
    ld b, b
    ld h, d
    rst $08
    ld b, b
    inc a
    ld a, [hl]
    jr nz, @+$75

    ldh [rKEY1], a
    jr nz, jr_06e_7a0c

    dec b
    ld l, a
    db $e3
    nop
    add d
    add $00
    ld [hl], e
    add d
    ld h, e
    sbc l
    ld h, b
    sub b
    add b

jr_06e_7a0c:
    cp [hl]
    ld b, [hl]
    ret nz

jr_06e_7a0f:
    ld b, e
    cpl
    db $e3
    ld [bc], a
    ld h, $02
    and c
    ld bc, $0061
    sub a
    ld c, c
    ld [bc], a
    cp l

jr_06e_7a1d:
    ld b, e
    adc [hl]
    ld [hl+], a
    ld a, l
    ld h, d
    ld h, c
    ld b, $ae
    and c
    pop bc
    push bc
    db $db
    ld b, b
    nop
    ld [hl], h
    push af
    or $03
    ld b, d
    sbc b
    db $fc
    and d
    call Call_06e_4e00
    ld [hl+], a
    ld [bc], a
    dec c
    cp e
    nop
    cp $20
    ld a, [hl-]
    ld b, b
    ld b, b
    ld bc, $6242
    jp Jump_000_0081


    ld d, l
    cp a
    call nz, $023d
    ld [hl], $8f
    inc hl
    ld a, e
    inc bc
    inc b
    ccf
    ld h, b
    ld b, $46
    add hl, sp
    ld [hl], $43
    and b
    add b
    ld b, h
    and e
    nop
    ld d, a
    pop bc
    ld [bc], a
    nop
    ld hl, $42bb
    rst $08
    ld bc, $e4bd
    dec b
    nop
    ld a, [c]
    pop hl
    ld h, $c1
    ld b, h
    ld h, c
    add l
    add [hl]
    nop
    ld c, [hl]
    pop bc
    ld [bc], a
    cp [hl]
    and e
    db $fd
    pop af
    ld a, [c]
    add h
    ld h, h
    and b
    nop
    db $f4
    pop bc
    ld [$4141], sp
    scf
    scf
    ldh [$fc], a
    rst $28
    add h
    ld h, h
    add hl, de
    jr nz, jr_06e_7a8e

jr_06e_7a8e:
    or d
    cp [hl]
    ld h, l
    xor [hl]
    xor [hl]
    ld b, d
    dec de
    and h
    ld h, h
    rst $38
    ldh a, [$a5]
    ld b, d
    add h
    ld h, l
    nop
    dec [hl]
    ld a, $c3
    rst $38
    xor a
    xor a
    ld b, b
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld b, $fc
    db $ed
    ld l, d
    ld b, b
    jp nz, $84a2

    ld h, d
    nop
    ld [hl-], a
    and l
    pop bc
    cp $43
    call nz, Call_06e_6112
    db $fd
    xor $6a
    add b
    ld [c], a
    add l
    jr z, jr_06e_7ac4

jr_06e_7ac4:
    ld c, a
    sub $d7
    ld l, $fe
    and d
    xor a
    ld l, e
    ld [hl], c
    rst $38
    ldh a, [$6d]
    add b
    db $e3
    add l
    rlca
    db $ec
    nop
    inc l
    or $00
    ret c

    reti


    cp l
    add d
    ld b, l
    scf
    dec a
    ld d, a
    jr c, jr_06e_7b1b

    dec a
    db $fc
    db $ed
    scf
    or b
    and b
    and c
    jp c, Jump_06e_7021

    nop
    call nc, Call_000_002c
    ld a, a
    nop
    cp [hl]
    inc b
    ld b, e
    ld b, e
    ld b, l
    db $fc
    db $ed
    sub b
    inc bc
    add [hl]
    nop
    inc [hl]
    ld a, e
    ld b, c
    cp h
    ld bc, $ff9d
    push hl
    ld [hl], h
    ld [bc], a
    sbc h
    inc b
    pop af
    and $e8
    ldh [$9f], a
    inc bc
    add e
    nop
    ld a, [c]
    ld a, e
    ret z

    sbc e
    and h
    ld a, [c]
    add d
    nop
    ld [de], a

jr_06e_7b1b:
    ld b, b
    db $eb
    add sp, $03
    add h
    nop
    xor b
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
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld [bc], a
    nop
    ld d, $0f
    ld [bc], a
    ld bc, $0f29
    ld [bc], a
    ld [bc], a
    rla
    db $10
    ld [bc], a
    inc bc
    jr z, jr_06e_7b64

    ld [bc], a
    inc b
    dec d
    ld de, $0502
    add hl, de
    ld [de], a
    ld [bc], a
    ld b, $1c
    ld [de], a
    ld bc, $2807

Jump_06e_7b63:
    ld [de], a

jr_06e_7b64:
    ld [bc], a
    ld [$1311], sp
    ld bc, $2909
    inc de
    ld [bc], a
    ld a, [bc]
    db $10
    inc d
    ld [bc], a
    dec bc
    ld [de], a
    inc d
    ld [bc], a
    inc c
    rla
    inc d
    ld bc, $240d
    inc d
    ld [bc], a
    ld c, $11
    dec d
    ld bc, $250f
    dec d
    ld [bc], a

Call_06e_7b85:
    db $10
    dec hl
    dec d
    ld [bc], a
    ld de, $172a
    ld [bc], a
    ld [de], a
    inc de
    jr jr_06e_7b93

    inc de
    ld [de], a

jr_06e_7b93:
    add hl, de
    ld [bc], a
    inc d
    dec de
    add hl, de
    ld [bc], a
    dec d
    inc de
    ld a, [de]
    ld bc, $1516
    dec de
    ld bc, $1917
    dec de
    ld [bc], a
    jr @+$1f

    inc e
    ld [bc], a
    add hl, de
    inc l
    inc e

Jump_06e_7bac:
    ld [bc], a
    ld a, [de]
    ld de, $021d
    dec de
    dec h
    dec e
    ld [bc], a
    inc e
    ld a, [hl+]
    dec e
    ld [bc], a
    dec e
    dec l
    dec e
    ld [bc], a
    ld e, $10
    ld e, $01
    rra
    add hl, de
    ld e, $02
    jr nz, jr_06e_7bf2

    ld e, $02
    ld hl, $1e2e
    ld [bc], a
    ld [hl+], a
    inc de
    rra
    ld [bc], a
    inc hl
    ld h, $1f
    ld [bc], a
    inc h
    ld a, [hl+]
    rra
    ld [bc], a
    dec h
    dec l
    rra
    ld [bc], a
    ld h, $2f
    rra
    ld [bc], a
    daa
    dec hl
    jr nz, jr_06e_7be7

    jr z, jr_06e_7c0d

jr_06e_7be7:
    ld hl, $2902
    ld a, [hl+]
    ld hl, $2a02
    db $10
    ld [hl+], a
    ld [bc], a
    dec hl

jr_06e_7bf2:
    daa
    ld [hl+], a
    ld [bc], a
    inc l
    dec hl
    ld [hl+], a
    ld [bc], a
    dec l
    rrca
    inc hl
    ld [bc], a
    ld l, $11
    inc hl
    ld [bc], a
    cpl
    ld [de], a
    inc hl
    ld [bc], a
    jr nc, jr_06e_7c2d

    inc hl
    ld [bc], a
    ld sp, $232c
    ld [bc], a

jr_06e_7c0d:
    ld [hl-], a
    dec l
    inc hl
    ld [bc], a
    inc sp
    inc h
    inc h
    ld [bc], a
    inc [hl]
    ld c, $25
    ld [bc], a
    dec [hl]
    rrca
    dec h
    ld [bc], a
    ld [hl], $2d
    dec h
    ld [bc], a
    scf
    cpl
    dec h
    ld [bc], a
    jr c, jr_06e_7c55

    ld h, $02
    add hl, sp
    ld [de], a
    daa
    ld [bc], a

jr_06e_7c2d:
    ld a, [hl-]
    cpl
    daa
    ld [bc], a
    dec sp
    dec h
    jr z, jr_06e_7c37

    inc a
    db $10

jr_06e_7c37:
    add hl, hl
    ld [bc], a
    dec a
    ld [de], a
    add hl, hl
    ld [bc], a
    ld a, $2e
    add hl, hl
    ld [bc], a
    ccf
    cpl
    add hl, hl
    ld [bc], a
    ld b, b
    dec c
    ld a, [hl+]
    ld [bc], a
    ld b, c
    ld de, $022a
    ld b, d
    dec l
    ld a, [hl+]
    ld bc, $1a43
    dec hl
    ld [bc], a

jr_06e_7c55:
    ld b, h
    dec c
    inc l
    ld [bc], a
    ld b, l
    db $10
    inc l
    ld [bc], a
    ld b, [hl]
    inc de
    inc l
    ld bc, $1a47
    inc l
    ld [bc], a
    ld c, b
    dec l
    inc l

Jump_06e_7c68:
    ld [bc], a
    ld c, c
    ld de, $012d
    ld c, d
    add hl, de
    dec l
    ld bc, $264b
    dec l
    ld [bc], a
    ld c, h
    inc l
    dec l
    ld [bc], a
    ld c, l
    dec c
    ld l, $02
    ld c, [hl]
    db $10
    ld l, $02
    ld c, a
    dec de
    ld l, $02
    ld d, b
    inc l
    cpl
    ld [bc], a
    ld d, c
    dec l
    cpl
    ld [bc], a
    ld d, d
    ld de, $0230
    ld d, e

Call_06e_7c92:
    inc de
    jr nc, jr_06e_7c97

    ld d, h
    dec e

jr_06e_7c97:
    jr nc, jr_06e_7c9b

    ld d, l
    dec hl

jr_06e_7c9b:
    jr nc, jr_06e_7c9f

    ld d, [hl]
    db $10

jr_06e_7c9f:
    ld sp, $5702
    ld [de], a
    ld sp, $5802
    inc d
    ld [hl-], a
    ld [bc], a
    ld e, c
    dec hl
    ld [hl-], a
    ld [bc], a
    ld e, d
    inc d
    inc [hl]
    ld [bc], a
    ld e, e
    dec hl
    inc [hl]
    ld [bc], a
    ld e, h
    ld [de], a
    dec [hl]
    ld [bc], a
    ld e, l
    ld a, [hl+]
    dec [hl]
    ld [bc], a
    ld e, [hl]
    inc de
    ld [hl], $02
    ld e, a
    ld [de], a
    scf
    ld [bc], a
    ld h, b
    dec hl
    scf
    ld [bc], a
    ld h, c
    ld [de], a
    add hl, sp
    ld [bc], a
    ld h, d
    inc de
    add hl, sp
    ld [bc], a
    ld h, e
    inc d
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_06e_7d64:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
