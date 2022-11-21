; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $054", ROMX[$4000], BANK[$54]

Call_054_4000:
Jump_054_4000:
    inc d
    ld b, b
    jr nz, @+$49

    ld sp, $9e4f
    ld d, a
    ld l, [hl]
    ld e, h
    sub h
    ld h, a
    scf
    ld l, a
    dec d
    ld [hl], l
    db $21
    ld a, l

    db $d4, $7d

    ld e, $40
    ld c, [hl]
    ld b, b
    call z, $cc43
    ld b, l
    sbc d
    ld b, [hl]
    ld c, [hl]
    ld hl, $5f7f
    nop
    ld c, e
    ld h, b
    ld b, l
    rst $38
    ld a, a
    and $43
    nop
    ld c, e
    ld h, b
    ld b, l
    sbc d
    ld b, b
    rst $18
    ld [hl], d
    ld c, h
    db $10
    ld h, b
    ld b, l
    rst $38
    ld a, a
    nop
    ld c, e
    ld h, b
    ld b, l
    ld a, [bc]
    db $10
    rst $38
    ld a, a
    ccf
    ld d, c
    db $76
    inc h
    ld a, [bc]
    db $10
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    adc a
    jp $c33c


    inc a
    db $fd
    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    ld d, a
    rst $38
    rst $38
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    db $e3
    ld a, h
    rst $38
    jp $c3fc


    db $e3
    sbc h
    jp $fbbc


    rst $38
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    ld d, a
    ld a, a
    rst $38
    cp a
    ld hl, sp-$01
    ldh [$f3], a
    adc h
    ld hl, sp-$1f
    rst $38
    ld a, h
    db $e3
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    cp $c4
    pop hl
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $30
    rst $38
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    push af
    rst $38
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    ccf
    rst $38
    jp $c33e


    ccf
    pop bc
    jp $c33d


    ld a, a
    dec a
    db $ed
    rst $38
    db $d3
    inc a
    ld a, [hl]
    add c
    and b
    rst $20
    rst $38
    jp $e3bc


    sbc h
    cp h
    jp $c37c


    push de
    cp h
    cp $e0
    ld h, e
    and b
    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    rst $28
    db $d3
    rst $28
    rst $38
    nop
    add b
    db $e3
    cp e
    db $f4
    ld e, e
    rst $38
    db $f4
    xor h
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    rst $38
    di
    cp e

Call_054_40e2:
    db $f4

Call_054_40e3:
    db $db
    db $f4
    cp l
    jp $ffe7


    rst $38
    cp d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ld l, a
    cp $8e
    ldh [$af], a
    ld a, a
    or l
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld e, h
    xor $e2
    db $fd
    pop hl
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    ldh [rHDMA5], a
    ldh [$e0], a
    rra
    xor a
    rst $38
    rst $18
    rst $38
    or a
    db $fc
    ldh [$f8], a
    push hl
    rst $38
    push hl
    ld l, $de
    push hl
    ld e, a
    rst $38
    cp a
    cp [hl]
    ldh [$bf], a
    ld hl, sp-$1a
    cp a
    db $e3
    jp z, $e1f8

    ld e, a
    ret z

    ldh [$5f], a
    ret nc

    and $c7
    push hl
    db $fd
    rst $38
    rst $30
    rst $30
    rst $38
    jp c, $c0fe

    xor a
    cp $df
    ld hl, sp-$01
    ld l, a
    ld hl, sp-$21
    ldh a, [$03]
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    ld b, $ff
    ld e, h
    rst $38
    ld de, $74fe
    ei
    rst $38
    ret nz

    rst $38
    sub c
    rst $28
    ld c, [hl]
    rst $38
    ei
    rst $38
    rst $38
    and b
    rst $38
    inc b
    ei
    ld c, d
    or l
    and b
    ld e, a
    db $fd
    ld a, [bc]
    ld e, b
    ldh [rNR52], a
    rst $18
    sub e
    rst $28
    ld h, $df
    rst $38
    add d
    rst $38
    ld d, e
    rst $28
    adc c
    rst $30
    ld d, e
    rst $28
    db $fd
    add d
    ld c, d
    ldh [$f5], a
    rst $38
    ld [$f0ff], a
    rst $38
    rst $38
    xor d
    db $fd
    ld d, c
    cp $80
    rst $38
    ld d, l
    db $eb
    rst $38
    pop de
    sbc a
    sbc l
    ld c, a
    daa
    rla
    and e
    di
    rst $38
    db $db
    pop hl
    xor $f1
    or h
    ei
    ret


    rst $38
    db $fd
    jp c, $e0f0

    ld h, $17
    and d
    di
    ld e, d
    pop hl
    ld e, a
    ld l, [hl]
    pop af
    inc [hl]
    ei
    ld sp, hl
    add b
    xor $fe
    db $fd
    pop hl
    rst $38
    cp $fc
    rst $38
    ld a, [$fbfd]
    ldh a, [$fd]
    ld l, a
    cp $f9
    rst $38
    ld a, a
    cp $e0
    rst $38
    ld a, a
    ld b, b
    pop hl
    rst $30
    rra
    rst $28

Jump_054_41c9:
    ld a, a
    inc d
    ldh [$f4], a
    ei
    jp hl


    or $ff
    rst $28
    ret nz

    ld a, [c]
    ld sp, hl
    db $e3
    rst $38
    ret nc

    rst $28
    rst $18
    add l
    jp c, Jump_000_04bb

    xor a
    ld d, [hl]
    ret nz

    add a
    ld a, e
    rst $30
    rst $18
    cp a
    rst $30
    ld l, b
    ldh [$57], a
    db $fd
    xor c
    ld a, [hl]
    rst $18
    call $f3e3
    rst $30
    or $ba
    ld [c], a
    push af
    cp $ff
    cp a
    ld_long $fff4, a
    jp $efbf


    rst $18
    dec e
    rst $28
    cp d
    ld [c], a
    ld e, a
    rst $38
    ld [hl], l
    nop
    ld [c], a
    and c
    ldh [rNR30], a
    ldh [$7f], a
    ld a, [$f4fd]
    ei
    rst $38
    cp $fb
    nop
    add sp, -$02
    db $f4
    jp $fff3


    ld [$d8f7], a
    rst $20
    db $fd
    rst $38
    ei
    rst $28
    rst $38
    set 7, a
    and d
    rst $18
    ld l, b
    ld c, e
    sub a
    rst $38
    ld a, d
    ret nz

    ld [hl], a
    ret z

    jp nz, $e19e

    ld l, c
    ld b, [hl]
    pop bc
    ld a, l
    rst $30
    ld e, b
    db $e3
    or $ff
    xor [hl]
    ei
    push af
    adc h
    ret z

    ret


    rst $18
    call nz, $b1c0
    set 7, e
    inc sp
    ldh [$9f], a
    ret z

    or a
    ld [c], a
    inc sp
    rra
    add c
    inc sp
    ldh [$28], a
    ret nz

    ei
    ld d, b
    ld [hl+], a
    ret nz

    add h
    jp hl


    ret c

    sub d
    and b
    db $76
    adc $15
    pop bc
    db $eb
    db $fc
    or d
    add sp, -$09
    cp l
    rst $30
    ld h, d
    ld [$4f15], a
    ret


    rst $18
    cp a
    ld h, $dd
    sub a
    rst $38
    rst $38
    ld a, [$ca3c]
    ld a, a
    add $a0
    ld_long a, $ffa7
    ld d, h
    ld [hl], h
    ret nz

    ld l, d
    db $eb
    adc d
    and h
    and b
    xor a
    ld a, [bc]
    ret z

    xor a
    and b
    pop bc
    db $fc
    ld a, [$ccac]
    jp hl


    db $fd
    cp $54
    ei
    add c
    rst $38
    ld sp, hl

Jump_054_4299:
    ld d, h
    inc l
    ret nz

    add l
    and e
    ld b, b
    cp a
    ld [$02ff], sp
    ld a, [$a260]
    ld a, [hl]
    ld [hl], h
    and d
    nop
    rst $38
    add h
    rst $38
    ld a, [hl+]
    jp nz, $80d2

    cp l
    ld a, [$7ec6]
    pop hl
    xor b
    xor a
    ld b, a
    and c
    push af
    rst $38
    xor c
    cp a
    cp c
    push hl
    ld h, $a0
    xor d
    add hl, bc
    ldh [$ca], a
    add hl, bc
    db $ec
    xor a
    adc a
    rst $38
    ld d, d
    db $fd
    xor d
    add b
    add b
    ld hl, sp-$5e
    inc d
    and d
    dec hl
    adc a
    push de
    dec b
    ld a, [$d454]
    pop hl
    ld [$4ae2], a
    and c

Call_054_42e0:
    ld l, [hl]
    inc hl
    cp e
    ld bc, $8260
    inc h
    pop hl
    cp b
    db $e3
    dec d
    ld l, $e2
    ldh [$e3], a
    ldh a, [rDMA]
    and b
    ld l, $e2
    sub $85
    adc d
    pop hl
    xor c
    cp $48
    rst $30
    inc a
    xor d
    db $e3
    ld c, $e3
    ld d, l
    rst $38
    ld [de], a
    rst $28
    call z, Call_054_40e3
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

Jump_054_4345:
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

Jump_054_43bc:
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
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_054_44fd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, [hl]
    rst $38
    db $e4
    sbc c
    sub [hl]
    sub [hl]
    ld h, [hl]
    sub [hl]
    di
    ldh [$e3], a
    ld de, $ff99
    ldh [$f0], a
    pop hl
    rst $20
    db $e4
    ld l, c
    sub c
    ld l, c
    dec e
    sub c
    di
    ldh [$99], a
    ld h, [hl]
    ld l, c
    cp $e0
    rst $38
    ldh a, [$d1]
    db $e4
    sbc b
    db $dd
    ld [c], a
    reti


    pop hl
    xor $e3
    ld de, $c811
    pop hl
    call nz, Call_000_11e1
    ld c, h
    rst $38
    ldh [$ad], a
    pop hl
    sbc c
    ld de, $e3fe
    ldh a, [$ef]
    sub c
    and $e1
    db $fc
    ret c

    ld [c], a
    db $e3
    ld [c], a
    add hl, de
    add hl, de
    sbc c
    add hl, de
    sub [hl]
    sbc c
    ld a, a
    ld h, [hl]
    ld de, $1117
    ld [hl], a
    rla
    ld [hl], a
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
    inc b
    rst $38
    rst $38
    db $f4
    di
    rst $38
    rst $38
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
    db $fd
    db $fc
    nop
    nop
    nop
    ld bc, $ff00
    rst $38

Call_054_469e:
Jump_054_469e:
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_054_4769

    jr nc, jr_054_4773

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_4743:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_054_4769:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_054_4773:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_483a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_054_4bc1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_4be2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_4c20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_4cab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_4cc3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $39
    ld c, a
    call c, Call_000_1052
    ld d, a
    dec hl
    ld d, a
    ccf
    dec c
    dec c
    dec c
    ld c, $0e
    ld c, $fa
    rst $38
    db $f4
    rst $30
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$5b
    rst $38
    db $f4
    ld hl, sp-$5f
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ret nz

    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38

