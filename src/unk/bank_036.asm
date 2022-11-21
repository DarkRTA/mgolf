INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    ld [$7b40], sp
    ld d, h
    dec c
    ld e, l
    sub $71
    jr nz, jr_036_404a

    jr nc, jr_036_4051

    ldh [rOBP1], a
    db $10
    ld c, [hl]
    jr nz, jr_036_4063

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rst $38
    rst $38
    add b
    rst $38
    ld_long $ffff, a
    rst $38
    nop
    dec d
    ld a, a
    cp $e0
    ccf
    cp $e0
    rra
    cp $e0
    ldh a, [$e1]
    cp $ea
    ld d, e
    rst $38
    nop
    rst $38
    ld [$e1f0], a
    ld bc, $e0fe
    inc bc
    cp $e0
    ret


    rlca
    cp $e0
    ret nz

jr_036_404a:
    ldh [rSB], a
    cp $e9
    jp nc, Jump_000_00eb

jr_036_4051:
    nop
    ld a, $92
    db $eb
    add b
    add b
    rrca
    nop
    rrca
    ret z

    ld [c], a
    ret nz

    pop hl
    ld [$e1b8], sp
    sub d
    db $ec

jr_036_4063:
    ld [c], a
    ldh [rIF], a
    ld a, b
    ld [c], a
    ld [hl], b
    pop hl
    ld l, b
    pop hl
    and d
    db $eb
    ld [hl], b
    sub h
    ldh [$62], a
    ldh [$50], a
    ld [$e352], a
    inc bc
    rst $38
    rlca
    cp $e0
    rst $30
    rrca
    di
    rra
    adc d
    push hl
    ret nz

    ret nz

    ldh [$e0], a
    rrca
    ld hl, sp-$08
    call nz, Call_036_42fc
    pop hl
    ld d, b
    ld [$e722], a
    ret nc

    ldh [$db], a
    rst $38
    rrca
    ld d, h
    db $eb
    ret nz

    ret nz

    ld [c], a
    pop bc
    ret nz

    add b
    rst $38
    ldh [$80], a
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    add b
    ei
    cp $80
    ld a, [c]
    call z, $e001
    ccf
    rst $00
    ld a, a
    rst $38
    rst $08
    ld a, a
    sub c
    rst $38
    or b
    rst $38
    and [hl]
    rst $38
    rst $38
    jp hl


    rst $38
    add hl, hl
    rst $38
    ld [bc], a

Jump_036_40c0:
    cp $f1
    rst $38
    rst $38
    ld a, c
    rst $38
    ld b, h
    rst $38
    ld b, $ff
    ld [hl-], a
    rst $38
    ld h, a
    ld c, e
    rst $38
    ld c, d
    jp nc, $9cc4

    push bc
    ld b, b
    ret nz

    ld [c], a
    pop bc
    rst $38
    db $fd
    ld bc, $01f9
    pop af
    ld bc, $01e1
    rst $00
    pop bc
    ld bc, $4081
    ld [c], a
    or h
    push hl
    add $c2
    rra
    rst $20
    rst $38
    ccf
    ret nz

    ld a, a
    adc a
    rst $38
    sbc b
    rst $38
    inc l
    rst $38
    rst $38
    ld h, h
    rst $38
    ld b, b
    rst $38
    ldh a, [$f0]
    adc b
    rst $38
    ld hl, sp+$04
    db $fc
    ld [c], a
    cp $f2
    cp $89
    rst $18
    rst $38
    ld l, l
    rst $38
    push af
    sbc a
    cp [hl]
    ret nz

    nop
    ret nz

    rst $38
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    ei
    nop
    cp $f0
    jp nz, $0f7f

    ld [hl], b
    rra
    ld [hl+], a
    rst $38
    ccf
    ld b, c
    ld a, a
    ld b, l
    ld a, a
    ld d, d
    ld a, a
    ld h, b
    cp $51
    ret nz

    ld b, b
    rst $38
    jp $e0ff


    rst $38
    ldh a, [rIE]
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $30
    inc bc
    rst $38
    add b
    ld a, [$c06f]
    pop hl
    rst $28
    jp nz, $ff1f

    rst $38
    rst $30
    ld b, b
    rst $38
    ret nz

    ld b, b
    ret nz

    ld a, c
    ld hl, sp-$03
    add h
    rst $38
    rst $38
    and d
    rst $38
    pop bc
    rst $38
    ld d, c
    rst $38
    dec h
    rst $38
    xor d
    cp h
    ldh [$fc], a
    or h
    ldh [$f0], a
    xor h
    ldh [$c0], a
    and h
    ldh [rIE], a
    rst $38
    add hl, de
    rst $20
    ccf
    ld c, l
    ld a, a
    sub e
    rst $38
    add h
    rst $38
    rst $38
    add c
    rst $38
    ld b, b
    ld a, a
    jr nz, jr_036_41bb

    ld e, b
    xor a
    rst $38
    call nz, $ccff
    or b
    ldh [$80], a
    ld [hl], h
    ldh [rBGP], a
    cp $aa
    ldh [$f7], a
    rst $18
    db $f4
    rst $18
    or $df
    inc b
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld h, e
    rst $38
    add d
    cp $04
    xor $b0
    ret nz

    add b
    add b
    add c
    cp $e0
    add e
    add b
    inc bc
    sbc a
    nop
    ccf
    inc a
    ld a, a
    ld b, d
    sub c
    ldh [$fe], a
    ld [c], a
    cp a
    ei
    add b
    adc a
    db $ec
    ldh [$80], a
    add b
    ld e, d
    ld a, a
    inc sp

jr_036_41bb:
    rst $38
    ccf
    ccf
    ccf
    inc hl
    ccf
    ld de, $0f1f
    db $fd
    rrca
    di
    and c
    rst $18
    di
    rst $18
    ld sp, hl
    cp a
    ei
    rst $20
    cp a
    rst $38
    ld a, a
    sub a
    and b
    db $fd
    pop hl
    db $fd
    rst $20
    db $fd
    rst $08
    rst $08
    cp $ef
    cp $f2
    db $e4
    add d
    and b
    xor l
    rst $38
    rst $38
    and $ff
    cp $e3
    cp $47
    db $fc
    rst $38
    push af
    ld hl, sp-$4c
    pop hl
    ld bc, $e4ff
    inc bc
    ld bc, $010f
    db $dd
    ccf
    and [hl]
    and b
    add hl, de
    rra
    db $10
    cp $e6
    add hl, bc
    rrca
    rst $38
    rlca

jr_036_4205:
    rlca
    ldh a, [rIE]
    db $fc
    rst $28
    rst $38
    di
    ld l, a
    rst $38
    db $fc
    rst $38
    cp $ac
    db $e3
    add hl, de
    ld sp, hl
    and [hl]
    ldh [rIE], a
    rst $28
    rst $38
    ld h, a
    rst $38
    rst $30
    ei
    rst $38
    db $fd
    cp $fe
    ldh [rIE], a
    jp c, Jump_036_61ff

    rst $38
    ld hl, $ffff
    or c
    ld a, a
    pop af
    rra
    ld sp, hl
    adc a
    cp $9f
    dec bc
    ld hl, sp+$3f
    sub b
    and b
    inc bc
    ld b, b
    xor c
    ld [hl+], a
    and h
    add sp, -$1b
    ld l, c
    pop hl
    rst $18
    ld b, b
    ld a, a
    add b
    rst $38
    add e
    rst $30
    add b
    ld b, c
    ld a, a
    dec d
    ld a, a
    ld e, c
    ld [c], a
    ld bc, $c0b4
    ret nz

    ldh a, [$e5]
    db $fc
    and b
    ret nc

    ret nz

    and [hl]
    ldh a, [$a0]
    ldh [$80], a
    ret nc

    pop bc
    ld a, [c]
    add l
    inc bc
    jr c, jr_036_4205

    ccf
    xor b
    sub $80
    ld hl, sp-$1b
    jp z, Jump_000_0185

    inc e
    ret nz

    pop bc
    inc d
    ret nz

    ld a, [c]
    ld a, a
    inc bc
    ei
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    add hl, bc
    db $e3
    ld a, l
    ldh [$ab], a
    add b
    ret nz

    rst $38
    dec sp
    rst $38
    add hl, bc
    sub c
    add b
    ld sp, hl
    cp $03
    ldh [$39], a
    and c
    ld h, c
    rst $38
    add $ff
    ret z

    db $ec
    push hl
    ldh [rSVBK], a
    jp nz, $7080

    ld d, b
    and b
    db $10
    ldh a, [rSVBK]
    db $fd
    ldh a, [$50]
    ldh [rSB], a
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    ei
    rlca
    rlca
    db $fc
    ldh [rIE], a
    rst $38
    ld a, a
    ld b, c
    rst $38
    ccf
    pop af
    rrca
    ld sp, hl
    rlca
    rst $38
    dec b
    sub a
    add d
    ldh a, [$e1]
    ld a, a
    ld a, a
    ld c, a
    ld [hl], b
    ld e, a
    ldh [rIE], a
    and b
    ld b, a
    add b
    cp $43
    add c
    inc bc
    nop
    adc a
    add b
    ld a, a
    ret nz

    ccf
    rst $28
    ldh [$3f], a
    ldh [rIE], a
    db $fc
    pop hl
    rst $38
    ccf
    rlca
    sbc a
    ccf
    inc a
    ld b, e
    ld a, [hl]
    add c
    ld [hl-], a
    ret nz

    ldh [$e3], a
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    db $10
    rst $20
    ldh [$33], a
    rst $28
    ldh [$eb], a
    ldh [rNR42], a
    ldh [$e0], a
    db $fd
    rst $38
    rrca
    rst $38

Call_036_42fc:
    ld b, $1f
    inc b
    rra
    rlca
    inc [hl]
    rlca
    cpl
    ei
    rlca
    ld a, h
    ld h, d
    ldh [$f3], a
    sub b
    rst $38
    ld a, h
    jp $fef1


    ret nc

    db $e3
    and b
    pop hl
    ld [de], a
    adc c
    ld [hl], $36
    dec l
    ccf
    cp $f2
    ld l, b
    ld h, b
    rst $38
    ld d, [hl]
    rst $38
    ld e, d
    dec l
    ccf
    rst $38
    ld h, l
    ld a, a
    or l
    rst $38
    sub c
    rst $38
    ld b, e
    ld a, a
    db $ed
    db $e4
    call z, Call_036_60a0
    ld a, a
    or $c0
    inc bc
    rlca
    rlca
    rst $38
    rst $20
    rst $20
    cpl
    rst $28
    ld d, e
    rst $18
    and b
    cp a
    db $fd
    rst $00
    jp nz, $8061

    rst $38
    rst $00
    rst $38
    db $e4
    rst $38
    rst $38
    ld a, [$fdc7]
    inc bc
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    and l
    rst $38
    adc c
    rst $38
    jp nz, $ddff

    daa
    ld l, d
    ret nz

    ld b, $ff
    add h
    or d
    ld h, l
    rlca
    rlca
    xor l
    rrca
    rst $38
    ldh [$1f], a
    rra
    sub d
    ld l, b
    add b
    adc e
    ret nz

    ldh a, [rPCM34]
    ld de, $181f
    ld c, $c2
    ld [$090f], sp
    rst $18
    pop hl
    ld d, e
    rrca
    rst $08
    sub h
    ldh [$94], a
    add e
    xor c
    inc e
    and b
    add b
    sub h
    adc d
    cp $14
    and c
    rst $38
    jr @+$01

    ret z

    cp a
    ld hl, sp-$71
    rst $28
    ld hl, sp-$61
    ldh a, [$5f]
    cp $e0
    rst $38
    ldh a, [rNR23]
    ld [hl], a
    jr @+$28

    ld a, $30
    xor c
    daa
    ccf
    ld b, b
    and d
    add d
    db $fd
    xor h
    and d
    add d
    ret c

    rst $38
    adc a
    ld hl, sp+$07
    db $fc
    or a
    db $e3
    cp $f3
    and d
    add h
    rst $30
    rst $18
    sbc c
    ret nz

    rlca
    ld e, a
    add e
    inc bc
    add e
    inc bc
    pop bc
    ld h, d
    add b
    ldh [$ec], a
    add c
    ld a, [$80b4]
    db $e3
    ld c, b
    ldh [$f8], a
    rst $38
    cp $f7
    rst $38
    rst $10
    di
    ld a, a
    ld a, c
    or h
    add c
    db $e3
    cpl
    ldh [rIF], a
    rst $38
    cp a
    ccf
    rst $30
    rst $38
    rst $20
    rst $38
    rst $08
    sbc c
    add b
    ldh [$df], a
    cp $e0
    cp $c0
    db $fc
    cp $e0
    ld hl, sp-$80
    xor e
    ld hl, sp+$00
    ld h, b
    and c
    sub b
    cp $e0
    ret nc

    cp $e0
    ld sp, hl
    ld d, a
    rra
    rst $38
    rra
    jp nz, $8381

    jp nz, $c0a0

    ei
    ret nz

    db $fc
    ld l, h
    add c
    jp nz, $8387

    cp $07
    db $fc
    rra
    ld sp, hl
    ld a, d
    ret nc

    add c
    cp $ac
    and c
    inc a
    cp $42
    cp $54
    and b
    ld h, e
    ld a, a
    ld a, e
    adc h
    and e
    ld e, c
    ret nz

    add b
    add b
    ld b, b
    ld a, a
    inc [hl]
    and b
    adc d
    sub $84
    rrca
    and a
    ld b, d
    ldh a, [rRP]
    add c
    add h
    and c
    ld l, d
    ld h, b
    add b
    db $fc

jr_036_4440:
    ld d, b
    add c
    ld c, h
    ld h, b
    rst $38
    rlca

jr_036_4446:
    ld_long a, $ff03
    inc bc
    ld sp, hl
    db $fd
    adc b
    ld b, b
    inc [hl]
    add b
    rst $38
    rst $38
    ei
    rst $18
    db $fc
    adc l
    ccf
    xor a
    add [hl]
    ld a, a
    pop af
    ld a, [c]
    add a
    sub e
    and c
    db $f4
    add l
    adc [hl]
    sbc a
    cp $98
    ld hl, sp-$20
    ldh [$be], a
    ldh [rVBK], a
    add d
    rst $38
    rst $38
    ld a, a
    pop bc
    ld a, a
    jp $ff7f


    ld a, l
    rst $38
    di
    ld b, c
    jr nc, jr_036_4440

jr_036_447a:
    ld h, b
    inc d
    and c
    pop bc
    ld a, a
    pop hl
    ld a, a
    rst $28
    rst $38
    ld e, a
    rst $38
    ld b, c
    ld [hl+], a
    add c
    add e
    add b
    rlca
    ld hl, sp+$7a
    ld b, d
    ld a, [hl]
    ld b, c
    ld [c], a
    ld hl, HeaderManufacturerCode
    rra
    ld bc, $8f0e
    inc bc
    rlca
    inc bc
    inc bc
    ld h, [hl]
    and b
    adc d
    and c
    rst $18
    inc hl
    pop bc
    xor d
    jr nc, jr_036_4446

    ld b, $37

jr_036_44a8:
    add b
    ld a, a
    dec [hl]
    ld h, d
    ld [hl], b
    ld a, h
    ld h, b
    call z, $fffb
    ldh a, [$f0]
    and b
    ld bc, $8300
    add b
    add a
    rst $28
    add b
    rst $08
    ret nz

    ld e, a
    ld l, d
    and b
    ld a, a
    ldh [$c0], a
    ld a, $46
    ld h, b
    db $fd
    ld bc, $03fe
    cp $4e
    ldh [$fc], a
    ldh [$af], a
    rst $38
    cp $43
    db $fc
    ld a, [$0680]
    jr nc, jr_036_447a

    ld a, [$febb]
    ld b, $43
    ldh [$bf], a
    pop hl
    sbc a
    ld a, [$b080]
    cp a
    rst $38
    ret nc

    ld a, a
    rst $28
    ccf
    sub b
    ld c, a
    ld h, b
    rst $00
    rst $28
    rlca
    rst $38
    inc a
    jp $a840


    ld hl, sp-$08
    ldh a, [rIE]
    db $10
    ld hl, sp+$10
    ld hl, sp-$20
    inc l
    ldh [$f4], a
    ei
    ldh [$3e], a
    jr nz, jr_036_44a8

    ld sp, hl
    rrca
    rst $30
    ld b, $e7
    rst $38
    inc b
    rst $20
    rlca
    call z, $d707
    rlca
    add h
    ld a, $a2
    add b
    db $fc
    and b
    db $fc
    ld a, h
    jp nz, $a840

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    rst $38
    rst $38
    rst $38
    add b
    cp $e1
    cp a
    cp $e0
    sbc a
    or a
    add b
    pop bc
    add b
    ldh a, [$e0]
    nop
    cp $fe
    ldh [$fc], a
    sbc $fe
    ldh [$f8], a
    nop
    add d
    nop
    rst $38
    db $ed
    jp $d780


    rst $00
    add b
    adc a
    cp $e0
    add a
    cp $e0
    db $e3
    add b
    ld a, a
    di
    add b
    jp nz, $e200

    nop
    ldh a, [$fe]
    ldh [rIE], a
    ldh [rP1], a
    pop hl
    nop
    rst $00
    nop
    rst $08
    nop
    ld [$e1b2], a
    cp $fe
    ldh [$fc], a
    cp $e0
    ld hl, sp-$80
    add d
    cp a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    cp $e0
    ccf
    adc $fe
    ldh [$1f], a
    nop
    ld b, c
    ld a, [c]
    ldh [$a0], a
    rst $20
    ld sp, hl
    ld bc, $86fb
    rlca
    ldh [$e4], a
    inc a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
    cp $7f
    cp $c2
    add b
    ld [c], a
    add b
    db $dd
    ldh a, [$fe]
    ldh [$e0], a
    add b
    pop hl
    sub [hl]
    ldh [$cf], a
    add b
    rst $38
    ret z

    rrca
    ldh a, [$1f]
    ldh [$3f], a
    db $e3
    ccf
    rst $38
    call nz, $c87f
    ld a, a
    ret


    ld a, a
    db $db
    ld a, [hl]
    ld a, l
    dec a
    xor a
    ldh [$fc], a
    rst $38
    rst $08
    rst $38
    ld c, c
    and a
    ldh [$cf], a

jr_036_45cd:
    add [hl]
    rst $38
    rst $08
    ld a, c
    add b
    ldh [$d0], a
    ldh [rSVBK], a
    ret nz

    rst $38
    ldh [$c0], a
    pop hl
    ret nz

    rst $00
    ret nz

    rst $08
    ret nz

    ld hl, sp+$32
    db $e3
    jr nc, jr_036_45cd

    adc [hl]
    pop hl
    ld bc, $01ff
    db $fd
    ld bc, $30fe
    db $e3
    ei
    ld a, [hl]
    sbc e
    cp $5b
    cp $20
    ei
    rst $38
    jr nz, jr_036_4603

    ldh [$f8], a
    rst $38
    ld a, h
    ld a, a
    rst $08
    cp a
    db $fd
    rst $08

jr_036_4603:
    db $fd
    adc $fd
    jr jr_036_4661

    ldh [$f8], a
    cp $d7
    ld [c], a
    rst $38
    ldh [$9f], a
    ldh a, [$9f]
    ldh a, [$5f]
    cp $fe
    ldh [$7f], a
    ldh [$9f], a
    add b
    ld b, c
    nop
    ld b, a
    rst $38
    rlca
    ld c, a
    ld c, $1f
    rra
    dec a
    ccf
    ld a, $ff
    ccf
    rst $38
    ld a, a
    ldh [$7f], a
    ret nz

    ld a, a
    rlca
    rst $38
    rst $38
    rst $38
    cp $ff
    inc a
    rst $20
    cp $83
    db $fd
    rst $38
    cp $e1
    inc bc
    rst $38
    ld b, e
    nop
    rst $00
    add b
    rst $38
    rst $28
    ldh [rIE], a
    ldh a, [$bf]
    ld hl, sp-$21
    db $fc
    rst $38
    rst $10
    db $fc
    rst $20
    db $fc
    ret nz

    ld a, a
    ldh [$3f], a
    rst $18
    rst $38
    rra
    db $fc
    rrca
    ld hl, sp+$48
    ldh [rIE], a
    rra
    di
    sub b

jr_036_4661:
    rra
    ret nc

    ldh [$ad], a
    pop bc
    rst $38
    ld b, $ff
    inc e
    cp $95
    ret nz

    ld [hl], b
    rst $38
    rst $20
    db $fc
    rst $28
    ld hl, sp-$02
    rst $38
    ldh a, [rNR34]
    ldh a, [$3c]
    ldh [$3c], a
    ldh [$f8], a
    rst $10
    ldh [rSCY], a
    ret nz

    db $10
    db $eb
    rst $38
    or b
    ldh [rBGP], a
    nop
    db $fd
    rrca
    cp $e0
    rlca
    nop
    add a
    nop
    db $e3
    nop
    cp $f0
    ld [c], a
    ld bc, $030e
    inc c
    rlca
    inc b
    rlca
    rst $30
    add a
    rlca
    db $e4
    add e
    ldh [$fc], a
    ccf
    rst $38
    db $e3
    sbc a
    rra
    ldh a, [rIF]
    rst $38
    ld [$c047], sp
    ld d, d
    ldh [rIE], a
    rst $38
    rst $18
    rst $18
    rst $18
    sub b
    sbc a
    sub c
    sbc [hl]
    sbc a
    rst $30
    sub d
    sbc a
    sbc a
    ld b, a
    ldh [rIE], a
    rst $38
    jp nz, $ffc0

    ld a, [c]
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    xor a
    db $fd
    db $fc
    rlca
    db $fc
    add l
    ld [c], a
    nop
    ld e, c
    ldh [rTAC], a
    sbc $fe
    ldh [$1f], a
    rst $20
    ld a, a
    add e
    ldh a, [$e3]
    ret nz

    rst $38
    xor l
    ldh [$fe], a
    db $e3
    pop de
    ldh a, [$60]
    call z, $6001
    ret


    ld hl, sp+$73
    nop
    ld a, [$c1eb]
    ld b, b
    rst $00
    ld bc, $1f5e
    ldh [$ea], a
    ld a, a
    ld hl, sp+$06
    cp $43
    ld bc, $0346
    ld h, b
    db $e3
    rst $38
    add h
    rlca
    push hl
    rlca
    rst $30
    rlca
    nop
    rst $38
    rst $38
    rrca
    rst $38
    inc a
    rst $38
    ld b, h
    rst $38
    sbc b
    rst $38
    rst $38
    cp h
    rst $20
    cp h
    rst $28
    inc a
    rst $28
    dec bc
    ld hl, sp-$01
    rst $08
    ld hl, sp-$09
    db $fc
    sbc a
    db $fc
    ld l, a
    db $fc
    rst $38
    rst $38
    sbc h
    rst $38
    call c, $dcff
    ld e, [hl]
    rra
    cp e
    ld a, [hl]
    ccf
    rst $38
    pop hl
    ld a, $3f
    call c, $c0b2
    rst $38
    and a
    ld a, a
    ld b, $fe
    adc l
    ld [c], a
    db $fc
    db $e4
    ldh [rP1], a
    ld [c], a
    adc a
    rst $38
    add b
    ld c, a
    ret nz

    ld b, a
    ret nz

    daa
    ldh [rNR44], a
    cp a
    ldh [$33], a
    ldh [$7e], a
    ccf
    ld a, a
    jp nc, Jump_036_5ce2

    sub $d2
    ld [c], a
    ld hl, sp+$7f
    jp nc, $feeb

    add b
    jp nz, $c04f

    ld sp, hl
    ld c, a
    jp nc, $d0e0

    db $e3
    ld sp, hl
    rrca
    rst $30
    rra
    di
    rst $18
    rra
    ld a, [c]
    rra
    ld hl, sp+$0f
    ld [hl], a
    ldh [rTAC], a
    add d
    sub a

