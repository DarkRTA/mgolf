INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $07b", ROMX[$4000], BANK[$7b]

    ld [$9940], sp
    ld c, h
    ret nc

    ld e, c
    sub l
    ld h, a
    db $10
    ld b, b
    ld d, b
    ld b, b
    sub h
    ld c, d
    ld a, $4b
    ld e, c
    ld de, $7fff
    adc $39
    nop
    nop
    rst $38
    ld a, a
    rst $38
    dec h
    ld e, c
    ld de, $0000
    rst $38
    ld a, a
    ld c, c
    rrca
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    rst $38
    ld a, a
    rst $38
    dec h
    add b
    ld a, l
    nop
    nop
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    ld e, c
    ld de, $0000
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    add b
    ld a, l
    nop
    nop
    rst $38
    ld [bc], a
    ld e, c
    ld de, $25ff
    nop
    nop
    rst $38
    ld a, a
    rra
    nop
    rst $38
    dec h
    nop
    nop
    dec sp
    nop
    rst $38
    cp $e8
    rrca
    nop
    ld bc, $eaf0
    db $f4
    rst $28
    rst $38
    push de
    nop
    nop
    nop
    ld d, b
    nop
    xor d
    nop
    db $fd
    ld d, l
    db $fc
    and $ff
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    rra
    nop
    add a
    nop
    ld b, c
    ldh a, [$e4]
    xor [hl]
    rst $20
    and $e1
    cp $a0
    rst $20
    db $fd
    nop
    ld a, [$f500]
    nop
    cp $fa
    ld hl, sp-$20
    ld [$e0b8], a
    xor d
    nop
    ld d, h
    nop
    and b
    ld c, e
    nop
    ld b, b
    or h
    and $80
    and [hl]
    ldh [$fd], a
    pop hl
    xor d
    ld a, h
    ldh [$ae], a
    push af
    pop hl
    ld a, [hl+]
    nop
    dec b
    ldh a, [$e4]
    ld d, l
    db $f4
    ldh [$15], a
    ei
    nop
    adc d
    adc h

jr_07b_40ad:
    ld [c], a
    dec d
    nop
    adc a
    nop
    ld d, a
    xor [hl]
    add b
    and $2a
    nop
    ld b, l
    sub [hl]
    and $af
    add sp, -$20
    xor e
    call c, $e880
    sub h
    pop hl
    add sp, $00
    ret nc

    jr nz, jr_07b_40ad

    ld d, l
    nop
    add hl, sp
    add d
    and b
    db $e4
    ld h, h
    jp hl


    dec e
    nop
    ld a, [bc]
    nop
    add sp, -$3e
    pop hl
    rst $38
    ld [bc], a
    nop
    db $f4
    ld bc, $01e9
    pop de
    dec c
    rst $38
    db $ed
    rra
    rst $18

jr_07b_40e5:
    rra
    cp a
    rra
    ld e, a
    rra
    rst $38
    sbc a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$03
    ld hl, sp+$2b
    ld hl, sp-$04

jr_07b_40f6:
    rst $38
    ld [c], a
    rst $38
    jp nc, Jump_07b_5fc3

    sub [hl]
    ldh [$62], a
    ld [c], a
    adc e
    cp $fe
    ret nz

    call nz, $eaea
    ret nz

    ld a, $e3
    or b
    jp $731f


    nop
    inc bc
    jr c, jr_07b_40f6

    inc b
    rst $20
    push de
    nop
    jr z, jr_07b_40e5

    pop hl
    xor d
    db $fc
    ret nz

    xor d
    jp nc, Jump_000_01e6

    or h
    call nz, $1015
    ldh [$50], a
    ld a, [hl-]
    ldh a, [$c0]
    nop
    ld hl, sp-$40
    inc d
    nop
    xor b
    add sp, -$40
    rst $38
    push af
    jp hl


    ld [bc], a
    ldh [$c4], a
    rst $18
    push hl
    and d
    ld [hl], b
    ret nz

    jr z, jr_07b_413e

jr_07b_413e:
    inc b
    cp b
    ret nc

    and $dc
    pop bc
    call c, $fee9
    nop
    ld a, l
    sub h
    call nz, Call_07b_4a54
    ld [de], a
    ldh [rP1], a
    ret c

    ret nz

    ld b, l
    ld a, [de]
    ldh [$a1], a
    rst $20
    and b
    ret nz

    db $eb
    db $fd
    rrca
    rst $38
    ldh [rTAC], a
    rlca
    inc bc
    inc bc
    rlca
    dec b
    rst $38
    inc c
    ld [$1018], sp
    ld e, $1e
    db $fc
    cp $ff
    db $fc
    db $fd
    db $fc
    cp $fe
    ld sp, hl
    db $fd
    ld a, [$faff]
    push af
    dec d
    ld l, d
    ld a, [bc]
    dec [hl]
    ld bc, $fcbf
    db $10
    ret nz

    call z, Call_000_01a0
    cp $02
    db $fd
    dec b

jr_07b_4189:
    ld a, [$0aff]
    push af
    ret nz

    ret nz

    jr c, jr_07b_4189

    ld b, $fe
    rst $38
    xor e
    ld d, l
    ld d, l
    xor e
    xor a
    ld d, b
    ld a, a
    add b
    db $fd
    rst $38
    dec sp
    call nz, $c0c0
    and b
    ld h, b
    ldh a, [$90]
    rst $38
    ldh a, [$50]
    ldh [$30], a
    ld hl, $3f3f
    daa
    rst $38
    ld e, a
    ld l, a
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    cp a
    ret nz

    rst $38
    cp a
    call z, $d2b3
    rst $18
    add b
    rst $28
    ret nz

    rst $38
    rst $30
    ldh a, [$ef]
    ret c

    rst $30
    inc c
    ei
    ld b, $ff
    push af
    dec bc
    ei

Call_07b_41ce:
    dec b
    dec d
    ld [$f40b], a
    rst $38
    rla
    add sp, $2b
    call nc, $e817
    cpl
    ret nc

    rst $28
    ld d, a
    xor b
    rst $28
    ret nc

    add c
    xor l
    ldh a, [rNR10]
    ldh a, [$7f]
    db $10
    ld hl, sp+$08
    ld hl, sp+$08
    db $fc
    inc b
    cp $e1
    reti


    cp $46
    jp hl


    jp nz, Jump_000_03c0

    inc c
    ret c

    call z, $d1c0
    rst $18
    or c
    ld sp, hl
    cp c
    db $fc
    cp h
    cp $e5
    db $ec
    xor h
    rst $38
    db $fc
    inc bc
    ld a, [$fd05]
    add d
    cp $81
    rst $38
    db $fd
    add d
    ld a, [$fc85]
    add e
    ld_long a, $ff85
    rst $30
    add sp, -$05
    db $f4
    ld a, a
    ld hl, sp+$7f
    db $fc
    rst $08
    ld a, a
    cp $7f
    rst $38
    rst $38
    ld [c], a
    rst $38
    adc c
    add b
    rst $38
    add a
    ld h, b

Jump_07b_422e:
    cp $02
    cp $e5
    adc [hl]
    db $e3
    adc a
    ret nz

    rst $38
    ldh [rTIMA], a
    ld [hl], a
    rlca

jr_07b_423b:
    ld a, [bc]
    ld c, $ec
    ret nz

    inc bc
    dec c
    rlca
    ld c, l
    pop bc
    rst $38
    inc bc
    nop
    inc bc
    inc b
    ld b, $09
    rrca
    db $10
    rst $38
    ccf
    nop
    xor [hl]
    pop de
    rst $00
    jr c, jr_07b_425b

    ld sp, hl
    rst $38
    xor h
    ld d, e
    ld e, d
    and l

jr_07b_425b:
    push af
    ld a, [bc]
    or d
    ld e, l
    rst $38
    ld d, b
    cp a
    or b
    ld a, a
    ld b, b
    or b
    add b
    ld a, h
    sub a
    ld d, b
    xor [hl]
    add b
    call c, $02c2
    cp $e0
    jr c, jr_07b_423b

    add b
    cp $1c
    and b
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$ff0c], sp
    dec bc
    inc c
    inc b
    rlca
    dec b
    ld b, $07
    inc b
    rst $38
    rlca
    inc b
    db $ec
    xor h
    ld a, h
    cp h
    db $dd
    dec a
    rst $18
    rst $38
    nop
    ld sp, hl
    nop
    ld a, [c]
    db $e3
    add b
    ei
    nop
    rst $38
    db $f4
    adc e
    ei
    add l
    push af
    dec bc
    jp hl


    rla
    scf
    db $d3
    cpl
    rst $28
    db $fc
    ldh [$e9], a
    rla
    ld e, e
    db $e3
    ld d, l
    ldh [rIE], a
    ld hl, sp-$04
    di
    rst $30
    rst $28
    ret z

    rst $38
    rst $38
    rst $38
    sub b
    rst $08
    db $fc
    rst $20
    ei
    di
    db $fc
    ld a, c
    ld a, a
    cp $3c
    rst $38
    ld a, $ff
    sbc a
    rst $38
    db $e4
    pop bc
    rst $28
    ld hl, sp+$08
    ldh a, [$f0]
    jp c, Jump_07b_7cc1

    add h
    cp [hl]
    rst $38
    ld b, d
    ld a, [de]
    rrca
    ccf
    scf
    dec b
    inc bc
    dec de
    rst $38
    rla
    rra
    rrca
    dec l
    dec de
    ld e, d
    ld [hl], a
    ccf
    rst $38
    ccf
    rst $18
    ld h, b
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    rst $38
    and b
    cp $e1
    call z, $eaf3
    push af
    rst $10
    rst $38
    ld hl, sp+$18
    rst $38
    ld e, l
    cp [hl]
    sbc e
    ld a, h
    dec a
    rst $38
    cp $fc
    rst $38
    ld e, d
    rst $38
    cp [hl]
    ld a, a
    ld a, a
    cp a
    rst $38
    ld b, $ff
    ld e, $ff
    inc bc
    ld a, [$07e0]
    rst $28
    rst $38
    rra
    rst $38
    ld a, a

jr_07b_431a:
    db $fc
    ldh [rP1], a
    ldh [rNR41], a
    rst $38
    ret nc

    nop
    db $fc
    add h
    ld a, [$e718]
    inc [hl]
    ld l, a
    res 1, b
    rst $30
    ld b, b
    ld b, b
    db $ec
    db $10
    ret nc

    add c
    jp z, $fffc

    ldh [$58], a
    and a
    ld a, b
    ld a, b
    and h
    call nz, $9c64
    rst $28
    dec b
    ld b, $02
    inc bc
    add sp, -$17
    rst $28
    db $10
    rst $30
    rst $38
    jr c, jr_07b_431a

    ldh a, [rIE]
    nop
    cp a
    ret nz

    cp [hl]
    rst $38
    pop bc
    ld e, l
    ld h, d
    ld b, b
    ld a, a
    ret nc

    cpl
    xor b
    rst $38
    ld d, a
    ret nc

    cpl
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld a, l
    ld e, a
    add h
    ld h, c
    inc c
    rst $38
    ld [de], a
    rst $38
    db $10
    ld a, h
    ld h, d
    rst $18
    ld de, $3fff
    rst $38
    rst $00
    ld a, d
    ldh [$1f], a
    rst $38
    rst $38
    ld a, $fe
    inc a
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$fd]
    ret nz

    jp nc, $dec0

    and d
    ld h, a
    ld e, c
    dec sp
    inc [hl]
    rst $28
    dec c
    ld a, [bc]
    rlca
    ld b, $94
    rst $20
    add b
    add b
    ret nz

    rst $30
    ld b, b
    ldh [rNR41], a
    and $a0
    sub b
    ld h, b
    ld h, b
    db $10
    rst $38
    db $10
    db $10
    ld de, $3838
    ld [hl], c
    ld [hl], b
    dec sp
    rst $38
    inc a
    cp [hl]
    db $fd
    ld a, l
    ei
    ccf
    ld a, a
    ld l, e
    rst $38
    ld [hl], a
    rst $10
    db $ed
    ld a, a
    ei
    cp a
    ld l, a
    ld a, e
    rst $38
    rst $18
    or $ff
    res 7, a
    and l
    ld e, e
    ld a, [hl]
    cp a
    ld sp, hl
    cp l
    rst $38
    ld e, e
    rst $38
    db $fd
    inc d
    ret nz

    cp a
    xor a
    rst $38
    ld e, [hl]
    rst $38
    scf
    ld a, [$7de0]
    ld [$fec2], sp
    ld a, [$e012]
    rst $18
    db $ec
    ldh [rNR22], a
    rst $38
    ld c, a
    rst $38
    ld c, e
    ei
    cp a
    sub a
    or $c0
    ccf
    rst $38
    ld c, a
    cp a
    sbc a
    xor $3d
    and b
    jp nc, $e2ef

    ld a, b
    ldh [$ee], a
    rst $38

jr_07b_43f7:
    rst $30
    ei

jr_07b_43f9:
    rst $38
    xor a
    sbc $e0
    jr jr_07b_43f7

    jr nc, jr_07b_43f9

    jr nc, @+$01

Call_07b_4403:
    cp $78
    rst $38
    cp b
    rst $38
    ld a, [hl]
    db $fd
    ld_long a, $fffb
    ld a, h
    rra
    and d
    inc b
    add h
    inc c
    db $ec
    ld c, [hl]
    ld a, a
    cp $dc
    db $fc
    ld l, h
    cp $df
    cp $fe
    push bc
    rst $38
    rlca
    rlca
    ld a, $38
    ld e, b
    ld h, a
    ld b, b
    ld a, a
    rst $38
    sub $e2
    and [hl]
    jp nz, $f7cf

    ld hl, sp-$08
    rst $38
    jp Jump_000_3f80


    nop
    ld [hl], a
    adc a
    ld a, [hl-]
    db $fc
    rst $38
    rlca
    rrca
    ld a, c
    ld a, a
    db $ec
    add e
    inc c
    inc bc
    ld a, a
    rla
    rrca
    ld a, b
    db $fc
    and b
    ret nz

    ld de, $621b
    rst $38
    add c
    add c
    ld a, [$ddbb]
    add $39
    ld c, $ff
    ld l, c
    ld e, $7c
    ccf
    nop
    nop
    ld [hl], b
    ld [hl], b
    rst $38
    adc b
    ld hl, sp-$64
    inc b
    ld a, [bc]
    ld b, $e6
    ld [bc], a
    rst $38
    ld d, $e2
    ld l, c
    di
    jr nz, jr_07b_44ae

    jr jr_07b_4490

    cp $80
    add c
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    ld [hl-], a
    ld [hl-], a
    ld e, h
    ei
    ld e, h
    rlca
    ld [$f8c0], a
    ld hl, sp-$20
    ldh [$80], a
    ld a, a
    add b
    inc bc
    inc bc
    ld c, $0e
    dec e
    dec e
    ld b, a
    ldh [$fd], a

jr_07b_4490:
    ld bc, $e0fe
    nop
    rst $38
    rst $38

jr_07b_4496:
    xor e
    ld d, a
    ld d, l
    rst $20
    xor e
    and c
    ld e, a
    xor $c5
    and $c5
    ld bc, $0301
    db $fc
    add b
    ret nz

    ret nz

    pop hl
    ld d, $17
    add hl, de
    dec de
    ccf

jr_07b_44ae:
    ccf
    ld a, c
    ld l, [hl]
    ld a, [de]
    and b
    jr jr_07b_4496

    db $fd
    cp $da
    db $fd
    ld a, [$f7e1]
    db $dd
    or a
    cp a
    ld [$6ba0], sp
    rst $38
    ld d, c
    rst $28
    rst $38
    sub [hl]
    db $eb
    xor a
    ld e, e
    ld a, a
    db $db
    db $db
    ld a, a
    ld sp, hl
    rst $28
    rst $28
    pop hl
    ld [c], a
    ret nz

    ld d, a
    rst $38
    dec hl
    rst $38
    rst $18
    ld c, [hl]
    db $f4
    ld [c], a
    rst $38
    rst $38
    rst $10
    inc b
    ldh [$e1], a
    add c
    rst $30
    ld l, h
    ret nz

    sub l
    rst $38
    and $e0
    cpl
    db $e4
    and b
    ld l, a
    ret nc

    ret nz

    call z, $ee81
    ld [hl+], a
    ld [c], a
    ldh [$ef], a
    ret nz

    ret nz

    ld [c], a
    pop hl
    cp l
    add c
    ei
    ret z

    and b
    ld a, [c]
    pop hl
    cp d
    push bc
    db $e3
    db $fc
    and $e2
    cp [hl]
    rst $38
    db $ed
    ld b, a
    and h
    db $eb
    rst $38
    rst $38
    db $dd
    cp $e6
    ld sp, hl
    add b
    rst $38
    xor d
    cp $ac
    ldh [$f9], a
    cp $e0
    rst $38
    pop bc
    ldh [rIE], a
    rst $38
    nop
    dec d
    db $eb
    ld l, $df
    db $76
    ld hl, sp-$41
    rst $38
    ret nz

    rst $10
    jr z, jr_07b_453a

    db $f4
    xor e
    inc bc
    call c, Call_000_3fff
    add sp, -$10
    add h
    nop
    ld l, b

jr_07b_453a:
    nop
    db $f4
    cp $e9
    jr nz, @-$0a

    nop
    jp c, $8be7

    rlca
    adc c
    rst $38
    rlca
    adc l
    inc bc
    call z, Call_07b_4403
    inc bc
    ld b, [hl]
    rst $38
    ld bc, $0166
    sub c
    sbc e
    rla
    add hl, de
    rla
    rst $38
    add hl, de
    ld c, $19
    adc d
    sbc l
    sbc d
    adc l
    adc d
    rst $30
    adc l
    ld c, d
    call Call_07b_6285
    rlca
    ld sp, hl
    adc a
    di
    rst $28
    sbc a
    rst $20
    cp a
    rst $08
    nop
    and b
    push af
    cp [hl]
    ld l, d
    di
    rst $38
    or $9a
    ldh [$4e], a
    pop hl
    sbc $ff
    cp l
    rst $38
    ld a, a
    ld hl, sp+$3f
    db $f4
    ld a, a
    ld [$d5ff], a
    sub b
    ldh [$95], a
    ld d, a
    ld b, b
    ret nz

    ld e, a
    inc h
    and b
    rla
    ld hl, sp-$1e
    cp b
    add l
    add b
    cp $ff
    ld [$0000], a
    ld e, $1f
    rra
    rra
    dec a
    rst $38
    ccf
    ld a, e
    ld a, a
    dec a
    ccf
    ld a, a
    ld a, a
    rst $10
    rst $38
    rst $38
    ld l, a
    ld a, a
    ei
    rst $38
    ld [hl], l
    rst $38
    db $ed
    rst $38
    ei
    ld a, [$d7f7]
    db $ec
    cp $ff
    db $db
    rst $28
    db $fd
    ld h, [hl]
    cp e
    ld a, [$a0fa]
    ld d, l
    xor a
    cp b
    rst $38
    ld c, a
    ld h, a
    jp c, $b7da

    dec a
    rst $30
    reti


    ld a, [$c0b3]
    ld a, a
    ld [bc], a
    ldh [$f7], a
    cp a
    ei
    rst $18
    cp $4b
    ld l, a
    ld e, a
    ld a, [de]
    ld [c], a
    db $dd
    cp $c0
    and b
    and c
    rst $38
    add sp, -$1f
    db $eb
    rst $38
    inc bc
    cp a
    ld h, b
    ld b, $53
    ld h, b
    inc c
    ld hl, sp+$09
    rst $38
    ld hl, sp+$19
    pop af
    inc de
    pop af
    ld de, $211f
    rst $38
    ccf
    ld b, e
    ld a, [hl]
    jp nz, $867e

    db $fc
    add a
    rst $38
    db $fc
    rrca
    ld sp, hl
    rrca
    ld a, [$1f10]
    db $10
    rst $38
    rra
    ld [hl], $1f
    ld a, a
    add hl, sp
    cp $50
    db $ec
    rst $18
    adc b
    db $f4
    inc b
    ld a, [$8002]
    ld bc, $ff30
    rst $38
    ld a, b
    rst $08
    db $ec
    add a
    ld b, [hl]
    ld b, e
    inc hl
    ld hl, $11fb
    db $10
    ld [hl], b
    ld bc, $ff18
    inc l
    rst $20
    db $76
    rst $38
    db $d3
    db $eb
    adc c
    rst $08
    dec b
    sbc $83
    ld [de], a
    rst $28
    di
    ld [hl-], a
    db $e3
    ld h, $fe
    ldh [$27], a
    rst $20
    cpl
    ld a, a
    push hl
    cpl
    jp hl


    ccf
    jp hl


    rrca
    db $fc
    ld c, b
    ld h, b
    rst $20
    sbc c
    rst $38
    sub c
    pop de
    add b
    cp $e2
    add hl, de
    pop hl
    jr nc, @-$4f

    ret nz

    ld h, b
    add b
    ret nz

    ld sp, hl
    jr nz, jr_07b_46a8

    ld l, c
    nop
    ld d, a
    rst $38
    nop
    adc l
    ld [$84c6], sp
    ld l, e
    ld b, d
    dec a
    rst $38
    ld hl, $149a
    ld l, c
    ld c, $f4
    rlca
    cp $ff
    inc bc
    db $fc
    ld b, a
    ld a, b
    cpl
    or b
    rra
    ret c

    rst $38
    rrca
    db $ec
    add a
    ld a, [hl]
    ld b, e
    cp [hl]
    inc hl
    call c, $17ff
    ccf
    jp hl


    rra
    ld hl, sp+$3f
    add sp, $3f
    rst $38
    db $e4
    ccf
    db $e4
    rra
    ld a, [c]
    rra
    ld a, [c]
    rrca
    dec sp
    reti


    ld de, $e0b5
    add b
    rst $38
    ld b, b
    cp $e0
    ld d, [hl]
    inc b

