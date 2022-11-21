INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $056", ROMX[$4000], BANK[$56]

    jr nz, jr_056_4042

    db $33, $44, $d6, $47

    ld b, e
    ld c, h
    sub $4f
    ld l, e
    ld d, e
    ld b, h
    ld d, a
    sub c
    ld e, e
    db $10
    ld e, a
    ld a, d
    ld h, e
    ld c, d
    ld h, a
    scf
    ld l, e
    rra
    ld l, a
    ld b, e
    ld [hl], e
    ld [bc], a
    ld [hl], a
    sbc e
    ld a, d
    jr z, jr_056_4062

    ld e, b
    ld b, b
    ld h, e
    ld b, c
    ld [hl+], a
    ld b, h
    rst $38
    ld a, a
    nop
    ld a, h
    rra
    nop
    ldh [rP1], a
    rst $38
    ld a, a
    nop
    ld a, h
    rra
    nop
    ldh [rSC], a
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d

jr_056_4042:
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    dec b
    dec bc
    rst $38
    ldh a, [$0a]
    rst $38
    rst $38
    rst $20
    and $c0

jr_056_4062:
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
    jp z, Jump_000_00ff

    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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

Call_056_40ff:
Jump_056_40ff:
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
    ld d, b
    rlca
    call c, $c0ff
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
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
    rst $20
    nop
    nop
    nop
    db $fd
    ld d, h
    rst $38
    ldh a, [rNR42]
    ld b, d
    ld b, d
    ld b, d
    ld hl, $ff09
    ld l, [hl]
    rrca
    ld b, $07
    ld [$0a09], sp
    dec bc
    ccf
    inc c
    dec c
    ld l, [hl]
    rrca
    add hl, bc
    ld b, d
    db $ec
    ld [c], a
    db $fc
    ldh a, [$fd]
    ld h, h
    rst $38
    ldh a, [rSTAT]
    inc hl
    inc hl
    inc hl
    ld b, c
    add hl, de
    rst $38
    ld a, [hl]
    rra
    ld d, $17
    jr jr_056_41ab

    ld a, [de]
    dec de
    ccf
    inc e
    dec e
    ld a, [hl]
    rra
    add hl, de
    inc hl
    db $ec
    ld [c], a
    db $fc
    ldh a, [$f9]
    ld [hl], h
    rst $38
    ldh a, [$c0]
    ld [c], a
    add hl, hl
    adc [hl]
    cpl
    ld h, $27
    rst $38

jr_056_41ab:
    jr z, jr_056_41d6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    adc [hl]
    cpl
    push hl
    add hl, hl
    ret nz

    or $84
    rst $38
    ldh a, [$80]
    ld [c], a
    add hl, sp
    sbc [hl]
    ccf
    rst $38
    ld [hl], $37
    jr c, jr_056_41fd

    ld a, [hl-]
    dec sp
    inc a
    dec a
    sub a
    sbc [hl]
    ccf
    add hl, sp
    add b
    or $94
    rst $38
    ldh a, [rP1]
    ld [c], a
    ld c, c
    rst $38
    xor [hl]

jr_056_41d6:
    ld c, a
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    rra
    ld c, h
    ld c, l
    xor [hl]
    ld c, a
    ld c, c
    nop
    or $c0
    pop de
    nop
    ld [c], a
    dec sp
    add hl, bc
    ld l, l
    ret nz

    add $6d
    rrca
    add hl, bc
    nop
    or $c0

jr_056_41f4:
    rst $10
    and l
    ld a, l
    ret nz

    add $7d
    ret nz

    rst $18
    ret nz

jr_056_41fd:
    ret nc

    adc l
    ret nz

    add $8d
    ret c

    ret nz

    rst $18
    cp c
    jp z, $c200

    add hl, sp
    sbc l
    ret nz

    add $9d
    ccf
    or c
    add hl, sp
    nop
    sub $c0
    pop de
    nop
    jp nz, $ad49

    ret nz

    add $ad
    ld d, e
    ld c, a
    ld c, c
    ld b, b
    or $c0
    rst $10
    ld l, h
    add b
    and [hl]
    ld l, h
    ret nz

    rst $18
    adc d
    add b
    or b
    ld a, h
    add b
    and [hl]
    ld a, h
    ret nz

    rst $18
    ld a, c
    xor d
    nop
    and d
    add hl, hl
    sbc l
    adc h
    add b
    and [hl]
    adc h
    cpl
    add hl, hl
    nop
    or [hl]
    add b
    or a
    sbc h
    ld d, d
    add b
    and [hl]
    sbc h
    add b
    cp a
    ret nz

    ret nc

    xor h
    add b
    and [hl]
    xor h
    ret nz

    ret c

    add hl, hl
    and h
    rst $38
    ldh a, [$80]
    and e
    ld l, e
    ld b, b
    add [hl]
    ld l, e
    ret nz

    ret c

    jr z, jr_056_41f4

    ld [hl], a
    ld hl, $7b19
    ld b, b
    add [hl]
    ld a, e
    rra
    add hl, de
    nop
    sub [hl]
    ld l, $a8
    push de
    ld b, c
    add hl, hl
    adc e
    ld b, b
    add [hl]
    adc e
    add b
    cp b
    ret nz

    or $cb
    add hl, sp
    sbc e
    ld b, b
    add [hl]
    sbc e
    ret nz

    ret c

    add b
    or $49
    xor e
    or d
    ld b, b
    add [hl]
    xor e
    add b
    cp b
    nop
    or $09
    ld l, d
    nop
    ld h, [hl]
    ld l, d
    inc l
    nop
    ld a, b
    nop
    or $19
    ld a, d
    nop
    ld h, [hl]
    ld a, d
    add b
    cp b
    ret nz

    rst $10
    and l
    adc d
    nop
    ld h, [hl]
    adc d
    ret nz

    rst $18
    ret nz

    ret nc

    sbc d
    nop
    ld h, [hl]
    sbc d
    inc l
    add b
    cp b
    nop
    sub $49
    xor d
    nop
    ld h, [hl]
    xor d
    nop
    ld a, b
    nop
    sub $4b
    add hl, bc
    ld l, c
    ret nz

    ld h, $69
    ld b, b
    sbc b
    ret nz

    rst $10
    ld a, c
    ret nz

    ld h, $29
    ld a, c
    ret nz

    rst $18
    add b
    or b
    adc c
    ret nz

    ld h, $89
    nop
    ld a, b
    nop
    or [hl]
    ld c, e
    add hl, sp
    sbc c
    ret nz

    ld h, $99
    nop
    ld a, b
    add b
    or a
    xor c
    ret nz

    ld h, $29
    xor c
    nop
    ld a, b
    ret nz

    rst $10
    ld l, b
    add b
    ld b, $68
    ret nz

    rst $18
    add b
    or b

jr_056_42ef:
    ld h, l
    ld a, b
    add b
    ld b, $78
    nop