jr_036_477e:
    nop
    inc a
    rst $28
    dec l
    pop hl
    db $10
    ld l, d
    ldh [$09], a
    pop hl
    ldh a, [$bf]
    rst $38
    db $eb
    sbc $85
    rst $38
    dec b
    cp $e0
    add [hl]
    ld a, a
    cp $0c
    ld hl, sp+$19
    pop af
    ld a, e
    ei
    ld h, b
    and l
    rst $38
    ld a, a
    ld [hl], b
    rst $38
    adc b

jr_036_47a2:
    rst $38
    inc h
    rst $38
    ld b, d
    rst $38
    ld hl, sp+$7f
    call z, $d87f
    ld a, a
    db $fc
    cpl
    cp $fe
    pop hl
    call c, $c667
    ld a, a
    cp $ff
    adc a
    cp a
    rst $38
    ld h, a
    rst $38
    rst $30
    cp a
    ld a, [c]
    cp $e0
    ldh a, [rIE]
    sbc a
    nop
    rst $38
    ccf
    ldh [$9f], a
    ld hl, sp-$1a
    rst $38
    db $fc
    ld a, [hl-]
    cp $df
    rst $38
    ld e, a
    ld a, [c]
    ld e, e
    rst $00
    ld a, [c]
    daa
    db $e4
    jr nz, jr_036_477e

    xor [hl]
    ret nz

    xor l
    and c
    jr nz, jr_036_47a2

    db $ed
    ld b, b
    jp nz, $c0eb

    ld a, a
    jp nz, Jump_000_11eb

    rst $38
    sbc a
    ei
    ld hl, sp-$19
    jp nz, $dee0

    cp $5c
    ldh a, [$5f]
    sbc a
    di
    ccf
    db $e4
    rst $08
    ret z

    ldh [$89], a
    add b
    add c
    rst $00
    rst $38
    rlca
    ld [$f40f], a
    rra
    ldh a, [$1f]
    db $f4
    rst $38
    rra
    ld a, [$cf1f]
    rrca
    rst $08
    nop
    rra
    rst $38
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    rla
    rst $38
    daa
    ei
    rst $38
    ld a, a
    or [hl]
    and d
    rst $38
    cp [hl]
    rst $28
    ld a, $f5
    ccf
    cp a
    db $f4
    rst $38
    ld a, [$fbff]
    di
    and b
    push af
    add b
    rst $38
    jp nz, Jump_036_62ff

    rst $38
    inc [hl]
    rst $38
    ld hl, sp+$27

jr_036_483a:
    ld a, a
    ldh [$c7], a
    ret nz

    db $e3
    nop
    di

jr_036_4841:
    nop
    add b
    and c
    db $fd
    ldh a, [$80]
    and b
    db $e3
    inc bc
    pop hl
    ld bc, $0ccf
    rst $38
    db $db
    rra
    ld de, $e3ff
    cp $07
    db $fd
    cp a
    rra
    rst $38
    rst $38
    add sp, -$01
    ld l, b
    rst $00
    add b
    rst $38
    cp e
    rst $00
    call nz, $a009
    pop af
    rst $38
    jp $82e8


    ld h, a
    cp a
    rst $38
    ret z

    rst $08
    ld c, h
    rst $38
    or d
    cp h
    ldh [rDIV], a
    cp e
    rst $38
    jr c, jr_036_483a

    ldh [rNR41], a
    di
    jr nc, jr_036_4841

    db $e3
    di
    ld a, [hl]
    jp nz, $f9e0

    jr @-$07

    ccf
    jp nc, $c27f

    ld [c], a
    sbc a
    ei
    rst $38
    db $e4
    rst $38
    ld l, h
    scf
    and c
    ld a, h
    ldh [$f1], a
    rst $28
    cp $e2
    rst $38
    rst $00
    xor h
    add d
    adc [hl]
    rst $38
    ret z

    cp a
    rst $38
    rst $30
    ld b, e
    nop
    rst $20
    ldh [$a1], a
    ret nz

    db $10
    cp e
    rst $20
    ldh [$f0], a
    ld h, b
    ret nz

    di
    ld b, b
    sub d
    add c
    ld a, [hl]
    rst $38
    inc bc
    ld a, a
    inc bc
    ld a, $03
    inc a
    rlca
    rra
    ld c, a
    rlca
    ld b, a
    inc b
    ldh a, [$a1]
    ld h, b
    adc a
    and c
    ld sp, $a0e8
    rst $38
    ret z

    ld hl, sp-$0e
    jr nc, jr_036_4950

jr_036_48d1:
    db $fc
    rlca
    cp $ff
    inc bc
    cp $c1
    rst $38
    add a
    rst $38
    jr c, @+$01

    rst $08
    pop bc
    rst $38
    ld h, a
    ld a, [hl]
    ldh a, [rBCPS]
    ret nc

    ld h, b
    jp nz, $ff40

    jp hl


    ccf
    push bc
    ld a, a
    ld b, e
    ld a, a
    ld h, c
    ccf
    rst $38
    ld [hl-], a
    rra
    ccf
    rrca
    jr jr_036_4917

    ld d, b
    rra
    cp b
    db $dd
    and b
    adc b
    ld [c], a
    ld b, b
    pop bc
    adc h
    rst $38
    ld b, [hl]
    jr c, @-$1d

    rst $30
    ld a, a
    rst $38
    db $fc
    ei
    rst $38
    jp Jump_000_03fe


    jr c, jr_036_48d1

    ld a, $fa
    add b
    ret nc

    rst $38
    sub b

jr_036_4917:
    cp $60
    sub b
    ld h, b
    ld d, b
    ld h, c
    rst $28
    add b
    ld [c], a
    ldh [$8a], a
    ld [$4160], a
    ld a, a
    ld h, d
    rst $38
    ccf
    ccf
    rra
    inc a
    rlca
    jr @+$11

    ld c, b
    sbc l
    rrca
    jp nz, $cce7

    rst $38
    ld h, $b8
    ret nz

    db $fc
    pop bc
    ei
    db $dd
    cp $c2
    pop hl
    dec c
    rst $38
    jr nc, @+$80

    ldh [rIE], a
    ld b, b
    db $fc
    ld d, b
    ld h, b
    add b
    push hl
    ldh [$d2], a
    ld [hl], b
    ld c, a

jr_036_4950:
    rrca
    ld d, b
    xor a
    rra
    jr nz, @+$41

    jr nz, @+$5e

    and b
    and b
    jr c, @-$7e

    rst $38
    rst $38
    rst $38
    ld a, [c]
    sub b
    ld a, [c]
    ret nc

    ld [hl], b
    ldh a, [$50]
    rst $18
    ldh a, [$f0]

jr_036_4969:
    ldh a, [rNR11]
    ldh a, [rNR21]
    ldh [rIE], a
    ld a, a
    rst $38
    jr c, jr_036_49f2

    jr nz, jr_036_4994

    add hl, de
    ld d, $1f
    ld a, [de]
    ld e, a
    rra
    sub a
    rra
    add sp, $0f
    sub b
    add b
    ld b, b
    sub b
    adc e
    sbc [hl]
    adc [hl]
    ldh [$3f], a
    ld b, e
    ld a, [hl]
    add c
    xor e
    ld b, b
    and a
    ld b, c
    rst $38
    rst $38
    rst $38
    cpl
    db $fd

jr_036_4994:
    ld a, [$f0d8]
    jr nc, jr_036_4969

    cp a
    ldh a, [$b0]
    ldh a, [$d1]
    ldh a, [$27]
    ret nz

    ldh [$91], a
    rst $38
    rst $38
    ld h, e
    ld a, a
    ld e, $1f
    ld [$080f], sp
    rst $30
    rrca
    adc a
    rrca
    ret nz

    pop hl
    jp c, $ea78

    ld hl, sp-$29
    inc d
    db $fc
    inc c
    cp $e0
    push af
    ld d, b
    add d
    ld b, h
    rlca
    sbc $c0
    db $eb
    ld a, [hl-]
    ld hl, sp-$0e
    ret nc

    ret nz

    jp hl


    ld h, e
    ld a, [hl]
    ld l, a
    ld e, a
    rra
    inc c
    rlca
    ret nz

    rst $20
    jp z, $c0f8

    db $eb
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    cp $ea
    rst $38
    rst $38
    nop
    cp $fe
    ld [$cfff], a
    nop
    cp b
    nop

jr_036_49f2:
    ld h, a
    nop
    push bc
    ld e, l
    cp $e0
    ld h, a
    or $e0
    rst $38
    db $ed
    jp nz, $f0e5

    add b
    cp a
    rst $08
    add b
    cp b
    add b
    rst $20
    add b
    jp nz, $0fe5

    rst $38
    nop
    di
    nop
    dec e
    nop
    and $00
    rst $08
    rst $38
    nop
    ldh a, [rP1]
    sbc [hl]
    nop
    add [hl]
    nop
    add d
    rst $38
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    db $dd
    db $eb
    add b
    db $dd
    jp c, $b8e0

    jp nc, $f0e0

    add b
    sbc [hl]
    cp a
    add b
    add [hl]
    add b
    cp d
    nop
    cp d
    jp c, Jump_000_1de0

    ld a, $d2
    ldh [rIF], a
    nop
    ld a, c
    nop
    ld h, c
    add h
    db $eb
    db $76
    ldh [$bc], a
    adc b
    push hl
    cp b
    pop hl
    sbc a
    rra
    pop hl
    ld a, a
    ret nc

    and $70
    rst $30
    rst $38
    ld hl, sp-$07
    cp $e0
    add d
    add b
    ret nz

    add b
    rst $30
    ldh [$80], a
    ld hl, sp+$3c
    and $41
    nop
    inc bc
    nop
    rla
    rlca
    nop
    rra
    inc a
    and $f0
    ld a, [hl]
    ldh [rLCDC], a
    jp hl


    ld l, b
    ldh [rIE], a
    ld bc, $031e
    and $03
    cp h
    rlca
    cp h
    rst $18
    rlca
    db $e4
    rlca
    dec e
    rlca
    ld c, a
    pop hl
    ld bc, $ffff
    rlca
    rst $38
    jr @+$01

    ld [hl], e
    rst $38
    rst $20
    db $fc
    rst $38
    rst $20
    cp $f1
    ldh a, [$0b]
    ld hl, sp-$09
    db $fc
    rst $38
    cp a
    db $fc
    xor a
    db $fc
    rra
    db $fc
    cp a
    db $e4
    rst $38
    cp a
    db $f4
    ei
    rrca
    inc d
    rra
    ld l, e
    ccf
    rst $38
    ld e, d
    ld a, a
    ld e, h
    ld a, a
    ld a, $3f
    rlca
    ld bc, $1f7f
    nop
    rst $00
    cp $c7
    cp $c0
    call $fdc0
    ld [bc], a
    jp z, $c0e0

    rst $38
    ld h, b
    ld a, a
    cp a
    db $f4
    rst $18
    cp a
    db $f4
    ld h, e
    cp $03
    cp $e0
    rst $20
    db $fc
    rst $28
    dec c
    ld hl, sp+$16
    ldh a, [rNR10]
    jp hl


    ldh a, [$30]
    ld hl, sp-$0b
    ret z

    and c
    ld [c], a
    inc bc
    sbc a
    ldh [rTAC], a
    rst $38
    rrca
    db $fc
    rst $38
    rrca
    ld hl, sp+$0f
    ld hl, sp-$21
    rst $38
    rst $20
    cp a
    rst $38
    rst $38
    call c, $d6ff
    rst $38
    ldh a, [rIE]
    db $10
    cp $95
    ret nz

    ld a, e
    pop hl
    rst $38
    db $dd
    rst $38
    sbc [hl]
    rst $30
    rst $38
    rst $18
    ld [hl], a
    cp $7b
    rst $38
    ld a, d
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    inc h
    rst $38
    sub d
    rst $38
    ld b, d
    rst $38
    rst $30
    inc b
    rst $38
    adc b
    pop hl
    ldh [$f0], a
    rra
    ldh a, [$08]
    rst $38
    rrca
    db $f4
    rlca
    rra
    inc bc
    rst $20
    ld bc, $ffbb
    ld bc, $03ba
    rst $20
    inc bc
    inc e
    rlca
    nop
    db $eb
    rst $38
    rra
    ld c, l
    jp nz, $ab00

    ldh [rIE], a
    rst $38
    ld c, $eb
    ei
    db $fd
    ccf
    ret nz

    rst $38
    add b
    ldh [$63], a
    cp $c3
    rst $38
    cp $ff
    cp $0f
    ld hl, sp+$30
    ldh [$cf], a
    ld sp, hl
    ret nz

    ld d, b
    ret


    add b
    set 7, a
    rst $38
    rst $30
    rlca
    ccf
    cp a
    inc a
    ld b, e
    ld a, [hl]
    add c
    rst $38

jr_036_4b61:
    add c
    rlca
    jp nz, $ffff

    rst $38
    sbc a
    ei
    rst $38
    ld [hl], d
    rst $38
    ld [de], a
    rst $38
    ld a, a
    di
    ld e, $f3
    rst $38
    di
    ld a, $f3
    ld a, [c]
    and b
    rst $38
    ld hl, sp-$01
    ld e, $e1
    ccf
    ret nz

    rst $38
    ld b, b
    ret z

    rst $30
    and d
    ld [bc], a
    pop bc
    ld b, b
    jp nz, $9880

    jp $ace2


    ld bc, $7dfe
    inc bc
    add sp, -$5d
    cp c
    ld bc, $3fff
    jp $c0b8


    ei
    nop
    rst $38
    jr nc, jr_036_4b61

    ldh [$fd], a
    ldh a, [$f3]
    pop af
    cp a
    rst $38
    ld a, [c]
    rst $38
    db $e4
    rla
    push af
    or d
    and [hl]
    ret nz

    dec hl
    rst $38
    jr nc, jr_036_4bde

    ldh [rDIV], a
    and d
    xor h
    ld bc, $c620
    cp [hl]
    db $e4
    cp $f0
    and e
    db $fd
    ldh [$f3], a
    ldh a, [rIE]
    ldh a, [$f9]
    rst $38
    ldh a, [$e1]
    ldh [$0c], a
    rlca
    db $f4
    rlca
    jr @+$01

    rrca
    add sp, $0f
    cp c
    rrca
    cp e
    rrca
    rst $30
    rst $38
    rra
    add hl, hl
    ccf
    inc bc
    rst $38
    rrca

jr_036_4bde:
    rst $38
    ld sp, $ffff
    and $ff
    rst $08
    ld sp, hl
    rst $08
    db $fd
    adc a
    cp $fe
    ldh [$ef], a
    rst $38
    ld a, a
    ld hl, sp+$5f
    ei
    ccf
    rst $38
    db $fc
    ld a, a
    bit 7, a
    ld [$eb7f], a
    ld a, l
    rst $38
    rst $28
    db $fc
    inc d
    rst $38
    sub h
    db $fc

jr_036_4c03:
    db $e4
    rst $38
    rst $38
    ld [$10fd], sp
    db $fd
    jr nc, jr_036_4c03

    db $10
    ld hl, sp-$01
    ldh [$0e], a
    inc bc
    db $f4
    rlca
    inc e
    rlca
    add sp, $3b
    rrca
    cp b
    cp [hl]
    ldh [$eb], a
    rrca
    rla
    rst $20
    and b
    cp [hl]
    db $eb
    rst $38
    ld de, $ebf0
    ld hl, sp+$1f
    ld hl, sp-$41
    ld hl, sp-$01
    cp a
    ei
    ld a, a
    call z, $e97f
    ld a, a
    ld [$d05e], a
    and l
    db $dd
    add b
    db $fd
    ld h, b
    ret nz

    ldh [$08], a
    ret nc

    db $e3
    rst $30
    jr nc, @+$01

    ldh [rNR12], a
    ret nz

    call z, $86ff
    rst $38
    ld a, [hl]
    ret nc

    pop hl
    cp a
    ld hl, sp-$61
    ld sp, hl
    ccf
    ld a, [$e0d0]
    rst $30
    db $ed
    ld a, a
    rst $28
    and b
    and e
    rst $20
    ret nz

jr_036_4c5e:
    db $fd
    jr nc, jr_036_4c5e

    db $fd
    ld [hl+], a
    ldh [$fc], a
    inc d
    rst $10
    ld a, a
    or l
    rst $38
    cp a
    cp b
    rst $38
    ld a, h
    ld a, a
    ld b, e
    inc bc
    ld a, b
    and b
    inc bc
    db $d3
    rra
    rrca

jr_036_4c77:
    rst $28
    add c
    call nc, $80a1
    jp nc, $f0a0

    cp a
    rst $30
    rst $38
    rst $08
    call z, $c025
    inc b
    rst $38
    call nz, $fdff
    ld [$a08e], sp
    ld l, [hl]
    rst $38
    rst $30
    rst $18
    cpl
    ldh [rIE], a
    jr nc, jr_036_4c77

    ld e, [hl]
    ret nz

    ld b, [hl]
    ret nz

    ld b, d
    ret nz

    sbc $38
    and d
    nop
    jp hl


    ccf
    ld d, a
    cp [hl]
    db $e4
    inc bc
    inc bc
    xor $38
    and b
    ld bc, $fd8e
    cp [hl]
    db $eb
    ld a, a
    xor $cf
    rst $38
    ei
    rlca
    db $fd
    rlca
    rst $38
    rst $00
    db $fc
    dec bc
    rst $38

jr_036_4cbd:
    ei
    ld e, $f3
    ld h, [hl]
    db $e3
    rst $38
    jr z, jr_036_4cbd

    rst $38

jr_036_4cc6:
    jr z, jr_036_4cc6

    ret z

    cp $08
    ld a, [c]
    ld [hl], b
    ldh a, [$df]
    db $10
    ldh a, [$f0]
    ld [$c0f8], sp
    db $ec
    rrca
    adc [hl]
    call c, $a2d4
    ret nz

    add sp, -$13
    rst $08
    db $fc
    ld [hl], e
    and b
    cp $c7
    ld a, a
    db $fd
    dec bc
    ld sp, hl
    dec e
    pop af
    ld a, a
    rst $38
    jp nc, $ffc1

    cp $84
    cp $38
    ld a, [$7888]
    ld hl, sp-$01
    ld [$04f8], sp
    db $fc
    rst $38
    ccf
    rst $08
    ld a, a
    db $fd
    add e
    ld [c], a
    and b
    add a
    rst $38
    ret c

    ld a, a
    ldh [$7f], a
    rst $38
    ret nz

    ld a, a
    ld a, a
    pop af
    cp a
    ei
    cp a
    rst $38
    db $ed
    cp a
    sbc d
    and c
    rst $38
    ld a, a
    cp $e0
    rst $30
    sbc a
    ld a, [$de3f]
    ld a, [$fdfe]
    db $fc
    rst $38
    cp $e1
    adc [hl]
    and b
    cp h
    or $a5
    cp $e6
    rra
    rst $38
    ld a, a
    adc a
    ld de, $07a2
    cp $56
    and b
    rra
    di
    rst $38
    rst $08
    rst $38
    pop af
    rst $38
    db $fc
    cp [hl]
    ld [c], a
    jp nz, $ffe1

    rst $38
    ei
    db $d3
    rst $38
    sbc a
    ld e, a
    rst $30
    rst $18
    rst $30
    rst $38
    ei
    cp $e0
    db $fd
    cp $e0
    rst $38
    rrca
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    adc a
    ld hl, sp-$5e
    pop af
    add b
    ret nz

    xor a
    add b
    or h
    db $eb
    xor d
    pop hl
    rst $38
    or d
    db $e3
    rrca
    ld c, $fe
    pop hl
    ei
    adc a
    db $fd
    or b
    pop hl
    ld l, [hl]
    pop hl
    or d
    db $e3
    ld b, d
    ld h, b
    ret


    rst $18
    or b
    and $72
    pop hl
    cp $b2
    and $76
    ld h, h
    ld b, b
    ld a, a
    rst $18
    db $e3
    ccf
    dec e
    dec e
    rst $20
    jp nz, $bb80

    inc bc
    ld a, a
    db $e4
    rlca
    rra
    rlca
    cp a
    rst $38
    ld h, b
    sbc c
    ld [c], a
    ldh a, [$c2]
    add e
    ld [bc], a
    and b
    ld b, h
    add d
    jp nz, $ff85

    ld hl, sp-$0f
    ld bc, $ce7f
    inc bc
    cp d
    inc bc
    ld h, [hl]
    inc bc
    ld e, l
    ld h, [hl]
    and b
    cp $10
    ld h, c
    rra
    ld sp, hl
    rlca
    db $fd
    inc bc
    rst $38
    dec bc
    ld h, $de
    ld h, b
    cp $ff
    add b
    add c
    sub c
    add c
    ldh a, [$dd]
    ld b, d
    add b
    add e
    db $fc
    db $fc
    pop bc
    cp [hl]
    jp hl


    pop af
    ld bc, $01cf
    cp c
    ld bc, $d03a
    ld b, a
    inc bc
    and d
    ld h, b
    dec b
    rst $38
    add e
    jp Jump_036_40c0


    add e
    set 6, a
    inc b
    add b
    add b
    ld a, a
    add b
    add a
    add d
    add b
    inc de
    cp $af
    di
    ccf
    di
    rst $18
    add d
    add c
    pop hl
    ld [hl], d
    ld b, b
    ld [$801c], sp
    add b
    add d
    add b
    ret nz

    rst $38
    ccf
    ld [hl], e
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    cp $ea
    rst $38
    rst $38
    nop
    cp $fe
    ld [$fcff], a
    nop
    di
    nop
    rst $28
    nop
    rra
    call z, $8800
    nop
    sbc b
    cp $e0
    rst $38
    db $ed
    jp nz, $bfe7

    db $fc
    add b
    di
    add b
    rst $28
    add b
    jp nz, Jump_000_3fe7

    rst $38
    nop
    rst $08
    nop
    rst $30
    nop
    cp h
    nop
    rst $18
    rst $28
    nop
    ldh [rP1], a
    db $ed
    cp $e0
    rst $30
    nop
    ld hl, sp-$42
    and [hl]
    ldh [$cc], a
    add b
    adc b
    add b
    sbc b
    cp $e0
    cp h
    rst $38
    add b
    rst $18
    add b
    ldh [$80], a
    db $ed
    add b
    inc sp
    rst $28
    nop
    ld de, $1900
    cp $e0
    dec a
    nop
    ei
    rrca
    nop
    rlca
    nop
    or a
    add h
    db $eb
    ret nc

    pop hl
    adc b
    db $e4
    cp b
    pop hl
    rst $28
    db $e3
    inc bc
    db $ec
    rrca
    ret nc

    push hl
    ccf
    ld c, $ff
    rst $38
    rra
    rst $38
    rst $38
    ccf
    rst $38
    inc sp
    ld bc, $fb13
    ld bc, $fe1b
    ldh [$3f], a
    ld bc, $01fb

