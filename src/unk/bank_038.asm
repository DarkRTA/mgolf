INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $038", ROMX[$4000], BANK[$38]

    db $06, $40

    ld [bc], a
    ld l, d
    dec bc
    ld d, l

    ld a, c
    cp $0d
    jr nc, jr_038_4049

    ld a, [$d32a]
    cp $02
    jr z, jr_038_4037

    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $404d
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, d
    ld l, e
    res 0, l
    add hl, bc
    bit 0, e
    jr nz, jr_038_402a

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_038_402a:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    srl h
    rr l
    ret


jr_038_4037:
    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $51cb
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    res 0, e
    add hl, de
    ld l, [hl]
    ld h, $00
    ret


jr_038_4049:
    ld hl, $0040
    ret


    db $67, $40, $61, $42, $39, $44, $ed, $45

    sub a
    ld b, a
    ld hl, $8d49
    ld c, d
    rst $18
    ld c, e
    dec e
    ld c, l
    ld b, l
    ld c, [hl]
    ld d, l
    ld c, a
    ld c, e
    ld d, b

    db $1f, $51

    inc b
    nop
    ld c, $00
    ld hl, $2700
    nop
    dec l
    nop
    ld [hl-], a
    nop
    scf
    nop
    dec sp
    nop
    ccf
    nop
    ld b, h
    nop
    ld c, b
    nop
    ld c, e
    nop
    ld c, [hl]
    nop
    ld d, c
    nop
    ld d, h
    nop
    ld d, a
    nop
    ld e, d
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, d
    nop
    ld h, h
    nop
    ld h, a
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld a, b
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, a
    nop
    add b
    nop
    add d
    nop
    add h
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub c
    nop
    sub e
    nop
    sub [hl]
    nop
    sub a
    nop
    sbc c
    nop
    sbc e
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and b
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    and a
    nop
    xor b
    nop
    xor d
    nop
    xor h
    nop
    xor [hl]
    nop
    or b
    nop
    or c
    nop
    or d
    nop
    or h
    nop
    or [hl]
    nop
    cp b
    nop
    cp c
    nop
    cp e
    nop
    cp l
    nop
    cp a
    nop
    ret nz

    nop
    pop bc
    nop
    jp $c400


    nop
    add $00
    rst $00
    nop
    jp z, $cb00

    nop
    call $ce00
    nop
    ret nc

    nop
    pop de
    nop
    db $d3
    nop
    push de
    nop
    rst $10
    nop
    ret c

    nop
    reti


    nop
    db $db
    nop
    call c, $de00
    nop
    ldh [rP1], a
    pop hl
    nop
    db $e3
    nop
    db $e4
    nop
    and $00
    rst $20
    nop
    jp hl


    nop
    ld [$ec00], a
    nop
    xor $00
    rst $28
    nop
    pop af
    nop
    di
    nop
    db $f4
    nop
    push af
    nop
    rst $30
    nop
    ld hl, sp+$00
    ld a, [$fb00]
    nop
    db $fd
    nop
    rst $38
    nop

    db $ff, $00

    ld bc, $0301
    ld bc, HeaderLogo
    ld b, $01
    rlca
    ld bc, $0109
    dec bc
    ld bc, $010c
    dec c
    ld bc, $010f
    ld de, $1201
    ld bc, $0113
    dec d
    ld bc, $0117
    jr jr_038_4166

    add hl, de

jr_038_4166:
    ld bc, $011b
    inc e
    ld bc, $011e
    rra
    ld bc, $0121
    inc hl
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $0129
    ld a, [hl+]
    ld bc, $012c
    dec l
    ld bc, $012f
    jr nc, @+$03

    ld sp, $3301
    ld bc, HeaderTitle
    ld [hl], $01
    jr c, jr_038_4190

    add hl, sp

jr_038_4190:
    ld bc, $013b
    inc a
    ld bc, $013d
    ccf
    ld bc, $0140
    ld b, d
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld bc, $014f
    ld d, c
    ld bc, $0152
    ld d, h
    ld bc, $0155
    ld d, a
    ld bc, $0158
    ld e, d
    ld bc, $015b
    ld e, l
    ld bc, $015e
    ld e, a
    ld bc, $0161
    ld h, e
    ld bc, $0164
    ld h, [hl]
    ld bc, $0167
    ld l, c
    ld bc, $016a
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], c
    ld bc, $0173
    ld [hl], l
    ld bc, $0176
    ld a, b
    ld bc, $0179
    ld a, e
    ld bc, $017c
    ld a, [hl]
    ld bc, $017f
    add c
    ld bc, $0182
    add h
    ld bc, $0185
    add [hl]
    ld bc, $0188
    adc d
    ld bc, $018b
    adc l
    ld bc, $018e
    sub b
    ld bc, $0191
    sub e
    ld bc, $0194
    sub l
    ld bc, $0197
    sbc b
    ld bc, $019a
    sbc h
    ld bc, $019d
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a3
    and l
    ld bc, $01a6
    xor b
    ld bc, $01a9
    xor d
    ld bc, $01ac
    xor l
    ld bc, $01af
    or c
    ld bc, $01b2
    or h
    ld bc, $01b5
    or [hl]
    ld bc, $01b8
    cp c
    ld bc, $01bb
    cp h
    ld bc, $01be
    cp a
    ld bc, $01c1
    jp nz, $c401

    ld bc, $01c6
    rst $00
    ld bc, $01c8
    jp z, $cb01

    ld bc, $01cd
    adc $01
    ret nc

    ld bc, $01d2
    db $d3
    ld bc, $01d5
    inc b
    nop
    rrca
    nop
    dec h
    nop
    dec hl
    nop
    ld sp, $3600
    nop
    inc a
    nop
    ld a, $00
    ld b, e
    nop
    ld c, b
    nop
    ld c, e
    nop
    ld c, [hl]
    nop
    ld d, c
    nop
    ld d, l
    nop
    ld d, a
    nop
    ld e, d
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add b
    nop
    add d
    nop
    add h
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub d
    nop
    sub h
    nop
    sub l
    nop
    sbc b
    nop
    sbc c
    nop
    sbc e
    nop
    sbc l
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    and a
    nop
    xor b
    nop
    xor d
    nop
    xor h
    nop
    xor [hl]
    nop
    xor a
    nop
    or c
    nop
    or e
    nop
    or h
    nop
    or [hl]
    nop
    cp c
    nop
    cp d
    nop
    cp h
    nop
    cp l
    nop
    ret nz

    nop
    pop bc
    nop
    jp $c500


    nop
    rst $00
    nop
    ret z

    nop
    jp z, $cc00

    nop
    adc $00
    rst $08
    nop
    pop de
    nop
    db $d3
    nop
    push de
    nop
    rst $10
    nop
    ret c

    nop
    jp c, $dc00

    nop
    db $dd
    nop
    rst $18
    nop
    ldh [rP1], a
    ld [c], a
    nop
    db $e4
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    db $eb
    nop
    db $ec
    nop
    xor $00
    ldh a, [rP1]
    pop af
    nop
    di
    nop
    push af
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fb00]
    nop
    db $fd
    nop

    db $ff, $00, $00, $01

    ld [bc], a
    ld bc, HeaderLogo
    ld b, $01
    rlca
    ld bc, $0109
    ld a, [bc]
    ld bc, $010c
    dec c
    ld bc, $010f
    ld de, $1301
    ld bc, $0114
    ld d, $01
    jr jr_038_434e

    ld a, [de]

jr_038_434e:
    ld bc, $011b
    dec e
    ld bc, $011e
    jr nz, jr_038_4358

    ld [hl+], a

jr_038_4358:
    ld bc, $0123
    dec h
    ld bc, $0127
    add hl, hl
    ld bc, $012a
    inc l
    ld bc, $012d
    cpl
    ld bc, $0131
    inc sp
    ld bc, HeaderTitle
    ld [hl], $01
    scf
    ld bc, $0139
    dec sp
    ld bc, $013c
    ld a, $01
    ld b, b
    ld bc, $0141
    ld b, e
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, l
    ld bc, $014f
    ld d, c
    ld bc, $0152
    ld d, h
    ld bc, $0156
    ld d, a
    ld bc, $0159
    ld e, d
    ld bc, $015c
    ld e, [hl]
    ld bc, $0160
    ld h, c
    ld bc, $0163
    ld h, l
    ld bc, $0166
    ld l, b
    ld bc, $016a
    ld l, h
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0174
    ld [hl], l
    ld bc, $0177
    ld a, c
    ld bc, $017b
    ld a, h
    ld bc, $017e
    add b
    ld bc, $0181
    add e
    ld bc, $0185
    add [hl]
    ld bc, $0188
    adc d
    ld bc, $018b
    adc l
    ld bc, $018f
    sub b
    ld bc, $0192
    sub h
    ld bc, $0196
    sub a
    ld bc, $0199
    sbc d
    ld bc, $019c
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a3
    and l
    ld bc, $01a6
    xor b
    ld bc, $01aa
    xor e
    ld bc, $01ad
    xor a
    ld bc, $01b1
    or d
    ld bc, $01b4
    or [hl]
    ld bc, $01b8
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01be
    ret nz

    ld bc, $01c2
    call nz, $c501
    ld bc, $01c7
    ret


    ld bc, $01ca
    call z, $ce01
    ld bc, $01cf
    pop de
    ld bc, $01d3
    call nc, $d601
    ld bc, $01d8
    reti


    ld bc, $01db
    db $dd
    ld bc, $01df
    inc b
    nop
    stop
    jr z, jr_038_443f

jr_038_443f:
    ld l, $00
    inc [hl]
    nop
    ld a, [hl-]
    nop
    ld a, $00
    ld b, e
    nop
    ld c, b
    nop
    ld c, e
    nop
    ld c, [hl]
    nop
    ld d, d
    nop
    ld d, l
    nop
    ld e, b
    nop
    ld e, e
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add b
    nop
    add e
    nop
    add l
    nop
    add a
    nop
    adc c
    nop
    adc e
    nop
    adc [hl]
    nop
    sub b
    nop
    sub d
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc b
    nop
    sbc d
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and b
    nop
    and d
    nop
    and h
    nop
    and [hl]
    nop
    xor b
    nop
    xor d
    nop
    xor e
    nop
    xor [hl]
    nop
    xor a
    nop
    or d
    nop
    or e
    nop
    or l
    nop
    or a
    nop
    cp c
    nop
    cp e
    nop
    cp l
    nop
    cp a
    nop
    pop bc
    nop
    jp $c500


    nop
    add $00
    ret z

    nop
    db $ca
    nop

    db $cc, $00

    adc $00
    ret nc

    nop
    jp nc, $d400

    nop
    sub $00
    ret c

    nop
    reti


    nop
    db $db
    nop
    db $dd
    nop
    rst $18
    nop
    ldh [rP1], a
    ld [c], a
    nop
    db $e4
    nop
    and $00
    add sp, $00
    ld [$ec00], a
    nop
    db $ed
    nop
    rst $28
    nop
    pop af
    nop
    di
    nop
    db $f4
    nop
    or $00

    db $f8, $00, $fa, $00

    db $fc
    nop
    cp $00
    rst $38
    nop
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $0108
    ld a, [bc]
    ld bc, $010c
    ld c, $01
    db $10
    ld bc, $0112
    inc de
    ld bc, $0115
    rla
    ld bc, $0119
    dec de
    ld bc, $011c
    ld e, $01
    jr nz, jr_038_451e

    ld [hl+], a

jr_038_451e:
    ld bc, $0123
    dec h
    ld bc, $0127
    add hl, hl
    ld bc, $012b
    dec l
    ld bc, $012e
    jr nc, jr_038_4530

    ld [hl-], a

jr_038_4530:
    ld bc, HeaderTitle
    ld [hl], $01
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ccf
    ld bc, $0141
    ld b, d
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, l
    ld bc, $014f
    ld d, c
    ld bc, $0153
    ld d, h
    ld bc, $0156
    ld e, b
    ld bc, $015a
    ld e, h
    ld bc, $015e
    ld e, a
    ld bc, $0161
    ld h, e
    ld bc, $0165
    ld h, [hl]
    ld bc, $0168
    ld l, d
    ld bc, $016c
    ld l, [hl]
    ld bc, $0170
    ld [hl], c
    ld bc, $0173
    ld [hl], l
    ld bc, $0177
    ld a, c
    ld bc, $017b
    ld a, l
    ld bc, $017e
    add b
    ld bc, $0182
    add h
    ld bc, $0186
    add a
    ld bc, $0189
    adc e
    ld bc, $018d
    adc a
    ld bc, $0190
    sub e
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc d
    ld bc, $019b
    sbc [hl]
    ld bc, $019f
    and c
    ld bc, $01a3
    and l
    ld bc, $01a7
    xor c
    ld bc, $01aa
    xor h
    ld bc, $01ae
    or b
    ld bc, $01b2
    or h
    ld bc, $01b6
    or a
    ld bc, $01b9
    cp e
    ld bc, $01bd
    cp a
    ld bc, $01c1
    jp $c501


    ld bc, $01c6
    ret z

    ld bc, $01ca
    call z, $ce01
    ld bc, $01cf
    pop de
    ld bc, $01d3
    push de
    ld bc, $01d7
    reti


    ld bc, $01db
    db $dd
    ld bc, $01de
    inc b
    nop
    rla
    nop
    jr nz, jr_038_45f3

jr_038_45f3:
    daa
    nop
    dec l
    nop
    inc [hl]
    nop
    ld a, [hl-]
    nop
    ccf
    nop
    ld b, e
    nop
    ld b, a
    nop
    ld c, e
    nop
    ld c, a
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, h
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, l
    nop
    add b
    nop
    add d
    nop
    add l
    nop
    adc b
    nop
    adc c
    nop
    adc h
    nop
    adc a
    nop
    sub c
    nop
    sub h
    nop
    sub l
    nop
    sbc b
    nop
    sbc e
    nop
    sbc h
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    xor b
    nop
    xor d
    nop
    xor l
    nop
    xor a
    nop
    or c
    nop
    or e
    nop
    or l
    nop
    or a
    nop
    cp d
    nop
    cp e
    nop
    cp l
    nop
    ret nz

    nop
    pop bc
    nop
    jp $c600


    nop
    ret z

    nop
    ret


    nop
    rlc b
    adc $00
    ret nc

    nop
    db $d3
    nop
    call nc, $d700
    nop
    ret c

    nop
    jp c, $db00

    nop
    sbc $00
    ldh [rP1], a
    ld [c], a
    nop
    db $e4
    nop
    and $00
    add sp, $00
    ld [$eb00], a
    nop
    db $ed
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    di
    nop
    push af
    nop
    rst $30
    nop

    db $f9, $00

    ei
    nop
    db $fc
    nop
    cp $00
    nop
    ld bc, $0102
    inc b
    ld bc, $0106
    ld [$0a01], sp
    ld bc, $010c
    ld c, $01
    rrca
    ld bc, $0111
    inc de
    ld bc, $0115
    ld d, $01
    add hl, de
    ld bc, $011a
    dec e
    ld bc, $011e
    jr nz, jr_038_46c2

    ld [hl+], a

jr_038_46c2:
    ld bc, $0124
    dec h
    ld bc, $0127
    add hl, hl
    ld bc, $012b
    dec l
    ld bc, $012f
    jr nc, jr_038_46d4

    ld [hl-], a

jr_038_46d4:
    ld bc, HeaderTitle
    ld [hl], $01
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ccf
    ld bc, $0140
    ld b, d
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderOldLicenseeCode
    ld c, l
    ld bc, $014f
    ld d, b
    ld bc, $0153
    ld d, h
    ld bc, $0156
    ld e, b
    ld bc, $015a
    ld e, e
    ld bc, $015d
    ld e, a
    ld bc, $0161
    ld h, d
    ld bc, $0164
    ld h, l
    ld bc, $0168
    ld l, d
    ld bc, $016b
    ld l, l
    ld bc, $016e
    ld [hl], b
    ld bc, $0172
    ld [hl], h
    ld bc, $0176
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017d
    ld a, a
    ld bc, $0180
    add d
    ld bc, $0184
    add [hl]
    ld bc, $0187
    adc c
    ld bc, $018b
    adc l
    ld bc, $018f
    sub b
    ld bc, $0192
    sub h
    ld bc, $0196
    sub a
    ld bc, $0199
    sbc e
    ld bc, $019d
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a4
    and l
    ld bc, $01a7
    xor c
    ld bc, $01ab
    xor h
    ld bc, $01ae
    or b
    ld bc, $01b1
    or e
    ld bc, $01b5
    or a
    ld bc, $01b9
    cp d
    ld bc, $01bd
    cp [hl]
    ld bc, $01c0
    jp nz, $c401

    ld bc, $01c5
    rst $00
    ld bc, $01c8
    jp z, $cc01

    ld bc, $01ce
    ret nc

    ld bc, $01d1
    db $d3
    ld bc, $01d5
    rst $10
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01de
    inc b
    nop
    inc e
    nop
    inc h
    nop
    dec hl
    nop
    inc sp
    nop
    add hl, sp
    nop
    ld a, $00
    ld b, d
    nop
    ld b, a
    nop
    ld c, e
    nop
    ld c, a
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    halt
    ld a, c
    nop
    ld a, e
    nop
    ld a, a
    nop
    add c
    nop
    add h
    nop
    add [hl]
    nop
    adc c
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub e
    nop
    sub l
    nop
    sbc b
    nop
    sbc d
    nop
    sbc l
    nop
    sbc [hl]
    nop
    and c
    nop
    and h
    nop
    and [hl]
    nop
    xor c
    nop
    xor e
    nop
    xor l
    nop
    xor a
    nop
    or d
    nop
    or h
    nop
    or [hl]
    nop
    cp b
    nop
    cp d
    nop
    cp h
    nop
    cp a
    nop
    pop bc
    nop
    jp $c500


    nop
    ret z

    nop
    jp z, $cc00

    nop
    adc $00
    ret nc

    nop
    jp nc, $d500

    nop
    sub $00
    ret c

    nop
    db $db
    nop
    db $dd
    nop
    rst $18
    nop
    pop hl
    nop
    db $e3
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    db $eb
    nop
    db $ed
    nop
    rst $28
    nop
    ld a, [c]
    nop
    di
    nop
    push af
    nop
    rst $30
    nop
    ld a, [$fc00]
    nop
    cp $00
    nop
    ld bc, $0102
    inc b
    ld bc, $0106
    ld [$0901], sp
    ld bc, $010c
    ld c, $01
    db $10
    ld bc, $0111
    inc d
    ld bc, $0116
    rla
    ld bc, $011a
    inc e
    ld bc, $011d
    rra
    ld bc, $0121
    inc hl
    ld bc, $0126
    jr z, jr_038_4868

    add hl, hl

