; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $051", ROMX[$4000], BANK[$51]

    db $10
    ld b, b
    pop hl
    ld e, b
    add b
    ld d, b
    ldh a, [rBCPS]
    ld d, c
    ld [hl], c

    db $04, $72

    inc bc
    ld [hl], e
    adc [hl]
    ld [hl], a
    ld a, [de]
    ld b, b
    ld c, d
    ld b, b
    ld d, b
    ld c, e
    ld d, b
    ld c, l
    ld b, h
    ld c, a
    rst $18
    dec l
    rst $38
    ld d, e
    sub b
    inc bc
    call nc, $ff01
    ld a, a
    db $f4
    inc bc
    sub b
    inc bc
    call nc, $1601
    ld a, l
    sbc a
    ld a, [hl]
    pop af
    nop
    call nc, $ff01
    ld a, a
    sub b
    inc bc
    call nc, $ac01
    ld [$08f5], sp
    ld a, a
    ld de, $1aff
    xor h
    ld [$2508], sp
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_051_404b:
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
    jr nz, jr_051_404b

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
    rst $38
    or a
    ld a, a
    rra
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

Jump_051_40ff:
    ld hl, sp-$02
    add sp, -$02
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
    call nc, Call_051_48c2
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
    ld a, a
    nop
    jr nz, jr_051_415d

jr_051_415d:
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
    jp Jump_051_7f7c


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

Jump_051_4316:
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
    jp z, Jump_051_6fe0

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
    ld l, l
    nop
    cp e
    nop
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

jr_051_444a:
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
    cp a
    rrca
    db $e3
    rrca
    jr jr_051_444a

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

jr_051_4500:
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
    jr nc, jr_051_4500

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
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b
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

jr_051_45c4:
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

jr_051_45d7:
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
    jr c, jr_051_45c4

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

