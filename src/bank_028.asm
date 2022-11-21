; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $028", ROMX[$4000], BANK[$28]

    db $0b, $7d

    or d
    ld a, l
    ld l, b
    ld b, b
    ld [hl], b
    ld b, b
    cpl
    ld b, l
    adc l
    ld b, a
    inc h
    ld c, c
    sbc e
    ld c, c
    ld [de], a
    ld c, d
    inc de
    ld c, d
    or b
    ld b, b

    db $99, $4a, $a1, $4a, $b0, $4f, $d1, $51, $6c, $53, $d2, $53

    ld c, h
    ld d, h

    db $6f, $54, $e1, $4a

    xor c
    ld d, l
    or c
    ld d, l
    ei
    ld e, e
    sub b
    ld e, a
    rst $38
    ld h, c
    sub h
    ld h, d
    or $62
    rst $30
    ld h, d
    pop af
    ld d, l
    ld a, l
    ld h, e
    add l
    ld h, e
    pop hl
    ld h, l
    rst $10
    ld h, a
    ld e, e
    ld l, c
    xor l
    ld l, c
    rra
    ld l, d
    jr nz, jr_028_40b4

    push bc
    ld h, e

Call_028_404c:
    and [hl]
    ld l, d
    xor [hl]
    ld l, d
    adc $76
    ld d, b
    ld a, d
    ret nc

    ld a, e
    inc h
    ld a, h
    add h
    ld a, h
    add l
    ld a, h
    xor $6a
    ld [de], a
    ld c, d

    db $4c, $54

    or $62
    rra
    ld l, d
    add h
    ld a, h
    nop
    nop
    nop
    nop
    ld h, $20
    nop
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, a
    ld e, d
    ld e, e
    ld b, c
    or l
    inc l
    rst $38
    ld a, a
    sub d
    ld e, d
    ld e, a
    ld [bc], a
    rst $38
    ld a, a
    ld d, a
    inc e
    rst $38
    ld a, a
    sbc c
    ld [hl-], a
    or c
    dec e
    ret


    inc c
    rst $38
    ld a, a
    ld a, [hl-]
    ld c, [hl]
    ld d, d
    ld sp, $7fe0
    ld a, [c]
    inc bc

jr_028_40a2:
    add b
    ld [bc], a
    sbc a
    nop
    ld [hl-], a
    nop
    ld [$0825], sp

Call_028_40ab:
    dec h
    ld [$0825], sp
    dec h
    db $fd
    nop
    rst $38
    db $ec

jr_028_40b4:
    add c
    add b
    dec bc
    nop
    dec d
    nop
    rst $18
    cpl
    nop
    ld d, l
    nop
    ccf
    db $fc
    ldh [$fe], a
    ld bc, $7eff
    ld bc, $0bf4
    ld [$d015], a
    cpl
    rst $38
    xor d
    ld d, l
    ret nz

    ccf
    xor d
    ld d, l
    nop
    rst $38
    rst $38
    cp $01
    ld [hl], h
    dec bc
    ld a, [hl+]
    dec d
    jr nc, jr_028_40ee

    rst $38
    ld e, d
    dec b

Jump_028_40e2:
    inc a
    inc bc
    ld d, [hl]
    ld bc, $01fe
    rst $38
    add c
    nop
    rlc b
    push af

jr_028_40ee:
    nop
    rst $18
    jr nz, @+$01

    xor l
    ld d, b
    rst $00
    jr c, jr_028_40a2

    ld d, h
    nop
    rst $38
    xor $b0
    db $e3
    ld d, l
    nop

Call_028_40ff:
    xor d
    push af
    ldh [rIE], a
    nop
    ld d, l
    ld a, e
    xor d
    nop
    ld hl, sp-$1e
    nop
    rst $38
    ld d, l
    xor d
    ld a, [c]
    ldh [$e8], a
    ld [$e9e0], a
    pop hl
    ld_long $ffe0, a
    or h
    pop hl
    ld d, l
    xor d
    xor d
    adc b
    push af
    pop hl
    add sp, -$1d
    adc [hl]
    ldh [rP1], a
    jp z, $e4e0

    db $e3
    jp nc, $aae1

    db $fd
    ld d, l
    ret nz

    db $e3
    add d
    nop
    sub [hl]
    nop
    add b
    nop
    rst $38
    ld a, a
    add b
    ld [$a800], sp
    nop
    ld h, c
    ld [$08ff], sp
    nop
    ld [hl], $c9
    add b
    nop
    ld d, $80
    rst $38
    ld l, $80
    add b
    nop
    ld a, [hl]
    add b
    ld bc, $fcfe
    xor b
    ld [c], a
    sub e
    ldh [rHDMA5], a
    rst $38
    ei
    rst $38
    ld [hl], $f9
    rst $38
    and $19
    ld l, l
    di
    adc $f1
    call nz, Call_028_79fb
    xor $fc
    and $40
    db $e3
    di
    inc c
    ld l, b
    dec d
    add b
    pop hl
    ld a, a
    cp $01
    inc d
    db $eb
    nop
    rst $38
    push af
    ld h, d
    ldh [$ed], a
    ld b, c
    rlca
    ldh [$5d], a
    and d
    ld l, $e1
    nop
    rst $38
    add sp, -$01
    rla
    ld b, b
    cp a
    jr z, jr_028_41e3

    or h
    dec bc
    nop
    rst $30
    rst $38
    and b
    ld e, a
    ld c, c
    pop hl
    ld a, [$ad05]
    ld [bc], a
    rst $38
    ld d, [hl]
    ld bc, $000b
    ld b, b
    cp a
    xor b
    ld d, a
    rst $38
    add c
    rst $38
    inc bc
    or $07
    call $db0f
    rst $38
    rra
    or [hl]
    ccf
    db $ec
    ld a, a
    ret c

    ccf
    db $ec
    rst $38
    rra
    or [hl]
    rrca
    db $db
    rlca
    adc l
    inc bc
    sub $ff
    add c
    rst $38
    add b
    add b
    sbc a
    sbc a
    rst $18
    rst $18
    rst $38
    ld e, [hl]
    db $fc
    ld hl, sp-$10
    ld [hl], b
    ldh [$ea], a
    ldh [$df], a
    ld [hl], l
    ret nz

    ld [$7fc0], a
    cp $e0
    jr c, jr_028_41f8

    rst $38
    ld c, $07
    ld b, $07
    ld b, $03
    ld b, d
    inc bc
    cp l

jr_028_41e3:
    and d
    db $fc
    ldh [$a6], a
    ld [bc], a
    ld a, a
    ldh [$fe], a
    ldh [rIE], a
    rst $38
    nop
    ld a, a
    ld a, a
    rst $38
    ld a, [$54ff]
    rst $38
    rst $38
    rst $38

jr_028_41f8:
    rst $38
    sub $07
    xor [hl]
    ld b, $fc
    cp $df
    nop
    add sp, -$2b
    rst $38
    and c
    rst $18
    ret nz

    db $fd
    rst $38
    rst $38
    ld hl, sp+$6d
    ldh a, [$da]
    ldh [$b1], a
    ret nz

    ld l, d
    ld sp, hl
    add b
    db $db
    pop bc
    ldh [$e0], a
    add b
    rst $38
    ret nz

    ld l, l
    ldh [rIE], a

jr_028_421e:
    or e
    ldh a, [$db]
    ld hl, sp+$6d
    db $fc
    scf
    cp $ff
    dec de
    db $fc
    scf
    push de
    ldh [$a0], a
    ret nz

    or d
    rst $38
    ret nz

    ld e, a
    and b
    jp z, $1515

    adc d
    pop bc
    rst $38
    rrca
    rla
    adc b
    ld e, l
    add b
    ld [hl+], a
    adc b
    ld e, c
    rst $38
    add b
    ld [hl-], a
    adc b
    pop de
    ld [$8834], sp
    rst $30
    rst $38
    ld [$9d6a], sp
    ld d, l
    inc bc
    ld [bc], a
    ld bc, $ffa6
    ld bc, $02fd
    xor c
    ld d, h
    ld d, h
    xor b
    ld e, c
    rst $38
    ld hl, sp+$4c
    cp b
    ld [hl], l
    ld [$08ea], sp
    push de
    rst $38
    ld [$08a6], sp
    ld b, l
    ld [$0816], sp
    rst $30
    rst $38
    ld [$5cab], sp
    adc [hl]
    adc l
    rla
    db $10
    jr z, @+$01

    inc h
    ld [de], a
    ld [$90a6], sp
    ld b, b
    jr nz, jr_028_421e

    rst $38
    ld h, b
    ld bc, $8efe
    adc l
    inc d
    ld [de], a
    inc l
    rst $38
    jr nz, jr_028_42a4

    nop
    or a
    adc b
    ld l, b
    nop
    adc b
    rst $38
    ld b, b
    add hl, hl
    add b
    db $eb
    ld [$d0d1], a
    and e
    rst $38
    and d
    pop bc
    ret nz

    and e
    and d
    ld b, l
    ld b, h
    adc e

jr_028_42a4:
    rst $38
    adc d
    dec b
    inc b
    nop
    rst $38
    inc h
    db $db
    ld e, b
    rst $38
    and a
    ld [hl-], a
    rst $08
    ld h, $df
    ld c, l
    cp h
    jr jr_028_42be

    ld sp, hl
    dec [hl]
    db $f4
    ld d, b
    rst $00
    ld a, $c1

jr_028_42be:
    ld e, l
    ldh [$2c], a
    ret nz

    ld h, h
    jp Jump_000_30fe


    pop bc
    rst $38
    nop
    ld a, [bc]
    push af
    ld a, a
    rst $38
    push de
    ld a, a
    ld d, l
    ld a, [hl]
    cp $ff
    ld a, a
    cp a
    ccf
    db $fc
    pop hl
    rst $38
    add sp, $17
    cp $ff
    ld b, b
    ld b, c
    xor c
    xor b
    rst $38
    call nc, $f9d5
    ld hl, sp-$0b
    db $f4
    ld sp, hl
    ld hl, sp-$01
    cp a
    ccf
    xor a
    cpl
    cp a
    ccf
    xor d
    ld a, [hl+]
    rst $38
    or l
    dec [hl]
    xor d
    ld a, [hl+]
    sub b
    db $10
    xor d
    ld a, [hl+]
    rst $38
    jp c, $0880

    add h
    call z, $1802
    add a
    ld e, a
    rst $08
    ld [bc], a
    add hl, de
    add [hl]
    rst $08
    ld hl, sp-$20
    cp l
    cp d
    and b
    rst $38
    xor e
    nop
    cp a
    ld b, b
    add [hl]
    ld bc, $0152
    rst $38
    xor d
    ld bc, $0172
    cp $fe
    db $f4
    db $f4
    rst $38
    ld [$d0ea], a
    ret nc

    xor d
    xor d
    ret nz

    ret nz

    rst $38
    xor d
    xor d
    ld bc, $d400
    nop
    and b
    nop
    rst $38
    ld d, d
    ld [bc], a
    add b
    nop
    ld c, e
    ld a, [bc]
    add b
    nop
    rst $38
    dec hl
    ld a, [hl+]
    and e
    nop
    ld l, e
    ld [$dcdd], a
    rst $38
    cp e
    cp d
    db $fd
    db $fc
    ei
    ld a, [$fcfd]
    rst $38
    db $eb
    ld [$f4f5], a
    push bc
    ld a, [$f0ef]
    rst $38
    push bc
    ld_long a, $ffe0
    ld a, l
    rst $38
    dec sp
    rst $38
    rst $38
    or [hl]
    ld a, c
    and $19
    ld d, h
    xor e
    cp $01
    ei
    ld d, h
    xor e
    ldh a, [$a7]
    call nc, $a5ff
    ld_long a, $ff2b
    call nc, $a05a
    ld a, [c]
    db $fd
    ld d, l
    ld_long a, $ffad

jr_028_437e:
    ldh a, [$2b]
    ret nc

    push af
    add b
    ldh a, [$81]
    ld de, $c2ff
    ld d, [hl]
    and b
    add b
    nop
    ld d, [hl]
    xor b
    ld a, [hl]
    rst $28
    add b
    ld a, [hl]
    add b
    nop
    cp d
    and b
    ld a, [hl]
    add b
    ld l, b
    rst $18
    add b
    ld [$55f7], a
    ld [c], a
    cp $e1
    push de
    and b
    rst $38
    ldh a, [$81]
    ret nc

    jp $e671


    pop hl
    cp h
    cp a
    inc hl
    ret c

    push de
    and b
    inc hl
    ret nc

    xor $e0
    ld [c], a
    rst $20
    sub a
    ldh [$7c], a
    sub d
    and b
    ret nc

    db $e3
    ld l, e
    sbc a
    ld b, a
    rst $38
    cp a
    ld l, d
    sbc a
    ld b, l
    cp a
    ld h, b
    sbc a
    ld d, b
    ei
    xor a
    ld h, d
    ld hl, sp-$20
    ld e, a
    rst $38
    rst $30
    rst $38
    cp e
    rst $38
    rst $38

jr_028_43d6:
    ld l, l
    rst $38
    rla
    rst $38
    ld c, $ff
    adc e
    ei
    rst $38
    ld b, [hl]
    db $fc
    db $e4
    dec b
    rst $38
    inc hl
    rst $18
    ld b, l
    rlca
    cp a
    and d
    ld e, a
    rrca
    ret nz

    ret c

    call nz, $a026
    sub l
    add b
    or $81
    cp $20
    xor e
    add b
    nop
    and b
    jr nz, jr_028_437e

    ld bc, $ff80
    nop
    add l
    dec b
    xor d
    ld a, [hl+]
    nop
    add b
    ld a, a
    rst $38
    add b
    dec d
    inc d
    add hl, bc
    ld [$5455], sp
    dec l
    rst $38
    inc l
    ld d, l
    ld d, h
    cp a
    cp [hl]
    dec b
    inc b
    cp $ff
    ld bc, $d4d5
    jp hl


    add sp, $55
    ld d, h
    xor c
    rst $38
    xor b
    ld b, l
    ld b, h
    ld bc, $0500
    inc b
    ld bc, $00ff
    ld de, $00ee
    rst $38
    ld b, h
    cp e
    nop
    pop de
    rst $38
    ld hl, sp-$1f
    ld b, d
    and e
    db $fc
    db $eb
    ld [$a09c], a
    push de
    rst $38
    rst $38
    xor d
    rst $38
    ret nz

    rst $38
    adc d
    push af
    sbc a
    ldh [rSB], a
    rst $38
    ld b, h
    ret z

    or b
    add h
    adc $e8
    jr nc, jr_028_43d6

    cp a
    db $e3
    adc [hl]
    add c
    or h
    db $e3
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    dec hl
    rst $38
    ld h, l
    rra
    rst $38
    xor a
    rst $38
    cpl
    rst $18
    ld e, a
    xor a
    sbc e
    ld c, a
    rst $38
    and a
    rrca
    rrca
    adc a
    dec bc
    rst $08
    add a
    ld l, a
    rst $38
    adc a
    ccf
    rr a
    and a
    rrca
    rrc a
    cp $f0
    pop hl
    adc e
    ld c, a
    ld h, a
    rrca
    ld sp, $1f0f
    cp a
    ld a, a
    dec bc
    ld a, a
    ld b, l
    ccf
    cp $ff
    ld [c], a
    rst $38
    pop af
    rst $38
    db $fc
    pop hl
    db $e3
    and b
    ret nz

    ld h, b
    add hl, bc
    nop
    sub l
    add b
    ld a, a
    ld c, c
    ld b, b
    add e

jr_028_44a3:
    add d
    push de
    call nc, Call_028_40ab
    ret nz

    cp $30
    jp $f0f0


    ld [$d4ea], a
    call nc, $fdfa
    ld a, [$6d92]
    nop
    nop
    push af
    add b
    rst $38
    pop bc
    rst $38
    ld a, [hl]
    rst $38
    nop
    ld_long a, $fff5
    xor c
    rst $38
    db $fd
    ld b, b
    ldh a, [$80]
    pop hl
    pop bc
    ret nc

    add b
    add sp, -$80
    xor $ea
    ldh [$c0], a
    cp $b8
    or $e1
    rst $08
    ld [bc], a
    ld a, [bc]
    rst $38
    add a
    db $db
    rlca
    db $76
    adc b
    jr nc, jr_028_44a3

    ld a, [$80ff]
    xor d
    push de
    ld [$ebff], a
    ld bc, $77d6
    ld bc, $f947
    jp z, Jump_000_0aa5

    push af
    xor d
    xor h
    add b
    pop af
    ld d, l
    db $10
    ldh [$ae], a
    ld h, c
    adc [hl]
    ld h, b
    rst $38
    sub $f9
    ld h, d
    db $fd
    db $fd
    db $fc
    db $eb
    ld [c], a
    db $fd
    ld d, [hl]
    ld sp, hl
    and d
    db $fd
    ld a, a
    ld b, $f9
    xor d
    ld d, l
    cp $01
    db $fc
    ld a, d
    add b
    rst $38
    rst $28
    rst $38
    db $dd
    rst $38
    or [hl]
    rst $38
    add sp, -$01
    ccf
    ld [hl], d
    db $fd
    rst $10
    ld hl, sp+$62
    db $fd
    adc h
    add c
    db $fc
    jp hl


    nop
    nop
    nop
    db $dd
    ld d, b
    rst $38
    ldh [rVBK], a
    ld c, [hl]
    ld [hl+], a
    rst $38
    db $e4
    ld c, [hl]
    ld c, a
    ld hl, sp-$10
    pop hl
    rst $38
    rst $38
    jp hl


    add sp, $4f
    ld c, h
    ld c, h
    ld c, [hl]
    ld hl, $24ef
    dec h
    inc h
    dec h
    db $fd
    ldh [rNR50], a
    ld hl, $f34e
    ld c, h
    ld c, h
    cp l
    rst $38
    db $eb
    ld [$074d], a
    ld l, $21
    rst $18
    dec hl
    ld h, $3a
    ld h, $3a
    db $fd
    ldh [rNR52], a
    dec hl
    rst $08
    ld hl, $3c41
    ld c, l
    call z, $c0ff
    ld [$3123], a
    cp a
    dec hl
    jr nz, jr_028_45ac

    add hl, sp
    jr c, jr_028_45b0

    db $fd
    ldh [$38], a
    rst $08
    jr nz, jr_028_45a8

    ld b, d
    ccf
    ret nz

    rst $38
    add b
    db $eb
    ld [$f731], sp
    jr nz, @+$21

    ld a, [bc]
    rst $38
    db $e4
    rra
    jr nz, jr_028_45d0

    add hl, bc
    cp h
    ret nz

    rst $38
    ld b, b
    db $eb
    dec b
    cpl
    ld e, $0b
    rst $38
    and $1e
    ld [hl], e
    ld b, e
    ld b, b
    ret nz

    rst $38
    nop
    db $eb
    ld bc, $292a
    rst $38
    ldh [$6f], a

jr_028_45a8:
    ld a, [de]
    inc e
    ld a, [de]
    inc e

jr_028_45ac:
    ld hl, sp-$1f
    inc bc
    ld [bc], a

jr_028_45b0:
    ret nz

    rst $38
    or $c0
    sra d
    ld bc, $e1ff
    dec de
    dec e
    dec de
    dec e
    ld [c], a
    rst $30
    ld [c], a
    inc bc
    ret nz

    rst $38
    add b
    db $ec
    ret nz

    ldh [$27], a
    jr z, jr_028_45dc

    rra
    add hl, de
    add hl, de
    ld [de], a
    jr z, jr_028_45f7

jr_028_45d0:
    or l
    ldh [$80], a
    rst $38
    ret nz

    ldh a, [rIE]
    ld c, d
    ld c, e
    inc de
    jr jr_028_45f4

jr_028_45dc:
    inc de
    ld c, e
    ld c, d
    cp b
    pop bc
    ldh [$c0], a
    rst $38
    add b
    ldh a, [$0e]
    ld c, $02
    rst $38
    ldh [$0e], a
    ld bc, $c00e
    rst $38
    ld b, b
    di
    cp [hl]
    pop hl

jr_028_45f4:
    jp nz, $c0e1

jr_028_45f7:
    rst $38
    ret nz

    push af
    ld a, [$cfe5]