jr_07b_46a8:
    cp $a0
    add d
    add b
    add b
    ld b, e
    pop bc
    ld [hl], $e3
    inc e
    cp $18
    ld b, c
    ld bc, $0006
    rrca
    nop
    ld e, $00
    rst $38
    db $fd

jr_07b_46be:
    ldh [rNR30], a
    ldh a, [$15]
    ldh a, [$3a]
    ldh [rIE], a
    jr c, @-$36

    adc h
    db $f4
    add $7a
    and $3a
    rst $38
    cp h
    ld d, h
    ld e, a
    xor a
    adc d
    ld a, h
    rla
    ld hl, sp-$02
    add [hl]
    ld [bc], a
    ld d, l
    nop
    ld [$0000], sp
    ld hl, sp-$08
    adc a
    inc e
    inc c
    or $06
    ldh [$0b], a
    sub b
    ld b, $e0
    nop
    ld b, $c9
    add [hl]
    and h
    ld hl, $4125
    ld a, b
    jp c, $fea0

    ldh [$fd], a
    cp $fe
    rst $38
    ldh [rIF], a
    xor b
    rlca
    ld d, h
    rlca
    inc l
    inc bc
    ld l, a
    ld b, $03
    ld [bc], a
    inc bc
    rst $38
    ldh [rTAC], a
    inc b
    ld b, $43
    rst $38
    rst $10
    jr z, jr_07b_46be

    ld d, h
    ld d, l
    xor d
    add e
    ld a, h
    di
    add l
    ld a, [$2294]
    xor d
    ret nz

    rlca
    db $fc
    ld c, $f8
    rst $38
    dec e
    ldh a, [$3f]
    ldh [$75], a
    ret nz

    db $eb
    add b
    rst $38
    rst $10
    nop
    xor a
    ld bc, $025f
    cp [hl]
    inc b
    rst $38
    ld a, l
    add hl, bc
    ei
    inc de
    jr nc, @+$01

    ld d, e
    rst $38
    rst $38
    cp h
    sbc $70
    or b
    ldh [$60], a
    pop bc
    pop bc
    rst $38
    add d
    add e
    inc b
    rrca

jr_07b_474c:
    ld b, $fa
    jp nz, $fffe

    ld [hl+], a
    ld a, $44
    ld a, [hl]
    adc b
    db $fc
    db $10
    ld hl, sp-$11
    jr nz, jr_07b_474c

    ld b, b
    ldh [$b8], a
    rlca
    inc bc
    inc bc
    inc c
    rst $20
    rrca
    scf
    jr c, jr_07b_4788

    ld hl, $211e
    rst $38
    rst $38
    db $e3
    sbc a
    jp $e327


    dec hl
    pop hl
    ld a, h

jr_07b_4775:
    pop hl
    inc h
    inc bc
    ld hl, sp-$3b
    ld hl, sp+$19
    jr nz, jr_07b_4775

    adc b
    dec bc
    xor b
    add l
    sub h
    inc bc
    dec c
    dec c
    ei

jr_07b_4787:
    ld [de], a

jr_07b_4788:
    rra
    ld [$3263], sp
    inc sp
    ld c, l
    ld a, [hl]
    sub a
    rst $38
    db $e4
    ld a, [hl-]
    jp nz, $8170

    ld a, [bc]
    inc c
    dec d
    rst $38
    jr jr_07b_4787

    ldh a, [$36]
    ld h, c
    sbc l
    ld [hl-], a
    ld a, [bc]
    rst $38
    dec e
    ld h, l
    rrca
    ld a, [$4306]
    db $fc
    ld b, l
    rst $38
    ld a, [$fc23]
    ld hl, $63fe
    db $fc
    sub c
    rst $38
    sbc [hl]
    inc de
    inc e
    ld de, $3f1e
    ldh [$3f], a
    rst $38
    push hl
    rra
    ld a, [$f41f]
    rra
    ld sp, hl
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    ld l, $f6
    ld e, h
    cp a
    db $ec
    cp c
    rst $18
    ld a, $ff
    ret nz

    adc d
    ld b, b
    db $fc
    rst $38
    cp $80
    add b
    jr jr_07b_47fe

    ld h, c
    ld a, a
    add [hl]
    cp a
    cp $1c
    ld hl, sp+$70
    ldh [$c0], a
    inc a
    add b
    inc bc

jr_07b_47ec:
    reti


    inc bc
    dec [hl]
    ret nz

    inc a
    add b
    ld [bc], a
    inc bc
    ld [c], a
    jr nz, jr_07b_4803

jr_07b_47f7:
    rra
    ld a, a
    add hl, bc
    ld a, $12
    ld e, a
    ld h, a

jr_07b_47fe:
    cp a

Call_07b_47ff:
    ret nz

    xor b
    nop
    rst $38

jr_07b_4803:
    jr c, jr_07b_47ec

    ld h, h

jr_07b_4806:
    rst $30
    db $f4
    ld [hl], a
    ld [hl], h
    rst $20
    rst $38
    db $e4
    push de
    ldh a, [$fb]
    ldh a, [$fd]
    ld [hl], b

jr_07b_4813:
    ei

jr_07b_4814:
    rst $38
    jr c, jr_07b_4806

    jr c, jr_07b_4814

    ld [$08ff], sp
    rst $30
    ld a, a
    inc c
    db $f4
    db $eb
    add sp, $17
    ld d, b
    xor a
    ld [hl], b
    ld bc, $0aff
    push af
    dec d
    ld [$d42b], a
    ld b, b
    ret nz

    rst $38
    jr nz, jr_07b_4813

    db $10
    ldh a, [$a8]
    ld e, b
    ld e, [hl]
    xor [hl]
    rst $38
    xor l
    ld e, e
    ld a, a
    add l
    rst $38
    dec b
    inc hl
    dec a
    rst $38
    inc d
    jr jr_07b_4852

    ld [$0406], sp
    inc bc
    ld [bc], a
    cp $54
    ld b, e
    ld [c], a
    nop
    push bc
    add b

jr_07b_4852:
    dec hl
    ld b, b
    rla
    rst $38
    jr nz, jr_07b_47f7

    db $10
    ld l, a
    adc b
    or [hl]
    push bc
    ld e, e
    rst $38
    ld h, d
    ld [hl], l
    adc e
    ld l, c
    ld d, a
    and d
    ld a, $d4
    rst $38
    inc e
    xor b
    ld e, b
    ld d, h
    xor h
    xor d
    ld d, [hl]
    ld b, [hl]
    rst $38
    cp d
    ld a, [bc]
    dec c
    add hl, bc
    ld c, $08
    rrca
    add hl, bc
    sbc c
    ld c, $65
    jr nz, jr_07b_48df

    jr nz, jr_07b_4882

    inc bc
    ld c, l

jr_07b_4882:
    ldh [$39], a
    jr nz, jr_07b_4905

    rst $38
    add c
    cp a
    ld b, c
    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    pop af
    and b
    add h
    ld b, c
    add d
    ld b, c
    add b
    ld b, b
    sub b
    ld hl, sp-$78
    db $fc
    ei
    ld b, h
    ld b, $3c
    jr nz, jr_07b_48a6

    ld b, $0c
    dec bc
    rrca
    sbc e

jr_07b_48a6:
    ld [$9c07], sp
    ld [c], a
    rst $38
    rst $20
    add hl, de
    ldh [$15], a
    ldh [$f6], a
    rst $28
    ld c, $f0
    inc b
    db $eb
    ld l, $20
    rst $28
    add sp, -$31
    ld a, a
    ret z

    sbc a
    sub b
    ccf
    jr nz, jr_07b_4941

    ld b, b
    ld a, h
    nop
    rst $38
    ld [bc], a
    ld a, [$f705]
    inc c
    rst $30
    inc c
    rst $18
    rst $38
    inc l
    xor a
    ld e, [hl]
    ld c, a
    cp [hl]
    sbc a

jr_07b_48d5:
    ld a, [hl]
    ld e, a

jr_07b_48d7:
    rst $38
    cp [hl]
    cp a
    ld a, a
    rla
    add sp, $2f
    ret nc

jr_07b_48df:
    ld e, a
    dec c
    and b
    db $fc
    pop hl
    cp a
    ld b, b
    db $fc
    pop hl
    add b
    inc bc
    inc e
    ld h, d
    db $fc
    ld [c], a
    ccf
    cpl
    ld sp, $1817
    ld a, [bc]
    dec c

jr_07b_48f5:
    db $76
    pop hl
    sub h
    inc hl
    rst $38
    adc h
    ld [hl], h
    sbc b
    add sp, -$30
    ld [hl], b
    ld h, b
    and b
    rst $38
    jr nc, jr_07b_48d5

jr_07b_4905:
    jr nc, jr_07b_48d7

    ldh [$a0], a
    ld b, b
    ld b, b
    cp $92
    dec hl
    nop
    nop
    cpl
    ret nc

    rra
    ldh [rIF], a
    rst $38
    ldh a, [$97]
    add sp, -$75
    db $f4
    ld b, l
    ld a, d
    ld b, d
    rst $38
    ld a, l
    ld hl, $bc3e
    ld h, h
    sbc $32
    rst $28
    rst $38
    add hl, de
    rst $30
    dec c
    rst $38
    inc bc
    ld a, [hl]
    add d
    cp a
    rst $30
    ld b, a
    ld e, a
    and a
    ld b, d
    pop bc
    adc a
    adc [hl]
    rst $18
    ret nc

    rst $38
    ld l, b
    ld l, a
    cp l
    cp [hl]
    ld e, b
    ld e, a

jr_07b_4941:
    xor b
    xor a
    rst $28
    rst $38
    ret nz

    cp a

jr_07b_4947:
    ret nz

    dec b
    and e
    cp $01
    ld d, l
    rst $38
    xor d
    ld a, [hl+]
    push de
    push af
    ld a, [bc]
    add sp, $17
    pop de
    rst $38
    cpl
    and a
    ld e, a
    ld c, a
    cp a
    adc a
    ld a, a
    rlca
    jr jr_07b_4947

    nop
    ld c, $61
    db $fd
    rst $20
    rst $30
    adc a
    or d
    ld bc, $01ae
    res 0, b
    jp c, $e1fe

    ret nz

    jr nc, jr_07b_48f5

    ld [$600f], sp
    rst $20
    xor a
    ld e, a
    ld sp, hl
    rrca
    inc a
    ld [hl+], a
    jr c, jr_07b_49a1

    cp a
    rst $38
    ld a, a
    ld a, a
    or h
    rst $38
    call c, $ee9a
    push bc
    rst $38
    and d
    rst $38
    pop de
    cp a
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    ld [$04b0], a
    add b
    rst $38
    add b
    ld h, b
    ldh [$bc], a
    db $fc
    ld a, a
    di
    ccf

jr_07b_49a1:
    rst $10
    ld hl, sp+$01
    cp $20
    and c
    ld [bc], a
    add d
    add b
    db $10
    rst $38
    rst $38
    ld hl, sp-$01
    db $76
    ld a, a
    add e
    ld a, a
    ld [hl], c
    rst $38
    rra
    adc c
    rst $38
    ld c, c
    rst $38
    ld b, c
    ld l, d
    nop
    ld l, h
    ld bc, $a0d7
    rst $18
    and b
    cp a
    ldh [$bf], a
    ret nc

    cp $e0
    ret z

    cp a
    rst $30
    call nz, $c3bf
    and l
    ld h, b
    inc b
    ld hl, sp+$08
    ldh a, [$9f]
    db $10
    ldh [rNR41], a
    ret nz

    ld b, b
    ld h, d
    xor e
    or $00
    db $10
    db $d3
    jr c, jr_07b_4a1b

    cp e
    nop
    cp $e1
    ld a, a
    cp $e3
    rst $18
    ld a, a
    push bc
    call c, $e08c
    db $fc
    ld [hl-], a
    jr nz, jr_07b_4a02

    ld hl, $2107
    ld d, a
    cp $5f
    add hl, hl
    rst $38
    ld [hl], h
    rst $38
    xor b
    db $fc

jr_07b_4a00:
    ldh [$ba], a

jr_07b_4a02:
    ld [hl-], a
    jr nz, jr_07b_4a00

    cp d
    rst $38
    ld l, e
    and b
    inc bc
    rst $38
    add b
    ld a, a
    ldh [$df], a
    ccf
    ld hl, sp+$2f
    cp $5f
    ld a, [bc]
    ld b, h
    ld hl, sp-$08
    reti


    ld b, b
    rst $38

jr_07b_4a1b:
    ld [c], a
    call nc, $bf41
    pop bc
    cp $e1
    rst $18
    and c
    rst $38
    ld e, a
    ld h, c
    ld a, a
    ld b, c
    ld e, a
    ld h, c
    ld a, [hl]
    ld b, d
    ld a, a
    ld [hl], b
    ld hl, sp+$38
    db $fc
    ld a, h
    cp $b9
    xor a
    nop
    db $ed
    rst $18
    cp b
    ld [bc], a
    nop
    nop
    call nc, Call_07b_60e1
    ld h, b
    push af
    ld sp, hl
    push af
    db $db
    jp $89c0


    and b
    and b
    ldh a, [$f0]
    ld a, b
    rst $18
    rst $38
    cp $c7
    db $e3
    add c
    sbc l

Call_07b_4a54:
    ld h, b
    adc d
    rst $38
    rst $38
    adc l
    ld a, a
    rst $00
    ld a, l
    rst $00
    rst $28
    ccf
    rst $30
    cp a
    rra
    ei
    rrca
    push af
    rra
    di
    add c
    ld h, b
    push hl
    inc de
    ccf
    ld [c], a
    and c
    ld hl, $ca9e
    ld a, l
    call nz, Call_07b_5420
    push hl
    ld d, a
    ld bc, $5ff1
    ld c, b
    nop
    db $fc
    pop hl
    ld a, b
    jp nz, $fffe

    cp $7e
    rst $30
    ld b, d
    ld a, $22
    cp $e1
    ld e, $12
    inc c
    inc c
    nop
    ld a, [bc]
    pop hl
    nop
    nop
    nop
    dec b
    ld [$f0ff], sp
    dec bc
    rst $38
    add sp, -$20
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    rst $38
    rst $38
    call nz, $ffff
    db $ed
    db $ec
    rrca
    add sp, -$0b
    rst $38
    push hl
    ld h, b
    jp hl


    ld a, [bc]
    ld a, [bc]
    xor [hl]
    ldh a, [$e4]
    add hl, bc
    add hl, bc
    add hl, bc
    rst $18
    db $e4
    ld a, [bc]
    ldh [$eb], a
    ld a, [bc]
    add b
    ldh [$ea], a
    ldh a, [$e0]
    ldh [$ed], a
    rst $28
    db $e3
    ret nz

    ldh [$bf], a
    pop hl
    ldh [$f1], a
    inc c
    pop bc
    inc c
    ldh [$e4], a
    sbc [hl]
    ldh [$e0], a
    di
    cp $e0
    add b
    ldh [$08], a
    add hl, bc
    ld bc, $b109
    and $e0
    xor $97
    pop bc
    ldh [$f0], a
    add b
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ret z

    ldh [rIE], a
    ldh [rIE], a
    nop

jr_07b_4af1:
    reti


    dec c
    rst $38
    pop hl
    ld h, $d8
    dec c
    dec bc
    ld a, e
    inc c
    inc c
    ldh [$f9], a
    dec bc
    ld c, $0e
    ld c, $9b
    pop bc
    ld [bc], a
    nop
    sub $09
    ldh [$e0], a
    sbc l
    ret nz

    nop
    db $d3
    add d
    pop bc
    pop hl
    ld [c], a
    cp $a3
    and b
    nop
    adc $62
    jp $d740


    rra
    ret nz

    ldh [$e5], a
    ld c, a
    ldh [$b2], a
    ld a, [bc]
    ld bc, $220a
    pop bc
    ld hl, $c0c0
    or h
    rst $18
    pop hl
    jr nz, jr_07b_4af1

    and c
    and d
    ldh [$f7], a
    ld bc, $e049
    rst $28
    add b
    rst $18
    ldh [$fb], a
    nop
    nop
    nop
    add l
    ret z

    rst $38
    ldh a, [rP1]
    rst $38
    add sp, -$20
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    nop
    ld [hl], l
    ld bc, $eeff
    ld [bc], a
    ret nz

    jp hl


    inc bc
    inc b
    dec b
    sbc $eb
    rst $30
    ld b, $07
    ld [$e9a0], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    rst $38
    ld bc, $0d01
    ld c, $0f
    db $10
    ld de, $ff12
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    cp $80
    jp hl


    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$01

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld hl, $2322
    inc h
    dec h
    ld a, [c]
    ld hl, sp-$20
    ld a, [de]
    ldh [$eb], a
    rst $38
    and $26
    daa
    jr z, jr_07b_4bbc

    push de
    ld a, [hl+]
    ldh [$e1], a
    dec hl
    ld b, b
    jp hl


    inc l
    rst $18
    and $2d
    ld l, $ff
    cpl
    jr nc, @+$33

    ld a, [de]
    ld a, [de]
    ld [hl-], a
    inc sp
    inc [hl]
    or $20
    jp hl


    dec [hl]
    ld [hl], $be
    db $e4
    scf
    jr c, jr_07b_4beb

    ld a, [hl-]
    ld a, a
    dec sp
    inc a
    ld a, [de]
    ld a, [de]
    dec a
    ld a, $3f
    nop

jr_07b_4bbc:
    jp hl


    cp a
    ld b, b
    ld b, c
    ld b, d
    ld a, [de]
    ld b, e
    ld b, h
    add c
    ldh [rLYC], a
    rst $38
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ei
    ld c, [hl]
    ld c, a
    ldh [$c9], a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    rst $38
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld a, [de]
    ld e, c
    ld e, d
    ld e, e
    ld a, a
    ld e, h
    ld a, [de]
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_07b_4beb:
    ret nz

    ret


    rst $38
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    rst $38
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld a, [de]
    ld [hl], b
    rrca
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    and b
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$20
    rst $38
    ldh [rIE], a
    nop
    jp Jump_07b_7675


    ld [hl], a
    ld a, b
    ld a, c
    cp [hl]
    nop
    ret c

    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    ret c

    ld a, a
    rst $38
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    cp $00
    call nc, $8988
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    rst $30
    adc a
    sub b
    sub c
    nop
    pop de
    sub d
    sub e
    sub h
    sub l
    rst $38
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    cp $00
    pop de
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    rst $18
    and l
    and [hl]
    and a
    xor b
    xor c
    nop
    jp nc, $abaa

    rst $38
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    ld sp, hl
    xor c
    nop
    pop de
    adc e
    and c
    or h
    or l
    or [hl]
    or a
    cp b
    rst $10
    cp c
    cp d
    cp e
    nop
    pop de
    cp h
    ld l, d
    and c
    cp l
    cp [hl]
    rst $28
    cp a
    ret nz

    pop bc
    jp nz, $d200

    jp $c5c4


    rst $38
    ld a, [de]
    ld a, [de]
    rst $00
    ret z

    ret


    jp z, $cb91

    nop
    nop
    rst $18
    add b
    rst $18
    add b
    adc d
    nop
    nop
    nop
    and c
    ld c, h
    pop hl
    ld c, h
    pop hl
    ld d, a
    ld l, c
    ld e, b
    add b
    ld a, l
    rra
    ld [$5fdf], sp
    nop
    nop
    add b
    ld a, l
    rra
    ld [$0014], sp
    nop
    nop
    add b
    ld a, l
    rst $18
    ld e, a
    inc d
    nop
    nop
    nop
    rst $18
    ld e, a
    cp a
    ld a, [hl+]
    inc d
    nop
    nop
    nop
    rst $18
    ld e, a
    rra
    ld [$0014], sp
    nop
    nop
    rst $18
    ld e, a
    rst $38
    ld [bc], a
    cp l
    ld bc, $0000
    rst $18
    ld e, a
    rst $38
    ld [bc], a
    cp a
    ld a, [hl+]
    nop
    nop
    rst $18
    ld e, a
    ld c, c
    rrca
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    db $fd
    nop
    rst $38
    db $f4
    ld bc, $0201
    inc bc
    dec b
    ld b, $fb
    rlca
    inc b
    ldh [$e3], a
    ld [hl], b
    ld [hl], b
    or b
    ret nc

    add sp, -$21
    jr @-$16

    jr @-$77

    ld a, a
    ret nc

    db $eb
    add b
    add b
    sbc $c0
    jp hl


    rlca
    rlca
    dec de
    inc e
    or b
    jp hl


    db $fc
    db $fc
    db $db
    ei
    rlca
    or b
    db $eb
    cp e
    cp h
    jp c, Jump_000_3be1

    inc a
    rst $38
    rst $18
    ldh [$7f], a
    add b
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    rst $38
    ld bc, $1f1f
    rst $38
    ldh a, [rIE]
    inc c
    rst $28
    rst $38
    inc bc
    rst $38
    nop
    cp $e0
    rrca
    ldh a, [rIE]
    rst $38
    rst $08
    ret z

    rst $38
    jr c, @+$01

    rlca
    cp $02
    rst $38
    rst $38
    adc l
    di
    ld a, $c1
    rst $38
    ld b, $ff
    rst $38
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    jp $ffbf


    ld b, b
    ld a, a
    jp Jump_07b_4ffc


    ldh a, [$c0]
    rst $38
    ld sp, hl
    add b
    rst $38
    ldh [$86], a
    db $e3
    ld b, b
    ret nz

    and b
    ld h, b
    ld h, b
    push af
    ldh [rLCDC], a
    db $e3
    ld hl, sp-$3e
    ldh [$bf], a
    nop
    ld d, a
    nop
    db $fd
    xor d
    ld h, h
    jp hl


    nop
    ret nz

    nop
    and b
    nop
    cpl
    rst $38
    jr nc, jr_07b_4d88

    rra
    db $10
    rra
    dec bc
    inc c
    rla
    rst $38
    jr jr_07b_4db0

    jr nc, jr_07b_4dc2

    jr nz, @+$42

    ld a, a
    rst $38
    rst $30

