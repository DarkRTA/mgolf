; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    db $12, $40

    inc sp
    ld b, b
    or c
    ld b, d
    ld c, e
    ld b, a
    db $db
    ld c, e
    ld l, e
    ld d, b
    cp $5c
    sbc e
    ld l, c
    db $f4
    ld l, l

    push af
    push bc
    push de
    push hl
    ldh [$95], a
    ld [$2000], a

    ld a, c
    add a
    add l
    ld l, a
    jr nc, jr_026_4022

    inc h

jr_026_4022:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, b
    ld b, $00
    add hl, bc
    ld c, $04
    call Call_000_0468
    pop hl
    pop de
    pop bc
    pop af
    ret


    ld b, $04
    dec sp
    ld b, b
    ld d, b
    ld b, d
    dec sp
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, c
    ld d, b
    ld b, c
    ld d, b
    ld b, c
    ld d, b
    ld b, c
    ld d, b
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    ret nz

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
    nop
    ld h, d
    ld b, d
    ld h, l
    ld b, d
    ld l, e
    ld b, d
    ld l, [hl]
    ld b, d
    ld a, c
    ld b, d
    add b
    ld b, d
    adc b
    ld b, d
    sbc h
    ld b, d
    xor b
    ld b, d
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_026_4277

    inc c
    dec b

jr_026_4277:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_026_4280

    jr @-$01

jr_026_4280:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    dec b
    inc b
    cp c
    ld b, d
    ldh [rDMA], a
    cp c
    ld b, d
    ldh [rSCY], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rSCX], a
    ldh [rLY], a
    ldh [rLYC], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, jr_026_44f3

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc

jr_026_44f3:
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    or $46
    ld sp, hl
    ld b, [hl]
    rst $38
    ld b, [hl]
    ld [bc], a
    ld b, a
    dec c
    ld b, a
    inc d
    ld b, a
    inc e
    ld b, a
    jr nc, jr_026_4737

    inc a
    ld b, a
    or $46
    ld b, l
    ld b, a
    nop
    rst $38
    db $fd
    nop
    ld [bc], a
    ld bc, $ff02
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_026_470b

    inc c
    dec b

jr_026_470b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_026_4714

    jr @-$01

jr_026_4714:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc

jr_026_4737:
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    rst $38
    nop
    rlca
    inc b
    ld d, e
    ld b, a
    ld [hl], b
    ld c, e
    ld d, e
    ld b, a
    ld [hl], b
    ld b, a
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, b
    ld [hl], b
    ld c, c
    ld [hl], b
    ld c, d
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, jr_026_4983

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc

jr_026_4983:
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, jr_026_4b7f

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    add [hl]
    ld c, e
    adc c
    ld c, e
    adc a
    ld c, e
    sub d
    ld c, e
    sbc l
    ld c, e
    and h
    ld c, e
    xor h
    ld c, e
    ret nz

jr_026_4b7f:
    ld c, e
    call z, $864b
    ld c, e
    push de
    ld c, e
    nop
    rst $38
    db $fd
    nop
    ld [bc], a
    ld bc, $ff02
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_026_4b9b

    inc c
    dec b

jr_026_4b9b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_026_4ba4

    jr @-$01

jr_026_4ba4:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    rst $38
    nop
    inc b
    inc b
    db $e3
    ld c, e
    nop
    ld d, b
    db $e3
    ld c, e
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, l
    nop
    ld c, [hl]
    nop
    ld c, a
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0301
    ld [bc], a
    ld b, $07
    ld l, e
    ld l, a
    db $dd
    cp e
    or h
    rst $38
    or e
    rst $38
    ld d, h
    ld a, e
    ld d, h
    ld a, e
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    dec c
    dec bc
    ld [$040f], sp
    rlca
    inc bc

Call_026_4cdf:
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    cp d
    or $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, @+$41

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    ld b, $07
    ld l, e
    ld l, a
    sbc c
    rst $38
    or h
    rst $38
    or e
    rst $38
    ld d, b
    ld a, a
    ld d, b
    ld a, a
    jr c, jr_026_4e13

    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $7a
    cp $da
    cp $d4
    db $fc
    call nc, $b8fc
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    and b
    ldh [rLCDC], a
    ret nz

    add b
    add b
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc

jr_026_4e13:
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld l, [hl]
    ld e, l
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    ld a, [hl+]
    dec a
    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    ld b, $05
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, @+$41

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    dec [hl]
    scf
    ld c, h
    ld a, a
    ld e, d
    ld a, a
    ld e, c
    ld a, a
    jr z, jr_026_500f

    inc e
    rra
    inc bc
    inc bc
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $ec
    db $ec
    or d
    cp $5a
    cp $da
    cp $d4
    db $fc
    cp b
    ld hl, sp-$40
    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    ld d, $50
    add hl, de
    ld d, b
    rra
    ld d, b
    ld [hl+], a
    ld d, b
    dec l
    ld d, b
    inc [hl]
    ld d, b
    inc a
    ld d, b
    ld d, b

jr_026_500f:
    ld d, b
    ld e, h
    ld d, b
    ld d, $50
    ld h, l
    ld d, b
    nop
    rst $38
    db $fd
    nop
    ld [bc], a
    ld bc, $ff02
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_026_502b

    inc c
    dec b

jr_026_502b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_026_5034

    jr @-$01

jr_026_5034:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld [bc], a
    dec bc
    ld [bc], a
    rst $38
    nop
    dec b
    inc b
    ld [hl], e
    ld d, b
    sub b
    ld e, h
    ld [hl], e
    ld d, b
    sub b
    ld d, b
    sub b
    ld d, c
    sub b
    ld d, d
    sub b
    ld d, e
    sub b
    ld d, h
    sub b
    ld d, l
    sub b
    ld d, [hl]
    sub b
    ld d, a
    sub b
    ld e, b
    sub b
    ld e, c
    sub b
    ld e, d
    sub b
    ld e, e
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rlca
    ld b, $07
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$30
    ret nc

    sub b
    ldh a, [$e8]
    ld a, b
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_026_50fb

    ld a, [hl+]
    ccf
    inc hl
    ccf
    ld e, c
    ld a, [hl]
    ld a, h
    ld [hl], a
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_026_50fb:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$30
    ldh a, [$78]
    ret c

    db $f4
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    inc c
    dec bc
    add hl, bc
    rrca
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$f0], a
    jr nc, @-$16

    cp b
    add sp, -$08
    jr nc, @-$0e

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, @+$41

    ld a, e
    ld a, a
    ld e, a
    ld [hl], h
    ccf
    jr c, jr_026_5176

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a

jr_026_5176:
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    xor b
    ld hl, sp+$28
    ld hl, sp-$50
    ldh a, [$f0]
    ld d, b
    ld hl, sp+$18
    db $f4
    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rrca
    inc c
    rla
    dec e
    rla
    rra
    inc c
    rrca
    ld c, $0b
    rrca
    dec c
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$3e
    cp $36
    sub $94
    db $f4
    add sp, $68
    cp b
    ld hl, sp-$30
    ldh a, [$f8]
    ld hl, sp+$78
    ld l, b
    ld [hl], b

jr_026_51cf:
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_026_51fb

    ld a, [hl+]
    ccf
    db $e3
    rst $38
    reti


    sbc $7c
    ld [hl], a
    ld e, a
    ld [hl], e
    ld a, a
    ld a, h
    dec bc
    rrca