jr_051_460c:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_051_45d7

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_051_61d8

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
    jr nz, jr_051_460c

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
    ei
    adc [hl]
    ld a, a
    sub b
    jp z, Jump_051_5ac8

    and c
    inc a
    jp Jump_051_537f


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
    rst $18
    rst $28
    call z, $a4f3
    ei
    sub b
    rst $08
    inc bc
    rst $38
    and a
    dec b
    rst $38
    ld [bc], a
    add hl, de
    and [hl]
    sub b
    call $9053
    ret nz

    ld [hl], l
    xor [hl]
    sub b
    ret z

    ld [hl], a
    adc b
    call z, $ca90
    scf
    sub b
    call z, Call_051_6e4e
    sub b
    adc $ae
    ld sp, hl
    ld a, c
    sub b
    ret z

    cp a
    ld e, a
    sub b
    jp Jump_000_1def


    ld [c], a
    ld [$00f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    rst $28
    ld h, c
    ld a, [hl]
    add c
    add sp, $10
    and $61
    ld e, $95
    sbc $90
    ret nz

    add hl, sp
    jp nz, $f00f

    rst $18
    ld h, e
    ld d, a
    xor b
    rst $38
    ei
    nop
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    xor $cf
    ld h, e
    ld bc, $60ff
    call nc, Call_000_00a0
    rst $38
    ld [hl+], a
    cp e
    rst $38
    ld [$408e], sp
    ld b, b
    rst $38
    sub b
    ld b, h
    ldh [$28], a
    adc d
    cp h
    ret nz

    jr z, @-$40

    ret nz

    ld b, b
    ld a, a
    ld h, c
    rst $38
    rst $38
    db $eb
    ld [$fb55], a
    nop
    cp d
    ld a, [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$76fa], a
    add b
    xor [hl]
    ld [hl], d
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

jr_051_475e:
    db $e4
    ldh [rP1], a
    ld d, e
    nop
    ld bc, $74ce
    nop
    jr nz, jr_051_4769

jr_051_4769:
    add b
    ld l, [hl]
    nop
    and b
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
    db $eb
    ld c, $08
    jr nc, jr_051_4790

jr_051_4790:
    inc bc
    sub h
    ret nz

    rrca
    rst $38
    ld a, [de]
    rst $38
    rst $38
    ld [hl], $fd
    ld hl, $f8fe
    rst $30
    xor l
    ei
    di
    rst $28
    ld h, d
    jr nz, jr_051_47f7

jr_051_47a5:
    db $fd
    ld d, l
    xor d
    jr nz, jr_051_47a5

    rst $18
    ld a, [bc]
    ld e, d
    jr nz, jr_051_475e

    rst $38
    add e
    rst $38
    ld c, l
    rst $38
    rst $30
    sub e
    rst $28
    ld c, [hl]
    rst $30
    and e
    rst $38
    ret


    cp a
    rst $30
    and a
    ei
    ret


    rst $30
    or $4c
    ld h, b
    ld_long $ffff, a
    or b
    rst $38
    db $eb
    db $fc
    ld b, c
    cp $a8
    rst $30
    rst $30
    ld b, $fb
    ld e, a
    ld c, l
    db $dd
    sbc e
    sbc l
    ld c, a
    rst $38
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $f1
    rst $38
    or h
    ei
    reti


    rst $38
    jp c, $9d9f

    ld c, a
    push af
    ld h, $f0
    ld [c], a
    ld l, [hl]
    ldh a, [$e0]
    ld sp, hl
    rst $38
    rst $20
    jr @+$01

jr_051_47f7:
    jp $e724


    inc h
    rst $38
    inc a
    db $db
    inc a
    ei
    rst $20
    jr jr_051_4863

    ld b, c
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

jr_051_4819:
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
    ld b, [hl]
    add b
    ldh a, [rTAC]
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $cf

jr_051_482f:
    rst $38
    jr jr_051_4819

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

jr_051_483e:
    nop
    sbc c
    ld h, [hl]
    ld a, $08
    ld hl, $c23d
    jr jr_051_482f

    add hl, de
    nop
    inc h

jr_051_484b:
    ldh [$61], a
    sbc a
    ld d, [hl]
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    ld h, b
    add h
    ld d, b
    and e
    ld de, $efff
    rra
    ldh [$3d], a
    rst $00
    inc sp
    rst $08

jr_051_4860:
    dec l
    db $fd
    rst $10

jr_051_4863:
    or b
    ld h, l
    jr z, jr_051_483e

    ld b, h
    ei
    or h
    rst $38
    rst $38
    ret nc

    rst $38
    rst $30
    jr jr_051_4860

    jr z, @-$01

    ld l, $ff
    db $eb
    ld a, [hl+]
    rst $38
    ld l, d
    xor e
    or [hl]
    cp $af
    rst $38
    cp a
    xor l
    db $ed
    sbc a
    ld e, a
    db $ed
    push hl

jr_051_4885:
    dec sp
    rst $38
    rst $30
    ld l, $ef
    jr c, jr_051_484b

    ld l, [hl]
    rst $30
    ld c, a
    rst $38
    adc $3f
    db $10
    rst $38
    jr z, jr_051_4885

    inc a
    rst $28
    cp a
    ld a, [hl+]
    db $eb
    ld a, [hl]
    db $eb
    xor d
    or a
    ldh [$e5], a
    dec h
    rst $38
    ei
    ld [hl], $ef
    jr z, @+$01

    ld a, $ef
    ld [hl], a
    ei
    rst $08
    ld l, $20
    sbc $20
    rst $08
    or [hl]
    dec hl
    db $ed
    cp a
    cp d
    dec sp
    rst $18
    db $76
    rst $18
    ld d, h
    ret z

    nop
    ld a, [hl+]
    ld d, h
    ldh a, [$bf]

Call_051_48c2:
    db $ed
    db $ec
    xor e
    db $f4
    add b
    xor a
    ld h, b
    ret nz

    or [hl]
    ld h, b
    call nz, $b0ff
    rrca
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    db $fd
    cp [hl]
    ld e, $e0
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    jp nc, $e130

    ld e, b
    ld h, b
    ld h, [hl]
    sub b
    ld c, e
    dec hl
    ret nc

    ld c, b
    inc a
    inc bc
    cp a
    add h
    ld [hl], e
    or h
    db $eb
    inc hl
    call z, $e170
    ld a, [hl-]
    rst $38
    rst $18
    rst $30
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    db $fd
    ld l, $28
    ld h, e
    add hl, de
    rst $20
    rla
    xor $3f
    ret z

    ld e, a
    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [hl+]
    nop
    jp c, $20c8

    rst $38
    xor a
    cp $df
    ld hl, sp+$6f
    ld hl, sp-$21
    ldh a, [$fa]
    ld b, e
    ld b, b
    inc a
    and [hl]
    ld b, c
    ccf
    jp $c73e


    db $dd
    rst $30
    cpl
    jp c, $f02f

    push hl
    dec a
    jp $c73c


    rst $08
    ret nc

    cpl
    ret c

    cpl
    ld a, $ff
    db $ec
    db $eb
    sub b
    rst $38
    ld e, l
    ld a, [hl+]
    or b
    ret nz

    xor d
    db $eb
    ld a, a
    or b
    ret z

    and l

jr_051_4948:
    or b
    ret nz

    add c
    xor c
    or b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    ld [$abff], a
    nop
    rst $18
    ld e, [hl]
    nop
    ei
    ld a, [$7fe0]
    ld_long a, $ffe0
    ld a, [$804e]
    rst $30
    inc [hl]
    jr nz, jr_051_49d7

    nop
    sub $00
    cp e
    rst $28
    nop
    rst $28
    nop
    ld [hl], l
    ld e, b
    ld [bc], a
    db $db
    inc h
    cp $ff
    ld bc, $0af5
    jp c, $f425

    dec bc
    add sp, -$01
    rla
    add sp, $17
    or c
    ld c, [hl]
    jp hl


    ld d, $d2
    rst $38

jr_051_498d:
    inc l
    ld h, e
    sbc h
    ret nc

    ld l, $e9
    ld d, $b4
    rst $38
    ld c, e
    rst $28
    db $10
    ld a, l
    add d
    rst $10
    jr z, jr_051_4948

    rst $38
    ld d, l
    ld b, l
    cp d
    add b
    ld a, a
    jr jr_051_498d

    ld l, [hl]
    rst $38
    add c
    ld a, [hl]
    cp l
    jr @-$17

    add b
    ld a, a
    ld b, l
    rst $38
    cp d
    xor d
    ld d, l
    rst $10
    jr z, jr_051_4a34

    add d
    rst $28
    rst $38
    db $10
    ld e, a

jr_051_49bc:
    add b
    rla
    ldh [$83], a
    ld a, b
    ld d, c
    rst $38
    xor h
    xor e
    ld d, h
    ldh a, [$0e]
    xor c
    ld d, [hl]
    db $f4
    rst $38
    dec bc
    db $f4
    dec bc
    xor c
    ld d, [hl]
    pop af
    ld c, $aa
    rst $38
    ld d, h
    ld d, d

jr_051_49d7:
    xor h
    add h
    ld a, b
    jr jr_051_49bc

    ld l, b
    rst $38
    add b
    ld a, a
    cp a
    rra
    rst $28
    add a
    ld a, a
    ld d, e
    rst $18
    xor a
    xor e
    ld d, l
    pop af
    rrca
    ldh [$e1], a
    ld d, a
    nop
    rst $30
    adc [hl]
    nop
    rla
    call z, Call_000_0760
    nop
    ld c, d
    ld b, b
    rst $38
    dec b
    nop
    ld [bc], a
    nop
    sub b
    nop
    adc b
    nop
    rst $30
    ld de, $8001
    db $fc
    ldh [$c0], a
    ld b, b
    ld de, $ff01
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, b
    ld [bc], a
    nop
    ld b, b
    ld b, b
    rst $38
    and d
    and b
    ld b, b
    ld b, b
    and b
    and b
    ld d, l
    ld d, l
    rst $28
    ld [$41ea], a
    ld b, c
    db $ec
    ldh [rLYC], a
    inc hl
    inc hl
    rst $38
    ld b, l
    ld b, l
    xor e
    xor e
    ld d, a
    ld d, a
    rst $38
    rst $38
    rst $38
    sub b

jr_051_4a34:
    nop
    adc c
    nop
    ld de, $8300
    nop
    rst $38
    ld [de], a
    nop
    rst $00
    ld b, b
    dec e
    nop
    ld [hl], a
    nop
    rst $38
    cp $ff
    cp $fe
    db $f4
    ld a, [$f2f6]
    rst $30
    pop af
    or $fe
    db $fc
    ldh [$f4], a
    ld a, [$7fff]
    ei
    ccf
    ld a, a
    db $fc
    ldh [rIE], a
    rst $38
    ld a, a
    cpl
    rst $30
    rst $38
    db $eb
    ld h, a
    inc hl
    rst $28
    ld sp, hl
    cp $fe
    cp $7f
    db $eb
    or $ee
    and $e3
    xor $fe
    db $fc
    ldh [$e7], a
    add sp, -$0a
    rst $38
    db $ec
    ldh [$fc], a
    ld [c], a
    ld b, a
    inc de
    rst $28
    db $dd
    rst $00
    ret c

    ldh [$f5], a
    ld a, [$bdfc]
    pop hl
    cp $dd
    ld a, a
    cp $f3
    db $fc
    ld d, l
    ld [$fdf2], a
    call nz, $9fe3
    ccf
    rst $38
    rst $30
    ld a, a
    ld a, $3c
    ld b, b
    cp b
    ldh [rIE], a
    rst $38
    ld a, [$fdfa]
    db $fd
    cp $fc
    db $fd
    ld a, [$fcfd]
    cp a
    ld h, b
    db $fd
    rst $38
    rst $38
    rst $18
    cp a
    ld a, a
    rst $18
    ld c, a
    ccf

jr_051_4ab5:
    rst $18
    ccf
    sbc a
    db $e4
    ldh [$ef], a
    rst $38
    or a
    ld e, a
    ccf
    cp $7f
    pop hl
    db $fd
    cp $a3
    ld h, b
    cp $fe
    ret c

    ldh [rIE], a
    db $fc
    xor a
    sbc a
    ld l, a
    rra
    rst $00
    cp e
    ld a, a
    rra
    sub e
    ld h, b
    cp a
    ld a, a
    rst $08
    ret c

    ldh [$f9], a
    db $fd
    cp $c8
    db $e3
    cp $fe
    rst $28
    cp $7e
    db $fd
    rst $18
    or $ff
    sbc a
    rst $38
    cpl
    ld [hl], a
    ld h, b
    rst $18
    ccf
    rst $18
    rst $20
    sbc a
    rst $28
    rra
    call $e2d8
    rst $08
    rst $10
    rst $38
    db $e3
    db $db
    add e
    cp e
    ret


    or c
    pop hl
    sub l
    rst $28
    ld [hl], $00
    and c
    add c
    ld e, d
    ld h, c
    rst $28
    rst $08
    rst $08
    rst $38
    rst $38
    sub a
    and a
    db $db
    and e
    sbc a
    db $e3
    ccf
    rst $38
    ld b, e
    ei
    ei
    cp $fe
    ld a, a
    ld a, [hl]
    ld hl, sp-$01
    ldh a, [$a6]
    sbc d
    pop hl
    add c
    daa
    daa
    rst $38
    rst $38
    rst $38
    sub c
    ld b, c
    ld b, d
    add b
    db $e3
    jr nz, jr_051_4ab5

    ld [hl], a
    nop
    or e
    or e
    adc [hl]
    ldh [$fe], a
    cp a
    cp a
    cp $bf
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ed
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    inc sp
    rst $38
    db $ec
    ld de, $1113
    inc sp
    inc de
    ld hl, sp-$1f
    ld b, [hl]
    rst $38
    pop hl
    inc de
    inc de
    ldh a, [$e0]
    ld a, [c]
    pop hl
    ldh a, [$e1]
    ld sp, $e0fe
    dec [hl]
    inc sp
    cp $e1
    ld sp, $e0fe
    inc sp
    ld sp, $e3e9
    pop bc
    ldh [rNR42], a
    inc de
    ret nc

    and $c0
    ld [c], a
    cp $e5
    cp a
    db $e3
    ld sp, $e1ba
    xor h
    ldh [rNR23], a
    db $e4
    ld [c], a
    db $fc
    ld sp, hl
    cp d
    ldh [$31], a
    inc de
    and [hl]
    ld [c], a
    adc h
    ldh [$7a], a
    ldh [$88], a
    sub h
    ldh [$72], a
    ld [c], a
    ld h, b
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [$66]
    ld a, $ff
    db $e4
    nop
    ld b, $06
    ld h, [hl]
    ld b, $f8
    pop hl
    rst $38
    pop hl
    cp h
    ldh a, [$e1]
    rst $20
    db $e4
    ld h, b
    nop
    ld h, b
    nop
    di
    ldh [rP1], a
    add e
    ld h, [hl]
    ld h, b
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    db $dd
    ld [c], a
    rst $10
    pop hl
    sbc c
    ld l, a
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub [hl]
    xor e
    ldh [rNR11], a
    sbc c
    rst $38
    ldh [$78], a
    and e
    ldh [$fc], a
    pop hl
    sbc h
    pop hl
    ld l, c
    sub c
    ld l, c
    sub c
    di
    ldh [rTAC], a
    sbc c
    ld h, [hl]
    ld l, c
    cp $e0
    ldh a, [$e1]
    db $db
    pop hl
    add e
    ld [c], a
    ret nc

    db $e3
    ld d, b
    pop de
    db $e4
    db $dd
    ld [c], a
    db $fc
    ld [c], a
    ret nz

    ldh [rNR24], a
    ld a, e
    ret nz

    sbc c
    cp $e1
    rst $20
    sub c
    sbc c
    ld de, $e268
    ld h, e
    ldh [$99], a
    sub b
    sub b
    jp $9000


    ld e, e
    ldh [$a0], a
    ld [c], a
    ldh a, [$e1]
    rst $20
    db $e4
    add hl, bc
    sub c
    dec sp
    add hl, bc
    sub c
    di
    ldh [$99], a
    nop
    add hl, bc
    cp $e0
    ldh a, [$e1]
    ret nz

    db $db
    pop hl
    inc sp
    ld [c], a
    ret nc

    db $e3
    pop de
    db $e4
    db $dd
    ld [c], a
    reti


    pop hl
    sub b
    add hl, bc
    ld [de], a
    and b
    ldh [$91], a
    and b
    pop hl
    add $e1
    sbc c
    ld de, $4dc2
    pop hl
    sub b
    ld [c], a
    ld h, h
    adc d
    ldh [$f0], a
    pop af
    sub c
    add sp, -$1c
    call nc, Call_000_22e4
    sub d
    cp $e0
    rst $38
    ld de, $1919
    sbc c
    sbc c
    sub d
    sub d
    ld [hl+], a
    db $fc
    db $fc
    pop hl
    rst $38
    pop hl
    ld de, $1999
    sub d
    add hl, de
    sub d
    dec sp
    sbc c
    ld [hl+], a
    ld [c], a
    db $e3
    ld [hl+], a
    ld [hl+], a
    add hl, hl
    jp hl


    db $e3
    db $e4
    ldh [$80], a
    ldh a, [$e3]
    jp hl


    pop bc
    rst $10
    pop hl
    sbc $e1
    jp c, $88e1

    push hl
    adc c
    db $e4
    sbc c
    ld hl, sp-$54
    pop hl
    jp nz, $f8e0

    ldh [$99], a
    sub d
    add hl, de
    sbc c
    ld de, $1939
    add $e3
    pop af
    pop hl
    add hl, hl
    sub c
    add hl, hl
    ld hl, sp-$40
    xor l
    pop hl
    nop
    cp $e0
    cp h
    ld [c], a
    and d
    db $e4
    ldh a, [$e1]
    add h
    ld [c], a
    and h
    ld [c], a
    and a
    db $e4
    dec [hl]
    ld [c], a
    nop
    ret nz

    push bc
    cp d
    ret nz

    ld a, d
    push hl
    cp $fd
    sbc b
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and $a3
    ld h, a
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $38
    sbc l
    ld h, d
    db $dd
    rst $38
    rst $20
    pop de
    db $dd
    ld de, $e0d1
    jr @-$58

    ld c, $ed
    ret nz

    ld a, l
    and b
    ld [hl], l
    jr c, jr_051_4f41

    rla
    ld de, $5f77
    rla
    ld [hl], a
    ld de, $7711
    rst $38
    db $e3
    ld [hl], c
    cp $e4
    ld d, b
    rst $38
    db $fc
    adc [hl]
    rst $18
    rst $38
    rst $38
    ld e, b
    rst $18
    ld de, $ee10
    call z, $e4ff
    inc a
    or [hl]
    push af
    ret nc

    ret nz

    rst $10
    db $dd
    ld [hl], a
    rst $10
    ld h, b
    cp $b8
    ld [$065f], a
    nop
    ld h, [hl]
    ld de, $6619
    add b
    sub [hl]
    ld [hl], d
    ld h, h
    dec b
    ld l, c
    ld l, c
    ld h, h
    ld h, b
    ld de, $9863
    db $f4
    db $fd
    ld_long $ff26, a
    rst $38
    rst $38
    nop
    ld a, [c]
    pop af
    ld a, b
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    xor b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor b
    adc c

jr_051_4f41:
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
    rst $38
    nop
    nop
    dec c
    nop
    db $dd
    dec c
    db $dd
    db $dd
    ld a, e
    db $dd
    xor $ff
    ldh [$de], a
    xor $d0
    nop
    ld hl, sp-$1f
    rst $30
    xor $ee
    nop
    ld hl, sp-$1d
    rst $28
    nop
    rrca
    ldh a, [$7f]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    db $dd
    ldh [rIE], a
    ret nc

    db $dd
    nop
    ret nc

    nop
    rst $38
    rst $38
    rrca
    ld l, $ef
    ldh [rP1], a
    rrca
    cp e
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ldh a, [$e3]
    rst $38
    dec bc
    cp e
    nop
    nop
    or b
    nop
    cp e
    nop
    di
    cp e
    or b
    add sp, -$1b
    xor $e0
    cp e
    nop
    dec bc
    nop
    ld a, l
    nop
    ret nc

    push hl
    cp e
    xor d
    cp e
    xor d
    cp d
    cp $e0
    jp z, $e5ff

    sbc d
    cp $e0
    sbc c
    cp $e1
    cp b
    ld [$bbbb], a
    db $db
    adc b
    adc b
    sbc b
    db $e3
    call z, $88cc
    db $e4
    cp $0f
    ld a, e
    xor $00
    ld l, b
    ldh [$ed], a
    db $dd
    xor $d0
    ld h, c
    ldh [rP1], a
    ld c, b
    rst $38
    ld c, b
    rst $38
    sub b
    ld_long $ff48, a
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld c, $ee
    call $bcee
    rst $38
    ret nc

    cp e
    or b
    xor $e0
    xor $f8
    rrca
    rst $30
    adc c
    add hl, bc
    sbc c
    db $db
    and h
    ldh [$dd], a
    rst $28
    db $dd
    rst $10
    rst $28
    ret nc

    rrca
    ret nz

    ld [c], a
    inc c
    cp d
    pop hl
    db $dd
    ret nc

    or e
    call z, Call_000_10cc
    pop bc
    ld a, [c]
    and d
    ld [$d800], sp
    ldh [$f0], a
    rra
    nop
    adc b
    nop
    sbc c
    sub b
    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld b, e
    ld [$9688], sp
    and d
    and b
    ldh [$9d], a
    and $fe
    and b
    inc c
    ld [c], a
    and h
    ld bc, $bfcc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    sub b
    ld d, b
    sub b
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr z, jr_051_50a2

jr_051_50a2:
    nop
    nop
    sub b
    nop
    nop
    nop
    push af
    nop
    ret z

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rla
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld d, b
    nop
    nop
    nop
    ret z

    nop
    nop
    nop
    ld [$9000], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    cpl
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    and b
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    call nc, Call_000_2000
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld b, $00
    nop
    nop
    dec b
    nop
    ld b, b
    nop
    nop
    nop
    or d
    nop
    nop
    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    nop
    inc c
    nop
    nop
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$bc]
    rst $38