jr_07b_4d88:
    nop
    ccf
    ret nz

    sub h
    ld [c], a
    nop
    ld hl, sp+$07
    nop
    rst $38
    rst $38
    inc bc
    db $fc
    ld h, a
    db $e4
    db $d3
    ld [hl-], a
    ld sp, hl
    rst $38
    add hl, bc

jr_07b_4d9c:
    push af
    dec c
    add l
    ld a, l
    dec b
    db $fd
    push hl
    rst $38

jr_07b_4da4:
    dec e
    jp z, $fe3b

    ld b, $f8
    jr jr_07b_4d9c

    rst $38
    db $10
    ldh a, [rNR10]

jr_07b_4db0:
    pop af
    db $10
    pop af
    ld de, $77f8
    ld [$08f8], sp
    ldh [$c2], a
    ld h, b
    nop
    ret nz

    ld d, $e1
    cp a
    rrca

jr_07b_4dc2:
    rlca
    inc e
    ld [$0101], sp
    sbc $c7
    inc bc
    rst $38
    ld bc, $8183
    db $e3
    ld a, a
    db $fc
    inc a
    ldh [$fd], a
    jr nz, jr_07b_4da4

    ldh [$d0], a
    ldh a, [$30]
    ldh a, [$d0]
    ld hl, sp+$7d
    ret c

    or b
    res 5, d
    nop
    ld d, l
    nop
    ld a, [$e292]
    rst $18
    rst $38
    nop
    ld [$fd00], a
    inc e
    ldh [$58], a
    nop
    ld a, l
    xor h
    ld e, b
    ldh [$ea], a
    nop
    push af
    nop
    cp d
    db $e4
    ldh [$fe], a
    ld d, b
    db $e3
    add b
    nop
    ldh a, [rP1]
    ld e, h
    nop
    xor e
    db $fc
    ldh a, [$e6]
    ld a, $e9
    ld h, b
    ld a, a
    inc e
    rra
    rlca
    rlca
    ld sp, hl
    ld bc, $e0ff
    ld d, [hl]
    jp $f00f


    ld e, $e1
    jr c, @+$01

    rst $00
    ld sp, $02cf
    cp $8c
    db $fc
    or b
    rst $38
    ldh a, [rLCDC]
    ld b, b
    inc d
    rst $30
    jr c, @+$01

    ld b, b
    rst $38
    rst $38
    ret nz

    rst $38
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld b, b
    rst $38
    ld a, a
    jr nz, jr_07b_4e7b

    db $fc
    inc b
    ld a, h
    add h
    cp h
    rst $38
    ld b, h
    ld a, h
    add h
    inc a
    call nz, $e41c
    inc e
    ld a, a
    db $e4
    inc c

jr_07b_4e4d:
    db $f4
    inc sp
    inc de
    scf
    daa
    rst $38
    push hl
    rst $38
    ld [hl], e
    ld h, e
    ccf
    inc de
    pop bc
    pop bc
    pop hl
    pop bc
    rst $38
    ldh [$e0], a
    ld hl, $2221
    ld [hl+], a
    ldh [$e0], a
    rst $38
    ret nz

    ret nz

    add b
    nop
    db $fc
    db $ec

jr_07b_4e6d:
    db $fc
    inc h
    cp a
    cp $b2
    cp $e2
    rst $38
    ld b, c
    cp $e0
    nop
    ld [hl], e
    rst $38

jr_07b_4e7b:
    db $10
    ldh a, [$a5]
    ld h, h
    pop hl
    rst $18
    add b
    rst $38
    jr nz, jr_07b_4e4d

    and a
    xor b
    nop
    push de
    inc [hl]
    ldh [$d0], a
    xor c
    ld b, b
    sub b
    ret z

    ld bc, $00bf
    ld [bc], a
    nop
    dec b
    nop
    dec bc
    db $fc
    ldh [$0a], a
    ld l, $78
    ret nz

    xor a
    nop
    ld a, a
    ld a, [bc]
    db $e4
    ld d, l
    ld [bc], a
    db $e4
    ld a, [$5ee5]
    ld h, b
    ret


    jr z, jr_07b_4e6d

    db $10
    db $ec
    ld [c], a
    db $eb
    rst $38
    sbc h
    ldh [rHDMA5], a
    cp $ce
    ld [$8850], a
    ldh [$d4], a
    cp h
    ret nz

    db $fd
    add sp, -$1c
    xor $84
    rst $20
    and b
    nop
    ld d, h
    xor h
    ret nz

    jr nz, jr_07b_4f0a

    jr nz, jr_07b_4f4c

    ccf
    inc de
    rra
    rla
    inc e
    rrca
    ld [$c019], sp
    rst $38
    ld de, $123f
    ld [bc], a
    cp $02
    cp $c2
    rst $38
    cp $73
    ld a, $1f
    ld c, $0f
    ld [bc], a
    rst $00
    cpl
    ret nz

    di
    jr nc, jr_07b_4eed

jr_07b_4eed:
    ld [hl], b
    ldh [rNR14], a
    ldh a, [$a4]
    xor $a1
    cp $56
    pop hl

jr_07b_4ef7:
    rlca
    rlca
    rra
    rrca
    ld [$040f], sp
    rst $38
    rlca
    ld [bc], a
    inc bc
    ld bc, $7001
    jr nc, jr_07b_4ef7

    ei
    ldh [$e1], a

jr_07b_4f0a:
    cp $e1
    pop hl
    ld hl, $23e1
    pop hl
    ld b, a
    jp nz, $ffc2

    inc c
    ldh [$fc], a
    ld [c], a
    ld c, d
    call nz, $8040
    ld a, [c]
    xor d
    inc d
    pop hl
    xor e
    jr @-$1c

    ld bc, $e210
    cp a
    db $10
    add sp, -$56
    xor [hl]
    inc h
    ret nz

    db $eb
    nop
    rst $10
    db $fc
    ret nz

    rst $18
    inc l
    and b
    ld e, a
    db $fc
    db $f4
    ret z

    or b
    ld [c], a
    cp [hl]
    ld sp, $68ce
    sub a
    ld d, h
    rst $38
    xor e
    and b
    ld e, a
    ld b, b
    cp a
    dec b
    ld a, [$fd0e]

jr_07b_4f4c:
    pop af
    add b
    add h
    ret nz

    ld b, b
    add b
    add b
    ld h, b
    nop
    xor a
    ldh a, [$80]
    ld [hl], b
    push af
    nop

jr_07b_4f5b:
    db $ec
    ld b, c
    inc l
    and b
    ld d, a
    ld a, [hl]
    cp h
    ret z

    ld e, a
    db $10
    rst $28
    ld [$04f7], sp
    ret nc

    add h
    cp $cc
    add b
    ld a, c
    ld c, b
    inc bc
    nop
    rrca
    ld bc, $2fff
    rrca
    ld hl, sp-$01
    rlca
    sub h
    add d
    ldh [$f4], a
    add b
    cp [hl]
    ret nz

    rst $38
    add b
    ld a, a
    ldh [$3f], a
    ldh a, [rIE]
    db $ec
    ld h, a
    ld sp, hl
    ld b, e
    and c
    db $e4
    and d
    add c
    ld bc, $3fff
    rst $38
    inc bc
    rst $38
    ld b, $02
    inc b
    inc b
    inc c
    inc b
    jr jr_07b_4fa6

    dec sp
    ldh a, [$30]
    ld [bc], a
    ret nz

    add b
    ld hl, sp+$78

jr_07b_4fa6:
    ld de, $fe86
    db $e4
    cp $3a
    add b
    rrca
    rrca
    ld [$fff8], sp
    rla
    rst $28
    rst $18
    inc e
    ldh [$2c], a
    ret nc

    jr jr_07b_4f5b

    add b
    adc h
    adc $ff
    ld c, e
    rst $08
    ret z

    ld e, h
    db $f4
    ld hl, sp+$1f
    ccf
    rst $30
    ld e, l
    inc bc
    cpl
    ld a, [bc]
    add e
    ldh [$e0], a
    ld h, b
    xor a
    ld a, a
    ld l, a
    ld e, a
    ret nc

    or $fd
    or [hl]
    ld l, l
    push af
    ld h, a
    rst $30
    ret nz

    ret nz

    ld b, b
    cp $e0
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rst $38
    dec bc
    ld c, $07
    rlca
    rlca
    dec bc
    dec c
    rlca
    rst $28
    ld a, [de]
    rrca
    rra

jr_07b_4ff2:
    scf
    or c
    ld h, l
    inc bc
    inc b
    adc [hl]
    rst $38
    pop de
    db $db
    ld h, h

Jump_07b_4ffc:
    ld [hl], l
    adc d
    inc d
    db $eb
    ld [$f7e9], sp

jr_07b_5003:
    ld h, c
    pop hl
    ld de, $0281
    cp $e0
    nop
    ld hl, sp+$02
    db $fd
    db $fc
    dec c
    pop bc
    jr nz, jr_07b_4ff2

    ld b, b
    cp a
    and b
    ld e, a
    rst $38
    ld d, b
    xor a
    nop
    nop
    jr c, jr_07b_5022

    call nc, $ff2b
    xor b

jr_07b_5022:
    ld d, a
    ld d, h
    xor e
    ldh [$1f], a
    ld d, b
    xor a
    ld [hl], e
    and b
    ld e, a
    inc sp
    add [hl]
    ld sp, $e081
    jr nz, jr_07b_5003

    adc b
    add d
    ld a, a
    ld [bc], a
    ld b, $04
    ld b, $04
    inc c
    ld [$e1fe], sp
    ei
    pop hl
    ret nz

    add d
    add b
    ret nc

    ld a, b
    jr c, @+$1e

    inc c
    ei
    rlca
    inc bc
    ld h, l
    add c
    pop bc

jr_07b_504f:
    rst $38
    ld [hl-], a
    ld a, a
    ld c, $ff
    ld e, $04
    ld b, $06
    ld c, $0f
    sbc c
    rst $18
    rst $38
    ldh a, [$3f]
    db $76
    ld a, a
    rst $00
    inc hl
    jr nz, jr_07b_5085

    rst $38
    jr nz, jr_07b_5098

    jr nz, jr_07b_509a

    ld h, b
    ld a, b
    ret nc

    ld hl, sp-$01
    ret nc

    db $fc
    ld [$0301], sp
    jp nz, Jump_000_32c3

    rst $38
    inc sp
    ld a, [de]
    dec bc
    ld c, $1f
    ccf
    dec de
    inc d
    rst $38
    scf
    inc h
    daa
    ret z

jr_07b_5085:
    ldh a, [rNR10]
    rst $28
    jr z, @+$01

    ret nc

    ld e, b
    and b
    jr nc, jr_07b_504f

    sub b
    ldh [rLCDC], a
    rst $38
    cp a
    ld sp, $5fc0
    nop

jr_07b_5098:
    ccf
    add b

jr_07b_509a:
    inc bc
    rst $28
    ld a, h
    cp h
    inc bc
    ld a, a
    or b
    ld h, b
    ld a, [hl]
    ld bc, $ff07
    ld hl, sp-$4a
    ld l, l
    and h
    ld a, a
    db $ec
    ld e, e
    ld l, h
    rst $38
    db $db
    cp h
    ld a, e
    ld c, l
    cp e
    adc l
    ld a, e
    add hl, de
    cp a
    rst $30
    ld b, b
    ret nz

    or b
    ld hl, sp-$78
    cp $e0
    sub b
    db $eb
    ldh a, [$f0]
    reti


    ld h, c
    ldh a, [$c0]
    ld b, [hl]
    stop
    jr nc, @+$01

    db $10
    jr c, jr_07b_5108

    ld a, c
    dec c
    dec bc
    dec de
    rla
    rst $38
    rra
    rrca
    dec l
    dec de
    ld e, d
    ld [hl], a
    ccf
    ccf
    rst $38
    ld l, e

Jump_07b_50e0:
    ld [hl], a
    rst $10
    db $ed
    and e
    ld e, h
    rst $10
    xor b
    rst $38
    cp $e1
    call z, $eaf3
    push af
    rst $10
    ld hl, sp-$29
    ld a, [hl]
    ld sp, hl

jr_07b_50f3:
    cp l
    ld l, $60
    ld e, $13
    ld h, b
    ld b, $ff
    ld e, a
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    db $fc
    ldh [rSC], a
    db $eb
    ld h, c
    rst $38
    rst $38

jr_07b_5108:
    add h
    ei
    ld a, [bc]
    push af
    inc b
    ei
    adc d
    db $eb
    push af
    ld b, b
    ld sp, hl
    ld b, b
    inc b
    db $f4
    ldh [$5c], a
    and e
    xor b
    rst $30
    ld d, a
    ld b, b
    cp a
    ld [hl], c
    add b
    rst $38
    ld h, b
    sbc d
    ld de, $eefd
    cp a
    ld h, e
    db $10
    rst $28
    jr c, jr_07b_50f3

    ld d, h
    xor e
    ld a, [$6173]
    sub b
    sub $a0
    ld [$04f0], sp
    ld sp, hl
    ld hl, $def7
    ld l, b
    sub a
    ld b, b
    ld b, l
    ret nz

    nop
    jr nz, @-$3e

    cp $ea
    pop hl
    ld e, $10
    ld e, $10
    rra
    jr jr_07b_516b

    ld e, a
    jr jr_07b_516f

    jr jr_07b_5171

    inc d
    cp $e0
    ld [de], a
    db $f4
    ld b, l
    ld a, [$81d0]

jr_07b_515b:
    ret nc

    ldh [rLCDC], a
    add hl, bc
    add hl, sp
    rlca
    dec c
    rrca
    rst $38
    ld e, $13
    ccf
    jr nz, jr_07b_51e2

    jr nz, jr_07b_515b

jr_07b_516b:
    ld b, b
    rst $38
    ldh [rLCDC], a

jr_07b_516f:
    ldh [$f8], a

jr_07b_5171:
    inc c
    ld a, [$f70c]
    rst $38
    inc c
    push af
    ld c, $f5
    adc $34
    ccf
    ld c, $ff
    rrca
    inc bc
    inc bc
    ld h, h
    daa
    inc h
    ld h, a
    call nz, Call_07b_47ff
    db $e4
    ld b, a
    ld a, c
    rst $28
    ld a, c
    rst $38
    ld a, [$feff]
    xor $ee
    ld b, b
    and b
    and c
    ld b, b

jr_07b_5198:
    ld h, d
    rst $38
    add b
    pop bc
    ret nz

    ld [hl+], a
    jr nz, jr_07b_51c1

    jr nz, jr_07b_51c4

    rst $38
    jr nz, jr_07b_51ea

    ld b, b
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $edfd
    ld [bc], a
    db $fc
    pop hl
    ld a, [$fc05]
    pop hl
    ld a, c
    sub a
    sbc c
    rst $38

jr_07b_51b7:
    ld [hl], a
    dec de
    rst $30
    or d
    ld l, a
    ld [hl-], a
    rst $28
    ld [hl-], a
    rst $38
    rst $28

jr_07b_51c1:
    ld h, h
    rst $18
    ld h, h

jr_07b_51c4:
    rst $18
    jr nz, jr_07b_51b7

    jr nz, jr_07b_5198

    ldh [$a0], a
    ldh [$60], a
    and [hl]
    ldh [$f2], a
    and c
    ld b, b
    ret nz

    db $f4
    rst $20
    ld h, b
    rst $10
    ld b, b
    inc bc
    jp hl


    and b
    dec b
    ld b, $05
    dec bc
    rst $38
    rrca
    rla

jr_07b_51e2:
    jr c, jr_07b_5260

    ld [hl], c
    cp $3b
    db $fc
    rst $38
    cp [hl]

jr_07b_51ea:
    db $fd
    ld a, l
    ei
    ccf
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ei
    cp a
    ld l, a
    ld a, e
    rst $18
    rst $38

jr_07b_51fb:
    or $ff
    res 7, a
    and l
    ld e, e
    db $dd
    or a
    rst $18
    cp a
    rst $38
    ld e, e
    rst $38
    db $fd
    ld [$bfe0], a
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    scf
    rst $38
    db $db
    ld a, a
    rst $28
    cp a
    rst $38
    rla
    rst $38
    ld c, a
    rst $38
    ld c, e
    cp a
    sub a
    ld a, a
    db $dd
    ld a, a
    ld b, e
    and b
    ld c, a
    cp a
    sbc a
    ret


    jr nz, jr_07b_51fb

    rst $28
    rst $38
    ld [c], a
    rst $38
    rst $00
    rst $38
    xor $ff
    rst $30
    rst $38
    ld a, a
    xor a
    rst $38
    rst $18
    rst $38
    jr @+$01

jr_07b_523a:
    jr nc, jr_07b_523a

    ldh [rIE], a
    ld a, e
    db $fc
    cp h
    ei
    ld a, [hl]
    db $fd
    ld a, [$fdff]
    ld a, h
    cp b
    and b
    nop
    rst $38
    ld b, h
    cp a
    inc c
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    call c, Call_07b_6cff
    rst $38
    rst $18
    cp $ea
    sub b
    and e
    db $10
    jp c, Jump_07b_50e0

jr_07b_5260:
    sub $e0
    ld a, b
    rst $38
    ld b, b
    rst $30
    cp h
    and b
    ld e, [hl]
    sbc l
    ld h, c
    inc b
    ei
    ld [bc], a
    db $fd
    inc a
    add hl, de
    add d
    adc a
    ld c, h
    ld de, $111f

jr_07b_5277:
    rra
    xor h
    ld h, c
    db $fc
    db $e3
    ei
    ld b, b
    ld a, a
    ld d, a
    ld b, b
    ei
    add c
    rst $38
    add c
    rst $38
    rst $38
    pop bc
    ld a, a
    pop hl
    ccf
    pop af
    rra
    db $fc
    rrca
    rst $28
    add b
    ret nz

    add b
    ret nz

    ld a, [c]
    jr nz, jr_07b_5277

    ldh [$f8], a
    push hl
    db $fc
    ld b, d
    ldh [rIE], a
    nop
    rst $00
    add sp, -$7e
    ld hl, sp+$7e
    ld a, h
    rst $30
    ld a, h
    jr jr_07b_52e1

    xor h
    add hl, bc
    ld b, d
    ld b, b
    ld h, l
    ld h, b
    sbc e
    rra
    ld e, $ca
    ld hl, $0606
    call nz, $c821
    pop bc
    db $f4
    rst $38
    dec bc
    ld a, [$7585]
    ld c, e
    add hl, sp
    daa
    ei
    rst $38
    cp $27
    ld a, $64
    rst $18
    ld l, b
    rst $18
    ret z

    rst $38
    cp a
    ret z

    cp a
    sub b
    ld a, a
    sub c
    ld a, a
    ld de, $ff0f
    ld hl, $40ff
    and b
    ldh [rNR32], a
    ld hl, $00a6

jr_07b_52e1:
    and h
    ld [bc], a
    rst $38
    ld b, $0f
    rrca
    rra
    rlca
    rrca
    dec bc
    rra
    rst $38
    dec e
    ld [hl], $3a
    ld l, l
    rrca
    ccf
    dec e
    ld e, $bd
    rst $18
    db $e4
    ret nz

    db $fd
    cp $da
    db $fd
    ld a, [$fbe1]
    ei
    rst $38
    ld [hl], l
    cp [hl]
    ret nz

    ld l, e
    rst $38
    ld d, c
    rst $28
    sub [hl]
    ccf
    db $eb
    xor a
    ld e, e
    ld a, a
    db $db
    ld a, [$c0ee]
    ld l, e
    pop hl
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    rst $18
    cp a
    xor e
    rst $38
    rst $18
    jp z, $ffc1

    ld a, [c]
    ldh [$2f], a
    sub h
    and b
    ld l, a
    ld a, [$c0d2]
    ld a, a
    adc [hl]
    ret nz

    xor $ff
    rst $10
    rst $38
    rst $28
    dec hl
    rst $38
    cp $84
    ret nz

    rst $30
    jp nc, $fbe2

    ld a, b
    and b
    ld a, [c]
    pop hl
    ld [hl], l
    cp a
    call nz, $fce2
    and $e2
    cp [hl]

jr_07b_534a:
    rst $38
    db $ed
    or [hl]
    ld [c], a
    ld e, a
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld sp, hl
    xor d
    ret nz

    db $fd
    ld a, [$f5e0]
    ld a, [hl]
    and h
    ld [c], a
    jp nz, $e0fe

    add $ff
    db $eb
    rst $38
    and l
    rst $20
    cp h
    ldh [$cf], a

