INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $009", ROMX[$4000], BANK[$9]

    db $12, $4a

    push bc
    ld e, d
    ldh [rBGP], a
    ld [hl], h
    ld l, d
    sbc e
    ld l, d

Call_009_400a:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d205], a
    ld a, l
    ld [$d200], a
    ld a, h
    ld [$d201], a
    ld a, d
    ld [$d202], a
    ld a, e
    ld [$d203], a
    push de
    call Call_000_23b6
    rst $18

    db $06, $01

    call Call_000_0341
    xor a
    ldh [$8b], a
    ldh [$8a], a
    ld hl, $d200
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0028
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_1f2f
    ld hl, $d000
    ld de, $8e00
    ld c, $14
    call Call_000_04db
    ld hl, $40ce
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $4325
    ld de, $0206
    call Call_000_0595
    ld hl, $4355
    ld de, $0c01
    call Call_000_0595
    ld hl, $4360
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $45a0
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0100
    ld c, $0a

jr_009_40a9:
    push bc
    push hl
    call Call_009_4916
    call Call_000_04de
    pop hl
    ld c, $0b
    push hl
    call Call_009_4949
    call Call_000_04de
    pop hl
    pop bc
    inc l
    dec c
    jr nz, jr_009_40a9

    ld a, $01
    ld hl, $4990
    call Call_000_23e8
    call Call_000_0371
    pop de
    ret


    db $15, $00, $ff, $ec, $ff, $ff, $fc, $00, $fe, $ed, $ff, $ff, $9d, $e2, $7f, $82
    db $00, $12, $00, $36, $00, $66, $91, $e2, $ff, $04, $00, $08, $00, $19, $00, $13
    db $00, $87, $33, $00, $37, $90, $ee, $a0, $e7, $a5, $e0, $fa, $e1, $ff, $ff, $d0
    db $ef, $9f, $ff, $a0, $ff, $af, $f0, $f0, $fe, $e3, $7e, $e1, $fc, $e2, $d9, $e6
    db $07, $ff, $f3, $ff, $0f, $0b, $ff, $fb, $0f, $fe, $e3, $d8, $e5, $d0, $e5, $e8
    db $e5, $ae, $e0, $ed, $9f, $ff, $c0, $15, $e4, $80, $fd, $e0, $c8, $f1, $b7, $fa
    db $e0, $f4, $e3, $86, $e2, $ad, $52, $40, $bf, $6e, $12, $e3, $ff, $ff, $01, $fd
    db $e0, $6b, $95, $fa, $e0, $3c, $02, $e4, $ce, $e1, $a3, $dc, $de, $a1, $ce, $e3
    db $72, $e3, $cf, $2d, $d2, $f2, $0d, $c5, $c3, $ce, $e3, $1b, $e5, $eb, $f5, $0b
    db $ce, $e3, $6e, $cf, $cc, $77, $00, $7f, $fc, $fe, $e0, $b9, $c1, $f7, $08, $f3
    db $0c, $f9, $06, $80, $8f, $c9, $26, $e3, $06, $e5, $fe, $c3, $f1, $c8, $65, $c2
    db $18, $e3, $eb, $f3, $1f, $f3, $08, $e0, $54, $c2, $c6, $fe, $e7, $fe, $ff, $f7
    db $de, $ff, $de, $ef, $de, $e7, $de, $77, $e7, $9c, $63, $5f, $c2, $7c, $c7, $fe
    db $f2, $e1, $ef, $fc, $7f, $c1, $3e, $4f, $ce, $f8, $cf, $fc, $fb, $df, $e6, $d4
    db $e1, $dc, $ef, $f9, $fe, $83, $ff, $7c, $bc, $c3, $e3, $9c, $9f, $e0, $f0, $ff
    db $8f, $8f, $f0, $f0, $8f, $df, $a0, $80, $ff, $ff, $ce, $31, $39, $c6, $c7, $38
    db $78, $ff, $87, $8f, $70, $f0, $0f, $1f, $e0, $00, $ff, $ff, $cc, $33, $3b, $c4
    db $c6, $39, $79, $bd, $86, $f0, $e5, $1d, $e3, $e7, $19, $22, $e1, $0f, $df, $f1
    db $f9, $07, $07, $f9, $ea, $c1, $c9, $f7, $ff, $ca, $f5, $cb, $f4, $c9, $f6, $cb
    db $f4, $fc, $fe, $e1, $c0, $a1, $7f, $ff, $1f, $ff, $4f, $bf, $ff, $4f, $bf, $2b
    db $df, $6b, $df, $df, $20, $ff, $cf, $30, $67, $98, $67, $98, $23, $dc, $ff, $23
    db $dc, $01, $fe, $01, $fe, $f8, $07, $ff, $fc, $03, $9c, $63, $cc, $33, $66, $99
    db $3f, $66, $99, $22, $dd, $02, $fd, $9a, $c5, $02, $eb, $fc, $a7, $a2, $93, $a5
    db $7c, $c6, $3f, $fe, $7f, $e6, $ef, $ff, $ee, $f7, $fe, $30, $e1, $30, $f7, $38
    db $bf, $ff, $fc, $f1, $3e, $f7, $38, $f8, $e0, $3c, $e3, $e1, $1e, $6f, $af, $fe
    db $ff, $3b, $aa, $80, $9b, $e4, $ff, $f6, $89, $cd, $b2, $bb, $c4, $e6, $99, $ff
    db $99, $e6, $f7, $88, $ff, $00, $cf, $30, $ff, $70, $8f, $8f, $70, $76, $89, $99
    db $66, $ff, $e6, $19, $38, $c7, $ff, $00, $c3, $3c, $ff, $fc, $03, $03, $fc, $fc
    db $03, $27, $d8, $ff, $dc, $23, $33, $cc, $ff, $01, $9f, $61, $ff, $71, $8f, $8f
    db $71, $79, $87, $c7, $39, $ef, $3d, $c3, $e3, $1d, $0a, $e1, $cd, $f2, $cd, $df
    db $f6, $c9, $f6, $cd, $f2, $fe, $c1, $6b, $df, $ef, $2b, $df, $4b, $bf, $fe, $e3
    db $0b, $ff, $4b, $9d, $bf, $d0, $87, $01, $ff, $03, $54, $a0, $c0, $81, $10, $fb
    db $ff, $60, $82, $a0, $80, $ff, $88, $ff, $18, $00, $0c, $c6, $04, $c7, $a5, $89
    db $91, $9f, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ee, $f6, $f5, $0f, $ff, $9e
    db $fe, $e0, $be, $ff, $3c, $fb, $ff, $7d, $fe, $e0, $ff, $ff, $30, $ff, $70, $ff
    db $ff, $71, $ff, $e3, $ff, $e7, $ff, $ef, $00, $b0, $63, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $e6, $00, $00

    nop

    db $f8, $03, $44, $03, $00, $02, $40, $01, $96, $4a, $1f, $12, $d6, $00, $00, $00
    db $ff, $03, $1f, $12, $d6, $00, $00, $00, $de, $7b, $8e, $7f, $80, $7e, $80, $7d
    db $de, $7b, $18, $63, $52, $4a, $8c, $31, $de, $7b, $18, $63, $52, $4a, $8c, $31
    db $80, $7d, $1f, $68, $4c, $68, $00, $00

    nop
    nop
    nop
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

    db $0d, $0d, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b, $8b
    db $8b, $8b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0d, $0d, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0d, $0d, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08
    db $0a, $0a, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b, $0b
    db $0b, $0b, $0a, $0a, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08, $08

    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_009_461a

    jr jr_009_461c

    jr jr_009_461e

    jr jr_009_4620

    jr jr_009_4622

    jr @+$1a

    jr jr_009_4626

    jr @+$1a

    jr @+$1a

    jr jr_009_462c

    nop
    nop
    nop
    nop
    nop
    nop

jr_009_461a:
    nop
    nop

jr_009_461c:
    nop
    nop

jr_009_461e:
    nop
    nop

jr_009_4620:
    jr z, jr_009_464a

jr_009_4622:
    db $10
    ld de, $1111

jr_009_4626:
    ld de, $1111
    ld de, $1111

jr_009_462c:
    ld de, $1111
    ld de, $1211
    jr z, jr_009_465c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_009_467a

    jr nz, jr_009_4665

    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_009_464a:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld [hl+], a
    inc hl
    jr c, jr_009_468c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_465c:
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    jr nc, jr_009_4695

    ld [hl], b

jr_009_4665:
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld [hl-], a
    inc sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_009_467a:
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    jr nz, jr_009_46a5

Call_009_4684:
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a

jr_009_468c:
    adc b
    adc c
    adc d
    adc e
    ld [hl+], a
    inc hl
    add hl, bc
    add hl, bc
    nop

jr_009_4695:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    add hl, de
    jr nc, jr_009_46d5

    sub b

jr_009_46a5:
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld [hl-], a
    inc sp
    add hl, de
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    add hl, hl
    jr nz, jr_009_46e5

    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    ld [hl+], a
    inc hl
    add hl, hl
    add hl, hl
    nop

jr_009_46d5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, sp
    add hl, sp
    jr nc, jr_009_4715

    or b

jr_009_46e5:
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ld [hl-], a
    inc sp
    add hl, sp
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    jr nz, jr_009_4725

    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_22cb

    inc hl
    inc b
    inc b
    nop

jr_009_4715:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    jr nc, jr_009_4755

    ret nc

jr_009_4725:
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_32db

    inc sp
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr nz, @+$23

    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$22eb], a
    inc hl
    ld d, $17
    nop

jr_009_4755:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, $27
    jr nc, jr_009_4795

    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$32fb]
    inc sp
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $37
    inc de
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld [hl], $37
    nop

jr_009_4795:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    inc h
    dec h
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc [hl]
    dec [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_009_47e0:
    ld b, a

Jump_009_47e1:
    ld a, $ff
    ld [$d204], a
    ld c, $0c
    ld l, b
    call Call_009_48f9

Jump_009_47ec:
    ld hl, $d204
    ld a, [hl]
    inc [hl]
    xor [hl]
    bit 4, a
    jr z, jr_009_4800

    ld a, [hl]
    swap a
    and $01
    ld h, a
    ld l, b
    call Call_009_48de

jr_009_4800:
    call Call_000_2e3b
    ld a, [$d205]
    or a
    jr z, jr_009_4839

    ld a, [$cb40]
    cp $10
    jr nz, jr_009_4839

Jump_009_4810:
    ld a, $20
    ld [$cb00], a
    ld a, $01
    call Call_000_3081
    ld h, $01
    ld l, b
    call Call_009_48de
    ld c, $0b
    ld l, b
    call Call_009_48f9
    ld h, $00
    ld l, $01
    call Call_009_48de
    ld c, $0c
    ld l, $01
    call Call_009_48f9
    ld b, $11
    jp Jump_009_48c0


jr_009_4839:
    ldh a, [$91]
    bit 1, a
    jp nz, Jump_009_48cd

    bit 0, a
    jr nz, jr_009_4882

    bit 6, a
    jr z, jr_009_4857

    xor a
    cp b
    jr nz, jr_009_4853

    ld a, [$d202]
    dec a
    ld d, a
    jr jr_009_486e

jr_009_4853:
    ld d, $ff
    jr jr_009_486e

jr_009_4857:
    bit 7, a
    jr z, jr_009_486b

    ld a, [$d202]
    dec a
    cp b
    jr nz, jr_009_4867

    cpl
    inc a
    ld d, a
    jr jr_009_486e

jr_009_4867:
    ld d, $01
    jr jr_009_486e

jr_009_486b:
    jp Jump_009_47ec


jr_009_486e:
    rst $08

    db $5b

    ld h, $01
    ld l, b
    call Call_009_48de
    ld c, $0b
    ld l, b
    call Call_009_48f9
    ld a, b
    add d
    ld b, a
    jp Jump_009_47e1


jr_009_4882:
    ld a, [$d205]
    or a
    jr z, jr_009_48c0

    ld a, b
    cp $01
    jr nz, jr_009_48c0

    call Call_000_306e
    call Call_000_2e3b
    ldh a, [$c2]
    cp $02
    jp z, Jump_009_4810

    cp $01
    jp nz, Jump_009_48b8

    ld a, $10
    ld [$cb00], a
    ld a, $10
    call Call_000_3081
    ld c, $0a

jr_009_48ab:
    call Call_000_2e3b
    ld a, [$cb40]
    cp $20
    jr z, jr_009_48c0

    dec c
    jr nz, jr_009_48ab

Jump_009_48b8:
    rst $08
    ld e, l
    call Call_000_304d
    jp Jump_009_47ec


Jump_009_48c0:
jr_009_48c0:
    rst $08

    db $5c

    ld h, $00
    ld a, b
    and $0f
    ld l, a
    call Call_009_48de
    ld a, b
    ret


Jump_009_48cd:
    rst $08

    db $5d

    ld h, $01
    ld l, b
    call Call_009_48de
    ld c, $0b
    ld l, b
    call Call_009_48f9
    ld a, $ff
    ret


Call_009_48de:
    push af
    push bc
    push de
    push hl
    ld a, [$d203]
    add l
    add l
    ld l, a
    push hl
    call Call_009_4916
    pop hl
    inc l
    call Call_009_4916
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_009_48f9:
    push af
    push bc
    push de
    push hl
    ld a, [$d203]
    add l
    add l
    ld l, a
    push hl
    push bc
    call Call_009_4949
    pop bc
    pop hl
    inc l
    call Call_009_4949
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_009_4916:
    push hl
    ld b, l
    ld a, l
    add a
    add h
    add a
    ld d, $00
    ld e, a
    ld hl, $d200
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    bit 0, b
    jr z, jr_009_4931

    inc d

jr_009_4931:
    push de
    call Call_000_1f2f
    ld a, b
    add $a6
    bit 3, a
    jr nz, jr_009_493e

    or $10

jr_009_493e:
    pop hl
    ld d, a
    ld e, $00
    ld c, $10
    call Call_000_0468
    pop hl
    ret


Call_009_4949:
    push hl
    ld b, l
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld de, $4400
    add hl, de
    ld de, $d000
    bit 0, b
    jr z, jr_009_4960

    inc d

jr_009_4960:
    push hl
    push de
    push bc
    ld c, $02
    call Call_000_03eb
    pop bc
    pop de
    pop hl
    pop hl
    push de
    ld de, $b8a0
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld a, c
    push hl
    inc hl
    inc hl
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
    ld [hl+], a
    pop hl
    ld c, $02
    call Call_000_0468
    pop hl
    ret


    ldh a, [$8c]
    and $3f
    ld hl, $49a9
    add l
    ld l, a
    jr nc, jr_009_499c

    inc h

jr_009_499c:
    ld d, $00
    ld e, [hl]
    ld hl, $49e9
    ld bc, $04e0
    call Call_000_26ea
    ret


    db $00, $00, $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00
    db $00, $00, $00, $ff, $ff, $ff, $fe, $fe, $fe, $fd, $fd, $fd, $fd, $fd, $fd, $fd
    db $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fd, $fe, $fe, $fe, $ff, $ff, $ff, $00, $00
    db $1a, $30, $00, $00, $1a, $38, $02, $00, $1a, $40, $04, $00, $1a, $48, $06, $00
    db $1a, $50, $08, $00, $1a, $58, $0a, $00, $1a, $60, $0c, $00, $1a, $68, $0e, $00
    db $1a, $70, $10, $00, $1a, $78, $12, $00, $80

    ld hl, $4a4c
    ld de, $0401
    ld b, $00
    call Call_009_400a
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $01
    ld [$d205], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$cab8]
    call Call_009_47e0
    bit 7, a
    jr nz, jr_009_4a41

    push af
    and $0f
    ld [$cab8], a
    pop af

jr_009_4a41:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af

jr_009_4a4b:
    ret


    db $76
    ld c, d

    db $0b, $52, $e7, $4a, $7c, $52, $b2, $4b, $47, $53, $88, $4c, $17, $54, $63, $4d
    db $ee, $54, $3e, $4e, $c9, $55, $15, $4f, $a2, $56

    ldh a, [rVBK]

    db $7d, $57

    ret nz

    ld d, b

    db $48, $58

    sub l
    ld d, c

    db $23, $59, $99, $59

    rst $38
    inc c
    di
    ei
    inc b
    call z, Call_000_3733
    ret z

    rst $38
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $00
    rst $38
    rst $38
    rst $00
    jr c, jr_009_4a4b

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    di
    inc c

jr_009_4a98:
    nop
    rst $38
    rst $38
    ld a, $c1
    pop bc
    ld a, $7f
    add b
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_4abd

