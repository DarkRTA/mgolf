; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

    push de
    ld a, c
    ld a, h
    ld a, d
    ld b, b
    ld b, b
    ld c, b
    ld b, b
    adc h
    ld c, d
    add l
    ld c, a
    or d
    ld d, c
    ld a, [hl+]
    ld d, d

Jump_02e_4010:
    xor e
    ld d, d
    xor h
    ld d, d
    adc b
    ld b, b
    ld [hl-], a
    ld d, e
    ld a, [hl-]
    ld d, e
    db $ed
    ld e, l
    adc $64
    or [hl]
    ld l, c
    inc sp
    ld l, d
    ld a, a
    ld l, d
    ret nc

    ld l, d
    ld a, d
    ld d, e
    cp e
    ld l, l
    jp Jump_000_366d


    ld [hl], l
    ld e, l
    ld [hl], a
    jp nz, $0878

    ld a, c
    ld c, [hl]
    ld a, c
    ld c, a
    ld a, c
    inc bc
    ld l, [hl]
    xor e
    ld d, d
    ld a, a
    ld l, d
    ld c, [hl]
    ld a, c
    nop
    nop
    nop
    nop
    jr z, jr_02e_4078

    nop
    nop
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    jp hl


    ld a, a
    xor h
    ld b, b
    nop
    inc bc
    rst $38
    ld a, a
    ccf
    ld d, $17
    ld bc, $0300
    ld l, d
    jr c, jr_02e_4088

    inc bc
    inc a
    ld [bc], a
    nop
    inc bc
    di
    inc bc
    rst $38
    ld a, a
    ld b, b
    ld bc, $0300
    di
    inc bc

jr_02e_4078:
    ld d, $01
    nop
    ld [bc], a
    nop
    inc bc
    ld c, c
    inc [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]

jr_02e_4088:
    rst $38
    inc a
    rst $08
    ld h, [hl]
    sbc a
    ld b, [hl]
    cp e
    ld b, a
    ld a, [$cfff]
    scf
    sbc a
    ld h, e

jr_02e_4096:
    add a
    ld a, c
    adc a
    ld [hl], e
    rst $38
    ld a, h
    adc e
    rst $10
    ld l, $a5
    ld e, e

Jump_02e_40a1:
    and l

Jump_02e_40a2:
    ld a, a
    rst $38
    rst $28
    ld [hl], l
    rst $28
    cp e
    cp e
    ld a, [hl]
    ld a, [hl-]
    db $ed
    rst $38
    jr jr_02e_4096

    inc l

jr_02e_40b0:
    db $db
    ld a, [hl+]
    db $dd
    ld l, d
    cp a
    rst $38
    xor d
    ld [hl], a
    and [hl]
    ld a, l
    xor l
    ld a, [hl]
    xor l
    rst $18
    rst $38
    jr jr_02e_40b0

    inc a
    rst $08
    inc l
    rst $10
    inc a
    rst $28
    rst $38
    ld l, [hl]

jr_02e_40c9:
    sub a
    ld d, [hl]
    xor e
    ld l, [hl]
    rst $10
    rst $10
    dec hl
    rst $38
    nop
    rst $38
    ld h, [hl]
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    rst $38
    nop
    inc a
    add c
    nop
    db $db
    nop
    rst $38
    nop
    ld a, a
    daa
    ldh a, [$63]
    ldh a, [$71]
    ld hl, sp+$33
    cp $e0
    rst $38
    ld [hl], c
    ld hl, sp+$63
    ldh a, [$27]
    ldh a, [rTAC]
    ld hl, sp-$01
    inc e
    db $e3
    jr nc, jr_02e_40c9

    ld h, b
    sbc a
    ld b, b
    cp a
    rst $38
    pop bc
    ld a, $94
    ld l, e
    add c
    ld a, [hl]
    ldh [rIE], a
    rst $38
    jr c, @-$1f

    inc c
    rst $30
    ld d, [hl]
    xor e
    ld a, [bc]
    rst $30
    rst $38
    ld e, a
    and c
    dec l
    db $d3
    ld a, a
    add c
    rst $38
    inc c
    rst $38
    db $fc
    or e
    ldh a, [$6f]
    ldh [$df], a
    ret nz

    cp a
    ei
    pop bc
    cp [hl]
    ldh [$e1], a
    rst $38
    ld c, $fd
    cp d
    ld a, [c]
    rst $38
    ld l, l
    push hl
    jp c, $94eb

    sbc $a1
    rst $30
    rst $38
    ld [$00ff], sp
    rst $38
    ld e, h
    db $fc
    di
    ldh a, [$7d]
    rst $28
    ldh [$e8], a
    ld e, [hl]
    db $fd
    ld a, [$edf2]
    ldh [$e7], a
    rst $38
    ld bc, $03fe
    db $fd
    dec b
    ld hl, sp+$3b
    pop bc
    rst $38
    ld h, l
    and b
    cp e
    ld bc, $22e7
    cp [hl]
    dec b
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    ldh [$1f], a
    ld a, h
    inc bc
    rst $38
    ld a, [c]
    ld bc, $007f
    or e
    nop
    ld e, a

jr_02e_416c:
    add b
    rst $38
    inc bc
    cp $0e
    db $fc
    inc a
    db $f4
    push hl
    push bc
    rst $38

jr_02e_4177:
    add a
    add l
    add a
    add d
    sbc a
    adc a
    rst $38
    cp b
    rst $38
    ret nz

    rst $38
    ldh a, [$7f]
    db $fc

jr_02e_4185:
    ld l, a
    rst $38
    and e
    rst $38
    cp a
    and c
    ld l, l
    ld b, c
    ld sp, hl
    pop af
    rst $38
    dec e
    rst $38
    cp a
    rst $08
    rst $18
    ld h, $7e
    rst $38
    inc a
    db $eb
    rst $38
    jr z, jr_02e_416c

    ld l, $c9
    cpl
    call z, $e01f
    rst $08
    jr c, jr_02e_4185

    jr z, jr_02e_4177

    db $fc
    db $e3
    ldh a, [$e3]
    call $bf6b
    ld l, e
    or [hl]
    ld h, $ed
    inc l
    ei
    ldh [$e1], a
    ld l, a
    rst $38
    adc h
    rra
    ldh [$8b], a
    ld [hl], l
    rst $10
    xor e
    rst $38

Call_02e_41c1:
    ld sp, hl
    ld a, [hl]
    ret nc

    rst $20
    db $10
    pop hl
    jp Jump_000_07f0


    ldh [rTAC], a
    ei
    nop
    sbc a
    ld [bc], a
    ldh [rIE], a
    nop
    nop
    rst $38
    ld b, $fb
    rst $38
    rra
    ldh a, [$c0]

jr_02e_41db:
    jr nc, jr_02e_41db

    ld [hl], b
    ld hl, sp+$63
    rst $38
    ld hl, sp+$23
    ldh a, [$aa]
    push de
    rst $10
    xor b
    ld a, a
    rst $38
    jp hl


    rla
    rst $30
    ld [hl+], a
    jp nz, $dc3c

    ld c, $ff
    ld a, [c]
    ld bc, $fffe
    dec d
    rst $38
    xor e
    cp $ff
    ld a, a
    call c, $eedb
    db $ed
    ld a, a
    ld a, h
    rst $38
    rst $38
    ret nz

    db $fc
    add e
    ld a, [c]
    db $ed
    ccf
    ret c

    rrca
    rst $18
    push af
    ld d, a
    xor e
    ld a, [bc]
    or $f0
    jp $edf2


    rst $38
    ld a, a
    cp b
    rst $38
    dec c
    ld a, a
    add a
    cp $12
    ei
    rst $38
    dec bc
    call nc, $ffe1
    push hl
    ccf
    jp c, $fd0f

    rst $30
    ldh [$e7], a
    rst $38
    push hl
    ld a, a
    cp d
    rst $38
    rrca
    cp $e0
    rst $20
    push hl
    ld [hl+], a
    ei
    ld b, [hl]
    rst $18
    ccf
    db $fd
    rst $38
    ld a, [hl]
    sub $6c
    cp $54
    rst $38
    ld d, h
    xor e
    rst $38
    ld d, l
    and a
    ld b, h
    db $dd
    ld h, b
    ei
    db $fc
    cp a
    rst $38
    ld a, [hl]
    ld l, e
    ld [hl], $7f
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    push de
    rst $38
    xor d
    ei
    db $eb
    ld e, e
    bit 7, d
    ld hl, sp-$35
    ld a, a
    ret z

    db $db
    set 7, e
    cp e
    sbc d
    adc b
    ld d, l
    ret nz

    rst $38
    rst $10
    sbc $d3
    ld e, $1f
    rst $10
    inc de
    rst $18
    cp a
    db $d3
    rst $18
    db $dd
    rla
    ld de, $9fff
    ret nz

    ld bc, $feff
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$48
    or b
    db $10
    ld a, a
    ldh [rNR43], a
    ret nz

    ld d, b
    add b
    nop
    rst $38
    cp [hl]
    pop bc
    rst $38
    xor b
    scf
    db $10
    rra
    ld c, d
    dec c
    dec h
    ld b, $ff
    ld a, d
    inc bc
    inc b
    ei
    add hl, bc
    or $02
    db $fc
    rst $38
    dec h
    ret c

    ld a, [bc]
    ldh a, [rNR22]
    ldh [$3e], a
    ret nz

    rst $38
    ld e, l
    and b
    add d
    nop
    ld b, h
    nop
    add d
    nop
    rst $38
    inc b
    nop
    adc d
    nop
    dec h
    nop
    ld c, $00
    rst $38
    ld d, l
    nop
    cp a
    ld bc, $147f
    rst $38
    dec hl
    rst $38
    ld a, a
    dec e
    rst $38
    cpl
    ld a, a
    rla

Call_02e_42cf:
    rst $38
    ccf
    rst $38
    rst $38
    ld d, a
    ld b, b
    cp a
    and h
    db $db
    ret nz

    ld a, a
    rst $38
    add sp, -$49
    ld a, [c]
    db $fd
    ld hl, sp-$11
    db $fc
    rst $30
    rst $38
    ld a, [$3ad5]
    ret nz

    ld a, a
    add b
    cpl
    ret nc

    rst $38
    ld d, l
    xor d
    dec bc
    db $f4
    ld hl, $04de
    ei
    rst $38
    nop
    rst $38
    adc [hl]
    nop
    rst $18
    nop
    xor [hl]
    inc b
    cp $28
    ret nz

    inc b
    ld e, a
    xor d
    xor d
    ld d, l
    dec b
    ld a, [$ccfe]
    ldh [$5f], a
    rst $38
    cpl
    rst $38
    ld a, l
    rst $38
    xor d
    rst $38
    ld a, [$d555]
    xor d
    and b
    ld e, a
    db $fc
    ei
    rst $38
    cp $55
    db $f4
    xor e
    xor d
    ld d, l
    ret nc

    xor a
    rst $28
    add h
    ld a, e
    jr nz, @-$1f

    reti


    ldh [$fb], a
    adc c
    db $76
    rst $38
    ld b, d
    inc a
    and l
    jr c, jr_02e_434e

    db $10
    ld c, a
    ld [$26ef], sp
    inc b
    ld a, e
    ld [bc], a
    ldh a, [$e0]
    or $c2
    ld a, h
    rst $38
    db $e4
    cp b
    ld hl, sp-$10
    ldh a, [$e0]
    ld [c], a
    ret nz

    rst $38
    ret nc

    add b
    rst $38

jr_02e_434e:
    cp a
    rst $38
    ld e, [hl]
    ld a, [hl]
    inc l
    ld sp, hl
    cp l
    ldh [$e6], a
    and b
    ldh [$80], a
    xor $44
    db $fc
    and b
    db $fc
    ldh [$e5], a
    ldh a, [$e3]
    rst $38
    and b
    rst $38
    db $f4
    rst $38
    ld_long $ffef, a
    db $f4
    cp $d3
    ld e, h
    ldh [$5e], a
    cp $2c
    rst $38
    db $fd
    ld a, b
    ld a, [$f7b0]
    ld h, b
    cp $40
    ei
    db $fd
    and b
    ld [hl], b
    db $e3
    db $fc
    nop
    ld hl, sp+$00
    ld d, b
    rst $28
    and b
    and d
    ld b, b
    ld d, b
    or b
    pop hl
    ld e, a
    ld a, a
    cpl
    rst $18
    cp a
    dec a
    rra
    ld a, [de]
    ld c, [hl]
    nop
    ld [c], a
    dec de
    ld hl, sp-$01
    ld a, a
    rst $28
    rst $38
    xor b
    xor b

jr_02e_43a0:
    add b
    rst $38
    xor b
    db $e3
    ld a, a
    rst $38
    or $f1
    dec bc
    jp nz, $e8fa

    inc e
    db $e3
    inc h
    rst $38
    rst $00
    ld b, [hl]
    add l
    ld c, [hl]
    add a
    xor a
    ld c, $ff

jr_02e_43b8:
    rst $28
    rrca
    rst $38
    ld c, [hl]
    inc a
    db $ed
    add b
    jr nz, jr_02e_43a0

    ld [bc], a
    ld a, a
    db $fd
    db $10
    rst $28
    ld [$40f7], sp
    cp a
    nop
    pop hl
    rst $38
    db $10
    rst $28
    jr jr_02e_43b8

    ld e, b
    and a
    ld [$7fff], sp
    ld [bc], a
    db $fd
    and $19
    db $76
    adc e
    inc b
    call nz, Call_02e_7e80
    db $fd
    db $e3
    cp e
    cp e
    rst $38
    rst $38
    xor $ee
    ld hl, sp-$1f
    ei
    xor $ee
    db $fc
    pop hl
    ld d, l
    ld d, l
    cp e
    cp e
    ld d, l
    pop af
    ld d, l
    ld hl, sp-$1f
    reti


    ret nz

    db $fc
    ldh [rLY], a
    ld b, h
    xor d
    xor d
    db $db
    ld de, $f811
    pop hl
    ld de, $fc11
    pop hl
    nop
    nop
    rst $08
    ld b, h
    ld b, h
    nop
    nop
    ld hl, sp-$1f
    cp $ef
    ld [$ff08], sp
    inc bc
    inc bc
    ld b, $06
    daa
    daa
    adc a
    adc a
    rst $38
    ccf
    ccf
    add b
    add b
    ld [$e008], sp
    ldh [rIE], a
    cp b
    cp b
    db $ec
    db $ec
    cp $fe
    ei
    ei
    ld hl, sp+$10
    ret nz

    rst $08
    db $e4
    add sp, -$1d
    cp c
    cp c
    ld l, a
    ld l, a
    ld a, a
    sbc c
    ld a, a
    ld a, e
    pop hl
    or h
    push hl
    db $fd
    db $fd
    ld l, l
    db $e3
    and h
    push hl
    db $ec
    rst $18
    db $ec
    rst $38
    rst $38
    or $f6
    ldh [$e7], a
    inc b
    inc b
    cp a
    nop
    nop
    adc a
    adc a
    inc a
    inc a
    ret z

    push hl
    ld b, b
    rst $38
    ld b, b
    nop
    nop
    adc b
    adc b
    ldh [$e0], a
    ldh a, [$9f]
    ldh a, [$d2]
    jp nc, $f8f8

    and b
    rst $20
    ld l, b
    pop hl
    db $10
    rst $38
    db $10
    ret nz

    ret nz

    ld [bc], a
    ld [bc], a
    jr nz, jr_02e_449a

    rlca
    sbc a
    rlca
    sbc l
    sbc l
    ccf
    ccf
    sub [hl]
    push hl
    dec c
    db $e3
    cp a
    cp l
    cp a
    dec b
    db $e3
    db $fc
    db $fc
    rst $28

jr_02e_448d:
    rst $28
    ld_long $ffe7, a
    rst $38
    rst $38
    ld a, [c]
    ld a, [c]

jr_02e_4495:
    ret c

    ret c

    db $fc
    db $fc
    db $f4

jr_02e_449a:
    or a
    db $f4
    cp $fe
    push hl
    pop bc
    ei
    ei
    ld d, d
    jp hl


    jr c, jr_02e_448d

    jr c, jr_02e_4495

    db $ed
    rst $08
    push bc
    inc b
    push hl
    db $fc
    db $fc
    rst $30
    reti


    rst $30
    call nc, $f4e1
    rst $08
    ld [hl+], a
    ld [hl+], a
    or $c1
    ld [hl+], a
    ld [hl+], a
    rst $38

jr_02e_44bd:
    dec d
    push de
    ld a, [bc]
    ld [$f707], a
    nop
    ld hl, sp-$01
    ld bc, $00fd
    cp $00
    cp $22
    ld [hl+], a
    db $fc
    xor [hl]
    pop bc
    jr nc, jr_02e_44bd

    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, a
    ldh a, [rSC]
    ld a, [$fc00]
    nop
    rst $38
    xor d
    pop bc
    or $ac
    jp Jump_02e_5555


    and h
    pop bc
    ld a, [hl+]
    ld a, [hl+]
    dec d
    sub l
    cpl
    nop
    ret nz

    dec b
    push hl
    rst $18
    and b
    db $fc
    ret nz

    pop hl
    ld [hl], b
    pop bc
    db $fc
    db $e4
    push hl
    ldh [$e3], a
    nop
    ret nz

    ld a, [bc]
    ld [$f505], a
    ld h, e
    inc bc
    ei
    and b
    db $e3
    ld [c], a
    pop hl
    ld c, [hl]
    pop bc
    rst $38
    rst $38
    sub $e3
    ld hl, sp-$2e
    pop hl
    ret nc

    jp hl


    ld b, [hl]
    ret nz

    ret nz

    inc b
    db $e4
    nop
    ldh a, [$fb]
    ld bc, $b0f9
    db $e3
    ld l, [hl]
    ld l, [hl]
    ld d, l
    push de
    dec sp
    ld a, a
    cp e
    dec d
    push de
    ld a, [de]
    ld_long a, $ff0f
    ld a, [hl]
    ldh [$fd], a
    cp $30
    pop bc
    ld bc, $0601
    ld b, $0c
    inc c
    cp a
    jr c, jr_02e_4577

    ld [hl], h
    ld [hl], h
    ret c

    reti


    ld d, [hl]
    ret nz

    and b
    rst $38
    nop
    jr c, jr_02e_454a

jr_02e_454a:
    ld e, h
    nop
    cp a
    nop
    ld a, a
    jp z, Jump_02e_40a1

    cp a
    db $10
    ret z

    add b
    ld c, b
    ld [c], a
    rst $38
    xor d
    ld bc, $fc01
    ldh a, [$a9]
    add $e1
    inc bc
    inc bc
    rrca
    rrca
    rra
    rra
    ei
    ld a, a
    ld a, a
    or b
    jp $ffff


    ldh a, [$f2]
    ldh [rIE], a
    push hl
    ret nz

    jp $a6a0