jr_07b_5369:
    ld b, b
    ret nz

    adc a
    ld h, b
    ldh [rSTAT], a
    jr nz, jr_07b_5369

    rst $38
    add b
    ld hl, sp+$00
    db $fc
    add b
    db $fc
    ret nz

    cp $3b
    ld b, b
    ld a, a
    ld a, d
    ld hl, $3f38
    daa
    call nz, $f4c0
    pop hl
    rst $38
    rst $38
    inc bc
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    xor e
    sbc a
    ldh [$3e], a
    ret nz

    ret nz

    add h
    nop
    ldh [$0e], a
    ld b, e
    rst $20
    di
    rra
    ld hl, sp+$24
    nop
    dec b
    and b
    rrca
    ld hl, sp+$08
    add sp, -$01
    jr jr_07b_53d9

    ldh a, [$c8]
    ld hl, sp+$28
    ret c

    add sp, -$01
    jr @-$06

    ld [$c080], sp
    ld [hl], b
    ld a, b
    inc c
    rst $20
    ld c, $03
    inc bc
    cp b
    dec b
    jp z, $18c1

    jr jr_07b_534a

    cp a
    add a
    ld [hl], c
    ld [hl], c
    ld e, $3f
    cpl
    inc d
    ld b, b
    ld [hl+], a
    rst $08
    ccf
    pop bc
    rst $38
    ld b, b
    ld a, [$44a0]

jr_07b_53d5:
    nop
    rst $38
    adc h
    rst $38

jr_07b_53d9:
    db $fc
    ld [hl], b
    ldh a, [$3f]
    rst $38
    jp nz, Jump_000_0cfe

    rst $08
    db $fc
    jr nc, jr_07b_53d5

    ret nz

    dec h
    ld b, c
    call z, Call_000_00e5
    ld c, $ff
    ld bc, $0a15
    ld a, [bc]
    dec d
    dec d
    ld a, [hl+]
    ld [$77ff], sp
    dec hl
    ccf
    ld [hl], l
    ld e, a
    cp l
    ld a, e
    ld a, [hl-]
    rst $38
    rst $30
    ld [hl], a
    db $ec
    cp $df
    ld a, e
    db $fd
    and [hl]
    rst $38
    ei
    db $ed
    ei
    ld a, [$d7f7]
    db $ec
    cp $ff
    rst $38
    db $db
    db $fd
    ld h, [hl]
    cp e
    dec a
    rst $30
    reti


    rst $38
    rst $38
    ld d, l
    xor a
    cp b
    ld c, a
    ld h, a

Call_07b_5420:
    jp c, $f5da

    or a
    db $f4
    pop hl
    ld e, a
    ld a, [bc]
    ldh [$ef], a
    rst $38
    rst $30
    cp a
    rst $08
    ei
    rst $18
    cp $6f
    db $f4
    db $e4
    rrca
    ld b, h
    ld bc, $7f01
    ld b, $07
    dec bc
    inc c
    rla
    jr jr_07b_545f

    ldh [rDIV], a
    db $fd
    ret nz

    inc de
    ld h, b
    and b
    ld h, b
    and b
    ld h, b
    ld e, $fe
    sbc $c0
    xor c
    rra
    rra
    ld l, a
    ld [hl], b
    or b
    xor c
    ldh a, [$f0]
    ld a, e
    xor $1e
    and b
    and e
    inc bc
    inc bc
    dec b

jr_07b_545f:
    ld b, $c0
    pop hl
    cp l
    rst $28
    ret nc

    ld h, b
    rra
    rra
    rst $28
    ldh a, [$3f]
    ld [c], a
    nop
    xor a
    pop af
    ld c, $ff
    rlca
    daa
    and b
    ret nz

    dec a
    and b
    inc c
    call c, $41f5
    rst $18
    ret nz

    rst $38
    ccf
    jr nz, jr_07b_545f

    ret nz

    inc e
    ei
    rst $38
    ld a, [bc]
    db $fd
    dec [hl]
    rst $08
    ei
    rlca
    db $fd
    inc bc
    rst $38
    rst $38
    ld a, [hl]
    add d
    ld a, [$e406]
    inc e
    inc c
    rst $38
    db $fc
    ld [bc], a
    cp $0d
    di
    ld a, $c1
    ld bc, $50fc
    xor d
    ret c

    and c
    cp a
    ret nz

    ld b, b
    ld a, a
    ld b, e
    ld a, h
    rst $38
    cpl
    jr nc, jr_07b_550d

    ld h, b
    cp a
    ret nz

    db $fc
    add e
    di
    nop
    rst $38
    call $a0e0
    jp nz, Jump_000_01fe

    ldh [$1f], a
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$9f]
    sub b
    ld c, a
    ret z

    rst $38
    rst $20
    inc h
    rst $10
    inc [hl]
    rla
    db $f4
    rla
    db $f4
    rst $38
    sub a
    ld [hl], h
    dec hl
    db $ec
    ld hl, sp+$18
    ldh [$60], a
    cp $57
    ld b, c
    pop bc
    ld b, b
    jp $e241


    ld [hl+], a
    ldh [$e5], a
    jr nz, jr_07b_54e6

jr_07b_54e6:
    and [hl]
    ldh [$8e], a
    and b
    di
    add b
    dec b
    ld bc, $fd1e
    inc c
    db $ec
    adc c
    adc [hl]
    cp $f0
    ldh a, [$80]
    add b
    ld a, $25
    ld b, d
    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    sbc $21

jr_07b_5503:
    pop de
    adc b
    rst $38
    nop
    add b
    rst $38
    ld [hl], b
    ld a, a
    inc e
    rra

jr_07b_550d:
    inc b
    ld sp, hl
    rlca

jr_07b_5510:
    or d
    ld bc, $01b0
    inc a
    jp $8778


    pop hl
    rst $38
    rra
    rst $00
    ccf
    add hl, bc
    ld sp, hl
    ld sp, $c1f1
    rst $38
    pop bc
    nop
    nop
    ld d, e
    call c, $fee1
    ld [bc], a
    ld h, a
    db $fd
    ld bc, $fbfe
    and b
    db $dd
    nop
    add b
    rst $38
    bit 0, d
    cp $fc
    ld [c], a
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    jr nc, jr_07b_5510

jr_07b_5540:
    inc b
    ei
    nop
    inc b
    ld d, b
    ret nz

    inc bc
    inc bc
    rrca
    rrca
    ld e, [hl]
    rst $38
    inc e
    ld a, b
    jr nc, jr_07b_5540

    ld h, b
    ld [bc], a
    nop
    inc bc
    sbc $d1
    ld h, b
    ld b, $06
    adc c
    adc c
    sub [hl]
    db $e3
    ldh a, [$b0]
    ei
    ldh a, [$f0]
    adc a
    ld b, b
    ld [$04fd], sp
    cp $04
    ldh [$cf], a
    ld hl, $8550
    sbc b
    ld bc, $01a0
    ld d, c
    ld bc, $7f4f
    ld e, a
    rst $30
    ld [hl], b
    ccf
    jr nz, jr_07b_5503

    and b
    ld b, a
    ld a, a
    ld c, b
    ld [$f8fd], sp
    cp $e1
    call z, Call_07b_7cf8
    jr c, @+$40

    ld [$1e77], sp
    nop
    rst $08
    ld [$28a0], a
    nop
    ld d, b
    dec de
    adc d
    sbc $0e
    add c
    rst $00
    add e
    db $fc
    ld a, h
    ld [hl], $04
    ld [bc], a
    ld b, d
    rst $38
    ld b, d
    add [hl]
    add d
    ld b, $02
    rlca
    rrca
    ld [$fef6], sp
    ldh [$09], a
    ld c, $f0
    ld h, c
    inc a
    ld a, [hl]
    ld a, d
    ld b, [hl]
    ld a, a
    add $fa
    cp a
    ld a, a
    ldh [rSB], a
    ld h, d
    ld a, h
    add d
    rst $38
    ld h, b
    ld [hl], b
    ld e, h
    ld a, a
    ld b, a
    db $e3
    and l
    jp $faef


    cp $ef
    rra
    ret nc

    ld h, a
    ld a, b
    ld a, h
    cp $7f
    add [hl]
    or d
    xor $7f
    ld b, c
    rst $38
    jr nz, jr_07b_5634

    ld b, b
    db $fd
    inc c
    ld l, [hl]
    dec b
    rst $20
    jr nz, jr_07b_55f2

    nop
    ccf
    inc b
    ld a, a
    rst $38
    ld a, $e1
    rst $38
    inc e
    rra
    inc bc
    ldh a, [$c0]
    ld l, c
    add b

jr_07b_55f2:
    ld l, [hl]
    ld [bc], a
    dec e
    ld b, b
    add b
    ld b, $a0
    cp b
    sbc a
    and b
    ld [c], a
    db $fc
    adc h
    ld h, c
    dec bc
    ld b, b
    rlca
    cp $fe
    rst $38
    dec c
    jr @+$01

    rra
    ld e, $1f
    db $10
    rra
    ld sp, $d23e
    rst $38
    db $dd
    ld de, $1c1e
    rra
    and d
    cp l
    pop bc
    rst $38
    nop
    ld b, d
    add b
    add c
    ld a, h
    ld b, b
    add e
    push bc
    rst $38
    nop
    add e
    nop
    add l
    nop
    inc bc
    ld hl, sp+$7d
    ei
    inc bc
    db $fd
    cp $e0
    rra
    ld [c], a
    db $e3

jr_07b_5634:
    ld e, $fd
    db $fd
    inc bc
    add $61
    or d
    ld l, [hl]
    or d
    ld l, [hl]
    dec h
    rst $38
    ld c, $96
    ld b, c
    db $e4
    rst $18
    ld l, a
    call nz, $8560
    inc bc
    add [hl]
    ld bc, $63ca
    cp $e2
    ld bc, $0407
    rrca
    dec bc
    jr @+$12

    db $10
    db $fd
    db $10
    ld a, [bc]
    jr nz, @+$22

    inc bc
    add a
    add b
    add b
    ld b, b

jr_07b_5662:
    rst $38
    ret nz

    and b
    ld h, b
    ld hl, sp-$68
    ld a, [hl]

jr_07b_5669:
    ld b, [hl]
    ccf
    rst $38
    ld hl, $101f
    add l
    rst $38
    ld l, b
    db $fc
    db $10
    ld a, a
    jr jr_07b_568f

    dec a
    dec a
    ld h, a
    ld a, a
    jp $c0c5


    rst $38
    jr jr_07b_5662

    ld a, [hl]
    and d
    cp l
    and c
    cp [hl]
    ldh [rIE], a
    cp a
    ldh [$7f], a
    db $e3
    ld a, a
    db $e4
    inc a

jr_07b_568f:
    db $e4
    rst $38
    inc a
    adc b
    rlca
    add a
    nop
    ld [bc], a
    nop
    dec b
    cp $fc
    ld [c], a
    add e
    add b
    add l
    add b
    jr c, jr_07b_5669

    jp Jump_000_3cff


    db $f4
    dec bc
    ld hl, sp+$07
    push af
    dec bc
    ld sp, hl
    rst $38
    rlca
    pop af
    rrca
    ei
    ld b, $c8
    cp a
    ret


    cp $fe
    ldh [$dd], a
    cp a
    sub e
    ld a, a
    sub d
    ld a, a
    sub d
    rst $20
    ld a, [hl]
    ld [hl+], a
    cp $58
    ld h, l
    cp b
    ld b, l
    jr nc, jr_07b_56e9

    ld h, b
    db $fd
    ld b, b
    cp $e1
    ld l, b
    ld b, b
    ld [hl], b
    ld b, b
    ld a, b
    ld b, b
    ei
    ld [hl], h
    ld b, b
    xor c
    pop bc
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff3c
    ldh [$94], a
    ld b, c
    rst $20
    inc h
    rst $38
    inc h
    ld c, e
    ld b, b

jr_07b_56e9:
    dec l
    inc hl
    rst $38
    add b
    ld a, a
    ld e, c
    db $e4
    inc a
    add sp, $38
    ret z

    rst $38
    ld a, b
    ret z

    ld a, b
    ret nc

    ld [hl], b
    ld d, b
    ldh a, [$60]
    cp $7c
    and b
    adc e
    add c
    sbc [hl]
    sbc [hl]
    ld h, b
    ld h, b
    inc bc
    ei
    inc bc
    inc c
    ld a, d
    and b
    inc bc
    inc bc
    inc b
    inc b
    di
    rst $38
    adc [hl]
    ld a, e
    ld b, [hl]
    di
    adc $26
    dec a
    ld [hl], $ff
    dec l
    db $ec
    db $db
    inc a
    dec hl
    ld a, b
    ld [hl], a
    ld [hl+], a
    rst $38
    cp $22
    cp $44
    cp $44
    db $fc
    ld b, h
    rst $38
    db $fc
    add h
    db $fc
    adc b
    db $fc
    adc b
    ld hl, sp+$7a
    rst $18
    ld b, b
    ld a, l
    ld h, b
    ld a, [hl]
    ld h, b
    db $fc
    ldh [$50], a
    ld a, a
    or $fe
    ldh [rIE], a
    adc c
    jr nc, @+$43

    adc a
    rlca
    jr c, jr_07b_5762

    cp $79
    jr nz, jr_07b_578e

    ldh [$c0], a
    ldh a, [$e0]
    ld l, $2e
    ld sp, hl
    ldh a, [$5c]
    ld c, d
    db $10
    ld b, l
    ld bc, $0700
    inc bc
    inc e
    cp a
    inc c
    ld a, b

jr_07b_5762:
    jr c, @+$03

    ld bc, $6402
    ldh [rNR34], a
    db $fd
    rra
    ld l, c
    ld h, c
    add b
    rst $38
    ld a, h
    ld a, a
    cp c
    or a
    rst $30
    ld d, c
    ld a, a
    adc [hl]
    ld l, [hl]
    nop
    ld bc, $06ff
    cp $7f
    ld [$10f8], sp
    ldh a, [$08]
    ld hl, sp-$08
    ld a, [$7ce0]
    ld h, [hl]
    pop hl
    sub $23
    adc e
    rst $38

jr_07b_578e:
    add h
    rst $38
    ld b, e
    ld e, $68
    ccf
    ld hl, sp-$10
    db $fc
    ld hl, sp-$39
    cp $68
    add b
    ld a, b
    and b
    cp l
    ld a, a
    ret z

    pop hl
    nop
    rrca
    inc bc
    db $fc

jr_07b_57a6:
    or d
    ld [c], a
    ld a, a
    cp $a2
    ld hl, $c8ff
    ld hl, sp+$09
    ld sp, hl

jr_07b_57b1:
    ld c, $fe
    rst $38
    jr nc, jr_07b_57a6

    ret


    ld sp, hl
    ld a, [bc]
    ei
    inc c
    rst $38
    ld a, l
    ld [$e0c4], sp

Jump_07b_57c0:
    ret nz

    rst $38
    ld a, b
    ld a, a
    rst $08
    rst $28
    and b
    ld a, a
    jr jr_07b_57b1

    inc l
    db $d3
    ld e, h
    and e
    ldh [$d8], a
    ld [bc], a
    inc a
    sbc [hl]
    add b
    jp nc, Jump_000_2000

    ldh [rNR10], a
    ldh a, [$89]
    ld b, h
    ld sp, hl
    and $00
    nop
    nop
    dec b
    ld [$f0ff], sp
    ld a, [bc]
    rst $38
    add sp, -$20
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    call nc, $b1e1
    add hl, bc
    rst $38
    add sp, -$1c
    db $ed
    ldh [$e5], a
    ld [$e008], sp
    ld a, [$4f0c]
    dec bc
    dec bc
    ld a, [bc]
    ld c, c
    ldh [$fc], a
    rst $38
    ld a, [c]
    rrca
    ld d, e
    db $e3
    ld hl, $ff0b
    ldh [$e0], a
    di
    rst $38
    ldh [$e0], a
    db $e4
    dec c
    rst $38
    pop hl
    ldh a, [$e4]
    ld b, $e0
    rst $28
    ld c, $0e
    ldh [$f6], a
    cp h
    ldh [$e0], a
    ldh [$c1], a
    ld [c], a
    ldh [$f5], a
    inc bc
    dec c
    ld c, $ff
    ldh [$e0], a
    ld sp, hl
    add e
    ldh [$9f], a
    pop hl
    or c
    ld [c], a
    and b
    rst $18
    add b
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $18
    nop
    sbc $2a
    nop
    nop
    call nz, $bde0
    nop
    call c, $c121
    nop
    reti


    ld b, b
    rst $10
    ret nz

    and c
    ld bc, $00c4
    nop
    sub $e0
    db $fd
    ldh [$bd], a
    rst $38
    db $e4
    nop
    rst $18
    add b
    rst $18
    ldh [$ea], a
    nop
    nop
    nop
    dec b
    reti


    rst $38
    ldh a, [rP1]
    rst $38
    add sp, -$20
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    call nc, $e7e6
    ld bc, $0302
    add sp, -$0e
    or e
    ldh [rDIV], a
    dec b
    ld b, $df
    rlca
    ld [$0a09], sp
    dec bc
    ret z

    pop af
    inc c
    dec c
    rst $38
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    push af
    inc d
    ret nz

    push hl
    dec d
    add b
    jp hl


    ld d, $17
    jr jr_07b_58ba

    rst $38
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07b_58cb

    cp e
    ld [hl+], a
    inc hl
    ld h, [hl]
    ldh [rNR50], a
    dec h
    ld h, $60
    jp hl


    daa
    rst $38
    jr z, jr_07b_58e1

    ld a, [hl+]
    dec hl

jr_07b_58ba:
    nop
    inc l
    dec l
    ld l, $ff
    cpl
    jr nc, jr_07b_58f3

    jr z, jr_07b_58ec

    ld [hl-], a
    inc sp
    inc [hl]
    rst $30
    dec [hl]
    ld [hl], $28

jr_07b_58cb:
    ld b, b
    jp hl


    scf
    jr c, jr_07b_58d0

jr_07b_58d0:
    nop
    rst $38
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    rst $38
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop

jr_07b_58e1:
    ld b, l
    ld b, [hl]
    cp $20
    jp hl


    ld b, a
    ld c, b
    ld c, c
    ld c, d
    jr z, jr_07b_5914

jr_07b_58ec:
    jr z, @+$01

    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_07b_58f3:
    ld d, b
    ld d, c
    ld d, d
    rst $18
    ld d, e
    nop
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    jp hl


    ld d, a
    ld e, b
    rst $38
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    rst $38
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ei
    ld l, b

jr_07b_5914:
    ld l, c
    ldh [$c9], a
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    rst $38
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld a, a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ret nz

    ret


    rst $38
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    rst $38
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    rrca
    adc [hl]
    adc a
    sub b
    sub c
    and b
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret c

    ldh [rIE], a
    ldh [rIE], a
    call nc, $92e6
    sub e
    ld bc, $00d5
    sub h
    ld a, a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    nop
    call nc, Call_000_03ff
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    db $fc
    adc c
    push hl
    nop
    call $a4a3
    and l
    and [hl]
    and a
    xor b
    rst $30
    xor c
    xor d
    xor e
    nop
    rst $10
    xor h
    xor l
    xor [hl]
    xor a
    rst $28
    or b
    or c
    or d
    or e
    nop
    push de
    or h
    or l
    or [hl]
    ccf
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    dec h
    ldh [rP1], a
    jp nc, $bdff

    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    db $fd
    nop
    nop
    call nc, $c6c5
    rst $00
    ret z

    ret


    jp z, $cbf7

    nop
    nop
    nop
    call nc, $cdcc
    adc $cf
    rst $18
    ret nc

    pop de
    jp nc, $0000

    nop
    call nc, $d4d3
    ccf
    push de
    sub $d7
    ret c

    nop
    nop
    nop
    rst $18
    add b
    rst $18
    nop
    add b
    adc d
    nop
    nop
    nop
    ret c

    ld e, c
    jr jr_07b_5a2e

    add e
    ld h, l
    ld hl, $ee66
    ld l, e
    rst $38
    ld l, a
    adc $39
    nop
    nop
    rst $18
    ld e, a
    cp a
    nop
    ld [hl], c
    nop
    nop
    nop
    rst $18
    ld e, a
    ld c, c
    rrca
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    rst $18
    ld e, a
    cp a
    nop
    add b
    ld a, l
    nop
    nop
    rst $18
    ld e, a
    rst $18
    ld c, $5f
    ld bc, $0000
    add b
    ld a, l
    ld a, $2a
    rst $18
    ld e, a
    nop
    nop
    rst $18
    ld e, a
    rst $18
    ld c, $bf
    nop
    nop
    nop
    rst $18
    ld e, a
    ld a, $2a
    cp a
    nop
    nop
    nop
    ei
    nop
    rst $38
    cp $e2
    rlca
    nop
    nop
    nop
    ld b, b
    rst $08
    nop
    xor b
    nop
    ld d, l
    ldh a, [$e4]
    ld [$7fe1], a
    nop
    add a

jr_07b_5a2e:
    ccf
    nop
    ld e, a
    ldh a, [$e8]
    sub $e2
    rst $38
    db $ed
    ldh [$eb], a
    rra
    ld a, [$ecd2]
    ldh a, [$c2]
    db $ec
    nop
    push de
    nop
    xor d
    nop
    cp c
    dec b
    sub h
    ldh [$fd], a
    pop hl
    dec d
    nop
    ld [bc], a
    adc d
    ldh [$a7], a
    ei
    nop
    ld d, e
    adc b
    ldh [$15], a
    nop
    ld a, [bc]
    nop
    ld b, l
    db $fc
    db $e4
    ldh [$80], a
    db $e3
    ld a, a
    nop
    rrca
    nop
    and e
    nop
    pop af
    ld d, h
    ldh a, [$e6]
    ld l, [hl]
    jp hl


    ld h, b
    and $01
    rst $38
    inc bc
    rst $38
    rst $38
    inc b
    db $fc
    ld bc, $07ff
    cp $1f
    ld hl, sp-$31
    ld a, a
    ldh [rIE], a
    add b
    ld [hl], h
    ldh [$3b], a
    ldh [rIE], a
    ldh [$be], a
    ld c, a
    add sp, -$20
    rra

