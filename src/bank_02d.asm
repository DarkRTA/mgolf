; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

Call_02d_4000:
    sbc l
    ld [hl], e
    ld b, h
    ld [hl], h
    inc l
    ld b, b
    inc [hl]
    ld b, b
    or [hl]
    ld c, e
    add [hl]
    ld d, c
    ld h, $56
    db $76
    ld d, [hl]
    pop bc
    ld d, [hl]
    ld [de], a
    ld d, a
    ld [hl], h
    ld b, b
    db $fd
    ld e, c
    dec b
    ld e, d
    db $eb
    ld h, h
    ld e, h
    ld l, e
    or [hl]
    ld l, a
    ld b, $70
    ld d, l
    ld [hl], b
    and [hl]
    ld [hl], b
    ld b, l
    ld e, d
    pop bc
    ld d, [hl]
    ld d, l
    ld [hl], b
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_02d_4057

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    inc sp
    ld bc, $023f
    ld [$4403], a
    ld [bc], a
    rst $38
    ld h, e
    ldh a, [$03]
    ld [$4403], a
    ld [bc], a
    ld b, b
    ld [hl], c
    ret nz

jr_02d_4057:
    ld a, [hl]
    call nc, Call_02d_4400
    ld [bc], a
    rst $38
    ld a, a
    ld [$4403], a
    ld [bc], a
    ld b, b
    dec d
    cp a
    nop
    add [hl]
    ccf
    inc h
    ld l, $40
    dec d
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_02d_4073:
    dec h
    push de

jr_02d_4075:
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, jr_02d_4073

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    cp $42
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    cp h
    ld a, a
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_02d_4075

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra

Call_02d_40c0:
    rst $38
    or a
    ld a, a
    rra

Jump_02d_40c4:
    ld a, a
    rst $38
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    rst $38
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $ff07
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    rst $20
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [rNR41], a
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02

Jump_02d_412d:
    ld hl, sp-$08
    ldh [$0b], a
    db $f4
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$c0e3], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    rst $38
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    ld a, a
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [rIE], a
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    rst $38
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    ld a, [hl]
    call nc, Call_02d_48c2
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    rst $38
    ld [bc], a
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b

Jump_02d_4183:
    ld a, a
    nop
    jr nz, jr_02d_4187

jr_02d_4187:
    db $10
    ld [$0400], sp
    or d
    ret nz

    ret nz

    and d
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $e33c


    jp $fd3c


    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    rst $38
    call c, $f11e
    inc a
    db $e3
    ld a, h
    jp Jump_02d_7f7c


    jp $9ce3


    jp $18bc


    rst $20
    ld [c], a
    pop hl
    rst $38
    ld a, [de]
    push hl
    ld [de], a
    rst $28
    ld e, a
    cp b
    ld a, a
    ldh [rIE], a
    di
    adc h
    inc de
    rst $28
    rra
    ld hl, sp-$04
    ld h, e
    cp a
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    call nz, $98e1
    rst $38
    rst $20
    db $fc
    ld b, e
    call c, $f863
    daa
    ld l, b
    rst $38
    or a
    ld l, h
    sub e
    db $fc
    inc de
    add sp, $17
    ld hl, sp-$01
    rrca
    sbc $25
    inc a
    rst $00
    ld a, $c3
    ccf
    rst $38
    jp nz, $c13e

    jp $c33d


    dec a
    cp e
    rst $30
    rst $10
    rst $38
    nop
    and b
    jp hl


    jp $c3bc


    cp h
    ret


    ld a, h
    jp nz, $bee0

    pop hl
    ld b, e
    db $f4
    ldh [$a0], a
    pop hl
    nop
    rst $38
    cp a
    db $dd
    db $eb
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    rst $38
    rrca
    ldh a, [rNR32]
    db $e3
    inc e
    di
    inc e
    db $e3
    rst $38
    inc c
    di
    ccf
    ret nc

    dec de
    db $f4
    ld d, a
    rst $38
    ld e, a
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    ld [hl], b
    ldh [$fc], a
    ld [hl], b
    ld [c], a
    rst $38
    ei
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    or a
    ld d, a
    rst $38
    cp a
    ld h, a
    and b
    di
    adc h
    ld hl, sp-$1f
    ld a, h
    db $fd
    db $e3
    ld [hl], b
    rst $20
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $38
    rst $30
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    rst $38
    push af
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    di
    ccf
    jp $e06e


    ld [hl], b
    ld [c], a
    db $ed
    rst $38
    db $d3
    inc a
    dec sp
    ld a, [hl]
    add c
    ld [hl], b
    jp hl


    db $e3
    sbc h
    cp h
    inc d
    ldh [rBCPD], a
    ldh [$eb], a
    jp $1063


    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    db $d3
    ld sp, hl
    rst $28
    ld c, d
    pop hl
    db $e4
    pop bc
    cp e
    db $f4
    ld e, e
    db $f4
    xor h
    rst $38
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    di
    cp e
    rst $38
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    cp d
    cp a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $58
    and b
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    ld l, a
    adc [hl]
    ldh [$af], a
    ld a, a
    or l
    rst $08
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld b, [hl]
    and b
    ret nc

    jp $e718


    cp $f8
    push hl
    ld d, a
    rst $38
    xor h
    rst $38
    ld [hl], h
    ei
    cp b
    ld l, a
    rst $20
    ld e, b
    rst $20
    db $fc
    dec b
    ldh [$98], a
    rst $20
    ld b, b
    rst $20
    rst $18
    cp d
    rst $38
    db $ec
    di
    sbc b
    ldh [$e0], a
    cp d
    rst $38
    jp hl


    ld l, h
    ld hl, sp-$20
    ret z

    push hl
    rst $28
    ld h, $e0
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    ld d, $ff
    dec sp
    rst $38
    dec d
    rst $38
    rst $38
    ld a, [de]
    rst $28
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $38
    rst $20
    ld a, [de]
    rst $20
    dec a
    jp $c33f


    add hl, de
    db $db
    rst $20
    rst $10
    db $e4
    add b
    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    adc d
    ld b, d
    pop hl
    ret c

    and b
    ldh [$bc], a
    sbc $c0
    or b
    pop hl
    ld b, b
    pop hl
    set 7, [hl]
    ld a, b
    and $b0
    rst $38
    ld d, h
    ei
    and h
    ei
    ld a, b
    rst $38
    rst $30
    xor b
    rst $30
    ld h, h
    ei
    or h
    ei
    ret nc

    rst $38
    rst $38
    pop bc
    rst $38
    or a
    rst $38
    ld e, l
    rst $38
    ld [$3e54], a
    ldh [$3a], a
    add c
    rst $38
    sub h
    add b
    ld d, a
    ld a, $e0
    dec [hl]
    ld a, [hl-]
    ldh [$f6], a
    xor [hl]
    ret nz

    rst $38
    rst $10
    ld hl, $ff83
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    sbc h
    ret nz

    call c, $afe1
    rst $38
    rst $18
    adc $e0
    rst $18
    ld hl, sp-$1a
    inc d
    rst $38
    push hl
    sbc $e5
    ld e, a
    jp z, Jump_02d_6fe0

    add $e0
    ld hl, sp-$1b
    ldh [$63], a
    jp z, $e1f8

    ld e, a
    sub [hl]
    ldh [$5f], a
    ret nc

    and $c7
    push hl
    ld l, c
    rst $38
    rst $38
    call nc, $81fc
    ldh a, [rDMA]
    ldh [$8b], a
    ret nz

    ld a, a
    ld d, a
    ret nz

    dec e
    add b
    xor a
    add b
    db $fd
    xor a
    ld h, b
    db $fd
    jp c, $8048

    and b
    db $fc
    ld b, c
    ldh a, [$0b]
    ret nz

    ei
    ld d, $00
    ld hl, sp-$1f
    ld a, [bc]
    ret nz

    rla
    nop
    cp l
    rst $30
    nop
    ld l, a
    nop
    push de
    ld h, b
    nop
    ld hl, sp-$02
    db $f4
    rst $38
    cp $d8
    db $fc
    pop af
    db $fc
    ld [c], a
    ld hl, sp-$2f
    rst $38
    ld hl, sp+$63
    ldh a, [$c6]
    ldh a, [$8b]
    ldh [rBGP], a
    rst $38
    ldh [$8f], a
    ret nz

    dec de
    ret nz

    cpl
    add b
    rra
    rst $38
    add b
    scf
    nop
    ld e, a
    nop
    inc h
    inc a
    ld b, d
    cp a
    nop
    xor l
    nop
    rst $30
    nop
    ld a, l
    jp nc, $ffe2

    push af
    nop
    db $ec
    pop hl
    cp a
    db $e4
    ldh [$2f], a
    add b
    cp a
    add b
    rst $18
    ld d, a
    nop
    ccf
    nop
    push af
    ld a, $e0
    ld b, l
    rst $38
    rst $38
    nop
    rst $00
    stop

Jump_02d_43fd:
    ld l, l
    nop
    cp e

Call_02d_4400:
    nop

Call_02d_4401:
    rst $38
    rst $28
    nop
    rst $20
    ldh a, [rSCX]
    ldh a, [$e5]
    ldh a, [rIE]
    ld b, a
    ldh [$8a], a
    ldh [$c7], a
    ldh [$a5], a
    ldh a, [$eb]
    jp $30f0


    ld h, e
    rst $18
    ld l, $60
    xor l
    rst $38
    ld b, d
    rst $38
    rst $38
    nop
    jp $fffc


    ld a, [$fcff]
    sbc $8c
    ldh [$f8], a
    cp $ec
    cp $f6
    ldh [rIE], a
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    ld c, a
    rst $38
    ldh [$87], a
    ldh a, [$d5]
    db $fc
    ld l, c
    rst $38
    ccf
    rst $38
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    db $f4
    add $4a
    ldh [rIE], a
    rst $38
    ld b, d
    ldh [$88], a
    db $e4
    add sp, -$1b
    db $e3
    rrca
    rst $38
    and $0f
    rr a
    rst $00
    rra
    adc a
    ccf
    rst $30
    sbc e
    ccf
    cpl
    db $fc
    ld b, b
    cp $00
    cp $00
    rst $38
    db $fc
    ld bc, $01fc
    ld hl, sp+$03

jr_02d_4474:
    ld sp, hl
    inc bc
    rst $08
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    inc h
    pop hl
    db $d3
    nop
    ld e, a
    ld b, d
    ld a, [hl]
    cp $00
    rst $38
    ld [c], a
    ldh [$fe], a
    sbc $e0
    rst $08
    db $fc
    ld bc, $01ff
    ld a, [c]
    ldh [$0a], a
    ld [c], a
    inc a
    nop
    rst $30
    nop
    rst $00
    ld b, l
    add h
    ret nz

    push af
    rst $38
    rst $20
    rrca
    rst $28
    ld [c], a
    rrca
    rst $30
    rrca
    add $e1
    di
    rlca
    push hl

Jump_02d_44ab:
    cp a
    rrca
    db $e3
    rrca
    jr jr_02d_4474

    ld b, d
    ld d, [hl]
    ldh [$f7], a
    ld [$c676], a
    ccf
    ld a, [hl]
    ret nz

    ccf
    add b
    and b
    sbc a
    ld a, a
    scf
    db $fd
    ld a, a
    or $e0
    rst $38
    ld [$5500], sp
    nop
    cp [hl]
    ld [hl], h
    ldh a, [$c0]
    ld l, b
    push hl
    ld e, a
    db $fc
    ret nz

    ld a, a
    nop
    xor a
    db $fc
    ldh [$9d], a
    ccf
    db $f4
    ld [c], a
    ld de, $2a80
    call nc, $f0c0
    push hl
    cp a
    ldh a, [$fa]
    db $e4
    ld l, d
    jp hl


    db $f4
    db $eb
    nop
    add e
    dec de
    db $e4
    dec d
    xor $ff
    dec l
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    xor d
    rst $18
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    ld [bc], a
    rst $38
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    ld a, [bc]
    rst $38
    adc e
    jr nz, @+$24

    nop
    db $dd
    nop
    cp l
    ld b, d
    cp $08
    and c
    ld d, $a9
    add sp, $03
    add l
    ld [hl+], a
    ld a, [hl+]
    rst $38
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    add hl, de
    ei

jr_02d_452a:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    ld [$f7ff], sp
    call z, $90fb
    ld l, a
    ld a, [hl+]
    rst $38
    rra
    rst $38
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    ld hl, sp-$09
    rlca
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, $ff3f
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    jp $d0fe


    pop hl
    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_02d_452a

    ld d, d
    rst $38
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    ld a, [de]
    rst $38
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    ld l, l
    rst $38
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    ld c, [hl]
    rst $38
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    ld d, a
    rst $38
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    dec hl
    sbc $90
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    call nz, $f3ff
    or h
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    ld a, [hl-]
    rst $38
    rst $18
    ld c, l
    rst $38
    or h
    rst $38
    ld a, d
    rst $38
    xor b
    ei
    rst $38
    ld [hl], h
    cp [hl]
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    cp $70
    add [hl]
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]

Jump_02d_45c0:
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b

Jump_02d_45c6:
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    xor a
    db $fd
    ld [hl], a
    ei
    and d
    or b
    ld h, b
    dec c
    xor h
    ld h, b
    ld a, [bc]
    rst $38
    rst $38
    ld h, a
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    ld a, [$e0de]
    cp $1c
    add b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    rst $38
    sbc e
    ld [hl+], a
    rst $38

jr_02d_45ee:
    ld a, e
    rst $38
    or [hl]
    rst $38
    ld e, [hl]
    ei
    rst $38
    cp e
    add h
    ld h, b
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp e
    cp a
    ld d, a
    ld [hl], b

jr_02d_4601:
    ldh [$6d], a
    cp a
    ld e, $70
    ldh [rHDMA2], a
    rst $38
    db $fd
    xor $f9
    ld c, c
    or $a7
    ld hl, sp+$47
    rst $38
    ldh a, [$b4]
    ret


    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rst $38
    rra
    ld c, d
    cp a
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    rst $30
    ld [c], a
    jr c, jr_02d_45ee

    nop
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp a
    cp $01
    xor b
    rlca
    ld a, b
    add a
    db $10
    db $e3

jr_02d_4636:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_02d_4601

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, $61d8

    cpl
    sub b
    ld sp, hl
    nop
    rst $38
    adc d
    ld hl, $0728
    ret c

    rlca
    cp h
    ld b, e
    db $fc
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    db $fd
    ld bc, $0dfe
    ldh a, [rIE]
    ld [bc], a
    db $fd
    ld a, [hl+]
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    rst $38
    ld e, a
    add b
    xor c
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    cp a
    sbc a
    jr nz, jr_02d_4636

    ld [bc], a
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    rst $38
    or l
    db $f4
    dec bc
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    ld e, a
    add b
    inc c
    di
    rlca
    ld hl, sp-$41
    and c
    add b
    sbc [hl]
    nop
    db $ed
    and b
    sbc d
    nop
    ld l, b

Jump_02d_469c:
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    rst $20
    nop
    ld l, $d1
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $fc
    sub b
    call nz, $e3d0
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    rst $10
    ld e, d
    and c
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b
    ret nz

    ld d, l
    cp a

Jump_02d_46c3:
    ei
    adc [hl]