Call_028_45fd:
    ld [bc], a
    ld [bc], a
    inc sp
    inc [hl]
    set 7, a
    jp hl


    add sp, $4e
    ld bc, $021b
    inc b
    ret nz

    ld [$354e], a
    ld [$fe83], a
    db $e3
    ld a, [c]
    sbc [hl]
    rst $18
    inc a
    ld bc, $1402
    dec d
    add b
    jp hl


    inc a
    inc a
    ld a, h
    ld l, [hl]
    sbc a
    ld l, c
    add sp, $3b
    ld bc, $1603
    rla
    ld a, l
    ld [c], a
    ld e, $fb
    db $e3
    ld [bc], a
    dec sp
    dec sp
    dec a
    ld l, [hl]
    sbc a
    ld b, b
    add sp, -$7a
    pop bc
    ld a, a
    ld [bc], a
    dec c
    rrca
    rrca
    rrca
    db $10
    dec c
    push af
    ld [c], a
    and a
    ld a, $3e
    scf
    ld l, [hl]
    sbc a
    ld b, b
    adc b
    inc c
    rst $38
    pop hl
    dec l
    ld a, [hl-]
    ret nz

    pop hl
    inc l
    push af
    ld [c], a
    ld [hl], $36
    ld [hl], $6e
    sbc a
    nop
    adc b
    dec bc
    jr nc, @+$08

    rst $38
    ldh [$30], a
    add b
    pop hl
    or $e3
    pop af
    ldh [$6e], a
    add [hl]
    cp e
    inc d
    dec d
    ld l, [hl]
    sbc [hl]
    ld c, l
    ld [hl-], a
    dec b
    rst $38
    ldh [$32], a
    ld h, d
    ld b, b
    ldh [rNR11], a
    or $e3
    pop af
    ldh [$6e], a
    add [hl]
    ld d, $17
    ld l, [hl]
    sbc [hl]
    jr nc, jr_028_4683

jr_028_4683:
    call z, $82b3
    ld l, [hl]
    add d
    ld l, d
    add c
    ld c, $0e
    ld l, [hl]
    sbc [hl]
    ret nz

    ldh a, [$80]
    ld l, [hl]
    add e
    xor b
    and [hl]
    ld l, [hl]
    sbc e
    add b
    pop af
    ld l, [hl]
    add e
    ld [hl], b
    add e
    ld l, [hl]
    sbc l
    ld c, l
    ld [bc], a
    add b
    and b
    ld [bc], a
    ld a, l
    and [hl]
    or $e6
    ld l, [hl]
    add b
    ld [hl], b
    add d
    xor $9e
    ret nz

    ldh [$8c], a
    sub h
    pop hl
    ld d, h
    push hl
    ld a, [de]
    inc e
    or b
    add l
    ld [hl], b
    add e
    ret nz

    rst $38
    ld bc, $0319
    sub h
    pop hl
    pop bc
    add l
    dec de
    dec e
    ld a, [c]
    add l
    jp nz, $c0e3

    rst $38
    nop
    add c
    adc e
    ld a, [bc]
    and $6e
    adc b
    ret nz

    rst $38
    sub h
    rst $00
    ld a, [bc]
    push hl
    ret nz

    rst $38
    add b
    dec h
    db $d3
    ld [bc], a
    ld c, c
    ld a, [hl]
    db $d3
    rst $28
    ld h, l
    ld c, c
    add b
    db $fc
    inc bc
    ld c, b
    ld [de], a
    cp [hl]
    xor a
    ld b, l
    rst $38
    ldh [rSC], a
    push bc
    ld c, b
    ld l, [hl]
    ld a, e
    sub $66
    ld hl, sp-$18
    ld b, e
    ld c, [hl]
    ld b, [hl]
    rst $38
    ldh [$b5], a
    nop
    cp h
    ld a, a
    xor h
    inc d
    ld b, h
    rst $38
    ldh [rP1], a
    ld hl, sp+$5f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    nop
    nop
    nop
    ld d, a
    inc l
    inc l
    inc c
    rst $38
    ldh [$0d], a
    rst $38
    ldh [$2d], a
    rst $38
    ldh [rTIMA], a
    inc l
    rst $38
    ldh [$0c], a
    ei
    pop hl
    rst $38
    rst $38
    and $e5
    pop bc
    push hl
    ret nz

    ld [c], a
    ret z

    cp a
    ld [c], a
    rst $38
    rst $38
    pop bc
    ld [$c10d], a
    db $e3
    ret nz

    db $e3
    dec l
    inc c
    ld bc, $cc0d
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
    rlca
    inc c
    inc c
    ld a, [bc]
    rst $38
    ld [c], a
    ld a, d
    pop bc
    or $e3
    call z, $c0ff
    rst $38
    db $fc
    rst $38
    rst $38
    ret nz

    db $eb
    inc c
    inc c
    dec bc
    dec bc
    dec hl
    dec hl
    inc bc
    inc l
    inc l
    ret nz

    rst $38
    ret nz

    rst $38
    call z, Call_028_40ff
    pop af
    ld a, [$6fe7]
    and d
    nop
    ld l, e
    and b
    call nz, $c0ff
    rst $38
    rst $38
    rst $38
    ret nz

    rst $28
    pop bc
    db $e4
    ret nz

    rst $38
    add b
    ld a, [$e57c]
    add l
    cp [hl]
    cp $0d
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc a
    jp hl


    add e
    dec c
    dec c
    ld l, [hl]
    adc l
    ret nz

    rst $38
    ret nz

    xor $6e
    sbc a
    ld b, c
    add l
    ld c, h
    ld b, b
    pop bc
    and e
    cp $61
    or l
    and e
    rst $30
    pop hl
    ld l, $bf
    ld bc, $8c87
    rst $38
    ldh [$80], a
    cp [hl]
    ld h, e
    db $f4
    db $e3
    ret nz

    rst $38
    pop bc
    ld l, h
    add l
    ld [c], a
    ei
    ld [$e6c0], a
    ld c, $01
    ld c, $ae
    add e
    cp c
    rst $10
    ret nz

    rst $38
    ld b, b
    db $fd
    ret nz

    xor l
    ldh a, [$ef]
    ret nz

    rst $38
    ld [$ffc0], sp
    ret nz

    rst $38
    ld a, d
    xor l
    dec bc
    or b
    add h
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ei
    ld [$e1d4], sp
    ld [bc], a
    and a
    ld b, b
    ld sp, hl
    ld l, h
    rst $38
    jp hl


    ret nz

    rst $38
    nop
    ei
    or e
    ld [c], a
    nop
    ld b, b
    adc l
    ld c, d
    rst $20
    ret nz

    rst $18
    nop
    sub c
    ret nz

    rst $38
    ret nz

    ld c, [hl]
    add d
    adc d
    ld [hl-], a
    rst $08
    sub c
    ld c, $c0
    rst $38
    ret nz

    rst $38
    add b
    sbc b
    call z, $f0ff
    inc l
    ld b, c
    db $ec
    ldh [rIE], a
    and $96
    jp $9980


    db $fc
    db $ec
    ret nz

    db $e3
    xor h
    xor h
    xor h
    ld b, $fc
    pop hl
    xor h
    xor h
    ld b, c
    dec e
    db $fc
    rst $28
    inc l
    add d
    inc bc
    ld a, a
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    rst $38
    rst $30
    jp $c0ff


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
    ret nz

    cp b
    call z, $c0ff
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
    ret nz

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
    ret nz

    rst $38
    call z, $c0ff
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
    nop
    ret nz

    rst $38
    ret nz

    ei
    nop
    nop
    nop
    rla
    nop
    nop
    rrca
    rst $38
    ld [c], a
    nop
    rst $38
    push af
    pop hl
    db $e3
    rst $18
    or $00
    add $e5
    cp [hl]
    push af
    and a
    pop hl
    and d
    ld [c], a
    ldh [$f7], a
    add c
    db $e3
    ret nz

    ld hl, sp-$09
    db $eb
    ld h, b
    ldh [rIE], a
    add b
    db $eb
    ld e, a
    push hl
    rla
    di
    add b
    pop hl
    dec bc
    dec bc
    ld a, d
    db $e4
    nop
    or $d0
    ld [c], a
    pop bc
    ldh [$e0], a
    db $dd
    push bc
    cp d
    pop hl
    add b
    di
    xor $f4
    and a
    ret


    nop
    sbc c
    jp $edc0


    and a
    push hl
    ret nz

    ei
    ld e, [hl]
    rst $00
    add b
    db $ec
    cpl
    xor $60
    rst $38
    nop
    ld hl, $7cd1
    jp $db16


    jp c, $ffb8

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $00
    nop
    nop
    dec b
    db $10
    rst $38
    db $e4
    nop
    rst $38
    db $f4
    push hl
    db $e4
    rst $18
    or $c6
    push hl
    cp [hl]
    push af
    inc c
    and a
    and $e0
    ld hl, sp+$1c
    inc e
    ldh [$fb], a
    ret nz

    db $fd
    and b
    ei
    ld e, a
    push hl
    add b
    dec [hl]
    pop hl
    rla
    rst $28
    rlca
    ldh [rSB], a
    db $e3
    rla
    and $f5
    set 4, b
    pop bc
    ld de, $1101
    db $dd
    add $ba
    pop hl
    add b
    di
    xor $f4
    and a
    jp z, $c299

    ret nz

    xor $00
    dec a
    rst $20
    ldh [$f3], a
    jr @-$18

    ldh [$f2], a
    cpl
    xor $60
    or $f7
    add $20
    db $ed
    ld b, $fc
    and h
    inc de
    inc de
    push af
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    cp $01
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    nop
    nop

    db $00, $00, $00, $00, $26, $12, $00, $00, $a8, $10, $00, $00, $ad, $35, $94, $4e
    db $08, $25, $08, $25, $08, $25, $08, $25, $96, $7e, $af, $79, $e9, $58, $ff, $7f
    db $ff, $7f, $54, $5a, $8e, $41, $a7, $24, $ff, $4f, $59, $22, $b2, $21, $e9, $14
    db $39, $7f, $50, $62, $69, $41, $60, $7f, $9f, $02, $1e, $00, $03, $75, $ff, $7f
    db $08, $25, $08, $25, $08, $25, $08, $25, $ff, $a6, $d4, $db, $a3, $b8, $d4, $dd
    db $ba, $ff, $bf, $df, $fc, $9f, $99, $d1, $f0, $80, $ff, $3f, $10, $ff, $e0, $6f
    db $14, $5f, $ac, $ff, $ff, $fc, $fd, $fe, $d7, $fc, $85, $fe, $ff, $90, $c0, $c8
    db $91, $91, $df, $ce, $af, $ff, $a7, $d7, $d0, $a8, $80, $ff, $9f, $ff, $ff, $d6
    db $ad, $a5, $de, $76, $8d, $ed, $1a, $ff, $f8, $f7, $b1, $0e, $00, $ff, $fc, $ff
    db $7f, $ff, $00, $81, $00, $bd, $00, $a5, $fe, $e0, $05, $bd, $f6, $e0, $ff, $fe
    db $e0, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $00, $f0, $ff, $f0, $ff, $f0, $ff
    db $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $f0, $ff, $fe, $f0, $f3, $d0, $ff, $ff
    db $ff, $77, $c3, $c7, $ff, $f8, $40, $ff, $7f, $ff, $37, $c0, $41, $ff, $ff, $83
    db $7d, $7f, $fd, $fd, $87, $ff, $ff, $85, $ed, $87, $dd, $87, $ad, $87, $cd, $bb
    db $87, $1d, $fa, $e0, $4d, $87, $0d, $fe, $e1, $ff, $ff, $69, $97, $ff, $ff, $8b
    db $80, $00, $7f, $ff, $1d, $64, $96, $e6, $0f, $70, $ab, $c8, $ff, $80, $ff, $89
    db $f3, $d1, $01, $00, $fe, $ff, $c0, $3e, $e1, $1f, $f8, $06, $7d, $83, $ff, $9d
    db $63, $81, $bf, $ba, $d9, $98, $d8, $fb, $81, $e2, $e6, $e0, $f6, $84, $f8, $80
    db $ff, $ff, $f4, $f4, $85, $97, $21, $23, $71, $73, $ff, $21, $a7, $41, $5f, $01
    db $7f, $01, $ff, $ff, $2f, $2f, $3e, $01, $75, $0a, $ff, $3f, $ff, $ef, $20, $ba
    db $65, $f4, $2b, $b8, $67, $ff, $70, $af, $aa, $55, $40, $bf, $fe, $fd, $ff, $54
    db $ad, $86, $7d, $06, $fd, $06, $fd, $ff, $04, $ff, $a8, $77, $70, $ac, $a5, $7b
    db $ff, $34, $e8, $a5, $78, $24, $f8, $a6, $7f, $ff, $20, $ff, $06, $fd, $54, $3f
    db $f6, $fd, $ff, $f4, $5f, $54, $5f, $04, $5f, $d4, $ff, $f7, $04, $ff, $20, $fe
    db $e0, $28, $f0, $a5, $70, $d5, $21, $fc, $e0, $a0, $fa, $e0, $04, $de, $e0, $24
    db $1f, $ff, $56, $1d, $06, $1d, $54, $1d, $16, $5d, $df, $56, $1d, $a0, $70, $25
    db $dc, $e0, $30, $ef, $fe, $fc, $e1, $60, $be, $23, $fd, $34, $1f, $e6, $ff, $fd
    db $0c, $f7, $04, $ff, $0c, $b7, $44, $ff, $7f, $8c, $f7, $14, $ef, $62, $bf, $20
    db $ff, $ff, $60, $bf, $b0, $6f, $60, $bf, $b5, $ff, $6a, $7a, $a5, $ff, $3f, $0c
    db $f7, $16, $fd, $ed, $fc, $e1, $2c, $d7, $5e, $a5, $be, $45, $3f, $fe, $fd, $f5
    db $0a, $6a, $15, $ed, $c0, $f2, $c0, $ff, $7f, $ff, $d0, $2f, $ff, $ff, $50, $af
    db $6d, $00, $f1, $e1, $ff, $fe, $fe, $e0, $0b, $f4, $d3, $c0, $ff, $80, $d4, $ab
    db $ee, $94, $dc, $a8, $b8, $ff, $c8, $c8, $a8, $a8, $c8, $cc, $a8, $f4, $ff, $00
    db $1e, $e0, $be, $10, $1e, $88, $8f, $ff, $88, $5e, $e8, $ef, $08, $1e, $08, $03
    db $ff, $fd, $fd, $ff, $45, $cf, $f5, $4f, $45, $ff, $4f, $05, $4f, $4d, $ff, $d1
    db $2f, $83, $fe, $f0, $e0, $f5, $8f, $85, $7f, $05, $ff, $fd, $ff, $ff, $41, $bf
    db $5d, $ff, $e8, $1f, $64, $ff, $9f, $0e, $df, $e2, $9c, $ea, $fd, $f6, $fa, $a8
    db $e2, $d2, $80, $c0, $5d, $eb, $cb, $e9, $4d, $7f, $eb, $43, $e9, $6b, $ff, $65
    db $80, $93, $e2, $ee, $8e, $e2, $aa, $ff, $94, $86, $e2, $a8, $ff, $f4, $ff, $ff
    db $e8, $ff, $50, $ff, $82, $fd, $17, $fb, $e8, $fe, $67, $e0, $fe, $fe, $c5, $c4
    db $d4, $ff, $c4, $c7, $c7, $ff, $ff, $cc, $cc, $ad, $ff, $8d, $ff, $ff, $66, $66
    db $99, $00, $66, $f7, $00, $99, $99, $f6, $e2, $99, $ad, $8d, $d6, $9f, $c6, $d6
    db $c6, $ad, $8d, $f8, $e5, $34, $e1, $df, $7f, $df, $fb, $fb, $ff, $ff, $ef, $ef
    db $28, $e1, $fc, $ed, $a2, $fa, $ee, $55, $aa, $00, $ff, $aa, $55, $3f, $55, $aa
    db $ff, $00, $aa, $55, $dd, $e3, $d8, $e5, $ff, $81, $80, $0b, $00, $15, $00, $2f
    db $00, $b7, $55, $00, $3f, $fc, $e0, $fe, $01, $ad, $a1, $39, $ff, $d8, $22, $ec
    db $20, $ff, $00, $d9, $12, $f7, $ca, $20, $cc, $9d, $a1, $42, $81, $24, $18, $fb
    db $00, $7e, $93, $a0, $e7, $42, $81, $00, $e7, $ff, $21, $ce, $10, $ce, $00, $dc
    db $00, $dc, $ff, $10, $ce, $21, $ce, $00, $e7, $00, $7f, $0f, $00, $7f, $80, $7f
    db $77, $a1, $fa, $e0, $f4, $e0, $d6, $e0, $9e, $7c, $ea, $04, $d8, $00, $9f, $a5
    db $e0, $e0, $e6, $00, $f7, $ff, $01, $fe, $70, $e1, $01, $fe, $ab, $54, $ff, $55
    db $aa, $fe, $01, $aa, $55, $fe, $01, $fe, $fa, $e0, $01, $ff, $00, $54, $01, $ab
    db $00, $1f, $00, $01, $55, $00, $01, $fe, $e2, $76, $e3, $e2, $e0, $f0, $ff, $e2
    db $60, $c0, $e5, $c0, $73, $60, $00, $81, $80, $09, $ff, $00, $95, $80, $49, $40
    db $83, $82, $d5, $f7, $d4, $ab, $aa, $63, $a0, $fe, $f4, $f4, $ea, $ff, $ea, $f0
    db $f0, $ea, $ea, $d4, $d4, $fa, $ff, $fa, $00, $00, $7e, $01, $f4, $0b, $ea, $ff
    db $15, $d0, $2f, $aa, $55, $c0, $3f, $aa, $ff, $55, $00, $ff, $fe, $01, $74, $0b
    db $2a, $ff, $15, $30, $0f, $5a, $05, $3c, $03, $56, $fe, $96, $e0, $81, $00, $cb
    db $00, $f5, $00, $df, $7f, $20, $ad, $50, $c7, $38, $ab, $54, $e0, $e0, $fe, $c0
    db $e2, $d0, $d0, $aa, $aa, $c0, $c0, $aa, $66, $b0, $e0, $55, $00, $ff, $e3, $de
    db $c3, $aa, $55, $d0, $c3, $f4, $c1, $c0, $de, $c0, $aa, $e4, $e0, $af, $4f, $a0
    db $40, $df, $af, $50, $bf, $4f, $af, $fe, $e2, $a0, $40, $fe, $90, $c3, $a2, $5c
    db $09, $f1, $57, $a7, $8f, $7f, $6f, $af, $4f, $80, $60, $bf, $40, $c0, $e9, $ef
    db $d6, $f9, $62, $fd, $fc, $eb, $e2, $fd, $56, $df, $f9, $a2, $fd, $06, $f9, $06
    db $e1, $fc, $ff, $7f, $fa, $ff, $ef, $ff, $dd, $ff, $b6, $fe, $a0, $7f, $72, $fd
    db $d7, $f8, $62, $fd, $aa, $50, $80, $f1, $55, $e4, $a0, $50, $c1, $22, $80, $ff
    db $ef, $9f, $02, $ff, $dc, $ea, $1d, $a6, $1f, $0b, $bf, $06, $ff, $bd, $09, $be
    db $86, $3d, $9f, $ff, $83, $ff, $0f, $d9, $07, $94, $eb, $f5, $ff, $f7, $5f, $0f
    db $63, $8f, $ab, $47, $fc, $e1, $03, $ec, $e4, $fd, $f1, $14, $80, $b5, $c0, $e2
    db $80, $35, $c0, $ff, $5d, $a2, $00, $9f, $da, $0f, $02, $8d, $ff, $d5, $0a, $23
    db $8c, $d7, $08, $75, $88, $ff, $50, $88, $f5, $88, $a1, $de, $8d, $ff, $ff, $ca
    db $ff, $eb, $14, $2a, $00, $5d, $00, $fa, $f0, $a1, $2a, $ee, $a0, $d7, $28, $ff
    db $00, $be, $cf, $00, $75, $00, $a8, $00, $c0, $15, $e1, $aa, $ff, $ff, $3a, $85
    db $1a, $e0, $d4, $80, $2a, $80, $df, $da, $05, $55, $aa, $45, $5c, $a0, $ad, $50
    db $ff, $b4, $0b, $01, $0f, $b4, $0f, $a5, $5f, $fe, $ba, $a0, $ff, $ab, $ff, $57
    db $80, $8f, $80, $ff, $57, $80, $af, $80, $5f, $80, $ab, $80, $ff, $56, $81, $8f
    db $80, $8d, $70, $e3, $38, $ff, $8c, $71, $67, $b8, $8c, $71, $63, $b8, $7f, $8d
    db $70, $c1, $38, $ea, $15, $ff, $7c, $c0, $fd, $bf, $78, $c0, $af, $00, $de, $01
    db $af, $80, $ff, $e9, $17, $2a, $01, $50, $01, $7a, $81, $ff, $ad, $50, $1a, $e1
    db $8d, $f0, $50, $e9, $ea, $00, $a5, $fe, $1a, $e0, $28, $86, $82, $51, $ff, $e9
    db $ff, $ff, $d1, $ff, $a1, $ff, $05, $fb, $2f, $03, $d1, $fd, $e1, $87, $d7, $84
    db $71, $c4, $ff, $e6, $00, $00

    nop

    db $37, $6b, $5a, $5b, $ff, $ec, $5a, $6b, $ff, $e0, $ea, $ea, $fc, $ee, $e2, $fc
    db $f5, $58, $69, $6a, $69, $6a, $40, $df, $56, $56, $40, $23, $24, $fa, $e0, $3f
    db $6a, $7b, $69, $58, $ea, $e7, $3f, $39, $3a, $49, $ec, $e0, $fc, $ee, $e2, $c0
    db $f6, $38, $35, $38, $35, $54, $55, $ef, $55, $54, $25, $26, $fa, $e0, $40, $21
    db $21, $fa, $c0, $e3, $21, $ff, $e0, $54, $40, $33, $34, $4a, $bc, $ec, $e0, $c0
    db $ff, $53, $57, $57, $53, $ff, $e0, $57, $af, $57, $41, $22, $22, $80, $e3, $22
    db $ff, $e0, $53, $cf, $41, $00, $01, $4b, $ec, $e0, $c0, $fb, $20, $36, $bf, $20
    db $36, $42, $52, $52, $42, $ff, $e0, $52, $cf, $52, $50, $36, $20, $40, $e3, $ea
    db $e2, $50, $02, $df, $03, $42, $52, $42, $4f, $80, $fb, $42, $4f, $53, $4f, $51
    db $c3, $e1, $fc, $e3, $4f, $d2, $e3, $58, $f5, $e2, $b2, $fe, $e1, $51, $ee, $e4
    db $c0, $f8, $27, $28, $c0, $f3, $5f, $f5, $61, $ff, $e0, $68, $c0, $fd, $4f, $4f
    db $29, $2a, $d7, $42, $43, $44, $ff, $e2, $43, $80, $e9, $50, $60, $df, $62, $62
    db $62, $67, $66, $80, $fd, $5c, $5d, $bf, $2b, $2c, $42, $45, $48, $47, $ff, $e0
    db $48, $55, $45, $33, $e0, $59, $ef, $a1, $59, $31, $e5, $65, $c0, $fe, $ff, $37
    db $5e, $2d, $2e, $42, $45, $46, $3f, $ea, $ff, $e0, $46, $c0, $e1, $40, $ff, $e2
    db $42, $42, $3b, $cf, $3c, $3c, $3c, $3b, $c0, $ff, $c0, $c0, $2f, $30, $ee, $c0
    db $e7, $50, $4f, $54, $ff, $e2, $42, $42, $3d, $ef, $3e, $3e, $3e, $3d, $c0, $ff
    db $58, $42, $50, $db, $31, $32, $40, $e7, $42, $50, $f7, $a1, $53, $53, $0e, $c0
    db $e4, $50, $63, $64, $80, $fe, $06, $c1, $c0, $c6, $36, $c7, $00, $40, $e2, $2e
    db $c7, $c0, $fb, $00, $c8, $0b, $c2, $ee, $ea, $c0, $ff, $c0, $a9, $30, $80, $ca
    db $c0, $ff, $00, $c0, $8e, $e3, $4d, $4d, $8e, $a3, $80, $83, $70, $83, $a3, $7d
    db $a3, $c0, $9a, $00, $85, $59, $4e, $4e, $06, $c2, $0c, $00, $9f, $f8, $74, $4c
    db $4c, $58, $9a, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $e6, $00, $00

    nop

    db $8b, $2c, $0c, $ff, $ed, $2c, $ff, $e1, $ee, $ef, $fb, $f5, $0c, $fd, $0b, $ff
    db $e0, $0d, $0d, $2d, $0d, $0e, $0e, $76, $fa, $e1, $2b, $2b, $ea, $e9, $0b, $0b
    db $2d, $e6, $e0, $80, $c1, $fa, $c0, $ff, $c0, $ff, $c0, $e2, $ff, $e1, $c0, $ff
    db $80, $f3, $0a, $0c, $ff, $e6, $c0, $e9, $0a, $0a, $e6, $e3, $c0, $fb, $c4, $e7
    db $ba, $e3, $00, $c0, $c3, $ee, $ee, $c0, $f8, $80, $e9, $c0, $e9, $65, $c3, $c0
    db $ff, $40, $e0, $85, $0e, $ff, $e3, $2e, $c0, $ff, $80, $ce, $7e, $c1, $c0, $e4
    db $2e, $40, $c0, $e2, $ca, $e4, $ec, $c3, $c0, $ff, $c0, $ed, $77, $c2, $0d, $ae
    db $c3, $a1, $2a, $c0, $ff, $40, $e9, $c0, $ff, $00, $f6, $4e, $ff, $e1, $6e, $a0
    db $c0, $ff, $40, $d4, $c1, $e2, $bf, $e0, $33, $c8, $4a, $ff, $e0, $6a, $60, $40
    db $df, $00, $ce, $f0, $ef, $c0, $9b, $c0, $ad, $ec, $cc, $ff, $e1, $3c, $c0, $ff
    db $c0, $f6, $8c, $8c, $ac, $ac, $c0, $ff, $41, $85, $29, $4c, $91, $e2, $8e, $e2
    db $ec, $ff, $e2, $6c, $ff, $61, $ea, $e6, $08, $73, $e1, $ee, $e2, $40, $96, $8c
    db $ff, $e3, $c0, $e1, $f5, $e2, $be, $63, $18, $7c, $e0, $78, $e1, $75, $e0, $ac
    db $ac, $c0, $bd, $7d, $63, $c6, $e1, $00, $90, $75, $7d, $77, $c0, $ff, $fc, $fb
    db $01, $6e, $c0, $ff, $c0, $ff, $ff, $ff, $40, $c0, $ff, $ff, $ff, $c0, $ff, $ff
    db $ff, $c0, $ff, $03, $4a, $6c, $ff, $e9, $00, $c0, $ff, $fc, $fb, $b3, $e2, $c0
    db $ff, $40, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $c0, $ff, $c0, $ff
    db $c0, $ff, $c0, $ff, $b9, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $ff, $ff, $c0
    db $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $c0, $ff
    db $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0, $ff, $00
    db $b3, $cc, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $00, $ff, $ff
    db $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $00, $c0
    db $ff, $c0, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $00
    db $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff
    db $00, $c0, $ff, $c0, $ff, $cc, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $ff, $ff, $c0
    db $ff, $00, $ff, $ff, $c0, $ff, $c0, $fb, $00, $00

    nop

    db $0b, $0f, $00, $ff, $fb, $0f, $ff, $e6, $f5, $e6, $e0, $eb, $f7, $e7, $00, $b5
    db $e4, $e0, $ed, $e9, $e6, $95, $e0, $b9, $e2, $a0, $ed, $c0, $ea, $e0, $ee, $00
    db $a9, $e6, $87, $e3, $e0, $ef, $4e, $ee, $e0, $ff, $40, $f2, $77, $e7, $00, $ee
    db $00, $fa, $c2, $00, $f3, $3c, $ea, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $e8, $00, $00, $00, $f5, $10, $ff, $e5, $00, $ff, $f3, $10, $18, $28
    db $10, $ff, $10, $f8, $10, $10, $38, $10, $00, $10, $1f, $48, $58, $00, $68, $00
    db $d6, $ec, $c8, $e6, $e0, $e0, $44, $ee, $ec, $e0, $e4, $1c, $e0, $e8, $98, $e1
    db $c0, $ec, $10, $e0, $e9, $00, $b9, $e8, $c0, $ee, $5e, $e3, $e0, $ef, $4e, $ee
    db $e0, $ff, $40, $f2, $fd, $c5, $04, $60, $ed, $de, $c0, $13, $df, $c2, $d6, $dc
    db $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff, $ff, $ff, $eb, $00, $00

    nop

    db $00, $04, $00, $10, $04, $04, $00, $10, $08, $04, $00, $10, $0c, $04, $00, $10
    db $10, $04, $00, $10, $0c, $04, $00, $10, $08, $04, $00, $10, $04, $04, $00, $10
    db $ff, $00, $fe, $ff, $a6, $d4, $db, $a3, $b8, $d4, $dd, $ba, $ff, $bf, $df, $fc
    db $9f, $99, $d1, $f0, $80, $ff, $3f, $10, $ff, $e0, $6f, $14, $5f, $ac, $ff, $ff
    db $fc, $fd, $fe, $d7, $fc, $85, $fe, $ff, $90, $c0, $c8, $91, $91, $df, $ce, $af
    db $ff, $a7, $d7, $d0, $a8, $80, $ff, $9f, $ff, $ff, $d6, $ad, $a5, $de, $76, $8d
    db $ed, $1a, $ff, $f8, $f7, $b1, $0e, $00, $ff, $fc, $ff, $7e, $c0, $e7, $ff, $9e
    db $96, $df, $fc, $98, $c0, $e7, $fd, $7d, $c0, $e2, $98, $d0, $d8, $90, $94, $d8
    db $fd, $c8, $c0, $e6, $56, $6d, $65, $5e, $76, $cd, $fb, $ad, $da, $c0, $f0, $9f
    db $95, $df, $f3, $9e, $fe, $80, $e8, $7e, $57, $fc, $25, $3e, $96, $dc, $ef, $d6
    db $9c, $95, $de, $80, $e7, $16, $1d, $15, $df, $1e, $16, $3d, $2d, $fa, $c0, $f3
    db $f0, $9f, $fe, $80, $e8, $be, $b7, $fc, $cd, $8e, $99, $d7, $bf, $d5, $9b, $9d
    db $d3, $cd, $ab, $40, $e5, $86, $bf, $05, $85, $06, $46, $8d, $8d, $c0, $ff, $fc
    db $ff, $9d, $fe, $e7, $c4, $c1, $82, $9a, $d5, $bf, $d4, $9b, $9e, $d1, $cf, $a8
    db $00, $e5, $c2, $bf, $81, $a1, $c6, $c6, $fd, $7d, $c0, $e6, $00, $00, $ff, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $ff, $ff, $00, $ff, $ff, $ff, $ff, $f9, $f8, $00, $00

    nop
    nop
    nop
    nop
    nop
    inc [hl]
    ld a, [hl+]
    nop
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ccf
    ld b, d
    ld e, d
    ld hl, $1913
    sbc a
    ld d, a
    ccf
    ld [bc], a
    ld b, $7e
    ld b, $65
    sbc a
    nop
    rst $38
    ccf
    ld a, [de]
    ld [hl], $32
    add hl, de
    adc d
    ld [$7f40], sp
    jr @+$80

    db $10
    ld d, c
    rst $38
    ld a, a
    ld a, [c]
    inc bc