jr_056_42f5:
    ld a, b
    nop
    sub [hl]
    add hl, hl
    adc b
    add b
    ld b, $29
    adc b
    nop
    ld a, b
    ld b, b
    sub a
    sbc b
    add b
    ld b, $98
    ld b, b
    sbc a
    ld b, b
    sub b
    and l
    xor b
    add b
    ld b, $a8
    ret nz

    rst $18
    add b
    or b
    ld h, a
    add b
    ld b, $67
    sub h
    nop
    ld a, a
    nop
    ld [hl], b
    ld [hl], a
    add b
    ld b, $77
    nop
    ld a, a
    nop
    ld [hl], b
    add a
    ld d, d
    add b
    ld b, $87
    ld b, b
    sbc a
    nop
    ld [hl], b
    sub a
    add b
    ld b, $97
    ret nz

    rst $18
    ld c, d
    nop
    ld [hl], b
    and a
    add b
    ld b, $a7
    nop
    ld a, a
    nop
    ld [hl], b
    ld h, [hl]
    add b
    ld b, $29
    ld h, [hl]
    nop
    ld a, a
    nop
    ld [hl], b
    db $76
    add b
    ld b, $76
    ld b, b
    sbc a
    ret nz

    jr nc, jr_056_42f5

    add [hl]
    add b
    ld b, $86
    ret nz

    rst $18
    ret nz

    jr nc, jr_056_42ef

    add b
    ld b, $96
    call nc, Call_056_7f00
    nop
    ld [hl], b
    and [hl]
    add b
    ld b, $a6
    nop
    ld h, [hl]
    ld c, c
    ld c, d
    ld d, e
    ld c, c
    ld c, d
    nop
    rst $38
    add b
    inc bc
    ld c, $80
    ld b, $0e
    ld b, b
    add [hl]
    ld c, a
    add hl, bc
    ld a, [bc]
    and h
    and l
    ld b, h
    rst $38
    ret nz

    inc hl
    ld e, $80
    ld b, $3d
    ld e, $c0
    add $19
    ld a, [de]
    ld h, h
    ld h, l
    call nz, $80ff
    inc bc
    push af
    ld l, $80
    ld b, $2e
    ret nz

    add $29
    ld a, [hl+]
    ld [hl], h
    ld [hl], l
    call nc, $ff00
    nop
    ld h, e
    ld a, $80
    ld b, $3e
    nop
    ld h, [hl]
    add hl, sp
    ld a, [hl-]
    ld d, e
    add h
    add l
    nop
    rst $38
    add b
    inc bc
    ld c, [hl]
    add b
    ld b, $4e
    ld b, b
    add [hl]
    rst $08
    ld c, c
    ld c, d
    sub h
    sub l
    ld b, h
    rst $38
    ret nz

    inc hl
    add hl, bc
    add hl, bc
    sbc b
    add b
    dec b
    push af
    ldh [$c0], a
    add $54
    ld d, l
    call nz, $80ff
    inc bc
    add hl, de
    ld h, c
    add hl, de
    add b
    dec b
    push af
    ldh [$c0], a
    sub $00
    ld [hl], a
    add hl, hl
    add hl, hl
    add b
    dec b
    inc a
    push af
    ldh [rP1], a
    and h
    add hl, hl
    ld a, [hl+]
    add hl, hl
    ld a, [hl+]
    nop
    rst $38
    add b
    inc bc
    jp Jump_000_3939


    add b
    dec b
    push af
    ldh [$50], a
    rst $38
    ret nz

    ld l, $49
    ld c, c
    nop
    add b
    dec b
    push af
    ldh [$d0], a
    rst $38
    db $fc
    rst $38
    nop
    cp a
    db $fc
    rst $38
    nop
    sbc a
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    db $f4
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
    ld a, [c]
    nop
    nop
    nop

    db $3b, $44, $6b, $44, $f6, $45, $a2, $47, $ea, $03, $c5, $06, $e2, $01, $a0, $00
    db $ea, $03, $f0, $03, $c5, $06, $e2, $01, $3f, $02, $ab, $00, $33, $01, $c5, $06
    db $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $fd, $0b, $ff, $eb, $2b, $0b, $0b, $0a
    db $0b, $0c, $fc, $ff, $ff, $e7, $e6, $0a, $6b, $0b, $6b, $6b, $4b, $16, $ff, $e5
    db $0b, $4b, $c1, $e0, $2b, $ca, $ff, $e8, $e7, $c2, $e0, $1b, $6b, $2b, $ff, $e2
    db $0b, $0b, $bf, $e1, $f8, $e1, $ca, $ff, $10, $e8, $e7, $81, $e0, $c1, $e3, $c0
    db $e4, $4b, $b3, $e0, $ca, $ff, $c0, $e9, $40, $8d, $e0, $80, $e6, $f2, $e0, $ff
    db $c0, $ca, $ff, $e8, $e7, $2b, $c1, $e2, $80, $bb, $e1, $40, $e1, $c1, $c2, $40
    db $ff, $c0, $f0, $78, $c0, $c0, $c1, $0b, $00, $7e, $e1, $ca, $ff, $c0, $c8, $cd
    db $c1, $c0, $e2, $c1, $e2, $3f, $c1, $c0, $ff, $00, $40, $c9, $bf, $e2, $41, $c7
    db $fe, $a1, $ca, $ff, $40, $c8, $49, $c0, $3f, $c0, $00, $02, $c3, $c0, $e1, $c0
    db $bf, $c0, $ec, $7e, $e0, $ff, $a0, $c0, $e3, $41, $e2, $28, $c0, $ff, $40, $ea
    db $c6, $c1, $2b, $c4, $a1, $6b, $34, $c1, $c0, $ff, $16, $c0, $ef, $2b, $6b, $c0
    db $e0, $2b, $85, $c2, $c0, $ff, $00, $ef, $43, $0a, $2b, $fe, $80, $c0, $87, $c0
    db $ff, $c0, $cc, $2b, $8a, $a2, $00, $c0, $ff, $00, $f5, $81, $e8, $c0, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f9
    db $00, $00

    nop

    db $ef, $5b, $5b, $60, $31, $ff, $e8, $60, $5b, $5b, $e7, $5a, $5b, $00, $ff, $ff
    db $e7, $e6, $5a, $5f, $31, $ef, $4d, $3a, $55, $54, $fe, $e2, $3a, $4d, $31, $f1
    db $61, $c1, $e0, $c0, $ff, $e9, $e8, $5b, $5e, $4d, $32, $fd, $6d, $ff, $e1, $69
    db $30, $30, $6d, $32, $4d, $38, $7f, $e1, $c0, $ff, $e9, $e8, $5f, $31, $39, $c1
    db $e2, $c0, $e2, $e3, $6d, $39, $7f, $e0, $c0, $ff, $ea, $e9, $5e, $31, $53, $2a
    db $c0, $e3, $6a, $c0, $e1, $52, $c0, $e1, $5a, $ca, $ff, $c0, $e9, $0e, $80, $e1
    db $68, $68, $6a, $c0, $e5, $00, $ff, $40, $ec, $00, $e0, $48, $04, $e0, $fe, $e0
    db $f9, $c0, $39, $00, $ff, $c0, $cd, $60, $bf, $e0, $0c, $c0, $e2, $ba, $c0, $48
    db $37, $c0, $ff, $40, $cd, $bf, $e2, $bd, $c3, $07, $6d, $83, $70, $fe, $a2, $ca
    db $ff, $40, $c8, $bf, $a1, $3d, $c4, $0f, $48, $76, $ae, $a7, $ff, $c1, $ca, $ff
    db $c0, $e9, $7e, $e7, $0f, $83, $80, $80, $81, $3f, $c1, $ca, $ff, $40, $e9, $7e
    db $e2, $ff, $af, $71, $6d, $6d, $71, $79, $80, $80, $f9, $a0, $c0, $ff, $c0, $f0
    db $5f, $31, $81, $79, $7e, $f1, $7e, $c1, $e0, $c0, $ff, $00, $f0, $5a, $5b, $5e
    db $ac, $01, $a8, $c4, $e0, $fd, $e1, $c0, $ff, $c0, $cf, $81, $e1, $c1, $e4, $c0
    db $ff, $00, $00, $f1, $81, $e7, $c0, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f9, $00, $00

    nop

    db $a5, $00, $ff, $e5, $32, $f6, $e6, $f7, $e7, $35, $ec, $ee, $37, $ec, $da, $f0
    db $c7, $e8, $33, $31, $e0, $f2, $36, $30, $37, $bf, $26, $20, $27, $10, $16, $17
    db $c2, $f6, $34, $ff, $36, $32, $30, $37, $31, $33, $31, $33, $00, $a0, $fb, $ff
    db $ef, $00, $00

    nop

    db $de, $47, $0e, $48, $ce, $49, $0f, $4c, $ea, $03, $c5, $06, $e2, $01, $a0, $00
    db $ea, $03, $f0, $03, $c5, $06, $e2, $01, $3f, $02, $ab, $00, $33, $01, $c5, $06
    db $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25, $08, $25
    db $08, $25, $08, $25, $08, $25, $08, $25, $fd, $0b, $ff, $eb, $2b, $2b, $0b, $0a
    db $0b, $0c, $40, $ff, $ff, $e7, $e6, $c0, $ec, $be, $e2, $ca, $ff, $e8, $e7, $4b
    db $ff, $e3, $4d, $6b, $f8, $e4, $4b, $2b, $7c, $e0, $ca, $e5, $2c, $f7, $ee, $06
    db $80, $f4, $6b, $6b, $46, $e0, $36, $e2, $be, $e2, $8a, $ff, $40, $ec, $0c, $0a
    db $e0, $f8, $c7, $4b, $4b, $ca, $f3, $72, $ed, $62, $e3, $82, $e1, $a1, $2b, $c0
    db $ea, $40, $e7, $ff, $ff, $c0, $c1, $6b, $8b, $c0, $2b, $03, $4b, $4b, $c0, $ff
    db $c0, $f5, $c1, $e2, $bf, $e9, $c7, $df, $40, $c9, $70, $42, $e0, $c0, $f5, $c1
    db $ff, $c0, $e1, $4b, $6b, $6b, $41, $c1, $12, $b6, $a6, $6b, $c1, $db, $c0, $ae
    db $2b, $c0, $e0, $be, $e7, $34, $c0, $00, $8a, $f7, $27, $e1, $23, $e2, $1e, $e6
    db $4c, $a1, $7f, $e1, $bf, $a0, $fb, $a0, $82, $f6, $a2, $0a, $4a, $f9, $b5, $ad
    db $0b, $a2, $3e, $e2, $c1, $e2, $0a, $30, $ff, $e1, $09, $ff, $00, $ab, $40, $a1
    db $6b, $0b, $3e, $c0, $c1, $e3, $08, $80, $fa, $c0, $93, $7f, $a2, $6b, $c1, $e4
    db $c0, $ff, $80, $8f, $c9, $80, $83, $6b, $0b, $c1, $e4, $00, $eb, $f4, $a3, $2d
    db $ff, $fb, $fa, $2c, $10, $c0, $fd, $b9, $6b, $3d, $ff, $b9, $77, $0a, $3d, $a3
    db $ff, $ff, $79, $7a, $02, $cd, $70, $2c, $c2, $b0, $97, $66, $c0, $ee, $8b, $69
    db $f6, $f1, $f9, $53, $00, $7e, $c5, $7d, $ad, $81, $de, $80, $f0, $4d, $e6, $40
    db $ff, $c0, $f2, $0d, $df, $02, $39, $49, $08, $ff, $eb, $ce, $ff, $ff, $ff, $c6
    db $4b, $71, $ff, $51, $9f, $08, $de, $ff, $ff, $ff, $f0, $ef, $4c, $fe, $e0, $ff
    db $ff, $ff, $ff, $ac, $eb, $00, $ff, $ff, $ff, $ff, $ff, $ff, $2e, $f6, $e9, $df
    db $ef, $db, $3f, $ff, $ae, $df, $00, $5f, $df, $ff, $ff, $ff, $ff, $e7, $bf, $ff
    db $ff, $bf, $ff, $ff, $ff, $c8, $53, $44, $bb, $ff, $ba, $d7, $2c, $7a, $c1, $73
    db $df, $5e, $54, $4c, $3e, $61, $00, $bf, $e2, $19, $ff, $db, $31, $89, $e2, $c0
    db $ed, $ff, $52, $9d, $26, $e1, $4a, $00, $47, $e3, $43, $ff, $79, $bf, $ff, $ff
    db $77, $9f, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $da, $9f, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $bf, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $cc, $49, $00, $00

    nop

    db $fd, $31, $ff, $eb, $5d, $5c, $5b, $5a, $5b, $00, $40, $ff, $ff, $e7, $e6, $c0
    db $ec, $be, $e2, $ca, $ff, $e8, $e7, $a5, $ff, $e2, $ff, $70, $3a, $55, $54, $54
    db $54, $55, $55, $3f, $54, $3a, $4b, $31, $31, $60, $ca, $ff, $e8, $e7, $bd, $80
    db $ff, $e0, $79, $7e, $44, $68, $ff, $e0, $30, $1f, $30, $6a, $6a, $30, $36, $be
    db $e0, $ca, $ff, $c0, $ea, $8f, $79, $71, $6a, $6a, $c0, $e0, $c3, $e0, $bf, $e1
    db $30, $b3, $36, $3c, $ca, $ff, $80, $ea, $83, $6a, $c0, $e3, $69, $97, $69, $30
    db $30, $fc, $e1, $52, $ca, $ff, $40, $e9, $84, $49, $42, $c0, $e0, $44, $e0, $69
    db $c0, $ff, $00, $f2, $83, $c7, $e2, $e4, $c5, $e1, $c0, $e3, $44, $40, $ff, $c0
    db $f8, $44, $45, $4d, $80, $c0, $df, $40, $ee, $80, $e5, $c2, $e1, $40, $df, $c0
    db $d0, $44, $c1, $6a, $83, $30, $32, $c2, $e0, $c0, $bf, $00, $cd, $bf, $c1, $41
    db $c1, $42, $9b, $46, $4d, $40, $a1, $5b, $5a, $ca, $ff, $c0, $ab, $83, $6d, $30
    db $c0, $e1, $42, $3c, $45, $e0, $8e, $09, $ff, $e0, $fc, $ca, $ff, $80, $ac, $71
    db $30, $68, $68, $3d, $3e, $e2, $c1, $e1, $4f, $ff, $e1, $ca, $ff, $40, $ab, $ae
    db $70, $3b, $87, $36, $36, $37, $84, $80, $c1, $e3, $c0, $ff, $00, $ab, $ae, $ff
    db $70, $31, $31, $47, $47, $31, $60, $5b, $e0, $c1, $e4, $c0, $ff, $ff, $ff, $ff
    db $ff, $ec, $eb, $40, $41, $42, $ff, $43, $44, $45, $46, $47, $48, $49, $4a, $cf
    db $4b, $4c, $4d, $4e, $7d, $ff, $ed, $ec, $50, $51, $ff, $52, $53, $54, $55, $56
    db $57, $58, $59, $3f, $5a, $5b, $5c, $5d, $5e, $5f, $ce, $ff, $ec, $eb, $ff, $60
    db $61, $62, $63, $64, $65, $66, $67, $ff, $68, $69, $6a, $6b, $6c, $6d, $6e, $6f
    db $fc, $ce, $ff, $ec, $eb, $70, $71, $72, $73, $74, $75, $ff, $76, $77, $78, $79
    db $7a, $7b, $7c, $7d, $f3, $7e, $7f, $ce, $ff, $79, $6c, $81, $82, $83, $84, $ff
    db $85, $86, $87, $88, $89, $8a, $8b, $8c, $e7, $8d, $8e, $8f, $ce, $ff, $ec, $eb
    db $90, $91, $92, $ff, $93, $94, $95, $96, $97, $98, $99, $9a, $9f, $9b, $9c, $9d
    db $9e, $9f, $ce, $ff, $ec, $eb, $a0, $ff, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $a8
    db $7f, $a9, $aa, $ab, $ac, $ad, $ae, $af, $ce, $ff, $fe, $ec, $eb, $b0, $b1, $b2
    db $b3, $b4, $b5, $b6, $ff, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be, $01, $bf, $ce
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $f2, $00, $00

    nop

    db $a5, $00, $ff, $e5, $32, $f6, $e6, $f7, $e7, $35, $ec, $ee, $37, $ec, $da, $f0
    db $c7, $e8, $33, $31, $e0, $f2, $36, $30, $37, $bf, $26, $20, $27, $10, $16, $17
    db $c2, $f6, $34, $ff, $36, $32, $30, $37, $31, $33, $31, $33, $00, $a0, $fb, $ff
    db $ef, $00, $00

    nop
    ld c, e
    ld c, h
    ld a, e
    ld c, h
    add sp, $4d
    and d
    ld c, a
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
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
    add l
    inc c
    rst $38
    db $e4
    dec bc
    rst $38
    rst $20
    db $ed
    push hl
    rst $38
    rst $38
    add sp, -$19
    dec bc
    rst $00
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [$c1], a
    rst $38
    db $f4
    di
    dec hl
    ld l, e
    pop hl
    ld l, e
    ld a, a
    pop hl
    cp a
    pop hl
    db $d3
    rst $38
    db $eb
    ld [$4c4c], a
    ld c, h
    ld [bc], a
    pop bc
    ldh [$2b], a
    pop bc
    ld [c], a
    cp a
    ldh [$c0], a
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    ld b, a
    rst $20
    nop
    rlca
    ld [c], a
    add c
    db $e3
    ld [bc], a
    db $e3
    ret nz

    rst $38
    ret nz

    ldh a, [$c1]
    rst $00
    ld [hl], b
    pop hl
    rst $38
    rst $38
    sbc h
    add b
    db $ec
    add d
    add $2b
    dec bc
    inc l
    ret nz

    rst $38
    ld b, b
    xor $6b
    ld b, b
    ret z

    ldh [$c1], a
    jp nz, $c17f

    ccf
    rst $38
    ret nz

    jp z, $e202

    ld l, e
    ret nz

    ld [c], a
    ld [hl], b

Call_056_4ce1:
    add b
    jp nz, $ffc0

Call_056_4ce5:
    ret nz

    pop af
    cp a
    ld [c], a
    ld c, e
    ld c, e
    dec hl
    ld a, a
    rst $18
    inc b
    cp a
    push af
    ld b, c
    ld [c], a
    ld c, e
    jr c, @-$1e

    cp a
    rst $18
    ld a, a
    ld a, [c]
    add c
    and c
    ret nz

    ld [c], a
    ld bc, $c04b
    rst $38
    cp $cc
    add d
    and b
    ret nz

    push hl
    rst $38
    sbc a
    ret nz

    pop af
    cp a
    pop hl
    db $10
    add b
    ld [c], a
    ld a, c
    and e
    call z, Call_056_7fff
    db $ed
    ld c, e
    pop bc
    add d
    add b
    sbc a
    dec a
    push de
    ld [$c440], sp
    pop bc
    rst $38
    cp $fd
    inc l
    db $dd
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
    rst $38
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
    nop
    nop
    nop
    ld l, l
    jr nz, @+$01

    db $e3
    rrca
    ld sp, $e7ff
    add hl, hl
    nop
    rst $38
    rst $38
    db $fc
    rst $20
    and $c1
    push hl
    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, h
    dec sp
    ld c, l
    ld h, d
    pop bc
    ld [c], a
    ld hl, $ffca
    ret nz

jr_056_4e06:
    db $ec
    pop bc
    ldh [$32], a
    jr nc, @+$01

    ldh [$9d], a
    ld [hl-], a
    cp a
    ldh [$29], a
    ld hl, $ca20
    rst $38
    add sp, -$19
    dec b
    ld a, a
    dec b
    dec b
    ld a, [bc]
    dec bc
    ld sp, $3931
    pop bc
    pop hl
    ld a, a
    ld l, h
    ld l, h
    add hl, sp
    ld sp, $2b31
    db $10
    ret nz

    rst $38
    inc e
    jp hl


    add sp, $08
    db $e3
    ld c, c
    ld c, b
    ld l, h
    pop bc
    pop hl
    ret nz

    rst $38
    ret nz

    db $f4
    ld sp, $c439
    ldh [$c1], a
    ldh [rLCDC], a
    pop hl
    rla
    jr z, jr_056_4e06

    rst $38
    add b
    xor $35
    ld d, e
    ret nz

    db $e3
    ld d, b
    ld a, d
    ret nz

    dec d
    ld d, $c0
    rst $38
    ld b, b
    db $ed
    dec bc
    ld c, l
    dec [hl]
    ld b, e
    pop hl
    ld l, h
    ret nz

    jp nz, $e03f

    jp z, $e8ff

    rst $20
    db $ed
    ld a, [de]
    pop bc
    pop hl
    ld [hl-], a
    ld l, l
    jp Jump_000_30c1


    jr nc, jr_056_4ed9

    ld l, b
    nop
    ldh [$c0], a
    rst $38
    db $eb
    ld [$0208], a
    pop hl
    ld l, l
    ld l, l
    cp a
    ldh [$8e], a
    pop bc
    ldh [rOCPS], a
    ld b, d
    inc a
    ret nz

    rst $38
    ret nz

    xor h
    ld a, a
    ldh [rHDMA3], a
    inc d
    ret nz

    ldh [$7e], a
    ldh [rOCPS], a
    rst $38
    ldh [rHDMA2], a
    ret nz

    cp a
    add b
    xor h
    ld a, a
    ldh [$8d], a
    ld d, d
    ret nz

    pop hl
    ld l, h
    ld l, h
    ret nz

    db $e4
    ld b, b
    cp a
    ld b, b
    xor e
    ld a, [de]
    ld c, b
    ld b, b
    ld [c], a
    ret nz

    db $e4
    rst $38
    pop bc
    ld sp, $ffca
    nop
    xor c
    ld [$c1c0], sp
    ld [c], a
    add b
    db $e4
    ld e, c
    ld a, $c1
    ret nz

    rst $38
    ret nz

    adc e
    ld a, [de]
    ld sp, $3d49
    ld c, h
    ld b, b
    ld [c], a
    ld [hl], $7e
    ld l, a
    and c
    ld b, b
    rst $38
    add b
    adc [hl]
    ld a, [$c07d]
    ld a, $82
    add b
    ld d, l
    ld a, [hl]
    ld l, a
    add b
    add b

