INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $057", ROMX[$4000], BANK[$57]

    inc e
    ld b, b
    db $dd
    ld b, e
    xor d
    ld b, a
    ld h, e
    ld c, e
    ld l, b
    ld d, b
    rst $10
    ld d, h
    ld a, [de]
    ld e, c
    cp c
    ld e, l
    or d
    ld h, c
    ld [hl+], a
    ld h, [hl]
    ld a, c
    ld l, d
    push hl
    ld l, a
    ld h, h
    ld [hl], h
    ld [hl+], a
    ld a, c
    inc h
    ld b, b
    ld d, h
    ld b, b
    ret nc

    ld b, c
    xor c
    ld b, e
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

Jump_057_4043:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [hl], e
    ld a, [bc]
    dec bc
    rst $38
    ldh [$fb], a
    ld [c], a
    dec bc
    dec hl
    dec hl
    push af
    pop hl
    jp nz, $e0ef

    inc c
    rst $38
    rst $38
    rst $20
    and $c6
    ld [c], a
    ei
    push hl
    dec hl
    dec hl
    ldh a, [$c1]
    pop hl
    ret nz

    rst $38
    ret nz

    jp hl


    ld a, a
    ldh [rWX], a
    dec bc
    dec hl
    ld l, e
    inc bc
    ld l, e
    ld c, e
    rst $38
    ldh [$7b], a
    pop hl
    ld [hl], d
    ldh [$ca], a
    rst $38
    add sp, -$19
    pop bc
    jp hl


    ld h, b
    cp l
    ld [c], a
    dec sp
    ldh [$ca], a
    rst $38
    ld b, b
    db $ec
    pop bc
    push hl
    dec bc
    dec hl
    ld a, h
    ldh [$29], a
    ld c, e
    ret nz

    rst $38
    add b
    ld [$c16b], a
    ldh [$0b], a
    ld b, h
    ld [c], a
    cp l
    ret nz

    ld b, c
    ld l, e
    cp [hl]
    pop hl
    jp z, $c0ff

    ret


    ret nz

    ldh [rDMA], a
    db $e4
    dec hl
    ld hl, sp-$40
    adc b
    ld a, a
    pop hl
    jp z, $80ff

    ret z

    ld l, e
    ccf
    ret nz

    ret nz

    and $3f
    ldh [$2b], a
    nop
    ret nz

    rst $38
    ret nz

    db $ec
    ld b, d
    ldh [rSCX], a
    db $e4
    or a
    pop hl
    ld b, b
    rst $18
    nop
    call z, $e14c
    nop
    ld b, e
    db $e4
    di
    and h
    jp z, Jump_000_00ff

    db $eb
    ld b, e
    and $c0
    rst $38
    ret nz

    jp nc, $e443

    ld h, b
    ld [hl], l
    and [hl]
    jp z, Jump_057_40ff

    xor c
    add [hl]
    call nz, $e5c5
    inc l
    inc l
    set 7, a
    nop
    nop
    xor e
    dec b
    jp $e587


    ret nz

    rst $38

Jump_057_40ff:
    ret nz

Call_057_4100:
    sub [hl]
    jp nz, $c0e2

    rst $38
    add b
    sub l
    nop
    pop bc
    db $e4
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

Jump_057_4180:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    nop
    nop
    nop
    di
    ld e, d
    ld e, e
    rst $38
    ldh [$fb], a
    ldh [$5c], a
    ld e, l
    ld sp, $095d
    ld e, h
    push af
    pop hl
    rst $28
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $c1
    pop hl
    jp nz, $86e2

    rst $38
    pop hl
    ld e, l
    ld e, h
    pop bc
    pop hl
    ret nz

    rst $38
    ret nz

    jp hl


    ld a, a
    pop hl
    ld h, b
    rst $38
    ld sp, $3a4d
    ld d, h
    ld d, l
    dec sp
    ld c, l
    ld sp, $3187
    ld h, d
    ld h, b
    ld [hl], d
    ldh [$ca], a
    rst $38
    add sp, -$19

Jump_057_420b:
    pop bc
    db $e4
    ld [hl-], a
    ccf
    ld l, l
    ld l, h
    ld l, h
    ld l, l
    ld c, d
    ld d, h
    cp l
    ldh [$bf], a
    ldh [$f8], a
    jp z, Jump_057_40ff

    ld [$e1c1], a
    jr nc, @+$6d

    ld l, d
    ld l, b
    ld l, d
    ld a, a
    ld l, d
    jr nc, jr_057_4293

    ld c, d
    inc a
    ld sp, $c05f
    rst $38
    ld a, d
    add b
    ld [$c15f], a
    pop hl
    jr nc, @+$6d

    ld l, c
    jr nc, @+$01

    ldh [$9f], a
    ld l, c
    ld l, e
    dec [hl]
    ld c, l
    ld e, [hl]
    ret nz

    rst $38
    ret nz

    jp z, $e35e

    ld sp, $4339
    pop hl
    add e
    ldh [$7d], a
    ldh [rOCPD], a
    jr nc, jr_057_428b

    di
    ld sp, $ca5f
    rst $38
    add b
    ret z

    ld e, a
    ld sp, $5231
    inc a
    ld b, e
    db $e4
    db $fc
    pop bc
    jr nc, @+$54

    ld sp, $ca5e
    rst $38
    ld b, b
    ret z

    rst $08
    ld e, [hl]
    ld sp, $354d
    ld b, e
    push hl
    dec a
    pop hl
    add hl, sp
    ld sp, $3179
    jp z, $e8ff

    rst $20
    ld h, b
    ld sp, $3931
    ld b, e
    rst $20
    ld b, a
    jr nc, jr_057_42ba

    ld b, [hl]
    dec sp
    ret nz

    jp z, $e8ff

    rst $20

jr_057_428b:
    ld sp, $e081
    adc [hl]
    ld b, e
    and $36
    ld b, [hl]

jr_057_4293:
    ld b, a
    cp b
    and c
    jp z, $e8ff

    rst $20
    and h
    jp Jump_000_39a4


    ld b, e
    push hl
    jp nz, $c0e4

    rst $38
    ld [$80e9], a
    add b
    di
    ld [hl], d
    ld b, d
    add [hl]
    jp nz, $e384

    ld de, $1412
    inc d
    ld sp, hl
    inc d
    jp z, $c0ff

    jp hl


    add b

jr_057_42ba:
    ld [hl], d
    ld d, l
    ld d, l
    ld d, h
    ei
    ld d, h
    ld [hl-], a
    jp nz, Jump_000_21e3

    ld [hl+], a
    inc h
    inc h
    inc h
    add sp, -$36
    rst $38
    ret nz

    ld [$e2fd], a
    and c
    cp a
    add b
    add hl, hl
    ld hl, $7122
    jr nz, @+$01

    pop hl
    jp z, $c0ff

    ld a, [c]
    add hl, hl
    ld hl, $c128
    ld [c], a

Jump_057_42e2:
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_057_4408

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
    push hl
    ld b, e
    dec d
    ld b, h
    and b

Jump_057_43e2:
    ld b, l
    db $76

Jump_057_43e4:
    ld b, a
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

jr_057_4408:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $20
    ld a, [bc]
    dec bc
    dec bc
    db $fd
    ldh [$fe], a
    pop hl
    dec hl
    dec hl
    ld c, e
    inc b
    rst $38
    pop hl
    rst $28
    ldh [$0c], a
    rst $38
    rst $38
    rst $20
    and $c2
    push hl
    cp [hl]
    and $b0
    ldh [$08], a
    jp z, $c0ff

    add sp, -$7d
    ld [c], a
    ld l, e
    add l
    pop hl
    ld a, d
    db $e4
    add b
    rst $38
    ret nz

    xor $9f
    ld l, e
    dec bc
    dec bc
    ld c, e
    ld c, e
    cp h
    pop hl
    ld [hl], $e1
    ld c, e
    inc b
    ret nz

    rst $38
    ld b, b
    ld [$c16b], a
    ldh [$81], a
    db $e3
    nop
    ld [c], a
    ret nz

    rst $38
    db $eb
    ld [$0a61], a
    add e
    ldh [$86], a
    db $e3
    pop bc
    jp nz, $c0bb

    dec bc
    ld c, e
    jp z, Jump_000_00ff

    ret nz

    add sp, -$7f
    pop hl
    ld a, a
    jp nz, $e4c1

    ret nz

    rst $38
    add b
    bit 0, c
    ldh [$cd], a
    ret nz

    nop
    pop bc
    and $c0
    rst $18
    ld b, b
    call z, $e0d0
    call $83e0
    jp nz, $e4c1

    ret nz

    rst $38
    ret nz

    ret nz

    xor $42
    jp $e084


    ld [hl], l
    ld [c], a
    jp z, $80ff

    ld [$6b2b], a
    jp nz, $c201

    ld c, e
    inc b
    jp nz, $c133

    jp z, $80ff

    ret z

    ld a, [bc]
    dec hl
    inc bc
    dec hl
    dec hl
    pop bc
    xor b
    db $f4
    and c
    jp z, Jump_057_40ff

    xor c
    ld c, e
    ldh [rSC], a
    jp $c500


    and c
    dec [hl]
    ldh [$c0], a
    rst $38
    add b
    db $eb
    cp a
    pop hl
    cp a
    call nz, $a237
    nop
    cp a
    nop
    ret nz

    adc e
    ld a, a
    ldh [rIE], a
    add sp, -$43
    pop bc
    jp z, $80ff

    xor c
    cp a
    db $eb
    cp c
    pop bc
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

Jump_057_4546:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_057_458e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30

Call_057_45a1:
    ld e, d
    ld e, e
    ld e, e
    db $fd
    ldh [$5c], a
    ld e, l
    ld sp, $2731
    ld e, l
    ld e, h
    ld e, e
    rst $38
    pop hl
    rst $28
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $0e
    jp nz, Jump_057_5be1

    ld h, b
    ld sp, $e2ff
    cp [hl]
    push hl
    jp z, $c0ff

    add sp, -$42
    pop bc
    ld [c], a
    inc a
    ld d, l
    ld d, h
    dec sp
    ld c, l
    cp e
    ldh [$62], a
    pop hl
    ld h, d
    ld a, d
    pop hl
    jp z, $c0ff

    ld [$e0c1], a
    ld b, d
    jr nc, jr_057_4647

    ld e, a
    ld l, d
    ccf
    ld d, h
    ld a, [hl-]
    ld b, a
    ld a, b
    pop hl
    ld e, a
    ret nz

    rst $38
    cp $40
    ld [$315f], a
    ld c, l
    dec [hl]
    ld l, b
    ld l, b
    ld l, d
    rst $38
    jr nc, @+$32

    jr nc, @+$6c

    ld [hl], $54
    ld d, h
    inc a
    di
    ld sp, $c05e
    rst $38
    jp hl


    add sp, $5a
    ld e, e
    ld e, [hl]
    ld sp, $39cf
    ld l, b
    ld l, b
    ld l, b
    pop bc
    pop hl
    rst $38
    ldh [$30], a
    dec [hl]
    rlca
    ld c, l
    ld sp, $ca5f
    rst $38
    ret nz

    add sp, -$7f
    pop hl
    add h
    ldh [$c1], a
    db $e4
    rra
    jr nc, jr_057_468c

    add hl, sp
    ld sp, $ca5e
    rst $38
    add b
    ret z

    add c
    ldh [$3d], a
    ld l, c
    pop bc
    add sp, $30
    ld d, d
    ld sp, $ca31
    rst $38
    ld b, b
    ret z

    scf
    ld h, c
    ld sp, $c052
    ld [c], a
    ld l, c
    ld l, c
    cp c
    ldh [$fa], a
    ret nz

    ld a, b
    add b
    rst $38
    add b

jr_057_4647:
    db $ed
    ret nz

    add sp, $69
    jr nc, jr_057_4683

    scf
    nop
    rst $38
    adc $c0
    xor d
    ld e, a
    ld sp, $0839
    ld [c], a
    inc bc
    pop hl
    jr nc, jr_057_46c5

    rst $08
    ld [hl-], a
    ld b, a
    ld sp, $8060
    rst $18
    add b
    ret


    ld e, d
    ld e, [hl]
    rst $30
    ld c, l
    ld [hl-], a
    ld l, d
    ld b, b
    ret nz

    ld l, d
    ld [hl], $55
    ld d, h
    rst $00
    ld d, h
    ld a, [hl]
    xor a
    pop bc
    ldh [$c0], a
    rst $38
    nop
    ret nc

    ld [hl], $7e
    adc e
    ld [hl], h
    add b
    rst $38
    ldh [$81], a

jr_057_4683:
    pop bc
    and b
    ret nz

    rst $38
    add b
    ld [$f95a], a
    ld e, [hl]

jr_057_468c:
    ld b, c
    and b
    jp nz, $80e3

    add b
    xor b
    xor h
    ld e, [hl]
    jr jr_057_4697

jr_057_4697:
    cp a
    ret nz

    adc e
    ld a, a
    and b
    ld sp, $c2a0
    db $e3
    ld a, a
    ld [c], a
    nop
    rst $38
    ld a, b
    add b
    xor e
    ld a, a
    pop hl
    ret nz

    rst $20
    xor [hl]
    ld [hl], b
    ld sp, $ca60
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38

jr_057_46c5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

Jump_057_473a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_057_47d5

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
    or d
    ld b, a
    ld [c], a
    ld b, a
    ld d, a
    ld c, c
    cpl
    ld c, e
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

jr_057_47d5:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, e
    ld a, [bc]
    dec bc
    rst $38
    jp hl


    dec hl
    dec hl
    pop af
    pop hl
    inc c
    rst $38
    rst $38
    jr @-$17

    and $c1
    ld [$e1be], a
    ld a, [bc]
    ld a, [bc]
    ret nz

    rst $38
    ret nz

    jp hl


    ld a, a
    db $e3
    inc sp
    ld l, e
    ld c, e
    rst $38
    db $e3
    ld a, l
    ldh [$0b], a
    ld a, [bc]
    jp z, $e8ff

    rst $20
    add $40
    pop hl
    ld l, e
    ld l, e
    ret z

    ldh [$38], a
    ld [c], a
    cp a
    pop hl
    ld c, e
    dec hl
    inc c
    jp z, Jump_057_40ff

    ld [$6b6b], a
    ld a, [bc]
    ld [c], a
    cp a
    push hl
    ret nz

    rst $38
    nop
    db $eb
    sub h
    pop bc
    ldh [$c0], a
    rst $20
    dec bc
    ld a, $e0
    ld a, [hl+]
    jp z, $c0ff

    ret z

    dec hl
    nop
    pop bc
    ldh [$c0], a
    add sp, $7f
    ret nz

    add b
    rst $38
    add b
    jp z, $e0c1

    ret nz

    jp hl


    ccf
    ldh [rP1], a
    jp z, $80ff

    jp hl


    ret nz

    db $eb
    ccf
    ldh [$c0], a
    rst $38
    jp hl


    add sp, -$3f
    ld [c], a
    ret nz

    jp hl


    ld b, b
    cp [hl]
    and b
    jp z, $c0ff

    db $ec
    ld a, l
    xor d
    ret nz

    rst $38
    nop
    jp z, Jump_057_4b2b

    and e
    ret nz

    cp $a3
    cp d
    and b
    ret nz

    rst $38
    add b
    call z, $c6c8
    ret nz

    and d
    ld l, e
    ld l, e
    inc b
    ret nz

    rst $38
    add b
    xor d
    ld a, [bc]
    ld c, b
    and l
    cp e
    and e
    or h
    and c
    jp z, Jump_000_00ff

    xor [hl]
    nop
    ld b, $a3
    ld [hl], h
    add h
    jp z, Jump_000_00ff

    xor e
    add a
    and h
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    nop
    nop
    nop
    cp e
    ld e, d
    ld e, e
    rst $38
    ldh [$5c], a
    ld e, l
    ld h, d
    rst $38
    db $e3
    ld e, l
    ld b, l
    ld e, h
    pop af
    pop hl
    nop
    rst $38
    rst $38
    rst $20
    and $c2
    ld [c], a
    ld sp, $e7ff
    ld h, a
    ld h, b
    ld e, d
    ld e, d
    ret nz

    rst $38
    ret nz

    jp hl


    ld e, d
    ld h, b
    jp nz, Jump_057_77e0

    inc [hl]
    ld a, [hl-]
    ld d, h
    rst $38
    ldh [rHDMA5], a
    ld b, [hl]
    ld c, l
    cp a
    ldh [$e3], a
    ld e, e
    ld e, d
    jp z, $e8ff

    rst $20
    pop bc
    pop hl
    ld c, l
    dec sp
    ccf
    ld d, a
    ld l, h
    ld l, h
    jr nc, @+$01

    pop hl
    ld [hl-], a
    cp a
    ldh [$5f], a
    add b
    rst $38
    db $fc
    jp hl


    add sp, -$3f
    pop hl
    ld [hl-], a
    ld l, l
    ld l, h
    ld l, h
    ld l, h
    ld l, l
    dec b
    ld l, l
    cp a
    db $e4
    ld e, [hl]
    ret nz

    rst $38
    jp hl


    add sp, -$3f
    ld [c], a
    ret nz

    db $e3
    cp [hl]
    ld [c], a
    and a
    add hl, sp
    ld sp, $4061
    rst $38
    ret nz

    jp hl


    ld a, $c1
    ldh [$6d], a
    rst $20
    ld l, b
    ld l, b
    ld l, b
    ret nz

    pop hl
    ld a, l
    ldh [rHDMA2], a
    ld sp, $5461
    add b
    rst $38
    add b
    jp hl


    ld d, d
    add a
    ldh [rOCPS], a
    ret nz

    ldh [rOCPS], a
    cp a
    db $e3
    ld c, a
    dec [hl]
    ld c, l
    ld sp, $ca5f
    rst $38
    ld b, b
    add sp, $39
    pop bc
    ldh [$c8], a
    ret nz

    ld [c], a
    cp a
    ld [c], a
    ccf
    pop hl
    ld e, [hl]
    jp z, $e8ff

    rst $20
    ld e, [hl]
    ld c, l
    adc a
    ld [hl-], a
    ld l, d
    ld l, d
    ld l, d
    add e
    ret nz

    ld a, [$fde0]
    jp nz, $1353

    ld sp, $ca61
    rst $38
    add sp, -$19
    ld e, a
    add c
    ret nz

    pop bc
    pop hl
    cp a
    push hl
    jp nc, $c0ff

    ld sp, $ffca
    nop
    ret z

    ld e, [hl]
    ld bc, $55c0
    ld d, h
    rst $38
    ld d, l
    ld b, d
    jr nc, jr_057_4a54

    ld l, c
    ld l, c
    ld l, c
    ld l, e
    sbc a
    ld l, e
    ld l, e
    ld d, d
    and h
    and h
    jp z, Jump_057_40ff

    xor b
    ld e, a
    or $43
    and e
    inc a
    ld b, d
    ret nz

    db $e3
    ld b, d
    ld [hl], d
    add b
    add b
    db $f4
    jp z, $80ff

    xor b
    ld e, d
    jp Jump_000_3182


    ld sp, $4647
    ld b, $7a
    ldh [rHDMA5], a
    ld d, h
    pop bc
    ldh [$c0], a
    rst $38
    nop