jr_038_4868:
    ld bc, $012b
    dec l
    ld bc, $012f
    ld sp, $3301
    ld bc, $0135
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ccf
    ld bc, $0141
    ld b, e
    ld bc, $0145
    ld b, a
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0151
    ld d, e
    ld bc, $0155
    ld d, a
    ld bc, $0159
    ld e, d
    ld bc, $015d
    ld e, [hl]
    ld bc, $0160
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0169
    ld l, d
    ld bc, $016c
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0174
    db $76
    ld bc, $0178
    ld a, d
    ld bc, $017c
    ld a, [hl]
    ld bc, $0180
    add d
    ld bc, $0184
    add [hl]
    ld bc, $0188
    adc c
    ld bc, $018b
    adc l
    ld bc, $018f
    sub c
    ld bc, $0194
    sub [hl]
    ld bc, $0197
    sbc d
    ld bc, $019b
    sbc l
    ld bc, $019f
    and c
    ld bc, $01a3
    and l
    ld bc, $01a7
    xor c
    ld bc, $01ab
    xor l
    ld bc, $01af
    or c
    ld bc, $01b3
    or l
    ld bc, $01b7
    cp c
    ld bc, $01ba
    cp l
    ld bc, $01bf
    ret nz

    ld bc, $01c3
    call nz, $c701
    ld bc, $01c9
    jp z, $cc01

    ld bc, $01ce
    ret nc

    ld bc, $01d2
    call nc, $d601
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01de
    inc b
    nop
    jr nz, jr_038_4925

jr_038_4925:
    add hl, hl
    nop
    jr nc, jr_038_4929

jr_038_4929:
    ld [hl], $00
    dec a
    nop
    ld b, e
    nop
    ld c, b
    nop
    ld c, h
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add c
    nop
    add h
    nop
    add a
    nop
    adc c
    nop
    adc h
    nop
    adc [hl]
    nop
    sub c
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and b
    nop
    and e
    nop
    and l
    nop
    xor b
    nop
    xor e
    nop
    xor l
    nop
    xor a
    nop
    or c
    nop
    or h
    nop
    or a
    nop
    cp c
    nop
    cp e
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp nz, $c400

    nop
    rst $00
    nop
    ret


    nop
    rlc b
    adc $00
    ret nc

    nop
    db $d3
    nop
    call nc, $d700
    nop
    reti


    nop
    db $db
    nop
    sbc $00
    rst $18
    nop
    pop hl
    nop
    db $e4
    nop
    rst $20
    nop
    add sp, $00
    db $eb
    nop
    db $ed
    nop
    rst $28
    nop
    ld a, [c]
    nop
    di
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    rst $38
    nop
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $010a
    inc c
    ld bc, $010e
    db $10
    ld bc, $0112
    inc d
    ld bc, $0117
    jr jr_038_49d6

    dec de

jr_038_49d6:
    ld bc, $011d
    rra
    ld bc, $0121
    inc hl
    ld bc, $0126
    jr z, jr_038_49e4

    ld a, [hl+]

jr_038_49e4:
    ld bc, $012c
    ld l, $01
    ld sp, $3201
    ld bc, $0135
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ccf
    ld bc, $0141
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, $014f
    ld d, b
    ld bc, $0153
    ld d, l
    ld bc, $0157
    ld e, c
    ld bc, $015b
    ld e, l
    ld bc, $0160
    ld h, c
    ld bc, $0164
    ld h, [hl]
    ld bc, $0168
    ld l, d
    ld bc, $016d
    ld l, a
    ld bc, $0171
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017d
    add b
    ld bc, $0182
    add h
    ld bc, $0186
    adc b
    ld bc, $018b
    adc l
    ld bc, $018f
    sub c
    ld bc, $0193
    sub [hl]
    ld bc, $0198
    sbc d
    ld bc, $019c
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a4
    and [hl]
    ld bc, $01a9
    xor e
    ld bc, $01ad
    xor a
    ld bc, $01b1
    or h
    ld bc, $01b6
    cp b
    ld bc, $01ba
    cp h
    ld bc, $01bf
    pop bc
    ld bc, $01c3
    push bc
    ld bc, $01c7
    ret


    ld bc, $01cc
    adc $01
    ret nc

    ld bc, $01d2
    call nc, $d601
    ld bc, $01d8
    db $db
    ld bc, $01dd
    rst $18
    ld bc, $0004
    inc hl
    nop
    inc l
    nop
    inc sp
    nop
    dec sp
    nop
    ld b, c
    nop
    ld b, [hl]
    nop
    ld c, e
    nop
    ld c, a
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, h
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add c
    nop
    add h
    nop
    add [hl]
    nop
    adc d
    nop
    adc h
    nop
    adc a
    nop
    sub d
    nop
    sub l
    nop
    sbc b
    nop
    sbc d
    nop
    sbc l
    nop
    sbc a
    nop
    and d
    nop
    and l
    nop
    xor b
    nop
    xor d
    nop
    xor h
    nop
    or b
    nop
    or d
    nop
    or h
    nop
    or a
    nop
    cp c
    nop
    cp h
    nop
    cp a
    nop
    ret nz

    nop
    jp $c600


    nop
    ret


    nop
    rlc b
    call $d000
    nop
    db $d3
    nop
    push de
    nop
    rst $10
    nop
    jp c, $dc00

    nop
    sbc $00
    pop hl
    nop
    db $e3
    nop
    push hl
    nop
    add sp, $00
    ld [$ed00], a
    nop
    rst $28
    nop
    ld a, [c]
    nop
    db $f4
    nop
    or $00
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, HeaderLogo
    rlca
    ld bc, $0109
    dec bc
    ld bc, $010e
    db $10
    ld bc, $0112
    inc d
    ld bc, $0117
    add hl, de
    ld bc, $011c
    ld e, $01
    jr nz, jr_038_4b3c

    inc hl

jr_038_4b3c:
    ld bc, $0125
    daa
    ld bc, $0129
    dec hl
    ld bc, $012e
    jr nc, jr_038_4b4a

    inc sp

jr_038_4b4a:
    ld bc, $0135
    scf
    ld bc, $0139
    inc a
    ld bc, $013e
    ld b, b
    ld bc, $0142
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld bc, $0151
    ld d, e
    ld bc, $0155
    ld e, b
    ld bc, $015a
    ld e, h
    ld bc, $015f
    ld h, c
    ld bc, $0163
    ld h, l
    ld bc, $0168
    ld l, d
    ld bc, $016d
    ld l, a
    ld bc, $0171
    ld [hl], e
    ld bc, $0176
    ld a, b
    ld bc, $017a
    ld a, l
    ld bc, $017f
    add c
    ld bc, $0184
    add [hl]
    ld bc, $0189
    adc e
    ld bc, $018d
    adc a
    ld bc, $0192
    sub h
    ld bc, $0196
    sbc b
    ld bc, $019b
    sbc l
    ld bc, $01a0
    and d
    ld bc, $01a4
    and a
    ld bc, $01a9
    xor h
    ld bc, $01ad
    or b
    ld bc, $01b3
    or h
    ld bc, $01b7
    cp d
    ld bc, $01bc
    cp [hl]
    ld bc, $01c0
    jp $c501


    ld bc, $01c7
    jp z, $cc01

    ld bc, $01cf
    pop de
    ld bc, $01d3
    push de
    ld bc, $01d8
    jp c, $dd01

    ld bc, $01df
    inc b
    nop
    dec h
    nop
    ld l, $00
    scf
    nop
    ld a, $00
    ld b, h
    nop
    ld c, c
    nop
    ld c, [hl]
    nop
    ld d, e
    nop
    ld d, a
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld a, c
    nop
    ld a, h
    nop
    ld a, a
    nop
    add d
    nop
    add l
    nop
    adc c
    nop
    adc h
    nop
    adc [hl]
    nop
    sub c
    nop
    sub h
    nop
    sub a
    nop
    sbc d
    nop
    sbc l
    nop
    and b
    nop
    and e
    nop
    and l
    nop
    xor b
    nop
    xor e
    nop
    xor [hl]
    nop
    or b
    nop
    or e
    nop
    or l
    nop
    cp b
    nop
    cp d
    nop
    cp l
    nop
    pop bc
    nop
    jp $c500


    nop
    ret


    nop
    rlc b
    call $d000
    nop
    db $d3
    nop
    push de
    nop
    ret c

    nop
    jp c, $dd00

    nop
    rst $18
    nop
    ld [c], a
    nop
    push hl
    nop
    rst $20
    nop
    ld [$ec00], a
    nop
    xor $00
    pop af
    nop
    db $f4
    nop
    or $00
    ld hl, sp+$00
    ei
    nop
    db $fd
    nop
    nop
    ld bc, $0102
    dec b
    ld bc, $0107
    ld a, [bc]
    ld bc, $010c
    rrca
    ld bc, $0112
    inc d
    ld bc, $0116
    add hl, de
    ld bc, $011b
    ld e, $01
    jr nz, jr_038_4c84

    inc hl

jr_038_4c84:
    ld bc, $0125
    daa
    ld bc, $012a
    dec l
    ld bc, $012e
    ld [hl-], a
    ld bc, HeaderTitle
    scf
    ld bc, $0139
    dec sp
    ld bc, $013e
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0152
    ld d, h
    ld bc, $0156
    ld e, c
    ld bc, $015b
    ld e, [hl]
    ld bc, $0160
    ld h, e
    ld bc, $0165
    ld h, a
    ld bc, $016a
    ld l, l
    ld bc, $016f
    ld [hl], c
    ld bc, $0174
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017e
    add b
    ld bc, $0183
    add l
    ld bc, $0188
    adc d
    ld bc, $018d
    adc a
    ld bc, $0192
    sub h
    ld bc, $0197
    sbc c
    ld bc, $019c
    sbc [hl]
    ld bc, $01a0
    and e
    ld bc, $01a6
    xor b
    ld bc, $01ab
    xor l
    ld bc, $01b0
    or d
    ld bc, $01b5
    or a
    ld bc, $01ba
    cp h
    ld bc, $01bf
    pop bc
    ld bc, $01c3
    add $01
    ret z

    ld bc, $01cb
    adc $01
    ret nc

    ld bc, $01d3
    push de
    ld bc, $01d8
    jp c, $dd01

    ld bc, $01df
    inc b
    nop
    add hl, hl
    nop
    ld [hl-], a
    nop
    add hl, sp
    nop
    ld b, d
    nop
    ld c, b
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld l, b
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, d
    nop
    ld a, [hl]
    nop
    add d
    nop
    add l
    nop
    adc b
    nop
    adc e
    nop
    adc a
    nop
    sub d
    nop
    sub l
    nop
    sbc b
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and c
    nop
    and h
    nop
    and a
    nop
    xor d
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    or l
    nop
    cp c
    nop
    cp e
    nop
    cp [hl]
    nop
    pop bc
    nop
    call nz, $c700
    nop
    jp z, $cd00

    nop
    rst $08
    nop
    jp nc, $d500

    nop
    ret c

    nop
    jp c, $dd00

    nop
    ldh [rP1], a
    ld [c], a
    nop
    push hl
    nop
    add sp, $00
    ld [$ed00], a
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    push af
    nop
    ld hl, sp+$00
    ld a, [$fd00]
    nop
    nop
    ld bc, $0103
    dec b
    ld bc, $0108
    dec bc
    ld bc, $010d
    db $10
    ld bc, $0112
    dec d
    ld bc, $0118
    ld a, [de]
    ld bc, $011d
    jr nz, jr_038_4db6

    ld [hl+], a

jr_038_4db6:
    ld bc, $0125
    jr z, jr_038_4dbc

    ld a, [hl+]

jr_038_4dbc:
    ld bc, $012d
    cpl
    ld bc, $0132
    dec [hl]
    ld bc, $0137
    ld a, [hl-]
    ld bc, $013d
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderCartridgeType
    ld c, d
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0152
    ld d, h
    ld bc, $0158
    ld e, d
    ld bc, $015c
    ld e, a
    ld bc, $0162
    ld h, h
    ld bc, $0167
    ld l, c
    ld bc, $016c
    ld l, a
    ld bc, $0172
    ld [hl], h
    ld bc, $0177
    ld a, d
    ld bc, $017c
    ld a, a
    ld bc, $0182
    add l
    ld bc, $0187
    adc d
    ld bc, $018c
    adc a
    ld bc, $0192
    sub l
    ld bc, $0197
    sbc d
    ld bc, $019c
    sbc a
    ld bc, $01a2
    and h
    ld bc, $01a7
    xor d
    ld bc, $01ad
    xor a
    ld bc, $01b2
    or l
    ld bc, $01b7
    cp d
    ld bc, $01bd
    cp a
    ld bc, $01c2
    call nz, $c701
    ld bc, $01ca
    call $cf01
    ld bc, $01d2
    push de
    ld bc, $01d8
    jp c, $dd01

    ld bc, $01df
    inc b
    nop
    inc l
    nop
    dec [hl]
    nop
    inc a
    nop
    ld b, l
    nop
    ld c, h
    nop
    ld d, c
    nop
    ld d, a
    nop
    ld e, h
    nop
    ld h, c
    nop
    ld h, l
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld a, c
    nop
    ld a, l
    nop
    add c
    nop
    add l
    nop
    adc b
    nop
    adc h
    nop
    adc a
    nop
    sub d
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc l
    nop
    sbc a
    nop
    and e
    nop
    and [hl]
    nop
    xor c
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    or [hl]
    nop
    cp c
    nop
    cp h
    nop
    cp a
    nop
    jp nz, $c500

    nop
    ret z

    nop
    rlc b
    adc $00
    pop de
    nop
    call nc, $d700
    nop
    jp c, $dd00

    nop
    ldh [rP1], a
    db $e3
    nop
    and $00
    jp hl


    nop
    db $ec
    nop
    rst $28
    nop
    pop af
    nop
    db $f4
    nop
    rst $30
    nop
    ld a, [$fd00]
    nop
    nop
    ld bc, $0103
    ld b, $01
    ld [$0b01], sp
    ld bc, $010e
    ld de, $1401
    ld bc, $0117
    ld a, [de]
    ld bc, $011c
    rra
    ld bc, $0122
    dec h
    ld bc, $0128
    dec hl
    ld bc, $012e
    jr nc, jr_038_4ede

    inc sp

jr_038_4ede:
    ld bc, $0136
    add hl, sp
    ld bc, $013c
    ccf
    ld bc, $0141
    ld b, h
    ld bc, HeaderCartridgeType
    ld c, d
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0152
    ld d, l
    ld bc, $0158
    ld e, e
    ld bc, $015e
    ld h, c
    ld bc, $0164
    ld h, a
    ld bc, $0169
    ld l, h
    ld bc, $016f
    ld [hl], d
    ld bc, $0175
    ld a, b
    ld bc, $017b
    ld a, [hl]
    ld bc, $0180
    add e
    ld bc, $0186
    adc c
    ld bc, $018c
    adc [hl]
    ld bc, $0191
    sub l
    ld bc, $0197
    sbc d
    ld bc, $019d
    and b
    ld bc, $01a3
    and [hl]
    ld bc, $01a9
    xor e
    ld bc, $01ae
    or d
    ld bc, $01b4
    or a
    ld bc, $01ba
    cp l
    ld bc, $01c0
    jp $c601


    ld bc, $01c9
    rlc c
    adc $01
    pop de
    ld bc, $01d4
    rst $10
    ld bc, $01da
    db $dd
    ld bc, $0003
    cpl
    nop
    scf
    nop
    dec a
    nop
    ld b, e
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld a, c
    nop
    ld a, l
    nop
    add b
    nop
    add l
    nop
    adc b
    nop
    adc h
    nop
    sub b
    nop
    sub h
    nop
    sbc b
    nop
    sbc e
    nop
    sbc a
    nop
    and d
    nop
    and [hl]
    nop
    xor c
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    cp b
    nop
    cp e
    nop
    cp [hl]
    nop
    jp nz, $c500

    nop
    ret


    nop
    call z, $cf00
    nop
    jp nc, $d500

    nop
    reti


    nop
    call c, $df00
    nop
    ld [c], a
    nop
    and $00
    jp hl


    nop
    db $ec
    nop
    ldh a, [rP1]
    di
    nop
    or $00
    ld a, [$fc00]
    nop
    nop
    ld bc, $0103
    ld b, $01
    ld a, [bc]
    ld bc, $010d
    db $10
    ld bc, $0113
    ld d, $01
    ld a, [de]
    ld bc, $011d
    jr nz, jr_038_4fd6

    inc hl

jr_038_4fd6:
    ld bc, $0127
    add hl, hl
    ld bc, $012d
    jr nc, jr_038_4fe0

    inc sp