jr_07b_5a8b:
    jr jr_07b_5a8b

    rrca
    rst $10
    ldh [rP1], a
    rst $08
    cp $01
    db $fd
    ld [bc], a
    db $fc
    db $e3
    db $10
    pop hl
    add b
    rst $38
    rst $38
    ret nz

    ld a, a
    ldh [$bf], a
    ldh a, [$5f]
    ldh a, [$bf]
    db $fd
    ld hl, sp+$20
    jp hl


    db $fd

jr_07b_5aaa:
    nop
    ld a, [$f500]
    nop
    ld [hl], l
    cp $f8
    ldh [$ea], a
    ld e, b
    ld [c], a
    ld d, h
    nop
    and b
    db $ec
    ret nz

    and h
    ld l, h
    pop hl
    ld l, b
    pop hl
    add b
    ld c, d
    db $e4
    ld sp, hl
    db $ed
    xor d
    jr c, jr_07b_5aaa

    ld bc, $e2ba
    and $bf
    call z, $afc0
    nop
    ld d, a
    db $fc
    ldh [rNR22], a
    di
    nop
    dec bc
    inc d
    ldh [$c0], a
    ret


    xor a
    nop
    ld d, l
    ld [$f8ff], sp
    db $10
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$4c], a
    ld a, a
    ret nz

    ld c, a
    ret nz

    ld b, a
    ret nz

    ld b, [hl]
    ret nz

    db $f4
    pop bc

jr_07b_5af3:
    push de
    ret nz

    cp $e0
    ld h, b
    cp $e0
    ldh a, [$fe]
    ldh [$0c], a
    rlca
    ld a, a
    ld d, $03
    dec hl
    ld bc, $0017
    cpl
    pop bc
    ldh [$ef], a
    cpl
    nop
    ld e, a
    rlca
    jr jr_07b_5af3

    cp [hl]
    db $fc
    db $fc
    rst $38
    ret nz

    ld hl, sp+$40
    rst $38
    daa
    ld hl, sp-$01
    ld hl, sp-$01
    cp a
    ld hl, sp+$7f
    call z, Call_000_0487
    rlca
    ld b, $7f
    inc bc
    cp $7f
    cp $97
    rst $38
    dec bc
    ld h, b
    ret


    db $fc
    db $f4
    pop bc
    ld b, b
    push bc
    ld b, b
    cp $e0
    cp l
    ldh [$2a], a
    dec hl
    ldh [$34], a
    jr nc, @-$1e

jr_07b_5b3f:
    push af
    adc h

jr_07b_5b41:
    ret nz

    ld d, b
    ld b, b
    and $30
    db $e3
    rla
    dec d
    nop
    ld a, [hl+]
    db $ec
    ldh [$a0], a
    ld a, [bc]
    ret nz

    jr z, jr_07b_5b3f

    inc [hl]
    jp hl


    and d
    ret nc

    rst $20
    ld d, l
    ret nc

    ldh [$5c], a
    pop bc
    jr nz, jr_07b_5b41

    xor e
    db $ec
    call nz, $9c0a
    ld [$d0e0], sp
    and l
    cp $00
    ld [hl], l
    ld b, b
    add $8c
    db $e3
    ld d, l
    db $e3
    nop
    and d
    ld l, a
    pop bc
    inc c
    jp nz, $e680

    ld h, $e0
    inc hl
    rst $38
    ld h, b
    inc hl
    and b
    db $10
    db $10
    inc de
    inc de
    rrca
    rst $38
    inc c
    ccf
    jr nc, jr_07b_5c07

    ld b, b
    nop
    jr nc, @+$11

    rst $38
    rlca
    ld a, b
    ccf
    ret nz

    rst $38
    ld bc, $07f8
    rst $38
    ldh [$1f], a
    add e
    ld a, a
    ld c, $fc
    ld a, b
    add a
    rst $38
    ldh a, [$1f]
    jp $0c7f


    rst $38
    jr nc, @+$01

    rst $38
    sbc $ff
    ld h, b
    rst $38
    add b
    ret nz

    ld a, a
    add b
    cp $4e
    push bc
    ccf
    ldh a, [$1f]
    ldh a, [$1f]
    ld_long $ff15, a
    push af
    ld a, [bc]
    ld [$f415], a
    dec bc
    add sp, $17
    rst $38
    db $f4
    dec bc
    ld a, [$fd05]
    ld [bc], a
    ei
    db $fc
    rst $38
    rrca
    ldh a, [$ba]
    ld b, l
    ld d, l
    xor d
    ld a, [hl+]
    push de
    rst $38
    nop
    rst $38
    adc a
    ld a, a
    ld d, a
    xor b
    and b
    ld h, b
    rst $38
    ld h, b
    and b
    pop bc
    ld b, c
    ld b, e
    jp nz, $cc4f

    ld a, [hl]
    add e
    and e
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    cp $e7
    rst $38
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    ld [$e908], sp
    rlca
    ld c, $a1
    dec bc
    and b
    add c
    adc b
    pop hl
    rlca
    ld a, e

jr_07b_5c07:
    ld a, a
    rst $38
    adc c
    adc a
    dec b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rst $38
    rst $38
    jr c, @+$01

    ret nz

    db $fd
    and b
    ld_long a, $ff00
    db $fd
    ld h, b
    cp $f0
    db $ed
    xor b
    sbc $98
    cp $2d
    and b
    scf
    ld a, h
    xor a
    db $fc
    cpl
    ld a, a
    xor a
    rst $38
    or l
    ld l, l
    inc [hl]
    call c, $ef13
    ld hl, sp+$0f
    rst $38
    db $fc
    add a
    db $fc
    rst $10
    or $e3
    db $e3
    pop bc
    rst $38
    pop af
    ldh a, [$e2]
    ldh [$e1], a
    ret nz

    inc e
    rst $38
    rst $38
    ld a, [hl]
    db $e3
    jp $9981


    sbc c
    cp l
    ld hl, $393f
    ld sp, $5173
    ld h, d
    ld b, e
    di
    call nz, $a090
    rst $28
    ld a, [$f505]
    ld a, [bc]
    ld e, [hl]
    pop hl
    ld [$5415], a
    rst $38
    xor e
    xor b
    ld d, a
    ld b, c
    cp a
    ld bc, $02ff
    ccf
    cp $02
    cp $40
    ret nz

    add b
    rst $38
    ld [c], a

jr_07b_5c78:
    or d
    or d
    ld [hl], a
    ld bc, $0c03
    sbc d
    and [hl]
    ld b, b
    nop
    ldh [$ef], a
    and b
    ld a, l
    or $e4
    rst $20
    rlca
    rlca
    add hl, bc
    ld c, $0a
    ldh [$e6], a
    rst $38
    ldh a, [$f0]
    db $10
    ld hl, sp+$08
    jr c, jr_07b_5ca0

    jr jr_07b_5c78

    pop bc
    ld [$0701], a
    ld b, $01

jr_07b_5ca0:
    rst $38
    ld [c], a
    ld [bc], a
    inc bc
    rst $38
    inc c
    rrca
    inc b
    rlca
    jp nz, Jump_000_21c3

    ld hl, $ddff
    call c, $cc4e
    rst $28
    db $ed
    ccf
    pop hl
    rst $38
    ld a, $e2
    rra
    pop af
    ld e, $f0
    inc c
    ld hl, sp-$05
    rla
    inc bc
    add d
    add e
    inc b
    nop
    ld e, $1c
    ld h, h
    ld c, a
    ld h, h
    jr c, jr_07b_5ce5

    ld [bc], a
    ld [hl], c
    add b
    db $fc
    pop hl
    dec bc
    db $fd
    ld h, b
    rst $38
    rrca
    ld [bc], a
    rra
    inc b
    add [hl]
    inc bc
    ld e, h
    rlca

jr_07b_5cde:
    or e
    ld hl, sp+$3f
    adc d
    pop bc
    cp $e1

jr_07b_5ce5:
    ret nz

    ld a, a
    sub [hl]
    pop bc
    ret nc

    rst $38
    cpl
    xor b
    ld d, a
    ret nc

    cpl
    and c
    ld e, a
    ld b, [hl]
    rra
    cp [hl]
    sbc b
    ld a, b
    inc b
    db $fc
    ld a, $a3
    jr c, jr_07b_5cde

    rst $08
    and h
    cp $ff
    ldh [rTIMA], a
    rlca
    ld a, [bc]
    ld c, $03
    inc bc
    rlca
    ei
    inc bc
    dec c
    cp b
    ld h, b
    ld bc, $0300
    nop
    inc bc
    rst $38
    inc b
    ld b, $09
    rrca
    db $10
    ccf
    nop
    xor [hl]
    rst $38
    pop de
    rst $00
    jr c, jr_07b_5d27

    ld sp, hl
    xor h
    ld d, e
    ld e, d
    rst $38
    and l

jr_07b_5d27:
    push af
    ld a, [bc]
    or d
    ld e, l
    ld d, b
    cp a
    or b
    ld c, a
    ld a, a
    ld d, b
    xor a
    add b
    db $fc
    ld [c], a
    adc b
    ld h, c
    ld [bc], a
    cp $e0
    db $fc
    db $f4
    ld h, d
    rst $38
    add c
    ldh [rLCDC], a
    and b
    add b
    ld [hl], b
    ld b, b
    db $fd
    cp d
    sbc d
    adc c
    inc e
    inc e
    daa
    inc hl
    dec b
    inc c
    rst $38
    dec b
    rlca
    ld b, $07
    ld [bc], a
    rlca
    inc bc
    rlca
    rst $38
    rrca
    rra
    di
    db $fc
    sbc a
    ldh [$38], a
    db $fc
    rst $38
    call nz, $e4fc
    dec e
    rrca
    rst $38
    di
    db $fc
    rst $38
    ccf

jr_07b_5d6c:
    ret nz

    ldh a, [rIF]
    inc bc
    ldh a, [$0a]
    inc c
    rst $38
    inc c
    jr jr_07b_5d6c

    ld hl, sp+$36
    reti


    jp hl


    rla
    rst $38
    ld bc, $0bff
    rrca
    add $07
    jr nc, jr_07b_5d95

    rst $38
    db $10
    db $10
    sbc b
    ld [$08d8], sp
    ld c, b
    adc b
    rst $38
    call z, $ac84
    call nz, $c464

jr_07b_5d95:
    add [hl]
    db $fc
    rst $28
    ld h, e
    ld a, a
    jr jr_07b_5dbb

    ld [de], a
    push bc
    nop
    nop
    inc c
    ld a, [hl]
    scf
    add b
    ldh [$c0], a
    db $fd
    ldh a, [rIF]
    rrca
    jp nc, $ffc1

    rrca
    add hl, bc
    ccf
    ld [$107f], sp
    rst $38
    jr nz, @+$01

    rst $38
    jp Jump_000_0cfe


    push af

jr_07b_5dbb:
    or b
    ld_long $ffc0, a
    push de

jr_07b_5dc0:
    nop
    db $fd
    ld b, e
    cp $7e
    or b
    sub b
    rst $38
    ld d, b
    db $10
    xor b
    ld [$0858], sp
    cp b
    jr jr_07b_5dc0

    ld a, h
    ld h, h
    ldh [$e0], a
    ld [$1a8b], sp
    rrca
    ccf
    rst $38
    scf
    dec b
    inc bc
    dec de
    rla
    rra
    rrca
    dec l
    rst $38
    dec de
    ld e, d
    ld [hl], a
    ccf
    ccf
    rst $18
    ld h, b
    ld a, a
    rst $38
    add b
    cp a
    ld b, b
    rst $18
    and b
    cp $e1
    call z, $f3ff
    ld [$d7f5], a
    ld hl, sp+$18
    rst $38
    ld e, l
    rst $38
    cp [hl]
    sbc e
    ld a, h
    dec a
    cp $fc
    rst $38
    ld e, d
    rst $38
    rst $38
    cp [hl]
    ld a, a
    ld a, a
    rst $38
    ld b, $ff
    ld e, $ae
    ld e, b
    ld h, b
    ld b, $ff
    rlca
    db $e4
    ld b, b
    ld a, a
    ldh [rLCDC], a
    ld [bc], a
    db $fd
    db $fd
    adc [hl]
    ld b, c
    add h
    ei
    ld a, [bc]
    push af
    inc b
    ei
    rst $08
    adc d
    push af
    ld b, b
    rst $38
    xor b
    ld h, b
    ld [bc], a
    ld [c], a
    add b
    ld h, b
    cp a
    nop
    pop bc
    nop
    db $e3
    db $10
    rst $10
    sbc d
    ld l, d
    add b
    rst $38
    nop
    add b
    ld [hl], e
    ld b, c
    ld a, l
    ld b, e
    ld [hl], e
    ld c, a
    rst $38
    db $76
    ld c, a
    ld [hl-], a
    cpl
    add hl, sp
    daa
    add hl, sp
    daa
    rst $38
    add hl, de
    rla
    ld [hl], b
    adc a
    ld bc, $19fe
    add [hl]
    rst $38
    ld a, b
    add a
    ld b, b
    cp a
    inc c
    jp $eb94


    rst $38
    adc h
    di
    rra
    nop
    db $fc
    inc bc
    ret nz

    inc a
    ei
    rrca
    ret nz

    ld c, l
    ld b, h
    add b
    ret nz

    ccf
    ld bc, $e7c0
    pop bc
    nop
    pop hl
    cp $e0
    pop bc
    and c
    ldh a, [rP1]
    ld h, h
    rst $38
    call nz, $e256
    ld [hl], $e2
    ld [hl-], a
    ld [c], a
    ld [hl+], a
    rst $28
    ld a, [c]
    xor e
    ld [hl], c
    sbc c
    cp $e0
    dec bc
    dec bc
    rrca
    rst $38
    ld a, [bc]
    ld d, $14
    ld e, $14
    inc e
    jr jr_07b_5ec1

    rst $38
    jr c, jr_07b_5eef

    ld [hl], c
    cp a
    rst $20
    xor d
    add b
    push de
    rst $38
    add c
    ld [$d443], a
    ld b, a
    ld a, b
    ccf
    ldh [$5b], a
    ld a, a
    add c
    or h
    ld b, b
    add h

jr_07b_5eb1:
    db $fc
    ld e, d
    and c
    ld bc, $40a2
    sbc a
    ld a, h
    rst $38
    adc $83
    rlca
    db $f4
    ld l, b
    ld c, b
    xor a

jr_07b_5ec1:
    ld bc, $0afc
    ld h, b
    sub c
    ret nz

    ld de, $3838
    ld [hl], c
    ld [hl], b
    dec sp
    rst $38
    inc a
    cp [hl]
    db $fd
    ld a, l
    ei
    ccf
    ld a, a
    ld l, e
    rst $38
    ld [hl], a
    rst $10
    db $ed
    ld a, a
    ei
    cp a
    ld l, a
    ld a, e
    rst $38
    rst $18
    or $ff
    res 7, a
    and l
    ld e, e
    ld a, [hl]
    cp a
    ld sp, hl
    cp l
    rst $38
    ld e, e
    rst $38
    db $fd

jr_07b_5eef:
    ret z

    jr nz, jr_07b_5eb1

    xor a
    rst $38
    ld e, [hl]
    rst $38
    scf
    ld a, [$7de0]
    cp h
    ld [hl+], a
    cp $fa
    ld a, [c]
    ret nz

    rst $18
    db $ec
    ldh [rNR22], a
    rst $38
    ld c, a
    rst $38
    ld c, e
    ei
    cp a
    sub a
    sub $c0
    ccf
    rst $38
    ld c, a
    cp a
    sbc a
    cp $12
    add b
    jp nc, $e2ef

    rst $38
    rst $00
    rst $38
    xor $ef
    rst $38
    rst $30
    rst $38
    xor a
    sbc $e0
    inc e
    ei
    ld [hl-], a
    cp a
    db $fd
    inc [hl]
    ei
    ld a, b
    rst $38
    cp b
    ld [hl], b
    ldh [$fa], a
    db $fc
    ld l, h
    ldh [$d3], a
    ld b, b
    add b
    inc b
    call nz, $cc0c
    ld c, [hl]
    rst $38
    cp $dc
    db $fc
    ld l, h
    cp $de
    cp $18
    rst $38
    rla
    inc e
    inc de
    inc c
    dec bc
    ld c, $09
    ld c, $ff
    add hl, bc
    ld b, $05
    rlca
    inc b
    inc bc
    ld [bc], a
    sub [hl]
    rst $38
    jp hl


    adc d
    push af
    sub [hl]
    add sp, -$35
    db $f4
    ld b, a
    rst $38
    ei
    ld c, h
    db $f4
    ld e, h
    db $fc
    db $76
    and $7f
    rst $38
    add b

jr_07b_5f6a:
    ccf
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    rst $38
    ret nz

    sbc [hl]
    ldh [$50], a
    ld h, a
    daa
    jr c, jr_07b_5f6a

    ei
    nop
    ld hl, sp-$02
    pop hl
    ld bc, $0ee0
    inc c
    ldh a, [$7f]
    db $fc
    ld h, b
    sbc [hl]
    sub b
    db $db
    ld sp, $fe5b
    ldh [rIE], a
    inc sp
    pop hl
    rla
    ld hl, $231d
    add hl, bc
    scf
    ei
    ld [de], a
    ld e, $c4
    add c
    ld [bc], a
    inc bc
    inc b
    rlca
    ld [$0fff], sp
    ld [$100f], sp
    rra
    db $10
    rra
    reti


    rst $18
    ld a, $e7

jr_07b_5fad:
    jr jr_07b_5fad

    ld bc, $618c
    push af
    dec bc
    rst $38
    jp hl


    rla
    jp nc, $e82e

    jr jr_07b_600c

    or b
    xor e
    and b
    ld h, b
    ld [bc], a
    and a
    rrca

Jump_07b_5fc3:
    ld d, h
    ld b, b
    rrca
    ld d, h
    ld b, d
    rra
    and d
    ld d, b
    ld b, c
    nop
    sub d
    ld h, b
    db $fd
    ld [$6090], a
    inc bc
    adc h
    ld h, b
    rlca
    rst $38
    rlca
    rlca
    ld d, $17
    dec e
    rra
    ccf
    ccf
    ld a, c
    ld l, [hl]
    cp [hl]
    nop
    ld [$fde1], sp
    cp $da
    db $fd
    ld a, [$f7e1]
    db $dd
    or a
    cp a
    xor h
    nop
    ld l, e
    rst $38
    ld d, c
    rst $28
    rst $38
    sub [hl]
    db $eb
    xor a
    ld e, e
    ld a, a
    db $db
    db $db
    ld a, a
    ld sp, hl
    rst $28
    rst $28
    pop hl
    jp nc, Jump_07b_57c0

    rst $38
    dec hl
    rst $38
    rst $18
    ld c, [hl]
    db $f4

jr_07b_600c:
    ld [c], a
    rst $38
    rst $38
    rst $10
    db $f4
    ret nz

    add l
    ld bc, $daf7
    ret nz

    ld d, l
    rst $38
    and $e0
    cpl
    or h
    and b
    ld l, a
    ret nz

    ret nz

    ld a, a
    ld [hl], b
    nop
    ld b, l
    xor $e2
    ldh [$ef], a
    or b
    ret nz

    ld [c], a
    pop hl
    ld h, c
    ld bc, $98fb
    and b
    ld [hl], h
    ld a, [c]
    pop hl
    push bc
    db $e3
    db $fc
    and $e2
    cp [hl]
    rst $38
    db $ed
    ld d, b
    dec b
    cp $90
    and b
    ld b, b
    ret nc

    add b
    ld a, [$fee0]
    ret nc

    sbc e
    cp $f0
    ld [c], a
    ldh [$03], a
    ld [bc], a
    adc $61
    inc h
    daa
    db $e3
    rst $38
    ld [hl], e

jr_07b_6057:
    ld sp, hl
    ld [hl], b
    add sp, $48
    call nz, Call_07b_72e4
    rst $38
    ld h, d
    ld d, b
    ld d, b
    ld l, b
    ld c, b
    inc h
    inc h
    ccf
    rst $18
    ld de, $899f
    rrca
    ld b, $04
    daa
    sbc [hl]
    db $10
    rst $18
    ld a, $20
    ld a, $20
    ccf
    cp $e0
    ld a, a
    jr nz, @+$01

    ld a, [hl]
    ld b, b
    ld h, c
    ld b, b
    ld c, $1e
    ld de, $ff0f
    add hl, de
    rlca
    dec e
    inc bc
    ld a, [de]
    ld b, $02
    ld b, $ef
    inc d
    inc c
    adc b
    ld a, b
    call z, Call_000_10c1
    rra
    or b
    rst $38
    cp a
    ld l, b
    ld l, a
    jr z, jr_07b_60cc

    inc h
    daa
    inc d
    rst $38
    rla
    db $e4
    inc e
    ret z

    jr c, jr_07b_6057

    ld d, b
    ld h, b
    rst $38
    and b
    ldh a, [$30]
    add sp, $28
    call nz, $8244
    pop de
    add d
    ldh [$61], a
    call c, $8c61
    ld h, e
    rla
    pop de
    ld bc, $bd01
    rst $38
    ld bc, $017b
    db $fd
    inc bc
    ei
    inc bc
    di
    rst $20
    rlca
    push hl
    rrca

jr_07b_60cc:
    ld [c], a
    ld b, e
    sbc $47
    ld e, $1f
    rra
    rst $38
    rra
    dec a
    ccf
    ld a, e
    ld a, a
    dec a
    ccf
    ccf
    rst $38
    ccf
    ld d, a
    ld a, a
    ld l, a