jr_02e_4577:
    ret nz

    res 0, b
    rst $18
    sub l
    ld b, b
    ld b, d
    xor b
    xor b
    ld b, b
    and h
    cp $00
    ld a, a
    rst $30
    nop
    ld a, l
    nop
    xor d
    nop
    ld d, h
    ld a, [de]
    ld [c], a
    rst $38
    db $dd
    nop
    or $01
    xor c
    inc bc
    ld d, e
    rrca
    rst $38
    adc a
    ld e, $1e
    ld b, $06
    dec c
    dec c
    ld [hl], $ff
    ld [hl], $7c
    ld a, h
    ld hl, sp-$08
    db $f4
    db $f4
    ret c

    ld [hl], a
    reti


    ldh a, [$f0]
    db $76
    ldh [$3f], a
    nop
    ld l, a
    ld [hl], d
    ldh [$9f], a
    ld a, e
    nop
    sbc $00
    ld [hl], l
    adc $e0
    db $76
    rst $20
    xor d
    cp $f1
    ld h, b
    nop
    ld [hl], l
    ld [hl], l
    ld e, $de
    rrca
    rst $28
    ld a, [hl]
    sub b
    rst $00
    ld bc, $aa01
    xor d
    rst $10
    rst $10
    and b
    and a
    cp a
    ld [hl], l
    ld [hl], l
    db $eb
    db $eb
    rst $18
    rst $18
    sub b
    and a
    add sp, -$09
    add sp, -$2b
    push de
    ld b, b
    jp z, Jump_02e_4010

    ld b, e
    xor b
    ld e, a
    xor a
    ldh a, [rIE]
    nop
    rra
    sbc b
    ldh [$7f], a
    inc c
    ld [c], a
    cp $fc
    ld h, b
    ld hl, $0ade
    push af
    dec d
    ld_long $ff2f, a
    ret nc

    sbc [hl]
    ld h, b
    db $10
    rst $28
    add l
    ld a, d
    ld a, [hl+]
    rst $38
    push de
    ld d, a
    xor b
    cp h
    ld b, b
    ldh [rSB], a
    nop
    rra
    rrca
    dec b
    ccf
    nop
    rst $38
    rst $18
    add c
    ld hl, sp+$20

jr_02e_4619:
    push af
    and b
    rst $38
    xor b

jr_02e_461d:
    rst $38
    ld d, l
    rst $38
    ld b, b

jr_02e_4621:
    cp a
    add hl, bc
    or $ff
    and d
    ld e, l
    ld d, l
    xor d
    db $eb
    inc d
    ccf
    nop
    rst $28
    ld a, [bc]
    add b
    dec d
    ret nz

    ldh [$e5], a
    add b
    nop
    nop
    rst $38
    ld a, $14
    ld a, a
    ld a, [hl+]
    ld a, a
    db $10
    rst $28
    ld b, d
    rst $38
    cp l
    xor b
    ld d, a
    call nc, $f92b
    ld b, $14
    rst $38
    dec bc
    ld a, [de]
    push bc
    adc h
    jp $d02c


    ld e, b
    rst $38
    and c
    jr c, jr_02e_4619

    ld d, c
    and e
    jr nc, jr_02e_4621

    ld d, b
    ld [hl], e
    and a
    ld [hl-], a
    db $fc
    ldh [$3b], a
    ld b, c
    xor b
    db $fc
    ld d, c
    rst $28
    ld h, b
    rst $18
    ld bc, $82f0
    ldh [rTIMA], a
    ret nz

    ldh [rP1], a
    rla

jr_02e_4671:
    rst $38
    nop
    nop
    ld d, b
    nop
    add b
    ld [bc], a
    nop
    ccf
    rst $38
    sub l
    ccf
    ld a, [bc]
    ccf
    ld a, [bc]
    ret nz

    db $10
    add b

Jump_02e_4683:
    rst $08

jr_02e_4684:
    jr nz, jr_02e_468d

    ld [bc], a
    rrca
    ld [hl], b

jr_02e_4689:
    ret nz

    sub d
    ldh [$a8], a

jr_02e_468d:
    rst $38
    xor $6a
    pop bc
    ld d, l
    rst $38
    xor d
    dec b
    ld b, c
    ret nc

    inc b
    add b
    ld a, a
    jr z, jr_02e_461d

    ld a, [bc]

jr_02e_469d:
    push hl
    inc c
    db $e3

Jump_02e_46a0:
    ld c, d
    db $fc
    ldh [rIE], a
    ld a, [bc]
    ld b, l
    inc e
    inc bc
    ld a, [de]
    dec b
    inc c
    jp $30ff


    pop bc
    ld e, h
    and b
    jr z, jr_02e_4684

    sbc h
    ld h, c
    rst $38
    jr z, jr_02e_4689

    jr jr_02e_469d

    add hl, hl
    db $d3
    sbc b
    ld h, e
    rst $38
    ld [bc], a
    nop
    ld bc, $1038
    db $fc

Call_02e_46c5:
    xor c
    db $fc
    rst $38
    nop
    db $fc
    ld bc, $42f0
    ldh [$84], a
    ldh [rIE], a
    add b
    rra
    ld b, b
    rra
    add l
    rrca

jr_02e_46d7:
    ld b, b
    rrca
    ei
    and b
    ld bc, $e29c
    cpl
    nop
    db $fd
    nop
    db $fc

jr_02e_46e3:
    rst $30
    ld d, c
    ld hl, sp-$5e
    add d
    ldh [rSC], a
    nop
    inc d
    nop
    rst $38
    jr z, jr_02e_4671

    db $10
    inc bc
    ld hl, $4003
    rlca
    rst $18
    add b
    rra
    ld a, [bc]
    ccf
    dec d
    ldh a, [$c1]
    rst $38
    adc d
    rst $30
    push hl
    ld c, h
    db $e3
    sbc h
    ldh [$c3], a
    sbc d
    push bc
    inc d
    rst $38
    rr c
    add [hl]
    inc [hl]
    dec bc
    jr z, jr_02e_46e3

    ld e, h
    rst $38
    and b
    jr c, jr_02e_46d7

    ld d, b
    and e
    ld sp, $52c7
    dec e
    and a
    inc a
    ldh [$a3], a
    nop
    pop bc
    ld d, b
    ldh [$c9], a
    nop
    ld l, h
    db $e4

jr_02e_4729:
    ei
    rst $38
    dec b
    ld hl, sp-$1c
    ld d, h
    cp $a0
    cp $00
    rst $38
    ld hl, sp+$02
    ldh a, [rNR10]
    add e
    ld hl, $0087
    cp a
    rlca
    jr nz, @+$11

    ld b, d
    rrca
    and l
    adc d
    pop hl
    inc bc
    rst $30
    xor d
    rst $38
    ld d, h
    ld [bc], a
    pop bc
    rst $38
    xor b

jr_02e_474e:
    cp $54
    cp $e2
    add b
    nop
    db $fc
    ld l, b
    rla
    ld d, b
    cpl
    ld h, h
    rst $38
    dec de
    ld d, b
    cpl
    ld h, b
    rra
    ret nc

    cpl
    and b
    rst $38
    ld e, a

jr_02e_4765:
    ret z

    scf
    jr c, jr_02e_4729

    ld e, a
    and b
    ld a, [hl+]
    rst $08
    push de
    dec d
    ld [$4e00], a
    ld h, b
    or b
    ld [c], a
    ccf
    add b
    rst $38
    rrca
    ldh [rSB], a
    ld a, h
    add b
    xor a
    ld d, b
    ld d, l
    rst $38
    xor d
    ld a, [bc]
    push af
    jr nz, jr_02e_4765

    ld b, l
    ldh [$8f], a
    rst $38
    ldh [$0a], a
    push bc
    dec e
    ld [bc], a
    ld a, [$5405]
    rst $38
    xor e
    xor b
    ld d, a
    ld [bc], a
    db $fd
    ld d, b
    ld bc, $ffe8
    ld bc, $40bc
    ld d, [hl]
    xor b
    dec hl
    call nc, $bf85
    ld a, d
    ld [de], a
    db $ed
    nop
    rst $38
    xor c
    or h
    ret nz

    ld bc, $f8f3
    inc bc
    rst $30
    and b
    scf
    ld h, c
    nop
    rst $38
    and b
    ld e, a
    ld a, a
    ld b, b

jr_02e_47bb:
    cp a
    sub b
    ld l, a
    ld b, b
    cp a
    add b
    ld [hl-], a
    and b
    pop af
    ld b, b
    cp h
    ret nz

    add b
    jr nz, jr_02e_47e1

    jr nz, jr_02e_474e

    rst $38
    inc sp
    rst $08
    rst $38
    ld d, a
    adc a
    ld d, l
    adc a
    ld h, [hl]
    sbc a
    inc b
    rst $38
    ld a, a
    ldh a, [rIE]
    ld e, b
    rst $38
    xor c
    rst $38
    db $fc
    ld l, h

jr_02e_47e1:
    ld h, b
    push af
    ld d, l
    ld bc, $4020
    xor [hl]
    ld b, b
    ld h, [hl]
    add c
    inc a
    jp $d8fa


    pop hl
    rla
    ld [hl-], a
    ldh [$82], a
    rst $38
    jr c, @+$01

    ld l, a
    db $e4
    jr jr_02e_47bb

    rst $00
    ld b, c
    xor d
    db $10
    ret nz

    cp d
    ldh [rIE], a
    ld [de], a
    rst $38
    push de
    pop bc
    ret nc

    ldh [$fe], a
    ld a, d
    ret nz

    ld d, [hl]
    adc e
    ld b, b
    rlca
    rst $38
    ld [hl], a
    dec c
    rst $38
    ld a, [hl+]
    add e
    ld b, b
    rra
    rst $38
    dec [hl]
    ld l, b
    ret nz

    db $fd
    rst $38
    add sp, -$20
    ld d, [hl]
    rst $38
    xor h
    rst $38
    ld hl, sp-$01
    ld a, a
    ldh [rIE], a
    ld b, d
    rst $38
    ret z

    rst $30
    cpl
    ld l, c
    ld b, b
    dec e
    ld a, [de]
    ret c

    and b
    rra
    rst $38
    inc b
    add [hl]
    ldh [rVBK], a
    ld h, b
    inc b
    ld h, b
    push af
    xor [hl]
    ld [c], a
    ldh [rSCY], a
    call z, Call_000_38c0
    rst $00
    ld d, e
    adc a
    xor c
    db $fc
    add b
    ldh [$9c], a
    pop hl
    ld l, h
    add sp, -$40
    db $fc
    jp z, Jump_000_3fe0

    xor e
    rst $38
    ld a, [hl]
    sbc $c0
    ld l, l
    adc d
    ldh [$82], a
    xor d
    ret nz

    cpl
    cp a
    rst $38
    sbc c
    rst $20
    ld de, $83ef
    ld h, l
    nop
    ld e, $f4
    scf
    nop
    dec a
    ld h, c
    xor a
    ld [hl], h
    add sp, -$01
    rst $38
    call nc, Call_02e_7fff
    ld [hl-], a
    rst $08
    inc bc
    rst $38
    and c
    rst $38
    add h
    ld l, [hl]
    ldh [$df], a
    ld c, h
    di
    ret z

    rst $30
    ld bc, $a0e6
    ld a, b
    rst $38
    ld a, a
    ret nz

    rst $38
    ld [$3eff], sp
    rst $38
    ld l, d
    ld e, [hl]
    ldh [rBGP], a
    cp $ff
    ld a, d
    ld e, h
    and b
    or [hl]
    jr nz, @+$60

    ldh [$bd], a
    ld d, [hl]
    ldh [$d5], a
    db $10
    ld e, $e0
    ld e, [hl]
    ld c, $e0
    db $e4
    ld e, a
    jr nz, @+$62

    rst $38
    ld d, l
    ret z

    ldh a, [$e0]
    ld bc, $e00e
    sbc [hl]
    or a
    nop
    dec [hl]
    sbc [hl]
    ldh [$7d], a
    ld b, e
    ret z

    ldh [$0b], a
    rst $38
    ld [bc], a

Call_02e_48c2:
    rst $38
    adc a
    db $f4
    jp nz, $afd5

    inc a
    ldh [rSC], a
    ld d, d
    ret nz

    xor l
    inc [hl]
    ldh [$f2], a
    rst $38
    push af
    call nz, $e0c4
    ld b, b

jr_02e_48d7:
    add d
    ld [hl+], a
    ld bc, $7cff
    rst $38
    push af
    sub $5a
    ldh [$fe], a
    jp nc, $d5c0

    rst $38
    jr nz, @+$01

    ld a, a
    add b
    rst $38
    ret nc

    rst $38
    ld c, b
    rst $38
    ld [c], a
    ld c, $e0
    db $dd
    xor h
    ldh a, [$c0]
    nop
    rst $38

jr_02e_48f8:
    ld b, $f6
    ret nz

    jr c, @+$01

    rst $38
    jr nc, jr_02e_48f8

    ld h, e
    ldh a, [$67]
    ldh a, [$27]
    ldh a, [rIE]
    ld bc, $01fe
    cp $05
    cp $21
    cp $ff
    add c
    ldh a, [rIF]
    adc $3b
    cp d
    ld l, a
    rst $28
    rst $38
    jr nc, jr_02e_492a

    inc c
    inc bc
    jr nc, jr_02e_492e

    call nz, $ff3f
    ld [hl], c
    ld a, a
    db $fc
    rst $38
    sbc $ff
    db $76
    rst $38

jr_02e_492a:
    ld a, a

jr_02e_492b:
    dec sp
    ei
    rrca

jr_02e_492e:
    rst $38
    ld b, c
    cp $15
    ld d, $e0
    db $fd
    dec d
    add [hl]
    ldh [rP1], a
    rst $38
    sbc $fd
    db $fc
    di
    ld e, a
    ld [hl], c
    adc a
    ld d, h
    rst $38
    ld a, [$e024]
    and b
    or [hl]
    and d
    rst $38
    jr nz, jr_02e_492b

    db $10
    rst $28
    ld [de], a
    db $fd
    ld b, h
    cp e
    rst $30
    inc h
    rst $18
    jr nz, jr_02e_48d7

    db $e3
    cp $06
    ld hl, sp+$19
    rst $38
    ldh [$66], a
    add b
    reti


    ld b, b
    rst $20
    ld bc, $ffdf
    ld b, [hl]
    ld h, b
    sbc a
    ld hl, sp+$47
    ld a, [hl]
    ld bc, $fffd
    ld b, b
    ld a, a
    nop
    db $dd
    ld b, b
    rst $20
    add b
    sbc e
    rst $38
    ld h, d
    cp $19
    ei
    ld h, a
    rst $28
    rra
    cp l
    rst $18
    ld a, [hl]
    sub $6c
    xor $44
    cp $e0
    ld d, l
    rst $30
    rst $38
    ld hl, sp+$6d
    sbc [hl]
    rst $38
    ld l, [hl]
    ei
    ld h, [hl]
    rst $30
    db $fd
    ld h, d
    cp $e0
    ld [bc], a
    rst $30
    ld l, d
    nop
    rst $38
    rlca
    rst $38
    ld hl, sp+$18
    ldh [$27], a
    ret nz

    ld e, b
    add b
    rst $20
    rst $38
    ld b, b
    rst $18
    rlca
    rst $38

jr_02e_49ab:
    ld e, b
    ldh a, [rIF]
    jr nc, @+$01

    cpl
    ldh a, [rIF]
    ccf
    jr nz, jr_02e_49ab

    nop
    ei
    rst $38
    ldh [$f5], a
    nop
    ld a, e
    ldh [$fb], a
    daa
    rst $28
    db $dd
    ld e, a
    pop af
    ret nz

    ld h, d
    rst $38
    ld e, d
    cp $e1
    and l
    ld e, d
    ei
    push af
    ldh [$37], a
    ret nz

    cp $ff
    nop
    or a
    sub d
    ei
    dec h
    nop
    cp $e0
    jp c, $f807

    add hl, de
    pop hl
    rst $28
    daa
    ret nz

    db $db
    inc bc
    jp nz, $fbe3

    daa
    ldh [rIE], a
    rra
    jr c, jr_02e_49f5

    db $ec
    inc bc
    ccf
    nop
    db $ed
    rst $38
    nop

jr_02e_49f5:
    ld e, a
    ld b, b
    push hl
    nop
    db $db
    ldh [$ef], a
    rst $38
    ld e, [hl]
    sbc $3c
    or $7c
    rst $18
    ld h, [hl]
    rst $28
    db $fd
    ld b, l
    cp $e1
    xor d
    ld d, l
    cpl
    ldh [rLCDC], a
    ret nz

    ld a, a
    ld h, c
    ret nz

    ccf
    rst $28
    ld b, b
    ret nz

    ld h, l
    ld_long a, $ffe2
    db $fc
    inc bc
    ld [bc], a
    ld bc, $0142
    db $fc
    rst $30
    rst $30
    ld [bc], a
    ld bc, $fad2
    ld [c], a
    ld l, e
    ret nz

    ccf
    rst $38
    rst $38
    inc bc
    cp $02
    cp $03
    cp $0a
    cp $7f
    ld d, [hl]
    cp $0b
    rst $38
    ld [$fc01], a
    ld b, b
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nc

    ld a, a
    ld [$a97f], a
    ret nc

    ld d, l
    add hl, hl
    ld b, h
    ld [bc], a
    inc bc
    jp nc, $03e0

    adc h
    and b
    ld e, $ff
    cp $79
    ld hl, sp+$67
    ret nz

    ld l, l
    ldh [$c0], a
    rst $38
    rst $38
    jr nz, jr_02e_4aa1

    ld d, b
    rra
    ld l, b
    rrca
    ld [hl], h
    rst $38
    rlca
    jp c, Jump_02e_7603

    rlca
    ret c

    rra
    ld h, a
    ccf
    ldh [$6d], a
    pop hl
    ld h, a
    rst $20
    dec de
    xor [hl]
    ldh [$b2], a
    pop hl
    adc a
    nop
    rst $38
    ld h, b
    ld a, a
    or d
    ldh [$b0], a
    ldh [$b2], a
    db $e3
    nop
    ld bc, $00ff
    nop
    nop
    xor c
    dec sp
    rst $38
    rst $38
    db $e3
    ld [c], a
    inc [hl]
    rst $38
    db $eb
    ld c, d
    rst $38
    push hl
    ld a, [hl-]
    adc b
    rst $38
    rst $38
    db $e3
    ld [c], a
    ret nz

    push af
    add hl, sp

jr_02e_4aa1:
    rst $38
    rst $38
    db $e3
    ld [c], a
    add b
    push af
    jr c, jr_02e_4ab1

    rst $38
    rst $38
    db $e3
    ld [c], a
    ld b, b
    push af
    or e
    rst $38

