; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07f", ROMX[$4000], BANK[$7f]

    db $0a, $40, $6c, $40

    jp Jump_07f_400a


    jp Jump_07f_406c


Jump_07f_400a:
    cp $65
    jr nc, jr_07f_4019

    ld hl, $495c
    cp [hl]
    jr nc, jr_07f_406b

    ld hl, $495d
    jr jr_07f_4024

jr_07f_4019:
    ld hl, $615f
    cp [hl]
    jr nc, jr_07f_406b

    sub $65
    ld hl, $6160

jr_07f_4024:
    add a
    ld c, a
    ld b, $00
    ld a, [$c596]
    or a
    call nz, Call_07f_42e2
    ld a, $01
    ld [$c596], a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld [$c4cc], a
    ld [$c597], a
    ld de, $c58e
    ld c, $00

jr_07f_4044:
    ld a, [$c597]
    rrca
    ld [$c597], a
    jr nc, jr_07f_4063

    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    push hl
    ld hl, $c572
    add hl, bc
    ld [hl], $00
    ld hl, $c576
    add hl, bc
    ld [hl], $01
    pop hl
    jr jr_07f_4065

jr_07f_4063:
    inc de
    inc de

jr_07f_4065:
    inc c
    ld a, $04
    cp c
    jr nz, jr_07f_4044

jr_07f_406b:
    ret


Jump_07f_406c:
    ld a, [$c4cc]
    or a
    jp z, Jump_07f_42be

    xor a
    ld b, a
    ld c, a
    ld a, [$c4cc]
    ld [$c597], a

jr_07f_407c:
    ld hl, $c597
    ld a, [hl]
    rrca
    ld [hl], a
    jr nc, jr_07f_409d

    ld hl, $c576
    add hl, bc
    ld a, [hl]
    dec a
    jr z, jr_07f_4092

    ld [hl], a
    call Call_07f_419d
    jr jr_07f_409d

jr_07f_4092:
    ld hl, $c58e
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_07f_40a4

jr_07f_409d:
    inc c
    ld a, c
    cp $04
    jr nz, jr_07f_407c

    ret


Call_07f_40a4:
Jump_07f_40a4:
    ld a, [hl]
    and $f0
    swap a
    add a
    ld e, a
    ld d, $00
    ld a, [hl+]
    push hl
    and $0f
    ld hl, $40bb
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld h, d
    ld l, e
    jp hl


    db $de, $40, $1e, $41, $37, $41, $48, $41, $5d, $41, $76, $41, $82, $41

    ld [de], a
    ld b, d

    db $3d, $42

    db $db
    ld b, b
    db $db
    ld b, b
    db $db
    ld b, b
    db $db
    ld b, b
    db $db
    ld b, b

    db $59, $42, $9b, $42

    jp Jump_07f_40a4


    ld d, a
    pop hl
    ld a, [hl+]
    ld e, a
    push hl
    ld hl, $c57a
    add hl, bc
    add hl, bc
    push bc
    ld b, [hl]
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, c
    cp $03
    jr nz, jr_07f_40f9

    ld a, b
    xor e
    and $08
    swap a
    ld d, a

jr_07f_40f9:
    pop bc
    ld hl, $c56e
    add hl, bc
    ld a, [hl]
    ld [hl], $00
    or d
    ld d, a
    ld hl, $ff11
    ld a, c
    add a
    add a
    add c
    add l
    ld l, a
    ld a, [hl]
    and $c0
    ld [hl+], a
    inc hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de

Jump_07f_4115:
    ld hl, $c58e
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    ld hl, $c56e
    add hl, bc
    ld a, $80
    ld [hl], a
    pop hl
    ld a, [hl+]
    ld e, a
    push hl
    ld hl, $ff12
    ld a, c
    add a
    add a
    add c
    add l
    ld l, a
    ld [hl], e
    pop hl
    jp Jump_07f_40a4


    swap a
    ld e, a
    ld hl, $ff11
    ld a, c
    add a
    add a
    add c
    add l
    ld l, a
    ld [hl], e
    pop hl
    jp Jump_07f_40a4


    ld hl, $c586
    add hl, bc
    add hl, bc
    pop de
    ld a, [de]
    inc de
    ld [hl], e
    inc hl
    ld [hl], d
    ld hl, $c582
    add hl, bc
    ld [hl], a
    ld l, e
    ld h, d
    jp Jump_07f_40a4


    ld hl, $c582
    add hl, bc
    ld a, [hl]
    dec a
    jr z, jr_07f_4172

    ld [hl], a
    ld hl, $c586
    add hl, bc
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop de
    jp Jump_07f_40a4


jr_07f_4172:
    pop hl
    jp Jump_07f_40a4


    ld hl, $c572
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    ld a, [hl+]
    ld [de], a
    jp Jump_07f_40a4


    ld a, c
    cp $03
    jr nz, jr_07f_418c

    call Call_07f_41dd
    jr jr_07f_418f

jr_07f_418c:
    call Call_07f_419d

jr_07f_418f:
    ld hl, $c576
    add hl, bc
    ld e, l
    ld d, h
    pop hl
    ld a, [hl+]
    ld [de], a
    ld e, l
    ld d, h
    jp Jump_07f_4115


Call_07f_419d:
    ld hl, $c572
    add hl, bc
    ld a, [hl]
    or a
    jr z, jr_07f_41dc

    ld hl, $c57a
    add hl, bc
    add hl, bc
    bit 7, a
    jr z, jr_07f_41ba

    xor $ff
    inc a
    ld d, a
    ld a, [hl]
    sub d
    ld [hl+], a
    ld e, a
    ld a, [hl]
    sbc b
    jr jr_07f_41c1

jr_07f_41ba:
    ld d, a
    ld a, [hl]
    add d
    ld [hl+], a
    ld e, a
    ld a, [hl]
    adc b

jr_07f_41c1:
    ld [hl], a
    ld hl, $c56e
    add hl, bc
    ld d, [hl]
    ld [hl], $00
    or d
    ld d, a
    ld hl, $ff11
    ld a, c
    add a
    add a
    add c
    add l
    ld l, a
    ld a, [hl]
    and $c0
    ld [hl+], a
    inc hl
    ld a, e
    ld [hl+], a
    ld [hl], d

jr_07f_41dc:
    ret


Call_07f_41dd:
    ld hl, $c575
    ld a, [hl]
    or a
    jr z, jr_07f_4211

    ld hl, $c580
    bit 7, a
    jr z, jr_07f_41f5

    xor $ff
    inc a
    ld d, a
    ld e, [hl]
    ld a, e
    sub d
    ld [hl], a
    jr jr_07f_41fa

jr_07f_41f5:
    ld d, a
    ld e, [hl]
    ld a, e
    add d
    ld [hl], a

jr_07f_41fa:
    ld d, a
    xor e
    and $08
    swap a
    ld hl, $c571
    ld e, [hl]
    ld [hl], $00
    or e
    ld e, a
    ld hl, $ff20
    xor a
    ld [hl+], a
    inc hl
    ld a, d
    ld [hl+], a
    ld [hl], e

jr_07f_4211:
    ret


    add a
    ld d, $00
    ld e, a
    ld hl, $4b6b
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $00
    ldh [rNR30], a
    ld b, d
    ld de, $ff30

jr_07f_4225:
    ld a, [hl+]
    ld [de], a
    inc de
    inc b
    ld a, b
    cp $10
    jr nz, jr_07f_4225

    ld a, $01
    ld [$c4cb], a
    ld a, $80
    ldh [rNR30], a
    ld b, $00
    pop hl
    jp Jump_07f_40a4


    pop hl
    ld a, [hl+]
    push hl
    push bc
    inc c
    ld e, $ee

jr_07f_4244:
    dec c
    jr z, jr_07f_424c

    rlca
    rlc e
    jr jr_07f_4244

jr_07f_424c:
    ld d, a
    ld hl, $c4c5
    ld a, [hl]
    and e
    or d
    ld [hl], a
    pop bc
    pop hl
    jp Jump_07f_40a4


    ld hl, $c57a
    add hl, bc
    add hl, bc
    push hl
    ld hl, $caab
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    srl h
    rr l
    res 0, l
    ld de, $431c
    add hl, de
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld hl, $c56e
    add hl, bc
    ld a, [hl]
    ld [hl], $00
    or d
    ld d, a
    ld hl, $ff11
    ld a, c
    add a
    add a
    add c
    add l
    ld l, a
    ld a, [hl]
    and $c0
    ld [hl+], a
    inc hl
    ld a, e
    ld [hl+], a
    ld [hl], d
    pop de
    ld hl, $c58e
    add hl, bc
    add hl, bc
    ld [hl], e
    inc hl
    ld [hl], d
    ret


    ld e, c
    inc e
    ld a, $7f

jr_07f_429f:
    rlca
    dec e
    jr nz, jr_07f_429f

    ld e, a
    ld a, [$c4cc]
    and e
    ld [$c4cc], a
    ld a, c
    rlca
    rlca
    add c
    ld e, a
    ld d, b
    ld hl, $ff12
    add hl, de
    ld a, $08
    ld [hl+], a
    inc hl
    swap a
    ld [hl], a
    pop hl
    ret


Jump_07f_42be:
    xor a
    ld [$c596], a
    ld [$c4c3], a
    ld a, $80
    ld [$c4c2], a
    ret


    ld a, $08
    ldh a, [rNR12]
    ldh a, [rNR22]
    ldh a, [rNR32]
    ldh a, [rNR42]
    ld a, $80
    ldh a, [rNR14]
    ldh a, [rNR24]
    ldh a, [rNR44]
    xor a
    ld [$c4cc], a
    ret


Call_07f_42e2:
    push hl
    ld a, [$c4cc]
    rrca
    jr nc, jr_07f_42f2

    ld hl, $ff12
    ld [hl], $08
    ld l, $14
    ld [hl], $80

jr_07f_42f2:
    rrca
    jr nc, jr_07f_42fe

    ld hl, $ff17
    ld [hl], $08
    ld l, $19
    ld [hl], $80

jr_07f_42fe:
    rrca
    jr nc, jr_07f_430a

    ld hl, $ff1c
    ld [hl], $08
    ld l, $1e
    ld [hl], $80

jr_07f_430a:
    rrca
    jr nc, jr_07f_4316

    ld hl, $ff21
    ld [hl], $08
    ld l, $23
    ld [hl], $80