Call_02d_46c5:
    ld a, a
    sub b
    jp z, Jump_02d_5ac8

    and c
    inc a
    jp Jump_02d_537f


    xor [hl]
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    cp $6b
    add c
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    rst $38
    or b
    cp a
    rst $28
    call z, $a4f3
    ei
    dec d
    cp h
    ret nz

    dec b
    xor e
    rst $38
    ld [bc], a
    add hl, hl
    and [hl]
    ld d, e
    or b
    ret nz

    ld [hl], l
    or b
    ret z

    ld [hl], a
    xor e
    adc b
    call z, $cab0
    scf
    or b
    call z, $b04e
    adc $ae
    db $db
    ld sp, hl
    ld a, c
    or b
    ret z

    cp a
    ld e, a
    or b
    jp $e21d


    ei
    ld [$20f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    cp e
    add c
    add sp, $30
    and $61
    ld e, $95
    or b
    ret nz

    add hl, sp
    rst $30
    jp nz, $f00f

    rst $38
    ld h, e
    ld d, a
    xor b
    ei
    nop
    cp a
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    rst $28
    ld h, e
    inc c
    rst $38
    rst $30
    reti


    ld l, a
    ld [$63ff], sp
    cp l
    sub $ff
    ld l, e
    ld l, d

Jump_02d_4743:
    rst $18
    jr nc, @-$1f

    ld d, e
    db $fd
    nop
    rst $38
    rst $38
    ld e, l
    rst $20
    ld [$40ff], sp
    cp a
    ld l, h
    ei
    or a
    ld c, b
    call c, Call_02d_40c0
    rst $38
    inc b
    ei
    ld e, d
    ld sp, hl
    and l
    dec sp
    add b
    ld b, c
    nop
    rst $38
    rst $38
    ld e, d
    and l
    jr nz, @+$01

    rst $18
    inc h
    rst $20
    ld h, [hl]
    and l
    dec h
    and $66
    rst $38
    and l
    ld h, [hl]
    and l
    and h
    ld h, a
    ld h, [hl]
    and l
    inc h
    cp $70
    ret nz

    ld bc, $05fe
    ei
    ld e, $e6
    jr @+$01

    add sp, $30
    ret nc

    ld de, $63f3
    and d
    ld d, l
    ei
    nop
    cp d
    sbc [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$96fa], a
    add b
    xor [hl]
    sub d
    add b
    adc d
    nop
    ld d, h
    nop
    xor d
    cp $f0
    ldh [$aa], a
    nop
    dec d
    nop
    xor b
    nop
    ld d, c
    rst $38
    nop
    ld [$2200], sp
    nop
    sub h
    nop
    add hl, hl
    xor a
    nop
    ld b, h
    nop
    db $10
    db $e4
    ldh [rP1], a
    ld [hl], e
    nop
    ld bc, $94ce
    nop
    jr nz, jr_02d_47c4

jr_02d_47c4:
    add b
    adc [hl]
    nop
    rst $38
    ldh a, [rNR23]
    inc a
    rst $38
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    db $fc
    inc a
    rst $38
    cp $80
    ld a, h
    ld h, h
    nop
    nop
    ld [$ff1c], sp
    ld a, $36
    ld a, a
    and [hl]
    ld a, a
    add h
    ld l, a
    ld b, b
    ei
    ld c, $08
    ld l, c
    ld [c], a
    inc bc
    rst $38

jr_02d_47ed:
    rlca
    cp $1b
    rst $38

jr_02d_47f1:
    db $fc
    ld e, $f1
    jr z, jr_02d_47ed

    ld a, d
    push hl
    ld [hl], b
    rst $38
    rst $08
    inc a
    rst $38
    ei
    rst $20
    db $fd
    ld b, d
    rst $20
    cp a
    jr jr_02d_484f

    or l
    nop
    rst $38
    ld d, h
    ld l, [hl]
    and b
    adc [hl]
    rst $38
    di
    sbc d
    rst $20
    ld c, l
    di
    sub a
    jp hl


    rst $00
    rst $38
    ld sp, hl
    adc a

jr_02d_4818:
    di
    ld e, [hl]
    rst $20
    adc [hl]
    di
    push af
    cp $0a
    and b
    ldh [rIE], a
    adc d
    push af
    ld d, a
    add sp, -$73
    rst $38
    ld a, [c]
    add hl, de
    rst $20
    adc a
    di
    rst $18
    sbc c
    sbc a
    rst $38
    ld c, l
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $ff
    pop af
    or h
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    sbc h
    rst $38
    ld c, a
    ld h, $17
    and d
    di
    jp c, $eee1

    rst $38
    ld [hl], c
    db $f4

jr_02d_484f:
    dec sp
    ld sp, hl
    rst $38
    rst $20
    jr jr_02d_4818

    rst $38
    inc h
    rst $20
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20
    db $fd
    jr jr_02d_47f1

    ld b, c
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    rst $38
    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    rst $38
    adc e
    ld h, b
    ld d, $a9
    pop hl
    dec bc
    adc d
    daa
    ld a, a
    daa
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    db $76
    add b
    cp $20
    daa
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr @+$01

    rst $20
    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    ld a, a
    nop
    inc e
    inc bc
    cp a

jr_02d_489c:
    nop
    sbc c
    ld h, [hl]
    jr c, jr_02d_48c2

    sbc a
    dec a
    jp nz, $e718

    add hl, de
    jr nc, jr_02d_48cd

    db $10
    add c
    ld d, [hl]
    rst $08
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    sub b
    add h
    add b
    and e
    ld de, $ffef
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08

jr_02d_48be:
    dec l
    rst $10
    cp $e0

Call_02d_48c2:
jr_02d_48c2:
    ld h, l
    jr z, jr_02d_489c

    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $38
    ei

jr_02d_48cd:
    inc e
    db $ed
    ld h, $8b
    ld b, [hl]
    db $db
    rst $38
    ld h, [hl]
    add $4f
    dec bc
    add a
    sbc e
    add a
    or e
    rst $38
    rst $08

jr_02d_48de:
    xor a
    sbc a
    and $5f

jr_02d_48e2:
    cp a
    ld a, [hl]
    db $eb
    rst $18
    inc a
    rst $38
    ld l, $ef
    cpl
    ld hl, $1e60
    inc e
    rst $38
    rst $38
    ld l, $e7
    ld c, d
    rst $00
    ld e, d
    rst $20
    ld b, a
    ei
    rst $08
    adc e
    ldh [$e4], a

jr_02d_48fd:
    ld h, [hl]
    rst $18
    ld a, [hl]
    rst $38
    jr z, jr_02d_48e2

    rst $38
    ld a, $ef
    cpl
    rst $28
    pop hl
    ldh [rIE], a
    rst $18
    rst $38
    jr c, jr_02d_48be

    ld e, [hl]
    bit 4, [hl]
    ld e, a
    and a
    and c
    rst $38
    sbc a
    xor e
    rst $10
    rst $38
    ld a, [hl]
    ret c

    cpl
    jr c, jr_02d_48de

    rst $38
    ld l, [hl]
    rst $18
    ld a, [bc]
    rst $20
    rst $18
    ldh a, [$e2]
    ld a, [hl]
    rst $38
    rst $38
    ccf
    rst $28

jr_02d_492c:
    jr nz, jr_02d_48fd

    or [hl]

jr_02d_492f:
    dec hl
    db $ed

jr_02d_4931:
    cp a
    cp d
    dec sp
    rst $18
    db $76
    rst $18
    ld d, h
    ld hl, sp+$00
    ld a, [hl+]
    rst $38
    rst $38
    rst $30
    jr jr_02d_492f

    jr z, jr_02d_4931

    jr z, @-$01

    rst $38
    ld l, $eb
    ld a, [hl+]
    ei
    ld a, [hl+]
    rst $38
    ld l, d
    xor a
    rst $38
    cp d
    cp a
    xor d
    db $eb
    or [hl]
    cp a
    xor h
    ld a, [$afff]
    rst $28
    sbc l
    ld e, a
    db $ed
    db $ed
    ccf
    rst $38
    rst $38
    dec l
    push af
    dec hl
    rst $20
    ld a, $ff
    jr z, @-$0f

    rst $38
    jr c, @+$01

    jr z, jr_02d_492c

    ld l, [hl]
    rst $30
    ld c, a
    adc $ff
    ccf
    xor e
    rst $38
    dec b
    cp $ab
    db $fc
    dec c
    rst $38

jr_02d_497b:
    ld a, [$fdb2]
    ld d, l
    ld [$d7a8], a
    db $f4
    rst $38
    adc e
    or b
    rrca
    sbc $7f
    add hl, hl
    cp $55
    ei
    rst $38
    cp [hl]
    ld e, $e0
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    and l
    ld h, a
    jr nc, jr_02d_497b

    ld e, b

Jump_02d_499b:
    jr nc, jr_02d_49a3

    ret nz

    ld c, e
    dec hl
    nop
    ld l, b
    inc a

jr_02d_49a3:
    ld a, a
    inc bc
    add h
    ld [hl], e
    or h
    db $eb
    inc hl
    call z, $e170
    rst $38
    ld a, [hl-]
    rst $18
    rst $30
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ei
    ld l, $58
    ld h, e
    add hl, de
    rst $20
    rla
    xor $3f
    cp a
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld e, d
    nop
    jp c, $f8fe

    jr nz, @-$4f

    cp $df
    ld hl, sp+$6f
    ld hl, sp-$21
    push af
    ldh a, [$73]
    ld b, b
    inc a
    sub $41
    ccf
    jp $c73e


    rst $28
    db $dd
    cpl
    jp c, $f02f

    push hl
    dec a
    jp $bf3c


    rst $00
    ret nc

jr_02d_49ec:
    cpl
    ret c

    cpl
    db $10
    ld d, e
    ldh [$28], a
    rst $38
    rst $28
    inc a
    rst $28
    ld a, [hl+]
    db $eb
    ld a, [hl-]
    db $eb
    ld a, [hl]
    rst $38
    db $eb
    xor [hl]
    cp e
    cp [hl]
    xor e
    ld [$bcb7], a
    db $fd
    xor a
    jr nc, jr_02d_49ec

    dec l
    rst $38
    ccf
    db $ed
    dec [hl]
    db $eb
    rst $18
    ld h, $ff

jr_02d_4a12:
    jr c, @-$0f

    jr z, jr_02d_4a12

    ldh [$3e], a
    rst $28
    ld a, a
    ld [hl], a
    rst $08
    ld l, $ff
    sub b
    rst $38
    ld a, [hl+]
    jp nc, $ffe0

    xor d
    db $eb
    ld a, a
    db $eb
    xor d
    or a
    cp $af
    rst $38
    cp a
    xor l
    db $ed
    sbc a
    ld e, a
    db $ed
    and l
    ei
    rst $00
    ld [hl], $ef
    xor c
    xor [hl]
    ret nz

    ldh [$e1], a
    di
    nop
    ld sp, hl
    db $fc
    ld a, a
    ei
    cp $e1
    db $f4
    set 4, b
    rst $18
    cp $e1
    rst $38
    cp a
    ld a, a
    ld e, a
    cp a
    rra
    rst $38
    scf
    rst $08
    rst $38
    dec bc
    rst $30
    ld h, e
    rst $38
    db $d3
    sbc a
    sub e
    sbc a
    rst $38
    ld hl, sp-$79
    ret nc

    cpl
    add b
    ld a, a
    adc h
    ld a, a
    rst $38
    sbc d
    ld [hl], e
    ld d, d
    or e
    adc h
    rst $38
    ldh a, [$ef]
    rst $18
    ld l, l
    di
    ld [bc], a
    db $fd
    ret nz

    call Call_000_0200
    rst $38
    rst $38
    ld d, $ff
    ld bc, $17ff
    rst $38
    add sp, -$09
    rst $38
    pop af
    rst $38
    cp $fe
    rst $38
    cp $f7
    cp $ff
    xor l
    db $fc
    ld b, [hl]
    cp $eb
    rst $38
    scf
    rst $38
    db $fd
    adc a
    adc l
    nop
    ld a, a
    ld a, a
    ld l, a
    ld a, a
    ld a, $3f
    ei
    ld a, e
    ld a, a
    and c
    ldh [rIE], a
    ld a, [$fcfd]
    ei
    rst $38
    pop hl
    rst $38
    ret nc

    rst $28
    push hl
    rst $18
    jp z, Jump_02d_7fff

    rst $20
    rst $18
    ccf
    rst $38
    rra
    rst $38
    cp a
    jp nz, $df60

    db $eb
    rst $38
    ld a, a
    rst $38
    db $db
    ld h, e
    nop
    adc e
    rst $38
    rst $38
    ld b, l
    cp a
    sub a
    ld a, a
    dec hl
    rst $38
    sbc a
    ld a, a
    rst $10
    dec l
    rst $38
    sbc a
    ld [$75e0], a
    ld h, b
    nop
    rst $38
    rst $38
    db $dd
    ld a, [hl]
    ld c, c
    nop
    cp $ff
    ld sp, hl
    ld b, e
    nop
    push hl
    rst $38
    ld sp, hl
    di
    and b
    pop hl
    sbc h
    ldh [$ee], a
    cp $5e
    cp $fb
    and d
    and $00
    rst $08
    and b
    ld [c], a
    db $fc
    db $e3

jr_02d_4af7:
    cp $e8
    cp $33
    nop
    ld hl, sp-$01
    rst $38
    ldh a, [$fb]
    rst $20
    push af
    set 6, d
    adc l
    ld l, a
    pop af
    ld c, $f0
    rrca
    cp $e1
    add sp, $17
    cp d
    inc bc
    ld a, e
    ld a, a
    rst $38
    jr z, jr_02d_4af7

    cpl
    rst $18
    rla
    rst $28
    call z, $fcea
    sbc e
    pop hl
    sbc c
    inc bc
    ldh [$fc], a
    jp $83fc


    db $fc
    rst $38
    inc bc
    db $fc
    inc bc
    rst $38
    ldh [$ef], a
    ret nc

    rst $18
    rst $38
    and b
    ld l, $d1
    sub [hl]
    ld l, e
    ld c, h
    or a
    jr z, @+$01

    rst $18
    dec d
    rst $28
    ret nz

    ccf
    add h
    ld a, a
    ld a, [bc]
    db $eb
    rst $38
    inc d
    or [hl]
    and b
    ld d, l
    nop
    ret nz

    ld d, l

Call_02d_4b4b:
    rst $38
    dec bc
    cpl
    rst $30
    inc bc
    rst $38
    ei
    cp $e0
    rst $38
    db $fc
    ld [c], a
    rst $28
    and b
    cp $7b
    ld [$0ff7], a
    cp $fd
    db $fd
    ld a, [$cffa]
    push af
    ldh a, [$ef]
    ret nz

    ld e, b
    ld b, b
    adc $e1
    db $fc
    inc bc
    rst $38
    ld d, h
    xor e
    xor h
    ld d, a
    ld a, [de]
    rst $28
    dec [hl]
    rst $18
    db $fd
    ld a, [hl+]
    ld c, $e0
    rst $38
    rst $38
    ld a, [bc]
    rst $30
    dec b
    ei
    ld d, l
    ld [bc], a
    ld e, d
    ld h, b
    ld a, [hl]
    ret nc

    ld b, b
    ld a, a
    call z, $5742
    inc b
    ret nz

    ei
    sbc $fd
    ld b, l
    ldh [rIE], a
    ld [$d5ff], a
    rst $38
    rst $38
    sbc $a1
    xor d
    ld d, l
    ld d, [hl]
    xor e
    dec c
    rst $30
    sub a
    ld a, [de]
    rst $28
    dec d
    ret c

    ret nz

    ld a, a
    sub b
    ldh [$d0], a
    db $e3
    cp [hl]
    ld [bc], a
    db $ec
    ret nz

    cp a
    sbc h
    ld b, b
    nop
    nop
    nop
    ccf
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    adc $cf
    ret nc

    ld a, [$fdec]
    ld [c], a
    rst $18
    call nz, Call_02d_46c5
    call z, $f3cd
    pop hl
    add $c7
    ccf
    ld b, [hl]
    jp nz, Jump_02d_46c3

    ret z

    ret


    push de
    push hl
    ret nc

    ld [$d63f], a
    pop de
    jp nc, $d4d3

    push de
    ld a, [$d5ea]
    pop hl
    ld [hl], b
    rst $08
    ldh [$c9], a
    ldh [rIE], a
    and $b4
    ldh [$ca], a
    bit 0, [hl]
    push de
    ld [c], a
    ld a, [hl]
    ret nc

    db $ec
    call c, $d8d7
    reti


    jp c, $fadb

    ld [$d5bc], a
    pop hl
    add e
    ldh [rDMA], a
    sbc l
    sbc a
    sbc e
    rst $38
    db $e3
    sbc l
    ld h, b
    ld a, l
    pop hl
    ld [hl], h
    ldh [$d5], a
    ld [c], a
    ret nc

    db $ec
    ld b, e
    rst $28
    ret z

    ret


    ld c, c
    ldh [$fe], a
    ld c, h
    ldh [$9d], a
    sbc d
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld c, b
    ld c, b
    ccf
    ld b, l
    ld b, [hl]
    ld b, [hl]
    sbc d
    sbc l
    ld b, [hl]
    ld a, $e1
    dec a
    ld [c], a
    ldh a, [rNR13]
    db $ed
    ld b, e
    xor $57
    pop hl
    db $fd
    pop bc
    sbc l
    sbc d
    xor e
    ld b, l
    ld a, a
    ld b, l
    ld b, h
    ld e, c
    ld d, e
    inc sp
    ld b, l
    xor e
    cp a
    pop hl
    ld b, $6f
    pop hl
    jp z, Jump_000_13cb

    rst $28
    ld b, e
    xor $cb
    pop bc
    pop de
    ret nz

    add d
    ldh [rIE], a
    xor h
    ld c, d
    ld b, a
    dec l
    inc l
    inc l
    jr nz, @+$2f

    rst $28
    xor h
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    cp e
    ret nz

    jp nz, $ccc3

    pop de
    call $f013
    ld b, e
    db $ed
    add l
    call nz, Call_02d_679c
    ret nz

    ld c, d
    ld e, b
    rra
    ld [hl-], a
    jr nz, jr_02d_4c94

    jr nz, jr_02d_4ca8

    ld e, l
    ret nz

    ld a, [c]
    pop hl
    db $ed
    pop bc
    ldh a, [$7b]
    rst $00
    add b
    jp nc, $e243

    add l
    jp Jump_02d_469c


    xor e
    ld b, [hl]
    ld a, a
    ld b, h
    ld c, l
    ld c, c
    inc sp
    ld [hl+], a
    inc hl
    dec l
    or $e0
    add c

jr_02d_4c94:
    sbc d
    cp h
    jp $c67b


    add b
    call nc, $e243
    add l
    pop bc
    adc [hl]
    ldh [$ab], a
    rst $38
    xor h
    ld b, [hl]
    xor e
    ld d, e
    ld d, e

jr_02d_4ca8:
    ld b, h
    inc a
    inc a
    inc bc
    ld b, h
    ld b, [hl]
    ccf
    ldh [$bc], a
    call nz, $c57b
    add b
    db $d3
    rlca
    jp $c208


    di
    sbc l
    sbc d
    ld a, [bc]
    ldh [rTAC], a
    ldh [$39], a
    dec [hl]

Jump_02d_4cc3:
    dec [hl]
    xor e
    ld c, $79
    ret nz

    ld b, l
    ld b, [hl]
    xor e
    cp h
    call nz, $a3a2
    add b
    pop de
    db $76
    and b
    cp $07
    push bc
    sbc e
    sbc a
    sbc d
    ld b, [hl]
    inc bc
    inc b
    inc b
    rst $38
    inc bc
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    xor h
    ld b, [hl]
    rra
    cp d
    inc l
    inc l
    ld b, h
    xor h
    ld a, [hl-]
    ret nz

    ld [hl], a
    and b
    ld a, d
    and d
    ld hl, sp-$80
    db $d3
    ld [hl], $a0
    rlca
    rst $00
    ld b, [hl]
    dec b
    rrca
    ld bc, $f700
    dec c
    rlca
    dec b
    ret nz

    ldh [rLYC], a
    ld b, l
    ld l, $20
    inc bc
    inc l
    ld b, h
    pop af
    ret nz

    xor l
    pop bc
    inc hl
    jp nz, $d880

    rlca
    jp nz, $81fe

    cp a
    ld b, $96
    sub [hl]
    sub a
    sub [hl]
    ld c, $c0
    ldh [$35], a
    cp a
    add hl, sp
    ld b, d
    dec h
    jr nc, jr_02d_4d76

    ld d, l
    ei
    ret nz

    sbc h
    add sp, -$01
    jp $d980


    rlca
    jp nz, Jump_02d_44ab

    ldh [rTAC], a
    rrca
    sub [hl]
    rst $28
    sub l
    sub [hl]
    sub a
    ld [$e001], sp
    dec [hl]
    ld a, $40
    rrca
    inc h
    ld hl, $554a
    ld a, d
    and d
    ld a, [hl+]
    and c
    add b
    jp c, $c207

    rst $28
    xor h
    dec b
    rrca
    sub [hl]
    rst $38
    pop hl
    nop
    ld bc, $fe06
    add c
    ldh [$35], a
    ld a, $39
    dec [hl]
    inc a
    ld b, h
    ld b, l
    ldh [$3b], a
    and d
    xor l
    add c
    add b
    reti


    rlca
    jp $e044


    sub l
    sub l
    sub [hl]
    cp a
    rrca
    inc b
    inc b
    rrca

jr_02d_4d76:
    ld b, $36
    add b
    ldh [$39], a
    add c
    ld a, $3c
    ldh [$7d], a
    and c
    db $fd
    add c
    add b
    jp c, $821d

    ret


    add b
    ld [bc], a
    ld a, [hl]
    ld b, e
    ldh [$98], a
    ld [bc], a
    dec hl
    dec hl
    ld [bc], a
    ld [bc], a
    ld b, c
    ret nz

    dec bc
    ld a, [hl-]
    xor e
    ei
    pop hl
    ld b, l
    ld l, a
    and b
    rst $28
    ld h, b
    ld h, c
    and e
    add b
    push de
    db $fc
    add e
    and e
    adc b
    add b
    ld b, $96
    sbc c
    sub [hl]
    ld [bc], a
    ld l, $03
    jr nz, @+$2c

    ld b, c
    ret nz

    ld b, b
    ret nz

    ld a, e
    ldh [$bb], a
    and b
    ld b, c
    jp nz, $83a4

    db $f4
    nop
    or l
    add e
    and h
    sbc h
    add e
    pop bc
    sub [hl]
    ld [$202d], sp
    ei
    jr nz, @+$36

    add c
    ret nz

    ld h, d
    ld a, d
    ld h, l
    ld h, [hl]
    dec [hl]
    ld b, e
    dec [hl]
    ld b, b
    db $fc
    add c
    add c
    jp $ba00


    adc e
    ld h, c
    sbc [hl]
    ccf
    ldh [rIE], a
    ld bc, $0e00
    dec b
    ld hl, $4021
    add hl, sp
    rst $38
    dec [hl]
    ld h, d
    ld h, a
    ld b, d
    ld a, [hl-]
    ld l, b
    ld h, [hl]
    ld a, [hl-]
    ldh a, [$7b]
    and b
    ccf
    ld [c], a
    add b
    call c, $a5ff
    ld [bc], a
    rlca
    rrca
    ld c, $7f
    dec b
    inc a
    dec [hl]
    add hl, sp
    add hl, sp
    dec [hl]
    ld l, c
    ei
    pop hl
    add e
    ld l, d
    ld a, $3c
    add b
    add b
    and d
    add b
    call c, Call_02d_6306
    add [hl]
    ld h, c
    ld [bc], a
    db $fd
    ld [bc], a
    add h
    ret nz

    ld a, [hl-]
    ld a, [hl-]
    dec [hl]
    ld l, e
    ld l, h
    ld a, $0f
    ld b, h
    inc a
    ld l, d
    ld a, $99
    ld b, b
    cp $81
    ld a, l
    push bc
    nop
    or h
    ldh a, [rTMA]
    ld h, [hl]
    ld b, l
    ld h, b
    push bc
    and c
    jp nz, Jump_02d_6ea0

    ld [hl], h
    ld a, [hl-]
    ld [hl], $3b
    dec [hl]
    ld l, d
    add b
    ret nz

    xor e
    xor h
    xor e
    ld a, l
    push bc
    nop
    or [hl]
    ld d, b
    rst $38
    add e
    ld d, e
    ld b, b
    jp nz, $8560

    and c
    ld [hl], $00
    ret nz

    ld l, c
    ld a, l
    and b
    dec a
    ld l, d
    rst $38
    and b
    xor h
    xor e
    xor h
    sbc h
    dec [hl]
    ld b, c
    ld a, b
    ld b, b

jr_02d_4e63:
    add sp, -$80
    ld a, h
    add d
    ld h, e
    ld a, [bc]
    jp nz, Jump_000_3fab

    pop hl
    dec [hl]
    ld l, h
    ld l, l
    add d
    cp a
    and c
    xor h
    cp c
    ld b, c
    ld hl, $8061
    ld a, h
    add d
    ld h, e
    dec b
    jp nz, $ffab

    xor h
    ld a, [hl-]
    dec [hl]
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    add e
    ld [hl], $44
    sbc b
    jr nz, @+$80

    and e
    add b
    ld a, l
    ld d, a
    ld b, c
    add h
    ld b, b
    ld b, h
    ld [hl], l
    inc a
    jp z, $aca0

    ei
    jp $483a


    ld c, c
    ret nz

    add b
    or b
    ccf
    call nz, Call_02d_5d00
    ld c, c
    jr nz, jr_02d_4eef

    ld b, b
    xor h
    ld b, b
    pop bc
    pop bc
    ld [hl], $7b
    ld a, [hl-]
    ld h, d
    call nz, Call_000_35a0
    ld a, [hl-]
    ld d, h
    ld d, a
    ret nz

    db $e3
    and e
    add $c7
    and b
    ld b, e
    nop
    ld e, c
    ld [de], a
    jr nz, jr_02d_4e63

    ld c, $60
    ld b, l
    ld [hl], h
    push bc
    add c
    jp nz, Jump_02d_68a0

    cp a
    pop hl
    jr c, jr_02d_4f0f

    scf
    cp c
    jr nz, jr_02d_4ed6

jr_02d_4ed6:
    ret nz

    ld h, [hl]
    nop
    ld e, e
    cp [hl]
    ld h, e
    ccf
    ld [c], a
    add e
    pop bc
    cp a
    ld [c], a
    cp a
    add c
    ld bc, $00c2

jr_02d_4ee7:
    xor [hl]
    ld [bc], a
    nop
    ld e, e
    ld b, c
    jp $e305


jr_02d_4eef:
    ld b, e
    jp $813b


    dec sp
    ld [hl+], a
    ld h, l
    ld b, e
    inc e
    nop
    ld e, h
    jp $ab21


    ld b, [hl]
    ld b, l
    ret nz

    ld [$c036], a
    ld b, d
    ld h, c
    ld a, b
    ld l, l
    ld bc, $5e00
    jp $ac21


    xor e
    ld c, d

jr_02d_4f0f:
    ld d, [hl]
    add h
    ld h, c
    ld [$a0c3], sp
    inc bc
    ret nz

    inc a
    ld h, b
    ld b, [hl]
    jp Jump_000_00a0


    add e
    add b
    ld e, $02
    ld b, e
    ei
    ld c, d
    ld e, b
    inc b
    ld h, c
    ld l, e
    ld l, h
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], b
    ld bc, $83e3
    and l
    add b
    db $dd
    ld a, e
    ld h, h
    ld b, h
    ld c, l
    ld d, l
    cp $a0
    inc de
    ld l, [hl]
    ld [hl], b
    call nz, $fba0
    ld b, c
    ld b, b
    dec sp
    ld [bc], a
    jr nz, jr_02d_4ee7

    add b
    db $dd
    sbc $fe
    inc bc
    sbc h
    ld b, l
    ld d, d
    ld d, l
    cp a
    add e
    dec [hl]
    xor e
    jr nz, jr_02d_4f55