jr_036_4e94:
    rlca
    rst $38
    ld bc, $01b7
    db $ed
    add b
    rst $30
    add b
    ld hl, sp-$36
    ld l, $e8
    or a
    ld b, h
    ldh [$1f], a
    ld l, $ea
    jr nc, jr_036_4e94

    ldh a, [$1f]
    rst $38
    ldh [$3f], a
    ret nz

    ld a, a
    ret nz

jr_036_4eb1:
    ld a, a
    add e
    rst $38
    rst $38
    adc [hl]
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    rra
    cp $ff
    ld bc, $3eff
    rst $38
    rst $30
    rst $38
    dec d
    rst $38
    ccf
    ld h, e
    rst $38
    rst $30
    sbc h
    rst $30
    sbc $d0
    ld [c], a
    jr z, jr_036_4eb1

    cp $48
    push hl
    dec a
    ld bc, $03fa
    dec b
    rlca
    cp e
    rst $18
    rrca
    cp e
    rrca
    rst $28
    rlca
    xor b
    pop hl
    ld a, b
    rst $38
    rst $18
    sbc b
    rst $38
    ld a, b
    rst $38
    ld d, b
    cp e
    ret nz

    ret nz

    rst $38
    rst $38
    ld hl, sp+$3f
    db $ec
    rrca
    rst $30
    sbc $f7
    sbc $b5
    inc c
    cp l
    jp nz, $b77c

    ret nz

    ld bc, $18ff
    db $e3
    ld l, l
    rst $38
    ret nz

    ld l, l
    ret nz

    ld a, a
    ld hl, sp-$04
    call nz, Call_036_7dff
    ld a, [c]
    and d
    jp nz, $fc03

    rlca
    ld hl, sp+$0f
    cp $e1
    rst $38
    rst $38
    rlca
    rst $38
    dec sp
    rst $38
    db $fc
    rst $38
    cp $7f
    rst $38
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    rst $28
    dec l
    ldh [rIE], a
    rlca
    rst $38
    rst $38
    ld a, [$33ff]
    cp $7b
    db $fc
    db $ed
    ldh [$fe], a
    db $e3
    ld hl, $b9ff
    rst $38
    ld h, c
    rst $18
    rst $38
    db $fd
    sbc a
    ld a, [c]
    ld c, a
    db $fc
    ld b, a
    db $fc
    cp a
    rst $38
    ld hl, sp-$04
    rlca
    jr c, jr_036_4f5d

    ret z

    rrca
    db $f4
    rst $10
    rlca
    inc sp
    inc bc
    ret z

    jp $fc1f


    ret nz

    ccf
    rst $38
    db $fd

jr_036_4f5d:
    ld h, b
    add d
    ldh [$c0], a
    ld a, a
    rst $38
    ld a, a
    pop bc
    ld a, a

jr_036_4f66:
    cp [hl]
    ret


    db $e3
    ld bc, $19ff

jr_036_4f6c:
    rst $38
    pop af
    dec h
    ret nz

    jp Jump_036_7ef1


    ld l, b
    call nz, $cab8
    ld [hl], b
    ret z

    rst $38
    dec a
    nop
    rst $38
    rst $38
    rlca
    ld [$b00f], sp
    rra
    or b
    rra
    rst $38
    ei
    rra
    db $10
    xor [hl]
    ret nz

    di
    cp $ff
    adc [hl]

jr_036_4f8f:
    ld a, a
    rst $38
    jp nz, $fe3f

    inc hl

jr_036_4f95:
    cp $ff
    cp $07
    cp $7b
    pop hl
    ld a, [hl]
    rst $38
    ld b, e
    db $fc
    ld b, a
    ld hl, sp+$7f

jr_036_4fa3:
    jp hl


    ret z

    and d
    ldh [$9e], a
    ldh [rIE], a
    jr nc, jr_036_4f6c

    ret nz

    jr nz, jr_036_4f8f

    rst $38
    dec e
    ldh a, [rNR33]
    ldh a, [$f7]
    ldh a, [rNR23]
    ldh a, [$7b]
    rst $38
    rst $38
    ld b, b
    jp Jump_036_7879


    db $fd
    db $fc
    jr c, jr_036_4fa3

    inc d
    db $fc
    ldh [$c0], a
    rst $00
    ld bc, $a0b7
    ld [hl], e
    or d
    and b
    ld hl, sp-$5d
    jr jr_036_4f95

    ei
    add hl, sp
    jr nc, jr_036_4f66

    pop bc
    pop bc
    ld a, a
    rst $00
    ld a, a
    adc b
    rst $38
    rst $38
    sub e
    rst $38
    sub a
    db $fc
    and a
    db $fd
    ld a, e
    xor $90
    ret nz

    ld sp, hl
    rst $38
    sbc [hl]
    ld a, [c]
    ldh [$0d], a
    rst $38
    sbc a
    and a
    di
    sbc a
    ei
    ld h, b
    call nz, $c690
    sub l
    ld [hl], c
    and b
    inc c
    ccf
    rst $38
    inc bc
    rst $38
    rlca
    db $fc
    ld a, a
    ld a, [$b0e0]
    jp Jump_036_60ff


    ret nz

    db $ed
    ldh [$fd], a
    db $10
    rst $38
    ld [$fccf], sp
    ld b, h
    rst $38
    ld b, [hl]
    ldh [$e3], a
    ld a, [$e0c0]
    ld a, a
    rst $18
    db $fc
    rrca
    db $fd
    rlca
    db $fd
    ldh [$e3], a

jr_036_5023:
    ld l, l

jr_036_5024:
    ret nz

    rst $38
    db $ed
    ret nz

    rst $30
    jr nz, jr_036_5023

    jr jr_036_5024

    inc e
    rst $38
    ld c, l
    ld a, b
    adc e
    ld hl, sp-$71
    ld sp, hl
    add [hl]
    rst $38
    rst $18
    add $7f
    db $e3
    ccf
    ld a, [hl]
    ld a, [de]
    ret nz

    rst $20
    db $fd
    rst $10
    rst $20
    db $fd
    jr nz, @-$2e

    ret nz

    ld hl, $a019
    ldh a, [rIE]
    ld a, a
    ld hl, sp-$01
    sbc a
    ei
    sbc l
    ei
    jr nc, jr_036_5062

    and d
    push af
    ldh a, [rHDMA2]
    ret nz

    inc bc
    ld d, b
    ret nz

    ld e, a
    ret nz

    and b
    ldh [$8d], a

jr_036_5062:
    xor l
    cp $e0
    rst $30
    ret nz

    cp b
    and b
    db $f4
    add e
    rst $20
    ldh [$fc], a
    cp c
    rlca

jr_036_5070:
    ld c, h
    jp $c550


    ei
    rst $38
    ld [hl], a
    add d
    and b
    rst $08
    rst $38
    rst $38
    rst $38
    rst $10
    db $fd
    ld a, a
    ld sp, hl
    ccf
    pop hl
    rst $18
    rst $38
    db $e3
    cp $7f
    db $fc
    or [hl]
    add c
    rrca
    rst $38
    xor $31
    ldh [$34], a
    rst $38
    ld a, a
    ld b, b

jr_036_5094:
    push bc
    di
    ld e, [hl]
    di
    rst $38
    cp $e3
    cp $c7
    db $fc
    rst $38
    ld hl, sp+$7f
    ld [$8298], a
    add e
    inc d
    ldh [$c0], a
    ld e, b
    ret nz

    rst $08
    ld a, a
    pop hl
    ld e, a
    ccf
    db $e3
    ccf
    cp $1f
    dec b
    ret nz

    ld sp, hl
    cp $a1
    sbc a
    rst $28
    rst $38
    ld l, a
    rst $38
    ld e, a
    ld [hl], e
    add b
    ret nz

    ldh [$f3], a
    ld c, a
    cp $63
    cp $f7
    ld bc, $62c5
    add b
    ldh [$57], a
    pop hl
    rst $38
    ld [hl], a
    db $fc
    ld h, e
    cp $f3
    sbc [hl]
    ei
    adc $ff
    ld sp, hl
    rrca
    ld a, $07
    adc $03
    or $03
    db $eb
    inc sp
    ld bc, $83c8
    rla
    adc $e0
    cpl
    rst $38
    db $10
    db $d3
    rst $38
    jr nz, jr_036_5070

    and b
    nop
    jp nz, $9007

    ret


    add hl, de
    nop
    call z, $a0a7
    add sp, -$60
    ldh [$3f], a
    ld a, [de]
    and c
    ldh [$a1], a
    ei
    ld c, $ff
    db $fc
    call z, $88fb
    rst $38
    ld c, b
    db $fc
    jr nc, jr_036_510f

jr_036_510f:
    jr nc, jr_036_5094

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    rst $38
    rst $38
    add b
    cp $ea
    rst $38
    rst $38
    nop
    db $fc
    cp $ea
    ldh a, [$e2]
    ld hl, sp+$00
    push hl
    nop
    call z, $f700
    xor h
    nop
    cp b
    ldh a, [$e4]
    inc b
    nop
    di
    nop
    call $fa06
    ldh [$64], a
    nop
    rst $38
    db $ed
    or d
    db $eb
    ld hl, sp-$80
    cp $b2
    db $eb
    inc b
    nop
    add e
    nop
    add a
    nop
    rst $00
    di
    nop
    db $e3
    xor [hl]
    ldh [$98], a
    db $e3
    ld [hl], h
    nop
    db $f4
    nop
    ld b, l
    db $e4
    cp d
    ldh [rDIV], a
    adc d
    db $eb
    ld a, h
    db $e4
    jp c, Jump_000_01e0

    cp $e9
    rst $38
    dec b
    ld bc, $80e5
    call z, $ac80
    add b
    rst $38
    cp b
    add b
    add e
    add b
    add a
    add b
    rst $00
    add b
    add e
    db $e3
    add b
    ld a, b
    push hl
    cp b
    push hl
    cp d
    db $ed
    ld c, b
    push hl
    adc b
    ld [c], a
    rlca
    sbc e
    rst $28
    rrca
    ret nc

    db $eb
    add b
    add b
    ldh [$ea], a
    ld l, b
    ldh [$f3], a
    ei
    ld bc, $9a07
    ldh [$65], a
    ld bc, $0175
    push af
    rra
    ld bc, $01e5
    ld bc, $7801
    push hl
    nop
    and $e2
    jp nz, $05ff

    ld bc, $03f2
    inc b
    rlca
    dec b
    rlca
    rst $38
    ld l, c
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $20
    ccf
    rst $38
    ret nz

    rst $38
    adc a
    rst $38
    sbc [hl]
    rst $38
    ld [hl-], a
    rst $38
    rst $38
    ld h, b
    rst $38
    add h
    add b
    rst $38
    ldh a, [$8f]
    ei
    rst $38
    rlca
    db $fc
    db $e3
    cp $93
    cp $e9
    rst $38
    db $fd
    dec c
    or d
    call nz, $80f8

jr_036_51e3:
    push hl
    ld b, b

jr_036_51e5:
    call z, $cf40
    db $ec
    jr nz, jr_036_51e3

    jr nz, jr_036_51e5

    push bc
    ret nz

    push bc
    ld a, c
    rrca
    rst $18
    ld sp, hl
    rrca
    ld a, [c]
    rra
    ld [de], a
    cp $e0
    ld a, [c]
    rra
    cp $b4
    ldh [rIF], a
    ld c, b
    rst $38
    call nz, Call_036_5eff
    rst $38
    rst $30
    ret nz

    rst $38
    ld b, e
    ld l, c
    ret nz

    add e
    rst $38
    add a
    rst $38
    rst $38
    dec h
    rst $38
    ld b, a
    rst $38
    db $f4
    rst $38
    ld b, $ff
    rst $30
    inc b
    rst $38
    ld [bc], a
    ldh a, [$e0]
    jp $e3ff


    ld h, b
    rst $38
    rst $30
    db $10
    rst $30
    ldh a, [$93]
    ldh a, [$98]
    ldh a, [$bf]
    sbc a
    ldh a, [$df]
    ldh a, [rIE]
    ldh [$80], a
    ldh [rTAC], a
    jp nc, $e0fe

    inc bc
    ret c

    ret nz

    ld c, b
    jp nz, $edc7

    ldh [$f8], a
    rst $38

jr_036_5243:
    cp a
    rst $18
    rst $30
    cp a
    di
    rst $38
    ei
    inc h
    ret nz

    rst $38
    db $fd
    rst $00
    ld e, a
    ldh [$3b], a
    rst $38

jr_036_5253:
    ei
    rst $18
    db $fd
    sbc a
    inc de
    db $fd
    cp a
    ldh a, [$e1]
    adc $e0
    ret nz

    and c
    ldh [$0c], a
    pop bc
    jr @-$39

    adc h
    xor b
    jp nz, $c330

    ld h, a
    inc bc
    call c, $d7e2
    ld [c], a
    db $db
    pop hl
    add e
    ld a, [hl]
    pop af
    rst $20
    rst $38
    inc bc
    cp $c1
    rst $38
    add c
    ld [c], a
    and c
    db $ec
    jr z, jr_036_5243

    ldh a, [$a3]
    ld hl, sp-$40
    jr nc, jr_036_5253

    rst $38
    ld [hl], h
    rlca
    rst $38
    push af
    rlca
    jp hl


    rrca
    dec bc
    ld c, $13
    rra
    rst $38
    db $f4
    rra
    ld hl, sp+$0f
    rst $38
    rst $38
    pop bc
    rst $38
    rst $38
    pop af
    rst $38
    rst $08
    ld a, a
    add e
    cp $83
    cp $ff

jr_036_52a6:
    rst $00
    db $fc
    ld a, a
    ld hl, sp-$01
    rst $38
    add d
    rst $38
    rst $38
    rst $08
    rst $38
    di
    cp $c1
    ld a, a
    pop bc
    ld a, a
    rst $38
    db $e3
    ccf
    cp $1f
    rst $38
    rst $38
    inc hl
    ldh [$f7], a
    and a
    ldh [$97], a
    jr nc, jr_036_52a6

    ret z

    ld hl, sp+$2f
    ld hl, sp-$3d
    rra
    ldh a, [$c0]
    ldh [$f0], a
    xor e
    ld [hl], d
    and h
    sub b
    and e
    dec b
    ld bc, $668b
    inc bc
    ret z

    and b
    rlca
    ret c

    pop bc
    adc d
    push bc
    ret z

    and d
    add b
    cp b
    rst $08
    ret nz

    adc d
    call nz, $ca50
    add b

jr_036_52ec:
    ld hl, sp+$40
    sub b
    bit 4, l
    db $fd
    ld bc, $a488
    ld [hl], b
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$0d
    ld a, a
    or b
    ret nz

    db $e3
    ld c, $a1
    ldh [$1f], a
    rst $38
    ccf
    rst $30
    ld [c], a
    ccf
    ld hl, sp+$68
    and l
    rst $38
    rlca
    ld hl, sp-$01
    rst $30
    ld b, h
    rst $38
    sbc h
    ldh [$e5], a
    ld c, $ff
    rst $38
    ccf
    and a
    rst $38
    rra
    cp $30
    add $f0

jr_036_5321:
    add l
    add b

Call_036_5323:
jr_036_5323:
    db $10
    db $e3
    add hl, bc
    ld a, [de]
    cp $e0
    ld a, [c]
    jr c, jr_036_52ec

    ld a, [c]
    rra
    ld a, [$3aa3]
    rst $00
    ld a, [$fea3]
    ld a, [hl-]
    rst $00
    jp $e740


    jr nz, jr_036_5323

    jr nz, jr_036_5321

    rst $28
    ld h, b
    ld hl, sp+$10
    rst $38
    ld a, $c0
    sbc a
    ldh a, [rPCM12]
    rst $28
    inc bc
    rst $30
    inc bc
    push hl
    or [hl]
    and b
    dec b
    rlca
    ld hl, sp-$03
    rrca
    cp $e1
    adc a
    rst $38
    inc a
    rst $38
    ld c, h
    rst $38
    rst $30
    ld [c], a
    rst $38
    add h
    xor [hl]
    and b
    ldh [rIE], a
    sbc b
    rst $38
    rst $38
    rra
    db $fc
    rst $38
    ldh a, [$7f]
    ld hl, sp+$3f
    db $fc
    ld a, a
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    inc d
    ret nz

    and $f7
    sbc b
    ldh a, [$1f]
    cp $e0
    ccf
    ldh [rPCM12], a
    inc bc
    ld a, a
    db $f4
    rlca
    db $e4
    rlca
    ld [$080f], sp
    jp nz, $d7e2

    db $fc
    rlca
    jr c, jr_036_5401

    and b
    ld e, $bc
    ldh [$f8], a
    rst $38
    ld e, a
    ld a, b
    rst $38
    ld a, h
    rst $38
    jr z, jr_036_5321

    ret nz

    ld a, h
    ld l, b
    and b
    ld [hl], a
    ld b, a
    rst $38
    ld hl, $c078
    rlca
    rst $38
    add hl, de
    add b
    ldh [rIE], a
    rst $00
    ret nz

    rst $20
    and b
    db $e3
    and b
    ld hl, sp-$60
    rlca
    rst $38
    ret nc

    ccf
    cp h
    ldh [$8a], a
    and e
    cp d
    and a
    adc d
    and e
    cp d
    and a
    ldh [$8a], a
    and e
    cp d
    and a
    adc d
    and d
    add [hl]
    and e
    cp d
    and d
    ld hl, sp+$0f
    db $fd
    jp $fd07


    add b
    and c
    cp $e1
    ld d, h
    add b
    rrca
    add c
    inc e
    rst $38
    ld a, a
    adc [hl]
    rst $38
    add $ff
    ldh a, [rIE]
    rst $28
    ld a, b
    and b
    jp hl


    inc b
    ld d, e
    jp $e0fe


    ccf
    sub l
    ld h, b
    rst $30
    ccf
    ccf
    db $e3
    ldh [$3f], a
    ld a, [hl]
    and e
    ld a, h
    and h
    sbc a
    add c
    jr c, @+$01

jr_036_5401:
    ld [hl], c
    ei
    rst $38
    ld h, e
    or a
    add b
    rst $38
    rst $38
    ei
    rst $28
    rra
    sbc a
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$28], a
    and b
    ld e, b
    and l
    ei
    inc hl
    rst $38
    ld a, a
    cp $e2
    ld h, a
    and h
    ld a, [hl-]
    and b
    cp $fe
    ld [c], a
    ld d, a
    and h
    inc sp
    rst $18
    rst $30
    ldh [$e4], a
    sbc $e4
    ld a, [$e27e]
    jp hl


    ldh [$e0], a
    db $fd
    ld a, [hl]
    jp nz, $ffe9

    rst $38
    ld [hl], a
    inc bc
    db $fd
    rrca
    rst $38
    di
    ld e, $27
    dec a
    daa
    dec a
    rst $20
    dec a
    rst $30
    di
    ld e, $ff
    or e
    ldh [$e0], a
    rst $38
    sbc c
    rst $38
    ld e, l
    dec b
    and d
    add b
    rlca
    rst $38
    adc l
    di
    ld b, b
    ld a, a
    adc $80
    ld [hl], a
    sbc c
    rst $38
    and b
    cp $e0
    ldh [rIE], a
    or c
    db $e3
    ld b, b
    rst $38
    jp $b7c0


    ldh a, [$cf]
    ld a, b
    rst $20
    cp h
    rst $38
    db $e4
    cp h
    rst $20
    cp h
    rst $08
    ld a, b
    rst $38
    rst $38
    nop
    nop
    nop
    bit 2, h
    add hl, sp
    ld d, l
    cp [hl]
    ld d, l
    inc l
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    ld d, [hl]
    dec c
    ld d, a
    ld l, l
    ld d, a
    call Call_000_0057
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld e, b
    sub a
    ld e, b
    ld bc, $6d59
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    reti


    ld e, c
    ld b, a
    ld e, d
    or l
    ld e, d
    inc hl
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc l
    ld e, e
    db $ec
    ld e, e
    ld c, c
    ld e, h
    and [hl]
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    nop
    ld bc, $0202
    ld [bc], a
    inc bc
    rst $38
    inc bc
    inc bc
    inc b
    dec b
    rlca
    ld [$0909], sp
    rst $38
    add hl, bc
    ld b, $06
    ld b, $0a
    dec bc
    rlca
    ld b, $ff
    inc c
    add hl, bc
    dec c
    ld c, $06
    rrca
    add hl, bc
    dec bc
    rst $38
    ld [de], a
    ld b, $08
    inc de
    inc d
    dec d
    ld d, $0a
    rst $38
    add hl, bc
    rla
    dec bc
    dec de
    ld b, $1c
    dec e
    ld e, $ff
    rra
    add hl, bc
    jr nz, @+$09

    dec h
    add hl, bc
    dec de
    ld h, $ff
    daa
    jr z, jr_036_5545

    jr nz, jr_036_5524

    ld a, [hl+]
    rlca
    cpl
    rst $38
    jr nc, jr_036_553f

jr_036_5524:
    ld sp, $3332
    inc [hl]
    dec [hl]
    dec bc
    rst $38
    nop
    inc bc
    inc bc
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a

jr_036_553f:
    dec l
    rst $38
    ldh [$f6], a
    and $0d

jr_036_5545:
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    db $e4
    call z, $e2e1
    pop hl
    call z, $eee3
    push bc
    ldh [$6d], a
    ld c, l
    ld c, l
    cp h
    pop hl
    ld c, l
    ld c, l
    ld l, l
    rst $38
    dec b
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rst $38
    ld bc, $0b00
    ld a, [bc]
    ld b, $42
    ld b, $09
    rst $38
    ld b, e
    add hl, bc
    ld [$0b07], sp
    add hl, bc
    rrca
    ld b, h
    rst $38
    ld b, l
    ld b, [hl]
    ld b, a
    inc c
    ld b, $07
    rla
    add hl, bc
    rst $38
    ld a, [bc]
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld [$1206], sp
    rst $38
    rlca
    jr nz, jr_036_559b

    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld b, $ff
    dec de
    dec bc
    ld a, [hl+]