jr_028_55e3:
    add b
    ld [bc], a
    sbc a
    nop
    ld [hl-], a
    nop
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    nop
    rst $38
    db $ec
    add c
    add b
    dec bc
    nop
    dec d
    nop
    rst $18
    cpl
    nop
    ld d, l
    nop
    ccf
    db $fc
    ldh [$fe], a
    ld bc, $7eff
    ld bc, $0bf4
    ld [$d015], a
    cpl
    rst $38
    xor d
    ld d, l
    ret nz

    ccf
    xor d
    ld d, l
    nop
    rst $38
    rst $38
    cp $01
    ld [hl], h
    dec bc
    ld a, [hl+]
    dec d
    jr nc, jr_028_562f

    rst $38
    ld e, d
    dec b
    inc a
    inc bc
    ld d, [hl]
    ld bc, $01fe
    rst $38
    add c
    nop
    rlc b
    push af

jr_028_562f:
    nop
    rst $18
    jr nz, @+$01

    xor l
    ld d, b
    rst $00
    jr c, jr_028_55e3

    ld d, h
    nop
    rst $38
    ld d, d
    rst $38
    ldh [rHDMA5], a
    ei
    pop hl
    or $e2
    nop
    cp $e4
    ld d, l
    pop af
    ldh [$e5], a
    xor d
    ld hl, sp-$1e
    xor d
    pop af
    ld [c], a
    ld a, [$aae0]
    ld d, l
    ld d, l
    add sp, -$12
    ldh [$ae], a
    pop hl
    jp c, $5ae2

    xor $e1

Jump_028_565f:
    rst $38
    nop
    ld d, l
    rst $38
    xor d
    add c
    ld e, $7c
    ret c

    ld e, b
    ld hl, sp-$72
    rst $38
    dec de
    dec bc
    ld a, [bc]
    ld a, d
    ld [$6aee], a
    add hl, sp
    cp l
    xor h
    xor a
    pop hl
    rst $38
    rst $38
    cp $fe
    db $fc
    pop hl
    cp $ff
    cp $00
    nop
    cp $fe
    db $f4
    db $f4
    ld [$eaff], a
    ret nc

    ret nc

    xor d
    xor d
    ret nz

    ret nz

    xor d
    rst $38
    xor d
    ld bc, $0000
    rst $38
    ld d, h
    xor e
    xor d
    rst $00
    ld d, l
    cp $01
    sub l
    push hl
    and b
    rst $20
    sbc b
    pop hl
    xor d
    ld d, l
    rst $38
    add c
    ret nz

    push de
    ldh [$d9], a
    ldh [$c5], a
    ldh a, [rIE]
    ret


    ret nz

    sub l
    and b
    db $e3
    or l
    xor $cf
    ei
    and b
    ld e, a
    inc a
    ldh [$a1], a
    cp $d5
    cp $a9
    cp a
    rst $38
    db $fc
    ld a, [$d405]
    dec hl
    ldh a, [$e1]
    ld d, b
    rst $38
    xor a
    ld [$d415], a
    dec hl
    cp $a1
    nop
    rst $30
    rst $38
    ret nc

    cpl
    ldh [$e1], a
    ret nc

    cpl
    ld_long $ff15, a
    db $fd

Jump_028_56e1:
    ld d, d
    rst $38
    ld [$af50], a
    add sp, $17
    rst $38
    rst $28
    ret nz

    ldh a, [$a0]
    push hl
    sbc d
    jp z, $ff95

    rst $18
    add b
    rst $08
    sub b
    and a
    ret c

    ld b, e
    add h
    rst $38
    rst $30
    inc bc
    rrca
    dec b
    inc c
    ld sp, hl
    and c
    ld e, c
    rst $38
    ld d, c
    xor c
    pop hl
    add hl, de
    pop de
    add hl, hl
    pop hl
    add hl, de
    rst $38
    ld e, [hl]
    db $fc
    ld hl, sp-$10
    ld [hl], b
    ldh [$ea], a
    ldh [$df], a
    ld [hl], l
    ret nz

    ld [$7fc0], a
    cp $e0
    jr c, jr_028_573e

    rst $38
    ld c, $07
    ld b, $07
    ld b, $03
    ld b, d
    inc bc
    cp l
    and d
    db $fc

Call_028_572b:
    ldh [$a6], a
    ld [bc], a
    ld a, a
    ldh [$fe], a
    ldh [rIE], a
    ld a, a
    nop
    ld a, a
    ld a, a
    rst $38
    ld a, [$54ff]
    ld [c], a
    ret nz

    rst $38

jr_028_573e:
    sub $07
    xor [hl]
    ld b, $fc
    cp $00
    add sp, -$09
    push de
    rst $38
    and c
    call c, $fdc0
    rst $38
    ld e, l
    rst $38
    rst $38
    cpl
    nop
    ld a, $01
    ld [hl], l
    ld a, [bc]
    ld l, d
    dec d
    rst $38
    pop af
    ld c, $68
    rla
    ret nc

    cpl
    ld [bc], a
    db $fd
    rst $38
    db $fd
    nop
    xor [hl]
    ld d, c
    ld d, [hl]
    xor c
    ld a, [bc]
    push af
    ld a, e
    ld b, $f9

jr_028_576e:
    db $fc
    pop hl
    ret nc

    cpl
    ldh [$1f], a
    db $fc
    pop hl
    rst $38
    ld d, h
    dec hl
    add sp, $17
    ld [hl], l
    ld a, [bc]
    ld a, d
    dec b
    db $db
    dec d
    ld [$c5ab], a
    add b
    ld a, a
    cp d
    pop bc
    ld a, [hl+]
    push de
    ei
    ld b, c
    cp [hl]
    xor $e7
    ld d, l
    xor d
    cp [hl]
    ld b, b
    ld d, a
    rst $38
    xor b
    dec hl
    call nc, $fa05
    dec hl
    call nc, $bf17
    add sp, -$55
    ld d, h
    ld e, a
    and b
    ccf
    inc [hl]
    ret nz

    sub a
    rst $38
    rst $38
    ld c, d
    rst $38
    and c
    ld a, a
    ld b, d
    ccf
    rla
    xor e
    nop
    adc d
    add h
    ret nz

    db $f4
    ld e, e
    jp nz, Jump_028_565f

    ret nz

    db $f4
    rst $38
    dec bc
    rst $38
    rst $38
    ld d, b
    ld l, $60
    inc e
    jp nc, $28ff

    ld [hl+], a
    ld e, b
    ret nz

    jr c, jr_028_576e

    ld e, b
    pop bc
    rst $38
    add hl, sp
    and d
    ld e, e
    ld d, $e9
    adc a
    pop af
    sub $ff
    jp hl


    adc d
    push af
    add $f9
    adc d
    push af
    ld b, [hl]
    rst $38
    ld sp, hl
    jp z, $c035

    nop
    jp nz, $c000

    rst $38
    nop
    sub d
    ld b, b
    jp nz, $9000

    ld b, b
    ret nz

    rst $38
    nop
    cp a
    ld b, b
    ld a, [bc]
    dec b
    xor [hl]
    ld bc, $ff0a
    and l
    ld l, $81
    ld c, $81
    xor b
    dec b
    ld c, $ff
    ld bc, $05f8
    ld [hl], b
    or b
    ld [hl], l
    or l
    ld [hl], b
    rst $38
    or b
    ld a, a
    cp a
    ld [hl], b
    xor a
    ld [hl], b
    add b
    ld [hl], b
    ld sp, hl
    sub b
    ld a, [c]
    db $ed
    ld [c], a
    db $e4
    xor a
    ld a, a
    sbc a
    rst $38
    ld a, a
    cp $e2
    ret nz

    add b
    ld a, a
    add b
    xor d
    ret nc

    ld c, h
    add b
    rst $38
    ld [c], a
    add h
    dec b
    jp nz, $82ed

    inc b
    jp $efd5


    db $fc
    ldh [$bd], a
    cp d
    and b
    xor e
    ld c, $e0
    add h
    inc bc
    rst $38
    ld d, e
    ld bc, $01aa
    ld [hl], d
    ld bc, $ffab
    rst $30
    dec d
    rst $38
    xor a
    db $fc
    ldh [$82], a
    rst $38
    ld h, b
    sbc a
    ld a, a
    add l
    rst $38
    ld [hl], l
    adc d
    rst $38
    rst $38
    ld a, a
    db $fd
    and d
    db $fd
    xor a
    xor c
    and d
    rla
    jp hl


    ld a, a
    cp a
    ld h, a
    cp a
    rst $38
    ld b, l
    and a
    ld e, d
    and l
    nop
    and l
    ld b, b
    and l
    rst $38
    dec b
    cp a
    add l
    nop
    db $fd
    rst $38
    db $ed
    rst $38
    rst $38
    dec [hl]
    rst $28
    add l
    cpl
    add a
    dec l
    sub l
    cpl
    rst $38
    cpl
    db $fd
    db $eb
    dec d
    ld b, l
    cp a
    ld h, b
    add e
    rst $38
    ld c, h
    and c
    ld c, $a0
    ld c, a
    and b
    ld [bc], a
    cp a
    rst $30
    rla
    add b
    dec bc
    sbc [hl]
    ret nz

    ld a, l
    rst $00
    db $ed
    sub a
    rst $38
    rst $00
    dec a
    xor l
    ld d, a
    rst $38
    db $fd
    and e
    ld e, l
    cp h
    or d
    and e
    ld a, [$00e9]
    rst $38
    ld a, [hl]
    add c
    cp $e0
    add e
    rst $38
    ld a, [hl]
    adc a
    nop
    rst $38
    ld l, a
    sub d
    cpl
    sub $ff
    ld a, a
    adc [hl]
    xor a
    ld e, [hl]
    ld a, [hl]
    adc a
    dec a
    xor $fb
    ld e, a
    cp d
    db $f4
    pop hl
    cpl
    sbc $7f
    adc [hl]
    ld l, a
    ld a, a
    sbc [hl]
    ld l, $dd
    dec c
    ld a, [$b14f]
    ld a, $e0
    ld a, a
    add c
    ld a, a
    add c
    rrca
    ld hl, sp-$71
    ld [hl], b
    db $fc
    ldh [rIE], a
    ld a, b
    sbc a
    ld l, [hl]
    rra
    ldh a, [$bf]
    ld h, b
    ld a, a
    rst $18
    add b
    rst $30
    rrca
    rst $38
    rlca
    db $fc
    pop hl
    rst $38
    cp e
    cp a
    ld b, a
    cp l
    ei
    rlca
    rst $38
    ld bc, $e4e0
    ld [hl], b
    and $fa
    db $e3
    rrca
    ld hl, sp-$1a
    ldh [$fe], a
    ld [$57e8], a
    rst $18
    rst $30
    xor d
    adc a
    ld a, b
    jp c, $0fe5

    ldh a, [$5f]
    and e
    rrca
    rst $30
    dec c
    rst $30
    ld c, $bc
    db $e4
    call nc, $cce1
    add l
    or $e1
    rst $38
    inc b
    rst $38
    ld b, $00
    rst $38
    ld b, b
    cp a
    ccf
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ld a, [$eb14]
    sbc [hl]
    ret nz

    rst $38
    or b
    rst $38
    rst $38
    sbc b
    sbc b
    adc h
    adc h
    add [hl]
    sbc e
    add [hl]
    adc h
    rst $38
    ldh [$86], a
    add [hl]
    sbc h
    adc b
    sub h
    add h
    cp a

