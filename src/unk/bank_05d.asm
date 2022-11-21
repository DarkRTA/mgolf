INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

Jump_05d_4000:
    ld a, [de]
    ld b, b
    ld [hl-], a
    ld b, l

Jump_05d_4004:
    db $ed
    ld c, c
    sbc a
    ld c, l
    xor l
    ld d, d
    ld [hl], c
    ld d, [hl]
    jr z, jr_05d_4068

    ld b, [hl]
    ld e, a
    ld l, $64
    ld sp, hl
    ld h, a
    sbc h
    ld l, h
    sub b
    ld [hl], c
    ld e, l
    ld [hl], l
    ld [hl+], a
    ld b, b
    ld d, d
    ld b, b
    ld hl, $fe43
    ld b, h
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

Jump_05d_403d:
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
    ld [hl], a
    inc l
    inc l
    dec bc
    rst $38
    pop hl
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [rIE], a
    dec hl
    dec bc
    ld c, e
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    scf
    inc c

jr_05d_4068:
    ld c, h

Call_05d_4069:
    inc c
    rst $38
    add sp, $4c
    ld c, h
    ldh a, [$eb]
    db $f4
    ld [$c000], a
    db $e3
    pop bc
    ld [c], a
    cp l
    ldh [$c0], a
    ldh [$b1], a
    ldh [$ce], a
    pop hl
    cp h
    ld [c], a
    cp c
    ld [c], a
    db $10
    ld hl, sp-$1f
    ret nz

    rst $38
    ret nz

    db $e4
    ld [hl], e
    pop hl
    ld a, [bc]
    adc [hl]
    ld [c], a
    adc e
    pop hl
    ld a, c
    rst $38
    ld [bc], a
    add b
    db $e4
    dec bc
    ld b, d
    pop hl
    ld b, b
    pop hl
    ld a, a
    ld [c], a
    ret nz

    push hl
    ld a, c
    push hl
    dec [hl]
    ld sp, hl

Call_05d_40a3:
    rrca
    ld l, h
    inc l
    ld c, h
    dec hl
    ret


    pop hl
    ret nz

    db $e3
    ccf
    db $e3
    inc c
    db $e4
    jr z, @-$3e

    pop hl
    cp h
    and $35
    rst $28
    inc l
    ret nz

    db $e4
    inc l
    ret nz

    ldh [$81], a
    db $e3
    ld e, $bd
    ret nz

    dec bc
    dec bc
    dec hl
    ld a, [bc]
    ret nz

    pop bc
    pop bc
    db $e3
    ld a, h
    db $e3
    ld d, $3a
    ld a, [$2c2c]
    ld a, a
    pop hl
    dec hl
    cp a
    db $e4
    ccf
    ldh [$c0], a
    jp nz, $8800

    jp $c185


    ld a, d
    ld [c], a
    or e
    ret c

    ret nz

    ldh [$7f], a
    ldh [$c0], a
    push hl
    cp [hl]
    jp Jump_05d_4900


    call nz, $c488
    di
    push bc
    cpl
    db $e3
    ld sp, $45c2
    db $e3
    and e
    add $01
    ret nz

    ld b, b
    ld b, d
    push hl

Call_05d_40ff:
Jump_05d_40ff:
    ld b, b
    ret nz

    call $02e9
    jp nz, $c6b3

    or d
    push hl
    inc l
    ret nz

    xor $00
    add b
    pop bc
    cp b
    and b
    scf
    ldh [$82], a
    db $e4
    pop bc
    rst $20
    di
    rst $20
    db $fc
    ld [c], a
    or c

Call_05d_411c:
    and c
    nop
    ret nz

    ldh a, [$c3]
    db $e3
    ret nz

    jp hl


    ret nz

    call nz, $c674
    di
    jp $a371


    add e
    push bc
    inc b
    ret nz

    jp $e040


    ld c, e
    jp $fee3


    and d
    ld c, l
    xor c
    pop bc
    push bc
    ld l, $a8
    nop
    ld [hl-], a
    xor h
    ret nz

    db $e3
    jp $c1e3


    jp $a311


    inc bc
    push hl
    db $fc
    add l
    or [hl]
    and l
    jr nc, jr_05d_4183

    xor l
    add c
    ld [c], a
    rlca
    ldh [$7f], a
    and [hl]
    dec hl
    inc l
    ld b, d
    call nz, $c099
    nop
    sub $c3
    ld [$bde5], sp
    and $7f
    ret nz

    ld c, c
    pop hl
    cp d
    and h
    ld c, h
    and d
    add d
    and $00
    cp h
    ret nz

    jp z, $c084

    add [hl]
    or $82
    cp a
    push bc
    ld [$c083], a
    rst $20
    ld b, e
    pop bc
    nop
    ld c, d

Call_05d_4182:
    add b

jr_05d_4183:
    add [hl]
    jp nz, $c4b9

    ld h, a
    and b
    ld b, d
    push bc
    adc [hl]
    push bc
    cp [hl]
    ld [c], a
    add hl, hl
    ret z

    nop
    pop bc
    rst $20
    rra
    adc e
    ld c, h
    push bc
    ld c, [hl]
    rst $00
    cp [hl]
    and l
    db $fc
    and [hl]
    ld a, [c]
    ld h, d
    ret nz

    add sp, $00
    ret c

    and l
    push de
    ld l, c
    ld d, $c4
    cp h
    db $ed
    db $fc
    and l
    add hl, hl
    adc c
    sbc d
    add h
    inc de
    add d
    nop
    ld e, e
    ld [$65bd], a
    db $76
    rst $20
    db $fc
    and [hl]
    rst $38
    and e
    add b
    add e
    dec h
    and a
    call Call_000_00a6
    push bc
    and a
    ret nz

    rst $00
    db $fc
    and a
    ld [c], a
    jp $a03d


    ret nz

    ld [$e682], a
    add h
    ld h, a
    inc b
    ret nz

    jp z, $a7fc

    inc l
    cp $83
    rst $38
    ret z

    ld b, b
    rst $20
    rst $38
    jp hl


    add b
    adc d
    nop
    ret nz

    ret z

    ld h, d
    jp nz, $c840

    xor b
    rst $00
    call nc, $9163
    adc d
    ld b, a
    rst $20
    or h
    ld l, c
    nop
    or c
    ld c, c
    push de
    ld h, l
    db $db
    and l
    or l
    add $40
    ld c, d
    xor a
    add [hl]
    ld a, [hl+]
    add $ff
    xor e
    nop
    ld a, b
    add $d9
    add sp, -$63
    ld [$8502], a
    jr nc, jr_05d_4258

    db $fc
    ld h, l
    ld [c], a
    ld l, b
    dec [hl]
    rlc b
    ld c, $4a
    ld [bc], a
    add a
    sbc c
    xor b
    rst $38
    jp z, $c645

    inc c
    ld h, a
    add h
    ldh a, [$32]
    and [hl]
    nop
    cp [hl]
    xor h
    push bc
    ret z

    ret z

    ld h, a
    add h
    pop af
    ld l, e
    ld [hl+], a
    add c
    xor $d9
    daa
    ld [$0044], sp
    ld l, e
    ld b, b
    ld d, a
    ld h, a
    or h
    and l
    ld l, l
    add l
    ldh a, [$0a]
    ld h, $e8
    sub e
    add [hl]
    ld [$0092], sp
    inc [hl]
    and [hl]
    ldh a, [$0e]
    ld l, d
    add $94
    add sp, $08
    adc a
    push hl
    rst $20

jr_05d_4258:
    ld [hl], b
    rrca
    ld h, d
    ld l, [hl]
    nop
    ld [$0490], sp
    ld b, [hl]
    ld c, b
    jr nz, @-$3b

    add b
    add c
    xor d
    ld a, [hl]
    and [hl]
    ld c, h
    adc a
    inc b
    ld c, a
    nop
    ret nz

    pop hl
    ret nz

    ld l, c
    ld a, [de]
    ld h, $21
    and $08
    sub l
    inc b
    ld b, [hl]
    add c
    ld l, d
    ld h, [hl]
    xor h
    nop
    ld [$8298], sp
    dec b
    add c
    xor $40
    rrc b
    sub e
    add e
    ld de, $d440
    ld [$0092], sp
    inc b
    ld c, b
    ld bc, $40ea
    jp nc, $9008

    ld b, e
    add hl, hl
    add c
    ld c, e
    rst $38
    or l
    ld [$008b], sp
    and d
    rst $00
    rst $38
    rst $38
    ld [$c097], sp
    rst $38
    ld [$c096], sp
    db $d3
    cp l
    cp $a2
    ret nc

    nop
    rst $38
    rst $38
    ld d, a
    ld b, e
    ld b, a
    ld h, [hl]
    and d
    set 7, a
    rst $38
    and [hl]
    inc b
    and e
    ld h, a
    push hl
    ld b, l
    nop
    add b
    rst $38
    ld c, b
    ld [hl], b
    ld c, c
    add hl, hl
    ret nz

    rst $38
    add a
    ld d, b
    add hl, bc
    jr nc, @+$01

    rst $38
    di
    call z, $cd00
    xor h
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    sbc c
    call nz, $ffff
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
    inc sp
    nop
    nop
    nop
    rst $30
    inc l
    dec hl
    ld sp, $e1ff
    ld b, a
    ld b, l
    ld d, l
    ld d, h
    rst $38
    ld b, l
    ld b, a
    ld sp, $5f31
    ld e, e
    ld e, d
    ld e, e
    db $e3
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    db $e3
    ld c, c
    ld [hl], $30
    ld a, $ff
    ldh [$36], a
    ld c, c
    ld sp, $5b5e
    rst $38
    ldh [$ca], a
    rst $38
    ld a, [$edc0]
    add hl, sp
    pop bc
    pop hl
    jr nc, jr_05d_4384

    add hl, sp
    ld sp, $5261
    ret nz

    ldh [$5a], a
    jp z, $80ff

    db $ed
    ld d, d
    ret nz

    db $e3
    ld d, d
    ccf
    pop hl
    call c, $ff80
    ld [$20e9], a
    ld d, $15
    rst $38
    ret nz

    ld d, e
    jr nc, jr_05d_43b1

    jr nc, @+$6f

    ld l, l
    jr nc, jr_05d_43a7

    ld b, d
    ccf
    db $e3
    jp z, $96ff

    ret nz

    add sp, $28
    rla
    add b
    ld [c], a
    ld l, l

jr_05d_4384:
    rst $38
    ldh [$3f], a
    pop hl
    ld sp, $60a3
    ld e, d
    ret nz

    rst $38
    add b
    jp hl


    ld a, a
    ld [c], a
    add hl, sp
    ret nz

    ld [c], a
    ld l, l
    adc [hl]
    ccf
    pop hl
    ld sp, $6262
    jp z, $c0ff

    jp hl


    ld a, a
    pop hl
    ld d, c
    ld e, $c1
    ld [c], a
    ld l, l

jr_05d_43a7:
    ld l, l
    ld c, b
    ld c, c
    ld [hl-], a
    pop bc
    jp z, $80ff

    jp hl


    or e

jr_05d_43b1:
    jr nz, jr_05d_43b3

jr_05d_43b3:
    add b
    ret nz

    ret nz

    db $e3
    ld l, b
    ld l, b
    ccf
    ldh [$29], a
    jp hl


    inc d

jr_05d_43be:
    jp z, $c0ff

    db $ed
    ld d, d
    jp Jump_05d_68e2


    ld l, l
    ld l, l
    ld h, $7e
    ret nz

    dec hl
    inc l
    jp z, $80ff

    db $ed
    ld d, e
    jp $bce2


    ret nz

    inc h
    ret nz

    rst $38
    ld b, b
    rst $28
    ld [$e380], sp
    ld a, a
    jp nz, $c053

    rst $38
    nop
    xor $f9
    dec c
    nop
    db $e3
    ld a, $a0
    ld l, d
    ld l, d
    add e
    and a
    ld sp, $17d3
    jr z, jr_05d_43be

    rst $38
    ld b, b
    ret


    rrca
    cp a
    add b
    ld c, l
    ld [hl-], a
    cp $c3
    pop hl
    ld l, d
    ld l, h
    ccf
    add h
    and c
    ld sp, $e915
    ld d, $ca
    rst $38
    add b
    xor b
    ld c, $0e
    ret nz

    ld sp, $5031
    rst $38
    ld c, h
    ld l, d
    ld l, h
    ld l, h
    ld l, h
    ld [hl], $84
    add b
    adc a
    and c
    ld sp, $1731
    jp z, $e8ff

    rst $20
    add d
    ldh [$60], a
    rst $38
    ld e, e
    ld h, b
    ld sp, $6fa1
    ld l, [hl]
    ld d, l
    ld d, h
    rla
    ld l, [hl]
    ld l, a
    add b
    ret nz

    pop hl
    dec d
    jp z, $ffff

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
    rst $38
    nop
    rst $38
    di
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
    jr nc, jr_05d_455d

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
    ld a, [hl-]
    ld b, l
    ld l, d
    ld b, l
    ld a, [$b947]
    ld c, c
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $023f

Call_05d_454c:
    xor e
    nop
    inc sp
    ld bc, $06c5
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05d_455d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    inc c
    rst $38
    ldh [rWX], a
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    cp a
    ld c, e
    dec bc
    dec bc
    dec hl
    dec bc
    dec bc
    ld sp, hl
    ldh [rWY], a
    dec bc
    inc c
    ld c, h
    rst $38
    push hl
    inc c
    cp $e1
    pop af
    ldh [$da], a
    pop hl
    db $fc
    rst $30
    adc $c0
    ldh [rWX], a
    dec hl
    dec hl
    cp a
    pop hl
    cp $e0
    ld a, [bc]
    dec bc
    and c
    ld c, e
    adc $e3
    rst $00
    db $e3
    push bc
    pop hl
    cp c
    pop hl
    inc l
    cp l
    rst $30
    dec bc

Jump_05d_45a6:
    ld a, [bc]
    add c
    pop hl
    dec hl
    cp a
    pop hl
    ld l, e
    cp l
    db $e3
    adc [hl]
    pop hl
    add h
    pop hl
    adc c
    db $e3
    ld e, b
    or $e3
    ret nz

    or $8b
    pop hl
    ld l, e
    dec bc
    ret nz

    pop hl
    dec hl
    ret nz

    db $e3
    inc bc
    ld a, [bc]
    dec bc
    adc e
    ld [c], a
    push bc
    ld [c], a
    db $fc
    db $e3
    ld a, d

jr_05d_45cd:
    db $e3
    ld a, [hl]
    di
    pop bc
    ld [c], a
    ld b, $c0
    push hl
    ld c, e
    dec bc
    inc a
    ld [c], a
    ld [de], a
    jp hl


    dec b
    ld [c], a
    rst $38
    jp nz, $e63e

    jr c, jr_05d_4618

    db $e4
    ld l, $e3
    pop bc
    db $e3
    dec bc
    ld c, e
    ld l, e
    rst $38
    ldh [$be], a
    ret nz

    pop bc
    ld c, e
    nop
    ldh [rLCDC], a
    db $e4
    dec a
    push hl
    cp c
    jp $f680


    ld c, e
    dec hl
    nop
    pop bc
    ldh [$7b], a
    ld [c], a
    cp b
    pop hl
    nop
    db $e4
    cp a
    push bc
    ld b, d
    db $e3
    add b
    db $ec
    jp Jump_000_00cb


    set 4, l
    ld a, [hl]
    pop hl
    ld a, [hl]
    jp $e3c0


    add l

jr_05d_4618:
    db $e3
    cp a
    push bc
    add e
    rst $10
    adc e
    push hl
    nop
    dec a
    ldh [$39], a
    ret nz

    rst $38
    ld [c], a
    adc l
    jp $e3fb


    dec a
    db $e4
    ret nz

    ret c

    ld [$10c4], sp
    rst $30
    call nz, $c540
    cp h
    and $c1
    and d
    inc l
    ld bc, $80c0
    call nc, $a08c
    jr nz, jr_05d_45cd

    and b
    call nz, Call_05d_40a3
    and $84
    push hl
    ld bc, $2cc4
    ret nz

    jp hl


    or [hl]
    and d
    ld [bc], a
    or c
    and [hl]
    dec bc
    ld c, d
    jp nz, $e67d

    ret nz

    and e
    ld c, c
    add sp, $41
    and d
    add c
    pop hl
    nop
    ld a, [hl]
    and h
    ld a, b
    xor l
    add e
    and b
    ld a, [hl]
    pop hl
    ld a, l