jr_051_5152:
    add sp, -$01
    add c
    cp $08
    ldh a, [rNR41]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_051_5160:
    ld a, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    add c
    inc a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_051_5152

    add b
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    jr nz, jr_051_5160

    rst $38
    rst $38

jr_051_51a2:
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    add c
    inc a
    ld [$0000], sp
    nop
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    ld hl, sp-$1c
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38

jr_051_51d2:
    or $ff
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    jr nz, jr_051_51a2

    nop
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

jr_051_51ee:
    nop
    nop
    nop
    ret nz

    nop
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
    ret nz

    ld b, b
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
    jr nz, jr_051_51d2

    nop
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
    db $ec
    rst $38
    ld sp, hl
    cp $e6
    ld hl, sp+$48
    ldh a, [$d0]
    ldh [$a8], a
    ret nz

    jr nz, jr_051_51ee

    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rla
    rrca
    ld [de], a
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    rla
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    jp Jump_000_3c3c


    nop
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
    ld b, b
    add b
    ret nz

    add b
    jr nz, @-$3e

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld d, b
    add b
    ld b, b
    add b
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    jp Jump_000_3c3c


    nop
    ld b, b
    nop
    nop
    nop
    xor b
    ldh a, [$ea]
    ldh a, [$f4]
    ld hl, sp-$2c
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp-$48
    ldh a, [$e8]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$f9fc], a
    cp $fd
    cp $f4
    rst $38
    ld c, b
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
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
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
    db $ed
    cp $fe
    ld hl, sp-$18
    ldh a, [rHDMA2]
    ldh [$e8], a
    ret nz

    ret nz

    add b
    ld d, b
    add b
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    jr nz, jr_051_533a

jr_051_533a:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    xor a
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    or a
    rra
    ccf
    rra
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    rlca
    rla
    inc bc
    dec b
    inc bc
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    rst $18
    inc a
    inc a
    nop
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
    add b
    nop
    and b
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    nop
    add b

Jump_051_537f:
    nop
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ei
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    or b
    ldh [$f4], a
    ldh [$f8], a
    ldh a, [$d8]
    ldh a, [$f8]
    ldh a, [$e8]
    ldh a, [$b4]
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    ei
    rst $20
    ld h, [hl]
    add c
    sub c
    nop
    db $fd
    cp $f6
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    db $fc
    cp $fc
    push af
    cp $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    nop
    nop
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
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    nop
    add b
    add b
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $c385


    inc b
    add e
    ld b, c
    add e
    ld [bc], a
    add c
    nop
    add b
    nop
    add b
    and b
    ret nz

    add b
    ret nz

    ret nc

    ldh [$64], a
    ldh a, [$f0]
    db $fc
    call c, Call_000_1eff
    rst $38
    ld b, c
    ld e, $0c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_051_545c

jr_051_545c:
    add d
    ld a, b
    ld e, b
    rst $38
    nop
    ret nz

    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    ret nz

    nop
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
    ld bc, $0300
    nop
    and b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    cp $eb
    ld e, b
    dec de
    ld e, c
    cp d
    ld h, e
    cp d
    ld h, l
    or h
    ld h, a
    or h
    ld d, l
    ccf
    ld a, a
    push hl
    cpl
    add c
    ld h, $ff
    ld a, a
    db $ec
    dec hl
    rst $20
    dec hl
    add c
    ld h, $5a
    ld a, l
    cp a
    ld a, [hl]
    ld [hl], h
    db $10
    add c
    ld h, $ff
    ld a, a
    push hl
    cpl
    add c
    ld h, $ca
    nop
    rst $38
    ld a, a
    ccf
    ld a, [hl]
    scf
    ld [hl], c
    jp z, Jump_000_0800

    dec h
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_051_591c:
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
    jr nz, jr_051_591c

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
    rst $38
    or a
    ld a, a
    rra
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
    call nc, Call_051_48c2
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
    ld a, a
    nop
    jr nz, jr_051_5a2e

jr_051_5a2e:
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
    jp Jump_051_7f7c


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

Jump_051_5ac8:
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
    jp z, Jump_051_6fe0

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
    ld l, l
    nop
    cp e
    nop
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

jr_051_5d1b:
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
    cp a
    rrca
    db $e3
    rrca
    jr jr_051_5d1b

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

jr_051_5dd1:
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
    jr nc, jr_051_5dd1

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
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b
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

jr_051_5e95:
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

jr_051_5ea8:
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
    jr c, jr_051_5e95

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