jr_028_594b:
    ld a, [c]
    cp $ec
    rst $38
    rra
    add b
    call c, $90eb
    nop
    adc e
    nop
    push af
    rst $08
    ret c

    ldh [$9f], a
    call nc, Call_000_00e2
    cp a
    ldh [$1f], a
    rst $38
    sub b
    cpl
    xor b
    rla
    or h
    dec bc
    cp d
    dec b
    ccf
    cp l
    ld [bc], a
    cp [hl]
    ld bc, $bf40
    cp $eb
    ld_long $ffc0, a
    sub b
    ld [hl], h
    adc e
    jr nc, jr_028_594b

    ld b, b
    cp a
    ld h, b
    db $fd
    sbc a
    db $e4
    pop hl
    ld b, d
    cp l
    and d
    ld e, l
    jp nc, $ff2d

    ld [$f615], a
    add hl, bc
    ld hl, sp+$05
    rst $38
    nop
    rst $38
    db $fc
    ld bc, $807f
    ld b, b
    nop
    ld e, a
    and b
    rst $38
    cpl
    ret nc

    rla
    add sp, $0b
    db $f4
    dec b
    ld a, [$02fb]
    db $fd
    ret nz

    pop hl
    cp a
    nop
    cp d
    dec b
    or l
    rst $30
    ld a, [bc]
    dec b
    nop
    ret nz

    db $e3
    nop
    rst $38
    and d
    ld e, l
    ccf
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    xor l
    ld d, b
    pop af
    ld h, c
    rst $38
    ld h, c
    rst $10
    ld d, l
    nop
    xor d
    and b
    ld h, b
    nop
    ld a, [$00e0]
    nop
    rst $38
    push af
    add b
    rst $38
    pop bc
    ld a, [hl]
    rst $38
    nop
    ld a, [$f5df]
    rst $38
    xor c
    rst $38
    ld b, b
    ldh a, [$80]
    pop hl
    pop bc
    rst $28
    ret nc

    add b
    add sp, -$80
    ld [$c0e0], a
    cp $b8
    cp $f6
    pop hl
    rst $20
    add d
    inc c
    jp $87fa


    ld a, [hl+]
    rst $38
    ret nc

    sub b
    ldh [$9a], a
    ldh [$ca], a
    push af
    ld_long $ffff, a

jr_028_5a00:
    ld [$d601], a
    ld bc, $f906
    cp h
    cp b
    jp z, $c2a4

    ld h, h
    sbc b
    ld h, c
    cp $a5
    ld e, d
    sub b
    ld h, c
    rrca
    rst $30
    ldh a, [rIF]
    ldh a, [$a8]
    pop bc
    adc a
    ld a, l
    sub b
    ld a, a
    adc a
    jr nz, jr_028_5a00

    ld b, b
    cp a
    jp hl


    ld h, a
    ld [hl], e
    ld h, e
    ld l, h
    ld h, [hl]
    cp b
    ccf
    rra
    add sp, $2f
    ret c

    ld c, a
    or b
    ld e, h
    ld h, c
    add [hl]
    ld h, e
    db $fc
    ld [hl], d
    ld h, c
    ld h, [hl]
    ld h, c
    ld a, a
    add l
    ld c, d
    or l
    ld d, a
    xor b
    cp a
    ld c, e
    or h
    ld b, b
    rst $38
    ld a, a
    ld a, [$6352]
    ld a, [hl+]
    rst $18
    push de
    ld a, a
    add b
    nop
    rst $38
    ld a, [$94e0]
    nop
    rst $18
    rst $38
    ret nz

    ccf
    xor b
    ld d, a
    ld l, h
    add e
    jr nz, jr_028_5abd

    rst $38
    ret nz

    ccf
    jr z, jr_028_5aba

    inc b
    ld sp, hl
    ld [$fff5], sp
    ld d, $e9
    dec c
    pop af
    ld d, $e9
    dec hl
    push de
    rst $18
    rlca
    ld sp, hl
    dec bc
    push af
    rst $10
    rst $38
    ld [c], a
    ret nc

    ret nc

    ccf
    sbc a
    sbc a
    ldh [$e0], a
    xor a
    xor a
    sbc d
    and [hl]
    add hl, de
    ld h, c
    jp nz, $42e3

    xor d
    rst $18
    ld b, d
    di
    ld b, c
    db $10
    ld h, c
    ldh a, [$60]
    ld sp, hl
    ld h, d
    db $fd
    db $fd
    db $fc
    db $eb
    ld [c], a
    db $fd
    ld d, [hl]
    ld sp, hl
    and d
    db $fd
    db $eb
    ld b, $f9
    ld a, [hl+]
    ld h, c
    db $fc
    jp z, $ef60

    rst $38
    db $dd
    rst $38
    rst $38
    or [hl]
    rst $38
    add sp, -$01
    ld [hl], d
    db $fd
    rst $10
    rst $38
    ld hl, sp+$62
    db $fd
    rst $38
    nop
    adc h
    nop
    sbc b

jr_028_5aba:
    dec sp
    nop
    adc [hl]

jr_028_5abd:
    ld a, [$8ce0]
    nop
    add [hl]
    and b
    ld b, d
    cp b
    ld b, c
    db $fc
    sbc a
    push hl
    cp $f3
    ld a, [hl+]
    push de
    ld d, $e9
    ld l, $d3
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    inc c
    di
    ld c, $f1
    ei
    inc c
    ei
    db $fc
    pop hl
    ld c, d
    cp l
    ld h, $dd
    inc e
    db $fd
    db $eb
    ld a, [c]
    push hl
    add hl, bc
    cp $43
    cp h
    ld a, a
    add l
    rst $38
    ld bc, $41fe
    cp [hl]
    and $ff
    add sp, -$09
    rst $38
    ld [c], a
    push af
    ld sp, hl
    or $d2
    db $ed
    reti


    ld [c], a
    rst $38
    jp hl


    ld a, [c]
    db $f4
    rst $38
    rst $38
    inc bc
    rst $18
    push hl
    ld a, a
    inc e
    ld sp, hl
    ld c, c
    cp c
    and c
    ld e, c
    reti


    ld [de], a
    ld h, b
    rst $38
    pop hl
    add hl, de
    jp hl


    or $e2
    push af
    xor c
    or $ff
    add sp, -$07
    or [hl]
    ld hl, sp-$24
    cp a
    scf
    adc a
    ei
    sbc a
    rst $38
    db $fc
    ld b, c
    ld d, c
    xor c
    ld hl, $01d9
    rst $38
    add hl, sp
    call z, $9709
    push hl
    rst $30
    ei
    db $fd
    cp [hl]
    cp $20
    db $fd
    rst $38
    db $fd
    cp $ff
    ld c, [hl]
    ld b, b
    cp l
    cp $20
    ld h, b
    jp $ffff


    push af
    ld e, l
    ld sp, hl
    xor c
    rst $28
    ld sp, hl
    sbc c
    ld sp, hl
    call $e0fc
    ld e, l
    ld sp, hl
    xor a
    rst $38
    db $fd
    db $fd
    rst $38
    sub [hl]
    rst $38
    adc $bf
    ld h, e
    rst $38
    sbc a
    add hl, sp
    add a
    sub a
    ld bc, $bf43
    adc l
    rst $38
    ld sp, hl

jr_028_5b6b:
    reti


    ld sp, hl
    db $ed
    ld sp, hl
    cp c
    ld a, c
    ld e, c
    cp a
    cp c
    call c, Call_028_6fe9
    push af
    ei
    ld d, $82
    sub a
    xor $ba
    jr nz, jr_028_5b6b

    sbc a
    push bc
    call c, Call_000_33e0
    adc a
    rst $38
    rst $38
    rst $38
    rst $10
    db $fd
    db $dd
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $dd
    cp $d8
    ldh [$dd], a
    ld sp, hl
    db $fd
    ld sp, hl
    add hl, de
    add a
    adc a
    rst $38
    rst $38
    rlca
    add c
    cpl
    add c
    sub l
    ld bc, $bfbf
    ld bc, $0194
    ld b, c
    cp a
    ld c, l
    jp nz, Jump_028_61e0

    ei
    ld sp, hl
    dec [hl]
    cp [hl]
    ldh [$9c], a
    ld a, c
    rst $08
    dec a
    ld a, a
    cp $c4
    ldh [$cb], a
    cp a
    jp hl


    sub a
    cp a
    rst $38
    dec de
    ld a, a
    add l
    ld sp, $9b8f
    dec b
    cp l
    inc bc
    ret nz

    ld h, b
    ei
    db $fd
    dec a
    ret z

    ldh [$39], a
    db $fd
    db $dd
    ld a, c
    add hl, sp
    rst $30
    db $fd
    cp c
    ld a, l
    adc h
    pop hl
    dec b
    add c
    ld l, $81
    rst $10
    sub h
    ld bc, $c0be
    ld [c], a
    reti


    db $e3
    ldh [$cd], a
    add hl, sp
    rst $38
    add hl, sp
    ld e, l
    call $6c39
    add hl, de
    ccf
    dec c
    inc bc
    add a
    ld a, a
    ldh a, [$0d]
    nop
    nop
    nop
    dec l
    cpl
    rst $38
    rst $20
    ld e, d
    ld d, a
    rst $38
    ld hl, sp+$5a
    rst $10
    add sp, -$0b
    db $f4
    cp a
    ld e, b
    rlca
    rlca
    ld a, [hl-]
    ld a, [hl-]
    rlca
    rst $38
    ldh a, [$3a]
    rst $08
    ld a, [hl-]
    ld e, l
    ld e, l
    ld e, b
    ret nz

    rst $30
    adc b
    push hl
    ld e, c
    ld b, $ef
    ld b, $24
    inc h
    ld b, $ff
    ldh [$3a], a
    ld a, [hl-]
    ld d, b
    or $ff
    db $e4
    ld a, [hl-]
    ld a, [hl-]
    ldh a, [$e1]
    inc h
    inc h
    dec c
    dec c
    db $fd
    ld e, c
    db $76
    rst $30
    ld e, b
    rlca
    jr nc, jr_028_5c8b

    ld d, c
    jr nc, @+$01

    rlca
    rlca
    jr nc, jr_028_5c46

    dec b
    ld h, $26

jr_028_5c44:
    dec b
    rst $38

jr_028_5c46:
    dec b
    scf
    jr c, jr_028_5c6e

    inc h
    ld [$5230], sp
    rst $38
    ld d, c
    ld d, c
    ld d, d
    jr nc, jr_028_5c5c

    inc h
    inc h
    scf
    ld c, l
    jr c, jr_028_5c44

    pop hl
    ld e, h

jr_028_5c5c:
    ld e, h
    ldh [$e1], a
    db $ec
    pop hl
    ld e, [hl]
    db $76
    rst $28
    rst $38
    ld e, b
    ld b, $31
    ld [de], a
    inc de
    ld sp, $0606
    rst $38

jr_028_5c6e:
    ld sp, $0101
    dec bc
    dec bc
    ld bc, $3502
    rst $18
    ld [hl], $25
    dec h
    ld b, $31
    add sp, -$3f
    ld sp, $6f06
    dec h
    dec h
    dec [hl]
    ld [hl], $ea
    pop hl
    inc bc
    ld [bc], a
    ldh [$e1], a

jr_028_5c8b:
    cp a
    inc de
    ld [de], a
    ld [de], a
    inc de
    ld e, a
    dec c
    ret nz

    rst $28
    dec b
    rst $38
    ld [hl-], a
    ld [de], a
    inc de
    ld [hl-], a
    dec b
    dec b
    ld [hl-], a
    ld bc, $ff58
    pop hl
    ret nz

    ldh [$7a], a
    ldh [$32], a
    ld a, [bc]
    rst $38
    ldh [$32], a
    ld [hl], b
    ldh [$64], a
    ret nz

    pop hl
    add sp, -$20
    inc bc
    ldh [$e1], a
    ret nz

    pop hl
    ld h, b
    ld e, h
    add b
    rst $28
    sbc a
    ld bc, $5655
    ld d, [hl]
    ld d, l
    jp $c0e2


    db $e3
    ld a, [bc]
    add c
    ld a, [bc]
    db $76
    pop hl
    ld [hl], h
    ldh [rSVBK], a
    ldh [$c0], a
    db $e4
    and l
    ld [c], a
    reti


    pop hl
    ld [bc], a
    add c
    ld [bc], a
    ret nz

    rst $38
    add $e1
    or c
    push hl
    ret nz

jr_028_5cdd:
    rst $38
    add b
    rst $00
    ret nc

    ld [c], a
    add hl, sp
    ei
    ld c, h
    inc [hl]
    adc [hl]
    rst $20
    ld [bc], a
    ld [bc], a
    ld c, l
    ld c, [hl]
    ld c, a
    add $fe
    ret nz

    ld [bc], a
    ld [bc], a
    add b
    ret c

    jr c, jr_028_5cdd

    ld [bc], a
    ld [c], a
    ld [$d730], sp
    ld bc, $0402
    or $c2
    inc b
    ret nz

    ldh [$5e], a
    inc c
    sbc b
    cp [hl]
    pop bc
    ld c, d
    ldh a, [$c0]
    pop af
    ccf
    ccf
    add d
    ret nz

    ld a, b
    ret nz

    ld [bc], a
    ei

jr_028_5d14:
    inc d
    dec d
    or [hl]
    pop bc
    inc d
    dec d
    inc bc
    ld [bc], a
    ld e, a
    call Call_028_7e0d
    ret nz

    ccf
    ld b, d
    ret nz

    rst $38
    cp b
    pop bc
    dec a
    dec a
    sbc h
    ld b, d
    ret nz

    ld a, b
    ret nz

    inc bc
    ld d, $17
    adc h
    pop bc
    ld a, [$03e0]

jr_028_5d36:
    dec de
    ld h, b
    ld e, h
    ld a, $c0
    dec a
    ld b, c
    ret nz

    rst $38
    ret nz

    and $90
    rst $00
    ret nz

    cp $c3
    ret nz

    rst $38
    ret nz

jr_028_5d49:
    db $ec
    ld [bc], a
    db $e3
    ret nz

    rst $38
    adc d
    adc l
    ld e, c
    rrca
    rst $38
    ld b, l
    ld b, l
    db $10
    inc sp
    inc [hl]
    ld bc, $2702
    db $ed
    jr z, jr_028_5d14

    and c
    ccf
    ld a, $ff
    ldh [$3f], a
    ld [bc], a
    ld [bc], a
    ccf
    inc sp
    inc [hl]
    rrca
    ld b, l
    ld b, [hl]
    stop
    and l
    ld [bc], a
    or b
    or d
    adc l
    add l
    jr nc, jr_028_5d36

    pop hl
    add d
    pop bc
    ld c, d
    ld c, e
    db $76
    and c
    dec a
    rst $38
    ld b, d
    ld b, h
    ld a, $3f
    dec a
    ld [bc], a
    ld [bc], a
    jr nc, jr_028_5d49

    ld [$e1c0], sp
    ldh [$80], a
    ld h, l
    add d
    ld [bc], a
    xor a
    sub h
    add l
    ld d, b
    ld sp, $80f8
    pop hl
    add d
    pop bc
    add b
    db $e3
    dec a
    ld b, c
    ld c, c
    add hl, bc
    dec a
    ret


    dec a
    ld b, $a1
    add b
    pop hl
    ld sp, $846d
    jp nz, $088f

    ld [$5193], sp
    ld d, c
    db $fc
    ld [c], a
    ret nz

    pop hl
    ld de, $c182
    add b
    db $e4
    ld b, b
    rst $08
    ld c, b
    ld c, $3d
    dec a
    ld b, $a1
    ret nz

    ld [c], a
    ld [$7608], sp
    ld e, d
    add b
    ld e, [hl]
    inc c
    add d
    sub b
    ld b, $12
    inc de
    db $fc
    ld [c], a
    xor c
    ld sp, $c040
    add e
    ret z

    dec a
    rst $38
    ret nz

    ccf
    rst $28
    db $e3
    dec a
    cp c
    ld b, e
    add b
    add d
    add d
    sub h
    dec b
    ld [de], a
    inc de
    db $fc
    ld [c], a
    ld [hl-], a
    sub b
    ret nz

    and b
    ld b, e
    ret z

    ret nz

    jp $e3f5


    ccf
    add b
    add d
    add d
    sub h
    ld bc, $3b3f
    dec sp
    ld bc, $5b01
    ld e, e
    ld [$f2cb], sp
    ldh a, [rP1]
    ld l, a
    ret nz

    ld a, b
    or b
    ld a, [bc]
    and c
    rst $38
    rst $38
    ret nz

    rst $30
    adc d
    ld d, c
    db $76
    add d
    or d
    ld h, c
    nop
    ld a, [bc]
    ld h, a
    ld a, b
    ld e, a
    ld l, h
    pop af
    ld c, d
    cp a
    ld [hl], b
    ld d, d
    add b
    db $ec
    adc h
    rst $38
    ld [hl], b
    ld c, l
    nop
    jp nz, $8a65

    and e
    ld a, d
    rst $38
    ld l, [hl]
    xor h

jr_028_5e30:
    db $76
    ld b, b
    add d
    ld h, e
    adc d
    and e

jr_028_5e36:
    ret nz

    rst $38
    ld a, h
    ld l, [hl]
    xor h
    ret nz

    rst $20
    ld [$0c08], sp
    add hl, hl
    ld a, [hl+]
    ret nz

    rst $38
    jr c, jr_028_5e36

    dec l
    ld [hl], e
    ld b, e
    ld a, [bc]
    ld b, d
    dec c
    dec hl
    inc l
    ret nz

    rst $38
    ldh a, [$2d]
    sbc [hl]
    inc [hl]
    ld b, l
    jr jr_028_5e70

    dec b
    ld e, h
    ret nz

    rst $38
    xor [hl]
    or [hl]
    ld [bc], a
    ccf
    ld [hl+], a
    inc hl
    ld bc, $2d03
    ld l, $c0
    rst $38
    ld a, b
    ld c, [hl]
    add $c3
    ld h, h
    ld d, e
    ld d, h
    add h
    ld e, a

jr_028_5e70:
    jr c, jr_028_5ec4

    add e
    add e
    ld [bc], a
    jr nz, jr_028_5e30

    ld hl, $ffc0
    ret nz

    di
    dec a
    inc a
    inc a
    ld [hl], d
    ld b, b
    ld d, e
    rst $20
    ld d, h
    ld [bc], a
    inc b
    ret nz

    rst $38
    ret nz

    rst $30
    ld a, [de]
    dec de
    inc e
    ld sp, hl
    dec e
    ret nz

    rst $38
    add b
    or $03
    ld e, $1f
    rra
    ld e, $0c
    ret nz

    rst $38
    xor [hl]
    ld c, l
    ld [bc], a
    ld c, c
    ld b, b
    db $e4
    db $fc
    inc b
    ret nz

    rst $38
    ld l, [hl]
    ld c, e
    ld h, e
    inc bc
    ld c, b
    ld b, e
    ld l, c
    ret nz

    rst $38
    ld [hl], b
    db $10
    ld e, c
    ld b, a
    rst $38
    ldh [$8c], a
    inc c
    ld d, [hl]
    rst $38
    rst $38
    ld e, b
    dec bc
    rst $38
    ldh [$88], a
    rst $38
    db $fc
    sub a
    ld a, [bc]
    nop
    rst $38

jr_028_5ec4:
    ldh [$c0], a
    rst $38
    cp h
    sub a
    ei
    and $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    ld hl, sp+$12
    rst $38
    inc de
    ld h, c
    ld h, d
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld l, l
    ld sp, hl
    ld l, [hl]
    call nc, $c0ff
    di
    ld h, e
    ld h, h
    ld h, a
    ld l, b
    ld l, e
    rst $20
    ld l, h
    ld l, a
    ld [hl], b
    call nc, $f2ff
    pop af
    inc de
    ld [de], a
    ld [de], a
    rst $38
    inc de
    ld h, d
    ld h, c
    ld h, c
    ld h, d
    ld h, [hl]
    ld h, l
    ld h, l
    ld a, a
    ld h, [hl]
    ld l, d
    ld l, c
    ld l, c
    ld l, d
    ld l, [hl]
    ld l, l
    db $76
    jp hl


    rst $38
    ld h, c
    ld h, d
    cpl
    ld h, l
    ld h, [hl]
    cpl
    ld l, c
    ld l, d
    xor c
    cpl
    ld h, c
    db $e3
    rst $10
    pop hl
    cpl
    sub $e1
    cpl
    push de
    pop hl
    cpl
    db $fc
    call nc, $c0e1
    pop hl
    ld h, h
    ld h, e
    ld h, e
    ld h, h
    ld l, b
    ld h, a
    rst $38
    ld h, a
    ld l, b
    ld l, h
    ld l, e
    ld l, e
    ld l, h
    ld [hl], b
    ld l, a
    cp $76
    jp hl


    ld h, e
    ld h, h
    cpl
    ld h, a
    ld l, b
    cpl
    ld l, e
    ld d, e
    ld l, h
    cpl
    ld h, c
    db $e3
    rst $10
    pop hl
    cpl
    sub $e1
    cpl
    push de
    pop hl
    ld bc, $d42f
    pop hl
    nop
    nop
    nop
    ret


    inc c
    rst $38
    rst $38
    db $e3
    ld [c], a
    inc l
    rst $38
    db $f4
    add $e9
    dec c
    dec c
    jp $2d0d


    db $fc
    ldh [$fd], a
    rst $28
    ld [$c0e0], a
    ei
    adc h
    adc h
    ld b, h
    ret nz

    ld [$e0ba], a
    adc l
    rst $38
    ldh [$f0], a
    jp hl


    add b
    pop hl
    xor h
    rst $38
    ldh [$96], a
    add b
    rst $28
    adc h
    adc h
    jp nc, $ade0

    add a
    db $e4
    ret nz

    db $e4
    dec l