jr_009_4abd:
    rst $38
    ccf
    adc $31
    add hl, sp
    add $c7
    jr c, jr_009_4a98

    pop hl
    cp [hl]
    pop hl
    rst $38
    nop
    rst $38
    rst $20
    jr @+$3a

    rst $00
    adc a
    ld [hl], b
    rst $38
    ld a, b
    add a
    add a
    ld a, b
    ld hl, sp+$07
    rlca
    ld hl, sp+$03
    nop
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop
    nop

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e6
    db $e7, $18, $ff, $ff, $00, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30, $f6, $09
    db $39, $c6, $cf, $30, $ff, $fd, $03, $72, $8e, $c6, $3c, $3c, $c8, $ff, $e8, $18
    db $18, $f0, $f8, $10, $8c, $78, $d7, $cf, $ff, $30, $ff, $e2, $31, $ff, $e4, $bf
    db $c0, $ff, $e3, $7c, $34, $1b, $1a, $0d, $cc, $87, $ff, $c5, $46, $c7, $44, $c7
    db $84, $df, $3f, $ff, $a1, $60, $20, $e0, $20, $e0, $63, $a3, $ff, $e3, $22, $22
    db $e3, $e3, $23, $76, $8f, $ff, $c9, $f9, $69, $39, $31, $19, $99, $09, $f5, $89
    db $ff, $e1, $09, $a0, $e3, $36, $cf, $1f, $f9, $ff, $b1, $60, $60, $c0, $c0, $80
    db $ff, $00, $ff, $30, $ff, $dd, $4f, $47, $c2, $62, $c2, $ff, $b8, $f0, $ec, $98
    db $84, $fc, $b7, $78, $ff, $ea, $cd, $8e, $09, $1d, $0a, $33, $1c, $ff, $66, $39
    db $d9, $66, $b7, $c8, $ff, $00, $ff, $c3, $3c, $fc, $03, $9b, $64, $6c, $93, $ff
    db $c7, $38, $f8, $07, $0f, $f0, $ff, $00, $ff, $9e, $61, $71, $8e, $8f, $70, $78
    db $87, $3f, $c7, $38, $3c, $c3, $e3, $1c, $00, $00

    nop

    db $ff, $1e, $e1, $f3, $0c, $0f, $f0, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $32, $cd, $fd, $02, $03, $fc, $fe, $01, $ff, $01, $fe, $ff, $00
    db $80, $7f, $00, $ff, $ff, $76, $8e, $c6, $3a, $be, $42, $62, $9e, $ff, $9e, $62
    db $72, $8e, $ce, $32, $01, $ff, $fd, $30, $ff, $e2, $31, $31, $31, $21, $23, $21
    db $ff, $22, $23, $dc, $ff, $0f, $04, $38, $1f, $ff, $e7, $78, $b8, $c7, $8e, $71
    db $f2, $0d, $ff, $1c, $e3, $00, $ff, $20, $e0, $a0, $60, $ff, $21, $e0, $23, $e3
    db $e2, $43, $c6, $43, $ff, $c5, $46, $38, $ff, $19, $09, $71, $39, $ff, $c9, $f9
    db $19, $e9, $19, $e9, $e9, $19, $ff, $c9, $39, $06, $ff, $98, $08, $18, $18, $ff
    db $18, $08, $00, $00, $c0, $80, $70, $e0, $ff, $5e, $bc, $43, $bf, $fc, $84, $c4
    db $bc, $ff, $bc, $c4, $84, $fc, $4c, $74, $64, $5c, $ff, $44, $7c, $83, $ff, $cc
    db $b3, $bb, $c4, $ff, $c7, $b8, $f8, $87, $8f, $f0, $f8, $87, $ff, $87, $f8, $00
    db $ff, $f3, $0c, $3c, $c3, $ff, $c7, $38, $78, $87, $8f, $70, $f3, $0c, $fe, $a0
    db $e1, $1e, $e1, $e1, $1e, $9f, $60, $60, $ff, $9f, $df, $20, $b0, $4f, $7f, $80
    db $00, $01, $ff, $00, $00

    nop

    db $ff, $ff, $00, $9e, $61, $61, $9e, $df, $20, $ff, $20, $df, $df, $20, $30, $cf
    db $cf, $30, $ff, $ef, $1f, $71, $90, $d8, $30, $28, $d8, $ff, $ec, $18, $94, $6c
    db $66, $9c, $f2, $0e, $ff, $77, $8f, $dc, $a8, $e8, $98, $a8, $d8, $ff, $f9, $50
    db $51, $71, $73, $21, $22, $23, $ff, $9b, $e7, $74, $4c, $ec, $58, $99, $f0, $ff
    db $f3, $a1, $63, $a3, $71, $a0, $58, $b0, $ff, $bf, $c0, $7f, $40, $c4, $7b, $b0
    db $cf, $ff, $43, $bc, $4e, $b1, $dc, $e3, $68, $37, $ff, $61, $9f, $83, $7e, $1a
    db $e6, $f6, $0c, $ff, $bc, $44, $04, $fc, $0c, $f8, $08, $f8, $ff, $fc, $ff, $66
    db $43, $42, $03, $02, $03, $ff, $03, $01, $11, $01, $b1, $11, $b9, $b0, $ff, $ff
    db $00, $fe, $01, $01, $fe, $0e, $f1, $ff, $c3, $3f, $0f, $fc, $18, $f0, $b0, $e0
    db $ff, $f9, $06, $54, $ab, $e9, $17, $6d, $93, $ff, $31, $cf, $9d, $e3, $e7, $5e
    db $4c, $78, $ff, $6f, $f0, $de, $91, $99, $16, $16, $19, $ff, $10, $1f, $15, $1b
    db $1b, $16, $16, $1c, $ff, $ff, $00, $7f, $80, $c4, $3b, $3f, $c0, $ff, $e3, $fc
    db $b5, $1a, $1e, $09, $09, $0e, $ff, $ff, $00, $c7, $38, $38, $c7, $e7, $18, $ff
    db $3c, $c3, $c3, $3c, $7e, $81, $c1, $3e, $00, $00, $00, $ff, $3c, $c3, $e3, $1c
    db $9e, $61, $71, $8e, $ff, $cf, $30, $32, $cd, $ff, $00, $00, $ff, $ff, $0e, $f2
    db $ff, $02, $01, $ff, $ff, $01, $ff, $02, $fd, $fc, $03, $a7, $58, $00, $ff, $ff
    db $02, $03, $06, $03, $04, $07, $8f, $04, $ff, $8a, $8d, $df, $88, $50, $df, $20
    db $ff, $ff, $6c, $98, $56, $ae, $36, $cc, $2c, $d8, $ff, $39, $f0, $c3, $41, $42
    db $c3, $3c, $ff, $ff, $30, $1f, $31, $1e, $6b, $34, $ce, $7f, $ff, $bb, $d1, $71
    db $91, $7b, $91, $4e, $bf, $ff, $e8, $18, $99, $70, $f1, $11, $11, $f1, $ff, $f1
    db $11, $f9, $11, $8d, $79, $36, $cf, $ff, $e8, $b8, $c8, $f8, $9c, $68, $74, $8c
    db $ff, $c6, $3c, $2a, $d6, $c3, $3e, $0d, $f3, $ff, $a6, $e0, $a6, $c6, $c6, $46
    db $46, $44, $ff, $60, $40, $71, $60, $5b, $73, $8c, $ff, $ff, $78, $30, $31, $20
    db $21, $21, $71, $20, $ff, $58, $70, $8c, $f8, $47, $bf, $40, $bf, $ff, $1c, $18
    db $18, $10, $90, $10, $98, $90, $ff, $18, $18, $1c, $18, $17, $1e, $e1, $ff, $ff
    db $9e, $89, $33, $1c, $ec, $73, $c6, $f9, $ff, $6b, $34, $3c, $13, $17, $18, $e0
    db $ff, $ff, $7f, $80, $8c, $73, $f3, $0c, $1e, $e1, $ff, $e1, $1e, $7f, $80, $9c
    db $63, $00, $ff, $00, $00, $00, $ff, $ff, $00, $e0, $1f, $1f, $e0, $f0, $0f, $ff
    db $8f, $70, $70, $8f, $df, $20, $31, $ce, $ff, $ff, $00, $39, $c6, $c7, $38, $78
    db $87, $ff, $8f, $70, $f0, $0f, $1f, $e0, $e1, $1e, $ff, $f8, $07, $39, $c6, $82
    db $7d, $71, $8f, $ff, $83, $7e, $f2, $0e, $03, $fe, $f1, $0f, $ff, $bb, $7c, $47
    db $c4, $cc, $87, $9b, $0c, $ff, $30, $1f, $33, $3d, $1f, $0f, $86, $03, $ff, $7a
    db $85, $3a, $c5, $1a, $fd, $e6, $25, $f7, $e6, $e7, $01, $ff, $e0, $e6, $e7, $cb
    db $34, $ff, $83, $7c, $93, $6c, $96, $6f, $5f, $b9, $ff, $31, $e0, $60, $c0, $c0
    db $80, $d3, $2c, $ff, $c0, $3f, $06, $ff, $09, $f9, $39, $f9, $fd, $c0, $ff, $e0
    db $b9, $f9, $5e, $a1, $58, $a7, $ff, $51, $ae, $5b, $a4, $98, $e7, $78, $7f, $ff
    db $4c, $47, $85, $c7, $e7, $18, $ac, $53, $ff, $8f, $70, $69, $97, $8b, $76, $c6
    db $3c, $ff, $ec, $f8, $99, $10, $1f, $e0, $9b, $64, $ff, $cc, $33, $8f, $f0, $48
    db $77, $4f, $70, $ff, $49, $76, $8e, $f1, $ff, $00, $bf, $40, $ef, $70, $8f, $cf
    db $30, $6e, $e1, $f3, $0c, $6e, $ff, $91, $ff, $00, $c1, $3e, $7f, $80, $80, $ff
    db $7f, $7f, $80, $c0, $3f, $3f, $c0, $e0, $01, $1f, $00, $00

    nop

    db $ff, $ef, $10, $9a, $65, $76, $89, $cd, $32, $ff, $3b, $c4, $f6, $09, $19, $e6
    db $00, $ff, $ff, $3e, $c1, $c3, $3c, $fc, $03, $9b, $64, $ff, $6c, $93, $c7, $38
    db $f8, $07, $00, $ff, $ff, $62, $9d, $98, $67, $71, $8e, $8c, $73, $ff, $7b, $87
    db $c4, $3c, $3c, $c4, $03, $ff, $ff, $c3, $81, $63, $e1, $e6, $43, $cd, $86, $ff
    db $9a, $0d, $32, $1d, $23, $3c, $c2, $fd, $ff, $67, $a5, $e5, $27, $67, $a3, $a3
    db $63, $ff, $f3, $21, $d1, $31, $39, $d1, $0e, $ff, $ff, $98, $08, $18, $18, $18
    db $08, $00, $00, $ff, $c0, $80, $70, $e0, $1e, $fc, $03, $ff, $ff, $e9, $99, $99
    db $e9, $f9, $88, $88, $f8, $ff, $7c, $48, $74, $4c, $46, $7c, $83, $ff, $ff, $47
    db $c5, $67, $c5, $a7, $e2, $b2, $e2, $ff, $d0, $70, $58, $70, $4d, $78, $b7, $cf
    db $ff, $13, $11, $38, $10, $2c, $38, $24, $3c, $ff, $6c, $38, $c9, $78, $8b, $f9
    db $07, $fe, $ff, $cb, $b4, $dc, $63, $57, $68, $79, $46, $ff, $ee, $51, $b6, $c9
    db $59, $a6, $80, $7f, $ff, $b3, $4c, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30
    db $f6, $09, $39, $c6, $00, $ff, $ff, $9f, $60, $70, $8f, $cf, $30, $31, $ce, $ff
    db $fe, $01, $03, $fc, $fc, $03, $00, $ff, $00, $00, $00

    rst $38
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    inc bc
    rst $28
    rst $38
    nop
    inc a
    jp $e3f0


    di
    inc c
    inc e
    rst $38
    db $e3
    rst $20

jr_009_500f:
    jr jr_009_500f

    ld bc, $1fe1
    sbc e
    rst $38
    ld h, [hl]
    ld h, [hl]
    sbc h
    call z, $b838
    ld d, b
    ld [hl], c
    rst $38
    sub b
    pop de
    ld sp, $fef9
    adc l
    ld b, $06
    rst $38
    inc bc
    inc bc
    ld bc, $2071
    ret c

    ld [hl], b
    adc h
    rst $38
    ld hl, sp+$34
    call z, Call_000_00ff
    cp l
    ld a, [hl]
    ld b, l
    rst $38
    jp nz, $c343

    add c
    ret nz

    ret nz

    ld b, b
    ld b, h
    rst $38
    ld b, h
    ld h, h
    ld b, h
    add b
    ld a, a
    pop bc
    ld a, $96
    cp a
    ld l, a
    ld c, c
    cp c
    cp c
    ld sp, hl
    add b
    xor $e0
    ld sp, hl
    rst $38
    ld a, c
    ld bc, $83fe
    ld a, h
    dec sp
    call nz, $ffb2
    ld a, l
    db $db
    call z, $4b4d
    ld c, e
    ld c, [hl]
    adc $fc
    ret nc

    ldh [$a0], a
    db $e3
    ld l, [hl]
    pop af
    di
    sbc a
    inc e
    inc c
    rst $38
    ld [$9f0c], sp
    ld h, b
    sub c
    ld l, [hl]
    ccf
    ret nz

    rst $38
    jr nz, @-$1f

    ld a, [hl]
    add c
    or c
    rst $08
    di
    ld a, [hl]
    rst $38
    ld a, [de]
    inc c
    rst $38
    nop
    di
    inc c
    rrca
    ldh a, [rIE]
    ld l, b
    rst $30
    rst $10
    sbc b
    sbc h
    inc de
    inc de
    inc e
    rst $38
    ld l, [hl]
    ld sp, $00ff
    db $fd
    ld [bc], a
    inc bc
    db $fc
    rst $38
    cp $01
    ld bc, $fffe
    nop
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    rst $38
    nop
    add $39
    cp a
    ld b, b
    rst $38
    ld h, b
    sbc a
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_009_50be

    cp d
    ld b, l
    nop

jr_009_50be:
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_009_50d1

jr_009_50d1:
    rst $38
    rst $38
    sbc b
    ld h, a
    ld a, a
    add b
    call nz, Call_000_3f3b
    ret nz

    rst $38
    jp $7d3c


    add d
    add [hl]
    ld a, c
    nop
    rst $38
    rst $38
    ld sp, $d1d1
    ld sp, $d031
    ld hl, sp+$10
    rst $38
    inc l
    ret c

    add $3c
    ld a, e
    add [hl]
    ld bc, $ffff
    db $e4
    inc e
    inc c
    ld hl, sp-$68
    ldh a, [$e1]
    ld h, b
    rst $38
    inc bc
    ld bc, $0306
    inc e
    rrca
    ldh a, [rIE]
    rst $38
    ld h, c
    ld h, b
    ld h, e
    ld h, c
    ld [c], a
    ld h, e
    and h
    db $e3
    rst $38
    ld h, a
    and h
    and h
    ld h, a
    ld h, a
    and h
    jr @+$01

    rst $38
    sbc c
    jp hl


    ld e, c
    xor c
    ld l, c
    sbc b
    ld [$fff8], sp
    adc h
    ld a, b
    db $e4
    inc e
    ld l, [hl]
    sub h
    inc bc
    rst $38
    rst $28
    call z, $4c4c
    ret z

    rst $38
    pop hl
    call z, Call_009_6e48
    rst $38
    ld c, h
    ld l, e
    ld l, [hl]
    sub c

jr_009_513b:
    rst $38
    call z, $c404
    cp $ff
    ldh [$cc], a
    add h
    ld [$340c], sp
    inc e
    ld h, h
    rst $38
    ld a, h
    add e
    rst $38
    inc c
    inc b
    ld b, $04
    ld h, a
    rst $18
    ld b, [hl]
    ld h, l
    ld h, a
    ld h, a
    ld h, [hl]
    rst $38
    pop hl
    sbc c
    rst $38
    rst $38
    pop hl
    ld a, [hl]
    ld a, $11
    ld de, $1f1e
    db $10
    rst $38
    jr nc, @+$21

jr_009_5168:
    ld l, a
    jr nc, jr_009_513b

    ld l, a
    add b
    rst $38
    rst $38
    add c
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $3e
    pop bc
    rst $38
    db $e3
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38
    rst $38
    ld d, l
    xor d
    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    rst $38
    or b
    ld c, a
    rst $18
    jr nz, jr_009_51f0

    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, jr_009_5168

    rst $20
    jr jr_009_51c0

    db $e3
    di
    inc c
    rst $38
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $19
    rst $38
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    ld b, a
    rst $38
    rst $38
    nop
    adc h
    ld [hl], e
    di
    inc c

jr_009_51c0:
    ld e, $e1
    rst $38
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    db $e3
    inc e
    rst $38
    rst $38
    nop
    db $e3
    inc e
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_009_520a

    call Call_000_00ff
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $03ff
    db $fc
    db $fc
    inc bc
    and a
    ld e, b
    add hl, sp
    add $ff

jr_009_51f0:
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, @+$7a

    add a
    sbc a
    ld h, b
    nop
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop

jr_009_520a:
    nop

    db $ff, $0c, $f3, $fb, $04, $cc, $33, $37, $c8, $ff, $f0, $0f, $1f, $e0, $e1, $1e
    db $00, $ff, $ff, $c7, $38, $bf, $40, $70, $8f, $cf, $30, $ff, $78, $87, $8f, $70
    db $f3, $0c, $00, $ff, $ff, $3e, $c1, $c1, $3e, $7f, $80, $80, $7f, $ff, $7f, $80
    db $c0, $3f, $3f, $c0, $00, $ff, $ff, $3f, $c0, $e0, $1f, $1f, $e0, $f0, $0f, $ff
    db $8f, $70, $70, $8f, $df, $20, $00, $ff, $3f, $ce, $31, $39, $c6, $c7, $38, $d2
    db $e1, $be, $e1, $ff, $00, $ff, $e7, $18, $38, $c7, $8f, $70, $ff, $78, $87, $87
    db $78, $f8, $07, $07, $f8, $03, $00, $ff, $a0, $ff, $a0, $ff, $a0, $f9, $00, $00

    nop

    db $ff, $ff, $00, $3c, $c3, $c7, $38, $f9, $06, $ff, $0e, $f1, $f6, $09, $19, $e6
    db $e7, $18, $ff, $ff, $00, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30, $f6, $09
    db $39, $c6, $cf, $30, $ff, $ff, $00, $70, $8f, $cf, $30, $30, $cf, $ff, $ff, $01
    db $01, $ff, $ff, $02, $8f, $72, $ff, $ff, $00, $9a, $65, $73, $ff, $cc, $8c, $fb
    db $8c, $0c, $ff, $e3, $ff, $00, $c3, $3c, $ec, $ff, $f3, $32, $1d, $18, $0f, $0d
    db $06, $e7, $ff, $c2, $a3, $e2, $ff, $00, $90, $6f, $0f, $ff, $ff, $10, $f0, $70
    db $90, $d0, $30, $33, $ff, $d3, $f3, $12, $ff, $00, $0c, $f3, $8d, $ff, $fe, $d6
    db $73, $62, $33, $32, $1b, $9b, $f7, $0a, $8a, $8b, $a0, $e3, $38, $c7, $0f, $f1
    db $bf, $9b, $7d, $7d, $e7, $c6, $83, $a0, $e1, $cd, $ff, $33, $f3, $ce, $66, $3c
    db $3c, $18, $99, $f7, $08, $c3, $81, $a0, $e1, $b6, $c9, $4d, $72, $ff, $7b, $44
    db $f6, $49, $99, $e6, $77, $88, $fe, $a0, $e1, $fc, $03, $9b, $64, $6c, $93, $c7
    db $ff, $38, $f8, $07, $0f, $f0, $ff, $00, $9e, $ff, $61, $71, $8e, $8f, $70, $78
    db $87, $c7, $1f, $38, $3c, $c3, $e3, $1c, $00, $00

    nop

    db $ff, $1e, $e1, $f3, $0c, $0f, $f0, $f8, $07, $ff, $87, $78, $7c, $83, $c3, $3c
    db $00, $ff, $ff, $32, $cd, $fd, $02, $03, $fc, $fe, $01, $ff, $01, $fe, $ff, $00
    db $80, $7f, $00, $ff, $ff, $79, $87, $c6, $39, $bf, $40, $60, $9f, $ff, $9f, $60
    db $70, $8f, $cf, $30, $00, $ff, $f7, $8c, $0c, $8c, $ff, $e3, $88, $89, $88, $89
    db $ff, $89, $76, $ff, $e3, $c2, $06, $03, $1d, $ff, $0e, $f0, $ff, $8e, $f1, $f2
    db $8d, $1c, $ff, $e3, $00, $ff, $13, $f3, $b0, $50, $30, $ff, $d0, $53, $b3, $f2
    db $23, $a6, $63, $e5, $ff, $26, $18, $ff, $8b, $0b, $1b, $0a, $72, $ff, $3a, $d3
    db $f2, $13, $f3, $f2, $13, $d3, $ff, $32, $0c, $ff, $82, $03, $32, $33, $33, $ff
    db $12, $02, $03, $83, $01, $e1, $c1, $3d, $ff, $f9, $46, $bf, $66, $c3, $24, $e7
    db $27, $ff, $e4, $24, $e7, $a7, $64, $64, $a7, $e7, $ff, $24, $1a, $fd, $cc, $33
    db $3b, $c4, $c7, $ff, $38, $78, $87, $8f, $70, $f8, $07, $07, $7f, $f8, $00, $ff
    db $f3, $0c, $3c, $c3, $f0, $e3, $fb, $f3, $0c, $a0, $e1, $1e, $e1, $e1, $1e, $9f
    db $ff, $60, $60, $9f, $df, $20, $b0, $4f, $7f, $07, $80, $00, $ff, $00, $00

    nop

    db $ff, $ff, $00, $9e, $61, $61, $9e, $df, $20, $ff, $20, $df, $df, $20, $30, $cf
    db $cf, $30, $ff, $ff, $00, $7e, $81, $c1, $3f, $3e, $c2, $ff, $e3, $1e, $9d, $63
    db $67, $99, $f0, $0f, $ff, $ff, $00, $56, $a9, $c8, $f7, $6f, $31, $ff, $21, $3f
    db $3f, $12, $92, $1e, $9e, $8c, $ff, $9f, $60, $be, $41, $e8, $f7, $95, $1b, $ff
    db $33, $1e, $26, $3c, $7c, $28, $5c, $68, $ff, $ff, $00, $7f, $80, $c4, $fb, $b0
    db $2f, $ff, $23, $3c, $6e, $31, $dc, $63, $68, $37, $ff, $60, $9f, $80, $7f, $1d
    db $e3, $f7, $0a, $ff, $ba, $46, $06, $fc, $04, $fc, $0c, $f8, $ff, $06, $f9, $00
    db $ff, $b8, $ff, $ef, $44, $ff, $44, $07, $04, $07, $06, $03, $92, $13, $ff, $ff
    db $00, $fe, $01, $01, $fe, $0e, $f1, $ff, $c3, $3c, $10, $ef, $2d, $de, $3e, $f3
    db $ff, $f9, $06, $55, $aa, $e9, $17, $6b, $96, $ff, $b6, $4c, $dc, $24, $64, $9c
    db $9c, $78, $ff, $ff, $00, $ee, $11, $29, $d6, $d6, $a9, $ff, $d1, $ae, $a6, $d9
    db $d6, $af, $df, $b9, $fe, $a0, $e2, $3b, $3f, $c0, $c3, $3c, $7d, $82, $ff, $86
    db $79, $79, $86, $ff, $00, $c7, $38, $ff, $38, $c7, $e7, $18, $3c, $c3, $c3, $3c
    db $02, $56, $e0, $3e, $00, $00

    nop

    db $ff, $3c, $c3, $e3, $1c, $9e, $61, $71, $8e, $ff, $cf, $30, $32, $cd, $ff, $00
    db $00, $ff, $ff, $0e, $f1, $ff, $00, $01, $fe, $fe, $01, $ff, $03, $fc, $fc, $03
    db $a7, $58, $00, $ff, $ff, $cc, $8c, $40, $c0, $e1, $40, $21, $e1, $ff, $b3, $61
    db $d2, $33, $7e, $93, $0c, $ff, $ff, $e6, $5c, $9b, $e6, $b5, $cb, $2b, $d6, $ff
    db $0e, $fc, $90, $70, $11, $f0, $0f, $ff, $ff, $30, $1f, $19, $0e, $9b, $0c, $32
    db $1d, $ff, $66, $3f, $c9, $79, $bd, $c9, $46, $bf, $ff, $e8, $18, $88, $78, $f9
    db $10, $11, $f1, $ff, $f1, $11, $f9, $11, $8d, $79, $36, $cf, $ff, $b2, $93, $eb
    db $b9, $d9, $e9, $79, $89, $ff, $cd, $38, $24, $dc, $c4, $3c, $0b, $f7, $ff, $61
    db $c1, $5d, $c8, $d4, $9c, $1d, $98, $ff, $c1, $81, $e6, $c3, $bc, $e7, $18, $ff
    db $ff, $30, $e0, $e0, $c0, $cc, $88, $cc, $84, $ff, $60, $c0, $30, $e0, $5c, $b8
    db $47, $bf, $ff, $b1, $e0, $ed, $cc, $cb, $81, $c6, $87, $ff, $c6, $c3, $e1, $c1
    db $b9, $f1, $0e, $ff, $ff, $8e, $f1, $f3, $8c, $1c, $e3, $e6, $19, $ff, $3b, $c4
    db $cc, $33, $77, $88, $00, $ff, $ff, $7f, $80, $8c, $73, $f3, $0c, $1e, $e1, $ff
    db $e1, $1e, $7f, $80, $9c, $63, $00, $ff, $00, $00, $00, $ff, $ff, $00, $e0, $1f
    db $1f, $e0, $f0, $0f, $ff, $8f, $70, $70, $8f, $df, $20, $31, $ce, $ff, $ff, $00
    db $39, $c6, $c7, $38, $78, $87, $ff, $8f, $70, $f0, $0f, $1f, $e0, $e1, $1e, $ff
    db $f8, $07, $39, $c6, $83, $7c, $72, $8d, $ff, $83, $7c, $f2, $0d, $03, $fc, $f2
    db $0d, $ff, $e7, $18, $f7, $08, $c6, $3f, $2d, $d9, $ff, $99, $71, $33, $e1, $e6
    db $43, $63, $c1, $ff, $7a, $85, $3a, $c5, $12, $ed, $da, $25, $ff, $0c, $ff, $33
    db $d2, $b2, $73, $41, $c1, $ff, $cb, $34, $83, $7c, $93, $6c, $90, $6f, $ff, $40
    db $bf, $06, $ff, $1f, $f9, $31, $e0, $ff, $d3, $2c, $c0, $3f, $09, $f6, $09, $f6
    db $ff, $0c, $ff, $f2, $13, $32, $f3, $c1, $c1, $ff, $5e, $a1, $58, $a7, $51, $ae
    db $5b, $a4, $ff, $d8, $27, $90, $6f, $65, $fa, $91, $9f, $ff, $e7, $18, $ac, $53
    db $8f, $70, $68, $97, $ff, $89, $76, $cd, $3e, $9f, $72, $b2, $e3, $ff, $1f, $e0
    db $9b, $64, $cc, $33, $0f, $f0, $ff, $c8, $37, $0f, $f0, $c9, $36, $0e, $f1, $ff
    db $ff, $00, $bf, $40, $70, $8f, $cf, $30, $fe, $6e, $e1, $f3, $0c, $6e, $91, $ff
    db $00, $c1, $ff, $3e, $7f, $80, $80, $7f, $7f, $80, $c0, $1f, $3f, $3f, $c0, $e0
    db $1f, $00, $00

    nop

    db $ff, $ef, $10, $9a, $65, $76, $89, $cd, $32, $ff, $3b, $c4, $f6, $09, $19, $e6
    db $00, $ff, $ff, $3e, $c1, $c3, $3c, $fc, $03, $9b, $64, $ff, $6c, $93, $c7, $38
    db $f8, $07, $00, $ff, $ff, $63, $9c, $98, $67, $71, $8e, $8c, $73, $ff, $78, $87
    db $c6, $39, $3c, $c3, $00, $ff, $ff, $b1, $60, $18, $f0, $cc, $38, $d9, $30, $ff
    db $73, $e1, $86, $83, $8d, $86, $7a, $fd, $ff, $b2, $f3, $d2, $73, $d2, $73, $b3
    db $d1, $ff, $59, $b1, $e9, $18, $3c, $c8, $07, $ff, $ff, $60, $c0, $cc, $8c, $8c
    db $84, $c0, $80, $ff, $60, $c0, $b8, $f0, $8f, $fe, $01, $ff, $ff, $b2, $f3, $92
    db $f3, $f2, $93, $93, $f1, $ff, $f9, $51, $69, $58, $4c, $78, $87, $ff, $ff, $92
    db $9e, $92, $9e, $d2, $9e, $5e, $cc, $ff, $61, $c0, $b3, $e1, $9e, $f3, $2c, $df
    db $ff, $67, $42, $4c, $47, $c3, $42, $b3, $e2, $ff, $e6, $c3, $4c, $c7, $58, $cf
    db $33, $fc, $ff, $cb, $34, $1c, $e3, $97, $68, $39, $c6, $ff, $2e, $d1, $76, $89
    db $d9, $26, $80, $7f, $ff, $b3, $4c, $dc, $23, $67, $98, $b8, $47, $ff, $cf, $30
    db $f6, $09, $39, $c6, $00, $ff, $ff, $9f, $60, $70, $8f, $cf, $30, $31, $ce, $ff
    db $fe, $01, $03, $fc, $fc, $03, $00, $ff, $00, $00, $00, $ff, $ff, $00, $3b, $c4
    db $c7, $38, $78, $87, $ff, $8f, $70, $f8, $07, $07, $f8, $fc, $03, $ef, $ff, $00
    db $3c, $c3, $f0, $e3, $f3, $0c, $1c, $ff, $e3, $e7, $18, $ff, $00, $e1, $1e, $9f
    db $ff, $60, $60, $9f, $df, $20, $b0, $4f, $7e, $ff, $81, $c3, $3d, $f9, $06, $f1
    db $0e, $0f, $ff, $ff, $d9, $30, $b0, $60, $60, $c0, $cf, $ff, $86, $99, $0f, $ff
    db $00, $fd, $02, $03, $ff, $fc, $ae, $df, $d3, $71, $61, $30, $30, $ff, $10, $93
    db $13, $80, $7f, $c1, $3e, $9c, $ff, $63, $41, $be, $06, $ff, $a9, $d9, $59, $ff
    db $79, $60, $20, $01, $fe, $83, $7c, $3b, $ff, $c4, $f2, $0d, $83, $7c, $36, $f9
    db $5e, $f7, $c9, $cb, $cf, $a0, $e5, $8e, $71, $f0, $0f, $ff, $d6, $ef, $eb, $39
    db $9f, $60, $91, $6e, $ff, $3f, $c0, $20, $df, $7f, $80, $f3, $0f, $ff, $f7, $0c
    db $cc, $f8, $ff, $00, $f3, $0c, $ff, $0f, $f0, $f8, $07, $87, $78, $7c, $83, $ef
    db $c3, $bc, $be, $c1, $a0, $e3, $fe, $01, $01, $ff, $fe, $ff, $00, $80, $7f, $7f
    db $80, $ff, $ff, $00, $c6, $39, $bf, $40, $60, $9f, $9f, $7f, $60, $70, $8f, $cf
    db $30, $ba, $45, $00, $00

    nop

    db $ff, $93, $6c, $ee, $11, $a9, $56, $56, $a9, $ff, $d1, $2e, $26, $d9, $df, $20
    db $00, $ff, $ff, $98, $67, $7f, $80, $c4, $3b, $3f, $c0, $ff, $c3, $3c, $7d, $82
    db $86, $79, $00, $ff, $ff, $3d, $c3, $c7, $39, $39, $c7, $e7, $19, $ff, $3c, $c3
    db $c3, $3c, $7e, $81, $00, $ff, $ff, $30, $1f, $2e, $31, $31, $1f, $9f, $0e, $ff
    db $c0, $80, $60, $c0, $33, $e1, $1e, $ff, $ff, $9b, $92, $98, $98, $99, $18, $3b
    db $19, $ff, $6a, $3b, $da, $6b, $bb, $ca, $04, $ff, $ff, $79, $39, $d9, $69, $89
    db $f9, $09, $f8, $ff, $8c, $78, $e4, $1c, $6e, $94, $03, $ff, $ff, $4e, $cc, $cd
    db $4c, $4d, $c9, $c9, $c9, $ff, $8c, $c8, $ce, $4c, $6b, $4e, $b1, $ff, $ff, $18
    db $18, $d8, $88, $49, $c9, $d9, $89, $ff, $11, $19, $69, $39, $c9, $79, $86, $ff
    db $ff, $79, $30, $33, $11, $d0, $90, $cc, $58, $ff, $59, $d0, $d3, $51, $56, $d3
    db $2c, $ff, $ff, $e1, $9e, $1e, $e1, $e1, $9e, $df, $a0, $ff, $a0, $df, $5f, $a0
    db $30, $cf, $00, $ff, $ff, $81, $7e, $7e, $81, $c1, $3e, $3e, $c1, $ff, $e3, $1c
    db $9c, $63, $77, $88, $00, $ff, $ff, $55, $aa, $56, $a9, $e9, $16, $6f, $90, $ff
    db $b0, $4f, $df, $20, $61, $9e, $00, $ff, $00, $00, $00, $ff, $ff, $00, $99, $66
    db $76, $89, $cf, $30, $ff, $38, $c7, $e7, $18, $1c, $e3, $f3, $0c, $ff, $ff, $00
    db $f3, $0c, $1c, $e3, $e6, $19, $ff, $3b, $c4, $cc, $33, $77, $88, $b8, $47, $ff
    db $ff, $00, $8c, $73, $f3, $0c, $1e, $e1, $ff, $e1, $1e, $7f, $80, $9c, $63, $e3
    db $1c, $ff, $ff, $00, $e3, $1c, $9e, $61, $71, $8e, $ff, $cf, $30, $32, $cd, $ff
    db $00, $c0, $3f, $ff, $ff, $00, $ff, $00, $01, $fe, $fe, $01, $ff, $03, $fc, $fc
    db $03, $a7, $58, $39, $c6, $ff, $ff, $00, $33, $cc, $dc, $23, $63, $9c, $ff, $be
    db $41, $c7, $38, $78, $87, $9f, $60, $00, $a0, $ff, $a0, $ff, $a0, $f9, $00, $00

    nop

    db $75, $00, $ff, $e1, $01, $ff, $e0, $03, $02, $03, $fd, $e0, $ff, $06, $05, $06
    db $07, $04, $07, $04, $05, $ff, $06, $02, $07, $01, $03, $00, $01, $00, $ff, $00
    db $6e, $ff, $95, $fb, $ef, $91, $7f, $ff, $81, $fe, $01, $df, $24, $f7, $2c, $ed
    db $ff, $3e, $bf, $7e, $fb, $7e, $e2, $63, $e1, $7f, $63, $e1, $61, $e0, $e1, $c0
    db $e0, $c2, $e2, $ff, $80, $80, $80, $83, $87, $8c, $df, $d7, $ff, $f8, $ef, $f0
    db $5f, $e6, $fb, $46, $df, $ff, $60, $af, $70, $fb, $3c, $f7, $3f, $f3, $e7, $f7
    db $60, $f0, $a2, $e2, $9d, $e0, $18, $bc, $b7, $df, $ef, $7e, $e5, $ff, $64, $fe
    db $e3, $bf, $64, $ff, $ff, $24, $6f, $b4, $ff, $ff, $6d, $ff, $fc, $e0, $e5, $ba
    db $e1, $e0, $f0, $d0, $38, $e8, $1d, $f7, $dd, $ed, $fd, $fe, $e2, $fc, $ed, $dc
    db $fc, $ff, $88, $dc, $00, $00, $1b, $3f, $25, $3e, $ff, $3b, $64, $5f, $60, $7f
    db $c0, $b7, $c9, $ff, $fd, $8b, $fb, $8f, $6f, $9f, $fe, $1f, $ff, $f8, $18, $78
    db $98, $b8, $d8, $78, $f8, $fb, $30, $78, $83, $e0, $c0, $40, $e0, $e0, $60, $ff
    db $c0, $60, $a0, $71, $f3, $37, $e5, $3e, $ff, $5b, $bd, $f6, $99, $f7, $98, $af
    db $d8, $ff, $7b, $cc, $7e, $4f, $3d, $7f, $18, $3d, $fe, $a0, $e7, $d8, $fc, $27
    db $ff, $de, $31, $df, $ff, $b0, $ae, $77, $df, $e7, $5f, $e7, $ff, $7f, $27, $ff
    db $27, $fe, $ff, $ec, $fe, $80, $e7, $ff, $60, $f0, $71, $9b, $bb, $da, $7b, $da
    db $ff, $f3, $5a, $ed, $5e, $de, $61, $ed, $73, $3f, $f3, $7f, $ef, $ff, $46, $ef
    db $60, $e8, $96, $e0, $ff, $c0, $60, $e0, $60, $60, $e0, $e0, $e0, $ff, $c0, $e0
    db $c0, $c0, $80, $c0, $00, $80, $00, $e2, $e1, $00, $00

    nop
    ld hl, $5af6
    ld de, $0201
    ld b, $00
    call Call_009_7ad5
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$cab9]
    call Call_009_47e0
    bit 7, a
    jr nz, jr_009_5aeb

    ld [$cab9], a

jr_009_5aeb:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af

jr_009_5af5:
    ret


    jr nz, jr_009_5b53

    ld e, a
    ld h, d
    sub c
    ld e, e
    ret nc

    ld h, d
    ld h, l
    ld e, h
    sbc e
    ld h, e
    ld [hl], $5d
    ld [hl], c
    ld h, h
    ld [$485e], sp
    ld h, l
    jp nc, $235e

    ld h, [hl]
    xor e
    ld e, a
    db $fc
    ld h, [hl]
    add d
    ld h, b
    db $d3
    ld h, a
    ld b, d
    ld h, c
    sub e
    ld l, b
    jp hl


    ld h, c
    ld a, [hl-]
    ld l, c
    or b
    ld l, c
    rst $38
    inc c
    di
    ei
    inc b
    call z, Call_000_3733
    ret z

    rst $38
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $00
    rst $38
    rst $38
    rst $00
    jr c, jr_009_5af5

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    di
    inc c

jr_009_5b42:
    nop
    rst $38
    rst $38
    ld a, $c1
    pop bc
    ld a, $7f
    add b
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf

jr_009_5b53:
    ret nz

    nop
    rst $38
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_5b67

jr_009_5b67:
    rst $38
    ccf
    adc $31
    add hl, sp
    add $c7
    jr c, jr_009_5b42

    pop hl
    cp [hl]
    pop hl
    rst $38
    nop
    rst $38
    rst $20
    jr jr_009_5bb1

    rst $00
    adc a
    ld [hl], b
    rst $38
    ld a, b
    add a
    add a
    ld a, b
    ld hl, sp+$07
    rlca
    ld hl, sp+$03
    nop
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    inc a
    jp Jump_000_38c7


    ld sp, hl
    ld b, $ff
    ld c, $f1
    or $09
    add hl, de
    and $e7
    jr @+$01

    ld a, c
    cp $8e
    add a
    jp $4081


    ret nz

    rst $38
    ret nz

    ld b, b
    add $44

jr_009_5bb1:
    ld b, a
    add $c5
    ld b, a
    rst $38
    rst $38
    nop
    ld [hl], b
    adc a
    adc a
    ldh a, [$d6]
    ld l, a
    rst $38
    ld l, e

jr_009_5bc0:
    add hl, sp
    ld sp, $1919
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    nop
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    inc l
    rst $18
    cp e
    ld [hl], e
    ld h, e
    jp $83c2


    rst $38
    rst $38
    nop
    jp $d83c


    ccf
    and [hl]
    ld h, l
    rst $30
    and $e7
    ld bc, $e0ff
    and $e7
    rst $38
    nop
    rst $38
    sub b
    ld l, a
    nop
    rst $38
    rst $08
    ldh a, [$79]
    daa
    rst $38
    daa
    ld a, $2c
    jr c, jr_009_5c33

    jr nc, @+$01

    nop
    rst $38
    inc c
    di
    ld bc, $f0fe
    rrca
    adc [hl]
    pop af
    rst $18
    adc $7f
    ld [hl], e
    ld sp, $f020
    ldh [$dc], a
    inc hl
    rst $38
    ld h, a
    sbc b
    jr c, @-$37

    dec c
    di
    add e
    ld a, [hl]
    rst $28
    add $fc
    ld l, h
    jr c, jr_009_5bc0

    pop hl
    rst $08
    jr nc, jr_009_5c85

    rst $18
    cp $f3
    sbc a
    inc e
    inc c
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    sub [hl]
    ld l, a
    ld a, e
    adc c

jr_009_5c33:
    ret z

    jr c, jr_009_5ca2

    ld hl, sp-$01
    rst $30
    sbc [hl]
    sbc c
    rrca
    ld c, $09
    or $0f
    rst $38
    db $dd
    add hl, sp
    or c
    pop hl
    db $e3
    ld b, c
    ld b, [hl]
    ld b, e
    rst $38
    dec c
    ld b, $98
    rrca
    sub a
    sbc b
    rst $38
    nop
    rst $38
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    adc a
    ld [hl], b
    ld a, b
    add a
    ccf
    rst $00
    jr c, jr_009_5c9b

    jp $1ce3


    nop
    nop
    nop
    rst $38
    ld e, $e1
    di
    inc c
    rrca
    ldh a, [$f8]
    rlca
    rst $38
    add a
    ld a, b
    ld a, h
    add e
    jp Jump_000_003c


    rst $38
    rst $38
    ld b, l
    rst $00

jr_009_5c7a:
    rst $00
    ld b, [hl]
    ld b, [hl]
    call nz, $40c0
    rst $38
    ld b, b
    ret nz

    pop bc
    ld b, b

jr_009_5c85:
    rst $00
    ld b, e
    inc a
    rst $38
    rst $38
    add hl, bc
    add hl, bc
    add hl, de
    add hl, bc
    ld sp, $6919
    add hl, sp
    rst $38
    reti


    ld l, c
    cp l
    ret


    ld b, l
    cp l
    ld [bc], a
    rst $38

jr_009_5c9b:
    rst $38
    sbc h
    adc a
    sub d
    dec e
    inc d
    dec de

jr_009_5ca2:
    adc [hl]
    rrca
    rst $38
    pop bc
    add c
    ld h, e
    pop bc
    ld a, $f3
    inc c
    rst $38
    rst $38
    daa
    push hl
    ld h, l
    and a
    rst $20
    inc hl
    ld [c], a
    inc hl
    rst $38
    or e
    ld h, c
    pop de
    ld sp, $f119
    ld c, $ff
    rst $28
    inc sp
    jr nc, @+$35

    inc hl
    rst $38
    ldh [rNR43], a
    jr nc, jr_009_5ce9

    rst $38
    cp b
    jr nc, jr_009_5c7a

    cp c
    ld b, [hl]
    rst $38
    jr nc, jr_009_5ce2

    rst $38
    db $10
    db $10
    ld de, $3111
    ld de, $3121
    rst $10
    pop de

jr_009_5cdd:
    ld [hl], c
    sub c
    ldh [$e0], a
    add hl, sp

jr_009_5ce2:
    ld a, [c]
    ldh [$91], a
    db $10
    rst $38
    sub b
    sub b