jr_051_5edd:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_051_5ea8

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_051_61d8

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
    jr nz, jr_051_5edd

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
    ei
    adc [hl]
    ld a, a
    sub b
    jp z, Jump_051_5ac8

    and c
    inc a
    jp Jump_051_537f


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
    rst $18
    rst $28
    call z, $a4f3
    ei
    sub b
    rst $08
    inc bc
    rst $38
    and a
    dec b
    rst $38
    ld [bc], a
    add hl, de
    and [hl]
    sub b
    call $9053
    ret nz

    ld [hl], l
    xor [hl]
    sub b
    ret z

    ld [hl], a
    adc b
    call z, $ca90
    scf
    sub b
    call z, Call_051_6e4e
    sub b
    adc $ae
    ld sp, hl
    ld a, c
    sub b
    ret z

    cp a
    ld e, a
    sub b
    jp Jump_000_1def


    ld [c], a
    ld [$00f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    rst $28
    ld h, c
    ld a, [hl]
    add c
    add sp, $10
    and $61
    ld e, $95
    sbc $90
    ret nz

    add hl, sp
    jp nz, $f00f

    rst $18
    ld h, e
    ld d, a
    xor b
    rst $38
    ei
    nop
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    cp $cf
    ld h, e
    inc c
    rst $30
    reti


    ld l, a
    ld [$63ff], sp
    rst $38
    cp l
    sub $6b
    ld l, d
    rst $18
    jr nc, @-$1f

    ld d, e
    rst $38
    db $fd
    nop
    rst $38
    ld e, l
    rst $20
    ld [$40ff], sp
    ld l, a
    cp a
    ld l, h
    or a
    ld c, b
    cp h
    ret nz

    ld b, b
    rst $38
    inc h
    dec b
    call c, $ffff
    db $e4
    db $e3
    ld d, l
    nop
    cp d
    ld a, [hl]
    add b
    xor e
    nop
    rst $10
    ld e, l
    nop
    ld [$8076], a
    xor [hl]
    ld [hl], d
    add b
    adc d
    nop
    rst $30
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    nop
    dec d
    nop
    rst $38
    xor b
    nop
    ld d, c
    nop
    ld [$2200], sp
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
    ld d, e
    nop
    ld bc, $0074
    jr nz, jr_051_6042

jr_051_6042:
    add b
    ld l, [hl]
    nop
    cp $a0
    ldh a, [rNR23]
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld [hl], b
    rst $38
    rst $38
    ld a, b
    db $fc
    inc a
    cp $80
    ld a, h
    ld h, h
    nop
    rst $38
    nop
    ld [$3e1c], sp
    ld [hl], $7f
    and [hl]
    ld a, a
    ld e, a
    add h
    ld l, a
    ld b, b
    ld c, $08
    jr nc, jr_051_6069

jr_051_6069:
    inc bc
    ld c, h
    and b
    rst $38
    ld b, $ff
    ld e, h
    rst $38
    ld de, $74fe
    ei
    ld a, a
    ret nz

    rst $38
    sub c
    rst $28
    ld c, [hl]
    rst $38
    ei
    ld [bc], a
    ret nz

    ld a, a
    inc b
    ei
    ld c, d
    or l
    and b
    ld e, a
    ld a, [bc]
    ld e, b
    jr nz, @+$01

    ld h, $df
    sub e
    rst $28
    ld h, $df
    add d
    rst $38
    ld a, a
    ld d, e
    rst $28
    adc c

jr_051_6096:
    rst $30
    ld d, e
    rst $28
    add d

jr_051_609a:
    ld c, d
    jr nz, jr_051_609a

    push af
    ld [bc], a
    ld b, b
    ldh a, [rIE]
    xor d
    db $fd
    ld d, c
    cp $ef
    add b
    rst $38
    ld d, l
    db $eb
    ld e, a
    ld c, l
    pop de
    sbc a
    sbc l
    rst $38
    ld c, a
    daa
    rla
    and e
    di
    db $db
    pop hl
    xor $bf
    pop af
    or h
    ei
    ret


    rst $38
    jp c, $e0f0

    ld h, $ff
    rla
    and d
    di
    ld e, d
    pop hl
    ld l, [hl]
    pop af
    inc [hl]
    rst $38
    ei
    ld sp, hl
    rst $38
    rst $20
    jr jr_051_6096

    inc h
    rst $20
    ld a, a
    inc h
    rst $38
    inc a
    db $db
    inc a
    rst $20
    jr jr_051_613e

    ld b, c
    rst $38
    ld h, a
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    and b
    rst $38
    db $10
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    ld h, b
    rst $38
    ld d, $a9

jr_051_60f4:
    pop hl
    dec bc
    adc d
    daa
    daa
    rrca
    sbc a
    xor l
    rra
    sub $3f
    ld a, l
    ld b, [hl]
    add b
    ldh a, [rTAC]
    inc h
    rst $38
    db $db
    inc c
    rst $30
    ld [hl], $cf
    jr jr_051_60f4

    sub $ff
    rrca
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    nop
    inc e
    rst $18
    inc bc
    cp a
    nop
    sbc c
    ld h, [hl]
    ld [$3d21], sp
    jp nz, Jump_000_18e7

    rst $20
    add hl, de
    nop
    inc h
    ldh [$61], a
    ld d, [hl]
    xor c
    ld [hl+], a
    di
    rst $38
    ld [hl], l
    ld h, b
    add h
    ld d, b
    and e
    ld de, $1fef
    ldh [$bf], a
    dec a
    rst $00
    inc sp
    rst $08
    dec l
    rst $10

jr_051_613e:
    or b
    ld h, l
    jr z, @+$01

    rst $10
    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $28
    rst $38
    jr @-$23

    inc l
    rst $10
    inc l
    rst $28
    inc a

jr_051_6152:
    sub l
    rst $38
    ld l, [hl]
    sbc e
    ld b, [hl]

jr_051_6157:
    rst $18
    ld l, [hl]
    ld a, [bc]
    rst $10
    dec e

jr_051_615c:
    rst $38
    add e
    adc a
    rst $10
    cp l
    ld a, [hl]
    rst $28
    jr c, @+$01

    rst $30
    jr z, jr_051_6157

    ld a, $f1
    ld b, b
    ld e, $18
    rst $38
    inc e
    rst $38
    rst $28
    inc d
    rst $28
    inc l
    rst $38

jr_051_6175:
    ld d, $ef
    ld a, [de]
    rst $28
    rst $00
    ld e, [hl]
    rst $28
    dec bc
    ldh [$e2], a
    ld a, [hl]
    rst $38
    jr z, jr_051_6152

    rst $38
    jr c, jr_051_6175

    ld l, $e1
    pop hl
    jr nz, @-$20

    jr nz, jr_051_615c

    rst $38
    or [hl]
    dec hl
    db $ed
    cp d
    dec sp
    rst $18
    db $76

jr_051_6195:
    rst $18
    push hl
    ld d, h
    ret z

    nop
    ld a, [hl+]
    ldh a, [$bf]
    db $fd
    db $fc
    or b
    rrca
    sbc $bf
    ld a, a
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld e, $e0
    xor d
    ld e, a
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    jr nc, jr_051_6195

    ld e, b
    ld h, b
    ld h, [hl]
    ld a, [$4b90]
    dec hl
    ret nc

    ld c, b
    inc a
    inc bc
    add h
    ld [hl], e
    or h
    rst $30
    db $eb
    and e
    ld c, h
    ld [hl], b
    pop hl
    ld a, [hl-]
    rst $18
    rst $30
    ld e, [hl]
    cp a
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ld l, $28
    ld h, e
    add hl, de
    rst $38
    rst $20

Jump_051_61d8:
    rla
    xor $3f
    ret z

    cpl
    ret c

    rra
    db $eb
    ldh a, [$fd]
    ld a, [hl+]
    nop
    jp c, $20c8

    xor a
    cp $df
    ld e, a
    ld hl, sp+$6f
    ld hl, sp-$21
    ldh a, [rSCX]
    ld b, b
    inc a
    and [hl]
    ld b, c
    rst $38
    ccf
    jp $c73e


    db $dd
    cpl
    jp c, $fe2f

    ldh a, [$e5]
    dec a
    jp $c73c


    ret nc

    cpl
    ret c

    add c
    cpl
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    jr nc, jr_051_6297

    di
    ld d, h

jr_051_621a:
    pop bc
    xor d
    add b
    sbc $80
    ld [hl-], a
    ld hl, $3eaf
    add c
    inc c
    jp Jump_000_2d46


    or l
    inc [hl]
    ld l, $7f
    db $fc
    db $fc
    db $e4
    or $e3
    jr jr_051_621a

    dec a
    jp nz, $c439

    rst $38
    rla
    add sp, $27
    ret nc

    rrca
    ldh [$bf], a
    ld b, b
    rst $28
    ccf
    add b
    cp $ff
    add a
    ld h, b
    cp $fc
    rst $38
    rst $38
    ld a, [$fbfd]
    ldh a, [$fd]
    cp $f9
    rst $38
    db $dd
    ld a, a
    cp $e0
    rst $38
    ld a, a
    cp a
    xor d
    nop
    rra
    rst $28
    db $fd
    ld a, a
    sbc d
    nop
    db $f4
    ei
    jp hl


    or $ef
    ret nz

    rst $38
    ld a, [c]
    ld sp, hl
    db $e3
    rst $38
    ret nc

    rst $28
    add l
    jp c, $bbf7

    inc b
    xor a
    ld b, [hl]
    ld h, b
    add a
    ld a, e
    rst $18
    cp a
    db $fd
    rst $30
    sbc b
    add b
    ld d, a
    db $fd
    xor c
    ld a, [hl]
    call $f7e3
    di
    rst $30
    or $44
    ld h, b
    rst $38
    cp $f5
    cp $ff
    cp a
    ld_long $fff4, a
    jp $efbf


jr_051_6297:
    rst $18
    sub l
    rst $28
    cp d
    ld [c], a
    ld e, a
    inc a
    and b
    cp a
    xor e
    add b
    and c
    ldh [rIE], a
    ld a, l
    db $fd
    and b
    ldh [$f4], a
    ei
    rst $38
    cp $fb
    sub d
    adc b
    db $fd
    ld e, a
    adc a
    add d
    di
    rst $38
    ld [$d8f7], a
    rst $20
    rst $38
    db $fd
    ei
    rst $28
    rst $38
    set 7, a
    and d
    rst $18
    ld a, a
    ld l, b
    sub a
    rst $38
    rst $38
    rst $28
    rst $38
    ld [hl], a
    ret z

    ld [c], a
    sbc [hl]
    sbc [hl]
    pop hl
    ld l, c
    rst $38
    db $d3
    rst $28
    cpl
    ret nz

    cp d
    ld [c], a
    or $3f
    rst $38
    xor [hl]
    ei
    push af
    rst $38
    or a
    ld l, h
    ldh [rRP], a
    add e
    ret


    rst $18
    xor d
    ldh [rSCX], a
    adc e
    ei
    inc sp
    ldh [$31], a
    adc b
    or a
    ld [c], a
    ei
    rra
    add c
    inc sp
    ldh [$fe], a
    rst $38
    rst $28
    ei
    ld d, b
    ld h, h
    ld e, [hl]
    ldh [$84], a
    jp hl


    ld d, a
    ld h, [hl]
    ld [c], a
    db $fd
    rst $28
    db $eb
    db $fc
    or d
    add sp, -$21
    rst $30
    cp l
    ld h, d
    ld [$e115], a
    ld l, c
    rst $18
    cp a
    ld e, a
    ld h, $dd
    rst $38
    rst $38
    ld a, [$6ace]
    ld a, a
    ld c, d
    ld b, b
    ld d, h
    ld l, [hl]
    push hl
    cp [hl]
    ld h, c
    ld [$ec6a], a
    adc d
    ld a, h
    ld h, b
    xor a
    sbc h
    ld l, b
    pop af
    xor a
    and b
    pop bc
    adc h
    ld l, h
    call z, $fde9
    cp $54
    ei
    rst $20
    add c
    rst $38
    ld d, h
    ld e, h
    ld h, b
    ld [hl], b
    ld h, e
    ld b, b
    cp a
    ld [$b2ea], sp
    jr nz, jr_051_639c

    db $e4
    jr nz, jr_051_63c8

    ld e, a
    ld h, d
    nop
    rst $38
    add h
    ld c, $7a
    add b
    ld d, a
    rst $38
    cp l
    ld a, [$7ec6]
    pop hl
    or h
    jp Jump_051_6d34


    and a
    push af
    rst $38
    cp a
    cp c
    push hl
    inc hl
    ld h, b
    xor d
    add hl, bc
    ldh [$ca], a
    ld a, $09
    db $ec
    xor a
    rst $38
    ld d, d
    db $fd
    xor d
    xor $40
    ld e, d
    pop bc
    ld a, $00
    ld h, e
    dec hl
    push de
    dec b
    ld a, [$d454]
    pop hl
    ld [$2ee2], a
    ld e, d
    pop bc
    ld l, [hl]
    cp e
    ld bc, $8056
    ld d, a
    inc h
    ld [c], a
    cp b
    db $e3
    and c
    dec d
    ld l, $e2
    ldh [$e3], a
    sub [hl]
    add b
    ld l, $e2
    rst $28
    adc d
    add sp, -$57

jr_051_639c:
    rst $20
    cp $48
    rst $30
    xor d
    db $e3
    ld c, $e3
    ld d, l
    rst $38
    ld [de], a
    ld bc, $ccef
    db $e3
    ld b, b
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    db $e4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_051_63c8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, l
    inc sp
    rst $38
    db $ec
    ld de, $1113
    inc sp
    inc de
    ld hl, sp-$1f
    ld b, [hl]
    rst $38
    pop hl
    inc de
    inc de
    ldh a, [$e0]
    ld a, [c]
    pop hl
    ldh a, [$e1]
    ld sp, $e0fe
    dec [hl]
    inc sp
    cp $e1
    ld sp, $e0fe
    inc sp
    ld sp, $e3e9
    pop bc
    ldh [rNR42], a
    inc de
    ret nc

    and $c0
    ld [c], a
    cp $e5
    cp a
    db $e3
    ld sp, $e1ba
    xor h
    ldh [rNR23], a
    db $e4
    ld [c], a
    db $fc
    ld sp, hl
    cp d
    ldh [$31], a
    inc de
    and [hl]
    ld [c], a
    adc h
    ldh [$7a], a
    ldh [$88], a
    sub h
    ldh [$72], a
    ld [c], a
    ld h, b
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [$66]
    ld a, $ff
    db $e4
    nop
    ld b, $06
    ld h, [hl]
    ld b, $f8
    pop hl
    rst $38
    pop hl
    cp h
    ldh a, [$e1]
    rst $20
    db $e4
    ld h, b
    nop
    ld h, b
    nop
    di
    ldh [rP1], a
    add e
    ld h, [hl]
    ld h, b
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    db $dd
    ld [c], a
    rst $10
    pop hl
    sbc c
    ld l, a
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub [hl]
    xor e
    ldh [rNR11], a
    sbc c
    rst $38
    ldh [$78], a
    and e
    ldh [$fc], a
    pop hl
    sbc h
    pop hl
    ld l, c
    sub c
    ld l, c
    sub c
    di
    ldh [rTAC], a
    sbc c
    ld h, [hl]
    ld l, c
    cp $e0
    ldh a, [$e1]
    db $db
    pop hl
    add e
    ld [c], a
    ret nc

    db $e3
    ld d, b
    pop de
    db $e4
    db $dd
    ld [c], a
    db $fc
    ld [c], a
    ret nz

    ldh [rNR24], a
    ld a, e
    ret nz

    sbc c
    cp $e1
    rst $20
    sub c
    sbc c
    ld de, $e268
    ld h, e
    ldh [$99], a
    sub b
    sub b
    jp $9000


    ld e, e
    ldh [$a0], a
    ld [c], a
    ldh a, [$e1]
    rst $20
    db $e4
    add hl, bc
    sub c
    dec sp
    add hl, bc
    sub c
    di
    ldh [$99], a
    nop
    add hl, bc
    cp $e0
    ldh a, [$e1]
    ret nz

    db $db
    pop hl
    inc sp
    ld [c], a
    ret nc

    db $e3
    pop de
    db $e4
    db $dd
    ld [c], a
    reti


    pop hl
    sub b
    add hl, bc
    ld [de], a
    and b
    ldh [$91], a
    and b
    pop hl
    add $e1
    sbc c
    ld de, $4dc2
    pop hl
    sub b
    ld [c], a
    ld h, h
    adc d
    ldh [$f0], a
    pop af
    sub c
    add sp, -$1c
    call nc, Call_000_22e4
    sub d
    cp $e0
    rst $38
    ld de, $1919
    sbc c
    sbc c
    sub d
    sub d
    ld [hl+], a
    db $fc
    db $fc
    pop hl
    rst $38
    pop hl
    ld de, $1999
    sub d
    add hl, de
    sub d
    dec sp
    sbc c
    ld [hl+], a
    ld [c], a
    db $e3
    ld [hl+], a
    ld [hl+], a
    add hl, hl
    jp hl


Call_051_66d5:
    db $e3
    db $e4
    ldh [$80], a
    ldh a, [$e3]
    jp hl


    pop bc
    rst $10
    pop hl
    sbc $e1
    jp c, $88e1

    push hl
    adc c
    db $e4
    sbc c
    ld hl, sp-$54
    pop hl
    jp nz, $f8e0

    ldh [$99], a
    sub d
    add hl, de
    sbc c
    ld de, $1939
    add $e3
    pop af
    pop hl
    add hl, hl
    sub c
    add hl, hl
    ld hl, sp-$40
    xor l
    pop hl
    nop
    cp $e0
    cp h
    ld [c], a
    and d
    db $e4
    ldh a, [$e1]
    add h
    ld [c], a
    and h
    ld [c], a
    and a
    db $e4
    dec [hl]
    ld [c], a
    nop
    ret nz

    push bc
    cp d
    ret nz

    ld a, d
    push hl
    cp $fd
    sbc b
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    and $a3
    ld h, a
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    rst $38
    sbc l
    ld h, d
    ld d, l
    rst $38
    rst $20
    ld d, c
    ld d, l
    ld de, $e051
    jr @-$58

    ld c, $ed
    ret nz

    ld a, l
    and b
    ld [hl], l
    jr c, jr_051_67ab

    rla
    ld de, $5f77
    rla
    ld [hl], a
    ld de, $7711
    rst $38
    db $e3
    ld [hl], c
    cp $e4
    ld d, b
    rst $38
    db $fc
    adc [hl]
    rst $18
    rst $38
    rst $38
    ld e, b
    rst $18
    ld de, $ee10
    call z, $e4ff
    ld hl, sp-$4a
    rst $38
    db $fc
    ei
    cp b
    ld [$0006], a
    ld h, [hl]
    ld de, $2a19
    ld h, [hl]
    add b
    sub [hl]
    ld [hl], d
    ld h, h
    ld l, c
    ld l, c
    ld h, h
    ld h, b
    ld de, $ff63
    rst $38
    ld [hl], h
    rst $38
    rst $38
    xor $ed
    sub d
    ld l, h
    add d
    sub d
    add hl, hl
    xor $ff
    db $f4
    rra
    nop
    ld c, $00
    xor $0e
    db $e3
    ldh [$78], a
    db $dd
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b

jr_051_67ab:
    cp a
    nop
    rst $38
    rst $38
    xor b
    adc c
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
    rst $38
    nop
    nop
    dec c
    nop
    db $dd
    dec c
    db $dd
    db $dd
    ld a, e
    db $dd
    xor $ff
    ldh [$de], a
    xor $d0
    nop
    ld hl, sp-$1f
    rst $30
    xor $ee
    nop
    ld hl, sp-$1d
    rst $28
    nop
    rrca
    ldh a, [$7f]
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    db $dd
    ldh [rIE], a
    ret nc

    db $dd
    nop
    ret nc

    nop
    rst $38
    rst $38
    rrca
    ld l, $ef
    ldh [rP1], a
    rrca
    cp e
    rst $38
    db $e4
    sbc c
    rst $38
    db $e4
    ldh a, [$e3]
    rst $38
    dec bc
    cp e
    nop
    nop
    or b
    nop
    cp e
    nop
    di
    cp e
    or b
    add sp, -$1b
    xor $e0
    cp e
    nop
    dec bc
    nop
    ld a, l
    nop
    ret nc

    push hl
    cp e
    xor d
    cp e
    xor d
    cp d
    cp $e0
    jp z, $e5ff

    sbc d
    cp $e0
    sbc c
    cp $e1
    cp b
    ld [$bbbb], a
    db $db
    adc b
    adc b
    sbc b
    db $e3
    call z, $88cc
    db $e4
    cp $0f
    ld a, e
    xor $00
    ld l, b
    ldh [$ed], a
    db $dd
    xor $d0
    ld h, c
    ldh [rP1], a
    ld c, b
    rst $38
    ld c, b
    rst $38
    sub b
    ld_long $ff48, a
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    ld c, $ee
    call $bcee
    rst $38
    ret nc

    cp e
    or b
    xor $e0
    xor $f8
    rrca
    rst $30
    adc c
    add hl, bc
    sbc c
    db $db
    and h
    ldh [$dd], a
    rst $28
    db $dd
    rst $10
    rst $28
    ret nc

    rrca
    ret nz

    ld [c], a
    inc c
    cp d
    pop hl
    db $dd
    ret nc

    or e
    call z, Call_000_10cc
    pop bc
    ld a, [c]
    and d
    ld [$d800], sp
    ldh [$f0], a
    rra
    nop
    adc b
    nop
    sbc c
    sub b
    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld a, [c]
    pop af
    ld b, e
    ld [$9688], sp
    and d
    and b
    ldh [$9d], a
    and $fe
    and b
    inc c
    ld [c], a
    and h
    ld bc, $bfcc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    and $00
    nop
    nop
    nop
    ld l, c
    nop
    ld [hl], c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    jr z, jr_051_6912

jr_051_6912:
    nop
    nop
    sub b
    nop
    nop
    nop
    push af
    nop
    ret z

    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rla
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld d, b
    nop
    nop
    nop
    ret z

    nop
    nop
    nop
    ld [$9000], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    cpl
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    and b
    nop
    nop
    nop
    ld h, h
    nop
    nop
    nop
    call nc, Call_000_2000
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    ld b, $00
    nop
    nop
    dec b
    nop
    ld b, b
    nop
    nop
    nop
    or d
    nop
    nop
    nop
    xor b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    nop
    inc c
    nop
    nop
    nop
    ld [bc], a
    nop
    add b
    nop
    nop
    nop
    ld e, c
    nop
    nop
    nop
    ld d, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$bc]
    rst $38