jr_057_4a54:
    xor d
    ld a, a
    add c
    cp h
    add d
    add c
    and c
    push bc
    ldh [$fd], a
    ld [c], a
    jp z, Jump_000_00ff

    xor b
    pop bc
    ld [c], a
    dec sp
    add b
    ld h, b
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_057_4b2b:
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
    jr nc, jr_057_4b8e

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
    ld l, e
    ld c, e
    sbc e
    ld c, e
    ld c, h
    ld c, [hl]
    inc [hl]
    ld d, b
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

jr_057_4b8e:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld a, l
    inc c
    rst $38
    db $e4
    ld c, h
    ld c, h
    ld c, h
    inc l
    dec bc
    rst $38
    ldh [rIF], a
    ld a, [bc]
    dec bc
    ld c, e
    dec bc
    ld a, [c]
    ldh [$ef], a
    pop hl
    ld [$f5e1], a
    pop hl
    inc h
    rst $30
    pop hl
    db $fd
    ld_long a, $ff6c
    ldh [$c0], a
    ldh [$6c], a
    ret nz

    pop hl
    cp h
    pop hl
    ret nz

    push bc
    db $e3
    rst $00
    ldh [$fd], a
    db $e3
    cp d
    db $e3
    db $fc
    db $e3
    ret nz

    or $0c
    dec bc
    dec c
    inc c
    add c
    ldh [$2b], a
    dec hl
    ld a, h
    pop hl
    ld l, a
    db $e4
    cp l
    db $e3
    cp a
    ld [c], a
    ld b, b
    rst $30
    push hl

Jump_057_4be2:
    db $76
    rst $28
    ld d, [hl]
    ldh [$81], a
    ldh [$86], a
    push hl
    cp [hl]
    ld [c], a
    ld a, [bc]
    ld b, l

jr_057_4bee:
    pop hl
    add b
    ld a, $e3
    or $e3
    inc h
    ldh [$b6], a
    db $e3
    ld b, h
    pop af
    ld b, d
    ldh [$08], a
    ldh [rOCPD], a
    dec de
    ld l, e
    ld c, e
    rst $38
    db $e4
    dec bc
    dec hl
    ld b, b
    ldh [$3f], a
    and $c0
    db $e4
    inc b
    pop af
    jp $c4f7


    inc l
    ld sp, hl
    ld [$e145], a
    pop bc
    ldh [rDIV], a
    push hl
    cp a
    pop hl
    ld b, b
    ret nz

    call z, $c6b1
    ld a, a
    di
    ret


    ret nz

    pop bc
    pop hl
    add l
    pop hl
    ld c, e
    cp a
    pop hl

jr_057_4c2c:
    jr nc, jr_057_4bee

    ret nc

    jp nz, $c6d9

    ret nz

    pop bc
    db $e4
    ld c, e
    ld l, e
    ret nz

    pop hl
    ld a, [hl]
    ldh [$78], a
    ret nz

    adc $83
    call nz, $d1fe
    ld l, h
    inc l
    inc l
    dec bc
    pop bc
    push hl
    nop
    add d
    jp $c340


    ret nz

    rst $18
    ret nz

    rst $20
    ld [$43e2], sp
    pop bc
    ld b, d
    ret nz

    dec sp
    pop hl
    nop
    ret nz

    call z, $c681
    ld a, [hl]
    pop de
    adc d
    and e
    ld b, l
    call nz, $e480
    add b
    xor l
    rst $38
    rst $20
    ld [$c681], sp
    ld a, h
    call nz, $a048
    ld l, h
    ld b, c
    pop hl

jr_057_4c74:
    pop bc
    ld [$ad80], a
    ld a, l
    xor b
    jr nz, jr_057_4c74

    and $2d
    and a
    adc d
    and c
    adc b
    pop bc
    add d
    push hl
    ld l, e
    rst $28
    add [hl]
    add b
    and [hl]
    ld [$a3c0], sp
    inc l
    and a
    pop bc
    db $eb
    ld l, e
    call nz, Call_057_45a1
    and l
    ld b, h
    and d
    ret nz

    rst $08
    inc b
    dec [hl]
    xor c
    xor b
    add c
    inc l
    rst $38
    ldh [$81], a
    db $e4
    push bc
    and d
    adc c
    and c
    ret nz

    rst $20
    jr nz, jr_057_4c2c

    adc a
    or $89
    ld h, e
    add c
    ret nz

    rst $20
    add [hl]
    and h
    ld c, e
    push bc
    add $18
    push bc

jr_057_4cba:
    ld [$8880], sp
    ld a, h
    call nz, $c5bd
    ld c, h
    add c
    add sp, -$6c
    di
    add a
    add $49
    ret


    nop
    ld a, [$c0e8]
    add sp, -$6c
    pop af
    add h
    jp z, $8487

    cp e
    add sp, -$50
    ld l, a
    inc d
    add a
    jr nz, jr_057_4cba

    add sp, -$3b
    push hl
    ld a, a
    ld h, l
    rst $28

Jump_057_4ce3:
    ld h, a
    jp nz, Jump_000_2cc1

    ld a, c
    add h
    ld d, h
    xor e
    nop
    ld e, e
    add sp, $4e
    call nz, $e947
    or b
    ld h, l
    ret nz

    db $eb
    inc d
    adc e
    ld d, b
    db $e3
    di
    push hl
    nop
    or a
    and $2d
    ld h, h
    ld a, d
    and l
    cp a
    jp z, $c6e5

    dec de
    jp z, $c84a

    dec sp

Call_057_4d0c:
    adc e
    ld bc, $c04c
    ld h, b
    ld a, a
    res 4, b
    push bc
    ld d, c
    adc a
    add c
    and [hl]
    cp l
    add a
    ei
    ld d, d
    nop
    ret nz

    jp z, $ab47

    dec sp
    xor e
    ld bc, $40e2
    db $ed
    sbc a
    xor c
    ld c, b
    ld [$c76a], a
    nop
    cp e
    xor c
    ld b, b
    db $ec
    push hl
    jp z, $cbd8

    xor d
    add sp, $1e
    rst $00
    ld b, c
    and d
    inc bc
    rlc b
    call $cee9
    ld b, a
    adc a
    ret


    add c
    xor d
    ret nz

    db $eb
    and l
    xor d
    ld c, e
    xor c
    ld c, $45
    nop
    add c
    xor a
    pop bc
    ld [$ac80], a
    jp $fbea


    ld l, d
    ld e, h
    and a
    ret nz

    db $ec
    dec d
    jp z, $c700

    ld c, d
    or h
    ret


    ld a, [hl-]
    dec [hl]
    ret nz

    call z, Call_057_458e
    adc h
    xor [hl]
    add c
    xor c
    push bc
    adc c
    nop
    ld b, b
    xor h
    ld d, d
    inc b
    call z, $678b
    db $e4
    dec hl
    ld bc, $6187
    jp $be80


    rlc b
    ret c

    bit 1, d
    ld a, [hl+]
    add h
    ld [$84c4], sp
    pop bc
    xor [hl]
    dec h
    adc d
    add e
    ret


    cp e
    jr z, jr_057_4d95

jr_057_4d95:
    xor l
    dec h
    ld [$c262], sp
    adc e
    sub h
    ld c, l
    adc l
    db $ed
    cp e
    dec h
    ld a, $26
    add d
    adc h
    nop
    add b
    call z, Call_057_6b15
    ld b, [hl]
    ld h, a
    db $ec
    ld b, h
    add e
    ld [hl], c
    ld c, l
    xor e
    pop de
    rlca
    ld c, h
    ld l, h
    nop
    ld a, [hl+]
    dec b
    ld bc, $b3f2
    or h
    and $ab
    ret nz

    pop af
    rst $28
    dec c
    ld [de], a
    ld c, c
    ld b, $4b
    nop
    ld b, c
    ld a, [c]
    or e
    cp c
    db $f4
    db $eb
    ld a, [hl]
    inc d
    db $76
    ld sp, hl
    ret nz

    ld h, $c0
    ret c

    cp l
    db $fc
    nop
    xor c
    ld b, [hl]
    ret nz

    rst $00
    rst $38
    rst $38
    sbc e
    ld [hl+], a
    and $87
    pop bc
    dec h
    add b
    rst $38
    ret nz

    ld [$e700], a
    add [hl]
    ld a, h
    adc d
    rst $38
    rst $38
    ld h, $8c
    ld b, c
    and l
    add hl, sp
    jr z, @+$01

    rst $38
    and $49
    nop
    ret nz

    add sp, -$01
    rst $38
    di
    call nc, $b9cd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    reti


    nop
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, $53
    nop
    nop
    nop
    db $fd
    jr nz, @+$01

    db $e4
    inc h
    inc h
    inc h
    dec hl
    ld sp, $7f61
    ld e, e
    ld e, e
    ld e, d
    ld e, e
    ld e, e
    ld e, e
    nop
    rst $38
    rst $38
    db $fc
    rst $20
    and $c0
    ld [c], a
    db $10
    ld [hl+], a
    ld hl, $1414
    inc d
    pop hl
    add hl, hl
    ret nz

    pop hl
    cp $e1
    jp z, $c0ff

    db $eb
    ld [hl+], a
    ld hl, $ff12
    ld de, $3104
    inc b
    ld sp, $3131
    ld e, l
    add hl, sp
    ld e, h
    ret nz

    rst $38
    add b
    xor $22
    ld [de], a
    ld de, $e0c5
    db $fd
    db $e4
    or d
    cp [hl]
    ldh [$5a], a
    jp z, Jump_057_40ff

    jp hl


    jr z, @+$19

    add a
    ldh [rKEY1], a
    rst $30
    dec sp
    ld d, h
    ld d, l
    cp $e0
    ld d, h
    dec sp
    ld c, l
    ld sp, $60d9
    add b
    rst $38
    nop
    ld [$1516], a
    pop bc
    ldh [$32], a
    jr nc, jr_057_4ec0

    rst $38
    ld [c], a
    ld l, d
    ld l, l
    ld [hl-], a
    cp a
    ldh [$ca], a
    rst $38
    ret nz

    ret z

    add c
    pop hl
    ld l, [hl]

jr_057_4ec0:
    pop bc
    pop hl
    ld l, b
    ld l, b
    ld l, b
    cp a
    db $e3
    ld a, $31
    jp z, $a8ff

    add b
    ret z

    add c
    ldh [$82], a
    pop hl
    ld l, d
    ret nz

    ldh [rOCPS], a
    ld a, [hl]
    pop hl
    ld l, e
    di
    ld [hl], $49
    jp z, $e8ff

    rst $20
    db $10
    dec hl
    ld bc, $fd31
    add hl, sp
    ld b, a
    ldh [rOCPS], a
    ld l, h
    ld l, h
    ld l, l
    ld l, c
    ld l, c
    rst $20
    jr nc, jr_057_4f21

    ld l, c
    ret nz

    rst $38
    ret nz

    xor $52
    jr nc, jr_057_4f62

    ld e, a
    ld l, c
    ld l, l
    jr nc, jr_057_4f2e

    ld l, e
    ret nz

    pop hl
    ld l, d
    ld b, b
    rst $38
    ld hl, sp-$15
    ld [$a08a], a
    ret nz

    ld [c], a
    ld l, e
    jr nc, jr_057_4f3e

    ld l, l
    ld l, d
    and b
    add b
    ldh [$c0], a
    ret nz

    ret nz

    rst $38
    jp hl


    add sp, -$76
    and b
    xor h
    ret nz

    db $e3
    ld l, l
    pop bc
    ld l, d

jr_057_4f21:
    nop
    ldh [$c1], a
    pop hl
    ret nz

    rst $38

jr_057_4f27:
    jp hl


    add sp, -$76
    and b
    add c
    ld l, a
    sbc c

jr_057_4f2e:
    ld [hl], c
    ld b, $e0
    pop bc
    and $11
    ld [de], a
    jp z, $e8ff

    rst $20
    ld sp, $313f
    ld [hl], b
    xor [hl]

jr_057_4f3e:
    add b
    ld a, c
    ld [hl], c
    rst $00
    ret nz

    ld b, e
    db $e3
    adc a
    ld de, $2112
    ld [hl+], a
    jp z, $c0ff

    add sp, -$3f
    ldh [$80], a
    ld a, b
    cp a
    pop hl
    add e
    ret nz

    inc b
    pop hl
    daa
    db $10
    db $10
    jr nz, jr_057_4f27

    rst $38
    add sp, -$18
    rst $20
    pop bc

jr_057_4f62:
    ld [c], a
    cp a
    ldh [$6e], a
    ld b, h
    and d
    ld sp, $2701
    inc bc
    jr z, jr_057_4f8e

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

jr_057_4f8e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_057_5093

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
    ld [hl], b
    ld d, b
    and b
    ld d, b
    dec b
    ld d, e
    and e
    ld d, h
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

jr_057_5093:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    dec bc
    ld l, e
    ld l, e
    ld c, e
    dec bc
    dec bc
    dec bc
    ld l, e
    ld sp, hl
    ld c, e
    rst $38
    pop hl
    rst $30
    ldh [$4c], a
    ld c, h
    ld c, h
    inc c
    inc c
    nop
    db $fc
    pop hl
    ei
    pop hl
    di
    db $e4
    pop af
    ld [c], a
    db $fd
    db $f4
    rst $00
    pop hl
    ret nz

    ldh [$c1], a
    ld [c], a
    nop
    cp a
    rst $20
    pop bc
    pop hl
    cp d
    rst $38
    xor d
    pop hl
    adc e
    ld [c], a
    pop bc

jr_057_50d1:
    push hl
    ld a, [hl]
    db $e4
    ret


    db $e3
    nop
    cp d
    db $e4
    ld a, [$f7e7]
    jp hl


    ret nz

    rst $20
    ld b, e
    and $3e

jr_057_50e2:
    ldh [$3a], a
    ldh [$3d], a
    pop hl
    ld b, b
    add b
    db $e3
    jr c, jr_057_50d1

jr_057_50ec:
    cp e
    db $e3
    dec a
    ld [c], a
    jr c, jr_057_50e2

    add d
    jp hl


    ld l, e
    db $f4
    ret nz

    jr nz, jr_057_50ec

    pop bc
    adc l
    add sp, -$05
    jp nz, $c2f8

    ld sp, hl
    rst $00
    inc l
    ld sp, hl
    jp hl


    ld b, d
    pop hl
    nop
    ld [bc], a
    push hl
    ret nz

    ldh [$7e], a
    ld [c], a
    ld b, c
    ld [$e5c1], a
    or l
    db $e4
    add b
    pop af
    ret nz

    jp hl


    nop
    dec a
    pop hl
    ld c, [hl]
    push hl
    cp a
    call nz, $e4fe
    db $eb
    rst $00
    ret nz

    di
    jp nz, Jump_000_3de2

    pop hl
    jr nz, jr_057_516b

    ld [c], a
    add l
    ld [c], a
    add b
    call nz, $e831
    nop
    ld a, [c]
    dec hl
    add b
    jp hl


    or $a0
    ld b, b
    ld e, $e0
    ccf
    db $eb
    cp [hl]
    push bc
    ret nz

    call c, $e5bf
    sbc $c3
    ld c, h

jr_057_5147:
    cp d
    db $e4
    ld [$e944], sp
    nop
    ei
    cp $c4
    dec hl
    ret nz

    and $c0
    and [hl]
    ld a, l
    push bc
    add c
    add $1c
    ld a, h
    call nz, $c480
    dec bc
    ld c, e
    dec hl
    jr c, jr_057_5147

    ret nz

    db $e3
    add b
    and e
    ld b, b
    add b
    ld a, [c]
    rst $00