jr_07f_4316:
    xor a
    ld [$c4cc], a
    pop hl
    ret


    db $fb, $05, $fd, $05, $00, $06, $02, $06, $04, $06, $06, $06, $08, $06, $0b, $06
    db $0d, $06, $0f, $06, $11, $06, $13, $06, $15, $06, $17, $06, $1a, $06, $1c, $06
    db $1e, $06, $20, $06, $22, $06, $24, $06, $26, $06, $28, $06, $2a, $06, $2c, $06
    db $2e, $06, $30, $06, $32, $06, $34, $06, $36, $06, $38, $06, $3a, $06, $3c, $06
    db $3e, $06, $40, $06, $42, $06, $44, $06, $46, $06, $48, $06, $4a, $06, $4b, $06
    db $4d, $06, $4f, $06, $51, $06, $53, $06, $55, $06, $57, $06, $58, $06, $5a, $06
    db $5c, $06, $5e, $06, $60, $06, $62, $06, $63, $06, $65, $06, $67, $06, $69, $06
    db $6a, $06, $6c, $06, $6e, $06, $70, $06, $71, $06, $73, $06, $75, $06, $77, $06
    db $78, $06, $7a, $06, $7c, $06, $7d, $06, $7f, $06, $81, $06, $82, $06, $84, $06
    db $86, $06, $87, $06, $89, $06, $8a, $06, $8c, $06, $8e, $06, $8f, $06, $91, $06
    db $92, $06, $94, $06, $96, $06, $97, $06, $99, $06, $9a, $06, $9c, $06, $9d, $06
    db $9f, $06, $a0, $06, $a2, $06, $a3, $06, $a5, $06, $a6, $06, $a8, $06, $a9, $06
    db $ab, $06, $ac, $06, $ae, $06, $af, $06, $b1, $06, $b2, $06, $b4, $06, $b5, $06
    db $b6, $06, $b8, $06, $b9, $06, $bb, $06, $bc, $06, $be, $06, $bf, $06, $c0, $06
    db $c2, $06, $c3, $06, $c4, $06, $c6, $06, $c7, $06, $c8, $06, $ca, $06, $cb, $06
    db $cc, $06, $ce, $06, $cf, $06, $d0, $06, $d2, $06, $d3, $06, $d4, $06, $d6, $06
    db $d7, $06, $d8, $06, $da, $06, $db, $06, $dc, $06, $dd, $06, $df, $06, $e0, $06
    db $e1, $06, $e2, $06, $e4, $06, $e5, $06, $e6, $06, $e7, $06, $e8, $06, $ea, $06
    db $eb, $06, $ec, $06, $ed, $06, $ee, $06, $f0, $06, $f1, $06, $f2, $06, $f3, $06
    db $f4, $06, $f5, $06, $f7, $06, $f8, $06, $f9, $06, $fa, $06, $fb, $06, $fc, $06
    db $fd, $06, $fe, $06, $00, $07, $01, $07, $02, $07, $03, $07, $04, $07, $05, $07
    db $06, $07, $07, $07, $08, $07, $09, $07, $0a, $07, $0b, $07, $0d, $07, $0e, $07
    db $0f, $07, $10, $07, $11, $07, $12, $07, $13, $07, $14, $07, $15, $07, $16, $07
    db $17, $07, $18, $07, $19, $07, $1a, $07, $1b, $07, $1c, $07, $1d, $07, $1e, $07
    db $1f, $07, $20, $07, $21, $07, $22, $07, $23, $07, $24, $07, $25, $07, $25, $07
    db $26, $07, $27, $07, $28, $07, $29, $07, $2a, $07, $2b, $07, $2c, $07, $2d, $07
    db $2e, $07, $2f, $07, $30, $07, $31, $07, $31, $07, $32, $07, $33, $07, $34, $07
    db $35, $07, $36, $07, $37, $07, $38, $07, $38, $07, $39, $07, $3a, $07, $3b, $07
    db $3c, $07, $3d, $07, $3e, $07, $3e, $07, $3f, $07, $40, $07, $41, $07, $42, $07
    db $43, $07, $43, $07, $44, $07, $45, $07, $46, $07, $47, $07, $47, $07, $48, $07
    db $49, $07, $4a, $07, $4b, $07, $4b, $07, $4c, $07, $4d, $07, $4e, $07, $4e, $07
    db $4f, $07, $50, $07, $51, $07, $51, $07, $52, $07, $53, $07, $54, $07, $54, $07
    db $55, $07, $56, $07, $57, $07, $57, $07, $58, $07, $59, $07, $5a, $07, $5a, $07
    db $5b, $07, $5c, $07, $5c, $07, $5d, $07, $5e, $07, $5f, $07, $5f, $07, $60, $07
    db $61, $07, $61, $07, $62, $07, $63, $07, $63, $07, $64, $07, $65, $07, $65, $07
    db $66, $07, $67, $07, $67, $07, $68, $07, $69, $07, $69, $07, $6a, $07, $6b, $07

    ld l, e
    rlca

    db $6c, $07, $6d, $07, $6d, $07, $6e, $07, $6e, $07, $6f, $07, $70, $07

    ld [hl], b
    rlca

    db $71, $07, $72, $07, $72, $07, $73, $07, $73, $07

    ld [hl], h
    rlca

    db $75, $07, $75, $07, $76, $07, $76, $07, $77, $07, $78, $07, $78, $07, $79, $07
    db $79, $07, $7a, $07, $7a, $07, $7b, $07, $7c, $07, $7c, $07, $7d, $07, $7d, $07
    db $7e, $07, $7e, $07, $7f, $07, $80, $07, $80, $07, $81, $07, $81, $07, $82, $07
    db $82, $07, $83, $07, $83, $07, $84, $07, $84, $07, $85, $07, $85, $07, $86, $07
    db $87, $07, $87, $07, $88, $07, $88, $07, $89, $07, $89, $07, $8a, $07, $8a, $07
    db $8b, $07, $8b, $07, $8c, $07

    adc h
    rlca
    adc l
    rlca
    adc l
    rlca
    adc [hl]
    rlca
    adc [hl]
    rlca
    adc a
    rlca
    adc a
    rlca
    sub b
    rlca
    sub b
    rlca
    sub c
    rlca
    sub c
    rlca
    sub d
    rlca
    sub d
    rlca
    sub d
    rlca
    sub e
    rlca
    sub e
    rlca
    sub h
    rlca
    sub h
    rlca
    sub l
    rlca
    sub l
    rlca
    sub [hl]
    rlca
    sub [hl]
    rlca
    sub a
    rlca
    sub a
    rlca
    sbc b
    rlca
    sbc b
    rlca
    sbc b
    rlca
    sbc c
    rlca
    sbc c
    rlca
    sbc d
    rlca
    sbc d
    rlca
    sbc e
    rlca
    sbc e
    rlca
    sbc h
    rlca
    sbc h
    rlca
    sbc h
    rlca
    sbc l
    rlca
    sbc l
    rlca
    sbc [hl]
    rlca
    sbc [hl]
    rlca
    sbc a
    rlca
    sbc a
    rlca
    sbc a
    rlca
    and b
    rlca
    and b
    rlca
    and c
    rlca
    and c
    rlca
    and c
    rlca
    and d
    rlca
    and d
    rlca
    and e
    rlca
    and e
    rlca
    and e
    rlca
    and h
    rlca
    and h
    rlca
    and l
    rlca
    and l
    rlca
    and l
    rlca
    and [hl]
    rlca
    and [hl]
    rlca
    and a
    rlca
    and a
    rlca
    and a
    rlca
    xor b
    rlca
    xor b
    rlca
    xor b
    rlca
    xor c
    rlca
    xor c
    rlca
    xor d
    rlca
    xor d
    rlca
    xor d
    rlca
    xor e
    rlca
    xor e
    rlca
    xor e
    rlca
    xor h
    rlca
    xor h
    rlca
    xor l
    rlca
    xor l
    rlca
    xor l
    rlca
    xor [hl]
    rlca
    xor [hl]
    rlca
    xor [hl]
    rlca
    xor a
    rlca
    xor a
    rlca
    xor a
    rlca
    or b
    rlca
    or b
    rlca
    or b
    rlca
    or c
    rlca
    or c
    rlca
    or c
    rlca
    or d
    rlca
    or d
    rlca
    or d
    rlca
    or e
    rlca
    or e
    rlca
    or e
    rlca
    or h
    rlca
    or h
    rlca
    or h
    rlca
    or l
    rlca
    or l
    rlca
    or l
    rlca
    or [hl]
    rlca
    or [hl]
    rlca
    or [hl]
    rlca
    or a
    rlca
    or a
    rlca
    or a
    rlca
    cp b
    rlca
    cp b
    rlca
    cp b
    rlca
    cp c
    rlca
    cp c
    rlca
    cp c
    rlca
    cp c
    rlca
    cp d
    rlca
    cp d
    rlca
    cp d
    rlca
    cp e
    rlca
    cp e
    rlca
    cp e
    rlca
    cp h
    rlca
    cp h
    rlca
    cp h
    rlca
    cp h
    rlca
    cp l
    rlca
    cp l
    rlca
    cp l
    rlca
    cp [hl]
    rlca
    cp [hl]
    rlca
    cp [hl]
    rlca
    cp [hl]
    rlca
    cp a
    rlca
    cp a
    rlca
    cp a
    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    pop bc
    rlca
    pop bc
    rlca
    pop bc
    rlca
    pop bc
    rlca
    jp nz, $c207

    rlca
    jp nz, $c207

    rlca
    jp $c307


    rlca
    jp $c407


    rlca
    call nz, $c407
    rlca
    call nz, $c507
    rlca
    push bc
    rlca
    push bc
    rlca
    push bc
    rlca
    add $07
    add $07
    add $07
    add $07
    rst $00
    rlca
    rst $00
    rlca
    rst $00
    rlca
    rst $00
    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret z

    rlca
    ret


    rlca
    ret


    rlca
    ret


    rlca
    ret


    rlca
    ret


    rlca
    jp z, $ca07

    rlca
    jp z, $ca07

    rlca
    rlc a
    rlc a
    rlc a
    rlc a
    call z, $cc07
    rlca
    call z, $cc07
    rlca
    call z, $cd07
    rlca
    call $cd07
    rlca
    call $ce07
    rlca
    adc $07
    adc $07
    adc $07
    adc $07
    rst $08
    rlca
    rst $08
    rlca
    rst $08
    rlca
    rst $08
    rlca
    rst $08
    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    ret nc

    rlca
    pop de
    rlca
    pop de
    rlca
    pop de
    rlca
    pop de
    rlca
    pop de
    rlca
    jp nc, $d207

    rlca
    jp nc, $d207

    rlca
    jp nc, $d307

    rlca
    db $d3
    rlca
    db $d3
    rlca
    db $d3
    rlca
    db $d3
    rlca
    call nc, $d407
    rlca
    call nc, $d407
    rlca
    call nc, $d507
    rlca
    push de
    rlca
    push de
    rlca
    push de
    rlca
    push de
    rlca
    push de
    rlca
    sub $07
    sub $07
    sub $07
    sub $07
    sub $07
    rst $10
    rlca
    rst $10
    rlca
    rst $10
    rlca
    rst $10
    rlca
    rst $10
    rlca
    rst $10
    rlca
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    ret c

    rlca
    reti


    rlca
    reti


    rlca
    reti


    rlca
    reti


    rlca
    reti


    rlca
    reti


    rlca
    jp c, $da07

    rlca
    jp c, $da07

    rlca
    jp c, $da07

    rlca
    db $db
    rlca
    db $db
    rlca
    db $db
    rlca
    db $db
    rlca
    db $db
    rlca
    db $db
    rlca
    call c, $dc07
    rlca
    call c, $dc07
    rlca
    call c, $dc07
    rlca
    call c, $dd07
    rlca
    db $dd
    rlca
    db $dd
    rlca
    db $dd
    rlca
    db $dd
    rlca
    db $dd
    rlca
    sbc $07
    sbc $07
    sbc $07
    sbc $07
    sbc $07
    sbc $07
    sbc $07
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    rst $18
    rlca
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rTAC], a
    pop hl
    rlca
    pop hl
    rlca
    pop hl
    rlca
    pop hl
    rlca
    pop hl
    rlca
    pop hl
    rlca
    pop hl
    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    db $e3
    rlca
    db $e3
    rlca
    db $e3
    rlca
    db $e3
    rlca
    db $e3
    rlca
    db $e3
    rlca
    db $e3
    rlca
    db $e3
    rlca
    db $e4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    db $e4
    rlca
    push hl
    rlca
    push hl
    rlca
    push hl
    rlca
    push hl
    rlca
    push hl
    rlca
    push hl
    rlca
    push hl
    rlca
    push hl
    rlca
    and $07
    and $07
    and $07
    and $07
    and $07
    and $07
    and $07
    and $07
    and $07
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    rst $20
    rlca
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    add sp, $07
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    jp hl


    rlca
    ld [$ea07], a
    rlca
    ld [$ea07], a
    rlca
    ld [$ea07], a
    rlca
    ld [$ea07], a
    rlca
    ld [$ea07], a
    rlca
    ld [$eb07], a
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $eb
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ec
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    db $ed
    rlca
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    xor $07
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rlca

    db $6e, $29, $4a, $2a, $4a, $2f, $4a, $34, $4a

    add hl, sp
    ld c, d

    db $3e, $4a, $43, $4a

    ld c, b
    ld c, d

    db $4d, $4a, $50, $4a

    ld d, e
    ld c, d
    ld d, [hl]
    ld c, d
    ld e, c
    ld c, d
    ld e, h
    ld c, d
    ld e, a
    ld c, d
    ld h, d
    ld c, d
    ld h, l
    ld c, d
    ld l, b
    ld c, d
    ld l, e
    ld c, d
    ld l, [hl]
    ld c, d
    ld [hl], c
    ld c, d
    ld [hl], h
    ld c, d
    ld [hl], a
    ld c, d
    ld a, d
    ld c, d
    ld a, l
    ld c, d
    add b
    ld c, d

    db $83, $4a, $86, $4a, $89, $4a, $8c, $4a, $8f, $4a, $92, $4a, $95, $4a

    sbc b
    ld c, d

    db $9b, $4a

    sbc [hl]
    ld c, d
    and c
    ld c, d
    and h
    ld c, d
    and a
    ld c, d
    xor d
    ld c, d
    xor l
    ld c, d
    or b
    ld c, d
    or e
    ld c, d
    or [hl]
    ld c, d
    cp c
    ld c, d

    db $bc, $4a, $bf, $4a, $c2, $4a, $c5, $4a

    ret z

    ld c, d
    bit 1, d
    adc $4a
    pop de
    ld c, d
    call nc, $d74a
    ld c, d
    jp c, $dd4a

    ld c, d
    ldh [rWY], a
    db $e3
    ld c, d
    and $4a
    jp hl


    ld c, d
    db $ec
    ld c, d
    rst $28
    ld c, d
    ld a, [c]
    ld c, d
    push af
    ld c, d

    db $f8, $4a, $fb, $4a, $fe, $4a, $01, $4b

    inc b
    ld c, e
    rlca
    ld c, e
    ld a, [bc]
    ld c, e
    dec c
    ld c, e
    db $10
    ld c, e

    db $13, $4b, $16, $4b, $19, $4b, $1c, $4b

    rra
    ld c, e
    ld [hl+], a
    ld c, e

    db $25, $4b

    jr z, jr_07f_4a4c

    dec hl
    ld c, e
    ld l, $4b
    inc sp
    ld c, e
    ld [hl], $4b
    add hl, sp
    ld c, e
    inc a
    ld c, e
    ccf
    ld c, e
    ld b, d
    ld c, e
    ld b, l
    ld c, e
    ld c, b
    ld c, e
    ld c, e
    ld c, e
    ld c, [hl]
    ld c, e
    ld d, e
    ld c, e
    ld d, [hl]
    ld c, e
    ld e, c
    ld c, e
    ld e, h
    ld c, e
    ld e, a
    ld c, e
    ld h, d
    ld c, e
    ld h, l
    ld c, e
    ld l, b
    ld c, e

    db $00, $0a, $83, $61, $cf, $4d, $0a, $83, $61, $16, $4e, $0a, $83, $61, $a4, $4e

    ld a, [bc]
    add e
    ld h, c
    db $da
    ld c, [hl]

    db $0a, $83, $61, $10, $4f, $0a, $83, $61, $45, $4f

    ld a, [bc]
    add e
    ld h, c
    adc l