jr_051_69c2:
    add sp, -$01
    add c
    cp $08
    ldh a, [rNR41]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop

jr_051_69d0:
    ld a, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $0007
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    add c
    inc a
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_051_69c2

    add b
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    jr nz, jr_051_69d0

    rst $38
    rst $38

jr_051_6a12:
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    nop
    rst $38
    add c
    inc a
    ld [$0000], sp
    nop
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    ld hl, sp-$1c
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38

jr_051_6a42:
    or $ff
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    jr nz, jr_051_6a12

    nop
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

jr_051_6a5e:
    nop
    nop
    nop
    ret nz

    nop
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
    ret nz

    ld b, b
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
    jr nz, jr_051_6a42

    nop
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
    db $ec
    rst $38
    ld sp, hl
    cp $e6
    ld hl, sp+$48
    ldh a, [$d0]
    ldh [$a8], a
    ret nz

    jr nz, jr_051_6a5e

    ld b, b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    cp h
    rst $38
    jp hl


    cp $8e
    ldh a, [$30]
    ret nz

    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rla
    rrca
    ld [de], a
    rrca
    dec bc
    rlca
    add hl, bc
    rlca
    rla
    inc bc
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    jp Jump_000_3c3c


    nop
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
    ld b, b
    add b
    ret nz

    add b
    jr nz, @-$3e

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ld d, b
    add b
    ld b, b
    add b
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    rst $38
    jp Jump_000_3c3c


    nop
    ld b, b
    nop
    nop
    nop
    xor b
    ldh a, [$ea]
    ldh a, [$f4]
    ld hl, sp-$2c
    ld hl, sp-$0c
    ld hl, sp-$1c
    ld hl, sp-$48
    ldh a, [$e8]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    db $e3
    rst $38
    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$f9fc], a
    cp $fd
    cp $f4
    rst $38
    ld c, b
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
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
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
    db $ed
    cp $fe
    ld hl, sp-$18
    ldh a, [rHDMA2]
    ldh [$e8], a
    ret nz

    ret nz

    add b
    ld d, b
    add b
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    cp l
    cp $ee
    ldh a, [$b1]
    ret nz

    ret z

    nop
    jr nz, jr_051_6baa

