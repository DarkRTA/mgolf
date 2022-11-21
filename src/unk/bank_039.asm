INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    db $06, $40

    dec h
    ld d, l
    ld c, b
    ld l, d

    ld a, c
    cp $0d
    jr nc, jr_039_4049

    ld a, [$d32a]
    cp $02
    jr z, jr_039_4037

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
    jr nz, jr_039_402a

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_039_402a:
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


jr_039_4037:
    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $51e5
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    res 0, e
    add hl, de
    ld l, [hl]
    ld h, $00
    ret


jr_039_4049:
    ld hl, $0040
    ret


    db $67, $40

    ld h, c
    ld b, d
    add hl, sp
    ld b, h

    db $ed, $45

    sub l
    ld b, a
    rra
    ld c, c
    adc l
    ld c, d
    pop hl
    ld c, e
    ld hl, $4b4d
    ld c, [hl]
    ld e, a
    ld c, a
    ld e, c
    ld d, b

    db $33, $51

    dec b
    nop
    ld c, $00
    ld [hl+], a
    nop
    add hl, hl
    nop
    cpl
    nop
    inc [hl]
    nop
    add hl, sp
    nop
    ld a, $00
    ld b, d
    nop
    ld b, a
    nop
    ld c, c
    nop
    ld c, a
    nop
    ld d, d
    nop
    ld d, l
    nop
    ld e, c
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
    ld a, l
    nop
    add b
    nop
    add c
    nop
    add h
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
    cp b
    nop
    cp d
    nop
    cp e
    nop
    cp l
    nop
    cp a
    nop
    ret nz

    nop
    jp nz, $c300

    nop
    push bc
    nop
    rst $00
    nop
    ret z

    nop
    jp z, $cb00

    nop
    call $cf00
    nop
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
    jp c, $db00

    nop
    db $dd
    nop
    sbc $00
    ldh [rP1], a
    ld [c], a
    nop
    db $e3
    nop
    push hl
    nop
    and $00
    add sp, $00
    jp hl


    nop
    db $eb
    nop
    db $ed
    nop
    xor $00
    rst $28
    nop
    pop af
    nop
    ld a, [c]
    nop
    db $f4
    nop
    or $00
    rst $30
    nop

    db $f9, $00, $fa, $00

    ei
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    ld bc, $0102
    inc bc
    db $01

    db $05, $01

    ld b, $01
    db $08
    db $01

    db $09, $01

    dec bc
    ld bc, $010c
    dec c
    ld bc, $010f
    ld de, $1201
    ld bc, $0114
    dec d
    ld bc, $0117
    jr jr_039_4160

    ld a, [de]

jr_039_4160:
    ld bc, $011b
    inc e
    ld bc, $011e
    jr nz, @+$03

    ld hl, $2201
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $0129
    ld a, [hl+]
    ld bc, $012c
    dec l
    ld bc, $012e
    jr nc, jr_039_4180

    ld [hl-], a

jr_039_4180:
    ld bc, $0133
    inc [hl]
    ld bc, $0136
    scf
    ld bc, $0139
    ld a, [hl-]
    ld bc, $013c
    dec a
    ld bc, $013e
    ld b, b
    ld bc, $0141
    ld b, e
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, c
    ld bc, HeaderOldLicenseeCode
    ld c, h
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0151
    ld d, c
    ld bc, $0153
    ld d, l
    ld bc, $0156
    ld d, a
    ld bc, $0159
    ld e, e
    ld bc, $015c
    ld e, l
    ld bc, $015f
    ld h, b
    ld bc, $0162
    ld h, h
    ld bc, $0165
    ld h, a
    ld bc, $0168
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
    ld a, b
    ld bc, $017a
    ld a, e
    ld bc, $017c
    ld a, [hl]
    ld bc, $017f
    add c
    ld bc, $0183
    add h
    ld bc, $0186
    add a
    ld bc, $0189
    adc d
    ld bc, $018c
    adc l
    ld bc, $018f
    sub b
    ld bc, $0192
    sub e
    ld bc, $0194
    sub l
    ld bc, $0198
    sbc c
    ld bc, $019a
    sbc h
    ld bc, $019d
    sbc a
    ld bc, $01a0
    and d
    ld bc, $01a3
    and l
    ld bc, $01a6
    and a
    ld bc, $01a9
    xor e
    ld bc, $01ac
    xor [hl]
    ld bc, $01af
    or c
    ld bc, $01b2
    or h
    ld bc, $01b5
    or a
    ld bc, $01b8
    cp c
    ld bc, $01bb
    cp h
    ld bc, $01be
    ret nz

    ld bc, $01c1
    jp nz, $c401

    ld bc, $01c5
    rst $00
    ld bc, $01c8
    jp z, $cc01

    ld bc, $01cd
    adc $01
    ret nc

    ld bc, $01d2
    db $d3
    ld bc, $01d4
    sub $01
    rst $10
    ld bc, $0005
    rrca
    nop
    ld h, $00
    dec l
    nop
    inc sp
    nop
    jr c, jr_039_426d

jr_039_426d:
    dec a
    nop
    ld b, c
    nop
    ld b, l
    nop
    ld c, c
    nop
    ld c, l
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
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    halt
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
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc l
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
    cp b
    nop
    cp d
    nop
    cp h
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
    jp z, $cc00

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
    reti


    nop
    db $db
    nop
    db $dd
    nop
    rst $18
    nop
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
    db $ed
    nop
    ldh a, [rP1]
    pop af
    nop
    di
    nop
    db $f4
    nop
    or $00
    ld hl, sp+$00
    ld sp, hl
    nop
    ld a, [$fc00]
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
    ld bc, $010e
    db $10
    ld bc, $0112
    inc d
    ld bc, $0116
    rla
    ld bc, $0119
    ld a, [de]
    ld bc, $011c
    ld e, $01
    rra
    ld bc, $0121
    inc hl
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $0129
    ld a, [hl+]
    ld bc, $012d
    ld l, $01
    jr nc, @+$03

    ld sp, $3301
    ld bc, $0135
    ld [hl], $01
    jr c, jr_039_4372

    ld a, [hl-]

jr_039_4372:
    ld bc, $013b
    dec a
    ld bc, $013e
    ld b, b
    ld bc, $0142
    ld b, e
    ld bc, $0145
    ld b, a
    ld bc, HeaderRAMSize
    ld c, d
    ld bc, HeaderOldLicenseeCode
    ld c, [hl]
    ld bc, $014f
    ld d, c
    ld bc, $0153
    ld d, h
    ld bc, $0156
    ld d, a
    ld bc, $0159
    ld e, e
    ld bc, $015c
    ld e, [hl]
    ld bc, $0160
    ld h, c
    ld bc, $0163
    ld h, l
    ld bc, $0167
    ld l, b
    ld bc, $016a
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0173
    ld [hl], l
    ld bc, $0177
    ld a, c
    ld bc, $017b
    ld a, h
    ld bc, $017e
    ld a, a
    ld bc, $0181
    add d
    ld bc, $0184
    add [hl]
    ld bc, $0188
    adc c
    ld bc, $018b
    adc l
    ld bc, $018e
    sub b
    ld bc, $0192
    sub e
    ld bc, $0195
    sub a
    ld bc, $0198
    sbc d
    ld bc, $019c
    sbc l
    ld bc, $019f
    and c
    ld bc, $01a2
    and h
    ld bc, $01a6
    and a
    ld bc, $01a9
    xor e
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or c
    ld bc, $01b3
    or l
    ld bc, $01b6
    cp b
    ld bc, $01ba
    cp e
    ld bc, $01bd
    cp a
    ld bc, $01c0
    jp nz, $c401

    ld bc, $01c5
    rst $00
    ld bc, $01c9
    rlc c
    call $ce01
    ld bc, $01d0
    jp nc, $d301

    ld bc, $01d5
    rst $10
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01dd
    rst $18
    ld bc, $0005
    stop
    add hl, hl
    nop
    jr nc, jr_039_4441

jr_039_4441:
    ld [hl], $00
    dec sp
    nop
    ld b, c
    nop
    ld b, l
    nop
    ld c, d
    nop
    ld c, [hl]
    nop
    ld d, c
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
    ld h, a
    nop
    ld l, d
    nop
    ld l, h
    nop
    ld l, a
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
    xor b
    nop
    xor e
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
    or [hl]
    nop
    cp b
    nop
    cp e
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
    rst $00
    nop
    ret


    nop
    rlc b
    call $cf00
    nop
    pop de
    nop
    jp nc, $d500

    nop
    sub $00
    ret c

    nop
    jp c, $db00

    nop
    sbc $00
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
    ld [$ec00], a
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
    ei
    nop
    db $fc
    nop
    cp $00
    nop
    ld bc, $0101
    inc bc
    ld bc, $0105
    rlca
    ld bc, $0109
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
    jr nz, jr_039_451c

    ld [hl+], a

jr_039_451c:
    ld bc, $0124
    dec h
    ld bc, $0127
    add hl, hl
    ld bc, $012b
    dec l
    ld bc, $012e
    jr nc, jr_039_452e

    ld [hl-], a

jr_039_452e:
    ld bc, $0133
    dec [hl]
    ld bc, $0137
    add hl, sp
    ld bc, $013b
    dec a
    ld bc, $013e
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, $0145
    ld b, a
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0150
    ld d, d
    ld bc, $0154
    ld d, l
    ld bc, $0157
    ld e, c
    ld bc, $015b
    ld e, l
    ld bc, $015f
    ld h, c
    ld bc, $0162
    ld h, h
    ld bc, $0166
    ld l, b
    ld bc, $0169
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0174
    db $76
    ld bc, $0178
    ld a, d
    ld bc, $017b
    ld a, l
    ld bc, $017f
    add c
    ld bc, $0183
    add l
    ld bc, $0186
    adc b
    ld bc, $018a
    adc h
    ld bc, $018e
    adc a
    ld bc, $0191
    sub e
    ld bc, $0195
    sub a
    ld bc, $0198
    sbc d
    ld bc, $019c
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a3
    and l
    ld bc, $01a7
    xor c
    ld bc, $01ab
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
    ld bc, $01c0
    jp nz, $c401

    ld bc, $01c6
    ret z

    ld bc, $01ca
    call z, $ce01
    ld bc, $01cf
    pop de
    ld bc, $01d3
    push de
    ld bc, $01d7
    ret c

    ld bc, $01da
    call c, $de01
    ld bc, $0004
    jr jr_039_45f1

jr_039_45f1:
    ld hl, $2800
    nop
    cpl
    nop
    dec [hl]
    nop
    ld a, [hl-]
    nop
    ld b, c
    nop
    ld b, l
    nop
    ld c, c
    nop
    ld c, l
    nop
    ld d, d
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
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    halt
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
    adc b
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
    sub a
    nop
    sbc c
    nop
    sbc h
    nop
    sbc [hl]
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
    cp h
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
    jp z, $cc00

    nop
    adc $00
    ret nc

    nop
    db $d3
    nop
    call nc, $d600
    nop
    reti


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
    ld [$ec00], a
    nop
    xor $00
    ldh a, [rP1]

    db $f2, $00, $f4, $00

    or $00

    db $f8, $00, $fa, $00

    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, $0103
    dec b
    db $01

    db $07, $01, $08, $01

    ld a, [bc]
    ld bc, $010c
    rrca
    ld bc, $0110
    ld [de], a
    ld bc, $0114
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $011b
    dec e
    ld bc, $011f
    jr nz, jr_039_46be

    ld [hl+], a

jr_039_46be:
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $012a
    dec hl
    ld bc, $012e
    cpl
    ld bc, $0131
    inc sp
    ld bc, HeaderTitle
    ld [hl], $01
    jr c, jr_039_46d8

    ld a, [hl-]

jr_039_46d8:
    ld bc, $013c
    dec a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, e
    ld bc, HeaderGlobalChecksum
    ld c, a
    ld bc, $0151
    ld d, d
    ld bc, $0154
    ld d, a
    ld bc, $0158
    ld e, d
    ld bc, $015b
    ld e, [hl]
    ld bc, $015f
    ld h, c
    ld bc, $0163
    ld h, l
    ld bc, $0166
    ld l, b
    ld bc, $0169
    ld l, h
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0174
    db $76
    ld bc, $0178
    ld a, c
    ld bc, $017b
    ld a, l
    ld bc, $017e
    add c
    ld bc, $0182
    add h
    ld bc, $0185
    adc b
    ld bc, $0189
    adc e
    ld bc, $018d
    adc [hl]
    ld bc, $0190
    sub d
    ld bc, $0194
    sub l
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc h
    ld bc, $019e
    and b
    ld bc, $01a2
    and e
    ld bc, $01a6
    and a
    ld bc, $01a8
    xor e
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or c
    ld bc, $01b3
    or l
    ld bc, $01b7
    cp b
    ld bc, $01ba
    cp h
    ld bc, $01bd
    cp a
    ld bc, $01c1
    jp $c401


    ld bc, $01c6
    ret z

    ld bc, $01ca
    call z, $cd01
    ld bc, $01cf
    pop de
    ld bc, $01d2
    call nc, $d501
    ld bc, $01d8
    reti


    ld bc, $01db
    db $dd
    ld bc, $01df
    inc b
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
    ld b, b
    nop
    ld b, h
    nop
    ld c, c
    nop
    ld c, [hl]
    nop
    ld d, c
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
    ld a, h
    nop
    ld a, [hl]
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
    sub c
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
    sbc a
    nop
    and d
    nop
    and h
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
    or h
    nop
    or [hl]
    nop
    cp c
    nop
    cp e
    nop
    cp l
    nop
    cp a
    nop
    jp nz, $c400

    nop
    add $00
    ret


    nop
    rlc b
    call z, $cf00
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
    call c, $dd00
    nop
    rst $18
    nop
    pop hl
    nop
    db $e4
    nop
    and $00
    add sp, $00
    ld [$ec00], a
    nop
    xor $00
    rst $28
    nop
    ld a, [c]
    nop
    db $f4
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fc00]
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
    ld bc, $0116
    jr jr_039_4854

    ld a, [de]

jr_039_4854:
    ld bc, $011c
    ld e, $01
    jr nz, jr_039_485c

    ld [hl+], a

jr_039_485c:
    ld bc, $0124
    ld h, $01
    jr z, jr_039_4864

    ld a, [hl+]

jr_039_4864:
    ld bc, $012c
    ld l, $01
    jr nc, jr_039_486c

    ld [hl-], a

jr_039_486c:
    ld bc, HeaderTitle
    dec [hl]
    ld bc, $0137
    add hl, sp
    ld bc, $013b
    dec a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderOldLicenseeCode
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
    ld h, b
    ld bc, $0162
    ld h, h
    ld bc, $0166
    ld l, b
    ld bc, $016a
    ld l, h
    ld bc, $016e
    ld l, a
    ld bc, $0171
    ld [hl], e
    ld bc, $0176
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017d
    ld a, a
    ld bc, $0181
    add e
    ld bc, $0185
    add a
    ld bc, $0189
    adc d
    ld bc, $018c
    adc [hl]
    ld bc, $0190
    sub d
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc d
    ld bc, $019c
    sbc [hl]
    ld bc, $01a0
    and d
    ld bc, $01a4
    and l
    ld bc, $01a7
    xor d
    ld bc, $01ac
    xor l
    ld bc, $01af
    or c
    ld bc, $01b3
    or l
    ld bc, $01b7
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01bf
    ret nz

    ld bc, $01c2
    call nz, $c601
    ld bc, $01c8
    jp z, $cc01

    ld bc, $01ce
    ret nc

    ld bc, $01d2
    call nc, $d601
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01dd
    inc b
    nop
    jr nz, jr_039_4923