jr_057_516b:
    and $00
    ret


    ccf
    and d
    cp d
    pop hl
    db $fc
    and d
    dec bc
    nop
    db $e4
    ld h, b
    add b
    db $f4
    ld b, b
    ret nc

    ld bc, $79a2
    ld [c], a
    ld a, h
    and b
    dec bc
    ld l, e
    add $f4
    adc d
    or a
    add h
    inc l
    ret nz

    and b
    inc l
    rst $38
    ldh [$80], a
    and a
    adc l
    ldh [$0b], a
    ld bc, $7e0a
    db $e4
    ld [hl], l
    add b
    cp $86
    add c
    adc c
    db $fd
    add a
    ret nz

    db $ed
    jp nz, Jump_000_00e3

    cp d
    add e
    ld a, [c]
    jp $94c7


    cp $c7
    add c
    rst $20
    daa
    sub h
    rst $00
    adc a
    db $fd
    add a
    nop
    ret nz

    db $eb
    ld e, h
    and l
    inc d
    and h
    push de
    ld h, [hl]
    rst $00
    adc l
    db $fd
    sbc b
    ld e, b
    and l
    db $d3
    ld h, a
    inc b
    rst $00
    sub b
    db $fd
    add a
    inc l
    jp nz, $fac2

    ldh [rHDMA4], a
    db $eb
    db $d3
    ld l, c
    rst $00
    sub d
    nop
    xor [hl]
    ld h, l
    ret nz

    db $ed
    call c, $d385
    ld l, h
    rst $00
    adc l
    db $fd
    add [hl]
    ld b, b
    res 1, a
    add sp, $00
    db $d3
    ld h, [hl]
    rst $00
    sub c
    db $fd
    add a
    ret nz

    db $ec
    ld de, $d367
    ld h, [hl]
    rst $00
    sub c
    ld a, l
    or [hl]
    nop
    jp nc, $d345

    ld l, b
    rst $00
    sub h
    cp $85
    rst $38
    xor [hl]
    ld e, a
    push hl
    db $d3
    ld l, c
    jp nz, LCDCInterrupt

    db $fd
    ld c, h
    ld b, b
    xor e
    dec de
    add l
    db $d3
    ld l, e
    ld [$fda7], a
    ld d, d
    add d
    xor b
    dec de
    add l
    nop
    db $d3
    ld l, d
    ld b, [hl]
    ld h, a
    db $fd
    ld d, e
    ld b, d
    xor h
    ld c, [hl]
    ld hl, $6ad3
    add l
    ld c, b
    db $fd
    ld d, d
    nop
    ei
    ld l, b
    sub h

jr_057_522f:
    jp nc, Jump_057_6646

    db $fd
    ld d, h
    ret nz

    ld [$705b], a
    ld b, [hl]
    ld h, [hl]
    db $fd
    ld e, a
    nop
    sbc e
    ld d, l
    ld b, c
    ld b, e
    db $fd
    ld e, c
    ld b, b
    ld hl, sp+$4c
    ld b, a
    adc c
    dec h
    cp d
    ld h, l
    ld b, c
    and h
    nop
    ld a, [hl]
    rst $00
    sbc e
    ld d, d
    ld a, [hl-]
    and a
    ld bc, $2e27
    push hl
    ld bc, $80ac
    di
    xor l
    add l
    nop
    ld [hl], e
    rst $20
    rst $18
    ld h, l
    ld [$8162], sp
    ld l, b
    add b
    di
    jp nz, $faa7

    ld c, h
    ld bc, $00c4
    cp a
    xor d
    sbc l
    jp nc, $6900

    call nz, $f347
    inc bc
    ld [$9a6a], sp
    ld sp, $8cff
    nop
    jr nz, jr_057_522f

    pop bc
    ld c, h
    cp [hl]
    push de
    ld a, [$c051]
    pop af
    ld a, c
    ld e, c
    call nz, Call_057_7e8e
    stop
    dec sp
    ld e, e
    ld a, [$3e4b]
    ld sp, $f982
    ld a, [$7f4d]
    rst $38
    ld h, $bc
    ld a, a
    rst $38
    nop
    ld h, $bd
    rst $00
    rst $38
    ld l, b
    rst $18
    rst $38
    rst $38
    dec h
    ld c, c
    dec [hl]
    ld b, l
    db $ed
    ld h, a
    rst $38
    rst $38
    nop
    db $e4
    dec c
    add l
    rst $38
    di
    call c, $bfcd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    db $d3
    nop
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, Jump_000_0053

    nop
    nop
    rst $38
    ld sp, $58ac
    xor d
    add b
    add b
    ld a, c
    ld l, [hl]
    rst $38
    ld d, h
    ld d, h
    ld d, h
    dec sp
    ld c, l
    ld sp, $3131
    rra
    add hl, hl
    daa
    db $10
    jr nz, jr_057_531d

jr_057_531d:
    rst $38
    rst $38
    rst $20
    and $c2
    pop hl
    cpl
    add b
    ld a, c
    ld [hl], c
    ld l, h
    rst $38
    pop hl
    ld [hl-], a
    cp a
    db $e4
    jp z, Jump_057_40ff

    add sp, -$19
    jp nz, $c1e0

    push hl
    cp a
    and $ca
    rst $38
    ret nz

    db $eb
    add e
    pop bc
    db $e4
    and e
    ld l, h
    ld l, l
    ld a, [hl]
    db $e3
    jp z, $80ff

    db $eb
    ld d, d
    pop bc
    push hl
    ld l, l
    ld [$e3bf], sp
    jp z, $c0ff

    db $ec
    ld l, b
    rst $38
    db $e3
    ret nz

    ldh [$7e], a
    ld [c], a
    jp z, $a2ff

    ret nz

    di
    ld l, d
    cp a
    db $e4
    jp z, Jump_057_40ff

    db $ec
    ld h, l
    rst $38
    ld [c], a
    ld h, a
    dec b
    ld l, d
    cp a
    ld [c], a
    add hl, sp
    ret nz

    rst $38
    ret nz

    call $e147
    inc bc
    ldh [$bf], a
    db $e3
    inc hl
    ld c, b
    ld c, c
    jp z, Jump_057_40ff

    call $eabf
    add hl, sp
    jp z, Jump_000_00ff

    set 6, d
    cp a
    db $ec
    ld d, d
    jp z, $c0ff

    xor d
    xor [hl]
    and l
    ld e, b
    or b
    adc l
    ld b, l
    ld b, b
    and b
    ld d, l
    ld b, h
    dec a
    db $e3
    ret nz

    rst $38
    add b
    xor d
    xor [hl]
    add hl, de
    ld [hl], b
    add hl, bc
    and b
    db $fd
    ld [c], a
    inc [hl]
    ld [hl-], a
    db $fc
    jp nz, $ff40

    ld b, b
    xor c
    ld [hl-], a
    pop bc
    ld [c], a
    ld h, d
    rst $38
    ldh [$bf], a
    push hl
    ld [hl-], a
    inc [hl]
    jp z, $e8ff

    rst $20
    cp $82
    pop hl
    ld e, l
    ld e, h
    ld e, e
    ld e, e
    ld e, d
    ld e, e
    ld e, h
    dec a
    ld e, l
    ld a, [hl]
    ldh [rLYC], a
    ld d, l
    ld b, l
    inc [hl]
    ld b, b
    rst $18
    jp hl


    add sp, $01
    ld [hl], b
    jp nz, $ffe4

    pop hl
    cp [hl]
    pop hl
    inc [hl]
    pop hl
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
    jr nc, jr_057_5502

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
    rst $18
    ld d, h
    rrca
    ld d, l
    ld c, $57
    and $58
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

jr_057_5502:
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
    ldh [$0b], a
    dec bc
    ld a, [bc]
    ld c, e
    ld c, e
    dec bc
    cp [hl]
    rst $38
    ld [c], a
    ld c, e
    dec bc
    ld a, [bc]
    dec bc
    ld c, e
    db $ec
    pop hl
    inc c
    pop af
    ld c, h
    db $fc
    db $e4
    rst $38
    rst $38
    ret nz

    ldh [rWX], a
    ld c, e
    ld l, e
    ld l, e
    add l
    ld l, e
    cp h
    pop hl
    ld c, e
    push af
    ldh [$c0], a
    ldh [$c7], a
    rst $38
    ret nz

jr_057_553c:
    db $eb
    dec hl
    ld e, l
    dec bc
    ret nz

    ldh [rOCPD], a
    ld l, e
    dec hl
    pop bc
    pop hl
    ld a, [bc]
    add b
    or $08
    ld l, l
    ldh [$a7], a
    ld a, [c]
    ld b, l
    pop hl
    ld l, e
    db $fd
    ldh [$c0], a
    ld [c], a
    ld a, c
    ldh [rSCX], a
    ldh [rNR41], a
    ld a, a
    ld [c], a
    ld_long a, $ffe3
    rst $38
    pop bc
    db $e3
    ld a, l
    pop hl
    dec hl
    or a
    ldh [rLCDC], a
    pop hl
    inc b
    call z, $80f3
    db $e4
    inc l
    xor [hl]
    db $e3
    ld sp, hl
    db $e4
    add d
    db $e3
    ret nz

    pop hl
    cp [hl]
    ret nz

    jr nc, jr_057_553c

    ei
    ld b, h
    push af
    pop bc
    and $c0
    ld [c], a
    dec bc
    dec bc
    and d
    jp hl


    ret nz

    rst $38
    nop
    rlca
    pop hl
    ld b, c
    push bc
    dec sp
    jp $e15e


    ret nz

    rst $38
    db $e4
    db $e3
    ld d, c
    ret nz

    dec c
    pop hl

jr_057_559a:
    jr nz, jr_057_559a

    ld [c], a
    jp nz, $c3e4

    rst $38
    add h
    call $e6c0
    ld l, e
    call nz, $bdc6
    ld a, [c]
    ld bc, $c52c
    jp $c938


    adc c
    jp nz, $e881

    sbc [hl]
    ret


    rst $38
    rst $38
    ld b, h
    jp $c000


    xor $80
    rst $38
    add b
    add sp, -$40
    db $e4
    inc bc
    and $80
    rst $38
    ld b, h
    xor [hl]
    pop bc
    db $ec
    inc c
    add b
    db $fd
    pop bc
    xor c
    dec bc
    ld c, e
    dec bc
    and b
    add [hl]
    add e
    rlca
    jp $a49e


    nop
    ld a, l
    cp $c0
    push hl
    add h
    add b
    jp nz, Jump_057_43e4

    db $e4
    nop
    jp $ffff


    ld [hl+], a
    or b
    jr nz, jr_057_55f6

    adc b
    ret nz

    rst $10
    dec sp
    pop bc
    sbc a
    db $ed
    sub a
    adc [hl]

jr_057_55f6:
    ld c, h
    rst $38
    rst $18
    dec hl
    add [hl]
    nop
    ld d, h
    add e
    adc a
    ld h, h
    cp $e3
    db $db
    db $f4
    cp [hl]
    and c
    cp h
    and b
    ei
    pop hl
    ld a, [$00e0]
    add b
    ei
    db $d3
    ld [hl], c
    ld l, d
    ldh [$c0], a
    xor $80
    ldh [$86], a
    db $e4
    and c
    ld h, d
    ld a, [hl]
    ld [c], a
    nop
    ret z

    ld h, a
    ld a, [$6c44]
    rst $20
    ld a, a
    ld [c], a
    ld a, [$b1e4]
    db $dd
    add c
    ld [hl], c
    ret nz

    rst $38
    nop
    ld l, e
    adc $72
    db $eb
    db $f4
    cp b
    xor l
    rst $20
    and e
    rst $30
    add b
    db $ed
    cp b
    jp nz, $c1b3

    nop
    ld l, d
    ld [c], a
    or $e6
    rst $38
    ld d, [hl]
    ret nz

    ld a, [c]
    ld sp, hl
    push hl
    ret nz

    and $54
    or e
    cp $66
    nop
    ld sp, hl
    xor l
    ld b, b
    ld a, [c]
    sbc [hl]
    jp nc, $f1c0

    dec d
    sbc b
    dec hl
    db $e3
    add [hl]
    adc b
    ld b, h
    ld b, e
    nop
    add h
    rst $18
    adc d
    sbc e
    add l
    xor h
    sbc b
    ccf
    rst $38
    rst $38
    adc b
    db $fd
    adc e
    ld [hl+], a
    xor d
    add l
    nop
    add b
    rst $38
    ld l, l
    push af
    jp $fa81


    push hl
    xor e
    cp h
    ld [hl-], a
    or b
    ret nz

    add h
    ld b, c
    cp a
    nop
    add c
    cp c
    ld a, [$26e6]
    ld a, h
    cp e
    ld a, [$e981]
    jp nc, $cc43

    ld b, h
    push bc
    ld e, a
    nop
    or [hl]
    ld d, c
    ret nz

    ld_long $ffcf, a
    ld b, b
    rst $38
    dec b
    ld e, e
    ld b, b
    ld a, [$dfa5]
    push de
    cp a
    nop
    ld c, h
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    pop bc
    rst $38
    call c, $1c17
    adc e
    ret nz

    rst $38
    nop
    ret nz

    ld_long a, $ffff
    ld bc, $daff
    rst $38
    add c
    rst $18
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld d, $ff
    rst $38
    rst $38
    sbc c
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    dec h
    ld a, [bc]
    nop
    nop
    nop
    rst $38
    jr nz, jr_057_5731

    jr nz, jr_057_5713

jr_057_5713:
    ld sp, $5a61
    ld e, e
    or a
    ld e, e
    ld h, b
    ld sp, $e1ff
    ld e, a
    ld e, e
    push af
    ldh [rP1], a
    ld hl, sp-$01
    rst $38
    rst $20
    and $c0
    db $e3
    ld e, e
    ld e, e
    ld e, a
    ld c, l
    dec sp
    ccf
    ld d, l
    dec sp

jr_057_5731:
    ld a, $31
    ld e, [hl]
    ld e, e
    rst $38
    ldh [$ca], a
    rst $38
    cp $c0
    db $ec
    ld sp, $6060
    ld c, l
    ld [hl-], a
    jr nc, jr_057_5773

    rst $00
    jr nc, @+$44

    ld c, c
    ld a, a
    ld [c], a
    jp z, $c0ff

    db $ed
    ld sp, $1b31
    add hl, sp
    ld l, e
    ret nz

    ldh [$30], a
    add hl, sp
    ld a, a
    ld [c], a
    jp z, Jump_057_40ff

    jp hl


    cp e
    ld a, [bc]
    dec bc
    ld b, $e0
    ld c, l
    ld [hl], a
    ld l, e
    cp a
    pop hl
    ld d, d
    ldh a, [$35]
    pop hl
    ret nz

    rst $38
    jp hl


    add sp, -$3e
    ld [c], a
    ld sp, $324d

jr_057_5773:
    ld l, c
    ld bc, $c069
    rst $38
    ld a, [c]
    pop af
    adc d
    jp nz, $e003

    ret nz

    ldh [$3e], a
    ldh [$c0], a
    pop hl
    di
    ld e, h
    ld e, l
    jp z, $c0ff

    db $eb
    ld c, l
    ld [hl-], a
    ld l, h
    ld l, h
    ld a, [hl]
    ret nz

    db $e3
    add hl, sp
    ld sp, $6231
    ld sp, $ca31
    rst $38
    sbc $e8
    rst $20
    and l
    and l
    ld e, b
    or b
    pop bc
    ldh [$6c], a
    ld l, d
    cp a
    ld l, d
    ld l, l
    ld l, l
    jr nc, jr_057_57f3

    ld c, c
    ei
    and b
    ld de, $12f9
    jp z, $e8ff

    rst $20
    add b
    add b
    ld a, c
    ld [hl], c
    ld l, d

jr_057_57ba:
    ld a, b
    pop bc
    pop hl
    ret nz

    pop hl
    add c
    ldh [rNR11], a
    ld [de], a
    ld hl, $ca22
    rst $38
    cp [hl]
    ret nz

    jp hl


    add e
    ld l, d
    ld l, d
    ld l, b
    ld l, b
    add c
    and $2b
    or c
    db $10
    ld l, a
    and b
    rst $38
    rst $38
    add b
    add sp, $52
    ld l, l
    ret nz

    pop hl
    ld l, l
    cp b
    add c
    db $e3
    ret nz

    rst $38
    ret nz

    ldh a, [$6d]
    ld l, h
    ld l, h
    inc bc
    ldh [$30], a
    ccf
    ld [hl-], a
    ld b, e
    ld sp, $2931
    daa

jr_057_57f3:
    ret nz

    rst $38
    ld b, b
    db $ed
    dec e
    jr nc, jr_057_57ba

    pop hl
    jr nc, jr_057_5833

    ld b, l
    pop bc
    push hl
    ret nz

    rst $38
    ret nz

    jp z, $76cb

    ld b, d
    ld b, $a0
    ld [hl], $c4
    add b
    add d
    db $e4
    ld a, [bc]
    dec bc
    inc a
    jp z, $80ff

    ret


    add b
    ld [hl], d
    ld d, l
    ld d, h
    jp nz, Jump_057_43e2

    ld [c], a
    nop
    ld [hl-], a
    and c
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_5833:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, jr_057_5945

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
    ld [hl+], a
    ld e, c
    ld d, d
    ld e, c
    xor c
    ld e, e
    add l
    ld e, l
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