Call_07b_60e1:
    ld a, a
    ei
    rst $38
    ld [hl], l
    rst $38
    rst $38
    db $ed
    ei
    ld a, [$d7f7]
    db $ec
    cp $bf
    rst $38
    db $db
    db $fd
    ld h, [hl]
    cp e
    ld a, [$a0da]
    ld d, l
    rst $38
    xor a
    cp b
    ld c, a
    ld h, a
    jp c, $b7da

    dec a
    db $eb
    rst $30
    reti


    and e
    ret nz

    ld a, a
    ld a, [c]
    ret nz

    rst $30
    cp a
    ei
    cpl
    rst $18
    cp $6f
    ld e, a
    ld a, [bc]
    ld [c], a
    db $dd
    xor $c0
    add b
    and c
    reti


    rst $38
    add sp, -$1f
    or d
    nop
    ld b, $fe

jr_07b_6120:
    ld a, h
    ld bc, $e021
    rst $38
    ld hl, $43e0
    ret nz

    ld b, e
    ret nz

    rst $38
    rst $38
    cp $02
    db $e3
    add b
    nop
    sbc b
    nop
    cp b
    nop
    or b
    rst $38
    nop
    ld hl, sp-$01
    cp $87
    ld a, a
    ld h, c
    rra
    sbc a
    db $10
    rrca
    ld [$0407], sp
    or b
    and c
    ld sp, $c041
    rst $30
    rst $38
    ldh a, [$3f]
    ld [$0740], sp
    cp $03
    rst $38
    cp $10
    ld [hl+], a
    ccf
    rst $38
    di
    ldh [$38], a
    ldh a, [rNR34]
    rst $38
    db $fc
    rlca
    rst $38
    inc bc
    cp $80
    add [hl]
    add b
    rst $28
    add [hl]
    ldh a, [$f0]
    rrca
    dec bc
    ld b, c
    rlca
    ldh [$c0], a
    bit 7, [hl]
    db $fc
    dec sp
    nop
    ldh [rDMA], a
    ld b, b
    ld h, b
    ld b, b
    dec c
    db $fc
    cp a
    inc bc
    ld a, a
    nop
    rrca
    ld a, [bc]
    inc bc
    jr nc, jr_07b_6188

    ld d, a

jr_07b_6188:
    ccf
    ld bc, $01af
    ld e, a
    ld bc, $b5bf
    pop hl
    ldh [rNR41], a
    ld [hl], e
    ei
    inc b
    and $21
    ld [c], a
    jr nz, jr_07b_6120

    push af
    ld [$439a], a
    cp d
    ld [hl+], a
    jr nz, jr_07b_61e1

    ld d, b
    nop
    ld l, d
    ldh [$b4], a
    jr c, @+$05

    rrca
    rst $38
    cp $1e
    ldh a, [rNR32]
    ld [hl], b
    dec de
    xor b
    rra
    db $fd
    ld c, e
    or c
    ld hl, $fee0
    ldh a, [rNR51]
    ld [hl], b
    ld a, [de]
    cp a
    jr nc, jr_07b_61d6

    ld hl, sp+$72
    ld hl, sp-$78
    or b
    dec b
    inc bc
    ld a, e
    add e
    inc b
    ld a, [hl-]
    jr nz, jr_07b_61de

    stop
    ld [$008c], a
    cp [hl]
    inc h
    nop

jr_07b_61d6:
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$01

    ldh [$03], a

jr_07b_61de:
    ld a, a
    cp [hl]
    inc bc

jr_07b_61e1:
    ld e, [hl]
    inc bc
    xor e
    ld bc, $8851
    and e
    rst $38
    rlca
    rlca
    rst $38
    rst $20
    rst $38
    sub b
    ld a, a
    ret nz

    rst $38
    rst $38
    ldh [$bb], a
    and b
    or l
    and b
    ld_long a, $ffe0
    push af
    ldh [$e0], a
    pop bc
    rst $38
    ld a, b
    rst $38
    adc a
    cp $85
    ld b, b
    add hl, sp
    rst $38
    ld a, h
    rst $08
    ld c, [hl]
    rst $08
    jp z, Jump_000_3fff

    ldh a, [$cf]
    inc a
    ei
    add [hl]
    rst $38
    ld [hl], e
    rst $30
    rst $38
    ccf
    ldh [$fe], a
    ldh [$f0], a
    rra
    db $fd
    sbc a
    rst $38
    rst $38
    add e
    rst $00
    add b
    pop bc
    nop
    ld hl, sp-$40
    rst $38
    ld a, $f8
    rrca
    rst $38
    dec d
    rst $38
    ldh [$60], a
    ld e, a
    ldh [$a0], a
    ldh [$e0], a
    ldh [$a5], a
    pop hl
    jr nz, @-$46

    nop
    db $fd
    ret nz

    ld c, b
    dec h
    add hl, sp
    add hl, sp
    ld c, a
    ld b, a
    and $83
    rst $38
    ld a, [$0d87]
    ld c, $04
    rrca
    rlca
    rrca
    rst $38
    ld e, $7f
    rst $20
    ld hl, sp+$3e
    pop bc
    ldh [rNR34], a
    rst $38
    inc bc
    db $fc
    ret


    ccf
    ld e, $ff
    rst $20
    ld hl, sp-$01
    ld a, [hl]
    add c
    ldh [rNR34], a
    rlca
    ldh [$3f], a
    nop
    rst $38
    ld hl, sp+$07
    db $eb
    ldh a, [$6d]
    or d
    jp nc, $ff2f

    inc bc
    rst $38
    rla
    rra
    adc h
    rrca
    add b
    ld a, a
    rst $18
    ld [bc], a
    add c
    db $10
    db $10
    sub b
    cp $e0

Call_07b_6285:
    sbc b
    ld [$58f7], sp
    adc b
    ret z

    cp $e0
    xor h
    call nz, Call_000_0203
    ld a, a
    ld b, e
    ld b, d
    ld h, [hl]
    ld h, h
    ld e, h
    ld a, h
    ld b, h
    cp $e0
    rst $38
    ld b, [hl]
    ld a, h
    ld [hl+], a
    ld a, $ba
    and l
    pop af
    adc $f7
    ldh [$3f], a
    ret nz

    add h
    ld [hl+], a
    nop
    rst $38
    ld a, b
    or a
    rst $38
    ei
    db $fd
    jp hl


    rst $28
    sbc c
    sub a
    di
    db $fd
    ld e, e
    ld a, e
    cp [hl]
    add $43
    ldh a, [$1f]
    cp $e0
    rst $18
    ld_long a, $ffe0
    sbc a
    ldh [$3f], a
    ld l, a
    ccf
    cp c
    jr nc, @+$01

    rst $30
    ld a, [bc]
    rst $28
    dec d
    ld h, d
    add d
    ld a, [bc]
    add sp, $17
    db $f4
    rst $30
    dec bc
    ld hl, sp-$79
    and d
    inc bc
    ld c, a
    jp $fe3d


    cp a
    xor [hl]
    ld d, c
    ld d, l
    xor d
    dec bc
    push af
    add hl, bc
    ld b, c
    ld h, b
    db $fc
    inc a
    ldh [rLY], a
    ldh [rLCDC], a
    add b
    add b
    ld bc, $e601
    rst $38
    sbc a
    db $ec
    sbc a
    ld h, h
    ld e, a
    ld [hl], d
    ld c, a
    ld [hl], e
    rst $28
    ld c, a
    inc sp
    cpl
    ld sp, $40ac
    inc sp
    inc c
    ldh a, [rIE]
    rrca
    add c
    ld a, [hl]
    add hl, de
    add [hl]
    add hl, hl
    sub $18
    rst $38
    rst $20
    inc l
    db $d3
    inc d
    db $eb
    add c
    ld a, b
    rra
    ld a, c
    add b
    inc a
    inc bc
    or b
    ld b, d
    nop
    add d
    ld bc, $fec2
    ldh [$ea], a
    xor [hl]
    ld b, e
    pop hl
    inc hl
    ret nz

    ld l, h
    xor h
    jr nz, jr_07b_6374

    db $e4
    ld d, [hl]
    cp $ae
    ld b, b
    ld [hl-], a
    ld [c], a
    or d
    ld h, d
    or [hl]
    ld h, d
    ld [hl+], a
    cp a
    ld a, $12
    rra
    ld de, $091f
    sub d
    nop
    inc bc
    cp $a6
    ld [bc], a
    ccf
    ld e, $3e
    ld [de], a
    inc e
    inc b
    jr @+$01

    sbc b
    ret nz

    add b
    ld b, b
    ret nz

    ldh [$e0], a
    rra
    sbc l
    db $10
    ld d, $a3
    ld a, [bc]
    nop
    dec d
    ld [c], a
    ld h, b

Jump_07b_6362:
    rst $30
    jr nz, jr_07b_6381

    rst $38
    ld h, [hl]
    ld b, $9e
    ld [$145e], sp
    cp l
    db $10
    rst $18
    jp $fe01


    daa
    ret c

jr_07b_6374:
    ld [$f5c0], sp
    adc d
    cp e
    cp $81
    sub l
    ld [bc], a
    nop
    db $fd
    ld [bc], a
    db $ec

jr_07b_6381:
    and c
    ld a, $f7
    cp $af
    ld d, a
    call c, $aaa1
    ld d, l
    ld d, l
    xor d
    rst $38
    xor d
    ld d, l
    ld b, b
    cp a
    rrca
    rrca
    pop af
    rst $38
    rst $38
    jp hl


    rla
    pop de
    cpl
    and d
    ld e, [hl]
    ld b, d
    cp [hl]
    sbc [hl]
    add h
    ld bc, $1719
    dec e
    inc de
    ld c, $63
    db $10
    ld h, e
    xor h
    rst $38
    db $d3
    sub [hl]
    jp hl


    adc [hl]
    pop af
    sub [hl]
    jp hl


    set 7, a
    db $f4
    ld d, a
    add sp, $4b
    rst $30
    ld d, [hl]
    db $ec
    ld a, a
    db $fd
    add b
    ld c, $61
    ld a, $c0
    ld [hl], b
    rst $20
    sub a
    sbc b
    rst $28
    adc a
    adc b
    rst $00
    call nz, Call_000_20fc
    inc bc
    ret nz

    inc e
    rst $38
    jr @-$1e

    ld hl, sp+$00
    db $fc
    nop
    db $fc
    inc c
    rst $38
    ld a, [c]
    ld [de], a
    or [hl]
    ld h, d
    ld h, [hl]
    jp nz, Jump_07b_422e

    rst $38
    ld a, [hl-]
    ld b, [hl]
    ld [de], a
    ld l, [hl]
    ld h, h
    inc a
    inc e
    inc a
    di
    ld [hl+], a
    ld e, $f8
    ld bc, $61fe
    rrca
    rrca
    rla
    ld [de], a
    cp a
    rla
    ld d, $2f
    add hl, hl
    rst $38
    ldh [$5e], a
    and b
    inc bc
    rst $18
    cp $1c
    push af
    ldh [$aa], a
    and a
    and b
    xor d
    nop
    rst $38
    ldh [$7f], a
    ldh a, [$df]
    ret nc

    rra
    sbc b
    cpl
    rst $38
    ld [$1e5f], sp
    xor a
    dec [hl]
    ld e, l
    ld h, h
    db $fc
    rst $38
    ld [$d415], a
    dec hl
    xor b
    ld d, a
    ret nc

    cpl
    ld h, h
    db $fc
    pop hl
    or d

jr_07b_642a:
    ld h, b
    nop
    push de
    jp $81aa


    jr c, jr_07b_642a

    ld [c], a
    and c
    ld l, a
    db $10
    ldh a, [rNR41]
    ldh [$e2], a
    ld b, a
    nop
    nop
    and b
    ld h, c
    cp $be
    add hl, bc
    call z, $d776
    ld l, [hl]
    db $fd
    xor c
    ld l, b
    rst $38
    ld a, h
    ld h, $3c
    ld a, [hl-]
    ld a, [hl+]
    dec l
    add hl, sp
    inc e
    ld a, a
    inc e
    ld h, a
    ld h, d
    inc sp
    ld de, $0809
    ld b, d
    and e
    ld a, [hl]
    sbc h

jr_07b_645e:
    ld hl, $22f2
    and $24
    rst $20
    call nz, $8184
    rst $38
    ld c, $04
    ld a, [bc]
    dec c
    ld [$3a0f], sp
    ld b, $ff
    ld a, [de]
    ld b, $04
    inc c
    inc d
    inc c
    jr z, jr_07b_6491

    rst $28
    sub b
    ld [hl], b
    jr nz, jr_07b_645e

    add b
    and l
    inc bc
    inc bc
    rlca
    rst $38
    inc b
    rrca
    add hl, bc
    ld a, [de]
    inc de
    inc [hl]
    daa
    ccf
    rst $38
    add hl, hl
    ld a, l
    ld d, c
    ld sp, hl

jr_07b_6491:
    ldh a, [$f1]

jr_07b_6493:
    ld h, b
    pop hl
    rst $38
    ret nz

    rst $00
    add e
    db $fc
    sbc a
    ld h, b
    rst $38
    ld d, a
    rst $38
    ld bc, $07ae
    ret c

    adc a
    ldh a, [$bf]
    pop bc
    ld a, $34
    jr nz, jr_07b_64b7

    ld hl, sp+$38
    ldh a, [$82]
    ld [hl-], a
    ld [hl+], a
    adc h
    jr nz, jr_07b_6493

    add e
    adc [hl]
    inc bc

jr_07b_64b7:
    rlca
    ld bc, $2130
    ret nz

    add b
    rst $38
    ld h, b
    ld b, b
    jr nc, jr_07b_64e2

    inc e
    jr jr_07b_64cc

    ld b, $bd
    inc bc
    ld d, $40
    add hl, bc
    rrca

jr_07b_64cc:
    ld c, $0f
    ld b, e
    ret nz

    ld [bc], a
    db $fc
    ld e, e
    ld b, b
    push hl
    ld b, c
    add b
    ret nz

    ret nz

    or b
    ldh a, [$8c]
    rst $38
    call c, $e343
    db $fc
    ld a, h

jr_07b_64e2:
    cp $e2
    ld a, a
    rst $18
    ld sp, $0e1f
    ld l, b
    ld c, a
    or d
    ldh [$df], a
    ld [hl], b
    rst $38

jr_07b_64f0:
    ccf
    jr nc, jr_07b_6512

    ld sp, $711f
    rra
    di
    ld a, l
    sbc a
    dec sp
    pop bc
    ld c, $fc

jr_07b_64fe:
    jr c, jr_07b_64f0

    ldh [$f6], a
    add b
    and $d0
    pop hl
    ldh [$c0], a
    db $ed
    dec b
    inc l
    ld h, h
    ld bc, $0117
    adc $10
    add [hl]

jr_07b_6512:
    inc bc
    ld a, a
    inc bc
    jr nc, jr_07b_657e

    ret nz

    inc bc
    inc bc
    inc bc
    rst $38
    inc c
    rrca
    rla
    jr jr_07b_6538

    jr jr_07b_652e

    inc c
    rst $38
    inc c
    rrca
    inc de
    inc e
    rla
    jr jr_07b_658c

    ret nz

    rst $38

jr_07b_652e:
    ldh a, [rNR41]
    ld hl, sp+$10
    db $fc
    inc c
    ld c, $f2
    ldh a, [$65]

jr_07b_6538:
    ld h, b
    inc a
    nop
    cp d
    and e
    jp $c0c3


    ret nz

    ldh a, [$30]
    sbc a
    cp $dc
    ld hl, sp-$10
    jr nc, jr_07b_64fe

    call nz, Call_07b_41ce
    ld b, b
    rst $38
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    jr nz, @+$37

    jr nz, jr_07b_65d1

    rst $38
    db $10
    cp l
    ld [$087f], sp
    rst $38
    inc e
    ld a, [hl+]
    adc $01
    add b
    xor e
    nop
    ld d, a
    cp b
    ld b, b
    pop de
    add b
    ld bc, $ffff
    inc bc
    db $fd
    rlca
    rst $38
    rlca
    db $fd
    rrca
    ld a, [$1eff]
    or $3e
    ld [$d4fe], a
    db $fc
    and h

jr_07b_657e:
    ld bc, $00fc
    nop
    nop
    dec b
    rrca
    rst $38
    ldh a, [$0b]
    rst $38
    add sp, -$20
    rst $38

jr_07b_658c:
    ldh [rIE], a
    ldh [$f9], a
    call nc, $13e1
    ld c, e
    ld c, e
    xor $ed
    ldh [$f3], a
    add hl, bc
    reti


    ei
    and a
    rst $28
    pop hl
    db $ec
    db $d3
    rrca
    add hl, bc
    rst $38
    ldh [$c2], a
    rst $30
    dec c
    rst $18
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    adc c
    ld a, [bc]
    ld b, b
    jp hl


    pop af
    pop hl
    inc c
    rst $38
    pop hl
    rla
    ld [c], a
    ldh [$f1], a
    ld c, d
    adc e
    ld a, [bc]
    ld a, [bc]
    rst $18
    ld [c], a
    ld c, $c1
    push hl
    ret nz

    db $ed
    ldh [$e7], a
    rrca
    ld a, c
    rrca
    pop af
    ld [c], a
    ldh [$ed], a
    ld c, d
    inc c
    ld c, $0e

jr_07b_65d1:
    ret nz

    ldh [$2b], a
    add hl, bc
    add hl, bc
    ldh [$f4], a
    ld a, [bc]
    ldh [$e0], a
    ld c, $e0
    ldh [$c0], a
    pop af
    nop
    add b
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    call z, $c41f
    rst $38
    cp h
    rrca
    dec bc
    call c, $1fb2
    jp Jump_000_0d0d


    nop
    nop
    reti


    rst $38
    and d
    nop
    push de
    ld b, b
    jp nz, $b4e0

    ld b, b
    jp $e4c0


    nop
    db $d3
    inc bc
    ld a, [bc]
    ld c, [hl]
    ldh [$fa], a
    ld l, l
    and b
    rst $38
    and b
    ret nz

    di
    add b
    rst $18
    ldh [$fb], a
    nop
    nop
    nop
    add l
    inc bc
    rst $38
    ldh a, [rP1]
    rst $38
    add sp, -$20
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    nop
    ld e, e
    ld bc, $ff02
    push hl
    inc b
    dec b
    push af
    db $e3
    ld b, $c0
    jp hl


    rst $28
    rlca
    ld [$0a09], sp
    sbc $e2
    dec bc
    inc c
    dec c
    cp e
    ld c, $0f
    call nc, Call_000_10e0
    ld de, $a012
    jp hl


    inc de
    rst $28
    inc de
    inc d
    dec d
    ld d, $bd
    pop hl
    rla
    jr jr_07b_6673

    rst $38
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$15

    cp $e0
    db $eb
    inc de
    ld hl, $2322
    inc h
    dec h
    ld h, $ff
    daa
    jr z, jr_07b_669a

    ld a, [hl+]
    dec hl

jr_07b_6673:
    inc l
    dec l
    ld l, $f8
    rst $28
    ldh [$e0], a
    db $ec
    db $fd
    ld [c], a
    cpl
    jr nc, jr_07b_66b1

    ld [hl-], a
    inc sp
    ld a, a
    inc [hl]
    dec [hl]
    ld [hl], $37
    inc de
    inc de
    jr c, jr_07b_66cb

    jp hl


    db $fd
    add hl, sp
    rst $18
    ld [c], a
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $38
    ld b, b
    ld b, c
    ld b, d

jr_07b_669a:
    ld b, e
    inc de
    ld b, h
    ld b, l
    ld b, [hl]
    cp $20
    jp hl


    ld b, a
    ld c, b
    jr nz, jr_07b_66b9

    inc de
    ld c, c
    ld c, d
    rst $38
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_07b_66b1:
    ld d, d
    rst $18
    inc de
    inc de
    ld d, e
    ld d, h
    ld d, l
    nop

jr_07b_66b9:
    jp hl


    ld d, [hl]
    ld d, a
    rst $38
    ld e, b
    ld e, c
    inc de
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    rst $38
    inc de
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_07b_66cb:
    ld h, e
    ld h, h
    ld h, l
    ei
    ld h, [hl]
    ld h, a
    ldh [$c9], a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    jr nz, @+$01

    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld a, a
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ret nz

    ret


    rst $38
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    rst $38
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    rrca
    adc e
    adc h
    adc l
    adc [hl]
    and b
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$e0], a
    rst $38
    ldh [rIE], a
    nop
    ret z

    rst $30
    and l
    nop
    db $d3
    ld [bc], a
    ld [bc], a
    adc a
    rst $30
    sub b
    sub c
    sub d
    nop
    rst $10
    ld [bc], a
    sub e
    sub h
    sub l
    rst $30
    sub [hl]
    sub a
    sbc b
    nop
    db $d3
    sbc c
    sbc d
    sbc e
    sbc h
    ccf
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    db $10
    pop bc
    nop
    adc $ff
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    rst $28
    xor e
    xor h
    xor l
    xor [hl]
    nop
    pop de
    xor a
    or b
    or c
    rst $38
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    db $fd
    cp d
    nop
    pop de
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    inc de
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    nop
    pop de
    add $ff
    rst $00
    ret z

    ret


    jp z, $cccb

    call $fece
    nop
    call nc, Call_000_3c13
    rst $08
    ret nc

    pop de
    jp nc, $f7d3

    call nc, $d6d5
    nop
    db $d3
    inc de
    inc de
    rst $10
    ret c

    ccf
    reti


    jp c, $dcdb

    db $dd
    inc de
    nop
    rst $18
    add b
    rst $18
    nop
    add b
    adc d
    nop
    nop
    nop
    sbc l
    ld h, a
    db $dd
    ld h, a
    or d
    ld [hl], d
    ld c, c
    ld [hl], e
    nop
    nop
    rra
    ld a, h
    adc e
    ld hl, $5b40
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rst $38
    ld h, e
    ld c, c
    rrca
    ld [bc], a
    ld [bc], a
    ldh [rP1], a
    rst $38
    ld h, e
    ld [hl], a
    ld bc, $7da0
    ld b, [hl]
    nop
    and b
    ld a, l
    ret nc

    nop
    ld [hl], a
    ld bc, $0046
    rst $38
    ld h, e
    ret nc

    nop
    ld [hl], a
    ld bc, $0046
    rst $18
    ld h, e
    and b
    ld a, l
    rra