jr_051_6baa:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    xor a
    ld a, a
    ld a, a
    ccf
    ld e, a
    ccf
    or a
    rra
    ccf
    rra
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    rlca
    rla
    inc bc
    dec b
    inc bc
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    rst $18
    inc a
    inc a
    nop
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
    add b
    nop
    and b
    nop
    ld b, b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    and b
    nop
    add b
    nop
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    ei
    inc a
    inc a
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    or b
    ldh [$f4], a
    ldh [$f8], a
    ldh a, [$d8]
    ldh a, [$f8]
    ldh a, [$e8]
    ldh a, [$b4]
    ldh [$f0], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp [hl]
    rst $38
    ei
    rst $20
    ld h, [hl]
    add c
    sub c
    nop
    db $fd
    cp $f6
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    db $fc
    cp $fc
    push af
    cp $20
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    nop
    nop
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
    ld b, b
    nop
    nop
    nop
    nop
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
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    nop
    add b
    add b
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    nop
    nop
    nop
    nop
    nop
    ld c, b
    nop
    ld bc, $5878
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $c385


    inc b
    add e
    ld b, c
    add e
    ld [bc], a
    add c
    nop
    add b
    nop
    add b
    and b
    ret nz

    add b
    ret nz

    ret nc

    ldh [$64], a
    ldh a, [$f0]
    db $fc
    call c, Call_000_1eff
    rst $38
    ld b, c
    ld e, $0c
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_051_6ccc

jr_051_6ccc:
    add d
    ld a, b
    ld e, b
    rst $38
    nop
    ret nz

    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0300
    ret nz

    nop
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
    ld bc, $0300
    nop
    and b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_051_6d34:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_051_6e4e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_051_6ee3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_051_6fe0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    cp $f5
    push bc
    push de
    push hl
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
    ld hl, $0401
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_051_718b

    jp Jump_051_71ff


jr_051_718b:
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

jr_051_71a7:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_051_71e3

    cp $ff
    jr nz, jr_051_71a7

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
    jr nz, jr_051_71a7

jr_051_71e3:
    ld a, c
    or a
    jr z, jr_051_71f5

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

jr_051_71f5:
    ld a, $01
    ld hl, $7213
    call Call_000_23e8
    add sp, $02

Jump_051_71ff:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7213
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_051_721c

    rst $30
    nop
    inc bc
    ret nz

jr_051_721c:
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

jr_051_722e:
    ld a, [hl]
    cp $ff
    jr z, jr_051_7257

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
    ld d, a
    ld a, c
    cp $04
    jr z, jr_051_7257

    ld a, d
    or a
    jr nz, jr_051_722e

    ld a, b
    call Call_051_7261
    ld a, c
    cp $04
    jr nz, jr_051_722e

jr_051_7257:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_051_7261:
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

jr_051_7277:
    ld hl, $0401
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_051_72a9

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_051_7277

jr_051_72a9:
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
    ld b, h
    ld c, l
    ld hl, $0400
    rst $18
    ld a, [bc]
    inc de
    ld de, $4000
    ld h, $00
    add hl, de
    ld e, a
    ld d, $00
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
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


    dec bc
    ld [hl], e
    dec sp
    ld [hl], e
    sub c
    ld [hl], l
    ld e, d
    ld [hl], a
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
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
    rst $08
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    db $fc
    ldh [$fd], a
    ld [c], a
    dec hl
    dec hl
    rst $38
    dec bc
    dec bc
    ld c, d
    ld l, d
    ld l, d
    ld l, d
    inc c
    inc c
    rst $00
    inc c
    ld c, h
    ld c, h
    db $fd
    pop hl
    db $fc
    db $e3
    ld a, [c]
    pop hl
    inc l
    inc l
    nop
    ld a, [c]
    ldh [$f8], a
    and $fd
    add sp, -$3d
    and $be
    push hl
    cp a
    ldh [$c1], a
    db $e4
    ret nz

    ld [c], a
    ldh [$ba], a
    pop hl
    cp c
    push hl
    ld hl, sp-$1a
    cp l
    add sp, -$7b
    push hl
    ld l, e
    ld l, e
    ld c, e
    nop
    rst $38
    ldh [$7c], a
    ldh [$7e], a
    ldh [$dc], a
    db $e4
    sub [hl]
    and $73
    pop hl
    ld hl, sp-$17
    ret nz

    rst $28
    rst $20
    ld l, e
    ld l, e
    ld l, e
    ld b, e
    pop hl
    cp [hl]
    pop hl
    dec hl
    dec hl
    ld c, d
    jr nz, @-$34

    db $e4
    cp l
    push hl
    jr c, @-$1a

    ld hl, sp-$1a
    ret nz

    pop af
    dec hl
    rst $38
    ldh [$f9], a
    pop bc
    ldh [$be], a
    ld [c], a
    ld [bc], a
    db $e4
    ld a, $e1
    ccf
    add sp, $76
    db $e4
    inc c
    inc c
    inc l

jr_051_73b4:
    jr nz, jr_051_73b4

    jp $e3f9


    push bc
    add $c0
    db $e3
    ld a, h
    pop hl
    dec bc
    ret nz

    push bc
    ld c, c
    pop hl
    ld [$e4b5], sp
    ld b, c
    push af
    nop
    ld [c], a
    ld l, e
    pop bc
    ld [c], a
    ret nz

    db $e4
    dec sp
    ldh [$80], a
    jp nz, $fe40

    db $e4
    ld [hl], l
    add $77
    pop bc
    ld b, c
    rst $28
    ret nz

    call nz, $e9c0
    dec bc
    ret nz

    ldh [$30], a
    adc $c4
    ld c, d
    rst $20
    ret nz

    call c, $c1bf
    ld l, e
    ld l, e
    scf
    push hl
    adc $c5
    nop
    set 0, l
    ret nz

    rst $18
    ret nz

    db $e3
    cp a
    ld [c], a
    xor a
    and b
    adc h
    db $e3