jr_056_4ed9:
    nop
    ret nz

    ldh [$c0], a
    rst $18
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
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
    jr nc, jr_056_5001

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
    sbc $4f
    ld c, $50
    adc b
    ld d, c
    scf
    ld d, e
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_5001:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    inc hl
    ld a, [bc]
    dec bc
    rst $38
    db $e3
    ld hl, sp-$1b
    pop af
    pop hl
    inc c
    rst $38
    rst $38
    rst $20
    and $80
    ret


    add sp, -$4b
    db $e3
    xor a
    ldh [$ca], a
    rst $38
    add sp, -$19
    add b
    ld [c], a
    ld a, e
    db $e4
    dec hl
    add c
    dec hl
    add b
    rst $38
    add b
    ld hl, sp-$42
    pop hl
    add b
    rst $38
    ld b, b
    db $ed
    rst $38
    pop bc
    ld l, e
    add e
    ld l, e
    ld c, e
    rst $38
    ldh [$fa], a
    pop hl
    ld a, [hl]
    ld [c], a
    jp z, Jump_000_00ff

    jp hl


    ld l, e
    inc c
    pop bc
    ldh [rLYC], a
    ldh [$2b], a
    dec bc
    cp h
    pop hl
    cp a
    ld [c], a
    jp z, $c0ff

    db $ec
    ld l, [hl]
    ld b, $e2
    ld c, e
    dec hl
    dec hl
    ld a, d
    ldh [$0b], a
    ld c, e
    ret nz

    rst $38
    db $10
    ret nz

    set 1, e
    ret nz

    pop bc
    db $e4
    cp a
    ldh [rOCPD], a
    ret nz

    rst $38
    ld b, b
    call $e1c0
    inc d
    add d
    ldh [rLY], a
    pop hl
    dec hl
    nop
    pop hl
    ld a, [bc]
    ret nz

    rst $38
    ret nz

    xor $c4
    ld [c], a
    sub c
    ld c, e
    ld sp, hl
    pop hl
    ret nz

    rst $18
    ret nz

    xor h
    ld c, d
    dec bc
    pop bc
    ld b, e
    db $e3
    ld c, e
    ld [bc], a
    cp $a3
    ld a, [bc]
    jp z, Jump_056_40ff

    db $ec
    ld b, e
    db $e4
    cp [hl]
    and e
    ld b, b
    rst $38
    nop
    rst $28
    nop
    ld b, e
    ld [c], a
    ld a, a
    and c
    ld b, b
    rst $38
    add b
    ret nc

    ret


    ret nz

    ld b, e
    pop hl
    ld b, b
    cp a
    ld b, b
    rst $30
    nop
    ld b, e
    ldh [$83], a
    db $e4
    ret nz

    rst $38
    nop
    rst $08
    adc c
    jp $9f40


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

Jump_056_50e6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$ef]
    ld [$dc08], sp
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
    add sp, $00
    nop
    nop
    inc hl
    ld e, d
    ld e, e
    rst $38
    db $e3
    ld hl, sp-$1b
    pop af
    pop hl
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    ret


    add sp, -$4b
    db $e3
    xor a
    ldh [$ca], a
    rst $38
    add sp, -$19
    add b
    ld [c], a
    ld e, d
    ld e, h
    sbc e
    ld e, l
    ld h, d
    rst $38
    ldh [$5d], a
    ld e, h
    add b
    rst $38
    add b
    pop af
    ld e, h
    bit 3, l
    ld sp, $e4ff
    ld h, b
    add b
    rst $38
    ld b, b
    db $ed
    ld e, d
    ld e, e
    rst $38

jr_056_51be:
    ld h, b
    ld sp, $3a4d
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    adc a
    ld d, h
    ld d, h
    dec sp
    ld c, l
    cp a
    ldh [$c0], a
    rst $38
    nop
    db $eb
    ld e, a
    rst $38
    ld sp, $324d
    jr nc, jr_056_5242

    ld l, d
    ld l, d
    jr nc, jr_056_51be

    rst $38
    ldh [$32], a
    cp a
    ld [c], a
    jp z, $c0ff

    ret


    ld e, [hl]
    ld sp, $fc39
    pop bc
    ldh [$c2], a
    ldh [rOCPD], a
    ld l, e
    jr nc, @+$32

    add hl, sp
    ld sp, $5f39
    ret nz

    rst $38
    ret nz

    bit 4, c
    ld sp, $c153
    db $e4
    cp a
    ldh [rTAC], a
    ld d, d
    ld sp, $c05e
    rst $38
    ld b, b
    set 0, b
    pop hl
    ld b, h
    pop hl
    ld a, a
    ld [c], a
    ld c, a
    ld d, e
    ld sp, $5a61
    ret nz

    rst $38
    ret nz

    db $ec
    ld d, d
    inc b
    ldh [rNR32], a
    ld b, e
    pop hl
    ld b, b
    ldh [rHDMA2], a
    ld sp, $8061
    rst $38
    add b
    bit 0, b
    ldh [$6e], a
    ld b, e
    db $e4
    jr nc, jr_056_525d

    ld l, d
    add b
    ldh [$5b], a
    ld e, d
    jp z, Jump_000_00ff

    add b
    db $ec
    ld b, e
    db $e4
    ret nz

    db $e3
    ld b, b
    rst $38
    ld b, b
    xor $43
    db $e4
    ld a, [hl-]

jr_056_5242:
    ret nz

    ld b, b
    rst $38
    sub d
    add b
    ret nc

    add hl, sp
    add e
    db $e3
    ld a, [hl-]
    pop bc
    add hl, sp
    add b
    rst $18
    add b
    rst $08
    xor a
    sbc c
    ld [hl], c
    push bc
    pop bc
    cp l
    and c
    ld [hl-], a
    ld c, l
    nop
    rst $18

jr_056_525d:
    nop
    rst $08
    add c
    rst $28
    ld a, c
    ld a, [hl]
    ld d, h
    ld d, h
    ld b, c
    and b
    ld d, l
    ld b, l
    ld c, l
    nop
    add c
    pop hl
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
    rst $38
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
    add sp, -$19
    cp e
    cp h
    nop
    call c, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
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
    add sp, $00
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
    jr nc, jr_056_5396

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
    ld [hl], e
    ld d, e
    and e
    ld d, e
    ld c, l
    ld d, l
    db $10
    ld d, a
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_5396:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    or a
    ld a, [hl+]
    ld a, [hl+]
    dec bc
    rst $38
    push hl
    dec hl
    dec hl
    push af
    ld [c], a
    ld a, [bc]
    ld a, a
    dec bc
    inc c
    ld c, h
    inc c
    inc c
    inc l
    inc c
    rst $38
    rst $38
    adc b
    ld [c], a
    pop hl
    jp nz, $bee6

    add sp, $0c
    cp a
    pop hl
    rst $38
    rst $38
    ret nz

    db $e4
    ld l, e
    inc sp
    ld l, e
    ld c, e
    rst $38
    push hl
    ld a, h
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    jp z, $80ff

    add sp, -$6d
    ld l, e
    ld l, e
    ccf
    and $be
    db $e3
    dec bc
    ret nz

    ld [$e638], a
    inc l
    db $10
    dec l
    ld [c], a
    add hl, hl
    xor $c1
    add sp, -$42
    db $e4
    dec hl

jr_056_53eb:
    ld b, b
    ldh [$88], a
    db $f4
    db $eb
    jp $e500


    call nz, $c3de
    pop bc
    ld [$e27c], a
    nop
    pop hl
    rst $38
    rst $38
    ret nz

    jp nc, $e23b

    ld h, b
    ret nz

    db $f4
    ld b, b
    db $f4
    ld c, h
    jp $e4c7


    db $fc
    jp nz, $4b2b

    adc d
    rst $38
    nop
    ret nz

    add sp, -$41
    push hl
    add c
    jp nz, $c3ff

    jp z, Jump_000_00ff

    ret z

    jp z, $c1a4

    rst $20
    nop

jr_056_5423:
    ret nz

    rst $38
    ld [$90e9], a
    ret nz

    adc c
    and c
    pop bc
    add sp, -$40
    db $fd
    ld h, [hl]
    and d
    ld h, c
    and [hl]
    nop
    ld c, a
    pop bc
    ret nz

    and c
    cp e
    rst $20
    add b
    db $db
    jr z, jr_056_53eb

    ld c, [hl]
    jp $a203


    pop bc
    push hl
    ld c, b
    nop
    call nz, $9ffe
    nop
    and d
    ld a, [bc]
    adc b

jr_056_544d:
    and c
    ld a, h
    and b
    dec hl
    ld a, c
    ldh [rLCDC], a
    or l
    add h
    jp z, $fee1

    sbc a
    ret nz

    adc d
    dec b
    and e
    ld [hl], l
    add e
    ld l, e
    ret nz

    rst $38
    jr nz, jr_056_544d

    rst $20
    add c
    ldh [$7e], a
    ldh [$88], a
    and d
    ld b, b
    add h
    ld l, e
    add b
    cp a
    jr z, jr_056_5423

    inc bc
    ld c, h
    ld c, h
    adc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, l
    sbc $e6
    sub e
    ld [bc], a
    cp b
    di
    ld c, h
    cp $e2
    jp nz, $9cb6

    rst $38
    reti


    rst $38
    db $d3
    rst $38
    ld b, b
    rst $38
    nop
    db $db
    rst $38
    ccf
    ld l, d
    ret nc

    ld sp, hl
    or h
    rst $38
    rst $38
    rst $38
    or [hl]
    rst $38
    push bc
    rst $38
    rst $38
    rst $38
    ret nz

    daa
    sub [hl]
    db $76
    cp a
    rla
    ret nc

    set 5, b
    db $fc
    ld a, l
    jr z, jr_056_5501

    dec bc
    ld [$ff00], sp
    db $eb
    set 7, a
    sbc h
    xor b
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
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    cp a
    or d
    cp a
    dec d
    sbc l
    ld [$10f8], a
    ld a, a
    rst $38
    add sp, $46
    ret nz

    rst $38
    ld a, a
    ld sp, hl
    inc l
    call nz, $aaff
    rst $38
    ld a, a
    rst $38
    nop
    dec h
    reti


    jp $c0ff


    rst $38
    ld [hl], l
    rst $18
    ld b, c
    ld sp, hl
    adc l
    rst $18
    ld l, c
    scf
    sbc [hl]
    rst $38
    nop
    inc h
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

jr_056_5501:
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
    ld b, c
    rst $18
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
    nop
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
    call c, Call_000_004d
    nop
    nop
    cp a
    ld e, d
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld sp, $e2ff
    ld e, l
    dec sp
    ld e, h
    ld e, e
    rst $38
    pop hl
    ld e, d
    ld e, e
    nop

jr_056_555f:
    rst $38
    rst $38
    rst $20
    and $f0
    jp nz, $bee6

    add sp, -$36
    rst $38
    add sp, -$19
    ld h, b
    ld sp, $3a4d
    ld l, a
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    db $fc
    ldh [$3a], a
    ld c, l
    ld a, h
    ld [c], a
    di
    ld e, d
    ld e, d
    jp z, $e8ff

    rst $20
    ld sp, $324d
    jr nc, @-$1f

    ld l, e
    ld l, c
    ld l, e
    jr nc, jr_056_55bc

    ld a, [$44e0]
    ld b, l
    add [hl]
    cp [hl]
    ldh [$60], a
    ld e, e
    ret nz

    rst $38
    jp hl


    add sp, -$3f
    ldh [$c0], a
    and $6b
    dec h
    jr nc, jr_056_555f

    pop hl
    ld h, b
    ld b, b
    rst $38
    jp hl


    add sp, $39
    add $e4
    cp d
    push hl
    pop de
    ld [hl-], a
    dec sp
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld d, d
    ret nz

    db $ec
    jr nc, jr_056_55eb

    jp hl


    ld a, $c0

jr_056_55bc:
    rst $38
    add b
    ld a, [c]
    ld l, l
    ld a, [$6ae3]
    ld b, d
    inc a
    call c, $ffca
    nop
    ldh a, [$6d]
    ld l, d
    ld l, l
    pop bc
    ld [c], a
    ld l, l
    jr nc, jr_056_5603

    ld d, e
    jp z, $80ff

    rst $08
    pop bc
    rst $20
    jr nc, jr_056_562d

    jp z, Jump_000_00ff

    jp z, Jump_000_32c1

    ld b, b
    ret nz

    pop bc
    add sp, -$80
    rst $38
    add b
    xor d
    cp a
    and b

jr_056_55eb:
    ld d, [hl]
    ld d, a
    scf
    ld d, [hl]
    ld d, a
    dec a
    pop bc
    and $30
    add hl, sp
    jp z, Jump_056_40ff

    xor b
    rst $00
    ld e, e
    ld h, b
    ld h, d
    ld bc, $b9a1
    and b
    pop bc
    db $e4

jr_056_5603:
    ld [hl-], a
    ld c, l
    call z, $ffca
    nop
    xor b
    ld e, d
    ld e, e
    cp a
    add b
    cp l
    ldh [rKEY1], a
    ld [hl-], a
    sub b
    pop bc
    push hl
    ld b, b
    rst $18
    add b
    ld [$828b], a
    ld h, b
    ld a, [hl]
    ld [c], a
    ret nz

    and e
    ld h, b
    nop
    jp z, $e8ff

    rst $20
    add c
    ldh [$7e], a
    ldh [$7c], a
    pop hl
    or a