jr_02e_4ab1:
    rst $38
    db $e3
    ld [c], a
    ret nz

    rst $38
    ret nz

    rst $38
    inc b
    ret nz

    rst $38
    ret nz

    ld sp, hl
    inc a
    rst $38
    ld [c], a
    ret nz

    rst $38
    ret nz

    or $3d
    pop bc
    ret nz

    xor $3c
    add $df
    ret nz

    push bc
    inc a
    inc [hl]
    sbc [hl]
    sbc [hl]
    ret nz

    rst $28
    ld b, [hl]
    rst $18
    ld e, $40
    push bc
    inc a
    inc [hl]
    dec b
    dec b
    add b
    rst $28
    add $bf
    ret nz

    and l
    rra
    inc a
    nop
    dec b
    dec b
    nop
    nop
    xor $46
    cp a
    ld b, b
    and l
    rra
    inc a
    db $10
    dec b
    dec b
    db $10
    ret nz

    adc $aa
    jp $ffff


    sbc [hl]
    add b
    ret nz

    rlca
    dec b
    dec b
    ld b, $c0
    rst $38
    ret nz

    rst $30
    rla
    rst $30
    dec b
    dec b
    ld d, $40
    adc $5c

Call_02e_4b0d:
    ld e, c
    ld e, d
    ld e, e
    dec sp
    ld e, h
    ld e, l
    ret nz

    rst $28
    ld b, e
    ld b, h
    ld b, l
    di
    ld [$f580], a
    rst $38
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld c, l
    adc $ff
    ldh [$3d], a
    ld a, $3f
    ld sp, hl

Call_02e_4b2c:
    pop hl
    db $fc
    ld [c], a
    ld b, [hl]
    ld b, a
    add a
    ld c, b
    ld c, c
    ld c, d
    ld a, [c]
    ld [c], a
    ld [$f3e0], a
    pop hl
    add b
    push af
    ld hl, $65ff
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [hl], $36
    ld c, [hl]
    cp a
    ld c, a
    ld c, a
    ld b, b
    ld b, c
    ld b, d
    ld c, a
    rst $38
    pop hl
    ld c, [hl]
    cpl
    inc [hl]
    inc [hl]
    ld c, [hl]
    ld c, e
    rst $38
    ldh [$4c], a
    ld a, [c]
    ld [c], a
    ld [$bce0], a
    di
    pop hl
    add b
    and b
    inc b
    inc d
    inc d
    inc b
    add b
    xor [hl]
    inc h
    or a
    dec h
    ld bc, $ff36
    db $e4
    ld d, b
    ld d, c
    rst $38
    db $e3
    inc [hl]
    rla
    ld b, $07
    inc [hl]
    push af
    db $e3
    ld d, b
    jp z, $ea60

    db $e4
    ld b, b
    or l
    rst $38
    ld sp, $1129
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ei
    ld bc, $fe36
    pop hl
    inc [hl]
    inc [hl]
    ld d, d
    ld d, e
    ld d, d
    rst $30
    inc [hl]
    ld d, $17
    ld sp, hl
    ldh [rHDMA3], a
    ld d, d
    inc bc
    xor h
    cp a
    xor l
    and e
    adc h
    adc e
    adc d
    sbc h
    db $f4
    ldh [rHDMA3], a
    db $fd
    ld d, e
    add b
    ld [hl], l
    inc h
    dec h
    ld [hl], $92
    sub e
    sub h
    ld a, a
    sub l
    sub [hl]
    ld de, $1101
    ld [hl], $11
    db $76
    ldh [$f6], a
    ld e, b
    ld h, c
    scf
    scf
    ld d, d
    ld h, b
    and e
    and e
    inc de
    xor [hl]
    rst $38
    xor [hl]
    inc [hl]
    sub c
    sub b
    adc a
    adc [hl]
    sbc l
    ld d, h
    rst $30
    ld d, l
    ld d, l
    ld d, l
    ld b, b
    ld [hl], l
    ld sp, $3629
    adc l
    rst $38
    adc [hl]
    adc a
    sub b
    sub c
    ld bc, $0611
    rlca
    cp $fe
    db $e3
    ld [hl], $00
    scf
    scf
    nop
    and e
    ld b, $ff
    rlca
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    sub [hl]
    sub l
    ld a, a
    sub h
    sub e
    sub d
    inc [hl]
    ld d, [hl]
    ld d, [hl]
    ld d, [hl]
    add b
    ld hl, sp-$01
    adc b
    adc c
    adc d
    adc e
    adc h
    ld de, $1806
    rst $38
    add hl, bc
    add hl, de
    rla
    ld d, $17
    ld d, $08
    rlca
    ei
    db $10
    ld b, $fd
    ldh [rNR23], a
    rla
    inc de
    inc de
    dec b
    rst $38
    dec b
    inc de
    sbc e
    sbc d
    sbc c
    sbc b
    sub a
    and e
    pop af
    ld d, a
    ret nz

    ld b, d
    ccf
    adc c
    nop
    add sp, $01
    ld [hl], $0c
    dec c
    rst $38
    ld [hl], $01
    ld b, $18
    ld [$0a1a], sp
    rlca
    cp e
    sbc a
    and b
    ld hl, sp-$20
    rlca
    ld d, $17
    ld a, [$b4e1]
    ld l, l
    or l
    add b
    ldh [$03], a
    and e
    ld [hl], $e0
    inc bc
    inc [hl]
    ret nz

    ld b, d
    rst $18
    inc a
    ld [hl-], a
    ld [hl-], a
    or b
    xor a
    ret nz

    db $ed
    inc h
    dec h
    ccf
    ld de, $1c36
    dec e
    ld [hl], $11
    add [hl]
    ldh [$82], a
    ldh [$bb], a
    and c
    and d
    ld hl, sp-$1f
    ld b, $07
    ld d, $74
    ldh [$b6], a
    push af
    or a
    add b
    ldh [rNR13], a
    scf
    ldh [$a3], a
    inc de
    and e
    ld e, b
    cp [hl]
    ret nz

    ld b, c
    inc a
    inc sp
    inc sp
    or d
    or c
    add b
    db $ed
    jr z, @+$01

    add hl, hl
    ld bc, $0501
    dec b
    ld bc, $0601
    ld l, h
    add h
    pop hl
    ld e, $a0
    or b
    xor a
    jp nz, $17e0

    ld b, $74
    ldh [$e0], a
    nop
    pop hl
    db $ec
    ret nz

    ld [hl], b
    ldh [$e6], a
    pop bc
    call nz, $0561
    dec b
    ld [hl], $fd
    ld [hl], $40
    db $ed
    rlca
    ld [hl], $11
    ld de, $0505
    ld sp, hl
    ld de, $e080
    add h
    pop hl
    dec b
    dec b
    or d
    or c
    ld d, $87
    rla
    scf
    scf
    ld [hl], d

jr_02e_4cc5:
    pop hl
    nop
    pop hl
    ld l, d
    db $e3
    ld [hl], d
    ldh [$09], a
    ld a, h
    ret nz

    push af
    jr @-$1c

    inc d
    inc b

jr_02e_4cd4:
    dec d
    xor a
    or b
    sub d
    pop hl
    or h
    or $e0
    rst $38
    add sp, $14
    nop
    ldh [$af], a
    or b
    db $ec
    ret nz

    ld a, [de]
    add e
    dec bc
    dec de
    ld b, h
    ld h, c
    add b
    and b
    ld a, a
    and l
    ret nz

    ld h, [hl]
    jr jr_02e_4cd4

    dec d
    and $d6
    ldh [$b1], a
    or d
    sub d
    pop hl
    ret nz

    db $ed
    inc de
    inc de
    or c
    ld e, l
    or d
    db $ec
    ret nz

    ld [$0b1a], sp
    add b
    push de
    ld a, [bc]
    ld c, $c1
    add hl, bc
    ld bc, $e188
    and d
    pop hl
    inc d
    ld c, $e1
    ld hl, sp-$5c
    nop
    ret nz

    ld [hl], d
    ld [c], a
    add $7a
    ldh [rNR21], a
    add hl, bc
    add b
    pop hl
    jr z, jr_02e_4cc5

    nop
    ld l, $19
    add hl, bc
    rra
    add hl, de
    ld [$1107], sp
    dec d
    ld c, [hl]
    and $86
    pop bc
    ld c, $e2
    inc c
    nop
    ret nz

    ld [$15e4], a
    inc de
    ccf
    ldh [$c0], a
    ld bc, $a028
    ret nz

    ld c, $87
    add hl, bc
    dec de
    dec bc
    cp a
    ldh [$84], a
    and l
    sbc [hl]
    ld h, b
    ld a, [$0ea0]
    pop bc
    rrca
    add b
    pop bc
    db $76
    rst $20
    and l
    and b
    add b
    ld [c], a
    add b
    ld de, $0b1b
    ld h, b
    cp a
    ldh [$a0], a
    ret nz

    db $fc
    ld [c], a
    sbc [hl]
    ld h, c
    ld a, d
    and b
    ld e, $1f
    adc h
    jp nz, $0833

jr_02e_4d6f:
    jr jr_02e_4d6f

    db $e3
    ld l, h
    and b
    ld a, [de]
    ld a, [bc]
    ld b, b
    dec d
    pop bc
    ldh [$82], a
    cp $e6
    ld a, [bc]
    add b
    db $e4
    sbc b
    and c
    cp $a0
    rst $00
    ldh [$ab], a
    and d
    jr nz, jr_02e_4dcb

    ld hl, $a029
    add b
    ld sp, hl
    cp l
    push hl
    add b
    push hl
    sbc b
    and c
    ld d, $88
    ldh [rIE], a
    dec [hl]
    jr nz, @+$23

    dec [hl]
    dec [hl]
    jr nz, jr_02e_4dca

    inc hl
    ld l, a
    inc h
    dec hl
    ld hl, $8035
    db $fd
    ld a, [bc]
    ld a, [de]
    cp $e0
    sbc h
    nop
    db $e4
    inc c
    db $e3
    rla
    dec [hl]
    ld [hl+], a
    add $e0
    jp nz, Jump_000_2de0

    ld bc, $be2c
    ldh [rP1], a
    or $c9
    add b
    push bc
    pop hl
    ld d, e
    db $e3
    adc [hl]
    and [hl]
    db $76
    add b
    rra

jr_02e_4dca:
    dec [hl]

jr_02e_4dcb:
    dec [hl]
    ld h, $27
    cpl
    jp nz, $bee3

    ldh [rP1], a
    sub l
    sbc d
    ld a, [de]
    push hl
    ld [$8084], sp
    or b
    xor a
    add b
    xor b
    ld l, [hl]
    and b
    sbc a
    or a
    and b
    ld h, $30
    jp nz, Jump_000_24e3

    dec l
    ret nz

Call_02e_4deb:
    ld [hl], l
    add hl, de
    sbc b
    ld [de], a
    and b
    adc [hl]
    ld h, c
    add h
    add c
    or d
    or c
    ld b, b
    and a
    ld l, [hl]
    and c
    and c
    push bc
    and d
    ld a, $e0
    ld l, $7c
    ldh [$fc], a
    ldh [$80], a
    or $07
    scf
    ld h, [hl]
    ret nz

    ld h, d
    nop
    scf
    ld a, h
    and d
    add b
    and h
    dec [hl]
    ld [bc], a
    ld a, [c]
    db $e3
    ld c, a
    ld h, $27
    jr z, @+$2b

    db $fc
    db $e3
    add b
    rst $30
    inc [hl]
    ld b, b
    ld h, d
    ld l, e
    stop
    call nz, $1582
    ld [$07c3], sp
    ld [de], a
    ld a, [c]
    db $e3
    ld a, [hl]
    ld a, [hl]
    pop bc
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    add b
    ld hl, sp-$66
    ret nz

    ld b, d
    inc [hl]
    ld [c], a
    nop
    nop
    scf
    db $fc
    ld b, b
    ld [$02c3], sp
    rst $30
    dec b
    dec b
    ld [bc], a
    ld b, h
    jp $7025


    ld [hl], c
    ld [hl], d
    ld b, a
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ret nz

    ld d, l
    ld d, c
    ld h, b
    ld b, b
    ld b, d
    scf
    ld h, d
    nop
    ld a, b
    ld a, [bc]
    ld h, b
    ld a, d
    and d
    ld [$12c0], sp
    dec b
    dec b
    ld [de], a
    ld b, $c1
    rst $38
    ld l, $28
    add hl, hl
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld sp, hl
    ld a, e
    add b
    ld d, l
    call Call_000_3440
    and h
    and l
    inc [hl]
    inc [hl]
    pop hl
    nop
    add b
    pop hl
    ld d, a
    and c
    ld a, [$0840]
    ret nz

    dec h
    dec b
    dec b
    cp $c4
    pop bc
    jr z, jr_02e_4eb8

    xor b
    xor c
    ld a, h
    ld a, l
    ld a, [hl]
    rst $30
    ld a, a
    add b
    add c
    ld b, b
    ld d, l
    ld hl, $0037
    scf
    ld l, a
    and [hl]
    and a
    scf
    nop
    nop
    ldh [rTIMA], a
    db $10
    adc b
    ld h, c
    db $f4
    db $10
    and b
    jp z, Jump_000_05c1

    call nz, Call_000_35c2
    ld [bc], a
    xor d

jr_02e_4eb4:
    xor e
    ccf
    add d
    add e

jr_02e_4eb8:
    add h
    add l
    add [hl]
    add a
    ret nz

    scf
    add $e1
    ldh [$c1], a
    ldh [rP1], a
    ldh [$94], a
    ld h, c
    ld a, h
    ldh [$80], a
    jp Jump_000_3405


    ld [bc], a
    rst $30
    ld [bc], a
    dec [hl]
    ld [bc], a
    jr c, jr_02e_4eb4

    ld [bc], a
    ld [bc], a
    inc [hl]
    ld [bc], a
    db $dd
    inc [hl]
    ld b, b
    or [hl]
    ld sp, $3729
    add $c0
    db $10
    scf
    rst $00
    db $10
    scf
    dec b
    ld c, $c2
    db $fc
    jp nz, $c180

    dec b
    dec [hl]
    rst $18
    ld [de], a
    ld [de], a
    inc [hl]
    ld [de], a
    dec [hl]
    ld hl, sp-$40
    ld [de], a
    dec [hl]
    rlca
    ld [de], a
    dec [hl]
    jr nz, jr_02e_4f3e

    scf
    nop
    ld h, d
    ld [de], a
    ld h, c
    add b
    ld h, d
    db $fc
    jp nz, $c53c

    add b
    or $45
    inc d
    dec b
    or l
    or h
    cp h
    add c
    ld b, b
    scf
    ret nc

    nop
    ld h, c
    ld c, d
    and a
    db $fc
    ret nz

    add [hl]
    add c
    ld [bc], a
    db $ec
    and $15
    or a
    ld [hl], c
    or [hl]
    cp b
    add b
    ld b, b
    or [hl]
    ld h, h
    add b

jr_02e_4f2a:
    scf
    scf
    jr nz, jr_02e_4f2a

    ld [$0e6c], a
    add c
    ld c, [hl]
    ldh [rNR42], a
    inc [hl]
    ld b, b
    add e
    ld hl, $fa35
    add c
    db $10
    ret nz

jr_02e_4f3e:
    dec d
    ld h, h
    add c
    ld e, $81
    db $fc
    db $fc
    ld l, $80
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [$00e9], a
    nop
    nop
    add hl, hl
    ld c, d
    rst $38
    rst $38
    db $e3
    ld [c], a
    ld c, $ff
    db $eb
    ld a, [bc]
    rst $38
    push hl
    add $ff

jr_02e_4f93:
    nop
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38

jr_02e_4f9a:
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

    di
    call $c0e3
    db $ed
    rst $38
    rst $38
    ret z

    push hl
    push bc
    ld [c], a
    ret nz

    rst $38
    and $c0
    ld hl, sp+$0c
    inc l
    ret nz

    rst $38
    add b
    ld hl, sp+$2e
    inc c
    inc l
    ld bc, $c02e
    rst $38
    add b

jr_02e_4fc6:
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $08
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    jr nz, jr_02e_4f93

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    ld hl, sp+$0b
    ld [c], a
    and l
    cp l
    rst $20
    ld a, c
    ld a, [hl+]
    and c
    pop af
    ld c, l
    and b
    inc c
    inc c
    inc l
    inc c
    ret nz

    rst $28
    add c
    dec bc
    inc l
    xor [hl]
    jr nz, jr_02e_4f9a

    or [hl]
    ldh [rNR21], a
    and l
    ld b, b
    or l
    ret nz

    ldh [$4c], a
    ld b, h
    rst $38
    pop hl
    ldh [$82], a
    ld c, [hl]
    rst $20
    add c
    set 4, c
    ldh [$81], a
    ld a, [hl+]
    db $db
    add b
    add a
    ld c, $2c
    inc l
    adc h
    ldh [$08], a
    xor b
    ret nz

    adc [hl]
    ret nz

    db $eb
    ld c, [hl]
    ld h, $be
    ldh [$0e], a
    ld l, $fd
    ld [c], a
    sbc e
    add c
    ld a, [hl+]
    ret nz

    pop hl
    cp a
    db $e3
    nop
    ret nz

    rst $38
    ld e, [hl]
    add l
    cp l
    pop hl
    ld d, d
    add e
    sub b
    ret nz

    ret nz

    pop hl
    adc d
    ret nz

    ret nz

    rst $38
    ret nz

    jr nz, jr_02e_4fc6

    ret nz

    db $ec
    nop
    add d
    ccf
    adc c
    ret nz

    jp z, $e7a2

    dec c
    dec c
    add $d8

jr_02e_5048:
    ld h, a
    dec bc
    dec bc
    db $10
    ret nz

    ret


    ld h, h
    ret nz

    db $e3
    dec bc
    dec hl
    inc de
    dec hl
    dec hl
    ret nz

    rst $38

jr_02e_5058:
    ret nz

    pop af
    ld a, [bc]
    ret nz

    ld a, [$e398]
    add h
    pop hl
    rrca
    inc c
    inc l
    dec hl
    dec hl
    ld b, b
    ld [$6a4c], a
    ld [hl], b
    pop hl
    add b
    db $ed
    jr nc, jr_02e_5048

    rst $20
    ret nz

    rst $38
    ret nz

    di
    jr jr_02e_5058

    inc c

jr_02e_5078:
    inc l
    ld [de], a
    db $e3
    sbc [hl]
    and b
    ld c, h
    rst $38
    jp hl


    nop
    ldh [$0b], a
    dec bc
    db $ec
    add $80
    ldh [$0c], a
    ld a, a
    and l
    ld [$eac0], sp
    cp a
    and b
    ret nz

    push hl
    ld l, h
    or e
    and d
    ei
    push hl
    ret nz

    db $ec
    add b
    pop de
    nop
    ld d, $c5
    sub d
    pop hl
    adc [hl]
    db $e3
    ld b, b
    ret


    ld a, d
    push hl