jr_057_5945:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $db
    ld a, [bc]
    dec bc
    rst $38
    ld [$0b2b], a
    rst $28
    ldh [$0c], a
    inc c
    add e
    inc c
    ld c, h
    db $fd
    ldh [$fc], a
    ldh [$f8], a
    ld [c], a
    pop af
    ldh [$f0], a
    and $0c
    jp $2c0c


    ld a, [$fbe2]
    and $c1
    pop hl
    cp h
    db $e3
    ld l, e
    ld l, e
    ld b, a
    ld c, e
    ld c, e
    ld c, e
    cp a
    ldh [$c0], a
    ldh [$c5], a
    db $e3
    ld c, h
    db $fd
    and $82
    ldh a, [$e5]
    inc l
    jp $c0e0


    ldh a, [$c1]
    db $e4
    db $76
    ldh [$bf], a
    pop hl
    dec hl
    db $10
    add b
    pop hl
    ret nz

    add sp, -$47
    ldh [$b2], a
    db $e4
    inc l
    ret nz

    ldh a, [rLCDC]
    ldh [$3d], a
    ld [c], a
    inc bc
    ld l, e
    ld l, e
    add [hl]
    pop hl
    cp a
    ld [c], a
    add b
    db $e3
    ld a, $e3
    or $e2
    ld a, [c]
    push hl
    ld b, b
    add c
    pop hl
    add b
    db $f4
    pop bc
    ldh [$87], a
    ldh [$3f], a
    ldh [$3d], a
    ldh [rWX], a
    adc e
    ld [c], a
    db $10
    ccf
    db $e4
    rst $30
    jp nz, $e530

    ld bc, $2ce1
    cp $c5
    rst $30
    jp $c1d0


    nop
    ld b, [hl]
    ldh [$c1], a
    ldh [rSTAT], a
    ld [c], a
    ret nz

    db $e3
    ld b, b
    db $e3
    ld a, [$f1e8]
    call nz, $cbc5
    ld [bc], a
    ret nz

    add $6b
    cp [hl]
    ldh [$c0], a
    pop hl
    add c
    ld [c], a
    cp a
    ret nz

    ld [bc], a
    db $e4
    cp e
    push hl
    db $10
    ld a, a
    jp z, $e23c

    ret nz

    db $ed
    ld b, d
    add sp, $4b
    add b
    pop bc
    ret nz

    call $e83f
    inc b
    ret nz

    ldh a, [$c5]
    ret nz

    ld c, e
    pop bc
    jp hl


    add b
    jp $c5c0


    add c
    pop bc
    dec [hl]
    call nz, $4102
    ldh a, [$0c]
    add h
    ldh [$c5], a
    pop bc
    inc bc
    jp nz, $e8c0

    cp $a4
    cp $e4
    nop
    ld [hl], l
    add $c0
    ldh a, [$c5]
    pop bc
    cp $e1
    add c
    rst $20
    ret nz

    pop bc
    cp a
    and l
    cp [hl]
    rst $00

jr_057_5a35:
    nop
    ret nz

    add $7f
    and d
    ld a, d
    and [hl]
    ld c, h
    and c
    cp a
    ld [c], a
    ld b, e
    jp nz, $a233

    add b
    rst $00
    ld b, b
    ld hl, sp-$5c
    ld a, [hl-]
    and h
    ld a, a
    ld a, [c]
    ret nz

    and $02
    pop bc
    add hl, sp
    and d
    ld c, e
    ld b, b
    ret nz

    sub c
    inc l
    ccf
    rst $20
    rlca
    and l
    ld b, b
    call nc, $812b
    push hl
    add hl, sp
    and l
    ld c, e
    inc bc
    ld c, e
    ld a, [hl+]
    db $db
    add h
    dec b
    and l
    ld a, l
    jp $87bf


    ei
    add c
    dec [hl]
    and d
    jr c, jr_057_5a35

    push hl
    add [hl]
    add e
    cp [hl]
    and c
    ld l, e
    ld l, e
    ld a, [hl+]
    cp e
    add b
    ld b, b
    add sp, $08
    ld b, c
    and l
    ld a, a
    and a
    ret nz

    db $ec
    dec bc
    call $f9c3
    ldh [$be], a
    and [hl]
    add b
    ldh [rP1], a
    ld a, a
    rst $00
    ret nz

    add sp, $47
    add h
    add c
    ld [$9f15], a
    jp nc, $eeec

    db $ed
    dec d
    sbc d
    nop
    add b
    or d
    db $fc
    ld l, a
    dec d
    sub [hl]
    add b
    or d
    pop bc
    push bc
    ld [hl], a
    ld h, e
    dec d
    sbc d
    add b
    or l
    nop
    ret nz

    ld [$9915], a
    add b
    or c
    ld b, d
    jp $8a78


    dec d
    sub l
    add b
    or [hl]
    ld a, a
    rlc b
    dec d
    sub [hl]
    add b
    or h
    db $fc
    ld l, l
    dec d
    sub a
    ld c, c
    ld c, d
    ld a, a
    add [hl]
    ld b, b
    db $ed
    dec d
    sub [hl]
    nop
    ld c, c
    ld c, e
    ld b, b
    db $f4
    dec d
    sbc d
    ld c, c
    ld d, h
    jp $15cd


Jump_057_5ae1:
    sub h
    ld c, c
    ld d, [hl]
    ld a, e
    inc l
    nop
    dec d
    sub l
    ld c, c
    ld c, c
    db $fc
    ld [hl], l
    dec d
    sbc h
    ld c, c
    ld c, d
    inc a
    ld d, c
    dec d
    sbc c
    inc [hl]
    jp z, Jump_057_7700

    adc [hl]
    ld a, a
    call z, $9015
    inc [hl]
    set 7, h
    ld l, b
    jp nz, Jump_000_158d

    sub h
    ld c, c
    ld c, d
    nop
    add b
    ld c, d
    cp l
    xor [hl]
    dec d
    sub e
    ld c, c
    ld c, b
    add a
    ld a, [hl+]
    xor $6e
    ret nz

    db $f4
    add hl, bc
    ld a, [hl+]
    nop
    ld a, h
    ld [$8bc2], sp
    ld d, l
    db $76
    inc [hl]
    jp z, Jump_000_097c

    add c
    db $f4
    add b
    ei
    ld a, h
    dec d
    nop
    add b
    ld hl, sp-$3c
    ld c, e
    ld h, a
    add a
    add b
    rst $38
    ld c, h
    db $ed
    sub a
    ld h, a
    ret nz

    ld sp, hl
    inc [hl]
    reti


    nop
    ld a, h
    rla
    ld [hl], h
    rst $38
    inc sp
    call $ffff
    ld h, a
    sbc h
    rst $38
    rst $38
    ld a, h
    rra
    ld b, b
    db $fd
    nop
    ld a, h
    rra
    ret nz

    db $fc
    ld h, a
    sbc c
    rst $38
    rst $38
    ld a, h
    add hl, de
    rst $38
    rst $38
    daa
    cp l
    rst $38
    rst $38
    nop
    daa
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc [hl]
    ld [hl], b
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
    rst $38
    di
    nop
    nop
    nop
    cp e
    ld e, d
    ld e, e
    rst $38
    db $e4
    ld e, h
    ld e, l
    ld sp, $e0ff
    ld h, b
    add l
    ld e, e
    rst $28
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $c1
    pop hl
    cp h
    pop hl
    ld h, b
    ccf
    ld sp, $3a4d
    ld d, h
    ld a, [hl-]
    ld c, l
    cp a
    ldh [$c0], a
    rst $38
    ld a, h
    ret nz

    db $ed
    pop bc
    db $e3
    ld [hl-], a
    ld l, b
    ld l, b
    ld l, b
    ld [hl-], a
    cp a
    ld [c], a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld b, b
    ldh [$3d], a

Jump_057_5be1:
    ldh [$c1], a
    pop hl
    ld l, d
    ld l, h
    ld l, h
    jp $306c


    cp a
    ld [c], a
    jp z, $80ff

    db $ec
    pop bc
    ld [c], a
    ld l, l
    ld l, l
    cpl
    jr nc, jr_057_5c27

    ld l, l
    ld l, l
    ld a, [hl]
    ldh [$5f], a
    jp z, Jump_000_00ff

    add sp, $3e
    cp a
    ret nz

    ld e, a
    ld sp, $3931
    ld l, d
    jp nz, $c1e0

    ldh [$9f], a
    ld l, l
    ld l, d
    add hl, sp
    ld sp, $ca5e
    rst $38
    ret nz

    bit 3, [hl]
    rst $30
    ld sp, $3547
    ret nz

    db $e4
    ld l, d
    ld l, d
    ld d, e
    ld sp, $31f9
    jp z, $80ff

    ret


jr_057_5c27:
    ld e, h
    ld e, l
    ld c, l
    ld a, [hl-]
    ld [hl], $7b
    ld l, c
    ld l, e
    ld b, d
    ld [c], a
    ld l, d
    ld l, d
    ld h, a
    add hl, sp
    ret nz

    rst $38
    cp h
    ld b, b
    jp z, $c186

    ld h, a
    jr nc, jr_057_5ca8

    ld l, e
    ld b, e
    ld [c], a
    ld l, d
    and a
    ld h, a
    ld c, b
    ld c, c
    ld b, b
    rst $38
    ld [$5fe9], a
    pop bc
    pop hl
    ld h, a
    adc l
    ld l, d
    inc b
    db $e3
    ld l, d
    ld h, a
    add c
    pop hl
    ret nz

    rst $18
    jp hl


    add sp, $5e
    inc bc
    ld sp, $c139
    ldh [$c2], a
    ret nz

    pop bc
    db $e3
    add c
    pop hl
    ld b, b
    rst $18
    jp hl


    add sp, -$39
    ld sp, $5331
    pop bc
    pop hl
    ld b, e
    ret nz

    add d
    pop hl
    ld [hl-], a
    ld b, a
    ldh [$81], a
    ldh [$c0], a
    rst $38
    ret nz

    db $eb
    pop bc
    ld [c], a
    ld [bc], a
    ret nz

    ld h, a
    ld h, a
    ld [hl], $e1
    ld c, c
    cp $81
    ret nz

    rst $38
    ld b, b
    db $eb
    pop bc
    ld [c], a
    ld [hl], $54
    ld d, l
    sub e
    ld d, h
    ld b, [hl]
    add d
    ldh [rP1], a
    and b
    ld e, d
    jp z, $c0ff

    jp z, $ff46

    ld d, h
    ld d, l
    ld d, l
    ld l, [hl]
    ld l, a
    add b
    add b
    and b

jr_057_5ca8:
    adc a
    ld sp, $5d31
    ld e, h
    ld [hl], b
    add c
    jp z, Jump_057_40ff

    jp z, Jump_000_3b31

    and b
    add b
    rst $38
    ld [c], a
    and b
    ld sp, $3361
    add d
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    jr nc, @+$39

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
    pop bc
    ld e, l
    pop af
    ld e, l
    db $eb
    ld e, a
    add [hl]
    ld h, c
    ld [$c503], a
    ld b, $e2
    ld bc, $00a0
    ld [$f003], a
    inc bc
    push bc
    ld b, $e2
    ld bc, $7d40
    ret nz

    ld a, [hl]
    ld [$c503], a
    ld b, $08
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
    ld [$df25], sp
    dec bc
    dec bc
    ld l, e
    dec bc
    dec hl
    rst $38
    ldh [$4c], a
    inc l
    ld l, a
    ld c, h
    ld l, h
    ld c, h
    ld l, h
    rst $38
    ld [c], a
    inc l
    inc c
    rst $38
    pop hl
    rst $20
    ld c, h
    inc c
    ld c, h
    rst $38
    pop hl
    db $f4
    ld [c], a
    inc c
    inc c
    inc l
    and c
    inc l
    ldh a, [$e2]
    ld a, [c]
    db $e4
    ld sp, hl
    add sp, -$40
    ld [c], a
    dec bc
    rst $38
    ldh [$4c], a
    ld b, c
    inc l
    rst $38
    ldh [$bf], a
    db $e3
    call nz, $d6e1
    and $b2
    db $e3
    inc l
    xor e
    db $e3
    ld h, h
    ret nz

    pop af
    cp $e5
    ld c, h
    jp nz, $fde0

    pop hl
    inc l
    ld l, h
    sbc d
    ld [$c018], a
    db $e4
    pop bc
    db $f4
    add b
    pop hl
    ld l, e
    ld c, e
    rst $38
    ldh [$bf], a
    and $c0
    db $ed
    ld hl, sp+$3f
    db $e3
    ld b, [hl]
    ldh a, [rLCDC]
    db $e4
    ld l, e
    ld l, e
    dec bc
    ld c, e
    ld c, e
    ret nz

    cp l
    ldh [$7e], a
    rst $20
    add b
    db $eb
    dec bc
    pop af
    daa
    add sp, -$3f
    ldh [$0b], a
    dec bc
    inc hl
    ld c, e
    dec bc
    cp a
    add sp, $15
    ld [c], a
    ld de, $0bed
    cp l
    ret nz

    db $fc
    pop hl
    ret nz

    cp a
    adc $c4
    jp nz, $c0c0

    cp a
    jp hl


    rrca
    ldh a, [$c0]
    rst $38
    ld l, e
    ld c, e
    rrca
    dec hl
    dec hl
    ld c, e
    dec bc
    dec a
    jp nz, $f4c0

    ld a, [hl]
    jp nc, $e480

    ld d, c
    ld l, e
    cp c
    ret nz

    or a
    pop bc
    db $fd
    and d
    inc l
    ld d, $d2
    inc c
    db $fd
    and d
    nop
    nop
    adc $85
    jp nz, $e27f

    cp a
    pop hl
    ld a, a
    ld [c], a
    inc d
    pop de
    or e
    and b
    db $fd
    or d
    ld [$c0c3], sp
    cp a
    db $e3
    ret nz

    ld [c], a
    ld l, e
    ret nz

    or $83
    jp nc, $a3c0

    cp a
    jp hl


    nop
    add b
    push hl
    ret nc

    or [hl]
    ld a, b
    xor l
    rst $00
    and c
    dec a
    db $e3
    add c
    ld [c], a
    ld b, b
    db $e3
    inc c
    sub $00
    nop
    xor a
    ld [bc], a
    ld [c], a
    add c
    and d
    pop bc
    ld [c], a
    ld b, b
    rst $30
    ld bc, $00d3
    and h
    ld b, b
    and c
    db $10
    or [hl]
    and d
    ld b, b
    rst $30
    ld hl, sp-$6c
    ret nz

    add e
    dec hl
    ld a, $a0
    add e
    ret nz

    add b
    ld [c], a
    ld [$c097], sp
    ld b, c
    rst $10
    ld a, c
    sub e
    inc l
    cp $e2
    db $fd
    db $e4
    sub e
    sub d
    ld b, c
    push de
    nop
    ld a, [de]
    adc b
    rst $18
    ld l, h
    ret nz

    ld h, d
    ld a, [bc]
    adc [hl]
    cp l
    ld l, [hl]
    push de
    ld h, d
    and a
    and a
    adc a
    ld h, b
    nop
    cp $e2
    ld a, [hl]
    rst $18
    inc h
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl-], a
    db $ed
    ret nc

    ld [hl], e
    nop
    ld b, b
    sub [hl]
    rst $38
    rst $38
    nop
    sbc e
    sub l
    ld c, c
    ld a, a
    ld [$4d50], a
    add c
    ld sp, hl
    adc a
    rst $18
    nop
    ld b, c
    ld h, l
    sub h
    rst $18
    add a
    sbc a
    rst $38
    rst $38
    nop
    rst $38
    and a
    rst $38
    ret nz

    rst $38
    or h
    ld l, h
    ld bc, $ff08
    ldh [$f6], a
    push hl
    ret nz

    ld a, [c]
    ld [hl], h
    ld a, h
    ret nz

    pop hl
    db $fc
    push hl
    ld c, [hl]
    ld [hl-], a
    nop
    ret nz

    ld d, d
    add a
    rst $18
    adc c
    jp $9d7f


    add h
    rst $18
    cp [hl]
    rla
    ret nz

    rst $38
    db $e3
    rst $38
    nop
    ld h, c
    sbc b
    ld e, $fa
    ld bc, $ffff
    rst $38
    inc bc
    sbc $1e
    ld sp, hl
    ld bc, $9eff
    cp a
    nop
    nop
    db $fc
    call c, $ffff
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld d, l
    rst $38
    ld d, h
    rst $38
    adc [hl]
    ld c, l
    nop
    xor d
    ld [hl+], a
    cp $e5
    add $ff
    and h
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
    ccf
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    inc a
    nop
    nop
    nop
    rst $28
    ld c, e
    ld c, e
    ld c, a
    ld hl, $e1ff
    inc bc
    ld bc, $1c00
    rst $38
    rst $38
    pop af
    ldh a, [rWX]
    ld c, e
    ld c, [hl]
    ret nz

    ld [c], a
    cp a
    rst $38
    ret nz

    db $f4
    pop af
    ld d, b
    pop bc
    db $e3
    cp a
    rst $38
    db $f4
    di
    ld d, b
    ld hl, $2a3d
    rst $08
    ld b, h
    ld b, l
    ld a, [hl+]
    dec a
    cp a
    rst $38
    db $f4
    di
    ld hl, $3f3d
    ld [hl+], a
    ld e, l
    jr nz, jr_057_603f

    ld e, l
    ld [hl+], a
    cp a
    rst $38
    db $f4
    di
    ld l, a
    dec a
    ld [hl+], a
    ld e, d
    ld e, l
    cp a
    rst $38
    nop
    sub b
    db $fc
    db $e4
    add [hl]
    xor a
    xor $40
    ld e, l
    ret nz

    ld [c], a
    ld a, [hl]
    db $fd
    ret nz

    ei
    ld a, a
    pop hl
    ld e, l
    ccf