jr_026_51ea:
    ld c, $0f
    rlca
    rlca
    ld bc, $8001
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_026_51fb:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$34
    db $fc
    ld a, h
    call c, $a0e0
    ldh [$e0], a
    jr nz, jr_026_51ea

    ret nc

    ldh a, [$e0]
    jr nz, jr_026_51cf

    ret nz

    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$740f], sp
    ld a, a
    ld a, h
    ld a, a
    inc l
    dec hl
    add hl, sp
    ccf
    rla
    ld e, $1f
    rra
    ld [$1d0f], sp
    rla
    ld e, $1a
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ret nc

    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, @+$41

    dec de
    rra
    rra
    inc d
    ccf
    jr nc, @+$61

    ld a, h
    ld l, e
    ld l, a
    rrca
    rrca
    rlca
    rlca
    ld bc, $c001
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    or $f6
    xor [hl]
    cp $2c
    db $fc
    cp h
    db $fc
    db $f4
    ld e, h
    ld hl, sp+$38
    ldh [$60], a
    and b
    ldh [$d0], a
    ldh a, [$e0]
    jr nz, @-$3e

    ret nz

    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rlca
    rlca
    rrca
    ld a, [bc]
    dec bc
    rrca
    ld [$050f], sp
    rlca
    dec bc
    ld c, $0f
    rrca
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$30
    ret nc

    sub b
    ldh a, [$e0]
    ldh [rLCDC], a
    ret nz

    ldh [$a0], a
    ldh a, [$d0]
    ei
    ld a, e
    rst $08
    rst $08
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    inc c
    rrca
    inc d
    rra
    db $10
    rra
    inc c
    rrca
    ld c, $0b
    rrca
    dec bc
    ld b, $07

jr_026_52e8:
    rlca
    rlca
    dec c
    rrca
    rra
    inc de

jr_026_52ee:
    rra
    rra
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    jr nc, jr_026_52e8

    db $10
    ldh a, [$b0]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$58]
    cp b
    jr c, jr_026_52ee

    ret nc

    ldh a, [rSVBK]
    ldh a, [$f8]
    ld hl, sp-$44
    db $e4
    db $fc
    db $fc
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    inc c
    dec bc
    add hl, bc
    rrca
    rlca
    rlca
    ld [bc], a
    inc bc
    rlca
    dec b
    rrca
    dec bc
    rst $18
    sbc $f3
    di
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$f0], a
    ld d, b
    ret nc

    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$d0], a
    ld [hl], b
    ldh a, [$f0]
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    inc de
    rra
    db $10
    rra
    db $10
    rra
    inc c
    rrca
    rlca
    rlca
    dec bc
    ld c, $07
    rlca
    ld [bc], a
    inc bc
    inc b
    rlca
    dec c
    rrca
    ld e, $13
    rra
    rra
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    add sp, -$08
    ld [$08f8], sp
    ld hl, sp-$10
    ldh a, [$f0]
    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ld d, b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$d8]
    ld hl, sp-$08
    ld hl, sp+$01
    ld bc, $0303
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rrca
    dec c
    rra
    inc e
    rra
    rra
    rra
    rra
    rrca
    dec c
    dec bc
    ld c, $0f
    rrca
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$30
    ret nc

    sub b
    ldh a, [$e0]
    ldh [$c0], a
    ld b, b
    ret nz

    ret nz

    add b
    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    inc c
    rrca
    inc d
    rra
    db $10
    rra
    call z, $eecf
    db $eb
    ccf
    ccf
    dec c
    rrca

jr_026_53e8:
    rlca
    rlca
    dec c
    rrca
    rra
    inc de
    ld e, $1e
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]

jr_026_53f6:
    jr nc, jr_026_53e8

    db $10
    ldh a, [$b0]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$50]
    or b
    jr nc, jr_026_53f6

    ldh a, [$d0]
    ld [hl], b
    ldh a, [$f8]
    ld hl, sp-$44
    db $e4
    ld a, h
    ld a, h
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    inc c
    dec bc
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e0], a
    and b
    ldh a, [$30]
    ret nc

    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$d0], a
    ld [hl], b
    ldh a, [$f0]
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    inc de
    rra
    db $10
    rra
    db $10
    rra
    inc c
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    dec c
    rrca
    ld e, $13
    rra
    rra
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    add sp, -$08
    ld [$08f8], sp
    ld hl, sp-$10
    ldh a, [$fb]
    dec hl
    rst $38
    rra
    db $ec
    db $fc
    ld d, b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$d8]
    ld hl, sp+$78
    ld a, b
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, a
    ld h, a
    ld h, a
    add hl, sp
    ccf
    jr jr_026_54bf

    rra
    rla
    dec l
    ccf
    ccf
    ld a, $0b
    rrca
    add hl, bc
    rrca
    dec b
    rlca
    rrca
    ld a, [bc]
    rrca
    rrca
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38

jr_026_54bf:
    ld hl, sp+$30
    ret nc

    sub b
    ldh a, [$e0]
    ldh [$c0], a
    ld b, b
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    ld bc, $0301
    inc bc
    rlca
    rlca
    rst $00
    rst $00
    add $c7
    call z, Call_026_74cf
    ld a, a
    jr nc, jr_026_551f

    inc e
    rra
    ld d, $1f
    rrca
    dec bc
    ld b, $07

jr_026_54e8:
    rlca
    rlca
    dec c
    rrca
    rra
    inc de
    ld e, $1e
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]

jr_026_54f6:
    jr nc, jr_026_54e8

    db $10
    ldh a, [$b0]
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$50]
    or b
    jr nc, jr_026_54f6

    ldh a, [$d0]
    ldh a, [$f0]
    ret c

    ld hl, sp-$44
    db $e4
    ld a, h
    ld a, h
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e

jr_026_551f:
    rra
    inc c
    dec bc
    add hl, bc
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0203
    inc bc
    inc bc
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    or $f6

jr_026_5538:
    db $76
    or $e6
    and $9c
    db $fc
    jr jr_026_5538

    ld hl, sp-$18
    ldh a, [$b0]
    ldh [$60], a
    sub b
    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$f0], a
    ld d, b
    ldh a, [$f0]
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    inc de
    rra
    db $10
    rra
    db $10
    rra
    inc c
    rrca
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    dec c
    rrca
    ld e, $13
    rra
    rra
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    di
    di
    db $eb
    ei
    ld a, [bc]
    ld a, [$fe0e]
    db $fc
    db $fc
    db $f4
    ld e, h
    add sp, $38
    ldh a, [$f0]
    ld d, b
    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$d8]
    ld hl, sp+$78
    ld a, b
    inc bc
    inc bc
    rlca
    rlca
    rst $00
    rst $00
    rst $08
    rst $08
    rst $10
    rst $18
    ld d, a
    ld e, a
    ld l, e
    ld l, a
    jr c, @+$41

    rra
    rla
    rla
    inc e
    rrca
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    dec b
    rlca
    rrca
    dec bc
    rrca
    rrca
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    add sp, -$08
    add sp, -$08
    ret nc

    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$c0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ldh [$a0], a
    ldh [$e0], a
    ld bc, $0301
    inc bc
    rst $00
    rst $00
    rst $08
    rst $08
    adc $cf
    ld h, a
    ld h, a
    add hl, sp
    ccf
    jr jr_026_55ff

    rra
    rla
    rrca
    ld c, $07
    dec b
    rlca
    rlca
    ld [$1d0f], sp
    rla
    rra
    inc de
    rrca
    rrca
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38