jr_054_4f6f:
    rst $38
    rst $38
    ld e, e
    rst $38
    dec c
    ld c, l
    ld de, $384d
    ldh [$80], a
    rst $18
    sub [hl]
    db $f4
    ld c, l
    jp c, Jump_054_61ff

    ei
    ret nz

    rst $38
    nop
    ld b, e
    ld a, [$e285]
    dec a
    db $e3
    jr c, jr_054_4f6f

    add b
    rst $18
    ld b, e
    jp hl


    adc $e4
    jp nz, Jump_000_20e2

    ld [hl], a
    rst $38
    ld h, a
    ldh a, [$fc]
    add sp, -$40
    db $f4
    db $db
    xor e
    ld c, l
    ld e, d
    db $e3
    ld l, b
    jp $8500


    ret nz

    ld b, h
    pop hl
    cp $e1
    or a
    call nz, $dd80
    ld de, $5be1
    push hl
    add h
    and b
    jp nz, $e1c0

    ld l, l
    ret nz

    push hl
    push af
    jp $ff4f


    ret nz

    ld [$6d4d], a
    rra
    ld c, l
    dec c
    ld a, [bc]
    ld a, [bc]
    dec l
    ld a, e
    ldh [$03], a
    ld hl, sp-$25
    and [hl]
    ld hl, sp-$7a
    push hl
    push af
    rst $20
    call nz, $6da0
    ld a, [bc]
    ld a, [bc]
    ld c, l
    dec l
    ld bc, $b22d
    db $e3
    add b
    call nc, $a09e
    sbc e
    jp $c5cd


    push af
    and $84
    and c
    ccf
    dec hl
    ld c, e
    dec l
    dec c
    dec l
    ld l, l
    or l
    and d
    ld a, e
    ret nz

    ret nz

    rst $38
    or [hl]
    db $10
    pop hl
    cp $c4
    ld a, [hl+]
    and b
    add $c2
    ld a, $c2
    ld l, e
    ld l, e
    rlca
    ld c, e
    dec bc
    dec l
    ret nz

    rst $30
    ld sp, hl
    and [hl]
    db $10
    db $e3
    jp nc, $fec7

    db $e3
    dec b
    ld l, l
    add b
    ldh [$0b], a
    ei
    add b
    db $fd
    ret nz

    dec a
    push af
    cp c
    add a
    ld b, d
    ret nz

    ldh a, [rHDMA1]
    ret nz

    ld d, h
    ld [c], a
    ret


    add c
    pop bc
    pop bc
    ld c, e
    dec c
    dec c
    dec bc
    add c
    dec hl
    ld a, e
    ldh [$bf], a
    ldh [$3e], a
    db $e3
    dec a
    push af
    sbc l
    jp nz, $e092

    dec bc
    rst $10
    ld c, e
    ld c, l
    dec l
    adc b
    pop hl
    dec bc
    rst $38
    pop hl
    ld c, e
    dec bc
    pop bc
    dec hl
    ld hl, sp-$1e
    ld a, [$c0e0]
    ld hl, sp+$5a
    and [hl]
    sub d
    pop hl
    ld c, e
    ld c, e
    call $bb6b
    and b
    ld l, l
    ld c, e
    ld c, e
    ldh [$80], a
    ld h, b
    ld c, e
    ld l, e
    nop
    ret nz

    db $e3
    db $fd
    ret nz

    cp h
    and h
    nop
    or c
    jp nz, $c4c4

    ldh [$fe], a
    db $e3
    add h
    pop hl
    ld e, $48
    ldh [$0b], a
    ld c, e
    dec c
    ld c, e
    add b
    ldh [$f7], a
    ldh [$80], a
    ld [c], a
    ld [$a378], sp
    ld e, e
    sub l
    ret nz

    db $ec
    ld c, e
    pop bc
    ldh [$fb], a
    pop hl
    add b
    db $eb
    ld b, e
    ld hl, sp-$7e
    sub $a1
    ld c, e
    sub c
    ldh [$80], a
    db $e3
    ld b, h
    ld [c], a
    ld [$40c0], sp
    and $4b
    ldh [$c0], a
    pop bc
    db $db
    jp Jump_054_4cab


    ld a, [hl+]
    add h
    call Call_054_4bc1
    dec hl
    ld a, [bc]
    rst $18
    ld l, d
    ld c, e
    ld a, [bc]
    ld l, d
    ld a, [bc]
    ret nz

    db $e3
    dec c
    dec c
    inc bc
    dec l
    dec l
    ret nz

    pop bc
    ld b, b
    ld [c], a
    ret nz

    ld [c], a
    cp b
    add h
    add [hl]
    rst $08
    sub $a3
    rst $38
    dec c
    ld c, e
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    inc bc
    ld a, [bc]
    ld c, d
    rst $30
    call nz, $c044
    add b
    and $6a
    pop bc
    ret nz

    ld a, [c]
    inc b
    add $7a
    add h
    ret nz

    ld a, [hl+]
    add l
    ldh [$2b], a
    dec hl

jr_054_50e8:
    ld c, d
    ld a, [bc]
    ret nz

    add sp, -$7c
    xor h
    jp nz, $e0fa

    dec bc
    cp $a2
    xor h
    ld h, a
    add b
    jp z, Jump_054_4299

    dec l
    ld h, b
    ld b, l
    ret nz

    add $e1
    ei
    ldh [$8e], a
    ld b, c
    or $c2
    ld c, e
    dec hl
    ld b, c
    and b
    ld b, h
    pop bc
    ldh [$75], a
    ret nz

    dec c
    cp [hl]
    and d
    rra
    adc b
    add b
    adc $2d
    nop
    ldh [rTIMA], a
    ld a, [hl+]
    ccf
    ldh [$2a], a
    ld b, h
    pop bc
    inc sp
    push bc
    xor a
    ret nz

    cp b
    and b
    inc [hl]
    pop hl
    jr nz, jr_054_50e8

    jp nz, $eec0

    db $db
    ld b, h
    nop
    call nz, $80d3
    ld l, e
    add h
    pop hl
    dec b
    pop bc
    nop
    call nz, Call_054_71e1
    jp $e2ba


    push af
    add c
    db $76
    ld h, d
    dec hl
    inc l
    and $63
    ret nz

    and e
    inc b
    adc l
    and d
    ret nz

    db $e4
    dec hl
    rst $38
    pop hl
    ld a, [c]
    ret nz

    ld b, h
    ret nz

    or h
    jp nz, Jump_054_6177

    ld b, b
    nop
    or c
    ld d, l
    jp $2199


    db $d3
    add c
    ld [$ccc2], sp
    add b
    dec l
    ret nz

    pop hl
    ld [$a107], sp
    ret nz

    ld [c], a
    or [hl]
    nop
    ld l, l
    nop
    cp d
    nop
    jp nz, $e2d8

    rlca
    pop hl
    nop
    dec b
    jp nz, $e1c1

    cp a
    ld [c], a
    add h
    ld [c], a
    ld h, b
    add e
    nop
    or h
    dec h
    add d
    ld b, l
    db $e3
    ld [$e087], sp
    ld a, [$8684]
    add c
    dec l
    add l
    add c
    add [hl]
    call nz, $9943
    ret nz

    rst $20
    nop
    adc h
    and c
    ld c, [hl]
    add d
    ld b, a
    add c
    dec a
    ld [c], a
    ret nz

    and $c0
    sub e
    sbc [hl]
    inc bc
    add $61
    nop
    nop
    ret nz

    ld [de], a
    add e
    add hl, bc
    ld [c], a
    add d
    pop hl
    cp l
    pop bc
    cp a
    and b
    inc b
    ld [c], a
    ld h, $45
    ret nz

    nop
    xor [hl]
    add b
    call nz, $6187
    ret nz

    add sp, $0b
    ld h, b
    add b
    ld [c], a
    ld l, e
    ld c, e
    ld bc, $862b
    pop bc
    rst $30
    inc b
    jp nz, Jump_000_0014

    add [hl]
    ld [de], a
    add e
    ld a, $e1
    adc b
    ldh [rSC], a
    dec [hl]
    and c
    ld l, e
    adc b
    and l

jr_054_51e1:
    jp nz, $c039

    ld [$e53e], a
    cp a
    pop hl
    ld b, e
    ld [c], a
    nop
    adc b
    and e
    ld e, $83
    nop
    ld d, [hl]
    ld a, [hl]
    jp $e900


    add h
    db $e3
    or c
    and c
    ld [bc], a
    push hl
    ld [hl], b
    ld b, $b1
    adc a
    daa
    add $01
    sbc b
    add b
    ld l, e
    dec bc
    ld l, e
    db $fd
    pop hl
    ld bc, $c54b
    jp nz, $62a4

    ld [bc], a
    pop hl
    ld b, d
    ld [bc], a
    ret nz

    di
    nop
    ld b, a
    dec de
    ld b, b
    inc b
    sub d
    add b
    cp $e2
    ld c, e
    res 4, c
    ld l, b
    and e
    add h
    jp nz, $221f

    jp TimerOverflowInterrupt


    db $ec
    add hl, bc
    ld a, [hl]
    jp $e6ff


    adc h
    and c
    ld [hl-], a
    inc bc
    inc hl
    ld h, d
    ld b, e
    rst $30
    cp e
    ld c, b
    ld [bc], a
    cp d
    ld bc, $d02d
    add e
    ld c, l
    and d
    ld [$c0e7], sp
    ld a, [$0480]
    cp e
    ld [hl+], a
    nop
    ld d, [hl]
    jr nz, jr_054_51e1

    add h
    xor $05
    ld b, a
    dec b
    ld b, e
    di
    add b
    ld [$04ca], sp
    ld a, [$0022]
    ld de, $ae20
    ld b, $49
    ei
    add b
    rlca
    ld a, e
    pop bc
    ld h, [hl]
    ld b, c
    ret nz

    ld [c], a
    ld l, h
    and l

jr_054_526d:
    nop
    call z, $8036
    ld c, $b8
    add [hl]
    ld a, d
    ld hl, $00fc
    db $ed
    ld h, c
    inc c
    or l
    add b
    pop de
    nop
    and e
    ld b, [hl]
    ld a, [hl-]
    ld [hl+], a
    sub b
    dec b
    rst $38
    rst $38
    or a
    xor [hl]
    ld a, [hl]
    jp $6490


    rst $38
    rst $38
    inc d
    ld [hl], e
    jr z, jr_054_526d

    add d
    ld l, l
    ld a, [$6da3]
    xor l
    and e
    inc c
    or d
    nop
    xor l
    inc b
    ld b, e
    push hl
    ld [hl], c
    ld [bc], a
    dec l
    ld hl, sp+$01
    add b
    pop hl
    inc hl
    dec h
    ld a, a
    rst $38
    ld a, c
    adc d
    inc bc
    dec c
    ld l, l
    ld b, b
    db $e3
    db $e3
    ld b, $43
    rst $38
    ld [hl], $a7
    ld a, [hl-]
    ld [hl+], a
    ld d, c
    ld b, e
    nop
    ld h, [hl]
    dec h
    add b
    rst $18
    dec a
    db $ec
    ld [de], a
    ld b, l
    inc c
    ld h, d
    ld c, c
    rst $38
    or [hl]
    ld l, [hl]
    add d
    jp $c000


    rst $38
    dec a
    db $f4
    ret nz

    db $e3
    inc b
    rst $20
    add b
    call c, $0000
    nop
    ccf
    and b
    and b
    and b
    call c, $dedd
    ld a, [$f4ff]
    push af
    ccf
    db $e4
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$f4ff]
    push af
    ccf
    ld [$e6e5], a
    rst $20
    add sp, -$17
    ld a, [$f4ff]
    push af
    nop
    ld e, e
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    add b
    rst $18
    nop
    ld d, l
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ret nz

    ld a, [$80ff]
    rst $18
    ld b, e
    and $fd
    db $e3
    add b
    rst $18
    ld d, l
    di
    and b
    sub $31
    rst $10
    ld sp, hl
    ret nz

    add b
    rst $18
    ld h, c
    or $d8
    reti


    cp c
    ret nz

    add b
    rst $18
    ld e, $43
    or $da
    db $db
    ret nc

    pop de
    ld a, [hl-]
    and $80
    rst $18
    ld b, e
    db $eb
    add [hl]
    ld bc, $d2e2
    db $d3
    ld a, [$37c2]
    db $f4
    and h
    db $db
    add h
    pop hl
    call nc, $d5c1
    ld hl, sp-$1e
    scf
    db $f4
    sub d
    ret c

    add h
    rst $20
    ld a, h
    pop hl
    jp c, $80db

    add b
    rst $18
    ld e, d
    db $e3
    add [hl]
    ret z

    add h
    pop hl
    inc a
    pop bc
    ld hl, sp-$1e
    add b
    rst $18
    and b
    db $fc
    sub c
    jp nz, $c986

    and b
    and b
    sbc a
    db $eb
    db $ec
    sbc a
    sbc b
    ld sp, hl
    and e
    add b
    ret c

    ret c

    and h
    ret nc

    pop de
    sub c
    add $f5
    db $e4
    sbc a
    ld a, a
    and d
    sbc h
    db $ed
    xor $9c
    and d
    sbc a
    or $c2
    ldh [$80], a
    push de
    and d
    push bc
    sub l
    jp nz, $c491

    push af
    db $e4
    sbc [hl]
    sub b
    sub c
    rra
    ld b, h
    ld b, h
    sub c
    sub b
    sbc [hl]
    ld a, d

jr_054_53ad:
    pop bc
    or l
    and b
    add b
    db $d3
    add b
    sub a
    add b
    reti


    and b
    jr @-$3e

    sub l
    pop bc
    sub c
    ret nz

    adc d
    push bc
    add [hl]
    ret nz

    sbc [hl]
    ld a, a
    sub c
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, [hl]
    sub c
    sbc [hl]
    ld a, d
    pop bc
    ret nz

    or l
    and b
    nop
    or [hl]
    and d
    ret nz

    sub h
    push bc
    adc d
    rst $00
    inc bc
    ldh [$9c], a
    xor [hl]
    ccf
    xor [hl]
    ld b, l
    ld b, l
    xor [hl]
    xor [hl]
    sbc h
    db $fd
    pop bc
    ld a, [hl]
    pop bc
    ld e, b
    db $f4
    adc [hl]
    push de
    and a
    jr jr_054_53ad

    sbc a
    sbc l
    rst $38
    ldh [$9f], a
    or $e4
    db $fd
    and d
    di
    ldh [$9c], a
    ld b, [hl]
    xor a
    xor a
    ld [hl], $36
    rlca
    xor a
    xor a
    ld b, [hl]
    cp a
    ldh [$78], a
    and b
    ld h, d
    rst $00
    nop
    xor l
    sub d
    and $e9
    ld b, [hl]
    push de
    pop hl
    adc b
    ldh [rDMA], a
    rst $38
    db $e3
    ld b, l
    ld [hl], $3b
    ccf
    dec [hl]
    dec [hl]
    dec sp
    ld [hl], $45
    ld b, [hl]
    cp $c2
    ld h, d
    rst $00
    or b
    add b
    adc $94
    pop bc
    sub d
    pop hl
    ret z

    ldh [$9c], a
    and d
    adc b
    ldh [rDMA], a
    rst $38
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld b, [hl]
    ld b, h
    inc a
    ccf
    and h
    ld h, h
    ld h, h
    and l
    inc a
    ld b, h
    ret nz

    ldh [$78], a
    and b
    sub b
    cp h
    and b
    add b
    jp nc, $805b

    ld a, [de]
    and b
    and c
    adc h
    db $e4
    add l
    ld [c], a
    ld a, c
    db $fd
    ld a, [hl]
    ld a, [hl]
    ldh [$81], a
    ld b, [hl]
    ld b, d
    dec [hl]
    ld l, c
    and e
    ccf
    dec [hl]
    ld l, d
    dec [hl]
    ld b, d
    ld b, [hl]
    and c
    push af
    ld h, d
    add b
    call nc, Call_054_5ba8
    add b
    sub h
    pop bc
    ret nz

    jp hl


    add b
    ccf
    pop hl
    add c
    add b
    ldh [rBCPD], a
    rlca
    dec [hl]
    dec [hl]
    ld l, d
    add b
    ld [c], a
    ld a, b
    add c
    add b
    ld [hl], d
    and [hl]
    call nz, $e10c
    db $fc
    ld d, h
    ret nz

    rlca
    ld [c], a
    xor [hl]
    xor [hl]
    add d
    add e
    ld b, [hl]
    ld b, [hl]
    jp $8483


    ret nz

    jp hl


    ld h, b
    add $80
    ld l, e
    ld [bc], a
    add sp, $46
    ld b, l
    ld a, a
    ld b, a
    ld d, h
    ld b, h
    ld c, b
    ld d, e
    ld d, b
    ld b, l
    adc d
    ret nz

    ccf
    add l
    add a
    adc b
    adc b
    add a
    add l
    ld b, b
    rst $20
    cp $a2
    ldh a, [$bd]
    or b
    add [hl]
    jp $a196


    add h
    ret nz

    ld c, d
    ld d, [hl]
    dec hl
    dec hl
    rst $08
    ld e, c
    ld d, h
    ld e, l
    ld d, l
    add e
    call nz, $c072
    ld b, h
    inc a
    rrca
    ld l, e
    ld [hl], c
    ld [hl], c
    ld l, l
    ret nz

    ret nz

    cp $a2
    cp l
    or b
    ld e, $43
    db $fc
    sub [hl]
    and c
    ld a, [de]
    ret nz

    ld d, l
    ld e, d
    jr nc, jr_054_5500

    cpl
    ld a, [hl+]
    ld bc, $c04b
    push hl
    ld [$40c0], sp
    add $fe
    and e
    cp l
    xor a
    sbc b
    ld h, [hl]
    ld bc, $ffe2
    ld d, b
    ld a, [hl+]
    cpl
    cpl
    ld a, [hl+]
    ld d, b
    ld b, l
    ld a, c
    ld a, c
    ld a, d
    ld b, l
    ret nz

    rst $38