jr_02d_4f55:
    ld h, b
    rst $38
    ld b, [hl]
    cp a
    ld [bc], a
    nop
    ld e, d
    cp $03
    sbc [hl]
    cp a
    call nz, $a57b
    jr nc, @+$01

    ld b, l
    ccf
    pop hl
    add b
    add hl, de
    ld e, a
    ld [bc], a
    add $c7
    ccf
    add b
    inc b
    ld h, c
    ld h, [hl]
    dec a
    add d
    ld [hl], $ab
    or $61
    rst $38
    call nz, $cdcc
    add b

jr_02d_4f7e:
    dec de
    ret nz

    ld b, b
    inc bc
    ret nz

    add c
    add b
    and d
    cp a
    ld h, b
    ld a, [$fa80]
    nop
    add hl, sp
    inc bc
    ld h, c
    inc bc
    ld a, [hl]
    inc bc
    nop
    cp h
    ld b, b
    inc bc
    ret nz

    ld h, b
    ld a, c
    ld h, h
    ld b, $a1
    db $fd
    add hl, sp
    ld a, a
    ld b, c
    ld b, l
    ld b, [hl]
    add hl, sp
    ld [hl], $02
    dec c
    ld h, e
    ld c, $05
    ld a, [hl]
    ld [$b800], sp
    cp h
    inc hl
    ld a, c
    ld a, [hl]
    jp z, Jump_000_0c40

    adc b
    jr nz, @+$41

    ld b, c
    dec b
    rlca
    or l
    jr nz, @+$75

    jr nz, jr_02d_4f7e

    add [hl]
    nop
    cp l
    adc [hl]
    pop bc
    ld h, b
    add d
    add e
    add hl, sp
    rst $00
    and c
    cp a
    ld b, b
    ret nz

    ldh [$98], a
    ld a, $31
    jr nz, jr_02d_4fe2

    rlca
    ld [bc], a
    sbc d
    sbc l
    pop hl
    nop
    cp $a1
    db $fc
    add b
    reti


    cp [hl]
    ld b, d
    sbc l
    sbc d

jr_02d_4fe2:
    add h
    add l
    add [hl]
    ld [hl], b
    db $fc
    rst $00
    and b
    ret nz

    pop hl
    add hl, sp
    dec b
    sub a
    sbc c
    sub l
    sub [hl]
    add c
    ld b, $c0
    inc b
    ld e, $60
    add b
    ld a, c
    rst $38
    add h
    cp a
    ld b, b
    cp a
    ld h, c
    ld a, [hl-]
    ld b, $04
    ret nz

    ld [hl], $45
    pop af
    nop
    ld [hl], $00
    ret nz

    dec b
    nop
    ld e, h
    cp [hl]
    ld b, h
    sbc e
    sbc l
    sbc d
    ld b, h
    ld hl, $ac39
    add $c0
    dec [hl]
    ld [bc], a
    ld [bc], a
    ret nz

    add c
    ld [hl+], a
    ld b, e
    dec l
    nop
    or d
    db $fd
    and b
    cp a
    and d
    call nz, Call_02d_4000
    dec b
    ld a, [de]
    ld a, e
    nop
    sub [hl]
    add c
    ldh [$97], a
    dec b
    add c
    and b
    ret nz

    ld b, $80
    db $db
    inc h
    dec a
    add b
    add hl, sp
    ld [bc], a
    ld b, b
    adc d
    nop
    rst $30
    ld bc, $ff95
    ldh [rSB], a
    ldh [$30], a
    ret nz

    adc b
    add b
    ld a, e
    sbc l
    ld h, d
    ld a, a
    and c
    ld [hl], $39
    scf
    ld bc, $e1c2
    add a
    sub [hl]
    sub a
    ld [$89c0], sp
    nop
    cp d
    sbc e
    and d
    ld a, a
    ld b, b
    ld b, [hl]
    cp a
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, $01
    nop
    call nz, $96c0
    rrca
    sub a
    ld bc, $0600
    add b
    inc bc
    ld b, e
    adc h
    add b
    ret nc

    ld [bc], a
    db $e3
    ei
    sbc h
    xor e
    rst $08
    nop
    ld b, [hl]
    ld b, [hl]
    dec b
    rlca
    rrca
    rla
    sbc c
    sub [hl]
    sub a
    inc bc
    pop bc
    dec b
    add b
    rra
    ld [hl], e
    add e
    ld [bc], a
    db $e4
    ld [hl], h
    pop bc
    ld [c], a
    db $e4
    ld b, b
    ld [bc], a
    add a

jr_02d_5098:
    and b
    sub a
    dec c
    ld [bc], a
    pop bc

jr_02d_509d:
    ld bc, $42e0
    ld [hl+], a
    add b
    sbc $de
    ld h, e
    ld d, l
    ld b, c
    cp a
    db $e4
    inc b

jr_02d_50aa:
    inc bc
    inc bc
    ld bc, $8203
    ld bc, $2002
    ld h, c
    add h
    add b
    ld a, e
    ld e, l
    ld [bc], a
    ret nz

    rst $20
    or a
    push hl
    ldh a, [rSC]
    jr nz, jr_02d_5102

    and h
    add b
    ld a, h
    ld b, b
    inc b
    ld b, l
    ld b, e
    ccf
    ccf
    inc b
    db $fd
    pop hl
    ld sp, hl
    db $e4
    xor e
    ld b, d
    and [hl]
    nop
    ld e, d
    pop bc
    ld h, b
    add b
    jr nz, jr_02d_5098

    ld hl, $4417
    and c
    ld h, h
    rst $38
    add sp, -$5e
    ld b, d
    pop hl
    ld b, d
    dec h
    nop
    ld e, b
    ld a, [$43a0]
    sbc [hl]
    xor e
    jr nz, jr_02d_512d

    ld l, c
    and b
    dec [hl]
    dec [hl]
    dec c
    and b
    db $fc
    push hl
    ld l, d
    ld b, b
    db $ec
    pop hl
    add c
    ld b, d
    add b
    ld a, [de]
    ld bc, $3040
    add c
    inc hl

jr_02d_5102:
    ret nz

    ldh [$c1], a
    ld b, h
    ld a, [$6a42]
    ld b, b
    ld b, d
    ld h, $80
    rra
    ld [hl], $00
    inc hl
    ld l, e
    ld [hl], c
    rst $38
    add sp, $6d
    ld b, h
    add b

jr_02d_5118:
    jr nz, jr_02d_509d

    ld h, d
    ld e, b
    ret nc

    dec l
    add b
    ld de, $c1c0
    xor h
    xor e
    ret nz

    jp z, $8045

    jr nz, jr_02d_50aa

    ld h, [hl]
    nop
    ld b, e

jr_02d_512d:
    inc l
    add b
    inc de
    ld b, b
    and d
    dec a
    nop
    inc a
    jp z, Jump_000_21c1

    ret z

    ld de, $43c9
    inc l
    add b
    ld [hl], e
    ld a, $c2
    sbc e
    rst $38
    ldh [$39], a
    nop
    push bc
    ld [c], a
    nop
    db $f4
    pop hl
    ld b, e
    ld bc, $2442
    add b
    ld a, l
    ld a, $c0
    push de
    ld h, e
    jr c, jr_02d_5118

    add [hl]
    db $e3
    ld b, $a6
    add c
    call nz, Call_02d_66c5
    add d
    add b
    ld a, [hl]
    cp l
    ld hl, $a0bb
    ld sp, hl
    ld hl, $4b00
    jp nz, $c246

    ld l, d
    ret nz

    ld [bc], a
    and d
    add b
    rst $18
    sbc h
    ld [bc], a
    cp e
    and b
    ld a, b
    and c
    ld [bc], a
    ld sp, hl
    add d
    sbc h
    inc l
    push hl
    ld h, h
    ld [hl+], a
    ld d, b
    dec c
    nop
    nop
    nop
    cp a
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    ld [$c34d], a
    ld c, l
    ld c, l
    ld [$e9e0], a
    ldh [$fd], a
    pop hl
    rst $30
    and $0e
    ld c, $00
    ld [$d5e0], a
    ld [c], a
    ret nc

    db $ec
    db $fd
    xor $cf
    and $ba
    pop hl
    db $fc
    db $e3
    cp l
    push hl
    jr nz, @+$01

    rst $38
    ret nz

    rst $20
    ld a, e
    ldh [rPCM12], a
    ldh [$fd], a
    pop hl
    dec l
    ret nz

    ei
    dec a
    rst $28
    cp $46
    db $e3
    ld l, l
    ld l, e
    ld l, e
    dec hl
    ld a, [bc]
    ld a, [hl+]
    dec bc
    inc bc
    ld l, e
    ld l, e
    cp a
    ldh [$35], a
    ld [c], a
    ld b, e
    ldh a, [$3f]
    xor $d6
    db $e3
    nop
    pop hl
    rst $38
    ld l, l
    dec c
    dec hl
    dec bc
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    jp Jump_000_0d0b


    cp a
    pop hl
    rlca
    db $e4
    ld b, e
    rst $38
    call nc, Call_02d_6dc5
    ld l, e
    ld a, a
    dec c
    ld a, [bc]
    ld a, [hl+]
    dec hl
    dec hl
    dec bc
    dec bc
    ret nz

    ldh [$81], a
    ld l, e
    ld a, $e1
    ld b, e
    rst $38
    ld [hl], h
    jp nz, $c184

    ld l, a
    pop bc
    ld c, b
    ldh [rWY], a
    db $fd
    ld a, [bc]
    jp nz, Jump_000_0be0

    dec hl
    ld l, e
    ld l, e
    ld l, e
    ld l, l
    ld [de], a
    ld [hl], b
    jp Jump_02d_7b4d


    rst $00
    add b
    jp nc, $df4d

    ldh [rOBP0], a
    push bc
    adc c
    pop hl
    ld e, $02
    ldh [rWX], a
    ld c, e
    ld c, e
    ld l, e
    ccf
    ldh [$bc], a
    jp $e1c0


    jr c, jr_02d_5271

    rst $38
    ld c, b
    push bc
    ccf
    ld [c], a
    ld c, e
    ld l, e
    dec bc
    ret nz

    ldh [$bc], a
    push bc
    and b
    dec sp
    jp nc, $a6bd

    inc e
    push bc
    ld b, a

jr_02d_5242:
    ret nz

    jp nz, Jump_02d_6bc0

    ret z

    pop hl
    dec hl
    inc sp
    ld c, e
    ld c, e
    ld a, [$bce1]
    ldh [rKEY1], a
    dec l
    ld h, e
    pop hl
    ldh a, [$a6]
    ld hl, sp-$80
    rst $08
    adc l
    xor b
    jp nz, Jump_000_0bc0

    inc c
    inc c
    inc l
    inc l
    ld h, e
    ld l, e
    dec hl
    ret nz

    ld [c], a
    db $fc
    ret nz

    cp d
    ldh [rKEY1], a
    dec l
    ld l, [hl]
    and l
    db $ec
    or [hl]

jr_02d_5271:
    ret c

    rlca
    push bc
    dec bc
    inc l
    pop bc
    ldh [$2c], a
    inc c
    inc c
    inc hl
    ld l, e
    ld c, e
    cp a
    ret nz

    jr c, jr_02d_5242

    dec sp
    ldh [rWX], a
    cp e
    call nz, $ab4b
    sbc h
    nop
    xor h
    rlca
    jp nz, Jump_000_0b0b

    ld c, e
    ret nz

    ldh [rIE], a
    ldh [$6c], a
    add hl, sp
    ld c, h
    ld b, b
    ldh [$7f], a
    ret nz

    dec hl
    ld a, [bc]
    ld c, d
    ret nz

    pop hl
    ld a, a
    ldh [$4c], a
    nop
    cp e
    adc c
    and e
    dec c
    ld c, e
    call nz, $c0e1
    pop hl
    inc l
    ld bc, $1be0
    ld c, e
    dec hl
    ccf
    ret nz

    ld c, d
    ld a, [bc]
    ld a, [c]
    ret nz

    ret nz

    pop hl
    cp e
    cp e
    add b
    ld b, a
    call nz, $e284
    add b
    pop hl
    add c
    pop hl
    ret nz

    ldh [rSTAT], a
    ldh [$3b], a
    ret nz

    ld l, l
    pop hl
    dec c
    ret nz

    db $f4
    ld b, e
    add sp, -$39
    and d
    ld b, h
    db $e4
    ld l, h
    ld c, h
    ld c, h
    ld sp, $020c
    ret nz

    ccf
    ldh [$7c], a
    and b
    ld l, e
    ld c, e
    add c
    ret


    nop
    or d
    call z, $a2c3
    adc h
    add b
    dec l
    dec bc
    rst $00
    ldh [rDIV], a
    ldh [$0b], a
    dec hl
    inc hl
    ld c, h
    ld l, h
    ld b, b
    pop hl
    add b
    pop bc
    xor $c0
    ld l, l
    rst $28
    ld l, c
    add hl, bc
    sub c
    inc d
    add e
    and l
    cp a
    ldh [$6c], a
    inc b
    pop hl
    ld l, e
    add a
    ret nz

    pop bc
    pop bc
    ld l, a
    ldh [rSC], a
    add b
    ret nz

    dec bc
    ld b, c
    rst $00
    add b
    sub $8e
    ld h, l
    add e
    jp nz, $e0c0

    ld c, c
    pop hl
    nop
    pop bc
    add b
    add d
    pop hl
    ld a, a
    pop hl
    ld b, l
    and d
    inc de
    sub b
    dec a
    xor $3f
    ldh [$03], a
    pop bc
    jr @+$47

    and c
    inc bc
    pop hl
    ret nz

    and b
    ld c, e
    dec c
    ccf
    db $e4
    add b
    call c, Call_02d_6106
    inc e
    sub b
    ld h, b
    cp $c0
    ld c, h
    ld l, h
    ld c, h
    dec b
    pop bc
    ret nz

    ld [c], a
    db $fd
    and b
    ldh [$c0], a
    ldh [$80], a
    and d
    add b
    ret c

    ret


    ld b, c
    cp $c6
    dec bc
    ld c, h
    ld l, h
    db $10
    add l
    add b
    ret nz

    ld [c], a
    inc a
    and b
    cp b
    pop hl
    ld c, e
    cp $80
    db $ec
    ld b, [hl]
    add b
    jp nc, $8c06

    ld b, a
    ld c, l
    dec l
    add l
    pop hl
    ld b, e
    add $3e
    jp nz, Jump_02d_626e

    cp b
    ld e, c
    inc b