jr_038_4fe0:
    ld bc, $0136
    ld a, [hl-]
    ld bc, $013d
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, a
    ld bc, HeaderDestinationCode
    ld c, l
    ld bc, $0150
    ld d, e
    ld bc, $0157
    ld e, d
    ld bc, $015d
    ld h, b
    ld bc, $0164
    ld h, a
    ld bc, $016a
    ld l, l
    ld bc, $0170
    ld [hl], e
    ld bc, $0177
    ld a, d
    ld bc, $017d
    add c
    ld bc, $0184
    add a
    ld bc, $018a
    adc [hl]
    ld bc, $0191
    sub h
    ld bc, $0197
    sbc d
    ld bc, $019e
    and c
    ld bc, $01a4
    and a
    ld bc, $01aa
    xor [hl]
    ld bc, $01b1
    or l
    ld bc, $01b8
    cp e
    ld bc, $01be
    jp nz, $c501

    ld bc, $01c8
    call z, $cf01
    ld bc, $01d2
    push de
    ld bc, $01d9
    call c, $df01
    ld bc, $0003
    jr nc, jr_038_504f

jr_038_504f:
    add hl, sp
    nop
    ld b, d
    nop
    ld c, d
    nop
    ld d, c
    nop
    ld e, d
    nop
    ld h, b
    nop
    ld h, [hl]
    nop
    ld l, e
    nop
    ld [hl], c
    nop
    halt
    ld a, d
    nop
    ld a, a
    nop
    add h
    nop
    adc b
    nop
    adc h
    nop
    sub c
    nop
    sub l
    nop
    sbc d
    nop
    sbc [hl]
    nop
    and d
    nop
    and [hl]
    nop
    xor d
    nop
    xor [hl]
    nop
    or d
    nop
    or [hl]
    nop
    cp d
    nop
    cp [hl]
    nop
    jp nz, $c600

    nop
    jp z, $ce00

    nop
    pop de
    nop
    push de
    nop
    reti


    nop
    db $dd
    nop
    ldh [rP1], a
    db $e4
    nop
    add sp, $00
    db $eb
    nop
    rst $28
    nop
    di
    nop
    rst $30
    nop
    ld a, [$fe00]
    nop
    ld [bc], a
    ld bc, $0106
    add hl, bc
    ld bc, $010d
    ld de, $1401
    ld bc, $0118
    inc e
    ld bc, $0120
    inc hl
    ld bc, $0127
    ld a, [hl+]
    ld bc, $012e
    ld [hl-], a
    ld bc, $0136
    add hl, sp
    ld bc, $013d
    ld b, c
    ld bc, HeaderNewLicenseeCode
    ld c, b
    ld bc, HeaderOldLicenseeCode
    ld c, a
    ld bc, $0153
    ld d, a
    ld bc, $015b
    ld e, [hl]
    ld bc, $0161
    ld h, [hl]
    ld bc, $0169
    ld l, l
    ld bc, $0171
    ld [hl], h
    ld bc, $0178
    ld a, e
    ld bc, $017f
    add e
    ld bc, $0186
    adc e
    ld bc, $018e
    sub d
    ld bc, $0196
    sbc c
    ld bc, $019d
    and c
    ld bc, $01a4
    xor b
    ld bc, $01ac
    or b
    ld bc, $01b3
    cp b
    ld bc, $01bb
    cp a
    ld bc, $01c2
    rst $00
    ld bc, $01ca
    adc $01
    jp nc, $d501

    ld bc, $01d9
    db $dd
    ld bc, $0004
    scf
    nop
    ld b, d
    nop
    ld c, h
    nop
    ld d, [hl]
    nop
    ld e, l
    nop
    ld l, b
    nop
    ld l, [hl]
    nop
    ld [hl], l
    nop
    ld a, e
    nop
    add c
    nop
    add a
    nop
    adc h
    nop
    sub d
    nop
    sub a
    nop
    sbc l
    nop
    and d
    nop
    and a
    nop
    xor h
    nop
    or c
    nop
    or [hl]
    nop
    cp e
    nop
    ret nz

    nop
    push bc
    nop
    ret


    nop
    adc $00
    db $d3
    nop
    ret c

    nop
    call c, $e100
    nop
    and $00
    ld [$ef00], a
    nop

    db $f3, $00

    ld hl, sp+$00
    db $fc
    nop
    nop
    ld bc, $0106
    ld a, [bc]
    ld bc, $010e
    inc de
    ld bc, $0117
    inc e
    ld bc, $0120
    inc h
    ld bc, $0129
    ld l, $01
    ld [hl-], a
    ld bc, $0136
    ld a, [hl-]
    ld bc, HeaderManufacturerCode
    ld b, e
    ld bc, HeaderROMSize
    ld c, l
    ld bc, $0151
    ld d, [hl]
    ld bc, $015a
    ld e, [hl]
    ld bc, $0162
    ld h, a
    ld bc, $016b
    ld [hl], b
    ld bc, $0174
    ld a, c
    ld bc, $017d
    add d
    ld bc, $0186
    adc e
    ld bc, $0190
    sub h
    ld bc, $0198
    sbc l
    ld bc, $01a2
    and [hl]
    ld bc, $01aa
    xor a
    ld bc, $01b3
    or a
    ld bc, $01bc
    ret nz

    ld bc, $01c5
    ret


    ld bc, $01ce
    jp nc, $d701

    ld bc, $01dc
    push hl
    ld d, c
    inc hl
    ld d, d
    ld h, c
    ld d, d
    sbc a
    ld d, d
    db $dd
    ld d, d
    dec de
    ld d, e
    ld e, c
    ld d, e
    sub a
    ld d, e
    push de
    ld d, e
    inc de
    ld d, h
    ld d, c
    ld d, h

    db $8f, $54

    call Call_000_0154
    nop
    ld c, $00
    dec de
    nop
    inc h
    nop
    inc l
    nop
    ld [hl-], a
    nop
    jr c, jr_038_51f3

jr_038_51f3:
    dec a
    nop
    ld b, d
    nop
    ld c, c
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, e
    nop
    ld e, [hl]
    nop
    ld h, b
    nop
    ld h, e
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, d
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    halt
    ld a, b
    nop
    ld a, c
    nop
    ld a, d
    nop
    ld bc, $1000
    nop
    ld e, $00
    daa
    nop
    jr nc, jr_038_522d

jr_038_522d:
    ld [hl], $00
    dec a
    nop
    ld b, d
    nop
    ld c, b
    nop
    ld c, [hl]
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    ld [hl], h
    nop
    halt
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, d
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld bc, $1100
    nop
    jr nz, jr_038_5267

jr_038_5267:
    ld a, [hl+]
    nop
    ld [hl-], a
    nop
    add hl, sp
    nop
    ld b, b
    nop
    ld b, [hl]
    nop
    ld c, [hl]
    nop
    ld d, d
    nop
    ld d, [hl]
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld a, b
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    add c
    nop
    add d
    nop
    add e
    nop
    ld bc, $1200
    nop
    inc e
    nop
    dec h
    nop
    inc l
    nop
    inc sp
    nop
    add hl, sp
    nop
    ccf
    nop
    ld b, l
    nop
    ld c, d
    nop
    ld c, [hl]
    nop
    ld d, d
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, a
    nop
    add c
    nop
    add e
    nop
    add l
    nop
    adc b
    nop
    ld bc, $1400
    nop
    rra
    nop
    jr z, jr_038_52e5

jr_038_52e5:
    jr nc, jr_038_52e7

jr_038_52e7:
    ld [hl], $00
    ccf
    nop
    ld b, l
    nop
    ld c, d
    nop
    ld c, a
    nop
    ld d, e
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, c
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, l
    nop
    ld a, a
    nop
    add c
    nop
    add e
    nop
    add l
    nop
    adc b
    nop
    adc c
    nop
    adc h
    nop
    ld bc, $1500
    nop
    ld [hl+], a
    nop
    inc l
    nop
    inc [hl]
    nop
    dec sp
    nop
    ld b, h
    nop
    ld c, d
    nop
    ld c, a
    nop
    ld d, l
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    halt
    ld a, c
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add c
    nop
    add e
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc [hl]
    nop
    adc a
    nop
    sub c
    nop
    ld bc, $1700
    nop
    inc h
    nop
    ld l, $00
    jr c, jr_038_5363

jr_038_5363:
    ld b, b
    nop
    ld c, b
    nop
    ld c, [hl]
    nop
    ld d, e
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    halt
    ld a, c
    nop
    ld a, h
    nop
    add b
    nop
    add d
    nop
    add l
    nop
    add a
    nop
    adc c
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub d
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc b
    nop
    ld bc, $1800
    nop
    ld h, $00
    ld sp, $3a00
    nop
    ld b, l
    nop
    ld c, e
    nop
    ld d, d
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld h, e
    nop
    ld l, b
    nop
    ld l, h
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add c
    nop
    add h
    nop
    add a
    nop
    adc d
    nop
    adc h
    nop
    adc a
    nop
    sub c
    nop
    sub e
    nop
    sub l
    nop
    sub a
    nop
    sbc c
    nop
    sbc e
    nop
    sbc l
    nop
    ld bc, $1a00
    nop
    jr z, jr_038_53db

jr_038_53db:
    inc [hl]
    nop
    ld a, $00
    ld c, c
    nop
    ld c, a
    nop
    ld d, a
    nop
    ld e, l
    nop
    ld h, d
    nop
    ld l, b
    nop
    ld l, l
    nop
    ld [hl], d
    nop
    halt
    ld a, d
    nop
    ld a, [hl]
    nop
    add d
    nop
    add l
    nop
    adc b
    nop
    adc e
    nop
    adc [hl]
    nop
    sub c
    nop
    sub e
    nop
    sub [hl]
    nop
    sub a
    nop
    sbc d
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and b
    nop
    and d
    nop
    and h
    nop
    ld bc, $1b00
    nop
    dec hl
    nop
    jr c, jr_038_541b

jr_038_541b:
    ld b, e
    nop
    ld c, h
    nop
    ld d, l
    nop
    ld e, h
    nop
    ld h, e
    nop
    ld l, c
    nop
    ld l, a
    nop
    ld [hl], h
    nop
    ld a, c
    nop
    ld a, l
    nop
    add c
    nop
    add l
    nop
    adc c
    nop
    adc h
    nop
    adc a
    nop
    sub e
    nop
    sub l
    nop
    sbc b
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and b
    nop
    and d
    nop
    and h
    nop
    and [hl]
    nop
    xor b
    nop
    xor e
    nop
    xor l
    nop
    ld bc, $1c00
    nop
    dec hl
    nop
    add hl, sp
    nop
    ld b, h
    nop
    ld c, h
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld h, e
    nop
    ld l, d
    nop
    ld l, a
    nop
    ld [hl], h
    nop
    ld a, c
    nop
    ld a, [hl]
    nop
    add e
    nop
    add a
    nop
    adc e
    nop
    adc a
    nop
    sub e
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc h
    nop
    sbc a
    nop
    and d
    nop
    and l
    nop
    and a
    nop
    xor e
    nop
    xor l
    nop
    xor a
    nop
    or d
    nop
    or e
    nop
    ld bc, $1f00
    nop
    jr nc, jr_038_5495

jr_038_5495:
    ccf
    nop
    ld c, d
    nop
    ld d, e
    nop
    ld e, l
    nop
    ld h, h
    nop
    ld l, e
    nop
    ld [hl], d
    nop
    ld a, c
    nop
    ld a, [hl]
    nop
    add h
    nop
    adc c
    nop
    adc [hl]
    nop
    sub e
    nop
    sub a
    nop
    sbc e
    nop
    sbc a
    nop
    and e
    nop
    and a
    nop
    xor d
    nop
    xor [hl]
    nop
    or c
    nop
    or l
    nop
    or a
    nop
    cp d
    nop

    db $bd

    nop

    db $c0

    nop
    jp $c600


    nop
    ld bc, $2300
    nop
    jr c, jr_038_54d3

jr_038_54d3:
    ld c, b
    nop
    ld d, h
    nop
    ld e, a
    nop
    ld l, c
    nop
    ld [hl], d
    nop
    ld a, e
    nop
    add e
    nop
    adc d
    nop
    sub b
    nop
    sub a
    nop
    sbc l
    nop
    and d
    nop
    xor b
    nop
    xor l
    nop
    or d
    nop
    or a
    nop
    cp h
    nop
    ret nz

    nop
    call nz, $c800
    nop
    call $d000
    nop
    call nc, $d700
    nop
    db $db
    nop
    rst $18
    nop
    ld [c], a
    nop
    and $00
    ld a, c
    cp $0d
    jr nc, jr_038_554e

    ld a, [$d32a]
    cp $02
    jr z, jr_038_553c

    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $5552
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, d
    ld l, e
    res 0, l
    add hl, bc
    bit 0, e
    jr nz, jr_038_552f

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_038_552f:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    srl h
    rr l
    ret


jr_038_553c:
    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $66c2
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    res 0, e
    add hl, de
    ld l, [hl]
    ld h, $00
    ret


jr_038_554e:
    ld hl, $0040
    ret


    ld l, h
    ld d, l
    ld h, [hl]
    ld d, a
    ld a, $59
    ld a, [c]
    ld e, d
    sbc [hl]
    ld e, h
    jr z, jr_038_55bc

    sub d
    ld e, a
    ld [c], a
    ld h, b
    ld e, $62
    ld b, h
    ld h, e
    ld d, h
    ld h, h
    ld b, [hl]
    ld h, l
    jr jr_038_55d2

    inc b
    nop
    ld c, $00
    jr nz, jr_038_5572

jr_038_5572:
    daa
    nop
    inc l
    nop
    ld sp, $3600
    nop
    ld a, [hl-]
    nop
    ccf
    nop
    ld b, e
    nop
    ld b, [hl]
    nop
    ld c, d
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, d
    nop
    ld d, l
    nop
    ld e, b
    nop
    ld e, d
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld h, a
    nop
    ld l, c
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld a, b
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add b
    nop
    add e
    nop
    add h
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop

jr_038_55bc:
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub c
    nop
    sub h
    nop
    sub l
    nop
    sub a
    nop
    sbc b
    nop
    sbc d
    nop
    sbc h
    nop
    sbc l
    nop

jr_038_55d2:
    and b
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    and [hl]
    nop
    xor b
    nop
    xor d
    nop
    xor e
    nop
    xor l
    nop
    xor a
    nop
    or c
    nop
    or e
    nop
    or h
    nop
    or [hl]
    nop
    cp b
    nop
    cp c
    nop
    cp d
    nop
    cp h
    nop
    cp [hl]
    nop
    ret nz

    nop
    pop bc
    nop
    jp $c400


    nop
    push bc
    nop
    ret z

    nop
    jp z, $cb00

    nop
    call $ce00
    nop
    ret nc

    nop
    pop de
    nop
    db $d3
    nop
    call nc, $d600
    nop
    rst $10
    nop
    reti


    nop
    db $db
    nop
    call c, $de00
    nop
    rst $18
    nop
    pop hl
    nop
    ld [c], a
    nop
    db $e4
    nop
    push hl
    nop
    rst $20
    nop
    add sp, $00
    ld [$ec00], a
    nop
    db $ed
    nop
    rst $28
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    di
    nop
    push af
    nop
    or $00
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    ld bc, $0301
    ld bc, HeaderLogo
    ld b, $01
    rlca
    ld bc, $0108
    ld a, [bc]
    ld bc, $010b
    dec c
    ld bc, $010e
    db $10
    ld bc, $0111
    inc de
    ld bc, $0115
    ld d, $01
    jr jr_038_566d

    add hl, de

jr_038_566d:
    ld bc, $011b
    inc e
    ld bc, $011e
    rra
    ld bc, $0120
    ld [hl+], a
    ld bc, $0124
    dec h
    ld bc, $0127
    jr z, jr_038_5683

    ld a, [hl+]

jr_038_5683:
    ld bc, $012c
    dec l
    ld bc, $012e
    jr nc, @+$03

    ld sp, $3301
    ld bc, HeaderTitle
    ld [hl], $01
    scf
    ld bc, $0139
    ld a, [hl-]
    ld bc, $013c
    dec a
    ld bc, HeaderManufacturerCode
    ld b, b
    ld bc, $0142
    ld b, e
    ld bc, $0145
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, c
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, HeaderGlobalChecksum
    ld c, a
    ld bc, $0150
    ld d, d
    ld bc, $0154
    ld d, l
    ld bc, $0156
    ld e, b
    ld bc, $015a
    ld e, e
    ld bc, $015d
    ld e, [hl]
    ld bc, $0160
    ld h, c
    ld bc, $0163
    ld h, h
    ld bc, $0166
    ld h, a
    ld bc, $0169
    ld l, d
    ld bc, $016c
    ld l, l
    ld bc, $016f
    ld [hl], b
    ld bc, $0172
    ld [hl], e
    ld bc, $0175
    db $76
    ld bc, $0177
    ld a, c
    ld bc, $017b
    ld a, h
    ld bc, $017e
    ld a, a
    ld bc, $0181
    add e
    ld bc, $0184
    add l
    ld bc, $0187
    adc b
    ld bc, $018a
    adc e
    ld bc, $018d
    adc [hl]
    ld bc, $0190
    sub c
    ld bc, $0193
    sub h
    ld bc, $0196
    sbc b
    ld bc, $0199
    sbc d
    ld bc, $019c
    sbc l
    ld bc, $019f
    and b
    ld bc, $01a2
    and e
    ld bc, $01a5
    and [hl]
    ld bc, $01a8
    xor d
    ld bc, $01ab
    xor h
    ld bc, $01ae
    xor a
    ld bc, $01b1
    or d
    ld bc, $01b4
    or l
    ld bc, $01b7
    cp b
    ld bc, $01ba
    cp h
    ld bc, $01bd
    cp a
    ld bc, $01c0
    jp nz, $c301

    ld bc, $01c5
    add $01
    ret z

    ld bc, $01c9
    rlc c
    call z, $ce01
    ld bc, $01cf
    pop de
    ld bc, $01d2
    call nc, Call_000_0401
    nop
    rrca
    nop
    inc h
    nop
    ld a, [hl+]
    nop
    jr nc, jr_038_5770