jr_07f_4a4c:
    ld c, a

    db $08, $ef, $4f, $08, $fe, $4f

    ld [$5011], sp
    ld [bc], a
    inc h
    ld d, b
    ld [$5040], sp
    ld [$504f], sp
    ld [$505f], sp
    ld [bc], a
    cp l
    ld d, b
    ld [$50eb], sp
    ld [$512c], sp
    ld [$515e], sp
    ld [$51c7], sp
    ld [bc], a
    ld h, a
    ld d, d
    ld [bc], a
    adc [hl]
    ld d, d
    ld [bc], a
    or l
    ld d, d
    ld [bc], a
    db $d3
    ld d, d
    ld [$52ef], sp
    ld [$5320], sp

    db $02, $46, $53, $02, $98, $53, $02, $a8, $53, $02, $c9, $53, $02, $f1, $53, $02
    db $0e, $54, $02, $4c, $54

    ld [bc], a
    ld e, b
    ld d, h

    db $02, $78, $54

    ld [bc], a
    or [hl]
    ld d, h
    ld [bc], a
    ld [hl], $55
    ld [bc], a
    ld h, d
    ld d, l
    ld [bc], a
    cp $55
    ld [bc], a
    inc e
    ld d, [hl]
    ld [bc], a
    jr nc, jr_07f_4b06

    ld [bc], a
    xor b
    ld d, [hl]
    ld [bc], a
    call z, $0256
    ldh a, [rRP]
    ld [bc], a
    inc d
    ld d, a

    db $02, $38, $57, $02, $55, $57, $02, $72, $57, $02, $8f, $57

    ld [bc], a
    xor h
    ld d, a
    ld [bc], a
    ret nz

    ld d, a
    ld [bc], a
    call nc, $0257
    add sp, $57
    ld [bc], a
    db $fc
    ld d, a
    ld [bc], a
    inc e
    ld e, b
    ld [bc], a
    inc a
    ld e, b
    ld [bc], a
    ld e, h
    ld e, b
    ld [bc], a
    ld a, h
    ld e, b
    ld [bc], a
    sbc d
    ld e, b
    ld [bc], a
    cp b
    ld e, b
    ld [bc], a
    sub $58
    ld [bc], a
    db $f4
    ld e, b
    ld [bc], a
    ld c, $59
    ld [bc], a
    jr z, jr_07f_4b4e

    ld [bc], a
    ld b, d
    ld e, c

    db $02, $5c, $59, $02, $6e, $59, $02, $80, $59, $02, $92, $59

    ld [bc], a
    and h

jr_07f_4b06:
    ld e, c
    ld [bc], a
    ret nz

    ld e, c
    ld [bc], a
    call c, $0259
    ld hl, sp+$59
    ld [bc], a
    inc d
    ld e, d

    db $02, $32, $5a, $02, $3e, $5a, $08, $4e, $5a, $02, $63, $5a

    ld [bc], a
    ld [hl], l
    ld e, d
    ld [bc], a
    add c
    ld e, d

    db $02, $a1, $5a

    ld [$5aad], sp
    ld [$5b20], sp
    ld a, [bc]
    ld l, l
    ld e, e
    inc [hl]
    ld e, h
    ld [bc], a
    ld l, l
    ld e, h
    ld [bc], a
    and b
    ld e, h
    ld [bc], a
    ld [de], a
    ld e, l
    ld [$5d72], sp
    ld [bc], a
    and e
    ld e, l
    ld [bc], a
    add hl, de
    ld e, [hl]
    ld [$5e83], sp
    ld [$5e9c], sp
    ld [bc], a
    or d
    ld e, [hl]

jr_07f_4b4e:
    ld a, [bc]
    add $5e
    push hl
    ld e, [hl]
    ld [$5f0d], sp
    ld [$5f4e], sp
    ld [bc], a
    ld l, l
    ld e, a
    ld [bc], a
    adc e
    ld e, a
    ld [$5faa], sp
    ld [bc], a
    dec c
    ld h, b
    ld [bc], a
    cp a
    ld h, b
    ld [bc], a
    ld d, a
    ld h, c
    rrca
    ld c, h
    rra
    ld c, h
    cpl
    ld c, h
    ccf
    ld c, h
    ld c, a
    ld c, h
    ld e, a
    ld c, h
    ld l, a
    ld c, h
    ld a, a
    ld c, h
    adc a
    ld c, l
    sbc a
    ld c, l
    xor a
    ld c, l
    cp a
    ld c, l
    ld c, a
    ld c, l
    ld e, a
    ld c, l
    ld l, a
    ld c, l
    ld a, a
    ld c, l
    rrca
    ld c, l
    rra
    ld c, l
    cpl
    ld c, l
    ccf
    ld c, l
    rst $08
    ld c, h
    rst $18
    ld c, h
    rst $28
    ld c, h
    rst $38
    ld c, h
    adc a
    ld c, h
    sbc a
    ld c, h
    xor a
    ld c, h
    cp a
    ld c, h
    xor a
    ld c, e
    cp a
    ld c, e
    rst $08
    ld c, e
    rst $18
    ld c, e
    rst $28
    ld c, e
    rst $38
    ld c, e
    xor $ee
    xor $ee
    xor $ee
    db $ec
    xor b
    ld h, h
    jr nz, jr_07f_4bba