jr_056_562d:
    add b
    cp h
    add d
    ld b, b
    cp a
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
    db $f4
    di
    xor h
    xor l
    di
    xor [hl]
    xor a
    jp c, $ecff

    db $eb
    or b
    or c
    or d
    or e
    rst $38
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    rrca
    cp h
    cp l
    cp [hl]
    cp a
    adc $ff
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
    rst $38
    rst $38
    nop
    ld bc, $0000
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
    jr nc, jr_056_576f

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
    ld c, h
    ld d, a
    ld a, h
    ld d, a
    adc d
    ld e, c
    ld e, l
    ld e, e
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_576f:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    inc c
    rst $38
    ldh [$0b], a
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld l, [hl]
    rst $38
    db $e4
    dec bc
    dec hl
    dec bc
    db $ec
    pop hl
    inc c
    ld c, h
    ld a, [$1ce2]
    rst $38
    rst $38
    pop bc
    ld [c], a
    dec hl
    ld l, e
    dec hl
    cp e
    ldh [$fd], a
    pop hl
    cp a
    pop hl
    ld h, [hl]
    call Call_056_4ce5
    inc l
    jp $82ff


    db $e3
    dec bc
    dec hl
    ret nz

    push hl
    ret nz

    cp a
    pop hl
    ret nz

    and $c3
    rst $38
    add d
    db $e4
    ret nz

    ld [c], a
    ld a, l
    db $e4
    ld c, e
    ld c, e
    add b
    set 4, [hl]
    ld a, a
    rst $38
    add d
    db $e4
    add b
    pop hl
    ld a, l
    and $c0
    add sp, $79
    ld [c], a
    inc l
    inc bc
    inc l
    ld c, h
    ld [hl], l
    pop hl
    or h
    and $ab
    db $e4
    and h
    db $e3
    call nz, $c3c1
    db $e3
    ld d, b
    dec a
    and $00
    db $ed
    ret nz

    db $e4
    jp $6bd5


    ret nz

    db $e4
    dec bc
    ld a, l
    pop bc
    add b
    cp a
    pop bc
    ret nz

    rst $00
    sub b
    db $e4
    add b
    ldh [$83], a
    ret c

    add c
    ldh [$c3], a
    pop hl
    ld l, e
    nop
    add h
    jp nz, $c080

    ret nz

    rst $00
    cp c
    rst $00
    or [hl]
    rst $10
    ld b, h
    ret nz

    ret nz

    ld [c], a
    cp a
    ld [c], a
    ld b, [hl]
    pop bc
    ld [c], a
    ld l, e
    ld l, e
    adc e
    call $f9bf
    inc b
    ret nz

    ld c, e
    ld b, e
    jp $be00


    and h
    or [hl]
    and b
    call $cec0
    pop bc
    ld b, c
    ret


    nop
    ld hl, sp-$3d
    and b
    add h
    and $00
    pop bc
    ld [c], a
    add b
    and b
    ret nz

    ld sp, hl
    inc l
    jp nz, $c627

    add e
    and c
    cp a
    push hl
    ld a, d
    ld [c], a
    nop
    inc sp
    and b
    add b
    rst $38
    inc h
    add sp, -$41
    ld [c], a
    ld a, l
    ldh [rLYC], a
    and b
    ld a, l
    and l
    nop
    rst $38
    inc e
    ld [hl], d
    add sp, $0d
    jp Jump_000_0b2b


    ld c, e
    ld a, $a6
    add b
    rst $38
    ret nz

    jp hl


    nop
    ld a, a
    ldh [$08], a
    jp nz, $80c5

    cp h
    add l
    ret nz

    pop af
    ld a, l
    and b
    ld a, d
    and b
    or [hl]
    xor a
    dec e
    inc l
    ld a, a
    ldh [$2b], a
    dec bc
    ld a, [bc]
    cp [hl]
    ld [$ad00], a
    ccf
    and e
    nop
    ret nz

    di
    ei
    ld a, [$ab7f]
    db $fc
    add c
    jp nz, $b9ff

    di
    cp [hl]
    add d
    jp Jump_000_00e1


    cp a
    rst $38
    cp a
    ld sp, hl
    dec [hl]
    or h
    add hl, de
    sbc a
    ld a, a
    db $eb
    ret nc

    db $ed
    ret nz

    db $ec
    ld e, h
    pop af
    add b
    ccf
    push af
    dec h
    add l
    rra
    push hl
    jr nz, @+$01

    ret nz

    di
    sub $f9
    ld a, a
    ld h, e
    inc l
    nop
    ld a, [hl]
    ld h, d
    ld [bc], a
    xor e
    and h
    rst $00
    ld b, e
    sub $7f
    ld a, l
    ld d, [hl]
    xor l

jr_056_58b7:
    adc $ca
    add [hl]
    db $e4
    nop
    add hl, bc
    jp c, $c16b

    jr z, jr_056_58b7

    add [hl]
    and h
    jp hl


    jp c, $a4e5

    ld sp, hl
    ret z

    ret c

    and h
    add b
    adc h
    ld b, c
    add [hl]
    and [hl]
    jp c, $a2d7

    and h
    ret nz

    db $ec
    adc e
    xor d
    adc b
    cp b
    dec bc
    ld bc, $ff08
    ld [c], a
    ld sp, hl
    db $e4
    ld a, [$89e6]
    add sp, $20
    push bc
    ld a, $97
    dec a
    ret nc

    nop
    rst $08
    add l
    add c
    ld b, h
    ld e, a
    cp h
    ld e, b
    ld a, [hl-]
    ld c, a
    or c
    rst $38
    sbc a
    and b
    rst $38
    ldh [$fa], a
    nop
    add $0b
    ld e, l
    cp [hl]
    ret nz

    rst $28
    ld b, $bf
    ld b, b
    ei
    ld b, l
    rra
    ret nz

    db $fc
    ld b, $69
    nop
    ld a, e
    sbc [hl]
    nop
    push af
    ret nz

    rst $38
    nop
    ei
    add $9b
    inc de
    rst $38
    inc h
    xor a
    add b
    rst $38
    nop
    ld b, l
    ccf
    add b
    ld a, [$3b45]
    ld l, d
    db $d3
    sbc l
    jp hl


    dec b
    ccf
    rst $38
    rst $38
    ld h, [hl]
    ld a, h
    nop
    add b
    ld_long a, $ffe5
    rst $38
    rst $38
    rst $38
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
    add l
    cp a
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
    nop
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
    ld bc, $000c
    nop
    nop
    rst $38
    jr nz, @+$22

    jr nz, jr_056_599e

    ld sp, $3131
    ld c, l
    rst $38
    ld a, [hl-]
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    dec sp
    rra
    ld c, l

jr_056_599e:
    ld sp, $5b60
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    db $e3
    ld l, a
    ld a, $32
    ld l, e
    jr nc, @+$01

    ld [c], a
    ld l, l
    ld [hl-], a
    cp a
    ldh [$b8], a
    jp z, $c0ff

    add sp, -$7e
    pop hl
    ld c, c
    ld c, h
    ld l, e
    ret nz

    pop hl
    ld l, h
    and c
    ld l, h
    cp a
    db $e3
    jp z, $e8ff

    rst $20
    add d
    db $e3
    jr nc, @-$3e

    pop hl
    ld l, l
    rlca
    ld l, h
    ld l, h
    ld l, l
    ld a, [hl]
    ld [c], a
    jp z, $e8ff

    rst $20
    add d
    db $e3
    ret nz

    pop hl
    inc h
    ld a, l
    pop hl
    ld sp, hl
    ld [c], a
    add hl, sp
    jp z, $c0ff

    ld [$c339], a
    db $e3
    ret nz

    and $99
    ld d, e
    jp z, $80ff

    jp hl


    ld c, c
    ld c, b
    add e
    db $e4
    ld b, b
    db $e4
    ld l, d
    add c
    ld d, d
    jp z, Jump_056_40ff

    jp hl


    add c
    ldh [$03], a
    pop hl
    dec b
    ldh [$c0], a
    jp nz, $c36a

    ld l, d
    add e
    jp z, $c0ff

    rst $28
    cp a
    ld [c], a
    pop bc
    ld [c], a
    ld [hl], c
    ld a, c
    ld h, h
    jp z, Jump_056_40ff

    ld [$4342], a
    jp nz, $c081

    ld l, l
    ld l, l
    pop bc
    ld [c], a
    ld bc, $ca80
    rst $38
    ret nz

    set 1, b
    ldh [$c2], a
    and c
    ret nz

    ldh [$c1], a
    ld [c], a
    ret nz

    rst $38
    ld d, [hl]
    ld b, b
    bit 1, l
    ld [hl-], a
    cp a
    db $e3
    ld [hl], $3d
    and b
    ld a, [hl]
    pop bc
    ldh [$f4], a
    ret nz

    rst $38
    jp hl


    add sp, $15
    inc bc
    and c
    ld b, l
    ld b, h
    ld l, l
    ld l, l
    add a
    ld [hl], $7e
    ld [hl], h
    push bc
    ldh [$fd], a
    ld [c], a
    jp z, $e8ff

    rst $20
    rla
    inc a
    jp $be80


    pop hl
    ld b, l
    ld a, $58
    xor d
    ret nz

    rst $38
    ldh a, [$ef]
    ld a, a
    ld d, $15
    ld sp, $5c61
    ld e, l
    ld h, d
    cp d
    pop hl
    pop de
    xor e
    cp [hl]
    push hl
    jp z, $e8ff

    rst $20
    jr z, jr_056_5af8

    ldh [$60], a
    ld e, e
    rlca
    ld e, d
    ld e, h
    ld e, l
    cp [hl]
    add sp, -$36
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
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ei
    or b
    or c
    or d
    or e
    rst $30
    or h
    or l
    or [hl]
    ld sp, hl
    db $e4
    or a
    cp b
    cp c
    cp d
    rra
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    rst $00
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

jr_056_5af8:
    rst $38
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
    ldh [rP1], a
    nop
    nop
    and l
    nop
    rst $38

Call_056_5b60:
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
    jr nc, jr_056_5bbc

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
    sbc c
    ld e, e
    ret


    ld e, e
    ld sp, $dc5d
    ld e, [hl]
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_5bbc:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ccf
    dec bc
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    add sp, -$11
    ldh [rSB], a
    inc c
    rst $38
    rst $38
    rst $20
    and $c1
    pop hl
    cp $e1
    cp b
    ldh [$fd], a
    ld [c], a
    cp a
    pop hl
    db $10
    jp z, $c0ff

    add sp, -$7e
    ldh [$c0], a
    jp hl


    dec hl
    ld a, [hl]
    ldh [$ca], a
    rst $38
    add sp, -$19
    nop
    ld b, e
    ldh [$7e], a
    ld [c], a
    ret nz

    and $7e
    ldh [$ca], a
    rst $38
    ret nz

    add sp, -$01
    jp nz, $e9c0

    sub c
    dec bc
    ret nz

    rst $38
    nop
    ld [$eec0], a
    dec hl
    jp z, $c0ff

    db $eb
    dec hl
    nop
    rst $38
    ldh [$c0], a
    rst $38
    add b
    ei
    ld a, a
    ret nz

    ld a, [hl-]
    jp nz, $e1b7

    jp z, Jump_056_40ff

    db $eb

jr_056_5c24:
    add b
    dec a
    jp nz, $a3fc

    ld [hl], a
    ld [c], a
    jp z, $c0ff

    db $ec
    db $fc
    and c
    pop bc
    push hl
    ld l, e
    nop
    ret nz

    rst $18
    ret nz

    rst $28
    ld a, h
    and h
    pop bc
    ld [c], a
    add b
    rst $38
    ld [$c7e9], a
    add $41
    add $18
    ret nz

    rst $38
    ld [$0fe9], a
    and d
    dec hl
    ld l, e
    cp c
    jp hl


    set 7, a
    nop
    xor c
    jr nz, jr_056_5c24

    add c
    ld bc, $c2a7
    rst $38
    add b
    db $ed
    adc $80
    ld l, e
    add c
    ld [c], a
    call nc, $22ff
    ld b, b
    db $f4
    ld c, e
    call z, $ffdf
    rst $38
    jp hl


    add sp, $4c
    db $dd
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
    rst $30
    nop
    nop
    nop
    rst $38
    ld sp, $3131
    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, h
    ld d, l
    ld e, l
    ld d, h
    db $fc
    ld [c], a
    ld d, l
    dec sp
    ld c, l
    rst $28
    ldh [rP1], a
    rst $38
    rst $38
    inc l
    rst $20
    and $c1
    ldh [$32], a
    ld l, c
    rst $38
    ldh [$30], a
    rst $38
    ldh [$f8], a
    pop hl
    ld sp, $bf32
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $4d
    ld [hl-], a
    ret z

    ld [c], a
    ret nz

    push hl
    ldh [$bf], a
    pop hl
    jp z, $e8ff

    rst $20
    pop bc
    ldh [$c0], a
    db $eb
    jr nc, jr_056_5da1

    ld c, l
    ld h, h
    jp z, $e8ff

    rst $20
    add hl, sp
    ld b, [hl]
    ldh [$c0], a
    db $eb
    ld l, c
    add hl, sp
    jp z, $0aff

    add sp, -$19
    ld d, e
    ret nz

    rst $28
    ld d, d
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    dec b
    ld d, d
    add [hl]
    ret nz

    ld l, d
    rst $38
    pop hl
    ld sp, hl
    db $e4
    ld b, b
    rst $38
    add b
    rst $28
    cp a
    ld [c], a
    dec bc
    ld l, b
    ld l, b
    cp c
    ld [c], a

jr_056_5da1:
    ld l, d
    ret nz

    rst $18
    add b
    xor $7e
    ld [c], a
    ret nz

    db $e4
    jp Jump_056_7730


    ld b, b
    rst $18
    add b
    xor $3d
    pop hl
    add b
    db $e3
    jr nc, jr_056_5df9

    jp hl


    inc a
    ret nz

    cp a
    ld [$83e9], a
    ld b, $e1
    jr nc, jr_056_5df2

    ld b, h
    call nz, $a03e
    ld b, b
    and c
    ld d, l
    pop bc
    ldh [$c0], a
    rst $38
    jp hl


    add sp, $79
    ld [hl], c
    ld h, $c5
    pop bc
    ld [hl], c
    xor a
    ld hl, sp-$80
    db $fd
    push hl
    ld de, $ffca
    add sp, -$19
    rst $38
    add b
    ld a, c
    ld [hl], a
    ld l, d
    ld l, d
    ld [hl], a
    ld a, c
    and c
    and $c2
    rst $20
    ld [de], a
    ld hl, $ffca
    ret nz

    add sp, -$80

jr_056_5df2:
    ld [hl], d
    ld b, d
    xor a
    ld b, d
    ld [hl], d
    xor b
    xor h

jr_056_5df9:
    rst $00
    pop hl
    inc d
    rst $38
    pop hl
    ld hl, $22f3
    inc h
    jp z, $c0ff

    jp hl


    add b
    ld [hl], d
    ld [hl], d
    xor [hl]
    db $ed
    ld [hl], b
    adc c
    pop hl
    ld [hl+], a
    inc h
    rst $38
    pop hl
    jr nz, jr_056_5e34

    jr nz, jr_056_5e16

jr_056_5e16:
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
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