jr_038_5770:
    dec [hl]
    nop
    add hl, sp
    nop
    ccf
    nop
    ld b, e
    nop
    ld b, [hl]
    nop
    ld c, d
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, c
    nop
    ld e, h
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    halt
    ld a, b
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add b
    nop
    add d
    nop
    add l
    nop
    add [hl]
    nop
    adc b
    nop
    adc e
    nop
    adc h
    nop
    adc [hl]
    nop
    sub c
    nop
    sub d
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc b
    nop
    sbc d
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and b
    nop
    and d
    nop
    and e
    nop
    and l
    nop
    and a
    nop
    xor b
    nop
    xor d
    nop
    xor l
    nop
    xor [hl]
    nop
    or b
    nop
    or d
    nop
    or h
    nop
    or [hl]
    nop
    or a
    nop
    cp c
    nop
    cp e
    nop
    cp h
    nop
    cp a
    nop
    ret nz

    nop
    jp nz, $c400

    nop
    add $00
    rst $00
    nop
    ret


    nop
    rlc b
    call $ce00
    nop
    ret nc

    nop
    pop de
    nop
    db $d3
    nop
    push de
    nop
    rst $10
    nop
    reti


    nop
    jp c, $dc00

    nop
    db $dd
    nop
    ldh [rP1], a
    pop hl
    nop
    db $e3
    nop
    db $e4
    nop
    and $00
    add sp, $00
    ld [$eb00], a
    nop
    db $ed
    nop
    rst $28
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    di
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ld a, [$fc00]
    nop
    cp $00
    rst $38
    nop
    ld bc, $0301
    ld bc, HeaderLogo
    ld b, $01
    ld [$0901], sp
    ld bc, $010b
    dec c
    ld bc, $010e
    db $10
    ld bc, $0112
    inc de
    ld bc, $0115
    rla
    ld bc, $0118
    ld a, [de]
    ld bc, $011c
    dec e
    ld bc, $011f
    ld hl, $2301
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $0129
    dec hl
    ld bc, $012d
    ld l, $01
    jr nc, jr_038_5871

    ld [hl-], a

jr_038_5871:
    ld bc, $0133
    dec [hl]
    ld bc, $0137
    jr c, jr_038_587b

    ld a, [hl-]

jr_038_587b:
    ld bc, $013c
    dec a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, h
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld bc, $0150
    ld d, d
    ld bc, $0154
    ld d, l
    ld bc, $0157
    ld e, b
    ld bc, $015a
    ld e, h
    ld bc, $015d
    ld e, a
    ld bc, $0161
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0168
    ld l, c
    ld bc, $016b
    ld l, h
    ld bc, $016e
    ld [hl], b
    ld bc, $0172
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0178
    ld a, d
    ld bc, $017c
    ld a, [hl]
    ld bc, $017f
    add c
    ld bc, $0182
    add l
    ld bc, $0186
    adc b
    ld bc, $0189
    adc e
    ld bc, $018d
    adc a
    ld bc, $0190
    sub d
    ld bc, $0193
    sub l
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc h
    ld bc, $019e
    and b
    ld bc, $01a1
    and e
    ld bc, $01a5
    and [hl]
    ld bc, $01a8
    xor d
    ld bc, $01ac
    xor l
    ld bc, $01af
    or c
    ld bc, $01b2
    or h
    ld bc, $01b6
    or a
    ld bc, $01b9
    cp e
    ld bc, $01bd
    cp [hl]
    ld bc, $01c0
    jp nz, $c301

    ld bc, $01c5
    rst $00
    ld bc, $01c9
    jp z, $cc01

    ld bc, $01ce
    rst $08
    ld bc, $01d1
    db $d3
    ld bc, $01d5
    sub $01
    ret c

    ld bc, $01da
    call c, $dd01
    ld bc, $01df
    inc b
    nop
    stop
    daa
    nop
    dec l
    nop
    inc sp
    nop
    jr c, jr_038_594a

jr_038_594a:
    ld a, $00
    ld b, d
    nop
    ld b, [hl]
    nop
    ld c, d
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld d, a
    nop
    ld e, d
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    halt
    ld a, b
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld a, a
    nop
    add d
    nop
    add h
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub d
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc e
    nop
    sbc h
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    and a
    nop
    xor b
    nop
    xor e
    nop
    xor h
    nop
    xor a
    nop
    or b
    nop
    or d
    nop
    or l
    nop
    or [hl]
    nop
    cp b
    nop
    cp d
    nop
    cp h
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp nz, $c300

    nop
    add $00
    ret z

    nop
    ret


    nop
    rlc b
    call $cf00
    nop
    pop de
    nop
    db $d3
    nop
    call nc, $d600
    nop
    ret c

    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    pop hl
    nop
    db $e3
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    db $eb
    nop
    db $ec
    nop
    xor $00
    ldh a, [rP1]
    ld a, [c]
    nop
    db $f4
    nop
    or $00
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    ld bc, $0102
    inc b
    ld bc, $0106
    ld [$0a01], sp
    ld bc, $010b
    dec c
    ld bc, $010f
    ld de, $1201
    ld bc, $0114
    ld d, $01
    jr jr_038_5a1b

    ld a, [de]

jr_038_5a1b:
    ld bc, $011c
    ld e, $01
    jr nz, @+$03

    ld hl, $2301
    ld bc, $0125
    ld h, $01
    jr z, jr_038_5a2d

    ld a, [hl+]

jr_038_5a2d:
    ld bc, $012c
    ld l, $01
    jr nc, jr_038_5a35

    ld [hl-], a

jr_038_5a35:
    ld bc, $0133
    dec [hl]
    ld bc, $0137
    add hl, sp
    ld bc, $013b
    inc a
    ld bc, $013e
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0151
    ld d, d
    ld bc, $0154
    ld d, [hl]
    ld bc, $0158
    ld e, d
    ld bc, $015c
    ld e, l
    ld bc, $015f
    ld h, c
    ld bc, $0163
    ld h, h
    ld bc, $0167
    ld l, b
    ld bc, $016a
    ld l, h
    ld bc, $016e
    ld [hl], b
    ld bc, $0172
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017c
    ld a, a
    ld bc, $0180
    add d
    ld bc, $0184
    add [hl]
    ld bc, $0188
    adc c
    ld bc, $018b
    adc l
    ld bc, $018f
    sub c
    ld bc, $0193
    sub h
    ld bc, $0196
    sbc b
    ld bc, $019a
    sbc h
    ld bc, $019e
    and b
    ld bc, $01a1
    and e
    ld bc, $01a5
    and a
    ld bc, $01a9
    xor e
    ld bc, $01ad
    xor [hl]
    ld bc, $01b0
    or d
    ld bc, $01b4
    or [hl]
    ld bc, $01b8
    cp d
    ld bc, $01bc
    cp [hl]
    ld bc, $01bf
    pop bc
    ld bc, $01c3
    push bc
    ld bc, $01c7
    ret


    ld bc, $01cb
    call z, $ce01
    ld bc, $01d0
    jp nc, $d401

    ld bc, $01d6
    ret c

    ld bc, $01da
    call c, $dd01
    ld bc, $01df
    inc bc
    nop
    rla
    nop
    rra
    nop
    daa
    nop
    dec l
    nop
    inc [hl]
    nop
    add hl, sp
    nop
    ld a, $00
    ld b, d
    nop
    ld b, [hl]
    nop
    ld c, d
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, l
    nop
    ld e, b
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    halt
    ld a, c
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add c
    nop
    add e
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc a
    nop
    sub c
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc e
    nop
    sbc l
    nop
    and b
    nop
    and d
    nop
    and h
    nop
    and [hl]
    nop
    xor b
    nop
    xor d
    nop
    xor l
    nop
    xor a
    nop
    or c
    nop
    or e
    nop
    or [hl]
    nop
    cp b
    nop
    cp c
    nop
    cp h
    nop
    cp l
    nop
    ret nz

    nop
    jp nz, $c400

    nop
    add $00
    rst $00
    nop
    jp z, $cc00

    nop
    call $d000
    nop
    jp nc, $d400

    nop
    rst $10
    nop
    ret c

    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    ld [c], a
    nop
    db $e4
    nop
    push hl
    nop
    add sp, $00
    jp hl


    nop
    db $eb
    nop
    xor $00
    rst $28
    nop
    pop af
    nop
    di
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    cp $00
    nop
    ld bc, $0102
    inc b
    ld bc, $0106
    ld [$0a01], sp
    ld bc, $010c
    ld c, $01
    rrca
    ld bc, $0111
    inc de
    ld bc, $0115
    rla
    ld bc, $0119
    ld a, [de]
    ld bc, $011c
    ld e, $01
    jr nz, jr_038_5bc9

    ld [hl+], a

jr_038_5bc9:
    ld bc, $0123
    dec h
    ld bc, $0127
    add hl, hl
    ld bc, $012a
    dec l
    ld bc, $012e
    jr nc, jr_038_5bdb

    ld [hl-], a

jr_038_5bdb:
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0137
    add hl, sp
    ld bc, $013b
    inc a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0151
    ld d, d
    ld bc, $0154
    ld d, [hl]
    ld bc, $0158
    ld e, d
    ld bc, $015c
    ld e, l
    ld bc, $015f
    ld h, c
    ld bc, $0162
    ld h, l
    ld bc, $0166
    ld l, b
    ld bc, $016a
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0171
    ld [hl], e
    ld bc, $0174
    db $76
    ld bc, $0178
    ld a, c
    ld bc, $017c
    ld a, l
    ld bc, $017f
    add c
    ld bc, $0182
    add h
    ld bc, $0186
    adc b
    ld bc, $0189
    adc h
    ld bc, $018d
    adc a
    ld bc, $0191
    sub e
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc c
    ld bc, $019b
    sbc l
    ld bc, $019f
    and c
    ld bc, $01a2
    and h
    ld bc, $01a6
    xor b
    ld bc, $01aa
    xor e
    ld bc, $01ad
    xor a
    ld bc, $01b1
    or e
    ld bc, $01b4
    or [hl]
    ld bc, $01b8
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01bf
    ret nz

    ld bc, $01c2
    call nz, $c601
    ld bc, $01c8
    ret


    ld bc, $01cb
    call $ce01
    ld bc, $01d1
    jp nc, $d401

    ld bc, $01d6
    ret c

    ld bc, $01d9
    db $db
    ld bc, $01dd
    rst $18
    ld bc, $0003
    inc e
    nop
    inc h
    nop
    dec hl
    nop
    ld sp, $3800
    nop
    dec a
    nop
    ld b, d
    nop
    ld b, [hl]
    nop
    ld c, e
    nop
    ld c, [hl]
    nop
    ld d, d
    nop
    ld d, [hl]
    nop
    ld e, c
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, l
    nop
    add b
    nop
    add d
    nop
    add l
    nop
    add a
    nop
    adc d
    nop
    adc h
    nop
    adc a
    nop
    sub c
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and b
    nop
    and d
    nop
    and l
    nop
    and a
    nop
    xor d
    nop
    xor e
    nop
    xor [hl]
    nop
    or b
    nop
    or d
    nop
    or h
    nop
    or a
    nop
    cp c
    nop
    cp e
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp nz, $c400

    nop
    add $00
    ret


    nop
    rlc b
    call $cf00
    nop
    pop de
    nop
    db $d3
    nop
    push de
    nop
    ret c

    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    ld [c], a
    nop
    db $e4
    nop
    and $00
    add sp, $00
    ld [$ec00], a
    nop
    rst $28
    nop
    ldh a, [rP1]
    di
    nop
    push af
    nop
    or $00
    ld sp, hl
    nop
    ei
    nop
    db $fc
    nop
    rst $38
    nop
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $0109
    dec bc
    ld bc, $010d
    rrca
    ld bc, $0111
    inc de
    ld bc, $0115
    ld d, $01
    add hl, de
    ld bc, $011b
    dec e
    ld bc, $011f
    ld hl, $2301
    ld bc, $0125
    daa
    ld bc, $0129
    ld a, [hl+]
    ld bc, $012d
    ld l, $01
    jr nc, jr_038_5d79

    ld [hl-], a

jr_038_5d79:
    ld bc, $0135
    ld [hl], $01
    add hl, sp
    ld bc, $013b
    dec a
    ld bc, HeaderManufacturerCode
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderCartridgeType
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, HeaderGlobalChecksum
    ld d, c
    ld bc, $0153
    ld d, l
    ld bc, $0156
    ld e, c
    ld bc, $015b
    ld e, h
    ld bc, $015e
    ld h, b
    ld bc, $0162
    ld h, h
    ld bc, $0166
    ld l, b
    ld bc, $016a
    ld l, h
    ld bc, $016e
    ld [hl], b
    ld bc, $0172
    ld [hl], h
    ld bc, $0176
    ld a, b
    ld bc, $017a
    ld a, h
    ld bc, $017e
    add b
    ld bc, $0181
    add h
    ld bc, $0186
    adc b
    ld bc, $018a
    adc h
    ld bc, $018e
    sub b
    ld bc, $0192
    sub h
    ld bc, $0195
    sbc b
    ld bc, $0199
    sbc h
    ld bc, $019e
    and b
    ld bc, $01a1
    and e
    ld bc, $01a5
    and a
    ld bc, $01a9
    xor e
    ld bc, $01ad
    xor a
    ld bc, $01b1
    or e
    ld bc, $01b5
    or a
    ld bc, $01b9
    cp e
    ld bc, $01bd
    cp a
    ld bc, $01c1
    jp $c501


    ld bc, $01c7
    ret


    ld bc, $01cb
    call $cf01
    ld bc, $01d1
    db $d3
    ld bc, $01d5
    rst $10
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01df
    inc b
    nop
    jr nz, jr_038_5e2c

jr_038_5e2c:
    jr z, jr_038_5e2e

jr_038_5e2e:
    cpl
    nop
    scf
    nop
    dec a
    nop
    ld b, d
    nop
    ld b, a
    nop
    ld c, e
    nop
    ld c, a
    nop
    ld d, e
    nop
    ld d, a
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, l
    nop
    add b
    nop
    add e
    nop
    add [hl]
    nop
    adc b
    nop
    adc e
    nop
    adc l
    nop
    sub b
    nop
    sub e
    nop
    sub l
    nop
    sbc b
    nop
    sbc e
    nop
    sbc l
    nop
    sbc a
    nop
    and d
    nop
    and l
    nop
    and a
    nop
    xor d
    nop
    xor h
    nop
    xor a
    nop
    or c
    nop
    or e
    nop
    or l
    nop
    cp b
    nop
    cp d
    nop
    cp h
    nop
    cp a
    nop
    jp nz, $c400

    nop
    add $00
    ret z

    nop
    rlc b
    call $cf00
    nop
    jp nc, $d400

    nop
    sub $00
    ret c

    nop
    jp c, $dd00

    nop
    rst $18
    nop
    ld [c], a
    nop
    db $e3
    nop
    and $00
    add sp, $00
    ld [$ec00], a
    nop
    xor $00
    pop af
    nop
    di
    nop
    push af
    nop
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    cp $00
    nop
    ld bc, $0102
    inc b
    ld bc, $0107
    add hl, bc
    ld bc, $010b
    dec c
    ld bc, $0110
    ld [de], a
    ld bc, $0114
    ld d, $01
    jr jr_038_5edd

    ld a, [de]

jr_038_5edd:
    ld bc, $011d
    rra
    ld bc, $0121
    inc hl
    ld bc, $0125
    jr z, jr_038_5eeb

    ld a, [hl+]

jr_038_5eeb:
    ld bc, $012c
    ld l, $01
    jr nc, jr_038_5ef3

    ld [hl-], a

jr_038_5ef3:
    ld bc, $0135
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ccf
    ld bc, $0141
    ld b, e
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, l
    ld bc, HeaderGlobalChecksum
    ld d, c
    ld bc, $0153
    ld d, l
    ld bc, $0157
    ld e, c
    ld bc, $015b
    ld e, l
    ld bc, $015f
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0169
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0171
    ld [hl], e
    ld bc, $0176
    ld a, b
    ld bc, $017a
    ld a, h
    ld bc, $017e
    add b
    ld bc, $0182
    add l
    ld bc, $0187
    adc c
    ld bc, $018b
    adc [hl]
    ld bc, $0190
    sub d
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc e
    ld bc, $019d
    sbc a
    ld bc, $01a1
    and e
    ld bc, $01a5
    and a
    ld bc, $01aa
    xor h
    ld bc, $01ae
    or b
    ld bc, $01b2
    or l
    ld bc, $01b7
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01bf
    jp nz, $c401

    ld bc, $01c6
    ret z

    ld bc, $01ca
    call $cf01
    ld bc, $01d1
    call nc, $d601
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01de
    inc b
    nop
    inc hl
    nop
    dec hl
    nop
    inc [hl]
    nop
    dec sp
    nop
    ld b, b
    nop
    ld b, l
    nop
    ld c, d
    nop
    ld c, a
    nop
    ld d, e
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld a, d
    nop
    ld a, l
    nop
    add b
    nop
    add e
    nop
    add [hl]
    nop
    adc c
    nop
    adc h
    nop
    adc [hl]
    nop
    sub c
    nop
    sub h
    nop
    sub a
    nop
    sbc d
    nop
    sbc h
    nop
    sbc a
    nop
    and c
    nop
    and h
    nop
    and a
    nop
    xor d
    nop
    xor h
    nop
    xor a
    nop
    or c
    nop
    or h
    nop
    or [hl]
    nop
    cp c
    nop
    cp h
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp $c500


    nop
    ret z

    nop
    rlc b
    call $cf00
    nop
    jp nc, $d400

    nop
    rst $10
    nop
    reti


    nop
    call c, $de00
    nop
    ldh [rP1], a
    db $e3
    nop
    push hl
    nop
    add sp, $00
    ld [$ec00], a
    nop
    rst $28
    nop
    pop af
    nop
    db $f4
    nop
    or $00
    ld hl, sp+$00
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, HeaderLogo
    ld b, $01
    add hl, bc
    ld bc, $010b
    dec c
    ld bc, $0110
    ld [de], a
    ld bc, $0114
    rla
    ld bc, $0119
    dec de
    ld bc, $011e
    jr nz, jr_038_6041

    ld [hl+], a