Call_051_7400:
    ret nz

    and l
    add b
    db $fd
    rlca
    dec hl
    dec bc
    ld c, e
    add a
    and b
    cp a
    jp hl


    ret nz

    and l
    ld a, l
    push bc
    add b
    ldh a, [$08]
    ld a, h
    call nz, $a1c0
    add $a1
    dec hl
    jp $fca1


    db $e3
    db $f4
    and b
    ld c, l
    and e
    ld a, b
    ld b, c
    and l
    ld b, b
    adc $3f
    xor d
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    db $fc
    ld [c], a
    adc h

jr_051_7430:
    rst $30
    pop hl
    or $e2
    ld a, [bc]
    ld a, [bc]
    ld b, b
    db $e4
    ret nz

jr_051_7439:
    add sp, -$03
    rst $30
    ld a, [hl+]
    inc b
    rst $38
    ldh a, [$de]
    add a
    inc l
    rst $38
    ldh [$0d], a
    adc $c0
    and b
    add sp, -$19
    ret nz

    ei
    nop
    add l
    push af
    ret nz

    rst $38
    pop bc
    rst $38
    db $e4
    and a
    sub [hl]
    push bc
    rst $38
    rst $38
    add hl, hl
    pop af
    jp c, Jump_000_0084

    ret nz

    rst $38
    cp b
    db $d3
    add h
    and $21
    and a
    adc [hl]
    add a
    add h
    ld h, a
    cp b
    adc b
    ld [hl], c
    ld h, h
    nop
    ld a, c
    add e
    push de
    ld h, [hl]
    sub d
    ld h, h
    ret


    add l
    ld l, l
    and $3d
    ld h, e
    cp b
    adc c
    ld a, [hl+]
    ld h, h
    nop
    ld h, a
    ret z

    ld b, d
    ld hl, sp-$74
    ld l, c
    xor d
    add l
    ld a, c
    ld l, c
    push de
    ld h, [hl]
    reti


    or e
    db $fc
    add a
    nop
    add b
    ld l, c
    ld a, c
    ld l, d
    push de
    ld h, [hl]
    push hl
    ret nc

    add h
    ld h, [hl]
    nop
    ld l, e
    ret nz

    db $ec
    push de
    add e
    nop
    nop
    ld a, [c]
    dec b
    adc c
    jr c, jr_051_7430