jr_056_5e34:
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
    di
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
    jr nc, jr_056_5f3b

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
    jr jr_056_5f71

    ld c, b
    ld e, a
    ld h, d
    ld h, c
    ld b, [hl]
    ld h, e
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_5f3b:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    sbc a
    ld a, [hl+]
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    rst $38
    ldh [$f9], a
    ldh [rOCPS], a
    rst $38
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld c, d
    ld l, d
    ld l, d
    ld l, d
    dec h
    inc c
    rst $38
    xor $4c
    db $ed
    rst $28
    db $db
    db $e4
    ld c, d
    cp a
    ldh [$c0], a
    db $e3
    dec de
    ld l, d
    dec bc
    rst $38
    ldh [$2b], a
    dec hl

jr_056_5f71:
    cp a
    ldh [$c0], a
    rst $38
    ret nz

    add sp, -$70
    cp a
    ldh [$80], a
    ld [c], a
    pop bc
    ld [c], a
    cp [hl]
    pop hl
    ld c, d
    ret nz

    and $8a
    and $4c
    inc b
    ld a, a
    rst $30
    ld b, c
    ldh [$2a], a
    ld b, b
    pop hl

jr_056_5f8e:
    pop bc
    push hl
    cp a
    pop hl
    add d
    rst $38
    ret nz

    ld [$86ee], a
    db $e3
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ld [c], a
    dec bc
    dec bc
    ld c, e
    ld c, $c0
    pop af
    ld c, h
    inc c
    inc l
    add hl, hl
    push hl
    rst $30
    db $e4
    ldh a, [$e3]
    ld [$12e2], sp
    call nz, Call_056_6be1
    cp l
    pop hl
    jp $4be0


    ret nz

    xor $42
    ld [c], a
    cp [hl]
    push de
    nop
    pop bc
    db $e3
    adc e
    ldh [$7c], a
    ld [c], a
    cp l
    ret nz

    ld a, a
    ldh [$8d], a
    ret


    dec b
    ld hl, sp-$67
    jp nz, Jump_056_6a47

    dec bc
    dec hl
    ret


    db $e3
    cp a
    pop hl
    ld a, a
    pop hl
    dec hl
    ret nz

    pop hl
    db $10
    jp Jump_056_50e6


    ld [c], a
    pop bc
    pop bc
    ld a, $d5
    ld a, [hl+]
    ret nz

    ldh [$cd], a
    ldh [rTAC], a
    ld [c], a
    ret nz

    db $fc
    ret nz

    dec a
    pop hl
    add b
    db $e3
    dec sp
    rst $00
    ret nz

    ld [c], a
    rst $38
    or l
    ld a, [hl+]
    ld a, [hl+]
    ld bc, $0b4b
    ret nz

    pop bc
    db $e3
    ret nz

    db $f4
    jp $80a2


    or $bf
    db $e3
    push bc
    and c
    jr nz, jr_056_5f8e

    push hl
    add b
    db $ed
    rst $38
    or c
    ld [hl], e
    add $c0
    ldh [$2a], a
    ld b, a
    pop bc
    ld a, [hl-]
    ldh [$83], a
    dec hl
    ld c, e
    pop bc
    db $e3
    ret nz

    xor $00
    reti


    add b
    ldh [rSB], a
    and c
    ld a, [bc]
    inc b
    ld a, d
    push hl
    dec sp
    and b
    ld a, [bc]
    nop
    ldh a, [rIE]
    sub [hl]
    pop bc
    ldh [$80], a
    and d
    ld hl, sp-$3f
    add d
    cp b
    and e
    ld a, [bc]
    ret nz

    pop af
    add b
    rst $10
    add $e0
    ret nz

    db $e3
    add hl, sp
    ld [c], a
    ld l, e
    and b
    pop bc
    ldh [$80], a
    ldh a, [$7e]
    sub a
    rst $00
    pop hl
    ret nz

    db $e4
    ld a, [hl+]
    ld b, l
    ldh [$0b], a
    nop
    inc [hl]
    add c
    add c
    sub c
    cp d
    cp e
    sbc l
    cp d
    jp nz, $c6ff

    rst $38
    rst $38
    rst $38
    ld c, [hl]
    ret nc

    nop
    ld c, b
    cp c
    sbc h
    ld a, a
    ld c, h
    ld h, a
    cp b
    rst $38
    ld d, l
    sub e
    rst $00
    adc d
    ld bc, $fc82
    ld h, [hl]
    nop
    rst $38
    rst $38
    add a
    sbc l
    rst $38
    rst $38
    adc b
    ld h, h
    ld a, a
    rst $20
    ld a, [hl]
    ld h, c
    ld a, c
    rst $38
    rst $00
    sub h
    nop
    call z, Call_056_40ff
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    inc hl
    sbc a
    rst $00
    add a
    nop
    rst $18
    rst $18
    ldh a, [$bc]
    add b
    ld e, e
    ld h, b
    ld e, c
    pop bc
    rst $18
    add c
    rst $18
    db $db
    rst $38
    ld h, e
    ld b, $00
    sbc d
    inc hl
    add hl, bc
    cp a
    pop bc
    sub $59
    ld hl, $2255
    sub b
    inc bc
    ld hl, sp-$17
    ret nz

    rst $38
    nop
    ld d, b
    push hl
    ei
    push hl
    ld a, $3f
    ld b, c
    call Call_000_2259
    add b
    add sp, $3f
    push hl
    db $fc
    rst $18
    nop
    db $76
    ret


    cp d
    push hl
    ld b, l
    ld b, e
    cp l
    cp [hl]
    ld b, b
    ret z

    db $d3
    jp hl


    rrca
    inc h
    ret nz

    rst $38
    nop
    ret c

    add hl, hl
    sub b
    and e
    ld c, h
    jp hl


    db $ed
    db $e4
    ld c, c
    rst $38
    pop bc
    res 5, [hl]
    call $df80
    nop
    ret nc

    xor c
    call $c1c9
    sbc $c0
    di
    ld a, l
    or [hl]
    cp d
    ld l, [hl]
    ld b, b
    call $9fc0
    nop
    rst $30
    rst $18
    and e
    sbc a
    ret


    add hl, sp
    db $d3
    res 7, a
    rst $38
    xor [hl]
    ld a, a
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
    sbc e
    ld c, e
    db $dd
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
    nop
    cp a
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
    ld b, b
    inc bc
    nop
    nop
    nop
    sbc a
    adc e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    adc b
    rst $38
    ldh [$f9], a
    ldh [$8c], a
    ld e, a
    ld e, e
    ld e, d
    ld e, e
    ld e, e
    adc h
    ldh a, [$e0]
    nop
    rst $38
    rst $38
    ld a, [c]
    rst $20
    and $4e
    cp a
    ldh [$c0], a
    db $e3
    adc h
    ld e, e
    ld e, h
    ld e, l
    rlca
    ld h, d
    ld e, l
    ld e, h
    cp a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, -$41
    ldh [$80], a
    ld [c], a
    ld l, a
    adc h
    ld e, h
    ld e, l
    ld sp, $e1ff
    ld h, b
    adc h
    ret nz

    rst $38
    ld [hl], $c0
    ld [$8b4e], a
    ld b, b
    pop hl
    adc h
    ld h, b
    jp nz, $bfe2

    ld [c], a
    ld hl, sp-$36
    rst $38
    ret nz

    ld [$e086], a
    ld h, d
    ld h, d
    ld sp, $454d
    rst $38
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld b, l
    ld c, l
    ld sp, $f131
    ld e, a
    jp z, Jump_056_40ff

    jp hl


    add [hl]
    ldh [rKEY1], a

jr_056_61c8:
    ld a, [hl-]
    ld d, l
    ld d, l
    rst $38
    ld b, h
    ld l, c
    ld l, c
    ld l, l
    ld l, l
    jr nc, @+$32

    ld [hl-], a
    rst $00
    ld c, l
    ld sp, $ca5e
    rst $38
    ret nz

    ret z

    pop bc
    pop hl
    ld [hl-], a
    jr nc, jr_056_61c8

    jr nc, jr_056_6250

    ld l, c
    rst $38
    ldh [$c0], a
    ldh [$30], a
    add hl, sp
    ld sp, $31f9
    jp z, $e8ff

    rst $20
    adc h
    ld e, e
    ld h, c
    ld sp, $9239
    ret


    ldh [$6d], a
    cp a
    pop hl
    ld a, a
    pop hl
    ld d, d
    ret nz

    rst $38
    ld [$8ee9], a
    sbc d
    ret nz

    db $e3
    ld l, l
    ret nz

    db $e4
    ld l, l
    ld l, l
    add b
    rst $38
    db $eb
    ld [$314f], a
    adc [hl]
    ld b, b
    pop hl
    pop bc
    db $e3
    ret nz

    pop hl
    ld b, d
    ld c, c
    nop
    rst $38
    ret nz

    ld [$bf8a], a
    ld [c], a
    ld a, [hl-]
    add l
    ret nz

    ld b, h
    add c
    push hl
    add b
    rst $18
    ret nz

    ld [$f94f], a
    adc [hl]
    ld b, b
    jp nz, $c03f

    ld b, d
    ld l, l
    ld l, l
    dec a
    ld b, c
    ld h, a
    ld sp, $5b5e
    jp z, $c0ff

    ld [$098f], a
    rst $38
    ldh [$be], a
    add hl, sp
    ldh [$31], a
    inc a
    ld d, h
    ld d, l
    scf
    add c
    ldh [$8e], a
    inc e

jr_056_6250:
    jp z, Jump_056_40ff

    jp hl


    adc a
    ld c, a
    adc c
    rst $38
    ldh [$f8], a
    pop bc
    ld b, b
    and e
    inc sp
    adc [hl]
    ld c, a
    jp z, $c0ff

    ret z

    adc a
    ld c, a
    ret nz

    db $e3
    add hl, sp
    db $e3
    rrca
    ld e, l
    ld e, h
    adc [hl]
    ld c, a
    ret nz

    rst $38
    jp hl


    add sp, -$3f
    ldh [$c0], a
    db $e4
    rlca
    ld c, a
    adc [hl]
    ld e, e
    ccf
    add b
    pop bc
    ldh [$c0], a
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
    jr nc, jr_056_63a5

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
    add d
    ld h, e
    or d
    ld h, e
    ld b, c
    ld h, l
    ld d, $67
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_63a5:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    dec hl
    ld a, [bc]
    dec bc
    rst $38
    ld [$f14b], a
    pop hl
    inc c
    rst $38
    rst $38
    rst $20
    and $f7
    dec bc
    dec bc
    ld l, e
    db $fd
    ldh [rOCPD], a
    ld c, e
    ld l, e
    ld c, e
    ld h, b
    rst $38
    pop hl
    ret nz

    ldh [$af], a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $0a
    ld l, e
    pop bc
    ldh [$f9], a
    dec bc
    call nz, $82e1
    ldh [rWX], a
    dec bc
    dec hl
    dec bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    jp z, $80ff

    jp hl


    dec hl
    ld a, [hl]
    pop hl
    call nz, $81e2
    pop hl
    ld b, b
    rst $38
    ret nz

    ret nz

    rst $28
    db $fc
    db $e3
    ld b, c
    pop hl
    or [hl]
    ld [c], a
    ret nz

    rst $38
    ld b, b
    ld [$0b2b], a
    ld d, e
    ld c, e
    dec hl
    cp h
    pop hl
    inc a
    pop hl
    dec hl
    call nz, Call_000_2ce1
    jp z, Jump_000_0eff

    add sp, -$19
    ld a, [bc]
    dec bc
    dec hl
    ret


    ldh [$c0], a
    ld [c], a
    ld bc, $c0e1
    rst $38
    ld [hl], b
    add b
    rst $28
    set 0, b
    ret nz

    db $e3
    ld [hl], l
    pop bc
    inc c
    inc c
    ld c, h
    set 7, a
    nop
    ret nz

    set 0, b
    pop hl
    add c
    jp nz, $c1b8

    ret nz

    rst $38
    ret nz

    pop af
    ld b, l
    jp nz, $e282

    db $10
    rst $38
    rst $38
    add b
    ret nc

    call nz, $c3a2
    ret nz

    ld l, h
    ret nc

    rst $38
    ret nz

    ret nc

    cp [hl]
    pop bc
    nop
    add e
    and d
    add c
    rst $38
    ret nz

    di
    cp a
    db $e3
    add l
    and b
    pop de
    db $e3
    add b
    rst $18
    ret nz

    xor l
    adc b
    nop
    ret nz

    cp d
    pop hl
    add b
    db $e3
    ld l, h
    ld a, [hl-]
    rst $38
    ret nz

    xor h
    ld a, l
    add h
    dec hl
    pop hl
    dec bc
    add l
    jp nz, $ffc1

    ld b, b
    xor $c0
    push hl
    dec bc
    inc l
    inc l
    nop
    ld b, d
    ret nz

    ld sp, hl
    rst $18
    rst $38
    rst $38
    rst $38
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
    rst $18
    ld e, d
    ld e, e
    ld e, e
    ld h, b
    ld sp, $e7ff
    ld e, a
    ld e, e
    ld a, [c]
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $5b
    ld e, e
    ld e, a
    ld sp, $31ff
    ld c, l
    ld a, [hl-]
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    rra
    dec sp
    ld c, l
    ld sp, $5b5e
    xor a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, -$41
    ld e, d
    ld e, [hl]
    ld sp, $324d
    jr nc, @+$01

    db $e3
    ld [hl-], a
    ccf
    ld c, l
    ld sp, $5b60
    ld e, d
    ld e, d
    jp z, $80ff

    jp hl


    ld a, a
    ld h, c
    ld sp, $3039
    jr nc, @+$6e

    ld l, h
    cp l
    ld [c], a
    ccf
    add hl, sp
    ld sp, $6231
    ld h, d
    ld h, d
    jp z, $c0ff

    db $eb
    cp a
    ld d, e
    jr nc, @+$6f

    ld l, h
    ld l, h
    ld l, d
    ld a, h
    pop hl
    ld d, d
    ld a, b
    push af
    jp nz, $ffca

    ld b, b
    jp hl


    ld h, c
    ld sp, $6d52
    ret nz

    pop hl
    ld a, [hl]
    cp a
    pop hl
    ld d, d
    ld sp, $1429
    inc d
    add hl, hl
    jp z, $e2ff

    add sp, -$19
    ld e, d
    ld b, b
    ldh [$c0], a
    db $e4
    ld a, [hl]
    ldh [$39], a
    ld sp, $a72b
    inc h
    inc h
    dec hl
    jp z, $80ff

    db $eb
    ld d, e
    ret nz

    db $e4
    ld l, d
    ccf
    ld b, d
    scf
    ld sp, $2c2b
    jr nz, @-$33

    rst $38
    nop
    db $ed
    ld l, a
    ld l, l
    ld l, l
    jr nc, jr_056_6611

    pop bc
    pop hl
    inc a
    ld sp, $ffc0
    ld [c], a
    add b
    ret nc

    ld d, d
    pop bc
    ldh [$bf], a
    ldh [$c1], a
    ldh [rNR11], a
    ld [de], a
    ld d, $f1
    jr nz, @-$3e

    rst $38
    ret nz

    xor $01
    jp Jump_000_3152


    dec d
    ld d, $b3
    jr z, jr_056_6623

    ret nz

    rst $38
    ret nz

    adc $39
    ld l, h
    rst $38