jr_038_6041:
    ld bc, $0125
    daa
    ld bc, $012a
    inc l
    ld bc, $012e
    jr nc, jr_038_604f

    inc sp

jr_038_604f:
    ld bc, $0135
    scf
    ld bc, $013a
    inc a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, a
    ld bc, $0151
    ld d, h
    ld bc, $0156
    ld e, b
    ld bc, $015a
    ld e, l
    ld bc, $015f
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0168
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0172
    ld [hl], l
    ld bc, $0177
    ld a, c
    ld bc, $017b
    ld a, [hl]
    ld bc, $0180
    add d
    ld bc, $0185
    add a
    ld bc, $0189
    adc h
    ld bc, $018e
    sub b
    ld bc, $0193
    sub l
    ld bc, $0197
    sbc c
    ld bc, $019c
    sbc a
    ld bc, $01a1
    and e
    ld bc, $01a6
    xor b
    ld bc, $01aa
    xor h
    ld bc, $01af
    or c
    ld bc, $01b3
    or [hl]
    ld bc, $01b8
    cp e
    ld bc, $01bd
    ret nz

    ld bc, $01c2
    call nz, $c601
    ld bc, $01c9
    rlc c
    call $d001
    ld bc, $01d2
    push de
    ld bc, $01d7
    reti


    ld bc, $01dc
    sbc $01
    inc b
    nop
    dec h
    nop
    ld l, $00
    scf
    nop
    dec a
    nop
    ld b, e
    nop
    ld c, c
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add c
    nop
    add h
    nop
    adc b
    nop
    adc d
    nop
    adc l
    nop
    sub b
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc h
    nop
    sbc a
    nop
    and d
    nop
    and h
    nop
    xor b
    nop
    xor d
    nop
    xor l
    nop
    or b
    nop
    or d
    nop
    or l
    nop
    cp b
    nop
    cp e
    nop
    cp l
    nop
    ret nz

    nop
    jp nz, $c500

    nop
    ret z

    nop
    jp z, $cd00

    nop
    ret nc

    nop
    jp nc, $d500

    nop
    ret c

    nop
    jp c, $dd00

    nop
    rst $18
    nop
    ld [c], a
    nop
    db $e4
    nop
    rst $20
    nop
    jp hl


    nop
    db $ec
    nop
    rst $28
    nop
    pop af
    nop
    di
    nop
    or $00
    ld sp, hl
    nop
    ei
    nop
    cp $00
    nop
    ld bc, $0103
    dec b
    ld bc, $0107
    ld a, [bc]
    ld bc, $010d
    rrca
    ld bc, $0112
    inc d
    ld bc, $0116
    add hl, de
    ld bc, $011c
    ld e, $01
    jr nz, jr_038_6187

    inc hl

jr_038_6187:
    ld bc, $0125
    jr z, jr_038_618d

    dec hl

jr_038_618d:
    ld bc, $012d
    cpl
    ld bc, $0132
    inc [hl]
    ld bc, $0137
    add hl, sp
    ld bc, $013c
    ccf
    ld bc, $0141
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderOldLicenseeCode
    ld c, l
    ld bc, $0150
    ld d, d
    ld bc, $0155
    ld d, a
    ld bc, $0159
    ld e, h
    ld bc, $015f
    ld h, c
    ld bc, $0163
    ld h, [hl]
    ld bc, $0169
    ld l, e
    ld bc, $016e
    ld [hl], b
    ld bc, $0173
    ld [hl], l
    ld bc, $0178
    ld a, d
    ld bc, $017d
    ld a, a
    ld bc, $0181
    add h
    ld bc, $0186
    adc c
    ld bc, $018b
    adc [hl]
    ld bc, $0191
    sub e
    ld bc, $0196
    sbc b
    ld bc, $019a
    sbc l
    ld bc, $01a0
    and d
    ld bc, $01a5
    and a
    ld bc, $01aa
    xor h
    ld bc, $01ae
    or c
    ld bc, $01b4
    or [hl]
    ld bc, $01b9
    cp e
    ld bc, $01be
    ret nz

    ld bc, $01c3
    push bc
    ld bc, $01c8
    jp z, $cd01

    ld bc, $01cf
    jp nc, $d401

    ld bc, $01d7
    reti


    ld bc, $01dc
    rst $18
    ld bc, $0004
    add hl, hl
    nop
    ld sp, $3a00
    nop
    ld b, c
    nop
    ld b, a
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, h
    nop
    ld h, a
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, d
    nop
    ld a, l
    nop
    add c
    nop
    add h
    nop
    adc b
    nop
    adc e
    nop
    adc [hl]
    nop
    sub c
    nop
    sub l
    nop
    sub a
    nop
    sbc d
    nop
    sbc l
    nop
    and c
    nop
    and h
    nop
    and [hl]
    nop
    xor d
    nop
    xor h
    nop
    or b
    nop
    or d
    nop
    or [hl]
    nop
    cp b
    nop
    cp e
    nop
    cp [hl]
    nop
    pop bc
    nop
    jp $c700


    nop
    ret


    nop
    call z, $cf00
    nop
    jp nc, $d500

    nop
    rst $10
    nop
    jp c, $dd00

    nop
    rst $18
    nop
    ld [c], a
    nop
    push hl
    nop
    add sp, $00
    ld [$ed00], a
    nop
    ldh a, [rP1]
    di
    nop
    push af
    nop
    ld hl, sp+$00
    ei
    nop
    db $fd
    nop
    nop
    ld bc, $0102
    dec b
    ld bc, $0108
    dec bc
    ld bc, $010d
    db $10
    ld bc, $0113
    dec d
    ld bc, $0118
    dec de
    ld bc, $011d
    jr nz, jr_038_62b7

    inc hl

jr_038_62b7:
    ld bc, $0125
    jr z, jr_038_62bd

    dec hl

jr_038_62bd:
    ld bc, $012e
    jr nc, jr_038_62c3

    inc sp

jr_038_62c3:
    ld bc, $0136
    jr c, jr_038_62c9

    dec sp

jr_038_62c9:
    ld bc, $013d
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0153
    ld d, l
    ld bc, $0158
    ld e, e
    ld bc, $015e
    ld h, b
    ld bc, $0163
    ld h, l
    ld bc, $0168
    ld l, e
    ld bc, $016d
    ld [hl], b
    ld bc, $0173
    db $76
    ld bc, $0178
    ld a, e
    ld bc, $017e
    add b
    ld bc, $0183
    add l
    ld bc, $0188
    adc e
    ld bc, $018e
    sub c
    ld bc, $0194
    sub [hl]
    ld bc, $0199
    sbc e
    ld bc, $019e
    and c
    ld bc, $01a4
    and [hl]
    ld bc, $01a9
    xor e
    ld bc, $01ae
    or c
    ld bc, $01b4
    or [hl]
    ld bc, $01b9
    cp h
    ld bc, $01be
    pop bc
    ld bc, $01c4
    rst $00
    ld bc, $01c9
    call z, $cf01
    ld bc, $01d2
    call nc, $d701
    ld bc, $01da
    call c, $df01
    ld bc, $0004
    inc l
    nop
    inc [hl]
    nop
    dec a
    nop
    ld b, l
    nop
    ld c, e
    nop
    ld d, c
    nop
    ld d, [hl]
    nop
    ld e, e
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld l, c
    nop
    ld l, l
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, c
    nop
    ld a, l
    nop
    add b
    nop
    add h
    nop
    adc b
    nop
    adc e
    nop
    adc a
    nop
    sub d
    nop
    sub l
    nop
    sbc c
    nop
    sbc h
    nop
    sbc a
    nop
    and d
    nop
    and [hl]
    nop
    xor c
    nop
    xor h
    nop
    xor a
    nop
    or d
    nop
    or [hl]
    nop
    cp b
    nop
    cp h
    nop
    cp a
    nop
    jp nz, $c500

    nop
    ret z

    nop
    rlc b
    adc $00
    pop de
    nop
    call nc, $d700
    nop
    jp c, $dd00

    nop
    ldh [rP1], a
    db $e3
    nop
    and $00
    jp hl


    nop
    db $eb
    nop
    rst $28
    nop
    ld a, [c]
    nop
    db $f4
    nop
    ld hl, sp+$00
    ei
    nop
    db $fd
    nop
    nop
    ld bc, $0103
    dec b
    ld bc, $0109
    inc c
    ld bc, $010f
    ld [de], a
    ld bc, $0114
    rla
    ld bc, $011a
    dec e
    ld bc, $0120
    inc hl
    ld bc, $0125
    add hl, hl
    ld bc, $012b
    ld l, $01
    ld sp, $3401
    ld bc, $0137
    ld a, [hl-]
    ld bc, $013d
    ccf
    ld bc, $0142
    ld b, l
    ld bc, HeaderROMSize
    ld c, e
    ld bc, HeaderGlobalChecksum
    ld d, c
    ld bc, $0154
    ld d, a
    ld bc, $015a
    ld e, h
    ld bc, $015f
    ld h, d
    ld bc, $0165
    ld l, b
    ld bc, $016a
    ld l, l
    ld bc, $0171
    ld [hl], h
    ld bc, $0177
    ld a, c
    ld bc, $017c
    ld a, a
    ld bc, $0181
    add l
    ld bc, $0188
    adc e
    ld bc, $018d
    sub b
    ld bc, $0193
    sub [hl]
    ld bc, $0199
    sbc h
    ld bc, $019f
    and d
    ld bc, $01a4
    xor b
    ld bc, $01aa
    xor l
    ld bc, $01b0
    or e
    ld bc, $01b6
    cp c
    ld bc, $01bc
    cp a
    ld bc, $01c2
    push bc
    ld bc, $01c8
    rlc c
    adc $01
    ret nc

    ld bc, $01d3
    sub $01
    reti


    ld bc, $01dc
    rst $18
    ld bc, $0003
    dec l
    nop
    ld [hl], $00
    dec a
    nop
    ld b, e
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld e, b
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, a
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld a, c
    nop
    ld a, l
    nop
    add c
    nop
    add l
    nop
    adc c
    nop
    adc l
    nop
    sub b
    nop
    sub h
    nop
    sbc b
    nop
    sbc e
    nop
    sbc a
    nop
    and e
    nop
    and [hl]
    nop
    xor d
    nop
    xor l
    nop
    or c
    nop
    or h
    nop
    cp b
    nop
    cp e
    nop
    cp a
    nop
    jp nz, $c600

    nop
    ret


    nop
    call z, $cf00
    nop
    db $d3
    nop
    sub $00
    jp c, $dd00

    nop
    ldh [rP1], a
    db $e4
    nop
    rst $20
    nop
    ld [$ed00], a
    nop
    pop af
    nop
    db $f4
    nop
    rst $30
    nop
    ei
    nop
    cp $00
    ld [bc], a
    ld bc, $0105
    ld [$0b01], sp
    ld bc, $010e
    ld [de], a
    ld bc, $0115
    jr jr_038_64cf

    inc e

jr_038_64cf:
    ld bc, $011e
    ld [hl+], a
    ld bc, $0125
    jr z, jr_038_64d9

    inc l

jr_038_64d9:
    ld bc, $012f
    ld [hl-], a
    ld bc, $0135
    add hl, sp
    ld bc, $013c
    ccf
    ld bc, $0142
    ld b, l
    ld bc, HeaderRAMSize
    ld c, h
    ld bc, $014f
    ld d, e
    ld bc, $0156
    ld e, c
    ld bc, $015c
    ld e, a
    ld bc, $0163
    ld h, [hl]
    ld bc, $0169
    ld l, h
    ld bc, $0170
    ld [hl], e
    ld bc, $0176
    ld a, c
    ld bc, $017d
    add b
    ld bc, $0183
    add [hl]
    ld bc, $018a
    adc l
    ld bc, $0190
    sub e
    ld bc, $0197
    sbc d
    ld bc, $019e
    and c
    ld bc, $01a4
    xor b
    ld bc, $01ab
    xor [hl]
    ld bc, $01b1
    or l
    ld bc, $01b8
    cp e
    ld bc, $01bf
    jp nz, $c501

    ld bc, $01c8
    call z, $cf01
    ld bc, $01d2
    sub $01
    reti


    ld bc, $01dd
    inc bc
    nop
    cpl
    nop
    add hl, sp
    nop
    ld b, d
    nop
    ld c, d
    nop
    ld d, c
    nop
    ld e, d
    nop
    ld h, b
    nop
    ld h, [hl]
    nop
    ld l, e
    nop
    ld [hl], c
    nop
    halt
    ld a, e
    nop
    ld a, a
    nop
    add h
    nop
    adc b
    nop
    adc l
    nop
    sub c
    nop
    sub [hl]
    nop
    sbc d
    nop
    sbc [hl]
    nop
    and e
    nop
    and a
    nop
    xor e
    nop
    xor a
    nop
    or e
    nop
    or a
    nop
    cp e
    nop
    cp a
    nop
    jp $c700


    nop
    rlc b
    rst $08
    nop
    db $d3
    nop
    sub $00
    jp c, $de00

    nop
    ld [c], a
    nop
    and $00
    jp hl


    nop
    db $ed
    nop
    pop af
    nop
    db $f4
    nop
    ld hl, sp+$00
    db $fd
    nop
    nop
    ld bc, HeaderLogo
    rlca
    ld bc, $010b
    rrca
    ld bc, $0113
    rla
    ld bc, $011a
    ld e, $01
    ld [hl+], a
    ld bc, $0125
    add hl, hl
    ld bc, $012d
    ld sp, $3401
    ld bc, $0138
    inc a
    ld bc, $0140
    ld b, e
    ld bc, HeaderCartridgeType
    ld c, e
    ld bc, $014f
    ld d, d
    ld bc, $0156
    ld e, d
    ld bc, $015d
    ld h, c
    ld bc, $0165
    ld l, b
    ld bc, $016c
    ld [hl], b
    ld bc, $0174
    ld a, b
    ld bc, $017b
    add b
    ld bc, $0183
    add [hl]
    ld bc, $018b
    adc [hl]
    ld bc, $0192
    sub [hl]
    ld bc, $019a
    sbc l
    ld bc, $01a1
    and l
    ld bc, $01a9
    xor l
    ld bc, $01b0
    or h
    ld bc, $01b8
    cp h
    ld bc, $01bf
    jp $c701


    ld bc, $01cb
    rst $08
    ld bc, $01d3
    sub $01
    jp c, $de01

    ld bc, $0004
    ld [hl], $00
    ld b, d
    nop
    ld c, h
    nop
    ld d, [hl]
    nop
    ld e, [hl]
    nop
    ld l, b
    nop
    ld l, a
    nop
    ld [hl], l
    nop
    ld a, h
    nop
    add d
    nop
    add a
    nop
    adc l
    nop
    sub e
    nop
    sbc b
    nop
    sbc [hl]
    nop
    and e
    nop
    xor b
    nop
    xor l
    nop
    or d
    nop
    cp b
    nop
    cp h
    nop
    pop bc
    nop
    add $00
    rlc b
    ret nc

    nop
    push de
    nop
    reti


    nop
    sbc $00
    ld [c], a
    nop
    add sp, $00
    db $ec
    nop
    pop af
    nop
    push af
    nop
    ld a, [$fe00]
    nop
    inc bc
    ld bc, $0107
    inc c
    ld bc, $0111
    dec d
    ld bc, $0119
    ld e, $01
    ld [hl+], a
    ld bc, $0127
    inc l
    ld bc, $0130
    inc [hl]
    ld bc, $0139
    ld a, $01
    ld b, d
    ld bc, HeaderCartridgeType
    ld c, e
    ld bc, $0150
    ld d, h
    ld bc, $0159
    ld e, l
    ld bc, $0162
    ld h, [hl]
    ld bc, $016b
    ld l, a
    ld bc, $0173
    ld a, b
    ld bc, $017d
    add c
    ld bc, $0186
    adc d
    ld bc, $018f
    sub h
    ld bc, $0198
    sbc l
    ld bc, $01a1
    and l
    ld bc, $01aa
    xor a
    ld bc, $01b3
    cp b
    ld bc, $01bc
    pop bc
    ld bc, $01c5
    jp z, $ce01

    ld bc, $01d3
    ret c

    ld bc, $01dc
    call c, $1a66
    ld h, a
    ld e, b
    ld h, a
    sub [hl]
    ld h, a
    call nc, $1267
    ld l, b
    ld d, b
    ld l, b
    adc [hl]
    ld l, b
    call z, Call_000_0a68
    ld l, c
    ld c, b
    ld l, c
    add [hl]
    ld l, c
    call nz, Call_000_0169
    nop
    ld c, $00
    dec de
    nop
    inc hl
    nop
    dec hl
    nop
    ld sp, $3700
    nop
    inc a
    nop
    ld b, c
    nop
    ld b, a
    nop
    ld c, e
    nop
    ld c, a
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, c
    nop
    ld e, e
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, b
    nop
    ld l, d
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    ld [hl], h
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, b
    nop
    ld bc, $1000
    nop
    dec e
    nop
    ld h, $00
    cpl
    nop
    dec [hl]
    nop
    dec sp
    nop
    ld b, c
    nop
    ld c, b
    nop
    ld c, h
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, e
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, d
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld bc, $1400
    nop
    rra
    nop
    add hl, hl
    nop
    ld sp, $3900
    nop
    ccf
    nop
    ld b, a
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld e, c
    nop
    ld e, h
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    add b
    nop
    add d
    nop
    ld bc, $1200
    nop
    inc e
    nop
    inc h
    nop
    inc l
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    nop
    ld a, $00
    ld b, h
    nop
    ld c, b
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, e
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, [hl]
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    halt
    ld a, b
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld a, a
    nop
    add c
    nop
    add e
    nop
    add [hl]
    nop
    ld bc, $1300
    nop
    ld e, $00
    jr z, jr_038_67dc