jr_028_5fc6:
    ld b, $c0
    ldh [$ad], a
    xor l
    ld sp, hl
    ldh [$b0], a
    and $68
    pop hl
    db $ec
    ld [c], a
    db $76
    db $ec
    ld d, $c0
    db $e3
    inc c
    inc c
    ld b, a
    pop hl
    ld a, [bc]
    rst $38
    ld [c], a
    ld a, [hl-]
    rst $20
    inc sp
    ldh [$c0], a
    jr nc, jr_028_5fc6

    ld [$3ce6], a
    ldh [$d8], a
    pop hl
    ld a, h
    db $eb
    add b
    db $e3
    ld c, h
    ld c, h
    sbc b
    ret nz

    db $ed
    or h
    pop hl
    ret nz

    db $ed
    ld l, h
    ld l, h
    ret c

    pop hl
    ret nz

    rst $28
    ld a, [bc]
    rrca
    ld c, e
    ld c, e
    ld l, e

Call_028_6004:
    ld l, e
    add e
    db $e3
    add b
    ld [c], a
    push af
    and $f2
    db $ec
    inc a
    reti


    db $e3
    ret nz

    ldh a, [$0b]
    dec bc
    dec hl
    dec hl
    ret nz

    rst $38
    reti


jr_028_6019:
    db $e4
    ld d, $40
    xor $cc
    db $ec
    rst $38
    db $e3
    call z, $e518
    add b
    db $eb
    add sp, -$3d
    nop
    call c, $d5e4
    pop hl
    nop
    xor $fe
    push hl
    ret nz

    pop af
    xor b
    push bc
    ld b, h
    pop bc
    db $fc
    push hl
    sub $c0
    or $0b
    dec hl
    add d
    ret nz

    dec l
    ld a, b
    ret nz

    ld c, $0e
    add b
    ld [hl], h
    pop bc
    ld a, [$68e1]
    jp nz, $e0e8

    ret nz

    rst $30
    ld b, h
    and l
    ret nz

    ld hl, sp+$4b
    nop
    ret nz

    pop hl
    ld b, b
    cp l
    add b
    push hl
    add d
    ret


    ld [hl], b
    call nz, $ffc0
    ret nz

    rst $38
    ret nz

    rst $38
    ld l, a
    adc h
    dec c
    dec bc
    dec hl
    ld a, d
    and d
    inc c
    inc c
    ld d, d
    jp $fe18


    ldh [$29], a
    ret nz

    xor d
    add b
    dec bc
    dec bc
    adc d
    xor h
    add b
    adc c
    adc [hl]
    adc b
    ld [bc], a
    ret nz

    ld [$c14b], a
    pop hl
    ret nz

    and $68
    add l
    jr c, jr_028_6019

    jp nz, $9682

    add b
    or b
    sub d
    add d
    add b
    ldh [$82], a
    pop bc
    ret nz

    push hl
    ld c, $0c
    ret nz

    ld [c], a
    dec l
    nop
    ret nz

    push hl
    ld l, [hl]
    add c
    ld a, [hl]
    adc l
    add d
    add e
    db $fc
    db $e3
    ret nz

    cp $5a
    add b
    ret nz

    pop af
    ret nz

    add $61
    jp nz, Jump_000_0061

jr_028_60b5:
    pop bc
    ld [de], a
    xor c
    jp hl


    add b
    add hl, hl
    and e
    dec bc
    dec bc
    ret c

    add b
    add d
    add d
    adc a
    ld b, b
    db $e3
    ld c, h
    ld c, h
    db $fc
    db $e3
    ld a, [bc]
    ld c, e
    nop
    cp d
    add a
    ret nz

    db $e3
    rst $28
    db $e4
    add sp, -$20
    ld l, b
    ld h, c
    add d
    adc a
    nop
    pop hl
    pop hl
    ld [c], a
    ld b, b
    push bc
    db $eb
    push af
    di
    ld [hl], c
    jp nz, $f1c0

    rst $38
    rst $38
    cpl
    push hl
    ld l, e
    ret nz

    rst $28
    ld bc, $ffcc
    pop af
    inc sp
    add l
    adc d
    adc b
    add d
    sub d
    ld b, b
    pop bc
    cp $f1
    di
    ld h, l
    jr nz, @-$74

    adc c
    add d
    sub c
    ret nz

    rst $38

jr_028_6103:
    ld c, b
    add d
    ld a, c
    ld_long $ff6c, a
    push hl
    nop

jr_028_610b:
    ld c, [hl]
    nop
    jr c, jr_028_60b5

    ld a, $66
    ld a, [c]
    inc hl
    inc b
    or h
    or a
    ld [c], a
    ret nz

    rst $38
    ret nz

    or $80
    rst $38
    nop
    jp z, $c0a4

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    pop af
    ld h, $a3
    ret nz

    rst $38
    nop
    db $eb
    nop
    nop
    ld b, a
    or $61
    ret nz

    rst $38
    ret nz

    ldh a, [$c3]
    ld h, h
    or [hl]
    ld h, e
    ret nz

    rst $38
    ret nz

    ld a, [c]
    jr @-$52

    jr nz, jr_028_6103

    rst $38
    ld b, b
    db $f4
    ld c, e
    ld c, e
    ld l, l
    jr nz, jr_028_610b

    rst $38
    ret nz

    rst $38
    ldh a, [$fe]
    pop bc
    ret nz

    rst $38
    add b
    ld a, [c]
    xor h
    nop
    inc c
    inc c
    inc l
    inc l
    inc b
    ret nz

    rst $38
    add b
    adc $0e
    inc d
    add d
    xor h
    ld b, $c0
    rst $38
    ret nz

    rst $28
    ld b, e
    ld h, a
    inc b
    ret nz

    rst $38
    ld a, h
    xor e
    xor h
    xor $62
    ld [bc], a
    ld b, c
    inc c
    sub l
    ret nz

    db $fc
    ld l, a
    ld bc, $cc0b
    ld l, d
    rst $38
    ldh [$ec], a
    inc c
    sub h
    ld b, b
    cp e
    db $ed
    add c
    ret nz

    push hl
    inc b
    ret z

    rst $30
    ret nz

    db $fd
    ld c, l
    rst $38
    ldh [$c0], a
    rst $38
    add b
    ld a, [c]
    push de
    ldh [rOBP0], a
    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $30
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
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    ld c, c
    call c, $c0ff
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
    ret nz

    rst $38
    jr @+$01

    rst $38

Jump_028_61e0:
    nop
    rst $18
    rst $38
    rst $38
    ld c, h
    ld c, h
    ret nz

    rst $38
    ld a, $ff
    db $fc
    db $ed
    ld a, b
    and d
    inc [hl]
    ld de, $fbe4
    jp hl


    ld l, h
    ld l, h
    ld c, h
    ld c, h
    ret nz

    rst $38
    nop
    ret nz

    rst $30
    nop
    nop
    nop
    dec b
    nop
    rst $38
    rst $20
    rrca
    rst $38
    ldh [$f1], a
    add sp, -$16
    add sp, -$04
    db $e4
    di
    ld [$d500], a
    push hl
    call z, $c9e0
    ld [c], a
    ldh [$e5], a
    db $ed
    db $e3
    db $ec
    db $e3
    xor d
    ld [c], a
    ld hl, sp-$15
    nop
    sbc [hl]
    and $e8
    db $ed
    ld hl, sp-$14
    ret z

    rst $20
    add [hl]
    push hl
    or [hl]
    pop hl
    sub h
    db $e3
    add b
    ld [$9c38], a
    db $e4
    xor b
    jp hl


    ld a, [hl-]
    xor $0f
    dec bc
    dec bc
    pop bc
    ld [c], a

jr_028_623c:
    db $f4
    and $00
    ld hl, $e0ed
    push hl
    dec e
    pop hl
    call nc, $f7e0
    ret z

    adc b
    ld [c], a
    jp hl


    call z, $e50d
    nop
    jr nc, jr_028_623c

    ret


    call $ffe0
    and c
    rst $08
    sub d
    ret


    ld a, b
    rst $08
    or c
    ld sp, hl
    ldh [$e6], a
    nop
    inc a
    jp nc, $c778

    ld [c], a
    pop de
    ldh [rIE], a
    ldh [$e8], a
    di
    adc $60
    db $eb
    ld c, $f7
    nop
    rlca
    adc $98
    xor a
    inc de
    add $ad
    sub $01
    rst $30
    inc b
    ld_long a, $ffff
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, c
    nop
    rst $38
    rst $38
    rst $20
    and $21
    ld hl, $f2dc
    ld sp, $efc6
    inc hl
    ld h, c
    ld h, c
    or d
    rst $38

jr_028_62a6:
    rst $38
    rst $38
    db $ed

jr_028_62a9:
    db $ec
    jr jr_028_62a9

    ld [c], a
    rst $38
    rst $38
    cp b
    rst $38
    rst $38
    sbc l
    ld sp, hl
    db $db
    xor $41
    nop
    ld d, c
    rst $00
    xor $71
    and b
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$ef]
    jr z, jr_028_62a6

    push af
    db $10
    jr nz, @-$3a

    rst $38
    rst $38
    rst $38
    call nz, $d7df
    or $80
    db $e4
    db $10
    ld a, b
    rst $38
    or $f5
    inc bc
    ld de, $dc11
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    ld [de], a
    nop
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ret c

    ld d, [hl]
    inc sp
    ld b, d
    xor a
    ld sp, $7fff
    rst $38
    ld d, a
    sbc h
    ld l, $b3
    ld hl, $1d0a
    rst $38
    ld a, a
    ld d, c
    ld d, d
    adc e
    add hl, sp
    and h
    inc e
    rst $38
    ld a, a
    cp a
    ld a, $d9
    dec h
    ld [hl], d
    ld hl, $301f

jr_028_63b7:
    rra
    jr nc, @+$21

    jr nc, jr_028_63db

    jr nc, jr_028_63c6

    dec h
    ld [$0825], sp
    dec h
    ld [$fd25], sp

jr_028_63c6:
    nop
    rst $38
    db $ec
    add c
    add b
    dec bc
    nop
    dec d
    nop
    rst $18
    cpl
    nop
    ld d, l
    nop
    ccf
    db $fc
    ldh [$fe], a
    ld bc, $7eff

jr_028_63db:
    ld bc, $0bf4
    ld [$d015], a
    cpl
    rst $38
    xor d
    ld d, l
    ret nz

    ccf
    xor d
    ld d, l
    nop
    rst $38
    rst $38
    cp $01
    ld [hl], h
    dec bc
    ld a, [hl+]
    dec d
    jr nc, jr_028_6403

    rst $38
    ld e, d
    dec b
    inc a
    inc bc
    ld d, [hl]
    ld bc, $01fe
    rst $38
    add c
    nop
    rlc b
    push af

jr_028_6403:
    nop
    rst $18
    jr nz, @+$01

    xor l
    ld d, b
    rst $00
    jr c, jr_028_63b7

    ld d, h
    nop
    rst $38
    cp [hl]
    ret nc

    db $e3
    di
    inc c
    ld l, b
    dec d
    rst $38
    ret nz

    ld [c], a
    cp $ff
    cp $f4
    db $f4
    ld [$d0ea], a
    ret nc

    xor d
    rst $38
    xor d
    ret nz

    ret nz

    xor d
    xor d
    ld bc, $ff00
    rst $38
    rst $38
    ld [$7dff], a
    rst $38
    rst $38
    rst $38
    ld a, a
    db $eb
    rst $38
    xor a
    db $fc
    ldh [$2f], a
    ldh a, [$e0]
    add e
    db $fd
    ld d, c
    rst $28
    rst $38
    xor c
    rst $38
    push af
    db $fc
    ld [c], a
    ld d, [hl]
    xor c
    ld a, d
    rst $38
    dec b
    ld a, [bc]
    nop
    and b
    ld e, a
    dec b
    nop
    ld a, $fe
    add [hl]
    ldh [$7e], a
    ld bc, $017f
    dec bc
    push af
    cp $ef
    ld bc, $ff2f
    rla
    or $e0
    ld a, a
    ld bc, $ffff
    ld bc, $057b
    adc [hl]
    ld b, c
    ld c, a
    ld b, c
    rst $08
    cp $fe
    ld [c], a
    xor a
    ld [hl], c
    ei
    dec b
    rst $30
    add hl, bc
    rst $38
    db $fd
    ld bc, $e1fa
    cp e
    ld b, l
    rst $30
    add hl, bc
    xor e
    ld d, l
    rst $38
    db $d3
    dec l
    xor e
    ld d, l
    db $eb
    dec d
    ld d, [hl]
    add hl, hl
    rst $38
    ld a, [hl]
    ld bc, $7f97
    ld a, l
    ld [bc], a
    ld_long $ff15, a
    call nc, Call_028_572b
    rst $38
    db $d3
    dec l
    add e
    ld a, l
    rst $38
    cp $01
    rst $38
    rst $38
    ld d, d
    xor l
    add c
    ld a, a
    ld a, a
    inc bc
    db $fd
    rst $38
    rst $38
    nop
    nop
    ld e, l
    dec c
    ldh [$7b], a
    ret nc

    cpl
    ld hl, sp-$1d
    dec hl
    rst $38
    and d
    nop
    db $ed
    ldh [$bf], a
    nop
    dec b
    rst $38
    and b
    nop
    rst $10
    push af
    ret nz

    rst $38
    rst $38
    rst $38
    cp a
    nop
    and d
    ld e, l
    and d
    nop
    rst $18
    cp a
    rst $38
    xor a
    nop
    add sp, $17
    ld [$e052], sp
    ld [hl], h
    ei
    adc e
    dec b
    set 4, b

jr_028_64df:
    rst $38
    rst $38
    ld e, l
    and d
    and b
    db $eb

jr_028_64e5:
    ld e, a
    cp a
    ld b, d
    ldh [$0a], a
    ld b, [hl]
    ldh [rSCY], a
    cp a
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    rst $38
    ld e, a
    rst $38
    ld d, b
    xor a
    scf
    ldh [$32], a
    inc [hl]
    ldh [$2f], a
    jr nc, jr_028_64df

    db $ed
    ldh [rIE], a
    adc e
    jr z, jr_028_64e5

    ld b, b
    pop hl
    sub a
    rst $38
    rst $38
    cp $1e
    ldh [$be], a
    db $fc
    ld [c], a
    ld b, b
    pop hl
    ld a, l
    rst $38
    rst $38
    cp $7d
    cp a
    ld a, c
    ld a, b
    cp e
    ld e, c
    rst $38
    or e
    inc [hl]
    db $d3
    rst $18
    rst $38
    cp a
    cp $df
    rst $38
    cp $af
    cp $9f
    cp $ae
    rst $38
    sub a
    cp $d8
    ldh [$35], a
    jp $e30d


    adc l
    db $e3
    sbc l
    cp $fe
    ld [c], a
    cp l
    db $e3
    dec e
    db $e3
    cpl
    rst $38
    sub [hl]
    rst $38
    ld a, a
    srl a
    ld e, a
    rst $38
    ld a, l
    inc bc
    add sp, -$0b
    rla
    ld b, b
    pop hl
    dec a
    db $ec
    ldh [$3f], a
    db $e3
    dec sp
    rst $20
    ld a, a
    cp l
    rst $20
    or l
    rst $28
    ei
    db $ed

jr_028_655d:
    rst $28
    add $c0
    ret nz

    ret nz

    ret


    ld h, [hl]
    pop hl
    ret nz

    swap b
    call $ffff
    cp $ab
    ld a, [hl]
    ld bc, $f6ff
    add hl, bc
    ld l, d
    dec d
    or [hl]
    add hl, bc
    ld a, h
    ld bc, $2a17
    ld bc, $2054
    ret nz

    cp $ff
    ld [c], a
    ld l, $e0
    dec l
    pop hl
    cp $c2
    ret nz

    add c
    add b
    add hl, bc
    nop
    sub l
    add b
    ld c, c
    ccf
    ld b, b
    add e
    add d
    push de
    call nc, Call_000_30ab
    ret nz

    jr nz, jr_028_655d

    rst $38
    ldh a, [$f0]
    ld [$d4ea], a
    call nc, $fafa
    ld [hl], a
    nop
    nop
    xor d
    inc h
    ret nz

    ld d, l
    rst $38
    xor d
    call Call_028_7bc0
    xor d
    ld d, l
    ret z

    pop bc
    sub $f9
    ld h, d
    db $fd
    db $fc
    db $eb
    rst $38
    ld [c], a
    db $fd
    ld d, [hl]
    ld sp, hl
    and d
    db $fd
    ld b, $f9
    rst $38
    xor d
    ld d, l
    cp $01
    db $fc
    rst $38
    ld_long a, $ffff
    rst $28
    rst $38
    db $dd
    rst $38
    or [hl]
    rst $38
    add sp, -$01
    rra
    ld [hl], d
    db $fd
    rst $10
    ld hl, sp+$62
    ld e, [hl]
    ret nz

    cp $eb
    nop
    nop
    nop
    scf
    add hl, hl
    jr z, @+$27

    rst $38
    db $e4
    jr z, jr_028_6612

    rst $38
    ldh [$f2], a
    db $eb
    ld e, h
    xor $ef
    ldh [$ef], a
    ld h, $07
    ld [$e3fe], sp
    ld h, $f2
    rst $28
    inc a

jr_028_65fb:
    ldh [rIE], a
    ldh [$e0], a
    dec d
    ld d, $09
    ld a, [bc]
    cp $e1
    ret nz

    db $e3
    jr jr_028_65fb

    ld [$e2c0], a
    ld [c], a
    db $e3
    dec d
    ld d, $a0
    db $e3

jr_028_6612:
    db $f4
    db $e3
    ldh [$e9], a
    rrca
    rla
    jr jr_028_6625

    inc c
    cp $e1
    add b
    db $e3
    ld a, [c]
    ld [$e280], a
    add $e2

jr_028_6625:
    db $e3
    rla
    jr jr_028_6689

    db $e3
    db $f4
    db $e3
    ldh [$e9], a
    add hl, de
    ld a, [de]
    add e
    dec c
    ld c, $fe
    pop hl
    ld b, b
    db $e3
    ld a, [c]
    ld [$e240], a
    ld [c], a
    db $e3
    add hl, de
    pop af
    ld a, [de]
    jr nz, jr_028_6625

    db $f4
    db $e3
    ldh [$e9], a
    rrca
    db $10
    ld de, $8f11
    ld de, $1312
    inc d
    nop
    db $e3
    ld a, [c]

jr_028_6652:
    ld [$e6e0], a
    ld [de], a
    ld l, b
    ldh [$ea], a
    ld a, [c]
    and $e0
    jp nz, $ff01

    ld [c], a
    ld [bc], a

jr_028_6661:
    ld [bc], a
    ret nz

jr_028_6663:
    jp $f278


    ld_long $ffe0, a
    and b
    ret nz

    ld [bc], a
    ld [bc], a

jr_028_666d:
    ld [bc], a
    inc b
    ret nz

jr_028_6670:
    add sp, $30
    pop af
    ldh [$fd], a
    pop hl
    ldh [rIE], a
    ld h, b
    push bc
    dec de

jr_028_667b:
    inc e
    cp $e1
    ret nz

    rst $20
    nop
    ldh a, [$e3]
    ldh [rIE], a
    jr nz, jr_028_6652

    add b
    rst $20