jr_054_5500:
    and h
    ld b, e
    ld b, c
    ld b, c
    ld b, e
    ld [$c3c0], a
    xor [hl]
    xor [hl]
    cp $c3
    cp l
    xor l
    inc a
    ld b, d
    sbc e
    ld b, b
    ret nc

    pop de
    cp $cc
    and b
    ld b, h
    ld d, h
    ld c, c
    ld b, h
    ld b, h
    ld c, c
    ld d, h
    ld [de], a
    ld b, h
    pop bc
    add c
    inc sp
    ret


    ld [hl], h
    ld [c], a
    and c
    db $76
    ld h, d
    cp l
    xor l
    ld e, $42
    inc c
    sbc e
    ld b, b
    nop
    jp Jump_054_4345


    ld [de], a
    and c
    ld b, h
    pop bc
    ret nz

    db $ed
    rst $38
    call nz, $bd60
    xor [hl]
    db $db
    ld b, d
    ld h, h
    ld h, b
    nop
    jp nz, $e248

    xor a
    xor a
    ret nz

    push hl
    add e
    ld b, l
    ld b, c
    ld sp, $c1c4
    push hl
    nop
    or c
    sbc l
    ld h, $0c
    and b
    add b
    add a
    xor [hl]
    xor [hl]
    ld a, a
    rlca
    ldh [rDIV], a
    ret nz

    dec b
    ret nz

    inc b
    and b
    and [hl]
    ld b, b
    rst $00
    pop bc
    ld l, $a1
    xor d
    add c
    cp h
    ld b, h
    nop
    ld d, d
    nop
    call nz, $9680
    add b
    ld hl, sp+$07
    ldh [rDIV], a
    ret nz

    dec b
    ret nz

    ld b, l
    ld [hl], $62
    and a
    ld h, [hl]
    add b
    cp a
    ld [c], a
    ld b, h
    jp Jump_054_43bc


jr_054_5589:
    add b
    ld [hl], e
    nop
    call nz, $e487
    add [hl]
    add h
    ld h, d
    ld [hl], a
    ld h, a
    and e
    ld l, b
    cp a
    ldh [$ae], a
    xor [hl]
    and c
    jr c, jr_054_55e3

    ret z

    add b
    ld [hl], l
    nop
    call nz, $e287
    ld b, e
    ld d, b
    jp nz, $e1c1

    dec [hl]
    dec [hl]
    ccf
    ld l, h
    or a
    cp b
    ld b, d
    xor a
    xor a
    ld b, h
    and a
    nop
    or h
    db $f4
    nop
    add $12
    add b
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    ld b, l
    ld [hl], $7f
    cp c
    cp d
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    dec b
    add b
    nop
    add e
    ld h, b
    cp h
    jr nz, jr_054_5589

    ld bc, $1180
    ld h, h
    ld h, $00
    pop bc
    ld [de], a
    add c
    db $10
    add d
    rra
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h

jr_054_55e3:
    pop bc
    and $45
    and e
    nop
    ld d, e
    inc [hl]
    add hl, hl
    and h
    jp c, $9e00

    ld [de], a
    add e
    dec [hl]
    and e
    db $10
    add c
    cp a
    pop hl
    sbc b
    add d
    pop hl
    adc b
    and c
    cp [hl]
    ld [bc], a
    jp c, $80db

    rla
    jp nz, $a143

    ld [bc], a
    jp nc, Jump_000_3561

    rst $38
    ldh [$d0], a
    ld h, c
    cp a
    pop hl
    ld b, e
    pop hl
    adc b
    and c
    ld b, h
    ld b, e
    ld h, b
    nop
    ld e, d
    ret nz

    ld h, e
    sub d
    add d
    sub b
    add e
    dec b
    ld h, c
    xor h
    xor [hl]
    ldh a, [rLCDC]
    jr nz, @+$04

    db $e3
    jp nz, $c300

    ld d, b
    nop
    ld b, a
    push bc
    ld bc, $c09e
    ret z

    call nz, $0142
    xor a
    rst $38
    ldh [rOBP1], a
    and a
    jp $8050


    rlca
    add b
    ld hl, $408b
    sub d
    add b
    ld bc, $4043
    jp $a18c


    ld [hl-], a
    ld b, e
    ld b, [hl]
    dec h
    jp $8050


    rlca
    ld [hl+], a
    ld [bc], a
    nop
    ld c, d
    ld b, [hl]
    pop de
    add a
    inc a
    dec b
    ld b, e
    di
    add b
    rlca
    ld [hl+], a
    nop
    jp nc, $ce01

    ld hl, $9200
    add a
    ret nz

    nop
    dec hl
    inc h
    ld b, e
    db $f4
    add b
    ld a, [bc]
    rst $00
    inc bc
    add $23
    sub c
    inc hl
    nop
    or l
    nop
    or d
    ld [bc], a
    ld e, h
    ld h, b
    ld b, e
    di
    add b
    ld a, [bc]
    sbc b
    pop hl
    ld a, [$85a2]
    jr nz, jr_054_5688

jr_054_5688:
    ld [de], a
    ld b, b
    ld a, b
    nop
    add [hl]
    ldh [$83], a
    ldh [rOBP1], a
    ld a, [c]
    add b
    db $10
    add $04
    cp d
    ld [hl+], a
    ld bc, $7f9e
    inc bc
    inc c
    or h
    add b
    ld [de], a
    or a
    ld b, d
    cp d
    dec h
    sub e
    ld h, h
    inc c
    or h
    nop
    add b
    ret nc

    ld a, d
    ld b, $7a
    inc h
    sub b
    inc bc
    inc c
    or h
    add b
    ret nc

    ld [hl], e
    daa
    add l
    inc b
    nop
    sub d
    ld b, d
    inc c
    or h
    nop
    ld c, a
    ld a, d
    add $77
    inc h
    cp $c1
    rst $38
    add $3d
    ld a, [$4300]
    jp hl


    ld a, c
    inc bc
    ret nz

    push hl
    add hl, hl
    add h
    add b
    rst $18
    or [hl]
    ld b, $79
    ld [bc], a
    ld b, b
    and $00
    ld l, e
    push bc
    add b
    rst $18
    ld a, [hl+]
    and l
    ld h, d
    ld [hl+], a
    ret nz

    ret z

    ld d, d
    ld [hl+], a
    add b
    rst $18
    dec a
    db $eb
    jr nc, @+$42

    add $0c
    ld h, d
    add b
    rst $18
    ld [hl], e
    dec hl
    ret c

    reti


    add b
    and d
    ld [bc], a
    pop hl
    jr jr_054_5705

    and d
    add b
    rst $18
    ld l, l
    adc e
    jp c, $c0db

jr_054_5705:
    db $e4
    adc a
    ld h, e
    ld b, e
    db $fc
    nop
    ld b, h
    nop
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
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_054_5748

    ld [bc], a
    ld bc, $1921
    ld [bc], a
    ld [bc], a
    inc h
    add hl, de
    ld [bc], a
    inc bc
    dec h
    add hl, de
    ld [bc], a
    inc b
    ld c, $1b
    ld [bc], a
    dec b
    rrca
    dec de
    ld [bc], a
    ld b, $16
    rra
    ld [bc], a

jr_054_5748:
    rlca
    rla
    rra
    ld [bc], a
    ld [$210a], sp
    ld [bc], a
    add hl, bc
    dec bc
    ld hl, $0a02
    inc e
    ld hl, $0b02
    dec e
    ld hl, $0c02
    jr z, jr_054_5782

    ld [bc], a
    dec c
    add hl, hl
    inc hl
    ld [bc], a
    ld c, $12
    dec h
    ld [bc], a
    rrca
    inc de
    dec h
    ld [bc], a
    db $10
    ld c, $27
    ld [bc], a
    ld de, $270f
    ld [bc], a
    ld [de], a
    ld a, [bc]
    add hl, hl
    ld [bc], a
    inc de
    dec bc
    add hl, hl
    ld [bc], a
    inc d
    ld [hl+], a
    add hl, hl
    ld [bc], a
    dec d
    inc hl

jr_054_5782:
    add hl, hl
    ld [bc], a
    ld d, $20
    dec l
    ld [bc], a
    rla
    ld hl, $022d
    jr @+$1e

    cpl
    ld [bc], a
    add hl, de
    dec e
    cpl
    ld [bc], a
    ld a, [de]
    ld e, $2f
    ld [bc], a
    dec de
    rra
    cpl
    rst $38
    rst $38
    rst $38
    and [hl]
    ld d, a
    sub $57
    ld e, h
    ld e, d
    ld a, [hl-]
    ld e, h
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f
    xor e
    nop
    inc sp
    ld bc, $06c5
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
    db $dd
    dec bc
    rst $38
    db $e4
    inc c
    inc c
    ld c, h
    rst $38
    pop hl
    inc l
    inc c
    add $ff
    ld [c], a
    ld c, h
    ld c, h
    db $fd
    db $e3
    ld sp, hl
    ldh [$f2], a
    db $e4
    inc l
    inc l
    ldh a, [$ed]
    db $e3
    ld hl, sp-$1f
    rst $38
    jp hl


    ret nz

    push hl
    inc l
    ld l, h
    ld l, h
    ld l, h
    jr nz, @-$3f

    add sp, -$4e
    db $e3
    or a
    ld [c], a
    cp l
    pop hl
    and a
    ldh [$2c], a
    pop af
    db $e3
    ret nz

    rst $28
    rrca
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    ld a, d
    db $e3
    ld a, [hl]
    ld [c], a
    adc e
    db $e3
    add d
    db $e4
    jr nz, @+$6d

    ld [c], a
    ld [hl], b
    db $e3
    db $76
    push hl
    ld l, [hl]
    ld [c], a
    ld a, l
    rst $20
    ld l, e
    pop bc
    ldh [$bf], a
    ldh [rLCDC], a
    cp [hl]
    ld [$e5dc], a
    ld d, [hl]
    and $38
    db $e4
    ld hl, sp-$1a
    ret nz

    jp hl


jr_054_5835:
    dec hl
    cp $c2
    nop
    cp [hl]
    ldh [$bb], a
    db $e3
    adc a
    db $e4
    pop bc
    push hl
    ret


    db $e3
    jr c, @-$1b

    ld hl, sp-$1b
    call c, Call_000_12c4
    push de
    jp $c00b


    db $e3
    cp c
    pop bc
    dec hl
    jr c, jr_054_5835

    add hl, de
    ldh [$c7], a
    call nz, $f960
    push hl
    ccf
    xor $c0
    res 0, b
    ldh [$7d], a
    db $e3
    dec hl
    dec hl
    ld a, d
    ldh [rSCX], a
    dec bc
    ld c, e
    adc e
    call nz, $c681
    ld [hl], l
    call nz, $f441
    inc c
    jp z, Jump_000_11e1

    ld l, e
    add c
    db $e3
    add hl, sp
    ld [c], a
    ld a, a