Call_051_74a9:
    add c
    db $ed
    sub d
    ld c, d
    ld h, e
    adc $05
    ld l, b
    jr nc, jr_051_7439

    nop
    rra
    rst $28
    add c
    rst $08
    ret nz

    res 0, l
    ld b, a
    add hl, sp
    ld c, l
    push bc
    or [hl]
    add h
    ld l, b
    cp b
    adc e
    nop
    ld a, a
    ld [$52e9], a
    add h
    ld l, [hl]
    dec l
    call nc, Call_051_66d5
    ld l, d
    or e
    rst $38
    ld [hl], h
    cp c
    dec hl
    nop
    ld e, e
    ld h, l
    ld b, l
    xor h
    add h
    ld l, l
    ret nz

    or $c4
    db $d3
    add h
    ld a, a
    ld e, e
    sbc a
    add h
    ld l, l
    nop
    ld [hl], c
    ld [hl], d
    sub h
    dec bc
    or $b5
    dec sp
    sbc h
    add h
    adc l
    call $ffff
    rst $38
    rst $38
    rst $38
    nop
    reti


    adc b
    pop de
    rst $18
    pop de
    rst $18
    db $e4
    ret c

    ld [hl], d
    ld h, a
    cp c
    jp c, $9004

    ld a, [hl-]
    ld h, $00
    inc sp
    add a
    ret nz

    rst $38
    xor e
    push bc
    ld [c], a
    ld l, b
    rst $38
    ld c, c
    rst $38
    rst $38
    cp b
    ld c, b
    xor $65
    nop
    sub $94
    rst $28
    rst $10
    dec c
    ld l, c
    ld b, [hl]
    sub e
    ld a, [hl]
    rst $38
    add b
    ld b, l
    rst $38
    ld c, h
    rst $38
    rst $38
    nop
    reti


    ld bc, $4440
    ld a, e
    add a
    add b
    rst $38
    ld b, b
    pop af
    ld l, l
    and l
    db $dd
    cp a
    ld b, c
    ld d, e
    nop
    and d
    xor c
    ret nz

    rst $38
    ld e, c
    ld l, l
    ld h, d
    cp a
    rst $38
    rst $38
    call $ffbf
    rst $38
    rst $38
    rst $38
    nop
    sub [hl]
    rst $38
    reti


    or [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld l, e
    call c, Call_000_00ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    push de
    inc sp
    nop
    nop
    nop
    rst $28
    ld e, e
    ld e, e
    ld e, e
    ld e, d
    db $fc
    ldh [$5b], a
    ld e, h
    ld e, l
    rst $38
    ld h, d
    ld h, d
    ld e, l
    ld e, h
    ld e, e
    ld e, e
    adc h
    ld c, [hl]
    add a
    ld c, [hl]
    ld c, [hl]
    nop
    rst $38
    rst $38
    rst $20
    and $c3
    ld [c], a
    jp nz, Jump_000_31e0

    and b
    rst $38
    ld [c], a
    cp [hl]
    ldh [$bf], a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld h, d
    rst $38
    ld [c], a
    ld sp, $31ff
    ld b, a
    ld b, [hl]
    ld d, h
    ld d, h
    ld b, [hl]

jr_051_75c7:
    ld b, a
    ld sp, $31c3
    ld h, b
    ld a, [hl]
    ldh [$ca], a
    rst $38
    add sp, -$19
    adc b
    db $e3
    ld c, l
    ld b, [hl]
    cp a
    ld [hl], $6a
    ld l, l
    ld l, h
    ld l, h
    ld [hl], $be
    ldh [$5d], a
    db $d3
    ld e, h

jr_051_75e2:
    adc h
    jp z, $e8ff

    rst $20
    and h
    rst $38
    pop hl
    or b
    ld [hl-], a
    rst $30
    ld l, d
    ld l, d
    ld l, l
    ret nz

    ldh [$6d], a
    ld l, l
    ld [hl], $46
    and a
    ld c, l
    ld sp, $ca60
    rst $38
    add sp, -$19
    add b
    rst $38
    ldh [$78], a
    di
    ld [hl], c
    jr nc, jr_051_75c7

    ldh [$c0], a
    ld [c], a
    ld l, d
    jr nc, jr_051_763e

    ld c, l
    ld sp, hl
    ld sp, $ffca
    ret nz

    db $eb
    add e
    jr nc, jr_051_767f

    ld l, c
    ld l, e
    rst $38
    ld l, e
    ld l, e
    jr nc, jr_051_764d

    ld l, e
    ld l, e
    ld l, c
    jr nc, jr_051_768a

    cp a
    ldh [$ca], a
    rst $38
    add b
    db $eb
    ld d, d
    ret nz

    ld [$3930], a
    jp z, $f6ff

    ld b, b
    db $eb
    ld d, e
    jr nc, @+$42

    ld [c], a
    ld l, l
    jr nc, jr_051_7669

    ld l, l
    sbc a
    ld l, l
    ld l, b
    ld l, b

jr_051_763e:
    ld l, b
    ld d, e
    jp z, $80ff

    db $ed
    jr nc, jr_051_75e2

    ret nz

    pop bc
    cp a
    ld [c], a
    ld l, h
    ld l, h
    ld l, h

jr_051_764d:
    add b
    rst $38
    ret nz

    jp z, $efaa

    ld e, b
    or b
    dec sp
    ld [hl], $bf
    and $6c
    ld [hl], $3b
    ld sp, hl
    ld b, e
    jp z, $e8ff

    rst $20
    and l
    ld e, b
    xor e
    ld e, l
    ld h, h
    cp a
    ld e, l

jr_051_7669:
    ld b, a
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld d, [hl]
    rst $38
    db $e3
    ld b, a
    di
    ld e, l
    ld e, h
    jp z, $e8ff

    rst $20
    adc c
    add hl, bc

jr_051_767a:
    add hl, bc
    add hl, bc
    jr jr_051_767a

    ld [c], a

jr_051_767f:
    rst $30
    pop hl
    or $e2
    add hl, bc
    add hl, bc
    jp z, $c0ff

    add sp, -$01

jr_051_768a:
    ldh a, [rP1]
    jp z, $c0ff

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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
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
    jr nc, jr_051_77b9

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
    sub [hl]
    ld [hl], a
    add $77
    ld c, [hl]
    ld a, d
    inc l
    ld a, h
    db $ec
    dec hl
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    nop
    add hl, bc
    and l
    ld b, e
    xor $37
    ld [hl+], a
    dec sp
    ld b, b
    ld [hl+], a
    ccf
    ld a, a
    rla
    ld e, [hl]
    ld de, $2249
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_051_77b9:
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
    ldh [$2b], a
    dec bc
    inc c
    ld c, h
    inc c
    dec c
    inc c
    or $e1
    dec bc
    ld c, h
    rst $38
    ldh [$f3], a
    ldh [$fb], a
    pop hl
    ld a, [$3ae1]
    di
    ldh [$0c], a
    di
    pop hl
    inc l
    inc l
    inc c
    db $fc
    ld [c], a
    cp $ee
    jr @-$33

    ld [c], a
    ret


    ld [c], a
    ret nz

    db $e3
    ld c, e
    ld c, e
    ret nz

    rst $20
    or a
    pop hl
    jp nz, $c3e2

    ld c, h
    inc l
    ret nz

    ldh [$fc], a
    pop hl
    ret nz

    or $b9
    db $e4
    ld l, e
    ld l, e
    rrca
    ld c, e
    ld c, e
    dec bc
    dec bc
    call z, Call_051_6ee3
    ldh [$fc], a
    ld [c], a
    add b
    pop hl
    ld e, h
    add c
    or $c0
    ld [$6b6b], a
    ld l, e
    ld a, a
    pop hl
    ld c, e
    add d
    push hl
    nop
    ld b, b
    add sp, -$01
    or $8b
    db $e4
    cp $e2
    jp nz, Jump_000_3ee0

    ld [c], a
    add hl, de
    db $e3

jr_051_7830:
    set 4, [hl]
    jr nz, jr_051_786c

    push hl
    ld [bc], a
    push hl
    ld sp, hl
    call nz, $c3f2
    ld c, h
    pop hl
    dec hl
    adc d
    ld [c], a
    ld b, [hl]
    pop hl
    ld [bc], a
    cp l
    jp nz, $c12b

    and $88
    ld [c], a
    jr c, jr_051_7830

    or b
    rst $20
    ret nz

    set 0, c
    pop hl
    ld bc, $802b
    jp hl


    ret nz

    ldh [$c0], a
    rst $00
    ccf
    add sp, $3b
    di
    add d
    rst $20
    ld [bc], a
    ldh [rP1], a
    cp a
    db $e4
    ret nz

    call nz, $c838
    nop
    rst $30
    ld b, e

jr_051_786c:
    pop hl
    ld b, d
    ld [c], a
    jp nz, Jump_000_36c1

    ldh [rP1], a
    cp l
    pop bc
    rst $00
    jp $e2fc


    ld [hl], l
    add $f4
    rst $00
    ld sp, hl
    xor e
    call nz, $0aa0
    jp nz, Jump_051_4316

    jp nz, Jump_000_2b2b

    cp h
    pop bc
    ld l, e
    adc $cc
    ret nz

    ret z

    push af
    and h
    nop
    ret nz

    xor $c8
    jp $e0ff


    ld b, b
    db $e4
    ld b, $c5
    ld [bc], a
    jp nz, $c9c0

    push af
    and e
    ld b, $7c
    add $0c
    inc c
    call $c0e4
    rst $28
    ret nz

    and l
    ld b, b
    set 6, l
    xor [hl]
    inc e
    ret nz

    jp hl


    ld b, d
    and b
    dec hl
    dec bc
    ld l, h
    ld c, l
    and h
    add c
    call nz, $a678
    nop
    inc [hl]
    and [hl]
    nop
    xor h
    ld c, h
    db $e4
    nop
    jp $a0f6


    ld c, $c5
    ld b, c
    and l
    ld b, b
    call z, Call_051_7400
    and e
    ldh a, [$80]
    or e
    add h
    call $fc81
    add a
    add c
    db $e3
    adc b
    and l
    add [hl]
    and e
    inc b
    push af
    or b
    ret nz

    ld [$c02b], a
    ld [$895d], a
    db $76
    adc e
    push af
    xor b
    add c
    rst $20
    nop
    dec d
    rst $20
    ld c, h
    db $e3
    add hl, bc
    push hl
    ld bc, $f587
    or c
    ret nz

    jp hl


    push de
    ld l, b
    ret nz

    db $ec
    nop
    cp a
    and h
    call z, Call_051_74a9
    xor a
    push de
    ld l, c
    rrca
    add sp, -$73
    set 0, l
    ld h, d
    push af
    xor b
    nop
    or e
    ld h, c
    ld a, c
    add l
    ld e, l
    jp z, $840b

    add b
    ret


    pop bc
    ld h, l
    push af
    xor c
    ret nz

    add sp, $00
    push de
    ld l, c
    db $d3
    add l
    ld a, $68
    pop bc
    ld h, a
    push af
    xor c
    ccf
    jp nz, $ea3b

    or h
    ret


    nop
    or $c6
    inc c
    db $ec
    ld [hl], h
    ld l, c
    di
    ld c, d
    ld [c], a
    adc b
    adc $65
    rst $38
    add [hl]
    pop bc
    ld l, d
    nop
    pop hl
    rst $20
    ret nz

    ret nc

    adc h
    rst $20
    add b
    and l
    ccf
    rst $28
    db $fd
    add [hl]
    rst $38
    xor l
    adc [hl]
    ret


    nop
    ld c, c
    ld h, a
    pop bc
    ld l, c
    ld hl, sp+$66
    ret nz

    xor $16
    rst $00
    inc e
    ld l, b
    ld [de], a
    and [hl]
    add $20
    nop
    ld hl, sp+$6f
    ld e, h
    xor h
    ld h, d
    ret z

    ret nz

    ret


    dec b
    ret


    cp b
    ld d, a
    push de
    ld [hl], b
    dec b
    call $8500
    add [hl]
    ret nz

    rst $08
    push de
    ld [hl], d
    add $2d
    ld l, a
    add $b2
    cpl
    push de
    ld [hl], d
    add $2d
    nop
    ld b, b
    ret c

    push de
    ld [hl], d
    add $2d
    dec b
    ld h, h
    sbc [hl]
    ldh a, [$15]
    ld d, e
    add $2d
    ld [hl], e
    ld l, a
    nop
    inc [hl]
    rlca
    dec d
    ld d, c
    or c
    xor $36
    dec bc
    ret nz

    ld l, l
    dec d
    ld c, a
    or c
    db $ed
    ld [hl], $0b
    nop
    ld [bc], a
    xor h
    ld b, b
    ret nc

    add $2e
    ld [bc], a
    ld [hl], h
    ld b, b
    call nc, Call_000_31c6
    add c
    ld [hl], e
    ld b, b
    push de
    nop
    pop af
    xor h
    ld [hl], $0b
    add b
    xor $15
    ld c, a
    add $2b
    ld [hl], b
    call z, $eb40
    ld sp, $00ae
    add $2f
    ld [hl], $1f
    or l
    di
    ld hl, $ffd4
    rst $38
    sbc l
    ld b, $36
    ld [de], a
    rst $38
    rst $38
    nop
    rst $20
    ld c, b
    ld h, c
    sub d
    rst $38
    rst $38
    ld e, e
    ld b, c
    inc a
    ld l, b
    ld [hl], b
    call $ffff
    ld b, b
    rst $20
    nop
    ld h, c
    sub [hl]
    rst $38
    rst $38
    ld [hl], $13
    rst $38
    rst $38
    ld h, $a7
    add e
    adc h
    rst $38
    rst $38
    ld [hl], e
    call nc, $cd00
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    reti


    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    scf
    db $eb
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    sub b
    inc sp
    nop
    nop
    nop
    ei
    ld e, d
    ld e, e
    rst $38
    ldh [$61], a

jr_051_7a54:
    ld sp, $102b
    jr nz, jr_051_7a54

    nop
    ld sp, $e1ff
    ld de, $2112
    ld [hl+], a
    nop
    ld hl, sp-$01
    rst $38
    rst $20
    and $c1
    ldh [$5c], a
    ld e, l
    ld sp, $2931
    add a
    daa
    dec b
    rrca
    ret nz

    ld [c], a
    cp [hl]
    pop hl
    jp z, $c0ff

    jp hl


    ld h, b
    db $fc
    ret z

    db $e4
    add c
    pop hl
    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld sp, $f031
    jp z, $e8ff

    rst $20
    add e
    pop hl
    jp nz, Jump_000_36e7

    ld l, l
    jr nc, jr_051_7ac9

    db $e3
    ld b, [hl]
    ld c, l
    jp z, $e8ff

    rst $20
    dec bc
    ldh [rKEY1], a
    ld a, [hl-]
    ld d, h
    rst $38
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld [hl], $30
    ccf
    ld h, a
    ld l, d
    ld l, l
    jr nc, jr_051_7ade

    add hl, sp
    jp z, $c0ff

    jp hl


    ld l, e
    ld c, l
    ld [hl-], a
    call z, $65e0
    rst $38
    pop hl
    jr nc, @+$32

    cp a
    ld [c], a
    or c
    ld d, d
    jp z, $80ff

    add sp, -$3f
    ld [c], a
    ld h, a
    ld l, b

jr_051_7ac9:
    rst $38
    pop hl
    ld h, a
    ld [c], a
    cp a
    db $e3
    ld d, e
    jp z, $e8ff

    rst $20
    pop bc
    db $e3
    ld l, d
    ld l, d
    ld l, l
    adc a
    ld l, h
    ld l, l
    ld l, d
    ld l, d

jr_051_7ade:
    cp a
    db $e3
    ld b, b
    rst $38
    jp hl


    add sp, $39
    ld e, a
    ld l, e
    jr nc, jr_051_7b19

    ld h, [hl]
    ld l, d
    ret nz

    ldh [$30], a
    ret nz

    ldh [rWX], a
    ld l, d
    ld h, [hl]
    dec a
    ldh [$32], a
    ret nz

    rst $18
    jp hl


    add sp, $53
    ret nz

    pop hl
    ld l, c
    ld l, c
    ret


    pop bc
    cp a
    ldh [rBCPD], a
    ret nz

    ldh [$32], a
    ld c, l
    ld b, b
    rst $18
    ld a, [hl-]
    ret nz

    xor $69
    ld a, d
    ldh [$30], a
    ld l, e
    ld l, c
    ret nz

    ldh [$c1], a
    ldh [$80], a
    ret nz

jr_051_7b19:
    rst $38
    ld b, b
    db $ed
    ret nz

    rst $20
    pop bc
    pop hl
    ret nz

    rst $38
    ret nz

    jp z, $e780

jr_051_7b26:
    ld [hl], $7f
    ld l, [hl]
    ld a, h
    xor a
    ld sp, $1415
    inc d
    jp z, $f8ff

    ld b, b
    jp z, $e000

    add $e0
    ld a, h
    ld a, l
    ld a, h
    ld l, a
    add b
    ccf
    xor b
    xor h
    ld sp, $2417
    inc h
    jp z, $80ff

    xor c
    cp a
    xor a
    ld [hl], c
    ld [hl], $6e
    ld l, a
    add b
    rst $38
    db $e3
    and b
    sbc a
    ld sp, $1615
    jr nz, jr_051_7b78

    jp z, Jump_051_40ff

    xor c
    and c
    add hl, de
    ld a, c
    jp nz, $c0e5

    pop hl
    rla
    jr z, jr_051_7b26

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_051_7b78:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_051_7c8b

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

jr_051_7c8b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_051_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