jr_036_559b:
    ld b, $20
    ld a, [bc]
    ld e, c
    ld e, d
    rst $38
    ld e, e
    dec de
    add hl, bc
    dec h
    dec bc
    dec [hl]
    inc [hl]
    jr nz, @+$01

    ld h, b
    ld h, c
    ld h, d
    jr nc, jr_036_55de

    rlca
    dec b
    ld [bc], a
    rst $38
    ld [bc], a
    ld h, a
    ld l, b
    ld l, c
    ld a, [hl-]
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    nop
    ld bc, $0202
    ld [bc], a
    inc bc
    rst $38
    inc bc
    inc bc
    inc b
    dec b
    rlca
    ld [$0909], sp

jr_036_55de:
    rst $38
    add hl, bc
    ld b, $06
    ld b, $0a
    dec bc
    rlca
    ld b, $ff
    inc c
    add hl, bc
    db $10
    ld de, $0f06
    add hl, bc
    dec bc
    rst $38
    ld [de], a
    ld b, $08
    jr @+$1b

    ld a, [de]
    ld b, $0a
    rst $38
    add hl, bc
    rla
    dec bc
    dec de
    ld b, $21
    ld [hl+], a
    inc hl
    rst $38
    inc h
    add hl, bc
    jr nz, jr_036_560e

    dec h
    add hl, bc
    dec de
    dec hl
    rst $38
    inc l
    dec l

jr_036_560e:
    ld l, $20
    ld b, $2a
    rlca
    cpl
    rst $38
    jr nc, jr_036_564d

    scf
    jr c, jr_036_5653

    inc [hl]
    dec [hl]
    dec bc
    rst $38
    nop
    inc bc
    inc bc
    ld a, $3f
    ld b, b
    ld b, c
    ld [bc], a
    inc bc
    ld [bc], a
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    add sp, -$1e
    pop hl
    jp $c5e3


    ldh [$f7], a
    ld l, l
    ld c, l
    ld c, l

jr_036_564d:
    cp c
    pop hl
    ld c, l
    ld c, l
    ld l, l
    dec b

jr_036_5653:
    rst $38
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $00ff
    dec bc
    ld a, [bc]
    ld b, $06
    ld b, $09
    add hl, bc
    rst $38
    add hl, bc
    ld [$0b07], sp
    add hl, bc
    rrca
    ld b, $48
    rst $38
    ld c, c
    add hl, bc
    inc c
    ld b, $07
    rla
    add hl, bc
    ld a, [bc]
    rst $38
    ld c, [hl]
    ld c, a
    ld d, b
    add hl, bc
    ld [$1206], sp
    rlca
    rst $38
    jr nz, jr_036_568c

    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld b, $1b
    rst $38
    dec bc
    ld a, [hl+]

jr_036_568c:
    ld b, $20
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    rst $38
    dec de
    add hl, bc
    dec h
    dec bc
    dec [hl]
    inc [hl]
    ld h, e
    ld h, h
    rst $38
    ld h, l
    ld h, [hl]
    jr nc, jr_036_56cf

    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld a, a
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    db $e3
    ld h, b
    db $dd
    push hl
    rst $38
    pop hl
    ldh a, [$e2]
    push af
    db $e4
    or $f2
    nop
    ld bc, $e4ff
    rst $30
    nop
    inc bc
    inc b

jr_036_56cf:
    rst $38
    db $e4
    inc bc
    dec b
    ld b, $06
    or a
    ld b, $07
    ld [$e0fb], sp
    dec b
    add hl, bc
    db $ec
    ldh [$0a], a
    rst $38
    dec bc
    inc c
    inc b
    inc b
    add hl, bc
    dec c
    ld b, $06
    ld a, a
    ld c, $0f
    db $10
    ld de, $0606
    dec c
    ret c

    pop hl
    ld [hl], a
    ld [de], a
    inc de
    inc d
    ret c

    db $e4
    dec d
    ld d, $17
    ret c

    ldh [rIE], a
    jr jr_036_571a

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    add hl, de
    inc bc
    add hl, de
    jr jr_036_570b

jr_036_570b:
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl

jr_036_571a:
    ld h, b
    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $f2
    nop
    ld bc, $e4ff
    rst $30
    nop
    inc bc
    inc b
    rst $38
    db $e4
    inc bc
    dec b
    ld b, $06
    rst $30
    ld b, $1e
    rra
    ei
    ldh [rTIMA], a
    add hl, bc
    inc b
    inc b
    rst $30
    inc h
    dec h
    ld h, $e7
    ldh [$09], a
    dec c
    ld b, $06
    ld a, a
    dec l
    ld l, $2f
    jr nc, jr_036_5753

    ld b, $0d
    ret c

    ldh [$ef], a
    add hl, sp

jr_036_5753:
    ld a, [hl-]
    dec sp
    inc a
    ret c

    db $e3
    ld b, l
    ld b, [hl]
    ld b, a
    db $fd
    ld c, b
    ret c

    ldh [rNR23], a
    add hl, de
    add hl, de
    ld d, c
    ld d, d
    ld d, e
    rrca
    ld d, h
    add hl, de
    add hl, de
    jr jr_036_576b

jr_036_576b:
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ld h, b
    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $f2
    nop
    ld bc, $e4ff
    rst $30
    nop
    inc bc
    inc b
    rst $38
    db $e4
    inc bc
    dec b
    ld b, $06
    rst $30
    jr nz, jr_036_57b7

    ld b, $ff
    ldh [rTIMA], a
    add hl, bc
    inc b
    inc b
    rst $30
    daa
    jr z, @+$2b

    rst $20
    ldh [$09], a
    dec c
    ld b, $06
    ld a, a
    ld sp, $3332
    inc [hl]
    ld b, $06
    dec c
    ret c

    ldh [$ef], a
    dec a
    ld a, $3f
    ld b, b
    ret c

jr_036_57b7:
    db $e3
    ld c, c
    ld c, d
    ld c, e
    db $fd
    ld c, h
    ret c

    ldh [rNR23], a
    add hl, de
    add hl, de
    ld d, l
    ld d, [hl]
    ld d, a
    rrca
    ld e, b
    add hl, de
    add hl, de
    jr jr_036_57cb

jr_036_57cb:
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ld h, b
    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    or $f2
    nop
    ld bc, $e4ff
    rst $30
    nop
    inc bc
    inc b
    rst $38
    db $e4
    inc bc
    dec b
    ld b, $06
    rst $30
    ld [hl+], a
    inc hl
    ld b, $ff
    ldh [rTIMA], a
    add hl, bc
    inc b
    inc b
    rst $30
    ld a, [hl+]
    dec hl
    inc l
    rst $20
    ldh [$09], a
    dec c
    ld b, $06
    ld a, a
    dec [hl]
    ld [hl], $37
    jr c, jr_036_5813

    ld b, $0d
    ret c

    ldh [$ef], a
    ld b, c

jr_036_5813:
    ld b, d
    ld b, e
    ld b, h
    ret c

    db $e3
    ld c, l
    ld c, [hl]
    ld c, a
    db $fd
    ld d, b
    ret c

    ldh [rNR23], a
    add hl, de
    add hl, de
    ld e, c
    ld e, d
    ld e, e
    rrca
    ld e, h
    add hl, de
    add hl, de
    jr jr_036_582b

jr_036_582b:
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    or $e6
    db $ec
    rst $20
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld a, a
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    cp a
    nop
    inc b
    dec b
    ld b, $06
    dec b
    db $fc
    pop hl
    inc b
    rst $38
    rlca
    ld [$0909], sp
    ld a, [bc]
    dec bc
    add hl, bc
    add hl, bc
    rst $38
    ld [$0c07], sp
    dec c
    ld c, $0f
    db $10
    ld de, $0eef
    ld c, $0d
    inc c
    ld [c], a
    ldh [rNR12], a
    inc de
    inc d
    cp l
    dec d
    ld [c], a
    db $e3
    ld d, $17
    jr jr_036_5899

    ld [c], a
    db $e3
    ld a, [de]
    rst $30
    dec de
    inc e
    dec e
    ld [c], a
    ldh [rP1], a
    ld bc, $1f1e
    ccf
    jr nz, jr_036_58b1

    ld [hl+], a
    ld e, $01
    nop
    nop
    nop
    nop
    adc a
    dec c

jr_036_5899:
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    or $e6
    db $ec
    rst $20
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    rst $08

jr_036_58b1:
    db $e3
    ld a, a
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    cp a
    nop
    inc b
    dec b
    ld b, $06
    dec b
    db $fc
    pop hl
    inc b
    rst $38

jr_036_58c7:
    rlca
    ld [$2309], sp
    inc h
    dec h
    ld h, $09
    rst $38
    ld [$0c07], sp
    dec c
    ld c, $2a
    dec hl
    inc l
    rst $28
    dec l
    ld c, $0d
    inc c
    ld [c], a
    ldh [$35], a
    ld [hl], $37
    cp l
    jr c, jr_036_58c7

    db $e3
    ld b, c
    ld b, d
    ld b, e
    add hl, bc
    ld [c], a
    db $e3
    ld c, [hl]
    rst $30
    ld c, a
    ld d, b
    ld c, $e2
    ldh [rP1], a
    ld bc, $571e
    ccf
    ld e, b
    ld e, c
    ld [hl+], a
    ld e, $01
    nop
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    or $e6
    db $ec
    rst $20
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    rst $08
    db $e3
    ld a, a
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    cp a
    nop
    inc b
    dec b
    ld b, $06
    dec b
    db $fc
    pop hl
    inc b
    rst $38
    rlca

jr_036_5932:
    ld [$2709], sp
    jr z, jr_036_5960

    add hl, bc
    add hl, bc
    rst $38
    ld [$0c07], sp
    dec c
    ld c, $2e
    cpl
    jr nc, jr_036_5932

    ld sp, $0d0e
    inc c
    ld [c], a
    ldh [$39], a
    ld a, [hl-]
    dec sp
    ld a, l
    inc a
    ld [c], a
    ld [c], a
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld [c], a
    ld [c], a
    rst $18
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld c, $e2
    ldh [rP1], a

jr_036_5960:
    ld bc, $1eff
    rra
    jr nz, jr_036_5987

    ld [hl+], a
    ld e, $01
    nop
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    or $e6
    db $ec
    rst $20
    ld [c], a
    db $f4
    ld c, l
    ld c, l
    rst $08

jr_036_5987:
    db $e3
    ld a, a
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    cp a
    nop
    inc b
    dec b
    ld b, $06
    dec b
    db $fc
    pop hl
    inc b
    rst $38
    rlca
    ld [$2709], sp
    jr z, jr_036_59cc

    add hl, bc
    add hl, bc
    rst $38
    ld [$0c07], sp
    dec c
    ld c, $2e
    ld [hl-], a
    inc sp
    rst $28
    inc [hl]
    ld c, $0d
    inc c
    ld [c], a
    ldh [$3d], a
    ld a, $3f
    ld a, l
    ld b, b
    ld [c], a
    ld [c], a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld [c], a
    ld [c], a
    rst $18
    ld d, l
    ld d, [hl]
    ld d, e
    ld d, h
    ld c, $e2
    ldh [rP1], a

jr_036_59cc:
    ld bc, $1eff
    rra
    jr nz, jr_036_59f3

    ld [hl+], a
    ld e, $01
    nop
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    add b
    ei
    pop hl
    cp $e3
    rst $30
    ld [c], a
    add sp, -$1d
    db $ec
    push hl
    ld [c], a
    db $ed
    db $ec

jr_036_59f3:
    db $e4
    ld c, l
    db $fd
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    db $fd
    ld bc, $e1fc
    nop
    inc b
    dec b
    ld b, $06
    dec b
    cp $fc
    pop hl
    inc b
    rlca
    ld [$0909], sp
    ld a, [bc]
    dec bc
    rst $38
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    ld c, $0f
    rrca
    cp a
    db $10
    ld de, $0f12
    ld c, $0d
    ld [c], a
    ldh [rNR13], a
    rst $30
    inc d
    dec d
    ld d, $e2
    db $e3
    rla
    jr jr_036_5a48

    ld a, [de]
    sbc $e2
    db $e3
    dec de
    inc e
    dec e
    ld e, $e2
    ldh [rP1], a
    ld bc, $1fff
    jr nz, jr_036_5a60

    ld [hl+], a
    inc hl
    rra
    ld bc, $0000
    nop
    nop
    adc a

jr_036_5a48:
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    add b
    ei
    pop hl
    cp $e3
    rst $30
    ld [c], a
    add sp, -$1d
    db $ec
    push hl
    ld [c], a
    db $ed

jr_036_5a60:
    db $ec
    db $e4
    ld c, l
    db $fd
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    db $fd
    ld bc, $e1fc
    nop
    inc b
    dec b
    ld b, $06
    dec b
    cp $fc
    pop hl
    inc b
    rlca
    ld [$0909], sp
    ld a, [bc]
    dec bc
    rst $38
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    ld c, $0f
    rrca
    cp a
    db $10
    dec h
    ld [de], a
    rrca
    ld c, $0d
    ld [c], a
    ldh [rNR13], a
    rst $30
    inc d
    ld a, [hl+]
    dec hl
    ld [c], a
    db $e3
    ld [hl-], a
    inc sp
    add hl, de
    inc [hl]
    sbc $e2
    db $e3
    dec sp
    inc a
    dec e
    ld e, $e2
    ldh [rP1], a
    ld bc, $1fff
    jr nz, jr_036_5ace

    ld [hl+], a
    inc hl
    rra
    ld bc, $0000
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    add b
    ei
    pop hl
    cp $e3
    rst $30
    ld [c], a
    add sp, -$1d
    db $ec
    push hl
    ld [c], a
    db $ed

jr_036_5ace:
    db $ec
    db $e4
    ld c, l
    db $fd
    ld c, l
    rst $08
    db $e3
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    db $fd
    ld bc, $e1fc
    nop
    inc b
    dec b
    ld b, $06
    dec b
    cp $fc
    pop hl
    inc b
    rlca
    ld [$0909], sp
    ld a, [bc]
    dec bc
    rst $38
    add hl, bc
    add hl, bc
    ld [$0d0c], sp
    ld c, $0f
    rrca
    cp a
    db $10
    dec h
    ld [de], a
    rrca
    ld c, $0d
    ld [c], a
    ldh [rNR13], a
    rst $30
    inc d
    inc l
    dec l
    ld [c], a
    db $e3
    ld [hl-], a
    inc sp
    dec [hl]
    ld [hl], $de
    ld [c], a
    db $e3
    dec sp
    inc a
    dec e
    ld e, $e2
    ldh [rP1], a
    ld bc, $1fff
    jr nz, jr_036_5b3c

    ld [hl+], a
    inc hl
    rra
    ld bc, $0000
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    rst $30
    rst $20
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l

jr_036_5b3c:
    rst $08
    db $e3
    ld a, a
    ld c, l
    ld l, l
    nop
    ld bc, $0202
    ld bc, $e1fc
    cp a
    nop
    inc b
    dec b
    ld b, $06
    dec b
    db $fc
    pop hl
    inc b
    rst $38
    rlca

jr_036_5b54:
    ld [$0909], sp
    ld a, [bc]
    inc h
    add hl, bc
    add hl, bc
    rst $38
    ld [$0d0c], sp
    ld c, $0f
    ld h, $27
    jr z, jr_036_5b54

    add hl, hl
    rrca
    ld c, $0d
    ld [c], a
    ldh [$2e], a
    cpl
    jr nc, @-$41

    ld sp, $e3e2
    scf
    jr c, @+$3b

    ld a, [hl-]
    ld [c], a
    db $e3
    dec a
    rst $30
    ld a, $1d
    ccf
    ld [c], a
    ldh [rP1], a
    ld bc, $201f
    ccf
    ld hl, $2322
    rra
    ld bc, $0000
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    nop
    ld bc, $0302
    ld bc, $fc7e
    pop hl
    nop
    dec b
    ld b, $07
    ld [$fc09], sp
    pop hl
    rst $38
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    dec c
    rst $38
    dec c
    db $10
    ld de, $0605
    ld [de], a
    inc de
    inc d
    rst $18
    dec d
    ld d, $17
    add hl, bc
    ld a, [bc]
    ld [c], a
    ldh [rNR23], a
    add hl, de
    ld a, e
    ld a, [de]
    dec de
    ld [c], a
    db $e3
    inc e
    dec e
    ld e, $1f
    ld [c], a
    db $e3
    rst $28
    jr nz, jr_036_5bfb

    ld [hl+], a
    inc hl
    ld [c], a
    ldh [rP1], a
    ld bc, $7f24
    dec h
    ld h, $27
    jr z, jr_036_5c10

    ld bc, $0000
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a

jr_036_5bfb:
    push af
    ret c

    and $6d
    nop
    ld bc, $0302
    ld bc, $fc7e
    pop hl
    nop
    dec b
    ld b, $07
    ld [$fc09], sp
    pop hl
    cp a

jr_036_5c10:
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    db $10
    db $fc
    pop hl
    ld de, $05ff
    ld b, $12
    ld a, [hl+]
    dec hl
    inc l
    dec l
    rla
    ld a, e
    add hl, bc
    ld a, [bc]
    ld [c], a
    ldh [$34], a
    dec [hl]
    ld [hl], $37
    ld [c], a
    db $e3
    rst $28
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [c], a
    db $e3
    rla
    ld c, d
    ld c, e
    db $fd
    ld [de], a
    ld [c], a
    ldh [rP1], a
    ld bc, $4f24
    ld d, b
    ld d, c
    rrca
    ld d, d
    add hl, hl
    ld bc, $0000
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    nop
    ld bc, $0302
    ld bc, $fc7e
    pop hl
    nop
    dec b
    ld b, $07
    ld [$fc09], sp
    pop hl
    cp a
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    db $10
    db $fc
    pop hl
    ld de, $05ff
    ld b, $12
    ld l, $2f
    jr nc, jr_036_5cab

    rla
    ld a, e
    add hl, bc
    ld a, [bc]
    ld [c], a
    ldh [$38], a
    add hl, sp
    ld a, [hl-]
    dec sp
    ld [c], a
    db $e3
    rst $28
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [c], a
    db $e3
    rla
    ld c, h
    ld c, l
    db $fd
    ld [de], a
    ld [c], a
    ldh [rP1], a
    ld bc, $4f24
    ld d, b
    ld d, c
    rrca
    ld d, d
    add hl, hl
    ld bc, $0000
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l

jr_036_5cab:
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    sub b
    call nc, $d3e5
    db $e3
    ld [c], a
    ld [c], a
    ret z

    ldh [rKEY1], a
    rst $38
    ldh [$d0], a
    db $e4
    ld l, l
    rst $18
    nop
    ld bc, $0302
    ld bc, $e1fc
    nop
    dec b
    rst $28
    ld b, $07
    ld [$fc09], sp
    pop hl
    ld a, [bc]
    dec bc
    inc c
    rst $30
    dec c
    dec c
    db $10
    db $fc
    pop hl
    ld de, $0605
    ld [de], a
    ld a, a
    ld a, [hl+]

Jump_036_5ce2:
    ld sp, $3332
    rla
    add hl, bc
    ld a, [bc]
    ld [c], a
    ldh [$ef], a
    inc a
    dec a
    ld a, $3f
    ld [c], a
    db $e3
    ld b, a
    ld b, [hl]
    ld c, b
    cp l
    ld c, c
    ld [c], a
    db $e3
    rla
    ld c, [hl]
    ld c, h
    ld [de], a
    ld [c], a
    ldh [rP1], a
    rst $38
    ld bc, $4f24
    ld d, b
    ld d, c
    ld d, d
    add hl, hl
    ld bc, $0001
    nop
    nop
    nop
    jr nz, jr_036_5d6c

    db $10
    ld h, d
    sub b
    ld h, l
    ldh [rBCPD], a
    ldh [$6d], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rst $38
    rst $38
    add b
    rst $38
    ld_long $ffff, a
    rst $38
    nop
    dec d
    ld a, a
    cp $e0
    ccf
    cp $e0
    rra
    cp $e0
    ldh a, [$e1]
    cp $e9
    cp $d2
    db $eb
    add b
    add b
    rrca
    nop
    rrca
    nop
    rlca
    jp z, $e0fe

    inc bc
    cp $e0
    ld bc, $e0fe
    jp nc, $ffeb

    nop
    ldh a, [rIE]
    db $ed
    or d
    pop hl
    and b
    jp hl


    add d
    pop hl
    ret nz

    add b
    ldh [$80], a
    rst $38
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    add b
    cp $80
    db $fd
    rst $38
    cp $ec
    nop
    nop
    add b

jr_036_5d6c:
    nop
    ret nz

    nop
    rst $38
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    ei
    cp $00
    ldh [$e5], a
    cp a
    add b
    adc a
    add b
    add e

jr_036_5d82:
    ld a, [bc]
    ld b, l
    ldh [$3f], a
    add b
    ldh [$03], a
    and b
    db $ec
    ld c, [hl]
    pop hl
    add sp, -$13
    add d
    db $e4
    jr nz, @+$23

    pop hl
    ld e, b
    ld [c], a
    ld d, b
    pop hl
    ld c, b
    pop hl
    db $10
    ldh [rSB], a
    cp $e9
    jr nc, jr_036_5d82

    ret nz

    ld [$00e1], sp
    pop hl
    ld hl, sp-$3f
    ccf
    pop hl
    ret nc

    ld [$e0d2], a
    db $fd
    ld bc, $f9ff
    ld bc, $01f1
    pop hl
    ld bc, $01c1
    ld d, a
    add c
    ld bc, $6cff
    ldh [$fc], a
    ld h, h
    ldh [$f0], a
    ld e, h
    ldh [$f5], a
    ret nz

    ld d, h
    ldh [rSB], a
    rst $38
    db $e4
    inc bc
    ld bc, $010f
    add hl, hl
    ccf
    and [hl]
    ldh [rIE], a
    push bc
    inc bc
    ret c

    ret nz

    ccf
    or [hl]
    ret nz

    ld hl, sp-$1b
    cp [hl]
    cp $f0
    inc e
    di
    ld e, $f9
    rra
    sub d
    jp z, Jump_036_7b0f

    pop af
    ccf
    cp a
    ret


    ldh [$e0], a
    add hl, de
    ld sp, hl
    xor a
    ret


    rst $28
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [$9f]
    ret


    ld e, $1e
    ld de, $1f7d
    adc a
    rst $00
    rrca
    rrca
    ld sp, $c03f
    ld b, d
    ret


    ld e, a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    ld h, b
    call z, $2278
    ret z

    adc a
    inc c
    ei
    ld e, $f1
    ret nz

    add sp, -$62
    db $e3
    or [hl]
    db $e3
    db $10
    rst $38
    rra
    inc a
    ccf
    ld hl, $393f
    ccf
    ld a, l
    rst $30
    ld l, a
    ld c, $0e
    xor d
    pop hl
    sbc l
    rst $38
    cp a
    ld [c], a
    rst $08
    ld a, a
    ret nz

    ld a, a
    ret c

    ld d, d
    ret nz

    xor d
    ld [c], a
    rst $20
    rst $38
    rst $38
    di
    rra
    ld a, [$fd0f]
    rst $00
    db $fd
    rlca
    cp $d2
    and h
    ldh a, [rIF]
    ld hl, sp+$3f
    ld hl, sp+$0f
    cp $ff
    rra
    push af
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$1f
    xor a
    pop hl
    ccf
    rst $38
    ccf
    sbc b
    jp nz, $c403

    rst $20
    ld a, a
    ld a, l
    ret nz

    inc d
    pop bc
    ld b, $ff
    db $e4