jr_02e_50a6:
    ld [hl+], a
    adc $c0
    db $ec
    adc [hl]
    jp hl


    inc c
    ld d, $47
    ld [hl], h
    db $e3
    ld l, h
    ld l, h
    ret nz

    rst $38
    adc $cb
    xor h
    adc b
    rst $30
    push af
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $30
    sbc b
    and b
    ld d, b
    jr z, jr_02e_5078

    pop af
    ret nz

    rst $38
    ld a, $a2
    nop
    cp $e7
    ret nz

    rst $38
    adc $ae
    pop bc
    jp hl


    ret nz

    rst $38
    adc [hl]
    xor [hl]
    pop bc
    ld_long $ffc0, a
    ld h, [hl]
    add h
    add b
    dec hl
    dec hl
    add b
    xor b
    ld l, [hl]
    and b
    dec c
    dec c
    ret nz

    rst $38
    nop
    ret nz

    db $ec
    add b
    and a
    ret nz

    rst $38
    jr nc, jr_02e_50f8

    dec c
    and d
    ld a, h
    and l
    inc b

jr_02e_50f8:
    add h
    ld l, [hl]
    and h
    nop
    ret nz

    rst $38
    ret nz

    add sp, $04
    and b
    sub h
    and a
    ld a, [c]
    db $e3
    cp $c1
    xor [hl]
    add e
    ret nz

jr_02e_510b:
    rst $38
    nop
    inc b
    xor l
    ld b, c
    push bc
    ret nz

    rst $38
    ret nz

    db $ed
    pop de
    pop bc
    ret nz

    rst $38
    db $d3
    add hl, hl
    jp nc, Jump_000_046b

    jp z, Jump_000_04e2

    db $e4
    ld a, [bc]
    adc c
    jr nz, jr_02e_50a6

    ld sp, hl
    add c
    ld hl, $f8c0
    ld d, a
    add b
    nop
    ret nz

    db $fc
    nop
    ld h, [hl]
    ld c, $c3
    add b
    rst $00
    ld a, c
    jp nz, Jump_02e_653c

    nop
    sub $c0
    di
    nop
    or d
    ld [c], a
    dec sp
    ld b, d
    inc a
    ld h, d
    ld l, [hl]
    adc a
    ret nz

    ld [$6200], sp
    ld [de], a
    ld h, d
    add b
    ld l, b
    inc c
    db $ec
    push hl
    adc h
    nop
    dec hl
    dec hl
    add b
    cp c
    inc e
    and c
    inc c
    ld h, a
    sub h
    ld h, l
    jr jr_02e_510b

    inc b
    add d
    ld h, d
    ret nz

    cp $2e
    ld l, $fc
    db $eb
    cp a
    ld h, d
    dec c
    and c
    nop
    ret nz

    sbc a
    ld b, b
    db $e3
    rst $38
    rst $38
    ret nz

    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$00e9], a
    nop
    nop
    dec b
    rrca
    rst $38
    pop af
    nop
    rst $38
    rst $20
    ldh [rIE], a
    ldh [rIE], a
    db $dd
    ld sp, hl
    ld [c], a
    db $f4
    nop
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ldh [$ef], a
    adc $e1
    nop
    or $b1
    rst $20
    nop
    and b
    db $ec
    sbc b
    db $e4
    pop af
    rst $20
    add b

jr_02e_51da:
    rst $20
    db $fd
    ld [c], a
    ldh [$ed], a
    and b
    ret z

    ld e, h
    ldh [rP1], a
    pop de
    db $ec
    ldh [$eb], a

jr_02e_51e8:
    ld [hl], d
    jp $e747


    ld hl, $80ea
    db $ec
    jr nz, jr_02e_51e8

    sbc b
    db $e3
    nop
    ldh [$fa], a
    ldh [$d8], a
    sub c
    push bc
    add hl, de
    and $e0
    db $ed
    sbc b
    jp $ea59


    ret nz

    db $eb
    nop
    jp nz, $e0cb

    rst $38
    ldh [$c9], a
    ret nz

    add $05
    db $e3
    ldh [$ee], a
    jr jr_02e_51da

    rst $30
    db $eb
    nop
    nop
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
    rst $38

jr_02e_5226:
    push af
    nop
    nop
    nop
    ld b, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02e_5233:
    rst $38
    db $eb
    ld [$dd51], a
    rst $38
    sub b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    db $ec
    ld b, c
    ldh [rIE], a
    cp e
    xor $21
    ld l, d
    xor c
    pop hl
    sub c
    and h
    ld [c], a
    ld c, b
    sbc [hl]
    push hl
    pop de
    ret c

    ldh [$ea], a
    rst $28
    pop bc
    nop
    nop
    sbc b
    add e
    push af
    jr z, jr_02e_525e

jr_02e_525e:
    nop
    db $ed
    ret z

    ld h, a
    add sp, -$48
    or c
    ld e, d
    rst $38
    nop
    nop
    ld hl, sp-$4e
    db $dd
    db $fc
    pop af
    cp l
    rst $38
    rst $28
    xor $58
    ld e, b
    call c, $81f6
    adc l
    adc b
    pop bc
    db $e3
    ld l, b
    ld h, c
    cp c
    rst $38
    rst $38
    rst $38
    db $ed
    db $ec
    ld de, $ddda
    ld [$e031], a
    ld a, [c]
    ld a, b
    ld [hl], c
    cp b
    ld [c], a
    db $10
    db $10
    ld a, [bc]
    ldh [$ef], a
    jr jr_02e_5233

    db $ec
    jr c, jr_02e_5226

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_02e_535d

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
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

jr_02e_535d:
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

jr_02e_537b:
    nop
    rst $38
    ldh [rTIMA], a

Jump_02e_537f:
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
    jr nz, jr_02e_537b

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
    call nc, Call_02e_48c2
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
    jr nz, jr_02e_548d

jr_02e_548d:
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
    jp Jump_02e_7f7c


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

Jump_02e_5555:
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
    jp z, Jump_02e_6fe0

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

jr_02e_577a:
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
    jr jr_02e_577a

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

Call_02e_5804:
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

jr_02e_5830:
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
    jr nc, jr_02e_5830

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

Call_02e_58a3:
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

jr_02e_58f4:
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

jr_02e_5907:
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
    jr c, jr_02e_58f4

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

jr_02e_593c:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_02e_5907

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_02e_61d8

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
    jr nz, jr_02e_593c

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
    jp z, Jump_02e_5ac8

    and c
    inc a
    jp Jump_02e_537f


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
    sbc e
    or a
    ld c, b
    call c, $40c0
    rst $38
    ld b, h
    dec b
    inc a
    dec b
    ld d, l
    ei
    nop
    cp d
    cp [hl]
    add b
    xor e
    nop
    ld e, l
    nop
    ld [$b6fa], a
    add b
    xor [hl]
    or d
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
    sub e
    nop
    ld bc, $b4ce
    nop
    jr nz, jr_02e_5a9c

jr_02e_5a9c:
    add b
    xor [hl]
    nop
    cp l
    ldh [rNR23], a
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
    sbc [hl]
    ldh [$03], a
    sbc h
    and b
    ld b, $ff

Jump_02e_5ac8:
    ld e, h
    rst $38
    rst $38
    ld de, $74fe
    ei
    ret nz

    rst $38
    sub c
    rst $28
    rst $28
    ld c, [hl]
    rst $38
    ei
    ld d, d
    ret nz

    inc b
    ei
    ld c, d
    rst $28
    or l
    and b
    ld e, a
    ld a, [bc]
    xor b
    jr nz, jr_02e_5b0a

    rst $18
    sub e
    rst $38
    rst $28
    ld h, $df
    add d
    rst $38

jr_02e_5aec:
    ld d, e
    rst $28

jr_02e_5aee:
    adc c
    xor a
    rst $30
    ld d, e
    rst $28
    add d
    sbc d
    jr nz, jr_02e_5aec

    ld d, d
    ld b, b
    ldh a, [rIE]
    rst $38
    xor d
    db $fd
    ld d, c
    cp $80
    rst $38
    ld d, l
    rst $38
    db $eb
    pop de
    sbc a
    sbc l
    ld c, a
    daa

jr_02e_5b0a:
    rla
    and e
    rst $38
    di
    db $db
    pop hl
    xor $f1
    or h
    ei
    ret


    ei
    rst $38
    jp c, $e0f0

    ld h, $17
    and d
    di
    ld e, d
    rst $38
    pop hl
    ld l, [hl]
    pop af
    inc [hl]
    ei
    ld sp, hl
    rst $38
    rst $20
    rst $38
    jr jr_02e_5aee

    inc h
    rst $20
    inc h
    rst $38
    inc a
    db $db
    rst $30
    inc a
    rst $20
    jr @-$3e

    ld b, c
    ld h, a
    sbc d
    call nz, $ff8a
    dec bc
    ret nz

    ld b, d
    and b
    db $10
    ret nz

    jp hl


    add b
    rst $38
    ld h, b
    sub c
    adc e
    ld h, b
    ld d, $a9
    pop hl

jr_02e_5b4c:
    dec bc
    rst $38
    adc d
    daa
    daa
    rrca
    xor l
    rra
    sub $3f
    ld sp, hl
    ld a, l
    and [hl]
    add b
    ld d, b
    daa
    inc h
    db $db
    inc c
    rst $30
    ld [hl], $ff

jr_02e_5b62:
    rst $08
    jr jr_02e_5b4c

    sub $0f
    ld e, c
    and [hl]
    ld b, d
    rst $38
    rrca
    ei
    nop
    inc e
    inc bc
    cp a

jr_02e_5b71:
    nop
    sbc c
    ld a, l
    ld h, [hl]
    ld l, b
    ld hl, $c23d
    jr jr_02e_5b62

    add hl, de
    ld h, b
    inc h
    ld a, $40
    add c
    ld d, [hl]
    xor c
    ld [hl+], a
    rst $38
    ld [hl], l
    ret nz

    add h
    or b
    and e
    rst $38
    ld de, $1fef
    ldh [$3d], a
    rst $00
    inc sp
    rst $08
    ei
    dec l
    rst $10
    db $10
    add l
    jr z, jr_02e_5b71

    ld b, h
    ei
    or h
    rst $38
    rst $38
    ret nc

    rst $38
    rst $28
    jr @-$23

    inc l
    rst $10
    rst $38
    inc l
    rst $28
    inc a
    sub l
    ld l, [hl]
    sbc e
    ld b, [hl]

jr_02e_5bae:
    rst $18
    rst $38
    ld l, [hl]
    ld a, [bc]
    rst $10

jr_02e_5bb3:
    dec e
    add e
    adc a
    rst $10
    cp l
    ld a, a
    ld a, [hl]
    rst $28
    jr c, @+$01

    jr z, jr_02e_5bae

    ld a, $51
    ld h, b
    rst $38
    ld e, $18
    rst $38
    inc e
    rst $28
    inc d
    rst $28
    inc l
    rst $38

jr_02e_5bcc:
    rst $38
    ld d, $ef
    ld a, [de]
    rst $00
    ld e, [hl]
    rst $28
    dec bc
    cp $e0
    ld [c], a
    ld a, [hl]
    rst $38
    jr z, @+$01

    jr c, jr_02e_5bcc

    ld l, $fe
    pop hl
    pop hl
    rst $38
    jr nz, jr_02e_5bb3

    or [hl]
    dec hl
    db $ed
    cp d
    ld e, a
    dec sp
    rst $18
    db $76
    rst $18
    ld d, h
    ld c, b
    jr nz, jr_02e_5c1b

    sub b
    ldh [$7f], a
    sbc $7f
    add hl, hl
    cp $55
    rst $38
    cp [hl]
    ld a, [hl]
    ldh [$bf], a
    xor d
    rst $38
    ret nz

    rst $38
    sbc b
    ld h, a
    and b
    ld h, c
    ld e, b
    db $f4
    sub b
    ld b, $50
    ld l, e
    dec hl
    sub b
    ld l, b
    inc a
    inc bc
    add h
    ld [hl], e
    rst $28
    or h
    db $eb
    and e
    ld c, h
    or b
    pop hl
    ld a, [hl-]

jr_02e_5c1b:
    rst $18
    rst $30
    ld a, a
    ld e, [hl]
    push de
    ld a, [hl]
    db $dd
    ld a, a
    ei
    ld l, $88
    inc bc
    rst $38
    add hl, de
    rst $20
    rla
    xor $3f
    ret z

    cpl
    ret c

    rst $10
    rra
    ldh a, [$fd]
    ld [$da00], a
    ld e, [hl]
    nop
    xor a
    cp $bf
    rst $18
    ld hl, sp+$6f
    ld hl, sp-$21
    ldh a, [$03]
    ld h, b
    inc a
    cp $66
    ld h, c
    ccf
    jp $c73e


    db $dd
    cpl
    jp c, Jump_000_2ffd

jr_02e_5c51:
    ldh a, [$e5]
    dec a
    jp $c73c


    ret nc

    cpl
    rst $38
    ret c

    cpl
    jr nc, jr_02e_5c51

    ld d, h
    pop bc
    xor d
    add b
    ei
    sbc $80
    and d
    ld b, c
    ld a, $81
    inc c
    jp $f2b5


    or h
    ld c, [hl]
    ld a, a
    db $fc
    db $e4
    or $e3
    jr @-$17

    dec a
    jp nz, Jump_000_39ff

    call nz, $e817
    daa
    ret nc

    rrca
    ldh [$bf], a
    cp a
    ld b, b
    ccf
    add b
    cp $ff
    rst $20
    add b
    cp $fe

jr_02e_5c8c:
    adc d
    jr nz, jr_02e_5c8c

    ei
    ldh a, [$fd]
    cp $f9
    rst $38
    db $ed
    ld a, a
    cp $e0
    rst $38
    ld a, a
    or b
    ld bc, $ef1f
    ld a, a
    cp $90
    nop
    db $f4
    ei
    jp hl


    or $ef
    ret nz

    ld a, [c]
    rst $38
    ld sp, hl
    db $e3
    rst $38
    ret nc

    rst $28
    add l
    jp c, $fbbb

    inc b
    xor a
    ld d, b
    nop
    add a
    ld a, e
    rst $18
    cp a
    rst $30
    cp $c8
    and b
    ld d, a
    db $fd
    xor c
    ld a, [hl]
    call $f3e3
    ei
    rst $30
    or $a4
    add b
    rst $38
    cp $f5
    cp $bf
    rst $38
    ld_long $fff4, a
    jp $efbf


    rst $18
    rst $28
    jp nz, $e2ba

    ld e, a
    ld e, h
    ret nz

    ld [hl], b

jr_02e_5ce1:
    ld bc, $e0a1
    ld e, b
    jr nz, jr_02e_5ce1

    db $fd
    sbc a
    db $f4
    ei
    rst $38
    cp $fb
    ld [hl], b
    ld [$0364], sp
    di
    rst $38
    rst $38
    ld [$d8f7], a
    rst $20
    db $fd
    ei
    rst $28
    rst $38
    rst $38
    set 7, a
    and d
    rst $18
    ld l, b
    sub a
    rst $38
    db $e3
    rst $38
    rst $28
    ld h, $00
    jr c, jr_02e_5d0d

    sbc [hl]

jr_02e_5d0d:
    pop hl
    ld l, c
    rst $38
    db $d3
    ld sp, hl
    rst $28
    sub e
    jr nz, @-$44

    ld [c], a
    or $ff
    xor [hl]
    ei
    push af
    inc h
    inc l
    nop
    add [hl]
    dec h
    rst $18
    ld [bc], a
    ld hl, $0a22
    ei
    inc sp
    ldh [$ee], a
    add sp, -$11
    or a
    ld [c], a
    rra
    add c
    inc sp
    ldh [$fe], a
    rst $38
    rst $28
    sub e
    ei
    ld d, b
    ld [bc], a
    add b
    add h
    jp hl


    ld d, a
    ld h, [hl]
    ld [c], a
    db $fd
    rst $28
    db $eb
    ld a, h
    adc a
    nop
    or d
    and $f7
    cp l
    ld h, d
    ld [$9e15], a
    jp hl


    sbc a
    rst $18
    cp a
    ld h, $dd
    rst $38
    ld h, b
    nop
    adc d
    jp hl


    ld a, a
    xor b
    xor d
    ld h, b
    db $f4
    dec b
    inc [hl]
    ld bc, $6aea
    db $ec
    adc d
    xor h
    add b
    xor a
    ld [c], a
    ld e, c
    add sp, -$51
    and b
    pop bc
    ld c, b
    db $ec
    call z, $fde9
    cp $54
    rst $08
    ei
    add c
    rst $38
    ld d, h
    adc h
    add b
    adc h
    db $e3
    ld b, b
    cp a
    push de
    ld [$6022], sp
    ld d, l
    ld b, h
    ld h, b
    ld a, [hl]
    ld a, e
    ld [c], a
    nop
    rst $38
    dec e
    add h
    ld a, d
    and b
    ld d, a
    rst $38
    cp l
    ld a, [$7ec6]
    pop hl
    or h
    jp Jump_000_2d4e


    db $ed
    push af
    rst $38
    cp a
    cp c
    push hl
    ccf
    ldh [$aa], a
    add hl, bc
    ldh [$7d], a
    jp z, $ec09

    xor a
    rst $38
    ld d, d
    db $fd
    xor d
    ret c

    ldh [$7c], a
    ei
    and c
    inc e
    db $e3
    dec hl
    push de
    dec b
    ld a, [$d454]
    pop hl
    ld e, h
    ld [$5ae2], a
    pop bc
    ld l, [hl]
    cp e
    ld bc, $a016
    ld d, a
    inc h
    ld [c], a
    ld b, d
    cp b
    db $e3
    dec d
    ld l, $e2
    ldh [$e3], a
    ld d, [hl]
    and b
    ld l, $e2
    rst $28
    adc d
    add sp, -$31
    xor c
    cp $48
    rst $30
    xor d
    db $e3
    ld c, $e3
    ld d, l
    rst $38
    dec de
    ld [de], a
    rst $28
    call z, $ffe3
    rst $38
    nop
    nop
    nop
    rst $38
    call nz, Call_02e_46c5
    add $c7
    ret z

    ret


    jp z, $cbfb

    call z, $e2f6
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    sbc c
    ld [$94ff], sp
    sub e
    sub d
    sub c
    sub c
    sub d
    sub d
    sub d
    pop hl
    sub e
    rst $38
    ldh [$f9], a
    ldh [$fd], a
    and $f0
    ldh [$94], a
    sub h
    sub h
    rst $20
    sub b
    sub b
    sub b
    ld a, [$e5e0]
    db $e3
    sub c
    sub c
    call $ceff
    rst $08
    ld b, [hl]
    ret nc

    pop de
    jp nc, $d4d3

    add c
    ld b, [hl]
    or $e1
    rst $38
    pop hl
    ret nz

    db $e4
    cp a
    ld [c], a
    jp nz, $bfe9

    pop af
    sub c
    ld bc, $8591
    rst $20
    ld a, e
    ld [c], a
    add b
    push hl
    cp a
    db $e4
    sbc l
    ld [c], a
    cp $e5
    ld a, [hl]
    xor $78
    ld h, h
    pop hl
    add l
    and $7b
    db $e3
    db $dd
    sbc $46
    sbc e
    ld b, b
    ldh [rP1], a
    and l
    ld [c], a
    jp nz, $bfeb

    xor $23
    db $e3
    nop
    ld a, [c]
    and h
    pop hl
    cp $c2
    adc c
    db $e4
    ret c

    ld [hl], a
    push hl
    db $fc
    ret z

    db $fd
    jp $9393


    nop
    ldh a, [rSC]
    rrca
    ld b, b
    pop hl
    ret nz

    cp $c2
    ld c, e
    and $13
    db $e4
    dec a
    and $bc
    add $93
    nop
    db $ed
    rrca
    cp [hl]
    cp a
    sbc d
    sub a
    cp a
    ldh [$be], a
    jp nz, $c2bb

    adc e
    jp Jump_000_2de0


    db $e4
    ld l, d
    jp $e57f


    add sp, -$1f
    nop
    db $ec
    ld b, [hl]
    ret nz

    pop bc
    rlca
    ld b, [hl]
    sbc d
    sub a
    cp [hl]
    push bc
    ld a, [hl-]
    ret nz

    ld d, c
    and $7e
    and $7f
    push hl
    adc h
    cp [hl]
    db $e3
    nop
    call $c3c2
    cp $a3
    ld [hl+], a
    jp $e0c0


    sub h
    rra
    sub h
    rrca
    dec c
    ld bc, $bf00
    and $7f
    push hl
    cp [hl]
    ld [c], a
    ldh [$f5], a
    and b
    nop
    adc $7e
    ret nz

    cp [hl]
    jp $c37c


    sub e
    sub h
    rrca
    rra
    ld [bc], a
    inc bc
    inc b
    rlca
    rlca
    db $ec
    pop bc
    jp hl


    and h
    ld l, $e4
    ldh [$bf], a
    db $e3
    nop
    call z, $a071
    cp [hl]
    call nz, $c47c
    sub e
    sub h
    ld [$aac0], sp
    and d
    xor e
    jp $a268


    adc b
    jp nz, $e401

    nop
    xor $46
    cp b
    jp hl


    cp c
    rst $38
    pop bc
    rra
    jp nz, $c192

    pop bc
    sub h
    ld [$0f45], sp
    dec hl
    ld sp, $452b
    cp a
    pop hl
    ld a, [hl+]
    push bc
    cp a
    jp hl


    nop