jr_009_5ce9:
    sbc h
    sbc b
    sub a
    sbc [hl]
    sub c
    sbc a
    ld [hl], a
    ld h, b
    rst $38
    adc h
    rst $38
    ld [c], a
    ld [$040c], sp
    rst $38
    ldh [rIE], a
    db $e4
    call nz, $ff3b
    ld [hl], h
    dec sp
    db $db
    ld h, h
    rst $38
    add a
    ld hl, sp-$08
    add a
    adc a
    ldh a, [$f8]
    add a
    rst $38
    add a
    ld hl, sp+$00
    rst $38
    sub e
    sbc h
    sbc h
    sub e
    cp a
    sub a
    sbc b
    sbc b
    sub a
    sbc a
    sub b
    or $e1
    ld h, b
    rst $38
    rst $38
    ld e, $e1
    pop hl
    ld e, $9f
    ld h, b
    ld h, b
    rst $38
    sbc a
    rst $18
    jr nz, jr_009_5cdd

    ld c, a
    ld a, a
    add b
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld h, b
    sbc a
    db $dd
    inc hl
    rst $38
    inc hl
    sbc $de
    ld [hl+], a
    inc sp
    adc $cd
    inc sp
    rst $38
    cp e
    ld a, h
    ld b, [hl]
    push bc
    call $9a86
    dec c
    rst $38
    inc sp
    inc e
    inc [hl]
    dec sp
    dec e
    ld c, $86
    inc bc
    rst $38
    rst $38
    nop
    ld d, [hl]
    xor c
    jp hl


    ld d, $66
    sbc a
    rst $38
    sbc a
    ld a, c
    or c
    ld h, b
    ld h, b
    ret nz

    ret nz

    add b
    rst $38
    sbc a
    ld h, b
    cp [hl]
    ld b, c
    add hl, hl
    sub $36
    ret


    rst $38
    ld [hl], c
    adc [hl]
    cp d
    db $fd
    add $c5
    push hl
    rst $00
    rst $38
    rst $38
    nop
    ld a, a
    add b
    call nz, Call_000_303b
    rst $08
    rst $38
    ld h, e
    db $fc
    or [hl]
    sbc c
    adc l
    adc e

jr_009_5d8e:
    sbc e
    ld c, $ff
    ld h, b
    sbc a
    add b
    ld a, a
    rra
    ldh [$f7], a
    ld [$74ff], sp
    ei
    ret c

    adc a
    adc h
    rlca
    rlca
    inc b
    rst $38
    inc a
    rst $38
    ld b, a
    jp $40e1


    and b
    ld h, b
    rst $38
    jr nz, jr_009_5d8e

    inc hl
    ld [c], a
    inc hl
    db $e3
    ld [c], a
    inc hl
    rst $38
    rst $38
    nop
    ld a, [hl]
    add c
    pop bc
    cp $6e
    ld sp, $33ff
    inc e
    jr jr_009_5dd1

    adc l
    rlca
    add a
    add [hl]
    rst $38
    ld sp, hl
    ld b, $55
    xor d
    add sp, $17
    ld e, b
    cp a
    ld a, a
    ld a, h

jr_009_5dd1:
    rst $20
    rst $00
    add e
    add e
    inc bc
    ld [bc], a
    sub b
    ldh [rIE], a
    xor $11
    sbc c
    ld a, [hl]
    and $25
    and $e7
    db $ed
    ld bc, $e0ff
    and $e7
    and b
    db $e3
    ld [hl], $cf
    rst $18
    rst $30
    add hl, sp
    ld sp, $80e0
    pop hl
    rst $38
    nop
    rst $00
    jr c, @+$01

    jr c, @-$37

    rst $20
    jr jr_009_5e39

    jp $bcc3


    rrca
    cp $81
    pop bc
    cp [hl]
    nop
    nop
    nop
    rst $38
    inc a
    jp $1ce3


    sbc [hl]
    ld h, c
    ld [hl], b
    adc a
    rst $38
    swap a
    inc [hl]
    call z, $04fc
    inc bc
    rst $38
    rst $38
    jp Jump_009_6381


    pop hl
    ld h, [hl]
    jp $87cd


    rst $38
    sbc d
    dec c
    inc [hl]
    dec de
    daa
    jr c, @-$3e

    rst $38
    rst $38
    sbc b
    ld [$1818], sp
    jr jr_009_5e3b

    nop
    nop
    rst $38
    ret nz

    add b
    ld [hl], b

jr_009_5e39:
    ldh [$5e], a

jr_009_5e3b:
    cp h
    inc bc
    rst $38
    rst $38
    and l
    db $e3
    di
    and d
    sbc d
    ld a, [c]
    cp b
    ret nc

    rst $38
    ld c, h
    ld a, b
    ld c, h
    ld a, b
    ld b, l
    ld a, h
    add e
    rst $38
    rst $38
    ld d, $1c
    inc a
    jr jr_009_5e7e

    jr c, jr_009_5ed4

    jr z, @+$01

    ld d, h
    ld l, h
    xor $54
    or e
    rst $08
    ld b, d
    cp l

jr_009_5e62:
    rst $38
    ld c, a
    ld b, h
    jr jr_009_5e76

    ld [hl], a
    jr c, jr_009_5ed8

    ld [hl], c
    rst $38
    ld sp, $1f1e
    ld [$0f88], sp
    ld a, [c]
    db $fd
    rst $38
    ld [hl+], a

jr_009_5e76:
    db $e3
    db $e3
    inc hl
    and e
    ld h, d
    ld h, b
    and b
    rst $38

jr_009_5e7e:
    ldh [rNR41], a
    jr nz, jr_009_5e62

    db $e3
    ld hl, $ff1e
    rst $38
    add [hl]
    add h
    adc h
    inc b
    jr jr_009_5e99

    inc [hl]
    inc e
    rst $38
    ld h, e
    ld a, $dd
    ld h, e
    add [hl]
    ld sp, hl
    db $10
    rst $28
    rst $38

jr_009_5e99:
    ld h, d
    inc hl
    ld h, d
    ld h, e
    ld h, d
    inc hl
    ld [bc], a
    inc bc
    rst $38
    ld bc, $c101
    add c
    ld a, c
    pop af
    ld c, [hl]
    cp a
    rst $38
    ld h, a
    and l
    ld h, l
    and a
    rst $20
    inc hl
    ld [c], a
    inc hl
    ld a, a
    or e
    ld h, c
    pop de
    ld sp, $f119
    ld c, $80
    xor $ff
    rst $38
    add b
    adc h
    di
    di
    adc h
    sbc [hl]
    pop hl
    rst $38
    ld h, c
    ld e, [hl]
    ld a, a
    ld b, b
    ld e, h
    ld h, e
    add b
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38

jr_009_5ed4:
    nop
    ldh [$1f], a
    rra

jr_009_5ed8:
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_5f14

    adc $ff
    rst $38
    nop
    add hl, sp
    add $c7
    jr c, jr_009_5f64

    add a
    rst $38
    adc a
    ld [hl], b
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $ff
    ld hl, sp+$07
    add hl, sp
    add $83
    ld a, h
    ld [hl], d
    adc l
    rst $38
    add e
    ld a, h
    ld a, [c]

jr_009_5f03:
    dec c
    inc bc
    db $fc
    ld a, [c]
    dec c
    rst $38
    rst $20
    jr jr_009_5f03

    ld [$3bc4], sp
    scf
    ret z

    rst $38

jr_009_5f12:
    sub b
    ld l, a

jr_009_5f14:
    inc bc
    db $fc
    db $e3
    inc e
    nop
    rst $38
    rst $38
    ld a, d
    add l
    ld a, [hl-]
    push bc

jr_009_5f1f:
    ld [de], a
    db $ed
    jp c, $ff25

    ld a, [de]
    push hl
    add hl, sp
    add $a1
    ld e, [hl]
    ld b, $f9
    rst $38
    swap h
    add e
    ld a, h
    sub e
    ld l, h
    sub b
    ld l, a
    rst $38
    ld b, b
    cp a
    rlca
    ld hl, sp+$1f
    ldh [$30], a
    rst $08
    rst $38
    db $d3
    inc l
    ret nz

    ccf
    add hl, bc
    or $09
    or $ff
    ld [bc], a
    db $fd
    ldh [$1f], a
    ret c

    daa
    jr nc, jr_009_5f1f

    rst $38
    ld e, [hl]
    and c
    ld e, b
    and a
    ld d, c
    xor [hl]
    ld e, e
    and h
    rst $38
    ret c

    daa
    sub b
    ld l, a
    and l
    ld e, d
    ld h, b
    sbc a
    rst $38
    rst $20

jr_009_5f64:
    jr jr_009_5f12

    ld d, e
    adc a
    ld [hl], b
    ld l, b
    sub a
    rst $38
    adc c
    db $76
    jp $873c


    ld a, b
    add b
    ld a, a
    rst $38
    rra
    ldh [$9b], a
    ld h, h
    call z, Call_000_0f33
    ldh a, [rIE]
    ret z

    scf
    rrca
    ldh a, [$c9]
    ld [hl], $0e
    pop af
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    ld [hl], b
    adc a
    rst $08

jr_009_5f8e:
    jr nc, jr_009_5f8e

    ld l, [hl]
    pop hl
    di
    inc c
    ld l, [hl]
    sub c
    rst $38
    nop
    pop bc
    rst $38
    ld a, $7f
    add b
    add b
    ld a, a
    ld a, a
    add b
    ret nz

    rra
    ccf
    ccf
    ret nz

    ldh [$1f], a
    nop
    nop
    nop
    rst $38
    rst $28
    db $10
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    dec sp
    call nz, Call_000_09f6
    add hl, de
    and $00
    rst $38
    rst $38
    ld a, $c1
    jp $fc3c


    inc bc

jr_009_5fc4:
    sbc e
    ld h, h
    rst $38
    ld l, h
    sub e
    rst $00

jr_009_5fca:
    jr c, jr_009_5fc4

    rlca
    nop
    rst $38
    rst $38
    ld h, e
    sbc h
    sbc b
    ld h, a
    ld [hl], c
    adc [hl]
    adc h
    ld [hl], e
    rst $38
    ld a, b
    add a
    add $39
    inc a
    jp $ff00


    rst $38
    ret nc

    cpl
    add hl, sp
    add $c3
    inc a
    di
    inc c
    rst $38
    ld [bc], a
    db $fd
    ld [hl-], a
    call $fc03
    ld b, d
    cp l
    rst $38
    ld b, [hl]
    cp c
    ret nz

    ccf
    ld b, b
    cp a
    and b
    ld e, a
    rst $38
    ret z

    scf
    ldh a, [rIF]
    jr c, jr_009_5fca

    nop
    rst $38
    rst $38

jr_009_6006:
    ld a, a
    add b
    ld [hl], b
    adc a
    ld c, a
    or b
    ld [hl], c
    adc [hl]
    rst $38
    ld a, $c1
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ei
    xor $11
    and b
    pop hl
    call z, Call_000_3833
    rst $00
    ldh a, [$fd]
    rrca
    ldh a, [$e1]
    ld h, d
    sbc l
    ld b, e
    cp h
    ld [bc], a
    db $fd
    rst $38
    rlca
    ld hl, sp+$1c
    db $e3
    rla
    add sp, $18
    rst $20
    rst $38
    jr nc, jr_009_6006

    rrca
    ldh a, [$9e]
    ld h, c
    ld d, c
    xor [hl]
    rst $38
    adc a
    ld [hl], b
    ld c, b
    or a
    call z, Call_000_0033
    rst $38
    rst $38
    inc bc
    db $fc
    swap h
    inc e
    db $e3
    sub a
    ld l, b
    rst $38
    add hl, sp
    add $2e
    pop de
    db $76
    adc c
    reti


    ld h, $ff
    add b
    ld a, a
    or e
    ld c, h

jr_009_605d:
    call c, Call_009_6723
    sbc b
    rst $38
    cp b
    ld b, a
    rst $08
    jr nc, jr_009_605d

    add hl, bc
    add hl, sp
    add $ff
    nop
    rst $38
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld sp, $fece
    ld bc, $fc03
    db $fc
    inc bc
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    inc bc
    rst $28
    rst $38
    nop
    inc a
    jp $e3f0


    di
    inc c
    inc e
    rst $38
    db $e3
    rst $20
    jr @+$01

    nop
    pop hl
    ld e, $9f
    rst $38
    ld h, b
    ld h, b
    sbc a
    rst $18
    jr nz, @-$4e

    ld c, a
    ld a, a
    rst $38
    add b
    jp $f93c


    ld b, $f1
    ld c, $0c
    rst $38
    di
    ld hl, sp+$07
    add [hl]
    ld a, c
    ld a, h
    add e
    jp Jump_000_3cff


    ld a, $c1
    rst $38
    nop
    db $fd
    ld [bc], a
    inc bc
    rst $38
    db $fc
    cp $01
    ld bc, $3ffe
    ret nz

    add b
    rst $38
    ld a, a
    ld b, e
    cp h
    add b
    ld a, a
    pop bc
    ld a, $9c
    rst $38
    ld h, e
    ld b, c
    cp [hl]
    add e
    ld a, h
    ld h, b
    sbc a
    add $ff
    add hl, sp
    and [hl]
    ld e, c
    ld bc, $83fe
    ld a, h
    dec sp

jr_009_60ef:
    rst $38

Jump_009_60f0:
    call nz, Call_000_0df2
    add e
    ld a, h
    ld b, $f9
    ld h, a

jr_009_60f8:
    rst $30
    sbc b
    db $e4
    dec de
    and b
    push hl
    adc [hl]
    ld [hl], c
    ldh a, [rIF]
    rst $38
    ld de, $c3ee
    inc a
    sbc a
    ld h, b
    sub c
    ld l, [hl]
    rst $38
    ccf
    ret nz

    jr nz, jr_009_60ef

    ld a, a
    add b
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    jp $ff3c


    nop
    di
    inc c
    cp a
    rrca
    ldh a, [$f8]
    rlca
    add a
    ld a, b
    and b
    db $ed
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    add $ff
    add hl, sp
    cp a
    ld b, b

jr_009_6134:
    ld h, b
    sbc a
    sbc a
    ld h, b
    ld [hl], b
    rra
    adc a
    rst $08
    jr nc, jr_009_60f8

    ld b, l
    nop
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_009_6153

jr_009_6153:
    rst $38
    rst $38
    sbc b
    ld h, a
    ld a, a
    add b
    call nz, Call_000_3f3b
    ret nz

    rst $38
    jp $7d3c


    add d
    add [hl]

jr_009_6163:
    ld a, c
    nop
    rst $38
    rst $38
    inc a
    jp Jump_000_38c7


    jr c, jr_009_6134

    rst $20
    jr @+$01

    inc a
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    pop hl
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_009_6163

    rst $18
    jr nz, jr_009_61b7

    rst $08
    nop
    rst $38
    rst $38
    sub c
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    ld a, $c1
    rst $38
    db $e3
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38

jr_009_619c:
    rst $38
    ld d, l
    xor d
    ld d, d
    xor l
    ld l, b
    sub a
    rrca
    ldh a, [rIE]
    add b
    ld a, a
    ldh [$1f], a
    ld l, b
    sub a
    inc bc
    db $fc
    rst $38
    adc a
    ld [hl], b
    adc $31
    jr jr_009_619c

    ldh a, [rIF]

jr_009_61b7:
    rst $38
    pop bc
    ld a, $07
    ld hl, sp+$1f
    ldh [$f0], a
    rrca
    rst $38
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    ld h, h
    sbc e
    rst $38
    nop
    db $fc
    and b
    rst $38
    and b
    db $e3
    add c
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $fe
    and b
    jp hl


    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    or b
    ld a, a
    ld c, a
    rst $18
    jr nz, jr_009_6244

    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, @-$37

    rst $20
    jr jr_009_6214

    db $e3
    di
    inc c
    rst $38
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $19
    rst $38
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    ld b, a
    rst $38
    rst $38
    nop
    adc h
    ld [hl], e
    di
    inc c

jr_009_6214:
    ld e, $e1
    rst $38
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    db $e3
    inc e
    rst $38
    rst $38
    nop
    db $e3
    inc e
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_009_625e

    call Call_000_00ff
    ret nz

    ccf
    rst $38
    rst $38
    nop

jr_009_6234:
    rst $38
    nop
    ld bc, $fefe
    ld bc, $03ff
    db $fc
    db $fc
    inc bc
    and a
    ld e, b
    add hl, sp
    add $ff

jr_009_6244:
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, jr_009_62ca

    add a
    sbc a
    ld h, b
    nop
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop

jr_009_625e:
    nop
    rst $38
    inc c
    di
    ei
    inc b
    call z, Call_000_3733
    ret z

    rst $38
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $00
    rst $38
    rst $38
    rst $00
    jr c, jr_009_6234

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    di
    inc c

jr_009_6281:
    nop
    rst $38
    rst $38
    ld a, $c1
    pop bc
    ld a, $7f
    add b
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_62a6

jr_009_62a6:
    rst $38
    ccf
    adc $31
    add hl, sp
    add $c7
    jr c, jr_009_6281

    pop hl
    cp [hl]
    pop hl
    rst $38
    nop
    rst $38
    rst $20
    jr jr_009_62f0

    rst $00
    adc a
    ld [hl], b
    rst $38
    ld a, b
    add a
    add a
    ld a, b
    ld hl, sp+$07
    rlca
    ld hl, sp+$03
    nop
    rst $38
    and b
    rst $38
    and b

jr_009_62ca:
    rst $38
    and b
    ld sp, hl
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    inc a
    jp Jump_000_38c7


    ld sp, hl
    ld b, $ff
    ld c, $f1
    or $09
    add hl, de
    and $e7
    jr @+$01

    rst $38
    nop
    call c, Call_009_6723
    sbc a
    cp b
    ld c, b
    rst $38
    call z, $f438
    inc c

jr_009_62f0:
    inc a
    call nz, Call_000_34cc
    rst $38
    rst $38
    nop
    ld [hl], b
    adc a
    rst $08
    ldh a, [$61]
    ld a, $ff
    ld [hl], $19
    ld a, [de]
    dec c
    call $e687
    jp $ffff


    nop
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    dec sp
    call nz, $e9d6
    ld a, e
    daa
    ld l, $3c
    rst $38
    rst $38
    nop
    jp $fc3c


    inc bc
    sbc d
    ld h, l
    rst $38
    ld l, h
    sbc a
    db $d3
    ld [hl-], a
    or d
    di
    ld b, c
    ld b, c
    rst $38
    rst $38
    nop
    sub b
    ld l, a
    nop
    rst $38
    rrca
    ldh a, [rIE]
    ld a, b
    add a
    ld h, a
    ld hl, sp-$47
    sub a
    sub a
    sbc [hl]
    rst $38
    rst $38
    nop
    inc c
    di
    ld bc, $f0fe
    rrca
    sbc $a0
    pop hl
    adc l
    cp $d7
    ld [hl], e
    and b
    ld [c], a
    sbc b
    jr c, @+$01

    rst $00
    rrca
    ldh a, [$85]
    ld a, e
    daa
    sbc $8c
    db $fd
    ld hl, sp-$60
    ld [c], a
    jr nc, jr_009_6390

    adc $fe
    ld bc, $df83
    db $fc
    call Call_009_777f
    ld [hl-], a
    and b
    db $e3
    cp h
    ld [hl], e
    rst $38
    ld e, c
    rst $08
    rst $08
    ld b, [hl]
    and [hl]
    jp nz, Jump_009_60f0

    cp $a0
    pop hl
    ld l, h
    di
    db $db
    sub h
    sbc h
    inc de
    scf
    rst $38

Jump_009_6381:
    jr jr_009_63eb

    scf
    rst $08
    ld [hl], b
    rst $38
    nop
    sbc [hl]
    rst $38
    ld h, c
    ld [hl], c

jr_009_638c:
    adc [hl]
    adc a
    ld [hl], b
    ld a, b