jr_026_55ff:
    ld hl, sp+$30
    ret nc

    sub b
    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ret nc

    ldh a, [$b0]
    ldh a, [$f8]
    ret z

    ld a, b
    ld a, b
    rlca
    rlca
    rrca
    rrca
    inc e
    rra
    ld de, $141f
    rra
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    rlca
    rlca
    dec b
    ld b, $06
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    rlca
    rlca
    rlca
    dec b
    inc bc
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    ld h, e
    db $e3
    ld [hl], e
    di
    dec sp
    ei
    ld a, [hl+]
    ld a, [$fe8e]
    sub h

jr_026_563f:
    db $f4
    inc l
    db $ec
    ld a, h
    db $f4
    ld hl, sp-$18
    ld hl, sp-$48
    ldh a, [$f0]
    ret nc

    ldh a, [$f0]
    jr nc, jr_026_563f

    ldh a, [rTAC]
    rlca
    rrca
    rrca
    add hl, bc
    rrca
    inc c
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    inc c
    dec bc
    ld [$090f], sp
    rrca
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    dec c
    rrca
    ld e, $13
    rra
    rra
    add b
    add b
    ret nz

    ret nz

    db $e3
    db $e3
    di
    di
    di
    di
    sub [hl]
    or $1c
    db $fc
    ld [hl], h
    db $fc
    ret c

    ld hl, sp-$08
    cp b
    ldh a, [$50]
    ldh [$e0], a
    ret nc

    ldh a, [$b8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rlca
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$30
    ret nc

    add sp, $78
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_026_56fd

    ld a, [hl+]
    ccf
    inc hl
    ccf
    ld e, c
    ld a, [hl]
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_026_56fd:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$30
    ldh a, [$f4]
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    inc c
    dec bc
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]

jr_026_573a:
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e8], a
    cp b
    add sp, -$08
    jr nc, jr_026_573a

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, jr_026_57a1

    ld a, e
    ld a, a
    ccf
    jr c, jr_026_5776

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a

jr_026_5776:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    xor b
    ld hl, sp+$28
    ld hl, sp-$50
    ldh a, [$f8]
    jr @-$0a

    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc

jr_026_57a1:
    inc bc
    rlca
    ld b, $07
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ldh a, [$f0]
    ld hl, sp-$08
    ret z

    ld hl, sp-$78
    ld hl, sp+$18
    ld hl, sp-$78
    ld hl, sp-$6c
    db $fc
    inc e
    db $fc
    sbc b
    add sp, -$70
    ldh a, [$e8]
    ld a, b
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    dec b
    rlca
    inc c
    rrca
    dec d
    rra
    ld de, $2c1f
    ccf
    ld a, h
    ld [hl], a
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR23]
    ld hl, sp+$54
    db $fc
    call nz, $98fc
    ld a, b
    ld a, b
    ret c

    db $f4
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    dec b
    rlca
    inc b
    rlca
    ld b, $07
    inc b
    rlca
    ld a, [bc]
    rrca
    ld c, $0f
    ld b, $05
    add hl, bc
    rrca
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$38
    ld hl, sp+$70
    ldh a, [rOBP0]
    ld hl, sp+$08
    ld hl, sp+$70
    ldh a, [$f0]
    jr nc, @-$16

    cp b
    add sp, -$08
    jr nc, @-$0e

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    dec d
    rra
    inc d
    rra
    dec a
    ccf
    ld e, a
    ld [hl], h
    ccf
    jr c, jr_026_5876

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]

jr_026_5876:
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld d, h
    db $fc
    inc d
    db $fc
    ret c

    ld hl, sp-$10
    ld d, b
    ld hl, sp+$18
    db $f4
    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca

jr_026_5896:
    ld e, $1f

jr_026_5898:
    inc e
    rra
    ld c, $0f
    ld [de], a
    rra
    db $10
    rra
    ld c, $0f
    rlca
    ld b, $07
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_026_5896

    jr nz, jr_026_5898

    ld h, b
    ldh [rNR41], a
    ldh [$50], a
    ldh a, [rSVBK]
    ldh a, [$60]
    and b
    sub b
    ldh a, [$e8]
    ld a, b
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rra
    rra
    add hl, de
    rra
    db $10
    rra
    dec d
    rra
    jr nc, @+$41

    ld d, l
    ld a, a
    ld b, a
    ld a, a
    or d
    db $fd
    ld a, h
    ld [hl], a
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$50], a
    ldh a, [rNR10]
    ldh a, [$60]
    ldh [$78], a
    ret c

    db $f4
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld de, $181f
    rra
    ld de, $291f
    ccf

jr_026_591e:
    jr c, jr_026_595f

jr_026_5920:
    add hl, de
    rla
    add hl, bc
    rrca
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a

jr_026_593a:
    ret nz

    ret nz

    jr nz, jr_026_591e

    jr nz, jr_026_5920

    ret nz

    ret nz

    ldh a, [$30]
    add sp, -$48
    add sp, -$08
    jr nc, jr_026_593a

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld d, l
    ld a, a
    ld d, b

jr_026_595f:
    ld a, a
    rst $30
    rst $38
    ld e, a
    ld [hl], h
    ccf
    jr c, jr_026_5976

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

jr_026_5976:
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld d, b
    ldh a, [$50]
    ldh a, [$60]
    ldh [$f0], a
    ld d, b
    ld hl, sp+$18
    db $f4
    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    dec b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$30]
    ldh a, [rNR41]
    ldh [$a0], a
    ldh [$f0], a
    ldh a, [rNR41]
    ldh [$f0], a
    ret nc

    ldh a, [$f0]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    ld d, $1f
    inc de
    rra
    dec l
    ld a, $3c
    dec sp
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, a
    ld a, [bc]
    rrca
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ret nz

    add b
    ret nz

    sub b
    ldh a, [$90]
    ldh a, [rNR41]
    ldh [rSVBK], a
    ldh a, [$f8]
    ld a, b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$0c0f], sp
    rrca
    inc b
    rlca
    dec b
    rlca
    ld bc, $0703
    rlca
    rrca
    rrca
    ld c, $0a
    ld b, $06
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ldh [rNR41], a
    ret nc

    ldh a, [rNR41]
    ldh [$60], a
    ldh [$e0], a
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld d, $1f
    inc d
    rra
    ccf
    ccf
    cpl
    jr c, jr_026_5a6c

    inc b
    rlca
    rlca
    dec bc
    rrca
    rlca
    dec b

jr_026_5a6c:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    sub b
    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$e0], a
    ld h, b
    add sp, $78
    sbc h
    call c, $cccc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rlca
    ld b, $07
    dec b
    dec bc
    rrca
    dec bc
    rrca
    dec c
    rrca
    rrca
    dec bc
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$10
    ldh a, [$90]
    ldh a, [$e8]
    ld a, b
    ld hl, sp-$08
    db $10
    ldh a, [$b8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_026_5afb

    ld a, [hl+]
    ccf
    inc hl
    ccf
    ld e, b
    ld a, a
    ld a, h
    ld [hl], a
    rrca
    dec bc
    rrca
    ld c, $09
    rrca
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_026_5afb:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$30
    ldh a, [$78]
    ret c

    db $f4
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    ld [$090f], sp
    rrca
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$f0], a
    jr nc, @-$16

    cp b
    add sp, -$08
    jr nc, @-$0e

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, @+$41

    ld a, e
    ld a, a
    ld e, a
    ld [hl], h
    ccf
    jr c, jr_026_5b76

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a