jr_07f_4bba:
    nop
    nop
    nop
    nop
    nop
    xor $ee
    xor $ee
    xor $ed
    res 3, b
    ld h, l
    ld [hl-], a
    stop
    nop
    nop
    nop
    nop
    xor $ee
    xor $ee
    xor $ee
    xor $ca
    ld h, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    sbc c
    ld [hl], a
    ld b, h
    ld [hl+], a
    nop
    ld b, b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor [hl]
    xor $ee
    xor $ee
    xor $ee
    ld [$1151], a
    ld de, $1111
    ld de, $1511
    ld a, c
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp c
    ld [hl], l
    ld sp, $0000
    nop
    nop
    ld bc, $0135
    ld [de], a
    inc hl
    inc [hl]
    ld b, l
    ld d, [hl]
    ld h, a
    ld [hl], a
    adc b
    sbc c
    xor d
    cp e
    call z, $eedd
    rst $38
    ld [de], a
    inc hl
    inc sp
    ld b, h
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc d
    xor e
    cp e
    call z, $eedd
    ld [hl+], a
    inc sp
    inc [hl]
    ld b, l
    ld d, l
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc c
    sbc c
    xor d
    cp e
    cp h
    call Call_000_33dd
    inc [hl]
    ld b, h
    ld d, l
    ld d, [hl]
    ld h, [hl]
    ld [hl], a
    ld [hl], a
    ld a, b
    adc b
    sbc c
    sbc d
    xor d
    cp e
    cp h
    call z, $ff7b
    rst $38
    ei
    ld [hl], e
    nop
    nop
    inc bc
    ld a, e
    rst $38
    rst $38
    ei
    ld [hl], e
    nop
    nop
    inc bc
    ld a, e
    rst $28
    rst $38
    db $eb
    ld [hl], e
    nop
    nop
    inc bc
    ld a, e
    rst $28
    rst $38
    db $eb
    ld [hl], e
    nop
    nop
    inc bc
    ld a, d
    rst $18
    rst $38
    jp c, $1074

    nop
    inc d
    ld a, d
    rst $18
    rst $38
    jp c, $1074

    nop
    inc d
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $cc11
    call z, $cccc
    call z, $cccc
    call z, $cccc
    call z, $cccc
    call z, $2222
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $cc11
    call z, $2222
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
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $1111
    ld de, $cccc
    call z, $cccc
    call z, $cccc
    call z, $cccc
    call z, $2222
    ld [hl+], a
    ld [hl+], a
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    xor $ee
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    call z, $cccc
    call z, $2222
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
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    xor $ee
    xor $ee
    xor $ee
    xor $ee
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    ld de, $1111
    ld de, $1111
    ld de, $cc11
    call z, $cccc
    call z, $cccc
    call z, $2222
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp

    db $80, $11, $10, $49, $00, $25, $00, $24, $00, $16, $00, $14, $10, $f1, $00, $07
    db $00, $08, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $00, $14, $10, $00
    db $50, $00, $60, $01, $50, $ff, $10, $f1, $10, $71, $00, $15, $00, $17, $00, $25
    db $00, $27, $00, $35, $10, $69, $30, $02, $00, $02, $00, $04, $40, $10, $63, $30
    db $07, $00, $02, $00, $04, $40, $f0, $80, $11, $10, $39, $30, $03, $00, $33, $40
    db $10, $f1, $00, $07, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $00, $08
    db $00, $14, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $10, $7d, $00, $35
    db $00, $34, $00, $35, $00, $34, $00, $27, $00, $34, $00, $27, $00, $26, $00, $27
    db $00, $26, $00, $25, $00, $26, $00, $25, $00, $24, $00, $25, $00, $24, $00, $17
    db $00, $24, $00, $17, $00, $16, $00, $17, $00, $16, $00, $15, $00, $16, $00, $15
    db $00, $14, $00, $15, $00, $14, $00, $07, $00, $14, $00, $07, $00, $06, $00, $07
    db $00, $06, $00, $05, $00, $06, $00, $05, $00, $04, $00, $05, $00, $04, $10, $e2
    db $00, $03, $00, $04, $00, $03, $00, $02, $00, $03, $00, $02, $00, $01, $00, $02
    db $00, $01, $00, $00, $f0, $80, $11, $10, $49, $00, $26, $00, $25, $00, $24, $10
    db $f1, $00, $08, $00, $14, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $00
    db $08, $10, $71, $30, $07, $00, $14, $40, $10, $69, $30, $02, $00, $03, $00, $05
    db $40, $10, $63, $30, $07, $00, $03, $00, $05, $40, $f0

    add b
    ld de, $4910
    nop
    inc h
    nop
    inc d
    nop
    rlca
    db $10
    pop af
    nop
    ld [$0010], sp
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    pop af
    nop
    inc d
    db $10
    ld [hl], c
    nop
    rla
    jr nc, @+$08

    nop
    dec h
    ld b, b
    db $10
    dec sp
    jr nc, jr_07f_4f07

    nop
    ld [bc], a
    nop
    inc b
    ld b, b
    db $10

jr_07f_4f07:
    ld h, d
    jr nc, jr_07f_4f0f

    nop
    ld [bc], a
    nop
    inc b
    ld b, b

jr_07f_4f0f:
    db $f0

    db $80, $11, $10, $49, $00, $34, $00, $27, $00, $26, $10, $f1, $00, $15, $10, $00
    db $50, $00, $60, $01, $50, $ff, $10, $f1, $00, $14, $10, $71, $00, $25, $00, $27
    db $00, $35, $10, $3b, $30, $06, $00, $02, $00, $04, $40, $10, $62, $30, $05, $00
    db $02, $00, $04, $40, $f0, $80, $11, $10, $49, $00, $34, $00, $27, $00, $26, $00
    db $25, $10, $f1, $00, $14, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $f1, $00
    db $07, $10, $49, $00, $03, $00, $02, $10, $00, $50, $00, $60, $01, $50, $ff, $10
    db $49, $10, $72, $30, $05, $00, $03, $00, $02, $40, $10, $3b, $30, $06, $00, $02
    db $00, $04, $40, $10, $62, $30, $05, $00, $02, $00, $04, $40, $f0

    add b
    ld de, $5910
    nop
    inc [hl]
    nop
    daa
    nop
    ld h, $00
    dec h
    db $10
    or c
    nop
    rla
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    or c
    jr nc, jr_07f_4fae

    nop
    inc h
    nop
    ld h, $40

jr_07f_4fae:
    db $10
    dec sp
    jr nc, jr_07f_4fb8

    nop
    inc bc
    nop
    dec b
    ld b, b
    db $10

jr_07f_4fb8:
    ld [hl], d
    jr nc, @+$08

    nop
    inc bc
    nop
    dec b
    ld b, b
    ldh a, [$80]
    ld de, $5028
    nop
    db $10
    and b
    rlca
    db $db
    db $10
    sub b
    rlca
    db $db
    db $10
    add b
    rlca
    db $db
    db $10
    ld [hl], b
    rlca
    db $db
    db $10
    ld h, b
    rlca
    db $db
    db $10
    ld d, b
    rlca
    db $db
    db $10
    ld b, b
    rlca
    db $db
    db $10
    jr nc, jr_07f_4fec

    db $db
    db $10
    jr nz, @+$09

    db $db
    db $10
    db $10

jr_07f_4fec:
    rlca
    db $db
    db $f0

    db $80, $11, $10, $c0, $00, $04, $10, $50, $00, $3c, $10, $20, $00, $3c, $f0, $80
    db $11, $10, $39, $00, $24, $10, $f0, $00, $35, $10, $49, $00, $05, $00, $07, $00
    db $15, $f0

    add b
    ld de, $3910
    nop
    ld d, $10
    ldh a, [rP1]
    daa
    db $10
    ld c, c
    nop
    inc bc
    nop
    dec b
    nop
    rlca
    ldh a, [$28]
    add b
    ld de, $7910
    ld [bc], a
    add $10
    ldh a, [$03]
    ld e, b
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [$03]
    sbc e
    inc bc
    ld e, b
    ld [bc], a
    add $f0
    add b
    ld de, $3910
    nop
    inc h
    db $10
    ldh a, [rP1]
    dec [hl]
    db $10
    ld c, c
    nop
    rlca
    ldh a, [$80]
    ld de, $f010
    nop
    dec c
    nop
    ld d, $10
    ld [hl], h
    jr nc, jr_07f_506f

    nop
    ld d, $40
    ldh a, [$80]
    ld de, $5e10
    jr nc, jr_07f_5069

    nop
    ld h, $00
    dec h

jr_07f_5069:
    nop
    daa
    ld b, b
    nop
    inc [hl]
    nop

jr_07f_506f:
    daa
    nop
    ld h, $00
    daa
    nop
    ld h, $00
    dec h
    nop
    ld h, $00
    dec h
    nop
    inc h
    nop
    dec h
    nop
    inc h
    nop
    rla
    nop
    inc h
    nop
    rla
    nop
    ld d, $00
    rla
    nop
    ld d, $00
    dec d
    nop
    ld d, $00
    dec d
    nop
    inc d
    nop
    dec d
    nop
    inc d
    nop
    rlca
    nop
    inc d
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    ld b, $00
    dec b
    nop
    ld b, $00
    dec b
    nop
    inc b
    nop
    dec b
    nop
    inc b
    nop
    inc bc
    nop
    inc b
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    ldh a, [$28]
    add b
    ld de, $a110
    rlca
    xor h
    ld d, b
    or b
    ld h, b
    inc b
    db $10
    and c
    ld b, $b2
    ld d, b
    ld d, b
    ld h, b
    inc b
    db $10
    pop af
    dec b
    ld h, e
    ld d, b
    inc a
    ld h, b
    dec b
    stop
    ld d, b
    nop
    ld h, b
    inc bc
    ld d, b
    inc a
    db $10
    pop af
    db $10
    and c
    rlca
    add e
    ld d, b
    jr jr_07f_5149

    ld [de], a
    ldh a, [$80]
    ld de, $5910
    nop
    ld c, h
    nop
    inc h
    nop
    dec d
    nop
    ld b, $00
    nop
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ld e, c
    db $10
    pop af
    nop
    ld b, a
    nop
    nop
    nop
    dec b
    nop
    rlca
    nop
    dec d
    stop
    ld d, b
    nop
    ld h, b
    inc bc
    ld d, b
    rst $38
    db $10
    pop af
    db $10
    ld c, c
    jr nc, jr_07f_5120

    nop
    nop
    nop

jr_07f_5120:
    ld [bc], a
    ld b, b
    db $10
    sub d
    jr nc, @+$0a

    nop
    nop
    nop
    ld [bc], a
    ld b, b
    ldh a, [$80]
    ld de, $9110
    nop
    dec b
    nop
    rlca
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    sub c
    db $10
    adc c
    jr nc, jr_07f_5144

    nop
    nop

jr_07f_5144:
    nop
    ld bc, $1040
    pop af

jr_07f_5149:
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    ld bc, $0200
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc b
    ldh a, [$80]
    ld de, $e010
    nop
    ld c, a
    nop
    ld a, [bc]
    nop
    dec l
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh [rP1], a
    rla
    db $10
    adc c
    nop
    ld [bc], a
    nop
    inc bc
    db $10
    and b
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    db $10
    add e
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    db $10
    ld [hl], e
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    db $10
    ld h, e
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    db $10
    ld d, e
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    db $10
    ld b, e
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    db $10
    inc sp
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    add hl, bc
    db $10
    inc hl
    nop
    ld [bc], a
    nop
    add hl, bc
    ldh a, [$80]
    ld de, $f110
    jr nc, jr_07f_51d0

    nop
    rlca
    nop

jr_07f_51d0:
    inc b
    ld b, b
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    pop af
    db $10
    di
    nop
    scf
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    di
    nop
    dec h
    nop
    rlca
    db $10
    jr nz, jr_07f_51f1

jr_07f_51f1:
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    ld b, b
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    ld h, b
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    add b
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    and b
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    ret nz

    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    ldh [rP1], a
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    ldh a, [rP1]
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    db $d3
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    or e
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    sub e
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    ld [hl], e
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    ld d, e
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    inc sp
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    db $10
    inc hl
    nop
    ld [bc], a
    nop
    ld [$0100], sp
    ldh a, [$80]
    ld de, $f010
    jr nz, jr_07f_5271

    push hl
    ld d, b
    nop
    ld h, b