jr_028_6689:
    nop
    db $d3
    ldh [$f7], a
    jr nc, jr_028_6652

    ld b, b
    rst $20
    nop
    jr nz, jr_028_6661

    ldh [$ed], a
    ret nc

    and e
    jr nz, jr_028_6663

    cp $a1
    nop
    rst $20
    jr nz, jr_028_666d

    ldh [$ed], a
    db $10
    ret nc

    and e
    jr nz, jr_028_6670

    cp $a1
    add b
    add $03
    jr nz, jr_028_667b

    ldh [$ed], a
    ret nc

    and e
    ret nz

    jr nz, @-$31

    ld b, b
    rst $00
    nop
    db $d3
    jr nz, @-$37

    ret nc

    and b
    nop
    ret nc

    ld hl, $d821
    nop
    db $db
    ldh [$f7], a
    nop
    jp Jump_000_2323


    add b
    add e
    inc hl
    inc hl
    cp b
    nop
    db $d3
    ldh [$f6], a
    nop
    add e
    daa
    inc h
    inc h
    ld b, b
    add e
    inc h
    ld h, e
    inc h
    daa
    nop
    sub c
    ldh [$f7], a
    ld a, [de]
    add h
    ld [hl+], a
    ld [hl+], a
    nop
    add e
    nop
    ld hl, sp-$1c
    db $fc
    db $ed
    ldh [$fd], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    rst $38
    db $fd
    db $fc
    dec d
    ld d, $fe
    db $e3
    ld a, [c]
    pop af
    rst $38
    rst $38
    add hl, hl
    rst $00
    add hl, hl
    rla

jr_028_671b:
    jr jr_028_671b

    db $e3
    ld a, [c]
    pop af
    rst $38
    rst $38
    add hl, hl
    add hl, hl
    ld h, e
    add hl, de
    ld a, [de]
    cp $e3
    ld a, [c]
    pop af
    rst $38
    rst $38
    add hl, hl
    add hl, hl
    nop
    ld b, l
    ld l, h
    ld a, [c]
    pop af
    rst $38
    rst $38
    add hl, hl
    add hl, hl
    ld [bc], a
    inc hl
    add hl, bc
    ld a, [bc]
    ld a, [c]
    pop af
    ld [hl], $ff
    rst $38
    add hl, hl
    add hl, hl
    ld [bc], a
    inc hl
    dec bc
    inc c
    ld a, [c]
    pop af
    rst $38
    rst $38
    dec de
    add hl, hl
    add hl, hl
    ld [bc], a
    inc hl
    dec c
    ld c, $f2
    pop af
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add hl, bc
    nop
    nop
    nop
    inc hl
    inc l
    inc c
    rst $38
    push hl
    or $e1
    ld a, [c]
    jp hl


    inc l
    db $fd
    db $e3
    ldh [$f8], a
    ld b, $fe
    ld [c], a
    inc c
    dec bc
    rst $38
    db $e4
    ret nz

    db $e3
    ld a, [c]
    and $ff
    push hl
    ldh [$fc], a
    ld bc, $ce0c
    ld [$ebf2], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$f7], a
    ccf
    db $e3
    ret nz

    rst $38
    ld b, d
    ret nz

    db $fd
    dec c
    rst $38
    db $e4
    ld a, [c]
    rst $28
    ldh [$fb], a
    add b
    push hl
    ld a, [bc]
    rst $38
    db $e4
    ld b, b
    ld a, [c]
    rst $28
    ld h, c
    ld [c], a
    ldh [$f6], a
    ret nz

    rst $38
    ldh [$fb], a
    nop
    push hl
    adc e
    rst $38
    ld [c], a
    nop
    xor [hl]
    ld [c], a
    sub d
    ld [c], a
    ldh a, [$e3]
    nop
    rst $20
    ldh [$e7], a
    ld d, d
    db $e3
    ldh [$e5], a
    ret nz

    rst $28
    nop
    ldh [$eb], a
    ret nz

    rst $38
    add b
    ret


    add b
    rst $20
    add b
    db $d3
    ldh [$c7], a
    ld b, b
    db $d3
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    and b
    db $eb
    ret nz

    rst $38
    nop
    ret


    ld b, b
    rst $00
    nop
    db $d3
    ldh [$ef], a
    cp a
    add h
    ret nz

    ld b, b
    call c, $ffe0
    ret nz

    and [hl]
    inc a
    add d
    ldh [rIE], a
    ldh [$ac], a
    ld c, h
    call z, $ff94
    ld [c], a
    ret nz

    rst $20
    db $ec
    rst $38
    ld [c], a
    ld l, h
    ldh [rIE], a
    ret nz

    add h
    adc h
    ld hl, sp-$01
    pop hl
    ret nz

    pop hl
    ld [hl], d
    and h
    db $ec
    adc h
    adc h
    xor h
    xor h
    ld sp, $40ac
    and a
    ldh [$fa], a
    add c
    ld h, [hl]
    adc h
    adc h
    ld hl, sp-$19
    call nz, Call_000_0066
    ldh [$e8], a
    ld hl, sp-$19
    ld [c], a
    jp hl


    ret nz

    rst $38
    ret nz

    rst $38
    sbc $fb
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    ret nz

    rst $38
    ld b, b
    rst $30
    cp $fd
    ret nz

    rst $38
    ret nz

    rst $38
    ld e, [hl]
    ei
    ld [hl-], a
    jp hl


    ld l, h
    nop
    rst $38
    jp hl


    ret nz

    rst $38
    db $fc
    ei
    or e
    ld [c], a
    add b
    ld b, a
    ld [hl], a
    inc hl
    ret nz

    ld l, $40
    cp $00
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $10
    nop
    ld b, l
    or a
    inc bc
    nop
    ld c, l
    ret nz

    rst $38
    nop
    add b
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
    nop
    rst $38
    add b
    cp a
    nop
    call z, $c0ff
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
    call z, $c0ff
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
    ret nz

    rst $38
    ret nz

    db $fd
    nop
    nop
    nop
    dec b
    nop
    rst $38
    db $fc
    rrca
    rst $38
    ld [c], a
    ld sp, hl
    push hl
    ldh [$f0], a
    ei
    db $e3
    ld sp, hl
    db $e4
    nop
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $28
    ret nz

    ld [c], a
    add b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    add b
    ld a, [$dd00]
    rst $10
    ld [c], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_028_6995:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $00
    nop
    nop
    ei
    stop
    rst $38
    ei
    db $10
    db $10
    jr jr_028_69de

    jr c, jr_028_6995

    db $10
    ld sp, hl
    ldh [rBCPS], a
    ld a, b
    adc b
    call nc, Call_000_10f1
    ld b, b
    nop
    db $db
    pop hl
    cp $e0
    ld sp, hl
    ld [c], a
    ret nz

    ldh a, [$e7]
    db $e3
    ldh [$f7], a
    ld a, a
    pop hl
    ret nz

    ld sp, hl
    ld [hl], a
    ld c, b
    db $10
    ld e, b
    and b
    ld [c], a
    sbc b
    db $10
    xor b
    and b
    rst $38

jr_028_69de:
    cp b
    ldh [rIE], a
    ldh [rIE], a
    nop
    db $ed
    db $10
    db $10
    inc de
    nop
    ldh [rNR44], a
    nop
    rst $30
    ldh [$d5], a
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0000], a
    nop
    cp $01
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_028_6a9b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld [de], a
    nop
    nop
    add b
    nop
    jr nz, jr_028_6b07

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    add h
    ld [bc], a
    jr jr_028_6ac3

    ld e, a

jr_028_6ac3:
    dec de
    adc b
    jr nc, jr_028_6b26

    dec de
    ld b, b
    ld a, a
    add h
    ld [bc], a
    adc b
    jr nc, @+$61

    dec de
    jr jr_028_6ad3

    ld e, a

jr_028_6ad3:
    dec de
    adc b
    jr nc, @+$01

    ld a, a
    adc b
    jr nc, jr_028_6a9b

    dec d

jr_028_6adc:
    add h
    ld [bc], a
    ld b, b
    ld a, a
    rst $38
    ld a, a
    inc e
    nop
    adc h
    ld b, b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ei
    rst $38
    nop
    cp $e4
    jr jr_028_6adc

    inc l
    jp $ff5e


    rst $00
    ld c, [hl]
    add c
    sbc a
    jp $815f


    cp a
    rst $38
    add e
    rst $18
    bit 7, [hl]
    rst $38

jr_028_6b07:
    inc a
    rst $28
    ld [$efff], sp
    ld [$03ff], sp
    cp $06
    db $fc
    inc e
    rst $38
    db $f4
    dec d
    ldh a, [$30]
    ldh [rNR51], a
    ldh a, [rPCM34]
    rst $38
    ret nz

    ld b, e
    rst $38
    ret nz

    ld a, a
    ld h, b
    ccf
    cp b
    rst $38

jr_028_6b26:
    cpl
    ld hl, sp+$0f
    call z, $fc07
    rrca
    cp $ff
    inc bc
    or $c0
    rst $10
    add b
    sbc a
    ret nz

    rst $08
    rst $28
    ret nz

    ld e, a
    ret nz

    rst $08
    ld hl, sp-$20
    rst $18
    ret nz

    ld a, a
    sbc a
    inc bc
    rst $38
    ld bc, $03ff
    set 4, b
    ld hl, sp-$1b
    ldh [rIE], a
    ldh a, [$c0]
    ret nc

    ld [hl], h
    db $76
    ld e, $1e
    xor e
    rst $38
    xor e
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    rst $38
    rlca
    ld [bc], a
    ld [bc], a
    cpl
    cpl
    ld a, b
    ld a, b
    ld [$ea7f], a
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    db $ec
    pop hl
    ld e, $e8
    ld [c], a
    inc b
    inc bc
    inc bc
    nop
    rst $38
    ldh [$ec], a
    pop hl
    add sp, -$1f
    rst $38
    add sp, $28
    push de
    push de
    xor d
    xor d
    dec d
    dec d
    xor $60
    ld [c], a
    inc bc
    cp $02
    ld a, d
    ldh [rDIV], a
    cp $1e
    rst $38
    db $f4
    inc d
    rst $38
    inc a
    rst $20
    rst $20
    add c
    adc e
    cp a
    add c
    cp a
    nop
    ld e, $00
    cp a
    ld b, l
    ldh [$7f], a
    or $40
    ld [c], a
    ret nz

    ld a, a
    ld l, d
    pop hl
    ldh [$7f], a
    ld hl, sp+$2f
    ld a, l
    cp b
    ld e, b
    ldh [rNR43], a
    ld hl, sp+$3b
    ldh a, [rNR13]
    ld d, h
    pop hl
    cp $64
    pop hl
    rrca
    db $fc
    rlca
    db $fc
    rra
    db $fc
    rrca
    ld d, c
    ld hl, sp+$54
    ldh [$6c], a
    ld [c], a
    ld d, h
    ldh [rVBK], a
    ld d, d
    ld [c], a
    adc a
    ld d, d
    ldh [$e7], a
    ld c, a
    ldh [$6f], a
    ld d, h
    ld [c], a
    ld d, d
    and $07
    cp $c0
    rst $38
    ldh a, [$e0]
    ld hl, sp+$68
    ld a, b
    inc a
    ld a, $a8
    rst $20
    xor d
    ld c, $0e
    ld l, [hl]
    db $e3
    db $fc
    push hl
    add c
    pop bc
    rst $20
    rst $38
    rst $20
    ld a, [hl]
    ld a, [hl]
    inc bc
    inc bc
    ld b, $06
    dec d
    rst $38
    dec d
    inc a
    inc a
    ld [de], a
    ld [de], a
    ld [hl], b
    ld [hl], b
    ret nz

    rst $38
    ret nz

    nop
    nop
    ld a, [hl]
    ld d, [hl]
    ld a, [hl]
    ld c, d
    ld e, [hl]
    rst $30
    ld h, [hl]
    ld a, [hl]
    ld b, d
    db $fc
    db $e3
    ld e, [hl]
    ld h, d
    ld a, [hl]
    ld b, [hl]
    cp $fc
    db $e3
    rst $38
    add l
    rst $38
    rst $20
    dec a
    dec a
    ld a, [bc]
    db $fd
    ld a, [bc]
    cp [hl]
    push hl
    ld d, b
    ld d, b
    xor d
    xor d
    ld d, l
    ld d, l
    ei
    xor d
    xor d
    sub b
    call nz, $ff03
    rlca
    cp $06
    rst $38
    cp $0e
    cp $1e
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    db $fc
    ld a, h
    ldh [$e0], a
    ldh [$e1], a
    ld h, b
    ld h, a
    rst $38
    nop
    rlca
    nop
    ld bc, $e0ff
    rst $38
    db $fc
    rst $38
    ccf
    ld a, $07
    rrca
    rlca
    rst $08
    ld b, $ff
    rst $28
    nop
    ld hl, sp+$00
    ld hl, sp+$60
    call nz, $ffc0
    ldh [rIE], a
    ld a, a
    ldh [$7f], a
    ld [hl], b
    ld a, a
    ld a, b
    ld hl, sp+$18
    ld d, a
    ld hl, sp+$18
    db $fc
    rst $38
    ldh [$98], a
    rst $38
    ldh [$80], a
    rst $38
    ldh [rVBK], a

jr_028_6c79:
    nop
    ld bc, $cf00
    cp $e0
    add hl, sp
    pop bc
    ccf
    cp $e0
    rst $20
    rst $38
    nop
    cp $2f
    push bc
    daa
    jp $781f


    rra
    rst $38
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    add hl, de
    sbc a
    add hl, de
    inc de
    sbc a
    ld bc, $c064
    db $10
    call nz, $fe80
    ld [c], a
    xor d
    ldh [$7a], a
    ldh [$f9], a
    ld b, $7c
    ldh [rKEY1], a
    ret nz

    rst $38
    rra
    rst $38
    ccf
    di
    rst $18
    inc sp
    nop
    inc c
    nop
    inc c
    jr nc, jr_028_6c79

    rst $08
    nop
    ld b, c
    rrca
    cp $e0
    xor [hl]
    db $e3
    db $e3
    ld [c], a
    reti


    and l
    ld a, d
    ldh [$e0], a
    ld e, h
    ldh [$fd], a
    ret nz

    ld l, [hl]
    ldh [$f8], a
    rst $38
    db $fc
    rst $08
    db $fc
    ldh a, [$fd]

jr_028_6cd5:
    jr nc, jr_028_6cd5

    ldh [$73], a
    ldh a, [$f3]
    ret nz

    jp $9fc0


    jp $f0f0


    ldh a, [rSVBK]
    ret z

    and $c6
    ld [c], a
    nop
    or a
    rst $38
    rrca
    db $fc
    cp $e0
    cp $0f
    sbc a
    ld [c], a
    rrca
    rst $38
    rst $38
    rrca
    cp $f0
    db $fc
    or b
    cp h
    ld [hl], b
    ld a, a
    ld a, a
    jr nc, jr_028_6d40

    ldh a, [$fc]
    ldh a, [$fc]
    cp e
    pop hl
    rst $38
    rrca
    rrca
    ld c, $0e
    dec c
    dec c
    inc c
    inc c
    rst $18
    ld c, $0e
    rrca
    rrca
    inc bc
    rst $38
    ldh [$f0], a
    db $fc
    rst $38
    ld [hl], b
    ld a, h
    jr nc, jr_028_6d5e

    jr nc, jr_028_6d60

    inc a
    ccf
    rst $20
    inc e
    rra

jr_028_6d26:
    jr jr_028_6d26

    ldh [$7e], a
    ret


    nop
    ret nz

    nop
    push af
    ret nz

jr_028_6d30:
    ret nc

    pop hl
    inc c
    rst $38
    ldh [$3c], a
    inc a
    jr c, jr_028_6d71

    db $ed
    jr @+$01

    ldh [$1f], a
    rra
    ret z

jr_028_6d40:
    db $e3
    inc bc
    inc bc
    ld bc, $01ed
    ld d, d
    jp nz, Jump_000_00f0

    ld l, l
    ld [c], a
    db $fc
    rst $38
    db $fc
    rst $18
    rst $38
    jr nc, jr_028_6d86

    jr nc, jr_028_6d88

    ret nz

    ld [$0080], a
    ret


    adc h
    sbc h
    and c
    ret nz

jr_028_6d5e:
    pop hl
    ccf

jr_028_6d60:
    rst $38
    ldh [$b8], a
    pop hl
    ld a, $3e
    ei
    rra
    rra
    jr jr_028_6d30

    ret nz

    nop
    or e
    add e
    ld [hl], b
    rst $18

jr_028_6d71:
    ld a, h
    db $fc
    db $fc
    rst $38
    rst $38
    ld [c], a
    ldh [$35], a
    ccf
    rst $38
    ld [hl-], a
    scf
    add hl, sp
    dec sp
    inc [hl]
    ld c, $0e
    ccf
    rst $30
    ccf
    rst $38

jr_028_6d86:
    rst $38
    adc [hl]

jr_028_6d88:
    pop bc
    db $fc
    db $ec
    db $fc
    ld e, h
    ccf
    db $fc
    xor h
    ld a, h
    ld a, h
    ld hl, sp-$08
    ld [$d0c1], sp
    push hl
    rst $28
    scf
    jr c, jr_028_6dcf

    inc a
    db $fc
    jp hl


    db $fc
    ld c, h
    db $fc
    db $fd
    xor h
    db $fc
    jp hl


    ld e, b
    and a
    rst $38
    inc a
    di
    jp $cfee


    pop hl
    ld bc, $0301
    ld [bc], a
    and b
    ld [hl], a
    ld hl, sp-$0d
    rst $38
    ld l, h
    rst $30
    add sp, -$15
    db $f4
    rst $30
    ret z

    rst $28
    rst $38
    ret nc

    rst $18
    and d
    rst $38
    add l
    cp $4f
    rst $38
    rst $38
    and [hl]
    rst $38
    ld d, a
    rst $38
    daa

jr_028_6dcf:
    rst $38
    ld d, e
    rst $38
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    ld a, [bc]
    ld e, c
    and a
    cp $ff
    ccf
    ldh a, [$df]
    ldh [$3a], a
    jr nz, jr_028_6e13

    and b
    push af
    or b
    sbc $80
    ret nz

    ld a, h
    xor e
    nop
    nop
    rst $38
    ld_long $ffbf, a
    rst $30
    ccf
    ccf
    ld e, [hl]
    ld e, [hl]
    ld [de], a
    db $e4
    nop
    rst $38
    rst $38
    sub l
    rst $38
    rst $28
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    ld a, e
    ld d, l
    ld d, l
    sub h
    and e
    ret nz

    ret nz

    add sp, -$18
    add $81
    db $d3
    ld d, h
    ld d, h
    db $e4
    and b
    ret nc

jr_028_6e13:
    pop hl
    rst $38
    adc b
    and c
    nop
    nop
    di
    xor d
    xor d
    cp b
    db $eb
    db $10
    push hl
    inc a
    inc a
    ld b, d
    ld [hl], d
    rst $38
    add c
    and l
    add c
    pop af
    add c
    and c
    ld b, e
    ld b, e
    rst $38
    ret nc

    db $10
    di
    jp $0000


    inc bc
    inc bc
    rst $38
    rrca
    rrca
    ld a, $3f
    ld a, c
    ld a, [hl]
    ld h, a
    ld a, b
    rst $38
    ld l, l
    ld [hl], d
    ld h, a
    ld a, b
    db $ed
    di
    xor $f1
    rst $38
    sbc l
    ld [c], a
    ld [hl], a
    adc b
    sbc $21
    ld a, e
    add l
    rst $38
    xor $16
    cp b
    ld e, b
    ld l, [hl]
    ld [hl], c
    ld l, e
    ld [hl], l
    rst $28
    ld l, [hl]
    db $76
    jr jr_028_6e77

    sub d
    pop bc
    ret nz

    nop
    di
    rst $38
    jp Jump_028_70f0


    ldh a, [$d0]
    ldh a, [$90]
    or b
    rst $38
    ret nc

    cp b
    ret c

    di
    pop af
    pop bc
    ld bc, $fdf3