jr_054_587c:
    ldh [$6c], a
    adc [hl]
    jp $c5b3


    inc sp
    call nz, $f800
    rst $20
    ret nz

    db $ed
    rst $38
    rst $20
    ld a, b
    call nz, $c7ce
    inc d
    call nz, $d8c0
    ld c, c
    pop hl
    add b
    pop bc
    db $ec
    or h
    and c
    ld c, l
    ret z

    ret nz

    adc $c0
    xor h
    ld a, [hl]
    and $c1
    push hl
    dec bc
    add b
    adc e
    and h
    ret nz

    and l
    ld b, b
    pop de
    sbc c
    and l
    add b
    and c
    dec a
    ld [$e540], a
    inc l
    jr nc, jr_054_587c

    and e
    db $76
    call nz, $eafc
    ld b, b
    xor d
    inc l
    inc l
    add $ec
    ld d, b
    and c
    inc b
    ld bc, $40b4
    pop de
    inc l
    rst $38
    ldh [$87], a
    jp $e4c2


    ld bc, $47b6
    and [hl]
    db $10
    sbc h
    add b
    jp z, $c0e1

    rst $20
    ld a, l
    ld [c], a
    dec hl
    pop bc
    rst $20
    ld bc, $40b4
    ret z

    ld [bc], a
    ret nz

    rst $20
    ld c, h
    ld de, $01c0
    push bc
    ld a, h
    add c
    ld l, [hl]
    add c
    ld bc, $f8b5
    add [hl]
    nop
    add c
    rst $20
    ld l, a
    and [hl]
    ld d, l
    and l
    nop
    and a
    ld bc, $40ae
    rst $00
    ret nz

    add sp, -$2b
    ld [hl], h
    nop
    bit 4, [hl]
    ld b, b
    add a
    ccf
    or h
    call nc, $cbd3
    ld h, a
    ld bc, $78aa
    add e
    call z, Call_000_00c2
    ld a, c
    add h
    push de
    ld [hl], e
    bit 5, c
    ld bc, $c0a8
    ldh a, [$d4]
    sub $f6
    xor $45
    adc c
    nop
    rst $38
    ret


    call nc, $fdd3
    adc b
    db $ec
    add sp, -$50
    ld b, e
    ld b, h
    ldh [rLCDC], a
    ret z

    push de
    ld [hl], d
    nop
    jp z, Jump_054_41c9

    ld h, a
    nop
    push hl
    add [hl]
    db $eb
    push de
    ld [hl], b
    or $e8
    dec b
    xor e
    inc hl
    ld h, h
    nop
    ret nz

    xor b
    push de
    ld [hl], d
    db $d3
    ld l, b
    ld a, a
    xor h
    nop
    rst $28
    push de
    ld [hl], e
    cp l
    ld h, a
    ld a, d
    ld c, d
    nop
    ld b, c
    adc l
    push de
    ld [hl], h
    or $e9
    and e
    pop af
    add e
    rst $00
    push de
    ld [hl], l
    add b
    ld [$6c78], a
    nop
    add c
    xor h
    push de
    ld [hl], b
    dec bc
    ld a, [hl+]
    and e
    pop af
    dec b
    ret


    dec c
    ld b, d
    sbc l
    call Call_000_250b
    nop
    and e
    di
    rst $10
    ld l, c
    ld d, c
    and h
    ld h, d
    ld l, d
    dec bc
    daa
    and e
    ld a, [c]
    add [hl]
    xor d
    push de
    inc d
    nop
    push af
    and a
    dec b
    ld [hl], c
    ld b, b
    adc b
    call nc, $ce75
    add a
    inc hl
    adc a
    ld bc, $d5ac
    ld c, $00
    ld [hl], l
    adc d
    inc hl
    adc a
    add c
    jp hl


    nop
    or h
    ld b, b
    xor c
    inc hl
    rst $28
    ld b, c
    ld [$11d5], a
    nop
    inc de
    ld a, [hl+]
    inc hl
    sub b
    ret nz

    adc e
    nop
    or b
    or $cb
    add b
    adc h
    ld [bc], a
    adc d
    push de
    ld de, $0b00
    add hl, hl
    inc hl
    adc [hl]
    jp nz, $d56b

    inc de
    adc d
    ld l, c
    inc hl
    rst $28
    add [hl]
    ld l, l
    push de
    ld c, $00
    dec bc
    add hl, hl
    inc hl
    ld a, [c]
    nop
    cp l
    adc c
    add hl, hl
    inc hl
    sub c
    nop
    cp l
    ld a, [bc]
    adc d
    add b
    sbc c
    nop
    nop
    or e
    reti


    inc bc
    dec c
    call nz, $9b80
    di
    ld a, [c]
    inc hl
    ld h, c
    rra
    ld h, d
    add b
    sbc [hl]
    nop
    ldh a, [$d7]
    ld a, [hl]
    ld [c], a
    inc hl
    sub e
    pop bc
    ld a, [$61f0]
    cp d
    add sp, -$80
    sub e
    pop bc
    ld hl, sp+$00
    db $10
    ld b, h
    xor d
    ld h, e
    adc a
    dec [hl]
    cp b
    rst $38
    ld a, [hl-]
    and $ff
    rst $38
    push bc
    sla h
    inc b
    nop
    cp a
    rst $38
    dec [hl]
    ld c, [hl]
    ld l, d
    ld l, d
    ccf
    db $ec
    rst $38
    rst $38
    add hl, hl
    or c
    rst $10
    rst $38
    scf
    ld sp, hl
    nop
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
    nop
    or e
    rst $38
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
    nop
    db $dd
    ld sp, $e4ff
    dec hl
    inc l
    jr nz, @+$01

    pop hl
    ld hl, $e214
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $c0
    push hl
    rrca
    dec b
    dec b
    ccf
    dec b

jr_054_5a76:
    ld [hl+], a
    inc hl
    jr nz, @+$22

    inc h
    rst $38
    ldh [$ca], a
    rst $38
    sbc $c0
    jp hl


    ld b, a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld a, d
    db $e3
    ld de, $e312
    ld hl, $7a22
    pop hl
    jp z, $e8ff

    rst $20
    ld c, l
    ld b, [hl]
    ld [hl], $87
    jr nc, jr_054_5ac9

    ld [hl], $be
    rst $20
    cp a
    pop hl
    jp z, $e8ff

    rst $20
    add hl, sp
    rst $38
    ld l, c
    ld h, [hl]
    jr nc, @+$32

    ld l, e
    jr nc, jr_054_5ae1

    ld d, l
    ld l, a
    ld d, h
    ld d, l
    dec sp
    ld c, l
    di
    ret nz

    rla
    jr z, jr_054_5a76

    rst $38
    cp $ea
    jp hl


    ld d, d
    ld l, c
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, l
    jr nc, jr_054_5af8

    rst $38
    pop hl
    ld l, l
    ld [hl-], a
    cp a
    ldh [$15], a

jr_054_5ac9:
    ld d, $c0
    rst $38
    ret nz

    db $ec
    rst $38
    rra
    rra
    ld l, d
    ld l, l
    ld l, h
    ld l, h
    ld l, h
    ld l, l
    jp Jump_000_3067


    cp a
    pop hl
    ld a, a
    ldh [$ca], a
    rst $38
    ld b, b

jr_054_5ae1:
    ld [$1f1f], a
    ccf
    jr nc, @+$6c

    ld h, l
    ld h, l
    ld h, l
    ld h, a
    ld a, e
    ldh [$7e], a
    ldh [$e7], a
    dec d
    inc d
    dec b
    jp z, $c0ff

    ret z

    ld [hl-], a

jr_054_5af8:
    ld l, d
    ld l, d
    ld e, a
    ld l, d
    ld l, l
    jr nc, jr_054_5b65

    ld l, e
    dec a
    pop hl
    ld l, d
    ld a, $e1
    inc bc
    ld sp, $ca31
    rst $38
    nop
    ret z

    cp a
    db $e3
    ret nz

    ld [c], a
    pop bc
    db $e4
    ret nz

    rst $38
    ret nz

    ret nz

    xor d
    ld a, [hl]
    ld [c], a
    add b
    pop hl
    pop bc
    push hl
    ret nz

    rst $38
    add b
    xor e
    ld c, l
    ld b, [hl]
    ld h, b
    ld b, e
    ret nz

    cp $e0
    ld b, b
    jp nz, $ffc0

    db $ec
    db $eb
    ld [de], a
    ld de, $85fe
    ld h, h
    ld a, [hl]
    and e
    nop
    and b
    ld c, $ca
    rst $38
    add sp, -$19
    ld [hl+], a
    ld hl, $e2be
    dec sp
    ld h, d
    ld h, d
    ld b, b
    and h
    inc h
    inc h
    inc hl
    set 7, a
    jp hl


    add sp, -$01
    jr nz, jr_054_5b5f

    ld [hl+], a
    ld hl, $3101
    ld e, [hl]
    ld e, e
    rst $18
    ld e, e
    ld e, [hl]
    ld sp, $2101
    cp a
    add c
    jr nz, @+$0c

jr_054_5b5f:
    pop af
    dec bc
    jp z, $e8ff

    rst $20

jr_054_5b65:
    adc c
    add b
    rrca
    ld sp, $5f31
    scf
    ld e, e
    ld e, e
    ld e, a
    ld a, h
    add e
    ld a, [bc]
    dec bc
    nop
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

Call_054_5ba8:
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
    jr nc, jr_054_5c99

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
    db $76
    ld e, h
    ld d, $61
    ld [$0566], a
    ld h, a
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

jr_054_5c99:
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
    call nc, $6dc5
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

Call_054_5d00:
    ld [de], a
    ld [hl], b
    jp Jump_054_7b4d


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


    jr c, jr_054_5d61

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

jr_054_5d32:
    ret nz

    jp nz, $6bc0

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

Jump_054_5d55:
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

jr_054_5d61:
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

    jr c, jr_054_5d32

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
    call c, Call_054_6106
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
    jp nz, Jump_054_626e

    cp b
    ld e, c
    inc b
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
    jp Jump_054_5d55


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
    jr c, jr_054_5f18

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
    jp nz, Jump_054_72c0

    ld [hl], e
    jr nc, jr_054_5f23

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
    jp nz, Jump_054_600e

    rst $00
    and e
    inc bc
    pop bc
    ld de, $804b

jr_054_5f18:
    ld b, b
    add e
    or a
    cp l
    ld c, l
    ld c, l
    ld d, $a1
    ld c, $60
    add l

jr_054_5f23:
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
    jp z, Jump_054_4743

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

    jr c, jr_054_6003

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


jr_054_5fe1:
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
    ld b, b
    ld a, d
    jr nz, jr_054_6028

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

jr_054_6003:
    and $83
    jp $e4c0


    cp l
    ld e, d
    ld [hl+], a
    db $fd
    ld [bc], a
    ld c, l

Jump_054_600e:
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
    jp nz, Jump_054_6c21

    ld b, b
    db $e4
    inc l
    inc l
    add b

jr_054_6028:
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
    jp nz, Jump_054_4cc3

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
    jr nz, jr_054_5fe1

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

jr_054_6088:
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

jr_054_60ac:
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
    jr nz, jr_054_6088

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
    jr nc, jr_054_60ff

    dec l
    ld a, h
    ld b, d
    dec hl
    nop
    adc $42
    inc b
    ld h, e
    jp nz, $80a2

    jr jr_054_60ac

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

    db $e4
    add b
    ld a, [hl]
    inc a
    add h
    dec d
    add d

jr_054_60ff:
    ret nz

    ld hl, $c02d
    ldh [rP1], a
    xor h

Call_054_6106:
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
    ccf
    and b
    and b
    and b
    call c, $dedd
    ld a, [$fdec]
    ld [c], a
    rst $18
    jp nc, $a0d3

    jp c, $f3db

    pop hl
    call nc, Call_000_3fd5
    and b
    ret nc

    pop de
    and b
    sub $d7
    push de
    push hl
    ret nc

    ld [$e43f], a
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$d5ea]
    pop hl
    ld [hl], b
    rst $08
    ldh [$c9], a
    ldh [rIE], a
    and $b4
    ldh [$d8], a
    reti


    and b
    push de
    ld [c], a
    ld a, [hl]
    ret nc

    db $ec
    ld [$e6e5], a
    rst $20
    add sp, -$17
    ld a, [$bcea]
    push de
    pop hl
    add e
    ldh [$a0], a
    sbc a
    and d
    sbc l
    rst $38
    db $e3
    sbc a
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
    sub $d7
    ld c, c
    ldh [$fe], a
    ld c, h

Jump_054_6177:
    ldh [$9f], a
    sbc h
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld c, b
    ld c, b
    ccf

Call_054_6180:
    ld b, l
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    and b
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
    sbc a
    sbc h
    xor [hl]
    ld b, l
    ld a, a
    ld b, l
    ld b, h
    ld e, c
    ld d, e
    inc sp
    ld b, l
    xor [hl]
    cp a
    pop hl
    ld b, $6f
    pop hl
    ret c

    reti


    inc de
    rst $28
    ld b, e
    xor $cb
    pop bc
    pop de
    ret nz

    add d
    ldh [rIE], a
    xor a
    ld c, d
    ld b, a
    dec l
    inc l
    inc l
    jr nz, @+$2f

    rst $28
    xor a
    ld b, [hl]
    ld b, [hl]
    and c
    cp e
    ret nz

    ret nc

    pop de
    jp c, $dbf1

    inc de
    ldh a, [rSCX]
    db $ed
    add l
    call nz, Call_054_469e
    ld b, [hl]
    ld b, [hl]
    ld a, a
    ld c, d
    ld e, b
    ld [hl-], a
    jr nz, jr_054_61f5

    jr nz, jr_054_6209

    or $e0
    pop bc
    sbc [hl]
    ld [hl], b
    jp $c87b


    add b
    jp nc, $e243

    add l
    jp Jump_054_469e


    rst $38
    xor [hl]
    ld b, [hl]
    ld b, h
    ld c, l
    ld c, c
    inc sp
    ld [hl+], a
    inc hl
    dec b
    dec l
    or $e0
    sbc h