jr_07f_5271:
    inc b
    db $10
    ldh a, [rNR50]
    inc b
    push hl
    ld d, b
    ld h, e
    ld h, b
    inc b
    db $10
    pop af
    jr z, jr_07f_52af

    ld [bc], a
    ld b, $72
    ld d, b
    call nc, Call_000_0360
    dec b
    db $ed
    ld d, b
    inc l
    ld h, b
    inc bc
    ld b, b
    ldh a, [$80]
    ld de, $f010
    jr z, jr_07f_5298

    ld d, $50
    nop
    ld h, b

jr_07f_5298:
    inc b
    db $10
    ldh a, [rNR50]
    inc b
    ld d, $50
    ld h, e
    ld h, b
    inc b
    db $10
    ld a, [c]
    jr nz, @+$32

    inc bc
    ld b, $0b
    ld d, b
    rst $18
    ld h, b
    inc b
    dec b
    ld h, e

jr_07f_52af:
    ld d, b
    ld hl, $0460
    ld b, b
    ldh a, [$80]
    ld de, $f010
    inc h
    ld b, $0b
    ld d, b
    ld e, $60
    ld b, $10
    ld a, [c]
    inc h
    jr nc, jr_07f_52c9

    ld b, $b2
    ld d, b
    db $db

jr_07f_52c9:
    ld h, b
    inc bc
    ld b, $42
    ld d, b
    dec h
    ld h, b
    inc bc
    ld b, b
    ldh a, [$28]
    add b
    ld de, $6910
    rlca
    rst $18
    ld d, b
    rst $38
    ld h, b
    dec b
    db $10
    and $07
    reti


    ld d, b
    rst $38
    ld h, b
    add hl, de
    db $10
    sub d
    rlca
    cp [hl]
    ld d, b
    db $fd
    ld h, b
    ld a, [bc]
    ldh a, [$80]
    ld de, $f110
    nop
    dec bc
    nop
    dec c
    nop
    rrca
    nop
    dec e
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    pop af
    db $10
    pop af
    nop
    rra
    nop
    ld e, $00
    dec e
    nop
    inc e
    nop
    rrca
    nop
    ld c, $00
    dec c
    nop
    inc c
    nop
    dec bc
    nop
    ld a, [bc]
    nop
    add hl, bc
    nop
    ld [$80f0], sp
    ld de, $4910
    nop
    ld b, h
    nop
    ld [hl], $00
    inc [hl]
    nop
    ld h, $10
    ldh a, [rP1]
    inc h
    nop
    rla
    stop
    ld d, b
    nop
    ld h, b
    ld [bc], a
    ld d, b
    rst $38
    db $10
    ldh a, [rNR10]
    pop hl
    jr nc, @+$09

    nop
    ld b, h
    nop
    ld b, [hl]
    ld b, b
    db $f0

    db $80, $11, $10, $f1, $28, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $01, $50
    db $ff, $10, $f1, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $06, $50, $ff, $10
    db $f1, $10, $b1, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $02, $50, $ff, $10
    db $b1, $10, $61, $06, $c4, $07, $6b, $10, $00, $50, $00, $60, $01, $50, $ff, $10
    db $61, $10, $41, $06, $c4, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $41, $06
    db $c4, $f0, $28, $80, $11, $10, $50, $07, $83, $10, $e1, $07, $83, $50, $00, $60
    db $02, $f0, $28, $80, $11, $10, $f2, $07, $83, $50, $00, $60, $01, $07, $90, $60
    db $01, $07, $9d, $60, $01, $07, $ac, $60, $01, $30, $07, $07, $c1, $50, $01, $60
    db $01, $40, $f0, $28, $80, $11, $10, $89, $06, $9e, $50, $00, $60, $01, $06, $9e
    db $50, $2c, $60, $04, $10, $b2, $30, $05, $07, $4f, $50, $03, $60, $01, $40, $10
    db $61, $30, $02, $07, $4f, $50, $03, $60, $01, $40, $f0, $28, $80, $11, $10, $99
    db $07, $9d, $50, $00, $60, $03, $10, $00, $50, $00, $60, $02, $50, $00, $10, $99
    db $10, $f2, $30, $17, $07, $b6, $40, $f0, $24, $80, $11, $10, $a9, $07, $14, $50
    db $06, $60, $03, $07, $2d, $50, $fa, $60, $02, $10, $99, $06, $9e, $50, $15, $60
    db $02, $06, $c4, $50, $f3, $60, $02, $10, $89, $06, $28, $50, $2a, $60, $03, $10
    db $d2, $06, $5b, $50, $f6, $60, $0b, $10, $59, $05, $3c, $50, $31, $60, $03, $05
    db $89, $50, $00, $60, $01, $f0, $28, $80, $11, $10, $e0, $06, $5b, $50, $0c, $60
    db $14, $f0

    jr z, @-$7e

    ld de, $3010
    rlca
    inc d
    db $10
    ld h, b
    rlca
    ld hl, $9010
    rlca
    dec l
    db $10
    ldh [rTAC], a
    dec l
    ld d, b
    or $60
    ld c, $10
    pop de
    ld b, $9e
    ld d, b
    db $f4
    ld h, b
    ld b, $f0

    db $28, $80, $11, $10, $60, $07, $39, $10, $a0, $07, $39, $10, $e1, $07, $39, $50
    db $00, $60, $03, $10, $60, $07, $05, $10, $a0, $07, $05, $10, $e1, $07, $05, $60
    db $03, $10, $60, $07, $39, $10, $a0, $07, $39, $10, $e1, $07, $39, $60, $03, $10
    db $60, $07, $05, $10, $a0, $07, $05, $10, $f2, $07, $05, $60, $19, $f0

    jr z, @-$7e

    ld de, $9910
    ld b, $72
    ld d, b
    nop
    ld h, b
    ld bc, $f110
    ld b, $72
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0050
    db $10
    pop af
    db $10
    sbc c
    ld b, $b2
    ld h, b
    ld bc, $f110
    ld b, $b2
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0050
    db $10
    pop af
    db $10
    sbc c
    rlca
    add hl, sp
    ld h, b
    ld bc, $f110
    rlca
    add hl, sp
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0050
    db $10
    pop af
    db $10
    sbc c
    rlca
    dec b
    ld h, b
    ld bc, $f110
    rlca
    dec b
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0050
    db $10
    pop af
    db $10
    sbc c
    rlca
    ld hl, $0160
    db $10
    pop af
    rlca
    ld hl, $0360
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0050
    db $10
    pop af
    db $10
    sbc c
    rlca
    ld e, c
    ld h, b
    ld bc, $f110
    rlca
    ld e, c
    ld h, b
    inc c
    ldh a, [$28]
    add b
    ld de, $9910
    jr nc, jr_07f_553f

    rlca
    sbc l

jr_07f_553f:
    ld d, b
    ld bc, $0160
    ld b, b
    stop
    ld d, b
    nop
    ld h, b
    ld [bc], a
    ld d, b
    ld bc, $9910
    db $10
    xor c
    rlca
    or [hl]
    ld d, b
    ld bc, $0160
    db $10
    ld a, [c]
    jr nc, jr_07f_5569

    rlca
    or [hl]
    ld d, b
    ld bc, $0160
    ld b, b
    ldh a, [$28]
    add b
    ld de, $f110
    ld b, $89

jr_07f_5569:
    ld d, b
    nop
    ld h, b
    inc b
    db $10
    pop af
    ld b, $b2
    ld h, b
    inc b
    db $10
    pop af
    ld b, $d6
    ld h, b
    inc b
    db $10
    pop af
    rlca
    dec b
    ld h, b
    inc b
    db $10
    pop af
    rlca
    ld hl, $0460
    db $10
    pop af
    rlca
    ld b, h
    ld h, b
    inc b
    db $10
    pop af
    rlca
    ld l, e
    ld h, b
    inc b
    db $10
    pop af
    rlca
    ld b, h
    ld h, b
    inc b
    db $10
    pop af
    rlca
    ld l, e
    ld h, b
    inc b
    db $10
    add c
    rlca
    ld b, h
    ld h, b
    inc b
    db $10
    pop af
    rlca
    add e
    ld h, b
    inc b
    db $10
    pop af
    rlca
    ld l, e
    ld h, b
    inc b
    db $10
    pop af
    rlca
    add e
    ld h, b
    inc b
    db $10
    add c
    rlca
    ld l, e
    ld h, b
    inc b
    db $10
    pop af
    rlca
    and d
    ld h, b
    inc b
    db $10
    pop af
    rlca
    sbc l
    ld h, b
    inc b
    db $10
    pop af
    rlca
    and d
    ld h, b
    inc b
    db $10
    pop af
    rlca
    xor h
    ld h, b
    inc b
    db $10
    pop af
    rlca
    or [hl]
    ld h, b
    inc b
    db $10
    ld [hl], c
    rlca
    and d
    ld h, b
    inc b
    db $10
    ld [hl], c
    rlca
    xor h
    ld h, b
    inc b
    db $10
    ld [hl], c
    rlca
    or [hl]
    ld h, b
    inc b
    db $10
    ld [hl-], a
    rlca
    and d
    ld h, b
    inc b
    db $10
    ld [hl-], a
    rlca
    xor h
    ld h, b
    inc b
    db $10
    ld [hl-], a
    rlca
    or [hl]
    ld h, b
    inc b
    ldh a, [rNR50]
    add b
    ld de, $8110
    rlca
    cp [hl]
    ld d, b
    inc d
    ld h, b
    ld [bc], a
    stop
    ld d, b
    nop
    ld h, b
    inc bc
    ld d, b
    inc d
    db $10
    add c
    db $10
    pop de
    rlca
    sub $50
    ld bc, $0360
    ldh a, [$28]
    add b
    ld de, $3910
    rlca
    ld a, e
    ld d, b
    cp $60
    ld [$e510], sp
    rlca
    ld l, e
    ld d, b
    cp $60
    ld [hl-], a
    ldh a, [rNR41]
    add b
    ld de, $5910
    inc b
    ld d, $50
    add hl, de
    ld h, b
    dec b
    db $10
    ld a, [c]
    dec b
    db $ed
    ld d, b
    add hl, de
    ld h, b
    dec b
    db $10
    ld e, c
    nop
    inc l
    ld d, b
    dec l
    ld h, b
    dec b
    db $10
    ld a, [c]
    inc bc
    jp c, Jump_000_2d50

    ld h, b
    dec b
    db $10
    ld e, c
    inc b
    ld d, $50
    add hl, de
    ld h, b
    dec b
    db $10
    ld a, [c]
    dec b
    db $ed
    ld d, b
    add hl, de
    ld h, b
    dec b
    db $10
    ld e, c
    nop
    inc l
    ld d, b
    dec l
    ld h, b
    dec b
    db $10
    ld a, [c]
    inc bc
    jp c, Jump_000_2d50

    ld h, b
    dec b
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $2d50
    db $10
    ld a, [c]
    db $10
    add hl, hl
    nop
    inc l
    ld d, b
    dec l
    ld h, b
    dec b
    db $10
    ld h, d
    inc bc
    jp c, Jump_000_2d50

    ld h, b
    dec b
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $2d50
    db $10
    ld h, d
    db $10
    add hl, bc
    nop
    inc l
    ld d, b
    dec l
    ld h, b
    dec b
    db $10
    ld [hl-], a
    inc bc
    jp c, Jump_000_2d50

    ld h, b
    dec b
    ldh a, [rNR41]
    add b
    ld de, $6910
    rlca
    xor d
    ld d, b
    inc bc
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0350
    db $10
    ld l, c
    db $10
    pop hl
    rlca
    or h
    ld d, b
    cp $60
    ld [bc], a
    rlca
    or h
    ld d, b
    ld [bc], a
    ld h, b
    ld [bc], a
    ldh a, [rNR41]
    add b
    ld de, $6910
    rlca
    sbc l
    ld d, b
    inc bc
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0350
    db $10
    ld l, c
    db $10
    pop hl
    rlca
    and a
    ld d, b
    cp $60
    ld [bc], a
    rlca
    and a
    ld d, b
    ld [bc], a
    ld h, b
    ld [bc], a
    ldh a, [rNR41]
    add b
    ld de, $6910
    rlca
    sub h
    ld d, b
    inc bc
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0350
    db $10
    ld l, c
    db $10
    pop hl
    rlca
    sbc [hl]
    ld d, b
    cp $60
    ld [bc], a
    rlca
    sbc [hl]
    ld d, b
    ld [bc], a
    ld h, b
    ld [bc], a
    ldh a, [rNR41]
    add b
    ld de, $6910
    rlca
    add d
    ld d, b
    inc bc
    ld h, b
    inc bc
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $0350
    db $10
    ld l, c
    db $10
    pop hl
    rlca
    adc h
    ld d, b