jr_036_5e6c:
    rst $38
    ld a, [c]
    call nz, $ffe0
    ld sp, hl
    rst $08
    ld sp, hl
    rrca
    db $fd
    rlca
    db $fd
    ld h, a
    cp a
    jr nc, jr_036_5e6c

    ld [$10f8], sp
    ldh a, [$fa]
    pop hl
    ld hl, sp-$03
    ld hl, sp+$04
    ret nz

    add b
    jr jr_036_5ea9

    jr nz, jr_036_5ecb

    ld de, $1f5b
    add hl, sp
    add d
    ldh [$1f], a
    rra
    xor d
    ret nz

    ld [bc], a
    jp nz, $c7eb

    rst $38
    ld h, b
    rst $20
    jp nz, $c4e4

    ldh [$c2], a
    ldh [rIE], a
    jp nc, $8feb

    ld hl, sp+$1a

jr_036_5ea9:
    pop hl
    rrca
    ld a, [$c7e0]
    db $fc
    rst $38
    rst $38
    db $fc
    rst $38
    ld b, b
    jp hl


    ccf
    ldh [$3f], a
    ld hl, sp-$43
    rra
    ld a, d
    pop hl
    db $fd
    rrca
    rst $38
    inc bc
    inc d
    ret nz

    ld c, $df
    pop af
    cp a
    jp nz, $82ff

    sbc c

jr_036_5ecb:
    and b
    dec a
    rst $38
    rst $28
    ld a, a
    jp nz, $c07f

    xor h
    pop bc
    ld b, $ff
    inc b
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    rst $38
    pop af
    rra
    ld sp, hl
    rst $38
    rrca
    sub b
    ldh a, [$38]
    ld hl, sp+$08
    ld hl, sp+$38
    cp $7c
    ldh [$08], a
    ld hl, sp+$78
    ld hl, sp-$40

jr_036_5ef2:
    ret nz

    ld a, a
    rst $38
    dec hl
    rst $38
    adc e
    rst $38
    or d
    rst $38
    jp Jump_036_7f7f


    ld b, [hl]

Call_036_5eff:
    ccf
    dec sp
    rra
    ld de, $101f
    ld h, b
    and b
    rst $38
    or b
    rst $38
    add sp, -$01
    ld e, b
    rst $38
    sbc h
    sbc a
    rst $08
    ldh [rIE], a
    adc a
    db $fc
    ld c, $e0
    adc d
    pop hl
    rst $38
    ld [hl], c
    rst $38
    rst $38
    ld h, d
    rst $08
    ld [hl-], a
    rst $38
    add e
    rst $38
    add a
    rst $38
    cp a
    push af
    rst $38
    db $e3
    rst $38
    pop de
    rst $38
    ld h, c
    rst $38
    rst $38
    ld d, d
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    ld [$a7fe], sp
    ldh [$03], a
    ld a, a
    ld [bc], a
    ld a, a
    dec b
    ccf
    ld a, [bc]
    rst $38
    ccf
    ld a, [de]
    ccf
    ld a, [hl+]
    ld a, a
    ld c, [hl]
    rst $38
    ld h, b
    cp a
    rst $38
    jr c, @+$01

    add b
    sbc a
    db $e4
    jr jr_036_5ef2

    ld b, a
    di
    cp $23
    ret z

    ldh [$c4], a
    push hl

jr_036_5f5a:
    inc bc
    db $fc
    add h
    db $fc
    rst $38
    adc h
    rst $38
    inc sp
    ret nz

    ld b, b
    ret nz

    ld b, b
    pop bc
    rst $38
    ld b, b
    add c
    add b
    inc bc
    nop
    dec sp
    jr c, jr_036_5fef

    rst $38
    ld b, h
    rst $38
    and h
    inc bc
    inc bc
    inc bc
    ld [bc], a
    pop hl
    rst $38
    ld h, c
    ldh a, [$50]
    ld hl, sp+$28
    db $fc
    ld d, h
    cp $f7
    sbc [hl]
    rst $38
    or e
    jp nz, Jump_036_7fe5

    ld b, a
    ccf
    jr nz, @-$0f

    ld a, a
    ld a, b
    rst $38
    or a
    add [hl]
    and $04
    rst $38
    inc c
    ei
    rst $38
    inc sp
    db $76
    ldh [rLCDC], a
    rst $38
    ld b, b
    cp $80
    cp $6c
    and b
    inc e
    cp $22
    cp $52
    cp $d2
    ld a, h
    adc h
    pop bc
    add b
    ldh [$03], a
    ccf
    ld [bc], a
    ccf
    ld bc, $8230
    ld d, l
    sbc b
    sbc [hl]
    add d
    nop
    ld a, b
    ldh [$b8], a
    sub h
    add b
    ld [hl], h
    ld c, h
    jp nz, $0275

    db $fc
    add b
    ld [hl-], a
    rst $38
    ret nz

    inc bc
    db $fc
    db $f4
    adc h
    pop bc
    cp l
    pop bc
    ld a, [hl]
    ldh [$c3], a
    ld b, b
    add e
    add b
    jr z, jr_036_5f5a

    rrca
    rst $38
    ld [$090f], sp
    add a
    ld b, $87
    inc b
    jp $02cf


    pop bc
    ld bc, $78e0
    add b
    dec d
    ret nz

    inc sp
    rst $38
    rst $38

jr_036_5fef:
    ld e, h
    rst $38
    ld d, a
    rst $38
    ld d, l

jr_036_5ff4:
    rst $38
    ld c, b
    rst $38
    ld [hl], l
    rst $00
    ld d, d
    add b
    adc a
    or a
    ret nz

    ret z

Jump_036_5fff:
    rst $38
    jr z, jr_036_5ff4

    ldh [$f7], a
    add h
    rst $38
    dec b
    sbc [hl]
    ret nz

    db $10
    rst $38
    db $10
    cp $ff
    and b
    cp $60
    db $fc
    jr nz, @-$02

    ret nz

    ld hl, sp-$02
    ld c, h
    add b
    ld a, a
    ld e, c
    ccf
    cpl
    rra
    add hl, de
    rra
    db $fd
    db $10
    cp b
    ldh [$08], a
    rlca
    inc b
    inc bc
    inc bc
    rst $38
    ld a, l
    cp h
    ld e, d
    ldh [$2a], a
    rst $38
    and h
    rst $38
    ld h, e
    ld d, [hl]
    ldh [$fd], a
    ret nz

    ld d, d
    ldh [$d2], a
    rst $38
    ld [de], a
    rst $38
    and d
    rst $38
    ld sp, hl
    ld b, d
    ld l, l
    ret nz

    ld a, b
    add e
    and h
    rst $38
    ld h, h
    rst $38
    ld b, h
    ld a, [$e064]
    adc b
    cp $e1
    ld a, a
    ld [hl], b
    rst $38
    ld e, a
    rst $38
    ld [hl], l
    ld sp, $e0ac
    ld [$c0b6], sp
    inc b
    rst $38
    inc bc
    nop
    add b
    cp l
    ld sp, $e7c2
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    jp nz, Jump_000_01ec

    cp a
    cp $32
    cp $62
    db $fc
    ld e, h
    or h
    ret nz

    add h
    sbc a
    ld hl, sp-$78
    ldh a, [rSVBK]
    add b
    ld h, d
    ld h, b
    ld h, b
    ld h, b
    ld bc, $07ed
    ld [hl], b
    add b
    inc bc
    ld bc, $6060
    ld bc, $4fff
    ei
    rst $38
    adc d
    cp $e0
    add a
    rst $38
    ld b, a
    rst $38
    cp l
    cp [hl]
    ld h, $c0
    ld [$0efe], sp
    rst $38
    adc l
    sub h
    ld [c], a

Call_036_60a0:
    ld [$e6ee], sp
    ret nz

    push hl
    rst $38
    add l
    jr nc, jr_036_610a

    sbc a
    add b
    sbc a
    and [hl]
    and b
    ld h, b
    cp a
    add b
    ld hl, sp+$41
    ld [hl], b
    ld h, e
    ld a, a
    sub l
    pop hl
    ld a, a

jr_036_60b9:
    rst $08
    ld b, d
    ld a, a
    add e
    rst $38
    rst $10
    and b
    cp $e1
    cp $03
    rrca
    cp $01
    rst $38
    add c
    rla
    and c
    ld b, $82
    inc b
    add c
    ld [bc], a
    add c
    sbc $c0
    ld b, b
    ld b, b
    rst $38
    ccf
    ld h, b
    cp $e0
    ld hl, $af3f
    ld b, c
    ld a, a
    ld a, a
    ld a, a
    ret nc

    and b
    ld bc, $619f
    nop
    call z, $c069
    and l
    ld b, c
    rst $38
    jp Jump_036_64d0


    db $10
    ld h, b
    ld h, b
    ret nz

    rst $38
    ret nz

    ret nz

    add b
    nop
    ccf
    ccf
    jr nz, jr_036_613c

    rst $38
    and b

Jump_036_60ff:
    ccf
    and c
    ccf
    pop bc
    ld a, a
    rst $38
    ld a, a
    cp h
    call nz, $d2c1

jr_036_610a:
    jp hl


    cp $c2
    rst $38
    jp Jump_036_6152


    add e
    ld a, a
    add b
    add a
    add b
    ld c, a
    ret nz

    rst $18
    ret nz

    ld l, [hl]
    ld h, c
    jp hl


    ld bc, $608c
    ldh a, [rWY]
    ld [$c008], sp
    sbc a
    ld [hl], b
    ld a, a
    adc c
    jr nz, jr_036_60b9

    db $e4
    ld a, h
    and b
    ld b, e
    adc [hl]
    ld [$6560], a
    sbc h
    ld b, b
    ld b, b
    cp $8e
    ldh [rIE], a
    rst $38
    ccf

jr_036_613c:
    ld hl, $21bf
    cp a
    db $dd
    ccf
    ld e, [hl]
    and b
    ld h, e
    call c, Call_036_6c7f
    ld [c], a
    add d
    cp $ff
    add [hl]
    rst $38
    ld a, e
    rst $38
    ld b, c
    rst $38

Jump_036_6152:
    and c
    cp $df
    cp a
    ldh [$bf], a
    add b
    add b
    db $e4
    ld b, c
    rlca
    nop
    adc a
    adc a
    add b
    ld e, a
    ret nz

    sbc [hl]
    ret nz

    adc h
    ldh [$a0], a
    ld b, b
    ld bc, $02f7
    inc bc
    ld [bc], a
    ld [hl], a
    and c
    inc bc
    rst $38
    rst $38
    rra
    push bc
    rra
    inc h
    add c
    rlca
    adc $80
    rst $20
    ld hl, $20d2
    rst $00
    cp a
    rst $38
    cp c
    cp a
    and c
    cp a
    cp a
    or b
    cp a
    and b
    cp a
    cp a
    ldh a, [$9f]
    rst $38
    rst $38
    add e
    ld d, [hl]
    ldh [$7f], a
    ld a, a
    ret nz

    cp a
    ldh [$7f], a
    ldh [$3f], a
    ldh [rNR34], a
    add b
    ld e, a
    rst $38
    ret nz

    nop
    pop af
    ld bc, $c0d3
    inc bc
    ld b, h
    ret nz

    db $f4
    add d
    add c
    and c
    jr nz, @+$21

    ret nz

    ld [c], a
    db $e4
    rst $38
    rra
    rst $38
    db $dd
    ldh [$71], a
    ld b, c
    rst $38
    rst $38
    and c
    cp $e0
    cp a
    ldh a, [$ba]
    add h
    ldh [$90], a
    ret nz

    ldh [$fc], a
    add b
    ld [hl], b
    db $fd
    add b
    and b
    cp a
    ldh [$60], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ld d, d
    ld [c], a
    rst $38
    ld e, l
    rst $38
    sub b
    ld_long $ffc3, a
    db $fd
    sub b
    jp hl


    ret nz

    and $20
    jp hl


    db $fc
    ld e, [hl]
    daa
    and c
    and b
    jp $c068


    add c
    rst $38
    jp nz, Jump_036_7e37

    db $fc
    inc a
    jp nc, $ff20

    rst $28
    and [hl]
    pop hl
    ld a, h
    ld h, b
    rst $30
    rst $08

jr_036_61fc:
    rrca
    ret nc

    or [hl]

Jump_036_61ff:
    jr nz, @+$01

    rst $38
    ld a, h
    ret nz

    dec b
    ldh a, [$9d]
    add b
    add b
    xor b
    jr nz, jr_036_61fc

    inc hl
    nop
    nop
    nop
    ld e, a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    cp $e0
    ccf
    cp $e0
    xor a
    rra
    inc e
    ld d, e
    rra
    ldh a, [$e1]
    cp $fe
    ldh [$fc], a
    sbc $fe
    ldh [$fe], a
    ld c, $b1
    ccf
    ldh [$e9], a
    rst $38
    ldh [$7b], a
    add hl, de
    ld sp, hl
    ldh [$e9], a
    ld hl, sp+$70
    sub d
    ldh a, [$c0]
    and $7f
    ld bc, HeaderManufacturerCode
    rra
    inc bc
    ld b, d
    inc bc
    ret nz

    and $7f
    ldh [rNR33], a
    pop af
    adc [hl]
    rst $38
    ld e, b
    rst $38
    and b
    rst $20
    rst $20
    rst $38
    call c, $9323
    ldh [$c0], a
    ld [$be00], a
    cp [hl]
    rst $38
    ld e, b
    rra
    ld h, b
    ccf
    db $10
    rra
    add hl, de
    rra
    rst $38
    ld hl, $bf3f
    ccf
    db $e3
    ld bc, $03f3
    rst $38
    ret nz

    rst $38
    sbc [hl]
    rst $38
    cp a
    pop hl
    ccf
    ldh [$ef], a
    ccf
    db $ec
    ld a, a
    ret nz

    cp $e0
    ret c

    ld b, $ff
    rst $38
    ld a, [c]
    rst $38
    ld a, [$f90f]
    rrca
    ld sp, hl
    ld l, a
    ei
    db $fd
    rlca
    cp $e0
    scf
    ld [hl-], a
    ldh a, [$0a]
    ld hl, sp-$01
    db $10
    ldh a, [$30]
    ldh a, [$08]
    ld hl, sp-$07
    ld hl, sp-$01
    rst $00
    nop
    rst $08
    add b
    ld e, e
    dec de
    ld e, h
    rla
    rst $38
    ccf
    inc sp
    ld a, a
    ld c, e
    ld a, a
    ld c, l
    rst $38
    ld d, c

jr_036_62ae:
    rst $38
    rst $38
    inc hl

jr_036_62b1:
    rst $38
    jr z, jr_036_62c7

    rst $38
    sub a
    db $fc
    rst $38
    daa
    db $fc
    rst $20
    db $fd
    rst $28
    jr c, jr_036_62ae

    cp b
    rst $38
    rst $28
    ei
    rst $38
    sub [hl]
    sbc $ff

jr_036_62c7:
    rst $38
    ld hl, $ffef
    ld bc, $8dff
    jr jr_036_62b1

    rst $38
    ld b, $ff
    rst $28
    adc e
    ld b, c
    rst $38
    ld b, a
    rst $28
    ldh [rNR43], a
    cp $a7
    rst $38
    rst $38
    or c
    rst $38
    cp a
    rst $38
    rst $38
    ld c, b
    jp c, $d8ff

    ld a, [hl-]
    add sp, -$04
    call z, $d2fe
    cp $ff
    or d
    rst $38
    adc d
    rst $38
    add h
    rst $38
    ld b, h
    rst $38
    ld [hl], a
    inc b
    rst $38
    dec b
    db $fc
    ldh [rSC], a

Jump_036_62ff:
    db $fd
    ld bc, $e160
    rst $38
    add d
    nop
    rst $38
    or h
    rst $38
    inc l
    rst $38
    adc h
    rst $38
    rst $08
    or c
    rst $38
    add h
    ld a, a
    ld b, e
    ccf
    jr nz, @+$01

    ld a, a
    ld e, b
    rst $38
    ld e, d
    rst $38
    ld l, c
    rst $38
    ld h, d
    rst $38
    rst $20
    ld a, [de]
    rst $38
    ld b, e
    db $fc
    add h
    ld hl, sp+$08
    xor a
    cp $34
    rst $38
    ld b, b
    cp $e2
    add b
    ret nz

    jp nz, Jump_036_7b00

    ld b, c
    nop
    ret nz

    jp hl


    db $fc
    inc e
    cp [hl]
    ld [hl+], a
    ret nz

    db $eb
    db $eb
    rst $38
    ret c

    ret nz

    db $ec
    ld [hl], $c0
    jp hl


    ccf
    jr c, jr_036_63c5

    rra
    ld b, h
    rst $38
    db $10
    rst $38
    ld [$e180], sp
    ld a, [hl]
    pop hl
    add b
    ld [c], a
    rst $38
    and l
    rst $38
    pop de
    ld sp, hl
    ld d, [hl]
    rst $38
    jr nc, @+$01

    db $dd
    jr z, jr_036_63c4

    ldh [$8b], a
    ld a, a
    ld c, d
    ld [hl], $e0
    adc h
    db $fc
    rst $38
    inc hl
    rst $38
    adc b
    rst $38
    ld hl, sp-$21
    ld [hl], c
    rst $38
    db $fd
    ld h, $4c
    ldh [$28], a
    rst $38
    ld c, b
    rst $38
    ld d, b
    rst $38
    rst $38
    ld h, b
    cp a
    add b
    cp a
    add b
    rst $38
    ldh [$f1], a
    rst $10
    ld d, b
    rst $38
    jr c, @-$40

    ldh [rNR41], a

jr_036_638b:
    ld l, d
    pop hl
    cp a
    add b
    cp $70
    pop hl
    jp nz, $e300

    ld bc, $01f1
    di
    rst $38
    ld [bc], a
    db $e3
    ld [bc], a
    db $e3
    inc bc
    rst $00
    inc b
    rst $08
    rst $10
    inc b
    rst $38
    rst $10
    ret c

    ret nz

    ld c, d
    jr jr_036_638b

    ld b, e
    rst $38
    cp l
    add b
    cp $e1
    cp $d6
    rst $38
    dec d
    sbc h
    ldh [rLY], a
    ld a, [$e004]
    inc bc
    adc d
    pop hl
    ld b, e
    nop
    ld b, a
    nop
    rrca
    rst $28

jr_036_63c4:
    nop

jr_036_63c5:
    adc a
    add b
    add a
    cp $e0
    db $e3
    ld b, b
    di
    rst $30
    ld b, b
    rst $38
    dec h
    cp $e0
    daa
    rst $38
    ld [de], a
    rst $28
    rst $38
    inc c
    rst $20
    inc b
    rst $00
    ld [bc], a
    rst $08
    ld bc, $7dff
    ld d, a

jr_036_63e2:
    sbc b
    ret nz

    jp z, $c4ff

    rst $38
    jp $e3c0


    dec sp
    rst $38
    push de
    ret nz

    ld [c], a
    ld b, a
    rst $38
    add [hl]
    ld c, h
    pop hl
    cp h
    ldh [$fd], a
    and h
    cp $e0
    db $e4
    rst $38
    call z, Call_036_78ff
    rst $20
    rst $38
    ld h, b
    db $e3
    add b
    di
    add b
    jp nz, $e200

    ld a, e
    nop
    ldh a, [$fe]
    ldh [$e0], a
    nop
    pop hl
    nop
    ld d, b
    ret nz

    rst $38
    nop
    ld a, a
    ld [hl-], a
    ld e, a
    ld de, $313f
    ccf
    rst $28
    jr nz, @+$41

    jr nz, jr_036_63e2

    ld e, d
    ld [c], a
    rst $38
    db $f4
    rst $38
    push de
    xor b
    inc c
    ldh [$e0], a
    ld a, b
    and b
    ld bc, $e2fe
    sbc h
    rst $38
    rst $30
    and d
    rst $38
    jp nc, $e0fe

    ld a, [c]
    rst $38
    and [hl]
    rst $38
    rst $30
    sbc h
    di
    ldh a, [$f2]
    ret nz

    db $10
    ld a, a
    ld h, c
    rst $38
    ld a, a
    add c
    ld a, a
    ld a, d
    ccf
    dec bc
    rra
    dec b
    and b
    ret nz

    db $eb
    add b
    rst $38
    ld b, a
    ld [c], a
    add h
    db $dd
    ret nz

    rst $38
    rst $38
    cp $ed
    ld b, d
    sub $c0
    cp $03
    ld b, l
    ldh [rSCX], a
    cp $81
    or $f0
    ldh [$fd], a
    add h
    inc b
    ldh [$d0], a
    cp $0c
    cp $7f
    ld [bc], a
    db $fc
    cp h
    db $fc
    and b
    ld hl, sp+$40
    ld b, b
    ret nz

    ld c, $20
    and a
    ld bc, $011f
    ld h, b
    ret nz

    ret nc

    pop hl
    cp $e0
    ret nc

    and $b8
    ld [hl], b
    xor d
    ret nc

    add sp, $30
    and c
    nop
    ld b, c
    ld bc, $e992
    db $fc
    scf
    add h
    ld a, [$c208]
    jp hl


    rst $38
    add h
    ret nz

    db $e3
    ret nc

    add sp, -$10
    rra
    and b
    ld h, d
    jp hl


    ld h, b
    ldh [$92], a
    add sp, $7f
    ld b, d
    ld a, a
    ld hl, $a0fe
    ret nz

    inc bc
    inc c
    rlca
    ld [$080f], sp
    rrca
    rst $28
    adc a
    rrca
    add sp, $0f
    ld a, $e0
    ld a, [hl]
    cp $c2

jr_036_64c5:
    ccf
    ld a, $e2

jr_036_64c8:
    ld e, $fe
    ld [de], a
    cp $68
    pop hl
    sbc e
    pop hl

Jump_036_64d0:
    ld a, a
    rst $38
    add a
    ld hl, sp-$71
    ldh a, [rIE]
    sub b
    ld [hl+], a
    ldh [$fa], a
    dec d
    ldh [rIE], a
    ret nz

    ret nz

    add b
    ld [hl], b
    ret nz

    jr nc, jr_036_64c5

    rst $38
    jr nz, jr_036_64c8

    pop hl
    ldh [$27], a
    ldh [rIE], a
    rst $38
    rst $38
    ld e, a
    dec e
    ld h, e
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    rst $38
    ld a, h
    ld a, a
    jp $f87f


    ccf
    rst $38
    rst $38
    rst $38
    ld a, [$faf8]
    ld [$88f8], sp
    ldh a, [$f0]
    cp a
    sub b
    ldh a, [$f1]
    ldh a, [rNR22]
    ldh a, [$9c]
    ldh [$3f], a
    rst $38
    ld a, a
    ld hl, $233e
    ld e, $1f
    ld [de], a
    rra
    rst $38
    sbc a
    rra
    ldh a, [$1f]
    rst $38
    rst $38
    ld a, [c]
    ld [hl], b
    rst $38
    adc d