jr_07b_67d2:
    inc bc
    ld b, [hl]
    nop
    rst $38

jr_07b_67d6:
    ld h, e
    rra
    inc bc
    ld e, a
    ld d, $46
    nop
    di
    nop
    rst $38
    cp $ec
    rst $38
    db $e4
    inc bc
    inc bc
    ld b, $05
    rst $28
    inc c
    dec bc
    ld a, h
    ld a, e
    ldh a, [$e5]
    ret nz

    ret nz

    jr nc, jr_07b_67d2

    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    pop de
    add sp, $07
    db $fc
    db $fc
    cp $e0
    pop bc
    db $e4
    ld a, h
    jp $f77e


    rst $38
    rra
    rst $30
    rst $18
    nop
    xor b
    or c
    db $e4
    jr c, jr_07b_67d6

    ld a, a
    pop bc
    rst $18
    rst $38
    add c
    rst $38
    ld [hl], c
    rst $38
    and c
    ld [$e33c], a
    cp h
    ldh a, [$eb]
    sub c
    db $e4
    ld bc, $0301
    ld [bc], a
    sub d
    pop hl
    inc e
    rst $38
    inc de
    jr @+$19

    db $ec
    db $d3
    ret nz

    cp a
    jp nz, Jump_000_3dff

    rst $28
    rla
    ld hl, sp+$09
    ld [hl], b
    cp b
    ld b, b
    ld a, a
    ldh [$80], a
    add b
    db $fc
    rlca
    cp $03
    cp $e1
    db $eb
    db $fd
    db $fd
    ld l, d
    ld [c], a
    ld bc, $e750
    add b
    rst $38
    ld b, b
    rst $30
    ld a, a
    ret nz

    rst $38
    ld a, h
    pop hl
    ei
    rrca
    ld hl, sp+$0e
    ei
    ld hl, sp+$0d
    db $fc
    db $e3
    ret nc

    nop
    and b
    nop
    db $10
    ld a, a
    ret nz

    add b
    ccf
    ld b, c
    nop
    and c
    nop
    db $fc
    pop hl
    cp e
    rst $38
    rrca
    rra
    db $e3
    rrca
    ldh a, [$f0]
    or $e2
    di
    rst $38
    ret nz

    di
    ld d, b
    sub d
    pop af
    sbc e
    pop af
    db $db
    db $db
    pop af
    cpl
    cp $e0
    dec l
    di
    cp c
    ldh [$80], a
    rst $38
    ei
    ldh [$3f], a
    cp $e4
    rst $38
    ret nz

    jr c, jr_07b_68bb

    add hl, sp
    ld a, a
    daa
    ld a, d
    ld b, a
    ld a, c
    ld b, a
    db $fd
    add e
    cp $e1
    rst $38
    rst $38
    add c
    add b
    add b
    inc c
    inc c
    db $10
    db $10
    rst $38
    jr nz, jr_07b_68cb

    nop
    nop
    rra
    rlca
    ld a, [hl]
    ld a, $fb
    cp $fe
    ldh [$c6], a
    ld bc, $f7ff
    ld a, a
    ld a, a

jr_07b_68bb:
    rst $38
    ld a, a
    ld a, e
    jr nz, @+$41

    jr nz, @+$41

    db $10
    rra
    rst $38
    db $10
    rra
    ld hl, sp-$01
    db $e4
    rst $20

jr_07b_68cb:
    and $e7
    cp a
    ld a, [c]
    di
    ldh a, [rNR33]
    ldh a, [rNR34]
    db $fc
    db $e4
    ld a, [de]
    rst $38
    ldh [$3d], a
    ldh [$3a], a
    ld b, e
    nop
    add e
    nop
    ld l, [hl]
    db $fc
    push hl
    rlca
    nop
    add a
    sub c
    ret nz

    cp $01
    cp $e7
    rst $38
    db $fc
    inc bc
    ccf
    ld [c], a
    ccf
    ld [c], a
    ld e, a
    ld [c], a
    rst $38
    ld e, e
    and $7f
    call nz, $c47f
    cp a
    call nz, $b68f
    call $c07f
    cp $e3
    ld l, b
    ld [c], a
    ld h, h
    ldh [rP1], a
    ld a, a
    inc bc
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, l
    db $fc
    and $2e
    ld d, b
    pop bc
    ccf
    nop
    rra
    or l
    ldh [rHDMA1], a
    ldh a, [$e6]
    inc a
    push bc
    rst $30
    ld a, a
    nop
    ccf
    adc e
    ret nz

    add e
    rst $38
    add a
    rst $38
    rst $38
    adc a
    rst $38
    sbc l
    rst $38
    cp c
    rst $38
    ldh a, [$8f]
    rst $28
    adc h
    cp $fe
    rst $38
    rst $38
    ldh [$bf], a
    sbc a
    rrca
    rst $28
    rlca
    nop
    nop
    add b
    rst $38
    ldh [$3b], a
    add hl, sp
    dec sp
    ld a, a
    inc sp
    inc [hl]
    inc [hl]
    ldh a, [$e0]
    ret nz

    add b
    ld d, $c3
    rst $38
    ld a, [c]
    di
    db $fc
    rst $38
    ld [hl], h
    ld [hl], a
    ld b, h
    ld b, a
    ei
    ld [bc], a
    inc bc
    cp $e3
    ldh [$3d], a
    db $fc
    ld a, $e3
    rst $38
    ccf
    ldh [$3a], a
    ret nz

    ld a, l
    ret nz

    ld a, d
    ret nz

    rst $30
    ld a, l
    cp $3e
    ld c, h
    pop hl
    rst $20
    nop
    jr jr_07b_697f

    ei
    rrca
    nop
    cp $e3
    db $fc
    inc bc

jr_07b_697f:
    db $fd
    inc bc
    ld sp, hl
    rst $38
    rlca
    ld sp, hl
    rlca
    ld [bc], a
    rst $38
    or $0f
    db $f4
    cp $fe
    ldh [$fe], a
    adc c
    ld a, a
    adc c
    ld l, a
    sbc c
    rst $38
    rst $38
    ld de, $13fd
    db $dd
    inc sp
    dec sp
    rst $20
    dec sp
    ld d, c
    rst $38
    ld l, c
    ret nz

    or c
    xor e
    and b
    xor e
    push af
    inc [hl]
    ldh [rSB], a
    sbc h
    and d
    rst $20
    ld a, [hl+]
    nop
    dec b
    sub h
    and d
    inc h
    pop hl
    ld a, [hl+]
    nop
    dec d
    ei
    nop
    adc d
    inc e
    ld [c], a
    dec b
    nop
    adc a
    nop
    ld d, a
    ld l, $10
    and $0a
    nop
    ld b, b
    ld h, $e6
    xor a
    nop
    add sp, -$14
    rst $20
    ld a, l
    ld d, a
    ld b, b
    xor d
    cp $00
    push af
    ld bc, $feff
    db $e3
    rst $28
    nop
    ld [$d400], a
    push af
    and b
    ld b, b
    inc bc
    inc bc
    rst $38
    ld [hl], c
    ld [hl], c
    inc c
    inc a
    ld [de], a
    sbc [hl]
    sub c
    ret nc

    rst $38
    ld b, e
    ld h, a
    ld [hl], $3c
    dec a
    inc a
    add [hl]
    add [hl]
    rst $30
    inc bc
    add c
    and b
    xor l
    ret nz

    ld l, b
    add b
    inc [hl]
    ret nz

    ld l, a
    sbc d
    ldh [$cd], a
    ldh a, [rNR52]
    and c
    ld a, a
    ccf
    ld a, [bc]
    and l
    ei
    nop
    nop
    ld hl, sp-$3f
    add h
    rlca
    inc b
    rlca
    ld [$0ffd], sp
    ld a, [hl+]
    pop bc
    db $10
    rra
    pop af
    rra
    ld hl, sp+$0f
    ld hl, sp+$7c
    and c
    xor l
    pop hl
    push de
    add b
    ld bc, $e0ff
    rra
    rra
    rst $38
    sub a
    nop
    ld c, [hl]
    nop
    and [hl]
    nop
    sub $80
    rst $38
    cp $fe
    and a
    ld a, c
    db $e4
    rra
    db $e3
    rra
    rst $38
    pop af
    cp $2f
    rra
    ld b, b
    ccf
    rrca
    ld [hl], b
    rst $38
    adc a
    ld [hl], b
    sbc e
    rst $20
    ld b, a
    cp $83
    cp $7e
    rst $20
    add c
    rst $20
    db $fc
    rra
    ld hl, sp+$7f
    ldh [$f2], a
    call Call_000_3b54
    and b
    ld d, h
    rst $20
    db $fd
    ld e, h
    ldh [rHDMA5], a
    ld hl, sp-$1c
    push de
    inc e
    ret nz

    sub e
    ld d, b
    nop
    ld l, h
    pop bc
    inc d
    jp Jump_07b_6e50


    rst $20
    ld l, [hl]
    add d
    add b
    rst $38
    xor b
    ld d, b
    ld b, b
    cp e
    ld bc, $0efe
    pop af
    or $ea
    db $eb
    and b
    ld b, b
    ld de, $50a0
    nop
    jr z, jr_07b_6a88

jr_07b_6a88:
    push bc
    inc b
    ld a, $e6
    ld a, [bc]
    add $ec
    sbc b
    push bc
    daa
    add l
    xor d
    nop
    ld sp, hl
    ld d, h
    db $dd
    add b
    rst $38
    or $7f
    ld h, a
    ld a, a
    ld b, b
    ld a, a
    db $fd
    ld b, b
    and e
    add b
    add c

jr_07b_6aa5:
    rst $38
    sub c
    cp $f6
    inc e
    rst $38
    inc e
    add $f8
    ld [c], a
    db $fd
    and b
    cp a
    sub b
    rst $38
    sbc a
    sbc b
    sub a
    jr c, jr_07b_6af8

    inc l
    dec sp
    ld c, h
    rst $38
    ld [hl], a
    add b
    nop
    or b
    ld b, b
    ld b, b
    cp a
    rlca
    rst $38
    rst $38
    dec c
    di
    dec e
    db $e3
    inc sp
    pop bc
    ld [hl], e
    ld a, a
    add c
    db $10
    rra
    jr nz, @+$37

    ret nz

    jp z, $c32c

    rrca
    ret nz

    ret nz

    cp [hl]
    cp [hl]
    or b
    ld h, h
    inc a
    pop bc
    jr nz, jr_07b_6aa5

    ld b, d
    add c
    ld a, [$c3c4]
    ld e, a
    add hl, de
    pop bc
    ld bc, $f04f
    db $fd
    cp $ff
    sbc [hl]
    ldh [$fa], a
    db $fc
    sbc [hl]
    ldh [$f7], a

jr_07b_6af8:
    ld hl, sp-$01
    sbc a
    ldh [$c3], a
    db $fc
    ld l, a
    db $fc
    ccf
    ldh a, [rIE]

jr_07b_6b03:
    ccf
    ld h, b
    rra
    jr nc, jr_07b_6b27

    jr nc, jr_07b_6b27

    or b
    ld c, a
    ld a, [hl-]
    ldh a, [$35]
    ldh [$d8], a
    push bc
    push hl
    pop bc
    xor b
    ld [hl], e
    ld h, b
    ld d, d
    push hl

jr_07b_6b19:
    pop bc
    xor b
    push hl
    call nz, $e640
    jr z, jr_07b_6b03

    ret


    ld [bc], a
    rst $38
    ldh [rIE], a
    dec b

jr_07b_6b27:
    rlca
    ld a, [bc]
    ld c, $03
    inc bc
    rlca
    inc bc
    push af
    dec c
    ld a, [de]
    and b
    ld bc, $80cd
    inc bc
    inc b
    ld b, $09
    rst $38
    rrca
    db $10
    ccf
    nop
    xor [hl]
    pop de
    inc d
    db $eb
    ei
    ld [$1cf7], sp
    ld h, c
    ld d, b
    xor a
    add b
    ld a, a
    ld d, d
    rst $38
    xor a
    add d
    ld a, a
    nop
    ldh [$08], a
    ldh a, [rSC]
    db $fd
    db $fc
    ld a, [bc]
    ld h, c
    ld c, $f1
    dec b
    ld a, [$df20]
    cp $10
    ld h, e
    inc c
    sub b
    cp d
    ld b, l
    call nc, $a82b
    ld h, a
    ld d, a
    ld d, h
    xor e
    adc l
    ret z

    dec bc
    ld h, b
    db $10
    ldh [$62], a
    ld h, e
    rst $38
    rlca
    inc b
    dec c
    ld [$101a], sp
    dec d
    db $10
    rst $38
    ld a, [hl+]
    jr nz, jr_07b_6b19

    db $eb
    ld [$b5d5], a
    ld l, d
    rst $38
    sbc d
    dec [hl]
    ld l, l
    ld a, [de]
    or [hl]
    dec c
    ld e, e
    ld b, $ff
    xor l
    inc bc
    rst $20
    add e
    ld a, a
    or $5a
    xor l
    rst $38
    xor l
    ld e, [hl]
    ld e, [hl]
    or e
    cp a
    ld d, c
    ld [hl], l
    and h
    rst $38
    xor a
    ld h, [hl]
    or l
    ld h, c
    ld l, d
    and b
    or l
    ld d, b
    ei
    ld e, d
    or b

jr_07b_6bae:
    db $fc
    ld [c], a
    ret nc

    ld a, [$e070]
    ldh [rIE], a
    cp [hl]
    ld e, $5d
    dec bc
    xor e
    dec c
    ld e, l
    dec bc
    rst $38
    cp e
    dec d
    ld d, a
    ld a, [de]
    cp e
    ld d, $07
    ld b, $ff
    ld a, [de]
    inc e
    dec a
    inc a
    db $ec
    di
    ld a, [hl+]
    jr nc, @+$01

    cp h
    jr nz, jr_07b_6bae

    ld h, b
    db $f4
    ld a, b
    ld a, $ff
    rst $38
    dec a
    inc bc
    ccf
    nop
    ccf
    ret nz

    inc bc
    inc a
    rst $30
    ld a, h
    inc bc
    ld a, a
    ccf
    add b
    ld h, b
    ldh [$c0], a
    ret nz

    rst $38
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [rNR10]
    ld [hl], b
    ldh a, [rIE]
    add sp, $18
    add sp, $18
    ld a, [de]
    rrca
    ccf
    scf
    rst $38
    dec b
    inc bc
    dec de
    rla
    rra
    rrca
    dec l
    dec de
    rst $38
    ld e, d
    ld [hl], a
    ccf
    ccf
    rst $18
    ld h, b
    ld a, a
    add b
    rst $38
    cp a
    ld b, b
    rst $18
    and b
    cp $e1
    call z, $fff3
    ld [$d7f5], a
    ld hl, sp+$06
    rst $38
    ld e, $ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rlca
    rst $38
    rra
    rst $38
    db $fd
    ld a, a
    db $fc
    ldh [rLCDC], a
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    rst $38
    add h
    ei
    ld a, [bc]
    push af
    inc b
    ei
    adc d
    push af
    ld a, l
    ld b, b
    ld d, c
    and b
    ld d, b
    xor a
    and b
    ld e, a
    inc b
    ldh a, [$e0]
    rst $38
    ld e, b
    and a
    xor b
    ld d, a
    ld d, b
    cp a
    ld [$fff0], sp
    db $10
    add sp, $05
    ld hl, sp+$2b
    call nc, $e31c
    rst $28
    nop
    rst $38
    ld [$10f7], sp
    db $e4
    ret nz

    nop
    ldh a, [rVBK]
    ld b, b
    cp b
    adc d
    ld [hl], h
    ld h, l
    ld h, c
    adc b
    xor c
    ld bc, $e0ff
    rst $38
    dec [hl]
    jr nz, @+$6c

    ld b, b
    ld [hl], l
    ld b, b
    ld [$e380], a
    push de
    add b
    db $fc
    ldh [rPCM34], a
    ld h, b
    ld h, e
    add e
    cp d
    nop
    ld a, l
    rst $38
    ld [$08be], sp
    ld a, l
    ld [$08fe], sp
    push af
    rst $18
    ldh [$aa], a
    ld [bc], a
    ld d, a
    inc bc
    add sp, -$20
    inc bc
    xor a
    rst $38
    inc c
    ld a, h
    ld [hl], b
    or b
    ret nz

    ld [hl], a
    ld [bc], a
    xor e
    ei
    ld [bc], a
    ld d, a
    db $fc
    db $e3
    add e
    rst $10
    ld b, c
    ld l, e
    ld hl, $57ff
    ld a, [de]
    ei
    ld d, $e7
    dec sp
    and $3e
    rst $38
    and $3e
    db $e4
    inc a
    db $fc
    db $fc
    nop
    nop
    rst $38
    ld hl, sp+$47
    or h
    ret nz

    sbc b
    ldh [$f8], a
    rst $38
    ld sp, hl
    rlca
    ld [hl], b
    ld h, b
    sub h
    ld hl, $c03f
    pop bc
    ld a, $fe
    cp [hl]
    ld d, c
    add b
    adc a
    ldh a, [$7e]
    ld a, a
    ld bc, $60e6
    add sp, -$03
    jr jr_07b_6ce6

    pop hl
    ret nc

    jr nc, @-$2e

    jr nc, jr_07b_6cf6

jr_07b_6ce6:
    ldh a, [$f9]
    ldh [$82], a
    ret nz

    ld hl, sp-$78
    ld [$0c08], sp
    inc c
    ld e, $ff
    db $10
    db $10
    db $10

jr_07b_6cf6:
    ld de, $3838
    ld [hl], c
    ld [hl], b
    rst $38
    dec sp
    inc a
    cp [hl]

Call_07b_6cff:
    db $fd
    ld a, l
    ei
    ccf
    ld a, a
    rst $38
    ld l, e
    ld [hl], a
    rst $10
    db $ed
    ld a, a
    ei
    cp a
    ld l, a
    rst $38
    ld a, e
    rst $18
    or $ff
    res 7, a
    and l
    ld e, e
    ld a, a
    ld a, [hl]
    ld sp, hl
    cp l
    rst $38
    ld e, e
    rst $38
    db $fd
    inc c
    ld h, c
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    scf
    rst $38
    rla
    rst $38
    ld c, a
    rst $38
    rst $38
    ld c, e
    cp a
    sub a
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    rst $38
    ld c, a
    cp a
    sbc a
    ld a, a
    add b
    rst $38
    jp nc, $efff

    ld [c], a
    rst $38
    rst $00
    rst $38

jr_07b_6d41:
    xor $ff
    rst $30
    rst $38

jr_07b_6d45:
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    jr @+$01

jr_07b_6d4c:
    jr nc, jr_07b_6d4c

    cp $e0
    ld a, e
    db $fc
    cp h
    ei
    ld a, [hl]
    db $fd
    ld_long a, $fff7
    ld a, h
    rst $38
    xor $a0
    rst $38
    ld b, h
    cp a
    inc c
    rst $38
    rst $38
    ld c, [hl]
    rst $38
    call c, Call_07b_6cff
    rst $38
    rst $18
    rst $38
    cp $08
    rst $30
    inc e
    db $e3
    jr nc, jr_07b_6d41

    add c
    rst $38
    ld a, [hl]
    ld b, b
    rst $38
    db $e4
    ei
    ret z

    rst $30
    ld h, c
    rst $28
    rst $38
    nop
    add b
    ld b, b
    cp $e0
    jr nc, jr_07b_6d45

    ld c, b
    ld a, a
    or b
    inc b
    ld hl, sp-$5a
    ret c

    sub b
    xor $dc
    pop bc
    db $fc
    push bc
    ld b, b
    db $fd
    ld [c], a
    ld [bc], a
    inc bc
    ld bc, $7f01
    rrca
    rst $38
    ei
    inc [hl]
    call nc, $a7eb
    rst $18
    sbc b
    ld a, a
    rst $38
    ld [hl], l
    ld hl, sp-$3f
    pop af
    ld b, [hl]

jr_07b_6daa:
    rst $20
    ld a, l
    db $10
    rst $38
    rst $38
    ldh a, [$5f]
    or b
    sbc a
    ldh a, [$7f]
    pop af
    ld a, a
    ld a, $ff
    and $f8
    ld b, b
    add b
    ret nz

    ld a, e
    ld b, c
    ld hl, sp-$06
    ldh [$f8], a
    ldh [$30], a
    ld [hl+], a
    dec [hl]
    ld hl, $113b
    dec [hl]
    rst $38
    ld de, $103a
    ld [hl], l
    db $10
    ld l, d
    jr nz, jr_07b_6daa

    jp $ab40


    ld l, d
    ld b, d
    db $dd
    ld [c], a
    ei
    db $e4
    ld [hl], b
    inc b
    inc b
    inc b
    rst $38
    ld b, $0e
    rrca
    dec c
    rrca
    rrca
    rra
    rra
    rst $38
    ccf
    rrca
    rra
    cpl
    ccf
    scf
    ccf
    ld l, a
    xor a
    ld a, a
    ccf
    ld a, a
    ccf
    ld c, $c0
    ld l, [hl]
    ld hl, $df40
    sbc $14
    ldh [$fd], a
    cp $da
    db $fd
    ld a, [$dde1]
    or a
    db $fd
    cp a
    rrca
    ld b, b
    ld l, e
    rst $38
    ld d, c
    rst $28
    sub [hl]
    db $eb
    ld a, a
    xor a
    ld e, e
    ld a, a
    db $db
    db $db
    ld a, a
    rst $28
    rst $28
    pop hl
    cp $f2
    ret nz

    ld d, a
    rst $38
    dec hl
    rst $38
    rst $18