jr_07f_572e:
    cp $60
    ld [bc], a
    rlca
    adc h
    ld d, b
    ld [bc], a
    ld h, b
    ld [bc], a
    db $f0

    db $28, $80, $11, $10, $69, $07, $aa

    rlca
    xor h
    db $10
    ldh [$30], a
    ld [bc], a
    rlca
    xor [hl]
    ld d, b
    ld bc, $0160
    ld b, b
    db $10
    pop hl
    rlca
    xor [hl]
    ld d, b
    dec b
    ld h, b
    ld [bc], a
    db $f0

    db $28, $80, $11, $10, $69, $07, $a4, $07, $a6

    db $10
    ldh [$30], a
    ld [bc], a
    rlca
    xor b
    ld d, b
    ld bc, $0160
    ld b, b
    db $10
    pop hl
    rlca
    xor b
    ld d, b
    dec b
    ld h, b
    ld [bc], a
    db $f0

    db $28, $80, $11, $10, $69, $07, $9d, $07, $9f, $10, $e0, $30, $02, $07, $a1, $50
    db $01, $60, $01, $40, $10, $e1, $07, $a1, $50, $05, $60, $02, $f0, $28, $80, $11
    db $10, $69, $07, $95, $07, $97, $10, $e0, $30, $02, $07, $99, $50, $01, $60, $01
    db $40, $10, $e1, $07, $99, $50, $05, $60, $02, $f0

    jr nz, jr_07f_572e

    ld de, $6910
    rlca
    rrca
    ld d, b
    cp $60
    ld [bc], a
    db $10
    ld a, [c]
    rlca
    ld a, [de]
    ld d, b
    ld [bc], a
    ld h, b
    dec b
    ldh a, [rNR41]
    add b
    ld de, $6910
    rlca
    dec b
    ld d, b
    cp $60
    ld [bc], a
    db $10
    ld a, [c]
    rlca
    db $10
    ld d, b
    ld [bc], a
    ld h, b
    dec b
    ldh a, [rNR41]
    add b
    ld de, $6910
    ld b, $f9
    ld d, b
    cp $60
    ld [bc], a
    db $10
    ld a, [c]
    rlca
    inc b
    ld d, b
    ld [bc], a
    ld h, b
    dec b
    ldh a, [rNR41]
    add b
    ld de, $6910
    ld b, $f0
    ld d, b
    cp $60
    ld [bc], a
    db $10
    ld a, [c]
    ld b, $fa
    ld d, b
    ld [bc], a
    ld h, b
    dec b
    ldh a, [$28]
    add b
    ld de, $5910
    rlca
    ld h, e

Jump_07f_5803:
    ld d, b
    ld bc, $0160
    rlca
    ld l, l
    ld d, b
    ld bc, $0160
    db $10
    pop hl
    rlca
    ld l, d
    ld d, b
    ld bc, $0160
    rlca
    ld h, a
    ld d, b
    ld bc, $0160
    ldh a, [$28]
    add b
    ld de, $5910
    rlca
    ld e, h
    ld d, b
    ld bc, $0160
    rlca
    ld e, c
    ld d, b
    ld bc, $0160
    db $10
    pop hl
    rlca
    ld d, [hl]
    ld d, b
    ld bc, $0160
    rlca
    ld d, e
    ld d, b
    ld bc, $0160
    ldh a, [$28]
    add b
    ld de, $5910
    rlca
    ld d, b
    ld d, b
    ld bc, $0160
    rlca
    ld c, l
    ld d, b
    ld bc, $0160
    db $10
    pop hl
    rlca
    ld c, d
    ld d, b
    ld bc, $0160
    rlca
    ld b, a
    ld d, b
    ld bc, $0160
    ldh a, [$28]
    add b
    ld de, $5910
    rlca
    ld b, e
    ld d, b
    ld bc, $0160
    rlca
    ld b, b
    ld d, b
    ld bc, $0160
    db $10
    pop hl
    rlca
    dec a
    ld d, b
    ld bc, $0160
    rlca
    ld a, [hl-]
    ld d, b
    ld bc, $0160
    ldh a, [rNR41]
    add b
    ld de, $a910
    dec b
    dec h
    ld d, b
    inc d
    ld h, b
    ld b, $10
    nop
    ld d, b
    nop
    ld h, b
    ld bc, $1450
    db $10
    xor c
    db $10
    ldh a, [rTIMA]
    dec h
    ld d, b
    ld [c], a
    ld h, b
    inc b
    ldh a, [rNR41]
    add b
    ld de, $a910
    inc b
    push hl
    ld d, b
    inc d
    ld h, b
    ld b, $10
    nop
    ld d, b
    nop
    ld h, b
    ld bc, $1450
    db $10
    xor c
    db $10
    ldh a, [rDIV]
    push hl
    ld d, b
    ld [c], a
    ld h, b
    inc b
    ldh a, [rNR41]
    add b
    ld de, $a910
    inc b
    add b
    ld d, b
    inc d
    ld h, b
    ld b, $10
    nop
    ld d, b
    nop
    ld h, b
    ld bc, $1450
    db $10
    xor c
    db $10
    ldh a, [rDIV]
    add b
    ld d, b
    ld [c], a
    ld h, b
    inc b
    ldh a, [rNR41]
    add b
    ld de, $a910
    inc b
    nop
    ld d, b
    inc d
    ld h, b
    ld b, $10
    nop
    ld d, b
    nop
    ld h, b
    ld bc, $1450
    db $10
    xor c
    db $10
    ldh a, [rDIV]
    nop
    ld d, b
    ld [c], a
    ld h, b
    inc b
    ldh a, [rNR41]
    add b
    ld de, $8910
    rlca
    jr nc, jr_07f_594c

    add hl, bc
    ld h, b
    inc b
    db $10
    pop af
    rlca
    ld e, b
    ld d, b
    ld a, [$0260]
    rlca
    ld [hl-], a
    ld d, b
    or $60
    ld bc, $20f0
    add b
    ld de, $8910
    rlca
    inc e
    ld d, b
    add hl, bc
    ld h, b
    inc b
    db $10
    pop af
    rlca
    ld b, c
    ld d, b
    ld a, [$0260]
    rlca
    dec e
    ld d, b
    or $60

jr_07f_5926:
    ld bc, $20f0
    add b
    ld de, $8910
    rlca
    db $10
    ld d, b
    add hl, bc
    ld h, b
    inc b
    db $10
    pop af
    rlca
    dec [hl]
    ld d, b
    ld a, [$0260]
    rlca
    ld bc, $f650
    ld h, b
    ld bc, $20f0
    add b
    ld de, $8910
    ld b, $f6
    ld d, b
    add hl, bc
    ld h, b

jr_07f_594c:
    inc b
    db $10
    pop af
    rlca
    ld hl, $fa50
    ld h, b
    ld [bc], a
    ld b, $e7
    ld d, b
    or $60
    db $01
    db $f0

    db $24, $80, $11, $10, $f0, $03, $00, $50, $7f, $60, $05

    inc bc
    nop
    ld d, b
    ei
    ld h, b
    ld [bc], a
    db $f0

    db $24, $80, $11, $10, $f0, $02, $72, $50, $7f, $60, $05

    ld [bc], a
    ld [hl], d
    ld d, b
    ei
    ld h, b
    ld [bc], a
    db $f0

    db $24, $80, $11, $10, $f0, $02, $00, $50, $7f, $60, $05, $02, $00, $50, $fb, $60
    db $02, $f0, $24, $80, $11, $10, $f0, $01, $55, $50, $7f, $60, $05, $01, $55, $50
    db $fb, $60, $02, $f0

    jr nz, jr_07f_5926

    ld de, $8910
    rlca
    ld e, $50
    inc bc
    ld h, b
    ld [bc], a
    rlca
    jr jr_07f_5a02

    inc bc
    ld h, b
    ld [bc], a
    db $10
    ld a, [c]
    rlca
    ld de, $0807
    rlca
    ld [bc], a
    ld b, $f8
    ldh a, [rNR41]
    add b
    ld de, $8910
    rlca
    add hl, bc
    ld d, b
    inc bc
    ld h, b
    ld [bc], a
    rlca
    inc bc
    ld d, b
    inc bc
    ld h, b
    ld [bc], a
    db $10
    ld a, [c]
    ld b, $fd
    ld b, $f3
    ld b, $ed
    ld b, $e3
    ldh a, [rNR41]
    add b
    ld de, $8910
    ld b, $ed
    ld d, b
    inc bc
    ld h, b
    ld [bc], a
    ld b, $e7
    ld d, b
    inc bc
    ld h, b
    ld [bc], a
    db $10
    ld a, [c]
    ld b, $e1
    ld b, $d7
    ld b, $d1
    ld b, $c7

jr_07f_59f7:
    ldh a, [rNR41]
    add b
    ld de, $8910
    ld b, $d9
    ld d, b
    inc bc
    ld h, b

jr_07f_5a02:
    ld [bc], a