Call_05d_466a:
    jp $e6c0


    ld c, e
    jp nz, $e840

    nop
    pop bc
    and c
    ld a, $b3
    add [hl]
    db $eb
    ld b, b
    add $c7
    and h
    add c
    res 6, l
    add h
    db $f4
    pop bc
    ld b, b
    ld l, $e2
    nop
    jp $e4ff


    ret nz

    db $ec
    ld b, l
    and h
    ld bc, $2cc8
    or h
    ret


    ld b, $c0
    rst $20
    dec bc
    ld a, [bc]
    cp a
    xor $c0
    rst $00
    ccf
    add sp, $7d
    pop bc
    or h
    jp $8100


    jp hl


    daa
    sub e
    add c
    add $38
    call nz, $87b1
    or h
    jp $e8c0


    push de
    ld h, [hl]
    nop
    call nc, Call_05d_7d70
    and h
    pop bc
    ld h, [hl]
    or l
    ld [hl], e
    call nc, Call_05d_5174
    db $e3
    ret nz

    ld [$64b5], a
    ld [bc], a
    jp nz, Jump_000_2cc2

    xor [hl]
    ld h, [hl]
    call nc, $c074
    rst $28
    inc sp
    add $c0
    jp hl


    ld h, e
    jp hl


    nop
    call nc, Call_05d_4f69
    and c
    rst $00
    adc h
    inc sp
    and [hl]
    cp a
    push de
    call nc, $c069
    ld [c], a
    adc b
    adc c
    nop
    ld [hl-], a
    ld h, l
    nop
    call z, Call_05d_75d4
    rst $08
    add l
    ld [hl], l
    ld e, a
    call nc, $8f73
    add e
    ei
    adc c
    nop
    ld [hl], l
    ld c, c
    rst $38
    xor d
    call nc, $4276
    add h
    ld [hl], l
    ld d, b
    ld b, b
    and a
    sbc c
    and [hl]
    call nc, Call_000_006c
    rrca
    add d
    call nz, Call_05d_75ab
    ld c, b
    ld a, [c]
    add hl, hl
    call nc, $c073
    db $e3
    add b
    bit 6, l
    ld b, a
    nop
    ret nz

    xor $d4
    ld l, [hl]
    adc a
    ld h, [hl]
    ld [hl], l
    ld e, h
    dec e
    ld l, c
    call nc, Call_05d_4069
    jp $c8bf


    nop
    ld [hl], l
    ld d, h

jr_05d_472b:
    jp c, $d444

    ld l, l
    ld h, b
    and c
    ret nz

    and b
    cp a
    add $75
    ld e, e
    call nc, Call_000_0070
    ld [hl], l
    adc e
    ld [hl], l
    ld e, e
    call nc, $8070
    ld [c], a
    ld a, b
    ld b, a
    and c
    rst $08
    ld bc, $d4c9
    ld [hl], b
    nop
    ret nz

    db $ec
    ld [hl], l
    ld c, l
    nop
    adc d
    call nc, Call_000_0f72
    ld l, b
    ld [hl], l
    ld d, b
    ld [bc], a
    xor [hl]
    call c, Call_000_00c5
    ldh [$6d], a
    and c
    rst $10
    ld c, [hl]
    ld [hl], e
    rrca
    ld l, l
    and c
    db $dd
    db $dd
    ld [$6f0f], sp
    ld c, l
    add a
    nop
    and c
    ret nc

    rst $08
    ld c, h
    dec sp
    di
    ret nz

    ret z

    and c
    call $ffff
    ret nz

    rst $00
    and c
    call nc, $4600
    ld d, e
    ld b, c
    adc a
    and c
    rst $10
    db $76
    or a
    ld a, l
    dec h
    ld l, d
    ld b, l
    ret nz

    push de
    ccf
    rst $38
    nop
    ld h, d
    ld l, a
    rst $38
    rst $38
    ld d, [hl]
    inc bc
    pop bc
    sbc a
    ret nz

    ei
    pop bc
    sub l
    rst $38
    rst $38
    ccf
    xor d
    nop
    ld [c], a
    ld h, l
    jr nz, jr_05d_472b

    rst $38
    rst $38
    ret nz

    ld c, d
    ret nz

    add sp, -$01
    rst $38
    di
    call nc, $bfcd
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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

Call_05d_47e4:
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
    rst $38
    rst $38
    nop
    ld e, d
    ld [hl], e
    nop
    nop
    nop
    rst $38
    jr nz, jr_05d_481d

    jr nz, jr_05d_47ff

jr_05d_47ff:
    ld sp, $4d31
    ld b, [hl]
    ld a, a
    ld d, l
    ld b, [hl]
    ld b, a
    ld sp, $6031
    ld e, e
    rst $38
    pop hl
    db $e3
    ld e, d
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    ldh [rIF], a
    ld sp, $ff31
    add hl, sp
    jr nc, jr_05d_4886

jr_05d_481d:
    ld l, e
    ld [hl], $3c
    ld sp, $e661
    jp nz, Jump_05d_5be1

    ld e, e
    jp z, $c0ff

    add sp, $0a
    dec bc
    ld sp, $31f7
    ld c, c
    ld c, b
    ret nz

    ldh [rOCPD], a
    ld c, b
    ld c, c
    ld sp, $5f81
    ld a, a
    ld [c], a
    jp z, $e8ff

    rst $20
    jp nz, $81e0

    pop hl
    ret nz

    pop hl
    ld l, e
    rlca
    add hl, sp
    ld sp, $7f5e
    ld [c], a
    jp z, $e8ff

    rst $20
    pop bc
    pop hl
    add c
    ldh [$f0], a
    ret nz

    ld [c], a
    ld a, a
    push hl
    jp z, $c0ff

    ld [$324d], a
    jr nc, @+$32

    ld a, a
    jr nc, jr_05d_48cf

    ld l, l
    ld l, l
    ld l, l
    jr nc, jr_05d_48ba

    ld a, a
    ldh [$bc], a
    nop
    rst $38
    add b
    db $ec
    ld a, $32
    ld l, l
    ld l, d
    cp a
    db $e4
    ld d, b
    rst $00
    ld sp, $6231
    rst $38
    ldh [$ca], a
    rst $38
    ld b, b
    add sp, $49
    ld c, h
    inc [hl]
    add [hl]

jr_05d_4886:
    ldh [$bf], a
    db $e4
    add hl, sp
    di
    pop bc
    ld sp, $ca31
    rst $38
    nop
    add sp, $1c
    call nz, $bfc0
    push hl

Call_05d_4897:
    jr nc, jr_05d_490a

    and l
    rst $38
    ld [c], a
    jp z, $c0ff

    ret z

    add hl, sp
    ld d, d
    inc bc
    ldh [$7e], a
    db $e4
    ld [hl], a
    ld a, c
    add b
    rst $38
    ld [c], a
    jp z, $2aff

    add b
    db $eb
    jr nc, jr_05d_48f6

    ret nz

    ld l, c
    cp h
    ret nz

    add e
    pop bc
    db $e3
    ret nz

jr_05d_48ba:
    rst $38
    db $e4
    nop
    db $eb
    ret nz

    and $7b
    ret nz

    rst $38
    add b
    pop de
    ld a, [hl-]
    ld d, h
    ld d, l
    adc [hl]
    cp $e0
    ld d, h
    ld d, l
    ld l, [hl]
    ld b, c

jr_05d_48cf:
    db $e4
    ret nz

    rst $38
    jp hl


    add sp, $5d
    call nz, $c38d
    ld a, d
    and c
    and b
    pop bc
    db $e4
    ret nz

    rst $38
    jp hl


    add sp, $5b
    ld e, h
    dec c
    ld e, l
    dec c
    pop bc
    ld h, d
    ld h, d
    ret nz

    rst $38
    ret nz

    di
    adc a
    and c
    ld c, c
    add c
    ld bc, $c060
    rst $38
    rst $38

jr_05d_48f6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05d_4900:
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

jr_05d_490a:
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
    db $fd
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
    jr nc, jr_05d_4a18

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
    push af
    ld c, c
    dec h
    ld c, d
    sbc h
    ld c, e
    ld a, [hl]
    ld c, l
    ret z

    inc bc
    call nz, $0306
    ld [bc], a
    ld [bc], a
    ld bc, $03c8
    ldh a, [$03]
    call nz, $0306
    ld [bc], a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld e, e
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0116
    ret z

jr_05d_4a18:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $2508
    ld [$0825], sp
    dec h
    ld [$9d25], sp
    dec bc
    rst $38
    pop hl
    ld l, e
    ld l, e
    ld c, e
    rst $38
    pop hl
    db $f4
    ld [c], a
    dec hl
    db $e3
    dec hl
    ld a, [bc]
    db $ec
    ld [c], a
    rst $38
    rst $38
    and $e5
    ld l, e
    ld l, e
    dec hl
    dec de
    dec hl
    ld l, e
    cp l
    db $e4
    ld c, e
    dec hl
    cp [hl]
    ldh [$cd], a
    rst $38
    ld [$83e9], a
    ld c, e
    dec bc
    jp nz, Jump_05d_7de1

    push hl
    ld a, d
    db $e4
    rst $38
    rst $38
    pop bc
    and $4b
    ld c, $82
    ldh [$2b], a
    dec hl
    dec hl
    add c
    db $e3
    ld [hl], l
    ldh [$bf], a
    rst $38
    add d
    db $eb
    ld [bc], a
    ld c, $e0
    dec hl
    nop
    db $e3
    ld a, c
    pop hl
    ret nz

    rst $38
    ret nz

    ldh a, [rSC]
    db $e4
    ld a, d
    ldh [rP1], a
    or l
    ld [c], a
    jp z, $ffff

    rlc b
    ld [c], a
    ret nz

    ld [c], a
    ld hl, sp-$3d
    call $81ff
    jp z, $8a00

    ld [c], a
    ld b, h
    db $e3
    or a
    pop bc
    dec l
    pop hl
    rst $38
    rst $38
    add sp, -$19
    add $c1
    rlca
    ld [c], a
    nop
    cp c
    push hl
    call $c2ff
    jp hl


    ld c, [hl]
    ret nz

    rst $00
    jp $c5bd


    ld bc, $82df
    ld [$8800], a
    push hl
    ccf
    push bc
    call $beff
    pop af
    ld c, b
    pop bc
    pop bc
    rst $38
    pop bc
    sub $be
    jp nz, $8700

    push bc
    cp h
    rst $38
    nop
    ld [$e4c0], a
    ld a, [c]
    add a
    ret nz

    sbc a
    add b
    xor l
    or e
    adc c
    ld sp, $c10a
    rst $38
    ld bc, $74ab
    adc e
    ld a, [bc]
    ld a, [bc]
    ret nz

    cp a
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

Jump_05d_4b6e:
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

jr_05d_4b9b:
    nop
    rst $38
    add hl, hl
    ld l, $01
    ld bc, $4401
    ld d, $23
    rst $28
    ld [hl+], a
    inc hl
    ld d, $17
    or $e0

jr_05d_4bac:
    jr nc, jr_05d_4bde

    dec hl
    rst $00
    ld a, [hl+]
    jr z, jr_05d_4c04

    rst $38
    rst $38
    rst $20
    and $c1
    ldh [rLY], a
    ld b, e
    db $db
    ld b, c
    nop
    rst $38
    ldh [$3b], a
    ld b, $bb
    ldh [$15], a
    inc b
    rst $20
    ld bc, $2e01
    jp z, $e8ff

    rst $20
    ld bc, $4201
    db $ed
    inc a
    pop bc
    ld [c], a
    nop
    dec sp
    rst $38
    ldh [$38], a
    nop
    inc d
    rst $20
    inc c

jr_05d_4bde:
    ld bc, $ca01
    rst $38
    ret nz

    add sp, $42

Call_05d_4be5:
    inc a
    ld c, d
    db $eb
    nop
    jr c, jr_05d_4bac

    ld [c], a
    jr c, @+$01

    ldh [rP1], a
    jr c, jr_05d_4bf7

    reti


    dec e
    ret nz

    rst $38
    jp hl


jr_05d_4bf7:
    add sp, $3f
    inc a
    ret nz

    ldh [rP1], a
    jr c, jr_05d_4b9b

    add e
    db $e3
    add hl, sp
    ldh [$38], a

jr_05d_4c04:
    nop
    add hl, bc
    ret nz

    rst $38
    jp hl


    add sp, $3d
    rst $00
    inc a
    inc a
    ld a, $c9
    pop hl
    ld b, e
    ld [c], a
    ld a, [hl]
    ld [c], a
    jr @+$1b

    cp h
    jp z, $e8ff

    rst $20
    ld c, d
    inc a
    inc a
    ld b, b
    adc b
    ld [c], a
    ld [hl], $09
    ld [hl], $43
    ldh [$f7], a
    jp nz, $ca1f

    rst $38
    add b
    jp hl


    ld b, c
    ldh [$fe], a
    push hl
    inc a
    ret nz

    rst $38
    nop
    ldh a, [$3e]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld b, $e2
    pop bc
    pop bc
    and $37
    ret nz

    dec b
    dec e
    jp z, $e8ff

    rst $20
    ld c, h
    inc a
    ld b, b
    adc a
    inc sp
    inc sp
    dec [hl]
    dec sp
    cp l
    ret nz

    cp c
    ldh [$b7], a
    ld [c], a
    ld hl, $c0a4
    rst $18
    ret nz

    jp hl


    ld a, $08
    pop bc
    cp a
    ldh [$37], a
    ret nz

    ld [c], a
    ld a, [hl-]
    and a
    nop
    ld b, $0c
    ret nz

    rst $38
    ret nz

jr_05d_4c6c:
    xor c
    jr nz, @-$36

    and c
    dec sp
    dec de
    dec [hl]
    add hl, sp
    ret nz

    db $e3
    ld [de], a
    dec d
    ld a, [hl-]
    and b
    jp z, $80ff

    xor b
    db $db
    ld c, $02
    add a
    and c
    inc [hl]
    add hl, sp
    ccf
    pop hl
    ld b, $22
    cp b
    add d
    and b
    ld b, b
    cp a
    ld [$2fe9], a
    ld bc, $bf1d
    pop hl
    inc [hl]
    jp $0639


    inc bc
    and b
    cp [hl]
    add c
    ret nz

    sbc a
    ret nz

    adc l
    dec e
    dec d
    jr c, jr_05d_4c6c

    add c
    add d
    add c
    add e
    pop hl
    jr z, jr_05d_4cd4

    add hl, hl
    jp z, $e8ff

    rst $20
    nop
    ld b, b
    add d
    db $fd
    rst $20
    pop bc
    pop hl
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

jr_05d_4cd4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $f4
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld [hl], $30
    scf
    ld h, $20
    cpl
    daa
    db $10
    ld d, $17
    push de
    rst $28
    ld de, $e0ff
    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    nop
    nop
    nop
    and a
    ld c, l
    rst $10
    ld c, l
    add b
    ld d, b
    ld a, c
    ld d, d
    ldh a, [$03]
    ld c, l
    rrca
    ld b, b
    ld [bc], a
    ret nz

    nop
    ldh a, [$03]
    push af
    inc bc
    ld c, b
    rrca
    ld b, b
    ld [bc], a
    ld e, a
    dec sp
    jr c, @+$10

    ld sp, $4819
    rrca
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
    rst $38
    ld c, d
    ld c, d
    ld c, d
    ld l, e
    dec bc
    dec bc
    dec bc
    ld l, e
    rst $30
    ld l, e
    ld c, e
    ld c, e
    ld sp, hl
    ldh [$2b], a
    dec bc
    ld c, d
    ld l, d
    ccf
    ld l, d
    ld l, d
    inc c
    inc c
    ld c, h
    inc c
    db $fc
    db $e3
    db $fd
    and $a3
    ld c, h
    ld c, h
    ldh a, [$eb]
    db $e4
    and $c0
    db $e3
    ld l, e
    rst $38
    ldh [rWX], a
    ld [bc], a
    cp [hl]
    pop hl
    ld c, e
    cp a
    pop hl
    db $d3
    pop hl
    rst $38
    ldh [$bc], a
    db $e3
    cp c
    ld [c], a
    ld hl, sp-$1f
    ld [$f6c0], sp
    pop bc
    db $e3
    ret nz

    pop hl
    ld c, e
    ret nz

    ldh [$7e], a
    ldh [$8e], a
    and $fd
    db $e4
    ldh [$b5], a
    db $e3
    add b
    push af
    add c
    pop hl
    ccf
    db $e3
    ld a, a
    ld [c], a
    ld a, [bc]
    dec bc
    ld c, d
    ret nc

    ret nc

    push hl
    ld a, b
    db $e3
    inc sp
    db $e3
    ld b, b
    ldh [$2c], a
    ld b, b
    ld a, [c]
    ld l, d
    dec hl
    db $10
    ld bc, $fee0
    pop bc
    ld b, b
    ldh [$f5], a
    ldh [rWX], a
    cp a
    ldh [rLY], a