jr_039_4923:
    ld a, [hl+]
    nop
    ld sp, $3800
    nop
    dec a
    nop
    ld b, h
    nop
    ld c, c
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, [hl]
    nop
    ld e, d
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
    ld l, [hl]
    nop
    ld [hl], d
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, e
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
    sbc b
    nop
    sbc e
    nop
    sbc l
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
    cp b
    nop
    cp e
    nop
    cp l
    nop
    cp a
    nop
    pop bc
    nop
    jp $c600


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
    jp c, $dd00

    nop
    rst $18
    nop
    pop hl
    nop
    db $e4
    nop
    push hl
    nop
    add sp, $00
    ld [$ec00], a
    nop
    xor $00
    ldh a, [rP1]
    ld a, [c]
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ei
    nop
    cp $00
    rst $38
    nop
    ld [bc], a
    ld bc, HeaderLogo
    ld b, $01
    ld [$0a01], sp
    ld bc, $010d
    rrca
    ld bc, $0111
    inc de
    ld bc, $0115
    rla
    ld bc, $011a
    inc e
    ld bc, $011e
    jr nz, jr_039_49da

    ld [hl+], a

jr_039_49da:
    ld bc, $0124
    ld h, $01
    jr z, jr_039_49e2

    dec hl

jr_039_49e2:
    ld bc, $012d
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0135
    scf
    ld bc, $0139
    dec sp
    ld bc, $013e
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, l
    ld bc, $014f
    ld d, c
    ld bc, $0152
    ld d, l
    ld bc, $0157
    ld e, c
    ld bc, $015b
    ld e, l
    ld bc, $0160
    ld h, d
    ld bc, $0164
    ld h, l
    ld bc, $0168
    ld l, d
    ld bc, $016c
    ld l, a
    ld bc, $0170
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017d
    ld a, a
    ld bc, $0181
    add e
    ld bc, $0186
    adc b
    ld bc, $018a
    adc h
    ld bc, $018e
    sub b
    ld bc, $0192
    sub h
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc l
    ld bc, $019f
    and c
    ld bc, $01a4
    and [hl]
    ld bc, $01a8
    xor d
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or e
    ld bc, $01b5
    or [hl]
    ld bc, $01b9
    cp e
    ld bc, $01bd
    cp a
    ld bc, $01c1
    jp $c501


    ld bc, $01c8
    jp z, $cc01

    ld bc, $01ce
    ret nc

    ld bc, $01d2
    call nc, $d701
    ld bc, $01d9
    db $db
    ld bc, $01dd
    rst $18
    ld bc, $0004
    inc hl
    nop
    dec l
    nop
    inc [hl]
    nop
    inc a
    nop
    ld b, d
    nop
    ld c, b
    nop
    ld c, l
    nop
    ld d, c
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, c
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
    ld a, h
    nop
    ld a, a
    nop
    add e
    nop
    add [hl]
    nop
    adc c
    nop
    adc e
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
    xor c
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
    cp e
    nop
    cp l
    nop
    cp a
    nop
    jp $c500


    nop
    rst $00
    nop
    jp z, $cc00

    nop
    rst $08
    nop
    pop de
    nop
    call nc, $d600
    nop
    ret c

    nop
    db $db
    nop
    sbc $00
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
    db $eb
    nop
    xor $00
    ldh a, [rP1]
    ld a, [c]
    nop
    db $f4
    nop
    rst $30
    nop
    ld sp, hl
    nop
    db $fc
    nop
    cp $00
    nop
    ld bc, $0102
    dec b
    ld bc, $0107
    ld a, [bc]
    ld bc, $010c
    ld c, $01
    db $10
    ld bc, $0112
    dec d
    ld bc, $0117
    ld a, [de]
    ld bc, $011c
    ld e, $01
    jr nz, jr_039_4b3c

    inc hl

jr_039_4b3c:
    ld bc, $0125
    daa
    ld bc, $0129
    inc l
    ld bc, $012e
    jr nc, jr_039_4b4a

    inc sp

jr_039_4b4a:
    ld bc, $0135
    scf
    ld bc, $013a
    inc a
    ld bc, $013e
    ld b, b
    ld bc, $0142
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld bc, $0150
    ld d, d
    ld bc, $0155
    ld d, a
    ld bc, $0159
    ld e, h
    ld bc, $015e
    ld h, b
    ld bc, $0162
    ld h, l
    ld bc, $0167
    ld l, c
    ld bc, $016c
    ld l, [hl]
    ld bc, $0170
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0179
    ld a, h
    ld bc, $017e
    add b
    ld bc, $0183
    add l
    ld bc, $0187
    adc d
    ld bc, $018c
    adc [hl]
    ld bc, $0190
    sub e
    ld bc, $0195
    sub a
    ld bc, $019a
    sbc h
    ld bc, $019e
    and c
    ld bc, $01a3
    and l
    ld bc, $01a7
    xor d
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or e
    ld bc, $01b5
    cp b
    ld bc, $01ba
    cp h
    ld bc, $01be
    pop bc
    ld bc, $01c3
    push bc
    ld bc, $01c8
    jp z, $cc01

    ld bc, $01cf
    pop de
    ld bc, $01d3
    push de
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01df
    inc b
    nop
    ld h, $00
    cpl
    nop
    scf
    nop
    ccf
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
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, d
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
    sbc h
    nop
    sbc [hl]
    nop
    and c
    nop
    and h
    nop
    and a
    nop
    xor c
    nop
    xor h
    nop
    xor a
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
    pop bc
    nop
    call nz, $c700
    nop
    ret


    nop
    call z, $ce00
    nop
    pop de
    nop
    call nc, $d600
    nop
    reti


    nop
    db $db
    nop
    sbc $00
    ldh [rP1], a
    ld [c], a
    nop
    push hl
    nop
    rst $20
    nop
    ld [$ec00], a
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
    ld bc, $0301
    ld bc, $0105
    ld [$0a01], sp
    ld bc, $010c
    rrca
    ld bc, $0111
    inc de
    ld bc, $0116
    add hl, de
    ld bc, $011b
    ld e, $01
    jr nz, jr_039_4c86

    ld [hl+], a

jr_039_4c86:
    ld bc, $0125
    daa
    ld bc, $012a
    inc l
    ld bc, $012f
    ld sp, $3301
    ld bc, $0136
    jr c, jr_039_4c9a

    ld a, [hl-]

jr_039_4c9a:
    ld bc, $013d
    ccf
    ld bc, $0142
    ld b, h
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld bc, $0150
    ld d, e
    ld bc, $0155
    ld e, b
    ld bc, $015b
    ld e, l
    ld bc, $015f
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0169
    ld l, e
    ld bc, $016e
    ld [hl], b
    ld bc, $0173
    ld [hl], l
    ld bc, $0177
    ld a, d
    ld bc, $017c
    ld a, a
    ld bc, $0181
    add h
    ld bc, $0186
    adc c
    ld bc, $018b
    adc l
    ld bc, $0190
    sub d
    ld bc, $0195
    sub a
    ld bc, $019a
    sbc h
    ld bc, $019f
    and c
    ld bc, $01a3
    and [hl]
    ld bc, $01a9
    xor e
    ld bc, $01ad
    or b
    ld bc, $01b2
    or h
    ld bc, $01b7
    cp c
    ld bc, $01bc
    cp [hl]
    ld bc, $01c1
    jp $c601


    ld bc, $01c8
    rlc c
    call $d001
    ld bc, $01d2
    push de
    ld bc, $01d7
    reti


    ld bc, $01dc
    rst $18
    ld bc, $0004
    add hl, hl
    nop
    inc sp
    nop
    dec sp
    nop
    ld b, e
    nop
    ld c, d
    nop
    ld c, a
    nop
    ld d, h
    nop
    ld e, c
    nop
    ld e, l
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, c
    nop
    ld l, [hl]
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld a, c
    nop
    ld a, h
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
    sub b
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
    xor b
    nop
    xor d
    nop
    xor l
    nop
    or b
    nop
    or h
    nop
    or [hl]
    nop
    cp c
    nop
    cp h
    nop
    cp a
    nop
    pop bc
    nop
    push bc
    nop
    rst $00
    nop
    jp z, $cd00

    nop
    ret nc

    nop
    jp nc, $d500

    nop
    ret c

    nop
    db $db
    nop
    db $dd
    nop
    ldh [rP1], a
    db $e3
    nop
    push hl
    nop
    add sp, $00
    db $eb
    nop
    db $ed
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
    ld bc, $0103
    dec b
    ld bc, $0108
    ld a, [bc]
    ld bc, $010d
    db $10
    ld bc, $0112
    inc d
    ld bc, $0117
    ld a, [de]
    ld bc, $011c
    rra
    ld bc, $0122
    inc h
    ld bc, $0127
    add hl, hl
    ld bc, $012c
    cpl
    ld bc, $0131
    inc [hl]
    ld bc, $0136
    add hl, sp
    ld bc, $013b
    ld a, $01
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderGlobalChecksum
    ld d, b
    ld bc, $0153
    ld d, [hl]
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
    ld [hl], l
    ld bc, $0178
    ld a, d
    ld bc, $017d
    ld a, a
    ld bc, $0182
    add l
    ld bc, $0188
    adc d
    ld bc, $018d
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
    xor c
    ld bc, $01ac
    xor a
    ld bc, $01b1
    or h
    ld bc, $01b7
    cp c
    ld bc, $01bc
    cp a
    ld bc, $01c2
    call nz, $c701
    ld bc, $01c9
    call z, $cf01
    ld bc, $01d1
    call nc, $d601
    ld bc, $01d9
    db $db
    ld bc, $01de
    inc b
    nop
    dec l
    nop
    ld [hl], $00
    ld a, $00
    ld b, [hl]
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld h, d
    nop
    ld h, [hl]
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add d
    nop
    add [hl]
    nop
    adc c
    nop
    adc l
    nop
    sub b
    nop
    sub e
    nop
    sub [hl]
    nop
    sbc d
    nop
    sbc l
    nop
    and b
    nop
    and e
    nop
    and a
    nop
    xor d
    nop
    xor l
    nop
    or b
    nop
    or h
    nop
    or [hl]
    nop
    cp d
    nop
    cp l
    nop
    ret nz

    nop
    jp nz, $c600

    nop
    ret z

    nop
    rlc b
    rst $08
    nop
    pop de
    nop
    push de
    nop
    rst $10
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
    ld a, [$fc00]
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, HeaderLogo
    ld [$0b01], sp
    ld bc, $010e
    db $10
    ld bc, $0113
    ld d, $01
    add hl, de
    ld bc, $011b
    ld e, $01
    ld hl, $2401
    ld bc, $0126
    add hl, hl
    ld bc, $012c
    cpl
    ld bc, $0132
    dec [hl]
    ld bc, $0138
    ld a, [hl-]
    ld bc, $013d
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderRAMSize
    ld c, e
    ld bc, HeaderGlobalChecksum
    ld d, c
    ld bc, $0153
    ld d, a
    ld bc, $0159
    ld e, h
    ld bc, $015f
    ld h, d
    ld bc, $0164
    ld h, a
    ld bc, $016a
    ld l, l
    ld bc, $0170
    ld [hl], e
    ld bc, $0175
    ld a, b
    ld bc, $017b
    ld a, [hl]
    ld bc, $0181
    add e
    ld bc, $0186
    adc c
    ld bc, $018c
    adc a
    ld bc, $0192
    sub h
    ld bc, $0197
    sbc d
    ld bc, $019d
    and b
    ld bc, $01a3
    and l
    ld bc, $01a8
    xor e
    ld bc, $01ae
    or c
    ld bc, $01b4
    or [hl]
    ld bc, $01b9
    cp h
    ld bc, $01bf
    jp nz, $c501

    ld bc, $01c7
    jp z, $cd01

    ld bc, $01d0
    db $d3
    ld bc, $01d6
    reti


    ld bc, $01db
    sbc $01
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
    ld h, e
    nop
    ld l, b
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], l
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
    sub a
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and d
    nop
    and l
    nop
    xor c
    nop
    xor h
    nop
    or b
    nop
    or e
    nop
    or a
    nop
    cp d
    nop
    cp [hl]
    nop
    ret nz

    nop
    call nz, $c700
    nop
    rlc b
    adc $00
    pop de
    nop
    call nc, $d700
    nop
    db $db
    nop
    sbc $00
    pop hl
    nop
    push hl
    nop
    add sp, $00
    db $eb
    nop
    xor $00
    pop af
    nop
    db $f4
    nop
    rst $30
    nop
    ei
    nop
    cp $00
    ld bc, $0401
    ld bc, $0107
    ld a, [bc]
    ld bc, $010d
    ld de, $1401
    ld bc, $0117
    ld a, [de]
    ld bc, $011d
    jr nz, jr_039_4fe2

    inc hl

jr_039_4fe2:
    ld bc, $0126
    ld a, [hl+]
    ld bc, $012d
    jr nc, jr_039_4fec

    inc sp