jr_036_6527:
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    ld a, h
    db $fc
    adc a
    add l
    db $fc
    ccf
    ld hl, sp+$4b
    pop hl
    ld [$d0c3], sp
    and c
    sbc a
    di
    add b
    pop bc
    sbc l
    pop hl
    nop
    ld [$80c2], a
    ld [c], a
    add b
    ld a, l
    ldh a, [$fe]
    ldh [$e0], a
    add b
    pop hl
    add b
    rst $00
    sub h
    ret nz

    cp $f0
    and e
    rrca
    nop
    rlca
    nop
    add a
    nop
    db $e3
    ld a, [bc]
    ld b, c
    add b
    jp $e0ea


    adc a
    cp $e0
    ldh [$a2], a
    jr nz, jr_036_6527

    cp h
    and d
    ld a, d
    cp $e0
    db $fc
    cp $e0
    ld hl, sp-$80
    add d
    add b
    ret nz

    db $eb
    add hl, bc
    rst $08
    call c, $90a3
    add sp, $00
    rst $38
    db $ec
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $e8
    inc e
    di
    rra
    ld e, l
    nop
    rst $38
    ld e, l
    nop
    ld h, a
    nop

Call_036_659f:
    cp b
    nop
    rst $08
    nop
    rst $38
    ldh a, [rP1]
    sbc [hl]
    ld c, $b1
    ccf
    cp d
    nop
    rst $38
    cp d
    nop
    and $00
    dec e
    nop
    di
    nop
    cp a
    rrca
    nop
    ld sp, hl
    ldh [rNR24], a
    ld sp, hl
    ret nc

    ld [$fb70], a
    sbc a
    ldh a, [$c0]
    add sp, $0e
    ld sp, hl
    rrca
    db $fc
    rrca
    ld a, [hl]
    ret nz

    rst $20
    rst $30
    rlca
    sbc b
    sbc a
    ld h, b
    rst $38
    ret nz

    rst $20
    cp a
    ld a, a
    ld [hl], b
    adc l
    db $fc
    inc bc
    rst $38
    sub b
    add sp, $38
    xor a
    rst $08
    ld hl, sp+$1f
    ld hl, sp-$80
    and $01
    cp $e0
    inc bc
    ei
    cp $03
    add b
    push hl
    rst $28
    ldh [rNR11], a
    pop af
    adc [hl]
    dec sp
    rst $38
    ld e, b
    ret nz

    add sp, -$21
    call c, Call_036_5323
    ldh [$50], a
    ld [$00f7], a
    rst $38
    cp [hl]
    ld b, b
    and $07
    db $fc
    rlca
    cp $fb
    rrca
    ld sp, hl
    add b
    rst $20
    add b
    ld [hl], a
    rst $00
    jr c, @+$01

    ld a, [$ee80]
    cp $c0
    db $ec
    ld hl, sp+$18
    rra
    ldh [$3f], a
    rst $38
    db $10
    rra
    ld sp, hl
    rra
    and c
    ccf
    cp a
    ccf
    rst $38
    rst $20
    ld bc, $031f
    ret nz

    rst $38
    sbc [hl]
    rst $38
    rst $38
    cp a
    pop hl
    ccf
    ldh [$3f], a
    db $ec
    ld a, a
    ret nz

    ld a, [hl]
    cp $e0
    ret c

    ld b, $ff
    ld a, [c]
    rst $38
    ld a, [$e0a8]
    rst $28
    ld sp, hl
    ld l, a
    db $fd
    rlca
    cp $e0
    scf
    jr nc, @-$0e

    rst $38
    rrca
    ld hl, sp+$18
    ldh a, [$37]
    ldh a, [$0d]
    ld hl, sp-$05
    db $fd
    ld hl, sp-$28
    ret nz

    add b
    db $10
    rra
    ld hl, sp+$0f
    rst $38
    inc e
    rrca
    ldh a, [$1f]
    cp a
    rra
    cp d
    nop
    cp $c0
    ldh [rSC], a
    ld c, a
    rst $38
    ld e, a
    ldh a, [$9f]
    ldh a, [$ef]
    sbc a
    or $bf
    ldh [$fe], a
    ldh [$ec], a
    rst $38
    ld e, d
    rst $38
    ld a, c
    rst $38
    db $fd
    add a
    db $fc
    rlca
    db $fc
    scf
    db $fd
    cp $24
    ldh [$fe], a
    dec de
    rst $38
    dec l
    inc b
    db $fc
    rst $38
    rrca
    ld hl, sp-$68
    ld hl, sp-$79
    db $fc
    db $fd
    db $fc
    rst $38
    db $dd
    add b
    rst $20
    ret nz

    ld hl, sp+$20
    rrca
    ld bc, $f2ff
    inc bc
    rra
    inc de
    cp $28
    cp $66
    rst $38
    rst $38
    ld d, l
    rst $38
    sbc e
    rst $38
    sub d
    inc de
    rst $38
    rst $38
    sub a
    db $fc
    daa
    db $fc
    rst $20
    db $fd
    rst $28

jr_036_66bd:
    jr c, jr_036_66bd

    cp $e0
    ld a, e
    rst $38
    sub [hl]
    sbc $ff
    rst $38
    ld hl, $e4fa
    ret nz

    adc l
    ld e, b
    jp nz, $ff06

    adc e
    ld b, c
    rst $38
    db $fd
    ld b, a
    rst $28
    ldh [rNR44], a
    cp $a7
    rst $38
    or c
    rst $38
    rst $38
    cp a
    rst $38
    ld hl, sp+$48
    ld c, $0f
    rst $38
    add hl, bc
    rst $38
    rra
    inc e
    rst $38
    inc hl
    cp a
    daa
    cp a
    ld a, [hl+]
    rst $28
    rst $38
    db $10
    rra
    ld de, $e380
    rst $18
    or $ff
    rst $30
    jr nz, @+$01

    ld h, b
    add b
    ldh [$da], a
    inc b
    db $fc
    rra
    rst $38
    db $fc
    add h
    db $fc
    adc a
    ld hl, sp-$63
    db $fc
    push bc
    rst $38
    db $fc
    rst $38
    db $fc
    ld hl, sp+$20
    rst $30
    inc b
    rrca
    rst $38
    dec b
    ld a, a
    inc b
    ld h, e
    ld [bc], a
    ld b, c
    ld bc, $ff03
    nop
    rlca
    nop
    rra
    nop
    rst $38
    or h
    rst $38
    rst $38
    inc l
    rst $38
    adc h
    rst $08
    or c
    rst $38
    add b
    rst $38
    rst $38
    ld b, a
    cp [hl]
    inc hl
    ld a, a
    ld e, c
    rst $38
    ld e, d
    rst $38
    rst $38
    ld l, c
    rst $38
    ld h, d
    rst $20
    ld a, [de]
    rst $38
    inc bc
    rst $38
    rst $38
    call nz, $88fd
    cp $34
    rst $08
    ld b, b
    ldh a, [rIE]
    ld b, b
    sbc $40
    add [hl]
    add b
    add d
    nop
    ret nz

    rst $38
    nop
    ldh [rP1], a
    ld hl, sp+$00
    di
    ld [bc], a
    rrca
    rst $38
    ld [bc], a
    ld a, c
    ld bc, $1879
    ld a, a
    ld h, $7f
    rst $38
    ld d, l
    rst $38
    set 7, a
    or e
    rst $38
    sub [hl]
    rst $38
    rst $38
    ld b, [hl]
    rst $20
    ld e, b
    rst $38
    ret nz

    rst $38
    inc hl
    rst $38
    rst $38
    ld [hl], c
    rst $38
    xor h
    rst $38
    ld a, [hl+]
    rst $38
    inc [hl]
    rst $38
    rst $30
    ld sp, $8df3
    ld [hl-], a
    ret nz

    ld [c], a
    ld a, a
    call nz, Call_036_7fff
    sbc d
    rst $38
    dec hl
    rst $28
    and b
    ldh a, [rNR41]
    ret nz

    jp hl


    rst $38
    rst $38
    and l
    ld a, a
    ld d, c
    ld a, a
    jr nz, jr_036_681c

    db $10
    rst $38
    ld c, a
    ld [$0407], sp
    rlca
    ld [bc], a
    rra
    ld bc, $ffff
    and l
    rst $38
    sub c
    ld sp, hl
    sub $ff
    ld [hl], b
    rst $38
    rst $38
    jr z, @+$01

    ld b, h
    rst $38
    add e
    rst $38
    add d
    cp [hl]
    ld d, $e0
    adc h
    db $fc
    inc hl
    rst $38
    adc b
    xor $e0

jr_036_67c3:
    ld bc, $10fe
    ldh [$fa], a
    rst $38
    jr z, jr_036_67c3

    ld c, b
    cp $50
    rst $38
    and $60
    add d
    add b
    ret nz

    add b
    ldh [$c0], a
    cp a
    ld hl, sp+$40
    rst $38
    inc c
    rrca
    inc b
    ld b, b
    pop hl
    ld b, e
    rst $18
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld bc, $e040
    ld d, [hl]
    rst $38
    rst $38
    ld h, $e7
    jr c, @+$01

    ld [hl-], a
    rst $38
    ld d, e
    rst $38
    ld e, a
    adc c
    rst $38
    inc e
    rst $38
    xor d
    add b
    db $e4
    ld hl, $e080
    ld d, l
    add $b0
    ret nz

    ld a, [hl+]
    add b
    db $ec
    add b
    sub [hl]
    and h
    ld [bc], a
    cp $e0
    ld d, a
    inc bc
    rst $38
    inc b
    cp $e0
    call nc, $e0c6
    ld c, d
    add h
    ldh [$79], a
    ld b, e
    cp $c0

jr_036_681c:
    cp $e0
    cp $56
    rst $38
    sub l
    ld l, h
    ldh [$87], a
    ld b, h
    rst $38
    add h
    cp $c0
    jp c, $e0e1

    add e
    db $e4
    ld [c], a
    rst $38
    db $fd
    ld b, b
    cp $e0
    sub [hl]
    rst $38
    ld b, l
    rst $38
    jr c, @+$01

    ld d, a
    db $10
    rst $38
    ld [$c072], sp
    ld bc, $80c2
    add hl, hl
    ld a, $e0
    rst $10
    and d
    rst $38
    ld b, c
    db $e4
    ld [c], a
    ret nz

    sbc $e0
    jp z, Jump_036_5fff

    ld d, d
    rst $38
    ld [hl+], a
    rst $38
    jp nz, $e4c2

    ld [bc], a
    ret z

    and $71

jr_036_685e:
    ret nz

    ld l, [hl]
    ret nz

    cp $e1
    ld b, b
    xor e
    nop
    rst $38
    sub d
    ldh a, [$c0]
    ld [hl], e
    ld hl, $e4bf
    db $e3
    and b
    pop hl
    db $f4
    rst $38
    xor b
    and d
    ldh [$5d], a
    ldh [$ee], a
    add h
    ld bc, $a0ff
    cp $e0
    sub b
    cp $e0
    db $fd
    ldh a, [$8c]
    ld [c], a
    adc b
    ld a, a
    ld h, l
    ld a, a
    inc hl
    ld a, a
    jp hl


    ld h, d
    sub b
    db $e4
    ld [hl], b
    pop hl
    ld [$e090], a
    ld hl, $c1ff
    xor d
    jp nc, Jump_000_03e4

    ld e, d
    db $e4
    jr nz, jr_036_685e

    ldh [rNR41], a
    ld e, d
    ldh [$90], a
    rst $38
    rrca
    ld [$10ff], sp
    ld a, a
    ld h, c
    rst $38
    add c
    ld a, a
    cp $7a
    cp a
    dec bc
    rst $20
    dec b
    dec e
    ld [hl], $e1
    jp nc, $e217

    add h
    db $fd
    ret nz

    rst $38
    ldh [rSCY], a
    or $c0
    cp $03
    xor $13
    ret nz

    ld b, e
    cp $81
    ldh a, [$e1]
    add h
    ldh a, [rNR41]
    rst $38
    rst $38
    ret nc

    db $fc
    inc c
    rst $38
    ld [bc], a
    db $fd
    cp h
    ld e, a
    db $fd
    and b
    ld h, a
    ld b, b
    cp b
    ld a, [bc]
    add b
    di
    ld [bc], a
    add b
    add hl, hl
    and $fa
    ld h, b
    ld hl, sp+$63
    rst $38
    jp hl


    add b
    add b
    ld e, c
    ret nz

    jp nc, $e1e2

    ld b, d
    ret nz

    ldh [$d7], a
    and b
    jp nz, $c0e7

    ldh [$90], a
    rst $38
    inc c
    scf
    cp $02
    rst $38
    jp nz, $5de0

    ld b, b
    cp b
    ld h, c
    ret nz

    push hl
    xor a
    cp e
    ld bc, $01bb
    cp b
    ld h, b
    ld bc, $ea82
    add h
    ld hl, sp-$46
    ret nz

    rst $20
    add d
    ret nz

    rst $20
    ld hl, sp-$18
    rst $38
    add [hl]
    rst $38
    ld a, a
    add c
    ld a, a
    ld e, [hl]
    ld a, l
    ld d, b
    ld a, l
    jr nz, jr_036_69a3

    ld h, c
    di
    ldh a, [$d0]
    or b
    db $eb
    ld a, b
    ld h, b
    inc bc
    ld a, h
    rlca
    ld l, b
    ld a, a
    rrca
    ld c, b
    rrca
    rrca

jr_036_693c:
    rrca
    ld [$3d0f], sp
    ldh [rIE], a
    ld a, [hl]
    rst $38
    jp nz, $e23f

    rra
    cp $13
    ld sp, hl
    cp $b6
    pop hl
    dec l
    ldh [$fc], a
    rst $38
    add a
    ld hl, sp-$71
    reti


    ldh a, [$cd]
    ret nz

    jr jr_036_693c

jr_036_695b:
    rst $38
    rst $38
    jr c, jr_036_69bf

    add b
    ld e, [hl]
    rst $38
    ret nz

    ld h, $e0
    ld [hl+], a
    ldh [$e0], a
    ldh [rNR41], a
    db $fd
    ldh [$0d], a
    ldh [rNR33], a
    inc hl
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    ld b, e
    ld a, a
    jr c, jr_036_69bb

    db $fd
    ret nz

    push af
    ld hl, sp-$56
    pop bc
    rst $38
    ld c, h
    add b
    rst $38
    ldh a, [$1f]
    ldh a, [rNR41]
    db $ed
    pop bc
    inc d
    call nz, $e5fa
    adc [hl]
    ld l, l
    xor [hl]
    ldh [$b8], a
    sbc $40
    ret c

    ld c, d
    rst $20
    nop
    add [hl]
    nop
    ldh [$83], a
    jp nz, $f0e7

    add b

jr_036_69a3:
    rst $08
    cp a
    add b
    cp b
    add b
    rst $20
    add b
    db $dd
    cp $e0
    rst $20
    sbc d
    or $e0
    rst $08
    xor $e0
    sbc [hl]
    add b
    cp b
    add b
    jr c, jr_036_695b

    add b

jr_036_69bb:
    jr nz, jr_036_6a35

    and b
    sbc d

jr_036_69bf:
    push hl
    add b
    ld b, h
    sbc b
    push bc
    or b
    db $eb
    ld hl, sp-$78
    add $80
    ld b, c
    ccf
    ld a, c
    nop
    ld h, c
    nop
    ld b, c
    nop
    ld c, b
    add h
    ld c, b
    ld b, h
    nop
    rst $38
    db $ed
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $e8
    ld [hl], b
    rst $08
    ld a, b
    call z, $f700
    adc b
    nop
    sbc b
    cp $e0
    cp h
    nop
    rst $18
    nop
    rst $38
    ldh [rP1], a
    rst $38
    ccf
    inc sp
    nop
    ld de, $fd00
    add hl, de
    cp $e0
    dec a
    nop
    ei
    nop
    rlca
    nop
    cp e
    or a
    add c
    ret nc

    ld_long $ff00, a
    ret nz

    ret nz

    and $38
    cp a
    rst $20
    inc a
    di
    ld a, $c1
    ld a, a
    ret nz

    add sp, $1f
    rst $28
    ld [c], a
    ld a, a
    add b
    rst $38
    ret nz

    add sp, -$40
    scf
    di
    ei
    inc c
    rst $38
    sub b
    add sp, -$20
    ccf
    ldh [$7f], a
    ldh [$fe], a
    add b
    db $e4
    inc e
    di

jr_036_6a35:
    ld e, $f9
    rra
    ldh [$3f], a
    ld a, e
    ldh a, [$1f]
    add b
    add sp, $0f
    pop af
    cp a
    ret nz

    ret nz

    jp hl


    rst $28
    ldh [$1f], a
    ld sp, hl
    ld b, $c0
    rst $20
    ld [hl], b
    sbc a
    ldh a, [$ef]
    ccf
    ldh a, [rIF]
    ld hl, sp+$60
    add sp, -$10
    adc a
    db $fc
    db $fd
    inc bc
    and b
    jp hl


    jr c, @-$2f

    ld hl, sp+$1f
    ld hl, sp-$19
    rst $38
    ld a, h
    add e
    rst $38
    jp nz, $e27f

    ld a, a
    add l
    rst $38
    rst $38
    db $fd
    rst $38
    dec e
    rlca
    rra
    ld b, $c4
    ld e, [hl]
    rrca
    ldh [rPCM34], a
    rst $38
    rst $38
    adc b
    ld [$63e0], sp
    inc b
    pop hl
    rst $38
    db $76
    rst $20
    jr @+$01

    sub b
    rst $38
    ret z

    ld a, a
    rst $38
    add sp, $3f
    db $e4
    ccf
    rst $30
    rra
    rst $30
    inc e
    rst $38
    ld a, a
    ret nz

    db $fc
    ret nz

    inc sp
    ldh [$6f], a
    ret nz

    rst $38
    call z, $28c0
    ldh [$f8], a
    ldh [$98], a
    nop
    rst $38
    pop hl
    ccf
    ld sp, $c23f
    ld a, a
    cp $7f
    rst $38
    ld [hl-], a
    inc bc
    inc de
    inc bc
    rra
    rlca
    rra
    inc b
    rst $38
    dec sp
    rst $38
    ld a, a
    call nz, $80ff
    rst $38
    or c
    db $fc
    db $fc
    ldh [$c6], a
    pop bc
    pop bc
    ret z

    rst $38
    db $e4
    ccf
    db $f4
    rst $38
    rra
    ld a, [c]
    sbc a
    ei
    rrca
    ei
    ld c, $fb
    rst $38
    rst $08
    rst $38
    and h
    rra
    ldh a, [$3c]
    ldh [$73], a
    rst $18
    ldh [$1f], a
    ldh a, [$fc]
    ldh a, [$b8]
    jp nz, $f880

    rst $38
    rra
    jr nz, jr_036_6b2a

    rst $38
    ccf
    rst $30
    ld bc, $ff33
    ld bc, $0111
    dec de
    inc bc
    dec de
    ld [bc], a
    sbc l
    rst $38
    rst $38
    cp a
    ld [c], a
    ld a, a
    ret nz

    ld a, a
    ret c

    ld a, a
    db $fd
    ret nz

    cp d
    ldh [$b0], a
    rst $38
    add sp, -$1c
    rst $38
    ld a, [c]
    ld a, a
    rra
    ld a, [$f90f]
    rst $08
    db $fd
    rlca
    cp $e0
    rst $30
    ld h, a
    rst $38
    jp nc, $e0c0

    ldh a, [$0b]
    ld hl, sp-$01
    db $fd
    ld hl, sp+$78
    jp nz, $d880

    ld b, b
    ld hl, sp+$0f
    inc a

jr_036_6b2a:
    rst $18
    rrca
    ret nc

    rra
    rst $38
    rra
    ld a, b
    jp nz, $1901

    rst $38
    ld bc, $ff4e
    ld e, a
    pop af
    cp a
    ldh [$bf], a
    rst $30
    db $ec
    cp a
    ldh [$84], a
    ret nz

    ret c

    rst $38
    ld [hl], h
    ld a, [c]
    rst $38
    rst $38
    ld sp, hl
    rrca
    db $fd
    rlca
    db $fc
    ld h, a
    cp $fd
    inc bc
    cp $e0
    inc sp
    rst $38
    ld l, c
    rlca
    db $fc
    inc c
    rst $38
    ld hl, sp+$1b
    ld hl, sp-$79
    db $fc
    db $fc
    db $fc
    adc b
    rst $38
    add b
    ret c

    ret nz

    ld hl, sp+$20
    ccf
    ld c, $ff
    rst $38
    dec bc
    rrca
    dec c
    cp a
    ld a, [bc]
    or [hl]
    rlca
    rst $28
    rst $30
    ld [bc], a
    rra
    ld bc, $e14e
    rst $38
    and e
    rst $38
    ld h, c
    rst $38
    rst $38
    ld h, c
    ld a, a
    sub b
    rst $38
    ld [bc], a
    rst $38
    inc e
    rst $38
    rst $38
    add b
    rst $30
    sbc [hl]
    rst $38
    ld c, c
    rst $38
    push bc
    cp a
    rst $38
    adc c
    ccf
    jp z, Jump_000_0cff

    ldh a, [$e0]
    inc sp
    cp d
    ld [$edc3], sp
    cp $e0
    rst $30
    nop
    ld hl, sp-$1c
    and b
    ccf
    rst $38
    ld b, $ff
    dec b
    rlca
    inc bc
    or a
    ld bc, $cfb7
    nop
    rst $28
    nop
    rra
    call c, $eca2
    ldh [$d0], a
    rst $38
    rst $38
    ld bc, $9fff
    ei
    ld c, [hl]
    rst $38
    inc h
    rst $38
    rst $38
    ld a, c
    rst $38
    ld [c], a
    rst $38
    call nz, Call_036_659f
    rst $38
    rst $38
    ld b, $ff
    ld [$18ff], sp
    rst $38
    ld l, h
    rst $38
    rst $18
    jp nc, $80bc

    rst $18
    add b
    ret nz

    ld [$fb03], a
    di
    ld [bc], a
    rlca
    jp nz, $c0e0

    and $58
    rst $38
    sbc b
    sbc a
    db $fd
    add sp, -$42
    ret nz

    ld c, a
    db $fd
    daa
    rst $38
    ld [de], a
    rst $38
    rst $38
    inc a
    rst $38
    ld [hl], c
    rst $38
    ld h, d
    rst $08
    ld [hl-], a
    rst $38
    rst $30
    add e
    rst $38
    add h
    add b
    ldh [$36], a
    rst $38
    jp hl


    db $fc
    rst $18
    ld b, b
    rst $18
    ld b, b
    ldh [$80], a
    add b
    rst $20
    rst $38
    xor h
    rst $38
    rst $38
    ld c, h
    rst $08
    db $f4
    rst $38
    ld b, b
    rst $38

jr_036_6c1a:
    daa
    rst $38
    cp $13
    rst $38
    add hl, bc
    rst $38
    ld e, $ff