jr_02e_5f16:
    xor [hl]
    jp $bbba


    db $fd
    add c
    ld c, $e1
    inc b
    and c
    ld c, $a0
    rrca
    ld [bc], a
    ld a, a
    ld a, [hl+]
    jr nz, jr_02e_5f48

    ld a, [hl+]
    ld b, l
    ld b, [hl]
    ld b, $2a
    push bc
    ld hl, sp-$0b
    add h
    add hl, hl
    jp $ac00


    push de
    sub $bc
    cp l
    rst $10
    rst $20
    ld b, [hl]
    sbc e
    ld [bc], a
    db $10
    db $e3
    inc d
    jp Jump_000_020f


    ld l, $3f
    jr nz, jr_02e_5f6f

jr_02e_5f48:
    ld b, d
    ld b, [hl]
    dec b
    ld c, $28
    xor c
    cp a
    push hl
    cp $85
    adc d
    ld b, [hl]
    ld b, [hl]
    ret c

    reti


    jp c, $dcdb

    cp a
    sbc d
    sub a
    xor b
    ld b, [hl]
    ld [bc], a
    dec c
    rra
    call nz, $ff90
    nop
    ld bc, $b108
    inc hl
    ld hl, $a842
    ld h, c
    ld b, [hl]

jr_02e_5f6f:
    jr z, jr_02e_5f16

    ld l, h
    xor b
    nop
    xor b
    add h
    add c
    cp [hl]
    cp a
    ld a, [hl]
    add c
    ccf
    sbc d
    sub a
    ld b, [hl]
    xor c
    xor b
    ld b, [hl]
    adc e
    pop bc
    adc d
    ret nz

    cp $80
    ret nz

    inc b
    inc bc
    add hl, sp
    dec [hl]
    inc a
    xor b
    xor c
    ldh [rBCPD], a
    and d
    xor b
    and a
    daa
    add h
    nop
    adc d
    jp Jump_02e_46a0


    sbc d
    sbc b
    rra
    sub a
    ld b, [hl]
    xor b
    ld b, [hl]
    xor c
    dec [hl]
    add d
    inc c
    ldh [$80], a
    pop bc
    ccf
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    xor c
    ld b, [hl]
    xor h
    call nz, $8caa
    jr z, jr_02e_5fb7

jr_02e_5fb7:
    adc d
    jp $83a0


    ldh [rDMA], a
    jp nz, $a8e2

    db $fd
    pop hl
    inc c
    ldh [$7f], a
    rrca
    ld [bc], a
    ld a, c
    ld a, d
    ld h, [hl]
    dec [hl]
    ld a, $b4
    ldh [rP1], a
    xor h
    jp nz, $86f5

    jr z, @-$7a

    add l
    ld l, c
    ld b, e
    add b
    dec b
    pop hl
    add l
    db $e3
    ld a, [hl]
    ldh [$fd], a
    xor c
    ld a, [bc]
    pop bc
    ld [$7e79], sp
    ld b, b
    ld l, b
    ld h, [hl]
    rrca
    ld a, [hl-]
    xor d
    ld b, [hl]
    dec b
    ld [hl-], a
    ld [c], a
    rlca
    add [hl]
    nop
    pop af
    pop bc
    pop hl
    ret c

    dec b
    ldh [$82], a
    db $e3
    res 4, h
    ld [$4080], sp
    ldh [rBCPS], a
    ld h, [hl]
    jp $aa36


    ld [hl-], a
    pop hl
    push af
    add l
    cp $e7
    add l
    adc d
    ld b, [hl]
    sbc e
    ret nz

    add $c0
    dec b
    ld [c], a
    nop
    pop hl
    dec sp
    ret nz

    ld d, $60
    ret nz

    ldh [$aa], a
    add hl, sp
    ccf
    dec [hl]
    ld l, d
    dec [hl]
    add hl, sp
    ld b, [hl]
    xor b
    ld a, $c0
    ld [hl], d
    ret nz

    add sp, -$7a
    add l
    ld a, a
    add e
    add l
    adc e
    sbc c
    inc b
    db $e3
    ld b, l
    ld c, b
    ld d, e
    rst $18
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld [$d396], sp
    pop hl
    ld [$9782], sp
    add e
    ld b, [hl]
    xor d
    ret nz

    ldh [$3e], a
    xor h
    ret nz

    and [hl]
    ld h, b
    rrca
    ldh [rOCPS], a
    ret nz

    db $fd
    jp hl


    add l
    adc e
    ret nz

    ldh [$bc], a
    ld b, c
    ld b, h
    ld e, [hl]
    ld d, [hl]
    ld a, l
    ld b, h
    rst $08
    call nz, $0894
    add h
    adc c
    ld b, [hl]
    add b
    ld [c], a
    ld a, [de]
    xor a
    ret nz

    ld [$80b3], sp
    sub a
    sbc b
    rst $38
    ld [$ed00], a
    add [hl]
    pop bc
    ld l, a
    ld b, l
    ld b, a
    ld d, [hl]
    dec l
    ld c, a
    and b
    dec b
    db $10
    inc a
    and b
    rst $38
    sub h
    ld c, $05
    add d
    add e
    ld a, [hl-]
    ld l, h
    ld l, l
    dec hl
    ld a, [hl-]
    ld b, l
    dec l
    ret nz

    ld b, $c1
    ldh [$9a], a
    and b
    call nz, $c499
    or $85
    ld c, d
    cp b
    cp c
    call nz, $a8a0
    xor c
    ld b, l
    ld d, [hl]
    cp e
    ld e, d
    ld l, $4f

jr_02e_60a4:
    and b

jr_02e_60a5:
    xor b
    inc bc
    inc b
    ret nz

    and c
    ld b, $bf
    add h
    add l
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    ld a, [hl-]
    cpl
    ldh [rDMA], a
    dec a
    dec b
    pop bc
    pop hl
    cp b
    cp c
    db $dd
    sbc $ca

jr_02e_60be:
    daa
    add l
    ld c, d
    ld a, [$80c4]
    sbc c
    add h
    and c
    ld d, l
    ld d, l
    daa
    jr nz, @+$2f

    inc l
    cp h
    and c
    ret nz

    and e
    add hl, sp
    dec [hl]
    rst $38
    ldh [rLCDC], a
    db $e3
    inc hl
    sbc a
    add e
    ldh a, [$ca]
    daa
    add l
    jr z, jr_02e_60a4

    add d
    cp [hl]
    jp nz, Jump_000_3945

    ld hl, $1126
    dec l
    or e
    ld hl, $80cc
    ret nz

    push hl
    add hl, sp
    and e
    inc hl
    sbc a
    add d
    ld c, a
    jr z, jr_02e_610b

    add l
    jr z, jr_02e_60be

    add d
    sbc e
    ld a, h
    ld hl, $4faa
    and b
    db $10
    ret nz

    jr c, jr_02e_60a5

    ld e, $74
    ld b, b
    rrca
    ld [bc], a
    ld b, l

jr_02e_610b:
    ld [hl], $7f
    ldh [$3f], a
    ldh [$6d], a
    and b
    add hl, bc
    sbc c
    sbc a
    add d
    ld c, a
    daa
    ret nc

    add l
    ld a, [hl+]
    cp a
    and d
    ld b, c
    ret nz

    ret nc

    ldh [$fa], a
    sub c
    ld [c], a
    xor c
    ld a, a
    ld [c], a
    ld c, $05
    xor b
    ld a, [hl-]
    dec [hl]
    ld b, b
    cp [hl]
    add b
    xor d
    add c
    pop bc
    jp nz, $294f

    add l
    ld l, c
    add c
    add b
    sbc c
    pop bc
    and c
    sbc [hl]
    ret nc

    add b
    ld h, d
    ld a, d
    ld a, h
    ld a, l
    cp a
    add h
    cp [hl]
    ret nz

    xor c
    ld [$c1fe], sp
    ld l, h
    add b
    ld l, c
    add b
    sbc c
    ld e, e
    add d
    nop
    ld a, [c]
    cp a
    and d
    add a
    add b
    rst $38
    xor b
    ld b, [hl]
    add hl, sp
    ld h, d
    ld h, a
    add hl, sp
    xor d
    ld a, a

Call_02e_6161:
    add c
    ld a, l
    inc a
    add b
    dec c
    and d
    ld a, a
    ldh [rLCDC], a
    ldh [$67], a
    and b
    inc hl
    and b
    sbc e
    ldh a, [rNR34]
    ld b, b
    ld c, a
    add hl, bc
    add l
    add hl, bc
    cp a
    and h
    xor c
    ld b, [hl]
    add hl, sp
    ld l, e
    ld a, a
    ld l, h
    ld a, [hl-]
    ld b, l
    add e
    ld l, l
    dec b
    rrca
    ld d, d
    and c
    cp [hl]
    ld d, c
    nop
    ld b, $a9
    ld a, [hl-]
    dec [hl]
    ld a, $80
    pop hl
    ld b, [hl]
    jp $99a9


    ld e, $41
    nop
    or $42
    add d
    db $10
    add b
    ld l, [hl]
    ld [hl], b
    rst $18
    ld [hl], c
    add [hl]
    add l
    add h
    ld b, $18
    ld hl, $0190
    ld a, a
    nop
    sub [hl]
    ld b, $a8
    add hl, sp
    dec [hl]
    ld a, $e7

jr_02e_61b2:
    add e
    nop
    ret nz

    and b
    sbc h
    nop
    nop
    call nc, $a1c2
    pop bc
    jp $c150


    add h
    pop bc
    ld a, h
    ld h, b
    ccf
    dec c
    sub l
    ld c, $05
    xor c
    xor b
    cp [hl]
    ld h, b
    ld h, $83
    db $10
    ld a, a
    and d
    nop
    di
    pop bc
    add b
    ld b, c
    add b

Jump_02e_61d8:
    xor b
    sub c
    ld h, b
    ld d, b
    pop bc
    call nz, $ef64
    ld a, l
    inc bc
    inc b
    ld [bc], a
    ld l, h
    and b
    inc a
    dec [hl]
    ld [hl], $60
    push hl
    ldh [$bd], a
    and h
    jp z, $85a8

    ld a, [bc]
    ld b, c
    add b
    ld b, [hl]
    xor c
    ld bc, $bfe0
    dec [hl]
    jr c, jr_02e_6234

    dec [hl]
    inc a
    ld a, [bc]
    add l
    ld h, c
    ld a, [hl]
    ld sp, hl
    ld b, e
    cp c
    ret nz

    ld sp, $3960
    ld h, d
    ld h, e
    ld h, [hl]
    ld [hl], $a0
    push hl
    ldh [$7d], a
    and e
    nop
    call $0248
    rst $00
    jr nz, jr_02e_61b2

    sbc [hl]
    ld [c], a
    ld b, l
    ld a, a
    ld c, b
    ld c, [hl]
    ld c, c
    ld d, d
    ld a, [hl-]
    dec [hl]
    ld a, [bc]
    pop bc
    pop hl
    rst $18
    ld b, h
    ld c, c
    ld d, h
    ld a, a
    ld a, l
    ld l, a
    and b
    ld a, [hl-]
    ld l, c
    rlca
    dec [hl]
    ld l, b
    ld h, [hl]

jr_02e_6234:
    ld a, l
    add b
    cp l
    and c
    ld e, h
    nop
    nop
    xor e
    ld a, [bc]
    inc hl
    db $fc
    inc bc
    and c
    sbc [hl]
    ld [c], a
    ld b, l
    ld d, d
    ld d, h
    ld d, h
    ld d, h
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    ld b, $06
    ld a, c
    ld a, [hl]
    dec hl
    dec hl
    ld d, e
    rst $38
    ld e, c
    ld b, l
    add c
    ld b, [hl]
    ld b, [hl]
    ld b, d
    ld h, d
    db $76
    daa
    dec [hl]
    dec [hl]
    ld l, d
    db $fd
    ret nz

    xor b
    ld b, b
    sbc c
    ld e, h
    nop
    nop
    xor a
    db $ec
    inc bc
    and l
    ld b, c
    add c
    scf
    jr c, jr_02e_62b0

    ldh [$39], a
    ld [$bf05], sp
    add b
    ld b, d
    daa
    jr nz, jr_02e_62a9

    ld a, [hl+]
    ret nz

    pop hl
    ld b, b
    dec b
    ld l, c
    cp l
    add b
    ld l, d
    inc a
    add b
    add b
    ld [c], a
    ld e, h
    ld bc, $a57b
    nop
    ld h, l
    or h
    rst $00
    ld [hl+], a
    pop bc
    ld h, d
    xor c
    ret nz

    jp Jump_000_0840


    rlca
    add b
    ld a, [hl+]
    rst $38
    inc l
    inc l
    ld a, [hl+]
    add e
    ld l, l
    ld b, [hl]
    xor b
    ld b, d
    rra
    ld l, e
    ld l, h
    dec [hl]
    ld l, h
    ld l, l

jr_02e_62a9:
    cp l
    add b
    jr z, @+$42

    sbc $80
    ld b, b

jr_02e_62b0:
    sub a
    ld b, b
    ld a, e
    push bc
    nop
    ld b, l
    jp nz, $1d65

    pop hl
    sub b
    add e
    ld b, $07
    add b
    call $ff86
    ldh [$85], a
    add h
    pop bc
    ret nz

    rst $28
    and b
    ld [hl], b
    ld l, [hl]
    add b
    db $ed
    ld h, b
    nop
    ld [c], a
    jp z, Jump_000_3669

    add [hl]
    inc bc
    and d
    dec b
    ld b, b
    ret nz

    ld b, b
    ld b, h
    db $ed
    inc a
    ld b, b
    jp nz, Jump_000_040f

    ld a, l
    ld hl, $0707
    inc b
    or a
    inc bc
    ld b, [hl]
    ld a, $2e
    jp nz, $a845

    ld a, [hl]
    pop bc
    sbc c
    ld h, b
    jr @+$42

    nop
    adc a
    inc bc
    and l
    add [hl]
    ld hl, $a2ff
    inc a
    ld b, h
    ld b, d
    ld b, c
    ld e, [hl]
    pop bc
    nop
    ld bc, $1000
    dec b
    ret nz

    ld [c], a
    add hl, sp
    ld l, d
    inc hl
    inc b
    nop
    call nc, $c0eb
    sbc e
    adc h
    ld [hl+], a
    ccf
    db $e4
    adc $20
    ld bc, $7f40
    nop
    jp nz, Jump_000_00bf

    ld b, $7e
    ld h, d
    ld l, $60
    nop
    call nc, $e200
    db $dd
    sbc $28
    add e
    add c
    jp c, Jump_000_3f82

    pop hl
    add hl, sp
    rst $08
    jr nz, jr_02e_633d

    db $d3
    ld hl, $20cd
    ld l, e
    ld b, $44
    rst $38

jr_02e_633d:
    ld h, c
    ld b, h
    push hl
    ld [hl+], a
    sub a
    sbc d
    rst $10
    and b
    xor b
    nop
    sub e
    nop
    pop hl
    pop bc
    ld [hl+], a
    ld b, b
    rrca
    ld h, b
    xor d
    cp d
    nop
    ld [$9609], sp
    sub c
    jr nz, jr_02e_63d5

    ld b, c
    xor d
    rst $38
    ret nz

    ld a, [hl]
    ld b, d
    ret nz

    add c
    jp c, $c040

    nop
    ldh a, [$e3]
    ld b, c
    inc c
    ld [hl+], a
    sbc e
    add b
    rst $08
    ld b, c
    ld [de], a
    pop hl
    ld [bc], a
    dec c
    ld b, $91
    ld [hl+], a
    ld [$bf46], sp
    pop bc
    ld a, a
    jr nz, jr_02e_63ba

    ld h, c
    jp c, $0042

    rst $08
    nop
    add d
    ld h, c
    ld [bc], a
    ld b, e
    nop
    push hl
    ld a, [hl]
    jr nz, jr_02e_63c8

    ld b, l
    ld a, $01
    ld b, c
    pop hl
    add d
    and c
    add b
    rst $10

jr_02e_6393:
    and d
    db $76
    add d
    nop
    call z, $2341
    ret nz

    nop
    add b
    ld b, b
    rst $08
    ld b, b
    inc a
    jr jr_02e_6421

    jr nz, jr_02e_6418

    ldh [rKEY1], a
    jr nz, jr_02e_63b7

    dec b
    ld l, a
    db $e3
    add d
    add $00
    ld [hl], e
    add b
    add d
    ld h, e
    sbc l
    ld h, b
    sub b
    add b