jr_028_6e77:
    jp $8530


    ld [hl], a
    ld [hl], h
    ld l, e
    ld a, e
    ld h, h
    ld a, h
    rst $38
    ld l, d
    halt
    nop
    add d
    add b
    ld b, e
    jp $a7ff


    ld h, a
    ld [c], a
    ld h, e
    add d
    add d
    ld d, $07
    ei
    inc e
    dec e
    ldh a, [$c3]
    rst $38
    rst $38
    sub a
    add sp, -$41
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    bit 7, b
    rst $38
    rst $18
    rst $38
    ld l, h
    rst $18
    rst $30
    rst $18
    ei
    rst $38
    dec e
    rst $38
    rst $18
    cp $bf
    rst $18
    rst $38
    cp d
    nop
    push hl
    and b
    or b
    rst $38
    ldh [$f8], a
    ldh [rSVBK], a
    or b
    ld [hl], b
    rst $38
    cp a
    ld [c], a
    cp $e0
    rst $38
    ld a, b
    add e
    ld e, $c1
    ldh a, [$e2]
    cp a
    ldh a, [$b0]
    cp $fe
    pop hl
    ld hl, sp-$48
    ldh a, [$f0]
    ld hl, sp-$28
    ld hl, sp-$19
    add sp, -$08
    ld hl, sp-$21
    ret


    nop
    xor e
    ld [hl], l
    rst $38
    xor d
    xor a
    rst $38
    ld d, b
    rst $38
    add h
    add hl, de
    ld h, [hl]
    push af
    ldh a, [$e4]
    ld b, b
    cp b
    rlca
    ld h, h
    rst $38
    push hl
    ret c

    push hl
    rst $38
    rst $38
    cp $ec
    ldh [$da], a
    xor [hl]
    ret c

    ldh [$58], a
    rst $38
    and h
    ldh [$e4], a
    ld a, [$e0ca]
    add sp, -$55
    rst $38
    ld a, [c]
    db $fc
    ldh [$f0], a
    ld hl, sp-$20
    db $f4
    rlca
    and b
    push af
    xor $ec
    ldh [$f4], a
    rst $38
    ld sp, hl
    db $f4
    ldh [rIE], a
    rst $38
    or l
    xor a
    rst $38
    ld b, d
    rst $38
    xor l
    cp b
    and $ff
    sbc [hl]
    ldh [$a8], a
    ld [hl], d
    and d
    ldh [$aa], a
    sub [hl]
    ldh [$a3], a
    pop hl
    ld a, a
    rst $38
    xor a
    add hl, hl
    ret nz

    rst $10
    ld [bc], a
    rst $38
    ld d, l
    ld hl, sp-$20
    ld a, a
    sub d
    ldh [$aa], a
    rst $38
    db $dd
    ld b, l
    ld l, [hl]
    ldh [rHDMA4], a
    rst $38
    and d
    inc de
    ret nz

    xor d
    rst $38
    ld e, l
    ld d, c
    ld h, d
    ldh [$75], a
    rst $38
    xor e
    ld [c], a
    ldh [$a2], a
    sbc $e0
    db $fd
    ld [$a0f7], a
    xor [hl]
    rst $38
    rst $30
    rst $38
    db $dd
    rst $38
    ld e, a
    ld l, e
    rst $38
    sub $ff
    cp e
    daa
    ret nz

    ld [hl], l
    ld h, b
    ldh [$15], a
    rst $18
    ld l, [hl]
    ldh [$fb], a

jr_028_6f72:
    ld a, [$7fe0]
    ld a, [$f6e0]
    push bc
    ld l, b
    ld h, a
    cp a
    jr nz, jr_028_6fae

    jr nz, jr_028_6fb8

    ld b, b
    ld [hl], b
    cp $e0
    ld b, b
    rst $38
    jr nz, jr_028_6fb8

    ld [hl], b
    ld [hl], b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    rst $30
    ld [bc], a
    ld b, $01
    rst $38
    ld [c], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    add e
    or b
    or b
    add sp, -$1b
    ld [hl], $65
    add sp, -$1b
    ld h, $65
    ld h, b
    and l
    ld bc, $017f
    ld c, $0f
    db $10
    rra
    jr nz, @+$3c

jr_028_6fae:
    ld d, b
    and l
    rst $38
    ret nz

    ret nz

    jr c, @-$46

    inc b
    or h
    ld [bc], a

jr_028_6fb8:
    ld [de], a
    db $fc
    ld [hl], b
    and a
    sbc b
    db $e3
    ret c

    rst $20
    ccf
    cp h
    rlca
    or a
    jp $1202


    sbc b
    push hl
    jr nz, jr_028_6f72

    ld h, b
    and h
    sub b
    and d
    inc bc
    inc bc
    rst $38
    xor d
    xor d
    ld b, $07
    inc c
    dec c
    inc b
    ld b, $bf
    ret c

    ret z

    rst $38
    rst $38
    xor e
    xor e
    ld l, d
    ldh [$aa], a
    rst $38
    inc b
    ld d, h
    ld b, $f6

Call_028_6fe9:
    inc b

jr_028_6fea:
    xor h
    jr jr_028_7008

    rst $38
    ld a, [bc]
    dec c
    jr jr_028_7011

    jr nc, jr_028_702b

    ld de, $ff1e
    jr nc, jr_028_7038

    ldh [rIE], a
    ld b, l
    ld e, d
    ld b, $fe
    rst $38
    db $d3
    dec hl
    ld [bc], a
    cp $13
    rst $28
    ld h, c
    sbc l

jr_028_7008:
    rst $38
    ld [hl+], a
    sbc $32
    jp z, Jump_000_3fc3

    nop
    nop

jr_028_7011:
    pop hl
    ld [bc], a
    ld a, [hl]
    and b
    jp c, $d320

    jr nz, jr_028_6fea

    and c
    ld b, b
    ld a, a
    ret nz

    rst $38
    rst $38
    add b
    cp a
    rla
    ld l, b
    ld bc, $01fe
    rst $38
    rst $38
    ld [bc], a
    db $fd

jr_028_702b:
    cp h
    ld b, a
    ld b, c
    cp l
    ld l, d
    rst $38
    sub $82
    ld a, [hl]
    inc bc
    ei
    inc bc
    rst $38

jr_028_7038:
    jp nc, Jump_000_2efd

    db $ed
    jr nz, @-$02

    jr c, jr_028_707b

    db $10
    rra
    jr nc, @+$01

    rla
    dec d
    ld a, [de]
    or b
    ccf
    ldh [$ef], a
    ret nz

    rst $38
    rst $18
    rst $18
    ld [hl+], a
    inc b
    ei
    rlca
    cp $08
    rst $38
    rst $30
    ldh a, [$3f]
    db $10
    rst $28
    rra
    ld a, [$ee20]
    ret


    ld b, b
    ld b, $f6
    sub $d8
    ldh [$0c], a
    ld hl, sp+$08
    rst $38
    ld hl, sp-$32
    ld l, $0e
    cp $2f
    db $d3
    ld b, b
    ld a, a
    cp a
    add b

jr_028_7075:
    ld a, a
    add b
    rst $38
    rst $38
    db $eb
    db $f4

jr_028_707b:
    ld b, c
    rst $38
    ld [bc], a
    rst $38
    db $fc

jr_028_7080:
    xor a
    ld b, b
    cp a
    ld a, a
    push af
    ld a, l
    add b
    ei
    nop
    ld bc, $feff
    rst $10
    ld [bc], a
    ld b, [hl]
    jr nz, jr_028_7080

    ld b, a
    ei
    add a
    ld hl, sp-$20
    jp hl


    rst $18
    rst $18
    rst $38
    sbc a
    inc a
    cp [hl]
    ld b, c
    ld d, b
    xor a
    ldh [$e5], a
    ldh a, [$e3]
    rst $38
    di
    db $eb
    ld d, c
    xor $e0
    ret nz

    pop hl
    inc b
    rst $38
    ld hl, sp+$5f
    push af
    ld [$6028], sp
    db $10
    ld e, a
    ld b, b
    jr nz, @+$01

    ccf
    ld a, [$04fd]
    cpl
    ld b, b
    ld [$f0ff], sp
    cp a
    db $10
    rst $38
    di
    rra

jr_028_70c7:
    db $fd
    add b
    pop hl
    ret nc

    jp $1f0c


    db $10
    ld e, $bf
    db $10
    ld a, [de]
    jr nz, jr_028_710d

    jr nz, jr_028_7107

    ldh a, [$62]
    db $e3
    cp a
    jr jr_028_7075

    inc b
    inc [hl]
    inc b
    inc d
    ld d, h
    pop bc
    ld b, b
    cp a
    cp a
    cp a
    ld b, l
    db $fc
    di
    rst $08
    sub h
    jr nz, jr_028_70f5

    cp a
    rlca

Jump_028_70f0:
    rra
    inc e
    ccf
    ccf
    ld b, b

jr_028_70f5:
    ld h, l
    ld b, d
    rst $38
    ld a, a
    db $eb
    pop bc
    ccf
    add c
    ld a, a
    add d
    ld a, a
    ld h, b
    ldh [rIE], a
    rst $38
    ld a, a
    push af
    add a

jr_028_7107:
    ld hl, sp+$1f
    rst $28
    inc [hl]
    ld a, a
    ret nc

jr_028_710d:
    pop hl
    and c
    ld hl, $71e1
    or c
    or b
    ld h, c
    rst $38
    rst $28
    rst $08
    ld [hl], c
    ld a, l
    add b
    db $fd
    nop
    ret nc

    ld a, [$6030]
    ret nz

    and b
    ld h, h
    ret nz

    jr nz, jr_028_70c7

    db $10
    sub b
    rst $38
    db $10
    db $10
    db $10
    jr nc, jr_028_716f

    ld b, b
    daa
    scf
    rst $30
    ld a, b
    ld a, [hl]
    db $10
    sub b
    pop hl
    inc d
    jr nz, jr_028_7179

    jr nz, @+$01

    inc [hl]
    ldh a, [$f0]
    ld c, $ee
    ld bc, $008d
    ld sp, hl
    call nz, Call_028_6004
    ldh [rSCY], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    rst $38
    inc b
    adc h
    adc h
    and c
    and c
    add e
    add e
    ld b, e
    rst $38
    ld b, e
    ld b, [hl]
    ld b, d
    ld [hl], a
    inc [hl]
    ld l, [hl]
    add hl, hl
    inc a
    rst $38
    dec hl
    ld a, a
    ld l, [hl]
    db $fc
    db $d3
    ld hl, sp-$19
    ld [hl], b
    or a
    cpl
    cp a
    ld a, d

jr_028_716f:
    ld b, b
    push hl
    ld de, $40fe
    pop hl
    pop bc
    rst $38
    cp $62

jr_028_7179:
    and e

jr_028_717a:
    ld [c], a
    ld b, e
    jp nz, $c182

    rst $38
    add c
    add d
    add e
    call nz, $e4c7
    rst $20
    call nz, Call_028_45fd
    cp h
    ld b, b
    add b
    inc a
    inc a
    jp Jump_000_00fb


    rst $38
    and e
    nop
    pop af
    nop
    and b
    nop
    nop
    ld [$fffe], sp
    ld [c], a
    sub b
    sub b
    ld d, b
    ld d, b
    jr c, @+$3a

jr_028_71a4:
    jr nz, jr_028_720d

    jr nz, jr_028_71c8

    ld h, b
    ld e, b
    add e
    or h
    and d
    ccf
    jr nz, jr_028_717a

    and c
    rst $38
    jr nc, jr_028_71a4

    ldh a, [$08]
    add sp, $07
    rst $38
    nop
    rst $30
    inc hl
    nop
    add c
    or d
    ld a, [bc]
    add c
    ld b, h
    ld b, h
    ld b, b
    cp $ff
    ldh [rBGP], a

jr_028_71c8:
    ld b, d
    ld b, e
    ld b, e
    add a
    add [hl]
    sbc [hl]
    rst $38
    sbc l
    cp a
    cp l
    scf
    ld [hl], $2f
    ld [hl+], a
    ld a, e
    ld a, a
    daa
    ldh a, [rVBK]
    ldh [$9f], a
    ret nz

    cp a
    nop
    db $e3
    cp $60
    pop bc
    ld b, c
    cp $7f
    push af
    add c
    rst $38
    inc bc
    rst $38
    db $fd
    inc bc
    rst $38
    rst $38
    xor l
    rlca
    db $fd
    rlca
    rst $38
    rst $38
    ret z

    adc a
    adc b
    dec c
    adc b
    inc c
    ld [$08ff], sp
    inc b
    ld b, $84
    add h
    rst $00
    rst $00
    jp nz, $c3f9

    inc l
    ld b, b
    and $20
    rrca

jr_028_720d:
    rrca
    db $10
    ld e, $e0
    sbc a
    rst $38
    nop
    ld a, [c]
    nop
    ld hl, sp-$04
    ret nz

    db $fd
    ld [c], a
    and b
    rst $38
    and b
    ld [hl], b
    ldh a, [$08]
    jr c, jr_028_7227

    inc d
    ld b, b
    rst $38
    ld a, b

jr_028_7227:
    add b
    ldh a, [$80]
    ret nc

    add b
    ret nz

    add b
    rst $38
    and b
    nop
    jr nz, jr_028_7273

    ld b, b
    nop
    ld [$fd20], sp
    ld h, b
    sbc $e1
    ld de, $1311
    inc de
    inc bc
    inc bc
    rst $38
    ld [hl+], a
    ld [hl+], a
    rlca
    ld [bc], a
    ld [hl], a
    inc l
    ld a, $39
    rst $38
    ld a, h
    ld l, e
    rst $28
    sbc $fc
    db $d3
    ld a, b
    ld h, a
    db $fd
    ldh a, [rP1]
    ldh [$0b], a
    db $fc
    rst $30
    ld a, c
    rla
    ld a, [$1fff]
    cp $26
    ld a, [$f2ce]
    ld c, a
    rst $30
    rst $38
    ld a, a
    rst $30
    add d
    add e
    add d
    inc bc
    inc b
    rlca
    rst $38
    ld [$080f], sp

jr_028_7273:
    dec c
    ld [$000c], sp
    nop
    inc hl
    add h
    add [hl]
    inc c
    pop hl
    adc h
    db $e3
    ld [hl-], a
    db $e3
    inc b
    rst $38
    ldh [$8e], a
    add l
    sub b
    and d
    pop bc
    ld b, b
    push bc
    and b
    and l
    ld c, b
    ld h, h
    ld bc, $a030

jr_028_7292:
    cp $e0
    nop
    rst $38
    inc bc
    ld a, a
    ld a, a
    sub [hl]
    jp hl


    inc bc
    db $fc
    ld de, $feff
    add hl, sp
    cp $78
    cp a
    ld a, c
    cp [hl]
    ld a, b
    rst $38
    cp a
    add b
    add b
    ld a, h
    db $fc
    ld d, e
    xor a
    xor d
    xor a
    ld d, l
    nop
    rst $38
    jr z, jr_028_7292

    ld h, b
    ld a, [hl]
    ld d, $62
    ret nz

    rst $38
    ret nz

    ld h, b
    ldh [rNR41], a
    ldh [$30], a
    ldh a, [$50]
    ldh a, [rNR24]
    ld h, b
    call z, Call_000_2cc9
    add b
    ld [hl], h
    ldh [$09], a
    ld c, $13
    dec e
    rst $38
    daa
    dec sp
    ld c, a
    ld [hl], a
    sbc a
    xor $3f
    db $dd
    rst $38
    ld a, a
    cp d
    db $fc
    ld [hl], a
    cp $eb
    rst $38
    pop de
    xor a
    rst $38
    xor h
    rst $38
    ld e, [hl]
    rst $08
    ld h, b
    ld [hl], h
    ld e, c
    ld h, b
    ld a, a
    rst $38
    ld l, e
    cp a
    dec a
    rst $18
    sbc d
    rst $28
    call $ff77
    and $3b
    ld a, [c]
    sbc l
    ld sp, hl
    ld c, [hl]
    ld hl, sp-$08
    ld d, a
    db $fc
    db $fc
    ld e, [hl]
    dec l
    ld h, b
    ld d, a
    ld hl, sp+$40
    dec d
    add sp, $41
    jp c, Jump_000_05f5

    add b
    sbc d
    pop hl
    or b
    ldh a, [$df]
    ld b, b
    add sp, -$01
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ld b, c
    cp $83
    db $fc
    rst $20
    rlca
    ld sp, hl
    ld c, $9d
    ld h, c

jr_028_7327:
    pop bc
    ld b, b
    cp $5d
    and e
    rst $38
    ld [$65f7], sp
    ei
    ld a, [c]
    db $fd
    db $fc
    rst $20
    di
    cp $03
    push af
    add b
    xor a
    ld b, c
    add b
    ld a, a
    ret nz

    cp a
    rst $38
    ldh [$d5], a
    ld a, a
    ld b, b
    cp a
    jr nz, jr_028_7327

    sub d
    rst $38
    rst $28
    ret z

    ld [hl], a
    db $e4
    dec sp
    ld a, [c]
    dec e
    ld sp, hl
    rst $38
    ld c, $58
    ld hl, sp+$0c
    db $fc
    ld d, [hl]
    cp $2b
    ld h, e
    rst $38
    dec b
    inc e
    ld h, b
    db $fc
    pop hl
    and b
    db $eb
    sub b
    ldh a, [$50]
    db $eb
    di
    cp a
    ld a, [$e25c]
    sub b
    pop hl
    ld a, a
    ldh [$e0], a
    push hl
    rst $38
    ld h, b
    db $eb
    ld h, b
    di
    dec e
    rst $20
    dec sp
    rst $08
    rst $38
    ld [hl], a
    sbc a
    rst $28
    rst $18
    rst $38
    ccf
    dec a
    ld a, a
    rst $38
    inc hl
    rst $38
    ld hl, $eef9
    db $fc
    rst $10
    cp $f7
    xor e
    rst $38
    ld b, c
    push de
    ld b, d
    push de
    rst $38
    and b
    rra
    rst $38
    ldh a, [$cf]
    ld a, b
    ld h, a
    cp h
    rra
    cp $bf
    ld a, l
    db $fc
    ld a, c
    ld b, b
    ld d, h
    rst $38
    db $10
    db $fc
    rlca
    ld [hl], b
    db $e4
    rst $38
    rst $38
    ret nz

    ret nz

    jp z, $d7c0

    ret nz

    sub b
    cp $70
    ld [c], a
    sub b
    rst $28
    ret z

    rst $30
    ld h, [hl]
    ld a, e
    di
    rst $38
    ld e, l
    ld hl, sp+$4f
    ld c, b
    ld hl, sp+$14
    db $fc
    ld a, [bc]
    cp e
    cp $05
    ld a, h
    add b
    ld b, e
    rst $38

jr_028_73cf:
    rra
    ld [hl+], a
    ld b, b
    db $f4
    rst $38
    nop
    ld hl, sp+$40
    ldh a, [$a0]
    ldh a, [$e0]
    ldh a, [$e9]
    ld h, b
    db $fc
    ldh [$fe], a
    ldh [$e7], a
    adc h
    ldh [rIE], a
    ld e, a
    ldh [$e9], a
    ld h, b
    add h
    pop hl
    db $f4
    ld [c], a
    ld hl, $e0fe
    pop hl

Call_028_73f2:
    ccf
    ld hl, $7fe9
    ld hl, sp-$1f
    db $f4
    pop hl
    ret nz

    db $f4
    ret nz

    ret nz

    rst $38
    add c
    or e
    rst $38
    pop bc
    ld [hl], a
    add b
    add l
    ld h, b
    rst $38
    db $10
    cp $e0
    ret nc

    rst $28
    rst $38
    jr nc, jr_028_73cf

    ld [hl], b
    inc bc
    ld b, b
    ld d, b
    rst $38
    db $10
    call $8ccf
    ldh [rIE], a
    cp a
    add h
    db $e3
    db $f4
    pop hl
    db $fd
    ld b, a
    ld c, [hl]
    sub a
    ldh [$c1], a
    ld a, a
    ld b, c
    ld c, [hl]
    ldh [$fc], a
    ld [c], a
    ei
    or l
    ld h, b
    ld a, a

jr_028_7430:
    ld a, a
    nop
    ei
    ld bc, $017f
    cp e
    db $fc

jr_028_7438:
    pop hl
    xor c
    nop
    adc d
    ld [c], a
    dec a
    ld h, b
    ret nz

    ld a, l
    and b
    push de
    dec h
    add c
    ld a, a
    ld d, h
    adc c
    inc h
    ld e, l
    ld hl, $8155
    jr nz, jr_028_7430

    sub a
    ld h, b
    ld bc, $2079
    dec b
    rra
    sub [hl]
    ldh [$50], a
    ld h, c
    jr nz, jr_028_745d

    add c

jr_028_745d:
    ld e, a
    ld h, b
    ld h, a
    jr nz, jr_028_74df

    ld h, c
    ld d, l
    ld d, l
    add b
    ld [c], a
    db $10
    ld e, c
    jr nz, @-$1e

    cp $e0
    ld [$2251], a
    jp z, $e7c0

    xor d
    ld b, c
    jr nz, jr_028_7438

    ret nz

    db $e4
    ldh a, [$e4]
    ld e, a
    nop
    rst $38
    dec a
    nop
    rst $28
    nop
    sbc l
    nop
    xor a
    nop
    db $eb
    cp a
    inc bc
    rst $38
    ret nz

    ld a, a
    ld c, $81
    rlca
    inc b
    rla
    cp a
    db $10
    ccf
    jr nz, jr_028_7515

    ld b, b

jr_028_7497:
    ccf
    inc a
    ret nz

jr_028_749a:
    pop hl
    rst $28
    pop hl
    push de
    inc d
    rst $30
    db $db
    ld [$c3c3], sp
    xor e
    ei
    jr z, jr_028_7497

    rrc b
    add b
    add b
    ld b, b
    ld b, b
    ldh a, [rIE]
    jr nc, jr_028_749a

    ld [$04fc], sp
    ld a, [$ee02]
    rst $38
    ld [bc], a
    pop af
    ld bc, $80ff
    cpl
    nop
    ld [hl], e
    cp a
    ld b, b
    jr c, @+$22

    db $10
    db $10
    ld b, $a4
    jr nz, @+$03

    xor $f6
    and b
    rst $18
    nop
    ld h, [hl]
    dec [hl]
    add b
    db $10
    db $10
    ld c, h
    rst $38
    ld c, b
    push de
    inc d
    db $e3
    db $e3
    rst $38
    nop
    cp a