jr_05d_4e4b:
    db $e3
    ld a, [hl]
    db $e4
    ld h, b
    db $fc
    db $e3
    cp $c1
    ret nz

    push hl
    cp b
    db $e4
    or c
    db $e3
    ld l, d
    ld a, [bc]
    ret nz

    db $e3
    ld [bc], a
    ld [bc], a
    pop hl
    dec hl
    or l
    pop hl
    cp c
    ret nz

    ld c, $e3
    add d
    db $e4
    ld b, b
    db $fc
    adc h
    pop bc
    ld [bc], a
    rst $38
    and $2b
    ccf
    db $e3
    adc [hl]
    jp $e8fa


    ld a, a
    ret c

    ret nz

    db $e3
    dec a
    pop bc
    nop
    ld a, e
    ld [c], a
    inc [hl]
    ld [c], a
    ld c, c
    ret z

    jr c, jr_05d_4e4b

    ld a, a
    sub $0c
    pop bc
    ld b, d
    pop bc
    ei
    call nz, $f546
    and b
    ld a, [bc]
    ld a, [bc]
    ld d, b
    push bc
    ret nz

    push bc
    ld a, a
    reti


    ld a, [bc]
    ld [bc], a
    call nz, Call_05d_411c
    jp nz, $c1bf

    dec bc
    ld a, [bc]
    ld c, d
    ld [bc], a
    ld [c], a
    ld a, $c4
    ret z

    and c
    ld [hl], b
    dec [hl]
    call nz, $f300
    ld b, l
    ld [c], a
    ret nz

    rst $20
    ld l, e
    ld a, [bc]
    ld c, d
    ret nz

    ldh [rP1], a
    ld c, h
    call nz, $e4fe
    ld [hl], l
    add $81
    rst $00
    inc [hl]
    add $02
    push bc
    add b
    db $e3
    add d
    pop hl
    nop
    ret nz

    ldh [rNR21], a
    jp nz, $c506

    ccf
    xor e
    ei
    xor l
    inc bc
    and c
    ld c, b
    pop bc
    add c
    and d
    jp nz, $80f6

    ld a, [hl+]
    add b
    db $e3
    ld c, l
    and [hl]
    ld a, [hl-]
    and a
    ret nz

    push de
    ld l, e
    ld c, e
    add hl, bc
    dec hl
    rlca
    jp $c283


    ld a, [hl+]
    cp a
    ldh [$de], a
    and b
    ld c, l
    and h
    ret nz

    and l
    inc b
    ld [hl], d
    rst $20
    cp b
    add e
    inc l
    rst $38
    ldh [rP1], a
    push bc
    ld a, a
    ld [c], a
    ld a, e
    and b
    ld a, b
    and e
    ld b, c
    ld a, [hl+]
    cp a
    ldh [rLCDC], a
    rst $20
    add c
    call nz, $ab78
    ret nz

    db $eb
    ld l, e
    inc c
    jp nz, $8514

    and d
    add hl, sp
    add b
    ld a, [bc]
    ret nz

    ldh [$2a], a
    ld b, b
    rst $20
    ld b, c
    and l
    ld [hl], d

Jump_05d_4f24:
    rst $20
    add b
    ld a, b
    add d
    add c
    rst $20
    sbc a
    adc b
    di
    ld [$e540], a
    ret nz

    add sp, -$08
    ld h, [hl]
    inc l
    nop
    ret nz

    jp hl


    call nc, $c275
    ld l, c
    jp $b867


    adc d
    adc l
    db $ed
    call nc, $8b6a
    add h
    nop
    db $76
    ret


    ld hl, sp+$66
    jp nz, Jump_05d_7bc1

    ldh [$bb], a
    db $ec
    call nc, $fd6b
    ld h, [hl]
    jp Jump_000_006c


    rst $30
    ld h, d
    ret nz

    ld [$f440], a
    jp nc, $c360

    ld l, e
    scf
    ld l, c
    ld b, b
    rst $00
    ld b, b
    or $03

Call_05d_4f69:
    inc l
    inc l
    jp Jump_000_376b


    ld l, d
    cp a
    jp z, $f440

    ret nz

    db $e4
    inc bc
    ld h, [hl]
    nop
    cp b
    sub e
    inc d
    db $76
    add l
    ld b, l
    dec de
    jp z, $85b8

    ld b, b
    jp hl


    inc d
    ld [hl], e
    ccf
    ld b, a
    nop
    or l

Jump_05d_4f8a:
    and a
    rst $30
    daa
    ld b, b
    db $eb
    inc d
    ld [hl], c
    ld b, [hl]
    and a
    or b
    xor b
    rst $30
    dec h
    inc bc
    ld [$1400], a
    ld [hl], e
    inc bc
    and l
    jp $b867


    adc b
    ret nz

    db $ed
    inc d
    ld [hl], b
    add a
    ld b, h
    jp Jump_000_0068


    cp b
    adc b
    ld a, [hl]
    xor e
    inc d
    ld [hl], e
    ld c, b
    dec h
    ld [hl], l
    add a
    sub e
    rst $00
    ret nz

    db $ec
    inc d
    ld [hl], c
    nop
    dec b
    ld b, e
    jp $b868


    adc e
    ld b, a
    xor $14
    ld l, [hl]
    jp Jump_05d_4b6e


    adc b
    ld [hl], $29
    nop
    inc d
    ld [hl], h
    add $44
    jp $c367


    add a
    ld a, $21
    ld a, [hl]
    rl h
    ld [hl], b
    ld b, h
    ld h, a
    nop
    ldh a, [rBCPD]
    call nz, Call_05d_4182
    xor e
    inc d
    db $76
    jp $bb6e


    inc bc
    ld a, d
    ld bc, $69c1
    nop
    inc d
    db $76
    and d
    db $e3
    sub a
    adc c
    cp e
    dec b
    jp nz, Jump_000_148c

    ld [hl], d
    and a
    or [hl]
    add b
    ret nc

    nop
    inc d
    ld [hl], h
    cp e
    ld d, $80
    xor $73
    rst $00
    rst $20
    ld c, h
    cp e
    inc de
    ret nz

    rst $30
    ld [$008c], a
    cp e
    rra
    cp a
    db $fc
    cp e
    ld d, $ff
    rst $38
    cp e
    add hl, de
    rst $38
    rst $38
    and a
    or a
    set 7, a
    nop
    and a
    cp l
    rst $38
    rst $38
    and a
    cp a
    rst $38
    rst $38
    and a
    cp e
    rst $38
    rst $38
    and a
    cp a
    rst $38
    rst $38
    nop
    and a
    or h
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], h
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    push bc
    ld h, h
    call c, $ffff
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, c
    ld d, e
    nop
    nop
    nop
    rst $38
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld e, a
    ld sp, $3131
    ld b, a
    ld [hl], a
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld sp, hl
    ldh [$5c], a
    ld e, e
    adc h
    rst $28
    ldh [$f1], a
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    ldh [$5e], a
    ld sp, $3c31
    cpl
    ld [hl], $6d
    ld l, l
    ld [hl], $be
    pop hl
    ld e, a
    cp a
    pop hl
    jp z, $feff

    add sp, -$19
    add a
    add a
    ld c, [hl]
    ld sp, $4931
    ld c, b
    rst $38
    ld l, l
    ld l, l
    ld l, l

jr_05d_50ba:
    ld l, h
    ld l, h
    ld [hl], $37
    ld sp, $5ec3
    ld e, e
    ld a, [hl]
    ldh [$ca], a
    rst $38
    ret nz

    jp hl


    add c
    ldh [$39], a
    jr nc, jr_05d_50ba

    jr nc, @-$3e

    pop hl
    ld l, h
    add hl, sp
    ld a, a
    ldh [$5a], a
    ld e, e
    adc h
    db $fc
    jp z, $80ff

    add sp, -$75
    ld h, c
    ld sp, $5331
    ld l, l
    ld l, h
    cp a
    ldh [$c0], a
    ldh [rHDMA2], a
    ld sp, $e07f
    ld e, d
    ld e, e
    jp z, Jump_000_36ff

    add sp, -$19
    adc e
    ld e, d
    ret nz

    ldh [rHDMA2], a
    ld l, l
    cp a
    ldh [$fe], a
    ldh [$cd], a
    ld d, e
    or [hl]
    ret nz

    ld e, a
    ld e, e
    ret nz

    rst $38
    jp hl


    add sp, $5b
    ld e, e
    inc e
    ret nz

    db $e3
    ld b, c
    pop hl
    ld l, h
    ld b, d
    ld c, c
    ld a, a
    ldh [$80], a
    rst $38
    ret nz

    xor $2b
    ld d, e
    ld l, d
    ret nz

    db $e3
    jr nc, @+$01

    ret nz

    ld h, c
    add b
    rst $38
    add b
    db $ed
    xor a

jr_05d_5124:
    scf
    ld c, b
    ld l, l
    ld l, d
    add b
    ld [c], a
    ld l, h
    ccf
    ldh [$5e], a
    ld d, e
    ld e, d
    cpl
    jp z, $e8ff

    rst $20
    ld e, d
    jp nz, Jump_000_39a0

    ld b, d
    ret nz

    ld [hl], e
    ld l, d
    ld l, b
    rst $38
    pop hl
    cp a
    ret nz

    ld e, a
    cpl
    adc d
    jp z, $e4ff

    nop
    add sp, -$3e
    and b
    ld d, d
    ld b, d
    ret nz

    add b
    push hl
    ld h, b
    cpl
    adc d
    ret c

    ret nz

    rst $38
    jp hl


    add sp, $43
    and b
    xor h
    ld d, e
    ret nz

    and $39
    ld h, c
    jr nc, jr_05d_5124

    ldh [$c0], a
    rst $38
    jp hl


    add sp, $43
    and b
    add c
    add e
    ld b, e
    ret nz

    add b
    call nz, Call_05d_61c7
    adc a
    ld c, a

Call_05d_5174:
    ret nz

    rst $38
    ld [$81e9], a
    ldh [$a8], a
    db $76
    add hl, de
    ld [hl], $02
    pop bc
    add c
    jp nz, $895e

    cp a
    ldh [$ca], a
    rst $38
    ret nz

    jp hl


    rst $18
    add c
    add b
    add b
    ld l, a
    ld l, [hl]
    cp [hl]
    pop hl
    ld [hl], $3b
    adc a
    ld b, e
    ld sp, $895f
    cp a
    ldh [$ca], a
    rst $38
    add b
    add sp, -$54
    ei
    xor b
    add b
    rst $38
    ldh [$6f], a
    ld l, [hl]
    ld d, l
    ld l, [hl]
    ld l, a
    rra
    and a
    ld sp, $5a60
    adc c
    cp a
    ldh [$ca], a
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    di
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
    jr nc, jr_05d_52d8

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
    or l
    ld d, d
    push hl
    ld d, d
    adc a
    ld d, h
    dec a
    ld d, [hl]
    ldh a, [$03]
    ld c, l
    rrca
    ld b, b
    ld [bc], a
    ret nz

    nop
    ldh a, [$03]
    push af
    inc bc
    ld c, b
    rrca
    ld b, b
    ld [bc], a
    ld e, a
    dec sp
    jr c, @+$10

    ld sp, $4819
    rrca
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05d_52d8:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05d_52e0:
    dec h
    ld [$0825], sp
    dec h
    sbc a
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    ld c, e
    ei
    ldh [$f8], a
    ldh [rOCPD], a
    db $fd
    ld c, e
    rst $38
    pop hl
    dec bc
    dec hl
    dec bc
    inc c
    inc c
    inc c
    ld hl, $ff4c
    push hl
    push af
    pop hl
    db $fd
    pop hl
    rst $38
    push af
    ld a, [hl+]
    adc $e0
    jp Jump_000_1fe3


    ld l, e
    dec bc
    dec hl
    dec hl
    dec bc
    cp a
    ld [c], a
    call z, $bae3
    pop hl
    jr nc, jr_05d_52e0

    db $e3
    ld a, [c]
    db $e4
    cp h
    ld a, [c]
    jp nz, Jump_05d_6be4

    dec bc
    adc b
    ldh [$c0], a
    db $e3
    inc bc
    ld c, e
    dec bc
    call nz, $86e1
    ld [c], a
    cp l
    db $e3
    ld a, [c]
    db $e4
    ld a, l
    di
    jp nz, Jump_000_00e5

    ret nz

    pop hl
    inc [hl]
    ldh [$3d], a
    ld [c], a
    adc h
    db $e3
    ld b, h
    db $e4
    add b
    db $fc
    add hl, bc
    ld [c], a
    add b
    ldh [rLCDC], a
    ld b, d
    ldh [$c0], a
    add sp, $0c
    ld [c], a
    ei
    db $e3
    db $76
    db $e3
    rst $38
    ret nc

    inc l
    db $ec
    jp nz, $0810

    ldh [$82], a
    ld [c], a

jr_05d_5359:
    ld a, a
    db $e4
    cp l
    pop bc
    dec hl
    ld b, b
    db $e3
    dec sp
    push hl
    rst $30
    jp nz, Jump_05d_4000

    ld a, [$e7c0]
    ld a, a
    jp $e440


    ret nz

    add sp, -$03
    rst $30
    ret nz

    ldh a, [rLCDC]
    pop bc
    nop
    ld e, h
    push hl
    rst $38
    ldh [$c1], a
    ld a, [$c2c0]
    add $c2
    cp [hl]
    pop bc
    pop bc
    db $e3
    ret nz

    add sp, $00
    rst $38
    rst $38
    adc e
    jp $efc0


    add c
    ret z

    ret nz

    rst $38
    rst $00
    and b
    rst $38
    jp hl


    ld b, b
    jp hl


    jr nc, jr_05d_5359

    rst $38
    dec bc
    ret nz

    add [hl]
    and c
    inc a
    and c
    ld c, h
    ld c, h
    ei
    pop hl
    ld b, b
    and h
    nop
    ld a, l
    call nz, $ffc0
    adc c
    rst $28
    rst $38
    rst $38
    ld b, b
    ret nc

    db $dd
    sub c
    ld b, b
    rst $38
    dec bc
    jp hl


    nop
    jp nc, Jump_000_00df

    rst $10
    sbc e
    cp d
    cp [hl]
    ld hl, sp+$16
    and a
    set 0, [hl]
    cp c
    rst $38
    cp [hl]
    db $ec
    nop
    push de
    ld a, a
    ld a, a
    db $fc
    push de
    ld a, a
    ld b, b
    rst $30
    push de
    ld a, a
    ld a, [hl]
    rst $38
    push de
    ld a, a
    cp a
    rst $18
    nop
    push de
    ld a, c
    ld b, b
    db $fd
    push de
    ld a, a
    ld a, a
    call c, Call_05d_7fd5
    rst $38
    cp $d5
    ld a, a
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
    sub e
    sbc a
    ld d, l
    cp a
    sub h
    ld a, [hl]
    rst $38
    rst $38
    sub h
    ld a, d
    add b
    rst $38
    ccf
    db $fc
    nop
    ret nz

    rst $38
    ld b, c
    rst $38
    rst $38
    rst $38
    call nc, $de51
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ret nz

    db $dd
    nop
    rst $38
    rst $38
    dec bc
    adc $62
    ld e, a
    cpl
    ld l, a
    ld h, d
    ld e, a
    add l
    rst $38
    ld h, d
    ld e, a
    ld d, d
    cp l
    nop
    ld h, d
    ld e, a
    rst $38
    rst $38
    call $ffbf
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    sub $ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05d_5455:
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

jr_05d_5479:
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    rst $38
    ld e, e
    ld e, e
    ld e, e
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld sp, $31ff
    ld sp, $3a34
    ld d, h
    ld d, h
    ld d, h
    dec sp
    sbc a
    ld c, l
    ld sp, $5b60
    nop
    rst $38
    rst $38
    rst $20
    and $5a
    reti


    ld e, e
    jp nz, $c3e2

    ldh [rLY], a
    jr nc, @+$01

    ldh [$6d], a
    ld [hl-], a
    jr nz, jr_05d_5479

    ldh [$ca], a
    rst $38
    add sp, -$19
    jp nz, $c3e4

    ldh [$66], a
    ret nz

    ld [c], a
    cp a
    pop hl
    ld [$ffca], sp
    add sp, -$19
    ld b, [hl]
    ldh [$ab], a
    jp nz, $c0e1

    and $7e
    ldh [$ca], a
    rst $38
    ld a, $e8
    rst $20
    ld sp, $58ab
    and l
    dec [hl]
    ld b, [hl]
    pop hl
    ret nz

    and $f3
    jr nc, jr_05d_5520

    jp z, $e8ff

    rst $20
    ld e, b
    xor d
    add b
    add b
    sub c
    ld d, e
    ld b, [hl]
    db $e3
    ccf
    pop hl
    ret nz

    pop hl
    ld d, d
    jp z, $e8ff

    rst $20
    add b
    ld h, d
    rst $38
    ldh [rHDMA2], a
    ld c, b
    ld [c], a
    ret nz

    pop hl
    add c
    pop hl
    jr nc, jr_05d_555c

    jp z, $a0ff

    ret nz

    db $ec
    jp nz, $c0e1

    rst $20
    ld b, b
    rst $38
    add b
    db $ec
    add e
    ret nz

    db $e3
    ld l, l
    ld sp, $8166
    ld [c], a
    ret nz

    rst $18