jr_009_6390:
    add a
    rst $00
    rra
    jr c, @+$3e

    jp $1ce3


    nop
    nop
    nop
    rst $38
    ld e, $e1
    di
    inc c
    rrca
    ldh a, [$f8]
    rlca
    rst $38
    add a
    ld a, b
    ld a, h
    add e
    jp Jump_000_003c


    rst $38
    cp a
    inc [hl]
    call z, $04fc
    inc b
    db $fc
    db $fc
    db $e3
    add h
    rst $38
    ld a, h
    inc bc
    rst $38
    di
    and c
    pop af
    and c
    db $e3
    rst $38
    pop bc
    add $83
    dec c
    rlca
    add hl, de
    rrca
    ld [hl], a
    rst $38
    add hl, sp
    ret nz

    rst $38
    jr c, jr_009_63ff

    inc sp
    ld sp, $ff36
    inc hl
    inc sp
    ld hl, $3038
    inc l

jr_009_63d9:
    jr c, @-$57

    rst $38
    ld a, $d9
    rst $20
    ld [hl], d
    ld [hl], e
    ld a, [c]
    sub e
    jp nc, Jump_000_33ff

    or e
    pop de
    ld e, c
    ld [hl], c
    ld l, c

jr_009_63eb:
    ld e, b
    call c, Call_009_68ff
    add a
    rst $38
    sbc h
    sbc b
    sbc e
    sbc c
    sbc e
    rst $38
    sub d
    sub e
    sub e
    jr jr_009_638c

    sbc h
    sbc b
    rst $10

jr_009_63ff:
    rst $38
    sbc h
    ld l, e
    rst $30
    jr nc, jr_009_6435

    or b
    db $10
    sub e
    rst $38
    sub e
    or d
    inc de
    inc hl
    ld [hl-], a
    jp nc, $9373

    rst $38
    ld a, [c]
    inc c
    rst $38
    ret c

    ld [hl], b
    ld [hl], e

jr_009_6418:
    inc hl
    and e
    rst $38
    ld hl, $a0b0
    cp b
    or b
    xor [hl]
    cp h
    and e
    rst $28
    cp a
    ld b, b
    rst $38
    jr nc, jr_009_63d9

jr_009_6429:
    ldh [$32], a
    inc sp
    ld [hl+], a
    rst $38
    inc sp
    inc sp
    ld [de], a
    ld [de], a
    inc de
    di
    sub d

jr_009_6435:
    ld l, h
    rst $38
    rst $38
    ld e, c
    ld [hl], b
    xor c
    reti


    ret


    add hl, sp
    ld a, c
    rst $38
    adc c
    adc c
    ld a, c
    ld sp, hl
    add hl, bc
    add hl, bc
    ld sp, hl
    ld b, $ff
    rst $38
    or e
    call z, $c33c
    rst $00
    jr c, jr_009_64c9

    rst $38
    add a
    adc a
    ld [hl], b
    di
    inc c
    inc e
    db $e3
    nop
    rst $38
    rst $38

jr_009_645c:
    ld e, $e1
    pop hl
    ld e, $9f
    ld h, b
    ld h, b
    rst $38
    sbc a
    rst $18
    jr nz, jr_009_6418

    ld c, a
    ld a, a
    add b
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_009_645c

    rst $18
    jr nz, jr_009_64b0

    rst $08
    rst $08
    jr nc, @+$01

    rst $38
    nop
    ld a, [hl]
    add c
    jp Jump_000_363f


    call z, $ecff
    jr jr_009_6429

    ld [hl], b
    ld [hl], e
    and c
    pop af
    jr nz, @+$01

    rst $38
    nop
    ld d, [hl]
    xor c
    ld l, c
    sub [hl]
    rst $28
    sub b
    rst $38
    or b
    rst $08
    db $dd
    and e
    ld h, a
    sbc [hl]
    adc h
    ld hl, sp-$01
    sbc a
    ld h, b
    cp [hl]
    ld b, c
    add hl, hl
    sub $36
    ret


jr_009_64b0:
    rst $38
    ld [hl], c
    adc [hl]
    and [hl]
    reti


    call Call_009_727e
    inc sp
    rst $38

jr_009_64ba:
    rst $38
    nop
    ld a, a
    add b
    call nz, Call_000_303b
    rst $08
    rst $38
    jp $4e3c


    or c
    sub h
    ld a, e

jr_009_64c9:
    jr c, jr_009_64ba

jr_009_64cb:
    rst $38
    ld h, b
    sbc a
    add b
    ld a, a
    rra
    ldh [$f7], a
    ld [$bcff], sp
    ld b, e
    nop
    rst $38
    jr nc, @+$01

    ei
    call z, Call_000_06ff
    ld sp, hl
    nop
    rst $38
    cp [hl]
    ld a, a
    jp $ff41


    ld h, c
    ret nz

    jr nz, jr_009_64cb

    ld h, $e4
    rst $20
    ld h, $ff
    rst $38
    nop
    cp $01
    ld bc, $0efe
    pop af
    rst $38
    add e
    db $fc
    ret nc

    ld l, a
    ld h, c
    ccf
    inc sp
    ld e, $ff
    ld sp, hl
    ld b, $55
    xor d
    add sp, $17
    ld l, h
    sub e
    rst $38
    or b
    ld c, a
    ld l, a
    pop af
    di
    sbc a
    inc e
    inc c
    rst $38
    rst $38
    nop
    xor $11
    xor c
    ld d, [hl]
    sub $29
    rst $38
    pop de
    xor $26
    add hl, sp
    dec l
    inc sp
    inc de
    ld e, $fe
    and b
    db $e3
    ccf
    ret nz

    jp Jump_009_6d3c


    ld a, [c]
    or $ff
    sbc c
    add hl, de
    ld c, $ff
    nop
    rst $00
    jr c, jr_009_6570

    rst $38
    rst $00
    rst $20
    jr jr_009_6579

    jp Jump_000_3cc3


    ld a, [hl]
    rlca
    add c
    pop bc
    ld a, $00
    nop
    nop
    rst $38
    inc a
    jp $1ce3


jr_009_654d:
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_009_6587

    call Call_000_00ff
    nop
    rst $38
    rst $38
    jr jr_009_654d

    db $ec
    jr @+$08

    db $fc
    db $ec
    jr @+$01

    add hl, sp
    ldh a, [$c3]
    ld b, c
    add $43
    inc a
    rst $38
    rst $38
    ret c

    ld [hl], b
    ld [hl], e

jr_009_6570:
    inc hl
    ld h, e
    ld hl, $60f0
    rst $38
    sbc b
    ldh a, [$4e]

jr_009_6579:
    cp h
    ld a, e
    add a
    nop
    rst $38
    rst $38
    dec sp
    ld sp, $3829
    inc a
    jr z, @+$26

    inc a

jr_009_6587:
    rst $38
    ld a, $14
    ld [de], a
    ld e, $f3
    sbc [hl]
    ld h, l
    ei
    rst $38
    ld l, l
    rst $00
    res 1, [hl]
    sbc [hl]
    adc h
    ld a, $14
    rst $38
    ld a, [hl+]
    ld [hl], $6f
    ld [hl-], a
    ld d, c
    ld l, a
    add e
    db $fc

jr_009_65a2:
    rst $38
    adc a
    inc b
    ld l, h
    ld h, a
    ld e, e
    inc c
    ld [hl], $39
    rst $38
    ld sp, $0f1e
    ld [$8fc8], sp
    ld [hl], d
    db $fd
    rst $38
    daa
    push hl
    rst $20
    dec h
    and a
    ld h, [hl]
    ld h, [hl]
    and h
    rst $38
    ldh [rNR41], a
    jr nz, jr_009_65a2

    db $e3
    ld hl, $ff1e
    rst $38
    sbc [hl]
    inc c
    adc h
    ld [$0818], sp
    inc a
    jr @+$01

    ld h, [hl]
    inc a
    db $db
    ld h, a
    add [hl]
    ld sp, hl
    db $10
    rst $28
    rst $38
    dec bc
    rrca
    set 1, l
    call $094b
    rrca
    rst $38
    dec b
    rlca
    add h
    rlca
    db $fc
    rst $20
    ld e, b
    cp a
    rst $38
    ld h, $3c
    inc a
    jr z, jr_009_6618

    jr c, jr_009_662e

    jr @+$01

    sub [hl]
    inc e
    sbc e
    adc a
    call z, Call_009_708b
    rst $38
    rst $38
    ld c, $09
    set 1, h
    call z, Call_000_0a4b
    dec c
    rst $38
    rrca
    inc b
    add h
    rlca
    rst $38
    db $e4
    jr @+$01

    rst $38
    ld a, a
    add b
    adc h
    ld [hl], e
    di
    inc c
    ld e, $e1
    rst $38

jr_009_6618:
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    nop
    rst $38
    nop
    nop
    nop

Call_009_6623:
    rst $38
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a

jr_009_662e:
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_6665

    adc $ff
    rst $38
    nop
    add hl, sp
    add $c7
    jr c, jr_009_66b5

    add a
    rst $38
    adc a
    ld [hl], b
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $ff
    ld hl, sp+$07
    add hl, sp
    add $83
    ld a, h
    ld [hl], d
    adc l
    rst $38
    add e
    ld a, h
    ld a, [c]

jr_009_6654:
    dec c
    inc bc
    db $fc
    ld a, [c]
    dec c
    rst $38
    rst $20
    jr jr_009_6654

    ld [$3bc4], sp
    scf
    ret z

    rst $38

jr_009_6663:
    sub b
    ld l, a

jr_009_6665:
    inc bc
    db $fc
    db $e3
    inc e
    nop
    rst $38
    rst $38
    ld a, d
    add l
    ld a, [hl-]
    push bc

jr_009_6670:
    ld [de], a
    db $ed
    jp c, $ff25

    ld a, [de]
    push hl
    add hl, sp
    add $a1
    ld e, [hl]
    ld b, $f9
    rst $38
    swap h
    add e
    ld a, h
    sub e
    ld l, h
    sub b
    ld l, a
    rst $38
    ld b, b
    cp a
    rlca
    ld hl, sp+$1f
    ldh [$30], a
    rst $08
    rst $38
    db $d3
    inc l
    ret nz

    ccf
    add hl, bc
    or $09
    or $ff
    ld [bc], a
    db $fd
    ldh [$1f], a
    ret c

    daa
    jr nc, jr_009_6670

    rst $38
    ld e, [hl]
    and c
    ld e, b
    and a
    ld d, c
    xor [hl]
    ld e, e
    and h
    rst $38
    ret c

    daa
    sub b
    ld l, a
    and l
    ld e, d
    ld h, b
    sbc a
    rst $38
    rst $20

jr_009_66b5:
    jr jr_009_6663

    ld d, e
    adc a
    ld [hl], b
    ld l, b
    sub a
    rst $38
    adc c
    db $76
    jp $873c


    ld a, b
    add b
    ld a, a
    rst $38
    rra
    ldh [$9b], a
    ld h, h
    call z, Call_000_0f33
    ldh a, [rIE]
    ret z

    scf
    rrca
    ldh a, [$c9]
    ld [hl], $0e
    pop af
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    ld [hl], b
    adc a
    rst $08

jr_009_66df:
    jr nc, jr_009_66df

    ld l, [hl]
    pop hl
    di
    inc c
    ld l, [hl]
    sub c
    rst $38
    nop
    pop bc
    rst $38
    ld a, $7f
    add b
    add b
    ld a, a
    ld a, a
    add b
    ret nz

    rra
    ccf
    ccf
    ret nz

    ldh [$1f], a
    nop
    nop
    nop
    rst $38
    rst $28
    db $10
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    dec sp
    call nz, Call_000_09f6
    add hl, de
    and $00
    rst $38
    rst $38
    ld a, $c1
    jp $fc3c


    inc bc

jr_009_6715:
    sbc e
    ld h, h
    rst $38
    ld l, h
    sub e
    rst $00

jr_009_671b:
    jr c, jr_009_6715

    rlca
    nop
    rst $38
    rst $38
    ld h, e
    sbc h

Call_009_6723:
    sbc b
    ld h, a
    ld [hl], c
    adc [hl]
    adc h
    ld [hl], e
    rst $38
    ld a, b
    add a
    add $39
    inc a
    jp $ff00


    rst $38
    ret nc

    cpl
    add hl, sp
    add $c3
    inc a
    di
    inc c
    rst $38
    ld [bc], a
    db $fd
    ld [hl-], a
    call $fc03
    ld b, d
    cp l
    rst $38
    ld b, [hl]
    cp c
    ret nz

    ccf
    ld b, b
    cp a
    and b
    ld e, a
    rst $38
    ret z

    scf
    ldh a, [rIF]
    jr c, jr_009_671b

    nop
    rst $38
    rst $38

jr_009_6757:
    ld a, a
    add b
    ld [hl], b
    adc a
    ld c, a
    or b
    ld [hl], c
    adc [hl]
    rst $38
    ld a, $c1
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ei
    xor $11
    and b
    pop hl
    call z, Call_000_3833
    rst $00
    ldh a, [$fd]
    rrca
    ldh a, [$e1]
    ld h, d
    sbc l
    ld b, e
    cp h
    ld [bc], a
    db $fd
    rst $38
    rlca
    ld hl, sp+$1c
    db $e3
    rla
    add sp, $18
    rst $20
    rst $38
    jr nc, jr_009_6757

    rrca
    ldh a, [$9e]
    ld h, c
    ld d, c
    xor [hl]
    rst $38
    adc a
    ld [hl], b
    ld c, b
    or a
    call z, Call_000_0033
    rst $38
    rst $38
    inc bc
    db $fc
    swap h
    inc e
    db $e3
    sub a
    ld l, b
    rst $38
    add hl, sp
    add $2e
    pop de
    db $76
    adc c
    reti


    ld h, $ff
    add b
    ld a, a
    or e
    ld c, h

jr_009_67ae:
    call c, Call_009_6723
    sbc b
    rst $38
    cp b
    ld b, a
    rst $08
    jr nc, jr_009_67ae

    add hl, bc
    add hl, sp
    add $ff
    nop
    rst $38
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld sp, $fece
    ld bc, $fc03
    db $fc
    inc bc
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    inc bc
    rst $28
    rst $38
    nop
    inc a
    jp $e3f0


    di
    inc c
    inc e
    rst $38
    db $e3
    rst $20
    jr @+$01

    nop
    pop hl
    ld e, $9f
    rst $38
    ld h, b
    ld h, b
    sbc a
    rst $18
    jr nz, @-$4e

    ld c, a
    ld a, a
    rst $38
    add b
    jp $f93c


    ld b, $f1
    ld c, $0c
    rst $38
    di
    ld hl, sp+$07
    add [hl]
    ld a, c
    ld a, h
    add e
    jp Jump_000_3cff


    ld a, $c1
    rst $38
    nop
    db $fd
    ld [bc], a
    inc bc
    rst $38
    db $fc
    cp $01
    ld bc, $3ffe
    ret nz

    add b
    rst $38
    ld a, a
    ld b, e
    cp h
    add b
    ld a, a
    pop bc
    ld a, $9c
    rst $38
    ld h, e
    ld b, c
    cp [hl]
    add e
    ld a, h
    ld h, b
    sbc a
    add $ff
    add hl, sp
    and [hl]
    ld e, c
    ld bc, $83fe
    ld a, h
    dec sp

jr_009_6840:
    rst $38
    call nz, Call_000_0df2
    add e
    ld a, h
    ld b, $f9
    ld h, a

jr_009_6849:
    rst $30
    sbc b
    db $e4
    dec de
    and b
    push hl
    adc [hl]
    ld [hl], c
    ldh a, [rIF]
    rst $38
    ld de, $c3ee
    inc a
    sbc a
    ld h, b
    sub c
    ld l, [hl]
    rst $38
    ccf
    ret nz

    jr nz, jr_009_6840

    ld a, a
    add b
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    jp $ff3c


    nop
    di
    inc c
    cp a
    rrca
    ldh a, [$f8]
    rlca
    add a
    ld a, b
    and b
    db $ed
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    add $ff
    add hl, sp
    cp a
    ld b, b

jr_009_6885:
    ld h, b
    sbc a
    sbc a
    ld h, b
    ld [hl], b
    rra
    adc a
    rst $08
    jr nc, jr_009_6849

    ld b, l
    nop
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_009_68a4

jr_009_68a4:
    rst $38
    rst $38
    sbc b
    ld h, a
    ld a, a
    add b
    call nz, Call_000_3f3b
    ret nz

    rst $38
    jp $7d3c


    add d
    add [hl]

jr_009_68b4:
    ld a, c
    nop
    rst $38
    rst $38
    inc a
    jp Jump_000_38c7


    jr c, jr_009_6885

    rst $20
    jr @+$01

    inc a
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    pop hl
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_009_68b4

    rst $18
    jr nz, jr_009_6908

    rst $08
    nop
    rst $38
    rst $38
    sub c
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    ld a, $c1
    rst $38
    db $e3
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38

jr_009_68ed:
    rst $38
    ld d, l
    xor d
    ld d, d
    xor l
    ld l, b
    sub a
    rrca
    ldh a, [rIE]
    add b
    ld a, a
    ldh [$1f], a
    ld l, b
    sub a
    inc bc
    db $fc

Call_009_68ff:
    rst $38
    adc a
    ld [hl], b
    adc $31
    jr jr_009_68ed

    ldh a, [rIF]

jr_009_6908:
    rst $38
    pop bc
    ld a, $07
    ld hl, sp+$1f
    ldh [$f0], a
    rrca
    rst $38
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    ld h, h
    sbc e
    rst $38
    nop
    db $fc
    and b
    rst $38
    and b
    db $e3
    add c
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $fe
    and b
    jp hl


    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    or b
    ld a, a
    ld c, a
    rst $18
    jr nz, jr_009_6995

    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, @-$37

    rst $20
    jr jr_009_6965

    db $e3
    di
    inc c
    rst $38
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $19
    rst $38
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    ld b, a
    rst $38
    rst $38
    nop
    adc h
    ld [hl], e
    di
    inc c

jr_009_6965:
    ld e, $e1
    rst $38
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    db $e3
    inc e
    rst $38
    rst $38
    nop
    db $e3
    inc e
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_009_69af

    call Call_000_00ff
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $03ff
    db $fc
    db $fc
    inc bc
    and a
    ld e, b
    add hl, sp
    add $ff

jr_009_6995:
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, @+$7a

    add a
    sbc a
    ld h, b
    nop
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop

jr_009_69af:
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    ei
    ld a, [$0703]
    dec b
    ld c, $0b
    rst $38
    inc e
    rla
    jr c, jr_009_69ed

    ld [hl], e
    ld e, e
    ld h, a
    ld [hl], a
    rst $38
    ld c, a
    ld a, [hl]
    ld c, a
    ld [hl], h
    ld c, a
    ld e, e
    ld h, a
    cpl
    rst $38
    ld [hl], b
    rla
    jr c, jr_009_69dd

    inc e
    rlca
    rrca
    inc bc
    rst $38
    rlca
    nop
    nop
    ret nz

    ldh [$a7], a

jr_009_69dd:
    ld a, a
    sbc $ff
    add hl, sp
    db $eb
    inc e
    or a
    call z, $e5df
    ccf
    rst $38
    push hl
    ccf
    ld h, h
    ld e, a

jr_009_69ed:
    db $e4
    or [hl]
    call $ffef
    dec e
    rst $18
    dec a
    ld a, a
    db $fd
    di
    rst $38
    pop bc
    db $fd
    db $e3
    and b
    ld [c], a
    add b
    add [hl]
    rst $08
    ld c, a
    jp hl


    rst $28
    rst $38
    add hl, sp
    rst $18
    or b
    ld e, a
    cp c
    cp a
    ld a, c
    ld a, a
    rst $38
    ld sp, hl
    xor $f9