jr_07b_6e26:
    cp a
    ccf
    xor [hl]
    pop af
    jr nz, @+$59

    rst $38
    cpl
    call nc, Call_07b_6fa0
    ld [bc], a
    ldh [$7f], a
    ld a, [hl]
    db $e3
    jr nz, jr_07b_6e26

    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    reti


    ld hl, $f78d
    push de
    ld hl, $fbff
    cp b
    and b
    sla c
    ret


    ld [c], a
    rst $38
    db $dd
    db $fc
    and $e2

Jump_07b_6e50:
    cp [hl]
    rst $38
    db $ed
    db $e4
    ld [c], a
    rst $38
    rst $38
    ld e, a
    ld d, e
    rst $38
    reti


    rst $38
    ld sp, hl
    ret z

    ret nz

    rst $28
    xor c

jr_07b_6e61:
    jr nz, jr_07b_6e61

    and l
    ld hl, $fe81
    ret nz

    rst $38
    ret nz

    rst $38
    push de
    rst $08
    ld a, [$f7b9]
    cp e
    jp nz, $b3e2

    and c
    sbc b
    ld h, b
    rst $38
    add h
    ld hl, sp-$3c
    cp b
    jp c, $fdf4

    xor $ff
    ld sp, hl
    cp $e2
    call nz, $c0e0
    ld b, b
    ld h, b
    rst $38
    ld b, b
    ld h, b
    jr nz, @+$32

    jr nz, jr_07b_6ec8

    jr @+$20

    db $fc
    ld a, [bc]
    push bc
    and l
    and b
    rlca
    ld b, $0f
    jr jr_07b_6ed4

    ld hl, sp-$01
    ldh [rTAC], a
    ld c, $0e
    jr jr_07b_6ed9

    ld [hl], b
    ld l, e
    rst $28
    pop bc
    rst $38
    rst $38
    ld a, h
    ld l, [hl]
    ld [hl+], a
    ld d, l
    ld bc, $7fab
    ld bc, $1f5f
    pop af
    rst $38
    ld hl, $07c0
    ld h, h
    cp $ee
    call z, Call_000_1f0e
    dec d
    ccf
    ccf
    ccf
    cpl
    xor e
    ccf
    ld d, a
    add e

jr_07b_6ec8:
    nop
    xor a
    ld l, b
    ldh [$f7], a
    db $76
    ld [c], a
    rst $38
    or $04
    and b
    db $fd

jr_07b_6ed4:
    rst $38
    ld a, [hl]
    pop hl
    ei
    rst $38

jr_07b_6ed9:
    ld [hl], l
    rst $38
    rst $38
    db $ed
    ei
    ld a, [$d7f7]
    db $ec
    cp $ff
    rst $18
    db $db
    db $fd
    ld h, [hl]
    cp e
    ld a, [$c01a]
    ld d, l
    xor a
    rst $38
    cp b
    ld c, a
    ld h, a
    jp c, $b7da

    dec a
    rst $30
    push af
    reti


    db $d3
    ret nz

    ld a, a
    ld [de], a
    ldh [$f7], a
    cp a
    ei
    rst $18
    rst $20
    cp $6f
    ld e, a
    ld a, [hl+]
    ldh [$60], a
    daa
    rra
    rst $38
    ccf
    rst $30
    ldh [$7f], a
    ret nz

    ld d, b
    daa
    add b
    rst $38
    ld hl, sp+$7f
    rst $28
    cp $07
    ld bc, $3fff
    ld h, c
    rlca

jr_07b_6f1f:
    db $fc
    rrca
    rst $38
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh a, [$7f]
    ldh [$f0], a
    db $e3
    rst $08
    inc a
    add $80
    rst $30
    jr nz, jr_07b_6f1f

    jr nz, jr_07b_6f40

    cp $30
    dec a
    ldh a, [$e8]
    inc h
    nop
    rst $38
    ld hl, sp-$71
    ld l, $a3

jr_07b_6f40:
    push bc
    ld b, b
    sbc d
    ccf
    inc bc
    ret nz

    or a
    ld b, b
    jr nz, @+$41

    nop
    daa
    ld h, [hl]
    inc hl
    db $ec
    rst $38
    db $d3
    ld hl, sp-$39
    ld a, [c]
    adc l
    or $89
    db $fc
    rst $30
    add e
    ld sp, hl
    ld b, $e4
    ld hl, $c141
    ld b, d
    jp nz, $84ff

    add h
    add b
    add b
    add c
    add c
    rst $00
    ld b, a
    ld e, a
    rst $08
    ld c, a
    rst $38
    ld a, a
    ret nz

    ld [$fee4], sp
    add a
    ret nz

    push bc
    rst $20
    rst $38
    ldh [$e0], a
    cp h
    ldh [rPCM12], a
    inc hl
    ld [hl], d
    ldh [rIE], a
    ld a, [c]
    ld a, l
    di
    ld [hl], c
    ld [c], a
    ccf
    ldh [$3e], a
    ldh [$3d], a
    db $fc
    pop hl
    ld a, a
    call c, $ff7e
    pop hl
    ld e, $f3
    cp [hl]
    ld e, d
    ret nz

    di
    inc bc
    ld b, a
    ld d, a
    nop
    ld d, e
    nop
    rst $38

Call_07b_6fa0:
    ret nz

    ccf
    ld hl, sp-$01
    rrca
    ld hl, sp+$0f
    ld sp, hl
    adc a
    rst $38
    ld a, [hl]
    rst $38
    rst $20
    ld [bc], a
    rst $38
    inc b
    ld l, a
    ret nz

    ld a, [hl]
    ld [hl+], a
    ldh [$1f], a
    ld hl, sp+$3f
    rlca
    sbc h
    add a
    sbc h
    add a
    sbc a
    ldh [rTMA], a
    ld h, a
    inc h
    cp $2c
    ld [hl+], a
    inc bc
    rst $38
    rrca
    rst $38
    sbc a
    pop af
    or c
    rst $38
    ldh [$a0], a
    call c, $ffdc
    ld a, a
    db $fd
    db $fd
    rst $28
    ldh a, [$f0]
    ldh [$c0], a
    ld a, [hl]
    ld h, c
    ldh a, [$90]
    ldh a, [rIE]
    sub b
    rst $20
    and $e7
    and $ff

jr_07b_6fe6:
    db $fd
    jr c, jr_07b_6fe6

    jr c, jr_07b_705d

    push bc
    ld a, [c]
    ld [hl], e
    ld a, [$1efb]
    rra
    di
    inc d
    rla
    ret c

    ld bc, $01d4
    ret nz

    ld [hl], l
    ret nz

    ld l, d
    db $fc
    db $fc
    db $e3
    rst $18
    ld h, b
    db $f4
    add b
    ld [$f807], a
    ld [$07d7], sp
    rrca
    nop
    cp $e1
    rra
    cp $e2
    db $fc
    rlca
    cp a
    ld a, [hl]
    add a
    add c
    ld a, a
    ld sp, hl
    rlca
    cp $e1
    pop af
    rst $38
    rrca
    ld a, [c]
    rrca
    adc c
    rst $18
    adc c
    rst $18
    add hl, bc
    ccf
    rst $38
    add hl, bc
    rst $38
    rrca
    cp $13
    cp $e2
    ld b, b
    ld b, $fe
    ld d, b
    inc b
    jp nz, $c7de

    rst $00
    ret


    rst $08
    ld h, c
    rst $38
    ld h, e
    ld sp, $1f33
    ld e, $3e
    ld a, $ff
    rst $28
    rst $38
    ld h, b
    ld h, b
    nop
    ld hl, $5420
    nop
    xor d
    rst $38
    add b
    ld [hl], l
    ld b, b
    jp c, $ed60

    ldh a, [$60]
    ld e, a
    ld h, b
    inc e
    inc e
    inc bc
    inc bc

jr_07b_705d:
    ld e, [hl]
    ld b, l
    ld b, b
    ld d, b
    ld [bc], a
    rlca
    call nz, $04c7
    ld c, [hl]
    ld [bc], a
    cp $e1
    sub h
    ret


    ld d, $e1
    ld l, l
    ldh [$ef], a
    add b
    call nc, $e880
    and e
    ldh [$e8], a
    nop
    db $f4
    rst $00
    ldh [rIE], a
    jr jr_07b_70e9

    db $e3
    adc [hl]
    ld b, b
    db $fc
    db $e4
    ld a, [c]
    rrca
    rst $38
    di
    ld c, $f3
    ld c, $f5
    ld c, $e5
    ld e, $ff
    rst $20
    inc e
    db $eb
    inc e
    srl h
    inc de
    cp $fb
    daa
    db $fc
    cp $e3
    ld b, a
    db $fc

jr_07b_709f:
    ld c, a
    ld hl, sp+$4f
    pop bc
    ld hl, sp+$41
    ld a, [bc]
    ccf
    ld [bc], a
    ld [$5641], a
    ld h, c
    add b
    inc hl
    rst $38
    add e
    cp [hl]
    rst $18
    ld [c], a
    pop bc
    ld a, [hl]
    ld c, [hl]
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld hl, $fee6
    ret nc

    nop
    ret nc

    rst $18
    db $10
    rra
    jr jr_07b_70db

    jr jr_07b_7145

    rra
    inc a
    cpl
    dec hl
    scf
    and b
    nop
    ld b, [hl]
    nop
    db $db
    cp a
    inc bc
    ret nc

    inc d
    or b
    or b
    or a
    and c
    cp $03
    cpl

jr_07b_70db:
    ld d, [hl]
    inc bc
    xor e
    ld bc, $0359
    ret nc

    ld e, b
    ldh [$fc], a
    pop hl
    rst $38
    ldh a, [$f0]

jr_07b_70e9:
    rst $38
    adc a
    ld a, b
    ld b, b
    inc a
    jr nz, jr_07b_709f

    rst $00
    jr c, jr_07b_716b

    rlca
    add sp, $21
    ld a, a
    sbc h
    and d
    cp a
    rst $38
    rlca
    rst $08
    jr c, @+$19

    ld hl, sp-$4a
    ld a, c
    and c
    rst $38
    ld a, a
    and c
    ld a, a
    daa
    ld a, [$fc1f]
    adc a
    rst $30
    ldh a, [$8f]
    ld hl, sp-$02
    pop hl
    rra
    ld hl, sp-$22
    ld hl, sp-$41
    dec [hl]
    ldh a, [rNR30]
    ldh a, [rNR41]
    ldh [$cf], a
    inc b
    ret nc

    or h
    rst $08
    rlca
    ld h, b
    ld h, c
    ld b, $40

jr_07b_7127:
    ld h, $55
    ld l, d
    ld b, b
    ld hl, $7f92
    dec a
    ld l, c
    ld e, $b4
    rrca
    ld e, d
    rlca
    ld b, b
    jr nz, jr_07b_7127

    jp $f23f


    ld e, [hl]
    ld b, b
    ld h, $2f
    and $bc
    rst $20
    ld l, h
    ld l, e
    and e

jr_07b_7145:
    ld b, b
    add hl, hl
    ld a, [hl]
    add c
    ldh [$e0], a
    cp b
    rst $38
    jr c, jr_07b_71ad

    ld c, $ad
    dec bc
    ld e, e
    dec c
    xor a
    rst $38
    add hl, bc
    ld a, [de]
    db $10
    dec c
    ld [$0406], sp
    rlca
    rst $38
    rlca
    dec c
    dec bc
    adc d
    adc a
    rst $28
    ld l, a
    inc a
    rst $38
    rra
    ld [hl], c
    nop

jr_07b_716b:
    ld [hl-], a
    ld bc, $03b0
    db $f4
    rst $38
    di
    inc a
    rst $08
    ld a, a
    add e
    rst $28
    pop af
    di
    rst $38
    ld bc, $f87f
    rlca
    rst $38
    ld a, a
    add b
    ld a, a
    rst $18
    add e
    call c, $e03c
    ld h, b
    dec e
    ld h, c
    ldh [rNR41], a
    db $e3
    ldh [rNR41], a
    inc l
    and l
    ld c, [hl]
    ld bc, $21b0
    ld d, l
    ld b, b
    xor d
    sbc a
    add b
    push de
    add c
    db $eb
    add c
    inc d
    add c
    or b
    ld hl, $ef7d
    ld a, h
    jp $8183


    xor $c2
    ld bc, $d500

jr_07b_71ad:
    db $fd
    ret nz

    or b
    inc hl
    push de
    add b
    xor d
    add b
    ld d, l
    ld b, b
    ld l, a
    ld l, d
    ld b, b
    ld [hl], a
    nop
    or b
    ld h, $03
    ld d, a

jr_07b_71c0:
    db $e4
    ld h, b
    rst $30
    ld e, e
    dec d
    rst $30
    xor [hl]
    jr nz, jr_07b_71c0

    ld a, [hl+]
    db $ed
    dec [hl]
    rst $38
    db $f4
    inc l
    add sp, -$28
    add hl, sp
    add hl, sp
    rlca
    rlca
    ei
    add h
    rlca
    ld h, c
    add b
    rlca
    cp $8f
    ld a, c
    ld [hl], a
    rst $38
    pop de
    ldh [$e9], a
    ldh [$d1], a
    ldh [$f1], a
    nop
    rst $38
    cp l
    ret nz

    rst $38
    ld bc, $e11f
    di
    rst $38
    rrca
    xor $1e
    cp $02
    cp b
    ld c, h
    inc l
    ld [hl+], a
    ld d, b
    ld b, c
    cp $e0
    or $50
    ld b, l
    dec [hl]
    push de
    ld d, b
    ld b, b
    sbc c
    ld a, a
    ld [hl], a
    cp d
    rst $28
    ld [c], a
    ld a, [c]
    ld b, h
    db $e4
    ld [hl+], a
    jp $0103


    dec c
    rst $38
    inc bc
    ld c, $06
    dec c
    ld [$080e], sp
    ld d, l
    ld h, c
    ret nz

    ld a, b
    ldh [$0c], a
    ld [hl+], a
    db $fc
    db $e4
    ld h, b
    ld h, b
    ld d, l
    ld bc, $e5f0
    db $ed
    xor e
    ld a, [c]
    and h
    add d
    add e
    rst $38
    ldh [$82], a
    add l
    add [hl]
    rst $38
    add h
    add a
    ld h, c
    sbc [hl]
    ld d, b
    add c
    db $e3
    nop
    ld [hl], a
    db $d3
    nop
    and e
    jr z, jr_07b_7264

    and [hl]
    ld bc, $a2c7
    add b
    rst $28
    rra
    ldh [$e3], a
    rra
    cp e
    and e
    rrca
    ldh a, [$f3]
    call Call_000_220f
    ld b, e
    ld b, b

jr_07b_7258:
    ret nz

    cp $e1
    jr nc, @+$63

    ret z

    add sp, -$21
    ret nc

    ldh a, [$50]
    ld [hl], b

jr_07b_7264:
    ld [hl], b
    ldh [rLCDC], a
    jr c, jr_07b_7299

    rst $38
    inc d
    jr jr_07b_727c

    rrca
    dec c
    ld [$081e], sp
    rst $38
    dec e
    db $10
    ld e, $10
    dec a
    db $10
    ccf
    ccf
    rst $28

jr_07b_727c:
    ld h, e
    inc a
    ld hl, sp-$40
    sbc b
    db $e4
    ld bc, $ffff
    db $db
    adc h
    ldh a, [$e0]
    ld c, d
    pop bc
    ld bc, $a2bb
    add a
    add a
    inc a
    jr jr_07b_7258

    jp z, $c723

    ld hl, sp+$3c
    ccf

jr_07b_7299:
    ldh [$85], a
    cp b
    ld h, d
    ccf
    ld bc, $817e
    ldh a, [rIE]
    rrca
    adc b
    ldh [$da], a
    jp hl


    nop
    xor d
    rlca
    add hl, hl
    ld b, h
    ld sp, hl
    and $00
    nop
    nop
    dec b
    ld [$f0ff], sp
    dec bc
    rst $38
    add sp, -$20
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    rst $38
    rst $38
    ld a, [$e3b2]
    dec c
    pop hl
    db $fc
    dec c
    rrca
    dec bc
    dec bc
    ld c, $6c
    rst $38
    ldh [$e0], a
    ld a, [$0f0f]
    ldh [$f5], a
    rrca
    rrca
    ret nz

    ldh [$2c], a
    ei
    ldh [$c0], a
    xor $0a
    ld a, [bc]
    and c
    db $e4
    rrca
    pop bc

Call_07b_72e4:
    pop hl
    ret nz

    pop hl
    inc c
    xor $e3
    ldh [$e7], a
    ld a, [bc]
    ld a, [bc]
    jp $fde0


    and $ef
    pop hl
    ldh [$ed], a
    nop
    sbc $e9
    ret nc

    pop hl
    ldh [$f8], a
    pop de
    ld [c], a
    ret nz

    rst $28
    sbc l
    and $e0
    xor $80
    rst $18
    ld h, b
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    db $db
    inc c
    inc c
    ld b, b
    jp Jump_000_3f02


    call nc, $000c
    pop bc
    ld a, a
    call nz, $f2c1
    ld b, b
    pop bc
    ldh [$f8], a
    ld b, b
    pop bc
    nop
    ret nz

    ld sp, hl
    nop
    jp nz, $a1e0

    cp a
    xor l
    ld [de], a
    call nz, $e4c0
    sbc a
    and c
    nop
    db $db
    ret nz

    rra
    pop bc
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    and b
    rst $18
    ldh [rIE], a
    dec bc
    dec bc
    nop
    nop
    nop
    dec b
    ld b, b
    rst $38
    ldh a, [rP1]
    rst $38
    add sp, -$20
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    call nc, $f3e5
    sub b
    sub c
    ld [$b6f1], a
    and $92
    sub e
    sub h
    sub l
    cp $df
    ld hl, sp-$6a
    sub a
    sbc b
    sbc c
    sbc d
    nop
    sbc e
    ld [hl], a
    sbc h
    sbc l
    sbc [hl]
    and h
    db $ed
    ld a, [de]
    dec de
    inc e
    ld [hl], c
    ldh [rIE], a
    sbc a
    and b
    and c
    and d
    and e
    nop
    and h
    and l
    db $eb
    and [hl]
    and a
    ld h, h
    ldh [rNR52], a
    ld h, b
    jp hl


    daa
    jr z, jr_07b_73b5

    rst $38
    ld a, [hl+]
    dec hl
    inc l
    xor b
    xor c
    xor d
    xor e
    xor h
    rst $38
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d

jr_07b_739c:
    scf
    jr c, jr_07b_739c

    add hl, sp
    ld b, b
    jp hl


    ld a, [hl-]

jr_07b_73a3:
    dec sp
    inc a
    dec a
    ld a, $3f
    rst $38
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp a
    cp e
    cp h
    cp l

jr_07b_73b5:
    ld c, e
    ld c, h
    ld c, l
    jr nz, jr_07b_73a3

    ld c, [hl]
    rst $30
    ld c, a
    ld d, b
    ld d, c
    db $fc
    ret nz

    cp [hl]
    cp a
    ret nz

    pop bc
    rst $38
    jp nz, $c4c3

    push bc
    add $40
    ld b, b
    ld e, d
    db $fd
    ld e, e
    nop
    jp hl


    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld b, b
    rst $38
    ld h, c
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cebf
    ld b, b
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ldh [$c9], a
    ld l, [hl]
    rst $38
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    rst $08
    ret nc

    pop de
    rst $38
    jp nc, $d4d3

    push de
    sub $d7
    ld a, d
    ld a, e
    rst $30
    ld a, h
    ld a, l
    ld a, [hl]
    ret nz

    ret


    ld a, a
    add b
    add c
    add d
    rst $38
    add e
    add h
    add l
    ret c

    reti


    jp c, $dcdb

    rst $38
    db $dd
    sbc $df
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    add b
    and b
    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    call nc, Call_000_01e5
    rst $38
    ld [bc], a
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    cp $f9
    or e
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    rst $30
    ld c, $0f
    db $10
    reti


    or e
    ld de, $1312
    inc d
    cp a
    nop
    dec d
    ld d, $17
    jr jr_07b_7466

    nop
    jp nc, $ff00

    dec e
    ld e, $1f
    jr nz, jr_07b_7456

jr_07b_7456:
    ld hl, $2322
    ei
    inc h
    dec h
    nop
    jp nc, Jump_000_2e2d

    cpl
    jr nc, @+$33

    cp a
    nop
    ld [hl-], a

jr_07b_7466:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    jp nc, $ff40

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ei
    ld c, c
    ld c, d
    nop
    db $d3
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    rst $20
    ld d, a
    ld e, b
    ld e, c
    pop af
    ret nz

    nop
    jp nc, Jump_07b_6362

    ld h, h
    rst $18
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    nop
    call nc, Call_07b_7574
    rst $08
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    or h
    ret nz

    nop
    push de
    add [hl]
    add a
    rlca
    adc b
    adc c
    adc d
    sub h
    ret nz

    nop
    rst $18
    add b
    rst $18
    add b
    adc d
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_07b_7574:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_07b_7675:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_07b_7cc1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_07b_7cf8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