jr_039_4fec:
    ld bc, $0136
    ld a, [hl-]
    ld bc, $013d
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderRAMSize
    ld c, h
    ld bc, $014f
    ld d, e
    ld bc, $0156
    ld e, c
    ld bc, $015c
    ld h, b
    ld bc, $0162
    ld h, [hl]
    ld bc, $0169
    ld l, h
    ld bc, $016f
    ld [hl], d
    ld bc, $0175
    ld a, b
    ld bc, $017c
    ld a, a
    ld bc, $0182
    add l
    ld bc, $0188
    adc h
    ld bc, $018f
    sub d
    ld bc, $0195
    sbc b
    ld bc, $019b
    sbc a
    ld bc, $01a2
    and l
    ld bc, $01a8
    xor e
    ld bc, $01ae
    or c
    ld bc, $01b5
    cp b
    ld bc, $01bb
    cp [hl]
    ld bc, $01c1
    push bc
    ld bc, $01c8
    rlc c
    adc $01
    jp nc, $d501

    ld bc, $01d8
    db $db
    ld bc, $01df
    inc b
    nop
    ld sp, $3900
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
    ld a, [hl]
    nop
    add e
    nop
    adc b
    nop
    adc h
    nop
    sub b
    nop
    sub h
    nop
    sbc c
    nop
    sbc l
    nop
    and c
    nop
    and l
    nop
    xor c
    nop
    xor h
    nop
    or c
    nop
    or l
    nop
    cp b
    nop
    cp l
    nop
    ret nz

    nop
    call nz, $c800
    nop
    rlc b
    rst $08
    nop
    db $d3
    nop
    sub $00
    db $db
    nop
    sbc $00
    ld [c], a
    nop
    push hl
    nop
    jp hl


    nop
    db $ed
    nop
    ldh a, [rP1]
    db $f4
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, $0106
    ld a, [bc]
    ld bc, $010e
    ld de, $1501
    ld bc, $0119
    inc e
    ld bc, $011f
    inc hl
    ld bc, $0127
    ld a, [hl+]
    ld bc, $012e
    ld sp, $3501
    ld bc, $0139
    dec a
    ld bc, $0140
    ld b, e
    ld bc, HeaderCartridgeType
    ld c, d
    ld bc, HeaderGlobalChecksum
    ld d, d
    ld bc, $0155
    ld e, c
    ld bc, $015c
    ld h, b
    ld bc, $0164
    ld h, a
    ld bc, $016b
    ld l, [hl]
    ld bc, $0171
    db $76
    ld bc, $0179
    ld a, l
    ld bc, $0180
    add h
    ld bc, $0187
    adc e
    ld bc, $018f
    sub d
    ld bc, $0196
    sbc d
    ld bc, $019d
    and c
    ld bc, $01a5
    xor b
    ld bc, $01ac
    xor a
    ld bc, $01b3
    or a
    ld bc, $01ba
    cp [hl]
    ld bc, $01c2
    add $01
    ret


    ld bc, $01cd
    pop de
    ld bc, $01d4
    ret c

    ld bc, $01dc
    rst $18
    ld bc, $0004
    dec [hl]
    nop
    ld b, c
    nop
    ld c, e
    nop
    ld d, l
    nop
    ld e, h
    nop
    ld h, a
    nop
    ld l, [hl]
    nop

    db $74, $00

    ld a, d
    nop
    add b
    nop
    add [hl]
    nop
    adc e
    nop

    db $91, $00

    sub [hl]
    nop
    sbc e
    nop
    and b
    nop
    and l
    nop
    xor d
    nop
    xor a
    nop
    or h
    nop
    cp b
    nop
    cp [hl]
    nop
    jp nz, $c700

    nop
    call z, $d100
    nop

    db $d5, $00, $da, $00

    sbc $00
    ld [c], a
    nop
    rst $20
    nop
    db $ec
    nop
    ldh a, [rP1]
    db $f4
    nop
    ld hl, sp+$00
    db $fd
    nop
    ld bc, $0601
    ld bc, $010a
    ld c, $01
    ld [de], a
    ld bc, $0117
    dec de
    ld bc, $0120
    inc h
    ld bc, $0128
    dec l
    ld bc, $0131
    dec [hl]
    ld bc, $013a
    ld a, $01
    ld b, d
    ld bc, HeaderSGBFlag
    ld c, e
    ld bc, $014f
    ld d, h
    ld bc, $0158
    ld e, h
    ld bc, $0161
    ld h, l
    ld bc, $0169
    ld l, l
    ld bc, $0172
    db $76
    ld bc, $017a
    ld a, a
    ld bc, $0183
    add a
    ld bc, $018c
    sub b
    ld bc, $0195
    sbc c
    ld bc, $019d
    and c
    ld bc, $01a6
    xor d
    ld bc, $01ae
    or e
    ld bc, $01b7
    cp e
    ld bc, $01c0
    call nz, $c901
    ld bc, $01cd
    jp nc, $d601

    ld bc, $01da
    rst $18
    ld bc, $51ff
    dec a
    ld d, d
    ld a, e
    ld d, d
    cp c
    ld d, d
    rst $30
    ld d, d
    dec [hl]
    ld d, e
    ld [hl], e
    ld d, e
    or c
    ld d, e
    rst $28
    ld d, e
    dec l
    ld d, h
    ld l, e
    ld d, h
    xor c
    ld d, h
    rst $20
    ld d, h
    ld bc, $0e00
    nop
    dec e
    nop
    ld h, $00
    ld l, $00
    dec [hl]
    nop
    dec sp
    nop
    ld b, c
    nop
    ld b, [hl]
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld e, d
    nop
    ld e, l
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
    ld a, h
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    add b
    nop
    ld bc, $1000
    nop
    jr nz, jr_039_5243

jr_039_5243:
    add hl, hl
    nop
    ld sp, $3900
    nop
    ld b, b
    nop
    ld b, [hl]
    nop
    ld c, d
    nop
    ld d, c
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, c
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld [hl], l
    nop
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
    ld a, a
    nop
    add b
    nop
    add c
    nop
    ld bc, $1100
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
    ld d, b
    nop
    ld d, [hl]
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, d
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
    add e
    nop
    add e
    nop
    add l
    nop
    add [hl]
    nop
    ld bc, $1200
    nop
    dec e
    nop
    ld h, $00
    dec l
    nop
    dec [hl]
    nop
    ld a, [hl-]
    nop
    ld b, d
    nop
    ld c, b
    nop
    ld c, h
    nop
    ld d, c
    nop
    ld d, l
    nop
    ld e, d
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
    ld a, [hl]
    nop
    add c
    nop
    add e
    nop
    add l
    nop
    add a
    nop
    adc c
    nop
    adc h
    nop
    ld bc, $1400
    nop
    rra
    nop
    add hl, hl
    nop
    ld sp, $3900
    nop
    ld a, $00
    ld b, a
    nop
    ld c, h
    nop
    ld d, c
    nop
    ld d, l
    nop
    ld e, d
    nop
    ld e, a
    nop
    ld h, d
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld a, c
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
    ld bc, $1500
    nop
    ld [hl+], a
    nop
    inc l
    nop
    ld [hl], $00
    dec a
    nop
    ld b, [hl]
    nop
    ld c, h
    nop
    ld d, d
    nop
    ld d, a
    nop
    ld e, l
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
    halt
    ld a, c
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add c
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
    adc a
    nop
    sub c
    nop
    sub e
    nop
    ld bc, $1700
    nop
    inc h
    nop
    cpl
    nop
    add hl, sp
    nop
    ld b, b
    nop
    ld c, d
    nop
    ld d, b
    nop
    ld d, [hl]
    nop
    ld e, h
    nop
    ld h, c
    nop
    ld h, l
    nop
    ld l, d
    nop
    ld l, [hl]
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
    add a
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
    sub a
    nop
    sbc c
    nop
    ld bc, $1800
    nop
    daa
    nop
    ld [hl-], a
    nop
    inc a
    nop
    ld b, l
    nop
    ld c, l
    nop
    ld d, h
    nop
    ld e, d
    nop
    ld h, b
    nop
    ld h, l
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, d
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
    adc [hl]
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
    sbc [hl]
    nop
    ld bc, $1a00
    nop
    add hl, hl
    nop
    dec [hl]
    nop
    ccf
    nop
    ld c, d
    nop
    ld d, d
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, h
    nop
    ld l, d
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld a, b
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
    sbc [hl]
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    ld bc, $1c00
    nop
    inc l
    nop
    jr c, jr_039_5435

jr_039_5435:
    ld b, e
    nop
    ld c, a
    nop
    ld d, [hl]
    nop
    ld e, [hl]
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
    ld a, a
    nop
    add e
    nop
    add a
    nop
    adc d
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
    xor b
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
    ld b, l
    nop
    ld c, l
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld h, h
    nop
    ld l, e
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, e
    nop
    ld a, a
    nop
    add h
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
    ld bc, $1f00
    nop
    cpl
    nop
    ccf
    nop
    ld c, d
    nop
    ld d, h
    nop
    ld e, l
    nop
    ld h, l
    nop
    ld l, e
    nop
    ld [hl], d
    nop
    ld a, b
    nop
    ld a, a
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
    and d
    nop
    and a
    nop
    xor c
    nop
    xor l
    nop
    or b
    nop
    or e
    nop
    or a
    nop
    cp c
    nop
    cp h
    nop
    cp a
    nop
    pop bc
    nop
    call nz, Boot
    nop
    inc hl
    nop
    jr c, jr_039_54ed

jr_039_54ed:
    ld c, b
    nop
    ld d, h
    nop
    ld h, b
    nop
    ld l, c
    nop
    ld [hl], d
    nop
    ld a, e
    nop
    add d
    nop
    adc d
    nop
    sub b
    nop
    sub [hl]
    nop
    sbc l
    nop
    and d
    nop
    xor b
    nop
    xor h
    nop
    or c
    nop
    or [hl]
    nop
    cp d
    nop
    cp [hl]
    nop
    jp $c600


    nop
    rlc b
    adc $00
    jp nc, $d500

    nop
    reti


    nop
    call c, $df00
    nop
    ld [c], a
    nop
    ld a, c
    cp $0d
    jr nc, jr_039_5568

    ld a, [$d32a]
    cp $02
    jr z, jr_039_5556

    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $556c
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, d
    ld l, e
    res 0, l
    add hl, bc
    bit 0, e
    jr nz, jr_039_5549

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_039_5549:
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


jr_039_5556:
    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $6708
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    res 0, e
    add hl, de
    ld l, [hl]
    ld h, $00
    ret


jr_039_5568:
    ld hl, $0040
    ret


    add [hl]
    ld d, l
    add b
    ld d, a
    ld d, [hl]
    ld e, c
    ld a, [bc]
    ld e, e
    or b
    ld e, h
    ld a, [hl-]
    ld e, [hl]
    xor b
    ld e, a
    db $fc
    ld h, b
    inc a
    ld h, d
    ld l, b
    ld h, e
    ld a, h
    ld h, h
    ld a, b
    ld h, l
    ld d, h
    ld h, [hl]
    dec b
    nop
    ld c, $00
    inc hl
    nop
    ld a, [hl+]
    nop
    ld sp, $3600
    nop
    dec sp
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld c, c
    nop
    ld c, h
    nop
    ld d, b
    nop
    ld d, e
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
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, e
    nop
    ld l, [hl]
    nop
    ld [hl], b
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, d
    nop
    ld a, e
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
    adc c
    nop
    adc d
    nop
    adc h
    nop
    adc a
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
    xor l
    nop
    xor [hl]
    nop
    or c
    nop
    or e
    nop
    or e
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
    cp [hl]
    nop
    cp a
    nop
    pop bc
    nop
    jp $c400


    nop
    add $00
    ret z

    nop
    ret


    nop
    rlc b
    call z, $ce00
    nop
    ret nc

    nop
    pop de
    nop
    db $d3
    nop
    call nc, $d600
    nop
    ret c

    nop
    reti


    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    pop hl
    nop
    db $e3
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
    cp $00
    nop
    ld bc, $0101
    inc bc
    ld bc, HeaderLogo
    ld b, $01
    rlca
    ld bc, $0109
    ld a, [bc]
    ld bc, $010c
    dec c
    ld bc, $010f
    ld de, $1201
    ld bc, $0113
    dec d
    ld bc, $0117
    jr jr_039_567b

    add hl, de

jr_039_567b:
    ld bc, $011b
    inc e
    ld bc, $011d
    rra
    ld bc, $0121
    ld [hl+], a
    ld bc, $0124
    dec h
    ld bc, $0127
    jr z, jr_039_5691

    ld a, [hl+]

jr_039_5691:
    ld bc, $012b
    inc l
    ld bc, $012e
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0133
    dec [hl]
    ld bc, $0136
    jr c, jr_039_56a7

    ld a, [hl-]

jr_039_56a7:
    ld bc, $013b
    dec a
    ld bc, $013e
    ld b, b
    ld bc, $0141
    ld b, e
    ld bc, HeaderNewLicenseeCode
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderDestinationCode
    ld c, e
    ld bc, HeaderComplementCheck
    ld c, [hl]
    ld bc, $0150
    ld d, d
    ld bc, $0153
    ld d, l
    ld bc, $0156
    ld d, a
    ld bc, $0159
    ld e, d
    ld bc, $015b
    ld e, l
    ld bc, $015f
    ld h, b
    ld bc, $0162
    ld h, e
    ld bc, $0164
    ld h, l
    ld bc, $0167
    ld l, c
    ld bc, $016a
    ld l, h
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0173
    ld [hl], l
    ld bc, $0176
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017c
    ld a, l
    ld bc, $017f
    add c
    ld bc, $0182
    add h
    ld bc, $0185
    add a
    ld bc, $0187
    adc c
    ld bc, $018b
    adc h
    ld bc, $018d
    adc a
    ld bc, $0191
    sub d
    ld bc, $0194
    sub l
    ld bc, $0197
    sbc b
    ld bc, $019a
    sbc e
    ld bc, $019d
    sbc [hl]
    ld bc, $019f
    and c
    ld bc, $01a2
    and e
    ld bc, $01a5
    and [hl]
    ld bc, $01a8
    xor d
    ld bc, $01ab
    xor l
    ld bc, $01ae
    or b
    ld bc, $01b1
    or e
    ld bc, $01b4
    or [hl]
    ld bc, $01b7
    cp b
    ld bc, $01ba
    cp e
    ld bc, $01bd
    cp [hl]
    ld bc, $01c0
    jp nz, $c301

    ld bc, $01c4
    add $01
    ret z

    ld bc, $01c9
    jp z, $cc01

    ld bc, $01cd
    rst $08
    ld bc, $01d0
    jp nc, $d301

    ld bc, $01d4
    sub $01
    ret c

    ld bc, $01d9
    dec b
    nop
    rrca
    nop
    daa
    nop
    ld l, $00
    inc [hl]
    nop
    add hl, sp
    nop
    ld a, $00
    ld b, d
    nop
    ld c, c
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, h
    nop
    ld d, [hl]
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
    ld l, b
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
    add c
    nop
    add e
    nop
    add [hl]
    nop
    adc b
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
    sub e
    nop
    sub l
    nop
    sbc b
    nop
    sbc d
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
    and [hl]
    nop
    xor b
    nop
    xor d
    nop
    xor h
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
    jp z, $cc00

    nop
    adc $00
    rst $08
    nop
    ret nc

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
    ld [$ec00], a
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
    ld bc, HeaderLogo
    ld b, $01
    ld [$0a01], sp
    ld bc, $010c
    dec c
    ld bc, $010f
    db $10
    ld bc, $0112
    inc d
    ld bc, $0115
    rla
    ld bc, $0118
    ld a, [de]
    ld bc, $011c
    ld e, $01
    rra
    ld bc, $0121
    ld [hl+], a
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $0129
    ld a, [hl+]
    ld bc, $012c
    ld l, $01
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0135
    ld [hl], $01
    jr c, jr_039_588f

    add hl, sp

jr_039_588f:
    ld bc, $013b
    dec a
    ld bc, $013e
    ld b, b
    ld bc, $0141
    ld b, e
    ld bc, $0145
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, l
    ld bc, $014f
    ld d, b
    ld bc, $0152
    ld d, h
    ld bc, $0155
    ld d, a
    ld bc, $0159
    ld e, d
    ld bc, $015c
    ld e, l
    ld bc, $015f
    ld h, c
    ld bc, $0163
    ld h, h
    ld bc, $0166
    ld h, a
    ld bc, $0169
    ld l, e
    ld bc, $016c
    ld l, [hl]
    ld bc, $0170
    ld [hl], d
    ld bc, $0173
    ld [hl], l
    ld bc, $0176
    ld a, b
    ld bc, $017a
    ld a, e
    ld bc, $017d
    ld a, a
    ld bc, $0180
    add d
    ld bc, $0184
    add l
    ld bc, $0187
    adc c
    ld bc, $018a
    adc h
    ld bc, $018d
    adc a
    ld bc, $0191
    sub d
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc c
    ld bc, $019b
    sbc h
    ld bc, $019e
    and b
    ld bc, $01a1
    and e
    ld bc, $01a5
    and a
    ld bc, $01a8
    xor d
    ld bc, $01ac
    xor l
    ld bc, $01af
    or b
    ld bc, $01b2
    or h
    ld bc, $01b5
    or a
    ld bc, $01b9
    cp d
    ld bc, $01bc
    cp [hl]
    ld bc, $01c0
    pop bc
    ld bc, $01c3
    call nz, $c601
    ld bc, $01c8
    ret


    ld bc, $01cb
    call $cf01
    ld bc, $01d0
    jp nc, $d401

    ld bc, $01d5
    rst $10
    ld bc, $01d9
    jp c, $dc01

    ld bc, $01de
    dec b
    nop
    stop
    ld a, [hl+]
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
    sbc b
    nop
    sbc d
    nop
    sbc l
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
    xor c
    nop
    xor d
    nop
    xor h
    nop
    xor a
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
    jp $c500


    nop
    rst $00
    nop
    ret


    nop
    rlc b
    call z, $cf00
    nop
    ret nc

    nop
    jp nc, $d400

    nop
    sub $00
    ret c

    nop
    reti


    nop
    call c, $dd00
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
    or $00
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    db $fd
    nop
    rst $38
    nop
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $0108
    ld a, [bc]
    ld bc, $010c
    ld c, $01
    rrca
    ld bc, $0111
    inc de
    ld bc, $0114
    ld d, $01
    jr jr_039_5a2f

    ld a, [de]