jr_009_6a11:
    set 5, h
    add a
    call z, $df85
    add [hl]
    add e
    add a
    ld bc, $8083
    push hl
    ld h, b
    ldh a, [rIE]
    db $d3
    cp a
    db $fc
    sbc a
    rst $30
    sbc b
    ld_long a, $ff97
    rst $38
    sub a
    cp $97
    cp a
    ret nc

    db $76
    reti


    cp a
    ld sp, hl
    ld e, a
    rst $38
    rst $38
    db $d3
    rst $38
    ld h, b
    rst $20
    jr nc, @+$01

    ld hl, sp-$52
    rst $18
    db $dd
    ld h, e
    cp [hl]
    ld h, c
    db $fd
    rst $38
    ld l, $bf
    ld l, [hl]
    rst $18
    ld l, [hl]
    rst $38
    adc $ff
    rst $18
    adc $bd
    rst $38
    jr jr_009_6a11

    ld [c], a
    and $78
    ld c, b
    rst $38
    db $fc
    cp h
    call z, $9cec
    call c, $fcbc
    ei
    adc h
    db $fc
    ld hl, sp-$1e
    cp b
    db $fc
    ldh a, [$f8]
    and b
    ld bc, $20f0
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    ld hl, $6ac0
    ld de, $0301
    ld b, $00
    call Call_009_7ad5
    ld c, $10
    call Call_000_25af
    call Call_000_2625
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$caba]
    call Call_009_47e0
    bit 7, a
    jr nz, jr_009_6a9a

    ld [$caba], a

jr_009_6a9a:
    ret


    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    call Call_000_0341
    rst $18
    ld [$cd01], sp
    ld [hl], c
    inc bc
    ld hl, $6ac0
    ld de, $0301
    ld b, $00
    call Call_009_7ad5
    ld c, $10
    call Call_000_25af
    call Call_000_2625

jr_009_6abf:
    ret


    ld [$466a], a
    ld [hl], d
    ld e, e
    ld l, e
    or a
    ld [hl], d
    ld [hl-], a
    ld l, h
    add a
    ld [hl], e
    inc c
    ld l, l
    ld h, d
    ld [hl], h
    ld [c], a
    ld l, l
    add hl, sp
    ld [hl], l
    cp h
    ld l, [hl]
    inc d
    db $76
    sub d
    ld l, a
    db $ed
    db $76
    ld l, c
    ld [hl], b
    ret z

    ld [hl], a
    add hl, hl
    ld [hl], c
    adc b
    ld a, b
    ret nc

    ld [hl], c
    cpl
    ld a, c
    and l
    ld a, c
    rst $38
    inc c
    di
    ei
    inc b
    call z, Call_000_3733
    ret z

    rst $38
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $00
    rst $38
    rst $38
    rst $00
    jr c, jr_009_6abf

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    di
    inc c

jr_009_6b0c:
    nop
    rst $38
    rst $38
    ld a, $c1
    pop bc
    ld a, $7f
    add b
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    rst $38
    ccf
    ret nz

    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_6b31

jr_009_6b31:
    rst $38
    ccf
    adc $31
    add hl, sp
    add $c7
    jr c, jr_009_6b0c

    pop hl
    cp [hl]
    pop hl
    rst $38
    nop
    rst $38
    rst $20
    jr jr_009_6b7b

    rst $00
    adc a
    ld [hl], b
    rst $38
    ld a, b
    add a
    add a
    ld a, b
    ld hl, sp+$07
    rlca
    ld hl, sp+$03
    nop
    rst $38

jr_009_6b52:
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    inc a
    jp Jump_000_38c7


    ld sp, hl
    ld b, $ff
    ld c, $f1
    or $09
    jr jr_009_6b52

    rst $20
    add hl, de
    rst $38
    or $0f
    rst $08
    add hl, sp
    ld e, c
    or b
    or c
    ld h, b
    rst $38
    ld h, e
    pop bc
    adc $87

jr_009_6b7b:
    adc c
    adc [hl]
    adc a
    ld [$ffff], sp
    nop
    ld [hl], b
    adc a
    rst $08
    or b
    or c
    adc $ff
    db $76
    adc a
    rra
    ld sp, hl
    or c
    ld h, b
    ldh [rLCDC], a
    rst $38
    rst $38
    nop
    cp h
    ld a, a
    ld b, [hl]
    jp $41c3


    rst $38
    ld b, c

jr_009_6b9c:
    ret nz

    ld b, b
    ret nz

    call nz, $a4c4
    call nz, $ffff
    nop
    or d
    ld a, l
    db $dd
    ld c, a
    ld b, a
    jp nz, $e2ff

    jp nz, $f0b8

    call z, $c478
    ld a, h
    rst $38
    or a
    ld a, b
    add sp, -$31
    adc b
    rrca
    rra
    ld [$30ff], sp
    rra
    ld h, a
    jr c, jr_009_6b9c

    ld h, a
    and e
    call c, Call_009_797f
    cp $8e
    add a
    jp $4081


    jp nc, $ffe0

    add $44
    ld b, a
    add $c5
    ld b, a
    rst $38
    nop
    rst $38
    call c, $a723
    ret c

jr_009_6bdf:
    ret c

    ld h, a
    ld l, [hl]
    ld sp, $35bf
    dec de
    dec de
    ld c, $0e
    inc c
    and b
    ld [c], a
    jr nc, @+$01

    ld sp, $f9fe
    rst $08
    adc [hl]
    ld b, $06
    ld b, $ff
    dec b
    rlca
    rst $38
    nop
    sbc d
    ld h, l
    ld [hl], $f9
    rst $38
    call $cd4a
    adc $02
    inc bc
    ld [bc], a
    inc bc
    rst $38
    call $ffcf
    nop
    jp $fc3c


    inc bc
    rst $38
    adc l
    ld a, [hl]
    ld a, $f3
    ld h, e
    pop bc
    pop bc
    add c
    rst $38
    add c
    ld bc, $00ff
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    adc a
    ld [hl], b
    ld a, b
    add a
    rst $00
    jr c, @+$3e

    jp $e303


    inc e
    nop

jr_009_6c30:
    nop
    nop
    rst $38
    rra
    pop hl
    ld a, [c]
    dec c
    rrca
    ldh a, [$f8]
    rlca
    rst $38
    add a
    ld a, b
    ld a, h
    add e
    jp Jump_000_003c


    rst $38
    rst $38
    adc d
    dec c
    adc l
    adc d
    rst $08
    add a
    ld h, b
    ret nz

    rst $38
    jr nc, jr_009_6c30

    ret c

    jr nc, jr_009_6bdf

    ld a, b
    rlca
    rst $38
    rst $38
    ld c, h
    ret nz

    call z, Call_000_0c8c
    adc h
    adc h
    adc b
    rst $38
    ret nz

    add b
    db $e3
    pop bc
    or [hl]
    rst $20
    jr @+$01

    rst $38
    pop hl
    ld h, b
    ld h, e
    ld h, c
    ld h, d
    ld h, e
    push hl
    ld h, d
    rst $38
    and a
    db $e4
    ld h, [hl]
    and l
    daa
    db $e4
    jr @+$01

    rst $38
    cp h
    call nz, $847c
    call nz, $fc3c
    inc b
    rst $38
    adc h
    ld [hl], h
    db $f4
    inc c
    inc e
    db $e4
    inc bc
    rst $38
    rst $38
    sbc b
    rst $20
    or d
    call $d0af
    add sp, -$69
    rst $38
    jp c, $92a5

    db $ed
    rst $20
    sbc b
    inc c
    di
    rst $38
    ld b, l
    rst $00
    ld b, a
    add $c6
    ld b, h
    ret nz

    ld b, b
    rst $38
    ld b, b
    ret nz

    pop bc
    ld b, b
    rst $00
    ld b, e
    inc a
    rst $38
    rst $38
    inc c
    ld [$0818], sp
    jr nc, jr_009_6ccf

    ld l, b
    jr c, @+$01

    add $7c
    cp e
    rst $00
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    push bc
    ld b, [hl]
    add $c5
    rst $00
    ld b, h
    inc b
    rlca
    rst $38
    inc bc
    ld [bc], a
    add d

jr_009_6ccf:
    inc bc
    di
    ld [c], a
    inc e
    rst $38
    rst $38
    rst $08
    ld c, d
    ld c, d
    adc $ce
    ld b, [hl]
    ld b, h
    add $df
    rst $20
    ld b, e
    and d
    ld h, e
    inc sp
    ldh a, [$e0]
    ld sp, $ff11
    ld sp, $3131
    ld de, $0101
    add b
    nop
    rst $38
    ldh [$c0], a
    inc a
    ld hl, sp+$07
    rst $38
    ld e, $e1
    rst $38
    pop hl
    ld e, $9f
    ld h, b
    ld h, b
    sbc a
    rst $18
    and b
    ccf
    or b
    rst $08
    rst $38
    add b
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    ei
    rlca
    sbc h
    ld h, h
    ld h, h
    sbc h
    call c, $ff24
    inc h
    call c, Call_000_24dc
    inc [hl]
    call z, Call_000_34cc
    rst $38
    db $fd
    cp $02
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rst $38
    ld a, e
    ld [hl], e
    ld c, h
    ld a, [hl]
    ld h, [hl]
    ld a, [hl-]
    ld [de], a
    ld e, $ff
    rst $38
    nop
    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    rst $38
    or b
    rst $38

Jump_009_6d3c:
    ld a, d
    ld c, l
    ld c, l
    rlca
    rlca
    ld b, $ff
    sbc a
    ld h, b
    cp [hl]
    ld b, c
    add hl, hl
    sub $1a
    db $fd
    rst $38
    ld a, l
    and $c6
    add e
    add d
    inc bc
    inc bc
    inc bc

jr_009_6d54:
    rst $38
    rst $38
    nop
    ld a, a
    add b
    call nz, $183b
    rst $38
    rst $38
    or a
    ld h, h
    ld h, [hl]
    push bc
    call nz, $9987
    rrca
    rst $38
    ld h, b
    sbc a
    add b
    ld a, a
    rra
    ldh [$f7], a
    ld [$b8ff], sp
    ld a, a
    ld l, h
    rst $00
    add $83
    add e
    ld [bc], a
    rst $38
    ld e, $ff
    inc hl
    pop hl
    ldh a, [rNR41]
    ret nc

    jr nc, @+$01

    jr nc, jr_009_6d54

    ld de, $11f1
    pop af
    pop af
    ld de, $7fff
    add b
    cp [hl]
    pop bc
    pop hl
    ld a, [hl]
    ld [hl], $19
    rst $38
    dec de
    inc c
    adc h
    rlca
    add $83
    ld b, e
    jp $f9ff


    ld b, $55
    xor d
    add sp, $17
    ld l, h
    sbc a
    rst $38
    cp [hl]
    ld [hl], e
    ld h, e
    pop bc
    pop bc
    add c
    add c
    ld bc, $ffff
    nop
    xor $11
    xor l
    ld e, [hl]
    jp nc, $b733

    ld [hl], e
    di
    add b
    rst $38
    ldh [$73], a
    di
    and b
    db $e3
    dec sp
    rst $38
    rst $00
    ld c, a
    cp h
    ret c

    or b
    or b
    ldh [$60], a
    rst $38
    ret nz

    rst $38
    nop
    rst $00
    jr c, jr_009_6e0a

    rst $00
    ld h, a
    rst $38
    sbc b
    cp h
    jp Jump_009_7cc3


    ld a, [hl]
    ld b, c
    ld b, c
    ld bc, $007e
    nop
    nop
    rst $38
    inc a
    call nz, $1ce4
    sub h
    ld l, h
    ld a, h
    adc b
    rst $38
    ret z

    jr c, jr_009_6e25

    call z, Call_000_07fb
    nop
    rst $38
    rst $38
    ld e, $12
    ld l, [hl]
    ld [hl], d
    ld b, d
    ld a, [hl]
    ld a, d
    ld a, $fd
    ld b, $ff
    ldh [$86], a
    ld b, $f9
    rst $38
    ld a, [hl-]
    inc e
    rst $38
    ld h, h
    inc a

jr_009_6e0a:
    ld e, h
    ld h, h
    ld h, h
    ld e, h
    ld a, e
    ld b, [hl]
    rst $38
    ld b, l
    ld a, e
    ld a, b
    ld b, a
    add b
    rst $38
    ld h, e
    inc hl
    rst $38
    ld h, e
    ld h, e
    ld h, d
    inc hl
    ld [bc], a
    inc bc
    ld bc, $ff01
    pop bc
    add c

jr_009_6e25:
    ld a, c
    pop af
    ld c, $ff
    dec sp
    ld e, $ff
    adc [hl]
    inc b
    call nz, Call_009_4684
    call nz, $86ce
    rst $38
    sbc e
    adc [hl]
    or c
    sbc a
    ld h, e
    db $fc
    daa
    ld [hl+], a
    rst $38
    inc c
    rlca
    dec sp
    inc e
    ld [hl], $39
    add hl, de
    ld c, $ff
    rrca

Call_009_6e48:
    inc b
    call nz, $7a87
    db $fd
    ld sp, $ffd1
    pop af
    ld de, $7191
    ld [hl], b
    sub b
    ret nc

    jr nc, @+$01

    jr nc, @-$2e

    pop de
    jr nc, jr_009_6e6d

    rst $38
    ld b, e
    jp nz, $c6ff

    add d
    adc h
    ld b, $1a
    ld c, $31
    rra
    rst $38
    ld l, h
    inc sp

jr_009_6e6d:
    add $f9
    db $10
    rst $28
    ld sp, $ff11
    ld sp, $3131
    ld de, $0101
    add b
    nop
    rst $38
    ldh [$c0], a
    inc a
    ld hl, sp+$47
    cp a
    ld [hl], e
    sub d
    rst $38
    ld d, d
    or e
    di
    ld de, $b151
    cp c
    ret nc

    rst $38
    add sp, -$68
    sbc h
    add sp, $07
    rst $38
    call z, $ff84
    adc h
    adc h
    adc h
    add h
    nop
    add b
    ldh [$c0], a
    rst $38
    cp b
    ldh a, [$ef]
    sbc [hl]
    ld bc, $7fff
    ld b, b
    rst $38
    ld c, h
    ld [hl], e
    ld [hl], e
    ld c, h
    ld e, [hl]
    ld h, c
    ld hl, $3f3e
    ccf
    jr nz, jr_009_6ef2

    inc hl
    ret nz

    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_6efe

    adc $ff
    cp $01
    add hl, sp
    rst $00
    rst $00
    add hl, sp
    ld a, c
    add a
    rst $38
    adc a
    ld [hl], c
    pop af
    rrca
    rra
    pop hl
    pop hl
    rra
    rst $30
    rst $38
    rst $38
    nop
    rst $38
    ld [c], a
    ld e, $1c
    inc de
    rra
    rst $38
    dec de
    inc c
    ld b, $05
    ld h, a
    sbc b
    rst $30

jr_009_6ef2:
    adc b
    rst $38
    call nz, $b7bb
    ret z

    db $ec
    rst $38
    ld e, $93
    rst $38
    sub e

jr_009_6efe:
    add c
    add c
    add c
    ld a, d
    add l
    ld a, [hl-]
    push bc
    rst $38
    ld [de], a
    db $ed
    sub $2f
    rra
    ld sp, hl
    ld sp, $ffe0
    ld h, b
    ret nz

    ret nz

    add b
    swap h
    add e
    ld a, h
    rst $38
    sub e
    ld l, h
    sub [hl]
    ld l, a
    ld c, l
    cp c
    sbc c
    pop af
    rst $38
    or c
    pop hl
    and $c3
    db $d3
    inc l
    ret nz

    ccf
    rst $38
    add hl, bc
    or $09
    or $0e
    rst $38
    db $db
    ld sp, $b1ff
    ld h, b
    ld h, b
    ret nz

    ld e, [hl]
    and c
    ld e, b
    and a
    rst $38
    ld d, c
    xor [hl]
    ld e, e
    and h
    ret c

    daa
    ld de, $ffef
    and l
    db $db
    db $e3
    sbc [hl]
    cp e
    ld a, h
    db $ec
    ld b, a
    rst $38
    ld b, l
    add $c6
    add e
    add d
    add e
    add e
    ld bc, $11ff
    ld de, $1031
    dec de
    rst $38
    and h
    ld h, h
    rst $28
    db $e4
    inc h
    inc h
    db $e4
    db $fc
    pop hl
    ld h, h
    and h
    and h
    rst $38
    db $e4
    ld a, a
    add b
    cp a
    ret nz

    ldh a, [$8f]
    rst $08
    rst $38
    or b
    ld hl, sp-$79
    adc a
    ldh a, [$f3]
    adc h
    xor $ff
    sub c
    rst $38
    nop
    pop bc
    ld a, $7f
    add b
    add b
    rst $38
    ld a, a
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    ldh [rSB], a
    rra
    nop
    nop
    nop
    rst $38
    rst $28
    db $10
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    dec sp
    call nz, Call_000_09f6
    add hl, de
    and $00
    rst $38
    rst $38
    ccf
    pop bc
    jp $fd3d


    inc bc
    sbc e
    ld h, [hl]
    rst $38
    ld l, [hl]
    sub d
    push bc
    dec sp
    ld hl, sp+$07
    nop
    rst $38
    rst $38
    rlca
    inc b
    jr jr_009_6fda

    ld de, $1e1e
    rrca
    rst $38
    ld bc, $8101
    ld bc, $c1e1
    ld a, $ff
    rst $38
    adc [hl]
    add a
    sbc c
    adc a
    sub e
    sbc l
    sub e
    sbc l
    db $fd
    sub d
    cp $e0
    sub e
    sbc h
    ld h, d
    db $fd
    sbc b

jr_009_6fda:
    ld [$18ff], sp
    jr jr_009_6ff7

    ld [$0000], sp
    ret nz

    add b
    rst $38
    ld [hl], b
    ldh [rNR34], a
    db $fc
    inc bc
    rst $38
    adc $c7
    rst $38
    db $e3
    pop bc
    or c
    pop hl
    sub c
    pop af
    ld [hl], e
    ld h, c
    rst $38

jr_009_6ff7:
    ld h, [hl]
    ld h, e
    ld l, h
    ld h, a
    sbc b
    rst $38
    ret


    adc b
    rst $38
    add e
    ld bc, $070e
    adc h

jr_009_7005:
    rrca
    add [hl]
    add e
    rst $38
    jp Jump_009_7181


    pop hl
    ld e, $ff
    ld [c], a
    sbc [hl]
    rst $38
    ld b, [hl]
    cp h
    inc b
    db $fc
    inc b
    db $fc
    inc e
    add sp, -$01
    jr jr_009_7005

    add hl, de
    add sp, $37
    rst $08
    jr nz, jr_009_7043

    db $fd
    nop
    rst $38
    ldh [$3c], a
    inc e
    and $7c
    jp z, $ffb6

    add e
    cp $01
    rst $38
    and h
    db $e4
    db $e4
    ld h, h
    cp a
    ld h, h
    ld h, h
    ld b, h
    ld h, h
    ld h, h
    inc h
    rst $38
    pop hl
    db $db
    rst $38
    rst $38
    or e

jr_009_7043:
    call z, $a3dc
    rst $20
    sbc b
    cp b
    rst $38
    rst $00
    rst $08
    or b
    or $89
    cp c
    add $00
    rst $38
    rst $38
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    jr nc, jr_009_708c

    rst $38
    adc $fe
    ld bc, $fc03
    db $fc
    inc bc
    nop
    ld bc, $00ff
    nop
    nop
    rst $38
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    inc bc
    rst $28
    rst $38
    nop
    inc a
    jp $e3f0


    di
    inc c
    inc e
    rst $38
    db $e3
    rst $20
    jr @+$01

    nop

Call_009_708b:
    pop hl

jr_009_708c:
    ld e, $9f
    rst $38
    ld h, b
    ld h, b
    sbc a
    rst $18
    jr nz, @-$4e

    ld c, a
    ld a, a
    rst $38
    add b
    jp $f93c


    ld b, $f1
    ld c, $0c
    rst $38
    di
    ld hl, sp+$07
    add [hl]
    ld a, c
    ld a, h
    add e
    jp Jump_000_3cff


    ld a, $c1
    rst $38
    nop
    db $fd
    ld [bc], a
    inc bc
    rst $38
    db $fc
    cp $01
    ld bc, $3ffe
    ret nz

    add b
    rst $38
    ld a, a
    ld b, e
    cp h
    add b
    ld a, a
    pop bc
    ld a, $9c
    rst $38
    ld h, e
    ld b, c
    cp [hl]
    add e
    ld a, h
    ld h, b
    sbc a
    add $ff
    add hl, sp
    and [hl]
    ld e, c
    ld bc, $83fe
    ld a, h
    dec sp

jr_009_70d6:
    rst $38
    call nz, Call_000_0df2
    add e
    ld a, h
    ld b, $f9
    ld h, a