jr_026_5b76:
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    xor b
    ld hl, sp+$28
    ld hl, sp-$50
    ldh a, [$f0]
    ld d, b
    ld hl, sp+$18
    db $f4
    ld a, h
    xor h
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rrca
    inc c
    rla
    dec e
    rla
    rra
    inc c
    rrca
    ld c, $0b
    rrca
    dec c
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$10
    ldh a, [$90]
    ldh a, [$e0]
    ld h, b
    or b
    ldh a, [$d0]
    ldh a, [$f8]
    ld hl, sp+$78
    ld l, b
    ld [hl], b

jr_026_5bcf:
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_026_5bfb

    ld a, [hl+]
    ccf
    inc hl
    ccf
    jr jr_026_5c01

    inc a
    scf
    ld e, a
    ld [hl], e
    ld a, a
    ld a, h
    dec bc
    rrca

jr_026_5bea:
    ld c, $0f
    rlca
    rlca
    ld bc, $8001
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_026_5bfb:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$34

jr_026_5c01:
    db $fc
    ld a, h
    call c, $a0e0
    ldh [$e0], a
    jr nz, jr_026_5bea

    ret nc

    ldh a, [$e0]
    jr nz, jr_026_5bcf

    ret nz

    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    ld [$090f], sp
    rrca
    rla
    ld e, $1f
    rra
    ld [$1d0f], sp
    rla
    ld e, $1a
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ret nc

    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, @+$41

    dec de
    rra
    rra
    inc d
    ccf
    jr nc, jr_026_5cc6

    ld a, h
    ld l, e
    ld l, a
    rrca
    rrca
    rlca
    rlca
    ld bc, $c001
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    xor b
    ld hl, sp+$28
    ld hl, sp-$44
    db $fc
    db $f4
    ld e, h
    ld hl, sp+$38
    ldh [$60], a
    and b
    ldh [$d0], a
    ldh a, [$e0]
    jr nz, @-$3e

    ret nz

    and [hl]
    ld e, h
    xor c
    ld e, h
    xor a
    ld e, h
    or d
    ld e, h
    cp l
    ld e, h
    call nz, $cc5c
    ld e, h
    ldh [$5c], a
    db $ec
    ld e, h
    push af
    ld e, h
    ld hl, sp+$5c
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_026_5cbb

    inc c
    dec b

jr_026_5cbb:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_026_5cc4

    jr @-$01

jr_026_5cc4:
    nop
    ld a, [bc]

jr_026_5cc6:
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld e, $fd
    ld a, [bc]
    ld e, $0b
    ld e, $ff
    nop
    ld h, e
    inc b
    ld c, $5d
    jr nc, jr_026_5d6d

    ld b, $5d
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    jr nc, jr_026_5d6d

    jr nc, @+$60

    jr nc, @+$61

    jr nc, jr_026_5d76

    jr nc, jr_026_5d79

    jr nc, @+$64

    jr nc, jr_026_5d7f

    jr nc, @+$66

    jr nc, jr_026_5d85

    jr nc, jr_026_5d88

    jr nc, jr_026_5d8b

    jr nc, jr_026_5d8e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_026_5d4a

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    jr z, jr_026_5d79

    dec hl
    ccf
    cpl
    inc a
    scf
    inc [hl]
    inc hl
    ld [hl+], a
    inc bc
    inc bc
    rlca
    dec b
    ld c, $0b
    rlca
    rlca

jr_026_5d4a:
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

jr_026_5d6d:
    ld hl, sp-$10
    ldh a, [rSB]
    ld bc, $0302

jr_026_5d74:
    rlca
    rlca

jr_026_5d76:
    ld [$110f], sp

jr_026_5d79:
    rra
    ld de, $3f1f
    ld l, $3f

jr_026_5d7f:
    ld a, [hl+]
    ccf
    jr c, jr_026_5e02

    ld e, h
    ld a, e

jr_026_5d85:
    ld a, a
    ld e, h
    ld d, a

jr_026_5d88:
    rst $08
    set 0, a

jr_026_5d8b:
    rst $00
    inc b
    rlca

jr_026_5d8e:
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_026_5d74

    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    db $fc
    ld [hl], h
    db $fc
    ld d, h
    ld hl, sp+$18
    add sp, $38
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld l, $3b
    rra
    dec e
    rra
    dec d
    rra
    db $10
    rrca
    add hl, bc
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    jr jr_026_5dea

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $12
    cp $d4
    db $fc
    db $f4
    inc a
    add sp, $28
    ret z

    ld c, b
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr nc, @-$0e

    ldh [$e0], a

jr_026_5dea:
    ret nc

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_026_5df4:
    dec bc
    rrca
    inc c
    rrca
    inc d
    rra
    inc d
    rra
    inc a
    cpl
    ld a, $2f
    ld a, [hl]
    ld a, e

jr_026_5e02:
    ld a, a
    ld e, a
    jr c, @+$41

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_026_5df4

    sub b
    ldh a, [$50]
    ldh a, [rOBP0]
    ld hl, sp+$48
    ld hl, sp-$64
    db $f4
    cp a
    rst $30
    ei
    db $db
    ld l, [hl]
    cp $de
    ld a, [c]
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    jr jr_026_5e4a

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    ld c, b
    ld a, a
    dec hl
    ccf
    cpl
    inc a
    rla
    inc d
    inc de
    ld [de], a
    rlca
    rlca
    ld c, $0b
    inc c
    rrca
    rlca
    rlca

jr_026_5e4a:
    dec bc
    ld c, $09
    rrca
    ld b, $06
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    cp $0e
    or $96
    ld h, h
    db $e4
    add sp, -$58
    ldh a, [$d0]
    ld hl, sp+$78
    add sp, -$08
    jr nc, jr_026_5ea0

    inc bc
    inc bc
    inc b
    rlca
    rlca
    rlca
    ld [$110f], sp
    rra
    ld de, $3f1f
    ld l, $3f
    ld a, [hl+]
    rst $18
    ret c

    rst $10
    call c, Call_026_6f7b
    ld a, h
    ld e, a
    ld l, a
    ld l, e
    rlca
    rlca
    inc bc
    inc bc

jr_026_5e8e:
    nop
    nop

jr_026_5e90:
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    db $fc
    ld [hl], h
    db $fc
    ld d, h

jr_026_5ea0:
    db $fc
    inc e
    cp $3a
    sbc $fe
    jr c, jr_026_5e90

    ldh a, [$d0]
    ldh [$e0], a
    jr nz, jr_026_5e8e

    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld l, $3b
    rst $18
    db $dd
    rst $18
    push de
    ld e, a
    ld d, b
    ccf
    add hl, sp
    ld e, $17
    inc e
    rra
    rrca
    dec bc
    rla
    inc e
    dec de
    rra
    inc c
    inc c
    jr jr_026_5eea

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $14
    db $fc
    call nc, $f4fc
    inc a
    db $ec
    inc l
    call nz, $c044
    ret nz

    ldh [$a0], a
    ld [hl], b
    ret nc

    ldh [$e0], a

jr_026_5eea:
    ldh a, [rSVBK]
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_026_5ef4:
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld [de], a
    rra
    ld [de], a
    rra
    add hl, sp
    cpl
    dec a
    cpl
    rra
    dec de
    db $76
    ld a, a
    ld a, e
    ld c, a
    inc a
    ccf
    rrca
    dec bc
    rlca
    rlca

jr_026_5f0c:
    inc bc
    inc bc

jr_026_5f0e:
    nop
    nop