jr_038_67dc:
    ld sp, $3700
    nop
    ld a, $00
    ld b, e
    nop
    ld c, b
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, [hl]
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld a, c
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add b
    nop
    add d
    nop
    add h
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    ld bc, $1500
    nop
    ld hl, $2b00
    nop
    dec [hl]
    nop
    inc a
    nop
    ld b, e
    nop
    ld c, c
    nop
    ld c, a
    nop
    ld d, e
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld h, c
    nop
    ld h, l
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    halt
    ld a, b
    nop
    ld a, e
    nop
    ld a, l
    nop
    add b
    nop
    add d
    nop
    add l
    nop
    add [hl]
    nop
    adc c
    nop
    adc d
    nop
    adc l
    nop
    adc [hl]
    nop
    sub b
    nop
    ld bc, $1600
    nop
    inc hl
    nop
    ld l, $00
    jr c, jr_038_685a

jr_038_685a:
    ld b, b
    nop
    ld b, a
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld e, c
    nop
    ld e, l
    nop
    ld h, d
    nop
    ld h, [hl]
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add c
    nop
    add e
    nop
    add [hl]
    nop
    adc c
    nop
    adc e
    nop
    adc l
    nop
    adc a
    nop
    sub c
    nop
    sub e
    nop
    sub l
    nop
    sub a
    nop
    ld bc, $1800
    nop
    dec h
    nop
    ld sp, $3b00
    nop
    ld b, h
    nop
    ld c, d
    nop
    ld d, c
    nop
    ld d, a
    nop
    ld e, l
    nop
    ld h, c
    nop
    ld h, [hl]
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    halt
    ld a, d
    nop
    ld a, [hl]
    nop
    add b
    nop
    add h
    nop
    add a
    nop
    adc c
    nop
    adc e
    nop
    adc [hl]
    nop
    sub b
    nop
    sub d
    nop
    sub h
    nop
    sub a
    nop
    sbc c
    nop
    sbc d
    nop
    sbc h
    nop
    ld bc, $1900
    nop
    jr z, jr_038_68d2

jr_038_68d2:
    inc [hl]
    nop
    ld a, $00
    ld c, b
    nop
    ld c, a
    nop
    ld d, [hl]
    nop
    ld e, h
    nop
    ld h, d
    nop
    ld h, a
    nop
    ld l, l
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, c
    nop
    ld a, l
    nop
    add b
    nop
    add h
    nop
    add a
    nop
    adc d
    nop
    adc l
    nop
    sub b
    nop
    sub e
    nop
    sub l
    nop
    sub a
    nop
    sbc d
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and b
    nop
    and d
    nop
    and h
    nop
    ld bc, $1b00
    nop
    dec hl
    nop
    jr c, jr_038_6912

jr_038_6912:
    ld b, c
    nop
    ld c, h
    nop
    ld d, h
    nop
    ld e, e
    nop
    ld h, d
    nop
    ld l, b
    nop
    ld l, l
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, h
    nop
    add b
    nop
    add h
    nop
    adc b
    nop
    adc e
    nop
    adc [hl]
    nop
    sub d
    nop
    sub l
    nop
    sub a
    nop
    sbc d
    nop
    sbc l
    nop
    sbc a
    nop
    and c
    nop
    and h
    nop
    and [hl]
    nop
    xor b
    nop
    xor e
    nop
    xor h
    nop
    ld bc, $1c00
    nop
    dec hl
    nop
    add hl, sp
    nop
    ld b, h
    nop
    ld c, h
    nop
    ld d, l
    nop
    ld e, h
    nop
    ld h, e
    nop
    ld l, c
    nop
    ld l, [hl]
    nop
    ld [hl], h
    nop
    ld a, c
    nop
    ld a, [hl]
    nop
    add e
    nop
    add a
    nop
    adc e
    nop
    adc a
    nop
    sub d
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc h
    nop
    sbc a
    nop
    and d
    nop
    and l
    nop
    xor b
    nop
    xor d
    nop
    xor l
    nop
    or b
    nop
    or d
    nop
    or h
    nop
    ld bc, $1f00
    nop
    cpl
    nop
    ccf
    nop
    ld c, d
    nop
    ld d, e
    nop
    ld e, h
    nop
    ld h, h
    nop
    ld l, e
    nop
    ld [hl], d
    nop
    ld a, b
    nop
    ld a, [hl]
    nop
    add h
    nop
    adc c
    nop
    adc [hl]
    nop
    sub d
    nop
    sub a
    nop
    sbc e
    nop
    and b
    nop
    and e
    nop
    and a
    nop
    xor e
    nop
    xor a
    nop
    or d
    nop
    or l
    nop
    cp b
    nop
    cp e
    nop
    cp [hl]
    nop
    pop bc
    nop
    call nz, $c700
    nop
    ld bc, $2300
    nop
    jr c, jr_038_69ca

jr_038_69ca:
    ld c, b
    nop
    ld d, h
    nop
    ld e, a
    nop
    ld l, c
    nop
    ld [hl], d
    nop
    ld a, d
    nop
    add d
    nop
    adc c
    nop
    sub c
    nop
    sbc b
    nop
    sbc [hl]
    nop
    and e
    nop
    xor c
    nop
    xor [hl]
    nop
    or e
    nop
    cp b
    nop
    cp l
    nop
    pop bc
    nop
    push bc
    nop
    ret


    nop
    adc $00
    jp nc, $d600

    nop
    reti


    nop
    db $dd
    nop
    ldh [rP1], a
    db $e3
    nop
    add sp, $00
    ld a, c
    cp $0d
    jr nc, jr_038_6a45

    ld a, [$d32a]
    cp $02
    jr z, jr_038_6a33

    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $6a49
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, d
    ld l, e
    res 0, l
    add hl, bc
    bit 0, e
    jr nz, jr_038_6a26

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_038_6a26:
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    srl h
    rr l
    ret


jr_038_6a33:
    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $7bd1
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    res 0, e
    add hl, de
    ld l, [hl]
    ld h, $00
    ret


jr_038_6a45:
    ld hl, $0040
    ret


    ld h, e
    ld l, d
    ld e, l
    ld l, h
    dec [hl]
    ld l, [hl]
    jp hl


    ld l, a
    sub e
    ld [hl], c
    dec e
    ld [hl], e
    adc c
    ld [hl], h
    db $db
    ld [hl], l
    add hl, de
    ld [hl], a
    ld b, c
    ld a, b
    ld d, e
    ld a, c
    ld c, e
    ld a, d
    ld hl, $057b
    nop
    ld c, $00
    ld [hl+], a
    nop
    jr z, jr_038_6a6b

jr_038_6a6b:
    ld l, $00
    inc [hl]
    nop
    jr c, jr_038_6a71

jr_038_6a71:
    inc a
    nop
    ld b, d
    nop
    ld b, h
    nop
    ld c, d
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, c
    nop
    ld e, h
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld a, a
    nop
    add c
    nop
    add e
    nop
    add l
    nop
    add [hl]
    nop
    adc c
    nop
    adc d
    nop
    adc l
    nop
    adc a
    nop
    sub b
    nop
    sub e
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc b
    nop
    sbc d
    nop
    sbc e
    nop
    sbc l
    nop
    sbc [hl]
    nop
    and c
    nop
    and d
    nop
    and h
    nop
    and l
    nop
    and a
    nop
    xor c
    nop
    xor e
    nop
    xor l
    nop
    xor a
    nop
    or b
    nop
    or d
    nop
    or e
    nop
    or l
    nop
    or a
    nop
    cp c
    nop
    cp d
    nop
    cp h
    nop
    cp [hl]
    nop
    cp a
    nop
    pop bc
    nop
    jp nz, $c400

    nop
    add $00
    rst $00
    nop
    ret


    nop
    rlc b
    call z, $ce00
    nop
    rst $08
    nop
    pop de
    nop
    jp nc, $d400

    nop
    push de
    nop
    rst $10
    nop
    reti


    nop
    db $db
    nop
    call c, $dd00
    nop
    rst $18
    nop
    pop hl
    nop
    ld [c], a
    nop
    db $e3
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    ld [$eb00], a
    nop
    db $ed
    nop
    rst $28
    nop
    ldh a, [rP1]
    pop af
    nop
    di
    nop
    push af
    nop
    or $00
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    ld bc, $0102
    inc b
    ld bc, $0105
    rlca
    ld bc, $0108
    ld a, [bc]
    ld bc, $010b
    dec c
    ld bc, $010e
    rrca
    ld bc, $0111
    inc de
    ld bc, $0114
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $011a
    inc e
    ld bc, $011d
    rra
    ld bc, $0120
    ld [hl+], a
    ld bc, $0123
    dec h
    ld bc, $0126
    jr z, jr_038_6b74

    add hl, hl

jr_038_6b74:
    ld bc, $012b
    inc l
    ld bc, $012e
    cpl
    ld bc, $0131
    ld [hl-], a
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0137
    jr c, jr_038_6b8a

    add hl, sp

jr_038_6b8a:
    ld bc, $013b
    dec a
    ld bc, $013e
    ccf
    ld bc, $0141
    ld b, d
    ld bc, HeaderNewLicenseeCode
    ld b, l
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, HeaderComplementCheck
    ld c, [hl]
    ld bc, $0150
    ld d, c
    ld bc, $0152
    ld d, h
    ld bc, $0156
    ld d, a
    ld bc, $0159
    ld e, d
    ld bc, $015c
    ld e, l
    ld bc, $015f
    ld h, b
    ld bc, $0162
    ld h, e
    ld bc, $0165
    ld h, [hl]
    ld bc, $0167
    ld l, c
    ld bc, $016b
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0173
    ld [hl], l
    ld bc, $0177
    ld a, b
    ld bc, $0179
    ld a, e
    ld bc, $017c
    ld a, [hl]
    ld bc, $0180
    add c
    ld bc, $0182
    add h
    ld bc, $0185
    add a
    ld bc, $0188
    adc d
    ld bc, $018b
    adc l
    ld bc, $018f
    sub b
    ld bc, $0191
    sub e
    ld bc, $0194
    sub [hl]
    ld bc, $0197
    sbc c
    ld bc, $019a
    sbc e
    ld bc, $019d
    sbc [hl]
    ld bc, $01a0
    and c
    ld bc, $01a3
    and h
    ld bc, $01a6
    xor b
    ld bc, $01a9
    xor e
    ld bc, $01ac
    xor l
    ld bc, $01af
    or b
    ld bc, $01b2
    or e
    ld bc, $01b5
    or [hl]
    ld bc, $01b8
    cp c
    ld bc, $01bb
    cp h
    ld bc, $01be
    cp a
    ld bc, $01c1
    jp nz, $c401

    ld bc, $01c5
    rst $00
    ld bc, $01c8
    jp z, $cb01

    ld bc, $01cd
    adc $01
    ret nc

    ld bc, $01d2
    db $d3
    ld bc, $01d4
    sub $01
    dec b
    nop
    rrca
    nop
    dec h
    nop
    inc l
    nop
    ld [hl-], a
    nop
    scf
    nop
    dec a
    nop
    ld b, b
    nop
    ld b, [hl]
    nop
    ld c, c
    nop
    ld c, l
    nop
    ld d, b
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld h, a
    nop
    ld l, c
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld a, a
    nop
    add d
    nop
    add e
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub d
    nop
    sub h
    nop
    sub l
    nop
    sbc b
    nop
    sbc c
    nop
    sbc h
    nop
    sbc l
    nop
    sbc a
    nop
    and c
    nop
    and d
    nop
    and h
    nop
    and [hl]
    nop
    xor b
    nop
    xor d
    nop
    xor h
    nop
    xor [hl]
    nop
    or b
    nop
    or d
    nop
    or e
    nop
    or l
    nop
    or a
    nop
    cp b
    nop
    cp d
    nop
    cp h
    nop
    cp [hl]
    nop
    cp a
    nop
    pop bc
    nop
    jp $c500


    nop
    rst $00
    nop
    ret z

    nop
    jp z, $cb00

    nop
    adc $00
    rst $08
    nop
    pop de
    nop
    db $d3
    nop
    call nc, $d600
    nop
    ret c

    nop
    jp c, $db00

    nop
    db $dd
    nop
    rst $18
    nop
    ldh [rP1], a
    ld [c], a
    nop
    db $e4
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    db $eb
    nop
    db $ec
    nop
    db $ed
    nop
    rst $28
    nop
    pop af
    nop
    di
    nop
    push af
    nop
    or $00
    ld hl, sp+$00
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    cp $00
    nop
    ld bc, $0101
    inc bc
    ld bc, $0105
    rlca
    ld bc, $0108
    ld a, [bc]
    ld bc, $010c
    dec c
    ld bc, $010f
    ld de, $1201
    ld bc, $0114
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $011a
    inc e
    ld bc, $011e
    jr nz, @+$03

    ld hl, $2301
    ld bc, $0125
    ld h, $01
    jr z, jr_038_6d5c

    add hl, hl

jr_038_6d5c:
    ld bc, $012b
    dec l
    ld bc, $012e
    jr nc, jr_038_6d66

    ld [hl-], a

jr_038_6d66:
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0137
    jr c, jr_038_6d70

    ld a, [hl-]

jr_038_6d70:
    ld bc, $013c
    dec a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld bc, $0150
    ld d, d
    ld bc, $0153
    ld d, l
    ld bc, $0156
    ld e, b
    ld bc, $015a
    ld e, e
    ld bc, $015d
    ld e, a
    ld bc, $0160
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0167
    ld l, c
    ld bc, $016b
    ld l, h
    ld bc, $016e
    ld [hl], b
    ld bc, $0171
    ld [hl], e
    ld bc, $0174
    db $76
    ld bc, $0177
    ld a, d
    ld bc, $017b
    ld a, l
    ld bc, $017f
    add b
    ld bc, $0182
    add h
    ld bc, $0185
    add a
    ld bc, $0188
    adc d
    ld bc, $018c
    adc l
    ld bc, $018f
    sub c
    ld bc, $0193
    sub h
    ld bc, $0196
    sbc b
    ld bc, $0199
    sbc e
    ld bc, $019d
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a4
    and l
    ld bc, $01a7
    xor c
    ld bc, $01aa
    xor h
    ld bc, $01ae
    xor a
    ld bc, $01b1
    or e
    ld bc, $01b4
    or [hl]
    ld bc, $01b8
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01bf
    ret nz

    ld bc, $01c2
    call nz, $c501
    ld bc, $01c7
    ret


    ld bc, $01ca
    call z, $ce01
    ld bc, $01cf
    pop de
    ld bc, $01d3
    push de
    ld bc, $01d6
    ret c

    ld bc, $01da
    db $db
    ld bc, $01dd
    rst $18
    ld bc, $0005
    stop
    jr z, jr_038_6e3b

jr_038_6e3b:
    cpl
    nop
    dec [hl]
    nop
    ld a, [hl-]
    nop
    ld b, b
    nop
    ld b, l
    nop
    ld c, c
    nop
    ld c, h
    nop
    ld d, b
    nop
    ld d, e
    nop
    ld d, [hl]
    nop
    ld e, c
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add b
    nop
    add d
    nop
    add h
    nop
    add [hl]
    nop
    adc b
    nop
    adc e
    nop
    adc l
    nop
    adc a
    nop
    sub c
    nop
    sub e
    nop
    sub l
    nop
    sub a
    nop
    sbc c
    nop
    sbc e
    nop
    sbc l
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    and a
    nop
    xor c
    nop
    xor e
    nop
    xor l
    nop
    xor a
    nop
    or c
    nop
    or e
    nop
    or l
    nop
    or [hl]
    nop
    cp c
    nop
    cp d
    nop
    cp h
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp nz, $c400

    nop
    add $00
    ret z

    nop
    jp z, $cc00

    nop
    call $cf00
    nop
    pop de
    nop
    db $d3
    nop
    push de
    nop
    sub $00
    ret c

    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    pop hl
    nop
    db $e4
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    ld [$ec00], a
    nop
    xor $00
    ldh a, [rP1]
    ld a, [c]
    nop
    db $f4
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    ld bc, $0102
    inc b
    ld bc, $0106
    ld [$0901], sp
    ld bc, $010b
    dec c
    ld bc, $010f
    db $10
    ld bc, $0112
    inc d
    ld bc, $0116
    jr jr_038_6f10

    ld a, [de]

jr_038_6f10:
    ld bc, $011c
    dec e
    ld bc, $011f
    ld hl, $2301
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $012a
    inc l
    ld bc, $012d
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0135
    ld [hl], $01
    jr c, jr_038_6f34

    ld a, [hl-]

jr_038_6f34:
    ld bc, $013b
    dec a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, HeaderGlobalChecksum
    ld c, a
    ld bc, $0151
    ld d, e
    ld bc, $0155
    ld d, a
    ld bc, $0159
    ld e, d
    ld bc, $015c
    ld e, [hl]
    ld bc, $0160
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0167
    ld l, c
    ld bc, $016b
    ld l, h
    ld bc, $016e
    ld [hl], b
    ld bc, $0172
    ld [hl], h
    ld bc, $0176
    ld [hl], a
    ld bc, $017a
    ld a, e
    ld bc, $017d
    ld a, a
    ld bc, $0180
    add d
    ld bc, $0184
    add [hl]
    ld bc, $0188
    adc d
    ld bc, $018b
    adc l
    ld bc, $018f
    sub c
    ld bc, $0192
    sub h
    ld bc, $0196
    sbc b
    ld bc, $019a
    sbc h
    ld bc, $019e
    sbc a
    ld bc, $01a1
    and e
    ld bc, $01a5
    and a
    ld bc, $01a9
    xor e
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or d
    ld bc, $01b4
    or l
    ld bc, $01b7
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01bf
    pop bc
    ld bc, $01c2
    call nz, $c601
    ld bc, $01c8
    jp z, $cc01

    ld bc, $01ce
    rst $08
    ld bc, $01d1
    db $d3
    ld bc, $01d5
    rst $10
    ld bc, $01d9
    jp c, $dd01

    ld bc, $01de
    inc b
    nop
    jr jr_038_6fed