jr_057_603f:
    ld [hl+], a
    ld b, [hl]
    ld b, [hl]
    dec a
    ld hl, $c017
    ld hl, sp+$33
    ld a, [c]
    ld a, [hl-]
    ret nz

    push hl
    jr nz, jr_057_60c6

    pop hl

jr_057_604f:
    ld [hl+], a
    dec a
    ld [$ff0e], sp
    db $ec
    db $eb
    rst $20
    sbc a
    ld l, l
    ld h, c
    ccf
    db $e4
    ld a, b
    pop hl
    add hl, hl
    ld hl, $9c1e
    call $ebff
    ld [$7071], a
    ld l, c
    cp a
    db $e3
    jr c, jr_057_604f

    ld b, e
    adc h
    ret nz

    rst $38
    db $ed
    db $ec
    sbc c
    ld [hl], b
    cp a
    jp hl


    ret nz

    rst $38
    xor $ed
    ld [hl], b
    nop
    rst $38
    ldh [$7e], a
    db $e3
    ld [hl], a
    pop bc
    ld b, b
    rst $38
    ret nz

    pop af
    dec a
    ld [c], a
    cp [hl]
    pop bc
    cp d
    and b
    add b
    ret nz

    rst $30
    ld a, l
    db $d3
    ret nz

    ld [c], a
    cp a
    db $e3
    ld a, e
    and d
    add b
    rst $38
    ret nz

    pop af
    sbc b
    rra
    and b
    ld b, [hl]
    ld b, a
    ld b, [hl]
    ld b, a
    inc a
    and c
    ret nz

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $00

Jump_057_60c0:
    sub [hl]
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38

jr_057_60c6:
    rst $38
    db $fd
    ld a, d
    rst $38
    rst $38
    add b
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    call nc, $a4f6
    scf
    and l
    and [hl]
    and a
    or a
    db $e3
    xor [hl]
    xor a
    inc bc
    rst $38
    ldh a, [$ef]
    rst $38
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    rrca
    cp h
    cp l
    cp [hl]
    cp a
    jp nc, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld h, l
    jr nz, jr_057_6127

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld e, $ff
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_6127:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ld [hl+], a
    nop
    nop
    nop
    call $ff00
    jp hl


    scf
    ld [hl-], a
    pop af
    ld_long $ffff, a
    inc sp
    ld sp, $dcfe
    ld a, [c]
    ld [hl], $30
    scf
    ld h, $20
    daa
    db $10
    ei
    ld d, $17
    cp [hl]
    or $34
    ld [hl], $32
    jr nc, jr_057_61dd

    rrca
    ld sp, $3133
    inc sp
    sbc h
    rst $38
    rst $38
    ei
    nop
    nop
    nop
    cp d
    ld h, c
    ld [$4161], a
    ld h, h
    xor $65
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

jr_057_61dd:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $18
    inc c
    inc c
    inc l
    inc l
    dec bc
    rst $38
    ldh [rOCPD], a
    ld l, e
    rst $28
    ld c, e
    ld c, e
    dec bc
    dec hl
    or $e1
    dec bc
    dec bc
    ld c, h
    rrca
    ld c, h
    inc c
    inc c
    inc c
    ei
    ldh [$fd], a
    push hl
    ldh a, [$e5]
    db $eb
    ldh [$60], a
    rst $20
    ldh [$fd], a
    db $ed
    ret nz

    ld [c], a
    pop bc
    pop hl
    cp a
    db $e4
    ld a, [bc]
    dec bc
    db $db
    ld [c], a
    ret nz

    jp $cbe6


    ld [c], a
    cp l
    rst $20
    ret nz

    ld a, [c]
    pop bc
    db $e3
    ld a, [hl]
    ldh [rWX], a
    ld a, [bc]
    nop
    add b
    db $e4
    db $fd
    pop hl
    ld a, [hl]
    ld [c], a
    db $fc
    db $e3
    add l
    pop hl
    db $f4
    db $e4
    ret nz

    ld a, [c]
    pop bc
    db $e3
    ld b, b
    ret nz

    ldh [rLCDC], a
    db $e3
    ccf
    and $b9
    ld [c], a
    ld b, b
    rst $38
    pop bc
    db $e4
    ld l, e
    nop
    db $e3
    db $10
    ld b, b
    db $e3
    ld a, [$3fe8]
    rst $20
    and $c1
    inc l
    ld [$c0e4], sp
    rst $28
    or a

jr_057_6259:
    pop bc
    jr nz, @+$41

    ldh [rNR12], a
    and $bf
    srl d
    db $e3
    ret nz

    jp nc, $c12b

    jp $e4ff


    nop
    adc [hl]
    and $bf
    bit 7, a
    call nc, $e2c0
    cp a
    pop hl
    ld b, c
    pop bc
    ld a, $c2
    call Call_000_18c6
    cp a
    call $d680
    dec b
    ret nz

    dec hl
    dec hl
    ld a, [$02c0]
    db $e4
    cp a
    ret nc

    ld [hl-], a
    cp d
    ret


    inc l
    rst $38
    ldh [$f7], a
    and [hl]
    ld l, h
    ld l, h
    ld b, b
    jp nz, $e0c0

    jr nz, jr_057_6259

    ldh [rLY], a
    push hl
    cp a
    adc $b3
    and [hl]
    cp a
    xor l
    ld l, h
    rst $38
    ldh [$82], a
    and b
    ret nz

    pop bc
    pop hl
    ld a, l
    pop hl
    call nz, Call_057_7fa6
    xor h
    rst $30
    and h
    cp [hl]
    xor a
    ld l, h
    ld l, h
    nop
    jp z, $41e1

    pop hl
    ret nz

    add sp, $7f
    or b
    ld l, h
    and [hl]
    ld a, $ac
    ld b, h
    ld [c], a
    pop bc
    rst $20
    and b
    add b
    rst $20
    ld a, a
    xor e
    ld a, l
    and h
    dec a
    xor a
    ret z

    add b
    ld a, [bc]
    ret nz

    ldh [rWX], a
    nop
    nop
    pop hl
    pop bc
    and c
    ld b, c
    di
    cp h
    push hl
    rst $38
    rst $08
    ld [$7fa2], sp
    db $e3
    inc b
    ret z

    ld [$90c0], sp
    ld [hl], h
    jp hl


    ld b, b
    jp hl


    ld a, [bc]
    ret nz

    push hl
    ld b, h
    and a
    ret nz

    sub b
    call nz, Call_000_0085
    ld a, l
    adc [hl]
    inc d
    sbc b
    ld bc, $42ca
    sub l
    inc d
    sub l
    ret nz

    adc h
    call $80aa
    db $ed
    nop
    daa
    adc l
    cp a
    rst $20
    adc h
    ld [hl], l
    ld a, [de]
    ret


    ld h, e
    ld h, l
    sbc a
    and l
    ld b, a
    add h
    cp a
    ld h, l
    nop
    ccf
    ld h, [hl]
    cp e
    ld sp, hl
    db $ec
    ret nc

    ld c, l
    and a
    pop bc
    db $fd
    add hl, hl
    ld h, l
    ld hl, $808b
    add sp, $00
    add e
    ei
    ld b, c
    db $eb
    ld c, l
    ld l, b
    nop
    ld l, e
    ld b, c
    ei
    and e
    ld h, l
    rst $38
    jp nz, $8416

    nop
    nop
    ld l, e
    ld b, c
    ei
    ld h, l
    ld c, c
    ld c, l
    add l
    ld bc, $d7ff
    ld b, [hl]
    add hl, de
    ld b, [hl]
    inc b
    add [hl]
    ld b, b
    ld bc, $804c
    rst $18
    sbc h
    adc b
    xor h
    and $8c
    dec h
    db $fd
    cp c
    inc l
    ld h, l
    ld b, [hl]
    nop
    ld d, l
    add a
    add $25
    add hl, sp
    ld h, $c0
    ld a, [$26d4]
    pop de
    and l
    ld b, d
    push bc
    ld [hl], h
    rst $20
    nop
    ret nz

    rst $38
    ret nz

    db $eb
    ld b, b
    db $ec
    ccf
    db $fc
    ld a, a
    pop af
    xor d
    and a
    ld b, c
    cp l
    ccf
    rst $30
    ld [$a979], sp
    jp nz, Jump_057_4546

    ld b, c
    inc l
    ld a, [$c0e2]
    ret c

    call nz, $c7e4
    add l
    nop
    ld a, h
    jr z, jr_057_6398

    ld b, d
    rst $38
    add hl, hl
    ld b, c
    rst $30

jr_057_6398:
    db $76
    and a
    inc [hl]
    ld [$22c6], sp
    di
    ld l, l
    nop
    ld a, [de]
    xor b
    add [hl]
    ld b, l
    ld b, e
    ld b, $de
    ld l, d
    ld a, $23
    add b
    ld a, [hl+]
    nop
    call nc, $c8c0
    nop
    ld a, [$fdea]
    ld c, $81
    push de
    ld [hl], b
    xor c
    ld sp, hl
    push bc
    nop
    ld sp, $f780
    inc c
    ld b, a
    nop
    ret nz

    add hl, de
    add b
    or h
    ei
    add $a3
    add l
    ret nz

    inc d
    daa
    sbc a
    cp $e4
    push af
    sbc a
    nop
    daa
    sub e
    ld b, b
    xor c
    ld a, a
    rst $38
    ld h, [hl]
    ld [hl], b
    daa
    call z, $ffcb
    ld h, a
    cp a
    rst $38
    rst $38
    nop
    ld h, a
    sub [hl]
    ret nz

    rst $38
    ld h, a
    xor [hl]
    ret nz

    ld a, [de]
    ld a, a
    rst $18
    add b
    ld a, [bc]
    rst $38
    rst $38
    di
    call nc, $c000
    dec d
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    db $dd
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
    sbc c
    ld d, e
    nop
    nop
    nop
    rst $18
    jr nz, jr_057_6464

    inc l
    dec hl
    ld sp, $e0ff
    ld b, a
    ld b, l
    ld e, a
    ld b, l
    ld b, a
    ld sp, $5b60
    rst $38
    ld [c], a
    nop
    rst $38
    rst $38
    db $fc
    rst $20
    and $c0
    db $e4
    inc a
    ld [hl], $6d
    ld l, l
    ld [hl], $3c
    ld [hl], d
    cp a
    ld [c], a

jr_057_6464:
    ld e, d
    ret nz

    rst $38
    ret nz

    xor $49
    ld c, b
    ld l, l
    rst $38
    ldh [$9f], a
    ld c, b
    ld c, c
    ld sp, $5a5f
    add b
    rst $38
    add b
    ldh a, [$39]
    ld a, $c1
    pop hl
    ld l, l
    ld l, l
    add hl, sp
    ld sp, $405e
    rst $38
    ld b, b
    pop af
    sbc l
    ld d, e
    ret nz

    db $e3
    ld d, e
    ld sp, $c061
    rst $38
    ret nz

    rst $30
    ld l, d
    sub b
    add b
    pop hl
    ccf
    ldh [$ca], a
    rst $38
    ld b, b
    xor $6a
    pop bc
    pop hl
    nop
    pop hl
    ld e, e
    rst $00
    ld e, e
    ld e, h
    ld e, l
    jp z, $c0ff

    rst $08
    cp a
    ldh [rBCPD], a
    ld d, e
    ld a, a
    ld sp, $6031
    ld e, h

jr_057_64b1:
    ld e, l

Jump_057_64b2:
    ld sp, $ca31
    rst $38
    ld h, [hl]
    ld b, b
    adc $53
    ld l, c
    add b
    db $e3
    push af
    and b
    ld de, $ca12
    rst $38
    add $00
    ret z

    jr z, @+$12

    add b
    push hl
    nop
    pop hl
    jp nz, Jump_000_21e0

    ld [hl+], a
    inc a
    jp z, $e8ff

    rst $20
    ld [hl+], a
    ld hl, $1112
    nop
    db $e4
    add b
    pop bc
    rra
    ld sp, $212b
    jr z, jr_057_6503

    jp z, $e8ff

    rst $20
    jp nz, $9ee1

    ld b, b
    ret z

    ld sp, $2c2b
    jr nz, jr_057_64b1

    rst $38
    jp hl


    add sp, $31
    adc a
    ld sp, $5c5d
    ld e, [hl]
    ret nz

    and a
    ret nz

    rst $38
    db $ed
    db $ec
    ld e, l
    ld a, a
    ld e, h

jr_057_6503:
    ld e, e
    ld e, d
    ld e, a
    ld sp, $4249
    ld b, b
    and c
    ld hl, $c042
    ret nz

    ret nz

    rst $38
    db $ec
    db $eb
    adc [hl]
    add d
    ld e, [hl]
    ret nz

    add l
    ret nz

    rst $38
    db $fc
    ret nz

    xor $cf
    add c
    ld e, a
    ld sp, $6fa1
    ld l, [hl]
    ld l, [hl]
    inc bc
    ld l, a
    and c
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
    ld a, [$0000]
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
    jr nc, jr_057_664d

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
    ld a, [hl+]
    ld h, [hl]
    ld e, d
    ld h, [hl]
    ld h, a
    ld l, b
    ld b, l
    ld l, d
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

Jump_057_6646:
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_057_664d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    ld a, [bc]
    dec bc
    dec hl
    dec bc
    inc c
    ld c, h
    inc c
    inc c
    ld e, a
    inc c
    ld l, h
    ld l, h
    ld l, h
    dec bc
    rst $38
    ldh [$4c], a
    db $f4
    pop hl
    ld h, h
    rst $38
    rst $38
    rst $20
    and $0b
    ret nz

    db $e4
    pop bc
    db $e4
    dec bc
    inc l
    ret nz

    rst $38
    ld a, [$ebc0]
    ld a, [bc]
    add b
    ldh [$0c], a
    ld c, h
    ld c, h
    ld l, h
    ld l, h
    cp a
    ld l, e
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    ld a, a
    db $e3
    inc l
    or h
    rst $00
    xor $68
    ldh [$2c], a
    ld [$0cef], a
    inc c
    ld b, b
    pop hl
    ld c, h
    db $76
    rst $38
    ldh [$6c], a
    ld l, e
    rst $38
    ldh [$0b], a
    dec bc
    ld l, e
    ld a, a
    db $e3
    jr nz, @-$28

    pop af
    ld b, b
    rst $30
    ld [$c2e1], sp
    ld [c], a
    rst $38
    pop bc
    ld l, h
    call z, $80f6
    push hl
    ld [hl+], a
    ld sp, hl
    ld [$8b0a], a
    pop hl
    ld c, b
    ldh [$c2], a
    db $e4
    dec bc
    inc sp
    ldh [rLCDC], a
    jp hl


    jr c, @-$0c

    ret


    ld b, b
    ld a, [c]
    ld c, [hl]
    ldh [rOCPD], a
    ld l, e
    dec hl
    ld a, h
    db $e3
    add b
    ret nz

    pop bc
    dec hl
    add c
    ld [c], a
    ld d, $f2
    db $f4
    di
    pop bc
    db $e3
    cp a
    db $e4
    ld l, e
    dec bc
    ld h, c
    ld c, e
    sub [hl]
    rst $30
    ret nz

    or $c1
    pop hl
    ld a, [hl]
    db $e4
    ld c, e
    ld c, e
    ld c, [hl]
    rst $20
    inc h
    ld a, h
    rst $18
    nop
    jp Jump_057_420b


    pop hl
    ld a, [hl]
    db $e3
    ld c, e
    ret nz

    db $e4
    add b
    rst $38
    ld [bc], a
    ret nz

    db $ed
    ld c, e
    inc a
    ldh [$7f], a
    jp nz, $e3c0

    ret z

    ld sp, hl
    ld l, b
    ld [c], a
    ld h, e
    and $08
    add b
    ld [c], a
    dec a
    pop bc
    db $fc
    call nz, Call_000_3a4c
    and b
    ccf
    rst $38
    ld b, b
    db $ec
    add b
    ret nz

    ld [$c5bd], sp
    push af
    and c
    sub [hl]
    and d
    inc l
    cp e
    cp a
    nop
    and e
    ld b, l
    pop hl
    ld a, [hl]
    pop bc
    ld c, h
    ret nz

    and c
    rst $30
    and c
    ld l, e
    dec bc
    add [hl]
    ld [c], a
    jp nz, Jump_000_2cf4

    rst $38
    ldh [$38], a
    ld a, [$80e5]
    add sp, -$02
    and e
    ld l, e
    ld l, e
    ld a, [bc]
    cp l
    and d
    ld d, $a3
    jr nz, @-$43

    or h
    ret nz

    xor $7e
    jp $c201


    ld a, l
    add d
    ld a, [bc]
    sub a
    push hl
    ld a, e
    or c
    nop
    jp hl


    jp nz, $e781

    ld d, $b7
    db $dd
    db $f4
    ld b, c
    db $ec
    ld e, l
    ret c

    cp e
    sbc e
    jp Jump_000_00ff


    ld de, $c192
    jp nz, $c1bc

    ld h, c
    add $1a
    adc $c0
    and $f9
    or c
    ret nz

    rst $38
    nop
    call nz, $84ba
    db $e3
    rst $38
    call nc, $a990
    call nz, $c0b6
    xor $9a
    cp a
    cp a
    ld a, d
    nop
    db $eb
    ld c, b
    and [hl]
    rst $18
    add [hl]
    and [hl]
    add b
    and a
    xor e
    ld b, a
    ld h, [hl]
    rst $18
    ld b, b
    ld a, [c]
    db $76
    rst $38
    nop
    jp nz, Jump_000_09c7

    and l
    ld c, e
    jp hl


    ld a, [de]
    jp nc, $f784

    ret nz

    xor $13
    add [hl]
    ld b, b
    db $fd
    nop
    add c
    rst $20
    and $69
    nop
    add sp, -$20
    adc b
    add [hl]
    sub l
    ret nz

    ldh a, [$03]
    pop de
    add [hl]
    sub h
    nop
    ld de, $dcbb
    sbc l
    ld b, b
    di
    ld a, [bc]
    rst $18
    nop
    db $ec
    inc h
    ld h, h
    ret


    ld sp, hl
    add [hl]
    sub l
    nop
    ld bc, $15d2
    jr nc, @-$78

    sub l
    ld [$c166], sp
    jp hl


    call nc, $87df
    ld l, $81
    ld [$5a00], a
    ld [hl], h
    ldh a, [$df]
    sub [hl]
    sbc a
    xor [hl]
    push af
    add b
    cp $22
    ld b, h
    ld c, b
    ld c, e
    ret nz

    db $f4
    nop
    call nc, $c2d6
    cp a
    ld b, b
    rst $38
    ld c, h
    di
    inc d
    rst $18
    ret nz

    rst $38
    ld b, b
    rst $38
    pop bc
    rst $38
    nop
    ld b, l
    ei
    ld c, b
    ld c, a
    rst $38
    rst $38
    ret nz

    or $ff
    rst $38
    jp $da9f


    rst $38
    ld b, e
    sbc e
    nop
    call nz, $c0ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, $ff
    jp c, $80ff

    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    or a
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    xor $00
    nop
    nop
    rst $38
    ld e, d
    ld e, e
    ld h, c
    ld sp, $102b
    jr nz, @+$22

    rst $18
    jr nz, jr_057_6883

    daa
    add hl, hl
    ld sp, $e0ff
    rla
    jr z, @+$29

    jr nz, jr_057_689d

    nop
    rst $38
    rst $38
    rst $20
    and $5b