jr_036_6c23:
    jr c, @+$01

    rst $38
    ld sp, $19e7
    rst $38
    ld b, c
    rst $38
    jp nz, $ffff

    add [hl]
    rst $38
    dec de
    rst $38
    ld [hl], h
    db $fc
    and b
    rra
    rst $38
    jr nz, jr_036_6c1a

    ld b, b
    db $ed
    adc $e0
    ld d, b

jr_036_6c3f:
    ld [c], a
    ld l, d
    jp Jump_000_01f5


    cp $e2
    ld [bc], a
    ld e, $e0
    inc b
    rst $38
    ldh [rIE], a
    ld a, a
    cp a
    rst $38
    ld d, l
    rst $38
    ld e, d
    rst $38
    ld c, h
    ld d, h
    and b
    ld e, a
    ld b, b
    rst $38
    ld h, b
    rst $38
    ret nc

jr_036_6c5d:
    ld de, $10c0
    ld d, d
    ldh [$5d], a
    rlca
    nop

jr_036_6c65:
    ldh [rSB], a
    rst $38
    inc bc
    inc [hl]
    ret nz

    ld b, b
    and d
    ldh [$c7], a
    ret nz

    rst $38
    jr nz, jr_036_6c5d

    ldh [$e8], a
    pop hl
    jr nz, jr_036_6c23

    nop
    rst $38
    ld a, a
    ld l, [hl]
    rst $38
    xor d
    rst $38

Call_036_6c7f:
    sub e
    rst $38
    adc h
    inc c
    ret nz

    cp [hl]
    cp $e1
    ret nz

    rst $38
    ld d, c
    rst $38
    sub c
    sub $e2
    add hl, bc
    ld c, e
    rst $38
    ld c, $be
    ret nz

    ld b, $c0

jr_036_6c96:
    add d
    db $e4
    pop hl
    ld b, b
    cp [hl]
    ldh [$95], a
    jr nz, jr_036_6c3f

    ldh [$37], a
    sub d
    ldh [rOBP1], a
    ld h, h
    ldh [$d0], a
    push hl
    jr z, jr_036_6c65

    rst $38
    ld c, b
    sub d
    and b
    ld [$05ff], sp
    adc [hl]
    ld [c], a
    ld b, $e6
    call nc, $40e4
    rst $38
    ld c, b
    ldh [$d0], a
    ld [c], a
    dec hl
    rst $38
    ld c, d
    rst $28
    rst $38
    ld b, h
    rst $38
    ld b, e
    and b
    db $e4
    add b
    rst $38
    sub h
    cpl
    rst $38
    and h
    rst $38
    call nz, $e048
    ld [bc], a
    ld h, h
    ldh [rLCDC], a
    pop hl
    db $f4
    ld h, d
    pop hl
    and [hl]
    pop hl
    ldh [$ce], a
    ld [c], a
    ld b, b
    rst $38
    jr jr_036_6d21

    push de
    ld [hl+], a
    or b
    and b
    nop
    ld l, b
    add l
    rst $38
    cp l
    add b
    jp nz, $ef7f

    pop bc
    ld a, a
    add c
    rst $38
    rst $38
    ldh [rNR11], a
    rst $38
    rra
    call $65fd
    ret nz

    pop bc
    rst $38
    ld e, c
    add c
    rst $28
    ldh [$82], a
    rst $38
    rst $38
    cp $ff
    add h
    cp $42
    rst $38
    ld hl, $9fff
    ld l, $dc
    sbc b
    adc b
    add b
    jr z, jr_036_6c96

    ld l, $c0
    nop
    and c
    rst $08
    inc h
    ret nz

    ld [hl], b
    and c
    ret nz

    ld [c], a
    inc sp

jr_036_6d21:
    and b
    add c
    or l
    ret nz

    ld [bc], a
    ld a, [hl]
    ret nz

    pop hl
    ld b, e
    rst $38
    ld a, a
    rst $38
    cp $03
    pop bc
    call nz, $affe
    ldh [$08], a
    rst $38
    ld hl, sp-$01
    ld b, b
    db $fc
    add b
    ld l, c
    di
    inc b
    ret nz

    add sp, $65
    cp a
    ret nc

    db $eb
    ld a, l
    ei
    ret nc

    ldh [$9c], a
    add l
    and c
    ret nc

    and $80
    db $fc
    nop
    ret nc

    jp hl


    and b
    pop hl
    add e
    ld c, $d0
    add sp, -$01
    db $fc
    rlca
    ret nc

    pop hl
    and b

jr_036_6d5e:
    and $a8
    ld h, h
    ldh [$a5], a
    cp $8c
    pop hl
    rra
    di
    rra
    ld [c], a
    ccf
    ld [c], a
    ccf
    xor a
    db $e3
    ccf
    cp $1f
    dec hl
    ldh [$84], a
    adc $e0
    db $fc
    ld d, h
    inc hl
    and c
    ld h, [hl]
    ldh [$fe], a
    dec de
    ldh [$31], a
    ldh [$ec], a
    ld [$ece0], sp
    ld b, c
    ld hl, $ecc0
    rra
    pop hl
    cp $e9
    ld a, [hl]
    ld l, c
    inc b
    ld h, c
    rst $38
    ld d, b
    db $ec
    ld a, h
    jp nc, $08e6

    ldh [$80], a
    rst $28
    add b
    call z, $c880
    ret nz

    db $f4
    cp $e0
    jr z, @-$5c

    add b
    sbc b
    and b
    add b
    rst $30
    add b
    ld hl, sp-$42
    xor [hl]
    add sp, $33
    ld bc, $0113
    dec de
    cp $e0
    ccf
    rlca
    ld bc, $01fb
    jr jr_036_6d5e

    sbc [hl]
    add c
    xor [hl]
    ld b, h
    sbc b
    call nz, $4bc0
    ret nc

    ld hl, sp-$79
    adc b
    ld b, [hl]
    ret nc

    set 4, b
    ld l, d
    add b
    ld d, b
    and b
    cp b
    rst $38
    ld bc, $d080
    adc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    rst $38
    nop
    cp $eb
    push hl
    nop
    call z, $ac00
    rst $38
    nop
    cp b
    nop
    add e
    nop
    add a
    nop
    rst $00
    rst $38
    nop
    rst $28
    ld c, $f3
    nop
    ld b, $00
    inc b
    rst $38
    nop
    ld h, h
    nop
    ld [hl], h
    nop
    db $f4
    nop
    db $e4
    or a
    nop
    ldh [$e0], a
    ldh [$eb], a
    db $e3
    nop
    ldh [$eb], a
    nop
    rst $38
    nop
    rst $38
    ld c, $f1
    rra
    ldh [$3f], a
    db $10
    cp $fc
    ldh [$39], a
    ccf
    ld de, $771f
    rra
    pop af
    rst $38
    ccf
    ret nz

    rst $38
    add b
    rst $38
    sbc [hl]
    rst $38
    cp a
    rst $38
    pop hl
    ccf
    ldh [$7f], a
    call nz, $d87f
    inc e
    rst $38
    ld hl, sp+$07
    rst $38
    ld [bc], a
    rst $38
    ld a, [c]
    rst $38
    ld a, [$0fff]
    ld sp, hl
    rrca
    db $fd
    ld b, a
    db $fd
    scf
    rst $38
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$18
    ldh a, [$0d]
    ld a, a
    ld hl, sp+$3c
    ld hl, sp+$1c
    ldh a, [$d8]
    ldh a, [rSVBK]
    db $e3
    db $fd
    inc b
    cp b
    ldh [rNR11], a
    rra
    jr nz, jr_036_6ea1

    ld [hl], b
    rra
    cp l
    ld hl, sp+$60
    db $e3
    ld c, $f1
    ccf
    pop bc
    cp b
    ldh [$80], a
    reti


    rst $38
    and $e0
    ld c, [hl]
    pop hl
    ldh [$1f], a
    cp b
    ld [c], a
    ld [bc], a
    rst $38
    cp $40
    db $e3
    ld hl, sp+$00
    push hl
    ldh [rNR32], a
    ldh a, [$0c]
    db $fc
    cp b
    ldh [$30], a
    db $e3
    inc e
    inc e
    di
    ccf
    ld b, c
    ld a, a
    rst $28
    ld h, d
    ld a, a
    ld b, h
    ld a, a
    ret nz

    db $e4
    dec sp

jr_036_6e98:
    call nz, $f5ff
    ld [$e0fe], sp
    nop
    ret nz

    push hl

jr_036_6ea1:
    add b
    ld a, a
    db $e3
    inc e
    ld a, [$e0ee]
    db $10
    ret nz

    rst $20
    ret nz

    inc a
    ldh a, [rNR32]
    ldh a, [$fb]
    ld a, b
    ldh [$80], a
    push hl
    rst $30
    rlca
    jr @+$21

    db $10
    rst $30
    rra
    ld l, h
    rrca
    add b
    db $e4
    inc bc
    db $fc
    adc a
    ld [hl], b
    di
    rst $38
    jr nz, jr_036_6e98

    ldh [$80], a
    db $e4
    cp b
    ld b, a
    rst $38
    ld hl, $f0fa
    ldh [rP1], a
    add b
    push hl
    ld [hl], b
    sbc l
    ld hl, sp+$04
    db $fc
    rst $38
    adc h
    db $fc
    ld b, h
    db $fc
    ld a, a
    dec c
    rst $30
    inc b
    rst $38
    rst $20
    dec b
    inc bc
    inc bc
    rlca
    ld [bc], a
    rst $38
    inc b
    or $8d
    ldh [$09], a
    ld a, a
    ld bc, $70e1
    rst $38
    adc h
    rst $38
    rst $38
    jr c, @+$01

    ld d, c
    rst $38
    ld h, b
    rst $38
    and b
    db $fd
    xor $01
    pop hl
    dec e
    rst $38
    ld h, e
    ldh a, [$e0]
    inc d
    rst $38
    inc c
    rst $38
    rst $38
    dec bc
    db $e3
    ld h, b
    rst $00
    ld b, b
    rst $00
    ld b, b
    cp a
    db $e3
    add b
    ld hl, sp-$80
    rst $38
    ld b, b
    sbc a
    ldh [rNR41], a
    rst $38
    ld h, b
    ccf
    ld sp, hl
    ccf
    pop af
    rra
    rla
    rra
    ei
    rrca
    dec c
    ret nz

    ldh [rTIMA], a
    rst $38
    inc bc
    add b
    rst $38
    rst $08
    ld e, $ff
    ccf
    pop hl
    add $c1
    cp b
    db $e3
    ld [bc], a
    rst $38
    di
    pop af
    rst $38
    add $c4
    cp b
    ld [c], a
    dec bc
    ld hl, sp+$3f
    ld hl, sp-$41
    rla
    ldh a, [$d3]
    ldh a, [$f8]
    ld h, b
    ret nz

    ldh [rLCDC], a
    rst $38
    rst $38
    add b
    ld h, h
    ccf
    db $f4
    ccf
    push hl
    ccf
    rst $38
    ccf
    ccf
    rra
    ld d, $ff
    ld [de], a
    rst $38
    rla
    cp a
    rst $38
    inc c
    nop
    rst $38
    rst $30
    rst $38
    dec b
    ldh [rNR43], a
    ei
    rst $38
    pop bc
    ld d, $c0
    add c
    rst $38
    ld h, e
    db $10
    rst $38
    rst $38
    ret z

    rst $38
    add sp, $3f
    rst $30
    rra
    rst $30
    sbc l
    rst $38
    rst $38
    add hl, bc
    rst $38
    push af
    cp $0e
    inc de
    ldh a, [rIE]
    ld [hl], a
    ldh a, [$27]
    ldh [rNR44], a
    ldh [$f8], a
    ret nz

    cp $f6
    and e
    ld [hl], b
    rra
    db $fc
    rra
    add sp, $0f
    add hl, bc
    rst $18
    rrca
    rlca
    rlca
    rst $38
    ld bc, $e0fe
    nop
    db $10
    rst $38
    rst $38
    daa
    rst $38
    cpl
    ld hl, sp-$21
    ldh a, [$df]
    db $fd
    ld [hl], e
    ld bc, $5fe0
    rst $38
    pop hl
    nop
    rst $38
    sbc $dd
    rst $38
    dec b
    ldh [$88], a
    rst $38
    ld b, $ea
    pop bc
    rst $38
    adc h
    rst $38
    ld c, e
    ld hl, sp+$5f
    ld hl, sp+$4f
    ld hl, sp-$05
    ld hl, sp-$41
    ld hl, sp-$30
    rst $38
    sub b
    rst $38
    ret nc

    ld e, $e0
    ld de, $feba
    ldh [rNR43], a
    db $e3
    ret nz

    ld hl, $1fff
    and h
    and d
    pop af
    rst $38
    rst $38
    inc a
    rst $38
    dec hl
    rst $38
    ld a, [hl+]
    rst $38
    ld b, h
    ei
    rst $38
    ld b, e
    ccf
    jp nz, $ff1f

    ld a, c
    rst $38
    xor b
    rst $38
    rst $38
    xor c
    rst $38
    ld b, l
    rst $38
    add l
    cp $02
    dec bc
    cp $02
    call z, Call_000_10e0
    or d
    ldh [$63], a
    pop bc
    inc b
    jp $c4c8


    ld d, d
    cp b
    ld [c], a
    inc hl
    sbc e
    ret nz

    ret z

    jp $c0e1


    ret nz

    cpl
    cp d
    ld [c], a
    ld a, $c8
    jp $ff0f


    dec sp
    rst $38
    jp hl


    cp d
    ld [c], a
    ret z

    call nz, $b8d4
    and $82
    pop hl
    inc hl
    ld c, e
    ldh [rNR50], a
    adc [hl]
    ldh [$4e], a
    rst $38
    push af
    ld b, d
    ld [$90e0], sp
    ld a, a
    and b
    adc b
    rst $38
    ret nz

    rst $38
    ld [hl], a
    cp a
    rst $38
    ld d, l
    ld c, b
    ldh [$c2], a
    rst $38
    and c
    ld a, b
    ret nz

    rst $38
    jr c, @+$01

    rst $28
    rst $38
    xor h
    rst $38
    ld d, a
    rst $38
    sub c
    adc d
    ld a, [c]
    and e
    cp d
    and $2d
    pop bc
    ld bc, $a2a7
    ld a, d
    db $e3
    ld [$ffef], sp
    add a
    rst $38
    ld a, [bc]
    ld e, b
    ret nz

    jr c, @+$01

    ld l, [hl]
    rst $38
    rst $38
    ld l, e
    rst $38
    push de
    rst $38
    and d
    rst $38
    rlca
    ld a, [$c0a8]
    inc bc
    ld h, [hl]
    ldh [rTMA], a
    rst $38
    ld a, [$54ff]
    call nc, $c0a8
    ld b, d
    pop hl
    adc b
    xor e
    ret nz

    ld a, b
    ld e, $e0
    db $e4
    rst $38
    db $fd
    add h
    ld b, b
    and l
    di
    nop
    rlca
    ld bc, $0105
    jp hl


    ld h, h
    and h
    pop hl
    ld c, b
    and d
    add h
    ld d, h
    and c
    rst $38
    rst $38
    ld b, d
    db $76
    ld c, $e0
    cp $03
    cp $e0
    ld b, e
    cp $81
    ldh a, [$e1]
    sub b
    ret nc

    db $e4
    ld b, b
    and b
    adc b
    add h
    xor c
    and b
    ld e, $c0
    db $e3
    adc b
    add c
    ld h, l
    cp l
    ld bc, $c2ca
    ret nz

    cp a
    ld hl, sp-$79
    cp h
    ld [c], a
    ld a, $f7

jr_036_70c9:
    rst $38
    rst $38
    add l
    adc d
    ret nz

    ld b, $fb
    ld a, $c3
    ld [c], a
    cp h
    ld [c], a
    db $fd
    inc h
    pop bc
    call z, $c080
    add sp, $42
    rst $38
    dec a
    ld l, e
    rst $38
    ld bc, $e8c0
    add a
    jr nz, jr_036_70c9

    ldh [$9f], a
    ei
    jp nz, Jump_036_7cfb

    rst $38
    ld [hl-], a
    ldh [rTAC], a
    rst $38
    inc c
    ei
    ld a, [hl]
    dec l
    add e
    ld hl, $81c0
    rst $38
    ret nz

    ldh [rNR41], a
    and $c0
    add b
    jp hl


    ld c, c
    ld [$e01e], sp
    ld b, b
    pop hl
    ld bc, $e140
    add b
    ldh [$a1], a
    add $c0
    ld l, a
    ld h, b
    cp a
    db $fc
    add e
    ld h, l
    jp nz, $ff7e

    ret nz

    ret nz

    db $ed
    ld bc, $c008
    ld c, $f3
    ld a, [hl-]
    ldh [rNR44], a
    cp $7d
    ld a, [c]
    ld a, $e1
    ld a, b
    ld b, b
    jp hl


    ret c

    ld h, c
    push hl
    ld bc, $0101
    rst $20

jr_036_7133:
    ld b, $03
    rst $38
    add hl, de
    ldh [$0d], a
    ldh [$fe], a
    rst $38
    cp [hl]
    sub a
    jp $817e


    add l
    and b
    rst $38
    xor a
    and b
    ldh a, [$e2]
    ld a, [$8727]
    db $fd
    inc bc
    ld a, [c]
    jp nz, $80c2

    rst $38
    cp b
    ld h, l
    nop
    and b
    xor $21
    add c
    rst $38
    ld [hl], l
    ld bc, $ecc0
    jp $beff


    ld l, c
    rst $38
    ld d, d
    ldh [$c0], a
    and $87
    adc b
    ret nz

    db $fd
    add e
    ret nz

    and $ab
    rst $38
    add e
    jr z, jr_036_7133

    ld a, a
    ldh [$e8], a
    rlca
    ldh [$ec], a
    pop bc
    ld [bc], a
    ldh [$ec], a
    add e
    ret nz

    db $ec
    ld h, c
    jp $e7fc


    xor [hl]
    ld h, h
    add sp, $46
    sbc [hl]
    ld h, d
    ld c, b
    ld h, b
    ret z

    adc [hl]
    ld h, d
    ld h, b
    push bc
    ld h, h
    ld hl, sp+$46
    ld e, b
    ld h, h
    rst $38
    ld hl, sp+$45
    db $fc
    ld e, b
    ld h, h
    and d
    db $ec
    ld hl, sp-$80
    push hl
    add b
    call z, $ff80
    xor h
    add b
    cp b
    add b
    add e
    add b
    add a
    add b
    rst $08
    rst $00
    add b
    db $e3
    add b
    sbc d
    add d
    db $fc
    and $05
    ld bc, $889e
    push bc
    ld [hl], l
    ld bc, $01f5
    cp b
    pop bc
    ld h, b
    ld c, e
    inc b
    nop
    sub b
    db $ed
    adc b
    ld b, [hl]
    add sp, $44
    ld [hl-], a
    ld c, h
    jp c, $50e5

    rst $20
    rst $38
    db $ed
    nop
    nop
    nop
    ld h, $72
    sbc d
    ld [hl], d
    add hl, de
    ld [hl], e
    adc l
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $74
    ld [hl], b
    ld [hl], h
    jp nc, Jump_000_3374

    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ld [hl], l
    ld a, [bc]
    db $76
    db $76
    db $76
    ld [c], a
    halt
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld [hl], a
    or a
    ld [hl], a
    ld hl, $8b78
    ld a, b
    db $fc
    ld a, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld a, c
    push bc
    ld a, c
    ld [hl+], a
    ld a, d
    ld a, a
    ld a, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    dec c
    rst $38
    pop hl
    ld c, l
    ld c, l
    ld c, l
    ld hl, sp-$1e
    ei
    db $e3
    dec l
    ldh [$f6], a
    ldh a, [$e2]
    pop af
    adc $e8
    pop bc
    db $e4
    cp b
    ldh [rP1], a
    ld bc, $ff02
    ld [bc], a
    ld [bc], a
    ld c, $0e
    ld c, $0f
    db $10
    inc bc
    rst $38
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $11
    rst $38
    add hl, bc
    inc bc
    ld b, $07
    jr jr_036_7272

    ld a, [de]
    dec de
    rst $38
    ld [de], a
    dec b
    add hl, bc
    ld [$0406], sp
    ld h, $27
    rst $38
    jr z, jr_036_7290

    ld de, $1305
    add hl, bc
    ld a, [bc]
    ld b, $ff
    ld [hl], $37
    jr c, jr_036_72ab

jr_036_7272:
    dec b
    inc d
    inc bc
    dec bc
    rst $38
    dec b
    ld a, [bc]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    inc d
    ld b, $ff
    dec d
    inc bc
    inc c
    dec c
    ld a, [bc]
    ld d, l
    ld d, [hl]
    ld d, a
    rst $38
    ld d, $17
    add hl, bc
    nop
    ld c, $0e
    ld h, d

jr_036_7290:
    ld h, e
    rra
    ld h, h
    ld h, l
    ld [bc], a
    ld [bc], a
    stop
    nop
    nop
    cp a
    dec l
    dec l
    ld l, l
    ld l, l
    ld l, l
    dec l
    rst $38
    pop hl
    dec c
    inc b
    ld a, [$f6e2]
    db $e4
    dec c
    rst $38

jr_036_72ab:
    ldh [$f3], a
    db $e4
    or $e3
    db $ec
    db $f4
    rst $10
    pop hl
    ld hl, sp-$3e
    ldh [$bc], a
    ldh [$ce], a
    db $e3
    ld l, l
    db $10
    rrca
    ld c, $0e
    rst $38
    ld c, $02
    ld [bc], a
    ld [bc], a
    ld bc, $0900
    ld de, $06ff
    ld b, $06
    dec b
    dec b
    dec b
    inc b
    inc bc
    rst $38
    add hl, bc
    dec b
    ld [de], a
    inc e
    dec e
    ld e, $1f
    rlca
    rst $38
    ld b, $03
    inc de
    dec b
    ld de, $2b2a
    inc l
    rst $38
    dec l
    inc b
    ld b, $08
    inc bc
    inc d
    dec b
    ld a, [hl-]
    rst $38
    dec sp
    inc a
    dec a
    ld b, $0a
    add hl, bc
    dec d
    ld b, $ff
    inc d
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld a, [bc]
    dec b
    dec bc
    rst $38
    add hl, bc
    rla
    ld d, $14
    ld e, b
    ld e, c
    ld e, d
    dec c
    rst $38
    inc c
    inc bc
    db $10
    ld [bc], a
    ld [bc], a
    ld h, [hl]
    ld h, a
    ld l, b
    rrca
    ld l, c
    ld c, $0e
    nop
    nop
    nop
    nop
    sbc l
    dec c
    rst $38
    pop hl
    ld c, l
    ld c, l
    ld c, l
    ld hl, sp-$1e
    ei
    db $e3
    dec l
    ldh [$f6], a
    ldh a, [$e2]
    pop af
    adc $e8
    pop bc
    db $e4
    cp b
    ldh [rP1], a
    ld bc, $ff02
    ld [bc], a
    ld [bc], a
    ld c, $0e
    ld c, $0f
    db $10
    inc bc
    rst $38
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $11
    rst $38
    add hl, bc
    inc bc
    ld b, $07
    jr nz, jr_036_7351

    ld b, $21
    rst $38
    ld [de], a
    dec b