jr_038_6fed:
    jr nz, jr_038_6fef

jr_038_6fef:
    jr z, jr_038_6ff1

jr_038_6ff1:
    ld l, $00
    dec [hl]
    nop
    ld a, [hl-]
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld c, c
    nop
    ld c, h
    nop
    ld d, c
    nop
    ld d, h
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, h
    nop
    ld a, a
    nop
    add c
    nop
    add h
    nop
    add [hl]
    nop
    adc c
    nop
    adc h
    nop
    adc [hl]
    nop
    sub b
    nop
    sub e
    nop
    sub [hl]
    nop
    sbc b
    nop
    sbc d
    nop
    sbc h
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    and a
    nop
    xor d
    nop
    xor h
    nop
    xor [hl]
    nop
    or b
    nop
    or d
    nop
    or l
    nop
    or a
    nop
    cp c
    nop
    cp e
    nop
    cp l
    nop
    ret nz

    nop
    pop bc
    nop
    call nz, $c600
    nop
    ret z

    nop
    jp z, $cd00

    nop
    adc $00
    ret nc

    nop
    pop de
    nop
    call nc, $d600
    nop
    ret c

    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    db $e3
    nop
    db $e4
    nop
    and $00
    add sp, $00
    jp hl


    nop
    db $eb
    nop
    xor $00
    ldh a, [rP1]
    ld a, [c]
    nop
    di
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    db $fc
    nop
    db $fd
    nop
    cp $00
    nop
    ld bc, $0102
    inc b
    ld bc, $0106
    ld [$0a01], sp
    ld bc, $010c
    ld c, $01
    db $10
    ld bc, $0112
    inc d
    ld bc, $0115
    rla
    ld bc, $0118
    dec de
    ld bc, $011c
    ld e, $01
    jr nz, jr_038_70bc

    ld [hl+], a

jr_038_70bc:
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $0129
    dec hl
    ld bc, $012d
    ld l, $01
    jr nc, jr_038_70ce

    ld [hl-], a

jr_038_70ce:
    ld bc, HeaderTitle
    ld [hl], $01
    jr c, jr_038_70d6

    ld a, [hl-]

jr_038_70d6:
    ld bc, $013b
    dec a
    ld bc, $013e
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0150
    ld d, d
    ld bc, $0154
    ld d, [hl]
    ld bc, $0158
    ld e, c
    ld bc, $015b
    ld e, l
    ld bc, $015f
    ld h, b
    ld bc, $0162
    ld h, h
    ld bc, $0166
    ld l, b
    ld bc, $0169
    ld l, e
    ld bc, $016d
    ld l, [hl]
    ld bc, $0171
    ld [hl], d
    ld bc, $0174
    db $76
    ld bc, $0178
    ld a, c
    ld bc, $017b
    ld a, h
    ld bc, $017f
    add b
    ld bc, $0182
    add h
    ld bc, $0186
    add a
    ld bc, $0189
    adc d
    ld bc, $018c
    adc a
    ld bc, $0190
    sub d
    ld bc, $0193
    sub [hl]
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc l
    ld bc, $019e
    and b
    ld bc, $01a2
    and e
    ld bc, $01a5
    and a
    ld bc, $01a9
    xor e
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or c
    ld bc, $01b4
    or l
    ld bc, $01b7
    cp b
    ld bc, $01ba
    cp h
    ld bc, $01bd
    ret nz

    ld bc, $01c1
    jp $c501


    ld bc, $01c6
    ret z

    ld bc, $01ca
    call z, $cd01
    ld bc, $01cf
    pop de
    ld bc, $01d2
    call nc, $d601
    ld bc, $01d8
    jp c, $db01

    ld bc, $01dd
    rst $18
    ld bc, $0004
    inc e
    nop
    dec h
    nop
    inc l
    nop
    ld [hl-], a
    nop
    jr c, jr_038_719f

jr_038_719f:
    ld a, $00
    ld b, h
    nop
    ld c, b
    nop
    ld c, h
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, l
    nop
    add b
    nop
    add d
    nop
    add l
    nop
    adc b
    nop
    adc d
    nop
    adc l
    nop
    adc a
    nop
    sub c
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and b
    nop
    and e
    nop
    and l
    nop
    and a
    nop
    xor d
    nop
    xor h
    nop
    xor [hl]
    nop
    or c
    nop
    or e
    nop
    or l
    nop
    or a
    nop
    cp c
    nop
    cp h
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp $c400


    nop
    rst $00
    nop
    ret z

    nop
    rlc b
    call $cf00
    nop
    jp nc, $d400

    nop
    sub $00
    ret c

    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    db $e3
    nop
    db $e4
    nop
    and $00
    add sp, $00
    db $eb
    nop
    db $ed
    nop
    xor $00
    ldh a, [rP1]
    di
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    db $fc
    nop
    cp $00
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $0109
    ld a, [bc]
    ld bc, $010c
    rrca
    ld bc, $0111
    ld [de], a
    ld bc, $0114
    ld d, $01
    jr jr_038_7254

    dec de

jr_038_7254:
    ld bc, $011c
    rra
    ld bc, $0121
    inc hl
    ld bc, $0124
    ld h, $01
    jr z, jr_038_7264

    ld a, [hl+]

jr_038_7264:
    ld bc, $012c
    ld l, $01
    jr nc, jr_038_726c

    ld [hl-], a

jr_038_726c:
    ld bc, HeaderTitle
    ld [hl], $01
    jr c, jr_038_7274

    ld a, [hl-]

jr_038_7274:
    ld bc, $013c
    ld a, $01
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld b, a
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0151
    ld d, e
    ld bc, $0156
    ld d, a
    ld bc, $0159
    ld e, e
    ld bc, $015d
    ld e, a
    ld bc, $0161
    ld h, e
    ld bc, $0165
    ld h, a
    ld bc, $0169
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0171
    ld [hl], d
    ld bc, $0174
    ld [hl], a
    ld bc, $0178
    ld a, d
    ld bc, $017c
    ld a, [hl]
    ld bc, $0180
    add d
    ld bc, $0184
    add [hl]
    ld bc, $0188
    adc c
    ld bc, $018c
    adc [hl]
    ld bc, $0190
    sub d
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc c
    ld bc, $019c
    sbc [hl]
    ld bc, $01a0
    and c
    ld bc, $01a3
    and l
    ld bc, $01a7
    xor c
    ld bc, $01ab
    xor l
    ld bc, $01af
    or c
    ld bc, $01b3
    or l
    ld bc, $01b7
    cp b
    ld bc, $01bb
    cp l
    ld bc, $01bf
    pop bc
    ld bc, $01c2
    call nz, $c601
    ld bc, $01c8
    jp z, $cc01

    ld bc, $01ce
    ret nc

    ld bc, $01d2
    call nc, $d601
    ld bc, $01d8
    reti


    ld bc, $01dc
    sbc $01
    inc b
    nop
    jr nz, jr_038_7321

jr_038_7321:
    add hl, hl
    nop
    ld sp, $3800
    nop
    ld a, $00
    ld b, e
    nop
    ld c, b
    nop
    ld c, l
    nop
    ld d, c
    nop
    ld d, l
    nop
    ld e, c
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    halt
    ld a, d
    nop
    ld a, h
    nop
    ld a, a
    nop
    add d
    nop
    add l
    nop
    add a
    nop
    adc d
    nop
    adc l
    nop
    adc a
    nop
    sub d
    nop
    sub l
    nop
    sub a
    nop
    sbc d
    nop
    sbc h
    nop
    sbc a
    nop
    and c
    nop
    and h
    nop
    and [hl]
    nop
    xor c
    nop
    xor e
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    or l
    nop
    or a
    nop
    cp d
    nop
    cp h
    nop
    cp [hl]
    nop
    pop bc
    nop
    jp $c500


    nop
    rst $00
    nop
    jp z, $cc00

    nop
    adc $00
    pop de
    nop
    db $d3
    nop
    push de
    nop
    rst $10
    nop
    jp c, $dc00

    nop
    rst $18
    nop
    ldh [rP1], a
    ld [c], a
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    db $eb
    nop
    db $ed
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    db $f4
    nop
    or $00
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $010a
    inc c
    ld bc, $010e
    db $10
    ld bc, $0113
    inc d
    ld bc, $0117
    add hl, de
    ld bc, $011b
    dec e
    ld bc, $011f
    ld hl, $2401
    ld bc, $0126
    jr z, jr_038_73e0

    ld a, [hl+]

jr_038_73e0:
    ld bc, $012c
    ld l, $01
    ld sp, $3301
    ld bc, $0135
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ccf
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, $014f
    ld d, c
    ld bc, $0152
    ld d, l
    ld bc, $0156
    ld e, c
    ld bc, $015b
    ld e, l
    ld bc, $015f
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0168
    ld l, d
    ld bc, $016c
    ld l, a
    ld bc, $0171
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017e
    add b
    ld bc, $0182
    add h
    ld bc, $0186
    adc b
    ld bc, $018a
    adc h
    ld bc, $018e
    sub c
    ld bc, $0193
    sub l
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a4
    and [hl]
    ld bc, $01a8
    xor d
    ld bc, $01ad
    xor a
    ld bc, $01b1
    or e
    ld bc, $01b5
    or a
    ld bc, $01b9
    cp h
    ld bc, $01be
    ret nz

    ld bc, $01c2
    call nz, $c601
    ld bc, $01c8
    rlc c
    call $cf01
    ld bc, $01d1
    db $d3
    ld bc, $01d5
    ret c

    ld bc, $01da
    call c, $de01
    ld bc, $0004
    inc hl
    nop
    inc l
    nop
    inc [hl]
    nop
    inc a
    nop
    ld b, d
    nop
    ld b, a
    nop
    ld c, h
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld e, c
    nop
    ld e, l
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    halt
    ld a, c
    nop
    ld a, h
    nop
    ld a, a
    nop
    add d
    nop
    add l
    nop
    adc b
    nop
    adc e
    nop
    adc l
    nop
    sub b
    nop
    sub e
    nop
    sub [hl]
    nop
    sbc b
    nop
    sbc e
    nop
    sbc l
    nop
    and b
    nop
    and e
    nop
    and [hl]
    nop
    xor c
    nop
    xor e
    nop
    xor [hl]
    nop
    or b
    nop
    or d
    nop
    or l
    nop
    or a
    nop
    cp d
    nop
    cp h
    nop
    cp a
    nop
    jp nz, $c400

    nop
    rst $00
    nop
    ret


    nop
    call z, $ce00
    nop
    pop de
    nop
    db $d3
    nop
    push de
    nop
    ret c

    nop
    jp c, $dc00

    nop
    rst $18
    nop
    pop hl
    nop
    db $e4
    nop
    and $00
    jp hl


    nop
    db $eb
    nop
    db $ed
    nop
    rst $28
    nop
    ld a, [c]
    nop
    db $f4
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    nop
    ld bc, $0102
    inc b
    ld bc, $0107
    add hl, bc
    ld bc, $010b
    ld c, $01
    ld de, $1201
    ld bc, $0115
    rla
    ld bc, $011a
    inc e
    ld bc, $011e
    jr nz, jr_038_7538

    inc hl

jr_038_7538:
    ld bc, $0125
    daa
    ld bc, $0129
    inc l
    ld bc, $012e
    jr nc, jr_038_7546

    inc sp

jr_038_7546:
    ld bc, $0135
    scf
    ld bc, $013a
    inc a
    ld bc, $013e
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, d
    ld bc, HeaderOldLicenseeCode
    ld c, [hl]
    ld bc, $0150
    ld d, e
    ld bc, $0155
    ld d, a
    ld bc, $015a
    ld e, h
    ld bc, $015e
    ld h, b
    ld bc, $0163
    ld h, l
    ld bc, $0167
    ld l, d
    ld bc, $016c
    ld l, [hl]
    ld bc, $0170
    ld [hl], e
    ld bc, $0175
    ld a, b
    ld bc, $017a
    ld a, h
    ld bc, $017e
    add c
    ld bc, $0183
    add l
    ld bc, $0188
    adc d
    ld bc, $018c
    adc a
    ld bc, $0191
    sub e
    ld bc, $0196
    sbc b
    ld bc, $019a
    sbc l
    ld bc, $019f
    and c
    ld bc, $01a4
    and [hl]
    ld bc, $01a8
    xor d
    ld bc, $01ac
    xor a
    ld bc, $01b1
    or h
    ld bc, $01b6
    cp b
    ld bc, $01ba
    cp l
    ld bc, $01bf
    pop bc
    ld bc, $01c4
    add $01
    ret


    ld bc, $01cb
    call $d001
    ld bc, $01d2
    call nc, $d601
    ld bc, $01d9
    db $db
    ld bc, $01dd
    inc b
    nop
    ld h, $00
    cpl
    nop
    scf
    nop
    ld a, $00
    ld b, l
    nop
    ld c, d
    nop
    ld c, a
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, h
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    halt
    ld a, c
    nop
    ld a, l
    nop
    ld a, a
    nop
    add e
    nop
    add [hl]
    nop
    adc c
    nop
    adc h
    nop
    adc a
    nop
    sub d
    nop
    sub l
    nop
    sbc b
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and b
    nop
    and e
    nop
    and [hl]
    nop
    xor b
    nop
    xor e
    nop
    xor [hl]
    nop
    or c
    nop
    or e
    nop
    or a
    nop
    cp c
    nop
    cp e
    nop
    cp l
    nop
    pop bc
    nop
    call nz, $c600
    nop
    ret


    nop
    rlc b
    adc $00
    ret nc

    nop
    db $d3
    nop
    sub $00
    ret c

    nop
    db $db
    nop
    db $dd
    nop
    ldh [rP1], a
    ld [c], a
    nop
    push hl
    nop
    rst $20
    nop
    jp hl


    nop
    db $ec
    nop
    rst $28
    nop
    pop af
    nop
    di
    nop
    or $00
    ld sp, hl
    nop
    ei
    nop
    cp $00
    nop
    ld bc, $0102
    dec b
    ld bc, $0107
    add hl, bc
    ld bc, $010c
    rrca
    ld bc, $0111
    inc d
    ld bc, $0116
    add hl, de
    ld bc, $011b
    dec e
    ld bc, $0120
    ld [hl+], a
    ld bc, $0125
    daa
    ld bc, $012a
    inc l
    ld bc, $012e
    ld sp, $3301
    ld bc, $0136
    add hl, sp
    ld bc, $013b
    dec a
    ld bc, $0140
    ld b, d
    ld bc, $0145
    ld b, a
    ld bc, HeaderRAMSize
    ld c, h
    ld bc, HeaderGlobalChecksum
    ld d, c
    ld bc, $0154
    ld d, [hl]
    ld bc, $0158
    ld e, e
    ld bc, $015d
    ld e, a
    ld bc, $0162
    ld h, l
    ld bc, $0167
    ld l, c
    ld bc, $016c
    ld l, [hl]
    ld bc, $0171
    ld [hl], e
    ld bc, $0176
    ld a, b
    ld bc, $017a
    ld a, l
    ld bc, $0180
    add d
    ld bc, $0185
    add a
    ld bc, $018a
    adc h
    ld bc, $018e
    sub c
    ld bc, $0193
    sub [hl]
    ld bc, $0198
    sbc d
    ld bc, $019d
    and b
    ld bc, $01a2
    and l
    ld bc, $01a7
    xor d
    ld bc, $01ac
    xor [hl]
    ld bc, $01b1
    or e
    ld bc, $01b6
    cp b
    ld bc, $01bb
    cp l
    ld bc, $01c0
    jp nz, $c501

    ld bc, $01c7
    jp z, $cc01

    ld bc, $01ce
    pop de
    ld bc, $01d4
    sub $01
    ret c

    ld bc, $01db
    db $dd
    ld bc, $0004
    add hl, hl
    nop
    ld [hl-], a
    nop
    ld a, [hl-]
    nop
    ld b, d
    nop
    ld c, c
    nop
    ld c, [hl]
    nop
    ld d, e
    nop
    ld e, b
    nop
    ld e, h
    nop
    ld h, c
    nop
    ld h, l
    nop
    ld l, c
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, a
    nop
    add d
    nop
    add [hl]
    nop
    adc b
    nop
    adc h
    nop
    adc a
    nop
    sub d
    nop
    sub l
    nop
    sbc b
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and c
    nop
    and h
    nop
    and a
    nop
    xor d
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    or [hl]
    nop
    cp c
    nop
    cp h
    nop
    cp [hl]
    nop
    pop bc
    nop
    call nz, $c700
    nop
    jp z, $cc00

    nop
    ret nc

    nop
    jp nc, $d500

    nop
    rst $10
    nop
    jp c, $dd00

    nop
    rst $18
    nop
    ld [c], a
    nop
    push hl
    nop
    add sp, $00
    ld [$ed00], a
    nop
    ldh a, [rP1]
    di
    nop
    push af
    nop
    rst $30
    nop
    ld a, [$fd00]
    nop
    nop
    ld bc, $0102
    dec b
    ld bc, $0108
    ld a, [bc]
    ld bc, $010d
    rrca
    ld bc, $0112
    dec d
    ld bc, $0117
    ld a, [de]
    ld bc, $011d
    rra
    ld bc, $0122
    inc h
    ld bc, $0127
    ld a, [hl+]
    ld bc, $012d
    cpl
    ld bc, $0132
    inc [hl]
    ld bc, $0137
    add hl, sp
    ld bc, $013c
    ccf
    ld bc, $0142
    ld b, h
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderMaskROMVersion
    ld c, a
    ld bc, $0151
    ld d, h
    ld bc, $0156
    ld e, c
    ld bc, $015c
    ld e, [hl]
    ld bc, $0161
    ld h, h
    ld bc, $0166
    ld l, c
    ld bc, $016b
    ld l, [hl]
    ld bc, $0171
    ld [hl], e
    ld bc, $0176
    ld a, c
    ld bc, $017b
    ld a, [hl]
    ld bc, $0180
    add e
    ld bc, $0186
    adc b
    ld bc, $018b
    adc [hl]
    ld bc, $0191
    sub e
    ld bc, $0196
    sbc b
    ld bc, $019b
    sbc [hl]
    ld bc, $01a0
    and e
    ld bc, $01a6
    xor b
    ld bc, $01ab
    xor l
    ld bc, $01b0
    or e
    ld bc, $01b6
    cp b
    ld bc, $01bb
    cp [hl]
    ld bc, $01c0
    jp $c601


    ld bc, $01c8
    rlc c
    adc $01
    ret nc

    ld bc, $01d3
    push de
    ld bc, $01d8
    db $db
    ld bc, $01dd
    inc b
    nop
    dec l
    nop
    ld [hl], $00
    dec sp
    nop
    ld b, [hl]
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, a
    nop
    ld e, l
    nop
    ld h, c
    nop
    ld h, [hl]
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld [hl], d
    nop
    halt
    ld a, d
    nop
    ld a, [hl]
    nop
    add c
    nop
    add l
    nop
    adc c
    nop
    adc h
    nop
    sub b
    nop
    sub d
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc l
    nop
    and b
    nop
    and e
    nop
    and [hl]
    nop
    xor d
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    or [hl]
    nop
    cp c
    nop
    cp h
    nop
    ret nz

    nop
    jp nz, $c500

    nop
    ret z

    nop
    call z, $ce00
    nop
    pop de
    nop
    call nc, $d700
    nop
    jp c, $dd00

    nop
    ldh [rP1], a
    db $e3
    nop
    and $00
    jp hl


    nop
    db $eb
    nop
    xor $00
    pop af
    nop
    db $f4
    nop
    rst $30
    nop
    ld a, [$fd00]
    nop
    nop
    ld bc, $0102
    dec b
    ld bc, $0108
    dec bc
    ld bc, $010e
    ld de, $1301
    ld bc, $0116
    add hl, de
    ld bc, $011c
    rra
    ld bc, $0122
    dec h
    ld bc, $0127
    ld a, [hl+]
    ld bc, $012d
    jr nc, jr_038_78da

    ld [hl-], a