Jump_02d_537f:
    ret nz

    and $fb
    and e
    ld l, e
    ld b, $81
    ld [bc], a
    pop bc
    db $fc
    ld [c], a
    ret nz

    and $bb
    add e
    ld d, b
    jp Jump_02d_5d55


    add d
    cp e
    and e
    add b
    ld [c], a
    dec c
    cp a
    jp nz, Jump_000_352b

    pop hl
    add l
    ld c, e
    xor $41
    dec c
    ld a, h
    and c
    nop
    cp b
    ret nz

    rst $20
    dec b
    jp Jump_000_000d


    cp a
    jp nz, $80fe

    ld a, b
    ld h, c
    rst $38
    ld h, d
    ret nz

    db $e3
    cp b
    ld d, h
    cp a
    pop bc
    ld [hl], e
    ld [hl+], a
    jr c, @-$7a

    ld b, b
    ld b, a
    ld h, d
    ei
    call nz, $0a0a
    ld c, d
    jr c, jr_02d_5428

    ccf
    jp $bde0


    ld e, l
    ld a, l
    add e
    add $e3
    add c
    ld b, c
    rst $38
    add c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr nc, @-$3e

    pop hl
    cp a
    and l
    nop
    ld e, d
    di
    ld bc, $0d4b
    push bc
    jp nz, $83c5

    ld b, d
    cp l
    ld b, b
    dec hl
    db $fd
    jp nz, $72c0

    ld [hl], e
    jr nc, jr_02d_5433

    pop bc
    ld c, e
    ld b, l
    db $e3
    ld b, b
    db $fc
    and c
    ld a, l
    ld b, c
    or h
    jp nz, $81be

    add b
    ld a, e
    cp a
    and l
    dec c
    ret nz

    add sp, $60
    ccf
    jp nz, $e3c1

    add c
    add a
    add b
    reti


    ld [hl-], a
    ld [bc], a
    ld c, e
    dec hl
    ccf
    ld [c], a
    ld [bc], a
    ret nz

    rst $20
    dec c
    pop bc
    add l
    nop
    ld e, a
    db $dd
    jp nz, $600e

    rst $00
    and e
    inc bc
    pop bc
    ld de, $804b

jr_02d_5428:
    ld b, b
    add e
    or a
    cp l
    ld c, l
    ld c, l
    ld d, $a1
    ld c, $60
    add l

jr_02d_5433:
    ld h, d
    ld h, b
    db $fc
    ld h, d
    ld b, c
    add d
    and h
    add hl, hl
    add b
    jp c, $807b

    ld c, l
    dec l
    adc l
    ld b, b
    add d
    ret nz

    db $e4
    ld l, e
    ld a, [hl-]
    and e
    ret nz

    jr nz, @+$01

    ret z

    cp l
    ld e, c
    sbc b
    ld [hl+], a
    ld l, e
    nop
    dec c
    jp nz, $a23c

    cp e
    call nz, $023c
    nop
    ld e, h
    dec a
    add [hl]
    rst $38
    and b
    ld a, a
    add h
    jr nz, @-$3c

    nop
    ccf
    db $e4
    and e
    push bc
    nop
    cp l
    cp e
    ld bc, $096d
    ld b, b
    ld [$01c4], sp
    dec hl
    ld [hl-], a
    ret nz

    ld a, b
    ld b, c
    cp a
    ld b, h
    nop
    cp l
    ld b, b
    push bc
    ret


    and e
    ld a, [hl-]
    add b
    ld e, $81
    ld bc, $4b4b
    inc c
    inc l
    ld a, [hl]
    inc bc
    nop
    cp h
    cp $05
    ld e, b
    jp z, Jump_02d_4743

    pop bc
    rst $38
    ld hl, $6b6b
    or d
    nop
    inc c
    add b
    ld a, h
    nop
    ld a, l
    add sp, -$01
    add b
    adc d
    ld bc, $42bf
    push af
    ld bc, $236f
    db $fd
    ld [hl+], a
    cp l
    cp a
    ret nc

    jr c, jr_02d_5513

    ret nz

    pop hl
    add h
    add b
    ld a, d
    ld h, e
    ld l, h
    or h
    ld bc, $4c6c
    add a
    ld l, h
    dec c
    ld l, l
    cp a
    rst $00
    nop
    or h
    cp [hl]
    ld b, h
    dec d
    pop hl
    dec c
    ld [$8243], sp
    ld sp, hl
    ld h, c
    add b
    ld [c], a
    ld c, h
    ld a, $a3
    ld bc, $0064
    ld d, [hl]
    ld a, [hl]
    ld b, [hl]
    inc b
    ld c, l
    and b
    add hl, bc
    ld b, e
    ld l, e
    ret nz

    ldh [$36], a
    ld bc, $80ff
    and h
    and c
    ld b, e
    sbc l
    ld c, $ed
    inc b
    ld c, l
    dec l
    ld l, e
    ret


jr_02d_54f1:
    ld [hl+], a
    add $c1
    or d
    ld [bc], a
    inc bc
    ld [c], a
    nop
    pop hl
    ld hl, $be00
    cp a
    and [hl]
    ld c, e

Jump_02d_5500:
    ld b, b
    ld a, d
    jr nz, jr_02d_5538

    inc b
    add c
    and d
    cp [hl]
    and c
    nop
    add hl, de
    ld b, c
    add b
    ld a, c
    db $fd
    ld h, [hl]
    adc l
    ld h, c
    pop bc

jr_02d_5513:
    and $83
    jp $e4c0


    cp l
    ld e, d
    ld [hl+], a
    db $fd
    ld [bc], a
    ld c, l
    ld a, a
    and b
    res 4, c
    pop bc
    and $2c
    ret nz

    add b
    ld hl, $d042
    sbc d
    inc hl
    nop
    cp b
    cp [hl]
    ld b, l
    jp nz, $6c21

    ld b, b
    db $e4
    inc l
    inc l
    add b

jr_02d_5538:
    di
    nop
    ret nz

    inc bc
    cp $c3
    add b
    db $76
    sbc [hl]
    pop hl
    sbc h
    ld b, e
    ld b, d
    ld hl, $0b6c
    ld c, h
    ld c, h
    jp nz, Jump_02d_4cc3

    ret nz

    rst $20
    add b
    sbc $3c
    inc b
    ld bc, $8623
    cp a
    ld [c], a
    ld l, h
    ld l, h
    pop bc
    ld b, l
    ret nz

    ld a, [c]
    cp l
    ld c, c
    ld e, $e3
    ld c, l
    inc c
    nop
    jr nz, jr_02d_54f1

    ld b, h
    ld c, h
    ld l, h
    add [hl]
    and b
    ld a, [$4261]
    ld hl, $e100
    nop
    dec e
    db $e4
    nop
    or [hl]
    ld a, c
    and e
    ret z

    ld hl, $4304
    ld b, d
    ld b, l
    ld b, d
    and c
    ret nz

    db $e3
    inc b
    dec a
    ei
    add hl, sp
    ld b, d
    ld l, l
    call z, $0204
    ld b, d
    ei
    ld hl, $202d
    pop bc
    ld h, e
    nop
    ret nz

    db $ed
    nop
    ld c, e

jr_02d_5598:
    ld b, c
    add [hl]
    adc a
    jr nz, @+$01

    ld [$a342], a
    ld bc, $00c6
    or l
    ld [$a4a0], sp
    ld c, h
    ld [bc], a
    db $fc
    ret nz

    dec l
    db $fc
    push hl
    push af
    ldh [$e9], a
    pop bc
    pop hl
    and e
    adc b
    ld b, e
    ei
    ld b, d
    ld [bc], a
    add b
    xor $0b

jr_02d_55bc:
    add c
    ld b, b
    inc bc
    sub l
    add b
    ld c, $4d
    nop
    sub b
    ldh [$80], a
    ld h, c
    dec a
    add sp, -$40
    inc h
    add c
    add d
    add b
    rra
    cp a
    ldh [$3b], a
    pop hl
    jr nz, jr_02d_5598

    jp $e3f9


    add b
    dec h
    cp $fd
    ld a, $42
    ld c, l
    cp a
    pop hl
    ld b, e
    rst $00
    and b
    cp a
    jp Jump_000_33c8


    nop
    ld c, l
    cp $a6
    jr nc, jr_02d_560f

    dec l
    ld a, h
    ld b, d
    dec hl
    nop
    adc $42
    inc b
    ld h, e
    jp nz, $80a2

    jr jr_02d_55bc

    dec b
    ret c

    and e
    ld a, d
    ld h, b
    add [hl]
    inc bc
    ld b, b
    di
    ld [c], a
    ret nz

Call_02d_5608:
    db $e4
    add b
    ld a, [hl]
    inc a
    add h
    dec d
    add d

jr_02d_560f:
    ret nz

    ld hl, $c02d
    ldh [rP1], a
    xor h
    add sp, -$80
    ld a, a
    add hl, sp
    ld b, $c0
    push hl
    adc c
    ld b, [hl]
    call c, Call_000_0084
    xor c
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
    ld [bc], a
    ld a, [$0ff9]
    rst $38
    and $e0
    rst $38
    ldh [$f4], a
    reti


    push hl
    ret nz

    db $f4
    ret c

    ld [$e000], a
    rst $38
    and b
    ld a, [c]
    ld e, a
    rst $30
    ld b, [hl]
    db $e3
    ld b, b
    db $ec
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
    jr @+$01

    rst $38
    rst $38
    rst $38
    ld a, [$11f9]
    ld de, $ffdc
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $f6
    push af
    inc de
    inc de
    call c, Call_000_00ec
    nop
    nop
    nop
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld b, $02
    nop
    rrca
    ld [$0002], sp
    rrca
    ld b, $02
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    rst $38
    nop
    ld a, [bc]
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $28
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $ff
    ld bc, $0337
    ld de, $3a1e
    inc bc
    ld de, $ff1e
    ld [bc], a
    dec a
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $3f
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $ff
    ld bc, $d5fe
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, @-$0f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    ld a, [$e0e5]
    add b
    ld [$00e4], a
    nop
    rla
    nop
    ld bc, $d612
    ld [c], a
    ld d, b
    rst $08
    ldh [$e6], a
    pop hl
    ld [$e2da], a
    db $fd
    db $e3
    and $e1
    ld d, a
    cpl
    nop
    inc bc
    ret nz

    ld [c], a
    and b
    xor a
    ldh [$64], a
    xor e
    ldh [$c7], a
    call nc, Call_000_2000
    ret nz

    ld [c], a
    jp z, $9ce1

    pop hl
    ld e, a
    nop
    ld d, l
    ld b, $96
    ld [c], a
    ld b, b
    adc a
    ldh [$b2], a
    adc e
    ldh [$a8], a
    or $e2
    sbc h
    and h
    db $e3
    ld a, h
    pop hl
    cp a
    nop
    inc c
    add b
    ld [c], a
    adc [hl]
    pop hl
    ld e, c
    ld a, [$e06b]
    ld d, b
    add h
    ld [c], a
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    rst $38
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    cp a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    db $ed
    ldh a, [$f8]
    push hl
    jr nz, @-$3e

    ld [hl], c
    db $e3
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    rst $38
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rst $38
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $07ff
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $28
    rst $38
    add c
    inc a
    db $10
    ld b, h
    and $20
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$c0e3], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$83], a
    db $f4
    rst $38
    ld a, b
    ldh [$cb], a
    jp $c5e2


    ldh a, [$e0]
    rst $28
    ld [$f1c0], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    db $ec
    rst $38
    ld sp, hl
    cp $7f
    and $f8
    ld c, b
    ldh a, [$d0]
    ldh [$a8], a
    ld [hl], d
    ldh [$fb], a

jr_02d_583f:
    ld b, b
    add b
    db $10
    rst $20
    jp hl


    cp $8e
    ldh a, [$30]
    pop af
    ret nz

    ld hl, sp-$1b
    ld h, d
    pop bc
    db $10
    push hl
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rst $30
    rla
    rrca
    ld [de], a
    inc d
    ldh [$09], a
    rlca
    rla
    inc bc
    rst $38
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    rst $30
    jp Jump_000_3c3c


    sbc d
    add $00
    nop
    ld b, b
    add b
    rst $18
    ret nz

    add b
    jr nz, jr_02d_583f

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_02d_64e1

    pop bc
    xor b
    ldh a, [$ea]
    ldh a, [$df]
    db $f4
    ld hl, sp-$2c
    ld hl, sp-$0c
    inc d
    ldh [$b8], a
    ldh a, [$fb]
    add sp, -$10
    db $10
    jp hl


    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$fc3b], a
    ld sp, hl
    ld hl, sp-$20
    db $f4
    rst $38

jr_02d_58b5:
    ld c, b
    ld [hl+], a
    db $eb
    and b
    ldh [$f0], a
    call z, $fba3
    push bc
    pop af
    call $cbe3
    nop
    nop
    db $ed
    cp $ff
    cp $f8
    add sp, -$10
    ld d, d
    ldh [$e8], a
    ret nz

    rst $20
    ret nz

    add b
    ld d, b
    sub $c0
    jr nz, @-$39

    cp l
    cp $ee
    jp $b1f0


    ld a, [de]
    ldh [$f8], a
    push hl
    or d
    and c
    ld d, h
    and c
    rst $38
    ld a, a
    rst $30
    xor a
    ld a, a
    ld a, a
    inc d
    ldh [$b7], a
    rra
    ccf
    rra
    ld a, a

jr_02d_58f3:
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    inc d
    ld [c], a
    rst $38
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    sub l
    rst $18
    ld [de], a
    ldh [rSCY], a
    sub b
    ld [$0ca0], a
    ld [c], a
    cp $e1
    and b
    ld [hl], h
    jr nc, jr_02d_58b5

    jr nz, @-$3b

    ei
    jp c, $b0e6

    ldh [$f4], a
    rra
    ret nz

    rst $30
    ret c

    ldh a, [$f8]
    inc d
    ldh [$b4], a
    ldh [$f0], a
    ldh [$fa], a
    jr nz, jr_02d_58f3

    ei
    ld [de], a
    ldh [$91], a
    nop
    db $fd
    cp $f6
    rst $38
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    ld b, $f8
    ldh [$f5], a
    cp $78
    push hl
    inc l
    push af
    nop
    and c
    xor $cc
    pop af
    xor d
    rst $38
    ld [bc], a
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $a1ff


    jp $8300


    dec b
    add e
    ld b, b
    add c
    di
    ld b, c
    add b
    ldh [$a0], a
    ld [hl], b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [rIE]
    pop af
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $fd
    ld [de], a
    ld [hl], h
    add d
    ld c, b
    nop
    ld bc, $5878
    rst $38
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $85ff


    jp $8304


    ld b, c
    add e
    ld [bc], a
    add c
    or $6d
    add b
    add b
    and b
    ld c, h
    and b
    ret nc

    ldh [$64], a

jr_02d_5998:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_02d_5998

    nop
    add d
    ret nc

    ldh [$a0], a
    xor c
    ld [bc], a
    ld bc, $0300
    nop
    ld [hl], c
    xor c
    pop af
    ldh [$60], a
    add sp, $30
    add e
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
    ccf
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_02d_5a28

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    sub e
    add hl, hl
    rra
    ld d, e
    ld [$6003], a
    ld [bc], a
    rst $38
    ld a, a
    ld a, [c]
    inc bc
    db $ec
    inc bc
    ld h, b
    ld [bc], a
    and b
    ld a, l
    rst $38

jr_02d_5a28:
    ld a, a
    rrc h
    ld h, b
    ld [bc], a
    dec sp
    ld l, e
    ld [$6003], a
    ld [bc], a
    nop
    dec c
    sub h
    ld bc, $2bff
    ld h, b
    ld [bc], a
    nop
    dec c
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_02d_5a44:
    dec h
    push de
    nop
    rst $38

jr_02d_5a48:
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, jr_02d_5a44

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $fc
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    cp $c2
    ld hl, sp-$78
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ldh [$fd], a
    rst $38
    ld_long a, $ffff
    call c, $e0ff
    rst $38
    add c
    cp $08
    db $ed
    ldh a, [$f8]
    push hl
    jr nz, jr_02d_5a48

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rst $38
    rla
    ld a, a
    dec bc
    ld a, a
    ld b, a
    ccf
    rlca
    rra
    rst $38
    inc bc
    rra
    ld [de], a
    rrca
    ld bc, $090f
    rlca
    rst $38
    ld bc, $0007
    rlca
    inc b
    inc bc
    jr @+$01

    rra
    nop
    rst $38
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [$c8], a
    ldh [rIE], a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [rP1], a
    ld a, d
    and d

Jump_02d_5ac8:
    ldh [rNR41], a
    and b
    ldh [$7b], a
    rst $38
    rst $30
    rst $38
    jp c, $fde3

    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$20
    db $fc
    rst $38
    ldh a, [$fc]
    jp nc, $a0fc

    db $fc
    ldh [$f8], a
    ei
    db $e4
    ld hl, sp-$80
    pop hl
    rst $38
    rst $38
    rst $18
    rst $38
    cp l
    ei
    rst $38
    jp $e0b6


    nop
    rst $20
    db $fc
    rst $38
    db $f4
    sbc a
    rst $38
    add sp, -$01
    ld hl, sp-$02
    cp $e0
    or $e0
    db $fc
    add l
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$f1c0], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    pop bc
    rst $38
    nop
    pop bc
    add l
    jp $c3a1


    nop
    add e
    cp a
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [$c0], a
    rst $38
    and b
    ret nz

    ld b, b
    ldh [$e8], a
    ldh a, [$d1]
    db $fc
    ld a, a
    db $ec
    rst $38
    ld a, [de]
    rst $38
    add b
    ld e, $12
    call nc, $bfc2
    ld c, b
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    ld [bc], a
    rst $38
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b
    nop
    ccf
    jr nz, jr_02d_5b5a