jr_026_5f10:
    ret nz

    ret nz

    jr nz, jr_026_5ef4

    ret nc

    ldh a, [$30]
    ldh a, [$2b]
    ei
    dec hl
    ei
    ld a, $f6
    ld a, [hl]
    or $7e
    sbc $fe
    ld a, [$fcdc]
    jr c, jr_026_5f10

    ldh a, [$d0]
    jr nz, jr_026_5f0c

    jr nz, jr_026_5f0e

    ret nz

    ret nz

    inc b
    inc b
    ld a, [de]
    ld e, $27
    ccf
    ld l, $3b
    dec d
    rra
    rla
    ld e, $17
    inc e
    dec bc
    ld a, [bc]
    dec b
    rlca
    ld a, [bc]
    rrca
    inc e
    rla
    ld e, $13
    rrca
    rrca
    ld b, $06
    add hl, bc
    rrca

jr_026_5f4e:
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    jr jr_026_5f4e

    inc b
    db $fc
    inc d
    db $fc
    cp b
    add sp, -$10
    ld d, b
    ldh a, [$90]
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [rLCDC], a
    ret nz

    ldh [$a0], a
    ld h, b
    ld h, b
    ld d, $16
    ld c, $0e
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld [$180f], sp
    rra
    inc a
    cpl
    ccf
    daa
    rra
    add hl, de
    rrca
    inc c
    dec bc
    rrca
    rlca
    dec b
    rlca
    ld b, $07
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$48
    ld hl, sp-$04
    or h
    db $fc
    ld d, h
    ld hl, sp+$58
    ldh a, [$30]
    ret nc

    ldh a, [$e0]
    and b
    ldh [$e0], a
    ldh [$a0], a
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    rlca
    rlca
    jr jr_026_5fd5

    jr nz, jr_026_5ff7

    jr z, jr_026_5ff9

    dec e
    rla
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rra
    db $10
    rrca
    add hl, bc
    ld b, $07
    ld [bc], a
    inc bc
    rlca
    dec b
    ld b, $06
    ld l, b
    ld l, b
    ld [hl], b
    ld [hl], b
    jr nz, jr_026_5ff2

    ld e, b
    ld a, b
    db $e4

jr_026_5fd5:
    db $fc
    ld [hl], h
    call c, $f8a8
    add sp, $78
    add sp, $38
    ret nc

    ld d, b
    and b
    ldh [$50], a
    ldh a, [$38]
    add sp, $78
    ret z

    ldh a, [$f0]
    ld h, b
    ld h, b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc

jr_026_5ff2:
    inc b
    rlca

jr_026_5ff4:
    add hl, bc
    rrca
    ld a, [bc]

jr_026_5ff7:
    rrca
    ld [de], a