jr_054_61f5:
    cp h
    jp $c67b


    add b
    call nc, $e243
    add l
    pop bc

Jump_054_61ff:
    rst $38
    and b
    and b
    sbc [hl]
    xor [hl]
    xor a
    ld b, [hl]
    xor [hl]
    ld d, e
    ccf

jr_054_6209:
    ld d, e
    ld b, h
    inc a
    inc a
    ld b, h
    ld b, [hl]
    ccf
    ldh [$bc], a
    call nz, Call_054_7b30
    push bc
    add b
    db $d3
    rlca
    jp $c208


    sbc a
    sbc h
    ld a, [bc]
    ldh [rTAC], a
    ldh [$ef], a
    add hl, sp
    dec [hl]
    dec [hl]
    xor [hl]
    ld a, c
    ret nz

    ld b, l
    ld b, [hl]
    xor [hl]
    ldh [$bc], a
    call nz, $a3a2
    add b
    pop de
    db $76
    and b
    rlca
    push bc
    sbc l
    and d
    sbc h
    rst $38
    ld b, [hl]
    inc bc
    inc b
    inc b
    inc bc
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    rst $38
    dec [hl]
    ld a, [hl-]
    xor a
    ld b, [hl]
    cp l
    inc l
    inc l
    ld b, h
    add c
    xor a
    ld a, [hl-]
    ret nz

    ld [hl], a
    and b
    ld a, d
    and d
    add b
    db $d3
    ld [hl], $a0
    rlca
    rst $00
    ld b, [hl]
    ld a, a
    dec b
    rrca
    ld bc, $0d00
    rlca
    dec b
    ret nz

    ldh [$3f], a
    ld b, l
    ld b, l
    ld l, $20
    inc l
    ld b, h
    pop af
    ret nz

Jump_054_626e:
    cp e
    pop bc
    ldh a, [rNR44]
    jp nz, $d880

    rlca
    jp nz, $c085

    ld b, [hl]
    ld b, $98
    sbc b
    rst $30
    sbc c
    sbc b
    ld c, $c0
    ldh [$35], a
    add hl, sp
    ld b, d
    dec h
    rla
    jr nc, jr_054_62d9

    ld d, l
    ei
    ret nz

    sbc [hl]
    rst $38
    jp $d980


    rlca
    jp nz, $aefd

    ld b, h
    ldh [rTAC], a
    rrca
    sbc b
    sub a
    sbc b
    sbc c
    db $fd
    ld [$e001], sp
    dec [hl]
    ld a, $40
    inc h
    ld hl, $e14a
    ld d, l
    ld a, d
    and d
    ld a, [hl+]
    and c
    add b
    jp c, $c207

    xor a
    dec b
    rrca
    db $dd
    sbc b
    rst $38
    pop hl
    nop
    ld bc, $8106
    ldh [$35], a
    ld a, $1f
    add hl, sp
    dec [hl]
    inc a
    ld b, h
    ld b, l
    dec sp
    and d
    xor l
    add c
    add b
    reti


    db $fc
    rlca
    jp $e044


    sub a
    sub a
    sbc b
    rrca
    inc b
    inc b
    scf
    rrca

jr_054_62d9:
    ld b, $36
    add b
    ldh [$39], a
    ld a, $3c
    ldh [$7d], a
    and c
    ret nc

    db $fd
    add c
    add b
    jp c, $821d

    ret


    add b
    ld [bc], a
    ld b, e
    ldh [$9a], a
    ld [bc], a
    ld l, a
    dec hl
    dec hl
    ld [bc], a
    ld [bc], a
    ld b, c
    ret nz

    ld a, [hl-]
    xor [hl]
    ei
    pop hl
    add c
    ld b, l
    ld a, l
    and b
    rst $28
    ld h, b
    ld h, c
    and e
    add b
    push de

Call_054_6306:
    add e
    and e
    adc b
    add b
    ld b, $7f
    sbc b
    sbc e
    sbc b
    ld [bc], a
    ld l, $20
    ld a, [hl+]
    ld b, c
    ret nz

    add b
    ld b, b
    ret nz

    ld a, e
    ldh [$bb], a
    and b
    ld b, c
    jp nz, $83a4

    nop
    or l
    add e
    and h
    sbc [hl]
    ld a, [hl]
    add e
    pop bc
    sbc b
    ld [$202d], sp
    jr nz, jr_054_6362

    add c
    ret nz

    ld a, a
    ld h, d
    ld a, d
    ld h, l
    ld h, [hl]
    dec [hl]
    dec [hl]
    ld b, b
    db $fc
    add c
    add sp, -$7f
    jp $ba00


    adc e
    ld h, c
    and c
    ccf
    ldh [rSB], a
    nop
    ld c, $ff
    dec b
    ld hl, $4021
    add hl, sp
    dec [hl]
    ld h, d
    ld h, a
    rra
    ld b, d
    ld a, [hl-]
    ld l, b
    ld h, [hl]
    ld a, [hl-]
    ld a, e
    and b
    ccf
    ld [c], a
    add b
    call c, $fffe
    and l
    ld [bc], a
    rlca
    rrca

jr_054_6362:
    ld c, $05
    inc a
    dec [hl]
    ld l, a
    add hl, sp
    add hl, sp
    dec [hl]
    ld l, c
    ei
    pop hl
    ld l, d
    ld a, $3c
    add b
    or b
    add b
    and d
    add b
    call c, Call_054_6306
    add [hl]
    ld h, c
    ld [bc], a
    ld [bc], a
    add h
    ret nz

    ld a, [hl-]
    rst $38
    ld a, [hl-]
    dec [hl]
    ld l, e
    ld l, h
    ld a, $44
    inc a
    ld l, d
    ld bc, $323e
    add b
    cp $81
    ld a, l
    push bc
    nop
    or h
    ld b, $66
    ld b, l
    ld h, b
    push bc
    and c
    ld a, [hl]
    jp nz, Jump_054_6ea0

    ld [hl], h
    ld a, [hl-]
    ld [hl], $35
    ld l, d
    add b
    ret nz

    rlca
    xor [hl]
    xor a
    xor [hl]
    ld a, l
    push bc
    nop
    or [hl]
    rst $38
    add e
    ld d, e
    ld b, b
    jp nz, $aa60

    add l
    and c
    ld [hl], $00
    ret nz

    ld l, c
    ld a, l
    and b
    ld l, d
    rst $38
    and b
    xor a
    rlca
    xor [hl]
    xor a
    sbc [hl]
    dec [hl]
    ld b, c
    ld a, b
    ld b, b
    add b
    ld a, h
    add d

jr_054_63c9:
    ld h, e
    ld a, [bc]
    jp nz, $ae5d

    ccf
    pop hl
    dec [hl]
    ld l, h
    ld l, l
    cp a
    and c
    xor a
    cp c
    ld b, c
    ldh a, [rNR42]
    ld h, c
    add b
    ld a, h
    add d
    ld h, e
    dec b
    jp nz, $afae

    ld a, [hl-]
    dec [hl]
    ld a, a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    ld [hl], $44
    ld sp, $b060
    ld a, [hl]
    and e
    add b
    ld a, l
    ld d, a
    ld b, c
    add h
    ld b, b
    ld b, h

jr_054_63f9:
    inc a
    jp z, $afa0

    ld c, $fb
    jp Jump_054_483a


    ld c, c
    ret nz

    add b
    ccf
    call nz, Call_054_5d00
    ld c, c
    jr nz, jr_054_6482

    ld b, l
    ld b, b
    xor a
    ld b, b
    pop bc
    pop bc
    ld [hl], $3a
    ld h, d
    call nz, Call_054_6fa0
    dec [hl]
    ld a, [hl-]
    ld d, h
    ld d, a
    ret nz

    db $e3
    call nc, $a0d5
    ld b, e
    sub h
    nop
    ld e, c
    ld [de], a
    jr nz, jr_054_63c9

    ld c, $60
    ld b, l
    push bc
    add c
    jp nz, Jump_054_68a0

    ld c, $bf
    pop hl
    jr c, jr_054_6472

    scf
    cp c
    jr nz, jr_054_63f9

    ld h, [hl]
    nop
    ld e, e
    cp [hl]
    ld h, e
    nop
    ccf
    ld [c], a
    add e
    pop bc
    cp a
    ld [c], a
    cp a
    add c
    ld bc, $aec2

jr_054_644a:
    ld [bc], a
    nop
    ld e, e
    ld b, c
    jp Jump_000_0580


    db $e3
    ld b, e
    jp $813b


    dec sp
    ld [hl+], a
    ld h, l
    ld b, e
    nop
    ld e, h
    jp $ae21


    inc bc
    ld b, [hl]
    ld b, l
    ret nz

    ld [$c036], a
    ld b, d
    ld h, c
    ld l, l
    ld bc, $5e00
    jp Jump_000_0f21


    xor a
    xor [hl]
    ld c, d

jr_054_6472:
    ld d, [hl]
    add h
    ld h, c
    jp Jump_000_03a0


    ret nz

    inc a
    ld h, b
    ld h, c
    ld b, [hl]
    jp Jump_000_00a0


    add e
    add b

jr_054_6482:
    ld e, $02
    ld b, e
    ld c, d
    ld e, b
    inc b
    ld h, c
    rra
    ld l, e
    ld l, h
    ld l, h
    ld l, a
    ld l, [hl]
    ld bc, $83e3
    and l
    add b
    db $dd
    ld l, [hl]
    ld a, e
    ld h, h
    ld b, h
    ld c, l
    ld d, l
    cp $a0
    ld l, [hl]
    ld [hl], b
    call nz, $c2a0
    ei
    ld b, c
    ld b, b
    dec sp
    ld [bc], a
    jr nz, jr_054_644a

jr_054_64a9:
    add b
    db $dd
    cp $03
    sbc [hl]
    ld b, l
    dec de
    ld d, d
    ld d, l
    cp a
    add e
    dec [hl]
    xor [hl]
    nop
    ld h, b
    rst $38
    ld b, [hl]
    cp a
    ld [bc], a
    inc b
    nop
    ld e, d
    cp $03
    and c
    cp a
    call nz, $a57b
    rst $38
    ld b, l
    ret nz

    ld hl, $1980
    add $5f
    ld [bc], a
    call nc, Call_000_3fd5
    add b
    inc b
    ld h, c
    dec a
    add d
    ld [hl], $ae
    inc c
    or $61
    rst $38
    call nz, $dbda
    add b

jr_054_64e1:
    dec de
    ld b, b
    inc bc
    ret nz

    add c
    add b
    and d
    jr c, jr_054_64a9

    ld h, b
    ld a, [$fa80]
    nop
    add hl, sp
    inc bc
    inc bc
    ld a, [hl]
    inc bc
    nop
    cp h
    xor h
    ld b, b
    inc bc
    ret nz

    ld h, b
    ld a, c
    ld h, h
    ld b, $a1
    add hl, sp
    ld a, a
    ld b, c
    ld b, l
    ld a, a
    ld b, [hl]
    add hl, sp
    ld [hl], $02
    dec c
    ld c, $05
    ld a, [hl]
    ld [$008c], sp
    cp b
    cp h
    inc hl
    ld a, c
    ld a, [hl]
    jp z, $8840

    jr nz, @+$41

    ld b, c
    dec b
    pop bc
    rlca
    or l
    jr nz, jr_054_6593

    jr nz, jr_054_64e1

    add [hl]
    nop
    cp l
    pop bc
    ld h, b
    add d
    add e
    pop de
    add hl, sp
    rst $00
    and c
    cp a
    ld b, b
    ret nz

    ldh [$9a], a
    ld sp, $0f20
    rlca
    add a
    ld [bc], a
    sbc h
    sbc a
    nop
    add b
    ld a, a
    ld bc, $d980
    cp [hl]
    ld b, d

Call_054_6542:
    sbc a
    sbc a
    sbc h
    add l
    add a
    adc b
    ld [hl], b
    rst $00
    and b
    ret nz

    pop hl
    add hl, sp
    ccf
    dec b
    sbc c
    sbc e
    sub a
    sbc b
    ld b, $c0
    inc b
    ld e, $60
    ret nc

    add b
    ld a, c
    cp [hl]
    ld b, h
    cp a
    ld b, b
    cp a
    ld h, c
    ld a, [hl-]
    inc b
    ret nz

    ld [hl], $45
    ld h, b
    pop af
    nop
    ld [hl], $00
    ret nz

    dec b
    nop
    ld e, h
    cp [hl]
    ld b, h
    sbc a
    sbc h
    ld b, h
    ld hl, $3913
    xor a
    add $c0
    dec [hl]
    ld [bc], a
    ld [bc], a
    add c
    ld [hl+], a
    ld b, e
    dec l
    nop
    or d
    ld e, b
    db $fd
    and b
    cp a
    and d
    call nz, Call_054_4000
    dec b
    ld a, e
    nop
    sbc b
    add c
    ldh [$83], a

jr_054_6593:
    sbc c
    dec b
    add c
    and b
    ret nz

    ld b, $80
    db $db
    db $fc
    jr nz, jr_054_65d7

    ld [bc], a
    ld b, b
    inc b
    adc d
    nop
    rst $30
    ld bc, $ff97
    ldh [rSB], a
    ldh [$c0], a
    adc b
    add b
    ld a, e
    sbc l
    ld h, d
    and $7f
    and c
    ld [hl], $39
    scf
    ld bc, $e1c2
    sbc b
    sbc c
    ld [$c0f0], sp
    adc c
    nop
    cp d
    sbc e
    and d
    ld a, a
    ld b, b
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, l
    rst $30