jr_039_5a2f:
    ld bc, $011c
    ld e, $01
    rra
    ld bc, $0121
    inc hl
    ld bc, $0125
    ld h, $01
    jr z, jr_039_5a41

    ld a, [hl+]

jr_039_5a41:
    ld bc, $012c
    ld l, $01
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0135
    ld [hl], $01
    jr c, jr_039_5a53

    ld a, [hl-]

jr_039_5a53:
    ld bc, $013c
    ld a, $01
    ld b, b
    ld bc, $0141
    ld b, e
    ld bc, $0145
    ld b, a
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
    ld h, a
    ld bc, $0168
    ld l, e
    ld bc, $016c
    ld l, [hl]
    ld bc, $016f
    ld [hl], c
    ld bc, $0173
    ld [hl], l
    ld bc, $0177
    ld a, b
    ld bc, $017a
    ld a, h
    ld bc, $017e
    add b
    ld bc, $0181
    add h
    ld bc, $0185
    add a
    ld bc, $0189
    adc d
    ld bc, $018c
    adc [hl]
    ld bc, $0190
    sub d
    ld bc, $0193
    sub l
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc l
    ld bc, $019e
    and b
    ld bc, $01a2
    and h
    ld bc, $01a6
    xor b
    ld bc, $01a9
    xor e
    ld bc, $01ad
    xor a
    ld bc, $01b0
    or d
    ld bc, $01b4
    or [hl]
    ld bc, $01b8
    cp d
    ld bc, $01bb
    cp l
    ld bc, $01bf
    pop bc
    ld bc, $01c3
    call nz, $c601
    ld bc, $01c8
    jp z, $cb01

    ld bc, $01cd
    rst $08
    ld bc, $01d1
    db $d3
    ld bc, $01d5
    rst $10
    ld bc, $01d8
    jp c, $dc01

    ld bc, $01de
    inc b
    nop
    stop
    ld hl, $2900
    nop
    jr nc, jr_039_5b14

jr_039_5b14:
    ld [hl], $00
    inc a
    nop
    ld b, b
    nop
    ld b, a
    nop
    ld c, e
    nop
    ld c, a
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
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], e
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
    and e
    nop
    and [hl]
    nop
    xor b
    nop
    xor e
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
    cp [hl]
    nop
    ret nz

    nop
    jp nz, $c400

    nop
    add $00
    ret z

    nop
    rlc b
    call $cf00
    nop
    pop de
    nop
    call nc, $d500
    nop
    rst $10
    nop
    jp c, $db00

    nop
    db $dd
    nop
    sbc $00
    pop hl
    nop
    db $e3
    nop
    push hl
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
    ldh a, [rP1]
    di
    nop
    db $f4
    nop
    rst $30
    nop
    ld hl, sp+$00
    ld a, [$fd00]
    nop
    cp $00
    nop
    ld bc, $0102
    inc b
    ld bc, $0106
    ld [$0a01], sp
    ld bc, $010b
    dec c
    ld bc, $010f
    ld de, $1301
    ld bc, $0115
    ld d, $01
    add hl, de
    ld bc, $011a
    inc e
    ld bc, $011e
    rra
    ld bc, $0121
    inc hl
    ld bc, $0125
    daa
    ld bc, $0128
    dec hl
    ld bc, $012c
    ld l, $01
    jr nc, jr_039_5be9

    ld [hl-], a

jr_039_5be9:
    ld bc, $0133
    ld [hl], $01
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ccf
    ld bc, $0140
    ld b, d
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderDestinationCode
    ld c, l
    ld bc, HeaderGlobalChecksum
    ld d, b
    ld bc, $0152
    ld d, h
    ld bc, $0156
    ld d, a
    ld bc, $0159
    ld e, e
    ld bc, $015c
    ld e, a
    ld bc, $0160
    ld h, d
    ld bc, $0163
    ld h, l
    ld bc, $0167
    ld l, c
    ld bc, $016b
    ld l, h
    ld bc, $016f
    ld [hl], b
    ld bc, $0172
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0178
    ld a, e
    ld bc, $017c
    ld a, [hl]
    ld bc, $017f
    add d
    ld bc, $0183
    add l
    ld bc, $0187
    adc b
    ld bc, $018a
    adc h
    ld bc, $018e
    adc a
    ld bc, $0191
    sub e
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc d
    ld bc, $019b
    sbc l
    ld bc, $019f
    and b
    ld bc, $01a3
    and h
    ld bc, $01a6
    xor b
    ld bc, $01aa
    xor e
    ld bc, $01ad
    xor a
    ld bc, $01b0
    or d
    ld bc, $01b4
    or l
    ld bc, $01b7
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01be
    ret nz

    ld bc, $01c1
    jp $c501


    ld bc, $01c7
    ret z

    ld bc, $01ca
    call z, $ce01
    ld bc, $01d0
    pop de
    ld bc, $01d3
    push de
    ld bc, $01d6
    ret c

    ld bc, $01da
    call c, $dd01
    ld bc, $01df
    inc b
    nop
    dec e
    nop
    ld h, $00
    dec l
    nop
    dec [hl]
    nop
    ld a, [hl-]
    nop
    ld b, c
    nop
    ld b, [hl]
    nop
    ld c, d
    nop
    ld c, a
    nop
    ld d, d
    nop
    ld d, a
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], c
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
    sbc h
    nop
    sbc [hl]
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
    or [hl]
    nop
    cp b
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
    rst $00
    nop
    ret


    nop
    call z, $cd00
    nop
    ret nc

    nop
    jp nc, $d500

    nop
    rst $10
    nop
    reti


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
    db $ec
    nop
    db $ed
    nop
    rst $28
    nop
    pop af
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
    cp $00
    nop
    ld bc, $0101
    inc b
    ld bc, $0106
    rlca
    ld bc, $0109
    dec bc
    ld bc, $010d
    rrca
    ld bc, $0112
    inc de
    ld bc, $0115
    rla
    ld bc, $0119
    dec de
    ld bc, $011e
    rra
    ld bc, $0121
    inc hl
    ld bc, $0125
    daa
    ld bc, $0129
    dec hl
    ld bc, $012d
    cpl
    ld bc, $0130
    inc sp
    ld bc, $0135
    scf
    ld bc, $0139
    dec sp
    ld bc, $013d
    ld a, $01
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, e
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0152
    ld d, h
    ld bc, $0156
    ld e, b
    ld bc, $0159
    ld e, h
    ld bc, $015d
    ld e, a
    ld bc, $0161
    ld h, e
    ld bc, $0165
    ld h, [hl]
    ld bc, $0169
    ld l, e
    ld bc, $016c
    ld l, [hl]
    ld bc, $0170
    ld [hl], d
    ld bc, $0174
    db $76
    ld bc, $0178
    ld a, c
    ld bc, $017c
    ld a, [hl]
    ld bc, $0180
    add d
    ld bc, $0184
    add l
    ld bc, $0187
    adc d
    ld bc, $018b
    adc l
    ld bc, $018f
    sub c
    ld bc, $0193
    sub h
    ld bc, $0197
    sbc b
    ld bc, $019a
    sbc l
    ld bc, $019f
    and b
    ld bc, $01a2
    and h
    ld bc, $01a6
    xor b
    ld bc, $01aa
    xor h
    ld bc, $01ae
    or b
    ld bc, $01b2
    or h
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
    ld bc, $01d0
    jp nc, $d401

    ld bc, $01d6
    ret c

    ld bc, $01da
    call c, $de01
    ld bc, $0004
    ld hl, $2a00
    nop
    ld [hl-], a
    nop
    jr c, jr_039_5e44

jr_039_5e44:
    ld a, $00
    ld b, [hl]
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
    ld h, d
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], e
    nop
    halt
    ld a, b
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    add d
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
    sub d
    nop
    sub h
    nop
    sub a
    nop
    sbc c
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
    cp a
    nop
    pop bc
    nop
    jp $c500


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
    push de
    nop
    rst $10
    nop
    jp c, $dc00

    nop
    sbc $00
    ldh [rP1], a
    ld [c], a
    nop
    db $e4
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
    db $f4
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fd00]
    nop
    cp $00
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $0109
    inc c
    ld bc, $010d
    db $10
    ld bc, $0112
    inc d
    ld bc, $0116
    jr jr_039_5eed

    ld a, [de]

jr_039_5eed:
    ld bc, $011c
    ld e, $01
    jr nz, jr_039_5ef5

    inc hl

jr_039_5ef5:
    ld bc, $0125
    daa
    ld bc, $0129
    dec hl
    ld bc, $012e
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0136
    jr c, jr_039_5f0b

    ld a, [hl-]

jr_039_5f0b:
    ld bc, $013c
    ld a, $01
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderOldLicenseeCode
    ld c, h
    ld bc, $014f
    ld d, c
    ld bc, $0153
    ld d, l
    ld bc, $0158
    ld e, c
    ld bc, $015c
    ld e, [hl]
    ld bc, $0160
    ld h, d
    ld bc, $0164
    ld h, [hl]
    ld bc, $0168
    ld l, d
    ld bc, $016c
    ld l, [hl]
    ld bc, $0170
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $0179
    ld a, e
    ld bc, $017d
    add b
    ld bc, $0182
    add e
    ld bc, $0186
    adc b
    ld bc, $018a
    adc h
    ld bc, $018f
    sub b
    ld bc, $0193
    sub l
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc l
    ld bc, $019f
    and c
    ld bc, $01a4
    and l
    ld bc, $01a8
    xor d
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or d
    ld bc, $01b4
    or [hl]
    ld bc, $01b9
    cp e
    ld bc, $01bd
    cp a
    ld bc, $01c1
    jp $c501


    ld bc, $01c7
    ret


    ld bc, $01cc
    adc $01
    ret nc

    ld bc, $01d2
    call nc, $d601
    ld bc, $01d8
    jp c, $dd01

    ld bc, $01df
    inc b
    nop
    inc hl
    nop
    dec l
    nop
    dec [hl]
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
    ld e, d
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
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld a, b
    nop
    ld a, d
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
    and b
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
    xor a
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
    cp [hl]
    nop
    pop bc
    nop
    jp $c600


    nop
    ret z

    nop
    jp z, $cd00

    nop
    ret nc

    nop
    jp nc, $d500

    nop
    rst $10
    nop
    reti


    nop
    call c, $de00
    nop
    pop hl
    nop
    ld [c], a
    nop
    push hl
    nop
    rst $20
    nop
    ld [$ec00], a
    nop
    rst $28
    nop
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
    ld bc, $0301
    ld bc, $0105
    ld [$0a01], sp
    ld bc, $010c
    rrca
    ld bc, $0111
    inc de
    ld bc, $0115
    jr jr_039_604f

    ld a, [de]

jr_039_604f:
    ld bc, $011c
    ld e, $01
    ld hl, $2301
    ld bc, $0125
    jr z, jr_039_605d

    ld a, [hl+]

jr_039_605d:
    ld bc, $012c
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0136
    jr c, jr_039_606b

    ld a, [hl-]

jr_039_606b:
    ld bc, $013c
    ld a, $01
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, [hl]
    ld bc, $0151
    ld d, e
    ld bc, $0155
    ld d, a
    ld bc, $015a
    ld e, e
    ld bc, $015e
    ld h, b
    ld bc, $0163
    ld h, l
    ld bc, $0167
    ld l, c
    ld bc, $016b
    ld l, [hl]
    ld bc, $0170
    ld [hl], d
    ld bc, $0174
    ld [hl], a
    ld bc, $0179
    ld a, h
    ld bc, $017e
    add b
    ld bc, $0183
    add h
    ld bc, $0186
    adc c
    ld bc, $018b
    adc l
    ld bc, $0190
    sub d
    ld bc, $0194
    sub a
    ld bc, $0199
    sbc e
    ld bc, $019e
    and b
    ld bc, $01a2
    and h
    ld bc, $01a6
    xor c
    ld bc, $01ab
    xor [hl]
    ld bc, $01b0
    or d
    ld bc, $01b4
    or a
    ld bc, $01b9
    cp e
    ld bc, $01be
    ret nz

    ld bc, $01c2
    call nz, $c701
    ld bc, $01c9
    rlc c
    adc $01
    ret nc

    ld bc, $01d2
    call nc, $d701
    ld bc, $01d9
    db $db
    ld bc, $01de
    inc b
    nop
    ld h, $00
    jr nc, jr_039_6102

jr_039_6102:
    jr c, jr_039_6104

jr_039_6104:
    ld a, $00
    ld b, [hl]
    nop
    ld c, h
    nop
    ld d, b
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
    ld l, c
    nop
    ld l, l
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
    add d
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
    or d
    nop
    or h
    nop
    cp b
    nop
    cp e
    nop
    cp l
    nop
    cp a
    nop
    jp nz, $c400

    nop
    rst $00
    nop
    ret


    nop
    call z, $cf00
    nop
    pop de
    nop
    call nc, $d700
    nop
    reti


    nop
    call c, $de00
    nop
    ldh [rP1], a
    db $e3
    nop
    and $00
    add sp, $00
    ld [$ed00], a
    nop
    rst $28
    nop
    ld a, [c]
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    db $fc
    nop
    cp $00
    nop
    ld bc, $0103
    dec b
    ld bc, $0108
    ld a, [bc]
    ld bc, $010c
    rrca
    ld bc, $0111
    inc d
    ld bc, $0116
    add hl, de
    ld bc, $011b
    dec e
    ld bc, $0120
    inc hl
    ld bc, $0125
    jr z, jr_039_61a7

    ld a, [hl+]

jr_039_61a7:
    ld bc, $012c
    cpl
    ld bc, $0131
    inc sp
    ld bc, $0136
    jr c, jr_039_61b5

    dec sp