jr_02e_63b7:
    cp [hl]
    ld b, [hl]
    ret nz

jr_02e_63ba:
    ld b, e
    cpl
    db $e3
    ld h, $02
    sbc e
    ld b, b
    ld bc, $0061
    sub a
    db $dd
    ld h, d
    cp l

jr_02e_63c8:
    ld b, e
    adc [hl]
    ld [hl+], a

jr_02e_63cb:
    ld a, l
    ld h, d
    ld b, $ae
    and c
    jr jr_02e_6393

    push bc
    db $db
    ld b, b

jr_02e_63d5:
    nop
    ld [hl], h
    db $dd
    sbc $03
    ld b, d
    db $fc
    and d
    call Call_000_2600
    ld c, [hl]
    ld [hl+], a
    ld [bc], a
    dec c
    cp e
    nop
    cp $20
    ld a, [hl-]
    ld b, b
    ld bc, $6242
    ret nc

    jp Jump_000_0081


    ld d, l
    cp a
    call nz, $023d
    ld [hl], $8f
    inc hl
    inc bc
    inc b
    ld e, $3f
    ld h, b
    ld b, $46
    add hl, sp
    ld [hl], $43
    and b
    ld b, h
    and e
    nop
    ld d, a
    jr nz, jr_02e_63cb

    ld [bc], a
    nop
    ld hl, $42bb
    rst $08
    ld bc, $e4bd
    dec b
    ld a, [c]
    pop hl
    ld h, $c1

jr_02e_6418:
    ld b, b
    rra
    db $e4
    nop
    ld d, h
    pop bc
    ld [bc], a
    cp [hl]
    and e

jr_02e_6421:
    db $fd
    pop af
    add h
    ld h, h
    ld b, [hl]
    nop
    db $f4
    ld e, $c1
    ld [$4141], sp
    scf
    scf
    db $fc
    rst $28
    add h
    ld h, h
    dec sp
    ld b, b
    ld a, h
    nop
    or d
    cp [hl]
    ld h, l
    xor b
    xor b
    ld b, d
    sbc [hl]
    ld h, h
    rst $38
    ldh a, [$e3]
    sbc a
    ld b, d
    add h
    ld h, l
    nop
    dec [hl]
    pop hl
    and e
    xor c
    xor c
    ld b, b
    rst $18
    ld l, c
    sbc l
    dec [hl]
    dec [hl]
    sbc l
    db $fc
    db $ed
    ld l, d
    ld b, b
    add b
    jp nz, $84a2

    ld h, d
    nop
    ld [hl-], a
    ld l, d
    ld h, c
    cp $43
    ld [de], a
    ld h, c
    db $fd
    xor $6a
    ret c

    add b
    ld [c], a
    add l
    jr z, jr_02e_646d

jr_02e_646d:
    ld c, a
    cp [hl]
    cp a
    cp $a2
    xor c
    ld l, e
    add l
    ld [hl], c
    rst $38
    ldh a, [$6d]
    add b
    db $e3
    add l
    rlca
    nop
    inc l
    or $a0
    ret nz

    db $fd
    pop bc
    cp l
    add d
    ld b, l
    scf
    dec a
    jr c, jr_02e_64c3

    dec a
    ld a, [bc]
    db $fc
    db $ed
    scf
    or b
    and b
    sbc e
    jp c, $0021

    call nc, Call_000_002c
    ld h, a
    ld b, b
    ld c, $be
    inc b
    ld b, e
    ld b, e
    ld b, l
    db $fc
    db $ed
    inc bc
    add [hl]
    nop
    inc [hl]
    ld a, e
    ld b, c
    sub d
    cp h
    ld bc, $ff98
    push hl
    ld [hl], h
    ld [bc], a
    sub a
    pop af
    and $e8
    ldh [$9a], a
    nop
    inc bc
    add e
    nop
    ld a, [c]
    ld a, e
    ret z

    rst $08
    and h
    ld a, [c]
    add d
    db $ed

jr_02e_64c3:
    add h
    cp h
    and h
    inc bc
    add h
    nop
    nop
    xor b
    nop
    nop
    nop
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $e0
    rst $18
    ld c, l
    ld c, l
    dec c
    ld c, l
    inc c
    rst $38
    ei

Jump_02e_64e1:
    ld c, h
    ld c, h
    ld hl, $de4c
    add sp, -$37
    pop hl
    jp $bfe3


    pop hl
    ld c, l
    ret nz

    rst $38
    cp a
    db $ec
    ret nz

    add l
    rst $20
    ld a, e
    ld [c], a
    ret nz

    rst $38
    ld a, [hl]
    db $ec
    add l
    and $3e
    push hl
    dec c
    dec c
    nop
    ret nz

    cp $3d
    jp hl


    nop
    rst $38
    db $fc
    db $d3
    nop
    ld hl, sp-$20
    jp z, $fd3e

    nop
    db $ec
    add l
    dec l
    db $fd
    ret nz

    dec l
    cp a
    rst $38
    ld a, a
    rst $20
    nop
    db $ec
    ret nz

    pop hl
    ld c, l
    ld bc, $512d
    rst $30
    dec sp
    ret z

    ld a, [hl-]
    jp $ec00


    add b
    ldh [$fb], a
    ret nz

    ld b, d
    db $eb
    rrca
    ld l, h
    ld c, h
    inc l
    inc l
    ld l, [hl]
    rst $28
    cp [hl]
    pop hl
    push af
    and b
    nop

Jump_02e_653c:
    sla a
    dec l
    dec l
    dec l
    cp e
    pop bc
    pop bc
    db $eb
    ld l, h
    push de
    ld [c], a
    cp a
    db $f4
    jr jr_02e_654c

jr_02e_654c:
    call z, $a1bc
    cp [hl]
    call z, Call_02e_4b2c
    rst $38
    pop hl
    db $ec
    push de
    nop
    call z, Call_02e_4deb
    ld c, l
    ld a, d
    and c
    dec l
    ld c, $e9
    inc l
    dec hl
    dec bc
    rlca
    dec bc
    dec hl
    dec bc
    cp a
    push af
    nop
    call z, $a1f4
    rst $38
    pop bc
    ld c, $e8
    rla
    inc l
    inc l
    ld c, e
    cp a
    ld [c], a
    ld l, h
    add b
    push af
    nop
    jp hl


    ret nz

    db $e3
    add hl, bc
    dec c
    call c, $c289
    ret nz

    ld l, e
    ret nz

    ld [c], a
    ld a, [hl+]
    jp nc, $e985

    ei
    and $c7
    ld l, l
    dec c
    ld l, e
    sbc e
    add [hl]
    sub e
    add b
    cp $c0
    ld l, e
    dec bc
    ld h, e
    dec c
    ld c, e
    nop
    ei
    ld b, h
    push hl
    pop bc
    pop hl
    ld l, e
    dec c
    cp a
    pop hl
    ld a, $1c
    call nz, $6c6c
    ld l, h
    dec hl
    dec bc
    xor $e0
    ret nz

    push de
    jr nc, jr_02e_65b5

jr_02e_65b5:
    xor b
    db $fd
    add e
    pop bc
    ldh [$fe], a
    ldh [rOCPD], a
    dec bc
    adc b
    ret nz

    inc c
    pop hl
    rlca
    inc l
    ld c, e
    dec hl
    pop bc
    ret nz

    add c
    ldh [rBCPD], a
    or d
    nop
    adc d
    or e
    add c
    and a
    ld l, l
    ld l, e
    ld l, e
    jp nz, $bee1

    pop hl
    dec c
    inc c
    pop hl
    ld l, h
    rlca
    ld l, h
    dec c
    dec c

jr_02e_65e0:
    ld a, a
    ret nz

    or h
    ldh [$ba], a
    or c
    nop
    xor $05
    ldh [$64], a
    rst $38
    db $e3
    ret nz

    pop hl
    ld l, e
    ld bc, $34c1
    ldh [$0b], a
    dec bc
    ld bc, $20e0
    cp c
    and b
    nop
    db $fd
    add $c1
    dec b
    ldh [$7e], a
    db $e4
    ld l, e
    pop bc
    pop hl
    ret nz

    ldh [rNR33], a
    ld c, e
    inc [hl]
    ldh [$0b], a
    dec hl
    dec c
    ld [hl-], a
    db $e3
    and h
    adc l
    add l
    adc d
    jr jr_02e_65e0

    ret nz

    ret nz

    add sp, -$7d
    call nz, Call_02e_4b0d
    ld a, a
    ld [c], a
    db $fd
    ret nz

    ld a, $c0
    ret c

    dec b
    ld h, b
    ld h, e
    adc e
    add l
    adc d
    dec c
    ld c, l
    inc b
    db $e3
    dec hl
    ld a, [bc]
    dec hl
    ld l, d
    dec bc
    add d
    db $e3
    ld c, h
    ld b, b
    pop hl
    ld c, e
    rst $38
    ret nz

    cp $c0
    ret nz

    ld a, $c2
    di
    add e
    ei
    rst $20
    add l
    xor b
    ret nz

    db $e3
    ld bc, $0ae2
    ld a, [bc]
    nop
    ld c, e
    ldh [$cf], a
    jp $e1c0


    ld a, $a0
    ld a, [hl]
    pop bc
    cp $a0
    or d
    ret nz

jr_02e_665c:
    sbc h
    add b
    ldh [$fd], a
    add sp, $00
    rst $00
    ld b, l
    ld h, b
    ld b, $a0
    add d
    pop bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, d
    ld c, l
    ret nz

    ld l, e
    rst $08
    jp $0c2c


    dec c
    dec c
    ccf
    pop bc
    nop
    ret nz

    pop hl
    push af
    and b
    sbc $c2
    ret nz

    ld [$4785], a
    call nz, $bf80
    ldh [$c4], a
    and b
    dec b
    ld a, [hl+]
    ret nz

    pop hl
    ld c, e
    ld a, [hl-]
    and l
    ld b, b
    ret nz

    cp $a0
    pop af
    and d
    pop bc
    ldh [rP1], a
    sbc a
    add c
    dec de
    and e
    jp z, $8544

    ld c, b
    cp $c2
    ret nz

    ld [c], a
    ret nc

    jp nz, $e03d

    nop
    ret nz

    and e
    pop bc
    jp nz, $8239

    rst $18
    add h
    jp z, Jump_02e_7bac

    ld b, d
    ld b, l
    ret nz

    cp [hl]
    add $00
    pop de
    and b
    ld c, d
    ret nz

    db $fd
    ret nz

    ld [bc], a
    and d
    add c
    jp nz, $e3bf

    ret nz

    rst $20
    jp z, RST_28

    add l
    ld h, e
    dec b
    pop bc
    ld [bc], a
    push bc
    sub c
    and b
    ld a, $a0
    ld b, a
    ret nz

    ld d, h
    jr nz, jr_02e_665c

    add b
    nop
    ccf
    add b
    cp [hl]
    call nz, Call_02e_6161
    db $10
    ld b, h
    jp z, $8525

    ld b, [hl]
    ld b, h
    ld h, d
    add b
    and c
    inc e
    jp nc, $81c1

    ld [c], a
    dec c
    ld l, e
    inc l
    cp [hl]
    jp $a07e


    ld [hl-], a
    and b
    ld [bc], a
    ld [hl], $c0
    ld c, l
    adc h
    add $00
    xor $b4
    jp nz, $c07c

    ld b, b
    and c
    ld d, b
    and b
    add b
    add hl, bc
    ret nz

    or $80
    ret nz

    pop hl
    cp [hl]
    ret nz

    ld a, $a2
    cp a
    ld [c], a
    ld c, [hl]
    pop bc
    dec l
    ld b, b
    nop
    ld a, [c]
    rst $38
    and e
    add hl, bc
    and d
    pop de
    db $e3
    ld bc, $fea2
    ld b, d
    inc c
    cp [hl]
    add b
    sub b
    add d
    pop hl
    ld b, l
    jp nz, $f400

    cp a
    and a
    dec c
    ccf
    ldh [$ce], a
    add b
    dec l
    and c
    dec c
    ld b, e
    pop hl
    ld c, l
    and b
    ld d, c
    nop
    cp l
    add b
    dec hl
    ld a, b
    and c
    ld c, e
    add b
    ld e, d
    db $e3
    nop
    ld a, [c]
    push bc
    ld h, h
    ld b, c
    and c
    sub b
    and c
    inc [hl]
    ld b, b
    ld b, e
    db $e3
    inc l
    nop
    ld [bc], a
    ld b, b
    ret nz

    db $e4
    db $76
    ld b, b
    rst $38
    ret nz

    jp c, Jump_000_0024

    ret nc

    add [hl]
    ld h, c
    pop bc
    call nz, $cf9c
    ret nz

    ld [de], a
    and l
    inc l
    ld l, h
    ld c, h
    db $fd
    ld h, c
    ret nz

    db $e3
    dec bc
    nop
    cp [hl]
    pop bc
    nop
    db $f4
    jp Jump_02e_40a2


    add c
    rst $10
    ld [c], a
    add l
    ret nz

    call nz, $b461
    ld b, b
    ld de, $866c
    pop bc
    ccf
    pop hl
    ld a, [hl]
    pop hl
    ld l, e
    ld a, [bc]
    and l
    nop
    rst $28
    ld b, c
    add c
    ld b, $05
    ld h, c
    ld l, e
    ld c, e
    cp [hl]
    ldh [$c4], a
    ld h, b
    add l
    ld h, d
    add hl, bc
    db $e3
    cp [hl]
    add c
    add b
    ld a, $e3
    ret nz

    pop hl
    nop
    call Call_000_2049
    rst $00
    inc hl
    jp $c162


    add b
    ld a, [bc]
    rlca
    ld l, d
    ld l, e
    ld c, e
    ld b, [hl]
    ld h, d
    ld [hl], $80
    ld [hl], $c1
    xor $c2
    ld a, e
    ld h, c
    ldh a, [$b3]
    ld h, b
    nop
    rst $08
    ld a, [bc]
    inc hl
    ld [bc], a
    rst $00
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    inc bc
    dec hl
    ld c, e
    jp z, $c7c0

    add b
    ld [hl], $80
    add [hl]
    ld h, b
    pop bc
    db $e3
    db $eb
    and e
    ld h, b
    add c
    add sp, $00
    xor d
    ld bc, $5485
    pop hl
    ld d, b
    add c
    inc c
    ld c, h
    ld c, d
    db $e3
    add b
    ld b, $40
    cp $86
    ret nz

    push hl
    ld a, e
    xor e
    nop
    ld b, [hl]
    ret nz

    db $e3
    ret nz

    jp nz, Jump_000_000b

    pop de
    jr nz, jr_02e_687f

    and c
    ret nc

    ret nz

    ld bc, $2fe5
    ld b, c
    ld b, b
    ld [c], a
    ld a, $c1
    ld a, e
    rst $00
    jr nc, jr_02e_6811

jr_02e_6811:
    inc hl
    inc bc
    and e
    ld b, l
    ld b, c
    ret nz

    db $e4
    dec bc
    ld l, h
    rst $00
    ld h, b
    xor $01
    ld bc, $ed2d
    ld h, b
    pop bc
    jp nz, Jump_000_21fa

    ret nz

    db $e3
    nop
    pop de
    ld b, e
    and l
    add l
    jr nz, @+$06

    ld b, d
    add c
    ret nz

    ldh [$2c], a
    inc bc
    and e
    ld a, a
    add c
    ld b, c
    and $c0
    jp nz, $9100

    sbc b
    jp Jump_02e_4683


    ld b, l
    ret nz

    and b
    ld l, e
    dec bc
    ld d, l
    ld b, h
    add b
    and b
    inc c
    nop
    ld bc, $00e5
    ret c

    scf
    ld [bc], a
    ret


    inc h
    ret nz

    pop hl
    inc bc
    add e
    dec bc
    inc h
    cp $63
    ld b, b
    ret nz

    and $00
    sub b
    dec a
    pop bc
    ld b, b
    db $e3
    ret nz

    add c
    ret nz

    db $e3
    dec bc
    dec a
    ld b, $19
    dec hl
    rst $38
    ld h, c
    ld a, $a3
    dec c
    ld l, l
    rst $10
    dec b
    nop
    ld l, [hl]
    ret nz

    db $e4
    nop
    ld b, b
    db $e3
    cp h

jr_02e_687f:
    nop
    ret nz

    push hl
    nop
    and b
    ld b, c
    and $24
    nop
    add l

jr_02e_6889:
    ld h, a
    nop
    jp hl


    nop
    add b
    push hl
    ld a, a
    add d
    cp a
    add c
    ret nz

    ldh [$fe], a
    push bc
    rst $28
    ld h, d
    ld [bc], a
    call nz, $42ff

jr_02e_689d:
    ld b, b
    nop
    pop de
    ld b, e
    ld b, d
    ccf
    call nz, Call_02e_42cf
    ld c, a
    ldh [$3e], a
    ld b, e
    ld c, h
    ld l, $81
    nop
    ld b, c
    pop hl
    ret nz

    db $e3
    rst $38
    inc h
    nop
    call $2441
    ld a, a
    add e
    ld de, $0fe1
    ldh [rTMA], a
    cp l
    ld [bc], a
    ld l, h
    ld c, h

jr_02e_68c3:
    ld a, $43
    add d
    adc d
    nop
    ld c, a
    ld bc, $be25
    and e
    nop
    rst $08
    ld bc, $40cb
    ret nz

    ld b, e
    ld a, $42
    ld b, d
    call nz, $a295
    nop
    sub [hl]
    nop
    ld [hl+], a
    jr jr_02e_689d

    ld b, h
    adc l
    nop
    ret nz

    ld b, h
    ld c, e
    dec hl
    jr nc, jr_02e_6889

    pop bc
    call nz, Call_000_2985
    stop
    adc a
    ret nz

    add sp, -$42
    ld [hl+], a
    add d
    ld h, b
    inc l
    cp $21
    pop af
    ldh [$e6], a
    ret nz

    nop
    ld b, e
    ret nz

    add c
    ld b, l
    nop