jr_026_5ff9:
    rra
    ld a, [hl-]
    cpl
    dec a
    daa
    dec e
    rla
    dec bc
    rrca
    inc c
    rrca
    dec bc
    rrca
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_026_5ff4

    ret nc

    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$78
    ld hl, sp+$70
    ret nc

    ldh a, [$f0]
    ret nc

    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    ldh a, [$d0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$04
    inc b
    ld a, [de]
    ld e, $27
    ccf
    ld l, $3b
    dec d
    rra
    rla
    ld e, $17
    inc e
    dec bc
    ld a, [bc]
    dec b
    rlca
    ld a, [bc]
    rrca
    inc e
    rla
    ld e, $1f
    rrca
    rrca
    ld b, $06
    add hl, bc
    rrca

jr_026_604e:
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    jr jr_026_604e

    inc b
    db $fc
    inc d
    db $fc
    cp b
    add sp, -$10
    ld d, b
    ldh a, [$90]
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld [$180f], sp
    rra
    inc a
    cpl
    ccf
    daa
    rra
    add hl, de
    rrca
    inc c
    dec bc
    rrca
    rlca
    dec b
    ld a, a

jr_026_6089:
    ld a, a
    ld h, a
    ld h, l
    add hl, bc
    rrca
    ld c, $0e
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$48
    ld hl, sp-$04
    or h
    db $fc
    ld d, h
    ld hl, sp+$58
    ldh a, [$30]
    ret nc

    ldh a, [$e0]
    jr nz, jr_026_6089

    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    rlca
    rlca
    jr jr_026_60d5

    jr nz, jr_026_60f7

    jr z, jr_026_60f9

    dec e
    rla
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rra
    db $10
    rrca
    add hl, bc
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_026_60f2

    ld e, b
    ld a, b
    db $e4

jr_026_60d5:
    db $fc
    ld [hl], h
    call c, $f8a8
    add sp, $78
    add sp, $38
    ret nc

    ld d, b
    and b
    ldh [$d0], a
    ldh a, [$f8]
    add sp, $78
    ret z

    ldh a, [$f0]
    ld h, b
    ld h, b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc

jr_026_60f2:
    inc b
    rlca

jr_026_60f4:
    add hl, bc
    rrca
    ld a, [bc]

jr_026_60f7:
    rrca
    ld [de], a

jr_026_60f9:
    rra
    ld a, [hl-]
    cpl
    dec a
    daa
    dec e
    rla
    dec bc
    rrca
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_026_60f4

    ret nc

    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$78
    ld hl, sp+$70
    ret nc

    ldh a, [$f0]
    ret nc

    ldh a, [$fe]
    ld e, $f6
    or $f0
    ret nc

    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc b
    inc b
    ld a, [de]
    ld e, $27
    ccf
    xor $fb
    push de
    rst $18
    rst $10
    sbc $57
    ld e, h
    dec hl
    ld a, [hl+]
    dec e
    rra
    inc e
    rla
    ld e, $1b
    rra
    rra
    rrca
    rrca
    ld b, $06
    add hl, bc
    rrca

jr_026_614e:
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    jr jr_026_614e

    inc b
    db $fc
    inc d
    db $fc
    cp b
    add sp, -$10
    ld d, b
    ldh a, [$90]
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld [$d80f], sp
    rst $18
    db $fc
    rst $28
    rst $38
    rst $20
    ccf
    add hl, sp
    rra
    inc e
    rrca
    dec bc
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$48
    ld hl, sp-$04
    or h
    db $fc
    ld d, h
    ld hl, sp+$58
    ldh a, [$30]
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    rlca
    rlca
    jr jr_026_61d5

    jr nz, jr_026_61f7

    jr z, jr_026_61f9

    dec e
    rla
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rra
    db $10
    rrca
    add hl, bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_026_61f2

    ld e, b
    ld a, b
    db $e4

jr_026_61d5:
    db $fc
    ld [hl], h
    call c, $fbab
    db $eb
    ld a, e
    ld [$d43a], a
    ld d, h
    xor b
    add sp, -$30
    ldh a, [$f8]
    add sp, -$08
    ret z

    ldh a, [$f0]
    ld h, b
    ld h, b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc

jr_026_61f2:
    inc b
    rlca

jr_026_61f4:
    add hl, bc
    rrca
    ld a, [bc]

jr_026_61f7:
    rrca
    ld [de], a

jr_026_61f9:
    rra
    ld a, [hl-]
    cpl
    dec a
    daa
    dec e
    rla
    dec bc
    rrca
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_026_61f4

    db $d3
    di
    inc sp
    di
    add hl, hl
    ld sp, hl
    ld a, [hl+]
    ld a, [$fc2c]
    ld a, h
    db $f4
    ld a, b
    ret c

    add sp, -$08
    ret z

    ld hl, sp-$10
    db $10
    ldh a, [$f0]
    ldh a, [$d0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc b
    rlca

jr_026_6234:
    dec bc
    rrca
    call nc, $d4df
    rst $18
    call nc, Call_026_4cdf
    ld c, a
    inc l
    cpl
    dec d
    rla
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    ld [$0f0f], sp
    rlca
    rlca
    add hl, bc
    rrca
    ld c, $0e
    ret nz

    ret nz

    jr nz, jr_026_6234

    sub b
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ldh a, [$d0]
    ldh [$a0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    jr jr_026_628a

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    ret z

    rst $38
    ld [$efff], a
    db $fd
    scf
    inc [hl]
    dec de
    dec de
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b

jr_026_628a:
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    nop
    nop
    rlca
    rlca
    ld [$110f], sp
    rra
    inc de
    ld e, $1f
    dec e
    rra
    dec d
    rra
    db $10
    rrca
    ld [$0707], sp

jr_026_62c4:
    ld b, $07
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    dec b

jr_026_62ce:
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_026_62c4

    ret z

    ld hl, sp+$2b
    ei
    sub e
    di
    or e
    di
    ld a, [c]
    ld d, d
    db $f4
    inc d
    add sp, $68
    ldh a, [$d0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$e0], a
    jr nz, @-$3e

    ret nz

    jr nz, jr_026_62ce

    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld e, $13
    rra
    dec d
    rra
    dec d
    rra
    db $10
    rrca
    dec bc
    inc b
    rlca
    dec b
    rlca
    inc bc
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    ld c, $0e
    jr jr_026_632a

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $13
    rst $38
    rst $10
    rst $38
    rst $30
    ccf
    db $fc
    inc a
    ld hl, sp-$08
    ld [hl], b
    ret nc

    and b
    ldh [$c0], a
    ret nz

    ldh [rNR41], a

jr_026_632a:
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    jr jr_026_634c

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    jr z, jr_026_637b

    dec hl
    ccf
    cpl
    inc a
    scf
    inc [hl]
    inc hl
    ld [hl+], a
    rlca
    dec b
    ld c, $0b
    rlca
    rlca
    rrca
    rrca

jr_026_634c:
    dec bc
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    ld hl, sp+$08
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

    ld hl, sp-$10
    ldh a, [rP1]
    nop
    ld bc, $0201
    inc bc

jr_026_6376:
    rlca
    rlca
    ld [$110f], sp

jr_026_637b:
    rra
    ld de, $3f1f
    ld l, $3f
    ld a, [hl+]
    ccf
    jr c, jr_026_6400

    ld a, a
    ld e, h
    ld d, a
    rst $08
    set 0, a
    rst $00
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_026_6376

    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    db $fc
    ld [hl], h
    db $fc
    ld d, h
    ld hl, sp+$18
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld l, $3b
    rra
    dec e
    rra
    dec d
    rra
    db $10
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    nop
    nop
    jr jr_026_63ec

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $12
    cp $d4
    db $fc
    db $f4
    inc a
    add sp, $28
    ret z

    ld c, b
    ld [hl], b
    ret nc

    jr nc, @-$0e

    ldh [$e0], a
    ret nc

    ld [hl], b

jr_026_63ec:
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_026_63f6:
    dec bc
    rrca
    inc c
    rrca
    inc d
    rra
    inc d
    rra
    inc a
    cpl

jr_026_6400:
    ld a, $2f
    ld a, [hl]
    ld a, e
    jr c, jr_026_6445

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_026_63f6

    sub b
    ldh a, [$50]
    ldh a, [rOBP0]
    ld hl, sp+$48
    ld hl, sp-$64
    db $f4
    cp a
    rst $30
    ei
    db $db
    sbc $f2
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc c
    inc c
    ld [de], a
    ld e, $27
    ccf
    ld l, $3b
    inc d
    rra
    dec d
    rra
    rla
    ld e, $1b
    ld a, [de]
    ld de, $0311
    inc bc
    rlca

jr_026_6445:
    dec b
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ld hl, sp-$08
    inc b
    db $fc
    ld [de], a
    cp $3a
    xor $ba
    xor $fc
    ld e, h
    db $fc
    ld d, h
    db $fc
    inc b
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

    ld hl, sp-$10
    ldh a, [rP1]
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    rra
    rla
    rra
    dec d
    rra
    inc e
    ld a, a
    ld e, h
    ld a, e
    ld a, a
    ld e, h
    ld d, a
    rst $08
    set 0, a
    rst $00
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$b0]
    ldh a, [rOBP0]
    ld hl, sp-$1c
    cp h
    db $f4
    sbc h
    cp $3a
    cp $2a
    db $fc
    inc c
    add sp, $38
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$120f], sp
    rra
    rla
    dec e
    rla
    dec e
    rrca
    ld c, $0f
    ld a, [bc]
    rrca
    ld [$090f], sp
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    inc c
    inc c
    jp nc, Jump_000_39de

    rst $38
    dec e
    rst $30

jr_026_64d8:
    add hl, bc
    rst $38
    ld l, d
    cp $fa
    sbc [hl]
    db $f4
    sub h
    db $e4
    inc h
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr nc, jr_026_64d8

    ldh [$e0], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    ld bc, $0201
    inc bc
    dec b
    rlca
    ld b, $07
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld e, $17
    rra
    rla
    ccf
    dec a
    ld a, a
    ld e, a
    jr c, jr_026_6545

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$c8]
    ld hl, sp+$28
    ld hl, sp+$24
    db $fc
    inc h
    db $fc
    ld c, [hl]
    ld a, [$fb5f]
    ld a, l
    db $ed
    ld l, [hl]
    cp $de
    ld a, [c]
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    jr nc, jr_026_6562

    ld c, e
    ld a, e
    sbc h
    rst $38
    cp b
    rst $28
    ld d, b
    ld a, a
    ld d, [hl]
    ld a, a
    ld e, a
    ld a, c
    ld l, a
    ld l, c
    ld b, a
    ld b, h
    inc bc
    inc bc
    rlca

jr_026_6545:
    dec b
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [rOBP0]
    ld hl, sp-$18
    cp b
    add sp, -$48
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [rNR10]

jr_026_6562:
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

    ld hl, sp-$10
    ldh a, [$03]
    inc bc
    inc b
    rlca
    ld c, $0f
    ld de, $231f
    ld a, $23
    ld a, $7f
    ld e, h
    ld a, a
    ld d, h
    ld a, a
    ld [hl], b
    ld a, a
    ld e, h
    ld a, e
    ld a, a
    ld e, h
    ld d, a
    rst $08
    set 0, a
    rst $00
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    jr nz, @-$1e

    sub b
    ldh a, [$d0]
    ld [hl], b
    ld hl, sp-$18
    ld hl, sp-$58
    ldh a, [$30]
    add sp, $38
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rra
    rra
    jr nz, jr_026_65f5

    ld c, b
    ld a, a
    ld e, h
    ld [hl], a
    ld e, l
    ld [hl], a
    ccf
    ld a, [hl-]
    ccf
    ld a, [hl+]
    ccf
    jr nz, jr_026_65d2

    add hl, bc
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    jr nc, jr_026_6602

jr_026_65d2:
    ld c, b
    ld a, b
    db $e4
    db $fc
    ld [hl], h
    call c, $fc24
    xor b
    ld hl, sp-$18
    ld a, b
    ret nc

    ld d, b
    sub b
    sub b
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr nc, @-$0e

    ldh [$e0], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$170f], sp

jr_026_65f5:
    rra

jr_026_65f6:
    jr jr_026_6617

    jr z, jr_026_6639

    jr z, jr_026_663b

    ld a, c
    ld e, a
    ld a, l
    ld e, a
    db $fd
    rst $30