jr_05d_5520:
    ld b, b
    db $ed
    ld a, c
    ld [hl], c
    ret nz

    add sp, $40
    rst $18
    cp $00
    xor $80
    db $76
    ld [hl], $6d
    ld l, l

jr_05d_5530:
    ld b, h
    ld d, l
    jp Jump_05d_5455


    db $fd
    ldh [$7f], a
    and b
    ret nz

    rst $38
    ret nz

    db $ed
    add b
    ld l, a
    scf
    ld l, [hl]
    ld b, l
    ld b, e
    dec a
    and b
    inc b
    inc b
    ei
    pop hl
    ret nz

    rst $38
    db $76
    ret nz

    xor $ae
    ld [hl], b
    rst $38
    add b
    ld de, $1412
    rst $38
    db $e3
    ld a, b
    jp z, Jump_05d_40ff

    db $ec

jr_05d_555c:
    pop bc
    ld [c], a
    add hl, hl
    ld hl, $2410
    rst $38
    db $e3
    jr c, jr_05d_5530

    rst $38
    nop
    set 0, c
    db $e3
    daa
    db $10
    jr nz, @+$01

    db $e4
    jp z, Jump_000_00ff

    ret nz

    xor d
    pop bc
    db $ed
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
    db $f4
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
    jr nc, jr_05d_569c

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
    ld a, c
    ld d, [hl]
    xor c
    ld d, [hl]
    ld [hl-], a
    ld e, b
    rlca
    ld e, d
    db $ec
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $03ec
    di
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld e, e
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0116
    ret z

jr_05d_569c:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $2508
    ld [$0825], sp
    dec h
    ld [$ff25], sp
    dec bc
    dec bc
    dec hl
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    ld c, e
    dec c
    dec hl
    ld sp, hl
    db $e3
    ld c, e
    dec bc
    rst $28
    ldh [$fc], a
    ldh [rIE], a
    rst $38
    push hl
    db $e4
    ld a, a
    ld l, e
    dec bc
    ld l, e
    ld l, e
    dec hl
    dec hl
    dec hl
    cp [hl]
    ldh [$61], a
    ld l, e
    ldh a, [$e4]
    rst $38
    rst $38
    cp a
    db $eb
    pop bc
    pop hl
    dec hl
    ld l, e
    add a
    pop hl
    nop
    db $d3
    ld [c], a
    ld a, l
    ld [c], a
    rst $38
    rst $38
    ret nz

    db $ec
    ret c

    rst $20
    scf
    ldh [$cb], a
    rst $38
    add c
    ld [$cd0c], a
    ldh [$0d], a
    push hl
    ld l, e
    dec hl
    inc sp
    ldh [$c0], a
    rst $38
    nop
    jp hl


    pop de
    ldh [$0c], a
    ld a, a
    push hl
    cp h
    ret nz

    dec hl
    ld c, e
    ld a, a
    ldh [$ca], a
    rst $38
    jp hl


    add sp, $44
    ldh [rP1], a
    ccf
    db $e4
    ld a, h
    ret nz

    cp b
    ret nz

    or d
    ret nz

    set 7, a
    ld a, a
    jp z, $c1c0

    adc b
    ldh [rSB], a
    dec bc
    push bc
    pop hl
    ld a, $c1
    ret nz

    rst $38
    add b
    ld [$c03f], a
    dec a
    ret nz

    rlca
    jp nz, $c000

    rst $38
    rst $38
    or e
    cp [hl]
    ldh [$c6], a
    and c
    ld hl, sp-$5d
    pop bc
    rst $38
    ld bc, $c2ea
    ld [c], a
    nop
    cp a
    pop hl
    ret nz

    rst $38
    pop bc
    db $d3
    cp a
    db $e3
    rst $38
    pop bc
    cp b
    and d
    pop bc
    cp a
    ld a, a
    ld a, [c]
    nop
    cp l
    and c
    ld [hl], h
    ld [c], a
    adc $ff
    ld a, a
    ld a, [c]
    ld a, l
    and d
    db $76
    xor e
    rst $38
    rst $38
    ld a, $e7
    add b
    ld b, l
    and h
    scf
    and d
    ld a, l
    rst $38
    jp hl


    add sp, -$37
    jp $a6b5


    ld l, [hl]
    add c
    ld a, [bc]
    nop
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
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

jr_05d_582a:
    rst $38
    rst $38
    rst $38
    rst $38
    di
    nop
    nop
    nop
    rst $38
    ld sp, $0101
    rla
    ld d, $22
    ld d, $17
    cp $f9
    pop hl
    inc hl
    inc hl
    ld d, $44
    ld bc, $0101
    di
    ld l, $51
    rst $38
    rst $38
    rst $20
    and $2c
    ld bc, $060c
    rst $38
    scf
    scf
    scf
    ld b, $22
    inc hl
    ld b, $3a
    add $ff
    ldh [rSTAT], a
    ld b, d
    cp a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld bc, $bd19
    jr jr_05d_582a

    ldh [$37], a
    nop
    scf
    inc [hl]
    pop bc

jr_05d_586f:
    pop hl
    ld a, [hl-]
    rst $08
    ld a, [hl-]
    ld a, $43
    ld b, h
    ret nz

    rst $38
    ret nz

    jp hl


    add hl, bc
    nop
    sbc [hl]
    ret nz

    ld [$3c48], a
    inc a
    ccf
    jp z, $e8ff

    rst $20
    add hl, de
    di
    jr jr_05d_588b

jr_05d_588b:
    cp a
    pop hl
    add b
    db $e4
    nop
    nop
    ld b, b
    inc a
    inc sp
    inc a
    dec a
    jp z, $e8ff

    rst $20
    add hl, bc
    nop
    rst $38
    ldh [rLCDC], a
    db $e4
    ld a, $f5
    ldh [$38], a
    dec sp
    ld a, $3c
    ld c, d
    jp z, $e8ff

    rst $20
    db $ed
    jr nz, jr_05d_586f

    db $e4
    jr c, jr_05d_58e7

    or a
    pop hl
    inc [hl]
    dec sp
    dec sp
    ld l, c
    ld b, b
    ret nz

    rst $38
    ld [$21e9], a
    add b
    pop hl
    nop
    scf
    add [hl]
    ldh [$9a], a
    cp a
    ldh [$3b], a
    ret nz

    ldh [$3b], a
    ld c, d
    ld b, b
    rst $38
    add b
    db $ed
    dec sp
    dec l
    jr c, jr_05d_5919

    pop hl
    dec [hl]
    dec sp
    ret nz

    ld [c], a
    ld a, $c0
    rst $18
    ld b, b
    db $eb
    inc h
    adc h
    ldh [$bf], a
    pop hl
    scf
    ld b, e
    ldh [$80], a

jr_05d_58e7:
    pop hl
    jr nz, @+$42

    rst $18
    ret nz

    ret


    add b
    jp nz, $bfe1

    ld [c], a
    ret nz

    rst $38
    ld b, b
    db $d3
    cp a
    db $e3
    cp [hl]
    and c
    ld a, b
    pop hl
    dec sp
    jp $093b


    ret nz

    rst $38
    ret nz

    xor d
    ret nz

    add sp, $3f
    pop bc
    jr jr_05d_5923

    call z, $ffc0
    ld b, b
    xor c
    dec e
    ld [bc], a
    add b
    and $75
    jp nz, $0109

    ld [hl], c
    inc l

jr_05d_5919:
    jp z, Jump_000_00ff

    xor b
    cp a
    db $e3
    ld b, $22
    ld [hl+], a
    cp [hl]

jr_05d_5923:
    add b
    sbc [hl]
    or h
    and b
    ld b, $07
    ld bc, $ca31
    rst $38
    add sp, -$19
    ld l, $ce
    cp a
    ldh [$15], a
    inc hl
    dec d
    ld b, b
    add b
    scf
    add b
    dec d
    ld [hl+], a
    ld b, $f7
    ldh [$2e], a
    jr z, @-$34

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
    di
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld [hl], $30
    scf
    ld h, $20
    cpl
    daa
    db $10
    ld d, $17
    push de
    rst $28
    ld de, $e0ff
    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    nop
    nop
    nop
    jr nc, jr_05d_5a84

    ld h, b
    ld e, d
    add hl, sp
    ld e, l
    ld [de], a
    ld e, a
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e
    ld bc, $008a
    ldh a, [$03]
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e
    ld bc, $47ff
    ldh a, [rP1]
    ld e, l
    add hl, de
    ld c, h
    inc bc
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
    rst $38
    dec bc
    dec bc
    inc l
    ld l, h
    inc c
    inc c
    ld l, h
    ld l, h
    rst $38
    dec bc
    ld l, e
    dec bc
    dec bc
    dec bc
    ld c, e
    dec bc
    dec bc
    rst $38
    dec hl
    dec bc
    ld a, [bc]
    dec bc
    inc c
    ld c, h
    ld c, h
    ld c, h
    ld bc, $ff0c
    ldh [$fa], a
    ldh [$f7], a
    pop hl
    db $fc

jr_05d_5a84:
    ld [c], a
    cp $e0
    db $fd
    pop hl
    cp $ee
    ld l, l
    dec hl
    ret nz

    db $e3
    inc c
    ld l, e
    ret nz

    ldh [$2b], a
    ld c, e
    cp a
    ld [c], a
    ld bc, $d90b
    ld [c], a
    call nz, $b7e2
    ld [c], a
    or d
    ldh [$fa], a
    db $e3
    pop bc
    ldh a, [$c0]
    ldh [rSCX], a
    dec bc
    inc l
    add b
    ldh [$81], a
    ld [c], a
    cp [hl]
    pop hl
    ld a, d
    ldh [$0a], a
    sbc c
    db $e3
    ldh a, [$92]
    db $e3
    set 6, d
    ld a, b
    add sp, $4f
    ldh [$2c], a
    inc l
    ld c, h
    inc c
    nop
    ld b, l
    pop hl
    cp [hl]
    pop hl
    cp c
    ld [c], a
    ld e, c
    add sp, $38
    pop hl
    inc [hl]
    db $e3
    or e
    db $f4
    ld d, b
    pop hl
    nop
    ret


    ldh [$81], a
    db $e3
    ei
    db $e4
    nop
    ld [c], a
    db $fd
    push hl
    ei
    ld [$c2ff], a
    ld d, b
    ldh [rP1], a
    ld sp, hl
    rst $20
    adc d
    db $e3
    pop bc
    add sp, -$44
    ret nz

    call nc, $c6c2
    push hl
    ret nz

    push bc
    or d
    jp nz, Jump_05d_4004

    ldh a, [$82]
    ld [c], a
    ld c, e
    rst $38
    ldh [$c0], a
    push hl
    add b
    pop bc
    ret nz

    db $ec
    cp [hl]
    rst $20
    ld l, h
    ret nz

    di
    pop bc
    pop hl
    ld c, e
    ld c, e
    inc a
    db $e4
    ld c, e
    dec hl
    ld d, a
    ret


    ld h, b
    ret nz

    db $dd
    ld a, [de]
    ret nz

    ld c, b
    pop bc
    ld a, a
    db $e3
    or $a0
    ld c, h
    dec hl
    ret nz

    pop hl
    ldh a, [rHDMA4]
    ld [c], a
    ld c, $c5
    ret nz

    call nz, $b4ff
    inc c
    inc l
    dec bc
    dec hl
    inc a
    cp a
    ld [c], a
    add a
    jp $2b2c


    dec bc
    ld c, e
    nop
    db $e4
    ret nz

    call z, Call_000_37ea
    push de
    inc l
    ld a, a
    ldh [$2b], a
    ld b, e
    ld [c], a
    ld l, h
    inc c
    inc l
    nop
    inc [hl]
    ret nz

    ret nz

    push hl
    adc [hl]
    and e
    db $76
    db $e3
    or [hl]
    and e
    ld l, d
    and e
    add c
    jp nz, $c47c

    ld [bc], a
    ld [hl], c
    jp nz, $0d2c

    ldh [$3a], a
    jp nz, $e1f4

    ld a, [c]
    ldh [$80], a
    jp nz, $c77f

    jr nc, jr_05d_5be6

    add $ac
    and e
    dec sp
    xor a
    or h
    rst $20
    ld l, h
    ld l, h
    rla
    and b
    ld b, b
    and e
    nop
    add b
    db $e4
    ld a, [bc]
    xor b
    ld [hl], $a6
    ret nz

    ld hl, sp-$29
    add c
    ret nz

    and l
    inc c
    ret z

    ld b, h
    res 0, b
    db $10
    and b
    ld e, b
    pop hl
    cpl
    or l
    add b
    and d
    jp nc, Jump_000_09a6

    add $00
    and $4c
    nop
    ret nz

    db $fd
    ld b, b
    jp nz, $85c2

    push bc
    rst $00
    dec sp
    xor b
    add c
    add sp, $1c
    and a
    inc d
    and a
    nop
    ld bc, $fac4
    and l
    ld b, h
    and h
    db $76
    add $c0
    db $ec
    sbc e
    add $59
    and h
    ld a, [bc]
    adc c
    nop
    add c
    add l
    xor d
    db $e4
    db $76
    ret z

    ld a, [hl]
    xor d
    rst $30
    ld a, [c]
    add l
    add e
    sub e
    add d
    or [hl]
    add sp, $00
    ld c, $c3
    pop bc
    pop bc
    db $fd
    and a
    ld d, e
    xor e
    rst $00
    add $c5
    rst $00
    scf
    rst $00
    dec [hl]
    ld h, d
    db $10
    ret nz

    xor $53
    xor d

Jump_05d_5be1:
    dec b
    push hl
    ld a, [hl-]
    add e
    inc l

jr_05d_5be6:
    adc d
    add e
    ld b, h
    db $ec
    ld b, b
    ret


    nop
    push hl
    push bc
    ld d, e
    and [hl]
    dec b
    ld l, b
    db $d3
    ld h, h
    or a
    ld l, b
    dec sp
    add e
    ret nz

    db $ec
    ld d, e
    xor d
    nop
    ld c, d
    and l
    adc d
    add [hl]
    add e
    db $ed
    ld a, c
    ld c, l
    and c
    add l
    ld e, b
    ld b, a
    add $84
    inc a
    and [hl]
    nop
    add e
    add sp, -$01
    xor [hl]
    add d
    ld b, b
    ld d, e
    xor e
    inc b
    and a
    add l
    adc d
    ld [hl], l
    adc b
    ld b, b
    xor [hl]
    nop
    ld d, e
    xor c
    rrca
    and a
    cp $ea
    db $fc
    and l
    xor d
    ld [hl+], a
    inc bc
    xor c
    sbc a
    pop bc
    ld d, e
    xor c
    nop
    ret nz

    add $25
    add $7d
    adc d
    dec c
    add h
    ld b, d
    adc d
    ld b, l
    jp z, $c77b

    ld a, e
    dec h
    nop
    ld a, l
    adc d
    rst $38
    and e
    ld [bc], a
    adc e
    dec c
    and [hl]
    jr @+$2a

    ei
    and [hl]
    ld c, e
    xor d
    inc a
    inc h
    nop
    ld b, h
    adc l
    call z, $e685
    inc hl
    ld c, d
    xor c
    add h
    srl d
    ld l, b
    nop
    db $ed
    rra
    jp z, $0600

    add a
    ld c, h
    and [hl]
    cp d
    ld l, d
    ld b, b
    db $ec
    inc l
    ld d, b
    ld c, a
    and $38
    add hl, hl
    add h
    add $00
    jp $bf80


    ld c, b
    ld e, a
    adc [hl]
    call nz, $fbe6
    rlca
    xor l
    ld b, h

jr_05d_5c81:
    add e
    ld h, b
    ret nz

    ld [c], a
    nop
    ld b, c
    ld l, b
    ld e, a
    sub b
    ld b, a
    ld b, l
    ld c, c
    ld l, b
    or b
    add a
    jp nz, Jump_000_0201

    ld l, l
    ld e, a
    adc l
    nop
    and a
    ld l, c
    db $fc
    add hl, bc
    cp $25
    jp nz, Jump_05d_5f49

    sub b
    sbc h
    rst $00
    ld a, [bc]
    ld b, [hl]
    ld e, b
    xor e
    nop
    ld [bc], a
    ld c, [hl]
    ld e, a
    adc [hl]
    ld h, c
    ld l, l
    ld [hl], h
    ld c, d
    ld b, d
    ld c, e
    cp a
    or $c0
    srl a
    add sp, $00
    ld [bc], a
    ld e, b
    jp hl


    ld c, e
    add [hl]
    ld c, l
    cp d
    jr jr_05d_5c81

    di
    add [hl]
    ld c, l
    ld b, c
    ld sp, $1668
    nop
    daa
    ret nc

    ld a, a
    rst $38
    ld h, $4e
    daa
    bit 7, a
    rst $38
    daa
    jp c, $ff80

    ld l, b
    call c, $8000
    rst $38
    ld h, a
    xor a
    pop bc
    dec h
    ld a, a
    and a
    rst $38
    rst $38
    jp nc, $c067

    db $eb
    rst $38
    rst $38
    nop
    ld [hl], e
    call nc, $bfcd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    reti


    or e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    inc sp
    nop
    nop
    nop
    rst $38
    ld sp, $0831
    jr nz, @+$22

    jr nz, jr_05d_5d69

    rla
    rst $38
    ld sp, $5647
    ld d, [hl]
    ld d, a
    ld b, a
    ld sp, $9f31
    ld h, b
    ld e, e
    ld e, d
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $5e
    ei
    ld sp, $c00d
    ldh [rNR21], a
    dec d
    scf
    ld [hl], $30
    adc a
    jr nc, jr_05d_5d93

    ld [hl], $3c
    cp a
    pop hl
    ret nz

    rst $38