jr_056_660a:
    ld [c], a
    add hl, sp
    ld h, e
    ld sp, $c117
    pop hl

jr_056_6611:
    ret nz

    rst $38
    add b
    call Call_000_36af
    cp a
    pop hl
    jp $af36


    inc bc
    pop hl
    ret nz

    ldh [$80], a
    rst $18
    add b

jr_056_6623:
    xor h
    add c
    ld l, a
    cp a
    ld l, [hl]
    ld d, l
    ld d, h
    ld l, [hl]
    ld l, a
    add c
    ret nz

    db $e3
    jr z, jr_056_660a

    rla
    jp z, $c0ff

    xor e
    and b
    add b
    rst $38
    ld [c], a
    and b
    ld sp, $178d
    add b
    pop hl
    ld d, $15
    jp z, $c0ff

    xor e
    ret nz

    and $31
    rra
    dec bc
    ld a, [bc]
    dec b
    ld a, [bc]
    dec bc
    ld b, b
    cp a
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
    jr nc, jr_056_6775

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
    ld d, d
    ld h, a
    add d
    ld h, a
    inc hl
    ld l, c
    inc bc
    ld l, e
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_6775:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    dec bc
    dec bc
    ld l, e
    dec bc
    ld c, e
    ld c, e
    ld c, e
    dec bc
    ld a, a
    dec bc
    dec bc
    dec hl
    dec hl
    dec bc
    dec bc
    ld a, [bc]
    ld hl, sp-$20
    rst $20
    dec bc
    dec bc
    inc c
    rst $38
    rst $38
    rst $20
    and $0b
    ld l, e
    ld l, e
    nop
    jp $bee1


    ld [c], a
    cp l
    push hl
    jp z, $c0ff

    jp hl


    add d
    db $e3
    ld a, e
    pop hl
    ld a, d
    ldh [rSVBK], a
    ld a, h
    ldh [$c0], a
    rst $38
    ld [$81e9], a
    ldh [rWX], a
    dec hl
    ld l, e
    ld c, c
    ld [c], a
    sub b
    dec [hl]
    pop hl
    cp a
    ld [c], a
    jp z, $e8ff

    rst $20
    dec hl
    inc bc
    ldh [$c0], a
    push hl
    dec hl
    db $10
    or a
    pop hl
    ld a, [$cac0]
    rst $38
    ret nz

    jp hl


    ld l, e
    ret


    ldh [$fc], a
    ldh [$7e], a
    add sp, -$40
    jp z, $80ff

    add sp, -$01
    ld [c], a
    ld a, [hl-]
    pop hl
    rst $38
    pop bc
    ld a, [hl]
    ld [c], a
    ld c, e
    inc l
    ld [$ffc9], sp
    add b
    rst $00
    cp a
    ldh [$0b], a
    cp $c0
    ret nz

    push hl
    ld sp, $c0c1

jr_056_67fc:
    rst $38
    adc d
    ret nz

    jp hl


    ld c, e
    pop bc
    ldh [$2b], a
    ld sp, hl
    pop bc
    add c
    pop hl
    db $fc
    and b
    ld c, e
    nop
    ld b, b
    rst $38
    nop
    ret


    cp a
    ldh [$3c], a
    pop hl
    cp h
    and c
    pop bc
    ld [c], a
    ret nz

    rst $38
    ret nz

jr_056_681b:
    db $ed
    jr jr_056_681b

    pop bc
    jp nz, $c1a3

    ld [c], a
    ld c, e
    ld c, e
    jp z, $80ff

    jp hl


    adc c
    db $e4
    ld [$e7c1], sp
    add b
    rst $38
    jp hl


    add sp, $2c
    add a
    push hl
    pop bc
    rst $20
    ret nz

    rst $38
    ret nz

    jp hl


    jr nz, jr_056_67fc

    pop hl
    inc a
    and $3b
    and d
    ld b, b
    rst $38
    ret nz

    ld [$844c], a
    and h
    ld a, h
    add b
    nop
    db $fc
    add c
    or b
    add b
    jp z, $80ff

    jp hl


    ld a, a
    ld [c], a
    inc bc
    and c
    ld a, l
    and e
    db $f4
    add b
    nop
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
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

jr_056_68e7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    di
    nop
    nop
    nop
    rst $38
    ld sp, $4d31
    ld d, [hl]
    sub a
    sbc [hl]
    sbc [hl]
    ld sp, $31ff
    ld sp, $5c5d
    ld e, e
    ld e, e
    ld e, d
    ld e, e
    ld a, [c]
    rst $38
    pop hl
    nop
    rst $38
    rst $38
    rst $20
    and $31
    ld c, l
    ld [hl-], a
    jr nc, @+$61

    sub h
    add [hl]
    add [hl]
    sub [hl]
    sub a
    cp [hl]
    ldh [$62], a
    cp l
    db $e4
    db $fc
    jp z, $c0ff

    add sp, $39
    jr nc, jr_056_6984

    jr nc, jr_056_68e7

    add [hl]
    db $e4
    cp [hl]
    pop hl
    ld a, d
    pop hl
    ld h, b

jr_056_695d:
    add b
    rst $38
    db $ec
    db $eb
    ld c, c
    ld c, b
    jr nc, jr_056_698c

    jr nc, @+$6d

    sub e
    ret nz

    ldh [$fd], a
    pop hl
    sub l
    cp a
    db $e3
    jp z, $1aff

    add sp, -$19
    ld d, c
    add c
    ldh [rOCPD], a
    ld l, d
    ld a, $e0
    cp a
    add sp, -$36
    rst $38
    cp $c0
    ld [$6b6d], a

jr_056_6984:
    ld l, d
    ld l, d
    sbc c
    sbc b
    sbc h
    or b
    rst $38
    pop hl

jr_056_698c:
    ld a, [hl]
    db $e3
    jp z, Jump_056_40ff

    jp hl


    ld l, l
    ld l, l
    cp a
    pop hl
    ld l, b
    ld a, a
    ld l, b
    ld l, b
    ld l, d
    ld l, d
    ld l, l
    sbc c
    sbc b
    dec a
    ldh [$99], a
    ld e, a
    jp z, $c0ff

    ret


    ld l, l
    ld l, l
    ld a, $e1
    ret nz

    pop hl
    ld l, l
    ld a, a
    jr nc, @+$6f

    ld l, l
    sub h
    sub l
    ld sp, $ca5e
    rst $38
    ld [hl], $40
    ret z

    ld c, c
    ld b, d
    ld a, $e0
    ld l, l
    ld l, e
    add b
    ldh [$c1], a
    pop hl
    rra
    ld l, l
    jr nc, jr_056_695d

    ld c, c
    ld sp, $ffca
    nop
    ret z

    ccf
    ret nz

    sbc $3e
    ldh [$6d], a
    ld l, h
    ld l, h
    ld l, h
    pop bc
    ld [c], a
    jr nc, jr_056_6a0c

    sbc c
    add hl, sp
    ret nz

    rst $38
    ret nz

    ld [$324d], a
    ret z

    db $e3
    pop bc
    db $e4
    ld l, l
    jp Jump_000_3748


    jp z, $80ff

    jp hl


    cp a
    pop hl
    pop bc
    add sp, $6d
    ld l, l
    ld l, c
    ld d, c
    jp z, $e8ff

    rst $20
    add hl, hl
    cp a
    pop hl
    ld a, [hl-]
    ld b, h
    pop bc
    add sp, -$3c
    add b
    rst $38
    ld [$22e9], a
    cp a
    pop hl
    cp [hl]

jr_056_6a0c:
    pop hl
    add d
    push hl
    ld l, l
    add e
    add hl, sp
    ld [hl], b
    jp z, $e8ff

    rst $20
    jr nz, jr_056_6a3a

    dec d
    cp a
    pop hl
    ld a, h
    ldh [$3e], a
    ld a, b
    jp nz, Jump_056_6d6d

    ld [hl], c
    ld a, c
    xor [hl]
    jp z, $c0ff

    add sp, -$05
    ld d, $17
    ret nz

    ld [c], a
    ld sp, $3e31
    ld a, [hl-]
    ld d, h
    ld a, a
    ld d, l
    ld d, h
    ld d, h
    ld l, [hl]
    ld a, c

jr_056_6a3a:
    add b
    add b
    jp z, Jump_000_00ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_056_6a47:
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

Jump_056_6ae0:
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
    di
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
    jr nc, jr_056_6b62

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
    ccf
    ld l, e
    ld l, a
    ld l, e
    ld [$eb6d], sp
    ld l, [hl]
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_6b62:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ei
    ld a, [bc]
    dec bc
    rst $38
    db $e4
    ld l, e
    dec bc
    dec bc
    ld c, e
    dec bc
    rla
    dec hl
    dec hl
    dec bc
    rst $28
    ldh [$0c], a
    rst $38
    rst $38
    rst $20
    and $c2
    push hl
    cp a
    ld l, e
    ld l, e
    dec bc
    dec hl
    ld c, e
    ld c, e
    cp [hl]
    ldh [$0b], a
    add e
    dec bc
    ld a, [bc]
    jp z, $c0ff

    add sp, $7f
    pop hl
    jp nz, $84e0

    pop hl
    dec hl
    ld c, [hl]
    cp [hl]
    ldh [$0b], a
    dec hl
    ld a, [bc]
    ret nz

    rst $38
    jp hl


    add sp, $0a
    ld c, a
    ldh [rNR52], a
    jp nz, $4be0

    ld c, e
    pop bc
    pop hl
    cp a
    ld [c], a
    ld c, e
    ld b, b
    rst $38
    ld b, b
    db $eb
    ld a, [de]
    ld b, l
    ldh [$0b], a
    add d
    ld [c], a
    dec hl
    ld c, e
    db $fc
    pop bc
    ret nz

    rst $38
    nop
    db $eb
    nop
    pop bc
    ld [c], a
    ret nz

    db $e3
    cp b
    pop hl
    cp h
    ldh [$ca], a
    rst $38
    ret nz

    ld [$c27e], a
    add b
    db $e4
    ld b, $7e
    ldh [$0b], a
    ld c, e
    jp z, $e8ff

    rst $20

Call_056_6be1:
    rst $08
    pop hl
    ld a, [hl]
    push bc
    scf
    pop hl
    ld [$c139], sp
    jp z, Jump_056_40ff

    ret z

    dec hl
    add b
    db $e3
    cp a
    db $e4
    add b
    pop hl
    set 7, a
    ld [hl+], a
    ret nz

    ld [$bf4b], a
    jp hl


    pop bc
    rst $38
    ret nz

    xor [hl]
    dec hl
    cp a
    jp $a37d


    ld b, b
    pop bc
    rst $38
    add b
    xor l
    adc e
    and b
    ld a, [hl]
    jp $a182


    pop bc
    ld [c], a
    ld c, h
    jp z, $b8ff

    ret nz

    jp hl


    ld c, l
    and c
    push bc
    pop hl
    inc c
    inc c
    inc l
    rst $38
    ldh [$4c], a
    ld h, e
    inc c
    ld c, h
    ret nz

    rst $38
    nop
    xor a
    ld c, c
    and $6c
    ld c, h
    ret nz

    rst $38
    nop
    ret nz

    adc h
    ret


    and c
    ld c, c
    pop hl
    rst $00
    ld [c], a
    ret nz

    rst $38
    ret nz

    pop af
    pop bc
    db $e3
    db $fd
    push hl
    nop
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    ei
    ld e, d
    ld e, e
    rst $38
    pop hl
    ld e, h
    ld e, l
    ld sp, $564d
    cp a
    ld d, a
    ld c, l
    ld sp, $5c5d
    ld e, e
    rst $28
    ldh [rP1], a
    ld hl, sp-$01
    rst $38
    rst $20
    and $c1
    ld [c], a
    ld h, b
    ld sp, $454d
    ld b, h
    rst $38
    jr nc, @+$6c

    ld b, h
    ld b, l
    ld c, l
    ld sp, $5b60
    and e
    ld e, e
    ld e, d
    jp z, $c0ff

    add sp, $7f
    ldh [$60], a
    jp nz, Jump_056_6ae0

    cp a
    jr nc, jr_056_6dab

    ld l, d
    ld l, l
    ld l, l
    ld [hl-], a
    cp a
    ldh [$5a], a
    db $fc
    ret nz

    rst $38
    jp hl


    add sp, $5a
    ld e, e
    ld e, d
    ld h, b
    ld c, l
    inc sp
    db $fd
    ld l, d
    pop bc
    db $e3
    ld l, l
    ld l, l
    inc sp
    ld c, l
    ld sp, $fc5f
    ld b, b
    rst $38
    ld b, b
    ld [$4d60], a
    ld [hl-], a
    ld l, c
    ld l, c
    jr nc, @+$01

    ld l, c
    ld l, c
    ld l, e
    ld l, e

Jump_056_6d6d:
    ld l, e
    jr nc, jr_056_6da0

    jr nc, jr_056_6d79

    add hl, sp
    ld sp, $c05e
    rst $38
    nop
    jp hl


jr_056_6d79:
    pop bc
    ldh [$c3], a
    ldh [$c0], a
    and $e7
    dec [hl]
    ld c, l
    ld h, c
    ret nz

    rst $38
    jp hl


    add sp, $60
    ld sp, $3d39
    jr nc, @-$3e

    jp hl


    jr nc, jr_056_6de1

    ld sp, $ca5f
    rst $38
    add sp, -$19
    rst $20
    ld e, b
    or b
    dec [hl]
    ld c, d
    ldh [rP1], a
    push hl
    jr nc, jr_056_6dd0