jr_02d_5b5a:
    db $10
    ld [$0400], sp
    or d
    ret nz

    and d
    pop bc
    ldh [$f0], a
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $c33c


    pop af
    inc a
    db $fd
    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    call c, Call_000_1eff
    pop af
    inc a
    db $e3
    ld a, h
    jp $c37c


    rst $38
    db $e3
    sbc h
    jp $18bc


    rst $20
    inc a
    jp Jump_000_3dff


    jp nz, $e719

    rla
    xor $5f
    cp b
    rst $38
    ld a, a
    ldh [$f3], a
    adc h
    dec de
    rst $20
    rra
    db $fc
    rst $38
    ld a, [hl]
    pop hl
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    cp $c4
    pop hl
    sbc b
    rst $20
    db $fc
    ld b, e
    call c, $f863
    rst $38
    daa
    ld l, b
    or a
    ld a, h
    sub e
    db $f4
    dec de
    ld hl, sp-$01
    rrca
    ld hl, sp+$0f
    sbc $25
    inc a
    rst $00
    ld a, $ff
    jp $c23f


    ld a, $c3
    rst $00
    add hl, sp
    jp Jump_000_3d7f


    db $d3
    rst $38
    rst $10
    jr z, @+$01

    nop
    and b
    rst $20
    rst $38
    db $e3
    sbc h
    db $e3
    sbc h
    ld a, h
    add e
    inc a
    jp $fcf1


    db $fc
    ldh [$f4], a
    pop hl
    and b
    pop hl
    jr @+$01

    db $db
    rst $20
    rst $28
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    ccf
    ret nc

    rst $38
    inc c
    di
    inc a
    db $e3
    inc a
    db $e3
    inc c
    di
    rst $38
    ccf
    ret nc

    dec de
    db $f4
    xor e
    rst $38
    ld e, a
    db $fc
    rst $18
    cp [hl]
    pop af
    ld a, h
    db $e3
    db $fc
    ld [hl], b
    db $e4
    rst $38
    rst $38
    rst $38
    jp c, $f5ff

    rst $38
    xor e
    rst $38
    ld d, a
    cp $77
    cp a
    ld hl, sp-$01
    ld [hl], b
    ldh [$57], a
    rst $38
    cp a
    ld [hl], b
    ld [$efff], a
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $30
    ccf
    rst $38
    ld l, e
    cp a
    ld [hl], l
    sbc a
    ei
    rra
    db $fd
    rrca
    rst $38
    ld a, [$dd0f]
    daa
    ld a, $c7
    ccf
    jp Jump_02d_6ebc


    ldh [rSVBK], a
    ld [c], a
    rst $10
    rst $38
    ei
    inc a
    ld [hl], b
    xor $c3
    ld a, [$e1a2]
    cp h
    ld [hl], b
    ld [c], a
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, l
    ld sp, hl
    rst $38
    and e
    and c
    ldh a, [$c3]
    cp e
    db $f4
    ld e, e
    db $f4
    cp h
    rst $20
    db $e3
    ld a, h
    db $e3
    db $fc
    pop hl
    db $f4
    pop hl
    rst $38
    add c
    rst $38
    ld [hl], a
    rst $20
    cp [hl]
    rst $38
    jp c, $f7e1

    rst $38
    db $dd
    di
    add b
    ei
    rst $10
    rst $38
    sub d
    ldh [$7f], a
    db $eb
    ccf
    rst $30
    ccf
    ccf
    db $ed
    ld a, a
    rst $10
    ld a, a
    rst $28
    rst $38
    ret nc

    pop bc
    ld l, $e0
    db $fd
    rst $20
    ld hl, sp-$1b
    rst $10
    rst $38
    xor h
    rst $38
    ld d, h
    ei
    rst $18
    xor b
    rst $30
    ld e, b
    rst $20
    db $fc
    sbc [hl]
    ldh [$98], a
    rst $20
    cp $40
    push hl
    ld d, [hl]
    rst $38
    cp b
    rst $38
    db $e4
    ei
    sbc b
    ccf
    rst $20
    ld d, a
    rst $38
    cp h
    rst $38
    ld h, h
    ld hl, sp-$20
    ret z

    push hl
    rst $38
    rst $28
    rst $38
    ld d, a
    rst $38
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    dec sp
    rst $18
    dec c
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $20
    ld a, a
    ld a, [de]
    rst $20
    ccf
    jp $c33d


    add hl, de
    or b
    ldh [$ef], a
    jr c, @+$01

    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    cp h
    adc [hl]
    ld d, [hl]
    ret nz

    ret c

    rst $20
    ld e, b
    ld hl, sp-$20
    and b
    pop hl
    ld b, b
    db $e3
    jp Jump_02d_78fa


    and $b0
    add d
    ldh [$a4], a
    ei
    ld l, b
    rst $30
    xor b
    cp a

Call_02d_5d00:
    rst $30
    ld h, h
    ei
    or h
    ei
    ld d, b
    ld b, c
    pop hl
    rst $38
    xor [hl]
    ld b, b
    db $eb
    ld l, l
    rst $38
    ld [hl], a
    sub d
    ldh [$37], a
    adc d
    ldh [$57], a
    ld d, e
    rst $38
    rst $28
    and c
    add e
    xor $e0
    db $dd
    ld hl, sp-$40
    ld d, l
    inc de
    add b
    push bc
    xor a
    sub h
    add b
    or a
    sub b
    add b
    ld hl, sp-$1b
    rst $38
    push hl
    xor $ff
    ld e, l
    cp e
    ld a, [$bfc2]
    rst $38
    ld l, a
    db $fc
    ldh [$5f], a
    ld hl, sp-$1a
    adc d
    ld h, b
    add e
    cp a
    reti


    ld h, b
    ld e, a
    ret z

    ldh [$f0], a
    push hl
    ld sp, hl
    rst $20
    xor c
    rst $38
    rst $38
    ld d, h
    db $fc
    add c
    ldh a, [rDMA]
    ldh [$8b], a
    rst $38
    ret nz

    ld d, a

Jump_02d_5d55:
    ret nz

    rra
    add b
    xor a
    add b
    rst $30
    cp $36
    add b
    ld [$54ff], a
    rst $38
    and b
    db $fc
    ld b, c
    rst $38
    ldh a, [$0a]
    ret nz

    rla
    nop
    xor b
    cp $41
    rst $38
    ld hl, sp-$7e
    ldh [$15], a
    add b
    cpl
    nop
    ld e, a
    cp $21
    add b
    rst $38
    nop
    add sp, -$02
    or h
    cp $e8
    rst $38
    db $fc
    pop de
    db $fc
    ld h, d
    ld hl, sp-$2f
    ld hl, sp-$5d
    rst $38
    ldh a, [$c5]
    ldh a, [$a3]
    ldh a, [rBGP]
    ldh [$8b], a
    rst $28
    ldh [rNR22], a
    ret nz

    adc a
    jp nz, Jump_000_2fe0

    add b
    ld e, a
    rst $38
    nop
    sub c
    rst $38
    inc h
    inc a

jr_02d_5da3:
    add l
    nop
    ld e, d
    ei
    nop
    xor l
    jp nc, $ffe2

    nop
    xor a
    add b
    rla
    rst $38
    add b
    ld l, a
    ret nz

    rra
    ret nz

    sub a
    ret nz

    ld c, a
    di
    ret nz

    rla
    and b
    ldh [$30], a
    pop bc
    ld b, c
    rst $38
    nop
    jp $28df


    nop
    ld d, l
    nop
    cp d
    rst $08
    ld h, b
    ld b, e
    ldh a, [rIE]
    and l
    ldh a, [rWX]
    ldh [$87], a
    ldh [rWX], a
    ldh [$d3], a
    add l
    ldh [$f4], a
    pop hl
    jr nc, jr_02d_5e3f

    rst $28
    jr nc, jr_02d_5da3

    ld b, c
    rst $38
    rst $38
    inc h
    rst $20
    sub l
    add c
    push af
    rst $38
    add sp, -$02
    db $fd
    di
    adc [hl]
    ld [c], a
    ld [$f4fe], a
    cp $e9
    rst $38
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    rst $38
    ld c, a
    ldh [$87], a
    ldh a, [rHDMA5]
    db $fc
    xor c
    rst $38
    rst $38
    ccf
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    sbc a
    call nc, Call_02d_7aff
    rst $38
    db $ed
    di
    ld b, c
    adc b
    db $e4
    ccf
    rst $38
    nop
    rlca
    ret nz

    ld b, c
    ld hl, sp-$58
    cp $e3
    rst $38
    rrca
    push hl
    rrca
    rr a
    rst $00
    rra
    adc l
    rst $38
    ccf
    sub a
    ccf
    cpl
    ld a, a
    dec de
    ld a, a
    cp $ff
    nop
    db $fc
    ld bc, $01fc
    ld sp, hl
    inc bc

jr_02d_5e3f:
    ld hl, sp+$7f
    inc bc
    ld sp, hl
    inc bc
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    cp [hl]
    ld b, e
    ld h, c
    and l
    nop
    add c
    rst $38
    rst $38
    ld [c], a

jr_02d_5e53:
    ldh [$fe], a
    db $ec
    sbc $e0
    ld_long a, $ffe3
    ld bc, $e33a
    inc a
    nop
    nop
    db $db
    rst $20
    and d
    sbc d
    and b
    db $eb
    rst $38
    or b
    pop hl
    ld a, [c]
    rrca
    cp a
    pop af
    rlca
    ld a, [c]
    rlca

jr_02d_5e71:
    push af
    rrca
    and h
    pop hl
    inc a
    rst $08
    nop
    inc h
    rst $20
    add d
    add b
    and h
    ld [hl], h
    ld b, c
    rla
    ld a, a
    push de
    cpl
    adc b
    and b
    adc e
    sub d
    ldh [$cf], a
    adc [hl]
    ld b, b
    cpl
    ld a, a
    ld [hl], l
    xor b
    jr jr_02d_5e71

    cp $9c
    add sp, -$41
    nop
    ld a, a
    db $fc
    and $55
    ccf
    xor h
    ret nz

    ld [$c0f8], sp
    ld l, $ec
    ld [c], a
    ld e, a
    ldh a, [$e2]
    ld [c], a
    db $ec
    pop hl
    cp a
    ld l, h
    add sp, -$0a
    db $ed
    jr nc, jr_02d_5e53

    dec de
    db $e4
    dec d
    rst $38
    xor $2d
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    cp a
    xor d
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    rst $38
    ld [bc], a
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    rst $38
    ld a, [bc]
    adc e
    jr nz, jr_02d_5ef6

    nop
    db $dd
    nop
    cp l
    db $fd
    ld b, d
    ld [$16a1], sp
    xor c
    add sp, $03
    add l
    ld [hl+], a
    rst $38
    ld a, [hl+]
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    rst $30
    add hl, de

jr_02d_5eed:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    rst $38

jr_02d_5ef6:
    ld [$ccf7], sp
    ei
    sub b
    ld l, a
    ld a, [hl+]
    rst $38
    rst $38
    rra
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    rst $28
    ld hl, sp+$07
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, Call_000_3fff
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    db $fd
    jp $e1d0


    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_02d_5eed

    rst $38
    ld d, d
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    rst $38
    ld a, [de]
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    rst $38
    ld l, l
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    rst $38
    ld c, [hl]
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    rst $38
    ld d, a
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    cp l
    dec hl
    sub b
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    rst $38
    call nz, $b4f3
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    rst $18
    ld a, [hl-]
    rst $18

jr_02d_5f68:
    ld c, l
    rst $38
    or h
    ld h, b
    ret nz

    xor b
    rst $38
    ld a, l
    ld [hl], h
    cp d
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    ld [hl], b
    add [hl]
    ld a, a
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]
    inc e
    add b
    db $fd
    xor [hl]
    ld a, [hl-]
    add b
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    db $fd
    rst $10
    ld [hl], a
    ei
    and d
    adc d
    add b
    dec c
    add [hl]
    add b
    ld a, [bc]
    rst $38
    ld a, a
    ld h, a
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    sbc $e0
    db $fd
    cp $9a
    ld h, b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    sbc e
    db $dd

jr_02d_5fae:
    ld [hl+], a
    ld l, h
    jr nz, jr_02d_5f68

    rst $38
    ld e, [hl]
    ld c, $a0
    sbc $ff
    ld a, a
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp a
    ld d, a
    ld [hl], b
    ldh [$f7], a
    ld l, l
    cp a
    ld e, $70
    ldh [rHDMA2], a
    db $fd
    xor $f9
    rst $38
    ld c, c
    or $a7
    ld hl, sp+$47
    ldh a, [$b4]
    ret


    rst $38
    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rra
    ld c, d
    cp a
    rst $38
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    ld [c], a
    jr c, jr_02d_5fae

    cp $00
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp $01
    xor b
    rst $30
    rlca
    ld a, b
    add a
    db $10

jr_02d_5ff6:
    db $e3
    and c
    ld e, $8c
    ld a, d
    rst $38
    ld d, a
    xor b
    jr c, @-$3c

    dec c
    ldh a, [$3d]
    jp nz, $d8fe

    ld h, c
    cpl
    sub b

Jump_02d_6009:
    ld sp, hl
    nop
    adc d
    ld hl, $9f28
    rlca
    ret c

    rlca
    cp h
    ld b, e
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    rst $38
    db $fd
    ld bc, $0dfe
    ldh a, [rSC]
    db $fd
    ld a, [hl+]
    rst $38
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    ld e, a
    add b
    xor c
    rst $38
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    ldh [$1f], a
    add b
    rst $38
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    sbc a
    jr nz, jr_02d_5ff6

    rst $30
    ld [bc], a
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    or l
    db $f4
    dec bc
    rst $38
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    add b
    inc c
    di
    ld d, a
    rlca
    ld hl, sp+$01
    dec b
    ret nz

    add b
    sbc [hl]
    nop
    and b
    sbc d
    nop
    ei
    ld l, b
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    nop
    ld l, $39
    pop de
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $90
    call nz, $e3d0
    rst $38
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    ld e, d
    and c
    push af
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b
    ret nz

    ld d, l
    cp a
    adc [hl]
    ld a, a
    cp $90
    jp z, Jump_02d_5ac8

    and c
    inc a
    jp $ae53


    sbc a
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    ld l, e
    add c
    ret nz

    rst $38
    ccf
    ld b, b
    cp a
    ld b, b
    rst $38
    or b
    rst $28
    call z, $f3ef
    and h
    ei
    dec d
    cp h
    ret nz

    dec b
    rst $38
    ld [bc], a
    ld [$a629], a
    ld d, e
    or b
    ret nz

    ld [hl], l

jr_02d_60b6:
    or b
    ret z

    ld [hl], a
    adc b
    call z, $b0ea
    jp z, $b037

    call z, $b04e
    adc $ae

jr_02d_60c5:
    ld sp, hl
    ld a, c
    or $b0
    ret z

    cp a
    ld e, a
    or b
    jp $e21d


    ld [$fef7], sp
    jr nz, jr_02d_60b6

    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    add c
    add sp, -$12
    jr nc, jr_02d_60c5

    ld h, c
    ld e, $95
    or b
    ret nz

    add hl, sp
    jp nz, $fd0f

    ldh a, [rIE]
    ld h, e
    ld d, a
    xor b
    ei
    nop
    sbc [hl]
    ld hl, $a8ef
    rlca
    ld [hl], b
    adc a
    rst $28
    ld h, e
    inc c
    rst $30
    reti


    rst $38
    ld l, a
    ld [$63ff], sp
    cp l
    sub $6b
    ld l, d
    rst $38
    rst $18

Call_02d_6106:
    jr nc, @-$1f

    ld d, e

jr_02d_6109:
    db $fd
    nop
    rst $38
    ld e, l
    rst $38
    rst $20
    ld [$40ff], sp
    cp a
    ld l, h
    or a
    ld c, b
    ld a, [hl]
    call c, Call_02d_40c0
    rst $38
    inc b
    ei
    ld e, d
    and l
    dec sp
    add b
    cp $41
    nop
    rst $38
    rst $38
    ld e, d

jr_02d_6127:
    and l
    jr nz, jr_02d_6109

    inc h
    rst $38
    rst $20
    ld h, [hl]

jr_02d_612e:
    and l
    dec h
    and $66
    and l
    ld h, [hl]
    cp a
    and l
    and h
    ld h, a
    ld h, [hl]
    and l
    inc h
    ld [hl], b
    ret nz

    ld bc, $feff
    dec b
    ei
    ld e, $e6
    jr jr_02d_612e

    jr nc, jr_02d_6127

    ret nc

    ld de, $63f3
    and d
    cp d
    ld h, c
    ld d, l
    nop
    ld e, a
    xor e
    nop
    ld e, l
    nop
    ld [$60ae], a
    xor [hl]
    xor d
    ld h, b
    rst $18
    adc d
    nop
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    nop
    rst $18
    dec d

jr_02d_6168:
    nop
    xor b
    nop
    ld d, c
    sbc [hl]
    add b
    ld [hl+], a
    nop
    ld a, a
    sub h
    nop
    add hl, hl
    nop
    ld b, h
    nop
    db $10
    db $e4
    ldh [$75], a
    nop
    ld [hl], e
    nop
    ld bc, $0094
    jr nz, jr_02d_6183

jr_02d_6183:
    add b
    adc [hl]
    nop
    xor $ff
    ldh a, [rNR23]
    inc a
    ld a, [hl]
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    rst $28
    ld a, b
    db $fc
    inc a
    ld a, [hl]
    rlca
    add b
    ld [$3e1c], sp
    rst $38
    ld a, $3e
    ld [hl], $7f
    ld h, $7f
    inc b
    ld l, $ef
    nop
    inc c
    nop
    nop
    and d
    ret nz

    cp $2b
    db $fc
    rst $38
    dec c
    ld a, [$fd32]
    ld d, l
    ld [$d7a8], a
    rst $38
    db $f4
    adc e
    rst $20
    rst $38
    jp c, $f53d

    ld a, [bc]
    rst $18
    xor d
    ld d, l
    ld b, c
    cp [hl]
    inc d
    jr nz, jr_02d_6168

    ld [hl], l
    rst $38
    rst $38
    sub l
    db $eb
    dec bc
    push af
    and l
    ei
    ld c, d
    rst $30
    rst $38
    and [hl]
    ei
    call $97f3
    jp hl


    ld c, a
    pop af
    cp $40
    ld h, b
    rst $38
    ld a, [c]
    db $fd
    xor c
    cp $52
    db $fd
    rst $38
    add c
    cp $2a
    push de
    sub l
    db $eb
    rst $18
    sbc c
    rst $38

jr_02d_61f0:
    sbc a
    ld c, l
    daa
    rla
    and e
    di
    db $db
    pop hl
    rst $38
    xor $f1
    or h

Call_02d_61fc:
    ei
    ld b, c
    rst $38
    rst $18
    sbc a
    rst $38
    sbc h
    ld c, a
    ld h, $17
    and d
    di
    jp c, $ffe1

    xor $71
    db $f4
    dec sp
    ld sp, hl
    rst $38
    rst $20
    jr @+$01

    jp $e724


    inc h
    rst $38
    inc a
    db $db
    inc a
    ei
    rst $20
    jr jr_02d_61f0

    ld h, c
    ld h, a
    sbc d
    call nz, $0b8a
    rst $38
    ret nz

    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    rst $38
    sub c
    adc e
    ld h, b
    ld d, $a9
    pop hl

jr_02d_6236:
    dec bc
    adc d
    rst $38
    daa
    daa
    rrca
    xor l
    rra
    sub $3f
    ld a, l
    db $fc
    db $76
    add b
    jr nz, jr_02d_626d

    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf
    rst $38
    jr jr_02d_6236

    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rrca
    rst $38
    ei
    nop
    inc e
    inc bc
    cp a

jr_02d_625b:
    nop
    sbc c
    ld h, [hl]
    ld a, $d0
    ld h, c
    dec a
    jp nz, $e718

    add hl, de
    ld hl, sp+$04
    db $10
    add c
    rst $00
    ld d, [hl]
    xor c

jr_02d_626d:
    ld [hl+], a

Jump_02d_626e:
    ld d, [hl]
    ldh [$90], a

jr_02d_6271:
    add e
    add b

jr_02d_6273:
    and e
    ld de, $ffef
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    cp $e0
    ld h, l
    jr z, jr_02d_625b

    ld b, h
    ei
    or h
    rst $38
    ret nc

    cp $62
    nop
    rst $10

jr_02d_628d:
    ld d, [hl]
    rst $20
    and l
    or a
    db $ed
    db $fd
    ld a, a