jr_07f_5a03:
    ld b, $d3
    ld d, b
    inc bc
    ld h, b
    ld [bc], a
    db $10
    ld a, [c]
    ld b, $cd
    ld b, $c3
    ld b, $ad
    ld b, $b3
    ldh a, [$28]
    add b
    ld de, $d110
    dec b
    xor h
    ld d, b
    ld a, [$0260]
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $fa50
    db $10
    pop de
    db $10
    di
    dec b
    xor h
    ld d, b
    rla
    ld h, b
    inc d
    db $f0

    db $28, $80, $11, $10, $e1, $07, $05, $50, $0a, $60, $0f, $f0, $28, $80, $11, $10
    db $50, $07, $6b, $10, $e1, $07, $6b, $50, $00, $60, $02, $f0, $80, $11, $10, $e0
    db $00, $0e, $10, $00, $50, $00, $60, $01, $50, $ff, $10, $e0, $00, $2c, $00, $05
    db $f0, $20, $80, $11, $10, $89, $06, $e7, $50, $10, $60, $02, $10, $f0, $07, $14
    db $06, $d6, $f0

    jr z, jr_07f_59f7

    ld de, $e010
    ld b, $5b
    ld d, b
    rlca
    ld h, b
    jr z, @-$0e

    jr z, jr_07f_5a03

    ld de, $3010
    rlca
    inc d
    db $10
    ld h, b
    rlca
    ld hl, $9010
    rlca
    dec l
    db $10
    ldh [rTAC], a
    dec l
    ld d, b
    ei
    ld h, b
    inc e
    db $10
    db $d3
    ld b, $9e
    ld d, b
    ld a, [$0c60]
    db $f0

    db $24, $80, $11, $10, $d0, $07, $5a, $10, $f0, $07, $9d, $f0

    add b
    ld de, $f010
    nop
    ld c, h
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [rP1]
    ld c, h
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [rP1]
    ld c, h
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [rP1]
    ccf
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [rP1]
    ccf
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [rP1]
    ccf
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [rP1]
    ccf
    stop
    ld d, b
    nop
    ld h, b
    inc bc
    ld d, b
    rst $38
    db $10
    ldh a, [rP1]
    ccf
    stop
    ld d, b
    nop
    ld h, b
    dec b
    ld d, b
    rst $38
    db $10
    ldh a, [rP1]
    ccf
    stop
    ld d, b
    nop
    ld h, b
    rlca
    ld d, b
    rst $38
    db $10
    ldh a, [rP1]
    ld a, $f0
    add b
    ld de, $c110
    nop
    ld a, $30
    ld [bc], a
    nop
    dec a
    nop
    cpl
    ld b, b
    stop
    ld d, b
    nop
    ld h, b
    ld b, $50
    rst $38
    db $10
    pop bc
    db $10
    pop bc
    nop
    inc a
    jr nc, jr_07f_5b3f

    nop
    cpl

jr_07f_5b3f:
    nop
    dec l
    ld b, b
    stop
    ld d, b
    nop
    ld h, b
    ld b, $50
    rst $38
    db $10
    pop bc
    db $10
    sub c
    nop
    ld a, $30
    ld [bc], a
    nop
    dec a
    nop
    cpl
    ld b, b
    stop
    ld d, b
    nop
    ld h, b
    ld b, $50
    rst $38
    db $10
    sub c
    db $10
    sub c
    nop
    inc a
    jr nc, jr_07f_5b69

    nop
    cpl

jr_07f_5b69:
    nop
    dec l
    ld b, b
    ldh a, [$28]
    add b
    ld de, $8910
    rlca
    pop bc
    ld d, b
    inc b
    ld h, b
    inc bc
    db $10
    ld [c], a
    jr nc, @+$0b

    rlca
    adc $50
    ld bc, $0160
    ld b, b
    rlca
    adc $50
    db $fc
    ld h, b
    rlca
    stop
    ld d, b
    nop
    ld h, b
    rrca
    ld d, b
    db $fc
    db $10
    ld [c], a
    db $10
    xor c
    rlca
    pop bc
    ld d, b
    inc b
    ld h, b
    inc bc
    db $10
    ldh [$30], a
    inc b
    rlca
    adc $50
    ld bc, $0160
    ld b, b
    rlca
    adc $50
    db $fc
    ld h, b
    inc bc
    db $10
    ldh [rTAC], a
    pop bc
    ld d, b
    inc b
    ld h, b
    rlca
    stop
    ld d, b
    nop
    ld h, b
    db $10
    ld d, b
    inc b
    db $10
    ldh [rNR10], a
    nop
    ld d, b
    nop
    ld h, b
    db $10
    ld d, b
    inc b
    db $10
    ldh [rNR10], a
    nop
    ld d, b
    nop
    ld h, b
    db $10
    ld d, b
    inc b
    db $10
    ldh [rNR10], a
    adc c
    rlca
    bit 2, b
    ld [bc], a
    ld h, b
    inc bc
    db $10
    ldh [$30], a
    db $10
    rlca
    pop de
    ld d, b
    ld bc, $0160
    ld b, b
    db $10
    pop hl
    rlca
    pop de
    ld d, b
    db $fc
    ld h, b
    rlca
    stop
    ld d, b
    nop
    ld h, b
    db $10
    ld d, b
    db $fc
    db $10
    pop hl
    stop
    ld d, b
    nop
    ld h, b
    inc b
    ld d, b
    db $fc
    db $10
    pop hl
    db $10
    xor c
    rlca
    pop bc
    ld d, b
    inc b
    ld h, b
    inc bc
    db $10
    ldh [$30], a
    ld [bc], a
    rlca
    adc $50
    ld bc, $0160
    ld b, b
    rlca
    adc $50
    db $fc
    ld h, b
    inc bc
    db $10
    xor c
    rlca
    pop bc
    ld d, b
    inc b
    ld h, b
    inc bc
    db $10
    ldh [$30], a
    ld [$ce07], sp
    ld d, b
    ld bc, $0160
    ld b, b
    rlca
    adc $50
    db $fc
    ld h, b
    inc bc
    ldh a, [$80]
    ld de, $3a10
    jr nc, jr_07f_5c44

    nop
    inc d
    nop
    dec d
    ld b, b
    db $10
    ldh [$30], a
    jr z, jr_07f_5c44

jr_07f_5c44:
    inc d
    nop
    dec d
    ld b, b
    db $10
    call nc, Call_000_0d30
    nop
    inc d
    nop
    dec d
    ld b, b
    db $10
    adc d
    jr nc, jr_07f_5c5f

    nop
    inc d
    nop
    dec d
    ld b, b
    db $10
    ldh [$30], a
    ld [hl-], a
    nop

jr_07f_5c5f:
    inc d
    nop
    dec d
    ld b, b
    db $10
    db $e3
    jr nc, jr_07f_5c74

    nop
    inc d
    nop
    dec d
    ld b, b
    ldh a, [$28]
    add b
    ld de, $d010
    rlca
    add e

jr_07f_5c74:
    ld d, b
    nop
    ld h, b
    ld bc, $9d07
    ld h, b
    ld bc, $ac07
    ld h, b
    ld bc, $9d07
    ld h, b
    ld bc, $ac07
    ld h, b
    ld bc, $be07
    ld h, b
    ld bc, $ac07
    ld h, b
    ld bc, $be07
    ld h, b
    ld bc, $f210
    jr nc, jr_07f_5ca5

    rlca
    pop bc
    ld d, b
    ld bc, $0160
    ld b, b
    ldh a, [rNR41]
    add b
    ld de, $f010

jr_07f_5ca5:
    inc b
    ld d, $50
    dec b
    ld h, b
    inc bc
    inc b
    add e
    ld d, b
    dec b
    ld h, b
    inc bc
    inc b
    push hl
    ld d, b
    dec b
    ld h, b
    inc bc
    dec b
    inc a
    ld d, b
    dec b
    ld h, b
    inc bc
    dec b
    adc c
    ld d, b
    dec b
    ld h, b
    inc bc
    dec b
    call Call_000_0550
    ld h, b
    inc bc
    ld b, $0b
    ld d, b
    inc b
    ld h, b
    inc bc
    ld b, $42
    ld d, b
    inc b
    ld h, b
    inc bc
    ld b, $72
    ld d, b
    inc b
    ld h, b
    inc bc
    ld b, $9e
    ld d, b
    inc b
    ld h, b
    inc bc
    ld b, $c4
    ld d, b
    inc bc
    ld h, b
    inc bc
    ld b, $e7
    ld d, b
    inc bc
    ld h, b
    inc bc
    rlca
    dec b
    ld d, b
    inc bc
    ld h, b
    inc bc
    rlca
    ld hl, $0350
    ld h, b
    inc bc
    rlca
    add hl, sp
    ld d, b
    inc bc
    ld h, b
    inc bc
    rlca
    ld c, a
    ld d, b
    ld [bc], a
    ld h, b
    inc bc
    rlca
    ld h, d
    ld d, b
    ld [bc], a
    ld h, b
    inc bc
    rlca
    ld [hl], e
    ld d, b
    ld [bc], a
    ld h, b
    inc bc
    ldh a, [$28]
    add b
    ld de, $e410
    rlca
    rst $18
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    db $dd
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    db $db
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    reti


    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    sub $50
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    call nc, Call_000_0a50
    ld h, b
    inc bc
    rlca
    pop de
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    adc $50
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    bit 2, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    ret z

    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    push bc
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    pop bc
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    cp [hl]
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    cp d
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    rlca
    or [hl]
    ld d, b
    ld a, [bc]
    ld h, b
    inc bc
    ldh a, [$80]
    ld de, $f110
    jr nc, jr_07f_5d7a

    nop
    ld d, l

jr_07f_5d7a:
    nop
    ld c, h
    ld b, b
    stop
    ld d, b
    nop
    ld h, b
    ld [bc], a
    ld d, b
    rst $38
    db $10
    pop af
    db $10
    xor c
    jr nc, jr_07f_5d8d

    nop
    ld b, a

jr_07f_5d8d:
    nop
    ld d, h
    ld b, b
    db $10
    ldh a, [$30]
    ld b, $00
    ld b, a
    nop
    ld d, h
    ld b, b
    db $10
    pop af
    jr nc, jr_07f_5da4

    nop
    ld b, a
    nop
    ld d, h
    ld b, b
    ldh a, [$28]