jr_05d_5d69:
    jp hl


    add sp, $5f
    rst $38
    ld sp, $1831
    jr nz, jr_05d_5d92

    rla
    ld sp, $fd39
    ld l, l
    ret nz

    ldh [$30], a
    ld b, d
    inc a
    ld sp, $5b61
    ld sp, hl
    ld e, d
    jp z, $e8ff

    rst $20
    ld e, e
    ld e, [hl]
    ld sp, $0a1e
    cp a
    dec b
    dec d
    ld sp, $6d52
    ld l, l
    cp [hl]

jr_05d_5d92:
    pop hl

jr_05d_5d93:
    ld d, d
    ldh a, [$c0]
    ldh [$80], a
    rst $38
    ret nz

    jp hl


    ld a, a
    ldh [$31], a
    ld sp, $4647
    add hl, sp
    ld b, d
    ret nz

    ldh [$7d], a
    ldh [$39], a
    ld sp, $c05f
    rst $38
    add b
    ld [$6065], a
    ret nz

    ldh [$3c], a
    inc bc
    pop hl
    cp a
    pop hl
    ld c, b
    ld c, c
    ret nz

    rst $38
    ld a, [de]
    db $ec
    db $eb
    ld h, d
    add c
    ldh [rOBP1], a
    ld c, b
    inc b
    pop hl
    cp a
    ldh [$c0], a
    pop bc
    or c
    ld e, [hl]
    add b
    rst $18
    ld [$42e9], a
    pop hl
    add hl, sp
    ld h, l
    rst $38
    ld [c], a
    ld b, d
    push bc
    ld b, [hl]
    ld b, b
    ret nz

    ld sp, $e07f
    jp z, $e8ff

    rst $20
    inc d
    inc d
    ld e, l
    dec d
    ret nz

    push hl
    add hl, sp
    ld sp, $f215
    pop hl
    ld e, [hl]
    ret nz

    rst $38
    ld l, $e9
    add sp, $24
    inc h
    rla
    ld b, b
    ldh [rBCPS], a
    rst $38
    ldh [rDIV], a
    ldh [rNR31], a
    rla
    jr z, @-$0c

    ldh [$31], a
    ld e, a
    jp z, $e8ff

    rst $20
    call nz, Call_000_2ca1
    ret nz

    jp nz, $a0c4

    dec d
    ld d, $f2
    ld [c], a
    ld e, [hl]

jr_05d_5e13:
    jp z, $c0ff

    jp hl


    jr jr_05d_5e5d

    and b
    ld b, b
    ret nz

    inc b
    pop hl
    rla
    jr z, jr_05d_5e13

    db $e3
    jp z, $80ff

    jp hl


    rst $20
    jr nz, jr_05d_5e3f

    inc d
    rst $38
    db $e4
    add c
    ldh [rNR41], a
    jr nz, jr_05d_5e39

    xor h
    ret nz

    rst $38
    ret nz

    db $ec
    db $10
    inc h
    rst $38

jr_05d_5e39:
    db $e4
    db $10
    ret nz

    pop hl
    dec c
    ld c, b

jr_05d_5e3f:
    ld b, b
    rst $38
    add b
    db $ec
    db $fd
    ld [$c018], a
    rst $18
    ret nz

    ld a, [$401a]
    rst $18
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

jr_05d_5e5d:
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
    or $00
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
    jr nc, jr_05d_5f71

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
    ld c, [hl]
    ld e, a
    ld a, [hl]

Jump_05d_5f49:
    ld e, a
    inc d
    ld h, d
    ld a, [$f863]
    inc bc
    ld c, h
    inc bc
    ld d, e
    ld bc, $008a
    ldh a, [$03]
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e
    ld bc, $47ff
    ldh a, [rP1]
    ld e, l
    add hl, de
    ld c, h
    inc bc
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_05d_5f71:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $ed
    dec bc
    rst $38
    ld [c], a
    ld l, e
    ld c, e
    rst $38
    and $0b
    ld c, e
    dec hl
    rra
    inc c
    inc c
    inc c
    ld c, h
    ld c, h
    db $fd
    db $e3
    ld sp, hl
    ldh [$f2], a
    pop hl
    add h
    db $fc
    db $e4
    db $fd
    ldh a, [rOCPD]
    jp nz, $ffe1

    ldh [$b8], a
    db $e3
    or a
    ldh [$0b], a
    inc bc
    dec bc
    ld c, e
    sub $e2
    cp [hl]
    db $e3
    db $fc
    db $e3
    cp l
    ld [c], a
    or h
    add sp, -$40
    ld [$c402], a
    pop hl
    dec hl
    cp c
    ldh [$c6], a
    ldh [$73], a
    ldh [$7f], a
    pop hl
    jp nc, $c0e5

    db $e3
    ld [$e5ba], sp
    or h
    rst $20
    db $76
    jp hl


    dec bc
    add [hl]
    ld [c], a
    add b
    ldh [rDMA], a
    ldh [rIE], a
    push hl
    nop
    ld d, d
    and $4c
    db $ec
    or h
    db $e3
    ret nz

    db $f4
    or a
    db $e3
    ret nz

    push hl
    pop bc
    and $87
    db $e3
    ld [bc], a
    nop
    ld [$f92c], a
    jp hl


    ret nz

    call nz, $e108
    or a
    jp nz, $c1b3

    ret nz

    set 3, b
    ei
    db $e4
    or h
    and $b7
    rrc e
    dec hl
    ld a, [hl]
    ret nz

    dec hl
    dec hl
    nop
    cp a
    pop bc
    ld a, h
    pop bc
    ld a, [c]
    pop hl
    ld b, b
    ldh [$c7], a
    jp $c381


    cp b
    rst $20
    ccf
    pop af
    ld l, a
    dec bc
    dec hl
    ld c, e
    dec hl
    rst $38
    pop hl
    ld l, e

jr_05d_601a:
    ld l, e
    push bc
    ld [c], a
    ld b, b
    nop
    db $e3
    ld c, h
    jp nz, $e5ff

    ld a, h
    call nz, $e6b4
    ret nz

    db $ed
    dec hl
    add c
    ldh [rP1], a
    cp a
    pop hl
    add h
    ld [c], a
    jr nz, jr_05d_601a

    ld d, d
    rst $08
    db $76
    ret


    add b
    ret z

    ld c, [hl]
    pop bc
    ld a, [hl]
    ld [c], a
    nop
    ld [hl], $e1
    pop hl
    jp nz, $c1e0

    ld b, $ca
    ei
    and h
    cp [hl]
    and h
    or a
    xor e
    ld b, a
    pop bc
    nop
    cp a
    ld [c], a
    dec b
    pop hl
    ld d, a
    rst $00
    sub b
    ldh a, [$b4]
    push hl
    ld a, h
    ret


    add b

jr_05d_605d:
    db $e3
    jp z, $0fc0

    ld c, e
    ld l, e
    dec hl
    ld c, e
    ld c, b
    call nz, $c340
    add [hl]
    ret


    ld a, c
    jp $ba20


    and [hl]
    ret nz

    xor e
    add c
    ld [c], a
    add a
    and c
    jr nc, jr_05d_605d

    ld l, e
    ld b, b
    jp nz, $c3ce

    nop
    dec a
    and a
    db $76
    jp $c536


    db $f4
    add a
    ld c, d
    and d
    ld b, l
    add sp, $33
    pop bc
    ld b, b
    and $08
    ret nz

    ld [$86f1], a
    ret nz

    and b
    inc l
    rst $38
    ldh [$c0], a
    push bc
    ret nz

    db $e3
    ld h, a
    push bc
    ld [bc], a
    db $f4
    add b
    ld a, [bc]
    sub [hl]
    adc c
    sub $e3
    xor h
    jp $a4ea


    ret nz

    ld a, [c]
    ld h, b
    add e
    nop
    ld [hl], h
    add c
    add b
    ldh [rIE], a
    db $f4
    adc d
    and $81
    rst $20
    ret c

    ret z

    ld d, [hl]
    and [hl]
    jp nz, Jump_000_00a3

    nop
    adc l
    cp d
    add a
    ret nz

    ld [$6ed5], a
    db $f4
    ld [$934c], a
    or [hl]
    ld l, l
    push de
    ld l, d
    nop
    db $f4
    db $eb
    ld [hl], b
    rst $20
    cp a
    ret


    pop bc
    jp nz, $8479

    push de
    ld l, l
    ld c, e
    ld l, c
    adc [hl]
    ld l, l
    nop
    adc c
    call nz, $eac0
    push de
    ld l, l
    ld c, e
    ld [$6442], a
    inc b
    ld l, e
    ld b, b
    jp z, Jump_05d_6ed5

    nop
    ret nc

    ld c, b
    ld c, a
    add l
    push bc
    ld c, h
    ret nz

    db $ec
    push de
    ld l, l
    ld d, $ac
    ld b, a
    ld h, l
    inc [hl]
    adc b
    nop
    add [hl]
    db $ed
    push de
    ld l, h
    or l
    ret


    add hl, bc
    ld h, h
    ld a, $49
    or b
    and e
    add b
    and l
    push de
    ld [hl], b
    nop
    pop de
    ld c, b
    pop af
    xor b
    inc [hl]
    add [hl]
    ret nz

    db $eb
    push de
    ld [hl], e
    rst $30
    rst $00
    rst $00
    add l
    call nz, Call_000_006a
    jp $d5ca


    ld l, l
    cp [hl]
    and a
    inc b
    ld c, b
    inc [hl]
    adc b

jr_05d_6130:
    ret nz

    db $eb
    push de
    ld l, a
    ld c, b
    xor a
    nop
    ld sp, hl
    ld c, d
    jp nz, $fd6a

    adc h
    adc h
    ld h, $cc
    and $76
    ld c, b
    ret nz

    push af
    push de
    ld l, l
    nop
    daa
    db $ed
    push bc
    rlca
    jp z, Jump_000_15ae

    ld l, b
    jp nc, Jump_05d_4f8a

    ld b, l
    ld c, $e7
    cp [hl]
    xor [hl]
    nop
    ld hl, $7e96
    ld [$b1cf], a
    add c
    ld h, c
    ld a, [hl]
    set 6, d
    ret nc

    ld a, l
    ld b, l
    jr c, jr_05d_6130

    nop
    db $eb
    ld h, h
    ld [hl], c
    ld h, h
    ret nz

    rst $30
    rst $30
    jp z, $e66d

    daa
    and $7f
    add l
    ld h, c
    ld a, b
    nop
    or a
    db $d3
    ld a, b
    and [hl]
    add c
    db $fc
    ret nc

    ld b, a
    ld h, e
    adc d
    ld d, [hl]
    xor c
    rst $38
    rst $38
    inc h
    sub h
    nop
    cpl
    call nz, $8b02
    ld h, b
    ret nc

    ld h, [hl]
    adc e
    or a
    adc l
    pop bc
    call c, Call_05d_4897
    inc h
    adc [hl]
    nop
    ld b, c
    rst $38
    ld l, e
    ld l, [hl]
    inc h
    adc d
    ld d, h
    or $d2
    ld sp, $8f24
    ld a, a
    rst $38
    ld h, e
    ld [hl], d
    nop
    ld b, l
    ld [$ff7f], sp
    dec de
    xor b
    inc h
    adc [hl]
    add b
    rst $38
    ld b, b
    pop af
    push bc
    ld l, c
    add b
    rst $38
    nop
    and e
    ld c, a
    push bc
    ld l, c
    ret nz

    rst $38
    inc h
    sbc d

Call_05d_61c7:
    rst $38
    rst $38
    ld b, l
    dec e
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], h
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    db $fc
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
    rst $38
    di
    nop
    nop
    nop
    rst $38
    ld e, e
    ld h, b
    ld sp, $3131
    ld c, e
    dec sp
    ld d, h
    ei
    ld d, h
    ld d, l
    db $fd
    ldh [rHDMA5], a
    ld d, l
    dec sp
    ld c, l
    ld sp, $5ea7
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $5f
    jp nz, Jump_000_36e1

    rst $38
    ld h, [hl]
    ld h, [hl]
    jr nc, jr_05d_6268

    jr nc, jr_05d_62a3

    ld l, l
    ld l, l
    ccf
    jr nc, jr_05d_626f

    add hl, sp
    ld sp, $5f31
    jp z, $e8ff

    rst $20
    cp a
    ld e, [hl]
    ld sp, $363c
    jr nc, @+$32

    ret nz

    rst $20
    ld c, b
    rst $20
    ld c, c
    ld sp, $ca5e
    rst $38
    add sp, -$19
    ld sp, $4237
    ret z

    add l
    ldh [$c0], a
    rst $38
    ret nz

    or $39
    ld b, [hl]
    ldh [$c0], a
    db $e3

jr_05d_6268:
    ld l, d
    ld l, l
    ld l, b
    ccf
    ldh [rLCDC], a
    rst $38

jr_05d_626f:
    add b
    db $ec
    ld d, d
    ret nz

    pop hl
    ld h, a
    ld h, a
    cp d
    pop hl
    ld h, d
    cp a
    ldh [$99], a
    add c
    ldh [$c0], a
    rst $18
    add b
    db $ed
    ld l, l
    ld l, l
    cp a
    pop hl
    ld e, a
    sub h
    sbc h
    sbc h
    sbc h
    sub l
    ld [hl], d
    ret nz

    ld h, d
    jp z, $f8ff

    nop
    ld [$e049], a
    cp a
    pop hl
    sub e
    add [hl]
    sub [hl]
    sub a
    sbc [hl]
    ld h, [hl]
    inc sp
    ret nz

    ld sp, $ca31

jr_05d_62a3:
    rst $38
    ret nz

    ret z

    and a
    add e
    add c
    ldh [$f6], a
    cp a
    pop hl
    sub c
    sub b
    or $a0
    add hl, hl
    inc d
    inc d
    inc d
    cp c
    add hl, hl
    jp z, $80ff

    ret z

    add c
    ld a, c
    ld [hl], c
    cp a
    ld [c], a
    sub e
    ei
    add [hl]
    sub d
    pop bc
    ldh [$27], a
    db $10
    inc h
    db $10
    dec hl
    ld e, h
    jp z, $e8ff

    rst $20
    xor h
    xor c
    add b
    cp a
    db $e3
    sub c
    dec b
    ldh [$9e], a
    pop bc
    ldh [rNR41], a
    jr nz, jr_05d_62e8

    dec bc
    jp z, $e8ff

    rst $20
    add c
    rst $38
    add b
    add b
    add b

jr_05d_62e8:
    ld a, c
    ld l, [hl]
    ld d, l
    sbc d
    sbc b
    and [hl]
    pop bc
    db $e4
    ld a, [bc]
    dec bc
    nop
    rst $38
    ld [$a9e9], a
    ret nz

    ldh [$80], a
    ld a, a
    and b
    ld sp, $9e9e
    ld sp, $1211
    add d
    ldh [$1f], a
    nop
    ld sp, $5d31
    ld e, h
    jp z, $e8ff

    rst $20
    pop bc
    pop hl
    cp h
    ret nz

    ldh [$c2], a
    ldh [rNR42], a
    ld [hl+], a
    jr nz, jr_05d_6339

    ret nz

    ldh [$61], a
    ret


    ld e, e
    nop
    rst $18
    ret nz

    ldh a, [$2b]
    jp nz, $42e1

    pop hl
    ld h, c
    ld e, e
    ld bc, $ca5a
    rst $38
    ret nz

    ldh a, [$c6]
    jp nz, $e142

    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05d_6339:
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
    jr nc, jr_05d_6459

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
    ld [hl], $64
    ld h, [hl]
    ld h, h
    ld hl, sp+$65
    ret c

    ld h, a
    or b
    inc bc
    adc [hl]

jr_05d_6439:
    ld [bc], a
    ld d, b
    ld bc, $04aa
    ld c, l
    inc bc
    or b
    inc bc
    adc [hl]
    ld [bc], a
    ld d, b
    ld bc, $7f48
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld e, e
    ret z

    inc bc
    ld d, b
    ld bc, $04aa
    ld [hl], h
    nop
    ccf