jr_02e_6903:
    ld d, c
    pop bc
    inc b
    ld a, l
    and l
    ld [hl], h
    ld [bc], a
    ld e, d
    ld bc, $c0bf
    nop
    or e
    ld hl, $4068
    push bc
    add e
    nop
    ld d, e
    pop bc
    inc b
    cp $a4
    ld a, e
    ld h, c
    inc sp
    inc b
    nop
    db $fd
    ld b, b
    ld l, l
    ld h, c
    daa
    and c
    ld b, h
    inc b
    nop
    ld d, a
    cp [hl]
    and [hl]
    db $fc
    ldh a, [$80]
    ld [c], a
    nop
    ld d, [hl]
    add e
    nop
    ld sp, $e6c0
    ld bc, $fc42
    ldh a, [$c0]
    rst $20
    nop
    jr nc, jr_02e_6903

    inc bc
    jr nz, jr_02e_68c3

    db $e3
    ld d, d
    ld h, h
    ld a, [$80ee]
    push hl
    nop
    dec [hl]
    dec l
    ld [bc], a
    ld [hl+], a
    ret nz

    pop hl
    ld [bc], a
    ld de, $2d40
    db $fc
    db $ed
    ret nz

    db $e3
    add h
    ld h, d
    nop
    ld [hl-], a
    ld a, a
    add d
    ld b, c
    inc bc
    nop
    add b
    ld hl, sp-$7b
    ld a, [hl+]
    nop
    ld [$6369], a
    ret nz

    rst $38
    nop
    dec [hl]
    add sp, $02
    cp $a1
    adc b
    jp nz, $fc21

    rst $28
    cpl
    jp nz, $da2d

    ld hl, $b600
    ld l, d
    ret nz

    ld c, l
    dec bc
    ld c, l
    dec l
    db $d3
    jr nz, jr_02e_69b2

    cp [hl]
    pop af
    pop bc
    ret nz

    inc bc
    add e
    nop
    inc [hl]
    sub b
    ld a, e
    add c
    cp e
    ld h, d
    ld [hl], l
    push bc
    ld [hl-], a
    add c
    ld l, e
    ld d, l
    add d
    db $fc
    push hl
    ld l, l
    ld [$a3dc], sp
    nop
    jp nc, $a57b

    ld c, l
    cp a
    rst $20
    add c
    and c
    pop bc
    jp hl


    ld e, c
    ld [hl+], a
    nop
    sub a
    pop bc
    nop

jr_02e_69b2:
    xor b
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
    rst $30
    or $0f
    nop
    rst $38
    pop hl
    ldh [$fd], a
    rst $18
    ld [$e3ee], a
    call z, $c3e5
    pop hl
    cp [hl]
    ld [$e4e1], a
    nop
    ldh [$e7], a
    rst $18
    ld [c], a
    adc a
    ld [$e4c9], a
    rst $18
    rst $20
    ret nz

jr_02e_69f3:
    db $eb
    ld l, e
    db $e3
    rst $28
    jp hl


    nop
    ldh [$ec], a
    ld c, h
    ld [$f0c0], a
    cpl
    ld [$ef80], a
    ldh [$ee], a
    ld b, b
    db $ec
    jr nc, jr_02e_69f3

    nop
    ld h, c
    db $ed
    add b
    push hl
    and c
    push af
    inc d
    db $e3
    ldh [$ea], a
    sbc a
    rl b
    db $e3
    cp $e8
    nop
    ld d, c

Jump_02e_6a1c:
    db $eb
    rra
    rst $20
    ldh [$fa], a
    rst $08
    db $ec
    pop af
    db $ed
    ldh [$fb], a
    ldh a, [$fe]
    db $eb
    and h
    nop
    ld e, l
    rst $20
    rst $38
    db $e3
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
    db $f4
    di
    pop af
    rst $38
    and $e0
    rst $38
    rst $38
    rst $38
    ld b, $f3
    ld a, [c]
    inc de
    inc de
    call c, Call_000_00ed
    nop
    nop
    nop

Call_02e_6a80:
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

jr_02e_6bfd:
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
    jr nz, jr_02e_6bfd

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_02e_64e1

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

jr_02e_6c73:
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

jr_02e_6cb1:
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
    jr nc, jr_02e_6c73

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
    jr nz, jr_02e_6cb1

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

jr_02e_6d56:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_02e_6d56

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
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    cp l
    ld [hl], a
    inc b
    ld [hl+], a
    add h
    ld d, c
    nop
    nop
    ld a, b
    ld a, [hl-]
    rst $18
    ld e, a
    add b
    ld [de], a
    nop
    nop
    sbc [hl]
    ld [hl+], a
    rst $18
    ld e, a
    ld a, [hl]
    ld hl, $0000
    ld a, a
    ld [hl-], a
    rst $18
    ld e, a
    sbc a
    ld bc, $0000
    ccf
    ld c, d
    rst $18
    ld e, a
    rst $38
    jr nz, jr_02e_6dfa

jr_02e_6dfa:
    nop
    ld e, $5e
    rst $18
    ld e, a
    ret c

    ld a, h
    nop
    nop
    cp a
    rst $38
    add b
    rst $38
    add a
    db $fc
    add h
    cp $e7
    rst $38
    cp a
    nop
    rst $38
    rst $38
    inc c
    ld e, $1f
    rst $38
    pop hl
    ccf
    xor a
    ld l, $3f
    rrca
    ld h, b
    ldh a, [$e1]
    nop
    rst $38
    ldh [$c0], a
    rst $38
    ldh [$30], a
    ld a, b
    add sp, $0c
    db $fc
    ld b, $ff
    sbc a
    ld bc, $e1ff
    ccf
    ld hl, $e7fe
    ret nz

    pop af
    rlca
    rst $38
    rrca
    ld a, [de]
    inc a
    jr nz, jr_02e_6e78

    inc l
    ld a, a
    ld d, a
    di
    ld [hl], e
    ld l, a
    ret nz

    ld [c], a
    call nz, $f8e0
    ld [$68f8], sp
    rst $18
    db $fc
    call nc, $ec9c
    inc c
    ret nz

    push af
    db $fd
    add a
    db $eb
    rst $38
    add [hl]
    ld a, b
    ldh [$87], a
    sub b
    push hl
    rlca
    adc a
    sbc c
    rst $18
    db $fc
    ld h, b
    rst $38
    daa
    ld a, a
    add b
    push hl
    jp nz, Jump_000_3fe7

    dec a
    ld a, l
    ld [$b4ff], sp
    rst $38
    add b
    rst $20
    ld a, b
    ldh [$f4], a
    cp $e0
    ld b, b

jr_02e_6e78:
    db $ec
    add l
    ld b, b
    pop hl
    daa
    ld [hl], b
    ld c, a
    ld h, b
    rst $38
    ld e, a
    ld b, b
    ld e, a
    ld a, a
    ld h, b
    rst $30
    sbc a
    ret nz

    cp $30
    pop hl
    inc [hl]
    ld a, [hl]
    jp z, $f51f

    rlca
    rst $08
    rst $18
    rst $20
    ld a, $fd
    db $e4
    ld c, $40
    add sp, -$5f
    cp a
    ldh a, [$fe]
    ldh [rDIV], a
    jp hl


    ld hl, sp-$3f
    jp z, Jump_02e_7fe0

    ld [hl], c
    ld a, a
    ld a, e
    rst $38
    ld a, a
    ld e, d
    ld e, [hl]
    ld a, e
    adc $90
    sub $c0
    rst $38
    sbc a
    jp z, Jump_02e_76e2

    di
    reti


    ld sp, hl
    jp hl


    rst $38
    db $fd
    call $cdfd
    ld a, a
    set 7, a
    dec b
    pop de
    rst $38
    inc b
    jp hl


    cp [hl]
    pop hl
    adc b
    push hl
    db $fd
    cp $e4
    ld [hl], e
    ld l, h
    rst $38
    ld e, a
    ld h, b
    ld a, [hl]
    ld a, a
    rst $38
    rst $30
    db $76
    ld [hl], a
    rst $38
    call $bf5f
    ld b, d
    ld e, l
    and e
    sbc h
    ld l, h
    rst $38
    db $f4
    inc c
    db $fc
    db $fc
    cp $df
    db $dd
    db $dd
    ccf
    ld h, a
    push af
    ei
    add l
    ld [hl], l
    adc e
    ret nz

    ld [$c0b8], a
    db $e3
    db $fc
    add a
    cp $e1
    ld a, h
    ret nz

    cp [hl]
    db $e4
    ld a, [hl+]
    ld hl, sp+$51
    rst $38
    db $f4
    xor a
    ldh [$b5], a
    db $e4
    db $eb
    ld_long $ff57, a
    xor [hl]
    di
    ld b, d
    ld a, a
    ld b, $4a
    rst $08
    and $ff
    rra
    cp $07
    db $d3
    rla
    xor $2a
    ld a, [c]
    ld a, a
    dec sp
    pop de
    dec d
    rst $38
    dec [hl]
    ld a, a
    pop hl
    cp $e1
    pop af
    cp a
    ld a, h
    add $88
    pop hl
    ld b, b

jr_02e_6f30:
    call nz, $fe86
    add a
    db $fd
    rst $38
    add l
    ccf
    rst $38
    rst $20
    ldh a, [$57]
    ld e, b
    ld l, a
    rst $38
    ld l, b
    ld e, e
    add sp, -$4b
    db $e4
    xor a
    ldh [$2e], a
    rst $38
    or e
    jp z, Jump_000_31ff

    ld a, a
    ld c, b
    rst $28
    or [hl]
    rst $38
    xor a
    push af
    inc sp

jr_02e_6f54:
    sbc c
    dec b
    db $fd
    inc bc
    ld a, [c]
    pop bc
    rlca
    inc c
    pop hl
    ld [$bae0], sp
    ld [c], a
    ret nz

    pop bc
    inc b
    jp z, $ff87

    rst $38
    add b
    add h
    pop af
    ld b, [hl]
    or $24
    ld a, c
    jr jr_02e_6f30

    ccf
    ld [hl], a
    ld a, a
    ld [hl-], a
    ld h, a
    rst $38
    dec b
    ret nz

    ld bc, $ffef
    inc de
    rst $38
    ccf
    rst $30
    ldh [$7c], a
    rst $08
    xor b
    reti


    call c, $e1f0
    ret nz

    db $e3
    ccf
    and c
    ld a, [hl]
    jp Jump_000_01ff


    ld a, [c]
    ld b, $e1
    db $fc
    ld a, [hl]
    db $e4
    ret nz

    pop hl
    cp a
    ldh [$6f], a
    di
    rst $38
    sbc [hl]
    di
    dec d
    add hl, de
    rrca
    jr jr_02e_6faf

    inc c

jr_02e_6fa5:
    cp $c0
    pop hl
    ld a, [$ed0f]
    sbc a
    ld a, [c]
    sbc a
    ld d, b

jr_02e_6faf:
    rra

jr_02e_6fb0:
    jr nc, @-$1e

    jr nc, jr_02e_6f54

    ld h, b
    or b
    pop hl
    call nc, $90e5
    push hl
    rst $38
    xor a
    and b
    ld l, a
    ldh a, [rNR12]
    jr c, jr_02e_6fdf

    ld e, $ef
    inc de
    ld [hl], a
    ld e, a
    ret


    sub b
    pop hl
    ld a, l
    ld b, a
    or $ff
    rlca
    add sp, -$68
    or b
    jr c, jr_02e_6fa5

    ld hl, sp+$78
    push bc
    xor h
    add b
    pop hl
    db $fd
    ld a, [hl+]
    pop hl
    ld e, [hl]

jr_02e_6fdf:
    and h

Jump_02e_6fe0:
    ld h, b

jr_02e_6fe1:
    pop hl
    inc d
    ld [hl], b
    rst $38
    dec bc
    ld hl, sp-$6c
    cp $6f
    rst $38
    rlca
    dec b
    ei
    ld a, [bc]
    rra
    ld h, b
    pop hl
    db $ec
    rra
    or b
    ccf
    ld d, h
    sbc [hl]
    ld d, a
    ldh [rBCPS], a
    adc h
    sub h
    cp h
    ld d, b
    pop hl
    db $ec
    and d
    pop hl
    ldh a, [$60]
    rst $20
    jr nz, jr_02e_6fb0

    ld e, h
    pop bc
    and b
    and d
    inc c
    ld e, $10
    add hl, sp
    rst $38
    ld h, h
    pop af
    and b
    pop af
    nop

jr_02e_7016:
    cp h
    inc b
    ld a, [hl]
    cp [hl]
    db $10
    and c
    jr nc, jr_02e_7016

    inc c
    cp $02
    daa
    and b
    ld bc, $ffc7
    nop
    ld a, a
    jr nz, @-$54

    sbc $a0
    ldh a, [$81]
    ld b, $0e
    rst $38
    inc bc
    ld [bc], a
    rlca
    rrca
    rrca
    rra
    db $10
    add hl, sp
    ei
    jr z, jr_02e_706f

    jr nc, jr_02e_6fe1

    add b
    add b
    ret nz

    ldh [$e0], a
    inc hl
    ldh a, [rNR10]
    ld a, [hl+]
    and b
    ret nz

    add a
    cp b
    add b
    add [hl]
    cp [hl]
    ret nz

    ret nz

    add b
    rst $38
    jr nz, @+$39

    jr c, jr_02e_70d5

    ld b, a
    ld l, a
    call c, $cfc1
    inc sp
    ld a, b
    ld c, $9f
    or b
    add c
    and h
    db $e3
    db $e3
    rst $38
    add a
    sbc l
    ccf
    ld a, l
    sbc e
    pop hl
    ret nz

    adc b
    cp [hl]
    ret nz

jr_02e_706f:
    ret nc

    add d
    jr @+$01

    ccf
    jr nc, jr_02e_70ef

    ld d, [hl]
    ld e, c
    ld a, a
    ld a, a
    ld b, b
    db $fd
    rst $18
    ret nc

    add l
    ld c, b
    db $fc
    add h
    cp $82
    cp $3f
    ld h, d
    rst $38
    cp $87
    cp $86
    cp $e0
    db $fc
    ret nz

    cp $98
    jp Jump_02e_7f66


    ld a, c
    db $db
    ccf
    db $ec
    rla
    rst $38
    ld hl, sp+$35
    or $6f
    jp c, $aeb7

    xor c
    rst $38
    call nc, Call_000_3f00
    add b
    rst $18
    ld h, b
    rst $38
    sub b
    rst $38
    ccf
    ret c

    ccf
    add sp, $2f
    sub h
    ccf
    push af
    pop bc
    ld b, a

jr_02e_70b7:
    ld h, $c3
    call c, Call_02e_58a3
    pop bc
    ld [hl+], a
    ret


    ld e, d
    and b
    add a
    inc h
    rst $38
    ld l, a
    ld c, [hl]
    ld l, a
    ld b, b
    rst $38
    add [hl]
    ei
    add h
    rst $38
    db $fd
    add c
    rst $38
    add d
    xor $05
    db $fc
    ld c, b

jr_02e_70d5:
    rst $38
    db $fc
    db $e4
    db $fc
    inc b
    cp $c2
    ld a, [hl]
    add d
    ld a, a
    cp [hl]
    inc bc
    rst $38
    add d
    rst $28
    ld b, c
    ld a, a
    inc h
    add a
    ld hl, sp-$24
    and e
    ld d, b
    ret


    ret c

    ld h, c

jr_02e_70ef:
    pop bc
    rst $38
    ld a, b
    ld a, a
    ld d, a
    rst $38
    ld a, a
    ld a, a
    rst $30
    cp d
    db $d3
    db $ec
    or c
    rst $08
    cp a
    and b
    cp a
    ret nz

    jp Jump_000_3ce7


    call $ff61
    rst $38
    ld [de], a
    rra
    jp nz, $d20a

    ld h, $fc
    ld h, $f0
    add b
    ret


    jr nz, jr_02e_70b7

    and h
    ld l, b
    sub $a1
    cp a
    cp a
    push af
    pop af
    rst $38
    ld e, a
    jp z, $5b7f

    ld d, [hl]
    jp nc, $a0ff

    rst $38
    db $eb
    db $e3

jr_02e_7129:
    rst $38
    rst $38
    add hl, de
    rst $38
    db $fd
    rst $38
    rst $38
    ld l, a
    ld l, a
    cp [hl]
    ld e, a
    cp l
    add hl, de
    db $eb
    dec c
    rst $28
    rst $18
    pop bc
    cp l
    add c
    ldh [$8d], a
    ld e, a
    ld h, b
    ld a, $ff
    ld [hl], b
    ld d, a
    ld e, b
    dec hl
    ld a, h
    ld b, $07
    rlca
    db $fd
    dec c
    ld [hl], b
    and c
    push af
    rlca
    or [hl]
    rst $08
    ld l, [hl]
    ld c, $bf
    call nc, $a016
    inc h
    ldh [$f0], a
    or b
    and d
    add a
    cp [hl]
    ldh [$a1], a
    cp $86
    db $fd
    add h
    cp $82
    pop bc
    add b
    rst $30
    inc b
    cp $83
    dec l
    ld h, b
    ld d, c
    rst $38
    ld c, [hl]
    ld a, a
    ei
    and b
    ld a, a
    ld b, b
    and c
    ld b, b
    rst $38
    add d
    rst $38
    inc bc
    ld a, a
    rst $38
    inc d
    cp $e5
    db $fc
    ld a, [bc]
    db $fc
    jr nc, jr_02e_7129

    ld a, [hl]
    call nz, $a182
    rst $38
    pop hl
    ld a, a
    ld h, c
    cp a
    ret c

    and b
    ld hl, sp+$40
    and b
    call nz, Call_000_0069
    and b
    ld c, a
    ldh [$37], a
    jr c, jr_02e_71ba

    ld a, a
    jr c, @+$26

jr_02e_71a2:
    ld l, [hl]
    ld l, e
    di
    sub [hl]
    cp b
    nop
    and c
    rst $38
    call nc, Call_02e_5804

jr_02e_71ad:
    db $ec
    add sp, $08
    ret nc

    jr jr_02e_71a2

    jr nc, jr_02e_71ad

    ret c

    db $ec
    ldh a, [$81]
    cp [hl]

jr_02e_71ba:
    cp [hl]
    ld c, e
    rst $38
    adc $2d
    ld h, h
    ld d, $30
    cpl
    ld a, a
    ld [hl], l
    cp $a0
    ld [c], a
    ld [$dc03], a
    ld e, $b8
    jr c, @-$36

    rrca
    db $fc
    inc d
    cp $a2
    pop de
    add b
    jp nz, $b040

    ld b, e
    ldh a, [$64]
    cp $70
    ld h, e
    ld h, b
    rst $38
    add b
    rst $08
    ld c, a
    sbc a
    db $10
    rst $18
    cp c
    rrca
    ld hl, sp-$69
    ldh a, [$f0]
    ld [c], a
    ldh a, [rNR23]
    and $8c
    pop bc
    rst $38
    ld hl, $807d
    sub b
    ld b, c
    inc bc
    rlca
    inc c
    rst $38
    rra
    ld [de], a
    ccf
    ld hl, $436f
    ld e, a
    ld c, [hl]
    push af
    ld e, a
    add b
    ld b, c
    ldh [$e0], a
    ldh [$0c], a
    sbc [hl]
    ld l, d
    sbc [hl]
    ld sp, hl
    cp $6a
    and b
    or b
    ld b, e
    rra
    ccf
    ccf
    ld a, a
    ld [hl], b
    rst $28
    ld a, a
    ld h, e
    ld a, a
    ld b, a
    ldh a, [$e2]
    ret nz

    ldh [$f0], a
    rst $38
    ld hl, sp-$08
    db $fc
    inc e
    cp $8e
    cp $c6
    cp $5d
    add b
    sub [hl]
    di
    xor [hl]
    db $e3
    cp [hl]
    ei
    adc [hl]
    sbc a
    ei
    cp a
    ei
    xor a
    pop hl
    ld a, l
    pop hl
    sub $a0
    or a
    rra
    db $fd
    or a
    push af
    add a
    ld sp, hl
    rst $38
    and b
    ld b, h
    ld b, e
    db $fc
    jp hl


    rst $38
    db $eb
    db $e3
    rst $30
    rst $30
    ret z

    cp l
    xor c
    cp a
    rst $38
    sub h
    rst $38
    ld l, e
    rst $20
    or a
    ret nz

    rst $28
    adc b
    rst $38
    ld h, c
    cp a
    sub d
    rst $18
    ld [hl], d
    sbc $74
    cp $ff
    cp [hl]
    cp [hl]
    ld l, c
    cp l
    rst $10
    dec [hl]
    db $fd
    ld bc, $3cff
    ld a, a
    ccf
    ccf
    scf
    ld a, $37
    inc sp
    rst $38
    ld a, l
    ei
    xor l