jr_07f_5da4:
    add b
    ld de, $e210
    rlca
    cp [hl]
    ld d, b
    nop
    ld h, b
    ld bc, $d407
    ld h, b
    ld bc, $c807
    rlca
    reti


    ld h, b
    ld bc, $df07
    ld h, b
    ld bc, $c507
    ld h, b
    ld bc, $db07
    ld h, b
    ld bc, $8210
    rlca
    cp [hl]
    ld h, b
    ld bc, $d407
    ld h, b
    ld bc, $c807
    rlca
    reti


    ld h, b
    ld bc, $df07
    ld h, b
    ld bc, $c507
    ld h, b
    ld bc, $db07
    ld h, b
    ld bc, $5310
    rlca
    cp [hl]
    ld h, b
    ld bc, $d407
    ld h, b
    ld bc, $c807
    rlca
    reti


    ld h, b
    ld bc, $df07
    ld h, b
    ld bc, $c507
    ld h, b
    ld bc, $db07
    ld h, b
    ld bc, $3510
    rlca
    cp [hl]
    ld h, b
    ld bc, $d407
    ld h, b
    ld bc, $c807
    rlca
    reti


    ld h, b
    ld bc, $df07
    ld h, b
    ld bc, $c507
    ld h, b
    ld bc, $db07
    ld h, b
    ld bc, $20f0
    add b
    ld de, $5910
    inc b
    ld d, $50
    inc a
    ld h, b
    dec b
    inc b
    or l
    ld d, b
    scf
    ld h, b
    dec b
    dec b
    inc a
    ld d, b
    ld [hl-], a
    ld h, b
    dec b
    dec b
    xor h
    ld d, b
    dec l
    ld h, b
    dec b
    db $10
    ldh [rTMA], a
    dec bc
    ld d, b
    jr z, jr_07f_5e9d

    dec b
    ld b, $5b
    ld d, b
    inc hl
    ld h, b
    dec b
    ld b, $9e
    ld d, b
    ld e, $60
    dec b
    ld b, $d6
    ld d, b
    add hl, de
    ld h, b
    dec b
    rlca
    dec b
    ld d, b
    inc d
    ld h, b
    dec b
    rlca
    dec l
    ld d, b
    ld de, $0560
    rlca
    ld c, a
    ld d, b
    ld c, $60
    dec b
    rlca
    ld l, e
    ld d, b
    inc c
    ld h, b
    dec b
    db $10
    ld [c], a
    rlca
    add e
    ld d, b
    ld a, [bc]
    ld h, b
    dec b
    rlca
    sub a
    ld d, b
    ld [$0560], sp
    rlca
    and a
    ld d, b
    ld b, $60
    dec b
    rlca
    or [hl]
    ld d, b
    inc b
    ld h, b
    dec b
    ldh a, [$80]
    ld de, $f010
    nop
    dec e
    nop
    ld c, $10
    nop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ldh a, [rNR10]
    add b
    nop
    rra
    nop
    dec l
    ldh a, [$80]

jr_07f_5e9d:
    ld de, $f210
    nop
    inc a
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    ld a, [c]
    jr nc, @+$1c

    nop
    ld d, h
    ld b, b
    ldh a, [$28]
    add b
    ld de, $3a10
    rlca
    or l
    ld d, b
    ld bc, $1460
    db $10
    push af
    rlca
    jp z, $ff50

    ld h, b
    ld c, e
    ldh a, [$80]
    ld de, $e010
    inc h
    rlca
    ld l, e
    ld d, b
    ld de, $0860
    stop
    ld d, b
    nop
    ld h, b
    ld b, $50
    ld de, $e010
    jr nz, @+$12

    db $e3
    rlca
    ld e, c
    ld d, b
    cp $60
    add hl, de
    ldh a, [$80]
    ld de, $e010
    nop
    scf
    nop
    ld [hl], $00
    dec [hl]

jr_07f_5eef:
    nop
    inc [hl]
    nop
    daa
    nop
    ld h, $00
    dec h
    nop
    inc h
    nop
    rla
    stop
    ld d, b
    nop
    ld h, b
    ld b, $50
    rst $38
    db $10
    ldh [rNR10], a
    db $e3
    jr nc, jr_07f_5f22

    nop
    inc [hl]
    ld b, b
    ldh a, [$80]
    ld de, $8010
    nop
    cpl
    ld d, b
    db $fd
    ld h, b
    ld [bc], a
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $fd50
    db $10
    add b
    db $10

jr_07f_5f22:
    pop hl
    nop
    rra
    ld d, b
    db $fd
    ld h, b
    ld [bc], a
    stop
    ld d, b
    nop
    ld h, b
    ld [bc], a
    ld d, b
    db $fd
    db $10
    pop hl
    db $10
    add b
    nop
    cpl
    ld d, b
    db $fd
    ld h, b
    ld [bc], a
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $fd50
    db $10
    add b
    db $10
    pop hl
    nop
    rra
    ld d, b
    db $fd
    ld h, b
    inc bc
    ldh a, [$80]
    ld de, $e110
    nop
    inc l
    stop
    ld d, b
    nop
    ld h, b
    rrca
    ld d, b
    rst $38
    db $10
    pop hl
    stop
    ld d, b
    nop
    ld h, b
    ld c, $50
    rst $38
    db $10
    pop hl
    db $10
    pop hl
    nop
    ld e, $f0
    jr z, jr_07f_5eef

    ld de, $e010
    jr nc, jr_07f_5f79

    rlca
    pop de
    rlca
    sub $40

jr_07f_5f79:
    stop
    ld d, b
    nop
    ld h, b
    ld b, $50
    rst $38
    db $10
    ldh [$30], a
    inc d
    rlca
    pop de
    rlca
    sub $40
    ldh a, [rNR50]
    add b
    ld de, $5910
    ld b, $b2
    ld d, b
    db $10
    ld h, b
    dec b
    db $10
    ldh [$30], a
    inc b
    rlca
    dec b
    ld d, b
    inc b
    ld h, b
    inc bc
    ld b, b
    db $10
    pop hl
    rlca
    dec b
    ld d, b
    ld sp, hl
    ld h, b
    ld b, $f0
    add b
    ld de, $3910
    nop
    daa
    nop
    inc h
    nop
    dec b
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    add hl, sp
    db $10
    xor c
    nop
    ld b, [hl]
    nop
    inc h
    nop
    ld d, $10
    pop hl
    nop
    inc d
    nop
    ld b, $00
    dec b
    nop
    inc b
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0000
    db $10
    add hl, sp
    nop
    daa
    nop
    inc h
    nop
    dec b
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    add hl, sp
    db $10
    xor c
    nop
    ld b, [hl]
    nop
    inc h
    nop
    ld d, $10
    pop hl
    nop
    rla
    nop
    ld d, $00
    dec d
    nop
    inc d
    nop
    rlca
    nop
    ld b, $00
    dec b
    nop
    inc b
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0000
    ldh a, [rNR41]
    add b
    ld de, $6a10
    rlca
    ld a, e
    ld d, b
    nop
    ld h, b
    ld [bc], a
    rlca
    ld l, e
    ld h, b
    ld [bc], a
    rlca
    ld c, a
    ld h, b
    ld [bc], a
    rlca
    dec l
    ld h, b
    ld [bc], a
    rlca
    dec b
    ld h, b
    ld [bc], a
    rlca
    ld l, e
    ld h, b
    ld [bc], a
    rlca
    ld c, a
    ld h, b
    ld [bc], a
    rlca
    dec l
    ld h, b
    ld [bc], a
    rlca
    dec b
    ld h, b
    ld bc, $f606
    ld h, b
    ld bc, $4f07
    ld h, b
    ld bc, $2d07
    ld h, b
    ld bc, $0507
    ld h, b
    ld bc, $f606
    ld h, b
    ld bc, $d606
    ld h, b
    ld bc, $2d07
    ld h, b
    ld bc, $0507
    ld h, b
    ld bc, $f606
    ld h, b
    ld bc, $d606
    ld h, b
    ld bc, $9e06
    ld h, b
    ld bc, $0507
    ld h, b
    ld bc, $f310
    ld b, $f6
    ld b, $d6
    ld b, $9e
    ld b, $5b
    ld b, $0b
    ld b, $d6
    ld b, $9e
    ld b, $5b
    ld b, $0b
    dec b
    db $ed
    ld b, $9e
    ld b, $5b
    ld b, $0b
    dec b
    db $ed
    dec b
    xor h
    ld b, $5b
    ld b, $0b
    dec b
    db $ed
    dec b
    xor h
    dec b
    inc a
    ld b, $0b
    dec b
    db $ed
    dec b
    xor h
    dec b
    inc a
    inc b
    or l
    inc b
    ld d, $05
    xor h
    dec b
    inc a
    inc b
    or l
    inc b
    ld d, $03
    jp c, Jump_000_3c05

    inc b
    or l
    inc b
    ld d, $03
    jp c, Jump_07f_5803

    inc b
    or l
    inc b
    ld d, $03
    jp c, Jump_07f_5803

    ld [bc], a
    ld a, b
    inc b
    ld d, $f0
    jr z, @-$7e

    ld de, $e510
    ld b, $0b
    ld d, b
    nop
    ld h, b
    ld bc, $0507
    ld h, b
    ld bc, $4206
    ld h, b
    ld bc, $2107
    ld h, b
    ld bc, $7206
    ld h, b
    ld bc, $3907
    ld h, b
    ld bc, $9e06
    ld h, b
    ld bc, $4f07
    ld h, b
    ld bc, $c406
    ld h, b
    ld bc, $6207
    ld h, b
    ld bc, $e706
    ld h, b
    ld bc, $7307
    ld h, b
    ld bc, $0507
    ld h, b
    ld bc, $8307
    ld h, b
    ld bc, $2107
    ld h, b
    ld bc, $9007
    ld h, b
    ld bc, $3907
    ld h, b
    ld bc, $9d07
    ld h, b
    ld bc, $4f07
    ld h, b
    ld bc, $a707
    ld h, b
    ld bc, $6207
    ld h, b
    ld bc, $b107
    ld h, b
    ld bc, $7307
    ld h, b
    ld bc, $ba07
    ld h, b
    ld bc, $8307
    ld h, b
    ld bc, $c107
    ld h, b
    ld bc, $9007
    ld h, b
    ld bc, $c807
    ld h, b
    ld bc, $9d07
    ld h, b
    ld bc, $ce07
    ld h, b
    ld bc, $a707
    ld h, b
    ld bc, $d407
    ld h, b
    ld bc, $b107
    ld h, b
    ld bc, $d907
    ld h, b
    ld bc, $ba07
    ld h, b
    ld bc, $dd07
    ld h, b
    ld bc, $24f0
    add b
    ld de, $f010
    rlca
    xor h
    ldh a, [$6c]
    ld l, [hl]
    ld h, c
    ld [hl], c
    ld h, c
    ld [hl], h
    ld h, c
    ld [hl], a
    ld h, c
    ld a, d
    ld h, c
    ld a, l
    ld h, c
    add b
    ld h, c
    ld [$4e16], sp
    ld [$61c5], sp
    ld [bc], a
    add e
    ld h, c
    ld [bc], a
    add e
    ld h, c
    ld [bc], a
    add e
    ld h, c
    ld [bc], a
    add e
    ld h, c
    ld [bc], a
    add e
    ld h, c

    db $28, $80, $11, $10, $80, $30, $3c, $e0, $50, $01, $40, $30, $3c, $e0, $50, $01
    db $40, $30, $3c, $e0, $50, $01, $40, $30, $3c, $e0, $50, $01, $40, $30, $3c, $e0
    db $50, $01, $40, $30, $3c, $e0, $50, $01, $40

    jr nc, jr_07f_61ea

    ldh [$50], a
    ld bc, $3040
    inc a
    ldh [$50], a
    ld bc, $3040
    inc a
    ldh [$50], a
    ld bc, $3040
    inc a
    ldh [$50], a
    ld bc, $f040
    add b
    ld de, $b010
    nop
    ld b, l
    nop
    scf
    stop
    ld d, b
    nop
    ld h, b
    dec b
    ld d, b
    rst $38
    db $10
    or b
    db $10
    stop
    rra
    nop
    inc e
    stop
    ld d, b
    nop
    ld h, b
    ld bc, $ff50
    db $10
    db $10
    db $10
    pop de
    nop

jr_07f_61ea:
    inc a
    jr nc, jr_07f_61f9

    nop
    scf
    ld b, b
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07f_61f9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