jr_054_65ca:
    ld b, $01
    nop
    call nz, $98c0
    sbc c
    ld bc, $6100
    ld b, $80
    inc bc

jr_054_65d7:
    ld b, e
    adc h
    add b
    ret nc

    ld [bc], a
    db $e3
    sbc [hl]
    xor [hl]
    rst $08
    nop
    rst $38
    ld b, [hl]
    ld b, [hl]
    dec b
    rlca
    rrca
    sbc e
    sbc b
    sbc c
    add d
    inc bc
    pop bc
    dec b
    add b
    rra
    di
    ld b, e
    ld [bc], a
    db $e4
    pop bc
    ld [c], a
    rlc b
    ld [bc], a
    ld c, $87

jr_054_65fb:
    and b
    sbc c
    dec c
    ld [bc], a
    pop bc
    ld bc, $2242
    add b
    sbc $de
    ld h, e
    inc a
    ld b, b
    jr nz, jr_054_65ca

    push hl
    inc b
    inc bc
    inc bc
    inc bc
    add d
    ld bc, $2002
    nop
    ld h, c
    add h
    nop
    ld e, e
    ld e, l
    ld [bc], a
    ret nz

    rst $20
    or a
    push hl
    ld [bc], a
    jr nz, jr_054_6664

    and h
    add b
    ld a, h
    sbc [hl]
    ld b, b
    inc b
    ld b, l
    ld b, e
    ccf
    ccf
    db $fd
    pop hl
    ld sp, hl
    db $e4
    xor [hl]
    ldh [rSCY], a
    and [hl]
    nop
    ld e, d
    pop bc
    ld h, b
    add b
    jr nz, jr_054_65fb

    ld hl, $a444
    ld h, h
    ld b, d
    rst $38
    add sp, -$5b
    ld b, d
    pop hl
    ld b, d
    dec h
    nop

Jump_054_6648:
    ld e, b
    and b
    ld b, e
    and c
    sub e
    nop
    cp a
    ld b, b
    ld l, c

jr_054_6651:
    and e
    dec [hl]
    dec [hl]
    and e
    db $fc
    push hl
    ld l, d
    inc bc
    ld b, b
    and c
    ld h, [hl]
    ld b, c
    ld b, d
    ld hl, $1a80
    ld [bc], a
    and b
    add c

jr_054_6664:
    inc hl
    ret nz

    ldh [$8c], a
    pop bc
    ld b, h
    ld a, [$6a42]
    ld b, b
    ld b, d
    ld h, $80
    rra
    nop
    inc hl
    ld l, e
    dec c
    ld [hl], c
    rst $38
    add sp, $6d
    ld b, h
    add b

jr_054_667c:
    jr nz, @+$03

    jp nz, Jump_000_2dd0

    add b
    ld de, $c016
    pop bc
    xor a
    xor [hl]
    ret nz

    jp z, $8045

    jr nz, jr_054_66f4

    nop
    ld b, e
    inc l
    ld h, b
    add b
    inc de
    ld b, b
    and d
    dec a
    nop
    inc a
    jp z, Jump_000_21c1

    sub $d7
    ld b, e
    inc l
    inc b
    add b
    ld [hl], e
    ld a, $c2
    sbc l
    rst $38
    ldh [$39], a
    nop
    push bc
    ld [c], a
    db $f4
    pop hl
    ld b, e
    ld bc, $4280
    inc h
    add b
    ld a, l
    sbc d
    ld h, b
    push de
    ld h, e
    jr c, jr_054_667c

    add [hl]
    db $e3
    jp hl


    ld bc, $01d2
    db $d3
    ld [bc], a
    jp nz, Jump_054_7e80

    cp l
    ld hl, $a0bb
    sub d
    ld h, c
    scf
    pop bc
    ld c, b
    jr nz, jr_054_6651

    ld l, h
    add e
    ld [bc], a
    and d
    add b
    rst $18
    ld e, h
    and d
    rla
    ld h, b
    ld a, b
    and c
    add hl, sp
    and d
    sbc [hl]
    nop
    inc l
    push hl
    ld h, h
    ld [hl+], a
    ld d, b
    dec c
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

jr_054_66f4:
    rst $38
    rst $38
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    dec de
    dec b
    ld [bc], a
    ld bc, $0523
    ld [bc], a
    ld [bc], a
    ld a, [de]
    ld [$0302], sp
    inc h
    ld [$0402], sp
    add hl, de
    add hl, bc
    ld [bc], a
    dec b
    inc e
    add hl, bc
    ld [bc], a
    ld b, $22
    ld a, [bc]
    ld [bc], a
    rlca
    jr z, jr_054_672f

    ld [bc], a
    ld [$0c29], sp
    ld [bc], a
    add hl, bc
    inc de
    ld c, $02
    ld a, [bc]

jr_054_672f:
    ld [hl+], a
    ld de, $0b02
    daa
    inc d
    ld [bc], a
    inc c
    ld a, [hl+]
    ld d, $02
    dec c
    add hl, hl
    rla
    ld [bc], a
    ld c, $2b
    rla
    ld [bc], a
    rrca
    ld a, [hl+]
    jr @+$04

    db $10
    ld e, $19
    ld [bc], a
    ld de, $1a1d
    ld [bc], a
    ld [de], a
    rla
    dec de
    ld [bc], a
    inc de
    ld d, $1c
    ld [bc], a
    inc d
    jr jr_054_6777

    ld [bc], a
    dec d
    ld d, $20
    ld [bc], a
    ld d, $28
    jr nz, jr_054_6764

    rla
    rla

jr_054_6764:
    ld hl, $1802
    ld [hl+], a
    inc h
    ld [bc], a
    add hl, de
    inc hl
    ld h, $02
    ld a, [de]
    ld e, $2c
    ld [bc], a
    dec de
    jr jr_054_67a6

    ld [bc], a
    inc e

jr_054_6777:
    rla
    ld [hl-], a
    ld [bc], a
    dec e
    add hl, hl
    inc sp
    ld [bc], a
    ld e, $28
    inc [hl]
    ld [bc], a
    rra
    daa
    ld [hl], $02
    jr nz, jr_054_67a0

    ld a, [hl-]
    ld [bc], a
    ld hl, $3a28
    ld [bc], a
    ld [hl+], a
    add hl, de
    dec sp
    rst $38
    rst $38
    rst $38
    sbc h
    ld h, a
    ld l, $6b
    ld bc, $1c6f
    ld l, a
    ccf
    dec c
    dec c
    dec c

jr_054_67a0:
    ld c, $0e
    ld c, $fa
    rst $38
    db $f4

jr_054_67a6:
    rst $30
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp+$5b
    rst $38
    db $f4
    ld hl, sp-$5f
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld b, e
    rst $38
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    nop
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    ld_long a, $ffff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, e
    rst $38
    ld b, e
    ld [c], a
    db $fd
    pop hl
    rst $30
    and $f2
    db $e4
    add b
    rst $18
    and a
    ld [$c0ff], a
    add e
    ld c, l
    ld c, l
    cp e
    pop hl
    ei
    pop hl
    rst $38
    rst $38
    ret nz

    pop af
    cp e
    db $e3
    dec c
    ld hl, $3d4d
    rst $38
    ld c, c
    add sp, -$3d
    rst $20
    ret z

    ldh [$2d], a
    db $fd
    ld [c], a
    dec l
    db $e4
    ld [bc], a
    add b
    db $dd
    dec c
    ld d, l
    ld [c], a
    ld a, [$40e0]
    call nz, $e3f8
    cp l
    ldh [$3d], a
    ldh [$60], a
    sub c
    cp a
    ret nc

    db $e3
    adc d
    ld [c], a
    ld b, [hl]
    db $e4
    cp b
    pop bc
    ld c, l
    dec l
    ld a, l
    ldh [rLCDC], a
    ccf
    ldh [$fb], a
    pop de
    adc h
    adc $ec
    and d
    sub b
    pop hl
    ld c, c
    pop hl
    dec l
    adc e
    pop hl
    rlca
    ld l, l
    dec hl
    dec hl
    cp [hl]
    ldh [$7d], a
    pop hl
    ld l, c
    jp $d780


    adc $c5
    db $fc
    db $d3
    ld [c], a
    ld c, h
    pop hl
    dec c
    ld c, l
    ld c, l
    ld c, l
    ld l, l
    dec bc
    add a
    dec bc
    ld c, e
    ld l, e
    ld a, l
    ld [c], a
    ld [hl-], a
    jp nz, $fd43

    ld d, c
    pop bc
    dec l
    add hl, de
    dec l
    ld bc, $86c3
    ldh [$2b], a
    dec bc
    rst $38
    pop hl
    ld a, [hl]
    ld [c], a
    scf
    pop bc
    or b
    dec a
    ld a, [$c3e0]
    pop bc
    jp $e1ff


    ld l, l
    ld c, e
    jp Jump_054_4be2


    ld [bc], a
    pop bc
    ldh [$2b], a
    ld a, [hl]
    db $e4
    or a
    xor [hl]
    db $76
    xor c
    sbc $c3
    adc b
    db $e4
    add l
    push hl
    inc e
    ret nz

    pop hl
    ld a, $e0
    ld c, e

Jump_054_68a0:
    dec bc
    dec l
    and l
    jp $d67a


    ld c, b
    jp $89d8


    add c
    adc b
    and $39
    ldh [$2d], a
    dec c
    ld a, [hl]
    ld [c], a
    ld c, e
    ld l, e
    ld b, b
    ret nz

    ld [c], a
    ld a, e
    pop bc
    ld [hl], l
    xor e
    ld [hl], $ab
    ld [$cfe2], sp
    ret nz

    ld l, l
    ld c, d
    pop bc
    rst $38
    dec bc
    ld c, e
    dec c
    inc c
    inc c
    inc l
    dec c
    dec c
    ld e, $7f
    pop hl
    ld c, e
    ld c, e
    ld c, e
    ld c, l
    or d
    pop hl

jr_054_68d7:
    cp [hl]
    call nz, $d780
    ld d, c
    dec l
    add d
    pop hl
    pop bc
    pop hl
    ret z

    ldh [$0b], a
    ret nz

    pop hl
    inc l
    ld a, a
    ld [c], a
    ld [bc], a
    add b
    ldh [$0b], a
    ld sp, hl
    and d
    db $76
    and d
    ld [hl], $b6
    bit 4, c
    sub l
    ldh [$83], a
    add e
    nop
    add b
    ld [c], a
    ld a, a
    ld [c], a
    add b
    ld [c], a
    cp $c6
    dec a
    sub h
    sbc l
    add e
    ld d, c
    pop hl
    add c
    ld [c], a
    ld c, $48
    pop bc
    dec c
    ld c, h
    ld c, h
    ccf
    db $e3
    ld bc, $3ee0
    ldh [$be], a
    pop bc
    jr nc, jr_054_68d7

    xor l
    ret nz

    call $e180
    ld b, e
    db $e4
    dec c
    ld c, e
    cp a
    pop hl
    ccf
    ldh [rDIV], a
    cp l
    ret nz

    xor h
    ldh [rKEY1], a
    ld a, [hl]
    ret nz

    jp hl


    add e
    add b
    rst $10
    add b
    ld [c], a
    add $e0
    ld b, $ba
    db $e3
    ld c, e
    dec hl
    cp a
    push hl
    dec l
    ld [c], a
    add b
    db $e4
    add b
    rst $10
    cp $a3
    inc b
    add b
    db $e4

jr_054_6949:
    dec a
    db $e3
    dec hl
    cp a
    push hl
    ret nz

    push hl
    ld a, d
    add b
    ld e, h
    ld l, d
    ret nz

    rst $08
    ld a, [bc]
    add b
    db $e3
    ld c, l
    cp e
    ret nz

    ld c, d
    add [hl]
    and b
    ld a, h
    call nz, $e7c0
    dec a
    adc e
    pop af
    inc c
    cp l
    xor h
    nop
    ld [c], a
    ld [bc], a
    and d
    ld c, l
    dec bc
    ld a, [bc]
    ld a, [bc]
    rla
    ld c, d
    ld c, e
    ld l, e
    db $fc
    and b
    inc l
    ret nz

    pop hl
    xor $80
    ld a, [hl]
    and b
    ld [c], a
    ld a, d
    ld l, [hl]
    ld c, e
    ld b, e
    ld [$e480], a
    rst $38
    jp nz, $0b0d

    ld c, d
    dec sp
    ld a, [bc]
    ld a, [bc]
    ld a, h
    jp Jump_054_6c4c


    dec c
    nop
    pop bc
    add b
    ret nz

    jr nc, jr_054_6949

    ld b, l
    add sp, $26
    add b
    add sp, -$40
    db $e4
    ld c, l
    dec l
    rst $10
    ldh [$c1], a
    and d
    ld c, a
    ld l, e
    ld a, [bc]
    ld c, d
    ld l, e
    ccf
    pop hl
    push af
    and d
    ld l, e
    ld [$81a0], a
    ld l, l
    xor d
    ld h, [hl]
    add b
    ld [$6786], a
    ld c, e
    ld h, d
    cp a
    ldh [$7e], a
    jp nz, $cf6b

    ld l, e
    ld l, e
    ld c, d
    dec hl
    ld a, l
    ret nz

    ld hl, sp-$20
    ld l, e
    ld l, e
    ld h, $fa
    ldh [$0d], a
    ld l, l
    ld hl, $8c82
    dec hl
    inc c
    ld [hl], e
    inc l
    ld a, [hl]
    call nz, $1244
    pop hl
    push af
    and c
    dec hl
    adc b
    add b
    add [hl]
    ldh [$6e], a
    and d
    ld l, l
    ld [bc], a
    pop hl
    call nz, Call_054_44fd
    dec h
    ld h, $0a
    ld a, $b1
    dec bc
    add d
    dec sp
    and b
    ld l, e
    ld l, e
    dec b
    dec hl
    ld b, e
    add c
    ld l, e
    cp e
    ret nz

    jp $bfe2


    ld [c], a
    ld a, [bc]
    ld e, h
    cp $c4
    nop
    rst $38
    ld [c], a
    ret nz

    ldh [$09], a
    and c
    ld b, d
    ldh [$86], a
    ret nz

    ret nz

    rst $30
    ld c, a
    add hl, hl
    adc l
    inc hl
    inc c
    cp $c0
    call Call_000_2b61
    dec c
    ret nz

    ld [c], a
    add [hl]
    jp nz, Jump_000_350d

    add b
    ld l, e
    inc b
    ld a, h
    push bc
    ld [bc], a
    ld hl, $492d
    ld h, c
    ld a, $60
    inc a
    pop hl
    add h
    ld h, d
    ld [bc], a
    ld e, h
    inc e
    jr jr_054_6a5b

    ld e, l
    ld h, a
    ld c, l
    ld c, l
    dec l
    nop
    pop hl
    db $f4
    jp $f7c0


    nop
    or [hl]