jr_026_6602:
    ld a, a
    ld e, a
    jr c, @+$41

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_026_65f6

    and b

jr_026_6617:
    ldh [$90], a
    ldh a, [$90]
    ldh a, [$38]
    add sp, $7e
    xor $f6
    or [hl]
    ld l, [hl]
    cp $de
    ld a, [c]
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc c
    inc c
    ld de, $261d
    ccf
    inc l

jr_026_6639:
    dec sp
    inc d

jr_026_663b:
    rra
    rla
    inc e
    dec de
    jr jr_026_6654

    ld [de], a
    inc bc
    inc bc
    ld b, $07
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_026_6654:
    ldh [$e0], a

jr_026_6656:
    db $10
    ldh a, [$08]
    ld hl, sp+$68
    ld hl, sp-$10
    or b
    ldh a, [$90]
    ldh a, [rNR10]
    ldh [$a0], a
    jr nc, jr_026_6656

    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    rra
    ld d, $1f
    ld d, $1f
    inc e
    ccf
    inc l
    inc l
    dec hl
    ld h, a
    ld h, a
    ld h, e
    ld h, e
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    ld hl, sp+$68
    ld hl, sp+$68
    ldh a, [$30]
    ret nc

    jr nc, jr_026_66e1

    db $f4
    db $ec
    db $ec
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    ld d, $1f
    rrca
    dec c
    rrca
    add hl, bc
    rrca
    ld [$0507], sp
    inc bc
    ld bc, $0707
    rrca
    ld c, $0b
    rrca
    inc b
    inc b
    nop
    nop
    nop
    nop
    jr nc, jr_026_6704

    adc b
    cp b
    ld h, h
    db $fc
    inc [hl]
    call c, $fc24
    add sp, $38
    ret nc

    db $10
    ret nc

jr_026_66e1:
    ld d, b
    ret nz

    ret nz

    jr nz, @-$1e

    ret nz

    ret nz

    ldh [$60], a
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    rlca
    rlca
    inc b
    rlca
    ld [$1c0f], sp
    rla
    ld e, $17
    ld a, $3f
    ccf
    cpl

jr_026_6704:
    inc c
    dec bc
    rlca
    rlca
    nop
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    and b
    ldh [$60], a
    ldh [$50], a
    ldh a, [$b8]
    add sp, -$42
    xor $f6
    or $5c
    db $fc
    jr c, @-$06

    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    rrca

jr_026_67fa:
    inc c
    rrca
    inc c
    rrca
    dec e
    rla
    ccf
    dec sp
    ld a, $2f
    inc e
    rra
    rrca
    dec bc
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_026_67fa

    and b
    ldh [$a0], a
    ldh [rSVBK], a
    ret nc

    ld hl, sp-$48
    ld hl, sp-$08
    ld a, b
    ret z

    ldh a, [$b0]
    ret nz

    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    dec e
    rla
    rrca
    dec bc
    ld e, $1f
    inc a
    daa
    rra
    dec de
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$60], a
    ldh [$60], a
    ldh [$78], a
    ret c

    ld hl, sp-$48
    ld hl, sp-$18
    ld [hl], b
    ldh a, [$e0]
    and b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    ld b, [hl]
    ld l, c
    ld c, c
    ld l, c
    ld c, a
    ld l, c
    ld d, d
    ld l, c
    ld e, l
    ld l, c
    ld h, h
    ld l, c
    ld l, h
    ld l, c
    add b
    ld l, c
    adc h
    ld l, c
    ld b, [hl]
    ld l, c
    sub l
    ld l, c
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_026_695b

    inc c
    dec b

jr_026_695b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_026_6964

    jr @-$01

jr_026_6964:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld e, $0b
    ld e, $ff
    nop
    rlca
    inc b
    and e
    ld l, c
    or b
    ld l, l
    and e
    ld l, c
    or b
    ld l, c
    or b
    ld l, d
    or b
    ld l, e
    or b
    ld l, h
    or b
    ld l, h
    or b
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    dec b
    dec b
    ld [$3008], sp
    jr nc, jr_026_69d3

    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop

jr_026_69d3:
    nop
    nop
    nop
    inc c
    inc c
    ld c, $0a
    ld a, [de]
    ld e, $ff
    db $fc
    rst $38
    rst $38
    call c, $d0fc
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$70
    ld [hl], b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    dec b
    dec b
    rlca
    dec bc
    ld c, $1b
    rra
    inc l
    ccf
    ld e, a
    ld a, a
    ld h, a
    ld h, a
    ld [c], a
    db $e3
    push bc
    rst $00
    add $c6
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$a0], a
    and b
    ldh [$d0], a
    ld [hl], b
    ret c

    ld hl, sp+$34
    db $fc
    ld a, [$e6fe]
    and $c7
    rst $00
    ld h, e
    db $e3
    db $e3
    db $e3
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr nc, jr_026_6a68

    ld [hl], b
    ld d, b
    ld e, b
    ld a, b
    rst $38
    ccf
    rst $38
    rst $38
    dec sp
    ccf
    dec bc
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ld c, $0e
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    and b
    db $10
    db $10

jr_026_6a68:
    inc c
    inc c
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    inc de
    rra
    inc l
    ccf
    ld a, a
    ld a, a
    ld h, a
    ld h, a
    ld [c], a
    db $e3
    push bc
    rst $00
    add $c6
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ret z

    ld hl, sp+$34
    db $fc
    cp $fe
    and $e6
    rst $00
    rst $00
    ld h, e
    db $e3
    db $e3
    db $e3
    ld bc, $0101
    ld bc, $0606
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    inc b
    ld [$3008], sp
    jr nc, jr_026_6ad5

    ld [$0000], sp
    nop
    nop
    add b
    add b
    ret nz

jr_026_6ad5:
    ret nz

    ldh [$e0], a
    db $ec
    db $ec
    xor [hl]
    ld [$feda], a
    rst $38
    db $fc
    rst $38
    rst $38
    db $fc
    db $fc
    ret nz

    ret nz

    nop
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

    ret nz

    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nc, @+$32

    dec hl
    dec sp
    rla
    dec e
    dec d
    rra
    dec de
    ld e, $0b
    rrca
    inc c
    rrca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    inc bc
    dec b
    rlca
    ld b, $06
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld c, $0e
    inc c
    inc c
    call nc, $e8dc
    cp b
    xor b
    ld hl, sp-$28
    ld a, b
    ret nc

    ldh a, [$30]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ld h, b
    ldh [$e0], a
    ldh [rP1], a
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    scf
    scf
    ld [hl], l
    ld d, a
    ld e, e
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, b
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_026_6b88

    db $10
    db $10
    inc c
    inc c
    db $10
    stop
    nop
    ret nz

    ret nz

    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    jr nc, @+$32

    dec sp
    dec sp
    rla
    rra
    rla
    rra
    dec de
    rra
    dec bc
    rrca
    inc c
    rrca
    rlca
    rlca
    rlca
    rlca