jr_057_6883:
    ret nz

    db $e4
    pop bc
    db $e4
    and a
    ld sp, $1615
    ret nz

    rst $38
    ret nz

    ld [$805a], a
    ldh [rNR21], a
    ld a, e
    inc h
    inc h
    add d
    pop hl
    ld b, a
    ld b, [hl]
    ld d, h
    inc a
    ld a, a

jr_057_689d:
    pop hl
    ld hl, sp-$36
    rst $38
    add sp, -$19
    ld b, b
    pop hl
    add hl, hl
    inc d
    inc d
    inc d
    add hl, hl
    ld e, $c2
    ldh [$36], a
    ld l, e
    ld l, e
    ld d, d
    ld a, a
    pop hl
    jp z, Jump_057_40ff

    db $eb
    sbc h
    ld [$c2e1], sp
    ld [c], a
    ld l, e
    ld l, e
    add hl, sp
    ret nz

    rst $38
    add b
    db $ec
    ld e, a
    db $76
    ld c, b
    pop hl
    ld d, l
    ld d, h
    jp nz, $6be2

    ld c, b
    ld c, c
    ld b, b
    rst $38
    cp $c0
    call z, Call_000_315e
    inc a
    ld [hl], $69
    ld l, c
    ld h, a
    pop hl
    ld h, a
    ret nz

    ld [c], a
    add c
    ld [c], a
    ret nz

    rst $38
    jp hl


    add sp, $5f
    ld sp, $6f49
    ld c, b
    ld l, c
    ld l, e
    ld l, e
    cp a
    db $e3
    ld [hl], a
    ld b, e
    ld b, b
    rst $18
    adc $ed
    db $ec
    ld e, [hl]
    ld sp, $c139
    ldh [$bf], a
    db $e3
    ld c, b
    inc a
    pop af
    ld sp, $a2f4
    jp z, $e8ff

    rst $20
    ld sp, $5231
    ld l, c
    rla
    ld l, e
    jr nc, jr_057_693e

    ld a, [hl]
    ld [c], a
    add hl, sp
    cp a
    and b
    ret nz

    rst $38
    ret nz

    ld a, [c]
    sbc b
    cp a
    pop hl
    ld b, d
    ldh [$c0], a
    pop hl
    ld a, [bc]
    dec bc
    jp z, $e8ff

    rst $20
    and h
    ld e, c
    and h
    add b
    ldh [$bf], a
    ld [c], a
    ld l, c
    ld d, d
    ld b, b
    and c
    add hl, hl
    ld a, [hl-]
    and b
    inc l
    jp z, $e8ff

    rst $20
    add b
    add b
    ret nz

    pop hl
    ld l, e
    ccf
    pop hl

jr_057_693e:
    ld b, c
    pop hl
    sub d
    db $fd
    add c
    ld e, l
    jp z, $c0ff

    jp hl


    ld [hl], d
    ld b, c
    ret nz

    cp a
    pop bc
    ld b, d
    rst $38
    ld c, c
    ld sp, $6031
    ld e, h
    ld e, l
    ld e, l
    ld e, h
    cp c
    ld e, e
    jp z, $80ff

    jp hl


    add b
    ld l, a
    ld l, [hl]
    rst $38
    and b
    ld l, c
    dec a
    ld b, h
    add e
    ret nz

    ld h, b
    ld e, e
    ld e, d
    ld e, e
    rst $38
    ldh [$ca], a
    rst $38
    xor h
    ret nz

    ld [$e1be], a
    ld d, h
    ld b, l
    jp Jump_057_60c0


    jp Jump_057_5be1


    inc bc
    ld e, e
    ld e, d
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_057_6aa4

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
    add c
    ld l, d
    or c
    ld l, d
    and h
    ld l, l
    or c
    ld l, a
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

jr_057_6aa4:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld a, l
    inc c
    rst $38
    ldh [$0b], a
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    db $e3
    ld a, a
    dec bc
    dec hl
    dec bc
    dec bc
    dec bc
    inc c
    ld c, h
    ld [$00e0], a
    db $fc
    ldh [$f9], a
    pop hl
    ld hl, sp-$1e
    ldh a, [$e2]
    ld a, [c]
    ld [c], a
    db $fc
    ld a, [c]
    pop bc
    ldh [$c9], a
    pop hl
    ldh [$c6], a
    ldh [$bf], a
    db $e3
    call nz, $ffe7
    ld [c], a
    ld sp, hl
    db $e4
    ld c, h
    inc c
    inc l
    ld a, [bc]
    cp [hl]
    ld a, [c]
    ld c, h
    pop bc
    pop hl
    dec hl
    cp a
    push hl
    db $fd
    pop hl
    sub d
    db $e4
    push bc
    ld [c], a
    add h
    add [hl]
    db $e3
    ld l, a
    ld [c], a
    inc l
    ret nz

    di
    add c
    ldh [$c1], a
    ldh [$7f], a
    db $e4
    ld l, e
    ld b, c
    ld l, e
    ld a, e
    ldh [rHDMA2], a
    db $e3
    sub d
    pop hl
    cp c
    ld [c], a
    or d
    push hl
    inc l
    cp a
    db $f4
    inc bc
    dec bc
    dec bc

Call_057_6b15:
    ret nz

    rst $20
    dec sp
    ld [c], a
    adc [hl]
    ld [c], a
    sub d
    ld [c], a
    ld b, c
    ld [c], a
    ld sp, hl
    db $e4
    ldh a, [$eb]
    ret nz

    ccf
    db $e3
    add hl, sp
    db $e4
    ld [hl-], a
    push hl
    ld c, e
    ld l, e
    dec bc
    dec hl
    ld bc, $bf6b
    call nz, $c2c1
    ld b, b
    db $e3
    ld d, d
    ldh [rTIMA], a
    and $bf
    push hl
    rst $38
    jp nc, $0b01

    ld c, l
    ldh [$80], a
    add $00
    ldh [$c0], a
    db $e4
    adc c
    rst $00
    db $fc
    push bc
    ld a, a
    call nc, Call_057_4d0c
    pop bc
    ret nz

    ret nz

    ld c, e
    ld c, e
    dec sp
    pop bc
    add c

jr_057_6b58:
    jp nz, $c6cd

    scf
    db $e3
    jr nz, jr_057_6b58

    db $e4
    db $f4
    ret z

    ld bc, $bff0
    pop hl
    nop
    jp Jump_000_0c6c


    ret z

    ret


    jp nz, $f900

    db $e4
    nop
    call nz, $cd38
    ret nc

    and b
    pop bc
    db $e3
    inc bc
    ret nz

    ld b, d
    push hl
    ld c, e
    add $80
    res 4, h

Jump_057_6b81:
    or e
    push hl
    ld l, a
    db $e4
    ld hl, sp-$57
    ret z

    and c
    add d
    db $e3
    jp $2ba0


    nop
    nop
    pop bc
    ld b, c
    add sp, $39
    jp nz, $a37f

    add c
    ldh [$34], a
    push bc
    ld hl, sp-$5f
    or l
    and [hl]
    sub c
    dec bc
    add a
    ldh [rLCDC], a
    ret nz

    ld b, [hl]
    and b
    ld l, e
    pop bc
    ldh [rSB], a
    ret nz

    ld l, h
    nop
    ld b, d
    and b
    db $d3
    call nz, $c339
    ld a, [hl]
    and d
    ld sp, hl
    db $e3
    ld [hl], h
    and $c2
    ret


    ret nz

    pop hl
    inc b
    adc b
    jp $a004


    ld l, e
    add e
    and b
    ld c, $a3
    ld b, b
    db $e4
    ret nz

    ldh [$f9], a
    push hl
    nop
    xor [hl]
    add $f7
    adc c
    ld c, l
    ld [c], a
    ld b, d
    and d
    ei
    db $e3
    ret nz

    ld [c], a
    sbc c
    add $00
    ld [$ae08], a
    add $b7
    and b
    ld [hl], h
    and [hl]
    dec hl
    adc [hl]
    add d
    pop bc
    add d
    inc b

jr_057_6bec:
    and c
    ret nz

    pop hl
    nop
    ld a, [bc]
    res 6, h
    rst $00
    ld l, l
    db $e3
    ret nz

    db $ec
    call $c8e0
    db $e3
    nop
    ldh [$7d], a
    ret nz

    inc bc
    dec hl
    dec bc
    dec c
    xor c
    ret z

    and [hl]
    jr nc, jr_057_6bec

    daa
    push hl
    add c
    add sp, $57
    add sp, $00
    sub h
    ld [$6afe], a
    rst $38
    push hl
    ld a, c
    xor b
    ld [hl], h
    add [hl]
    ld e, $c5
    inc [hl]
    add h
    ld d, a
    and h
    nop
    ld b, c
    add h
    inc bc
    add h
    or b
    ld h, l
    add sp, -$59
    or $67
    pop hl
    ld h, l
    ld hl, $fde5
    and $00
    ld [de], a
    db $e4
    ld a, [hl-]
    adc b
    rst $38
    and [hl]
    pop bc
    jp Jump_057_64b2


    ld b, b
    db $eb
    add c
    and $07
    push hl
    nop
    ld a, [hl-]
    add a
    rla
    add sp, -$40
    add sp, $40
    db $fc
    ld c, h
    ld h, b
    ld b, c
    add [hl]
    or h
    rst $00
    ccf
    jp nz, $0000

    pop af
    ld b, b
    db $ec
    call $cbe5
    adc d
    ld a, [hl]
    push hl
    ret nc

    and $f2
    ld c, e
    add hl, de
    add sp, $00
    pop bc
    adc b
    inc bc
    ld h, d
    ld [hl], b
    ld c, d
    adc a
    add sp, -$47
    ldh a, [$83]
    ld b, e
    ld bc, $38e4
    and h
    nop
    ld a, c
    ld h, h
    cp [hl]
    push bc
    ld c, [hl]
    add $f8
    and $9c
    ret z

    call z, Call_000_3446
    xor b
    ld [hl+], a
    rst $00
    nop
    nop
    jp hl


    ld b, d
    db $f4
    ld b, c
    ld b, e
    call $8367
    push hl
    scf
    ld l, l
    xor d
    scf
    adc $22
    nop
    ld [hl], h
    add h
    ld a, d
    add e
    and [hl]
    ld l, c
    ret nz

    or l
    and a
    xor d
    ld c, d
    add h
    ld b, c
    add a
    db $fd
    ld d, b
    nop
    cpl
    adc b
    jp Jump_000_03aa


    add [hl]
    dec b
    daa
    push de
    adc b
    ld d, b
    jp z, $0fe6

    ret


    db $ed
    nop
    ldh a, [$a6]
    add hl, hl
    ret


    ld sp, $2bf1
    ret z

    inc a
    ld b, [hl]
    rst $38
    ld h, a
    ld a, e
    dec b
    or a
    ld [$1500], sp
    adc e

Jump_057_6ccd:
    dec c
    adc c
    and h
    add l
    ld [hl+], a
    adc h
    jp nz, Jump_057_4043

    add a
    jp c, $e4e5

    and a
    nop
    ld d, e
    add sp, -$0d
    ret z

    ld b, e
    ld b, [hl]
    add d
    ld b, c
    ret nz

    ld l, e
    push de
    db $ec
    ld b, $a4
    call Call_000_006b
    ld b, e
    ld c, c
    jp nz, $a287

    ld [hl], d
    ld [hl], h

Jump_057_6cf4:
    ld h, a
    or l
    jr z, jr_057_6d3e

    and [hl]
    add e
    add e
    or d
    adc e
    nop
    push de
    db $ed
    call $9470
    ret c

    and d
    ld l, l
    ld sp, hl
    jp Jump_057_6ccd


    add l
    adc c
    pop bc
    ld c, c
    nop
    and d
    ld [hl], b
    ld d, h
    ld b, e
    call $a16c
    rst $00
    pop bc
    pop de
    and d
    ld l, e
    or e
    ld b, a
    and c
    jp nc, Jump_000_1500

    sub c
    ld [de], a
    pop af
    scf
    and $43
    ld c, l
    push de
    ld [hl], c
    ld [de], a
    rst $28
    ld e, d
    ld [bc], a
    ld b, e
    ld d, c
    nop
    cp a
    ret nc

    rst $18
    ld c, a
    ld h, d
    xor l
    add l
    sub c
    db $fc
    ei
    add [hl]
    ld b, d
    db $76

jr_057_6d3e:
    call nc, $ffff
    nop
    ld b, b
    add sp, $64
    db $f4
    rst $38
    rst $38
    add hl, sp
    ld h, a
    ld [$c046], sp
    rst $38
    and [hl]
    xor h
    ret nz

    db $ec
    nop
    rst $38
    rst $38
    di
    call nc, $aa8d
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], h
    ld l, h
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    push hl
    call c, $ffff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $73
    nop
    nop
    nop
    rst $38
    jr nz, jr_057_6dc7

    jr nz, jr_057_6db1

    ld sp, $4d31
    ld a, [hl-]
    rst $38
    ld d, h
    ld d, l
    ld d, h

jr_057_6db1:
    ld d, h
    ld d, h
    dec sp
    ld c, l
    ld sp, $601f
    ld e, e
    ld e, e
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    ldh [$bf], a
    dec d
    ld sp, $324d

jr_057_6dc7:
    ld l, l
    ld h, l
    rst $38
    ldh [$6d], a
    and e
    ld l, l
    ld [hl-], a
    cp a
    ld [c], a
    jp z, $c0ff

    jp hl


    nop
    pop bc
    pop hl
    ld h, a
    rst $30
    ld l, l
    ld l, h
    ld l, h
    ei
    ldh [$6d], a
    add hl, sp
    ld sp, $f931
    ld e, a
    ret nz

    rst $38
    add b
    ld [$3108], a
    add hl, sp
    ld l, e
    ld h, [hl]
    rst $18
    ld l, e
    ld l, e
    jr nc, @+$32

    ld l, e
    ld sp, hl
    ldh [$93], a
    sub l
    cp b
    cp a
    ldh [$ca], a
    rst $38
    ld b, b
    jp hl


    dec d
    ld sp, $c052
    rst $20
    ld l, e
    adc a
    sbc l
    sbc a
    ld sp, $ca5e
    rst $38
    nop
    add sp, $41
    ldh [$35], a
    db $fd
    ld l, e
    ld b, b
    push hl
    ld l, e
    sub e
    add [hl]
    sbc a
    ld sp, $bc31
    jp z, $c0ff

    ld [$3039], a
    jr nc, jr_057_6e91

    ret nz

    call nz, $c16d
    sub c
    ret nz

    rst $38
    add b
    call z, $e001
    ret nz

    pop hl
    ret nz

    ret nz

    sbc c
    sbc b
    ld a, a
    sbc h
    sbc h
    add [hl]
    sub b
    ld sp, $2931
    jp z, $beff

    ld b, b
    ret z

    dec d
    ld sp, $48af
    ld l, e
    add [hl]
    ldh [rOCPS], a
    ld a, e
    sub h
    add [hl]
    rst $38
    pop hl
    sub d
    ld sp, $1615
    jp z, $beff

    add sp, -$19
    rrca
    ld sp, $8131
    add e
    pop bc
    pop hl
    ld l, d
    db $fd
    sbc l
    ret nz

    ldh [$96], a
    sub a
    ld sp, $1731
    jr z, @-$02

    jp z, $e8ff

    rst $20
    ld sp, $ab31
    xor c
    db $76
    ld c, b
    db $fc
    pop bc
    ldh [rTIMA], a
    ldh [$86], a
    sub l
    ld sp, $3162
    ld sp, $2bf3
    inc l
    jp z, $c0ff

    add sp, -$59
    xor d
    add b
    add b
    ld l, l
    add e
    pop bc
    ldh [$30], a
    sub e