jr_036_7351:
    add hl, bc
    ld [$0406], sp
    ld l, $2f
    rst $38
    jr nc, jr_036_738b

    ld de, $1305
    add hl, bc
    ld a, [bc]
    ld b, $ff
    ld a, $3f
    ld b, b
    ld b, c
    dec b
    inc d
    inc bc
    dec bc
    rst $38
    dec b
    ld a, [bc]
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    inc d
    ld b, $ff
    dec d
    inc bc
    inc c
    dec c
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    rst $38
    ld d, $17
    add hl, bc
    nop
    ld c, $0e
    ld h, d
    ld l, d
    rra
    ld l, e
    ld h, l
    ld [bc], a
    ld [bc], a
    stop

jr_036_738b:
    nop
    nop
    cp a
    dec l
    dec l
    ld l, l
    ld l, l
    ld l, l
    dec l
    rst $38
    pop hl
    dec c
    inc b
    ld a, [$f6e2]
    db $e4
    dec c
    rst $38
    ldh [$f3], a
    db $e4
    or $e3
    db $ec
    ld [$e1e1], a
    ldh a, [$ce]
    db $e4
    ret c

    db $e3
    cp h
    ldh [$ce], a
    db $e3
    ld l, l
    db $10
    rrca
    ld c, $ff
    ld c, $0e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0900
    rst $38
    ld de, $0606
    ld b, $05
    dec b
    dec b
    inc b
    rst $38
    inc bc
    add hl, bc
    dec b
    ld [de], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    rst $38
    rlca
    ld b, $03
    inc de
    dec b
    ld de, $3332
    rst $38
    inc [hl]
    dec [hl]
    inc b
    ld b, $08
    inc bc
    inc d
    dec b
    rst $38
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, $0a
    add hl, bc
    dec d
    rst $38
    ld b, $14
    ld de, $5352
    ld d, h
    ld a, [bc]
    dec b
    rst $38
    dec bc
    add hl, bc
    rla
    ld d, $14
    ld e, a
    ld h, b
    ld h, c
    rst $38
    dec c
    inc c
    inc bc
    db $10
    ld [bc], a
    ld [bc], a
    ld l, h
    ld l, l
    rra
    ld l, [hl]
    ld l, a
    ld c, $0e
    nop
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e8
    db $f4
    ldh [$fe], a
    ldh [$60], a
    rst $20
    db $e3
    or $e5
    db $eb
    push hl
    or $e9
    ld [c], a
    ldh a, [$3f]
    ld b, b
    rst $38
    db $e4
    rst $30
    ccf
    ld b, e
    ld h, $ff
    db $e4
    ld b, e
    ld b, h
    jr nc, jr_036_7464

    rst $38
    nop
    ld bc, $0302
    jr nc, jr_036_746b

    ld b, h
    ld b, l
    rst $38
    ld h, $26
    ld [$0a09], sp
    dec bc
    ld h, $26
    rst $38
    ld b, l
    ld b, [hl]
    jr nc, @+$32

    ld de, $1312
    inc d
    rst $30
    jr nc, jr_036_7482

    ld b, [hl]
    ret c

    ldh [rNR34], a
    rra
    jr nz, jr_036_747a

    sbc $d8
    db $e3
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ret c

    ldh [rSTAT], a
    ld b, d

jr_036_7464:
    rst $38
    ld b, d
    scf
    jr c, jr_036_74a2

    ld a, [hl-]
    ld b, d

jr_036_746b:
    ld b, d
    ld b, c
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e8
    db $f4

jr_036_747a:
    ldh [$fe], a
    ldh [$60], a
    rst $20
    db $e3
    or $e5

jr_036_7482:
    db $eb
    push hl
    or $e9
    ld [c], a
    ldh a, [$3f]
    ld b, b
    rst $38
    db $e4
    rst $30
    ccf
    ld b, e
    ld h, $ff
    db $e4
    ld b, e
    ld b, h
    jr nc, jr_036_74c6

    rst $38
    nop
    ld bc, $0302

jr_036_749b:
    jr nc, jr_036_74cd

    ld b, h
    ld b, l
    rst $38
    ld h, $26

jr_036_74a2:
    ld [$0a09], sp
    dec bc
    ld h, $26
    rst $38

jr_036_74a9:
    ld b, l
    ld b, [hl]
    jr nc, @+$32

    dec d
    ld d, $17
    jr jr_036_74a9

    jr nc, jr_036_74e4

    ld b, [hl]
    ret c

    ldh [rNR43], a
    inc hl
    inc h
    dec h
    sbc $d8
    db $e3
    ld l, $2b
    cpl
    jr nc, jr_036_749b

    ldh [rSTAT], a
    ld b, d

jr_036_74c6:
    rst $38
    ld b, d
    scf
    jr c, jr_036_7504

    ld a, [hl-]
    ld b, d

jr_036_74cd:
    ld b, d
    ld b, c
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e8
    db $f4
    ldh [$fe], a
    ldh [$60], a
    rst $20
    db $e3
    or $e5

jr_036_74e4:
    db $eb
    push hl
    or $e9
    ld [c], a
    ldh a, [$3f]
    ld b, b
    rst $38
    db $e4
    rst $30
    ccf
    ld b, e
    ld h, $ff
    db $e4
    ld b, e
    ld b, h
    jr nc, jr_036_7528

    rst $38
    inc b
    dec b
    ld b, $07
    jr nc, jr_036_752f

    ld b, h
    ld b, l
    rst $38
    ld h, $26

jr_036_7504:
    inc c
    dec c
    ld c, $0f
    ld h, $26
    rst $38
    ld b, l
    ld b, [hl]
    jr nc, @+$32

    add hl, de
    ld a, [de]
    dec de
    inc e
    ld [hl], a
    jr nc, jr_036_7546

    ld b, [hl]
    ret c

    pop hl
    daa
    jr z, jr_036_7545

    ret c

    db $e3
    rst $28
    ld sp, $3332
    jr nc, @-$26

    ldh [rSTAT], a
    ld b, d
    ld b, d

jr_036_7528:
    ld a, a
    dec sp
    inc a
    add hl, sp
    ld a, [hl-]
    ld b, d
    ld b, d

jr_036_752f:
    ld b, c
    nop
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e8
    pop af
    pop hl
    cp $e0
    nop
    rst $20
    db $e4
    rst $18
    db $e3

jr_036_7545:
    db $ed

jr_036_7546:
    ld [c], a
    ld a, [$f6e1]
    db $e3
    ret c

    db $e4
    rst $38
    pop hl
    ld [c], a
    db $e3
    xor $f5
    db $e3
    dec l
    ccf
    ld b, b
    rst $38
    db $e4
    ccf
    ld b, e
    ld h, $fe
    rst $38
    db $e4
    ld b, e
    ld b, h
    jr nc, jr_036_7593

    rlca
    ld b, $05
    rst $38

jr_036_7567:
    inc b
    jr nc, jr_036_759a

    ld b, h
    ld b, l
    ld h, $26
    rrca
    rst $38
    ld c, $0d
    db $10
    ld h, $26
    ld b, l
    ld b, [hl]
    jr nc, @+$01

    jr nc, jr_036_7597

    dec de
    ld a, [de]
    dec e
    jr nc, jr_036_75b0

    ld b, [hl]
    xor $d8
    ldh [$29], a
    jr z, @+$29

    ret c

    db $e4
    inc [hl]
    dec [hl]
    ld [hl], $fd
    jr nc, jr_036_7567

    ldh [rSTAT], a
    ld b, d
    ld b, d

jr_036_7593:
    scf
    jr c, jr_036_75d3

    rrca

jr_036_7597:
    ld a, $42
    ld b, d

jr_036_759a:
    ld b, c
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ret nz

    ei
    pop hl
    cp $e3
    pop af

jr_036_75b0:
    ld [c], a
    or $e6
    db $ed
    db $e4
    ld [c], a
    ld a, [c]
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld d, c
    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld a, [hl]
    db $fc
    pop hl
    ld d, c
    ld d, l
    ld e, b
    ld e, c
    ld e, c
    ld e, b
    db $fc
    pop hl
    rst $38
    ld d, l
    ld d, [hl]
    ld e, d
    scf

jr_036_75d3:
    nop
    ld bc, $0302
    rst $38
    scf
    ld e, d
    ld d, [hl]
    ld d, a
    ld e, e
    ld b, d
    db $10
    ld de, $12df
    inc de
    ld b, d
    ld e, e
    ld d, a
    ld [c], a
    ldh [$1f], a
    jr nz, jr_036_7666

    ld hl, $e222
    db $e3
    cpl
    jr nc, jr_036_7623

    ld [hl-], a
    ld [c], a
    db $e3
    rst $28
    ld a, $3f
    ld b, b
    ld b, c
    ld [c], a
    ldh [rHDMA1], a
    ld d, d
    ld d, h
    ld a, a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, h
    ld d, d
    ld d, c
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ret nz

    ei
    pop hl
    cp $e3
    pop af
    ld [c], a
    or $e6
    db $ed
    db $e4
    ld [c], a
    ld a, [c]

jr_036_7623:
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld d, c
    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld a, [hl]
    db $fc
    pop hl
    ld d, c
    ld d, l
    ld e, b
    ld e, c
    ld e, c
    ld e, b
    db $fc
    pop hl
    rst $38
    ld d, l
    ld d, [hl]
    ld e, d
    scf
    inc b
    dec b
    ld b, $07
    rst $38
    scf
    ld e, d
    ld d, [hl]
    ld d, a
    ld e, e
    ld b, d
    inc d
    dec d
    rst $18
    ld d, $17
    ld b, d
    ld e, e
    ld d, a
    ld [c], a
    ldh [rNR44], a
    inc h
    ld a, e
    dec h
    ld h, $e2
    db $e3
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $e2
    db $e3
    rst $28
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_036_7666:
    ld [c], a
    ldh [rHDMA1], a
    ld d, d
    ld d, h
    ld a, a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, h
    ld d, d
    ld d, c
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ret nz

    ei
    pop hl
    cp $e3
    pop af
    ld [c], a
    or $e6
    db $ed
    db $e4
    ld [c], a
    ld a, [c]
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld d, c
    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld a, [hl]
    db $fc
    pop hl
    ld d, c
    ld d, l
    ld e, b
    ld e, c
    ld e, c
    ld e, b
    db $fc
    pop hl
    rst $38
    ld d, l
    ld d, [hl]
    ld e, d
    scf
    ld [$0a09], sp
    dec bc
    rst $38
    scf
    ld e, d
    ld d, [hl]
    ld d, a
    ld e, e
    ld b, d
    jr jr_036_76d1

    rst $18
    ld a, [de]
    dec de
    ld b, d
    ld e, e
    ld d, a
    ld [c], a
    ldh [$27], a
    jr z, jr_036_773e

    add hl, hl
    ld a, [hl+]
    ld [c], a
    db $e3
    scf
    jr c, jr_036_7703

    ld a, [hl-]
    ld [c], a
    db $e3
    rst $28
    ld b, [hl]
    ld b, a
    ld c, b

jr_036_76d1:
    ld c, c
    ld [c], a
    ldh [rHDMA1], a
    ld d, d
    ld d, h
    ld a, a
    ld c, a
    ld d, b
    ld c, l
    ld c, [hl]
    ld d, h
    ld d, d
    ld d, c
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ret nz

    ei
    pop hl
    cp $e3
    pop af
    ld [c], a
    or $e6
    db $ed
    db $e4
    ld [c], a
    ld a, [c]
    ld c, l
    ld c, l
    cp $cf
    db $e3
    ld c, l
    ld l, l
    ld d, c

jr_036_7703:
    ld d, d
    ld d, e
    ld d, e
    ld d, d
    ld a, [hl]
    db $fc
    pop hl
    ld d, c
    ld d, l
    ld e, b
    ld e, c
    ld e, c
    ld e, b
    db $fc
    pop hl
    rst $38
    ld d, l
    ld d, [hl]
    ld e, d
    scf
    inc c
    dec c
    ld c, $0f
    rst $38
    scf
    ld e, d
    ld d, [hl]
    ld d, a
    ld e, e
    ld b, d
    inc e
    dec e
    rst $18
    ld d, $1e
    ld b, d
    ld e, e
    ld d, a
    ld [c], a
    ldh [$2b], a
    inc l
    ld a, e
    dec l
    ld l, $e2
    db $e3
    scf
    dec sp
    inc a
    dec a
    ld [c], a
    db $e3
    rst $28
    ld b, d
    ld b, e
    ld b, h
    ld c, d

jr_036_773e:
    ld [c], a
    ldh [rHDMA1], a
    ld d, d
    ld d, h
    ld a, a
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld d, h
    ld d, d
    ld d, c
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    rst $30
    rst $20
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l
    cp e
    db $e3
    ld a, a
    ld c, l
    ld l, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld c, a
    db $fc
    pop hl
    cp a
    ld c, [hl]
    ld d, c
    ld d, l
    ld hl, $5521
    db $fc
    pop hl
    ld d, c
    rst $38
    ld d, d
    ld d, [hl]
    ld sp, $0100

jr_036_7783:
    ld [bc], a
    inc bc
    ld sp, $56ff
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    ld c, $0f
    db $10
    rst $28
    ld de, $5758
    ld d, e
    ld [c], a
    ldh [rNR34], a
    rra
    jr nz, @-$20

    ld [c], a
    db $e4
    dec l
    ld l, $2f
    jr nc, jr_036_7783

    db $e3
    dec sp
    inc a
    ei
    dec a
    ld a, $e2
    ldh [$4e], a
    ld c, a
    ld c, b
    ld c, b
    ld c, c
    rra
    ld c, d
    ld c, b
    ld c, b
    ld c, a
    ld c, [hl]
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    rst $30
    rst $20
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l
    cp e
    db $e3
    ld a, a
    ld c, l
    ld l, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld c, a
    db $fc
    pop hl
    cp a
    ld c, [hl]
    ld d, c
    ld d, l
    ld hl, $5521
    db $fc
    pop hl
    ld d, c
    rst $38
    ld d, d
    ld d, [hl]
    ld sp, $0504
    ld b, $07
    ld sp, $56ff
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    ld [de], a
    inc de
    inc d
    rst $28
    dec d
    ld e, b
    ld d, a
    ld d, e
    ld [c], a
    ldh [rNR43], a
    inc hl
    inc h
    cp l
    dec h
    ld [c], a
    db $e3
    ld sp, $3332
    inc [hl]
    ld [c], a
    db $e3
    ccf
    rst $30
    ld b, b
    ld b, c
    ld b, d
    ld [c], a
    ldh [$4e], a
    ld c, a
    ld c, b
    ld c, b
    ccf
    ld c, e
    ld c, h
    ld c, b
    ld c, b
    ld c, a
    ld c, [hl]
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    rst $30
    rst $20
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l
    cp e
    db $e3
    ld a, a
    ld c, l
    ld l, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld c, a
    db $fc
    pop hl
    cp a
    ld c, [hl]
    ld d, c
    ld d, l
    ld hl, $5521
    db $fc
    pop hl
    ld d, c
    rst $38
    ld d, d

jr_036_7852:
    ld d, [hl]
    ld sp, $0908
    ld a, [bc]
    dec bc
    ld sp, $56ff
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    ld d, $17
    jr jr_036_7852

    add hl, de
    ld e, b
    ld d, a
    ld d, e
    ld [c], a
    ldh [rNR52], a
    daa
    jr z, @-$41

    add hl, hl
    ld [c], a
    db $e3
    ld sp, $3635
    scf
    ld [c], a
    db $e3
    ccf
    rst $30
    ld b, e

Jump_036_7879:
    ld b, h
    ld b, l
    ld [c], a
    ldh [$4e], a
    ld c, a
    ld c, b
    ld c, b
    ccf
    ld c, e
    ld c, h
    ld c, b
    ld c, b
    ld c, a
    ld c, [hl]
    nop
    nop
    nop
    adc a
    dec c
    dec c
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    nop
    ei
    pop hl
    or $e2
    rst $20
    ld [c], a
    db $fd
    ld [c], a
    db $ec
    db $e4
    or $e6
    db $eb
    db $e3
    ld [c], a
    add sp, -$05
    ld c, l
    ld c, l
    cp e
    db $e3
    ld c, l
    ld l, l
    ld c, [hl]
    ld c, a
    ld d, b
    ei
    ld d, b
    ld c, a
    db $fc
    pop hl
    ld c, [hl]
    ld d, c
    ld d, l
    ld hl, $fd21
    ld d, l
    db $fc
    pop hl
    ld d, c
    ld d, d
    ld d, [hl]
    ld sp, $0a0b
    rst $38
    inc c
    dec c
    ld sp, $5456
    ld d, e
    ld d, a
    ld e, b
    ld a, a
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, b
    ld d, a
    ld d, e
    ld [c], a
    ldh [$ef], a
    dec h
    ld a, [hl+]
    dec hl
    inc l
    ld [c], a
    db $e3
    ld sp, $3938
    cp l
    ld a, [hl-]
    ld [c], a
    db $e3
    ccf
    ld b, [hl]
    ld b, a
    ld b, l
    ld [c], a
    ldh [$4e], a
    rst $38
    ld c, a
    ld c, b
    ld c, b
    ld c, l
    ld c, h
    ld c, b
    ld c, b
    ld c, a
    ld bc, $004e
    nop
    nop
    adc a
    dec c
    dec c

Call_036_78ff:
    dec c
    dec l
    db $fc
    ld [c], a
    ld a, [$f5e2]
    ldh [$2d], a
    ld h, b
    ei
    pop hl
    cp $e3
    rst $30
    rst $20
    db $ec
    and $e2
    db $f4
    ld c, l
    ld c, l
    cp e
    db $e3
    ld a, a
    ld c, l
    ld l, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, b
    ld c, a
    db $fc
    pop hl
    cp a
    ld c, [hl]
    ld d, c
    ld d, l
    ld hl, $5521
    db $fc
    pop hl
    ld d, c
    rst $38
    ld d, d

jr_036_792d:
    ld d, [hl]
    ld sp, $0908
    ld a, [bc]
    dec bc
    ld sp, $56ff
    ld d, h
    ld d, e
    ld d, a
    ld e, b
    ld d, $59
    jr jr_036_792d

    add hl, de
    ld e, b
    ld d, a
    ld d, e
    ld [c], a
    ldh [rNR52], a
    ld e, d
    jr z, @-$41

    add hl, hl
    ld [c], a
    db $e3
    ld sp, $3635
    scf
    ld [c], a
    db $e3
    ccf
    rst $30
    ld b, e
    ld b, h
    ld b, l
    ld [c], a
    ldh [$4e], a
    ld c, a
    ld c, b
    ld c, b
    ccf
    ld c, e
    ld c, h
    ld c, b
    ld c, b
    ld c, a
    ld c, [hl]
    nop
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, c
    ld a, [hl]
    db $fc
    pop hl
    ld d, b
    ld d, [hl]
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    db $fc
    pop hl
    rst $38
    ld e, b

jr_036_798b:
    ld d, a
    inc b
    nop
    nop
    ld bc, $0002
    rst $38
    nop
    inc bc
    ld e, c
    ld d, [hl]
    ld e, d

jr_036_7998:
    jr c, @+$07

    ld b, $df
    rlca
    ld [$5d5e], sp
    ld e, b
    ld [c], a
    ldh [$15], a
    ld d, $7b
    rla
    jr jr_036_798b

    db $e3
    dec h
    ld h, $27
    jr z, @-$1c

    db $e3
    rst $28
    dec [hl]
    ld [hl], $37
    jr c, jr_036_7998

    ldh [$50], a
    ld d, c
    ld d, h
    ld a, a
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld d, l
    ld d, c
    ld d, b
    nop
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, c
    ld a, [hl]
    db $fc
    pop hl
    ld d, b
    ld d, [hl]
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    db $fc
    pop hl
    cp a
    ld e, b
    ld d, a
    inc b
    nop
    nop
    inc bc
    db $fc
    pop hl
    ld e, c
    rst $38
    ld d, [hl]
    ld e, d
    jr c, @+$0b

    ld a, [bc]
    dec bc
    inc c
    ld e, [hl]
    ld a, e
    ld e, l
    ld e, b
    ld [c], a
    ldh [rNR24], a
    ld a, [de]
    dec de
    inc e
    ld [c], a
    db $e3
    rst $28
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    ld [c], a
    db $e3
    add hl, sp
    ld a, [hl-]
    dec sp
    db $fd
    inc a
    ld [c], a
    ldh [$50], a
    ld d, c
    ld d, h
    ld c, c
    ld c, d
    ld c, e
    rrca
    ld c, b
    ld d, l
    ld d, c
    ld d, b
    nop
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, c
    ld a, [hl]
    db $fc
    pop hl
    ld d, b
    ld d, [hl]
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    db $fc

jr_036_7a44:
    pop hl
    cp a
    ld e, b
    ld d, a
    inc b
    nop
    nop

jr_036_7a4b:
    inc bc
    db $fc
    pop hl
    ld e, c
    rst $38
    ld d, [hl]
    ld e, d
    jr c, @+$0f

    ld c, $0f
    db $10
    ld e, [hl]
    ld a, e
    ld e, l
    ld e, b
    ld [c], a
    ldh [rNR33], a
    ld e, $1f
    jr nz, jr_036_7a44

    db $e3
    rst $28
    dec l
    ld l, $2f
    jr nc, jr_036_7a4b

    db $e3
    dec a
    ld a, $3f
    db $fd
    ld b, b
    ld [c], a
    ldh [$50], a
    ld d, c
    ld d, h
    ld c, c
    ld c, h
    ld c, l
    rrca
    ld c, b
    ld d, l
    ld d, c
    ld d, b
    nop
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, c
    ld a, [hl]
    db $fc
    pop hl
    ld d, b
    ld d, [hl]
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    db $fc
    pop hl
    cp a
    ld e, b
    ld d, a
    inc b
    nop
    nop
    inc bc
    db $fc
    pop hl
    ld e, c
    rst $38
    ld d, [hl]
    ld e, d
    jr c, @+$13

    ld [de], a
    inc de
    inc d
    ld e, [hl]
    ld a, e
    ld e, l
    ld e, b
    ld [c], a
    ldh [rNR42], a
    ld [hl+], a
    inc hl
    inc h
    ld [c], a
    db $e3
    rst $28
    ld sp, $3332
    inc [hl]
    ld [c], a
    db $e3
    ld b, c
    ld b, d
    ld b, e
    db $fd
    ld b, h
    ld [c], a
    ldh [$50], a
    ld d, c
    ld d, h
    ld c, c
    ld c, [hl]
    ld c, a
    rrca
    ld c, b
    ld d, l
    ld d, c
    ld d, b
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

Jump_036_7b00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_036_7b0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_036_7cfb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_036_7dff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_036_7e37:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_036_7ef1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_036_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_036_7fe5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_036_7fff:
    rst $38