jr_02d_6294:
    rst $28
    db $eb
    cp a
    rst $38
    ld a, [hl-]
    rst $28
    jr c, jr_02d_62ad

    jr nz, jr_02d_628d

    jr z, @+$01

    jr c, jr_02d_6271

    db $fc
    pop hl
    ld l, $ef
    ccf
    cp a
    rst $38
    ld e, $38
    rst $38
    ld d, [hl]

jr_02d_62ad:
    rst $10
    ldh [$e3], a
    xor e
    ld e, e

jr_02d_62b2:
    rst $38
    ld a, [hl-]
    push hl
    pop hl
    rst $38
    jr c, jr_02d_6294

    ldh [$28], a
    rst $10
    ldh [$fe], a
    pop hl
    ld [c], a
    rst $38
    rst $18
    jr c, jr_02d_6273

    ld e, [hl]
    bit 4, [hl]
    rst $38
    ld e, a
    and a
    and c
    sbc a
    xor e
    rst $10
    rst $38
    ld a, [hl]
    rst $38
    ret c

    cpl
    jr c, @+$01

    ld l, [hl]
    rst $18
    ld a, [bc]
    rst $20
    db $fd
    rst $18
    ldh a, [$e2]
    ld a, [hl]
    rst $38
    ccf
    rst $28
    jr nz, jr_02d_62b2

    rst $38
    or [hl]
    dec hl
    db $ed
    cp d
    dec sp
    rst $18
    db $76
    rst $18
    rst $18
    ld d, h
    rst $38
    ld e, l
    rst $38
    ld a, [hl+]
    ld [hl], b
    ldh [$de], a
    ld a, a
    rst $10
    add hl, hl
    cp $55
    db $ec
    nop
    ld [hl], l
    add $00
    ret nz

    rst $38
    ld c, e
    sbc b
    ld h, a
    ld d, b
    ld h, c

Call_02d_6306:
    ld e, b
    ld b, b
    ld b, $00
    ld l, e
    dec hl
    ld b, b
    ld l, b
    rst $38
    inc a
    inc bc
    add h
    ld [hl], e
    or h
    db $eb
    inc hl
    call z, $b0fe
    pop hl
    ld a, [hl-]
    rst $18
    rst $30
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    rst $30
    ld a, a
    ei
    ld l, $e0
    push bc
    dec de
    rst $20
    ccf
    call nz, Call_000_3fff
    ret z

    rra
    add sp, -$01
    rst $38
    ld a, [$fdff]
    push de
    ld e, $20
    rst $10
    rst $38
    xor a
    db $fc
    rst $18
    ld hl, sp-$15
    xor a
    ld hl, sp-$4d
    ld b, b
    inc a
    ld d, $61
    ccf
    jp $df3e


    rst $00
    db $dd
    cpl
    jp c, $f02f

    rst $20
    inc a
    rst $00
    rst $38
    ret c

    cpl
    ret c

    cpl
    rst $28
    ldh a, [$b8]
    rst $00
    rst $38
    ld d, $f9
    db $fc
    db $e3
    db $db
    rst $20
    di
    adc $ff
    and $de
    adc a
    rst $38
    ld a, a
    rst $38
    ld d, e
    rst $28
    rst $38
    sbc c
    rst $20
    ld sp, hl
    rst $38
    xor [hl]
    rst $18
    ld e, a
    ld h, a
    rst $38
    ld c, e
    ld [hl], a
    rst $20
    ei
    sbc a
    ld sp, hl
    cp l
    ld sp, hl
    rst $30
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    cp $fd
    db $fd
    ld a, a
    rst $38
    cp $f1
    rst $38
    sbc c
    sbc a
    cp l
    sub c
    nop
    pop hl
    ld a, a
    rst $38
    ldh [$fa], a
    pop hl
    ld [$e4e3], a
    db $e3
    ld hl, sp-$08
    cp $f9
    cp $ea
    db $e3
    db $e4
    db $e3
    rra
    rra
    ld a, a
    ld a, a
    db $ec
    rst $38
    di
    adc a
    rst $38
    ld a, c
    rst $38
    add sp, -$09
    di
    rst $18
    rst $28
    add $fe
    sbc $fe
    ld e, b
    ld bc, $ff67
    rst $38
    db $d3
    rst $28
    db $fd

Call_02d_63c3:
    rst $38
    rst $08
    rst $38
    ld h, a
    ld a, a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $fd
    ld sp, hl
    ei
    ei
    jr c, jr_02d_640f

    inc bc
    sbc [hl]
    ldh [$98], a
    ldh [$fb], a
    rst $38
    cp a
    inc sp
    ld bc, $0640
    ld h, h
    ld [$e4e3], a
    db $e4
    ei
    call c, Call_000_22e1
    rlca
    rst $18
    rst $18
    or d
    nop
    rst $38
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$0c
    ldh a, [$f8]
    cp [hl]
    cp $e4
    rst $18
    rra
    rrca
    rrca
    rra
    rst $38
    ld [c], a
    dec e
    rra
    inc e
    ld e, $1e
    inc e
    inc e
    or l
    rst $20
    ld c, [hl]
    pop hl
    ld c, h
    pop hl
    db $fc
    sub l

jr_02d_640f:
    pop hl
    ld c, [hl]
    ld [c], a
    db $fc
    cp $fe
    db $ed
    pop hl
    ld hl, sp-$41
    ldh a, [rBCPS]
    nop
    sbc b
    db $10
    ld [$2058], sp
    ld [$00ff], sp
    jr nc, jr_02d_6446

    stop
    ld e, $1e
    dec a
    rst $38
    dec a
    ld [hl], $06
    ld b, e
    inc bc
    add $86
    ld b, a
    cp a
    rlca
    ld b, a
    rlca
    rst $00
    rlca
    ccf
    rst $38
    db $e4
    cp a
    rst $38
    cp a
    rra
    rra
    sbc a
    sbc a
    ld e, a
    ld e, a

jr_02d_6446:
    ld a, [c]
    rst $38
    ret nz

    pop hl
    pop bc
    pop hl
    pop bc
    db $e3
    jp $ff83


    add b
    db $e4
    ret nz

    adc h
    adc b
    sub b
    sub b
    or b
    rst $38
    and b
    or c
    and c
    ldh a, [$e0]
    pop hl
    pop hl
    ld [hl], d
    rst $38
    ld h, d
    pop bc
    pop bc
    ld [c], a
    ld [c], a
    push de
    push de
    add a
    rst $38
    rlca
    add a
    rlca
    add h
    inc b
    add a
    nop
    adc h
    ei
    ld [$9184], sp
    add b
    sbc b
    db $10
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $08
    rrca
    rlca
    rlca
    dec bc
    dec bc
    rlca
    rst $38
    rlca
    inc bc
    inc bc
    dec b
    dec b
    adc d
    adc d
    ld d, l
    cp a
    ld d, l
    cp [hl]
    cp [hl]
    db $eb
    rst $38
    pop af
    xor [hl]
    nop
    ld d, a
    or $00
    ldh [$eb], a
    db $eb
    xor d
    ret nz

    rst $38
    xor a
    rst $38
    push bc
    cp $9e
    nop
    ld e, l
    rst $38
    xor $ff
    ld [hl+], a
    ld [hl+], a
    ld d, l
    ld e, a
    ld d, l
    cp a
    cp a
    ld l, e
    ld a, a
    ldh [$e1], a
    rst $10
    ldh [$c0], a
    rst $38
    inc hl
    inc hl
    ld d, l
    ld d, l
    cp e
    cp e
    rst $38
    rst $38
    push af
    ld [hl], a
    ld a, [hl]
    nop
    ld [hl], a
    dec bc
    ldh [rP1], a
    nop
    ld c, [hl]
    ld [hl], b
    ld a, a
    inc e
    ld h, b
    ld a, [hl-]
    ld b, b
    ld [hl], h
    nop
    ld l, d
    ld hl, sp+$60
    cp [hl]
    ld l, $81
    ld b, d
    nop
    inc h
    nop

jr_02d_64df:
    jr jr_02d_64df

Jump_02d_64e1:
    ldh [rNR50], a
    ld b, $f6
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $28
    ld b, [hl]
    push bc
    add $c7
    db $fc
    jp hl


    cp a
    ret nz

    ld b, [hl]
    cp $ff
    ldh [$b9], a
    cp d
    ld b, [hl]
    ld b, [hl]
    cp e
    cp h
    ld b, [hl]
    ccf
    cp l
    cp [hl]
    ld b, [hl]
    pop bc
    jp nz, $fc46

    ld [c], a
    ret c

    db $ed
    ld e, $c8
    push hl
    ret z

    ret


    jp z, $fccb

    jp hl


    ret nc

    ldh [$c3], a
    ldh [$f8], a
    call nz, $c3e0
    pop hl
    or l
    ldh [$c3], a
    call nz, $bab9
    jp $c4e7


    ld b, [hl]
    ld b, [hl]
    ret c

    db $ed
    ret z

    push hl
    call z, $cecd
    ld [hl], c
    rst $08
    db $fc
    jp hl


    call nc, $87e0
    ld [c], a
    sbc l
    sbc a
    sbc e
    rst $38
    pop hl
    sbc e
    sbc a
    sbc l
    or h
    ld [c], a
    ld b, [hl]
    ld b, [hl]
    ret c

    db $ed
    ret z

    push hl
    ret nc

    rst $00
    pop de
    jp nc, $fcd3

    jp hl


    ld b, l
    ldh [$87], a
    pop hl
    sbc l
    sbc d
    ld l, h
    add hl, sp
    pop hl
    dec [hl]
    ldh [$9a], a
    sbc l
    ld a, b
    pop hl
    cp c
    cp d
    ret c

    db $ed
    ldh [$c8], a
    push hl
    ld a, [hl+]
    db $ec
    add hl, bc
    ld [c], a
    add h
    ldh [$c1], a
    ldh [$79], a
    ld a, d
    ld a, e
    inc bc
    ld a, h
    ld a, l
    cp a
    pop hl
    db $eb
    db $e3
    cp $d4
    ld [bc], a
    db $eb
    jp nz, Jump_02d_45c0

    ldh [$7e], a
    add h
    ld [c], a
    ld a, c
    ld a, [hl]
    ld b, l
    ld b, c
    ld b, l
    ld a, a
    cp a
    pop hl
    ld e, $3b
    ldh [$bd], a
    cp [hl]
    cp c
    cp d
    cp $d3
    ld [bc], a
    db $eb
    sub d
    pop bc
    rst $30
    sbc l
    sbc d
    xor e
    pop bc
    ld [c], a
    or [hl]
    inc l
    ld h, $2a
    adc h
    cp a
    ld [c], a
    ld a, h
    ld [c], a
    cp e
    cp h
    cp $d3
    ld [bc], a
    db $eb
    sub [hl]
    pop bc
    sbc h
    ei
    xor e
    xor h
    add d
    ld [c], a
    ld l, $20
    jr nz, jr_02d_65e0

    ld d, b
    rrca
    ld b, e
    add c
    ld b, [hl]
    ld b, [hl]
    or c
    ldh [$fa], a
    pop bc
    cp $d3
    ld [bc], a
    db $ec
    ld a, [$c006]
    sbc h
    pop bc
    ldh [rDMA], a
    add b
    xor e
    ld b, d
    inc hl
    ld e, a
    ld h, $2a
    ld b, a

jr_02d_65d3:
    ld e, l
    ld d, l
    ret nz

    ldh [$ac], a
    cp [hl]
    ldh [$71], a
    sbc h
    or c
    jp nz, $dc00

jr_02d_65e0:
    call nz, $bba1
    cp h
    sbc [hl]
    adc [hl]
    pop hl
    rst $38
    add b
    xor h
    ld b, b
    dec [hl]
    inc a
    ld c, d
    ld h, b
    ld d, l
    pop bc
    ld b, l
    add b
    ldh [$be], a
    pop hl
    ret nz

    ld [c], a
    nop
    db $dd
    sub h
    and c
    cp l
    cp [hl]
    cp $95
    ldh [$ac], a
    ld b, [hl]
    add b
    ld b, [hl]
    add hl, sp
    dec [hl]
    dec [hl]
    ld e, a
    ld d, l
    ld d, d
    ld b, l
    add e
    ld l, l
    jr c, jr_02d_65d3

    sbc h
    ld l, l
    and c
    ldh a, [rP1]
    db $dd
    sub h
    and c
    push de
    pop hl
    ld a, $a0
    add d
    add e
    ld a, [hl-]
    dec [hl]
    cp a
    dec [hl]
    add hl, sp
    ld b, l
    add e
    ld l, a
    add h
    ld hl, sp-$5d
    sbc [hl]
    ldh a, [$31]
    and c
    nop
    call c, $c403
    add $a2
    add h
    add l
    ld [hl], c
    ld [hl], d
    inc bc
    ld l, h
    ld a, [hl-]
    pop bc
    ldh [$74], a
    pop bc
    cp c
    and [hl]
    ld a, [$0290]
    db $eb
    inc bc
    jp nz, Jump_02d_79fb

    ld a, d
    ret


    and b
    ld b, h
    inc a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    dec de
    add l
    add h
    jp Jump_02d_79c0


    ld a, d
    cp c
    and h
    xor e
    add b
    nop
    reti


    inc c
    sbc d
    add d
    pop bc
    pop hl
    ld a, [hl]
    xor e
    ret


    and b
    ld bc, $3fe0
    ldh [$b8], a
    and d
    dec sp
    xor e
    ld b, [hl]
    cp c
    and b
    xor e
    sbc d
    sbc l
    ld l, a
    add b
    nop
    reti


    ld a, [$e202]
    sbc [hl]
    adc b
    and b
    ld b, [hl]
    xor h
    add e
    ld l, l
    ld b, l
    adc $01
    ldh [$35], a
    dec [hl]
    ld a, $36
    pop bc
    ld b, b
    pop bc
    ld a, a
    ld a, l
    ld b, a
    xor h
    xor e
    sbc h
    ld [hl-], a
    add b
    nop

jr_02d_6696:
    db $db
    ld c, $80
    sbc h
    ld b, $c0
    sbc a
    ld b, [hl]
    ld b, [hl]
    adc b
    add h
    ld [hl], $81
    pop hl
    add b
    ld [c], a
    add d
    dec sp
    add e
    ld b, [hl]
    xor a
    and b
    add c
    ld b, [hl]
    xor h
    db $fd
    and e
    nop
    sbc c
    cp h
    pop de

jr_02d_66b5:
    ld h, b
    ret nz

    ldh [$ac], a
    ld b, [hl]
    add e
    ld l, l
    ld b, d
    ld [c], a
    dec [hl]
    rst $38
    inc a
    ld b, h
    ld c, b
    ld d, e
    ld b, l

Call_02d_66c5:
    add h
    ld l, a
    add e
    jp nz, $a070

    add c
    cp b
    add d
    and e
    ld h, b
    nop
    sbc c
    jr jr_02d_6696

    add d
    add e
    db $fc
    ld c, e
    ret nz

    ld b, d
    ld [c], a
    dec [hl]
    ld a, [hl-]
    ld d, c
    ld e, [hl]
    ld d, h
    dec hl
    add c
    or [hl]
    cp a
    ldh [$c0], a
    pop hl
    ld a, [hl]
    and c
    ld [hl], e
    ld h, b
    nop
    sbc c
    ret nz

    jp nz, $ef84

    add l
    add l
    add h
    ld b, h
    ret nz

    db $e3
    add hl, sp
    ld c, d
    ld e, b
    cp a
    dec l
    jr nz, jr_02d_66b5

    ld b, h
    add h
    adc c
    add b
    pop hl
    sbc [hl]
    ld h, b
    dec hl
    ld h, b
    ld [hl], a
    ld h, b
    nop
    jp c, Jump_02d_6009

    rla
    and d
    ld b, l
    ld a, $82
    pop bc
    rst $38
    ld [hl], $45
    ld d, l
    ld d, [hl]
    ld [hl-], a
    jr nz, jr_02d_673b

    dec l
    ld [bc], a
    ld [hl], e
    and b
    xor e
    add b
    pop hl
    dec hl
    ld h, c
    nop
    sbc b
    call nz, $0263
    and b
    cp a
    ld b, b
    cp $42
    pop bc
    inc a
    ld b, h
    ld b, [hl]
    ld b, l
    ld b, e
    or [hl]
    inc hl
    dec b
    ld h, $c0
    pop hl
    xor h

jr_02d_673b:
    nop
    pop hl
    or d
    ld b, b
    nop
    sbc c
    adc h
    ld b, b
    call nz, $ab66
    ld a, d
    ld h, [hl]
    ld [bc], a
    ldh [rLYC], a
    ld b, [hl]
    add b
    add hl, sp
    cp c
    pop hl
    add b
    rrca
    ld b, [hl]
    ld b, [hl]
    adc d
    ld a, l
    ld [hl], a
    ld h, d
    nop
    sbc c
    adc h
    ld b, c
    add l
    ld h, l
    rst $38
    ld [hl], $68
    ld h, [hl]
    dec [hl]
    add hl, sp
    xor e
    ld b, [hl]
    xor h
    ld e, $f9
    and b
    inc a
    ld b, h
    ld a, c
    adc e
    xor a
    ld h, b
    db $76
    ld h, b
    ld [hl], $60
    add sp, $00
    sbc b
    adc h
    ld b, c
    add hl, bc
    ld h, h
    adc l
    add h
    add b
    ld l, d
    dec [hl]
    ld b, b
    scf
    xor h
    ld b, [hl]
    ld b, l
    ld sp, hl
    and b
    ld a, [hl-]
    ld b, l
    cp [hl]
    and d
    cp $a0
    ret nz

    ei
    ld h, e
    nop
    ld d, h
    adc $20
    adc h
    ld b, d
    ld d, c
    and c
    add e
    and b
    ld l, h
    ld l, l

Call_02d_679c:
    ld h, h
    pop bc
    ret nz

    dec sp
    and d
    ld a, $be
    and [hl]
    cp e
    ld h, b
    cp a
    ret nz

    nop
    ld d, l
    di
    cp e
    cp h
    ld [$4262], sp
    and c
    scf
    jr c, @+$37

    ld l, h
    xor e
    ld l, a
    ld l, [hl]
    ld b, c
    add b
    xor e
    ld a, c
    pop bc
    ld a, [hl-]
    cp [hl]
    xor c
    pop bc
    ld a, l
    jp nz, Jump_02d_5500

    cp l
    cp [hl]
    sbc [hl]
    ld b, [hl]
    xor h
    adc b
    ld h, b
    xor $4c
    pop hl
    ld l, h
    ld [hl], d
    ld [hl], b
    pop bc
    ldh [$35], a
    add hl, sp
    xor h
    ld h, d
    cp e
    add d
    ld [hl], $7d
    and c
    ld l, h
    and b
    inc a
    ld h, c
    jp Jump_000_00c4


    ld d, h
    inc c
    sbc l
    ld h, d
    ld d, $60
    add d
    add e
    pop bc
    ldh [$83], a
    pop hl
    ld b, b
    jp $81ba


    ld c, $38
    ret nz

    add h
    add l
    add [hl]
    dec [hl]
    add b
    cp [hl]
    and c
    ld a, [$044e]
    call nz, $c6a4
    and l
    ret z

    ld h, b
    ld [hl], c
    add e
    ld [c], a
    ld b, b
    jp nz, $b846

    and b
    ld h, d
    add c
    ld h, e
    cp d
    ld hl, $633c
    dec [hl]
    ld [hl+], a
    nop
    ld d, c
    sub e
    ld bc, $439d
    ld b, h
    jp hl


    inc a
    add [hl]
    add d
    inc bc
    add d
    xor e
    ld a, [hl-]
    add b
    ld h, d
    ld h, a
    dec [hl]
    dec c
    add hl, sp
    ei
    inc hl
    xor e
    sbc h
    ld [hl], b
    nop
    ld h, c
    nop
    nop
    ld d, c
    adc d
    inc h
    db $fc
    add l
    ret nz

    ld b, a
    add e
    dec [hl]
    dec sp
    jr c, jr_02d_6879

    ld b, l
    ld b, [hl]
    stop
    ldh [$c1], a
    ldh [$fa], a
    ld h, b
    ei
    ld [hl+], a
    xor h
    ld [hl], $21
    ld sp, $0000
    ld c, a
    ld [hl], b
    ld c, b
    ld b, c
    ret


    jr nz, @+$18

    ld b, b
    pop bc
    db $e4
    jr c, @+$39

    ld b, e
    ld b, e
    ldh [$15], a
    xor e
    ld b, c
    ldh [rBCPD], a
    cp d
    ld h, c
    xor e
    add d
    and b
    and h
    ret nz

    cp a
    jp Jump_000_00f0


    ld d, b
    ld c, d
    inc hl
    ret


    ld hl, $8308