jr_057_6e91:
    inc b
    ldh [$60], a
    ld e, a
    ld b, c
    ldh [$f9], a
    jr nz, @-$34

    rst $38
    add b
    add sp, -$54
    xor c
    add b
    add b
    ld a, d
    cp $c1
    ldh [$30], a
    jr nc, @-$61

    sub d
    ld h, c
    ld e, e
    ld e, [hl]
    ld hl, sp+$41
    ldh [$c0], a
    rst $38
    jp hl


    add sp, $5e
    ld sp, $8081
    add b
    ld [hl], e
    db $76
    ld c, b
    pop bc
    ldh [$85], a
    and b
    ld h, c
    ld e, e
    ld h, c
    ld b, c
    ldh [$3c], a
    ret nz

    rst $38
    jp hl


    add sp, $5f
    ld sp, $80a1
    ccf
    ldh [$81], a
    ldh [$cb], a
    add e
    ld [hl], b
    inc b
    and b
    ld e, [hl]
    ret nz

    rst $38
    db $ec
    db $eb
    ld e, e
    ld h, b
    cp $3f
    pop hl
    ld a, b
    ld l, [hl]
    ld d, l
    ld l, [hl]
    ld a, c
    xor [hl]
    ld [hl], b
    rlca
    ld sp, $5f5e
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_057_7010

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
    db $ed
    ld l, a
    dec e
    ld [hl], b
    adc h
    ld [hl], d
    jr nc, jr_057_7061

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

jr_057_7010:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld a, l
    ld a, [bc]
    rst $38
    rst $28
    dec bc
    inc c
    inc c
    ld c, h
    ld c, h
    db $fd
    and $0c
    push af
    ldh [$f0], a
    ld [c], a
    inc l
    inc l
    ld hl, sp-$20
    db $fd
    rst $28
    ret nz

    ei
    cp c
    ldh [$66], a
    jp nz, Jump_057_4ce3

    inc l
    ret nz

    rst $38
    add d
    db $e4
    dec bc
    dec bc
    set 4, c
    jr nz, jr_057_70c4

    db $e3
    db $fc
    db $e3
    ld [hl], b
    pop hl
    pop bc
    db $f4
    add b
    xor $0b
    cp a

jr_057_7051:
    ldh [rLCDC], a
    or $61
    inc l
    cp $e0
    cp d
    db $ec
    sub c
    ldh [$fd], a
    pop hl
    ld l, e
    ld c, e
    rst $38

jr_057_7061:
    ld [c], a
    rlca
    dec bc
    dec hl
    dec hl
    cp a
    ldh [rLCDC], a
    db $fc
    scf
    db $e4
    jr nc, jr_057_7051

    jp $0ce2


    rst $38
    pop hl
    or a
    pop hl
    dec hl
    ld c, e
    db $fc
    ldh [rLCDC], a
    ld hl, sp-$80
    di
    call nz, Call_000_01e0
    dec hl
    cp l
    ldh [$c4], a
    ldh [$bf], a
    ld [c], a
    ld b, b
    pop hl
    jp nz, $80c5

    ret z

    add a
    pop hl
    inc b
    ld b, b
    ld a, [c]
    add [hl]
    pop hl
    dec hl
    cp a
    pop hl
    dec [hl]
    pop hl
    ret nz

    db $e4
    ld b, b
    ret c

    ld a, c
    call z, Call_000_008a
    db $e3
    dec hl
    cp a
    push hl
    dec hl
    ld hl, sp-$3f
    ld b, b
    rst $18
    ret nz

    ret


    dec hl
    nop
    cp $e1
    cp a
    push hl
    ld [bc], a
    ldh [rLCDC], a
    call c, $f080
    jp nz, Jump_057_7ee1

    db $e4
    ret nz

    db $e3
    db $10
    ld b, b
    ld a, [$a2b8]
    or e

jr_057_70c4:
    and [hl]
    ld b, b
    jp $bf4b


    push hl
    ret nz

    db $ec
    ld b, b
    rst $38
    ret nz

    xor d
    pop bc
    dec bc
    ret nz

    ld a, h
    db $e3
    add hl, sp
    call nz, $bf80
    ret nz

    db $eb
    inc l
    inc l
    nop
    ld a, l

jr_057_70df:
    push hl
    ld a, [hl]
    jp $e5c1


    ld b, b
    adc $3a
    push bc
    call z, $c0e2
    jp hl


    cp a
    db $e3
    nop
    ld a, c
    and b
    ret nz

    jp nz, $e34a

    rlca
    and d
    inc c
    and e
    jr c, jr_057_70df

    jp hl


    db $e4
    ret nz

    db $ec
    nop
    ld d, d
    add b
    ld a, [hl]
    db $e3
    ld a, [hl]
    and d
    add b
    push bc
    pop bc
    db $e4
    ret


    push hl
    ld a, [hl-]
    add d
    adc l
    ld [$a400], a
    jp hl


    dec d
    adc h
    inc b
    db $e4
    ret


    adc b
    ld [bc], a
    add e
    ld b, b
    db $e3
    ret nz

    db $f4
    adc $69
    nop
    ret nz

    db $e4
    add hl, bc
    add l
    ret nz

    push hl
    add hl, hl
    db $e3
    ld hl, sp+$6b
    call nc, $8ec6
    ld l, b
    rrca
    and $00
    add hl, bc
    add a
    jp $ce6a


    jp nz, $8635

    call z, Call_000_3ceb
    add sp, -$37
    add [hl]
    ld c, l
    add e
    nop
    ld a, a
    and a
    ret nz

    ld [$c595], a
    ld [$93e7], sp
    add e
    ld d, c
    pop bc
    ld [hl], a
    push bc
    ld d, e
    add sp, $00
    or h
    db $e4
    ld sp, $c166
    and $8d
    res 0, [hl]
    push bc
    adc c
    call nz, $8303
    and a
    push hl
    nop
    nop
    jp z, $4495

    rrca
    ret


    add h
    and h
    rst $08
    ld b, b
    ret nz

    ld a, [c]
    or a
    ld c, d
    ret nz

    ret c

    nop
    sub c
    and b
    ld b, c
    ld [$e831], a
    add b
    pop af
    ret nz

    rst $00
    nop
    ret


    ld d, e
    res 6, b
    add $00
    ld b, b
    xor $00
    jp nc, $cdc0

    ld a, c
    and l
    db $f4
    jr z, jr_057_7193

jr_057_7193:
    jp c, $eb7f

    ld [hl], c
    rst $00
    nop
    inc bc
    xor d
    ld b, b
    ld hl, sp-$40
    ld b, e
    ld l, [hl]
    and e
    ld [$75e9], a
    add hl, hl
    ld b, b
    cp b
    ld a, b
    and a
    nop
    cp a
    call z, $8984
    ld d, e
    ld b, a
    or $8a
    db $10
    and l
    ccf
    inc h
    xor l
    ld h, d
    xor a
    rst $08
    nop
    add l
    xor e
    ld d, d
    ld l, h
    ld [hl-], a
    and [hl]
    add hl, sp
    adc h
    ld b, b
    db $ec
    ld d, d
    ld a, c
    ld hl, sp+$17
    jp nz, Jump_000_0086

    cp l
    adc e
    ret


    adc e
    cp b
    ld d, l
    ret nz

    ld l, l
    ld d, d
    ld [hl], e
    inc hl
    add a
    ld hl, sp+$0e
    add c
    ld l, b
    nop
    ld a, [hl]
    add a
    ld d, d
    ld l, l
    and l
    ret z

    ld hl, sp+$0d
    ld [hl], e
    dec hl
    ld a, l
    xor c
    sub c
    ld b, a
    ld b, b
    ld [c], a
    nop
    ld h, [hl]
    push af
    dec hl
    xor h
    db $d3
    ld h, $72
    adc c
    ei
    and [hl]
    cp b
    ld c, [hl]
    add d
    ld c, c
    rst $10
    ld b, h
    nop
    sbc c
    or c
    ld h, [hl]
    or $b3
    dec c
    sbc c
    or h
    inc hl
    add a
    ld h, [hl]
    db $ed
    cp [hl]
    xor l
    sbc c
    or d
    nop
    add [hl]
    inc h
    ld h, [hl]
    di
    rst $38
    rst $38
    push bc
    ld b, $66
    pop af
    rst $38
    rst $38
    ld h, [hl]
    ld sp, hl
    rst $38
    rst $38
    nop
    ret nc

    ld b, a
    ld b, e
    add [hl]
    add b
    rst $38
    ret nz

    db $ed
    ld h, $a6
    ld h, b
    ld h, [hl]
    add b
    rst $38
    ld b, b
    ldh a, [rP1]
    ld [$c047], a
    rst $38
    pop de
    ld c, a
    ret nz

    db $eb
    rst $38
    rst $38
    di
    call nc, $adcd
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld sp, $ff0c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $db
    inc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    dec de
    ld c, c
    nop
    nop
    nop
    dec e
    adc b
    rst $38
    xor $8b
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    rst $28
    add hl, sp
    ld e, d
    ret nz

    rst $38
    ret nz

    ld hl, sp-$75
    ld e, e
    ld e, e
    ret nz

    rst $38
    add b
    rst $30
    and a
    adc e
    ld e, e
    ld e, d
    ret nz

    rst $38
    ld [$62e9], a
    rst $38
    ld [c], a
    inc [hl]
    rst $38
    ld b, l
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld b, l
    ld b, a
    ld h, d
    and e
    ld e, l
    ld e, h
    cp a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld sp, $e0ff
    ld c, l
    rst $38
    ld b, l
    ld b, h
    ld l, l
    ld l, l
    jr nc, jr_057_733c

    ld l, l
    ld l, d
    sbc a
    ld b, d
    inc a
    ld sp, $6031
    add b
    rst $38
    ret nz

    db $ec
    ld b, a
    rst $28
    ld [hl-], a
    ld l, c
    ld l, e
    ld l, d
    cp a
    db $e4
    scf
    ld sp, $f331
    ld h, d
    ld h, d
    jp z, $80ff

    jp hl


    inc a
    ld b, d
    ld l, e
    ld l, c
    push bc
    ld l, e
    cp a
    push hl
    add hl, sp
    ld [hl], b
    pop hl
    jp z, Jump_057_40ff

    jp hl


    ld d, e
    ld l, e
    adc h
    ret nz

    pop hl
    ld a, [hl]
    db $e4
    ld d, d
    and l
    rst $38
    ldh [$ca], a
    rst $38
    add b
    ld [$1955], a
    ld [hl], $c0
    pop hl
    dec a
    db $e3
    ld d, d
    add b
    rst $38
    ldh [$ca], a
    rst $38
    ret nz

    set 0, a
    ld b, a
    ld b, l
    ld b, h
    cp a
    push hl
    ret nz

    rst $38
    add b
    ret nc

    ld sp, $e131
    inc [hl]
    cp [hl]
    ld [c], a
    cp e
    ret nz

    ret nz

    rst $38
    db $ed
    db $ec
    inc d
    inc d
    ld [de], a
    push bc
    ld de, $c23c
    ld [hl-], a
    db $fc
    jp nz, $ffc0

jr_057_733c:
    db $ed
    db $ec
    inc h
    inc h
    db $eb
    ld [hl+], a
    ld hl, $e2be
    inc [hl]
    cp a
    pop hl
    ld b, h
    inc a
    xor b
    db $fc
    ret nz

    rst $38
    db $eb
    ld [$2020], a
    jr nz, jr_057_7364

    ld [hl+], a
    ld hl, $297d
    inc a
    ld [c], a
    ld d, h
    ld b, l
    inc [hl]
    ld sp, $c0a0
    rst $38
    nop
    ret nz

    db $ed

jr_057_7364:
    cp [hl]
    ldh [$bf], a
    ld [c], a
    push af
    jp nz, $ffc0

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_057_748f

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
    ld l, h
    ld [hl], h
    sbc h
    ld [hl], h
    inc e
    ld [hl], a
    xor $78
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

jr_057_748f:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, a
    ld c, h
    ld c, h
    dec bc
    dec bc
    ld c, h
    rst $38
    jp hl


    inc c
    rst $38
    db $e4
    nop
    or $e0
    db $f4
    and $fb
    ld a, [$eebe]
    cp l
    ld [c], a
    cp b
    ldh [$b4], a
    ld [c], a
    ld hl, sp-$1f
    inc e
    ldh a, [$e4]
    jp nz, Jump_057_6cf4

    inc l
    dec bc
    rst $38
    ldh [$89], a
    rst $20
    ld a, l
    pop hl
    ld [$e5c5], sp
    ld a, c
    rst $38
    ld b, h
    ldh [$6c], a
    ret nz

    pop hl
    db $fc
    rst $20
    dec a
    and $81
    push hl
    inc e
    ld a, c
    db $fd
    add c
    ldh [rOCPD], a
    ld l, e
    ld c, e
    rst $38
    push hl
    ld [hl], h
    pop hl
    ld a, h
    db $e3
    db $10
    push bc
    push hl
    rst $30
    ret nz

    db $fd
    db $e4
    ld [c], a
    jp $dd2c


    jp $e3f9


    ld b, h
    pop hl
    rst $38
    ld l, e
    ld l, e
    ld l, e
    dec bc
    ld c, e
    ld c, e
    dec hl
    dec hl
    ld b, c
    dec hl
    jp nz, $c0e0

    push hl
    call nz, $b4ca
    ret c

    jp nz, Jump_000_0be3

    ret nz

    db $e3
    ret nz

    ld sp, hl
    pop hl
    ld a, a
    ldh [$f5], a
    jp z, $fc3b

    jp nz, Jump_057_4be2

    pop hl
    dec bc
    dec hl
    ld bc, $c04b
    ldh [$78], a
    ldh [$b4], a
    call nz, $e34f
    inc a
    ret nz

    dec sp
    di
    ret nz

    and $01
    dec bc
    jp z, Jump_057_7ee2

    pop hl
    ld b, b
    ld [c], a
    ld [hl], h
    ret z

    ld bc, $fec9
    add $eb
    xor l
    ld bc, $ca0b
    db $e3
    pop bc
    pop bc
    ret nz

    and $4a
    and $31
    jp $c6b4


    ld h, $c5
    inc b
    xor b
    xor c
    ret nz

    rst $20
    ld l, e
    cp $e0
    ld a, a
    db $e3
    adc d
    call nz, $e6c0
    ld a, d
    add $38
    ld [hl-], a
    jp nz, $a25d

    ld a, h
    call nz, $0c0c
    dec hl
    jp z, Jump_057_42e2

    pop bc

jr_057_7569:
    nop
    inc a
    jp nz, $e640

    ld b, h
    xor h
    ld l, l
    add sp, $2e
    xor e
    adc e
    ret nz

    inc c
    jp nz, $c480

    nop
    nop
    di
    ld a, b
    rst $00
    db $ec
    adc [hl]
    nop
    ldh [$81], a
    xor d
    inc sp
    pop bc
    call c, $fea2
    xor a
    ld b, h
    ld l, a
    call nz, $819c
    inc l
    rst $38
    ldh [$83], a
    and [hl]
    jp nz, $0aec

    ld b, b
    call nz, Call_057_4100
    db $ec
    jr nc, jr_057_7569

    ret nz

    di
    or a
    and d
    or h
    add e
    jr c, @-$7a

    ld d, l
    and e
    add hl, sp
    and h
    ld [bc], a
    rra
    add [hl]
    ld c, h
    add c
    rst $20
    dec hl
    sub [hl]
    add l
    adc c
    di
    add sp, -$57
    db $e4
    ret nz

    ld a, [c]
    nop
    adc $6f
    or d
    ld l, b
    ld b, $c7
    or $76
    ld d, l
    adc a
    sub b
    add l
    ccf
    and $32
    add h
    nop
    pop bc
    jp nz, $eb3e

    ld a, [de]
    or h
    ld c, l
    rst $00
    inc h
    ld h, d
    dec hl
    ld h, h
    ret nz

    db $ec
    adc $67
    nop
    ld a, [de]
    xor h
    sub b
    and e
    ld l, h
    ld h, l
    push af
    and [hl]
    ld b, b
    ret


    jp c, Jump_000_1ae6

    xor a
    ei
    push hl
    nop
    push bc
    add [hl]
    sub $e7
    ld a, a
    ret z

    ld h, e
    rst $00
    ld a, [de]
    xor a
    ld b, d
    add d
    ld [hl], e
    ld h, h
    xor h
    ld l, l
    nop
    ld hl, $1ab0
    xor [hl]
    add [hl]
    ld d, b
    ccf
    pop de
    ld b, a
    ret nc

    dec d
    rst $20
    db $76
    ld b, l
    ld [hl], d
    ld b, [hl]
    nop
    ld b, b
    xor e
    sbc h
    ld d, c
    call nc, $bc47
    ld [hl+], a
    or $e5
    ld a, [hl]
    jp $21a7


    add e
    db $ec
    nop
    sbc h
    ld c, l
    ld c, d
    ld h, [hl]
    or e
    push hl
    ld [hl], e
    inc hl
    db $76
    rst $00
    ld b, d
    xor [hl]
    ld h, c
    ld l, e
    cp h
    dec h
    nop
    ret nc

    ld h, l
    ld [hl], d
    rst $00
    ld b, b
    and l
    ret nz

    ld a, [hl+]
    ld h, c
    ld l, a
    dec d
    add $78
    daa
    xor l
    ld a, [hl+]
    nop
    ret nz

    db $eb
    ld h, c
    ld l, [hl]
    ld b, e
    add hl, hl
    jp $edc9


    adc e
    ld h, c
    ld a, c
    ld l, [hl]
    xor b
    ld a, c
    jr z, jr_057_7655