jr_009_70df:
    rst $30
    sbc b
    db $e4
    dec de
    and b
    push hl
    adc [hl]
    ld [hl], c
    ldh a, [rIF]
    rst $38
    ld de, $c3ee
    inc a
    sbc a
    ld h, b
    sub c
    ld l, [hl]
    rst $38
    ccf
    ret nz

    jr nz, jr_009_70d6

    ld a, a
    add b
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    jp $ff3c


    nop
    di
    inc c
    cp a
    rrca
    ldh a, [$f8]
    rlca
    add a
    ld a, b
    and b
    db $ed
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    add $ff
    add hl, sp
    cp a
    ld b, b

jr_009_711b:
    ld h, b
    sbc a
    sbc a
    ld h, b
    ld [hl], b
    rra
    adc a
    rst $08
    jr nc, jr_009_70df

    ld b, l
    nop
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_009_713a

jr_009_713a:
    rst $38
    rst $38
    sbc b
    ld h, a
    ld a, a
    add b
    call nz, Call_000_3f3b
    ret nz

    rst $38
    jp $7d3c


    add d
    add [hl]

jr_009_714a:
    ld a, c
    nop
    rst $38
    rst $38
    inc a
    jp Jump_000_38c7


    jr c, jr_009_711b

    rst $20
    jr @+$01

    inc a
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    pop hl
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_009_714a

    rst $18
    jr nz, jr_009_719e

    rst $08
    nop
    rst $38
    rst $38
    sub c
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    ld a, $c1
    rst $38
    db $e3
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b

Jump_009_7181:
    nop
    rst $38

jr_009_7183:
    rst $38
    ld d, l
    xor d
    ld d, d
    xor l
    ld l, b
    sub a
    rrca
    ldh a, [rIE]
    add b
    ld a, a
    ldh [$1f], a
    ld l, b
    sub a
    inc bc
    db $fc
    rst $38
    adc a
    ld [hl], b
    adc $31
    jr jr_009_7183

    ldh a, [rIF]

jr_009_719e:
    rst $38
    pop bc
    ld a, $07
    ld hl, sp+$1f
    ldh [$f0], a
    rrca
    rst $38
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    ld h, h
    sbc e
    rst $38
    nop
    db $fc
    and b
    rst $38
    and b
    db $e3
    add c
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $fe
    and b
    jp hl


    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    or b
    ld a, a
    ld c, a
    rst $18
    jr nz, jr_009_722b

    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, @-$37

    rst $20
    jr jr_009_71fb

    db $e3
    di
    inc c
    rst $38
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $19
    rst $38
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    ld b, a
    rst $38
    rst $38
    nop
    adc h
    ld [hl], e
    di
    inc c

jr_009_71fb:
    ld e, $e1
    rst $38
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    db $e3
    inc e
    rst $38
    rst $38
    nop
    db $e3
    inc e
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_009_7245

    call Call_000_00ff
    ret nz

    ccf
    rst $38
    rst $38
    nop

jr_009_721b:
    rst $38
    nop
    ld bc, $fefe
    ld bc, $03ff
    db $fc
    db $fc
    inc bc
    and a
    ld e, b
    add hl, sp
    add $ff

jr_009_722b:
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, jr_009_72b1

    add a
    sbc a
    ld h, b
    nop
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop

jr_009_7245:
    nop
    rst $38
    inc c
    di
    ei
    inc b
    call z, Call_000_3733
    ret z

    rst $38
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $00
    rst $38
    rst $38
    rst $00
    jr c, jr_009_721b

    ld b, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$01

    ld a, b
    add a
    adc a
    ld [hl], b
    di
    inc c

jr_009_7268:
    nop
    rst $38
    rst $38
    ld a, $c1
    pop bc
    ld a, $7f
    add b
    add b
    ld a, a
    rst $38
    ld a, a
    add b
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    rst $38
    ccf

Call_009_727e:
    ret nz

    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_728d

jr_009_728d:
    rst $38
    ccf
    adc $31
    add hl, sp
    add $c7
    jr c, jr_009_7268

    pop hl
    cp [hl]
    pop hl
    rst $38
    nop
    rst $38
    rst $20
    jr jr_009_72d7

    rst $00
    adc a
    ld [hl], b
    rst $38
    ld a, b
    add a
    add a
    ld a, b
    ld hl, sp+$07
    rlca
    ld hl, sp+$03
    nop
    rst $38
    and b
    rst $38
    and b

jr_009_72b1:
    rst $38
    and b
    ld sp, hl
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    inc a
    jp Jump_000_38c7


    ld sp, hl
    ld b, $ff
    ld c, $f1
    or $09
    add hl, de
    and $e7
    jr @+$01

    rst $38
    nop
    call c, Call_009_6623
    sbc c
    cp c
    ld b, a
    rst $38
    swap [hl]
    or $0c

jr_009_72d7:
    inc [hl]
    call z, Call_000_38cd
    rst $38
    rst $38
    nop
    ld [hl], b
    adc a
    rst $28
    ldh a, [$b1]
    ld e, $ff
    ld e, $11
    inc de
    inc e
    db $ed
    ld [hl], e
    add a
    cp $ff
    rst $38
    nop
    sbc d
    ld h, l
    db $76
    adc c
    adc $3f
    rst $38
    inc sp
    pop de
    pop af
    db $10
    sub b
    ldh a, [$d3]
    ld [hl], e
    rst $38
    rst $38
    nop
    jp $fc3c


    inc bc
    sbc d
    ld a, l
    rst $38
    ld l, h
    and a
    and a
    db $e3
    ld d, e
    ld h, c
    ld a, b
    jr nc, @+$01

    rst $38
    nop
    sub b
    ld l, a
    jr nc, @+$01

    ld l, a
    ret z

    rst $38
    ret z

    adc a
    sbc a
    ld [$1f30], sp
    ld h, e
    inc a
    rst $38
    rst $38
    nop
    inc c
    di
    ld a, l
    cp $86
    add e
    rst $38
    jp $4181


    ret nz

    ld c, h
    ret z

    adc $4c
    cp $a0
    pop hl
    ld h, a
    sbc b
    jr c, @-$37

    rrca
    ldh a, [$86]
    rst $28
    ld sp, hl
    jp $667f


    ldh [$e0], a
    ld [hl], b
    adc a
    rst $08
    rst $38
    jr nc, jr_009_737d

    adc $fd
    inc bc
    jp nz, $e6fe

    di
    ld a, $38
    add b
    ldh [$a0], a
    pop hl
    call $bb32

jr_009_735c:
    call nz, Call_009_76bf
    ld c, c
    ld e, e
    ld h, a
    ld [hl], $2c
    and b
    db $e3
    sbc e
    rst $38
    ld h, h
    ld l, h
    sub e
    rst $00
    ld hl, sp-$18
    scf
    ccf
    rst $38
    db $10
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    adc a
    rst $38
    ld [hl], b
    ld a, b
    add a

jr_009_737d:
    rst $00
    jr c, jr_009_73bc

    jp Jump_000_01e3


    inc e
    nop
    nop
    nop
    rst $38
    ld e, $e1
    di
    inc c
    rrca
    ldh a, [$f8]
    rlca
    rst $38

jr_009_7391:
    add a
    ld a, b
    ld a, h
    add e
    jp Jump_000_003c


    rst $38
    rst $38
    add hl, sp
    pop de
    ld sp, hl
    ld de, $f80d
    or $0c
    rst $38
    inc bc
    cp $fd
    inc bc

jr_009_73a7:
    add b
    ld a, a
    nop
    rst $38
    rst $38
    ld a, h
    adc b
    ld c, e
    cp c
    ei
    ld a, [c]
    inc sp
    inc de
    rst $38
    jr jr_009_73c7

    sbc h
    jr jr_009_7391

    sbc h
    ld h, e

jr_009_73bc:
    rst $38
    rst $38
    dec sp
    ld [hl-], a
    cp b
    jr jr_009_735c

    sbc b
    cp e
    add hl, de
    rst $38

jr_009_73c7:
    ld a, [hl+]
    dec sp
    jp z, $8b7b

    ld a, [$ef14]
    rst $38
    ld l, h
    jr c, jr_009_73a7

    ld l, h
    add h
    db $fc
    ld a, h
    add h
    rst $38
    adc h
    ld [hl], h
    db $f4
    inc c
    inc e
    db $e4
    inc bc
    rst $38
    rst $38
    ret c

    ld h, a
    or d
    call $d0af
    add sp, -$69
    rst $38
    jp c, $92a5

    db $ed
    rst $20
    sbc b
    inc c
    di
    rst $38
    ld c, e
    adc $4b
    adc $ce
    ld c, h
    call z, $ff48
    ld b, b
    ret nz

    pop bc
    ld b, b
    rst $00
    ld b, e
    inc a
    rst $38
    rst $38
    inc a
    jr jr_009_7422

    ld de, $1031
    ld a, b
    jr nc, @+$01

    call z, $b778
    adc $41
    cp a
    ld b, b
    cp a
    rst $38
    ld d, $1e
    sub [hl]
    sbc d
    sbc [hl]
    sub d
    ld [de], a
    ld e, $ff
    rra

jr_009_7422:
    ld a, [bc]
    add hl, bc
    rrca
    db $eb
    call $fd32
    rst $38
    ld c, h
    ld a, b
    ld a, c
    ld d, c
    ld d, c
    ld [hl], b
    ld a, b
    jr nc, @+$01

    inc l
    jr c, @+$39

    ld e, $95
    dec de
    ldh [rIE], a
    rst $38
    inc de
    inc e
    sbc h
    sub e
    sub a
    sbc b
    db $10
    rra
    rst $38
    rra
    ld [$0c0b], sp
    db $ec
    swap b
    rst $38

jr_009_744d:
    rst $38
    ld e, $e1
    pop hl
    ld e, $9f
    ld h, b
    ld h, b
    sbc a
    rst $38
    rst $18
    jr nz, @-$4e

    ld c, a
    ld a, a
    add b

jr_009_745d:
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    sbc [hl]
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_009_744d

    rst $18
    jr nz, jr_009_74a1

    rst $08
    rst $08
    jr nc, @+$01

    rst $38
    nop
    ld a, [hl]
    add c
    rst $18
    ccf
    jr nz, jr_009_745d

    rst $38
    ldh [rNR41], a
    and a
    ld h, a
    ld h, [hl]
    and a
    db $e3
    ld hl, $ffff
    nop
    ld d, [hl]
    xor c
    ret


    or $2f
    jr nc, @+$01

    jr nc, jr_009_74c1

    cp [hl]
    ld hl, $ffdb
    cpl
    db $e4
    rst $38
    sbc a
    ld h, b
    cp [hl]
    ld b, c
    add hl, hl
    sub $36
    ret


jr_009_74a1:
    rst $38
    ld [hl], c
    adc [hl]
    ld l, h
    sbc a
    ld a, $f3
    ld h, e
    pop bc
    rst $38
    rst $38
    nop
    ld a, a
    add b
    call nz, Call_000_303b
    rst $08
    rst $38
    jp $5a3c


    cp l
    cp h
    ld h, a
    ld h, h
    rst $00

jr_009_74bc:
    rst $38
    ld h, b
    sbc a
    add b
    ld a, a

jr_009_74c1:
    rra
    ldh [$f7], a
    ld [$bcff], sp
    ld b, e
    nop
    rst $38
    jr nc, @+$01

    ei
    call z, Call_000_06ff
    ld sp, hl
    nop
    rst $38
    cp [hl]
    ld a, a
    jp $ff41


    ld h, c
    ret nz

    jr nz, jr_009_74bc

    ld h, $e4
    rst $20
    ld h, $ff
    rst $38
    nop
    cp $01
    ld bc, $0efe
    pop af
    rst $38
    add e
    db $fc
    ret nc

    ld l, a
    ld h, c
    ccf
    inc sp
    ld e, $ff
    ld sp, hl
    ld b, $55
    xor d
    add sp, $17
    ld l, h
    sub e
    rst $38
    or b
    ld c, a
    ld l, a
    pop af
    di
    sbc a
    inc e
    inc c
    rst $38
    rst $38
    nop
    xor $11
    xor c
    ld d, [hl]
    sub $29
    rst $38
    pop de
    xor $26
    add hl, sp
    dec l
    inc sp
    inc de
    ld e, $fe
    and b
    db $e3
    ccf
    ret nz

    jp Jump_009_6d3c


    ld a, [c]
    or $ff
    sbc c
    add hl, de
    ld c, $ff
    nop
    rst $00
    jr c, jr_009_7561

    rst $38
    rst $00
    rst $20
    jr jr_009_756a

jr_009_752e:
    jp Jump_000_3cc3


    ld a, [hl]
    rlca
    add c
    pop bc
    ld a, $00
    nop
    nop
    rst $38
    inc a
    jp $1ce3


    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, @+$34

    call Call_000_00ff
    nop
    rst $38
    rst $38
    jr nz, jr_009_752e

    ldh [rNR41], a
    daa
    rst $20
    rst $20
    ld b, e
    rst $38
    ld b, b
    ret nz

    or b
    ld h, b
    sbc h
    ld a, b
    rlca
    rst $38
    rst $38
    ldh [$a1], a
    and a

jr_009_7561:
    db $e3
    ld h, l
    and a
    and a
    push hl
    rst $38
    ld h, [hl]
    ld h, l
    ld h, a

jr_009_756a:
    ld h, h
    ld h, h
    ld h, a
    sbc b
    rst $38
    rst $38
    pop bc
    add c
    sbc c
    add hl, de
    add hl, de
    add hl, bc
    add c
    ld bc, $c1ff
    add b
    ld [hl], b
    ldh [rNR34], a
    db $fc
    inc bc
    rst $38
    rst $38
    call $9b87
    adc [hl]
    add [hl]
    add h
    ld h, [hl]
    call nz, $caff
    add [hl]
    sbc e
    adc [hl]
    or c
    sbc a
    ld h, e
    db $fc

jr_009_7593:
    rst $38
    adc a
    inc b
    ld l, h
    ld h, a
    ld e, e
    inc c
    ld [hl], $39
    rst $38
    ld sp, $0f1e
    ld [$8fc8], sp
    ld [hl], d
    db $fd
    rst $38
    daa
    push hl
    rst $20
    dec h
    and a
    ld h, [hl]
    ld h, [hl]
    and h
    rst $38
    ldh [rNR41], a
    jr nz, jr_009_7593

    db $e3
    ld hl, $ff1e
    rst $38
    sbc [hl]
    inc c
    adc h
    ld [$0818], sp
    inc a
    jr @+$01

    ld h, [hl]
    inc a
    db $db
    ld h, a
    add [hl]
    ld sp, hl
    db $10
    rst $28
    rst $38
    dec bc
    rrca
    set 1, l
    call $094b
    rrca
    rst $38
    dec c
    rlca
    add h
    rlca
    db $f4
    rst $20
    ld e, b
    cp a
    rst $38
    ld h, $3c
    inc a
    jr z, jr_009_7609

    jr c, jr_009_761f

    jr @+$01

    sub [hl]
    inc e
    sbc e
    adc a
    call z, Call_009_708b
    rst $38
    rst $38
    ld c, $09
    set 1, h
    call z, Call_000_0a4b
    dec c
    rst $38
    rrca
    inc b
    add h
    rlca
    rst $30
    db $e4
    jr @+$01

    rst $38
    ld a, a
    add b
    adc h
    ld [hl], e
    di
    inc c
    ld e, $e1
    rst $38

jr_009_7609:
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [$f0], a
    rrca
    rst $38
    adc a

jr_009_761f:
    ld [hl], b
    ld [hl], b
    adc a
    rst $18
    jr nz, jr_009_7656

    adc $ff
    rst $38
    nop
    add hl, sp
    add $c7
    jr c, jr_009_76a6

    add a
    rst $38
    adc a
    ld [hl], b
    ldh a, [rIF]
    rra
    ldh [$e1], a
    ld e, $ff
    ld hl, sp+$07
    add hl, sp
    add $8f
    ld a, a
    ld [hl], b
    sub b
    rst $38
    sub b
    ld [hl], b
    di

jr_009_7645:
    inc de
    inc de
    di
    pop af
    db $10
    rst $38
    rst $20
    jr jr_009_7645

    ld [$fbe4], sp
    rla
    jr @+$01

jr_009_7654:
    db $10
    rra

jr_009_7656:
    db $d3
    sbc h
    ld l, l
    rst $38
    sub a
    ld a, [c]
    rst $38
    ld a, d
    add l
    ld a, [hl-]
    push bc
    ld [de], a
    db $ed
    jp c, $ff25

    ld a, [de]
    push hl
    ld [hl], $cf
    sbc a
    ld sp, hl
    or c
    ld h, b
    rst $38
    swap h
    add e
    ld a, h
    sub e
    ld l, h
    sub b
    ld l, a
    rst $38
    ld b, b
    cp a
    dec c
    cp $1f
    ld a, [c]
    or d
    db $e3
    rst $38
    db $d3
    inc l
    ret nz

    ccf
    add hl, bc
    or $09
    or $ff
    ld [bc], a
    db $fd
    ldh [$1f], a
    ret c

    ccf
    ld a, h
    rst $20
    rst $38
    ld e, [hl]
    and c
    ld e, b
    and a
    ld d, b
    xor a
    ld e, c
    and a
    rst $38
    db $db
    ld h, $92
    ld l, [hl]
    and [hl]
    ld e, h
    ld h, h
    sbc h
    rst $38
    rst $20

jr_009_76a6:
    jr jr_009_7654

    ld d, e
    xor $f1
    cp c
    rla
    rst $38
    ld de, $1b1f
    dec c
    dec bc
    dec c
    call $ffc7
    rra
    ldh [$9b], a
    ld h, h
    ret c

    rst $38
    ld l, a
    inc h

Call_009_76bf:
    rst $38
    inc h
    daa
    daa
    inc h
    dec h
    ld h, $26
    dec h
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    ld [hl], b
    adc a
    rst $08

jr_009_76d0:
    jr nc, jr_009_76d0

    ld l, [hl]
    pop hl
    di
    inc c
    ld l, [hl]
    sub c
    rst $38
    nop
    pop bc
    rst $38
    ld a, $7f
    add b
    add b
    ld a, a
    ld a, a
    add b
    ret nz

    rra
    ccf
    ccf
    ret nz

    ldh [$1f], a
    nop
    nop
    nop
    rst $38
    rst $28
    db $10
    sbc d
    ld h, l
    db $76
    adc c
    call $ff32
    dec sp
    call nz, Call_000_09f6
    add hl, de
    and $00
    rst $38
    rst $38
    ld a, $c1
    jp $fc3c


    inc bc

jr_009_7706:
    sbc e
    ld h, h
    rst $38
    ld l, h
    sub e
    rst $00
    jr c, jr_009_7706

    rlca
    nop
    rst $38
    rst $38
    ld [hl], b
    sub b
    sub b
    ld [hl], b
    ld d, e
    or e
    or e
    ld h, c
    rst $38
    ld h, b
    and b
    ret c

    jr nc, @+$30

    call c, $ff03
    rst $38
    ld d, b
    ld [hl], b
    ld [hl], e
    ld d, c
    sub d
    di
    db $d3
    ld a, [c]
    rst $38
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc sp
    inc sp
    ld [hl-], a
    call z, $ffff
    ld h, b
    ret nz

    call z, $8c8c
    add h
    ret nz

    add b
    rst $38
    ld h, b
    ret nz

    cp b
    ld [hl], b
    cpl
    sbc $01
    rst $38
    rst $38
    and $c3
    call $c3c7
    jp nz, $e2b3

    rst $38
    ld h, l
    ld b, e
    ld c, l
    ld b, a
    ld e, b
    ld c, a
    or b
    rst $38
    rst $38
    add $83
    or [hl]
    inc sp
    inc l
    rlca
    jr jr_009_7781

jr_009_7762:
    rst $38
    jr @+$11

    add h
    rlca
    db $e4
    rst $00
    jr c, @+$01

    rst $38
    ld l, l
    sbc b
    ld c, c
    cp c
    jr jr_009_7762

    db $10
    ldh a, [rIE]
    inc sp
    pop hl
    ld [hl+], a
    db $e3
    ld h, $e3
    inc e
    rst $38
    rst $38
    push bc