jr_056_6da0:
    ld b, d
    rst $20
    ld c, c
    ld sp, $ca5e
    rst $38
    add sp, -$19
    add b
    ld a, d

jr_056_6dab:
    ld l, d
    inc a
    adc d
    pop hl

jr_056_6daf:
    cp a
    and $39
    ld sp, $2931
    jp z, $c0ff

    add sp, $33
    db $76
    ld b, d
    cp a
    jp hl


    ccf
    ret nz

    add hl, hl
    daa
    jp z, $80ff

    add sp, -$1d
    add b
    add e
    ld b, e
    ret nz

    dec a
    db $e4
    cp a
    and c
    add hl, hl

jr_056_6dd0:
    daa
    db $10
    db $ec
    jp z, $c0ff

    jp hl


    ld a, c
    ld [hl], c
    cp a
    pop hl
    ld b, h
    ld b, l
    ld d, [hl]
    db $e4
    ccf
    and c

jr_056_6de1:
    pop bc
    pop hl
    jr nz, jr_056_6daf

jr_056_6de5:
    rst $38
    add b
    jp hl


    add b
    db $76
    ld d, h
    ld a, $c4
    ldh [rKEY1], a
    ld sp, $1211
    inc d
    rst $38
    ldh [$c1], a
    ldh [$bc], a
    ret nz

    rst $38
    ret nz

    db $eb
    add b
    and c
    ld sp, $c231
    ldh [rNR42], a
    adc e
    ld [hl+], a
    inc h
    rst $38
    ldh [rNR41], a
    rst $38
    ldh [$ca], a
    rst $38
    add b
    ld [$0da8], a
    xor h
    adc h
    ret nz

    ld hl, $c622
    pop hl
    db $fc
    db $e3
    jp z, Jump_056_40ff

    ld [$a005], a
    pop bc
    pop hl
    jr z, jr_056_6de5

    rst $20
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_056_6f4a

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
    daa
    ld l, a
    ld d, a
    ld l, a
    jr c, jr_056_6f96

    rrca
    ld [hl], e
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_6f4a:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld a, e
    ld a, [bc]
    dec bc
    rst $38
    ldh [rOCPD], a
    dec bc
    dec bc
    ld c, e
    ld hl, sp-$1f
    ld e, $f4
    pop hl
    dec hl
    dec hl
    dec bc
    inc c
    rst $38
    rst $38
    rst $20
    and $c2
    pop hl
    and $ff
    pop hl
    ld c, e
    ld c, e
    cp [hl]
    db $e3
    pop bc
    ldh [$2b], a
    inc c
    ld c, h
    ld [hl], h
    ret z

    rst $38
    and $e5
    ld l, e
    pop bc
    ldh [$2b], a
    dec hl
    dec hl
    cp h
    ldh [$37], a
    dec bc
    ld l, e
    ld c, e
    cp b
    db $e4
    inc c
    inc l
    ret z

    rst $38
    add b
    rst $20
    sbc b
    pop bc

jr_056_6f96:
    pop hl
    cp a
    db $e3
    ld b, h
    ldh [$2b], a
    dec hl
    ret nz

    rst $38
    ld b, b
    db $ed
    ld c, e
    ld sp, $bf4b
    db $e3
    ei
    ret nz

    ret nz

    pop hl
    dec hl
    ld c, e
    ret nz

    di
    xor e
    and $20
    and d
    db $e4
    sbc e
    db $e3
    rst $08
    ret nz

    dec b
    ldh [$bd], a
    pop hl
    ld l, e
    add c
    ld [c], a
    add b
    rst $38
    db $10
    db $ec
    db $eb
    pop de
    ret nz

    ret nz

    ld [c], a
    ret nz

    ret nz

    ld l, e
    add c
    ld [c], a
    ret nz

    rst $38
    db $eb
    ld [$4b41], a
    sub b
    ret nz

    rst $38
    db $e3
    cp c
    and $c0
    rst $38
    ld b, b
    ret


    dec hl
    add hl, bc
    db $e3
    db $10
    ld a, d
    and $f7
    and b
    jp z, $e8ff

    rst $20
    ld a, [bc]
    call nz, $ffa1
    add sp, -$4f
    and c
    nop
    jp z, $c0ff

    xor b
    push bc
    and b
    cp a
    rst $20
    ld a, e
    and e
    jp z, Jump_000_27f7

    pop hl
    inc hl
    ld [c], a
    nop
    ld e, $e6
    ld b, l
    and b
    ld b, h
    and b
    ld a, $c0
    ld b, $e2
    ret nz

    db $fd
    ld a, [hl-]
    ret z

    ret nz

    add sp, $08
    add hl, bc
    and d
    or a
    ret nz

    push af
    add b
    ld l, h
    ld c, [hl]
    rst $38
    nop
    xor [hl]
    add $86
    dec b
    rst $38
    nop
    ret nz

    db $fd
    add c
    rst $38
    add b
    ei
    ret nc

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
    ei
    cp a
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
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$ef]
    inc sp
    ld b, b
    jr nc, jr_056_70b1

    cp a
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    ld hl, sp+$0f
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    pop af
    inc bc
    ld c, h
    ld c, h
    ret nz

    db $fc
    add hl, hl
    ld h, l
    sbc c
    di
    add b
    rst $38
    push hl
    ld b, a
    rst $10
    ld a, [c]
    ld [$fa80], sp
    add h
    rst $20
    jp nz, Jump_000_2ce0

    sub a
    ldh a, [rSTAT]
    rst $18
    pop hl
    inc b
    ret nz

    db $f4
    nop
    nop
    ldh [rOBP0], a
    rst $38
    ld b, b
    ld sp, hl
    add d
    rst $38
    ld a, h
    jp hl


    ld c, b
    db $10
    cp a
    cp $80
    add $60
    nop
    pop af
    ret nz

    rst $38
    and e
    daa
    ret nz

    jp $e00f


    inc l
    inc l
    set 4, c
    nop
    ld c, c
    pop bc
    jp Jump_000_25fd


    sla e
    inc hl
    ret nz

    db $e3
    adc c
    db $e3

jr_056_70b1:
    or $e7
    adc h
    push af
    nop
    jp nc, $9be4

    and d
    ret nz

    pop af
    ld c, h
    db $fd
    ld d, d
    xor $ae
    db $eb
    add h
    xor d
    ld [hl], a
    xor a
    nop
    pop hl
    and c
    db $dd
    and e
    ld e, e
    and e
    inc d
    and b
    nop
    rst $38
    ld hl, $9ccd
    and l
    ei
    add l
    nop
    xor [hl]
    jp hl


    add d
    rst $18
    adc e
    ld a, c
    add $9f
    xor b
    ret c

    add [hl]
    add c
    scf
    ld [c], a
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
    ld [hl], h
    ccf
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
    nop
    cp a
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
    add b
    rrca
    nop
    nop
    nop
    rst $38
    ld e, d
    ld e, e
    ld h, b
    ld sp, $4d31
    ld d, [hl]
    ld d, a
    ld a, e
    ld c, l
    ld sp, $e4ff
    ld e, l
    ld e, h
    ld e, e
    nop
    rst $38
    rst $38
    db $fc
    rst $20
    and $c1
    ldh [rKEY1], a
    ld a, [hl-]
    ld b, h
    ld l, d
    ld l, d
    ld b, h
    ei

jr_056_7158:
    ld a, [hl-]
    sub a
    cp [hl]
    pop hl
    inc [hl]
    inc [hl]
    ld sp, $6031
    db $fc
    jp z, $e8ff

    rst $20
    ld e, a
    ld sp, $324d
    jr nc, jr_056_719c

    rst $38
    jr nc, jr_056_71d9

    ld l, d
    ld l, d
    sub c
    sub l
    sbc [hl]
    sub a
    ccf
    dec sp
    ld b, h
    ld b, h
    dec sp
    ld c, l
    ld sp, $ffca
    add sp, -$19
    rst $20
    ld h, e
    ld sp, $c139
    ldh [$bf], a
    pop hl
    sub e
    add [hl]
    add [hl]
    call $b691
    ldh [$6d], a
    add hl, sp
    ret nz

    rst $38
    ret nz

    ld [$6853], a
    db $dd
    ld l, b
    cp a
    db $e3
    sbc l

jr_056_719c:
    add [hl]
    sub e
    ret nz

    pop hl
    dec [hl]
    ld c, l
    and h
    jp z, $80ff

    ld_long $ff68, a
    pop hl
    dec a
    ldh [$91], a
    add c
    pop hl
    jr nc, jr_056_7158

    ld l, l
    ld l, l
    ld d, c
    jp z, Jump_000_00ff

    ld [$bf35], a
    ld [c], a
    ld l, b
    dec sp
    ld l, b
    sub e
    add c
    ld [c], a
    ld l, l
    ld l, l
    ld d, b
    jp z, $80ff

    ret z

    ld h, c
    ld e, [hl]
    rst $38
    call nz, $c0bd
    call nz, $c1e0
    ldh [$35], a
    ld b, e
    jp z, Jump_000_1eff

    ld b, b
    ret z

jr_056_71d9:
    ld e, a
    ld sp, $71af
    pop bc
    jp hl


    ret nz

    rst $18
    db $eb
    ld [$5a3f], a
    ld e, a
    ld sp, $7981
    ld [hl], c
    ld b, c
    ret nz

    add d
    db $e4
    sbc h
    ld b, b
    rst $18
    ld b, b
    db $ed
    xor h
    xor b
    add b
    cp a
    pop hl
    jp nz, $45e3

    ld hl, sp+$78
    and c
    jp z, $c0ff

    xor c
    add c
    add b
    add b
    add b
    ld a, c
    adc e
    ld a, [hl]
    ld [hl], $c7
    ret nz

    ld b, d
    jp nz, $c0e2

    rst $38
    ld [$5ee9], a
    ei
    ld sp, $c0a0
    ldh [$80], a
    add b
    ld l, a
    ld a, l
    ld a, [hl]
    ccf
    ld d, h
    inc a
    ld sp, $1531
    inc d
    rst $38
    ldh [$ca], a
    rst $38
    jp nc, $e7e8

    ld sp, $e4c0
    ld a, e
    ldh [$a0], a
    cp l
    add b
    rla
    inc h
    jr c, @+$01

    ldh [$ca], a
    rst $38
    ret nz

    push af
    dec d
    ld d, $20
    rst $38
    ldh [$ca], a
    rst $38
    ld b, $80
    push af
    rla
    jr z, @-$3e

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_056_736e

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
    ld c, e
    ld [hl], e
    ld a, e
    ld [hl], e
    inc c
    ld [hl], l
    adc $76
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_736e:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    cp l
    inc c
    rst $38
    db $e4
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    pop hl
    ld c, h
    sub c
    ld c, h
    xor $e5
    rst $38
    rst $38
    call nz, Call_056_4ce1
    rst $38
    pop hl
    pop bc
    ld [c], a
    dec bc
    ld c, l
    dec hl
    rst $38
    ldh [rWX], a
    inc l
    ret nz

    rst $38
    db $eb
    ld_long $ff0b, a
    ld [c], a
    dec b
    ld l, e
    pop bc
    ldh [$0b], a
    cp a
    db $e3
    ld a, a
    rst $38
    ret nz

    db $ed
    ld b, [hl]
    ldh [$c2], a
    pop hl
    add [hl]
    cp a
    db $e3
    dec bc
    inc l
    cp a
    rst $38
    add b
    ld [$e085], a
    ld b, h
    ldh [rWX], a
    ld b, $bf
    push hl
    dec bc
    dec bc
    ret nz

    rst $38
    ld [$08e9], a
    ldh [$be], a
    db $e3
    cp l
    db $e3
    add b
    ld [hl], a
    ld [c], a
    jp z, $c0ff

    add sp, $02
    db $e3
    ld bc, $7ce1
    ldh [$38], a
    ld [c], a
    ld c, e
    db $e4
    jp z, $e8ff

    rst $20
    ld c, e
    adc l
    ldh [$3d], a
    ld [c], a
    ld c, e
    dec bc
    ld c, e
    ld [bc], a
    ld sp, hl
    jp $c06b


    rst $38
    add b
    pop de
    db $fc
    push bc
    or a
    ldh [$ca], a
    rst $38
    add b
    jp hl


    ld [$e5c0], sp
    cp e
    jp nz, $a0f9

    ld a, [bc]
    ret nz

    rst $38
    nop
    adc $ff
    and h
    pop bc
    jp $c010


    rst $38
    ret nz

    rst $28
    add b
    and c
    cp c
    and b
    ld a, [bc]
    ret nz

    rst $38
    db $ed
    db $ec
    rrca
    ret nz

    ld b, b
    ld a, l
    and h
    or [hl]
    push hl
    ret nz

    rst $38
    add b
    jp z, $a4c6

    ld a, [hl]
    and h
    ld a, [bc]
    ld bc, $10e0
    ret nz

    rst $38
    nop
    xor c
    cp a
    push hl
    ei
    add b
    dec hl
    jp $80e1


    rst $38
    ret nz

    adc h
    ld c, l
    ld c, e
    dec a
    db $e4
    ld l, e
    ld a, [bc]
    ld b, e
    and b
    cp a
    pop hl
    ld a, [bc]
    jp z, Jump_000_00ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    db $fd
    jr nz, @+$01

    db $e3
    rrca
    ld sp, $454d
    ld d, h
    ld d, l
    rst $38
    ld d, l
    ld b, l
    ld c, l
    rla
    jr z, jr_056_753d

    jr nz, jr_056_751f

jr_056_751f:
    db $f4
    rst $38
    rst $38
    rst $20
    and $05
    rst $38
    pop hl
    ld a, [bc]
    dec bc
    ld sp, $774d
    ld [hl-], a
    ld l, l
    jr nc, @+$01

    ldh [$39], a
    dec d
    ld d, $c0
    rst $38
    ld a, [$e9ea]
    ld sp, $e2ff
    ld c, l

jr_056_753d:
    ld b, l
    ld b, h
    ld l, d
    ld l, d
    ld [c], a
    cp a
    pop hl
    dec [hl]
    ld a, a
    pop hl
    jp z, $c0ff

    ld [$3a4d], a
    ld d, l
    rst $28
    ld b, h
    jr nc, jr_056_7582

    ld l, l
    cp a
    db $e3
    ld d, c
    dec d
    ld d, $c1
    inc h
    jp z, $80ff

    add sp, -$7b
    pop hl
    ld b, l
    ld [c], a
    cp a
    db $e3
    ld d, b
    ld sp, $2933
    inc d
    jp z, $e8ff

    rst $20
    ld c, l
    ld [hl-], a
    add [hl]
    push hl
    ld a, [hl]
    ld [c], a
    inc hl
    dec [hl]
    ld c, l
    cpl
    ldh [$ca], a
    rst $38
    add sp, -$19
    add hl, sp
    add [hl]
    and $3d
    pop hl
    ld c, e