jr_028_74df:
    ei

Jump_028_74e0:
    nop
    call Call_028_404c
    jr nz, jr_028_7506

    sbc c
    sub c
    xor e
    rst $38
    jr z, @-$37

    rst $00
    db $d3
    ld bc, $0161
    adc [hl]
    cp a
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld l, h
    ld c, h
    jr nc, @+$76

    ld h, b
    add b
    rst $38
    add b
    ld c, $0e
    dec l
    ld hl, $407f
    ld a, a
    rst $38

jr_028_7506:
    nop
    push af
    add b
    xor b
    add b
    ld h, e
    ld h, e
    inc e
    cp a
    inc e
    jr c, @+$3a

    or [hl]
    add [hl]
    ld a, l

jr_028_7515:
    and e
    ld b, b
    push de
    ld a, a
    ld bc, $02a2
    adc h
    adc h
    ld [hl], b
    ld [hl], b
    ld d, l
    ld b, $ff
    ld [hl], b
    adc a
    sbc [hl]
    jp $897b


    cp a
    cp l
    rst $38
    rst $38
    rst $28
    rst $28
    ei
    ld e, $ef
    inc e
    rst $28
    db $fd
    ld [$e3fe], sp
    rst $38
    rra
    ldh [$63], a
    add [hl]
    sbc a
    rst $38
    ldh a, [$f1]
    ldh [$2b], a
    pop bc
    ld l, a
    jp $fd5f


    rst $08
    jp nz, $c0c1

    ld a, a
    db $fc
    inc bc
    or $a9
    rst $38
    cp a
    rst $00
    rst $18
    ld b, e
    cp $e3
    cp $dc
    ld a, a
    ld a, [hl]
    db $fc
    ld [hl], h
    rst $38
    inc hl
    cp $03
    cp $e0
    db $fd
    ld [bc], a
    cp $e1
    ei
    cp $9f
    cp $9f
    call nc, Call_028_73f2
    ld b, b
    ret nz

    ret c

    ldh [$fc], a
    ldh [$fe], a
    rst $38
    xor d
    xor e
    rst $38
    ld d, [hl]
    ld d, a
    ld [bc], a
    inc bc
    xor e
    xor d
    ld [bc], a
    inc bc
    cp $ad
    jr nz, @+$05

    rst $38
    ld a, a
    ld [$d5ea], a
    ld d, l
    rst $38
    ret nz

    ret nz

    ld [$c06a], a
    ret nz

    ret nz

    ld b, b
    ld [hl], e
    ret nz

    ret nz

    db $ec
    pop hl
    ld h, l
    add c
    rlca
    inc b
    inc bc
    and $40
    ld hl, sp-$7c
    add b
    db $ec
    ldh [$e8], a
    pop hl
    add sp, $68
    push de
    push de
    xor d
    di
    xor d
    dec d
    call $d282
    ret nz

    ld [$14f7], sp
    rst $30
    rst $38
    ld d, $f5
    dec d
    push af
    rla
    push af
    scf
    pop de
    rst $38
    ld d, e
    rst $10
    ld d, [hl]
    rst $10
    ld [hl], h
    rst $00
    ld h, h
    rst $30
    dec e
    inc [hl]
    db $ec
    ldh [rNR32], a
    rst $38
    ld bc, $e388
    ld a, [$dae5]
    add b
    db $fd
    ld b, b
    db $10
    ldh [$c0], a
    ld a, a
    ld c, h
    ld [hl], e
    sub $73
    ld [hl], a
    ld d, [hl]
    ld [hl], e
    sbc $e2
    db $e4
    ld [hl-], a
    adc $5a
    cp $e2
    ld sp, hl
    ld a, d
    db $ec
    pop hl
    cp $e0
    cp $03
    ld a, [hl]
    rlca
    db $fc
    rst $38
    ld a, a

jr_028_75fa:
    ld hl, sp+$7f
    ret nz

    adc $ef
    jp z, $ffcb

    ld c, [hl]
    ld l, a
    ld b, b
    ld b, a
    and b
    and c
    ld e, $1f
    cp $0c
    ld hl, $7f7f
    ld l, d
    ld l, d
    ld d, l
    ld d, l
    ld b, b
    scf
    ld b, b
    ld l, d
    ld l, d
    ld [c], a
    ld b, c
    ld b, b
    ld b, b
    ld hl, sp+$01
    db $f4
    ld bc, $2678
    ld bc, $41c8
    ld [$40e3], a
    ld b, b
    jr z, @+$2a

    ld h, b
    ld [$2efe], a
    ret nz

    rst $28
    jr jr_028_75fa

    inc l
    rst $28
    inc a
    rst $00
    rst $38
    ld l, [hl]
    add e
    ld e, [hl]
    rst $10
    ld a, [hl]
    add e
    rst $08
    dec b
    ld a, a
    xor a
    rst $00
    ld a, a
    rst $38
    inc e

jr_028_7646:
    rst $38
    jr jr_028_76a9

    ldh [rIE], a
    inc bc
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld hl, sp+$04
    ld hl, sp-$61
    add hl, bc
    cp $0e
    ld sp, hl
    rlca
    ld a, [hl+]
    and c
    ld h, d
    ldh [$e0], a
    rst $28
    cp a
    ldh [$3f], a
    ldh a, [$59]
    jr nz, jr_028_7646

    ld hl, sp+$09
    rst $38
    ldh a, [$0b]
    ldh a, [$15]
    ldh [rNR13], a
    db $e4
    dec l
    rst $38
    ld a, [$e13e]
    inc de
    ldh [$27], a
    ccf
    ldh a, [rIE]
    ld e, a
    ldh a, [$1f]
    ld hl, sp+$2f
    ld hl, sp+$4f
    db $fc
    rst $38
    rst $38
    db $fc
    sbc a
    ld hl, sp+$2f
    db $fc
    ret nz

    call nc, $c0ff
    ld hl, sp-$80
    or l
    sbc h
    sbc $76
    ld [hl], a
    db $fd
    inc bc
    ret c

    jp nz, Jump_000_0f0f

    ld d, [hl]
    ld d, [hl]
    daa
    daa
    adc a
    ld a, e
    ld a, e
    xor $ee
    ret nz

    ret nz

jr_028_76a6:
    cp [hl]
    ret nz

    xor d

jr_028_76a9:
    jp $c902


    inc bc
    ret nz

    ret z

    cp $e2
    add sp, $60
    db $e4
    and b
    push bc
    ld [hl], a
    ld [hl], h
    cp a
    ld l, e
    ld a, d
    ld h, h
    ld a, h
    ld l, d
    db $76
    jr nc, jr_028_76a6

    ld [hl], h
    inc bc
    ld [hl], h
    ld l, d
    ldh a, [$e4]
    ret nz

    db $e3
    ldh [$e5], a
    nop
    nop
    nop
    pop af
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ed
    cp [hl]
    cp a
    ret nz

    pop bc
    db $ec
    ld [$d2ff], a
    ldh a, [$c6]
    rst $00
    and e
    ld [c], a
    jp nz, $c4c3

    ld bc, $b9c5
    ld [$e2e8], a
    ld [$a1e4], a
    xor $e8
    and $67
    ld [$e0b5], a
    ldh a, [$e7]
    di
    and c
    and $93
    db $e3
    adc l
    db $e4

jr_028_76ff:
    sub [hl]
    sub a
    sbc b
    sbc c
    ld e, $27
    ldh [rNR22], a
    jr jr_028_7722

    ld a, [de]
    jr nz, jr_028_76ff

    and $e6
    ld e, h
    db $e4
    ld a, [$e4ec]
    inc c
    ld a, [c]
    jp $9b9a


    sbc h
    sbc l
    sbc [hl]
    rst $38
    sbc a
    ld e, e
    rra
    dec de
    inc e
    dec e

jr_028_7722:
    ld e, $1f
    adc e
    ld a, [bc]
    dec bc
    ld [$5be4], a
    or $e7
    and $f1
    jp nc, Jump_000_0ee1

    rst $38
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    sbc d
    sbc e
    and b
    rst $38
    and c
    and d
    and e
    and h
    and l
    jr nz, jr_028_7763

    ld e, e
    ld e, a
    ld e, c
    ld [hl+], a
    inc hl
    dec c
    ld e, d
    ld [$00e1], a
    and $e0
    ld hl, sp-$0a
    rst $20
    and $f1
    jp nc, Jump_000_10e1

    ld bc, $0504
    inc b
    rst $38
    dec b
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h

jr_028_7763:
    rst $38
    xor l
    inc h
    dec h
    ld e, c
    ld e, b
    ld e, c
    ld h, $0f
    jp nz, $e2ea

    ld bc, $e0e6
    or $e7
    and $f1
    jp nc, $13e1

    ld a, $ff
    ld b, $07
    ld b, $07
    xor [hl]
    xor a
    or b
    or c
    rst $38
    or d
    or e
    or h
    or l
    daa
    ld e, e
    ld e, b
    ld d, a
    rst $28
    ld e, b
    jr z, @+$13

    ld [de], a
    ld [$65e1], a
    ld h, [hl]
    ld b, $f1
    rlca
    or $e7
    and $f1
    jp nc, Jump_028_56e1

    ld d, l
    ld [$ff09], sp
    ld [$b609], sp
    or a
    cp b
    cp c
    cp d
    cp e
    rst $28
    cp h
    cp l
    add hl, hl
    ld a, [hl+]
    add b
    ldh [$2b], a
    ld e, e
    inc d
    rst $38
    ld d, [hl]
    ld d, l
    ld b, l
    add hl, bc
    ld h, a
    ld l, b
    ld [$f109], sp
    ld d, h
    or $e6
    and $f1
    jp nc, $16e1

    ld d, h
    ld d, h
    ld e, e
    ld a, a
    ld d, l
    ld d, [hl]
    ld d, h
    ld l, c
    ld l, d
    ld l, e
    ld d, h
    ld sp, hl
    ldh [rIE], a
    inc l
    dec l
    ld l, $59
    cpl
    inc l
    ld d, h
    dec d
    rst $08
    ld d, $41
    ld b, d
    ld b, [hl]
    xor $e2
    or $e4
    ld d, l
    ld d, [hl]
    db $f4
    and $f0
    jp nc, Jump_028_40e2

    rst $38
    pop hl
    ccf
    ccf
    ld l, h
    ld l, l
    ei
    ld l, [hl]
    ccf
    rst $38
    pop hl
    jr nc, jr_028_782c

    ld [hl-], a
    inc sp
    ccf
    ld b, $ec
    ldh [rSCX], a
    ld b, h
    xor $e3
    or $e7
    and $ec
    jp z, $d2e2

    ldh [$bb], a
    ld [hl], d
    ld [hl], e
    cp $e2
    ld l, a
    ld [hl], b
    ld [hl], c
    or $e3
    inc [hl]
    ld h, c
    dec [hl]
    xor $ed
    db $e4
    push hl
    and $f0
    jp nc, Jump_028_74e0

    ld [hl], l
    cp $eb
    db $fc
    xor $ef
    and $f9
    inc [hl]

jr_028_782c:
    dec [hl]
    ld h, d
    ld h, e
    ld h, d
    db $76
    rst $38
    ld [hl], a
    ld a, b
    ld a, c
    ld [hl], b
    sub l
    ld a, d
    ld a, e
    ld a, h
    rst $38
    ld h, d
    ld h, e
    ld h, h
    ld [hl], $37
    jr c, jr_028_787b

    ld h, e
    rst $38
    ld h, b
    ld h, c
    ld h, h
    ld h, h
    ld h, b
    ld h, c
    ld h, b
    ld h, c
    ld sp, $f662
    ldh [$fc], a
    pop hl
    or $e1
    ld h, d
    ld h, e
    and $e3
    ldh a, [$e3]
    rst $20
    ld b, a
    ld c, b
    ld c, c
    xor $e0
    db $ec
    pop hl
    ld e, [hl]
    ld e, a
    ld a, l
    rst $38
    ld a, [hl]
    ld a, a
    add b
    ld [hl], l
    ld [hl], h
    add c
    add d
    add e
    rst $38
    add h
    ld e, [hl]
    ld e, a
    ld d, h
    ld a, [hl-]
    dec sp
    inc a
    dec a
    rst $38
    ld e, a
    ld e, h
    ld e, l

jr_028_787b:
    ld d, l
    ld d, [hl]
    ld e, h
    ld e, l
    ld e, h
    ld h, e
    ld e, l
    ld e, [hl]
    or $e0
    db $fc
    pop hl
    or $e1
    ld e, [hl]
    ld e, a
    and $e3
    adc $f0
    db $e3
    ld c, d
    ld c, e
    ld c, h
    xor $e0
    db $ec
    pop hl
    ld d, d
    add l
    rst $38
    add [hl]
    add a
    adc b
    adc c
    ld [hl], b
    sub l
    adc d
    adc e
    rst $18
    adc h
    adc l
    ld d, d
    ld c, a
    ld c, [hl]
    rst $38
    pop hl
    ld c, a
    ld d, c
    ccf
    ld d, c
    ld c, a
    ld c, a
    ld d, c
    ld d, b
    ld d, b
    ld a, [$f6e1]
    push hl
    ldh a, [$e7]
    ld [c], a
    and $e8
    ldh a, [$e3]
    pop de
    ldh [rHDMA3], a
    adc [hl]
    ld e, e
    adc a
    db $fd
    sub b
    ld d, $e0
    sub c
    sub d
    sub e
    sub h
    ld d, e
    ld c, l
    nop
    rst $38
    rst $38
    xor $ed
    or e
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    db $f4
    sbc a
    ret z

    jp z, $cacb

    bit 0, b
    adc [hl]
    ld [$c8e0], a
    ldh a, [$e6]
    ldh [$f6], a
    rst $20
    and $f1
    and e
    ld [c], a
    ret


    call z, $cccd
    add hl, bc
    call $8e40
    ld [$c9e0], a
    and $e0
    or $e7
    and $f1
    ld h, e
    ld [c], a
    rst $18
    ld a, $ce
    rst $08
    adc $cf
    ld b, b
    adc a
    adc $cf
    adc a
    ld h, l
    ld h, [hl]
    adc $cf
    or $e7
    and $f1
    inc hl
    ld [c], a
    ld d, l
    rst $28
    ret nc

    pop de
    ret nc

    pop de
    ld b, b
    adc a
    and $d1
    ld h, a
    rlca
    ld l, b
    ret nc

    pop de
    ld b, b
    add c
    or $e3
    and $f1
    db $e3
    rst $18
    rst $38
    rst $38
    ccf
    ld e, e
    jp nc, $d5d4

    call nc, Call_000_00d5
    ld l, [hl]
    ld [$e1e0], a
    jp nc, $e0e6

    or $e7
    and $f1
    and e
    ld [c], a
    db $d3
    sub $d7
    inc de
    sub $d7
    nop
    ld l, [hl]
    ld [$d3e0], a
    and $e0
    or $e7
    and $f1
    sbc $c0
    jp $d9d8


    ret c

    reti


    nop
    ld l, a
    ret c

    reti


    adc a
    ld h, l
    ld h, [hl]
    ret c

    reti


    or $e7
    and $f1
    ret nz

    jp $f7da


    db $db
    jp c, Jump_000_00db

    ld l, a
    rst $20
    db $db
    ld h, a
    ld l, b
    add e
    jp c, Jump_000_00db

    ld h, c
    or $e3
    and $f1
    db $e3
    rst $18
    rst $38
    rst $38
    ld e, e
    sbc a
    call c, $dfde
    sbc $df
    ret nz

    ld l, $ea
    ldh [$dc], a
    ldh a, [$e6]
    ldh [$f6], a
    rst $20
    and $f1
    and e
    ld [c], a
    db $dd
    ldh [$e1], a
    ldh [$09], a
    pop hl
    ret nz

    ld l, $ea
    ldh [$dd], a
    and $e0
    or $e7
    and $f1
    add b
    and e
    rst $28
    ld [c], a
    db $e3
    ld [c], a
    db $e3
    ret nz

    cpl
    ld [c], a
    db $e3
    ld h, l
    rst $00
    ld h, [hl]
    ld [c], a
    db $e3
    or $e7
    and $f1
    add b
    and e
    db $e4
    push hl
    ei
    db $e4
    push hl
    ret nz

    cpl
    add sp, -$1b
    ld h, a
    ld l, b
    db $e4
    ld bc, $c0e5
    ld hl, $e3f6
    and $f1
    db $e3
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_028_79fb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    push af
    nop
    nop
    nop
    ld bc, $ff0e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    cp $fd
    dec bc
    rst $38
    ldh [$e6], a
    rst $38
    jp nc, $2bf6

    ret nz

    pop hl
    cp h
    add sp, -$10
    or d
    rst $20
    and $f1
    jp nc, $8de6

    and $0b
    dec bc
    ld a, [bc]
    dec c
    add b
    ld a, l
    ldh [$fc], a
    pop hl
    or [hl]
    db $e3
    or $e7
    and $f2
    jp nc, $c0e2

    ld [$710d], a
    dec c
    cp a
    ldh [$c0], a
    ld a, [c]
    and $f1
    dec c
    dec c
    ld a, [bc]
    rst $38
    ld [c], a
    add c
    dec c
    and $c3
    ld a, [c]
    ldh [$c0], a
    ldh [$ed], a
    db $e3
    ld a, [$e6ee]
    pop af
    dec c
    rlca
    dec c
    dec l
    dec l
    ret nz

    pop af
    ld [$f8e3], a
    ldh [$f6], a
    and $e6
    db $ed
    ld a, l
    dec c
    call c, $8de2
    adc l
    ld a, [bc]
    dec c
    dec l
    cp d
    pop hl
    inc a
    and b
    db $e3
    or h
    ldh [$8a], a
    adc l
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl]
    push hl
    ld [hl], h
    rst $20
    jr nc, jr_028_7b28

    pop hl
    and $ee
    jp nc, $52e3

    db $ec
    adc d
    adc d
    ld b, c
    db $f4
    and $f2
    ld b, $d2
    rst $28
    adc h
    adc h
    ret nz

    push af
    and $f1
    jp nc, $c0ef

    rst $38
    jp nc, $80ff

    rst $38
    rst $38
    inc e
    push af
    ret nc

    ret


    rst $38
    rst $38
    ld e, [hl]
    jp $ca1e


    db $fd
    pop hl
    dec l
    ld bc, $fc2d
    db $e3
    or $e9
    and $ed
    db $ed
    rst $20
    ret nz

    rst $28
    rst $38
    rst $38
    cp [hl]
    add sp, $01
    ld [$ffff], sp
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
    ld b, b
    sbc a
    nop
    ld b, b
    sub [hl]
    ret nz

    pop af
    ld b, b
    sbc a
    ret nz

    db $ec
    ld b, b
    sbc a
    ld b, b

jr_028_7b28:
    sub [hl]
    inc hl
    ld [c], a
    ld b, b
    sbc a
    nop
    ld b, b
    sub [hl]
    db $e3
    rst $18
    rst $38
    rst $38
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    nop
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    rst $38
    rst $38
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    nop
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_028_7bc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $28
    nop
    nop
    nop
    ld hl, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $0f
    rst $38
    ld a, [$e2e0]
    nop
    reti


    and $d1
    ld [c], a
    di
    ld [$e3e3], a
    and b
    db $fc
    jp z, $b3e2

    pop hl
    sbc e
    ld sp, hl
    nop
    ld a, [hl]
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_028_7bf8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    nop
    nop
    nop
    pop bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_028_7c32

jr_028_7c32:
    cp a
    ld de, $0000
    jr z, jr_028_7c38

jr_028_7c38:
    ld hl, $e2d6
    jr c, jr_028_7bf8

    nop
    ld sp, $ffce
    nop
    ld b, c
    ld b, e
    call c, $f8f2
    ld a, [hl-]
    add $e2
    ld c, b
    ret nz

    db $e3
    ld d, e
    ld d, e
    ld d, e
    or a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    nop
    nop
    nop
    cp $01
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    nop
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
    ld bc, $405e
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_028_7d3d

    jr jr_028_7dad

jr_028_7d3d:
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

jr_028_7d59:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_028_7d95

    cp $ff
    jr nz, jr_028_7d59

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
    jr nz, jr_028_7d59

jr_028_7d95:
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
    ld hl, $7dc1
    call Call_000_23e8
    add sp, $02

jr_028_7dad:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7dc1
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30

    db $80, $03

    jr nz, jr_028_7dca

    rst $30

    db $00, $03

    ret nz

jr_028_7dca:
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

jr_028_7ddc:
    ld a, [hl]
    cp $ff
    jr z, jr_028_7dfe

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
    jr nz, jr_028_7ddc

    ld a, b
    call Call_028_7e08
    ld a, c
    cp $04
    jr nz, jr_028_7ddc

jr_028_7dfe:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_028_7e08:
    push af
    push bc
    push de
    push hl
    push af

Call_028_7e0d:
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

jr_028_7e1e:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $405e
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
    jr nz, jr_028_7e47

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_028_7e1e

jr_028_7e47:
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