jr_039_61b5:
    ld bc, $013d
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, c
    ld bc, HeaderOldLicenseeCode
    ld c, [hl]
    ld bc, $0150
    ld d, e
    ld bc, $0155
    ld e, b
    ld bc, $015a
    ld e, h
    ld bc, $015f
    ld h, c
    ld bc, $0164
    ld h, [hl]
    ld bc, $0168
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0172
    ld [hl], l
    ld bc, $0177
    ld a, d
    ld bc, $017c
    ld a, [hl]
    ld bc, $0181
    add e
    ld bc, $0185
    adc b
    ld bc, $018b
    adc l
    ld bc, $018f
    sub d
    ld bc, $0194
    sub [hl]
    ld bc, $0199
    sbc h
    ld bc, $019e
    and b
    ld bc, $01a3
    and l
    ld bc, $01a8
    xor d
    ld bc, $01ac
    xor a
    ld bc, $01b1
    or h
    ld bc, $01b6
    cp b
    ld bc, $01bb
    cp l
    ld bc, $01c0
    jp nz, $c501

    ld bc, $01c7
    jp z, $cc01

    ld bc, $01cf
    pop de
    ld bc, $01d3
    sub $01
    ret c

    ld bc, $01db
    db $dd
    ld bc, $0004
    ld a, [hl+]
    nop
    inc sp
    nop
    inc a
    nop
    ld b, e
    nop
    ld c, d
    nop
    ld c, a
    nop
    ld d, l
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, a
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld [hl], d
    nop
    halt
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
    xor c
    nop
    xor e
    nop
    xor [hl]
    nop
    or c
    nop
    or h
    nop
    or a
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
    rlc b
    call $d000
    nop
    db $d3
    nop
    push de
    nop
    ret c

    nop
    db $db
    nop
    sbc $00
    pop hl
    nop
    db $e3
    nop
    push hl
    nop
    add sp, $00
    db $eb
    nop
    db $ed
    nop
    ldh a, [rP1]
    di
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fd00]
    nop
    nop
    ld bc, $0102
    dec b
    ld bc, $0107
    ld a, [bc]
    ld bc, $010d
    db $10
    ld bc, $0112
    inc d
    ld bc, $0118
    ld a, [de]
    ld bc, $011c
    rra
    ld bc, $0122
    inc h
    ld bc, $0127
    add hl, hl
    ld bc, $012c
    ld l, $01
    ld sp, $3401
    ld bc, $0136
    add hl, sp
    ld bc, $013b
    ld a, $01
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0153
    ld d, l
    ld bc, $0158
    ld e, d
    ld bc, $015d
    ld e, a
    ld bc, $0162
    ld h, l
    ld bc, $0167
    ld l, d
    ld bc, $016c
    ld l, a
    ld bc, $0172
    ld [hl], h
    ld bc, $0177
    ld a, c
    ld bc, $017c
    ld a, a
    ld bc, $0181
    add h
    ld bc, $0187
    adc c
    ld bc, $018c
    adc [hl]
    ld bc, $0191
    sub e
    ld bc, $0196
    sbc c
    ld bc, $019b
    sbc [hl]
    ld bc, $01a0
    and e
    ld bc, $01a6
    xor b
    ld bc, $01ab
    xor [hl]
    ld bc, $01b0
    or e
    ld bc, $01b5
    cp b
    ld bc, $01bb
    cp l
    ld bc, $01c0
    jp $c501


    ld bc, $01c8
    jp z, $cd01

    ld bc, $01d0
    jp nc, $d501

    ld bc, $01d8
    jp c, $dd01

    ld bc, $01df
    inc b
    nop
    dec l
    nop
    ld [hl], $00
    inc a
    nop
    ld b, a
    nop
    ld c, [hl]
    nop
    ld d, h
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, a
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    nop
    adc l
    nop
    sub c
    nop
    sub h
    nop
    sub a
    nop
    sbc d
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
    or c
    nop
    or h
    nop
    or a
    nop
    cp d
    nop
    cp l
    nop
    ret nz

    nop
    jp $c600


    nop
    ret


    nop
    rlc b
    rst $08
    nop
    jp nc, $d500

    nop
    rst $10
    nop
    jp c, $de00

    nop
    ldh [rP1], a
    db $e3
    nop
    and $00
    jp hl


    nop
    db $ec
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
    ld a, [bc]
    ld bc, $010d
    db $10
    ld bc, $0113
    ld d, $01
    add hl, de
    ld bc, $011b
    ld e, $01
    ld hl, $2301
    ld bc, $0126
    add hl, hl
    ld bc, $012c
    cpl
    ld bc, $0131
    inc [hl]
    ld bc, $0137
    ld a, [hl-]
    ld bc, $013d
    ccf
    ld bc, $0142
    ld b, l
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0153
    ld d, [hl]
    ld bc, $0158
    ld e, e
    ld bc, $015e
    ld h, c
    ld bc, $0163
    ld h, [hl]
    ld bc, $0169
    ld l, h
    ld bc, $016f
    ld [hl], c
    ld bc, $0174
    ld [hl], a
    ld bc, $017a
    ld a, l
    ld bc, $0180
    add e
    ld bc, $0185
    adc b
    ld bc, $018b
    adc [hl]
    ld bc, $0190
    sub e
    ld bc, $0196
    sbc c
    ld bc, $019b
    sbc [hl]
    ld bc, $01a1
    and h
    ld bc, $01a7
    xor d
    ld bc, $01ad
    xor a
    ld bc, $01b2
    or l
    ld bc, $01b8
    cp e
    ld bc, $01bd
    ret nz

    ld bc, $01c3
    add $01
    ret


    ld bc, $01cc
    adc $01
    pop de
    ld bc, $01d4
    rst $10
    ld bc, $01da
    db $dd
    ld bc, $0004
    ld l, $00
    dec [hl]
    nop
    dec a
    nop
    ld b, l
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, e
    nop
    ld l, b
    nop
    ld l, h
    nop
    ld [hl], c
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
    sbc [hl]
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
    or e
    nop
    or [hl]
    nop
    cp d
    nop
    cp l
    nop
    pop bc
    nop
    call nz, $c700
    nop
    jp z, $ce00

    nop
    pop de
    nop
    call nc, $d700
    nop
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
    di
    nop
    or $00
    ld sp, hl
    nop
    db $fd
    nop
    nop
    ld bc, $0103
    ld b, $01
    add hl, bc
    ld bc, $010d
    rrca
    ld bc, $0113
    ld d, $01
    add hl, de
    ld bc, $011c
    rra
    ld bc, $0122
    dec h
    ld bc, $0129
    dec hl
    ld bc, $012f
    ld [hl-], a
    ld bc, $0135
    jr c, jr_039_650f

    dec sp

jr_039_650f:
    ld bc, $013e
    ld b, d
    ld bc, HeaderNewLicenseeCode
    ld c, b
    ld bc, HeaderOldLicenseeCode
    ld c, [hl]
    ld bc, $0151
    ld d, h
    ld bc, $0157
    ld e, d
    ld bc, $015e
    ld h, b
    ld bc, $0164
    ld h, [hl]
    ld bc, $016a
    ld l, l
    ld bc, $0170
    ld [hl], e
    ld bc, $0176
    ld a, d
    ld bc, $017d
    add b
    ld bc, $0183
    add [hl]
    ld bc, $0189
    adc h
    ld bc, $018f
    sub d
    ld bc, $0196
    sbc c
    ld bc, $019c
    sbc a
    ld bc, $01a2
    and l
    ld bc, $01a8
    xor h
    ld bc, $01af
    or d
    ld bc, $01b5
    cp b
    ld bc, $01bb
    cp a
    ld bc, $01c2
    push bc
    ld bc, $01c8
    rlc c
    adc $01
    pop de
    ld bc, $01d5
    ret c

    ld bc, $01db
    sbc $01
    inc b
    nop
    ld sp, $3900
    nop
    ld b, e
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
    ld a, [hl]
    nop
    add e
    nop
    add a
    nop
    adc h
    nop
    sub b
    nop
    sub h
    nop
    sbc b
    nop
    sbc h
    nop
    and c
    nop
    and l
    nop
    xor b
    nop
    xor h
    nop
    or b
    nop
    or h
    nop
    cp b
    nop
    cp h
    nop
    ret nz

    nop
    jp $c700


    nop
    rlc b
    adc $00
    jp nc, $d600

    nop
    reti


    nop
    db $dd
    nop
    pop hl
    nop
    db $e4
    nop
    add sp, $00
    db $ec
    nop
    rst $28
    nop
    di
    nop
    or $00
    ld a, [$fe00]
    nop
    ld bc, $0501
    ld bc, $0109
    inc c
    ld bc, $010f
    inc de
    ld bc, $0117
    ld a, [de]
    ld bc, $011e
    ld hl, $2501
    ld bc, $0128
    inc l
    ld bc, $0130
    inc sp
    ld bc, $0137
    ld a, [hl-]
    ld bc, $013e
    ld b, c
    ld bc, $0145
    ld c, b
    ld bc, HeaderMaskROMVersion
    ld c, a
    ld bc, $0153
    ld d, [hl]
    ld bc, $015a
    ld e, [hl]
    ld bc, $0161
    ld h, l
    ld bc, $0168
    ld l, h
    ld bc, $016f
    ld [hl], e
    ld bc, $0176
    ld a, d
    ld bc, $017e
    add c
    ld bc, $0185
    adc b
    ld bc, $018c
    adc a
    ld bc, $0193
    sub a
    ld bc, $019a
    sbc [hl]
    ld bc, $01a2
    and l
    ld bc, $01a8
    xor h
    ld bc, $01b0
    or h
    ld bc, $01b7
    cp e
    ld bc, $01be
    jp nz, $c501

    ld bc, $01c9
    call $d001
    ld bc, $01d4
    ret c

    ld bc, $01dc
    rst $18
    ld bc, $0004
    ld [hl], $00
    ld b, c
    nop
    ld c, e
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld h, a
    nop
    ld l, [hl]
    nop
    ld [hl], h
    nop
    ld a, d
    nop
    add b
    nop
    add [hl]
    nop
    adc e
    nop
    sub b
    nop
    sub [hl]
    nop
    sbc e
    nop
    and b
    nop
    and l
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
    jp nz, $c600

    nop
    rlc b
    rst $08
    nop
    call nc, $d900
    nop
    db $dd
    nop
    pop hl
    nop
    and $00
    ld [$ef00], a
    nop
    di
    nop
    rst $30
    nop
    ei
    nop
    nop
    ld bc, HeaderLogo
    ld [$0d01], sp
    ld bc, $0110
    dec d
    ld bc, $011a
    ld e, $01
    ld [hl+], a
    ld bc, $0126
    dec hl
    ld bc, $012f
    inc sp
    ld bc, $0137
    inc a
    ld bc, $0140
    ld b, h
    ld bc, HeaderROMSize
    ld c, h
    ld bc, $0151
    ld d, l
    ld bc, $0159
    ld e, [hl]
    ld bc, $0162
    ld h, [hl]
    ld bc, $016a
    ld l, a
    ld bc, $0173
    ld [hl], a
    ld bc, $017b
    add b
    ld bc, $0184
    adc b
    ld bc, $018d
    sub c
    ld bc, $0196
    sbc c
    ld bc, $019e
    and d
    ld bc, $01a6
    xor e
    ld bc, $01af
    or e
    ld bc, $01b7
    cp h
    ld bc, $01c0
    push bc
    ld bc, $01c9
    call $d201
    ld bc, $01d6
    jp c, $de01

    ld bc, $6722
    ld h, b
    ld h, a
    sbc [hl]
    ld h, a
    call c, Call_000_1a67
    ld l, b
    ld e, b
    ld l, b
    sub [hl]
    ld l, b
    call nc, Call_000_1268
    ld l, c
    ld d, b
    ld l, c
    adc [hl]
    ld l, c
    call z, Call_000_0a69
    ld l, d
    ld bc, $0f00
    nop
    dec e
    nop
    daa
    nop
    cpl
    nop
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
    ld e, l
    nop
    ld h, c
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
    ld [hl], e
    nop
    ld [hl], l
    nop
    ld a, b
    nop
    ld a, c
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    add b
    nop
    add c
    nop
    add e
    nop
    ld bc, $1000
    nop
    jr nz, jr_039_6766

jr_039_6766:
    ld a, [hl+]
    nop
    ld [hl-], a
    nop
    dec sp
    nop
    ld b, c
    nop
    ld b, a
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld d, a
    nop
    ld e, e
    nop
    ld h, c
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, d
    nop
    ld l, [hl]
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, c
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    add b
    nop
    add d
    nop
    add d
    nop
    add e
    nop
    ld bc, $1100
    nop
    ld [hl+], a
    nop
    inc l
    nop
    ld [hl], $00
    dec a
    nop
    ld b, l
    nop
    ld c, e
    nop
    ld d, c
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld h, d
    nop
    ld h, [hl]
    nop
    ld l, c
    nop
    ld l, l
    nop
    ld l, a
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
    add h
    nop
    add l
    nop
    add [hl]
    nop
    add a
    nop
    adc b
    nop
    ld bc, $1000
    nop
    dec e
    nop
    ld h, $00
    ld l, $00
    dec [hl]
    nop
    inc a
    nop
    ld b, c
    nop
    ld c, c
    nop
    ld c, l
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
    ld a, h
    nop
    ld a, [hl]
    nop
    add c
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
    ld bc, $1400
    nop
    jr nz, jr_039_6820

jr_039_6820:
    add hl, hl
    nop
    ld [hl-], a
    nop
    add hl, sp
    nop
    ld b, b
    nop
    ld c, b
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld e, b
    nop
    ld e, e
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
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld [hl], a
    nop
    ld a, d
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
    ld bc, $1600
    nop
    inc hl
    nop
    dec l
    nop
    ld [hl], $00
    ccf
    nop
    ld b, a
    nop
    ld c, [hl]
    nop
    ld d, e
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, a
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], d
    nop
    halt
    ld a, b
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
    adc b
    nop
    adc d
    nop
    adc h
    nop
    adc l
    nop
    adc a
    nop
    sub c
    nop
    sub e
    nop
    sub h
    nop
    ld bc, $1700
    nop
    dec h
    nop
    jr nc, jr_039_689e

jr_039_689e:
    ld a, [hl-]
    nop
    ld b, c
    nop
    ld c, e
    nop
    ld d, d
    nop
    ld e, b
    nop
    ld e, l
    nop
    ld h, d
    nop
    ld h, a
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, [hl]
    nop
    add b
    nop
    add h
    nop
    add [hl]
    nop
    adc c
    nop
    adc e
    nop
    adc l
    nop
    sub b
    nop
    sub d
    nop
    sub h
    nop
    sub l
    nop
    sub a
    nop
    sbc c
    nop
    sbc d
    nop
    ld bc, $1900
    nop
    daa
    nop
    ld [hl-], a
    nop
    dec a
    nop
    ld b, [hl]
    nop
    ld c, [hl]
    nop
    ld d, [hl]
    nop
    ld e, e
    nop
    ld h, c
    nop
    ld h, a
    nop
    ld l, e
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    ld a, h
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
    sbc l
    nop
    sbc a
    nop
    ld bc, $1a00
    nop
    add hl, hl
    nop
    dec [hl]
    nop
    ld b, b
    nop
    ld c, e
    nop
    ld d, e
    nop
    ld e, c
    nop
    ld h, c
    nop
    ld h, a
    nop
    ld l, h
    nop
    ld [hl], c
    nop
    ld [hl], l
    nop
    ld a, d
    nop
    ld a, [hl]
    nop
    add c
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
    and l
    nop
    ld bc, $1c00
    nop
    inc l
    nop
    add hl, sp
    nop
    ld b, e
    nop
    ld d, b
    nop
    ld e, b
    nop
    ld e, a
    nop
    ld h, [hl]
    nop
    ld l, h
    nop
    ld [hl], d
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    add b
    nop
    add h
    nop
    adc b
    nop
    adc h
    nop
    sub b
    nop
    sub d
    nop
    sub l
    nop
    sbc b
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
    xor h
    nop
    xor l
    nop
    ld bc, $1c00
    nop
    inc l
    nop
    add hl, sp
    nop
    ld b, l
    nop
    ld c, [hl]
    nop
    ld d, [hl]
    nop
    ld e, [hl]
    nop
    ld h, h
    nop
    ld l, d
    nop
    ld [hl], c
    nop
    halt
    ld a, e
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
    sub e
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc l
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
    or b
    nop
    or e
    nop
    ld bc, $1f00
    nop
    cpl
    nop
    ccf
    nop
    ld c, d
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld h, l
    nop
    ld l, h
    nop
    ld [hl], e
    nop
    ld a, c
    nop
    ld a, a
    nop
    add l
    nop
    adc c
    nop
    adc [hl]
    nop
    sub e
    nop
    sub a
    nop
    sbc h
    nop
    sbc a
    nop
    and e
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
    jp Boot


    nop
    inc hl
    nop
    jr c, jr_039_6a10