jr_056_7582:
    ld b, d
    inc a
    ldh a, [$c0]
    ld h, d
    jp z, $e8ff

    rst $20
    ld d, e
    adc c
    pop bc
    ld c, h
    ld a, [hl]
    push hl
    pop bc
    ld [c], a
    ld h, b
    ld e, e
    jp z, $e8ff

    rst $20
    ld d, d
    adc c
    jp nz, $c3c2

    jp $c136


    db $e3
    ret nz

    rst $38
    ret nz

    ld [$e6bf], a
    ld [hl-], a
    ld a, $3f
    ld sp, $5d31
    ld e, h
    ld e, e
    ld e, d
    ret nz

    rst $38
    ld b, b
    ld [$bf06], a
    push hl
    ld c, b
    ld c, c
    add e
    ld [c], a
    cp $e0
    jp z, Jump_056_40ff

    add sp, $07
    push bc
    ld c, e
    ld l, l
    add hl, sp
    dec b
    ldh [$5a], a
    ret nz

    rst $38
    db $ed
    db $ec
    add e
    add $a5
    adc a
    ld b, d
    ld c, c
    ld sp, $c25e
    ld [c], a
    ret nz

    rst $38
    ld [$79e9], a
    add hl, de
    ld [hl], c
    add l
    and e
    ld b, [hl]
    pop bc
    ld e, a
    ld e, e
    inc bc
    ldh [$7d], a
    ldh [$ca], a
    rst $38
    ld a, [bc]
    add sp, -$19
    add b
    cp a
    db $e3
    ld b, h
    rlca
    ret nz

    add [hl]
    ret nz

    ld b, b
    rst $38
    ret nz

    xor $3f
    add b
    ld a, c
    ld a, [hl]
    ld d, h
    ld d, l
    ld a, [hl-]
    adc c
    and b
    inc bc
    ld [c], a
    nop
    db $fc
    ld [c], a
    jp z, $ffff

    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
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
    jr nc, @+$39

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
    ld a, [bc]
    ld [hl], a
    ld a, [hl-]
    ld [hl], a
    bit 7, b
    ld l, a
    ld a, d
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $7d40
    ret nz

    ld a, [hl]
    ld [$c503], a
    ld b, $08
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h

Jump_056_7730:
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$df25], sp
    inc c
    inc c
    inc c
    ld l, h
    dec bc
    rst $38
    add sp, $4c
    inc l
    jp $2c2c


    db $ec
    ldh [rIE], a
    rst $38
    rst $20
    and $c1
    ld [$2b0b], a
    ld hl, sp-$41
    ldh [$cc], a
    rst $38
    pop bc
    rst $28
    ld c, e
    dec bc
    ld l, e
    ld l, e
    ld c, e
    pop hl
    ld c, e
    ret nz

    ldh [$bf], a
    ldh [$cb], a
    rst $38
    add d
    rst $28
    ld l, e
    ld l, e
    ld l, e
    inc c
    cp e
    ldh [$be], a
    pop hl

jr_056_776f:
    dec bc
    ld c, h
    jp z, $e8ff

    rst $20
    add $e1
    ret


    ldh [rIF], a
    ld c, e
    ld l, e
    dec hl
    dec hl
    ld a, c
    ld [c], a
    cp a
    pop hl
    jp z, $c0ff

    add sp, $00
    adc b
    pop hl
    ld [$c0e1], sp
    db $e3
    jr c, jr_056_776f

    ret nz

    rst $38
    ld [$c1e9], a

jr_056_7794:
    db $e4
    ret nz

    and $01
    dec hl
    db $fc
    ret nz

    jp z, $c0ff

    add sp, -$78
    push bc
    add b
    db $e4
    ld a, a
    pop hl
    jp z, Jump_056_40ff

    add sp, -$19
    sub b
    pop hl
    ret


    pop bc
    ret nz

    and $40
    rst $38
    ret nz

    db $eb
    dec hl
    jp nz, Jump_000_00c1

    add b
    jp nz, $c2f7

    ld a, [c]
    pop bc
    jp z, $80ff

    ret z

    cp a
    pop hl
    ccf
    call nz, $e2b6
    nop
    ld b, b
    rst $38
    ld b, b
    call z, $c447
    jr c, jr_056_7794

    ld b, b
    rst $38
    db $ed
    db $ec
    adc $e3
    ret nz

    and b
    ccf
    dec hl
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    dec bc
    ei
    and c
    set 7, a
    ld h, b
    ret nz

    xor c
    cp a
    push hl
    cp [hl]
    ldh [$3b], a
    and b
    add hl, sp
    and b
    inc c
    ld l, h
    jp z, $9cff

    ld b, b
    ld [$8ac0], a
    dec bc
    inc c
    ld l, h
    ret nz

    rst $38
    jp hl


    add sp, $0a
    nop
    ret nz

    db $ec
    pop bc
    ldh [$c0], a
    rst $38
    rst $38
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
    rst $38
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
    ld e, a
    nop
    nop
    nop
    inc bc
    ld hl, $e8ff
    inc bc
    rst $28
    ldh [$e0], a
    rst $38
    rst $38

jr_056_78d9:
    ld [$c1e9], a
    ld_long $ffbf, a
    pop bc
    or $33
    dec hl
    dec hl
    ld sp, hl
    dec a
    cp a
    rst $38
    add d
    push af
    dec a
    dec [hl]
    inc [hl]
    ld e, d
    ld e, d
    jp Jump_000_3534


    cp [hl]
    pop hl
    cp a
    rst $38
    jp hl


    add sp, -$3a
    ldh [$2b], a
    ld b, h
    rst $38
    ld b, l
    ld b, l
    ld b, h
    inc [hl]
    ld e, c
    ld e, c

jr_056_7903:
    jr nz, jr_056_795f

    ld [c], a
    cp [hl]
    ldh [$39], a
    inc [hl]
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $3d
    ld [hl+], a
    jr nz, @+$27

    jr nz, jr_056_78d9

    ldh [$59], a
    ret nz

    ldh [$bf], a
    pop hl
    add hl, hl
    ret nz

    rst $38
    db $eb
    ld [$c188], a
    pop hl
    ret nz

    and $7e
    ldh [$32], a
    ld a, a
    ldh [$ca], a
    rst $38
    add sp, -$19
    add hl, hl
    nop
    pop bc
    ldh [$c0], a
    rst $20
    dec a
    ldh [$7f], a
    ldh [$ca], a
    rst $38
    ret nz

    db $eb
    ld [$c0e0], sp
    push hl
    adc c
    jr nz, jr_056_7903

    rst $38
    ld b, b
    db $ed
    ld e, b
    pop bc
    pop hl
    call nz, $fac1
    ldh [rNR41], a
    ld hl, $4020
    rst $38
    ret nz

    adc $c7
    db $e3
    add e
    ret nz

    ld e, b
    rst $38
    ldh [$c0], a
    rst $18
    ld a, [hl]
    ld b, b

jr_056_795f:
    adc $35
    ld b, h
    ld b, h
    ld b, l
    ld b, h
    ld [hl-], a
    ld b, d
    ret nz

    and [hl]
    ret nz

    ldh [$2d], a
    inc sp
    ret nz

    rst $38
    db $eb
    ld [$4450], a
    and b
    sub b
    rst $38
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld h, h
    ld l, [hl]
    ld [hl-], a
    ld e, d
    ld e, b
    daa
    ld [hl-], a
    ld l, [hl]
    sbc a
    ret nz

    cp a
    db $ec
    db $eb
    ld c, e
    cp a
    ldh [$c0], a
    pop hl
    sbc [hl]
    cp [hl]
    pop hl
    ld l, [hl]
    ld h, h
    sbc [hl]
    sub a
    pop bc
    rst $38
    ret nz

    db $ec
    ld c, e
    sbc c
    ld c, [hl]
    ret nz

    db $e4
    ld a, e
    ldh [$9e], a
    ld h, b
    pop bc
    rst $38
    db $ed
    db $ec
    ld c, d
    inc bc
    ld c, e
    ld c, a
    ret nz

    and $c1
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
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    call $ff00
    jp hl


    scf
    ld [hl-], a
    pop af
    ld_long $ffff, a
    inc sp
    ld sp, $dcfe
    ld a, [c]
    ld [hl], $30
    scf
    ld h, $20
    daa
    db $10
    ei
    ld d, $17
    cp [hl]
    or $34
    ld [hl], $32
    jr nc, jr_056_7ac6

    rrca
    ld sp, $3133
    inc sp
    sbc h
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    and e
    ld a, d
    db $d3
    ld a, d
    ld d, a
    ld a, h
    rst $38
    ld a, l
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_056_7ac6:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $18
    ld a, [bc]
    dec bc
    dec bc
    ld l, e
    dec bc
    rst $38
    add sp, $4b
    dec bc
    rst $00
    dec hl
    dec bc
    inc c
    rst $38
    rst $38
    rst $20
    and $c1
    ldh [rOCPD], a
    ld c, e
    adc d
    rst $38
    rst $20
    dec bc
    db $fd
    ldh [$2b], a
    jp z, $c0ff

    add sp, -$3f
    pop hl
    ld l, e
    ld [$e1ff], sp
    pop bc
    ld [c], a
    ld a, a
    ldh [rWX], a
    add b
    rst $38
    jp hl


    add sp, -$7e
    ld [c], a
    ret nz

    push hl
    ld b, $3f
    ld [c], a
    ld c, e
    ld c, e
    jp z, $c0ff

    add sp, $43
    jp hl


    pop bc
    db $e3
    add b
    rst $38
    nop
    nop
    jp hl


    rst $00
    push hl
    ret z

    ret nz

    pop bc
    db $e4
    ret nz

    rst $38
    ret nz

    db $ec
    ld c, c
    db $e4
    ld a, e
    and $10
    jp z, $80ff

    ld [$e30a], a
    cp h
    jp nz, $be6b

    ret nz

    ld b, b
    rst $38
    ld b, b
    db $eb
    nop
    add d
    db $ec
    ld b, b
    rst $38
    nop
    call z, $e443
    ret nz

    and [hl]
    ret nz

    rst $38
    ret nz

    db $ed
    ld b, $c6
    ld [bc], a
    cp $a3
    ld l, e
    jp z, $e8ff

    rst $20
    adc d
    ret nz

    rst $00
    and l
    ld a, a
    jp nz, $a131

    db $e4
    jp z, $c0ff

    add sp, $2b
    adc b
    and l
    ld a, [$6b84]
    dec bc
    ld a, [bc]
    jr nz, @-$34

    rst $38
    nop
    xor b
    cp a
    pop hl
    ld [$76e4], sp
    and d
    dec bc
    ret nz

    rst $38
    ld [$10e9], a
    sub b
    add b
    rst $00
    and c
    ld [$78e2], sp
    add c
    ld a, [bc]
    cp $e0
    jp z, $e8ff

    rst $20
    add hl, bc
    ld a, [bc]
    ld c, a
    add b
    add $83
    ld l, e
    push bc
    pop hl
    dec [hl]
    add d
    jp z, $ffff

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

jr_056_7c4e:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    rst $38
    ld e, d
    ld h, b
    ld sp, $574d
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    ld a, [$e0fc]
    ld d, a
    ei
    pop hl
    ld c, l
    ld sp, $5b60
    nop
    cp b
    rst $38
    rst $38
    rst $20
    and $c1
    ldh [$32], a
    ld l, l
    ld l, h
    rst $38
    ld [c], a
    ld l, d
    rra
    ld l, d
    ld l, l
    ld l, l
    jr nc, @+$35

    cp a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld h, $c1
    pop hl
    ld l, d
    ld l, b
    rst $38
    pop hl
    pop bc
    ld [c], a
    jr nc, jr_056_7c4e

    pop hl
    jp z, $f0ff

    add sp, -$19
    pop bc
    pop hl
    ret nz

    db $e4
    pop bc
    ld [c], a
    jr nc, jr_056_7d0a

    inc sp
    ld c, l
    call nz, $ffca
    add sp, -$19
    add hl, sp
    pop bc
    ldh [rLCDC], a
    db $e4
    pop bc
    db $e3
    ld l, d
    ld l, l
    adc c
    ld d, c
    jp z, $e8ff

    rst $20
    ld d, e
    ld c, c
    db $e4
    db $fd
    db $e4
    pop bc
    ldh [$30], a
    add hl, bc
    ld d, b
    jp z, $e8ff

    rst $20
    ld d, d
    ld c, c
    push hl
    ld a, l
    db $e3
    pop bc
    ldh [$c0], a

jr_056_7cc9:
    rst $38
    ld [$eac0], sp
    ld a, [bc]
    db $e4
    cp h
    jp $be68


    ret nz

    ld b, b
    rst $38
    ld b, b
    ld [$e50a], a
    inc b
    inc a
    jp $c0c0


    ld [hl-], a
    ret nz

    rst $18
    nop
    jp hl


    set 0, h
    db $fc
    push bc
    pop bc
    ldh [rP1], a
    ld b, b
    rst $18
    nop
    jp hl


    pop bc
    rst $20
    ld a, h
    jp nz, $e0c1

    ret nz

    cp a
    ld b, b
    ret


    add d
    and $3f
    ld l, l
    ccf
    ld d, h
    ld d, l
    ld d, l
    ld a, [hl-]
    ld b, b
    cp a
    ret nz

    xor a
    jr c, jr_056_7cc9

    db $e3
    ld b, a

jr_056_7d0a:
    ldh [rIE], a
    pop hl
    ld h, b
    ld e, e
    ld e, d
    jp z, Jump_056_40ff

    xor e
    ld a, [hl]
    pop bc
    push hl
    ld h, d
    ld h, d
    ld h, d
    ld e, l
    ld e, h
    ld e, e
    ret nz

    rst $38
    inc l
    ret nz

    adc l
    ret


    call nz, Call_056_5b60
    rst $38
    ldh [$5a], a
    cp $e0
    jp z, Jump_000_00ff

    add sp, -$19
    ld b, b
    add c
    ld c, b
    add h
    push bc
    pop hl
    rst $38
    ld [c], a
    jp z, $ffff

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
    di
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
    jr nc, jr_056_7e5e

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

jr_056_7e5e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_056_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_056_7fff:
    rst $38