jr_02d_6879:
    ld [hl], $03
    inc b
    rlca
    dec hl
    inc b
    inc bc
    ret z

    jr nz, @+$3b

    ret nz

    ld [c], a
    ld a, [hl-]
    inc bc
    jp nz, $206b

    sub c
    sbc h
    cp $50
    nop
    ld b, c
    ld b, [hl]
    ld h, c
    sbc [hl]
    dec bc
    ld hl, $634a
    ld [hl], $7f
    ld [bc], a
    rrca
    inc b
    add hl, bc
    inc b
    rrca
    ld [bc], a

Jump_02d_68a0:
    ldh a, [$e1]
    sbc b
    add b
    pop hl
    or a
    add b
    cp d
    ld [hl+], a
    ld b, [hl]
    sbc h
    cp $50
    ld [$bb83], sp
    ld sp, hl
    cp h
    ld c, d
    ld [hl+], a
    jp Jump_000_38c1


    scf
    ld [bc], a
    rrca
    ld [bc], a
    jr @+$7f

    ld b, b
    ld a, [$c0e0]
    pop hl
    xor c
    xor c
    or a
    add b
    cp d
    inc h
    cp $51
    call c, Call_000_0330
    ld c, e
    ld [bc], a
    xor e
    ld b, [hl]
    ld b, b
    ld b, h
    ld [c], a
    rrca
    ld b, $ef
    ld a, c
    ld a, [hl]
    ld b, e
    ld a, a
    cp a
    pop hl
    ld b, h
    inc a
    ld l, c
    rrca
    xor d
    xor d
    dec [hl]
    add hl, sp
    cp d
    inc h
    ld a, $61
    nop
    ld d, h
    ld b, [hl]
    ld b, d
    cp $d0
    add c
    ld [hl], $05
    rrca
    sub [hl]
    ld c, $05
    add b
    rst $38
    dec l
    inc l
    or [hl]
    ld a, a
    ld a, l
    ld b, $0e
    dec b
    rra
    ld a, [hl-]
    ld l, e
    ld l, h
    dec [hl]
    inc a
    pop bc
    add sp, $00
    ld d, l
    ret nz

    and l
    rst $28
    ld b, l
    ld b, l
    ld b, $98
    ld b, d
    ldh [$8b], a
    ld [hl-], a
    jr nz, jr_02d_6996

    ld [hl-], a
    ld b, [hl]
    add c
    dec b
    sub [hl]
    ld b, $39
    cp e
    jr nz, jr_02d_6961

    cp d
    ld hl, $217a
    ccf
    ld h, c
    nop
    ld d, l
    ret nz

    and l
    ld b, e
    ldh [$96], a
    ld b, d
    ldh [rIE], a
    ld b, l
    ld l, $20
    ld l, $83
    ld l, l
    dec b
    sub a
    ld bc, $b208
    and d
    cp d
    jr nz, jr_02d_696d

    ld bc, $613f
    nop
    sub h
    adc c
    ld bc, $a180
    db $fc
    ld b, e
    ldh [rSCY], a
    pop hl
    ld b, [hl]
    add hl, sp
    ld hl, $2a26
    adc b
    rrca
    add h
    ld b, $99
    ld [$c0ef], sp
    scf
    and e
    and h
    and b
    db $fd
    inc b

jr_02d_6961:
    ld hl, sp+$00
    ld d, b
    jr z, jr_02d_69a7

    rst $38
    and b
    xor e
    ld b, [hl]
    ld b, $96
    sub l

jr_02d_696d:
    rst $28
    sub [hl]
    ld [$8046], sp
    add e
    jr nz, @+$3c

    ld b, l
    add c
    inc bc
    dec b
    ld c, $40
    ldh [$f0], a
    and e
    ld [hl], $61
    ld a, a
    jr nz, jr_02d_69bd

    and c
    nop
    ld d, c
    cp h
    jr z, @+$43

    add b
    and b
    xor h
    ld b, [hl]
    ld [$8096], sp
    pop hl
    add d
    ld a, a
    add e
    inc a
    dec [hl]

jr_02d_6996:
    ld a, [hl-]
    add e
    ld l, l
    ld a, [bc]
    or a
    ret nz

    ret nz

    ld hl, sp+$24
    dec [hl]
    and b
    ld a, e
    jr nz, @-$3d

    ld h, c
    nop
    db $d3

jr_02d_69a7:
    jr z, jr_02d_69e9

    ld b, [hl]
    sbc [hl]
    ld a, [hl]
    ld e, e
    ld h, b
    ld b, $01
    nop
    sub [hl]
    sub [hl]
    ld b, $7c
    add c
    ld [hl+], a
    add l
    nop
    ld a, [bc]
    ld bc, $b9e4

jr_02d_69bd:
    inc bc
    inc a
    ld h, b
    sbc h
    ld [bc], a
    xor a
    nop
    ld b, [hl]
    di
    cp c
    cp d
    ld bc, $4d81
    ldh [$95], a
    sub [hl]
    rrca
    ld [bc], a
    jr c, jr_02d_6a12

    ld [c], a
    inc sp
    ldh [rSB], a
    db $e3
    dec [hl]
    dec [hl]
    ld b, b
    ld h, [hl]
    add d
    ld a, $00
    or b
    ld [bc], a
    xor [hl]
    nop
    add [hl]
    ld a, a
    and b
    ld e, e
    pop bc
    ld [bc], a
    rrca

jr_02d_69e9:
    cp $c0
    ld c, $3f
    dec b
    ld a, $35
    add hl, sp
    ld [bc], a
    rlca
    db $76
    ret nz

    ld sp, hl
    dec b
    jr nz, jr_02d_69fa

    push bc

jr_02d_69fa:
    nop
    rst $10
    ld b, $41
    sbc l
    add c
    cp [hl]
    ret nz

jr_02d_6a02:
    sub l
    add hl, bc
    ret nz

    db $fd
    add b
    inc bc
    ld bc, $0100
    push hl
    or a
    ld b, b
    jp nz, $83a1

    ld h, c

jr_02d_6a12:
    nop
    sub $7f
    and h
    dec a
    ld b, [hl]
    adc e
    ret nz

    sub [hl]
    sub [hl]
    rrca
    inc b
    ld sp, hl
    and b
    jr c, jr_02d_6a02

    ld [bc], a
    dec sp
    ld [bc], a
    dec sp
    pop bc
    ld [c], a
    jp nz, $e0a0

    ld hl, $5700
    dec a
    ret nz

    ld bc, $ff42
    ld [bc], a
    dec c
    nop
    ld bc, $9796
    sbc b
    sub a
    rlca
    sub [hl]
    dec c
    ld [bc], a
    jp nz, $f643

    ld h, c
    ld h, a
    ld [bc], a
    add e
    ld h, d
    nop
    ld d, [hl]
    ei
    pop bc
    jp nz, Jump_000_23fe

    xor e
    inc bc
    inc b
    dec c
    sbc c
    inc bc
    dec c
    rlca
    nop
    add c
    cp e
    nop
    ld a, d
    ld h, c
    ld b, h
    ld h, d
    ld b, d
    ld [hl+], a
    ret c

    ld h, c
    and $00
    ld d, l
    jp Jump_02d_40c4


    inc hl
    add hl, sp
    add b
    inc bc
    add hl, bc
    inc bc
    nop
    cp e
    inc bc
    jp nz, $c3e5

    ld h, e
    ld b, d
    ld b, c
    cp $0f
    ld [hl-], a
    ld h, l
    ld b, b
    ld hl, $0541
    ld [bc], a
    set 4, h
    ld b, l
    jp nz, $82e5

    ld b, h
    ld b, d
    ld b, d
    nop
    call nc, Call_000_22fc
    ld b, c
    ld [bc], a
    ld h, b
    ld a, b
    ld h, c
    db $fd
    pop af
    ld b, d
    ld b, e
    nop
    call nc, Call_000_01fa
    cp a
    ret nz

    cp e
    add d
    nop
    ld a, b
    ld h, c
    ret nz

    di
    sbc h
    add b
    nop
    push de
    ld a, [$ba01]
    ld b, e
    add d
    db $f4
    ret nz

    and h
    ld hl, sp+$00
    sub l
    inc l
    ld b, c
    cp d
    ld b, c
    sbc h
    ld b, [hl]
    ld b, l
    ld b, c
    ld b, c
    inc bc
    scf
    scf
    db $fc
    rst $28
    ld a, [hl]
    add b
    cp [hl]
    and c
    nop
    rst $10
    sbc [hl]
    ld hl, $a13b
    or a
    ld b, d
    and c
    ld h, h
    rst $38
    ldh a, [$a2]
    ld b, d
    ret nz

    add b
    sbc [hl]
    ld hl, sp+$41
    ld [hl+], a
    nop
    call nc, Call_02d_61fc
    cp l
    cp [hl]
    sbc h
    ld b, [hl]
    ld b, b
    ld e, a
    ld l, c
    and b
    dec [hl]
    dec [hl]
    and b
    db $fc
    db $ed
    ld l, d
    cp l
    add c
    sub b
    add c
    ld b, c
    nop
    sub $e3
    and d
    db $fc
    nop
    ld b, d
    adc [hl]
    ld hl, $eefd
    ld l, d
    pop hl
    ld b, d
    cp a
    add h
    nop
    rst $10
    db $e3
    and b
    cp d
    jr nz, jr_02d_6b4c

    ld b, b
    ld l, e
    adc h
    inc bc
    add b
    db $fd
    xor $6d
    ld b, b
    ld b, c
    add c
    ld e, c
    ld h, c
    nop
    db $db
    sbc l
    ld a, a
    sbc d
    ld b, l
    scf
    dec a
    jr c, @+$3a

    dec a
    db $fc
    db $ed
    db $e3
    xor e
    ld b, l
    jp Jump_000_0004


    db $dd
    ccf
    ret nz

    ld b, l
    ld b, e
    ld b, e
    ld a, c
    ld b, l
    db $fc
    db $ed
    add h
    ld bc, $bab9
    jp Jump_000_00c4


    db $dd
    ld [de], a
    cp $a0
    sbc e
    rst $38
    rst $20
    di
    and h
    sbc d
    db $ed
    ldh [$c4], a
    jr nz, @-$7c

    pop bc
    ld [hl+], a
    nop
    db $db
    ld b, [hl]
    ld [hl], a

jr_02d_6b4c:
    ld b, d
    cp $87
    ld [hl], e
    pop hl
    ld b, l
    ret z

    call nz, $a262
    nop
    nop
    sub b
    nop
    nop
    nop
    rrca
    dec c
    ld c, $0e
    ld c, $fc
    jp hl


    ld a, [c]
    ldh [rIE], a
    ldh [$fa], a
    pop hl
    nop
    add sp, -$1e
    or $e5
    db $ed
    pop hl
    ret c

    ld [$e7d0], a
    ei
    db $ed
    jp z, $ddea

    db $e4
    ld l, b
    ld hl, sp-$1b
    rst $38
    rst $38
    adc d
    rst $20
    ld c, l
    rst $38
    pop hl
    dec l
    dec l
    cp b
    ld_long $ffd8, a
    rst $38
    inc a
    ld [c], a
    dec a
    ldh [$6d], a
    dec bc
    rst $38
    db $e3
    ld c, l
    dec l
    ld c, b
    add d
    db $fd
    cp $ca
    inc de
    db $e4
    ld c, l
    pop bc
    ldh [$f8], a
    pop bc
    dec c
    cp a
    pop hl
    ld [hl], b
    ld [hl], l
    ldh [$fe], a
    rst $18
    ld [bc], a
    jp hl


    add h
    ld [c], a
    dec c
    dec c
    dec hl
    cp h
    pop hl
    add b
    ld a, [hl]
    ldh [$3b], a
    ldh [rOBP0], a
    rst $38
    jp nz, Jump_02d_45c6

    ldh [$8a], a
    ldh [$c6], a

Jump_02d_6bc0:
    ld [c], a
    dec bc
    dec b
    dec hl
    cp a
    pop hl
    ld c, e
    ld a, h
    ld [c], a
    add $ff
    ret nz

    and $4a
    pop hl
    add d
    ldh [$0e], a
    add c
    ldh [rOCPD], a
    ld a, [bc]
    dec bc
    ret nz

    ldh [$bd], a
    ldh [$fa], a
    pop bc
    ld [bc], a
    rst $38
    db $fc
    ld b, $c5
    ld b, d
    db $e3
    ld c, e
    ld c, e
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    add b
    or h
    pop hl
    cp e
    ldh [$fb], a
    ret nz

    cp $d3
    ld b, d
    db $ed
    or d
    and b
    adc $e2
    dec c
    ccf
    ld l, e
    ld c, e
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add e
    ldh [$f4], a
    pop bc
    ld hl, sp-$40
    db $e3
    ld b, d
    rst $38
    ret nz

    rst $20
    dec bc
    dec hl
    ld c, e
    ld l, e
    ld a, [hl+]
    rla
    ld a, [hl+]
    ld c, e
    dec l
    ret nz

    ld [c], a
    dec bc
    add b
    ldh [$91], a
    or l
    ret nz

    rst $08
    cp $82
    call nz, Call_02d_4b4b
    dec bc
    ld c, e
    dec l
    dec l
    dec l
    db $10
    ret nz

    cp $02
    db $ed
    ld b, d
    call nz, $c083
    dec bc
    pop bc
    ldh [$80], a
    db $e4
    cp c
    and e
    ld b, h
    cp $dc
    ret z

    add d
    ld l, l
    rst $00
    and c
    ld b, l

Call_02d_6c41:
    pop bc
    ld c, d
    pop hl
    dec l
    push af
    jp nz, $b920

    and h
    ld a, $fe
    add [hl]
    add c
    pop bc
    ld [c], a
    add d
    pop hl
    ld c, e
    rst $38
    ldh [$b8], a
    and e
    ld b, [hl]
    or d
    pop bc
    dec bc
    dec c
    scf
    and d
    ld [bc], a
    rst $38
    call nc, $2de2
    ld [bc], a
    ret nz

    add b
    ret nz

    pop hl
    ld a, e
    pop hl
    ld b, d
    pop bc
    dec [hl]
    and d
    ret nz

    di
    inc b
    adc l
    ld c, l
    and d
    dec c
    inc bc
    dec l
    dec bc
    add c
    pop hl
    ld a, a
    ld [c], a
    add c
    db $e4
    xor e
    pop hl
    db $fc
    or c
    add b
    pop af
    inc a
    add c
    ldh [$c1], a
    ld [c], a
    dec hl
    dec bc
    ld a, [bc]
    ld l, d
    ld bc, $bce4
    and b
    pop bc
    ld l, l
    xor l
    ld h, h
    ld b, h
    cp e
    adc c
    add b
    ld c, e
    ret nz

    ret nz

    db $e3
    ld c, e
    ld a, [bc]
    rrca
    ld c, d
    ld a, [hl+]
    dec bc
    dec hl
    ret nz

    db $e4
    ld a, [hl]
    and c
    ret nz

    rst $38
    ld d, d
    add c
    ld l, a
    dec l
    dec l
    ld l, e
    ld l, e
    ret nz

    db $e4
    ld a, [bc]
    dec hl
    pop bc
    add b
    or b
    ret nz

    push hl
    pop hl
    ld h, [hl]
    nop
    sub $03
    and h
    dec bc
    ld l, e
    ld bc, $6be2
    rlca
    ld c, e
    ld a, [hl+]
    ld a, [bc]
    cp d
    ld h, d
    ld sp, $76a1
    and b
    add hl, sp
    ld h, h
    cp $55
    ld [bc], a
    ret nz

    add sp, $0b
    add b
    pop hl
    add b
    add c
    cp e
    jp $e2c0


    ld b, b
    rst $18
    call nz, Call_000_0c69
    add b
    jp nz, $81fa

    dec hl
    ld l, e
    ret nz

    pop hl
    or a
    ld h, c
    ld [hl], a
    ld h, c
    call nz, Call_000_127f
    ld b, e
    and h
    dec bc
    ccf
    ret nz

    ld c, b
    add b
    dec hl
    ret nz

    pop hl
    rst $28
    ld h, h
    cp d
    ld [hl], e
    nop
    ld b, $67
    ld hl, sp+$20
    add hl, bc
    ld h, l
    call nz, $8481
    ld h, b
    add b
    ld h, b
    cp b
    and c
    cp [hl]
    and d
    jr nz, jr_02d_6d8f

    pop hl
    dec sp
    add l
    ld [bc], a
    or l
    adc h
    ld b, c
    ld b, h
    and d
    dec hl
    add [hl]
    and b
    add e
    and c
    add b
    add c
    ldh [$79], a
    ld h, b
    cp [hl]
    and l
    ld a, l
    call nz, Call_02d_5608
    ld [$d761], sp
    db $e3
    ld c, e
    nop
    ld c, b
    ldh [rSB], a
    db $e4
    cp e
    ld b, d
    cp [hl]
    and [hl]
    ret z

    ld a, [hl-]
    ld e, b
    and e
    adc c
    pop hl
    ld c, c
    ld [c], a
    ld [bc], a
    rst $38
    ret nz

    ld l, e
    ld a, a
    push hl
    ccf
    ld h, c
    inc a
    ld h, c
    cp $56
    ld e, d
    and [hl]
    ld b, l
    add c
    ld b, $c3
    add [hl]
    ld l, e
    ld l, e
    cp [hl]
    pop hl
    push af
    ld [hl+], a
    or a
    ld h, b
    ld [hl], l

jr_02d_6d5f:
    jr z, jr_02d_6d5f

    dec c
    db $10
    add $a6
    ret nz

    db $e3
    jp Jump_02d_4183


    add c
    ld l, e
    ei
    inc h
    inc a
    ld h, [hl]
    ld a, h
    or $00
    add $a4
    ret z

    ld h, d
    ld b, h
    ld hl, $a1c8
    ld [bc], a
    ret nz

    ei
    inc h
    xor a
    ld hl, $b63e
    nop
    adc d
    ld h, $4b
    ld h, d
    jp nz, $fde3

    add b
    ld bc, $c1c0