jr_039_6a10:
    ld c, b
    nop
    ld d, h
    nop
    ld h, b
    nop
    ld l, d
    nop
    ld [hl], e
    nop
    ld a, e
    nop
    add d
    nop
    adc c
    nop
    sub b
    nop
    sub [hl]
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
    or l
    nop
    cp d
    nop
    cp [hl]
    nop
    jp nz, $c600

    nop
    ret


    nop
    call $d100
    nop
    call nc, $d700
    nop
    db $db
    nop
    sbc $00
    pop hl
    nop
    ld a, c
    cp $0d
    jr nc, jr_039_6a8b

    ld a, [$d32a]
    cp $02
    jr z, jr_039_6a79

    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $6a8f
    add hl, bc
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, d
    ld l, e
    res 0, l
    add hl, bc
    bit 0, e
    jr nz, jr_039_6a6c

    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ret


jr_039_6a6c:
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


jr_039_6a79:
    ld h, $00
    ld l, c
    add hl, hl
    ld bc, $7c35
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    res 0, e
    add hl, de
    ld l, [hl]
    ld h, $00
    ret


jr_039_6a8b:
    ld hl, $0040
    ret


    xor c
    ld l, d
    and e
    ld l, h
    ld a, c
    ld l, [hl]
    dec l
    ld [hl], b
    pop de
    ld [hl], c
    ld e, e
    ld [hl], e
    ret


    ld [hl], h
    rra
    db $76
    ld h, c
    ld [hl], a
    adc l
    ld a, b
    and e
    ld a, c
    and c
    ld a, d
    ld a, a
    ld a, e
    ld b, $00
    ld c, $00
    jr jr_039_6aaf

jr_039_6aaf:
    inc l
    nop
    ld [hl-], a
    nop
    jr c, jr_039_6ab5

jr_039_6ab5:
    dec a
    nop
    ld b, d
    nop
    ld b, [hl]
    nop
    ld c, d
    nop
    ld c, [hl]
    nop
    ld d, d
    nop
    ld d, l
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, c
    nop
    ld h, h
    nop
    ld h, [hl]
    nop
    ld l, d
    nop
    ld l, h
    nop
    ld l, [hl]
    nop
    ld [hl], d
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
    adc b
    nop
    adc c
    nop
    adc e
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
    xor l
    nop
    xor a
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
    add $00
    ret z

    nop
    ret


    nop
    rlc b
    call $ce00
    nop
    rst $08
    nop
    jp nc, $d300

    nop
    push de
    nop
    sub $00
    rst $10
    nop
    reti


    nop
    db $db
    nop
    call c, $df00
    nop
    ldh [rP1], a
    pop hl
    nop
    db $e3
    nop
    push hl
    nop
    and $00
    add sp, $00
    jp hl


    nop
    db $eb
    nop
    db $ed
    nop
    xor $00
    ldh a, [rP1]
    pop af
    nop
    ld a, [c]
    nop
    db $f4
    nop
    push af
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fc00]
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    ld bc, $0102
    inc b
    ld bc, $0105
    ld b, $01
    ld [$0a01], sp
    ld bc, $010b
    inc c
    ld bc, $010d
    db $10
    ld bc, $0110
    ld [de], a
    ld bc, $0113
    dec d
    ld bc, $0117
    jr jr_039_6b9a

    ld a, [de]

jr_039_6b9a:
    ld bc, $011b
    dec e
    ld bc, $011e
    rra
    ld bc, $0121
    ld [hl+], a
    ld bc, $0124
    dec h
    ld bc, $0127
    jr z, jr_039_6bb0

    ld a, [hl+]

jr_039_6bb0:
    ld bc, $012b
    dec l
    ld bc, $012e
    cpl
    ld bc, $0131
    ld [hl-], a
    ld bc, HeaderTitle
    ld [hl], $01
    scf
    ld bc, $0139
    ld a, [hl-]
    ld bc, $013b
    dec a
    ld bc, HeaderManufacturerCode
    ld b, b
    ld bc, $0141
    ld b, d
    ld bc, HeaderNewLicenseeCode
    ld b, [hl]
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderDestinationCode
    ld c, e
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0150
    ld d, c
    ld bc, $0153
    ld d, l
    ld bc, $0156
    ld e, b
    ld bc, $0159
    ld e, d
    ld bc, $015c
    ld e, l
    ld bc, $015f
    ld h, b
    ld bc, $0162
    ld h, e
    ld bc, $0164
    ld h, [hl]
    ld bc, $0168
    ld l, c
    ld bc, $016a
    ld l, h
    ld bc, $016d
    ld l, a
    ld bc, $0170
    ld [hl], d
    ld bc, $0173
    ld [hl], l
    ld bc, $0176
    ld [hl], a
    ld bc, $0178
    ld a, d
    ld bc, $017c
    ld a, l
    ld bc, $017f
    add b
    ld bc, $0182
    add e
    ld bc, $0185
    add [hl]
    ld bc, $0188
    adc c
    ld bc, $018a
    adc h
    ld bc, $018d
    adc a
    ld bc, $0190
    sub c
    ld bc, $0194
    sub l
    ld bc, $0196
    sbc b
    ld bc, $0199
    sbc e
    ld bc, $019c
    sbc [hl]
    ld bc, $019f
    and c
    ld bc, $01a2
    and e
    ld bc, $01a5
    and [hl]
    ld bc, $01a7
    xor c
    ld bc, $01ab
    xor h
    ld bc, $01ad
    xor a
    ld bc, $01b1
    or e
    ld bc, $01b3
    or l
    ld bc, $01b7
    cp b
    ld bc, $01ba
    cp e
    ld bc, $01bc
    cp [hl]
    ld bc, $01bf
    pop bc
    ld bc, $01c2
    call nz, $c501
    ld bc, $01c7
    ret z

    ld bc, $01ca
    rlc c
    call $ce01
    ld bc, $01cf
    pop de
    ld bc, $01d2
    call nc, $d501
    ld bc, $01d7
    reti


    ld bc, $01da
    db $db
    ld bc, $0006
    rrca
    nop
    jr z, jr_039_6ca9

jr_039_6ca9:
    cpl
    nop
    ld [hl], $00
    dec sp
    nop
    ld b, b
    nop
    ld b, h
    nop
    ld c, b
    nop
    ld c, [hl]
    nop
    ld d, c
    nop
    ld d, l
    nop
    ld e, c
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
    ld a, e
    nop
    ld a, l
    nop
    ld a, a
    nop
    add c
    nop
    add h
    nop
    add l
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
    xor h
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
    cp d
    nop
    cp l
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp nz, $c300

    nop
    push bc
    nop
    rst $00
    nop
    ret z

    nop
    jp z, $cc00

    nop
    adc $00
    ret nc

    nop
    pop de
    nop
    call nc, $d500
    nop
    rst $10
    nop
    ret c

    nop
    jp c, $db00

    nop
    sbc $00
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
    db $ed
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
    inc bc
    ld bc, $0105
    rlca
    ld bc, $0109
    ld a, [bc]
    ld bc, $010c
    dec c
    ld bc, $010e
    db $10
    ld bc, $0112
    inc d
    ld bc, $0115
    rla
    ld bc, $0119
    dec de
    ld bc, $011c
    ld e, $01
    rra
    ld bc, $0121
    inc hl
    ld bc, $0124
    ld h, $01
    daa
    ld bc, $0129
    dec hl
    ld bc, $012d
    ld l, $01
    jr nc, @+$03

    ld sp, $3301
    ld bc, HeaderTitle
    ld [hl], $01
    jr c, jr_039_6db0

    add hl, sp

jr_039_6db0:
    ld bc, $013b
    dec a
    ld bc, $013e
    ld b, b
    ld bc, $0142
    ld b, e
    ld bc, $0145
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderOldLicenseeCode
    ld c, l
    ld bc, $014f
    ld d, b
    ld bc, $0152
    ld d, h
    ld bc, $0155
    ld d, a
    ld bc, $0158
    ld e, d
    ld bc, $015c
    ld e, l
    ld bc, $015f
    ld h, c
    ld bc, $0162
    ld h, h
    ld bc, $0166
    ld h, a
    ld bc, $0169
    ld l, e
    ld bc, $016c
    ld l, [hl]
    ld bc, $016f
    ld [hl], c
    ld bc, $0173
    ld [hl], h
    ld bc, $0176
    ld a, b
    ld bc, $017a
    ld a, e
    ld bc, $017d
    ld a, [hl]
    ld bc, $0180
    add c
    ld bc, $0183
    add l
    ld bc, $0187
    adc b
    ld bc, $018a
    adc h
    ld bc, $018d
    adc a
    ld bc, $0191
    sub d
    ld bc, $0194
    sub [hl]
    ld bc, $0197
    sbc c
    ld bc, $019a
    sbc h
    ld bc, $019d
    sbc a
    ld bc, $01a1
    and e
    ld bc, $01a4
    and [hl]
    ld bc, $01a7
    xor c
    ld bc, $01ab
    xor l
    ld bc, $01ae
    or b
    ld bc, $01b1
    or e
    ld bc, $01b5
    or [hl]
    ld bc, $01b9
    cp d
    ld bc, $01bb
    cp l
    ld bc, $01bf
    pop bc
    ld bc, $01c2
    call nz, $c601
    ld bc, $01c7
    ret


    ld bc, $01cb
    call z, $ce01
    ld bc, $01cf
    pop de
    ld bc, $01d3
    call nc, $d601
    ld bc, $01d8
    jp c, $db01

    ld bc, $01dd
    rst $18
    ld bc, $0006
    stop
    dec hl
    nop
    ld [hl-], a
    nop
    jr c, jr_039_6e83

jr_039_6e83:
    ld a, $00
    ld b, e
    nop
    ld b, a
    nop
    ld c, l
    nop
    ld c, a
    nop
    ld d, l
    nop
    ld e, c
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
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], d
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
    sub a
    nop
    sbc c
    nop
    sbc e
    nop
    sbc l
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
    xor h
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
    cp b
    nop
    cp d
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
    rst $00
    nop
    ret z

    nop
    rlc b
    call $ce00
    nop
    ret nc

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
    call c, $de00
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
    ldh a, [rP1]
    di
    nop
    db $f4
    nop
    or $00
    ld hl, sp+$00
    ld a, [$fb00]
    nop
    db $fd
    nop
    rst $38
    nop
    ld bc, $0201
    ld bc, HeaderLogo
    ld b, $01
    ld [$0901], sp
    ld bc, $010b
    dec c
    ld bc, $010f
    db $10
    ld bc, $0113
    inc d
    ld bc, $0116
    jr jr_039_6f50

    ld a, [de]

jr_039_6f50:
    ld bc, $011b
    dec e
    ld bc, $011f
    ld hl, $2301
    ld bc, $0124
    ld h, $01
    jr z, jr_039_6f62

    add hl, hl

jr_039_6f62:
    ld bc, $012b
    dec l
    ld bc, $012e
    ld sp, $3201
    ld bc, HeaderTitle
    ld [hl], $01
    jr c, jr_039_6f74

    add hl, sp

jr_039_6f74:
    ld bc, $013b
    dec a
    ld bc, $013e
    ld b, b
    ld bc, $0142
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
    ld bc, $0157
    ld e, c
    ld bc, $015b
    ld e, l
    ld bc, $015f
    ld h, b
    ld bc, $0162
    ld h, h
    ld bc, $0166
    ld h, a
    ld bc, $0169
    ld l, e
    ld bc, $016c
    ld l, a
    ld bc, $0171
    ld [hl], d
    ld bc, $0174
    db $76
    ld bc, $0178
    ld a, d
    ld bc, $017b
    ld a, l
    ld bc, $017f
    add b
    ld bc, $0182
    add h
    ld bc, $0186
    adc b
    ld bc, $0189
    adc e
    ld bc, $018d
    adc a
    ld bc, $0191
    sub d
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc d
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
    ld bc, $01b5
    or [hl]
    ld bc, $01b8
    cp d
    ld bc, $01bc
    cp [hl]
    ld bc, $01c0
    pop bc
    ld bc, $01c3
    push bc
    ld bc, $01c7
    ret


    ld bc, $01ca
    call z, $ce01
    ld bc, $01d0
    jp nc, $d401

    ld bc, $01d5
    rst $10
    ld bc, $01d9
    db $db
    ld bc, $01dd
    sbc $01
    inc b
    nop
    stop
    ld [hl+], a
    nop
    ld a, [hl+]
    nop
    jr nc, jr_039_7037

jr_039_7037:
    scf
    nop
    inc a
    nop
    ld b, d
    nop
    ld b, [hl]
    nop
    ld c, l
    nop
    ld d, d
    nop
    ld d, l
    nop
    ld e, c
    nop
    ld e, l
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
    ld a, b
    nop
    ld a, d
    nop
    ld a, [hl]
    nop
    add b
    nop
    add d
    nop
    add [hl]
    nop
    adc b
    nop
    adc d
    nop
    adc l
    nop
    sub b
    nop
    sub d
    nop
    sub l
    nop
    sbc b
    nop
    sbc d
    nop
    sbc h
    nop
    sbc a
    nop
    and d
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
    cp l
    nop
    cp a
    nop
    pop bc
    nop
    jp $c500


    nop
    rst $00
    nop
    ret


    nop
    rlc b
    call $d000
    nop
    jp nc, $d400

    nop
    push de
    nop
    ret c

    nop
    jp c, $db00

    nop
    sbc $00
    ldh [rP1], a
    ld [c], a
    nop
    push hl
    nop
    and $00
    add sp, $00
    ld [$ec00], a
    nop
    db $ed
    nop
    ldh a, [rP1]
    pop af
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
    cp $00
    rst $38
    nop
    ld bc, $0301
    ld bc, $0105
    rlca
    ld bc, $0109
    ld a, [bc]
    ld bc, $010d
    rrca
    ld bc, $0110
    ld [de], a
    ld bc, $0114
    ld d, $01
    jr jr_039_70ee

    add hl, de

jr_039_70ee:
    ld bc, $011b
    dec e
    ld bc, $011f
    ld hl, $2201
    ld bc, $0125
    ld h, $01
    jr z, jr_039_7100

    ld a, [hl+]