jr_057_7655:
    add hl, hl
    adc h
    ld h, c
    ld [hl], a
    ld b, d
    inc h
    ld b, [hl]
    ld c, e
    inc [hl]
    inc h
    add a
    ld h, c
    jp $c280


    adc [hl]
    nop
    ld h, c
    ld l, b
    ld d, a
    ld [$caa8], a
    push bc
    ld h, d
    nop
    adc a
    ld h, c
    ld l, l
    ld [bc], a
    jp hl


    add hl, bc
    ld c, d
    ld bc, $454c
    jp Jump_057_6b81


    ld h, c
    ld l, [hl]
    dec sp
    push bc
    add hl, bc
    ld c, a
    rst $28
    ld h, h
    ret nz

    db $ec
    nop
    ld h, c
    ld l, l
    add hl, bc
    ld d, [hl]
    ld a, b
    ld d, $61
    ld [hl], e
    add hl, bc
    ld c, l
    add c
    ld l, d
    jr nc, jr_057_769b

    ld h, c
    ld l, a
    nop
    add hl, bc
    ld d, [hl]
    ret nz

jr_057_769b:
    ld a, [c]
    ld a, d
    ld e, e
    add hl, sp
    add hl, bc
    ld b, c
    or $af
    ld d, h
    add hl, bc
    ld c, l
    xor d
    add a
    nop
    rst $38
    rst $38
    xor b
    jp nc, $ff7f

    xor b
    jp c, $cfe0

    ld a, a
    ld sp, hl
    xor b
    ret nc

    add b
    rst $38
    nop
    ret nz

    ld [$684f], a
    inc bc
    ld b, h
    add b
    rst $38
    ld l, h
    jr nc, jr_057_76f5

    ld b, [hl]
    ld b, c
    sub [hl]
    ld a, a
    call c, $c000
    add sp, -$01
    rst $38
    di
    call nc, $bfcd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    db $d3
    nop
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_76f4:
    rst $38

jr_057_76f5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38

Jump_057_7700:
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, [hl]
    ld [hl], e
    nop
    nop
    nop
    rst $38
    ld a, [bc]
    dec bc
    ld sp, $1131
    ld [de], a
    ld hl, $7d22
    inc h
    rst $38
    db $e4
    jr z, jr_057_774b

    jr nz, jr_057_774d

    nop
    rst $38
    rst $38
    sub $e7
    and $20
    jr nz, jr_057_76f4

    db $e3
    inc d
    rst $38
    db $e4
    ld hl, $b122
    db $10
    ret nz

    rst $38
    jp hl


    add sp, -$72
    ldh [$2b], a
    ld sp, $e0ff
    inc b
    jr nz, @+$01

jr_057_774b:
    db $e4
    ld [hl], h

jr_057_774d:
    pop hl
    jp z, $e8ff

    rst $20
    adc b
    ldh [$29], a
    ret nz

    pop hl
    db $fc
    rst $20
    jp $1211


    jp z, $e8ff

    rst $20
    adc b
    ldh [$81], a
    ldh [rBGP], a
    ld a, [hl-]
    rst $38
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, l
    dec sp
    pop hl
    ld c, l
    ld [hl], e
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld b, h
    pop hl
    ld b, a
    ld b, [hl]
    ld [hl], $df
    ld l, e
    jr nc, @+$32

    ld l, e
    ld l, c
    ei
    ldh [$30], a
    add hl, sp
    ldh [$c0], a
    rst $38
    ret nz

    db $ec
    jp nz, $c5e1

    pop hl
    ret nz

    ldh [$6c], a
    ld l, h
    jr nc, jr_057_7808

    ld c, b
    ld c, c
    ret nz

    rst $38
    ld [$4de9], a
    ld b, [hl]
    ld [hl], $ca
    ldh [rIE], a
    ld l, l
    ld l, d
    ld l, h
    ld l, h
    ld l, d
    jr nc, jr_057_7815

    ld l, h
    and e
    ld l, h
    ld l, l
    ld a, a
    pop hl
    jp z, $e8ff

    rst $20
    add hl, sp
    jp z, $6de3

    cpl
    ld l, b
    ld l, b
    jr nc, jr_057_7826

    dec sp
    pop hl
    ld l, e
    ret nz

    rst $38
    db $eb
    ld [$5321], a
    jp z, Jump_000_06e3

    ldh [$c0], a
    db $e3
    ld b, b
    ldh [$5e], a
    jp z, $c0ff

    xor $90
    add b
    ldh [$7b], a
    ldh [rLCDC], a
    ldh [$c0], a
    ret nz

    ld e, a
    jp z, $e8ff

    rst $20
    add e

Jump_057_77e0:
    ld a, h
    ld a, [bc]
    ld [c], a
    nop
    ld [c], a
    ld l, l
    jr nc, jr_057_7854

    ld l, h
    ld [hl], $81
    ldh [$99], a
    ld e, e
    jp z, $e8ff

    rst $20
    add h
    ld [hl], $ca
    ldh [$80], a
    push bc
    ld [hl], $e3
    ld b, [hl]
    ld b, a
    add c
    ldh [$c0], a
    rst $38
    jp hl


    add sp, -$80
    ld l, a
    ld a, [hl]
    reti


    ld d, h
    ret z

jr_057_7808:
    and b
    pop bc
    and b
    ld d, h
    ld d, h
    jp nz, $5de1

    ld e, h
    sub c
    ld e, e
    ret nz

    rst $38

jr_057_7815:
    ret nz

    jp hl


    rst $38
    db $e4
    and c
    dec sp
    and d
    jp nz, Jump_057_5ae1

    nop
    ret nz

    rst $38
    ret nz

    db $f4
    add h
    pop hl

jr_057_7826:
    cp $e1
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_057_7854:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_057_794d

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
    ld a, [hl+]
    ld a, c
    ld e, d
    ld a, c
    ld [$a97b], a
    ld a, l
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

jr_057_794d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $ed
    inc c
    rst $38
    rst $20
    inc l
    dec bc
    rst $38
    pop hl
    ld c, e
    ld c, e
    ld a, [bc]
    add [hl]
    db $ec
    ldh [$4c], a
    ld c, h
    db $fd
    rst $20
    db $fc
    push hl
    or $e0
    cp $f7
    ld c, h
    cp a
    ld c, h
    ld c, h
    ld l, h
    dec bc
    dec bc
    dec hl
    ret nz

    ldh [$0a], a
    add c
    ld c, e
    pop bc
    db $e4
    db $ed
    ldh [$be], a
    rst $38
    add b
    push hl
    add h
    ld [c], a
    cp a
    ldh [$2b], a
    nop
    ld a, a
    ldh [$ad], a
    push hl
    cp b
    push hl
    and d
    ld [c], a
    cp d
    db $e4
    jp nz, $befa

    db $e3
    ret nz

    db $e4
    add sp, $51
    and $48
    push hl
    pop bc
    push af
    ld l, h
    add e
    ld [c], a
    ld l, e
    ld l, e
    ld c, e
    db $10
    rst $38
    ld [c], a
    cp $c0
    add l
    pop hl
    rst $38
    ret c

    inc l
    ld sp, hl
    ld [$e0c0], a
    jp nz, Jump_000_01e2

    ld l, e
    jp $c1c2


    ret nz

    ret nz

    pop hl
    ret nz

    ret


    ld b, c
    add sp, -$42
    ret nc

    ret


    ret nz

    ld bc, $c20c
    push hl
    add d
    jp nz, $e07f

    or c
    jp $e512


    ld b, c
    add sp, -$40
    di
    nop
    ld b, l
    ldh [$88], a
    ret nz

    cp a
    push hl
    dec sp
    ret nz

    ld d, d
    push bc
    ld c, a
    jp nz, $c14a

    adc b
    db $db
    nop
    pop bc
    ldh [$c0], a
    rst $20
    db $fc
    and c
    add [hl]
    call nz, $c6f9
    inc sp
    ret z

    ld c, b
    ret nc

    pop bc
    pop hl
    nop
    ret nz

    db $ec
    ret nz

    and l
    pop bc
    and $fb
    and [hl]
    ret nz

    pop af
    dec bc
    ret nz

    ret nz

    xor $43
    push hl
    nop
    rst $38
    push hl
    jp nz, $81c8

    jp nz, $c683

    ld c, h
    and d
    ret nz

    rst $00
    ld b, b
    push hl
    ld a, a
    and a
    nop
    or $a6
    ccf
    and e
    ld c, d
    add $c0
    db $ec
    ld b, b
    jp nz, $a041

    sub h
    rst $00
    cp $c3
    nop
    cp c
    call nz, $c574
    ld sp, hl
    adc [hl]
    ld c, b
    and e
    ld bc, $c0c4
    add sp, $01
    xor b
    nop
    push hl
    inc b
    ld [hl], h
    call nz, $81f1
    inc l
    rst $38
    ldh [$08], a
    and l
    ld b, h
    jp nz, $e780

    adc d
    db $e4
    nop
    ld c, b
    ld [$8aba], a
    xor c
    add c
    ret nz

    ld [$e3bf], a
    add b
    push hl
    inc de
    db $e4
    ld c, b
    ld [$ba00], a
    adc d
    dec d
    add d
    add c
    push hl
    ld [$5ac2], a
    ret z

    ld c, e
    add h
    ld c, b
    db $ed
    add hl, sp
    push bc
    nop
    xor c
    add l
    ret nz

    rst $20
    add hl, de
    xor l
    ld b, $88
    ld c, b
    adc c
    ei
    ld h, [hl]
    ld a, d
    jp hl


    ld a, [hl+]
    xor d
    nop
    and d
    ld l, a
    rlca
    xor c
    ei
    ld h, [hl]
    ld h, a
    ld h, e
    pop bc
    pop bc
    ld [hl], $cb
    ld e, e
    ret


    xor $ee
    nop
    ld a, [c]
    ld l, d
    add b
    call nz, $8439
    and d
    add $19
    and [hl]
    xor $ef
    nop
    jp hl


    cp a
    rst $08
    nop
    add hl, de
    xor h
    cp $e4
    rlca
    xor h
    ld [hl], l
    xor c
    ld a, a
    push hl
    ld l, e
    ld h, a
    add hl, de
    xor c
    or l
    ret


    nop
    ret


    ld h, [hl]
    pop bc
    ret


    ld sp, hl
    ld c, e
    adc d
    and $08
    db $eb
    cp a
    xor a
    ld a, e
    ld l, c
    cp a
    jp Jump_000_3f00


    db $ed
    add a
    xor d
    xor $e6
    or e
    ld d, e
    rst $38
    xor d
    ld e, d
    and $00
    and $ee
    ld [$7b00], a
    ld l, c
    nop
    push hl
    pop bc
    cpl
    inc e
    ld b, l
    reti


    ld b, l
    xor $ea
    ld a, e
    ld h, [hl]
    ld d, b
    and l
    nop
    reti


    or b
    ld d, l
    xor $07
    add [hl]
    ld h, d
    ret


    sbc d
    push bc
    add a
    db $ec
    nop
    db $ec
    xor $e8
    nop
    ld h, d
    call z, Call_000_0dfa
    inc hl
    ld h, a
    rst $18
    ld b, $56
    add a
    inc sp
    adc a
    ld [hl], c
    ld c, [hl]
    sbc l
    ld c, c
    nop
    ld de, $c772
    add a
    rst $00
    rst $00
    dec sp
    ld l, c
    sbc l
    ld b, a
    ret


    ld l, [hl]
    ld a, c
    dec hl
    ld sp, $0064
    add a
    ld h, c
    jp Jump_057_4180


    jp z, Jump_000_2692

    ld de, $3c6c
    jr z, jr_057_7b93

    ld h, l
    ld b, a
    ld h, d
    nop
    ld b, c
    ld h, a
    ld d, l
    ld l, c
    ld de, $b86e
    xor b
    inc b
    add [hl]
    ld [$c162], sp
    ld l, b
    ld [hl+], a
    db $eb
    nop
    ld c, d
    ld l, h
    inc b
    adc h
    cp l
    dec h
    add c
    add sp, $00
    xor $81
    jp hl


    or a
    jp hl


    cp l
    rla
    nop
    sbc b
    ld b, $60
    ld c, $3a
    rst $20
    or l
    ld b, $3c
    ld [hl+], a
    add b
    ld [$3329], a
    ret nz

    rst $08
    nop
    ccf
    add sp, -$40
    db $eb
    ld sp, hl
    ld hl, sp-$5b
    ld l, l
    ld b, c
    pop af
    add e
    ld a, [$6cb7]
    ld d, h
    ld a, [$8080]
    ld d, d
    and l
    ld l, h
    ld a, a
    rst $38
    ccf
    pop af
    ld a, [bc]
    adc b
    ld a, a
    rst $38
    ld [$2c66], a
    nop
    db $e4
    ld b, a
    rlca
    push bc
    add b
    rst $38
    ret nz

    ld [$68a8], a
    cp l
    add hl, bc
    rst $38
    rst $38
    ld a, a
    rlc b

jr_057_7b93:
    add [hl]
    ld b, $13
    call c, $d67f
    ret nz

    add sp, -$01
    rst $38
    di
    call nc, $bfcd
    rst $38
    rst $38
    nop
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
    scf
    db $eb
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, l
    inc sp
    nop
    nop
    nop
    ld a, l
    jr nz, @+$01

    and $2d
    daa
    ld sp, $5b61
    rst $38
    pop hl
    db $e3
    ld e, d
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    push hl
    dec b
    dec b
    inc d
    cpl
    add hl, hl
    ld sp, $6031
    pop bc
    pop hl
    ld e, e
    jp z, $c0ff

    db $ed
    scf
    ld a, [bc]
    dec bc
    ld sp, $e3ff
    ld e, l
    ld e, h
    ld a, l
    ldh [$ca], a
    rst $38
    ld h, b
    add b
    db $eb
    jp nz, $bee6

    db $e4
    jp z, Jump_057_40ff

    ld [$2627], a
    add e
    pop hl
    rst $38
    ld b, a
    ld b, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    ld b, [hl]
    ld b, a
    ld h, a
    ld sp, $5f31
    jp z, Jump_000_00ff

    jp hl


    dec l
    rla
    jp nz, $ffe2

    ld [hl], $6c
    ld h, a
    ld l, d
    ld l, l
    jr nc, jr_057_7c75

    ld [hl], $67
    ld c, c
    ld sp, $ca5e
    rst $38
    add sp, -$19
    inc h
    inc h
    add c
    ldh [$71], a
    ld c, l
    jp nz, $ffe0

    ldh [$bf], a
    ld [c], a
    add hl, sp
    ld sp, $ca31
    rst $38
    cp d
    add sp, -$19
    inc d
    adc c
    ret nz

    ld c, l
    ld [hl-], a
    ld h, [hl]
    pop bc
    pop hl
    ld l, h
    adc a
    ld l, h
    ld h, [hl]
    ld l, c
    ld l, e
    ret nz

    rst $38
    db $ec
    db $eb
    adc b

jr_057_7c75:
    ret nz

    ld c, l
    sbc e
    ld [hl-], a
    ld l, c
    ret nz

    rst $20
    ld c, b
    ld c, c
    ret nz

    rst $38
    ret nz

    db $eb
    ld b, e
    jp $6b32


    ret nz

    add sp, -$7f
    ldh [$c0], a
    rst $38
    add b
    ld [$3039], a
    ldh a, [$c0]
    add sp, -$3f
    ret nz

    ret nz

    rst $38
    ld b, b
    db $eb
    ld d, d
    jr nc, @+$32

    ld l, l
    dec sp
    ld l, d
    ld h, a
    ret nz

    ret nz

    ld [hl], $54
    ld d, l
    ld b, c
    pop bc
    ret nz

    rst $38
    db $fc
    ret nz

    rst $28
    cp a
    ldh [rSCY], a
    ld l, [hl]
    ld l, a
    add b
    and b
    ld sp, $311f
    add hl, hl
    inc d
    inc d
    inc d
    jp z, $80ff

    db $ec
    cp a
    pop hl
    rst $30
    add e
    add b
    add b
    ret nz

    pop hl
    dec hl
    db $10
    inc h
    inc h
    ret c

    jp z, Jump_000_00ff

    db $eb
    cp a
    pop hl
    ld [hl], a
    ld a, c
    ret nz

    push hl
    jr nz, jr_057_7cf7

    inc d
    jp z, $80ff

    jp z, Jump_057_473a

    and c
    ld [hl], d
    add c
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_057_7cf7:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ei
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
    jr nc, jr_057_7e08

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

jr_057_7e08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_057_7e8e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_057_7ee1:
    rst $38

Jump_057_7ee2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_057_7fa6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