jr_054_6a46:
    dec bc
    or a
    xor b
    ret z

    nop
    ld b, a
    jp nz, $8205

    add h
    ld h, b
    ld l, a
    inc hl
    nop
    ld e, e
    db $10
    adc d
    ld h, $d7
    add e
    cp l

jr_054_6a5b:
    pop bc
    push bc
    ld h, h
    ld c, l
    jp nz, Jump_054_7844

    rra
    ld c, e
    inc b
    ld a, [bc]
    ld c, c
    nop
    ld l, l
    cp [hl]
    ret nz

    ld l, e
    add a
    and c
    add h
    ld l, b
    dec a
    ccf
    rrca
    ld [hl+], a
    nop
    ld d, b
    nop
    ld [bc], a
    ld b, b
    bit 0, b
    pop bc
    inc h
    inc b
    and c
    add a
    ld b, d
    add b
    rra
    ld a, [hl]
    and d
    nop
    add h
    pop hl
    jp $fc22


    ld h, $7e
    rst $18
    cp d
    add hl, hl
    add [hl]
    ld [hl+], a
    inc bc
    jp Jump_054_4000


    nop
    ld [hl], $c0
    ld a, [hl]
    sub $80
    ld c, $55
    ld bc, $407c
    adc h
    ld b, l
    ld a, h
    inc hl
    ret nz

    push hl
    inc c
    add b
    call c, Call_054_6180
    dec l
    dec l
    jp Jump_054_4c20


    inc h
    add hl, bc
    ld b, d
    cp $a5
    ld b, b
    pop bc
    inc bc
    dec a
    ld a, [$e220]
    add h
    jr nz, jr_054_6a46

    ret nz

    cp d
    ld h, e
    dec l
    add d
    jp $bf60


    add c
    ld b, e
    ld sp, $1380
    nop
    inc h
    ld c, a
    add c
    ld c, l
    dec l
    or [hl]
    add e
    ld b, b
    inc b
    add d
    ld b, h
    ld b, l
    add b
    ld d, $01
    ld h, c
    ld a, [hl]
    ld [hl+], a
    adc h
    ld [bc], a
    dec l
    sub c
    ld b, h
    ld b, b
    db $ed
    ld [bc], a
    ld b, c
    add d
    add b
    db $db
    ld h, [hl]
    ld b, d
    ld b, a
    inc h
    ld d, d
    ld [hl+], a
    ld l, l
    or a
    and h
    nop
    ld b, h
    add d
    xor a
    ld bc, $de80
    cp $07
    ld b, c
    pop hl
    db $eb
    ld c, b
    dec h
    ld b, h
    sub e
    xor a
    nop
    cp [hl]
    ld [de], a
    ld [bc], a
    db $e4
    pop de
    call nz, $a307
    push bc
    cp a
    ld [hl], $a5
    ld a, [hl]
    ld hl, $00d4
    nop
    adc a
    and d
    ld c, d
    ld h, d
    ld [hl], h
    add d
    ld b, $4e
    nop
    cp b
    inc c
    and c
    ld a, [$4fa1]
    db $f4
    nop
    dec a
    ld a, [hl+]
    nop
    nop
    nop
    ccf
    and b
    and b
    and b
    call c, $dedd
    ld a, [$f4ff]
    push af
    ccf
    db $e4
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    ld a, [$f4ff]
    push af
    ccf
    ld [$e6e5], a
    rst $20
    add sp, -$17
    ld a, [$f4ff]
    push af
    nop
    ld e, e
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    ld a, [$5bfb]
    rst $38
    add b
    rst $18
    nop
    ld d, l
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    nop
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    add b
    rst $18
    ld e, e
    rst $38
    add b
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld c, a
    ld [$e1fd], a
    sub $c1
    rst $10
    rst $30
    db $e4
    ldh a, [$e2]
    add b
    rst $18
    ld c, a
    rst $20
    jp $d8e3


    reti


    add [hl]
    ld a, [$d0c0]
    pop de
    or [hl]
    ld [c], a
    add b
    rst $18
    ld h, a
    db $ec
    jp $dae0


    dec c
    db $db
    jp $d2e0


    db $d3
    di
    ld [c], a
    add b
    rst $18
    ld c, c
    and $46
    db $e3
    ld [hl], $c3
    push hl
    call nc, Call_054_7dd5
    ldh [$da], a
    db $db
    dec a
    ld a, [c]
    ld c, c
    ldh a, [rP1]
    dec bc
    db $e3
    ld b, [hl]
    ld [c], a
    jp $f7e3


    db $e3
    xor $c1
    add b
    rst $18
    dec bc
    db $e4
    sub b
    pop hl
    cp h
    add hl, bc
    ldh [$c3], a
    ld [c], a
    sbc a
    sbc l
    and d
    sbc a
    ld a, l
    ld [c], a
    and b
    pop hl
    and b
    add b
    sbc $0b
    db $e4
    dec c
    ld [c], a
    adc h
    db $e4
    sbc a
    sbc h
    ld b, [hl]
    rlca
    ld b, [hl]
    sbc h
    sbc a
    ld [hl], h
    ld [c], a
    ld [hl], d
    jp $d780


    dec bc
    and $4a
    ld [c], a
    ld a, a
    call nc, $9fd5
    and d
    sbc l
    sbc l
    sbc l
    pop bc
    ldh [rP1], a
    cp a
    ld [c], a
    ld a, [$72c0]
    pop bc
    add b
    reti


    dec bc
    and $02
    jp $e186


    cp $e5
    nop
    ld a, [hl]
    pop hl
    ld h, a
    pop hl

Jump_054_6c21:
    dec a
    db $ed
    rst $08
    xor e
    dec bc
    db $e4
    adc b
    ld [c], a
    add [hl]
    db $e4
    cp a
    add sp, -$80
    ld hl, sp-$5e
    or a
    xor h
    rst $08
    xor c
    sub e
    and c
    inc d
    pop bc
    adc b
    jp hl


    ld a, [hl]
    rst $20
    sbc [hl]
    ldh [$fe], a
    add $00
    or e
    ld c, l
    jp $c014


    ld c, c
    rst $20
    add e
    adc c
    adc b
    dec bc

Jump_054_6c4c:
    adc c
    add e
    inc a
    push hl
    and c
    cp $c5
    ld a, d
    jp z, $895b

    db $dd
    and e
    cp $90
    pop bc
    sub c
    sub b
    sub b
    sub b
    sub c
    ld b, [hl]
    ld b, [hl]
    rra
    adc d
    ld [bc], a
    rlca
    ld [bc], a
    add [hl]
    cp a
    push hl
    cp $c6
    add b
    ret c

    db $fc
    ld d, $a0
    pop bc
    push hl
    sub b
    sub b
    ld b, [hl]
    ld b, [hl]
    add c
    ld [$988f], sp
    rrca
    ld [bc], a
    adc e
    cp $cb
    add b
    jp c, $a016

    sbc [hl]
    ld hl, sp+$51
    ret nz

    pop bc
    ld [c], a
    add b
    ldh [$81], a
    ld [$989b], sp
    ld [$8033], sp
    or e
    cp $ca
    add b
    ld a, b
    sub $d7
    ld d, $a0
    ret nz

    ldh [$fe], a
    ld b, d
    db $e4
    ld b, [hl]
    ld b, [hl]
    ld a, a
    ld [bc], a
    rrca
    sbc b
    ld [$8205], sp
    cp $c6
    sbc [hl]
    or $80
    cp l
    xor l
    ld c, a
    adc c
    ld d, e
    add d
    add b
    ldh [rRP], a
    ld b, e
    db $e3
    xor [hl]
    xor [hl]
    cp a
    ld [c], a
    rrca
    cp $c3
    sub c
    ldh a, [$c0]
    pop de
    sbc [hl]
    jp hl


    add h
    add b
    push de
    ld d, e
    add d
    and c
    ret nz

    push hl
    xor a
    xor a
    daa
    ld b, [hl]
    ld b, l
    ld b, c
    cp a
    and $f0
    pop bc
    sbc [hl]
    ld a, c
    add h
    add b
    ld [hl], a
    db $fc
    nop
    db $e3
    jp $b3c2


    xor [hl]
    xor [hl]
    ld b, e
    ld a, [hl+]
    ld h, $9d
    ld a, [hl+]
    ld a, [hl]
    push hl
    sub b
    sub b
    or b
    cp $a3
    xor e
    ld c, e
    sub b
    ldh a, [$8c]
    ld l, e
    nop
    db $e3
    call nc, Call_054_42e0
    ret nz

    xor a
    xor a
    ld d, [hl]
    ld a, [hl+]
    add a
    jr nz, jr_054_6d36

    ld b, d
    ld a, h
    call nz, $e380
    or $60
    xor e
    ld c, e
    nop
    ld hl, sp-$0d
    ld c, l
    ret nz

    push bc
    ld bc, $4ac0
    ld h, b
    ld d, l
    ld a, [hl+]
    ld a, [hl+]
    ld a, a
    ld b, l
    add c
    ld [$0001], sp
    ld [$0080], sp
    ld [c], a
    add hl, bc
    and c
    ldh a, [rSTAT]
    xor e
    ld c, e
    ld b, [hl]
    ld e, $48
    call nc, Call_000_1640
    ld h, b
    ld b, b
    push bc
    rst $38

jr_054_6d36:
    or b
    ld b, [hl]
    ld c, d
    or h
    ld e, d
    ld a, $3a
    ld b, l
    ccf
    ld a, a
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld a, [hl]
    ld a, $a4
    ldh a, [rSCX]
    jp nz, $28e8

    nop
    rst $08
    ld c, b
    call nc, Call_000_1640
    ld h, b
    ret nz

    and [hl]
    ld b, [hl]
    ld b, l
    rst $38
    ld d, d
    ld d, [hl]
    add hl, sp
    or c
    ld [hl], $45
    adc [hl]
    ld a, e
    ld b, e
    ld a, e
    adc a
    ld a, l
    add h
    ld a, [hl-]
    ld h, c
    ld l, [hl]
    ld b, b
    add sp, $28
    dec [hl]
    ld [hl], $48
    ldh a, [rNR34]
    ld h, b
    ld d, e
    ld h, c
    ret nc

    ld h, c
    ld b, c
    and e
    ld b, l
    ld c, e
    ld b, b
    dec [hl]
    ld b, e
    inc a
    ld b, h
    ld a, $88
    or a
    ld b, c
    ld l, [hl]
    ld b, b
    add sp, $28
    nop
    ld e, e
    ld a, [hl+]
    db $fc
    ld a, $e6
    ld [de], a
    pop bc
    xor [hl]
    xor [hl]
    or e
    ld b, e
    ld b, d
    dec [hl]
    sbc e
    dec [hl]
    add hl, sp
    ld bc, $9d83
    sbc l
    ld a, l
    ld h, b
    db $f4
    ld b, c
    jp c, $db05

    dec hl
    add hl, hl
    ld h, c
    ld e, e
    ld a, [hl+]
    ld a, $e3
    cp $a0
    adc l
    ld h, c
    nop
    ret nz

    ccf
    ld b, [hl]
    ld b, h
    inc a
    dec [hl]
    ld a, [hl-]
    ld b, l
    jp nz, $fa64

    ld hl, $4300
    db $eb
    add b
    ld c, $3e
    db $e3
    adc c
    ld l, b
    add b
    ldh [$7f], a
    ld [c], a
    add [hl]
    and c
    ld b, e
    rst $28
    sbc b
    add b
    ld l, a
    ld a, h
    jp Jump_054_6648


    or e
    ld b, b
    ret nz

    ldh [$7f], a
    pop hl
    and c
    ret nz

    ld a, h
    jr nz, jr_054_6de1

    and c
    ld b, e
    db $eb
    add b