jr_05d_6459:
    ld bc, $02bf
    ld l, d
    inc b
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $30
    dec hl
    ld a, [bc]
    dec bc
    rst $38
    ld [c], a
    ld c, e
    dec hl
    dec hl
    ld c, e
    ld a, a
    ld c, e
    dec bc
    dec bc
    dec hl
    dec hl
    ld a, [bc]
    ld a, [bc]
    xor $e4
    ld c, b
    rst $38
    rst $38
    add $e1
    pop bc
    db $e3
    ld c, e
    pop bc
    ldh [$fe], a
    ldh [rOCPD], a
    cp a
    pop hl
    jr jr_05d_6439

Jump_05d_648b:
    push hl
    rst $38
    rst $38
    push hl
    db $e4
    ld l, e
    ld l, e
    add a
    pop hl
    ld a, c
    pop hl
    cp a
    pop hl
    db $10
    ld a, l
    ldh [$cd], a
    rst $38
    ld [$85e9], a
    db $e3
    dec hl
    jp Jump_000_3ce2


    ld [c], a
    add hl, sp
    ldh [$30], a
    rst $38
    rst $38
    pop bc
    db $ed
    ret nz

    ldh [$c8], a
    ld [c], a
    dec hl
    ld c, e
    ld hl, sp-$1d
    rst $38
    rst $38
    nop
    add c
    rst $20
    inc bc
    ld [c], a
    ret nz

    db $e4
    add d
    rst $38
    xor $ed
    adc [hl]
    pop hl
    ld b, b
    ld [c], a
    ld [$00e3], sp
    ld a, d
    pop bc
    rst $38
    rst $38
    ret nz

    jp hl


    add l
    ret nz

    ld b, d
    ret nz

    add b
    push hl
    ld a, a
    rst $38
    ret nz

    xor $02
    ld b, d
    ret nz

    ld c, e
    nop
    pop hl
    rst $38
    jp $df81


    ld b, d
    ld [$e3cd], a
    ld a, a

jr_05d_64e8:
    ld [c], a
    ld [$e1c5], sp
    jp nz, $c0df

    ldh a, [rWX]
    ret nz

    and d
    db $76
    pop hl
    ld hl, sp-$5d
    rst $38
    rst $38
    add b
    jp nz, $8cc7

    and b
    ld c, l
    ret nz

    ld a, l
    call nz, $a0fa
    call Call_05d_40ff
    xor e
    ld l, e
    nop
    add c
    ld [c], a
    ret nz

    rst $38
    add d
    sub $7f
    jp nz, $a27e

    ld a, [hl-]
    and h
    rst $38
    rst $38
    ret nz

    adc c
    jr c, jr_05d_64e8

    pop bc
    jp nz, $fae4

    add c
    ld c, e
    dec bc
    ld l, e
    cp e
    rst $38
    add b
    adc c
    add hl, sp
    ld a, [bc]
    ld c, d
    add d
    call z, Call_05d_4be5
    ld c, e
    ld l, e
    ld b, b
    sbc a
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    push af
    nop
    nop
    nop
    rst $38
    add hl, hl
    jr z, jr_05d_6626

    dec hl
    jr nc, jr_05d_662f

    ld bc, $ff01
    ld b, d
    inc a
    inc a
    ld b, e
    ld b, h
    ld bc, $2e01
    sbc a
    add hl, hl
    jr z, jr_05d_6636

    jr z, jr_05d_6610

jr_05d_6610:
    rst $38
    rst $38
    rst $20
    and $28
    sra [hl]
    ld bc, $e0ff
    ld c, e
    pop bc
    ldh [$fe], a
    ldh [rSCY], a
    ld bc, $018f
    dec hl
    ld a, [hl+]
    add hl, hl

jr_05d_6626:
    ret nz

    rst $38
    jp hl


    add sp, -$3f
    ldh [rLY], a
    rst $18
    ld b, e

jr_05d_662f:
    ld c, c
    ld b, l
    ld b, a
    ld b, l
    db $fc
    ldh [rBGP], a

jr_05d_6636:
    ld b, l
    ldh [$bf], a
    ldh [$7d], a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld b, [hl]
    ld [c], a
    ld b, c
    dec sp
    dec sp
    rst $38
    dec sp
    scf
    nop
    nop
    scf
    dec sp
    ld b, [hl]
    ld d, $4f
    rla
    ld bc, $2d01
    jp z, $c0ff

    add sp, $3f

jr_05d_6658:
    pop bc
    db $e3
    ld a, [hl]
    ret nz

    db $e3
    dec sp
    dec sp
    inc e
    add hl, de
    ld bc, $ca2c
    rst $38
    sbc $80
    add sp, $3d
    inc a
    ld a, $38
    ret nz

    add sp, $3b
    add hl, bc
    di
    ld bc, $ca01
    rst $38
    ld b, b
    add sp, $4a
    inc a
    ld b, b
    nop
    call z, $e1bf
    ret nz

    push hl
    jr jr_05d_669b

    ret nz

    rst $38
    nop
    jp hl


    ld b, d
    ld a, $80
    db $db
    ldh [$7e], a
    ldh [rP1], a
    ldh [$78], a
    ld [c], a
    ld a, a
    ldh [$ca], a
    rst $38
    ret nz

    ret


    add hl, bc
    xor $db
    pop hl

jr_05d_669b:
    jr c, @+$3d

    jr c, jr_05d_6658

    db $e3
    dec sp
    nop
    jr nz, jr_05d_66e0

    ret nz

    rst $38
    jp hl


    add sp, $2c
    ld bc, $403f
    ld a, a
    db $e3
    cp a
    db $e3
    di
    nop
    nop
    add b
    rst $38
    ld [$2de9], a
    ld bc, $2001
    call z, $e486
    ld a, [hl]
    pop hl
    scf
    nop
    nop
    rst $38
    db $eb
    ld [$2f29], a
    ldh [$c0], a
    and $fd
    and d
    add c
    ldh [$c0], a
    rst $38
    ld b, b
    xor c
    cpl
    ld bc, $9909
    jr c, @+$01

    ldh [$fd], a
    and l
    rrca
    rlca
    nop
    rst $18

jr_05d_66e0:
    add b
    ld [$f72c], a
    ld bc, $1819
    adc b
    jp nz, Jump_000_063b

    ld [hl+], a
    ld [hl+], a
    rst $00
    ld b, $06
    rlca
    add b
    cp a
    ret nz

    adc e
    rst $38
    ret nz

    inc c
    ld b, $0a
    jp nz, $15e1

    ld b, l
    and b
    rla
    ld b, c
    and b
    nop
    cp a
    add b
    adc d
    ld a, a
    add c
    daa
    rla
    dec d
    inc hl
    jp nz, $fee1

    ld [c], a
    ld l, $40
    sbc a
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

Jump_05d_674f:
    rst $38
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
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld [hl], $30
    scf
    ld h, $20
    cpl
    daa
    db $10
    ld d, $17
    push de
    rst $28
    ld de, $e0ff
    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    nop
    nop
    nop
    ld bc, $3168
    ld l, b
    and l
    ld l, d
    ld l, b
    ld l, h
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
    ld e, a
    inc c
    inc l
    inc l
    inc c
    dec bc
    rst $38
    ld [c], a
    dec hl
    db $fd
    pop hl
    push af
    ld a, [bc]
    db $f4
    pop hl
    inc c
    rst $38
    pop hl
    ld c, h
    ld c, h
    inc c
    ld c, h
    add $e3
    pop hl
    inc c
    inc l
    cp $e0
    rst $38
    ld hl, sp-$40
    ld [c], a
    ld l, e
    ld l, e
    pop de
    ld c, e
    rst $38
    ldh [$b8], a
    db $e3
    ret nz

    add sp, $2c
    ret nz

    ld [c], a
    inc l
    inc l
    ld b, h
    or l
    ei
    add c
    ldh [rWX], a
    add e
    ldh [$7f], a
    pop hl
    ret nz

    rst $20
    ld c, h
    ld a, [hl]
    pop hl
    ld b, b
    add c
    pop hl
    ret nz

    db $e4
    or l
    push hl
    add b
    rst $28
    ld b, c
    db $e4
    ret nz

    and $0a
    ld b, b
    add sp, $02
    pop bc
    db $e3
    inc l
    or l
    add sp, -$7f
    ld a, [c]
    ret nz

    ld [$e780], a
    cp a
    db $e3
    ld [hl], e
    ld [c], a
    ld d, b
    or l
    rst $20
    rst $28
    pop bc
    add a
    db $e4
    ld b, c
    and $6b
    ld b, $e4
    ld l, e
    ret nz

    call z, Call_05d_7f10
    pop hl
    add b
    db $e3
    or l
    and $01
    pop af
    ld l, e
    dec b
    rst $20
    ret nz

    set 0, b
    push hl
    inc d
    or l
    jp hl


    ret nz

    pop af
    dec hl
    push bc
    jp nz, $be4b

    push bc
    ret nz

    add $48
    push bc
    ld [$fcc0], sp
    add d
    jp nz, $c07b

    ld c, e
    cp l
    ldh [$c0], a
    adc $f3
    and l
    ld b, b
    ld hl, sp+$00
    ld bc, $c2c0
    pop hl
    ret nz

    ld [c], a
    cp a
    and c
    call $c0e6
    call z, $f5c1
    pop bc
    and h
    nop
    cp a
    db $e3

Jump_05d_68e2:
    ccf
    ret nz

    nop
    add $80
    rst $00
    ld [hl], l
    add $72
    and h
    ld l, l
    and a
    ret nz

    rst $20
    nop
    db $fc
    jp $a140


    rlca
    pop bc
    add b
    jp hl


    or l
    add sp, $34
    xor l
    ld b, d
    jp nz, $a241

    ret nz

    add b
    ret z

    ld b, h
    jp nz, $e1fe

    add b
    rst $28
    jp hl


    adc l
    add $82
    dec hl
    dec hl
    nop
    pop bc
    jp hl


    ret nz

    add c
    add l
    and d
    ld b, b
    rst $20
    dec [hl]
    add sp, $34
    xor h
    ld [bc], a
    jp nz, $c341

    nop
    ret nz

    add h
    ld b, b
    and b
    add b
    db $e4
    adc c
    adc b
    ld a, a
    ret z

    inc [hl]
    xor e
    add d
    jp nz, $c300

    nop
    inc bc
    and e
    ld b, b
    add c
    ld c, a
    add d
    ccf
    adc c
    ld [hl], $ca
    add hl, hl
    adc d
    sub l
    push hl
    sub e
    jp nz, $cc00

    add l
    inc b
    adc e
    adc d
    adc d
    ld b, b
    db $ed
    ld d, h
    add h
    sub c
    db $ec
    ld c, a
    adc d
    ld a, a
    add e
    nop
    ld [hl], $c7
    ld [hl], h
    adc [hl]
    adc h
    and $1b
    add a
    ld c, a
    adc b
    rst $38
    add h
    add b
    ret


    db $f4
    adc e
    nop
    sub h
    jp $6ad0


    ld c, a
    adc e
    dec [hl]
    ld l, e
    ld [hl], h
    adc a
    inc c
    rst $20
    dec de
    add [hl]
    ld c, a
    adc d
    nop
    dec [hl]
    ld l, d
    ld [hl], h
    adc a
    add b
    and $db
    xor d
    ld c, a
    add a
    ld h, l
    xor $34
    adc l
    adc h
    add $00
    db $10
    add [hl]
    rrca
    adc e
    ld h, l
    db $ec
    or l
    ld l, [hl]
    ret nz

    xor $4f
    adc e
    ld h, l
    xor $01
    ld a, [c]
    nop
    ret nc

    ld l, d
    ld d, b
    ld l, e
    ld h, l
    db $ec
    ret nz

    db $db
    db $ec
    ld [hl+], a
    ld c, a
    adc d
    ld h, l
    xor $80
    push de
    nop
    dec de
    adc b
    ld c, a
    adc c
    ld h, l
    db $ed
    or h
    ld c, l
    nop
    rst $00
    db $db
    ld h, [hl]
    rst $08
    ld l, c
    dec a
    dec hl
    nop
    add hl, hl
    adc c
    ld b, h
    and l
    ld e, b
    ld b, d
    add b
    ld [$8804], a
    dec a
    ld h, $f3
    ld d, e
    ret nz

    adc b
    nop
    ld c, [hl]
    adc d
    adc $4a
    ret nz

    add sp, $02
    push af
    sbc d
    ld c, d
    sbc d
    jp nz, Jump_05d_674f

    db $fd
    inc hl
    nop
    ld a, e
    inc de
    add b
    jp hl


    call z, $f4e9
    db $ed
    ld h, h
    rst $00
    dec l
    inc bc
    inc l
    dec b
    xor b
    dec d
    nop
    ld c, $49
    add b
    jp hl


    dec l
    dec b
    db $ed
    ld l, c
    ldh [$2f], a
    sbc d
    xor e
    ld c, b
    add hl, hl
    ld a, b
    ld de, $6c00
    xor a
    sbc d
    or c
    or b
    di
    jp nc, $9af5

    xor a
    dec l
    dec bc
    add sp, -$14
    rra
    inc l
    nop
    add b
    di
    ld b, h
    sub l
    db $ec
    adc a
    sbc d
    xor l
    ret nz

    ld hl, sp-$3b
    xor a
    adc l
    dec d
    sbc b
    ret nc

    nop
    push bc

jr_05d_6a22:
    xor a
    ld [bc], a
    or $04
    sub e
    sub l
    jr nc, jr_05d_6a22

    rst $30
    inc b
    sub c
    push bc
    xor a
    ld [de], a
    add e
    nop
    xor b
    ldh a, [$98]
    ret nc

    dec h
    db $d3
    ld l, l
    or c
    sbc b
    db $d3
    ret c

    jp nc, Jump_05d_4f24

    ld e, l
    sub e
    nop
    and c
    ld h, [hl]
    ld de, $0781
    cp $98
    jp nc, Jump_05d_648b

    cp a
    call c, $6464
    db $ec
    or e
    nop
    adc l
    call c, $240b
    dec c
    xor l
    ld d, $dc
    and c
    rst $38
    ldh a, [rOBP1]
    ret nz

    rst $38
    push hl
    call c, $ff00
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
    ld [hl], e
    ld l, $dd
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
    or h
    ld de, $0000
    nop
    rst $38
    jr nz, jr_05d_6ac8

    jr nz, jr_05d_6ab6

    ld sp, $3131

jr_05d_6aad:
    inc [hl]
    rst $38
    ld d, [hl]
    ld d, a
    inc [hl]
    ld sp, $6031
    ld e, e

jr_05d_6ab6:
    ld e, d

Jump_05d_6ab7:
    push bc
    ld e, e
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $c0
    ldh [$0d], a
    ld sp, $31ff
    inc a
    ld b, h

jr_05d_6ac8:
    jr nc, jr_05d_6afa

    ld b, h
    inc a
    ld sp, $61d1
    jp nz, $c0e1

    rst $38
    ret nz

    db $eb
    ld [$e081], sp
    ld d, d
    jr nc, jr_05d_6aad

    rst $38
    ldh [rHDMA2], a
    ret nz

    rst $38
    add b
    pop af
    dec d
    ret nz

    pop hl
    ld l, h
    ld l, h
    sub d
    ret nz

    and $5a
    ret nz

    rst $38
    ld b, b
    jp hl


    nop
    ld [bc], a
    ldh [$c0], a
    pop hl
    ld l, l
    di
    jr nc, @+$55

    add b
    rst $38

jr_05d_6afa:
    ret nz

    db $f4
    inc a
    ld b, d
    ld l, b
    ld l, b
    rst $20
    ld l, l
    ld l, l
    add hl, sp
    ret nz

    rst $18
    add b
    di
    ld c, c
    ld b, d
    ld l, d
    rra
    ld l, b
    ld l, b
    ld l, d
    ld l, l
    ld d, c
    add c
    db $e4
    ret nz

    rst $38
    ld b, b
    db $ec
    ld a, a
    add hl, sp
    ld l, d
    ld l, d
    jr nc, jr_05d_6b4d

    ld l, d
    ld l, d
    add b
    pop hl
    ret c

    ret nz

    rst $38
    ld b, b
    call $c081
    ld d, d
    ld l, c
    add c
    pop bc
    ld l, c
    ld c, b
    ld b, a
    ld c, c
    ld sp, $c05f
    rst $18
    nop
    call $c081
    ld d, e
    add b
    db $e3
    jp nz, $c0ff

jr_05d_6b3e:
    ld e, [hl]
    rst $38
    jp nz, $ffca

    add sp, -$19
    add e
    and c
    ld d, d
    ld l, l
    jp nz, $e200

    ld l, l