jr_039_7100:
    ld bc, $012c
    ld l, $01
    jr nc, @+$03

    ld sp, $3301
    ld bc, $0135
    ld [hl], $01
    add hl, sp
    ld bc, $013a
    inc a
    ld bc, $013d
    ccf
    ld bc, $0142
    ld b, e
    ld bc, $0145
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderMaskROMVersion
    ld c, l
    ld bc, $0150
    ld d, c
    ld bc, $0153
    ld d, h
    ld bc, $0157
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
    ld bc, $016b
    ld l, l
    ld bc, $016f
    ld [hl], c
    ld bc, $0172
    ld [hl], l
    ld bc, $0176
    ld a, b
    ld bc, $017a
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
    ld bc, $018e
    sub b
    ld bc, $0192
    sub h
    ld bc, $0195
    sub a
    ld bc, $0199
    sbc d
    ld bc, $019c
    sbc [hl]
    ld bc, $01a0
    and c
    ld bc, $01a4
    and l
    ld bc, $01a6
    xor b
    ld bc, $01aa
    xor h
    ld bc, $01ae
    xor a
    ld bc, $01b1
    or e
    ld bc, $01b4
    or [hl]
    ld bc, $01b8
    cp d
    ld bc, $01bc
    cp l
    ld bc, $01bf
    pop bc
    ld bc, $01c2
    call nz, $c501
    ld bc, $01c7
    ret


    ld bc, $01cb
    call $ce01
    ld bc, $01d0
    jp nc, $d401

    ld bc, $01d5
    rst $10
    ld bc, $01d9
    jp c, $dc01

    ld bc, $01de
    rst $18
    ld bc, $0004
    dec e
    nop
    ld h, $00
    ld l, $00
    inc [hl]
    nop
    ld a, [hl-]
    nop
    ld b, c
    nop
    ld b, a
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, e
    nop
    ld e, b
    nop
    ld e, h
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, c
    nop
    ld l, h
    nop
    ld [hl], b
    nop
    ld [hl], e
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
    sub d
    nop
    sub h
    nop
    sub a
    nop
    sbc c
    nop
    sbc h
    nop
    sbc [hl]
    nop
    and c
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
    xor [hl]
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
    cp [hl]
    nop
    ret nz

    nop
    jp $c500


    nop
    rst $00
    nop
    ret


    nop
    rlc b
    adc $00
    ret nc

    nop
    jp nc, $d400

    nop
    sub $00
    reti


    nop
    jp c, $dd00

    nop
    rst $18
    nop
    ldh [rP1], a
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
    ld sp, hl
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    ld bc, $0401
    ld bc, $0105
    rlca
    ld bc, $0109
    dec bc
    ld bc, $010d
    rrca
    ld bc, $0111
    inc de
    ld bc, $0115
    rla
    ld bc, $0119
    dec de
    ld bc, $011d
    rra
    ld bc, $0120
    inc hl
    ld bc, $0124
    ld h, $01
    jr z, jr_039_729e

    ld a, [hl+]

jr_039_729e:
    ld bc, $012c
    ld l, $01
    jr nc, jr_039_72a6

    ld [hl-], a

jr_039_72a6:
    ld bc, HeaderTitle
    ld [hl], $01
    jr c, jr_039_72ae

    ld a, [hl-]

jr_039_72ae:
    ld bc, $013c
    ld a, $01
    ld b, b
    ld bc, $0142
    ld b, e
    ld bc, $0145
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, HeaderComplementCheck
    ld c, a
    ld bc, $0151
    ld d, e
    ld bc, $0155
    ld d, [hl]
    ld bc, $0158
    ld e, e
    ld bc, $015c
    ld e, [hl]
    ld bc, $0160
    ld h, d
    ld bc, $0164
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
    ld bc, $017f
    add c
    ld bc, $0183
    add l
    ld bc, $0186
    adc b
    ld bc, $018a
    adc h
    ld bc, $018e
    sub b
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
    and [hl]
    ld bc, $01a9
    xor e
    ld bc, $01ad
    xor a
    ld bc, $01b1
    or d
    ld bc, $01b5
    or [hl]
    ld bc, $01b8
    cp d
    ld bc, $01bc
    cp [hl]
    ld bc, $01c0
    pop bc
    ld bc, $01c4
    add $01
    ret z

    ld bc, $01ca
    rlc c
    call $cf01
    ld bc, $01d1
    db $d3
    ld bc, $01d5
    sub $01
    reti


    ld bc, $01da
    db $dd
    ld bc, $01df
    inc b
    nop
    ld hl, $2b00
    nop
    ld [hl-], a
    nop
    add hl, sp
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
    ld h, e
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
    adc [hl]
    nop
    sub c
    nop
    sub e
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
    cp c
    nop
    cp e
    nop
    cp l
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
    pop de
    nop
    db $d3
    nop
    sub $00
    reti


    nop
    jp c, $dd00

    nop
    rst $18
    nop
    pop hl
    nop
    db $e3
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
    ld [bc], a
    ld bc, HeaderLogo
    ld b, $01
    ld [$0a01], sp
    ld bc, $010c
    ld c, $01
    db $10
    ld bc, $0113
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $011b
    dec e
    ld bc, $011f
    ld hl, $2401
    ld bc, $0126
    daa
    ld bc, $012a
    inc l
    ld bc, $012e
    jr nc, jr_039_7424

    ld [hl-], a

jr_039_7424:
    ld bc, HeaderTitle
    ld [hl], $01
    add hl, sp
    ld bc, $013a
    dec a
    ld bc, HeaderManufacturerCode
    ld b, c
    ld bc, HeaderCGBFlag
    ld b, l
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderOldLicenseeCode
    ld c, l
    ld bc, $0150
    ld d, c
    ld bc, $0154
    ld d, [hl]
    ld bc, $0158
    ld e, d
    ld bc, $015c
    ld e, [hl]
    ld bc, $0160
    ld h, d
    ld bc, $0165
    ld h, a
    ld bc, $0168
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0171
    ld [hl], e
    ld bc, $0175
    ld [hl], a
    ld bc, $017a
    ld a, h
    ld bc, $017e
    add b
    ld bc, $0182
    add h
    ld bc, $0186
    adc b
    ld bc, $018a
    adc h
    ld bc, $018e
    sub b
    ld bc, $0192
    sub h
    ld bc, $0197
    sbc c
    ld bc, $019b
    sbc l
    ld bc, $019f
    and c
    ld bc, $01a3
    and l
    ld bc, $01a8
    xor d
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or d
    ld bc, $01b4
    or [hl]
    ld bc, $01b8
    cp e
    ld bc, $01bc
    cp a
    ld bc, $01c1
    jp $c501


    ld bc, $01c7
    jp z, $cb01

    ld bc, $01ce
    ret nc

    ld bc, $01d2
    db $d3
    ld bc, $01d6
    ret c

    ld bc, $01db
    db $dd
    ld bc, $01df
    inc b
    nop
    inc h
    nop
    ld l, $00
    ld [hl], $00
    inc a
    nop
    ld b, e
    nop
    ld c, b
    nop
    ld c, a
    nop
    ld d, e
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
    ld l, [hl]
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld a, b
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
    adc [hl]
    nop
    sub b
    nop
    sub e
    nop
    sub [hl]
    nop
    sbc c
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and c
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
    or e
    nop
    or l
    nop
    cp b
    nop
    cp e
    nop
    cp l
    nop
    cp a
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
    push de
    nop
    rst $10
    nop
    jp c, $dd00

    nop
    rst $18
    nop
    pop hl
    nop
    db $e4
    nop
    and $00
    add sp, $00
    ld [$ed00], a
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
    ld [$0b01], sp
    ld bc, $010d
    rrca
    ld bc, $0112
    inc d
    ld bc, $0117
    jr jr_039_7570

    dec de

jr_039_7570:
    ld bc, $011d
    rra
    ld bc, $0121
    inc h
    ld bc, $0126
    jr z, jr_039_757e

    ld a, [hl+]

jr_039_757e:
    ld bc, $012d
    cpl
    ld bc, $0132
    inc sp
    ld bc, $0136
    jr c, jr_039_758c

    ld a, [hl-]

jr_039_758c:
    ld bc, $013d
    ccf
    ld bc, $0141
    ld b, h
    ld bc, HeaderSGBFlag
    ld c, b
    ld bc, HeaderDestinationCode
    ld c, h
    ld bc, HeaderGlobalChecksum
    ld d, c
    ld bc, $0153
    ld d, l
    ld bc, $0157
    ld e, d
    ld bc, $015c
    ld e, [hl]
    ld bc, $0161
    ld h, d
    ld bc, $0165
    ld h, a
    ld bc, $0169
    ld l, h
    ld bc, $016e
    ld [hl], b
    ld bc, $0173
    ld [hl], l
    ld bc, $0177
    ld a, c
    ld bc, $017b
    ld a, l
    ld bc, $0180
    add e
    ld bc, $0185
    add a
    ld bc, $0189
    adc e
    ld bc, $018e
    sub b
    ld bc, $0192
    sub h
    ld bc, $0196
    sbc c
    ld bc, $019b
    sbc l
    ld bc, $01a0
    and d
    ld bc, $01a4
    and [hl]
    ld bc, $01a8
    xor e
    ld bc, $01ad
    or b
    ld bc, $01b2
    or h
    ld bc, $01b6
    cp c
    ld bc, $01bb
    cp l
    ld bc, $01c0
    jp nz, $c401

    ld bc, $01c6
    ret


    ld bc, $01cb
    call $cf01
    ld bc, $01d2
    call nc, $d601
    ld bc, $01d8
    db $db
    ld bc, $01dd
    rst $18
    ld bc, $0004
    daa
    nop
    ld sp, $3900
    nop
    ccf
    nop
    ld b, l
    nop
    ld c, l
    nop
    ld d, c
    nop
    ld d, [hl]
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld h, e
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
    ld a, c
    nop
    ld a, h
    nop
    add b
    nop
    add d
    nop
    add [hl]
    nop
    adc c
    nop
    adc e
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
    cp e
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp $c500


    nop
    ret z

    nop
    jp z, $cd00

    nop
    ret nc

    nop
    jp nc, $d500

    nop
    rst $10
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
    ldh a, [rP1]
    di
    nop
    db $f4
    nop
    rst $30
    nop
    ld a, [$fc00]
    nop
    cp $00
    ld bc, $0401
    ld bc, $0106
    ld [$0b01], sp
    ld bc, $010d
    rrca
    ld bc, $0112
    dec d
    ld bc, $0117
    add hl, de
    ld bc, $011b
    ld e, $01
    jr nz, jr_039_76c4

    ld [hl+], a

jr_039_76c4:
    ld bc, $0125
    jr z, jr_039_76ca

    ld a, [hl+]

jr_039_76ca:
    ld bc, $012d
    ld l, $01
    ld sp, $3301
    ld bc, $0136
    jr c, jr_039_76d8

    dec sp

jr_039_76d8:
    ld bc, $013d
    ld b, b
    ld bc, $0142
    ld b, h
    ld bc, HeaderCartridgeType
    ld c, c
    ld bc, HeaderOldLicenseeCode
    ld c, [hl]
    ld bc, $0150
    ld d, e
    ld bc, $0155
    ld d, a
    ld bc, $015a
    ld e, h
    ld bc, $015e
    ld h, c
    ld bc, $0163
    ld h, [hl]
    ld bc, $0168
    ld l, e
    ld bc, $016d
    ld l, a
    ld bc, $0172
    ld [hl], h
    ld bc, $0177
    ld a, c
    ld bc, $017b
    ld a, [hl]
    ld bc, $0180
    add e
    ld bc, $0185
    adc b
    ld bc, $018a
    adc h
    ld bc, $018f
    sub c
    ld bc, $0194
    sub [hl]
    ld bc, $0198
    sbc e
    ld bc, $019d
    sbc a
    ld bc, $01a2
    and l
    ld bc, $01a7
    xor c
    ld bc, $01ac
    xor [hl]
    ld bc, $01b0
    or e
    ld bc, $01b5
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
    push de
    ld bc, $01d7
    reti


    ld bc, $01dc
    rst $18
    ld bc, $0005
    ld a, [hl+]
    nop
    inc [hl]
    nop
    inc a
    nop
    ld b, e
    nop
    ld c, c
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld e, d
    nop
    ld e, a
    nop
    ld h, e
    nop
    ld h, a
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
    sub h
    nop
    sbc b
    nop
    sbc e
    nop
    sbc [hl]
    nop
    and c
    nop
    and e
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
    or l
    nop
    cp b
    nop
    cp d
    nop
    cp l
    nop
    ret nz

    nop
    jp nz, $c500

    nop
    ret z

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
    sbc $00
    pop hl
    nop
    db $e4
    nop
    and $00
    add sp, $00
    db $eb
    nop
    xor $00
    ldh a, [rP1]
    ld a, [c]
    nop
    or $00
    ld hl, sp+$00
    ei
    nop
    cp $00
    nop
    ld bc, $0103
    dec b
    ld bc, $0108
    ld a, [bc]
    ld bc, $010d
    db $10
    ld bc, $0112
    inc d
    ld bc, $0117
    ld a, [de]
    ld bc, $011c
    rra
    ld bc, $0121
    inc h
    ld bc, $0127
    ld a, [hl+]
    ld bc, $012c
    ld l, $01
    ld sp, $3401
    ld bc, $0136
    add hl, sp
    ld bc, $013b
    ld a, $01
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderROMSize
    ld c, e
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0153
    ld d, l
    ld bc, $0157
    ld e, d
    ld bc, $015d
    ld e, a
    ld bc, $0162
    ld h, h
    ld bc, $0167
    ld l, c
    ld bc, $016c
    ld l, a
    ld bc, $0171
    ld [hl], h
    ld bc, $0176
    ld a, c
    ld bc, $017c
    ld a, [hl]
    ld bc, $0181
    add e
    ld bc, $0186
    adc b
    ld bc, $018b
    adc [hl]
    ld bc, $0190
    sub e
    ld bc, $0195
    sbc b
    ld bc, $019b
    sbc l
    ld bc, $01a0
    and d
    ld bc, $01a5
    and a
    ld bc, $01aa
    xor l
    ld bc, $01af
    or d
    ld bc, $01b4
    or a
    ld bc, $01ba
    cp h
    ld bc, $01bf
    pop bc
    ld bc, $01c4
    add $01
    ret


    ld bc, $01cc
    adc $01
    pop de
    ld bc, $01d4
    sub $01
    reti


    ld bc, $01dc
    sbc $01
    dec b
    nop
    ld l, $00
    scf
    nop
    ld b, b
    nop
    ld c, b
    nop
    ld c, a
    nop
    ld d, h
    nop
    ld e, d
    nop
    ld e, a
    nop
    ld h, e
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
    ld a, h
    nop
    add b
    nop
    add e
    nop
    add a
    nop
    adc d
    nop
    adc [hl]
    nop
    sub c
    nop
    sub l
    nop
    sbc b
    nop
    sbc e
    nop
    sbc a
    nop
    and d
    nop
    and l
    nop
    xor b
    nop
    xor e
    nop
    xor [hl]
    nop
    or c
    nop
    or h
    nop
    or a
    nop
    cp e
    nop
    cp [hl]
    nop
    ret nz

    nop
    jp $c600


    nop
    ret


    nop
    call z, $d000
    nop
    jp nc, $d500

    nop
    ret c

    nop
    db $db
    nop
    sbc $00
    ldh [rP1], a
    db $e3
    nop
    rst $20
    nop
    jp hl


    nop
    db $ec
    nop
    rst $28
    nop
    ld a, [c]
    nop
    db $f4
    nop
    rst $30
    nop
    ld a, [$fc00]
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, $0105
    ld [$0a01], sp
    ld bc, $010d
    db $10
    ld bc, $0112
    ld d, $01
    add hl, de
    ld bc, $011c
    ld e, $01
    ld hl, $2301
    ld bc, $0126
    add hl, hl
    ld bc, $012c
    cpl
    ld bc, $0132
    inc [hl]
    ld bc, $0137
    add hl, sp
    ld bc, $013c
    ccf
    ld bc, $0142
    ld b, l
    ld bc, HeaderROMSize
    ld c, d
    ld bc, HeaderComplementCheck
    ld d, b
    ld bc, $0152
    ld d, l
    ld bc, $0158
    ld e, e
    ld bc, $015e
    ld h, b
    ld bc, $0163
    ld h, l
    ld bc, $0168
    ld l, e
    ld bc, $016e
    ld [hl], c
    ld bc, $0174
    db $76
    ld bc, $0179
    ld a, h
    ld bc, $017e
    add c
    ld bc, $0184
    add a
    ld bc, $018a
    adc l
    ld bc, $018f
    sub d
    ld bc, $0195
    sbc b
    ld bc, $019b
    sbc l
    ld bc, $01a0
    and e
    ld bc, $01a6
    xor b
    ld bc, $01ab
    xor [hl]
    ld bc, $01b1
    or e
    ld bc, $01b6
    cp c
    ld bc, $01bc
    cp a
    ld bc, $01c2
    push bc
    ld bc, $01c7
    jp z, $cc01

    ld bc, $01d0
    db $d3
    ld bc, $01d5
    ret c

    ld bc, $01db
    db $dd
    ld bc, $0004
    cpl
    nop
    dec [hl]
    nop
    dec a
    nop
    ld b, l
    nop
    ld c, [hl]
    nop
    ld d, h
    nop
    ld e, c
    nop
    ld e, a
    nop
    ld h, h
    nop
    ld l, b
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
    sub a
    nop
    sbc d
    nop
    sbc [hl]
    nop
    and d
    nop
    and l
    nop
    xor b
    nop
    xor h
    nop
    or b
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
    jp $c700


    nop
    jp z, $cd00

    nop
    ret nc

    nop
    db $d3
    nop
    rst $10
    nop
    jp c, $dd00

    nop
    ldh [rP1], a
    db $e3
    nop
    and $00
    jp hl


    nop
    db $ed
    nop
    ldh a, [rP1]
    di
    nop
    or $00
    ld sp, hl
    nop
    db $fc
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, $0105
    add hl, bc
    ld bc, $010c
    rrca
    ld bc, $0112
    dec d
    ld bc, $0118
    dec de
    ld bc, $011e
    ld hl, $2401
    ld bc, $0127
    ld a, [hl+]
    ld bc, $012e
    jr nc, jr_039_7a32

    inc [hl]