jr_054_6de1:
    ld [hl], b
    ld a, h
    call nz, Call_054_6542
    ld b, d
    dec [hl]
    add hl, de
    or c
    cp [hl]
    jp nz, $a386

    ret c

    reti


    nop
    ld e, c
    ld b, l
    ld b, l
    rst $08
    ld [hl+], a
    inc e
    rst $30
    ld h, h
    nop
    ldh [$35], a
    dec [hl]
    ld b, d
    add [hl]
    add e
    pop bc
    ld b, c
    add b
    dec de
    jr nc, jr_054_6e63

    jr nz, @-$47

    and l
    dec c
    ld hl, $80b6
    ld b, l
    ld a, [hl-]
    ld b, b
    db $e3
    ret nz

    push bc
    jr nz, jr_054_6e8f

    rrca
    add [hl]
    ld de, $008b
    ld c, d
    ld hl, $61b6
    add hl, sp
    ccf
    call nz, $c303
    ld [hl], b
    ld [hl-], a
    ld bc, $1f80
    add hl, de
    ld b, d
    ld [bc], a
    ld b, h
    ld b, l

jr_054_6e2d:
    scf
    scf
    ld b, b
    pop bc
    ldh [$3e], a
    db $e4
    ld [hl-], a
    ld bc, $1f80
    ld c, e
    ld [hl+], a
    adc b
    inc h
    ld b, l
    scf
    dec a
    add b
    rst $38
    ldh [$bc], a
    ldh [$c4], a
    ld h, c
    daa
    ld hl, $1f80
    jr jr_054_6e2d

    add [hl]
    ld h, $39
    dec de
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    add hl, sp
    call nz, $8062
    rra
    or b
    ld bc, $bcfc
    add h
    ld b, l
    inc hl
    ld a, $69

jr_054_6e63:
    and e
    dec [hl]
    dec [hl]
    and e
    inc bc
    ld l, d
    ld a, $c4
    ld h, h
    add b
    rra
    dec de
    and d
    ld a, h
    ld b, c
    ret nz

    push hl
    ld a, [hl]
    and b
    add c
    dec [hl]
    ret nz

    ldh [$c2], a
    ld [hl+], a
    add b
    db $dd
    ld e, a
    inc b
    cp $85
    add b
    pop bc
    ld l, e
    dec b
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    pop hl
    jr nz, jr_054_6eb1

    add b

jr_054_6e8f:
    dec e
    ld [bc], a
    add sp, -$74
    add b
    ld bc, $c09c
    push bc
    inc b
    add c
    ld b, e
    cpl
    add b
    db $10
    ld [bc], a
    rst $20

Jump_054_6ea0:
    adc h
    add c
    ld a, $05
    nop
    ld bc, $43c3
    ld l, $00
    ld c, h
    ld [bc], a
    db $eb
    ld [de], a
    ld b, b
    or l
    add b

jr_054_6eb1:
    scf
    ld [bc], a
    inc b
    add l
    nop
    add b
    jp c, $e51f

    ret nz

    add sp, $51
    ld b, d
    db $ed
    and c
    ld b, h
    and l
    add b
    call c, Call_054_40e2
    nop
    cp [hl]
    ld b, h
    ld [de], a
    ld h, e
    res 0, b
    ld a, [bc]
    and b
    rlca
    and b
    ld b, h
    and h
    sub e
    xor a
    add b
    rlc b
    ccf
    nop
    cp [hl]
    inc b
    ld [de], a
    ld h, l
    ld [hl-], a
    add c
    cpl
    add b
    ld b, h
    and d
    sub $8f
    add b
    ld c, $00
    nop
    rst $20
    inc d
    jr nz, jr_054_6f25

    add d
    ld c, b
    add b
    rlca
    jp $9143


    nop
    or e
    ret nz

    push hl
    nop
    ld d, l
    adc l
    db $f4
    ld a, [c]
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
    nop
    nop
    ld bc, $fe80
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $00
    nop
    nop
    ld [bc], a
    nop
    ld a, [de]
    inc hl
    ld [bc], a
    ld bc, $231b
    ld [bc], a

jr_054_6f25:
    ld [bc], a
    ld a, [de]
    dec h
    ld [bc], a
    inc bc
    dec de
    dec h
    ld [bc], a
    inc b
    ld a, [de]
    dec hl
    ld [bc], a
    dec b
    dec de
    dec hl
    rst $38
    rst $38
    rst $38
    ld b, c
    ld l, a
    ld [hl], c
    ld l, a
    ld [$0872], sp
    ld [hl], h
    adc a
    ld [hl], h
    rst $38
    ld a, a
    nop
    ld a, h
    rra
    nop
    ldh [rP1], a
    rst $38
    ld a, a
    nop
    ld a, h
    rra
    nop
    ldh [rSC], a
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    db $10
    ld b, d
    pop de
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    add sp, -$01
    rst $38
    db $ec
    rst $18
    rst $18
    ld [hl], $ee
    db $eb
    rst $30
    rst $30
    sbc $eb
    db $fd
    db $fd
    adc $ed
    cp [hl]
    db $eb
    pop af
    ld a, a
    rst $38
    db $ec
    or b
    rst $38
    or b
    pop af
    pop af
    pop af
    db $fd
    db $fd
    call c, $e3fc
    ld h, b
    db $e3
    rra
    rra
    ld e, a
    rst $38

Call_054_6fa0:
    ld [c], a
    rra
    rra
    sbc b
    ld l, $ff
    rst $38
    rst $38
    ld a, [$dff9]
    rst $18
    db $fc
    pop hl
    ld d, b
    jp hl


    nop
    dec a
    nop
    ld c, h
    jp hl


    db $fd
    db $fd
    nop
    nop
    db $fc
    res 7, h
    rrc a
    ld a, a
    ld a, a
    nop
    nop
    nop
    db $eb
    or b
    rst $38
    or b
    di
    nop
    push hl
    adc b
    ld e, h
    push bc
    db $fc
    jp $cf40


    add b
    rst $38
    ld [$e170], a
    ld a, [de]
    jp hl


    xor d
    rra
    xor d
    nop
    nop
    add b
    add b
    db $fc
    rst $20
    ldh a, [$e1]
    ldh a, [$bd]
    ret nz

    ld c, h
    rst $38
    db $fc
    rst $10
    nop
    jp $c7fc


    or b
    rst $38
    xor h
    set 6, a
    rst $30
    ld b, $0c
    jp hl


    db $fd
    db $fd
    inc c
    pop bc
    db $fc
    ret


    ld a, $cd
    ld [bc], a
    db $eb
    ld d, $e1
    nop
    ldh [$ed], a
    nop
    db $eb
    ldh a, [$9f]
    ld hl, sp-$7b
    ld c, h
    rst $38
    ld hl, sp-$4f
    nop
    and a
    ld hl, sp-$5d
    inc b
    or b
    rst $38
    xor h
    set 7, l
    rst $38
    db $e4
    xor b
    and l
    ld [$98a5], sp
    and l
    ld a, $ed
    inc bc
    xor d
    xor d
    nop
    rst $08
    db $10
    rst $38
    nop
    rst $38
    ld c, h
    push hl
    ld b, h
    adc e
    ret nc

    ld l, e
    nop
    db $f4
    add c
    ret nz

    ld l, e
    inc b
    xor e
    db $f4
    add c
    or b
    rst $38
    or b
    ei
    inc b
    adc c
    ld [bc], a
    rst $28
    nop
    rst $38
    rst $38
    db $10
    ld a, l
    ld d, b
    ld l, l
    ld [hl+], a
    ld a, e
    rst $38
    rst $38
    or b
    rst $38
    rst $38
    rst $38
    sbc [hl]
    ld sp, hl
    nop
    ld e, $ff
    nop
    db $fd
    ld d, b
    ld a, e
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc d
    db $db
    rst $38
    ld d, c
    ld d, c
    ld e, l
    ld e, l
    ld de, $dd11
    db $dd
    dec sp
    pop de
    pop de
    ldh a, [$e7]
    dec e
    dec e
    db $dd
    rst $38
    ldh [$30], a
    inc hl
    ld l, a
    dec e
    dec e
    ld a, l
    ld a, l
    ldh a, [$e1]
    dec e
    dec e
    db $10
    inc sp
    add b
    ld d, b
    ld a, e
    add b
    inc hl
    ld a, b
    add l
    sbc $01
    and [hl]
    pop hl
    db $fc
    db $e3
    ret nc

    inc bc
    pop de
    rst $18
    pop de
    rst $10
    rst $10
    pop de
    pop de
    add b
    rst $20
    pop de
    pop de
    di
    push de
    push de
    ldh a, [$e9]
    ld h, h
    pop hl
    ld de, $7d11
    ld a, l
    inc bc
    ld de, $f011
    rst $20
    ld l, h
    db $e3
    ld h, b
    push hl
    ld h, h
    pop hl
    ld h, b
    pop hl
    ret nc

    push hl
    inc sp
    rst $10
    rst $10
    call z, $c0e3
    push hl
    push de
    push de
    ldh a, [$e9]
    ldh a, [$09]
    ret c

    ld c, h
    dec b
    db $fc
    jp $e9f0


    ld d, a
    ld d, a
    ldh a, [$e9]
    ld de, $0f11
    ld [hl], l
    ld [hl], l
    dec d
    dec d
    nop
    or a
    ld d, b
    ld [hl], l
    add b
    daa
    ld [hl], h
    ld c, e
    ld b, $1c
    pop hl
    push de
    push de
    db $10
    daa
    ld a, [c]
    pop hl

jr_054_70ea:
    add b
    pop bc
    ldh [$e9], a
    ldh a, [$e9]
    ldh a, [$30]
    push hl
    ld [hl], b
    rst $20
    inc e
    pop hl
    ld h, b
    jp hl


    push de
    push de
    dec d
    dec d
    ld b, $c0
    rlca
    dec d
    dec d
    inc c
    pop hl
    ldh [$eb], a
    jr nz, @-$15

    db $fc
    jp $c188


    or [hl]
    adc h

jr_054_710e:
    rlca
    ld e, l
    ld e, l
    ld a, h
    db $eb
    ld d, c
    ld d, c

jr_054_7115:
    cp h
    db $eb
    ld d, c
    reti


    ld d, c
    nop
    sbc e
    ld d, b
    ld l, a
    push af
    push af
    add b
    add hl, hl
    pop af
    pop af
    and $1c
    db $eb
    pop af
    pop af
    sbc h
    and e
    inc c
    push af
    pop de
    pop de
    ld [hl], a
    dec a
    ld [hl], a
    ld l, h
    ret


    dec e
    dec e
    ld [hl], l
    ld [hl], l
    inc l
    ld sp, hl
    add sp, -$5d
    add b
    ldh [$f9], a
    ldh a, [$0d]
    jr jr_054_70ea

    inc [hl]
    ld h, e
    inc c
    pop bc
    ld hl, sp-$7d
    inc h
    ld h, e
    ld d, l
    ld bc, $e855
    add c
    ld e, h
    rst $20
    nop

jr_054_7153:
    ld a, a
    ld c, [hl]
    ld c, e
    add b
    ld bc, $a998
    ldh a, [$c1]
    nop
    ld [hl], b
    add hl, hl
    adc h
    add c
    sub b
    jp hl


    add sp, -$79
    ldh [$e5], a
    jr jr_054_710e

    sub h
    db $e3
    jr z, jr_054_710e

    nop
    ld hl, sp-$7d
    add h
    db $e3
    jr z, jr_054_7115

    ldh [$e9], a
    ret c

    add c
    ret c

    xor c
    add sp, -$79
    ld d, h
    db $e3
    ld c, h
    ldh a, [$0d]
    inc b
    add c
    ld d, l
    ld d, l
    call nc, $84a1
    and l
    ld d, l
    rst $38
    ldh [rLCDC], a
    inc c
    jp hl


    ldh [$e1], a
    ret nz

    add c
    ld h, h
    and e
    rst $38
    rst $38
    ldh [$cd], a
    push af
    rst $38
    ldh [rTMA], a
    inc c
    jp hl


    pop af
    pop af
    db $ec
    and c
    add sp, -$59
    ld [$7883], sp
    and a
    db $f4
    ld h, e
    nop
    db $f4
    add a
    jr z, jr_054_7153

    ld [$28c7], sp
    and e
    db $ec
    rst $00
    inc h
    add e
    add sp, -$59
    call nc, Call_000_0063
    db $e4
    add a
    db $f4
    ld h, e
    db $f4
    adc e
    ld [bc], a
    ld e, a
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

Call_054_71e1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_72c0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    or $66
    rst $38
    db $ec
    adc $ff
    nop
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
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
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
    jr nz, jr_054_758c

    jr nz, jr_054_7596

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_054_758c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_054_7596:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_7844:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_054_7b30:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_054_7b4d:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_054_7d5b

    jp Jump_054_7dcf


jr_054_7d5b:
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

jr_054_7d77:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_054_7db3

    cp $ff
    jr nz, jr_054_7d77

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
    jr nz, jr_054_7d77

jr_054_7db3:
    ld a, c
    or a
    jr z, jr_054_7dc5

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

jr_054_7dc5:
    ld a, $01
    ld hl, $7de3
    call Call_000_23e8
    add sp, $02

Jump_054_7dcf:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af

Call_054_7dd5:
    push bc
    push de
    push hl
    ld hl, $7de3
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_054_7dec

    rst $30
    nop
    inc bc
    ret nz

jr_054_7dec:
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

jr_054_7dfe:
    ld a, [hl]
    cp $ff
    jr z, jr_054_7e27

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
    jr z, jr_054_7e27

    ld a, d
    or a
    jr nz, jr_054_7dfe

    ld a, b
    call Call_054_7e31
    ld a, c
    cp $04
    jr nz, jr_054_7dfe

jr_054_7e27:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_054_7e31:
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

jr_054_7e47:
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
    jr nz, jr_054_7e79

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_054_7e47

jr_054_7e79:
    ld b, a
    inc hl
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]

Jump_054_7e80:
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


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