jr_05d_6b4d:
    ld a, a
    push hl
    jp z, $e8ff

    rst $20
    add e
    and b
    ld sp, $3b53
    ld l, l
    ld l, l
    add b
    pop bc
    jr nc, jr_05d_6b8e

    ld d, b
    ld a, a
    ldh [$80], a
    rst $38

jr_05d_6b63:
    cp h
    db $eb
    ld [$a004], a
    xor h
    ld d, d
    jr nc, jr_05d_6bd9

    nop
    pop bc
    jr nc, jr_05d_6b63

    jr nc, jr_05d_6bc3

    ret nz

    rst $38
    ret nz

    ldh a, [$81]
    add e
    jr nc, jr_05d_6baa

    ld [c], a
    add b
    and c
    jr nc, jr_05d_6b3e

    call nz, $ffc0
    add b
    ld [$a9ac], a
    db $76
    adc l
    ld [hl], $01
    and c
    jr nc, jr_05d_6bbd

    ret nz

jr_05d_6b8e:
    pop bc
    add b
    rst $18
    ld b, b
    db $ed
    add c
    rst $38
    add b
    add b
    ld l, a
    ld l, [hl]
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    rrca
    ld b, [hl]
    ld c, l
    ld sp, $805f
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05d_6baa:
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

jr_05d_6bbd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05d_6bc3:
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

jr_05d_6bd9:
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

Jump_05d_6be4:
    rst $38
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
    ld hl, sp+$00
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
    jr nc, jr_05d_6cc7

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
    and h
    ld l, h
    call nc, $8a6c
    ld l, a
    ld e, h
    ld [hl], c
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

jr_05d_6cc7:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    push af
    dec bc
    rst $38
    and $0a
    ld hl, sp-$1a
    inc c
    ld c, h
    ld c, h
    inc c
    inc bc
    inc c
    inc c
    db $fc
    ldh [$f9], a
    pop hl
    ld hl, sp-$1e
    rst $30
    ld [c], a
    or $e8
    ei
    rst $20
    ldh [$c9], a
    and $ba
    add sp, -$40
    pop hl
    db $fd
    push hl
    or l
    db $e3
    ld c, h
    inc c
    inc l
    ld h, b
    or $e7
    ret nz

    db $eb
    add a
    ldh [$86], a
    ld [c], a
    add c
    db $e3
    dec hl
    dec hl
    ld [hl], a
    ldh [rNR23], a
    jp Jump_05d_7ee7


    ld [c], a
    or d
    pop hl
    inc l
    inc l
    or $e7
    ret nz

    xor $7e
    ld [$2b07], a
    ld a, [bc]
    ld a, [bc]
    call z, Call_05d_47e4
    db $e4
    ld b, b
    ld [c], a
    ret nz

jr_05d_6d25:
    ld [c], a
    or $e4
    inc a
    add b
    db $ed
    db $fd
    add $6b
    dec bc
    dec bc
    ld c, e
    cp a
    pop hl
    pop bc
    db $e4
    nop
    rlca
    ld [c], a
    ld b, b
    push hl
    ldh a, [$e3]
    and $c2
    ccf
    db $e4
    jr c, jr_05d_6d25

    rst $00
    push hl
    pop bc
    pop hl
    ld e, $c0
    pop hl
    ld c, e
    ld c, e
    dec hl
    ld c, e
    ret z

    jp $e4fa


    ccf
    db $e4
    cp b
    or $ed
    cp c
    push bc
    adc d
    pop bc
    ld l, e
    ld l, e
    dec hl
    rst $38
    ldh [rOCPD], a
    inc e
    add h
    ldh [$c0], a
    ldh [$2b], a
    ld c, e
    ld c, e
    jp z, $bde4

    push hl
    ld a, a
    jp c, $cdee

    ret nz

    dec bc
    dec hl
    ld c, e
    ret nz

    rst $20
    ld l, e
    ld c, e
    ld c, e
    sub b
    add b
    rst $00
    ld a, a
    ret


    dec [hl]
    add sp, -$40
    pop af
    ld l, e
    rst $00
    ldh [$c5], a
    ldh [$0b], a
    nop
    ld sp, hl
    pop hl
    rst $08
    and $fc
    and b
    dec [hl]
    call nz, $c6ad
    nop
    adc $80
    pop hl
    jp nz, Jump_000_0ae0

    ret nz

    db $e3
    ld c, e
    ret nz

    pop hl
    dec bc
    ld c, $c2
    cp $e4
    ld [hl], l
    rst $00
    ld l, e
    add $02
    ld b, b
    xor $0b
    ret nz

    pop hl
    pop bc
    ld [c], a
    cp h
    db $e3
    adc $c6
    jp z, $b6ce

    add $00
    cp e
    and [hl]
    call z, Call_05d_7fa1
    ld [c], a
    ld b, c
    pop hl
    dec sp
    ld [c], a
    add b
    and c
    ld b, $c6
    ld a, [hl-]
    and h
    nop
    ld hl, sp-$5b
    ret nz

    pop de
    ld a, a
    ld [c], a
    nop
    db $e4
    db $fc
    jp $c34c


    ret nz

    and l
    ld b, b
    call nz, $f660
    rst $20
    ret nz

    xor [hl]
    res 4, c
    add h
    ldh [$be], a
    call nz, Call_000_0b0b
    dec b
    and a
    db $10
    ld a, l
    jp $c6c4


    or l
    add e
    rst $38
    add b
    inc l
    rst $38
    ldh [$c0], a
    adc b
    ld a, [hl]
    ld [c], a
    nop
    add b
    jp $a000


    ld b, b
    db $e4
    ld b, c
    and l
    ld c, d
    add $bf
    adc b
    ret nz

    add sp, $47
    add c
    ld [$c17d], sp
    ret nz

    db $e4
    ld a, [hl-]
    and b
    dec hl
    add b
    adc b
    db $76
    pop af
    add c
    jp hl


    ld d, [hl]
    add sp, $00
    ld c, [hl]
    and $4c
    ret


    ld a, d
    jp hl


    ret nz

    and a
    ret nz

    db $eb
    db $dd
    ld h, a
    call $c166
    adc d
    add b
    rst $30
    xor h
    cp a
    ld l, e
    add l
    ld [$68cd], a
    pop bc
    add l
    or l
    adc d
    rst $28
    ld h, d
    inc l
    nop
    jp nz, $fac2

    ldh [$c0], a
    ld a, [c]
    sub l
    add a
    dec a
    ld h, d
    ld a, [$36e9]
    ld h, h
    ret nz

    db $eb
    nop
    ld l, d
    and a
    ld d, l
    call $a500
    ld a, e
    ld h, d
    rst $30
    xor b

jr_05d_6e57:
    ld a, a
    ld h, c
    cp a
    adc $cd
    ld l, d
    nop
    pop bc
    adc d
    db $fc
    jp hl


    or $43
    nop
    jp z, Jump_05d_45a6

    call $c16b
    add [hl]
    cp h
    add a
    nop
    rst $30
    xor b
    db $fd
    xor $c9
    and $c9
    ld h, l
    rlca
    db $ec
    or a
    ld l, d
    add b
    db $ec
    ret nz

    rst $08
    nop
    rst $00
    ld c, c
    ld bc, $3644
    ld c, d
    nop
    db $eb
    rst $38
    call Call_05d_454c
    nop
    jp z, Jump_05d_6ab7

    nop
    ld bc, $fea1
    xor d
    reti


    xor c
    sub $aa
    ld c, b
    ld b, d
    ld [$c0ee], a
    db $eb
    and e
    ld b, l
    nop
    call Call_000_3871
    dec h
    add c
    ld c, l
    pop bc
    jp hl


    jr nz, jr_05d_6e57

    call $ff6a
    ld b, l
    or a
    ld l, h
    nop
    ret nz

    ld [$66d5], a
    call $8870
    ld c, b
    ld_long $ffea, a
    adc a
    ld a, a
    adc e
    ld [$008b], sp
    ld b, c
    adc a
    ld b, b
    xor $59
    rst $00
    call Call_05d_466a
    and h
    or a
    ld l, h
    add c
    ld h, c
    ld a, [hl]
    ret


    nop

Jump_05d_6ed5:
    dec d
    ld c, a
    ld c, b
    ld c, e
    ld [hl], a
    dec c
    ld bc, $48cc
    jp nc, Jump_000_2808

    ld [hl], a
    ld c, $80
    ld h, e
    nop
    ld b, b
    call $ebcd
    ld c, b
    ld c, d
    ld [hl], a
    inc c
    add d
    xor h
    dec d
    ld d, c
    sub c
    call z, $1077
    nop
    ld b, b
    rst $08
    dec d
    ld c, d
    ld a, e
    bit 6, a
    dec c
    ld bc, $9fec
    ld c, a
    ld a, e
    jp z, Jump_000_0d77

    nop
    ld b, b
    ldh a, [rNR34]
    sub e
    add a
    ld h, l
    ret nz

    adc a
    rst $38
    rst $38
    db $fd
    ld b, a
    ret nz

    sub c
    rst $38
    rst $38
    nop
    sbc l
    dec b
    ld [hl], a
    dec d
    rst $38
    rst $38
    ld h, d
    ret c

    rst $38
    rst $38
    ld e, e
    add e
    adc [hl]
    ld h, h
    ret nz

    sbc e
    nop
    ld b, b
    rst $38
    ret nz

    adc a
    rst $38
    rst $38
    ld h, d
    rst $18
    rst $38
    rst $38
    ld b, b
    and $37
    ld [$ffff], sp
    nop
    ld [hl], e
    call nc, $898e
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    reti


    and a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    cp a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
    ld [hl], e
    nop
    nop
    nop
    dec d
    ld e, e
    rst $38
    and $5a
    ld hl, sp-$1a
    nop
    rst $38
    rst $38
    rst $20
    and $c9
    and $c0
    cp d
    add sp, -$36
    rst $38
    ret nz

    add sp, -$79
    ldh [$86], a
    ld [c], a
    add c
    ldh [$5c], a
    ld e, l
    add a
    ld h, d
    ld e, l
    ld e, h
    ld [hl], a
    ldh [$ca], a
    rst $38
    ret nz

    db $eb
    inc a
    db $e3
    ld e, h
    dec de
    ld e, l
    ld sp, $e1ff
    ld h, b
    ld e, d
    ret nz

    rst $38
    add b
    db $eb
    adc b
    pop hl
    ld a, [hl]
    rst $38
    ldh [$31], a
    ld sp, $5647
    ld d, [hl]
    ld b, a
    cp a
    pop hl
    db $fc
    jp z, Jump_05d_40ff

    ld [$3160], a
    ld b, a
    ld d, a
    ld d, a
    ld d, [hl]
    rst $38
    ld d, a
    ld d, [hl]
    ld b, [hl]
    ld [hl], $6d
    ld l, e
    ld [hl], $46
    and a
    ld b, a
    ld sp, $ca5f
    rst $38
    add sp, -$19
    ld e, d
    pop bc
    ldh [rOBP1], a
    ld a, a
    ld [hl], $69
    ld l, e
    ld l, e
    ld l, e
    jr nc, @+$32

    ei
    ldh [$9f], a
    ld l, c
    jr nc, jr_05d_703c

    ld c, c
    ld e, [hl]
    jp z, $c0ff

    ret


    ld h, c
    ld [hl], a
    ld sp, $3050
    ret nz

    add sp, $6d
    add hl, sp
    ld sp, $ffca
    ld a, [$ebc0]
    ld d, c
    ret nz

    ldh [$6d], a
    ld l, l
    ld l, h
    ld l, h
    ld l, l
    call $c06d
    pop hl
    ld c, b
    ld c, c
    jp z, Jump_05d_40ff

    ret


    ld e, [hl]
    ld sp, $49ef
    ld c, b
    jr nc, jr_05d_7092

    ret nz

    db $e3
    ld l, d
    jr nc, jr_05d_705d

    rst $20
    ld l, l
    ld l, l
    ld d, b
    jp z, Jump_000_00ff

    ret


    ld e, a
    ld sp, $df31
    add hl, sp
    jr nc, jr_05d_70a6

jr_05d_703c:
    ld l, d
    ld l, h
    rst $38
    ldh [rOCPS], a
    ld l, d
    and $c1
    ldh [$6d], a
    ld d, c
    jp z, $c0ff

    xor d
    ld e, [hl]
    ld sp, $0f4d
    ld [hl-], a
    jr nc, @+$32

    ld l, b
    rst $38
    ldh [$82], a
    pop hl
    ld b, b
    rst $38
    add b
    xor l
    ld b, b
    ld a, a

jr_05d_705d:
    ldh [$3e], a
    ldh [rIE], a
    ld [c], a
    add d
    ldh [$c0], a
    rst $18
    ret nz

    xor [hl]
    ld h, b
    ld a, $e1
    adc $c1
    db $e4
    ld b, h
    ld b, [hl]
    ld c, l
    ld b, b
    rst $18
    ret nz

    adc l
    ld e, [hl]
    ld sp, $aff7
    ld l, [hl]
    ld [hl], $c5
    pop bc
    ld [hl], $6e
    xor a
    ld sp, $c0fc
    cp a
    nop
    xor [hl]
    ld e, a
    ld sp, $80a1
    ld l, a
    ld a, l
    rst $38
    ld a, h
    ld a, l
    ld a, h
    ld l, a
    add b

jr_05d_7092:
    and c
    ld sp, $0060
    add b
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05d_70a6:
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
    db $f4
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
    jr nc, jr_05d_71bb

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
    sbc b
    ld [hl], c
    ret z

    ld [hl], c
    ld d, a
    ld [hl], e
    inc a
    ld [hl], l
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
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld e, e
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0116
    ret z

jr_05d_71bb:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $2508
    ld [$0825], sp
    dec h
    ld [$6b25], sp
    dec hl
    ld a, [bc]
    cp $e0
    dec bc
    rst $38
    and $2b
    dec hl
    pop af
    ld_long $ff1c, a
    rst $38
    pop bc
    db $e4
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [$bd], a
    db $e4
    jp z, Jump_000_00ff

    adc a
    add sp, -$3f
    db $e4
    jp z, $bde1

    pop hl
    cp h
    db $e3
    rst $38
    rst $38
    add b
    and $44
    pop hl
    inc c
    pop bc
    ldh [$3d], a
    ldh [rWX], a
    dec hl
    ld a, c
    ldh [$bb], a
    ldh [$cb], a
    rst $38
    db $ed
    db $ec
    ld [hl], l
    ld l, e
    ret


    ldh [$2b], a
    ld b, b
    ldh [$2b], a
    dec bc
    dec hl
    cp a
    ldh [rNR10], a
    cp h
    ldh [rIE], a
    rst $38
    jp nz, $c1ec

    ld [c], a
    ld c, e
    ld b, $e0
    or l
    ld [c], a
    call z, Call_000_04ff
    add e
    ld [$c081], a
    dec hl
    inc b
    ld [c], a
    ret nz

    rst $38
    ldh a, [$ef]
    ld c, e
    pop hl
    inc b
    pop hl
    db $10
    ret nz

    db $e4
    ccf
    pop hl
    ret nz

    rst $38
    ret nz

    db $eb
    dec bc
    rrca
    pop hl
    pop bc
    rst $20
    rst $38
    rst $38
    ld b, b
    ccf
    set 1, e
    and b
    set 4, l
    pop bc
    rst $38
    add e
    ret nc

    adc l
    and b
    dec hl
    ld bc, $00c2
    ld sp, hl
    ldh [$38], a
    jp nz, $ffff

    cp l
    xor h
    ld c, e
    and b
    jp Jump_05d_7ce9


    rst $38
    ld a, a
    rst $28
    add d
    ld a, l
    pop bc
    ld l, e
    ld b, b
    and e
    inc a
    rst $38
    ld bc, $47ec
    jp nz, $e6c9

    ld l, e
    ld bc, $6d2b
    and d
    rst $38
    rst $38
    ld b, b
    call nz, $818c
    call nz, $0581
    db $e3
    ld [hl], l
    and b
    nop
    add b
    sbc a
    cp a
    db $ed
    adc l
    add [hl]
    jp $fee0


    pop hl

jr_05d_7289:
    set 7, a
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
    db $10
    jp nz, $ffff

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
    ld b, b
    rst $38
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
    ld h, c
    ld [$ffdd], sp
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
    jr z, jr_05d_7289

    rst $38
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
    or c
    rlca
    cp c
    rst $18
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

jr_05d_732d:
    rst $38
    rst $38
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
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    dec bc
    nop
    nop
    nop
    cp e
    add hl, hl