jr_038_78da:
    ld bc, $0135
    jr c, jr_038_78e0

    dec sp

jr_038_78e0:
    ld bc, $013e
    ld b, c
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, HeaderRAMSize
    ld c, h
    ld bc, $014f
    ld d, c
    ld bc, $0154
    ld d, a
    ld bc, $015a
    ld e, l
    ld bc, $0160
    ld h, e
    ld bc, $0165
    ld l, b
    ld bc, $016b
    ld l, [hl]
    ld bc, $0171
    ld [hl], h
    ld bc, $0177
    ld a, c
    ld bc, $017c
    ld a, a
    ld bc, $0182
    add l
    ld bc, $0188
    adc d
    ld bc, $018d
    sub b
    ld bc, $0193
    sub [hl]
    ld bc, $0199
    sbc h
    ld bc, $019e
    and c
    ld bc, $01a4
    and a
    ld bc, $01aa
    xor l
    ld bc, $01b0
    or d
    ld bc, $01b5
    cp b
    ld bc, $01bb
    cp [hl]
    ld bc, $01c1
    call nz, $c701
    ld bc, $01c9
    call z, $cf01
    ld bc, $01d2
    push de
    ld bc, $01d8
    db $db
    ld bc, $01de
    inc b
    nop
    cpl
    nop
    ld [hl], $00
    dec a
    nop
    ld b, h
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld l, b
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, l
    nop
    add b
    nop
    add h
    nop
    adc c
    nop
    adc h
    nop
    sub b
    nop
    sub h
    nop
    sub a
    nop
    sbc e
    nop
    sbc a
    nop
    and d
    nop
    and [hl]
    nop
    xor c
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    or [hl]
    nop
    cp d
    nop
    cp [hl]
    nop
    pop bc
    nop
    push bc
    nop
    ret z

    nop
    rlc b
    rst $08
    nop
    jp nc, $d500

    nop
    ret c

    nop
    db $db
    nop
    rst $18
    nop
    ld [c], a
    nop
    push hl
    nop
    add sp, $00
    db $ec
    nop
    rst $28
    nop
    ld a, [c]
    nop
    push af
    nop
    ld hl, sp+$00
    ei
    nop
    cp $00
    ld [bc], a
    ld bc, $0105
    ld [$0c01], sp
    ld bc, $010f
    ld [de], a
    ld bc, $0115
    jr jr_038_79d0

    dec de

jr_038_79d0:
    ld bc, $011f
    ld [hl+], a
    ld bc, $0125
    jr z, jr_038_79da

    dec hl

jr_038_79da:
    ld bc, $012e
    ld [hl-], a
    ld bc, $0135
    jr c, jr_038_79e4

    dec sp

jr_038_79e4:
    ld bc, $013e
    ld b, d
    ld bc, HeaderNewLicenseeCode
    ld c, b
    ld bc, HeaderOldLicenseeCode
    ld c, [hl]
    ld bc, $0151
    ld d, h
    ld bc, $0158
    ld e, e
    ld bc, $015e
    ld h, c
    ld bc, $0165
    ld l, b
    ld bc, $016b
    ld l, [hl]
    ld bc, $0171
    ld [hl], h
    ld bc, $0177
    ld a, e
    ld bc, $017e
    add c
    ld bc, $0184
    adc b
    ld bc, $018a
    adc [hl]
    ld bc, $0191
    sub h
    ld bc, $0197
    sbc e
    ld bc, $019e
    and c
    ld bc, $01a5
    xor b
    ld bc, $01ab
    xor [hl]
    ld bc, $01b1
    or h
    ld bc, $01b8
    cp e
    ld bc, $01be
    pop bc
    ld bc, $01c5
    ret z

    ld bc, $01cb
    adc $01
    pop de
    ld bc, $01d5
    ret c

    ld bc, $01dc
    rst $18
    ld bc, $0004
    dec l
    nop
    add hl, sp
    nop
    ld b, d
    nop
    ld c, d
    nop
    ld d, c
    nop
    ld e, d
    nop
    ld h, b
    nop
    ld h, [hl]
    nop
    ld l, e
    nop
    ld [hl], b
    nop
    ld [hl], l
    nop
    ld a, d
    nop
    ld a, a
    nop
    add e
    nop
    adc b
    nop
    adc h
    nop
    sub b
    nop
    sub l
    nop
    sbc c
    nop
    sbc l
    nop
    and c
    nop
    and [hl]
    nop
    xor d
    nop
    xor [hl]
    nop
    or c
    nop
    or l
    nop
    cp c
    nop
    cp l
    nop
    pop bc
    nop
    push bc
    nop
    ret


    nop
    call $d000
    nop
    call nc, $d800
    nop
    call c, $df00
    nop
    db $e3
    nop
    rst $20
    nop
    ld [$ee00], a
    nop
    ld a, [c]
    nop
    push af
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld bc, $0401
    ld bc, $0108
    inc c
    ld bc, $010f
    inc de
    ld bc, $0116
    ld a, [de]
    ld bc, $011e
    ld hl, $2501
    ld bc, $0129
    inc l
    ld bc, $0130
    inc [hl]
    ld bc, $0137
    dec sp
    ld bc, $013e
    ld b, d
    ld bc, HeaderSGBFlag
    ld c, d
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0154
    ld e, b
    ld bc, $015b
    ld e, a
    ld bc, $0163
    ld h, [hl]
    ld bc, $0169
    ld l, [hl]
    ld bc, $0171
    ld [hl], l
    ld bc, $0178
    ld a, h
    ld bc, $017f
    add e
    ld bc, $0187
    adc e
    ld bc, $018e
    sub d
    ld bc, $0196
    sbc d
    ld bc, $019d
    and c
    ld bc, $01a5
    xor b
    ld bc, $01ac
    or b
    ld bc, $01b4
    or a
    ld bc, $01bb
    cp [hl]
    ld bc, $01c2
    add $01
    jp z, $ce01

    ld bc, $01d1
    push de
    ld bc, $01d9
    call c, Call_000_0401
    nop
    dec [hl]
    nop
    ld b, d
    nop
    ld c, e
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld l, b
    nop
    ld l, [hl]
    nop
    ld [hl], h
    nop
    ld a, d
    nop
    add c
    nop
    add [hl]
    nop
    adc h
    nop
    sub c
    nop
    sub [hl]
    nop
    sbc h
    nop
    and c
    nop
    and [hl]
    nop
    xor e
    nop
    or b
    nop
    or l
    nop
    cp d
    nop
    cp a
    nop
    call nz, $c800
    nop
    call $d200
    nop
    sub $00
    db $db
    nop
    ldh [rP1], a
    db $e4
    nop
    add sp, $00
    db $ed
    nop
    pop af
    nop
    or $00
    ld_long a, $ff00
    nop
    inc bc
    ld bc, $0108
    inc c
    ld bc, $0111
    inc d
    ld bc, $0119
    ld e, $01
    ld [hl+], a
    ld bc, $0126
    dec hl
    ld bc, $012f
    inc sp
    ld bc, $0138
    inc a
    ld bc, $0140
    ld b, l
    ld bc, HeaderRAMSize
    ld c, [hl]
    ld bc, $0152
    ld d, [hl]
    ld bc, $015b
    ld e, a
    ld bc, $0163
    ld l, b
    ld bc, $016c
    ld [hl], c
    ld bc, $0175
    ld a, c
    ld bc, $017e
    add d
    ld bc, $0187
    adc e
    ld bc, $018f
    sub h
    ld bc, $0198
    sbc h
    ld bc, $01a1
    and l
    ld bc, $01aa
    xor [hl]
    ld bc, $01b3
    or a
    ld bc, $01bb
    ret nz

    ld bc, $01c4
    ret


    ld bc, $01cd
    jp nc, $d601

    ld bc, $01db
    rst $18
    ld bc, $7beb
    add hl, hl
    ld a, h
    ld h, a
    ld a, h
    and l
    ld a, h
    db $e3
    ld a, h
    ld hl, $5f7d
    ld a, l
    sbc l
    ld a, l
    db $db
    ld a, l
    add hl, de
    ld a, [hl]
    ld d, a
    ld a, [hl]
    sub l
    ld a, [hl]
    db $d3
    ld a, [hl]
    ld bc, $0e00
    nop
    inc e
    nop
    dec h
    nop
    inc l
    nop
    inc sp
    nop
    add hl, sp
    nop
    ccf
    nop
    ld b, l
    nop
    ld c, b
    nop
    ld c, [hl]
    nop
    ld d, e
    nop
    ld d, a
    nop
    ld e, d
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], e
    nop
    ld [hl], h
    nop
    halt
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, l
    nop
    ld bc, $1000
    nop
    rra
    nop
    jr z, jr_038_7c31

jr_038_7c31:
    jr nc, jr_038_7c33

jr_038_7c33:
    scf
    nop
    ld a, $00
    ld b, l
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    ld bc, $1100
    nop
    ld hl, $2b00
    nop
    inc sp
    nop
    dec sp
    nop
    ld b, d
    nop
    ld c, b
    nop
    ld c, a
    nop
    ld d, l
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld h, c
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
    ld a, b
    nop
    ld a, c
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add b
    nop
    add c
    nop
    add d
    nop
    add e
    nop
    add h
    nop
    ld bc, $1200
    nop
    inc e
    nop
    dec h
    nop
    dec l
    nop
    inc [hl]
    nop
    dec sp
    nop
    ld b, c
    nop
    ld b, l
    nop
    ld c, e
    nop
    ld c, a
    nop
    ld d, h
    nop
    ld e, b
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    halt
    ld a, c
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    add b
    nop
    add e
    nop
    add l
    nop
    add a
    nop
    adc c
    nop
    ld bc, $1300
    nop
    rra
    nop
    jr z, jr_038_7ceb

jr_038_7ceb:
    ld sp, $3800
    nop
    ld b, b
    nop
    ld b, [hl]
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld e, c
    nop
    ld e, l
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld h, a
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add b
    nop
    add e
    nop
    add l
    nop
    add a
    nop
    adc c
    nop
    adc e
    nop
    adc l
    nop
    ld bc, $1600
    nop
    ld [hl+], a
    nop
    inc l
    nop
    inc [hl]
    nop
    inc a
    nop
    ld b, l
    nop
    ld c, e
    nop
    ld d, c
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, a
    nop
    ld h, h
    nop
    ld h, a
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add b
    nop
    add d
    nop
    add l
    nop
    add a
    nop
    adc c
    nop
    adc e
    nop
    adc h
    nop
    adc [hl]
    nop
    sub c
    nop
    sub d
    nop
    ld bc, $1700
    nop
    inc h
    nop
    cpl
    nop
    add hl, sp
    nop
    ld b, d
    nop
    ld c, c
    nop
    ld c, a
    nop
    ld d, l
    nop
    ld e, d
    nop
    ld h, b
    nop
    ld h, h
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, e
    nop
    ld a, l
    nop
    add c
    nop
    add h
    nop
    add [hl]
    nop
    adc b
    nop
    adc e
    nop
    adc l
    nop
    adc a
    nop
    sub c
    nop
    sub e
    nop
    sub l
    nop
    sub [hl]
    nop
    sbc b
    nop
    ld bc, $1800
    nop
    ld h, $00
    ld sp, $3c00
    nop
    ld b, l
    nop
    ld c, h
    nop
    ld d, d
    nop
    ld e, c
    nop
    ld e, a
    nop
    ld h, h
    nop
    ld l, c
    nop
    ld l, l
    nop
    ld [hl], d
    nop
    halt
    ld a, c
    nop
    ld a, l
    nop
    ld a, a
    nop
    add d
    nop
    add [hl]
    nop
    adc b
    nop
    adc e
    nop
    adc l
    nop
    adc a
    nop
    sub c
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc b
    nop
    sbc d
    nop
    sbc h
    nop
    sbc [hl]
    nop
    ld bc, $1a00
    nop
    jr z, jr_038_7de1

jr_038_7de1:
    inc [hl]
    nop
    ccf
    nop
    ld c, d
    nop
    ld d, c
    nop
    ld e, b
    nop
    ld e, [hl]
    nop
    ld h, h
    nop
    ld l, c
    nop
    ld l, [hl]
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, a
    nop
    add e
    nop
    add l
    nop
    adc c
    nop
    adc h
    nop
    adc a
    nop
    sub c
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc d
    nop
    sbc l
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and h
    nop
    ld bc, $1c00
    nop
    dec hl
    nop
    jr c, jr_038_7e21

jr_038_7e21:
    ld b, d
    nop
    ld c, l
    nop
    ld d, [hl]
    nop
    ld e, l
    nop
    ld h, e
    nop
    ld l, c
    nop
    ld l, a
    nop
    ld [hl], h
    nop
    ld a, c
    nop
    ld a, [hl]
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    nop
    adc l
    nop
    sub b
    nop
    sub h
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and b
    nop
    and d
    nop
    and h
    nop
    and a
    nop
    xor c
    nop
    xor e
    nop
    xor l
    nop
    ld bc, $1c00
    nop
    dec hl
    nop
    add hl, sp
    nop
    ld b, h
    nop
    ld c, l
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld h, h
    nop
    ld l, d
    nop
    ld [hl], b
    nop
    ld [hl], l
    nop
    ld a, d
    nop
    ld a, [hl]
    nop
    add e
    nop
    adc b
    nop
    adc e
    nop
    adc a
    nop
    sub d
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc h
    nop
    sbc a
    nop
    and d
    nop
    and h
    nop
    and a
    nop
    xor d
    nop
    xor h
    nop
    xor a
    nop
    or d
    nop
    or e
    nop
    ld bc, $1f00
    nop
    jr nc, jr_038_7e9b

jr_038_7e9b:
    ccf
    nop
    ld c, d
    nop
    ld d, h
    nop
    ld e, l
    nop
    ld h, h
    nop
    ld l, h
    nop
    ld [hl], d
    nop
    ld a, b
    nop
    ld a, [hl]
    nop
    add h
    nop
    adc c
    nop
    adc [hl]
    nop
    sub d
    nop
    sub [hl]
    nop
    sbc e
    nop
    sbc a
    nop
    and e
    nop
    and [hl]
    nop
    xor d
    nop
    xor l
    nop
    or c
    nop
    or e
    nop
    or [hl]
    nop
    cp c
    nop
    cp l
    nop
    ret nz

    nop
    jp nz, $c500

    nop
    ld bc, $2300
    nop
    scf
    nop
    ld c, b
    nop
    ld d, h
    nop
    ld e, a
    nop
    ld l, c
    nop
    ld [hl], d
    nop
    ld a, d
    nop
    add d
    nop
    adc d
    nop
    sub b
    nop
    sub a
    nop
    sbc h
    nop
    and e
    nop
    xor b
    nop
    xor l
    nop
    or c
    nop
    or [hl]
    nop
    cp e
    nop
    cp a
    nop
    jp $c700


    nop
    call z, $cf00
    nop
    db $d3
    nop
    rst $10
    nop
    jp c, $dd00

    nop
    pop hl
    nop
    db $e4
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