jr_02d_6d8f:
    pop hl
    ld a, [hl]
    pop bc
    dec sp
    ld b, d
    ret nz

    cp a
    and e
    ld c, e
    inc c
    ld [$ca85], sp
    inc hl
    add d
    db $e4
    ret nz

    add c
    ld l, e
    ld l, e
    add b
    ld a, [hl-]
    ld h, d
    dec a
    pop bc
    ld a, l
    ld h, h
    cp a
    add $02
    cpl
    ld c, d
    dec h
    ld b, d
    db $e3
    ld l, e
    rra
    inc c
    inc c
    inc c
    inc l
    inc l
    ret nz

    ldh [rSC], a
    ldh [$81], a
    db $e3
    jp nz, Jump_000_22ba

    dec bc
    cp $99

Call_02d_6dc5:
    db $10
    inc hl
    jp z, $c142

    ldh [$6c], a
    ld c, h
    ld bc, $bf4c
    ldh [$80], a
    ret nz

    cp l
    and d
    jp $fbe2


    ld hl, $f502
    ld c, d
    dec h
    ld [bc], a
    adc e
    ld b, c
    ld l, e
    pop bc
    pop hl
    ld [hl], $20
    cp a
    ldh [$b0], a
    pop hl
    scf
    ld [hl+], a
    cp d
    inc h
    adc [hl]
    cp $57
    ld c, $0e
    ld c, l
    ld d, l
    ld b, c
    call Call_02d_4401
    ldh [$4c], a
    ld [$0044], sp
    cp a
    ld [c], a
    ld a, $02
    dec hl
    cp d
    dec h
    ld a, $63
    cp $12
    add [hl]
    ld h, e
    and $09
    add b
    ld l, e
    inc l
    ld b, e
    pop hl
    adc b
    add c
    dec c
    dec c
    ld l, h
    adc e
    inc l
    inc c
    ld b, c
    pop bc
    ld l, e
    pop bc
    db $eb
    ld b, $96
    add [hl]
    ld h, c
    ld l, e
    rst $08
    ld c, e
    inc l
    inc l
    ld l, h
    ld b, d
    ldh [$0a], a
    ret nz

    ld c, e
    dec c
    inc bc
    ld l, h
    inc c
    ret nz

    pop hl
    cp d
    inc h
    jp nz, Jump_02d_499b

    dec b
    add a
    ret nz

    ld b, d
    ld [c], a
    ld c, $44
    ld hl, $2c0d
    inc c
    ccf
    ldh [$be], a
    add d
    ret nz

    ld hl, sp+$06
    ld l, d
    db $f4
    ld b, e
    ldh [rSCY], a
    pop hl
    ld c, e
    ccf
    and b
    ld l, e
    dec c
    dec l
    inc l
    add b
    rst $38
    pop bc
    ret nz

    db $e3
    daa
    add c
    db $fd
    inc b
    ld [bc], a
    or l
    ld b, c
    add c
    ret nz

    pop hl
    inc l
    ld de, $814b
    pop hl
    add d
    ld h, b
    or $c0
    ld c, h
    rst $38
    ld h, d
    ccf
    jp $207f


    or b
    pop bc
    inc h
    ld [bc], a
    or e
    jp z, $4101

    pop hl
    inc l
    inc c
    dec [hl]
    jp nz, Jump_02d_412d

    dec c
    ld a, [$c0a1]
    db $e3
    cp l
    ld b, h
    cp [hl]
    ld d, $68
    add h
    dec bc
    adc [hl]
    ret nz

    inc h
    ld a, $e1
    ret nz

    db $e3
    dec l
    ld a, h
    and b
    ld b, c
    and e
    dec hl
    cp b
    inc bc

Jump_02d_6ea0:
    add b
    add e
    inc c
    cp $16
    call c, Call_02d_6c41
    ld c, h
    ld b, [hl]
    and e
    nop
    ld b, d
    pop bc
    push bc
    ld a, [hl]
    ld b, c
    ld d, b
    ld bc, $02c4
    xor [hl]
    nop
    adc c
    ld e, c
    ld b, c
    ld c, h
    cp a

Jump_02d_6ebc:
    ld [c], a
    inc c
    add b
    add b
    ret nz

    db $76
    jp nz, Jump_02d_43fd

    ret nz

    db $e3
    nop
    ld hl, $d900
    ld b, [hl]
    ld hl, $0b0b
    ld h, b
    inc c
    ret nz

    jp Jump_000_3c80


    and c
    rst $30
    and b
    ret nz

    jp hl


    dec c
    ld l, l
    add c
    inc h
    ld h, h
    add $16
    ld a, a
    and c
    dec bc
    ld a, $e4
    ld hl, sp-$5f
    ld l, h
    ld l, h
    or $64
    db $10
    ld bc, $43e2
    ld h, c
    nop
    ld e, c
    ld [bc], a
    ld b, c
    dec c
    add hl, de
    and b
    ld a, $e2
    pop bc
    db $e3
    ld b, b
    ld [hl], e
    add e
    add hl, sp
    ld h, d
    ld b, h
    ld b, l
    nop
    ld e, c
    ret nz

    ld hl, $a056
    ld c, h
    db $fc
    ret nz

    db $10
    ld b, c
    add b
    add d
    db $e3
    ld a, d
    ld h, c
    cp [hl]
    inc bc
    ld c, l
    ld a, [$3e80]
    ld sp, hl
    db $fc
    ld h, e
    nop
    inc a
    ld [c], a
    jp Jump_02d_7ae0


    ld h, h
    add [hl]
    call nz, Call_02d_63c3
    ld a, [de]
    add e
    inc b
    scf
    cp d
    ld h, [hl]
    nop
    cp [hl]
    ld b, l
    jp nz, $82e6

    ld e, e
    cp $0a
    jr jr_02d_6f5a

    cp $f2
    cp a
    add $fe
    jp c, $c004

    ei
    ld b, b
    rra
    ld l, l
    nop
    ld b, [hl]
    ld a, c
    db $ed
    ld b, d
    ld b, c
    ret nz

    db $fc
    db $fc
    ld bc, $7e00
    ld b, c
    db $fc
    pop af
    ld b, b
    add e
    ld [bc], a
    ld sp, hl
    cp d
    ld b, d
    add b

jr_02d_6f5a:
    daa
    ld sp, hl
    call $80c0
    nop
    nop
    reti


    ld [hl+], a
    db $e3
    add c
    ld bc, $22d7
    db $fc
    db $ec
    ld b, c
    ld b, [hl]
    cp $5b
    sbc e
    jr nz, @-$3e

    nop
    or $bf
    add e
    cp [hl]
    ld e, d
    ld b, b
    ei
    ld b, c
    add c
    nop
    db $dd
    ld c, l
    dec l
    sbc b
    db $10
    and b
    adc $80
    db $fc
    db $ed
    dec c
    ld c, e
    inc bc
    ld b, e
    nop
    sbc $4d
    ld bc, $512d
    add b
    cp [hl]
    rst $28
    ld [c], a
    ld b, c
    ld b, h
    db $dd
    ld a, [hl-]
    add h
    or $42
    ei
    db $e3
    nop
    adc d
    ld hl, $0381
    add d
    db $e4
    ret nz

    cp [hl]
    ld [hl], $04
    cp h
    db $e4
    inc l
    jr nz, jr_02d_6fec

    nop
    nop
    ret z

    rst $00
    ld [bc], a
    or c
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

Jump_02d_6fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    rst $38

jr_02d_6feb:
    db $f4

jr_02d_6fec:
    di
    rrca
    rst $38
    ld_long $ffe0, a
    ldh [$f0], a
    push af
    ldh a, [$c0]
    jp hl


    nop
    db $f4
    di
    ldh [rIE], a
    add b
    db $eb
    db $76
    db $e3
    jr nc, jr_02d_6feb

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
    db $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    pop af
    rst $38
    and $e0
    rst $38
    rst $38
    rst $38
    ld a, $f3
    ld a, [c]
    db $10
    stop
    inc de
    inc de
    reti


    db $ec
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld b, $02
    nop
    rrca
    ld [$0002], sp
    rrca
    ld b, $02
    nop
    rrca
    inc b
    ld [bc], a
    nop
    rrca
    ld [bc], a
    ld [bc], a
    nop
    rrca
    rst $38
    nop
    ld a, [bc]
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $28
    rrca
    ld [bc], a
    ld e, $19
    rrca
    ld [bc], a
    ld e, $ff
    ld bc, $0337
    ld de, $3a1e
    inc bc
    ld de, $ff1e
    ld [bc], a
    dec a
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $3f
    ld bc, $1e14
    ld a, $01
    inc d
    ld e, $ff
    ld bc, $d5fe
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, @-$0f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    ld a, [$e0e5]
    add b
    ld [$00e4], a
    nop
    rla
    nop
    ld bc, $d612
    ld [c], a
    ld d, b
    rst $08
    ldh [$e6], a
    pop hl
    ld [$e2da], a
    db $fd
    db $e3
    and $e1
    ld d, a
    cpl
    nop
    inc bc
    ret nz

    ld [c], a
    and b
    xor a
    ldh [$64], a
    xor e
    ldh [$c7], a
    call nc, Call_000_2000
    ret nz

    ld [c], a
    jp z, $9ce1

    pop hl
    ld e, a
    nop
    ld d, l
    ld b, $96
    ld [c], a
    ld b, b
    adc a
    ldh [$b2], a
    adc e

jr_02d_70f8:
    ldh [$a8], a
    or $e2
    sbc h
    and h
    db $e3
    ld a, h
    pop hl
    cp a
    nop
    inc c
    add b
    ld [c], a
    adc [hl]
    pop hl
    ld e, c
    ld a, [$e06b]
    ld d, b
    add h
    ld [c], a
    add b
    nop
    db $fc
    rst $38
    ret nc

    rst $38
    rst $38
    and b
    cp $c2
    ld hl, sp-$78
    ldh a, [$80]
    cp a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ldh [$fd], a
    rst $38
    rst $38
    ld a, [$dcff]
    rst $38
    ldh [rIE], a
    add c
    or a
    cp $08
    ldh a, [$f8]
    push hl
    jr nz, jr_02d_70f8

    ld [hl], c
    db $e3
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld a, a
    rla
    ld a, a
    dec bc
    ld a, a
    ld b, a
    ccf
    rlca
    rst $38
    rra
    inc bc
    rra
    ld [de], a
    rrca
    ld bc, $090f
    rst $38
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    jr @+$41

    rst $38
    nop
    rst $38
    add c
    inc a
    db $10
    ld b, h
    and $c8
    ldh [rIE], a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [rP1], a
    ld a, d
    and d
    ldh [rNR41], a
    and b
    ldh [$7b], a
    rst $38
    rst $30
    rst $38
    jp c, $fde3

    ld [$c0e3], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$20
    db $fc
    rst $38
    ldh a, [$fc]
    jp nc, $a0fc

    db $fc
    ldh [$f8], a
    ei
    db $e4
    ld hl, sp-$80
    pop hl
    rst $38
    rst $38
    rst $18
    rst $38
    cp l
    ei
    rst $38
    jp $e0b6


    nop
    rst $20
    db $fc
    rst $38
    db $f4
    sbc a
    rst $38
    add sp, -$01
    ld hl, sp-$02
    cp $e0
    or $e0
    db $fc
    pop bc
    rst $38
    ld a, b
    ldh [$cb], a
    jp $c5e2


    ldh a, [$e0]
    rst $28
    ld [$40c0], a
    ld hl, sp-$20
    ld [$e1d0], a
    rst $08
    jp hl


    db $fc
    rst $38
    pop de
    cp $a6
    cp a
    ld hl, sp-$38
    ldh a, [$90]
    ldh [$a8], a
    ld [hl], d
    ldh [rLCDC], a
    db $fd

jr_02d_71d6:
    add b
    db $10
    rst $20
    pop hl
    cp $8e
    ldh a, [$30]

jr_02d_71de:
    ret nz

    ld hl, sp-$08
    push hl
    ld h, d
    pop bc
    db $10
    push hl
    xor a
    ld a, a
    sbc a
    ld a, a
    ld e, a
    rst $38
    ccf
    ld d, a
    ccf
    ld c, e
    ccf
    daa
    rra
    rla
    rst $38
    rrca
    inc de
    rrca
    ld a, [bc]
    rlca
    add hl, bc
    rlca
    dec d
    rst $38
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ef18
    rst $38
    jp Jump_000_3c3c


    sbc d
    add $00
    nop
    ld b, b
    cp a
    add b
    ld b, b
    add b
    jr nz, jr_02d_71d6

    and b
    cp $e0
    jr nz, jr_02d_71de

    ret nz

    ld d, b
    db $f4
    ldh [rNR10], a
    push hl
    jp c, Jump_02d_64e1

    pop bc
    xor b
    ldh a, [rIE]
    ld [$e4f0], a
    ld hl, sp-$0c
    ld hl, sp-$2c
    ld hl, sp-$41
    and h
    ld hl, sp-$18
    ldh a, [$e8]
    ldh a, [rNR10]
    jp hl


    jr @+$01

    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    push af
    cp $e9
    rst $38
    cp $fa
    db $fc
    ld a, [$f9fc]
    cp $f5
    rrca
    cp $fc
    rst $38
    ld c, b
    ld [hl+], a
    db $eb
    and b
    ldh [$cc], a
    and e
    ei
    push bc
    db $fc
    pop af
    call $cbe3
    nop
    nop
    db $fd
    cp $d6
    ld hl, sp+$77
    xor b
    ldh a, [$d2]
    ld [de], a
    ldh [$c0], a
    add b
    ld d, b
    sub $c0
    ld a, $20
    push bc
    db $dd
    cp $ee
    ldh a, [$b1]
    ld a, [de]
    ldh [$f8], a

jr_02d_727a:
    push hl
    db $fc
    or d
    and c
    ld d, h
    and c
    rst $38
    ld a, a
    cp a
    ld a, a
    ld l, a
    ccf
    rst $38
    ld e, a
    ccf
    cp a
    rra
    scf
    rra
    dec hl
    rra
    ld a, a
    ld d, a
    rrca
    rrca
    rlca
    dec bc
    rlca
    ld d, $14
    ldh [rIE], a
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    ld d, l
    db $db
    ld [de], a
    ldh [rSCY], a
    sub b
    ld [$0ca0], a
    ldh [$c0], a
    cp $e0
    rst $00
    ld b, b
    add b
    and b
    jr nc, @-$5e

    jr nz, jr_02d_727a

    jp c, $b0e7

    ldh [rIE], a
    db $f4
    ldh [$e8], a
    ldh a, [$f8]
    ldh a, [$d8]
    ldh a, [$bf]
    xor b
    ldh a, [$f4]
    ldh [$f0], a
    ldh [rNR41], a
    rst $00
    db $db
    ld a, [$e012]
    sub c
    ld h, b
    ldh [$f6], a
    db $fc
    ld [$fdfc], a
    rst $38
    ld hl, sp-$04
    ld hl, sp-$06
    db $fc
    or $fc
    db $fd
    pop bc
    cp $78

jr_02d_72e5:
    push hl
    inc l
    push af
    nop
    and c
    xor $cc
    pop af
    xor d
    ld [bc], a
    add c
    rst $38
    and b
    pop bc
    nop
    pop bc
    add l
    jp $c3a1


    rst $38
    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    db $f4
    ldh [$a0], a
    ld [hl], b
    ret nz

    ld b, b
    ld a, d
    ldh [$d1], a
    db $fc
    db $ec
    rst $38
    rst $18
    ld a, [de]
    rst $38
    add b
    ld e, $12
    ld [hl], h
    add d
    ld c, b
    nop
    rst $38
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    rst $38
    jr nz, jr_02d_72e5

    and c
    jp $c385


    inc b
    add e
    ld l, a
    ld b, c
    add e
    ld [bc], a
    add c
    ld l, l
    add b
    add b
    and b
    ld sp, $dfe0
    ld d, b
    ldh [$e4], a
    ldh a, [$d0]
    ret nc

    ld [c], a
    ld b, c
    ld e, $3e
    add $81
    nop
    nop
    jr nc, jr_02d_7346

jr_02d_7346:
    add d
    ret nc

    ldh [$a0], a
    xor c
    rrca
    ld [bc], a
    ld bc, $0300
    ld [hl], c
    xor c
    pop af
    ldh [$60], a
    add sp, $30
    add e
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ld bc, $0000
    nop
    push af
    push bc
    push de
    push hl
    ld [$c32f], a
    ld c, a
    ld a, $ff
    ld b, $01
    ld hl, $c330
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, c
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $4028
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_02d_73cf

    jr jr_02d_743f

jr_02d_73cf:
    add sp, -$02
    ld de, $c332
    push hl
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld d, h
    ld e, l
    ld b, $ff
    ld c, $03
    xor a
    ld hl, $c330
    ld [hl], a
    ld hl, $c338
    ld [hl], a
    inc hl

jr_02d_73eb:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_02d_7427

    cp $ff
    jr nz, jr_02d_73eb

    inc b
    ld a, b
    inc a
    ld [hl], a
    push de
    push hl
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld [de], a
    inc de
    inc de
    push hl
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    ld a, [de]
    inc a
    inc de
    push hl
    push de
    ld d, a
    ld a, $04
    sub c
    ld hl, $c330
    ld e, a
    ld a, d
    ld d, $00
    add hl, de
    add hl, de
    inc hl
    ld [hl], a
    pop de
    pop hl
    inc hl
    dec c
    jr nz, jr_02d_73eb

jr_02d_7427:
    ld a, $ff
    dec hl
    ld [hl], a
    push hl
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    dec de
    dec de
    ld [de], a
    ld a, $01
    ld hl, $7453
    call Call_000_23e8
    add sp, $02

jr_02d_743f:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7453
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_02d_745c

    rst $30
    nop
    inc bc
    ret nz

jr_02d_745c:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld hl, $c338

jr_02d_746e:
    ld a, [hl]
    cp $ff
    jr z, jr_02d_7490

    push hl
    ld l, c
    ld h, $00
    add hl, hl
    ld de, $c330
    add hl, de
    inc hl
    ld a, [hl]
    dec a
    ld [hl], a
    pop hl
    inc hl
    ld b, c
    inc c
    or a
    jr nz, jr_02d_746e

    ld a, b
    call Call_02d_749a
    ld a, c
    cp $04
    jr nz, jr_02d_746e

jr_02d_7490:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_02d_749a:
    push af
    push bc
    push de
    push hl
    push af
    add sp, -$01
    ld hl, sp+$00
    ld [hl], a
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [hl]
    ld [$c33c], a

jr_02d_74b0:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4028
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_02d_74d9

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_02d_74b0

jr_02d_74d9:
    ld b, a
    inc hl
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]
    push af
    push bc
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $b000
    add hl, de
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $d800
    add hl, bc
    pop de
    pop bc
    call Call_000_0468
    ld a, [$c33c]
    add $04
    ld [$c33c], a
    pop af
    ld d, a
    add sp, $01
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [$c33c]
    ld [hl+], a
    ld [hl], d
    pop hl
    pop de
    pop bc
    pop af
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02d_78fa:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02d_79c0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02d_79fb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02d_7ae0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02d_7aff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02d_7b4d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02d_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02d_7fff:
    rst $38