jr_05d_7359:
    jr z, jr_05d_7359

    ldh [$2a], a
    dec hl
    ld bc, $e4ff
    dec hl
    push bc
    ld a, [hl+]
    rst $28
    ldh [rHDMA1], a
    rst $38
    rst $38
    rst $20
    and $c1
    pop hl
    ld l, $01
    ld a, a
    ld bc, $1617
    ld [hl+], a
    inc hl
    ld d, $17
    cp d
    pop hl
    rst $00
    jr nc, jr_05d_73a7

    ld a, [hl+]
    jp z, $e8ff

    rst $20
    pop bc
    db $e3
    inc c
    ld b, $1d
    nop
    rst $38
    ldh [rTMA], a
    inc hl
    ld [hl+], a
    cp h
    ld [c], a
    jp z, $80ff

    add sp, -$0a
    ld b, h
    pop hl
    add hl, de
    jr jr_05d_7359

    pop hl
    dec sp
    inc [hl]
    nop
    jr c, jr_05d_732d

    dec sp
    ld b, c
    ld b, e
    ld b, h
    ret nz

    rst $38
    jp hl


    add sp, $06

jr_05d_73a7:
    pop hl
    rla
    ld h, l
    ld [bc], a
    jp nz, Jump_000_3be1

    ret nz

    ldh [$bf], a
    pop hl
    inc a
    ld b, d
    jp z, $c4ff

    add sp, -$19
    dec b
    pop hl
    ld b, $c7
    ldh [$c1], a
    ldh [$c0], a
    pop hl
    scf
    dec sp
    rst $20
    dec sp
    ld a, $4a
    jp z, $c0ff

    add sp, $0c
    ld b, $37
    call $c000
    ld [$3d48], a
    jp z, $e8ff

    rst $20
    ccf
    ld c, b
    rst $18
    nop
    scf
    nop
    nop
    dec [hl]
    add c
    pop hl
    dec sp
    dec [hl]
    adc $40
    pop hl
    dec sp
    ld c, b
    ccf
    jp z, $e8ff

    rst $20
    dec a
    ld c, b
    sbc b
    dec bc
    ldh [$bf], a
    db $e3
    pop bc
    db $e3
    nop
    add hl, bc
    ret nz

    rst $18
    jp hl


    add sp, $4a
    cp d
    ret nz

    ldh [$3b], a
    cp a
    ldh [$33], a
    inc sp
    inc sp
    pop bc
    db $e3
    jr jr_05d_7425

    add hl, de
    ret nz

    rst $38
    jp hl


    add sp, $42
    ld a, $c6
    pop bc
    ld a, [hl]
    ldh [rIE], a
    and b
    adc $c3
    ret nz

    nop
    ld b, $0c

jr_05d_741f:
    nop
    rst $18
    add b
    jp z, Jump_05d_403d

jr_05d_7425:
    ld e, b
    ld b, [hl]
    ret nz

    db $fd
    ret nz

    ret nz

    pop hl
    nop
    ld b, $7c
    and c
    ld l, $ca
    rst $38
    or d
    ld b, b
    ret z

    ccf
    ld a, a
    pop hl
    ret nz

    ld [c], a
    ld b, [hl]
    ld b, a
    ld a, $a2
    ld l, $7c
    nop
    cp a
    jp hl


    add sp, $2c
    ld bc, $4542
    ld b, [hl]
    add b
    pop hl
    sub e
    ld b, [hl]
    ld b, l
    add [hl]
    and b
    pop bc
    ld [c], a
    jr z, jr_05d_741f

    rst $38
    add sp, -$19
    ld sp, $01df
    ld bc, $4344
    ld c, c
    rst $38
    ldh [$3c], a
    ld b, d
    ld h, b
    add b
    sbc a
    ret nz

    sub c
    add e
    add b
    cp [hl]
    pop hl
    add e
    ld [c], a
    dec hl
    ld a, [hl+]
    ld [hl-], a
    add c
    nop
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
    add sp, -$19
    ld bc, $dd5d
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld [hl], $30
    scf
    ld h, $20
    cpl
    daa
    db $10
    ld d, $17
    push de
    rst $28
    ld de, $e0ff
    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    nop
    nop
    nop
    ld h, l
    ld [hl], l
    sub l
    ld [hl], l
    inc c
    ld [hl], a
    xor $78
    db $ec
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $03ec
    di
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld c, b
    ld a, a
    ld e, a
    ld e, e
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0116
    ret z

    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $2508
    ld [$0825], sp
    dec h
    ld [$9d25], sp
    dec bc
    rst $38
    pop hl
    ld l, e
    ld l, e
    ld c, e
    rst $38
    pop hl
    db $f4
    ld [c], a
    dec hl
    db $e3
    dec hl
    ld a, [bc]
    db $ec
    ld [c], a
    rst $38
    rst $38
    and $e5
    ld l, e

Call_05d_75ab:
    ld l, e
    dec hl
    dec de
    dec hl
    ld l, e
    cp l
    db $e4
    ld c, e
    dec hl
    cp [hl]
    ldh [$cd], a
    rst $38
    ld [$83e9], a
    ld c, e
    dec bc
    jp nz, Jump_05d_7de1

    push hl
    ld a, d
    db $e4
    rst $38
    rst $38
    pop bc
    and $4b
    ld c, $82
    ldh [$2b], a
    dec hl
    dec hl
    add c
    db $e3
    ld [hl], l
    ldh [$bf], a
    rst $38

Call_05d_75d4:
    add d
    db $eb
    ld [bc], a
    ld c, $e0
    dec hl
    nop
    db $e3
    ld a, c
    pop hl
    ret nz

    rst $38
    ret nz

    ldh a, [rSC]
    db $e4
    ld a, d
    ldh [rP1], a
    or l
    ld [c], a
    jp z, $ffff

    rlc b
    ld [c], a
    ret nz

    ld [c], a
    ld hl, sp-$3d
    call $81ff
    jp z, $8a00

    ld [c], a
    ld b, h
    db $e3
    or a
    pop bc
    dec l
    pop hl
    rst $38
    rst $38
    add sp, -$19
    add $c1
    rlca
    ld [c], a
    nop
    cp c
    push hl
    call $c2ff
    jp hl


    ld c, [hl]
    ret nz

    rst $00
    jp $c5bd


    ld bc, $82df
    ld [$8800], a
    push hl
    ccf
    push bc
    call $beff
    pop af
    ld c, b
    pop bc
    pop bc
    rst $38
    pop bc
    sub $be
    jp nz, $8700

    push bc
    cp h
    rst $38
    nop
    ld [$e4c0], a
    ld a, [c]
    add a
    ret nz

    sbc a
    add b
    xor l
    or e
    adc c
    ld sp, $c10a
    rst $38
    ld bc, $74ab
    adc e
    ld a, [bc]
    ld a, [bc]
    ret nz

    cp a
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    push af
    nop
    nop

jr_05d_770b:
    nop
    rst $38
    add hl, hl
    ld l, $01
    ld bc, $4401
    ld d, $23
    rst $28
    ld [hl+], a
    inc hl
    ld d, $17
    or $e0

jr_05d_771c:
    jr nc, jr_05d_774e

    dec hl
    rst $00
    ld a, [hl+]
    jr z, jr_05d_7774

    rst $38
    rst $38
    rst $20
    and $c1
    ldh [rLY], a
    ld b, e
    db $db
    ld b, c
    nop
    rst $38
    ldh [$3b], a
    ld b, $bb
    ldh [$15], a
    inc b
    rst $20
    ld bc, $2e01
    jp z, $e8ff

    rst $20
    ld bc, $4201
    db $ed
    inc a
    pop bc
    ld [c], a
    nop
    dec sp
    rst $38
    ldh [$38], a
    nop
    inc d
    rst $20
    inc c

jr_05d_774e:
    ld bc, $ca01
    rst $38
    ret nz

    add sp, $42
    inc a
    ld c, d
    db $eb
    nop
    jr c, jr_05d_771c

    ld [c], a
    jr c, @+$01

    ldh [rP1], a
    jr c, jr_05d_7767

    reti


    dec e
    ret nz

    rst $38
    jp hl


jr_05d_7767:
    add sp, $3f
    inc a
    ret nz

    ldh [rP1], a
    jr c, jr_05d_770b

    add e
    db $e3
    add hl, sp
    ldh [$38], a

jr_05d_7774:
    nop
    add hl, bc
    ret nz

    rst $38
    jp hl


    add sp, $3d
    rst $00
    inc a
    inc a
    ld a, $c9
    pop hl
    ld b, e
    ld [c], a
    ld a, [hl]
    ld [c], a
    jr @+$1b

    cp h
    jp z, $e8ff

    rst $20
    ld c, d
    inc a
    inc a
    ld b, b
    adc b
    ld [c], a
    ld [hl], $09
    ld [hl], $43
    ldh [$f7], a
    jp nz, $ca1f

    rst $38
    add b
    jp hl


    ld b, c
    ldh [$fe], a
    push hl
    inc a
    ret nz

    rst $38
    nop
    ldh a, [$3e]
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld b, $e2
    pop bc
    pop bc
    and $37
    ret nz

    dec b
    dec e
    jp z, $e8ff

    rst $20
    ld c, h
    inc a
    ld b, b
    adc a
    inc sp
    inc sp
    dec [hl]
    dec sp
    cp l
    ret nz

    cp c
    ldh [$b7], a
    ld [c], a
    ld hl, $c0a4
    rst $18
    ret nz

    jp hl


    ld a, $08
    pop bc
    cp a
    ldh [$37], a
    ret nz

    ld [c], a
    ld a, [hl-]
    and a
    nop
    ld b, $0c
    ret nz

    rst $38
    ret nz

jr_05d_77dc:
    xor c
    jr nz, @-$36

    and c
    dec sp
    dec de
    dec [hl]
    add hl, sp
    ret nz

    db $e3
    ld [de], a
    dec d
    ld a, [hl-]
    and b
    jp z, $80ff

    xor b
    db $db
    ld c, $02
    add a
    and c
    inc [hl]
    add hl, sp
    ccf
    pop hl
    ld b, $22
    cp b
    add d
    and b
    ld b, b
    cp a
    ld [$2fe9], a
    ld bc, $bf1d
    pop hl
    inc [hl]
    jp $0639


    inc bc
    and b
    cp [hl]
    add c
    ret nz

    sbc a
    ret nz

    adc l
    dec e
    dec d
    jr c, jr_05d_77dc

    add c
    add d
    add c
    add e
    pop hl
    jr z, jr_05d_7844

    add hl, hl
    jp z, $e8ff

    rst $20
    nop
    ld b, b
    add d
    db $fd
    rst $20
    pop bc
    pop hl
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

jr_05d_7844:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $f4
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld [hl], $30
    scf
    ld h, $20
    cpl
    daa
    db $10
    ld d, $17
    push de
    rst $28
    ld de, $e0ff
    cp a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    nop
    nop
    nop
    rla
    ld a, c
    ld b, a
    ld a, c
    sub $7a
    xor e
    ld a, h
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
    dec hl
    ld a, [bc]
    dec bc
    rst $38
    ld [$f14b], a
    pop hl
    inc c
    rst $38
    rst $38
    rst $20
    and $f7
    dec bc
    dec bc
    ld l, e
    db $fd
    ldh [rOCPD], a
    ld c, e
    ld l, e
    ld c, e
    ld h, b
    rst $38
    pop hl
    ret nz

    ldh [$af], a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $0a
    ld l, e
    pop bc
    ldh [$f9], a
    dec bc
    call nz, $82e1
    ldh [rWX], a
    dec bc
    dec hl
    dec bc
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    jp z, $80ff

    jp hl


    dec hl
    ld a, [hl]
    pop hl
    call nz, $81e2
    pop hl
    ld b, b
    rst $38
    ret nz

    ret nz

    rst $28
    db $fc
    db $e3
    ld b, c
    pop hl
    or [hl]
    ld [c], a
    ret nz

    rst $38
    ld b, b
    ld [$0b2b], a
    ld d, e
    ld c, e
    dec hl
    cp h
    pop hl
    inc a
    pop hl
    dec hl
    call nz, Call_000_2ce1
    jp z, Jump_000_0eff

    add sp, -$19
    ld a, [bc]
    dec bc
    dec hl
    ret


    ldh [$c0], a
    ld [c], a
    ld bc, $c0e1
    rst $38
    ld [hl], b
    add b
    rst $28
    set 0, b
    ret nz

    db $e3
    ld [hl], l
    pop bc
    inc c
    inc c
    ld c, h
    set 7, a
    nop
    ret nz

    set 0, b
    pop hl
    add c
    jp nz, $c1b8

    ret nz

    rst $38
    ret nz

    pop af
    ld b, l
    jp nz, $e282

    db $10
    rst $38
    rst $38
    add b
    ret nc

    call nz, $c3a2
    ret nz

    ld l, h
    ret nc

    rst $38
    ret nz

    ret nc

    cp [hl]
    pop bc
    nop
    add e
    and d
    add c
    rst $38
    ret nz

    di
    cp a
    db $e3
    add l
    and b
    pop de
    db $e3
    add b
    rst $18
    ret nz

    xor l
    adc b
    nop
    ret nz

    cp d
    pop hl
    add b
    db $e3
    ld l, h
    ld a, [hl-]
    rst $38
    ret nz

    xor h
    ld a, l
    add h
    dec hl
    pop hl
    dec bc
    add l
    jp nz, $ffc1

    ld b, b
    xor $c0
    push hl
    dec bc
    inc l
    inc l
    nop
    ld b, d
    ret nz

    ld sp, hl
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
    db $f4
    nop
    nop
    nop
    rst $18
    ld e, d
    ld e, e
    ld e, e
    ld h, b
    ld sp, $e7ff
    ld e, a
    ld e, e
    ld a, [c]
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $5b
    ld e, e
    ld e, a
    ld sp, $31ff
    ld c, l
    ld a, [hl-]
    ld d, l
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    rra
    dec sp
    ld c, l
    ld sp, $5b5e
    xor a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, -$41
    ld e, d
    ld e, [hl]
    ld sp, $324d
    jr nc, @+$01

    db $e3
    ld [hl-], a
    ccf
    ld c, l
    ld sp, $5b60
    ld e, d
    ld e, d
    jp z, $80ff

    jp hl


    ld a, a
    ld h, c
    ld sp, $3039
    jr nc, @+$6e

    ld l, h
    cp l
    ld [c], a
    ccf
    add hl, sp
    ld sp, $6231
    ld h, d
    ld h, d
    jp z, $c0ff

    db $eb
    cp a
    ld d, e
    jr nc, @+$6f

    ld l, h
    ld l, h
    ld l, d
    ld a, h
    pop hl
    ld d, d
    ld a, b
    push af
    jp nz, $ffca

    ld b, b
    jp hl


    ld h, c
    ld sp, $6d52
    ret nz

    pop hl
    ld a, [hl]
    cp a
    pop hl
    ld d, d
    ld sp, $1429
    inc d
    add hl, hl
    jp z, $e2ff

    add sp, -$19
    ld e, d
    ld b, b
    ldh [$c0], a
    db $e4
    ld a, [hl]
    ldh [$39], a
    ld sp, $a72b
    inc h
    inc h
    dec hl
    jp z, $80ff

    db $eb
    ld d, e
    ret nz

    db $e4
    ld l, d
    ccf
    ld b, d
    scf
    ld sp, $2c2b
    jr nz, @-$33

    rst $38
    nop
    db $ed
    ld l, a
    ld l, l
    ld l, l
    jr nc, jr_05d_7ba6

    pop bc
    pop hl
    inc a
    ld sp, $ffc0
    ld [c], a
    add b
    ret nc

    ld d, d
    pop bc
    ldh [$bf], a
    ldh [$c1], a
    ldh [rNR11], a
    ld [de], a
    ld d, $f1
    jr nz, @-$3e

    rst $38
    ret nz

    xor $01
    jp Jump_000_3152


    dec d
    ld d, $b3
    jr z, jr_05d_7bb8

    ret nz

    rst $38
    ret nz

    adc $39
    ld l, h
    rst $38

jr_05d_7b9f:
    ld [c], a
    add hl, sp
    ld h, e
    ld sp, $c117
    pop hl

jr_05d_7ba6:
    ret nz

    rst $38
    add b
    call Call_000_36af
    cp a
    pop hl
    jp $af36


    inc bc
    pop hl
    ret nz

    ldh [$80], a
    rst $18
    add b

jr_05d_7bb8:
    xor h
    add c
    ld l, a
    cp a
    ld l, [hl]
    ld d, l
    ld d, h
    ld l, [hl]
    ld l, a

Jump_05d_7bc1:
    add c
    ret nz

    db $e3
    jr z, jr_05d_7b9f

    rla
    jp z, $c0ff

    xor e
    and b
    add b
    rst $38
    ld [c], a
    and b
    ld sp, $178d
    add b
    pop hl
    ld d, $15
    jp z, $c0ff

    xor e
    ret nz

    and $31
    rra
    dec bc
    ld a, [bc]
    dec b
    ld a, [bc]
    dec bc
    ld b, b
    cp a
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
    rst $38
    nop
    rst $38
    db $f4
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
    jr nc, jr_05d_7d0a

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

Jump_05d_7ce9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_05d_7d0a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05d_7d70:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05d_7de1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_05d_7ee7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05d_7f10:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05d_7fa1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_05d_7fd5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