jr_039_7a32:
    ld bc, $0137
    ld a, [hl-]
    ld bc, $013d
    ld b, b
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderRAMSize
    ld c, h
    ld bc, $014f
    ld d, d
    ld bc, $0155
    ld e, b
    ld bc, $015c
    ld e, a
    ld bc, $0162
    ld h, l
    ld bc, $0168
    ld l, e
    ld bc, $016e
    ld [hl], d
    ld bc, $0175
    ld a, b
    ld bc, $017a
    ld a, [hl]
    ld bc, $0181
    add h
    ld bc, $0187
    adc d
    ld bc, $018d
    sub c
    ld bc, $0193
    sub a
    ld bc, $0199
    sbc l
    ld bc, $01a0
    and e
    ld bc, $01a6
    xor c
    ld bc, $01ac
    or b
    ld bc, $01b2
    or [hl]
    ld bc, $01b9
    cp h
    ld bc, $01bf
    jp nz, $c501

    ld bc, $01c8
    rlc c
    adc $01
    jp nc, $d501

    ld bc, $01d8
    db $db
    ld bc, $01de
    inc b
    nop
    inc [hl]
    nop
    add hl, sp
    nop
    ld b, e
    nop
    ld c, d
    nop
    ld d, h
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
    add a
    nop
    adc h
    nop
    sub b
    nop
    sub h
    nop
    sbc b
    nop
    sbc h
    nop
    and b
    nop
    and h
    nop
    xor b
    nop
    xor h
    nop
    or b
    nop
    or e
    nop
    cp b
    nop
    cp e
    nop
    cp a
    nop
    jp $c600


    nop
    jp z, $ce00

    nop
    pop de
    nop
    push de
    nop
    reti


    nop
    call c, $e000
    nop
    db $e3
    nop
    rst $20
    nop
    db $eb
    nop
    xor $00
    ld a, [c]
    nop
    or $00
    ld sp, hl
    nop
    db $fd
    nop
    nop
    ld bc, HeaderLogo
    rlca
    ld bc, $010b
    ld c, $01
    ld [de], a
    ld bc, $0115
    add hl, de
    ld bc, $011c
    jr nz, jr_039_7b14

    inc hl

jr_039_7b14:
    ld bc, $0127
    ld a, [hl+]
    ld bc, $012e
    ld [hl-], a
    ld bc, $0135
    add hl, sp
    ld bc, $013c
    ccf
    ld bc, HeaderCGBFlag
    ld b, [hl]
    ld bc, HeaderDestinationCode
    ld c, [hl]
    ld bc, $0151
    ld d, h
    ld bc, $0158
    ld e, h
    ld bc, $015f
    ld h, d
    ld bc, $0166
    ld l, c
    ld bc, $016d
    ld [hl], c
    ld bc, $0174
    ld [hl], a
    ld bc, $017b
    ld a, a
    ld bc, $0182
    add l
    ld bc, $0189
    adc l
    ld bc, $0190
    sub h
    ld bc, $0197
    sbc e
    ld bc, $019e
    and d
    ld bc, $01a5
    xor c
    ld bc, $01ac
    or b
    ld bc, $01b4
    or a
    ld bc, $01bb
    cp a
    ld bc, $01c2
    add $01
    ret


    ld bc, $01cd
    ret nc

    ld bc, $01d4
    ret c

    ld bc, $01db
    rst $18
    ld bc, $0004
    ld [hl], $00
    ld b, c
    nop
    ld c, h
    nop
    ld d, l
    nop
    ld e, h
    nop
    ld h, a
    nop
    ld l, l
    nop
    ld [hl], h
    nop
    ld a, d
    nop
    ld a, a
    nop
    add l
    nop
    adc e
    nop
    sub b
    nop
    sub l
    nop
    sbc d
    nop
    sbc a
    nop
    and h
    nop
    xor c
    nop
    xor [hl]
    nop
    or e
    nop
    or a
    nop
    cp h
    nop
    ret nz

    nop
    add $00
    jp z, $cf00

    nop
    db $d3
    nop
    rst $10
    nop
    db $db
    nop
    ldh [rP1], a
    db $e4
    nop
    jp hl


    nop
    db $ed
    nop
    pop af
    nop
    or $00
    ld a, [$fe00]
    nop
    ld [bc], a
    ld bc, $0107
    dec bc
    ld bc, $010f
    inc de
    ld bc, $0118
    dec de
    ld bc, $0120
    inc h
    ld bc, $0128
    inc l
    ld bc, $0131
    inc [hl]
    ld bc, $0139
    dec a
    ld bc, $0142
    ld b, [hl]
    ld bc, HeaderDestinationCode
    ld c, [hl]
    ld bc, $0152
    ld d, a
    ld bc, $015b
    ld e, a
    ld bc, $0163
    ld h, a
    ld bc, $016c
    ld [hl], b
    ld bc, $0174
    ld a, b
    ld bc, $017c
    add b
    ld bc, $0184
    adc c
    ld bc, $018d
    sub d
    ld bc, $0195
    sbc d
    ld bc, $019e
    and d
    ld bc, $01a6
    xor e
    ld bc, $01af
    or e
    ld bc, $01b8
    cp h
    ld bc, $01c0
    call nz, $c801
    ld bc, $01cd
    pop de
    ld bc, $01d6
    jp c, $de01

    ld bc, $7c4f
    adc l
    ld a, h
    bit 7, h
    add hl, bc
    ld a, l
    ld b, a
    ld a, l
    add l
    ld a, l
    jp $017d


    ld a, [hl]
    ccf
    ld a, [hl]
    ld a, l
    ld a, [hl]
    cp e
    ld a, [hl]
    ld sp, hl
    ld a, [hl]
    scf
    ld a, a
    ld bc, $0f00
    nop
    ld e, $00
    jr z, jr_039_7c57

jr_039_7c57:
    jr nc, jr_039_7c59

jr_039_7c59:
    jr c, jr_039_7c5b

jr_039_7c5b:
    ccf
    nop
    ld b, l
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld e, e
    nop
    ld e, l
    nop
    ld h, h
    nop
    ld h, [hl]
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
    ld a, b
    nop
    ld a, d
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, a
    nop
    add b
    nop
    add c
    nop
    add d
    nop
    add e
    nop
    add l
    nop
    add [hl]
    nop
    ld bc, $1000
    nop
    jr nz, jr_039_7c93

jr_039_7c93:
    dec hl
    nop
    inc [hl]
    nop
    inc a
    nop
    ld b, e
    nop
    ld c, c
    nop
    ld c, a
    nop
    ld d, l
    nop
    ld e, d
    nop
    ld e, [hl]
    nop
    ld h, l
    nop
    ld l, b
    nop
    ld l, e
    nop
    ld l, a
    nop
    ld [hl], c
    nop
    ld [hl], h
    nop
    ld [hl], l
    nop
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
    add e
    nop
    add l
    nop
    add l
    nop
    ld bc, $1100
    nop
    ld [hl+], a
    nop
    dec l
    nop
    scf
    nop
    ccf
    nop
    ld b, [hl]
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
    ld l, b
    nop
    ld l, h
    nop
    ld l, a
    nop
    ld [hl], d
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
    ld a, a
    nop
    add b
    nop
    add d
    nop
    add e
    nop
    add h
    nop
    add [hl]
    nop
    add a
    nop
    adc b
    nop
    adc c
    nop
    adc c
    nop
    ld bc, $1000
    nop
    ld e, $00
    daa
    nop
    cpl
    nop
    scf
    nop
    ld a, $00
    ld b, e
    nop
    ld c, e
    nop
    ld d, b
    nop
    ld d, l
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, c
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
    ld a, e
    nop
    ld a, [hl]
    nop
    add b
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
    ld bc, $1100
    nop
    jr nz, jr_039_7d4d

jr_039_7d4d:
    ld a, [hl+]
    nop
    inc sp
    nop
    ld a, [hl-]
    nop
    ld b, c
    nop
    ld c, c
    nop
    ld c, a
    nop
    ld d, h
    nop
    ld e, c
    nop
    ld e, l
    nop
    ld h, d
    nop
    ld h, l
    nop
    ld l, d
    nop
    ld l, l
    nop
    ld [hl], b
    nop
    ld [hl], h
    nop
    halt
    ld a, d
    nop
    ld a, l
    nop
    ld a, a
    nop
    add c
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
    ld bc, $1600
    nop
    inc hl
    nop
    ld l, $00
    scf
    nop
    ld b, b
    nop
    ld c, b
    nop
    ld c, a
    nop
    ld d, h
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
    ld [hl], b
    nop
    ld [hl], e
    nop
    ld [hl], a
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, a
    nop
    add d
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
    adc a
    nop
    sub c
    nop
    sub e
    nop
    sub h
    nop
    sub [hl]
    nop
    ld bc, $1800
    nop
    dec h
    nop
    ld sp, $3a00
    nop
    ld b, e
    nop
    ld c, l
    nop
    ld d, e
    nop
    ld e, c
    nop
    ld e, [hl]
    nop
    ld h, h
    nop
    ld l, c
    nop
    ld l, [hl]
    nop
    ld [hl], d
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
    sub e
    nop
    sub l
    nop
    sub a
    nop
    sbc b
    nop
    sbc d
    nop
    sbc e
    nop
    ld bc, $1900
    nop
    daa
    nop
    inc sp
    nop
    dec a
    nop
    ld b, a
    nop
    ld c, a
    nop
    ld d, [hl]
    nop
    ld e, l
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld l, h
    nop
    ld [hl], d
    nop
    ld [hl], l
    nop
    ld a, d
    nop
    ld a, l
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
    and b
    nop
    ld bc, $1b00
    nop
    add hl, hl
    nop
    ld [hl], $00
    ld b, c
    nop
    ld c, d
    nop
    ld d, h
    nop
    ld e, e
    nop
    ld h, c
    nop
    ld h, a
    nop
    ld l, l
    nop
    ld [hl], d
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    add b
    nop
    add d
    nop
    add [hl]
    nop
    adc c
    nop
    adc l
    nop
    sub b
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
    sbc [hl]
    nop
    sbc a
    nop
    and c
    nop
    and e
    nop
    and l
    nop
    and [hl]
    nop
    ld bc, $1c00
    nop
    inc l
    nop
    add hl, sp
    nop
    ld b, h
    nop
    ld d, c
    nop
    ld e, d
    nop
    ld h, c
    nop
    ld h, a
    nop
    ld l, l
    nop
    ld [hl], e
    nop
    ld a, c
    nop
    ld a, l
    nop
    add d
    nop
    add [hl]
    nop
    adc d
    nop
    adc l
    nop
    sub c
    nop
    sub h
    nop
    sub a
    nop
    sbc c
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
    xor c
    nop
    xor e
    nop
    xor h
    nop
    xor [hl]
    nop
    ld bc, $1c00
    nop
    inc l
    nop
    add hl, sp
    nop
    ld b, [hl]
    nop
    ld c, [hl]
    nop
    ld d, a
    nop
    ld e, a
    nop
    ld h, l
    nop
    ld l, h
    nop
    ld [hl], c
    nop
    ld [hl], a
    nop
    ld a, h
    nop
    add b
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
    sub a
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
    ld bc, $1f00
    nop
    jr nc, jr_039_7eff

jr_039_7eff:
    ccf
    nop
    ld c, d
    nop
    ld d, l
    nop
    ld e, l
    nop
    ld h, [hl]
    nop
    ld l, h
    nop
    ld [hl], e
    nop
    ld a, c
    nop
    ld a, a
    nop
    add l
    nop
    adc d
    nop
    adc [hl]
    nop
    sub e
    nop
    sbc b
    nop
    sbc h
    nop
    sbc a
    nop
    and e
    nop
    and a
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
    cp b
    nop
    cp h
    nop
    cp l
    nop
    pop bc
    nop
    jp Boot


    nop
    inc hl
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
    ld a, e
    nop
    add d
    nop
    adc d
    nop
    sub b
    nop
    sub [hl]
    nop
    sbc h
    nop
    and d
    nop
    and a
    nop
    xor h
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
    add $00
    ret


    nop
    call $d000
    nop
    db $d3
    nop
    sub $00
    jp c, $dd00

    nop
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