jr_02e_7280:
    sbc b
    db $fd
    and e
    cp l
    add c
    rst $38
    db $fd
    rst $38
    xor a
    adc a
    ld a, d
    ld d, e
    cp $5a
    ld a, a
    ld [$fe5e], a
    ld b, $d7
    rst $00
    rst $38
    nop
    ld l, h
    ei
    ccf
    ld hl, $e0ed
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    ld a, a
    cp e
    ld a, h
    rst $38
    and c
    pop bc
    rst $38
    rst $38

jr_02e_72a9:
    rst $00
    cp $e0
    adc a
    db $e3
    rst $38
    ld a, $ec
    ldh [$81], a
    pop bc
    db $ed
    ld [c], a
    adc b
    rst $38
    xor e
    set 7, a
    cp e
    cp $e0
    xor e
    or $e0
    call c, Call_02e_41c1
    rst $38
    db $fd
    ld d, l
    cp $e6
    rst $38
    sub a
    ret c

    ld l, a
    cp $2b
    ld a, a
    ld l, [hl]
    dec h
    ld [hl], $1f
    jr nc, jr_02e_72ea

    add hl, de
    ret nc

    ld h, d
    rst $38
    ld [bc], a
    call c, $e01c
    jr nz, jr_02e_7280

    ld h, b
    ld b, b
    ei
    ld h, b
    and b
    jr nz, jr_02e_72a9

    ld d, [hl]
    ret nz

    ccf

jr_02e_72ea:
    ld a, b
    dec bc
    ld a, a
    jr @+$07

    inc c
    dec b
    inc b
    ld a, [bc]
    ld c, $70
    ld h, c
    rst $38
    xor $ff
    inc a
    add [hl]
    db $f4
    ld h, h
    ret c

    ld l, h
    rst $28
    ret c

    jr jr_02e_736b

    ld a, b
    or b
    ld h, d

jr_02e_7306:
    rst $38
    ld a, h
    rst $38
    di
    inc a
    ld a, a
    ldh [$c1], a
    sub b
    ld [c], a
    nop
    ld a, [hl]
    rst $38
    ld a, h
    dec sp
    cp $78
    ld [c], a
    ret nz

    db $fc
    cp $fe
    ld [hl], b
    jp $ecfe


    rst $38
    nop
    inc sp
    nop
    jr nc, jr_02e_7326

jr_02e_7326:
    ld h, b
    nop
    ld h, a
    rlca
    nop
    rst $08
    inc bc
    cp $e2
    db $ed
    pop hl
    jr nz, @+$22

    inc a
    and d
    ccf
    pop bc
    ldh a, [$e1]
    and $df
    db $e4
    pop hl
    and $df
    db $e4
    nop
    ret nz

    rra
    sbc a
    scf
    jr nc, jr_02e_7306

jr_02e_7347:
    jr nz, jr_02e_7347

    ldh [rNR10], a
    sbc a
    db $f4
    ldh [$e4], a
    nop
    db $fc
    sbc e
    add sp, -$2c
    ld bc, $f803
    ld sp, hl
    dec b
    db $fd
    ld bc, $fe1e
    pop hl
    ld sp, hl
    inc bc
    inc bc
    cp $80
    rst $00
    add e
    ld [c], a
    or [hl]
    db $e3
    dec [hl]
    cp $fe

jr_02e_736b:
    ldh [$fc], a
    cp $e2
    inc b
    nop
    di

jr_02e_7372:
    ld [c], a
    ld e, c
    pop hl

jr_02e_7375:
    ld a, a
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld b, $59
    push hl
    jr z, @-$72

    db $e4
    ld b, d
    db $ed
    jr nc, jr_02e_7372

    add hl, de
    jr nz, jr_02e_7375

    sbc c
    add hl, sp
    push hl
    ld sp, hl
    and $1e
    rst $38
    call $6701
    ld bc, $fc67

jr_02e_7396:
    ret nz

    cp $e2
    db $f4
    pop hl
    ld [$e0f1], a
    ld bc, $e4f1
    nop
    db $f4
    pop hl
    ret nz

    nop
    sbc a
    ei
    rra
    cp a
    rra
    ld [c], a
    sbc a
    db $10
    ret nz

    nop
    rst $38
    ld sp, hl
    rra
    jr nz, jr_02e_7396

    add d
    add sp, -$01
    inc bc
    nop
    ld sp, hl
    ld hl, sp+$7d

jr_02e_73bd:
    db $fd
    rra
    ld [c], a
    ld sp, hl
    ld bc, $0303
    rst $38
    ld b, h
    pop hl
    ld a, [hl]
    ret nz

    jp $f5f1


    push af
    pop af
    pop af
    rst $38
    rst $28
    ldh [rOBP1], a
    cp $37
    ldh [$88], a
    pop bc
    inc bc
    jr jr_02e_73bd

    dec e
    ldh [$f4], a
    cp $e0
    pop bc
    inc b
    jr @-$18

    push af
    rst $00
    jp hl


    ret z

    ld e, b
    pop bc
    dec b
    db $e3
    di
    nop
    ld [hl], a
    and $00
    call z, $e038
    inc sp
    nop
    ld h, [hl]
    ld b, h
    jp nz, Jump_02e_6a1c

    ldh [$f0], a
    ldh [$9f], a
    nop
    ccf
    ld c, e
    ret nz

    ret z

    jp hl


    ld l, c
    add $55
    rlca
    ret z

    ret nz

    inc bc
    jp nz, Jump_000_01c0

    di
    ret nz

    ei
    pop bc
    ldh [$2e], a
    dec c
    push bc
    db $fc
    nop
    ld hl, sp-$02
    ldh [$f0], a
    sub c
    call nz, $e7fc
    xor [hl]
    db $ed
    and c
    ccf
    nop
    rrca
    sub d
    ret nz

    nop
    adc [hl]
    ret nz

    rrca
    ld h, $e2
    db $e4
    ld b, $06
    reti


    db $e4
    rst $08
    and h
    ret nz

    inc b
    ldh [$2d], a
    call nz, $bdee
    xor d
    ld a, [$5a00]
    jp nc, $a5a2

    nop
    add c
    ld a, $fe
    ldh [rIE], a
    nop
    ld h, l
    nop
    db $fd
    dec [hl]
    ret nz

    sbc h
    push hl
    cp $3e
    ret nz

    add b
    rlca
    add b
    nop
    add d
    nop
    sub e
    cp e
    nop
    sbc e
    ld [hl], h
    ret nz

    adc b
    nop
    add b
    push bc
    and e
    ccf
    dec hl
    nop
    rra
    cp $e0
    rrca
    cp $e1
    db $fc
    db $ec
    ldh [$fe], a
    jp hl


    xor d
    ld b, c
    db $e3
    inc bc
    add hl, sp
    ldh [rTAC], a
    ld l, e
    ldh [$3f], a
    rlca
    rst $08
    rlca
    adc d
    dec a
    xor h
    ld a, [c]
    ld a, [de]
    ldh [$f9], a
    adc h
    ld [c], a
    inc hl
    and e
    ld [hl+], a
    db $eb
    cp $fc
    rst $10
    ret nz

    dec bc
    xor d
    cp $00
    ld [c], a
    nop
    adc [hl]
    ld b, $df
    ld a, $1e
    adc a
    rlca
    ldh [$f4], a
    add h
    adc a
    nop
    ld a, a
    db $e3
    ret nz

    ld sp, hl
    ldh a, [$e3]
    ret nz

    rrca
    ldh a, [$83]
    ld d, c
    ld hl, sp-$23
    add b
    inc a
    pop hl
    jp c, Jump_000_01c5

    call Call_02e_6a80
    db $76
    and b
    cp d
    inc e
    db $e3
    rst $38
    ld l, h
    and b
    inc bc
    nop
    ld sp, $e0fe
    rst $38
    ld d, e
    nop
    ld c, d
    ld [$42e1], a
    push hl
    add a
    and [hl]
    add b
    ld hl, sp+$20
    pop hl
    ld e, [hl]
    ld h, $e1
    ccf
    ret nz

    jr c, @-$22

    ld hl, $07e2
    db $eb
    jp nz, $ffe7

    nop
    add e
    cp $e6
    ld h, l
    nop
    add c
    pop bc
    add e
    push hl
    db $dd
    cp $e2
    pop bc
    ld [hl], b
    ld h, b
    ld d, l
    nop
    add b
    ret nz

    add b
    push af
    rst $18
    cp $e2
    ret nz

    ldh a, [$e3]
    ld bc, $0701
    ld sp, hl
    ld d, d
    cp $e2
    ld bc, $419f
    ld e, d
    push bc
    ret nz

    rst $10
    jp nz, $90c0

    ret nz

    add hl, bc
    ld b, d
    cp $e0
    jr c, @+$69

    ld a, c
    cp $e2
    jr z, jr_02e_7582

    or d
    ret


    sub d
    ldh [$3a], a
    cp b
    call nz, $8f0f
    ret nz

    ld a, a
    nop
    rst $28
    ld e, d
    ldh [rPCM12], a
    rst $20
    dec c
    add e
    ld c, h
    ldh [$9f], a
    nop
    nop
    nop
    nop
    xor l
    db $76
    rst $38
    ldh [$6f], a
    ld [hl], b
    rst $38
    and $6f
    ldh a, [$e1]
    ld e, [hl]
    db $fc
    rst $38
    rst $38
    rst $20
    and $8b
    adc h
    adc l
    ld a, b
    ld a, a
    ld a, l
    ld a, $ff
    and $7f
    ld a, b
    adc l
    adc h
    adc e
    jp z, $e8ff

    rst $20
    rst $28
    sbc c
    sbc d
    sbc e
    add [hl]
    add b
    jp hl


    add [hl]
    sbc e
    sbc d
    adc c
    sbc c
    jp z, $e8ff

    rst $20

jr_02e_7569:
    ld a, [hl]
    rst $38
    ldh a, [$ca]
    rst $38
    ret nz

    db $eb
    jr nz, jr_02e_7569

jr_02e_7572:
    ld e, d
    ld e, e
    jr nz, jr_02e_7572

    push hl
    ld a, [hl]
    sub d
    sub e
    sub h
    cp h
    jp z, $80ff

    db $eb
    ld b, [hl]
    ld h, h

jr_02e_7582:
    ld h, l
    ld c, c
    db $fc
    push hl
    ld a, [hl]
    rst $20
    and b
    and c
    and d
    jp z, $80ff

    db $ec

jr_02e_758f:
    ld l, h
    ld l, l
    jr nz, @-$60

    db $fc
    push hl
    ld a, [hl]
    xor c
    xor d
    xor e
    jp z, Jump_000_00ff

    db $eb
    ld d, l
    rst $38
    ld d, [hl]
    ld d, a
    jr nz, jr_02e_75d1

    cpl
    jr nc, @+$33

    jr nz, jr_02e_758f

    ld [hl-], a
    inc sp
    jr nz, jr_02e_75ac

jr_02e_75ac:
    rst $38
    db $ec
    db $eb
    sub l
    sub [hl]
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld c, c
    ld e, a
    ld h, b
    ld c, c
    ld a, [hl-]
    dec sp
    inc a
    rst $38
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld a, [hl]
    ld a, [hl]
    sub [hl]
    ld sp, hl
    sub l
    jp z, $e8ff

    rst $20
    and e
    and h
    ld a, c
    ld a, c
    jr nz, @+$01

    ld l, b

jr_02e_75d1:
    ld l, c
    jr nz, @+$22

    ld c, d
    ld c, e
    jr nz, jr_02e_7624

    ld a, a
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, c
    ld a, c
    and h
    and e
    jp z, $feff

    add sp, -$19
    xor h
    xor l
    ld l, [hl]
    ld l, [hl]
    inc [hl]
    dec [hl]
    ld [hl], $ff
    scf
    jr nz, jr_02e_7648

    ld e, c
    jr nz, jr_02e_7613

    jr c, jr_02e_762e

    sbc a
    jr nz, @+$70

    ld l, [hl]
    xor l
    xor h
    jp z, $e8ff

    rst $20
    sub a
    rst $38
    sbc b
    ld l, [hl]

Jump_02e_7603:
    ld l, [hl]
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld c, c
    rst $38
    ld h, c
    ld h, d
    ld h, e
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld l, [hl]
    rst $20

jr_02e_7613:
    ld l, [hl]
    sbc b
    sub a
    jp z, $e8ff

    rst $20
    and l
    ld l, [hl]
    ld l, [hl]
    rst $38
    ld l, [hl]
    ld d, b
    ld d, c
    ld d, d
    jr nz, @+$22

jr_02e_7624:
    ld l, d
    ld l, e
    ld l, a
    jr nz, jr_02e_7649

    ld d, e
    ld d, h
    add b
    ldh [$6e], a

jr_02e_762e:
    and l
    jp z, Jump_000_12ff

    add sp, -$19
    xor [hl]
    ret nz

    ldh [$fd], a
    db $ec
    xor [hl]
    jp z, $e8ff

    rst $20
    pop bc
    rst $28
    ld b, e
    ld l, [hl]
    ld l, [hl]
    jp z, $c0ff

    rst $38
    rst $38

jr_02e_7648:
    rst $38

jr_02e_7649:
    ret nz

    add sp, -$5a
    rst $38
    ldh [rNR44], a
    and a
    xor b
    ld a, [$c0e1]
    rst $38
    db $ed
    db $ec
    add a
    rst $38
    ldh a, [$ca]
    rst $38
    cp $e8
    rst $20
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $ff
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $e7
    rrca
    ld e, h
    ld e, l
    call z, $eaff
    jp hl


    db $10
    ld de, $ff12
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    ld a, a
    dec de
    inc e
    dec e
    ld e, $1f
    ld h, [hl]
    ld h, a
    call z, $feff
    ld [$20e9], a
    ld hl, $2322
    inc h
    dec h
    ld h, $ff
    jr nz, jr_02e_76c1

    jr z, jr_02e_76c5

    jr nz, jr_02e_76c8

    dec hl
    inc l
    ld bc, $ce2d
    rst $38
    db $ec
    db $eb
    rst $00
    pop bc
    push bc
    jp $c3bf


    or l
    pop bc
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

jr_02e_76c1:
    nop
    rst $38
    rst $38
    rst $38

jr_02e_76c5:
    rst $38
    rst $38
    rst $38

jr_02e_76c8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02e_76e2:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec d
    ld a, [bc]
    rst $38
    db $eb
    ld a, [hl+]
    rst $38
    pop hl
    ld [$ffff], sp
    rst $20
    and $c0
    rst $38
    ld a, [bc]
    ret nz

    rst $38
    ld c, d
    rst $38
    rst $20
    ld l, d
    ret nz

    rst $38
    add b
    ld a, [$e271]
    jp z, Jump_000_1eff

    ld b, b
    db $eb
    ld c, [hl]
    ld c, $0e
    ld l, [hl]
    db $fc
    push hl
    ret nz

    rst $38
    nop
    rst $28
    ld de, $ff0e
    add sp, -$40
    rst $38
    ret nz

    ld a, [c]
    ld l, $fc
    push hl
    ret nz

    rst $38
    add b
    rst $08
    rra
    inc c
    inc c
    inc c
    ld l, h
    dec c
    rst $38
    ldh [rLCDC], a
    rst $38
    ld b, b
    db $d3
    ld b, c
    inc l
    cp a
    ldh [$c0], a
    pop hl
    ld b, b
    db $e3
    add b
    rst $18
    add b
    ldh a, [$2c]
    add b
    ldh [$e9], a
    dec l
    ret nz

    rst $38
    ret nz

    or e
    rrca
    rst $38
    ldh [rWX], a
    dec bc
    dec bc
    pop af
    ld l, e
    ld b, b
    db $e3
    ret nz

    rst $38
    ret nz

    pop af
    dec hl
    dec bc
    dec bc
    dec bc
    inc d
    add b
    rst $38
    add b
    or $2f
    pop bc
    ldh [$2b], a
    add b
    jp $ffc0


    add b
    cp e
    ret nz

    ret nz

    rst $38
    ld b, b
    cp a
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld b, b
    adc d
    dec bc
    dec bc
    nop
    ret nz

    rst $38
    add b
    cp $01
    add d
    nop
    rst $38
    jp hl


    add sp, $44
    and b
    add h
    and [hl]
    ld hl, sp-$5f
    adc h
    adc $ff
    ret nz

    ei
    add hl, bc
    add hl, bc
    call z, $80ff
    ldh a, [rLY]
    and c
    ld l, $44
    add b
    rst $38
    ldh a, [$ef]
    dec bc
    rst $00
    add $bf
    jp $a079


    dec bc
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
    jp hl


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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rP1], a
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
    ld bc, $403a
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_02e_7a07

    jr jr_02e_7a77

jr_02e_7a07:
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

jr_02e_7a23:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_02e_7a5f

    cp $ff
    jr nz, jr_02e_7a23

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
    jr nz, jr_02e_7a23

jr_02e_7a5f:
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
    ld hl, $7a8b
    call Call_000_23e8
    add sp, $02

jr_02e_7a77:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7a8b
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_02e_7a94

    rst $30
    nop
    inc bc
    ret nz

jr_02e_7a94:
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

jr_02e_7aa6:
    ld a, [hl]
    cp $ff
    jr z, jr_02e_7ac8

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
    jr nz, jr_02e_7aa6

    ld a, b
    call Call_02e_7ad2
    ld a, c
    cp $04
    jr nz, jr_02e_7aa6

jr_02e_7ac8:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_02e_7ad2:
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

jr_02e_7ae8:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $403a
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
    jr nz, jr_02e_7b11

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_02e_7ae8

jr_02e_7b11:
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

Jump_02e_7bac:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02e_7e80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02e_7f66:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02e_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02e_7fe0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02e_7fff:
    rst $38