jr_026_6b88:
    ld [bc], a
    inc bc
    dec b
    rlca
    ld b, $06
    nop
    nop
    inc bc
    inc bc
    ld b, $06
    ld c, $0e
    inc c
    inc c
    call c, $e8dc
    ld hl, sp-$18
    ld hl, sp-$28
    ld hl, sp-$30
    ldh a, [$30]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ld h, b
    ldh [$e0], a
    ldh [rP1], a
    nop
    inc bc
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    ld b, $0b
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    ccf
    inc sp
    dec sp
    cpl
    inc a
    inc a
    ret nz

    ret nz

    ldh [$a0], a
    and b
    ldh [$e0], a
    ld h, b
    ret nc

    ldh a, [$28]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$21
    rst $38
    rst $28
    rst $38
    or e
    di
    db $fd
    call $f4dc
    ld a, h
    ld a, h
    inc bc
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    ld b, $0b
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    ccf
    inc sp
    dec sp
    cpl
    inc a
    inc a
    ret nz

    ret nz

    ldh [$a0], a
    and b
    ldh [$e0], a
    ld h, b
    ret nc

    ldh a, [$28]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$21
    rst $38
    rst $28
    rst $38
    or e
    di
    db $fd
    call $f4dc
    ld a, h
    ld a, h
    inc bc
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    ld b, $0b
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    ccf
    inc sp
    dec sp
    cpl
    inc a
    inc a
    ret nz

    ret nz

    ldh [$a0], a
    and b
    ldh [$e0], a
    ld h, b
    ret nc

    ldh a, [$28]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$21
    rst $38
    rst $28
    rst $38
    or e
    di
    db $fd
    call $f4dc
    ld a, h
    ld a, h
    inc bc
    inc bc
    rlca
    dec b
    dec b
    rlca
    rlca
    ld b, $0b
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    ccf
    inc sp
    dec sp
    cpl
    inc a
    inc a
    ret nz

    ret nz

    ldh [$a0], a
    and b
    ldh [$e0], a
    ld h, b
    ret nc

    ldh a, [$28]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$28
    ld hl, sp-$28
    ld hl, sp-$21
    rst $38
    rst $28
    rst $38
    or e
    di
    db $fd
    call $f4dc
    ld a, h
    ld a, h
    inc bc
    inc bc
    rlca
    dec b
    dec e
    rra
    rra
    inc de
    rrca
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    rra
    add hl, de
    dec e
    rla
    ld e, $1e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    or b
    ldh a, [rBCPS]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$27
    ld sp, hl
    db $db
    ei
    rst $18
    rst $38
    rst $28
    rst $38
    or b
    ldh a, [$fc]
    call z, $f4dc
    ld a, h
    ld a, h
    inc bc
    inc bc
    rlca
    dec b
    dec e
    rra
    rra
    inc de
    rrca
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    rra
    add hl, de
    dec e
    rla
    ld e, $1e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    or b
    ldh a, [rBCPS]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$27
    ld sp, hl
    db $db
    ei
    rst $18
    rst $38
    rst $28
    rst $38
    or b
    ldh a, [$fc]
    call z, $f4dc
    ld a, h
    ld a, h
    inc bc
    inc bc
    rlca
    dec b
    dec e
    rra
    rra
    inc de
    rrca
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    rra
    add hl, de
    dec e
    rla
    ld e, $1e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    or b
    ldh a, [rBCPS]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$27
    ld sp, hl
    db $db
    ei
    rst $18
    rst $38
    rst $28
    rst $38
    or b
    ldh a, [$fc]
    call z, $f4dc
    ld a, h
    ld a, h
    inc bc
    inc bc
    rlca
    dec b
    dec e
    rra
    rra
    inc de
    rrca
    rrca
    inc d
    rra
    inc de
    rra
    inc de
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    rla
    rra
    dec c
    rrca
    rra
    add hl, de
    dec e
    rla
    ld e, $1e
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    or b
    ldh a, [rBCPS]
    ld hl, sp-$38
    ld hl, sp-$38
    ld hl, sp-$27
    ld sp, hl
    db $db
    ei
    rst $18
    rst $38
    rst $28
    rst $38
    or b
    ldh a, [$fc]
    call z, $f4dc
    ld a, h
    ld a, h
    jp nz, $c56d

    ld l, l
    bit 5, l
    adc $6d
    sub $6d
    jp nz, $c26d

    ld l, l
    jp nz, $c26d

    ld l, l
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    ld a, b
    inc bc
    ld a, b
    rst $38
    nop
    nop
    rst $38
    db $fd
    nop
    inc d
    ld bc, $fc14
    and d
    rst $38
    nop
    nop
    inc d
    ld bc, $ff14
    nop
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    rlca
    inc b
    db $fc
    ld l, l
    db $10
    ld [hl], b
    db $fc
    ld l, l
    db $10
    ld l, [hl]
    db $10
    ld l, a
    db $10
    ld l, [hl]
    db $10
    ld l, [hl]
    db $10
    ld l, [hl]
    db $10
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_026_6e11:
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0f
    dec bc
    dec bc
    inc c
    dec e
    ld a, [de]
    dec hl
    inc a
    ld c, b
    ld [hl], a
    ld d, h
    ld l, e
    ld l, e
    ld [hl], h
    daa
    jr c, jr_026_6e42

    ld e, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    jr @-$66

    add sp, -$08
    ld [$0cfc], sp
    ld [$0d1e], a
    di

jr_026_6e42:
    rra
    pop hl
    db $fd
    inc bc
    ld a, [c]
    ld c, $cc
    inc a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop

jr_026_6e51:
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0f
    dec bc
    dec bc
    inc c
    dec e
    ld a, [de]
    dec hl
    inc a
    ld c, b
    ld [hl], a
    ld d, h
    ld l, e
    ld l, e
    ld [hl], h
    daa
    jr c, jr_026_6e82

    ld e, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    jr jr_026_6e11

    add sp, -$08
    ld [$0cfc], sp
    ld [$0d1e], a
    di

jr_026_6e82:
    rra
    pop hl
    db $fd
    inc bc
    ld a, [c]
    ld c, $cc
    inc a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop

jr_026_6e91:
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0f
    dec bc
    dec bc
    inc c
    dec e
    ld a, [de]
    dec hl
    inc a
    ld c, b
    ld [hl], a
    ld d, h
    ld l, e
    ld l, e
    ld [hl], h
    daa
    jr c, jr_026_6ec2

    ld e, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    jr jr_026_6e51

    add sp, -$08
    ld [$0cfc], sp
    ld [$0d1e], a
    di

jr_026_6ec2:
    rra
    pop hl
    db $fd
    inc bc
    ld a, [c]
    ld c, $cc
    inc a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    ld c, $0f
    dec bc
    dec bc
    inc c
    dec e
    ld a, [de]
    dec hl
    inc a
    ld c, b
    ld [hl], a
    ld d, h
    ld l, e
    ld l, e
    ld [hl], h
    daa
    jr c, jr_026_6f02

    ld e, $07
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    jr jr_026_6e91

    add sp, -$08
    ld [$0cfc], sp
    ld [$0d1e], a
    di

jr_026_6f02:
    rra
    pop hl
    db $fd
    inc bc
    ld a, [c]
    ld c, $cc
    inc a
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b

Call_026_6f7b:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $07
    rlca
    rlca
    inc bc
    inc bc
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ld [hl+], a
    ld [hl], b
    dec h
    ld [hl], b
    dec hl
    ld [hl], b
    ld l, $70
    ld [hl+], a
    ld [hl], b
    ld [hl+], a
    ld [hl], b
    ld [hl+], a
    ld [hl], b
    ld [hl+], a
    ld [hl], b
    ld [hl+], a
    ld [hl], b
    nop
    rst $38
    db $fd
    nop
    ld e, $00
    ld e, $ff
    nop
    ld bc, $fdff
    nop
    ld e, $01
    ld e, $fd
    ld [bc], a
    jr @+$05

    jr jr_026_703a

    jr @-$01

jr_026_703a:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_026_74cf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