Call_009_777f:
    rst $00
    add a

jr_009_7781:
    inc bc
    ld [bc], a
    inc bc
    di
    ld h, c
    rst $38
    sub c
    pop af
    reti


    ld sp, $f909
    ld b, $ff
    rst $38
    daa
    inc h
    inc h
    daa
    daa
    inc h
    dec h
    ld h, $ff
    ld h, $25
    ld h, $25
    dec h
    ld h, $d8
    rst $38
    rst $38
    or e
    ld c, h

jr_009_77a4:
    call c, Call_009_6723
    sbc b
    cp b
    ld b, a
    rst $38
    rst $08
    jr nc, jr_009_77a4

    add hl, bc
    add hl, sp
    add $00
    rst $38
    rst $38
    sbc a
    ld h, b
    ld [hl], b
    adc a
    rst $08
    jr nc, @+$33

    adc $ff
    cp $01
    inc bc
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    dec sp
    call nz, Call_000_38c7
    ld a, b
    add a
    rst $38
    adc a
    ld [hl], b
    ld hl, sp+$07
    rlca
    ld hl, sp-$04
    inc bc
    rst $28
    rst $38
    nop
    inc a
    jp $e3f0


    di
    inc c
    inc e
    rst $38
    db $e3
    rst $20
    jr @+$01

    nop
    pop hl
    ld e, $9f
    rst $38
    ld h, b
    ld h, b
    sbc a
    rst $18
    jr nz, jr_009_77a4

    ld c, a
    ld a, a
    rst $38
    add b
    jp $f93c


    ld b, $f1
    ld c, $0c
    rst $38
    di
    ld hl, sp+$07
    add [hl]
    ld a, c
    ld a, h
    add e
    jp Jump_000_3cff


    ld a, $c1
    rst $38
    nop
    db $fd
    ld [bc], a
    inc bc
    rst $38
    db $fc
    cp $01
    ld bc, $3ffe
    ret nz

    add b
    rst $38
    ld a, a
    ld b, e
    cp h
    add b
    ld a, a
    pop bc
    ld a, $9c
    rst $38
    ld h, e
    ld b, c
    cp [hl]
    add e
    ld a, h
    ld h, b
    sbc a
    add $ff
    add hl, sp
    and [hl]
    ld e, c
    ld bc, $83fe
    ld a, h
    dec sp

jr_009_7835:
    rst $38
    call nz, Call_000_0df2
    add e
    ld a, h
    ld b, $f9
    ld h, a

jr_009_783e:
    rst $30
    sbc b
    db $e4
    dec de
    and b
    push hl
    adc [hl]
    ld [hl], c
    ldh a, [rIF]
    rst $38
    ld de, $c3ee
    inc a
    sbc a
    ld h, b
    sub c
    ld l, [hl]
    rst $38
    ccf
    ret nz

    jr nz, jr_009_7835

    ld a, a
    add b
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    jp $ff3c


    nop
    di
    inc c
    cp a
    rrca
    ldh a, [$f8]
    rlca
    add a
    ld a, b
    and b
    db $ed
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    add $ff
    add hl, sp
    cp a
    ld b, b

jr_009_787a:
    ld h, b
    sbc a
    sbc a
    ld h, b
    ld [hl], b
    rra
    adc a
    rst $08
    jr nc, jr_009_783e

    ld b, l
    nop
    nop
    nop
    rst $38
    sub e
    ld l, h
    xor $11
    xor c
    ld d, [hl]
    ld d, [hl]
    xor c
    rst $38
    pop de
    ld l, $26
    reti


    rst $18
    jr nz, jr_009_7899

jr_009_7899:
    rst $38
    rst $38
    sbc b
    ld h, a
    ld a, a
    add b
    call nz, Call_000_3f3b
    ret nz

    rst $38
    jp $7d3c


    add d
    add [hl]

jr_009_78a9:
    ld a, c
    nop
    rst $38
    rst $38
    inc a
    jp Jump_000_38c7


    jr c, jr_009_787a

    rst $20
    jr @+$01

    inc a
    jp Jump_000_3cc3


    ld a, [hl]
    add c
    nop
    rst $38
    rst $38
    pop hl
    ld e, $9e
    ld h, c
    ld h, c
    sbc [hl]
    rst $18
    jr nz, @+$01

    jr nz, jr_009_78a9

    rst $18
    jr nz, jr_009_78fd

    rst $08
    nop
    rst $38
    rst $38
    sub c
    ld l, [hl]
    ld a, h
    add e
    ret nz

    ccf
    ld a, $c1
    rst $38
    db $e3
    inc e
    sbc h
    ld h, e
    ld [hl], a
    adc b
    nop
    rst $38

jr_009_78e2:
    rst $38
    ld d, l
    xor d
    ld d, d
    xor l
    ld l, b
    sub a
    rrca
    ldh a, [rIE]
    add b
    ld a, a
    ldh [$1f], a
    ld l, b
    sub a
    inc bc
    db $fc
    rst $38
    adc a
    ld [hl], b
    adc $31
    jr jr_009_78e2

    ldh a, [rIF]

jr_009_78fd:
    rst $38
    pop bc
    ld a, $07
    ld hl, sp+$1f
    ldh [$f0], a
    rrca
    rst $38
    adc [hl]
    ld [hl], c
    ccf
    ret nz

    ld h, h
    sbc e
    rst $38
    nop
    db $fc
    and b
    rst $38
    and b
    db $e3
    add c
    ld a, [hl]
    ld a, [hl]
    add c
    pop bc
    ld a, $fe
    and b
    jp hl


    ld d, [hl]
    xor c
    jp hl


    ld d, $6f
    sub b
    or b
    ld a, a
    ld c, a
    rst $18
    jr nz, jr_009_798a

    sbc [hl]
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    sbc c
    ld h, [hl]
    db $76
    adc c
    rst $08
    jr nc, @+$01

    jr c, @-$37

    rst $20
    jr jr_009_795a

    db $e3
    di
    inc c
    rst $38
    rst $38
    nop
    di
    inc c
    inc e
    db $e3
    and $19
    rst $38
    dec sp
    call nz, Call_000_33cc
    ld [hl], a
    adc b
    cp b
    ld b, a
    rst $38
    rst $38
    nop
    adc h
    ld [hl], e
    di
    inc c

jr_009_795a:
    ld e, $e1
    rst $38
    pop hl
    ld e, $7f
    add b
    sbc h
    ld h, e
    db $e3
    inc e
    rst $38
    rst $38
    nop
    db $e3
    inc e
    sbc [hl]
    ld h, c
    ld [hl], c
    adc [hl]
    rst $38
    rst $08
    jr nc, jr_009_79a4

    call Call_000_00ff
    ret nz

    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe

Call_009_797f:
    ld bc, $03ff
    db $fc
    db $fc
    inc bc
    and a
    ld e, b
    add hl, sp
    add $ff

jr_009_798a:
    rst $38
    nop
    inc sp
    call z, $23dc
    ld h, e
    sbc h
    rst $38
    cp [hl]
    ld b, c
    rst $00
    jr c, jr_009_7a10

    add a
    sbc a

jr_009_799a:
    ld h, b
    nop
    and b
    rst $38
    and b
    rst $38
    and b
    ld sp, hl
    nop
    nop

jr_009_79a4:
    nop
    rst $38
    nop
    ld bc, $0301
    ld [bc], a
    rlca
    dec b
    ld c, $ff
    dec bc
    inc c
    dec bc
    inc c
    dec b
    ld c, $02
    rlca
    cp $f2
    pop hl
    dec c
    ld e, $1f
    db $10
    ld e, $11
    rrca
    rst $38
    rra
    rlca
    rrca
    nop
    nop
    ret nz

    ldh [$60], a
    rst $38
    or b
    ldh a, [$30]
    or b
    ld [hl], c
    ld [hl], e
    rst $30
    or l
    rst $38
    ld a, [hl]
    db $db
    inc a
    rst $28
    add hl, de
    ld l, [hl]
    sbc c
    rst $10
    rst $38
    jr c, jr_009_799a

    ld a, h
    ld a, [hl]
    rst $38
    db $e3
    rst $30
    ret nz

    rst $28
    pop hl
    add b
    ret nz

    nop
    rst $38
    db $e4
    ret nz

    ldh [rNR52], a
    rst $38
    rst $38
    rst $18
    add hl, sp
    ld_long a, $ff1d
    sbc h
    db $fd
    rst $38
    sbc [hl]
    ei
    ld e, $ea
    rra
    db $fd
    rrca
    db $dd
    rst $18
    db $ed
    db $fc
    db $fd
    jr jr_009_7a43

    ldh [$e5], a
    nop
    nop
    rst $38
    ld [$141c], sp
    cp a

jr_009_7a10:
    xor e
    rst $30
    ld e, h
    rst $20
    rst $38
    push af
    ld c, [hl]
    db $ed
    ld e, $ff
    ld e, $da
    ccf
    cp a
    ld a, c
    cp e
    ldh a, [$f9]
    ld h, b
    ldh a, [$e0]
    rst $20
    jr nc, @+$01

    ld a, b
    ret z

    db $fc
    ld [hl], h
    adc [hl]
    or $6e
    xor [hl]
    rst $38
    ld e, [hl]
    db $fc
    ld a, $d8
    inc a
    ld hl, sp+$0c
    cp h
    rst $38
    call z, $fcfc
    jr c, jr_009_7abb

    nop
    nop
    ld a, h
    rst $38

jr_009_7a43:
    cp $fa
    add a
    cp l
    jp $c17e


    ld a, e
    rst $38
    ld c, h
    ld a, l
    ld c, [hl]
    ld a, [hl]
    ld c, a
    ld a, [hl]
    ld c, a
    ld a, l
    rst $38
    ld c, [hl]
    ld a, e
    ld c, h
    ld a, a
    ld b, b
    ld a, [hl]
    ld b, c
    ld a, e
    rst $18
    ld b, a
    ccf
    ld a, a
    ld e, $3f
    add b
    db $e4
    add b
    add c
    rst $38
    jp $ef46


    xor e
    ld a, h
    rst $10
    jr c, @+$01

    rst $38
    inc de
    db $dd
    inc sp
    xor a
    ld [hl], b
    ld [hl], a
    ld hl, sp-$13
    rst $18
    cp $c7
    rst $28
    add c
    jp $e562


    inc bc
    rlca
    rst $38
    add a
    call nz, $fc4f
    cp a
    ld [hl], b
    rst $38
    inc a
    rst $38
    rst $30
    inc a
    rst $30
    inc [hl]
    rst $30
    inc a
    db $dd
    ld a, $ff
    ei
    ld e, $ba
    db $db
    ld sp, hl
    ei
    jr nc, jr_009_7b17

    cp $c0
    push hl
    add e
    rst $00
    adc h
    rst $18
    rst $10
    ld a, b
    xor a
    rst $38
    ldh a, [$df]
    and $bb
    add $7f
    ret nz

    rst $08
    rst $38
    ld [hl], b
    cp e
    ld a, h
    rst $30
    ccf
    di
    rst $30
    ldh [$fe], a

jr_009_7abb:
    ld h, b
    rst $20
    add b
    add b
    ret nz

    ld b, b
    ldh [$e0], a
    ld h, b
    cp $fe
    db $e3
    and b
    ld [hl], b
    ldh a, [$30]
    ld [hl], b
    or b
    ldh a, [rSB]
    ldh a, [rLCDC]
    pop hl
    nop
    nop
    nop

Call_009_7ad5:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    ld [$d205], a
    ld a, l
    ld [$d200], a
    ld a, h
    ld [$d201], a
    ld a, d
    ld [$d202], a
    ld a, e
    ld [$d203], a
    push de
    call Call_000_0341
    xor a
    ldh [$8a], a
    ldh [$8b], a
    call Call_000_23b6
    ld hl, $d200
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0028
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    call Call_000_1f2f
    ld hl, $d000

jr_009_7b17:
    ld de, $8e00
    ld c, $14
    call Call_000_04db
    ld hl, $7bac
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $b000
    ld c, $80
    call Call_000_0468
    ld hl, $d800
    ld de, $a800
    ld c, $80
    call Call_000_04db
    ld hl, $7e03
    ld de, $0206
    call Call_000_0595
    ld hl, $7e33
    ld de, $0c01
    call Call_000_0595
    ld hl, $4360
    ld de, $b800
    ld c, $24
    call Call_000_0468
    ld hl, $45a0
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0100
    ld c, $0a

jr_009_7b71:
    push bc
    push hl
    call Call_009_4916
    call Call_000_04de
    pop hl
    ld c, $0b
    push hl
    call Call_009_4949
    call Call_000_04de
    pop hl
    pop bc
    inc l
    dec c
    jr nz, jr_009_7b71

    ld a, $01
    ld hl, $4990
    call Call_000_23e8
    call Call_000_0371
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    rst $18
    nop
    dec b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    call Call_009_7e3b
    pop de
    ret


    dec d
    nop
    rst $38
    db $ec
    rst $38
    rst $38
    db $fc
    nop
    cp $ed
    rst $38
    rst $38
    sbc l
    ld [c], a
    ld a, a
    add d
    nop
    ld [de], a
    nop
    ld [hl], $00
    ld h, [hl]
    sub c
    ld [c], a
    rst $38
    inc b
    nop
    ld [$1900], sp
    nop
    inc de
    nop
    add a
    inc sp
    nop
    scf
    sub b
    xor $a0
    rst $20
    and l
    ldh [$fa], a
    pop hl
    rst $38
    rst $38
    ret nc

    rst $28
    sbc a
    rst $38
    and b
    rst $38
    xor a
    ldh a, [$f0]
    cp $e3
    ld a, [hl]
    pop hl
    db $fc
    ld [c], a
    reti


    and $07
    rst $38
    di
    rst $38
    rrca
    dec bc
    rst $38
    ei
    rrca
    cp $e3
    ret c

    push hl
    ret nc

    push hl
    add sp, -$1b
    xor [hl]
    ldh [$ed], a
    sbc a
    rst $38
    ret nz

    dec d
    db $e4
    add b
    db $fd
    ldh [$c8], a
    pop af
    or a
    ld a, [$f4e0]
    db $e3
    add [hl]
    ld [c], a
    xor l
    ld d, d
    ld b, b
    cp a
    ld l, [hl]
    ld [de], a
    db $e3
    rst $38
    rst $38
    ld bc, $e0fd
    ld l, e
    sub l
    ld a, [$3ce0]
    ld [bc], a
    db $e4
    adc $e1
    and e
    call c, $a1de
    adc $e3
    ld [hl], d
    db $e3
    rst $08
    dec l
    jp nc, Jump_000_0df2

    push bc
    jp $e3ce


    dec de
    push hl
    db $eb
    push af
    dec bc
    adc $e3
    ld l, [hl]
    rst $08
    call z, Call_000_0077
    ld a, a
    db $fc
    cp $e0
    cp c
    pop bc
    rst $30
    ld [$0cf3], sp
    ld sp, hl
    ld b, $80
    adc a
    ret


    ld h, $e3
    ld b, $e5
    cp $c3
    pop af
    ret z

    ld h, l
    jp nz, $e318

    db $eb
    di
    rra
    di
    ld [$54e0], sp
    jp nz, $fec6

    rst $20
    cp $ff
    rst $30
    sbc $ff
    sbc $ef
    sbc $e7
    sbc $77
    rst $20
    sbc h
    ld h, e
    ld e, a
    jp nz, $c77c

    cp $f2
    pop hl
    rst $28
    db $fc
    ld a, a
    pop bc
    ld a, $4f
    adc $f8
    rst $08
    db $fc
    ei
    rst $18
    and $d4
    pop hl
    call c, $f9ef
    cp $83
    rst $38
    ld a, h
    cp h
    jp $9ce3


    sbc a
    ldh [$f0], a
    rst $38
    adc a
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
    jr c, @+$7a

    rst $38
    add a
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
    cp l
    add [hl]
    ldh a, [$e5]

Jump_009_7cc3:
    dec e
    db $e3
    rst $20
    add hl, de
    ld [hl+], a
    pop hl
    rrca
    rst $18
    pop af
    ld sp, hl
    rlca
    rlca
    ld sp, hl
    ld [$c9c1], a
    rst $30
    rst $38
    jp z, $cbf5

    db $f4
    ret


    or $cb
    db $f4
    db $fc
    cp $e1
    ret nz

    and c
    ld a, a
    rst $38
    rra
    rst $38
    ld c, a
    cp a
    rst $38
    ld c, a
    cp a
    dec hl

jr_009_7cec:
    rst $18
    ld l, e
    rst $18
    rst $18
    jr nz, @+$01

    rst $08
    jr nc, jr_009_7d5c

    sbc b
    ld h, a
    sbc b
    inc hl
    call c, $23ff
    call c, $fe01
    ld bc, $f8fe
    rlca
    rst $38
    db $fc
    inc bc
    sbc h
    ld h, e
    call z, $6633
    sbc c
    ccf
    ld h, [hl]
    sbc c
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    sbc d
    push bc
    ld [bc], a
    db $eb
    db $fc
    and a
    and d
    sub e
    and l
    ld a, h
    add $3f
    cp $7f
    and $ef
    rst $38
    xor $f7
    cp $30
    pop hl

jr_009_7d29:
    jr nc, @-$07

    jr c, jr_009_7cec

    rst $38
    db $fc
    pop af
    ld a, $f7
    jr c, @-$06

    ldh [$3c], a
    db $e3
    pop hl
    ld e, $6f
    xor a
    cp $ff
    dec sp
    xor d
    add b
    sbc e
    db $e4
    rst $38
    or $89
    call $bbb2
    call nz, $99e6
    rst $38
    sbc c
    and $f7
    adc b
    rst $38
    nop
    rst $08
    jr nc, @+$01

    ld [hl], b
    adc a
    adc a
    ld [hl], b
    db $76
    adc c
    sbc c

jr_009_7d5c:
    ld h, [hl]
    rst $38
    and $19
    jr c, jr_009_7d29

    rst $38
    nop
    jp $ff3c


    db $fc
    inc bc
    inc bc
    db $fc
    db $fc
    inc bc
    daa
    ret c

    rst $38
    call c, Call_000_3323
    call z, Call_000_01ff
    sbc a
    ld h, c
    rst $38
    ld [hl], c
    adc a
    adc a
    ld [hl], c
    ld a, c
    add a
    rst $00
    add hl, sp
    rst $28
    dec a
    jp $1de3


    ld a, [bc]
    pop hl
    call $cdf2
    rst $18
    or $c9
    or $cd
    ld a, [c]
    cp $c1
    ld l, e
    rst $18
    rst $28
    dec hl
    rst $18
    ld c, e
    cp a
    cp $e3
    dec bc
    rst $38
    ld c, e
    sbc l
    cp a
    ret nc

    add a
    ld bc, $03ff
    ld d, h
    and b
    ret nz

    add c
    db $10
    ei
    rst $38
    ld h, b
    add d
    and b
    add b
    rst $38
    adc b
    rst $38
    jr jr_009_7db6

jr_009_7db6:
    inc c
    add $04
    rst $00
    and l
    adc c
    sub c
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $f6
    push af
    rrca
    rst $38
    sbc [hl]
    cp $e0
    cp [hl]
    rst $38
    inc a
    ei
    rst $38
    ld a, l
    cp $e0
    rst $38
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    rst $38
    ld [hl], c
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $28
    nop
    or b
    ld h, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    ld hl, sp+$03
    ld b, h
    inc bc
    nop
    ld [bc], a
    ld b, b
    ld bc, $4a96
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
    jr jr_009_7e8a

    ld d, d
    ld c, d
    adc h
    ld sp, $7bde
    jr jr_009_7e92

    ld d, d
    ld c, d
    adc h
    ld sp, $7d80
    rra
    ld l, b
    ld c, h
    ld l, b
    nop
    nop

Call_009_7e3b:
    ldh a, [$96]
    push af
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4360
    ld de, $d000
    ld c, $40
    call Call_000_03eb
    ld hl, $45a0
    ld de, $d400
    ld c, $40
    call Call_000_03eb
    call Call_000_0804
    pop af
    ldh [$96], a
    ldh [rSVBK], a
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

jr_009_7e8a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_009_7e92:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
