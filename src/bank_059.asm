; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $059", ROMX[$4000], BANK[$59]

Call_059_4000:
    ld a, [de]
    ld b, b
    ld h, l
    ld b, l
    ld e, c
    ld c, d
    sub e
    ld c, a
    and l
    ld d, h
    ld [hl], h
    ld e, c
    ld [hl], b
    ld e, [hl]
    ld e, c
    ld h, e
    dec h
    ld l, b
    ld [c], a
    ld l, h
    ld a, a
    ld [hl], c
    scf
    db $76
    ld b, h
    ld a, e
    ld [hl+], a
    ld b, b
    ld d, d
    ld b, b
    ld a, [de]
    ld b, e
    ld sp, $f845
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
    ld [c], a

Call_059_4056:
    dec hl
    dec hl
    ld a, [bc]
    rst $30
    pop hl
    inc c
    inc c
    cp a
    inc l
    inc l
    dec hl
    dec hl
    dec hl
    ld c, h
    rst $38
    ldh [$0c], a
    inc bc
    inc c
    inc c
    db $fc
    ldh [$f9], a
    pop hl
    ld hl, sp-$1e
    ldh a, [$e2]
    ld a, [c]
    ld [c], a
    db $fc
    db $ec
    rlca
    dec bc
    dec bc
    ld l, e
    cp l
    db $e3
    pop bc
    ld [c], a
    ret nz

    ldh [$bf], a
    ldh [$d0], a
    ld [c], a
    call z, $e5fd
    push bc
    push hl
    inc l
    inc l
    ei
    ld [c], a

Jump_059_408d:
    ret nz

    xor $6b
    ld l, e
    ld [de], a
    adc [hl]
    ldh [rWX], a
    pop bc
    db $e4
    ret nz

    pop hl
    inc l
    ret nz

    add sp, -$47
    ldh [$87], a
    db $e3
    pop bc
    ld c, h
    and a
    ldh [$fb], a
    db $e3
    add b
    db $ed
    ld d, b
    ldh [$fd], a
    pop hl
    ld c, e
    dec bc
    ld bc, $c06c
    push hl
    ld c, e
    db $e3
    ld a, [hl]
    ld [c], a
    db $fc
    db $e3
    ld b, b
    pop hl
    pop bc
    pop hl
    ei
    pop hl
    ld [$f0c0], sp
    ld a, a
    ldh [$fe], a
    ret nz

    ld c, e
    ld h, l

Jump_059_40c7:
    db $e4
    sub a
    ld [c], a
    add d
    push hl
    ld b, b
    add sp, -$18
    nop
    rst $20
    rst $10
    push hl
    ret nz

    and $6b
    ret nz

    ldh [$0b], a
    ld c, e
    dec bc
    add b
    inc h
    db $e3
    dec e
    ld [c], a
    sub $c3
    ret nc

    add $38
    db $e3
    inc sp
    db $e3
    ret nz

    adc $2b
    ld c, [hl]
    cp a
    jp $6b6b


    ld c, e
    sbc $c0
    add a
    pop bc
    dec bc
    jp z, Jump_000_08c6

    ld a, a
    rst $18
    ret nz

    pop hl
    ld b, d

jr_059_40fe:
    ldh [rWX], a
    cp a
    jp nz, $c2ba

    ld a, b
    jp $d57f


    ld [bc], a
    ld a, $ce
    inc l
    cp a
    db $e4
    ei
    and c
    or $a2
    ld [hl], l
    ret nz

    ret nz

    add sp, $7f
    jp z, Jump_059_6cc4

    pop hl
    ccf
    call $cf6c
    and c
    add $e2
    ld sp, hl
    and h
    ld c, e
    dec hl
    ld bc, $7f4b
    sub $c0
    ldh a, [$cf]
    and c
    add [hl]
    db $e3
    pop bc
    db $e4
    rst $38
    ldh [$d5], a
    jp nz, Jump_059_7f00

    ret nc

    ld a, [c]
    jp $a2bd


    cp b
    and a
    adc [hl]
    and b

jr_059_4141:
    db $fd
    jp nz, $e7c1

    add b

Jump_059_4146:
    and b
    ld e, h
    ld a, a
    call nc, $b13f
    inc c
    ld l, h
    ld l, h
    dec b
    db $e3
    ld c, e
    add h
    ld [c], a
    add b
    ret nz

    pop hl
    jr jr_059_40fe

    ld a, h
    call nz, $88fe
    ret nz

    ld a, [c]
    ld a, h
    add $c0
    db $e4
    dec bc
    ld b, b
    rst $08
    add e
    ccf
    and l
    cp [hl]
    and a
    cp h
    rst $20
    add hl, de
    and c
    cp l
    adc b
    ld c, e
    ld a, [hl-]
    and c
    ld [bc], a
    ret nz

    push hl
    ld l, e
    ret nz

    ldh [$be], a
    push hl
    nop
    and c
    or h
    add h
    dec hl
    and h
    db $eb
    and b
    jr nz, jr_059_4141

    add b
    ret nz

    jp hl


    cp [hl]
    add b
    nop
    pop bc
    ld a, e
    add $4b
    ret nz

    and b
    ld d, d
    add d
    nop
    cp $e4
    db $f4
    add [hl]
    cpl
    db $e4
    sbc l
    add c
    or a
    add a
    ld e, h
    add l
    ret nc

    add a
    call nc, Call_000_00c6
    ld c, $e8
    ret nz

    ret z

    or [hl]
    add c
    ret nz

    ld [$c565], a
    ret nc

    add [hl]
    rst $00
    add l
    cp d
    rst $00
    nop
    ld [hl], a
    add [hl]
    ld l, $a5
    or a
    ld l, c
    add d
    db $e4
    ret nc

    adc d
    pop bc
    add a
    ld c, c
    rst $00
    ld a, e
    ret z

    nop
    pop bc
    jp nz, $ea3e

    call nc, $d385
    push bc
    add hl, bc
    jp hl


    adc b
    ld h, e
    dec [hl]

jr_059_41d5:
    ld l, c
    ret nz

    ld [$d400], a
    add $0e
    add [hl]
    ei
    jp hl


    inc b
    and a
    push af
    ld l, c
    cp a
    ret


    ld e, c
    push bc
    ld d, c
    ld h, a
    nop
    inc b
    adc c
    add e
    ld h, l
    scf
    rlc b
    ret


    ld c, c
    and $52
    push bc
    add l
    xor b
    ld [bc], a
    add sp, $00
    scf
    jp z, $ccbe

    push de
    ld h, [hl]
    adc h
    ld b, a
    xor d
    add $8a
    ld b, h
    scf
    swap e
    ld c, c
    nop
    and b
    xor b
    jr c, jr_059_41d5

    inc l
    jp hl


    adc d
    ld b, a
    ld [hl], b
    db $ec
    inc sp
    ld b, h
    ld l, c
    db $ec
    adc c
    and [hl]
    nop
    xor d
    and e
    rst $20
    add sp, $73
    ld b, [hl]
    ld l, $48
    ld c, e
    push bc
    ret nc

    rst $20
    ld bc, $77ea
    ld b, e
    nop
    sbc b
    db $e4
    ld e, c
    add sp, -$55
    add $a2
    ld c, b
    push de
    ld b, d
    cp e
    inc hl
    and l
    xor e
    sbc b
    and $00
    ldh a, [$a8]
    nop
    ld [$e767], a
    ld d, l
    and a
    db $dd
    add e
    sbc b
    db $eb

Jump_059_424b:
    db $eb
    add [hl]
    or $ea
    nop
    sub h
    inc sp
    ld e, l
    add c
    ld b, h
    dec h
    ld sp, hl
    adc l
    ld a, [hl+]
    xor d
    dec d
    ld [hl], l
    adc [hl]
    db $ed
    xor a
    ld [hl], d
    nop
    db $d3
    adc l
    ld e, h
    jp hl


    jp nz, $af8b

    ld [hl], h
    cp l
    xor c
    adc $f2
    rlca
    ld l, b
    xor a
    ld [hl], c
    nop
    ld h, [hl]
    ld hl, sp+$0f
    inc hl
    and a
    xor b
    xor a
    ld [hl], b
    ld h, [hl]
    db $fd
    db $10
    xor b
    ld e, d
    jp nc, $fc66

    nop
    ld e, b
    call $ef09
    ld h, [hl]
    ld hl, sp-$40
    adc $78
    rlca
    ld b, d
    ld c, d
    ld h, [hl]
    push af
    ei
    ld [$4a00], sp
    call $ebc0
    rst $30
    or $f9
    ld [hl], $ff
    rst $38
    and [hl]
    ld l, c
    db $e4
    sub $fd
    db $fc

Call_059_42a4:
    nop
    adc d
    add [hl]
    ld c, d
    pop de
    rst $38
    rst $38
    ld c, d
    jp c, $ffff

    add b
    pop hl
    ld b, d
    ld b, h
    push bc
    ld b, $00
    add b
    rst $38
    ld b, b
    ld a, [c]
    pop af
    ld c, c
    add b
    rst $38
    ld b, b
    rst $28

Jump_059_42c0:
    dec h
    add l
    ld h, e
    adc [hl]
    jp nz, Jump_000_00fe

    ld a, b
    inc b
    ret nz

    add sp, -$01
    rst $38
    ld [hl], e
    call nc, $bfcd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    nop
    reti


    or e
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_059_430c:
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
    rst $38
    ld e, e
    ld e, h
    ld e, l
    ld sp, $3131
    ld e, l
    ld e, h
    cp l
    ld e, d
    rst $30
    pop hl
    ld de, $1212
    ld de, $e0f2
    nop
    db $fc
    rst $38
    rst $38
    rst $20
    and $5d
    ld sp, $564d
    ld d, a
    ld a, $ff
    ld sp, $6231
    ld h, d
    ld sp, $2931
    ld hl, $22cf
    ld [hl+], a
    ld hl, $c029
    rst $38
    ld [$31e9], a
    ld c, l
    sbc a
    ld [hl-], a
    ld l, l
    ld l, l
    ld b, d
    ld a, [hl-]
    cp [hl]
    ldh [$c1], a
    ldh [rNR10], a
    rst $00
    jr nz, jr_059_437b

    db $10
    cp a
    ldh [$ca], a
    rst $38
    ret nz

    add sp, $51
    ld l, c
    db $fd
    ld l, l
    rst $38
    ldh [rSCY], a

jr_059_4369:
    inc a
    ld sp, $1615
    jr z, jr_059_430c

    jr nz, @+$01

    ldh [$28], a
    ld d, $15
    jp z, $c0ff

    ld [$7f6b], a

jr_059_437b:
    ld l, l
    ld l, l
    jr nc, jr_059_43e8

    ld b, d
    scf
    dec d
    pop bc
    ld [c], a
    ld a, [c]
    cp a
    ldh [$2a], a
    jp z, $40ff

    add sp, $49
    ld c, b
    ld l, e
    ld l, e
    ld e, $c0
    ldh [rBCPD], a
    add hl, sp
    ld sp, $c00e
    db $e4
    add b
    rst $38
    nop
    jp hl


    rst $18
    ld sp, $6b39
    jr nc, jr_059_43d3

    ret nz

    ldh [$93], a
    sub l
    scf
    sbc [hl]
    rrca
    dec b
    rst $38
    ldh [$0a], a
    dec bc
    nop
    rst $38
    ret nz

    ld [$49ff], a

jr_059_43b5:
    ld [hl], $69
    ld l, c
    ld l, e
    ld l, e
    ld l, c
    ld l, c
    rrca
    sub h
    add [hl]
    sub [hl]
    ld d, [hl]
    ld [hl], l
    jp nz, $ffc0

    jp hl


    add sp, $51
    ret nz

    ei
    ld b, a
    ld [hl-], a
    cp a
    ld [c], a
    jr nc, jr_059_4369

    sbc c
    ld l, b
    ld l, b

jr_059_43d3:
    pop de
    ld l, b
    ld [hl], l
    pop bc
    jp z, $e8ff

    rst $20
    daa
    db $10
    ret nz

    ld c, c
    ld c, b
    ld a, [$e07e]

Call_059_43e3:
    ld l, d
    jp Jump_059_68e0


    ld l, h

jr_059_43e8:
    ld l, h
    jr nc, jr_059_4455

    db $d3
    ld c, h
    ld c, c
    jp z, $e8ff

    rst $20
    db $10
    cp a
    pop hl
    add hl, sp
    ld l, c
    ld a, h
    dec sp
    ret nz

    jp nz, Jump_000_30e2

    ld l, d
    ld l, d
    ld l, l
    add hl, sp
    jp z, $faff

    add sp, -$19
    jr nz, @-$3f

    pop hl
    ld c, c
    ld c, b
    ld l, d
    ld l, l
    ld l, l
    call z, $e1c2
    pop bc
    pop hl
    ld l, l
    ld d, d
    jp z, $c0ff

    add sp, $20
    jr z, jr_059_43b5

    rla
    ld a, h
    ret nz

    adc c
    ldh [$30], a
    jr nc, @+$03

    ldh [$b8], a
    ldh [$6d], a
    ret


    ld d, e
    jp z, $c0ff

    ld [$7c15], a
    pop bc
    ret nz

    ldh [rOCPS], a
    ld l, d
    sub a
    ld l, h
    ld l, h
    ld l, h
    ld [hl], e
    and b
    add e
    jp z, $80ff

    jp hl


    rrca
    ld a, $c3
    add b
    ld sp, $3a47
    ld [hl], $6a
    ld b, h
    pop hl
    ret nz

    ldh [$93], a
    ld c, h
    add h
    jp z, Jump_000_00ff

    add sp, $0e

jr_059_4455:
    ld b, e
    add b
    dec sp
    add c
    ld b, a
    rst $38
    ld a, [hl-]
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    ld d, h
    ld l, [hl]
    inc bc
    ld [hl], h
    add b
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
    ld b, $ec
    db $eb
    and b
    and c
    call c, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_059_44a3:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $e3
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
    jr nc, jr_059_4590

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
    ld l, l
    ld b, l
    sbc l
    ld b, l
    ld b, c
    ld c, b
    dec h
    ld c, d
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

jr_059_4590:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [hl], a
    ld c, e
    ld a, [bc]
    dec bc
    rst $38
    ldh [$2b], a
    ld l, e
    ld c, e
    rst $38
    pop hl
    ld e, $f5
    ldh [$4c], a
    ld c, h
    ld c, h
    inc c
    rst $38
    pop hl
    ld sp, hl
    ldh [$f6], a
    pop hl
    ld [hl], b
    ld a, [c]
    db $e3
    db $ec
    db $e4
    ei
    pop af
    set 4, c
    dec hl
    dec hl
    ld l, e
    cp e
    pop hl
    ei
    dec bc
    dec hl
    cp a
    ldh [$2c], a
    ld c, h
    ld c, h
    inc l
    inc c
    nop
    call nz, $b6e2
    ld [c], a
    or c
    ldh [$f5], a
    db $e3
    or c
    db $e3
    cp c
    rst $28
    add d
    db $e3
    cp l
    ldh [rSC], a
    cp a
    db $e4
    ld c, e
    add b
    ld [c], a
    ld a, h
    db $e4
    adc d

jr_059_45e7:
    ld [$e2b6], a
    ret nz

    ld a, [c]
    pop bc
    pop hl
    adc h
    ret nz

    ld [c], a
    ld a, [hl]
    ldh [rWX], a
    inc l
    ld d, h
    and $b7
    push af
    inc [hl]
    db $eb
    inc l
    adc a
    ld c, h
    dec hl
    dec hl
    ld c, e
    ret nz

    ldh [rSC], a
    ld [c], a
    jr c, jr_059_45e7

    ld l, h
    ret nc

    add l
    db $e4
    ld a, $e4
    ccf
    and $72
    rst $20
    inc l
    ld sp, hl
    ld [$2c0c], a
    jr @-$7b

    ldh [$c0], a
    pop hl
    db $fd
    jp nz, Jump_000_0b0b

    ld b, a
    db $e4
    set 4, [hl]
    ld a, [$7ee8]
    cp c
    db $d3
    inc l
    ld c, h
    dec bc
    dec hl
    dec bc
    ld l, e
    ld a, a
    jp nz, $fbc0

    ret nz

    add c
    db $e3
    rst $00
    call nz, $e40d
    ld a, [$79e4]
    call nc, $2c2c
    nop
    add a
    ret nz

    ret nz

    db $e3
    ld a, c
    ret nz

    jp nc, Jump_059_40c7

    rst $00
    inc a
    call nz, $d63b
    cp l
    pop bc
    nop
    add b
    push hl
    ld [bc], a
    db $eb
    adc e
    add $01
    add sp, -$40
    di
    ret nz

    pop bc
    ret nz

    and $40
    call $ac00
    and l
    add b
    rst $30
    cp h
    pop bc
    ld a, c
    and b
    ld b, b
    rst $20
    ld b, b
    ret


    ld b, $c3
    ld a, e
    and l
    nop
    add c
    jp nz, $c583

    ret nz

    xor $d4
    and $40
    rst $00
    scf
    and e
    xor d
    and h
    rst $00
    ld [$7c02], a
    and [hl]
    dec hl
    cp [hl]
    and d
    cp h
    and e
    dec a
    ret nz

    ld b, b
    res 0, b
    db $ec
    ret nz

    ld a, [c]
    nop
    ret nz

    and h
    or h
    add b
    or a
    add b
    ld c, h
    call nz, $c540
    ld [hl], $c8
    xor h
    add d
    ret nz

    and b
    ld hl, $ff2c
    ldh [$c0], a
    xor $fd
    add d
    ld [hl], a
    add b
    ld a, [bc]
    add c
    add h
    ld hl, sp-$76
    and b
    ld a, [hl]
    add h
    or b
    add c
    ret nz

    db $ed
    adc d
    ld [c], a
    ret nz

    add c
    ld l, e
    cp e
    add b
    ld a, [bc]
    nop
    scf
    add b
    ld a, a
    and l
    cp $84
    ld bc, $cde9
    and l
    add c
    and $62
    adc b
    ld d, l
    adc b
    nop
    adc e
    jp z, $c981

    db $e3
    ld h, e
    ld b, c
    db $eb
    push de
    ld l, d
    rst $00
    ld l, c
    ld b, e
    add $f7
    rst $00

Jump_059_46e4:
    add b
    ei
    adc [hl]
    push de
    ld l, a
    add a
    xor b
    cp b
    add h
    dec a
    and a
    or b
    add e
    jp nz, Jump_000_2cc1

    nop
    ld a, c
    add l
    push de
    ld l, e
    ld a, [c]
    db $ed
    rst $30
    call z, Call_059_6322
    ret nz

    ld [$cd9e], a
    rst $00
    ld l, b
    nop
    add d
    add [hl]
    ld bc, $bfec
    rst $08
    sub l
    xor c
    add a
    xor b
    add l
    call $8439
    nop
    ret


    nop
    push de
    ld l, l
    add a
    xor d
    ld a, e
    ret


    xor c
    ld h, [hl]
    ld [hl-], a
    ld l, [hl]
    push de
    ld l, c
    add a
    xor e
    cp l
    adc b
    nop
    jp c, $80eb

    xor c
    sub l
    xor d
    add a
    xor h
    add a
    add sp, -$4b
    ld l, b
    cp a
    xor e
    reti


    db $ec
    nop
    ld d, d
    db $eb
    cp h
    xor b
    ld l, l
    ld c, b
    inc bc
    xor b
    sub l
    xor h
    ld a, [c]
    db $ec
    ld b, b
    add sp, $71
    push hl
    nop
    ccf
    jp $f600


    ld c, b
    ld l, $bd
    jp hl


    dec [hl]
    ld b, l
    pop bc
    db $ec
    sbc c
    db $eb
    ld [$0068], sp
    add a
    ld l, b
    ld b, b
    and [hl]
    and $01
    push bc
    xor h
    sbc [hl]
    xor d
    ld [de], a
    call $d35a
    nop
    db $f4
    nop
    ld [$0471], sp
    xor b
    add b
    add [hl]
    ld [hl], c
    dec c
    ccf
    call z, Call_000_2693
    ld l, [hl]
    and a
    ld [hl], h
    xor d
    nop
    jp Jump_000_0180


    jp z, Jump_000_2815

    add c
    xor d
    cp b
    ld c, b
    ld a, d
    ld c, d
    ld bc, $d5ce
    ld c, d
    nop
    add c
    and a
    pop af
    ld l, [hl]
    ld b, h
    add c
    add b
    ld h, e
    ld b, b
    or e
    add [hl]
    add [hl]
    db $e3
    ld [hl], c
    or a
    ld h, $00
    add c
    ld l, a
    cp $69
    inc c
    call z, Call_000_2c78
    add hl, sp
    ld l, $40
    xor l
    inc de
    ld c, a
    cp [hl]
    xor e
    nop
    jp nz, Jump_059_408d

    xor [hl]
    and $ac
    and e
    ret z

    or $05
    ld [bc], a
    ld c, e
    xor b
    ld d, $00
    ld h, [hl]
    nop
    ld a, b
    daa
    ld a, d
    add hl, de
    cp a
    pop af
    ld a, b
    inc l
    inc a
    jr c, jr_059_47ee

    rrca
    sbc $22
    db $e3
    ld [hl], d
    nop
    rst $38
    rst $38
    and e
    push de
    ld a, a
    rst $38
    add b
    jp hl


    add c
    ld c, a
    add b
    rst $38
    ld b, b
    ldh a, [$64]
    ld c, b
    nop
    add b
    rst $38
    db $e3
    or b
    ld sp, hl
    ld b, $7f
    and [hl]
    rst $38
    rst $38
    pop bc

jr_059_47ee:
    ld b, [hl]
    ret nz

    db $ec
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
    ld e, e
    ld [hl], e
    nop
    nop
    nop
    rst $38
    ld e, e
    ld e, d
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    ld sp, $ff3c
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    inc a
    ld sp, $3131
    rra
    rla
    jr z, jr_059_4877

    jr nz, jr_059_4859

jr_059_4859:
    rst $38
    rst $38
    rst $20
    and $c2
    ld [c], a
    xor a
    ld sp, $423c
    ld l, b
    rst $38
    ldh [rSCY], a
    cp a
    ldh [$15], a
    pop hl
    ld d, $c0
    rst $38
    ld [$c2e9], a
    pop hl
    pop bc
    ldh [rOCPS], a
    ld l, d
    ld l, b

jr_059_4877:
    rlca
    ld l, b
    ld l, d
    ld l, d
    cp a
    pop hl
    ld a, a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld c, l
    ldh [$0e], a
    pop bc
    ld [c], a
    ld l, d
    ld l, h
    ld l, h
    ei
    ldh [$7e], a
    ldh [$7f], a
    ldh [$ca], a
    rst $38
    cp $e8
    rst $20
    inc d
    ld [de], a
    ld e, $31
    add hl, sp
    jr nc, jr_059_4906

    rst $38
    ld l, c
    ld l, e

jr_059_48a0:
    jr nc, jr_059_48d2

    ld l, e
    ld l, c
    ld l, c
    jr nc, jr_059_48a0

    add hl, sp
    ret nz

    rst $38
    db $ec
    db $eb
    inc h
    inc h
    rla
    ld sp, $cd49
    ld c, b
    ret nz

    push hl
    ld c, b
    ld c, c
    ld b, b
    rst $38
    db $ec
    db $eb
    jr nz, jr_059_48dd

    add e
    ld d, $15
    ld a, a
    ldh [rLCDC], a

jr_059_48c3:
    db $e3
    add c
    db $e3
    ret nz

    rst $38
    ret nz

    ld [$3628], a
    ld a, a
    ldh [rSCY], a
    ld l, l
    ret nz

    pop bc

jr_059_48d2:
    ld l, l
    ld b, d
    add c
    ld [c], a
    ret nz

    rst $38
    ld a, [$ea80]
    jr nz, @-$42

jr_059_48dd:
    ret nz

    ld d, d
    ld l, d
    ld l, l
    ld l, b

Call_059_48e2:
    ld l, b
    ld a, a
    ld l, l
    ld l, d
    ld d, d
    ld sp, $2b31
    inc l
    ret nz

    rst $38
    cp $c0
    rst $28
    ld d, e
    ld l, d
    ld l, c
    ld l, h
    ld l, h
    ld l, c
    ld l, d
    ld bc, $c053
    rst $38
    add b
    db $f4
    add l
    ret nz

    ld a, e
    ret nz

    add b
    rst $38
    add b
    push af
    ret nz

jr_059_4906:
    db $e3
    sbc [hl]
    add b
    ldh [$29], a
    daa
    dec b
    dec b
    jp z, Jump_000_00ff

    ld [$8118], a
    ld sp, $a1fe
    add b
    ldh [rSC], a
    ret nz

    rst $38
    ld [c], a
    jp z, $c0ff

    jp z, $ed1a

    ld sp, $a1fe
    ld l, b
    ld l, b
    ld [bc], a
    pop bc
    ld sp, $6231
    di
    ld h, d
    ld h, d
    jp z, Jump_000_00ff

    ret


    jr jr_059_495c

    ld sp, $ff31
    and a
    add e
    jr nc, jr_059_49a5

    ld l, b
    jr nc, jr_059_48c3

    and a
    ccf
    ld sp, $6031
    ld e, e
    ld e, e
    ld e, d
    jp z, $c0ff

    xor c
    cp $81
    ldh [$31], a
    add c
    ld a, c
    ld l, [hl]
    ld d, l
    ld d, h
    ld l, [hl]
    cpl
    ld a, c
    add c
    ld sp, $3161

jr_059_495c:
    add b
    ld e, e
    jp z, $ffff

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_49a5:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Call_059_4a00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_059_4a84

    ld sp, $3133
    inc sp
    nop
    and b
    ei

Jump_059_4a54:
    rst $38
    rst $28
    nop
    nop
    nop
    ld h, c
    ld c, d
    sub c
    ld c, d
    ld b, d
    ld c, l
    ld e, a
    ld c, a
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

jr_059_4a84:
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
    ld l, e
    dec bc
    dec bc
    dec bc
    ld c, e
    ld c, e
    sub c
    ld c, e
    ld a, [$f8e0]
    ld [c], a
    rst $30
    ldh [$0c], a
    rst $38
    rst $38
    rst $20
    and $6b
    ld l, l
    ld l, e
    ret nz

    pop hl
    dec hl
    dec hl

Call_059_4aae:
    add $e1
    ld l, e
    ld l, e
    cp d
    pop hl
    dec c
    ld c, e
    ret nz

    ldh [$4c], a
    ld c, h
    db $fd
    db $e3
    ld sp, hl
    ldh [$bd], a
    ldh [$f2], a
    pop hl
    add a
    inc l
    inc l
    inc l
    ei
    db $e3
    ret nz

    db $ed
    adc b
    ld [c], a
    cp l
    pop hl
    ld c, e
    ld [bc], a
    add $e0
    dec hl
    rst $30
    ld [c], a
    adc d
    pop hl
    cp [hl]
    db $e3
    db $fc
    db $e3
    or b

jr_059_4adc:
    pop hl
    pop bc
    pop hl
    jr c, jr_059_4adc

    pop hl
    ld l, [hl]
    db $ed
    ld c, b
    db $e3
    dec hl
    dec hl
    dec hl
    inc a
    ld [c], a
    ld a, [hl-]
    ld [c], a
    ld bc, $8b4b
    ldh [$82], a

jr_059_4af2:
    db $e4
    ld a, l
    pop hl
    ld a, [hl]
    db $e4
    ei
    db $e4
    ld l, $ed
    push bc
    pop hl
    ld b, $8a
    ldh [$2b], a
    dec hl
    add hl, sp
    db $e3
    db $76
    ld [c], a
    adc l
    ld [c], a
    ld c, b
    pop hl

jr_059_4b0a:
    ld bc, $0ce5
    jr c, jr_059_4af2

Call_059_4b0f:
    inc sp
    db $e3
    inc c
    inc c
    inc a
    db $e4
    dec [hl]
    db $e3
    ret nz

    db $e4
    ld a, [hl]
    ld [c], a
    nop
    ld b, c
    ld [c], a
    or d
    ret nz

    jp z, $bde5

    push hl
    jr c, jr_059_4b0a

    ld a, a
    ld a, [c]
    add c
    pop hl
    ld a, a
    db $e3
    ld h, d
    rst $30
    push bc
    ld c, e
    add b
    pop hl
    ret nz

    rst $00

jr_059_4b34:
    ccf
    db $fc
    dec bc
    ld l, e
    cp [hl]
    db $e3
    ld e, $c0
    push hl
    ld l, e
    ld l, e
    dec hl
    dec bc
    adc a
    db $e4
    add c
    jp $c475


    ld h, b
    jr nc, jr_059_4b34

    nop
    jp hl


    inc b
    ret nz

    ret nz

    add sp, -$09
    and b
    dec hl
    dec bc
    ld c, h
    jp $fe00


    db $e4
    ld [hl], l
    add $c0
    db $d3
    ld c, [hl]
    ret nz

    res 4, c
    ld a, [$c1c4]
    ld [c], a
    ret nz

    and c
    nop
    ld b, $c5
    ret nz

    pop de
    ret nz

    db $ed
    jp $c0a1


    push bc
    pop bc
    pop hl
    ret nz

    and c
    ld b, $c6
    nop
    add a
    jp $c73f


    cp l
    and h
    cp b
    and [hl]
    rst $08
    ld [c], a
    ld b, d
    jp $a185


    dec sp
    and d
    nop
    dec c
    call nz, $a5c0
    ld b, b
    jp z, $ad7f

    ld [bc], a
    and b
    xor e
    pop hl
    ei
    and d
    add [hl]
    pop bc
    ld b, e
    inc l
    ld c, h
    ret nz

    and b
    pop bc
    push bc
    ld a, l
    push bc
    cp a
    cp b
    ld l, e
    jp nc, Jump_000_0181

    inc l
    cp [hl]
    pop hl
    cp l
    add b
    ld [c], a
    and d
    ret nz

    pop hl
    add [hl]
    and e
    ld b, c
    and h

jr_059_4bb6:
    ld a, a
    xor h
    jr jr_059_4bb6

    add c
    ld a, [c]
    add b
    or $84
    dec bc
    ld l, h
    xor h
    and e
    and $84
    reti


    add b
    ld bc, $804c
    adc h
    cp c
    xor l
    ret nz

    db $ec
    ld [hl], e
    and h
    ld_long $ffc3, a
    ld [c], a
    add b
    add [hl]
    nop
    cp c
    or e
    add c
    ld [$e817], a
    rrca
    and $13
    and e
    adc b

Jump_059_4be3:
    add $b9
    xor l
    ret nz

    db $eb
    ld [$ad54], sp
    db $fc
    jp hl


    cp c
    or e
    inc l
    ld a, [c]
    ld h, h
    ld e, $e8
    add h
    db $eb
    ld c, c
    and l
    nop
    cp c
    or h
    ld a, [c]
    ld h, h
    ld a, c
    add l
    ld b, l
    ld [$ea7d], a
    cp c
    or l
    ld a, b
    push bc
    ld e, c
    adc b
    nop
    db $10
    and [hl]
    dec de
    add e
    cp $c4
    cp c
    or e
    ld a, [c]
    ld h, h
    ld [hl], $6b
    cp a
    ret z

    pop bc
    push hl
    nop
    ld h, $ec
    cp c
    and a
    ld a, c
    add $c0
    call z, $ecfb
    rst $00
    ld h, l
    cp c
    xor [hl]
    ld [hl], $6b
    nop
    inc d
    add [hl]
    add $e9
    ld c, b
    add a
    db $fd
    ld [hl], b
    add hl, sp
    add $5b
    ld h, [hl]
    ld b, $c6
    ld b, b
    call z, Call_059_4a00
    ld b, c
    db $fd
    ld [hl], b
    add hl, sp
    jp $aaff


    ld [c], a
    ld b, [hl]
    sub d
    ld b, a
    ld c, d
    ld b, l
    cp l
    ld c, [hl]
    nop
    ld [hl], c
    ld h, l
    ccf
    ld [$e948], a
    pop bc
    push bc
    ld c, a
    ld b, l
    db $fd
    ld l, h
    ld [hl], $4a
    inc d
    add a
    nop
    ld b, c
    and a
    ld b, l
    add $ba
    add sp, -$80
    rst $30
    add d
    db $d3
    ei
    add [hl]
    db $fd
    ld [hl], c
    or [hl]
    ld a, [hl+]
    ld [bc], a
    inc d
    add h
    dec bc
    add a
    ret


    ccf
    add sp, -$03
    ld [hl], c
    ld b, b
    jp nc, Jump_059_4a54

    ld c, d
    ld c, b
    nop
    or e
    and a
    dec a
    ld h, $ba
    ld [$5454], sp
    ld c, d
    ld c, d
    cp c
    ld a, [hl+]
    push bc
    add e
    ld [hl], a
    add hl, bc
    nop
    sbc e
    sub e
    ld a, [bc]
    ld h, $38
    rrca
    nop
    adc h
    ld d, h
    ld d, c
    add e
    adc c
    jr c, jr_059_4cac

    ld [de], a
    ld h, a
    nop
    ld b, b
    jp z, $8b0d

    sub c
    adc c
    jr c, jr_059_4cb6

    add c
    ld l, e

jr_059_4cac:
    ld d, h
    ld d, e
    sub c
    adc e
    ld d, $ec
    nop
    and b
    ld c, [hl]
    ld d, h

jr_059_4cb6:
    ld d, l
    jp nz, Jump_000_3824

    dec c
    add b
    db $eb
    jp hl


    ld [de], a
    ld h, [hl]
    adc c
    jr c, jr_059_4cd1

    nop
    ld b, b
    db $ec
    or $f5
    add c
    set 5, [hl]
    xor c
    rst $38
    rst $38
    db $e4
    cp e
    rst $38

jr_059_4cd1:
    rst $38
    ldh [rLYC], a
    nop
    db $e4
    or l
    rst $38
    rst $38
    db $e4
    or a
    rst $38
    rst $38
    dec de
    and h
    db $e4
    cp b
    rst $38
    rst $38
    ld b, b
    rst $20
    nop
    ld a, a
    ld d, b
    rst $38
    rst $38
    db $e4
    cp c
    rst $38
    rst $38
    ld h, h
    ld l, e
    ccf
    ld c, b
    rst $38
    rst $38
    ld [hl], e
    call nc, $cd00
    cp a
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
    ld e, c
    ld [hl], e
    nop
    nop
    nop
    rst $38
    ld sp, $4731
    ld d, a
    ld d, a
    ld d, [hl]
    sub a
    sbc [hl]
    db $eb
    sbc [hl]
    ld sp, $e1ff
    sbc [hl]
    rst $38
    ldh [$31], a
    ld sp, $fc00
    rst $38
    rst $38
    rst $20
    and $4d
    ld b, [hl]
    ld [hl], $68
    ld l, b
    ld l, b
    rst $38
    sbc c
    sbc b
    add [hl]
    sub [hl]
    sub a
    sbc [hl]
    sub a
    sub [hl]
    sbc a
    add [hl]
    sbc b
    sbc d
    sbc d
    inc a
    ret nz

    rst $38
    jp hl


    add sp, $39
    ld a, [hl]
    jp nz, Jump_059_68e0

    ld l, b
    ld h, l
    ld h, l
    sub h
    add [hl]
    rst $38
    pop hl
    ccf
    sub c
    ld h, l
    ld h, l
    ld h, l
    ld c, h
    ld c, c
    jp z, $e8ff

    rst $20
    rst $38
    ld d, e
    ld l, h
    ld l, h
    ld l, h
    ld l, b
    ld l, b
    ld l, l
    ld l, l
    ld l, e
    ld h, a
    sub c
    cp a
    pop hl
    sub e
    ld [hl], h
    ldh [$67], a
    add hl, sp
    jp z, Jump_059_66ff

    add sp, -$19
    ld d, d
    ld l, l
    rst $38
    ldh [$cb], a
    ldh [rOCPS], a
    sub e
    ld a, a
    ldh [$9b], a
    sub h
    ld l, d
    or d
    ldh [rOCPS], a
    ld d, d
    jp z, $c0ff

    db $ec
    ld h, l
    ld a, a
    ld h, l
    ld l, b
    ld l, d
    ld l, d
    sbc c
    sbc d
    sbc c
    pop bc
    pop hl
    ld h, e
    ld l, h
    ld l, l
    add b
    rst $38
    nop
    jp hl


    add b
    ldh [$67], a
    ld l, l
    jp z, Jump_000_3ae0

    ld a, e
    ldh [rBCPS], a
    pop bc
    pop hl
    ld l, h
    sub h
    sub d
    jp z, $e8ff

    rst $20
    db $e3
    sub d

jr_059_4ddf:
    sub h
    pop bc
    ldh [rIE], a
    ld [c], a
    jp Jump_059_6ce2


    sbc c
    sbc b
    ld a, c
    sub b
    add b
    rst $18
    jp hl


    add sp, $31
    sub l
    sbc b
    sbc c
    ret nz

    add sp, -$0e
    ld a, c
    ret nz

    sub d
    ret nz

    rst $38
    jp hl


    add sp, $5e
    ld sp, $8695
    db $dd
    sbc h
    cp l
    db $e3
    ld l, h
    ld l, h
    jr nc, @+$3c

    ret nz

    sub l
    ld sp, $5eb9
    jp z, $e8ff

    rst $20
    ld e, a
    ld sp, $c931
    and b
    add [hl]
    db $ed
    sub e
    ld a, c
    ret nz

    jr nc, @+$32

    ld a, h
    ret nz

    sub l
    ld sp, $d931
    ld e, a
    jp z, $e8ff

    rst $20
    ld e, e
    ld h, c
    ld b, a
    and b
    sub a
    sub [hl]
    ei
    sub c
    jr nc, @+$01

    pop hl
    sub c
    sub [hl]
    sub a
    ld sp, $f331
    ld h, c
    ld e, e
    jp z, $80ff

    ld [$1311], a
    ld de, $ff1b
    sub a
    ld b, [hl]

jr_059_4e47:
    ld [hl], $30
    jr nc, jr_059_4ddf

    sub l
    ld de, $12e7
    ld [de], a
    ld e, $80
    rst $38
    nop
    db $eb
    add hl, hl
    ld hl, $ff24
    ld hl, $1214
    ld de, $5647
    ld d, a
    sub a
    sbc a
    add hl, hl
    daa
    db $10
    inc h
    rla
    nop
    rst $38
    add b
    jp z, $ff15

    ld d, $20
    jr nz, jr_059_4e91

    inc h
    ld [hl+], a
    ld hl, $ff12
    inc de
    inc de
    ld [de], a
    daa
    db $10
    jr nz, jr_059_4e9d

    ld d, $d9
    dec d
    add b
    rst $18
    ld b, b
    ret


    rla
    jr z, jr_059_4e47

    ldh [rNR41], a
    jr nz, @-$3f

    db $10
    inc h
    inc h
    inc h
    ld [hl+], a
    inc h

jr_059_4e91:
    or l
    ldh [$28], a
    ld bc, $c017
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_4e9d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_059_4ec6:
    jr c, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    or b
    db $dd
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_059_4fbe

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
    sbc e
    ld c, a
    bit 1, a
    ld a, e
    ld d, d
    ld [hl], c
    ld d, h
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

jr_059_4fbe:
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
    db $e3
    dec bc
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld c, e
    cp $ff
    ldh [$2b], a
    dec hl
    dec bc
    dec bc
    inc c
    inc c
    ld c, h
    ld bc, $fd4c
    and $f5
    ldh [$f0], a
    ld [c], a
    rst $38
    ld sp, hl
    jp nz, $c1e0

    ldh [$fa], a
    pop hl
    adc a
    ld c, e
    ld c, e
    dec bc
    dec hl
    ret nz

    add sp, -$47
    ldh [$c2], a
    db $e3
    ld c, h
    ld b, c
    inc l
    or [hl]
    rst $30
    jp nz, $82e1

    ldh [$87], a
    ldh [$bf], a
    db $e3
    ld c, e
    ld l, h
    pop hl
    ret z

    ld a, [hl]
    db $e3
    db $fc
    db $e3
    ld [hl], b
    pop hl
    inc l
    or [hl]
    rst $20
    jp nz, Jump_059_6bf2

    dec hl
    ld bc, $412b
    ldh [$7c], a
    ldh [$c0], a
    pop hl
    add d
    and $40
    add sp, -$4a
    add sp, $45
    db $eb
    nop
    ld [$c2e1], sp
    ldh [$c1], a
    ld [c], a
    inc a
    ldh [rP1], a
    db $e3
    jp hl


    jp nz, $e60b

    rst $30
    call nz, $f600
    call nz, $e47f
    ld a, b
    db $e3
    ld [$c9e4], sp
    pop bc
    db $fc
    jp $c2c0


    pop bc
    and $60
    ret z

    jp nz, $e338

Call_059_504f:
    ld b, b
    di
    ld [$bce5], sp
    pop hl
    ld c, e
    dec hl
    add b
    and $00
    ret nz

    rst $00
    ld a, a
    push bc
    ld b, b
    db $f4
    ld [$89e0], sp
    jp $e3bd


    ld bc, $40e0
    ret nz

    nop
    adc a
    db $e4
    add c
    jp nz, $c435

    ld [hl], $d5
    ld b, [hl]
    pop hl
    ld [$03c1], sp
    jp nz, $a0ff

    add b
    rst $38
    pop bc
    add b
    jp $e4fe


    ld [hl], l
    add $f6
    add $c0
    db $ed
    jp z, Jump_000_2be1

    add b
    ret nz

    db $e4
    cp b
    and c
    nop
    pop hl
    ld b, $c5
    ret nz

    ret z

    or $c7
    add b
    db $eb
    ld l, e
    ld b, $44
    ldh [rOCPD], a
    ld c, e
    ld a, [$3fc6]
    ret nz

    ret nz

    jp hl


    or $d0
    add e
    rst $00
    nop
    ld b, e
    and b
    pop bc
    pop hl
    add [hl]
    and d
    ret nz

    di
    or $d1
    dec [hl]
    xor d
    ld b, a
    jp $c14d


    inc de
    inc l
    inc l
    ld b, [hl]
    and c
    ei
    ldh [$2b], a
    rst $08
    xor d
    or $cf
    db $f4
    adc d
    ld a, b
    jp nz, $c0e5

    pop hl
    ld h, [hl]
    and c
    inc l
    inc l
    dec bc
    dec bc
    add c
    xor b
    ld [bc], a
    or $d2
    inc l
    call nc, Call_000_39e1
    and h
    ld b, [hl]
    pop bc
    or b
    and l
    cp $e2
    cp a
    ldh [rP1], a
    add c
    or c
    ld b, e
    and a
    ret nz

    db $eb
    ret nc

    jp nz, $8462

    ld a, [hl]
    ld [c], a
    and [hl]
    and $81
    xor e
    nop
    add hl, sp
    add a
    ld a, $a1
    add c
    and $1c
    add [hl]
    ld hl, sp-$17
    adc e
    push de
    or b
    and [hl]
    ret nz

    add sp, $00
    push de
    ld l, c
    pop de
    add a
    call nz, $8ba5
    jp z, $8371

    or e
    ld l, l
    dec d
    xor c
    ld sp, hl
    and $00
    add a
    rst $00
    or h
    ld l, c
    ccf
    and $c1
    jp nz, $ec7e

jr_059_5124:
    ld c, [hl]
    and a
    ld b, a
    push bc
    add c
    xor e
    nop
    dec h
    add sp, -$7f
    jp Jump_059_63b8


    push de
    ld l, c
    ld c, l
    xor c
    db $fd
    ld h, l
    inc bc
    rst $08
    rst $28
    ld b, c
    nop
    cp a
    ret


    ld a, [$0dec]
    and l
    pop de
    adc c
    ld sp, hl
    adc b
    ld a, a
    add sp, -$05
    ret


    push de
    ld l, b
    nop
    jp $014a


    or c
    cp $4b
    push de
    ld l, a
    inc bc
    adc c
    rst $30
    ld [hl], d
    add b
    xor c
    push de
    ld l, a
    nop
    inc bc
    adc e
    ld bc, $00b0
    db $eb
    push de
    ld l, [hl]
    inc bc
    adc e
    rst $30
    ld [hl], c
    ret nz

    and b
    rst $38
    xor h
    nop
    sbc $ee
    add $2a
    ld hl, $b4c5
    ld b, [hl]
    jp $95cb


    ld d, b
    add $2a
    or b
    and e
    nop
    di
    add hl, hl
    add c
    db $ed
    sbc [hl]
    adc $0a
    daa
    ld [c], a
    xor d
    or h
    ld b, l
    ld a, l
    jr z, jr_059_5124

    ld d, e
    nop
    rla
    and $33
    and h
    ld [hl], $44
    or h
    ld c, e
    ret nz

    call nc, Call_000_210a
    ld [de], a
    jr nz, jr_059_51b6

    add h
    nop
    pop af
    adc b
    ld [hl], h
    daa
    rst $38
    xor [hl]
    inc d
    xor l
    sub d
    nop
    push bc
    db $e3
    cp d
    add l
    ld b, d
    jr z, jr_059_51b3

jr_059_51b3:
    call c, $fa61

jr_059_51b6:
    ld [c], a
    nop
    xor [hl]
    push de
    ld [$6a12], sp
    jr c, @+$0c

    sbc h
    ld h, h
    nop
    add a
    nop
    push de
    db $10
    cp [hl]
    db $ec
    jr c, jr_059_51d4

    db $db
    ld b, e
    dec sp
    inc c
    ld b, b
    rst $08
    ld a, [bc]
    daa
    jr c, jr_059_51e0

jr_059_51d4:
    nop
    sub [hl]
    ld b, e
    add d
    xor c
    ld b, b
    pop de
    dec hl
    ld h, h
    dec [hl]
    adc c
    ld b, d

jr_059_51e0:
    ld sp, $d340
    sub d
    ld b, e
    nop
    ld a, [bc]
    ld h, $38
    inc c
    ld [bc], a
    xor h
    sbc $93
    di
    db $ec
    add c
    dec bc
    ld [bc], a
    adc e
    nop
    or e
    nop
    ld c, h
    and a
    ld b, d
    add hl, sp
    db $fc
    ei
    ld b, d
    ld [hl-], a
    rst $38
    rst $38
    ld h, $24
    sbc a
    ld [hl+], a
    ccf
    ld [hl], b
    nop
    rst $38
    rst $38
    ld [c], a
    adc l
    cp [hl]
    push bc
    inc b
    ld c, [hl]
    add b
    db $fc
    db $fc
    and a
    ld a, a
    add hl, hl
    rst $38
    rst $38
    nop
    ld b, b
    db $ec

jr_059_521b:
    add e
    add l
    add h
    cpl
    ld b, b
    rst $38
    ld c, l
    jr z, jr_059_521b

    ld [$ffff], sp
    and h
    dec b
    nop
    ret nz

    db $ed
    rst $38
    rst $38
    ld [hl], e
    call nc, $8ecd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    nop
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    ldh a, [$dc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    call c, Call_000_0033
    nop
    nop
    db $fd
    jr nz, @+$01

    pop hl
    ld a, [bc]
    dec bc
    ld sp, $3131
    ld c, l
    rst $38
    ld a, [hl-]
    ld d, h
    ld d, l
    ld b, [hl]
    ld c, l
    ld sp, $5b60
    db $e3
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c2
    push hl
    ld sp, $324d
    add l
    ld l, b
    rst $38
    ldh [$32], a
    cp a
    pop hl
    jp z, $c0ff

    add sp, -$3e
    db $e3
    ld sp, $47af
    ld [hl-], a
    ld l, d
    ld l, h
    rst $38
    ldh [rOCPS], a
    cp a
    ldh [$5f], a
    ld hl, sp-$36
    rst $38
    add sp, -$19
    jp nz, Jump_059_46e4

    ld [hl], $6a
    ld l, l
    ld l, d
    rst $38
    ld l, b
    ld l, b
    ld l, d
    ld l, e
    ld l, c
    add hl, sp
    ld sp, $785e
    jp z, $e8ff

    rst $20
    call nz, $54e1
    ld d, l
    ld [hl], $6a
    pop bc
    ldh [rIE], a
    ld l, d
    ld l, b
    ld l, d
    ld l, c
    ld l, e
    ld l, c
    ld d, e
    ld sp, $31d9
    jp z, $c0ff

    add sp, $3c
    ld [hl], $08
    pop hl
    ld l, l
    ld l, l
    ld [hl], a
    jr nc, jr_059_5356

    ld l, c
    db $fd
    ldh [rOCPD], a
    ld l, c
    ld d, d
    ret nz

    rst $38
    or $ea
    jp hl


    ld c, c
    ld c, b
    ld [$30e2], sp
    jr nc, jr_059_532f

    ld l, c
    jr c, @-$7e

    db $e3
    ret nz

    rst $38
    db $eb
    ld [$6939], a
    ld l, e
    call nz, $bfe0
    pop hl
    and h
    ld bc, $00e0
    ldh [rOCPS], a
    nop
    rst $38
    db $eb
    ld [$c053], a
    ldh [$6d], a
    pop hl
    ld l, l
    ccf
    ldh [$82], a
    pop bc
    add b
    rst $18
    rst $28
    xor $52
    ld l, c
    ld l, e
    add [hl]
    add $c0
    ld b, h
    ld b, h
    add d

jr_059_532f:
    pop hl
    add b
    ret nz

    nop
    rst $18
    ret nz

    xor $6d
    rst $38
    ld l, d
    ld b, h
    ld b, l
    inc [hl]
    inc [hl]
    ld b, l
    ld d, h
    ld d, l
    rst $38
    ld d, l
    ld d, l
    ld d, h
    ld b, l
    ld c, l
    ld sp, $5f31
    inc a
    ret nz

    rst $38
    nop
    jp hl


    ld l, d
    ld l, d
    ld [hl-], a
    inc [hl]
    cp [hl]
    and d
    ei
    push hl

jr_059_5356:
    reti


    ld e, [hl]
    ret nz

    rst $38
    jp hl


    add sp, $4d
    ld b, [hl]
    inc c
    and b
    ld sp, $df31
    ld de, $1414
    ld [de], a
    ld de, $e0f9
    ld [de], a
    add hl, hl
    rst $00
    ld sp, $6031
    jp z, $c0ff

    xor c
    jp nz, $12e1

    ld hl, $24ff
    inc h
    ld [hl+], a
    ld hl, $1212
    ld hl, $b122
    daa
    cp a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld e, h
    ld e, l
    add e
    ldh [rNR42], a
    ei
    ld [hl+], a
    db $10
    ld a, b
    add c
    ld [hl+], a
    ld [hl+], a
    jr nz, jr_059_53b7

    db $10
    ld hl, sp-$41
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld e, e
    ld e, e
    ld h, b
    ld sp, $002b
    jp nz, $fce2

    db $e4
    cp a
    ldh [$ca], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_059_53b7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_059_54d0

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
    xor l
    ld d, h
    db $dd
    ld d, h
    ld a, d
    ld d, a
    ld b, b
    ld e, c
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

jr_059_54d0:
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
    and $2b
    dec hl
    db $f4
    pop hl
    ld a, [bc]
    dec bc
    dec bc
    ccf
    ld c, e
    inc c
    inc c
    inc c
    ld c, h
    ld c, h
    db $fd
    and $f5
    ldh [$78], a
    ldh a, [$e0]
    db $ec
    ldh [$fd], a
    ld a, [c]
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ld [c], a

Call_059_5500:
    add b
    cp [hl]
    pop hl
    jp $bee0


    ldh [$c0], a
    jp hl


    cp c
    ldh [$b2], a
    db $e4
    or [hl]
    db $f4
    dec bc
    add hl, bc
    ld l, e
    ld a, [hl]
    pop hl
    cp [hl]
    db $e4
    dec hl
    rst $38
    ldh [$6f], a
    ldh [$94], a
    ld [c], a
    ld a, [hl]
    db $e3
    nop
    db $fc
    db $e3

jr_059_5522:
    ld [hl], b
    pop hl
    or [hl]
    and $80
    db $ec
    add [hl]
    ld [c], a
    ld a, l
    and $39
    ld [c], a
    ld d, c
    pop hl
    ld h, b
    add d
    db $e4
    ld b, b
    add sp, -$4a
    push hl
    ld b, b
    db $ec
    add c
    and $4b
    dec hl
    jr c, jr_059_5522

    inc hl
    ld l, e
    dec hl
    db $10
    and $0a
    and $b6
    ld [$f42c], a
    jp $e3f9


    add hl, bc
    dec bc
    jp z, $ffc0

    jp Jump_059_424b


    ld [c], a
    rst $30
    pop bc
    jp z, $c7e6

    push bc
    inc e
    jp nz, Jump_000_3fc8

    db $ed
    dec bc
    dec hl
    ld c, e
    add c

jr_059_5565:
    push hl
    inc bc
    ld [c], a
    ld a, d
    ldh [rP1], a
    nop
    pop hl
    ret nz

    ret z

    ld a, a
    jp $e7b6


    ld [hl], l
    bit 1, b
    ret nz

    cp l
    ldh [$82], a
    db $e4
    ret nz

    add c
    pop hl
    db $76
    ret nz

    ld de, $81e5
    jp $cd35


    ld [hl], $cc
    inc l
    ld c, h
    nop
    adc d
    ret nz

    add c
    rst $20
    ld b, b
    ld [c], a
    ld c, h
    jp $e4fe


    di
    and [hl]
    ld hl, sp-$1a
    ret nz

    db $eb
    ld bc, $c82c
    and b
    push bc
    ret nz

    pop bc
    push hl
    jr nc, jr_059_5565

    ld b, c
    push bc
    ret z

    and a
    or [hl]
    db $eb
    ld [de], a
    ret nz

    db $ec
    ld c, h
    add e
    and d
    ld b, d
    db $e4
    dec bc
    ret nz

    jp $c706


    ld c, h
    push bc
    jr nz, @-$48

    rst $20
    add e
    rst $00
    ld a, a
    db $e4
    ret nz

    add sp, $31
    and c
    ld l, e
    jp c, Jump_059_44a3

    and $a0
    jp z, $02e6

    rst $08
    dec de
    jp $a27e


    add e
    jp nz, $fc6b

    add b
    ld l, e
    nop
    ld b, b
    and $81
    call nz, $e6bc
    ld b, b
    pop de
    cp h
    and e
    dec sp
    and b
    pop bc
    add d
    ret nz

    pop hl
    jr nz, jr_059_562c

    rst $20
    ld b, c
    and l
    cp a
    add e
    or [hl]
    and $c0
    and b
    inc l
    rst $38
    ldh [$7c], a
    xor h
    ld [hl], $b7
    add b
    ld l, e
    ld l, e
    or d
    and c
    dec bc
    ld a, [bc]
    ld b, b
    and $c0
    add sp, $00
    or [hl]
    add sp, -$40
    rst $28
    cp h
    add d
    dec sp
    add e
    add b
    db $e4
    ld h, c
    ret z

    sub [hl]
    db $e4
    db $76
    add sp, $00
    add c
    jp hl


    db $dd
    add l
    db $10
    add sp, -$39
    and [hl]
    add hl, bc
    adc e
    ld c, h
    add sp, $41
    ld [$8857], a
    nop
    sub $c7

jr_059_562c:
    jp Jump_059_756b


    res 6, d
    ld l, h
    ret nz

    rst $30
    dec c
    add a
    ld [hl], l
    jp z, Jump_059_6064

    nop
    pop bc
    pop bc
    ld a, [hl]
    ld [$8f9a], a
    jp $b56b


    jp z, $c0bd

    ret nz

    rst $20
    inc h
    and l
    nop
    ld sp, hl
    and $c3
    ld [hl], b
    ret nz

    pop af
    ld a, [hl]
    and [hl]
    dec e
    and l
    rst $08
    ld h, a
    jp $c664


    ld b, l
    nop
    ld c, h
    ld h, l
    ld [hl], l
    ret z

    nop
    res 4, h
    ld d, d
    add $48
    ld b, d
    ld h, l
    or d
    ld l, a
    add b
    call c, $c400
    adc b
    ld [hl], h
    rst $20
    ld a, l
    and d
    rst $38
    xor h
    db $eb
    sub b
    ld b, e
    ret z

    ld d, c
    and [hl]
    xor a
    ld h, [hl]
    nop
    ld b, b
    and a
    ld d, [hl]
    and [hl]
    ret nz

    xor $50
    add a
    add h
    adc c
    xor e
    add e
    inc bc
    ld [$6dd5], a
    nop
    add $4d
    ld a, [hl]
    adc c
    ld [hl-], a
    add h
    jp $d5c9


    ld [hl], b
    add $4a
    or h
    add l
    cp h
    db $eb
    nop
    ld [hl], b
    ld c, d
    push de
    ld l, h
    add $4b
    or a
    ld l, c
    db $fc
    ld [hl], d
    push de
    ld l, l
    add $4e
    add h
    adc d
    nop
    dec a
    ld l, $d5
    ld [hl], c
    pop af
    call z, $c77f
    ld [hl], l
    ld c, $d5
    db $76
    db $d3
    ld l, $bc
    jp hl


    nop
    ld c, d
    ld b, b
    or $30
    push de
    ld h, a
    adc c
    ld l, e
    or d
    ld l, a
    ret nz

    ld l, d
    push de
    jr nc, @-$38

    ld c, d
    nop
    add hl, sp
    ld a, [bc]
    ld [$0262], sp
    xor e
    nop
    adc $c6
    ld c, h
    db $76
    adc d
    add c
    ld l, [hl]
    nop
    jp nc, Jump_000_1100

    adc h
    sub [hl]
    xor h
    nop
    call c, Call_059_4ec6
    add e
    add hl, bc
    jp nz, $d58c

    inc sp
    and [hl]
    adc c
    nop
    ld [hl], e
    xor h
    ret nz

    rst $28
    push de
    ld l, $fe
    ld l, d
    add hl, sp
    dec c
    ld b, d
    ld l, $0f
    pop af
    ld h, h
    reti


    nop
    adc c
    ld [hl], a
    ld l, e
    ld l, h
    ld c, $84
    ld h, h
    call Call_059_7c49
    cp c
    ld [hl], b
    add hl, sp
    add hl, bc
    ld a, a
    ld a, [$7100]
    xor h
    ld h, h
    jp nc, $ffc0

    ld b, b
    xor $c4
    inc l
    rst $38
    rst $38
    ld h, h
    sbc c
    ret nz

    rst $38
    nop
    ld h, h
    rst $18
    rst $38
    rst $38
    ld h, h
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    sbc c
    push bc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, h
    ld l, e
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
    ld [hl], $f3
    nop
    nop
    nop
    ld e, l
    ld sp, $e6ff
    ld e, l
    ld e, h
    ld e, e
    rst $38
    ldh [$5a], a
    ei
    ldh [$f9], a
    nop
    rst $38
    rst $38
    rst $20
    and $31
    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, l
    cpl
    ld d, l
    ld d, h
    ld b, [hl]
    ld b, a
    or a
    ldh [$60], a
    jp $bee1


    ldh [$ec], a
    jp z, $c0ff

    add sp, $39
    jr nc, @+$01

    ldh [rOCPS], a
    ld l, l
    ld [hl], $46
    cp [hl]
    pop hl
    ld h, d
    ld h, d
    ld a, e
    ld [c], a
    jp z, $80ff

    add sp, $53
    ret nz

    db $e3
    adc a
    ld l, l
    ld l, l
    ld [hl], $3c
    add hl, sp
    push hl
    jp z, $40ff

    add sp, $52
    cp $c1
    db $e4
    ld l, l
    ld l, b
    ld b, d
    ld d, l
    ld d, h
    ld d, l
    ld b, [hl]
    and c
    ld c, l
    add hl, sp
    ldh [$ca], a
    rst $38
    ld b, b
    db $eb
    pop bc
    db $e3
    ld l, b
    ld a, h
    ldh [rOCPS], a
    ld h, e
    jr nc, @+$4c

    ld a, d
    ldh [$ca], a
    rst $38
    ret nz

    ret z

    ld c, c
    ld c, h
    ld b, d
    ld [c], a
    sbc [hl]
    pop bc
    db $e4
    jr nc, jr_059_5857

    ld b, d
    ld c, c
    ret nz

    rst $38
    add b
    ret


    ld sp, $3ca7
    ld d, l
    ld [hl], $42
    pop hl
    dec a
    pop hl
    ld l, d
    rst $30
    pop bc
    add hl, sp
    db $fc
    ret nz

jr_059_5802:
    rst $38
    jp hl


    add sp, $14
    ld [de], a
    ld e, $31
    ld b, a
    ld b, [hl]
    pop hl
    ld b, d
    ret nz

    ld [c], a
    add c
    pop hl
    ret nz

    rst $38
    db $ec
    db $eb
    inc h
    ld d, $17
    ld h, $bd
    and b
    inc a
    ld b, d
    ld [bc], a
    ldh [$c1], a
    db $e3
    ld c, h
    ld b, b
    rst $38
    ld [$afe9], a
    jr nz, @+$22

    ld d, $15
    ld a, h
    and b
    add hl, sp
    ld b, d
    push hl
    ld [hl-], a
    ld l, c
    ld a, $c0
    rst $18
    ret nz

    db $eb
    jr z, jr_059_58b8

    pop hl
    ld c, c
    ld c, b
    ld [bc], a
    db $e3
    jp hl


    ld [hl-], a
    ld b, b
    rst $18
    add b
    db $ed
    jr nz, jr_059_5802

    ret nz

    ld sp, $7281
    adc l
    ld [hl], $83
    pop bc
    ld [hl], c
    xor a
    ld a, [hl-]
    and b
    ret nz

    cp a
    ret nz

    xor $ac

jr_059_5857:
    rst $38
    xor c
    add b
    ld l, a
    ld l, [hl]
    ld d, h
    ld d, l
    ld l, [hl]
    ld a, c
    ld h, a
    add c
    ld sp, $4061
    cp a
    add b
    rst $28
    add c
    add b
    rst $38
    db $e4
    dec b
    and b
    ret nz

    ldh [$5a], a
    jp z, $40ff

    db $ec
    add c
    ldh [$c0], a
    add sp, -$80
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_58b8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_059_599f

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
    ld a, h
    ld e, c
    xor h
    ld e, c
    ld l, d
    ld e, h
    inc a
    ld e, [hl]
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

jr_059_599f:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    push af
    ld c, d
    rst $38
    ldh [$0b], a
    rst $38
    db $e3
    dec hl
    ld c, d
    ld l, d
    ld l, d
    ld a, l
    ld l, d
    di
    pop hl
    inc c
    inc c
    inc c
    ld c, h
    ld c, h
    db $fd
    pop hl
    inc c
    db $fc
    db $e3
    ld a, [c]
    pop hl
    inc l
    inc l
    ld sp, hl
    db $e3
    push hl
    ldh [$fd], a
    db $eb
    ret nz

    add sp, -$80
    cp a
    and $c1
    db $e4
    ret nz

    ld [c], a
    cp d
    pop hl
    or l
    ld [c], a
    ld sp, hl
    rst $20
    ret nz

    ldh a, [rOCPD]

jr_059_59e1:
    inc bc
    ld l, e
    ld c, e
    rst $38
    ldh [$7e], a
    push hl
    adc l
    pop hl
    ld a, h
    pop hl
    sub e
    push hl
    ld [hl], e
    rst $20
    inc b
    cp a
    rst $28
    ld b, b
    pop hl
    dec hl
    pop bc
    db $e3
    cp a
    and $ca
    db $e4

jr_059_59fc:
    cp l
    push hl
    ld a, b
    db $e3
    inc c
    jr c, @-$1b

    ld b, b
    ld a, [c]
    ld l, e
    dec bc
    jp nz, Jump_059_7ee4

    db $e4
    ld [bc], a
    db $e4
    set 4, d
    jr nz, jr_059_5a50

    push hl
    jr c, jr_059_59fc

    ei
    call nz, $c3f4
    add b
    ld [c], a
    dec hl
    add d
    db $e3
    cp a
    push hl
    jr nz, jr_059_59e1

    push bc
    ld d, b
    pop hl
    or l
    db $e4
    xor l
    call nz, $f300
    dec hl
    cp a
    ldh [$7d], a
    call nz, Call_059_4b0f
    dec bc
    ld c, e
    ld c, d
    ret nz

    db $e3
    cp $e4
    ld [bc], a
    ld [$d4c0], a
    db $10
    set 4, b
    ld a, [hl]
    ldh [$3a], a
    jp nz, $e0c0

    dec bc
    nop
    ldh [$8d], a
    push hl
    ret nz

    rst $18
    ld b, $00
    ret nz

    ld a, [bc]

jr_059_5a50:
    ld a, [hl+]
    add l
    pop bc
    db $fc
    ret nz

    db $fc
    and c
    db $f4
    and c
    push de
    push bc
    ld e, h
    cp [hl]
    call nz, $dcc0
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    cp a
    ldh [$2b], a
    add $e1
    nop
    ld sp, hl
    ldh [$c0], a
    ld [c], a
    adc $c6
    rlca
    jp $da40


    pop bc
    pop hl
    cp a
    pop hl
    ret nz

    pop bc
    nop
    dec sp
    db $e4
    ret nz

    and l
    ld a, l
    push bc
    pop af
    call nz, $a4b8
    ld a, h
    and d
    ld [hl], a
    and [hl]
    pop bc
    db $e3
    inc bc
    ld a, [hl+]
    ld a, [hl+]
    add e
    pop hl
    db $fc
    call nz, $a880
    ld a, c
    xor $c7
    rst $20
    ld [hl], $a4
    ld [hl], d
    pop bc
    db $e4
    ld a, [bc]
    nop
    pop hl
    cp h
    jp nz, Jump_000_0b4b

    ld a, [bc]
    add b
    and [hl]
    sub h
    ld a, c
    rst $28
    db $fc
    adc [hl]
    ld c, d
    pop bc
    db $e3
    ld a, [bc]
    ld a, $a2
    or a
    add d
    ld a, [bc]
    ld hl, $802a
    or c
    cp b
    add l
    and a
    add b
    cp e
    add b
    inc l
    rst $38
    ldh [$b5], a
    add e
    dec h
    dec bc
    cp a
    pop hl
    ld a, [bc]
    ret nz

    ldh [$c1], a
    rst $20
    ld a, [hl+]
    add b
    cp c
    ld l, b
    add b
    nop
    ret nz

    db $eb
    cp a
    ldh [$c1], a
    ldh [rLCDC], a
    ldh [$3a], a

jr_059_5adb:
    add e
    ld [hl], d
    pop bc
    add b
    or e
    pop bc
    push hl
    nop
    inc sp
    add c
    add c
    and $96
    push bc
    sub h
    and e
    ld a, [bc]
    add c
    ld h, a
    ld [c], a
    ld b, e
    add a
    rst $10
    and $00
    jr c, jr_059_5adb

    db $eb
    db $e3
    jp hl


    jp hl


    dec de
    and [hl]
    xor e
    and $23
    pop hl
    db $ec
    db $eb
    ccf
    jp hl


    nop
    ld a, [hl-]
    adc e
    ld h, [hl]
    add [hl]
    ld [c], a
    ld h, l
    sbc h
    ld h, [hl]
    ld c, $a9
    ld h, d
    push hl
    ld a, l
    call nz, $c1c1
    nop
    and a
    db $e4
    ldh [$e6], a
    ld d, h
    push hl

jr_059_5b1c:
    and c
    jp nz, $ecec

    sbc l
    rst $20
    rst $38
    add $f6
    xor c
    nop
    ld b, b
    rst $38
    cp a
    and a
    jr z, jr_059_5b8f

    ld b, b
    rst $00
    ld h, d
    sbc b
    ld c, [hl]
    adc d
    cp b
    adc b
    ret nz

    ld [$2700], a
    add a
    ld [c], a
    ld c, h
    db $ec
    db $eb
    add b
    jp hl


    dec a
    jp nz, $c9bf

    inc e
    ret


    ld d, d
    ret z

    nop
    ret nc

    ld c, c
    cp b
    add a
    jr z, jr_059_5b1c

    ld e, d
    ld l, b
    ld b, c
    ld sp, hl
    inc sp
    adc h
    inc d
    add $aa
    ld b, l
    nop
    ld h, e
    ld d, c
    ld c, a
    ld c, b
    cp d
    adc [hl]
    ld d, $ec
    ld h, e
    ld c, b
    inc c
    jp hl


    nop
    add sp, -$02
    db $e4
    nop
    xor a
    ld a, [hl+]
    dec hl
    and a
    ld h, e
    inc hl
    and c
    and [hl]
    ld c, b
    daa
    call nz, $b249
    ld b, a
    pop bc
    db $eb
    nop
    ld e, h
    daa
    ld c, [hl]
    ld b, h
    sub b
    db $e3

Call_059_5b82:
    db $ec
    and $fb
    ld [hl], b
    add hl, de
    call $4915
    ld c, e
    xor b
    nop
    rlca
    ld c, b

jr_059_5b8f:
    pop af
    ld b, a
    scf
    inc l
    dec d
    ld c, [hl]
    rla
    ld b, l
    inc b
    ld c, c
    or b
    daa
    add sp, -$35
    nop
    dec d
    ld d, c
    jp nz, Jump_059_7946

    daa
    inc bc
    and $70
    ld b, [hl]
    nop
    add [hl]
    dec d
    ld c, a
    sub e
    add [hl]
    nop
    ld h, [hl]
    add [hl]
    ld [hl], b
    ld d, b
    ld a, a
    xor l
    sbc h
    ld c, c
    ld c, a
    add hl, hl
    add l
    ret


    ld e, e
    jp nz, Jump_059_4146

    nop
    pop bc
    ld l, [hl]
    dec d
    ld c, h
    and [hl]
    ld l, h
    ld [$7fe7], a
    inc b
    add c
    ld l, l
    dec d
    dec l
    ld [bc], a
    call nz, $8000
    ld h, $6f
    or b
    dec hl
    ld l, e
    nop
    xor $cf
    daa
    scf
    ld c, a
    ld bc, $156b
    ld sp, $b300
    ld b, l
    scf
    ld d, c
    ld b, b
    pop af
    ld [c], a
    sub e
    rst $20
    ld b, a
    scf
    ld c, l
    rst $38
    rst $38
    ld a, [hl]
    daa
    nop
    and d
    xor l
    rst $38
    rst $38
    dec sp
    ld b, l
    and d
    or h
    rst $38
    rst $38
    and d
    db $db
    rst $38
    rst $38
    ld hl, sp+$25
    nop
    ld a, $13
    rst $38
    rst $38
    ld b, b
    db $ec
    ld a, $0c
    rst $38
    rst $38
    ld [c], a
    xor h
    ld b, e
    adc c
    ret nz

    rst $38
    nop
    dec a
    ld c, a
    inc bc
    adc e
    rst $38
    rst $38
    ld [hl], e
    jp nc, $ab8d

    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    rst $38
    ld d, c
    add hl, bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rst $20
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
    ld e, [hl]
    ld d, e
    nop
    nop
    nop
    db $fd
    add a
    rst $38
    ldh [$5b], a
    ld e, e
    ld e, e
    ld e, h
    ld e, l
    ld sp, $317f
    ld h, b
    adc h
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    adc h
    di
    ldh [rSB], a
    nop
    rst $38

Jump_059_5c81:
    rst $38
    rst $20
    and $c0
    ld [c], a
    jp nz, $fee1

    ldh [$bf], a
    push hl
    jp z, $feff

    ret nz

    db $eb
    ld h, b
    ld sp, $4647
    ld d, l
    ld d, h
    ld b, [hl]
    pop af
    ld b, a
    ld a, [hl]
    push hl
    jp z, $80ff

    db $eb
    ld h, c
    inc a
    ld [hl], $6d
    add $ff
    ldh [$36], a
    inc a
    dec a
    db $e4
    jp z, $40ff

    db $eb
    inc a
    ld b, d
    ld c, $c1
    pop hl
    ld l, l
    ld l, e
    ld b, d
    cp a
    db $e4
    jp z, $c0ff

    db $ec
    add c
    ld [c], a
    db $e3
    ld l, l
    ld l, e
    cp a
    push hl
    jp z, $40ff

    db $ec
    ld b, a
    ld b, [hl]
    ld b, d
    rst $28
    ld l, b
    ld l, b
    ld l, b
    ld l, e
    cp a
    ldh [rOBP1], a
    ld sp, $f95f
    adc h
    ret nz

    rst $38
    ret nz

    adc $31
    inc a
    ld b, d
    jr nc, jr_059_5d10

    dec a
    ld l, d
    cp a
    ldh [$39], a
    ld sp, $5b5e
    nop
    rst $38
    ld b, b
    set 7, e
    adc l
    adc [hl]
    cp a
    ldh [$39], a
    jr nc, @+$32

    jr nc, jr_059_5d5f

    sbc a
    ld l, e
    ld l, e
    ld d, d
    ld sp, $4061
    rst $18
    nop
    res 1, l
    db $db
    ld c, a
    ld c, a
    cp a
    ldh [rOBP1], a
    ld c, b
    ret nz

    ldh [$6d], a
    ld l, l
    ld hl, $c053
    rst $38

jr_059_5d10:
    ret nz

    xor h
    pop bc
    ldh [$bf], a
    ld [c], a
    ld d, e
    ret nz

    ld [c], a
    ld b, b
    pop hl
    ldh a, [$c0]
    rst $38
    jp hl


    add sp, -$3f
    ld [c], a
    ld a, [hl]
    ldh [$31], a
    ld d, d
    jr nc, jr_059_5d92

    add a
    ld l, l
    ld l, l
    ld c, b
    ret nz

    ret nz

    ret nz

    rst $38
    ld [$c1e9], a
    db $e3
    ld c, a
    ld e, a
    adc a
    ld h, c
    ld d, e
    ld l, b
    ld l, h
    add c
    db $e4
    adc [hl]
    jp z, $faff

    add sp, -$19
    dec e
    pop bc
    db $e3
    adc c
    ld c, c
    ld c, b
    ld l, h
    ld l, h
    and [hl]
    add c
    db $e3
    adc [hl]
    adc c
    jp z, $e8ff

    rst $20
    ld e, e
    cp a
    pop hl
    adc a
    cp a
    adc c
    adc c
    add hl, sp
    ld l, h
    ld l, h
    ld l, h

jr_059_5d5f:
    ccf
    and b
    ld e, [hl]
    ld h, b
    pop bc
    ldh [$c0], a
    rst $38
    ret nz

    jp hl


    cp a
    ldh [$c1], a
    ldh [$89], a
    inc a
    cp a
    add d
    inc bc
    ld sp, $c15f
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_059_5d92:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_059_5e9b

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
    ld a, b
    ld e, [hl]
    xor b
    ld e, [hl]
    cpl
    ld h, c
    dec h
    ld h, e
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

jr_059_5e9b:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $30
    inc l
    inc l
    dec bc
    rst $38
    ldh [rOCPD], a
    ld l, e
    ld c, e
    ld c, e
    rst $10
    dec bc
    dec hl
    ld l, e
    push af
    ldh [$0a], a
    pop af
    ldh [$4c], a
    inc c
    ld [bc], a
    rst $38
    ld [c], a
    inc l
    rst $38
    ldh [$f6], a
    db $e3
    ld a, [$dbf8]
    ldh [$c0], a
    ld [c], a
    cp a
    db $e3
    inc b
    jp nz, $c0e1

    pop hl
    ld c, h
    cp l
    pop hl
    ei
    ld [c], a
    or l
    pop hl
    rst $30
    db $e4
    or e
    pop hl
    inc c
    xor [hl]
    rst $28
    cp a
    pop hl
    ld c, e
    ld c, e
    cp a
    push hl
    ld a, [hl]
    ld [c], a
    ret nz

    db $e4
    sub l
    xor $0c
    ld l, l
    ld [c], a
    ld l, [hl]
    ldh a, [rWX]
    dec hl
    add b
    ldh [$3d], a
    rst $20
    ld b, b
    ldh [rOBP0], a
    push af
    cp b
    cpl
    di
    inc b

Jump_059_5eff:
    ldh [$bf], a
    db $e3
    dec bc
    dec bc
    dec hl
    ld b, b
    and $4c
    adc b
    rst $38
    ldh [$3b], a
    db $e3
    ld a, [$2cc1]
    ld a, [$3de4]
    add sp, -$1c
    rst $00
    dec bc
    jr nz, jr_059_5f5a

    pop hl
    db $fd
    jp $e600


    db $fc
    ret nz

    db $fd
    jp $ba4c


    jp nz, $c4b4

    ld l, $29
    pop af
    inc c
    ld c, e
    dec bc
    add b
    pop hl
    dec hl
    dec sp
    ldh [$c0], a
    db $e3
    jr nz, @-$26

    db $e3
    cp l
    pop bc
    ld sp, hl
    ld [c], a
    ld a, e
    jp nz, $c374

    inc l
    ld h, [hl]
    pop bc
    ld l, h
    call $c200
    ldh [rOBP0], a
    ldh [rIE], a
    ld [c], a
    ld a, a
    pop hl
    sbc d
    ld [c], a
    ret nz

    ld [c], a
    ld a, e
    ret z

    dec [hl]
    pop bc
    ld [bc], a
    ret nz

    di
    dec bc
    pop bc

jr_059_5f5a:
    ld [c], a
    ret nz

    db $e4
    ld [hl], a
    ldh [rWX], a
    db $e4
    ld [$f4c5], sp
    jp hl


    ld [$b2f4], sp
    call nz, $c0a0
    add sp, $2b
    ld b, e
    ldh [rSC], a
    push bc
    ld b, $c2
    ld a, [$00a4]
    add b
    db $e4
    ret nz

    ld a, [c]
    call $81a2
    db $e3
    ret nz

    ld [c], a
    cp [hl]
    db $e3
    ld a, a
    ret


    ret nz

    rst $20
    nop
    jp hl


    and [hl]
    ld h, a
    and [hl]
    ld c, [hl]
    jp $c2ff


    dec [hl]
    ld [c], a
    ret


    jp nz, $c381

    dec sp

jr_059_5f96:
    jp nz, $8d24

    res 5, c
    xor a
    ld c, e
    ret nz

    push hl
    ld [hl], a
    db $e4
    inc l
    dec b
    call nz, $c202
    ld [$e3be], sp
    ret nz

    db $ed
    ld [$4b8a], a
    dec bc
    jp $e5c1


    ld a, a
    pop hl
    ld bc, $08e7
    ret nz

    adc $c0
    and $a5
    add [hl]
    ld c, e
    ld a, a
    ld [c], a
    adc c
    and d
    ld b, h
    and d
    ld a, $e3
    nop

jr_059_5fc7:
    jp $c0a3


    rst $00
    add b
    db $eb
    ld [hl], $a9
    add b
    ldh [$fe], a
    jp $e4c2


    ccf
    and c
    nop
    ld b, h
    push hl
    ld b, b
    rst $10
    ld sp, $64a0
    adc e
    db $db
    jp z, $860a

    cp b
    rst $20
    ld [hl], e
    sub c
    nop
    jp z, $c0ec

    jp hl


    add e
    and $40
    rst $28
    ldh a, [$a3]
    ld l, l
    ret


    sub c
    ld h, e
    adc [hl]
    add h
    nop
    inc b
    adc c
    ld a, [$f06c]
    xor e
    inc e
    add l
    ld d, e
    and l
    adc e
    pop hl
    add hl, bc
    jp $869a


    nop
    ld b, d
    ld l, h
    ldh a, [$aa]
    cp $c6
    push af
    push bc
    jr jr_059_5f96

    xor d
    ld [c], a
    ld b, d
    ldh [$0e], a
    add h
    nop
    and $cf
    ld h, [hl]
    ld h, [hl]
    push hl
    ld b, a
    ld b, b
    ldh a, [$0e]
    add l
    and h
    pop de
    and h
    add h
    ret nz

    db $fc
    nop
    sbc $e9
    ld [hl], h
    add a
    ldh a, [$af]
    ret nz

    rst $00
    add hl, bc
    xor d
    ld b, e
    ld c, d
    ld a, d
    ld b, [hl]
    jr nc, jr_059_5fc7

    add b
    ld b, b
    db $ed
    ret z

    push bc
    ret nz

    call z, $6008
    ld a, [hl-]
    ld c, b
    ldh a, [$a8]
    nop
    ld [HeaderMaskROMVersion], a
    ld [$e8ff], sp
    ld c, $8a
    ld a, [$7fc1]
    ret


    dec hl
    rst $08
    db $eb
    ld c, a
    adc $66
    nop
    ld a, h
    inc hl
    ret nz

    db $ec
    adc b
    or a

Jump_059_6064:
    dec de
    sub b
    dec a
    add hl, hl
    ld [hl-], a
    inc sp
    sub [hl]
    cpl
    rrca
    or h
    nop
    cp b
    rst $00
    xor [hl]
    ld l, e
    push de
    ld h, h
    ld c, $93
    cp l

jr_059_6078:
    rra
    db $eb
    ld h, $0e
    sub d
    add hl, bc
    ld b, h
    nop
    pop bc
    cp $0e
    sbc e
    ld [hl-], a
    inc [hl]
    dec e
    adc c
    adc a
    ld b, h
    ld c, $93
    ld [hl-], a
    dec [hl]
    db $e4
    and $00
    adc a
    ld h, [hl]
    ld e, $d1
    ld [hl-], a
    inc sp
    db $e4
    pop af
    sub e
    ld [hl], l
    ld [hl-], a
    ld sp, $6dae
    sub e
    reti


    nop
    ld [hl-], a
    dec a
    ld e, e
    call c, Call_000_3232
    ld a, [hl+]
    sbc $1f
    ld l, c
    ld [hl-], a
    jr nc, @-$1d

    ret nc

    call nz, Call_000_00d2
    add c
    add $32
    jr nc, jr_059_6078

    ldh a, [rNR34]
    or d
    ld [hl-], a
    dec [hl]
    db $fd
    sra l
    push af
    ld [hl-], a
    scf
    nop
    rst $38
    rst $38
    ld b, $c7
    ld b, d
    ld [hl], h
    ld h, $bb
    dec h
    and h
    ld [hl-], a
    dec a
    dec l
    db $f4
    dec b
    xor c
    nop
    inc h
    or [hl]
    ld b, b
    rst $38
    inc h
    cp e
    ld b, b
    rst $38
    db $e4
    adc d
    rst $38
    rst $38
    ld h, b
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    sbc e
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld e, [hl]
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc h
    ld c, h
    nop
    nop
    nop
    rst $30
    ld [de], a
    ld de, $ff31
    ldh [rKEY1], a
    ld a, [hl-]
    ld a, [hl-]
    ld c, l
    ld d, a
    ld sp, $5b60
    rst $38
    ldh [$5a], a
    ei
    ldh [rP1], a
    rst $38
    rst $38
    xor $e7
    and $22
    ld hl, $bf29
    ldh [$39], a
    ld l, l
    ld l, l
    ld h, c
    ld [hl-], a
    cp a
    pop hl
    jp nz, $c0e1

    rst $38
    ld [$20e9], a
    db $10
    cp a
    ldh [$87], a
    sub l
    sub e
    ld l, l
    cp a
    db $e4
    ld a, [hl]
    ld [c], a
    jp z, $c0ff

    add sp, $20
    ccf
    jr nz, jr_059_616e

jr_059_616e:
    sub d
    sbc l
    ld l, d
    ld h, a
    cp a
    add sp, -$40
    rst $38
    sbc $c0
    db $eb
    ld [$8690], sp
    sub e
    cp a
    ld [c], a
    add hl, sp
    ld sp, $fce6
    pop bc
    ld e, h
    ld e, l
    jp z, $80ff

    ld [$9d1a], a
    add [hl]
    ei
    sub c
    ld l, d
    ld a, [hl]
    pop hl
    ld c, b
    ld c, c
    ld sp, $6231
    rst $20
    ld h, d
    ld sp, $ca31
    rst $38
    ld b, b
    jp hl


    rrca
    sub d
    add [hl]
    rst $38
    add [hl]
    add [hl]
    sub h
    ld l, d
    ld l, c
    ld h, [hl]
    ld l, e
    ld l, e
    db $e4
    ld a, a
    ldh [$72], a
    ret nz

    ld de, $ffca
    add sp, -$19
    ld b, $07
    ld sp, $90cf
    add [hl]
    sbc h
    sbc h
    ret nz

    db $e3
    ld a, a
    pop hl
    ld de, $f912
    ld hl, $ffca
    add sp, -$19
    ld sp, $9231
    sbc b
    sbc c
    ei
    ld l, b
    ld l, b
    ld b, b
    ld [c], a
    ld l, l
    jr nc, @+$3b

    ld sp, $e729
    ld hl, $2022
    jp z, $c0ff

    jp hl


    add hl, sp
    ld l, h
    ld h, a
    ei
    ld l, d
    ld l, b
    ld a, a
    jp nz, Jump_000_306d

    ld d, e
    ld sp, $f12b
    inc l
    ld l, a
    ret nz

    rst $38
    rst $38
    rst $20
    and $a4
    or b
    dec [hl]
    ld l, h
    scf
    ld l, h
    ld h, l
    ld h, l
    pop bc
    db $e3
    jr nc, @+$54

    ret nz

    rst $38
    db $ed
    db $ec
    rst $00
    add b
    ld a, d
    ld l, h
    rst $38
    ld [c], a
    pop bc
    ld [c], a
    ld b, b
    ldh [rNR22], a
    jr z, @-$5a

    ret nz

    rst $38
    ret nz

    ld [$c07b], a
    db $e4
    jp nz, Jump_000_30e0

    inc a
    and b
    dec d
    ret


    ld d, $c0
    rst $38
    add b
    ld [$4079], a
    ldh [$c1], a
    db $e3
    ld b, h
    ld b, l
    ld h, c
    ld c, l
    or h
    add b
    cp a
    ret nz

    jp z, $40ff

    add sp, -$80
    add e
    add d
    db $e3
    add a
    ld b, h
    ld b, l
    inc [hl]
    ld [bc], a
    jp nz, $c03f

    jp z, $c0ff

    jp hl


    ld a, c
    rra
    ld l, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    jp nz, Jump_000_32e5

    add c
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
    db $fc
    rst $38
    rst $38
    db $ec
    db $eb
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ccf
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    jp nc, $ffff

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei

Call_059_6322:
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
    jr nc, jr_059_6384

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
    ld h, c
    ld h, e
    sub c
    ld h, e
    inc l
    ld h, [hl]
    pop af
    ld h, a
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

jr_059_6384:
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
    ld c, e
    dec hl
    inc l
    inc c
    inc c
    inc c
    rst $38
    ld c, h
    ld c, h
    ld c, h
    inc c
    dec bc
    dec hl
    dec hl
    dec bc
    rrca
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    pop af
    ldh [$f0], a
    ldh [$fd], a
    and $e6
    ldh [$f8], a
    ldh a, [$e2]
    ld a, [$fce6]
    jp hl


    dec bc

Jump_059_63b8:
    dec bc
    ld l, e
    dec bc
    inc c
    inc c
    rst $18
    ldh [$c0], a
    ld [c], a
    dec bc
    dec bc
    cp a
    pop hl
    ret nz

    ld [$e0b9], a
    or d
    db $e4
    ld b, c
    inc l
    ld a, [$c0e4]
    rst $28
    sbc l
    db $e4
    ret nz

    pop hl
    ld a, l
    pop hl
    ld a, [bc]
    call Call_059_48e2
    ld a, [hl]
    db $e4
    db $fc
    db $e3
    ld h, b
    pop hl
    inc l
    ld a, [$80e3]
    db $ed
    ld l, e
    adc [hl]
    pop hl
    add b
    ld e, l
    pop hl
    add [hl]
    pop hl
    cp [hl]
    ld [c], a
    ld b, b
    ldh [$89], a
    db $e3
    ld b, [hl]
    ld [c], a
    ld b, b
    db $fd
    ld l, e
    cpl
    dec bc
    ld l, e
    ld c, e
    ld c, e
    ld c, d
    pop hl
    ld l, e
    ld hl, sp-$20
    cp $e0
    add b
    inc a
    ldh [rKEY1], a
    db $e4
    nop
    rst $28
    ld [hl-], a
    db $e3
    dec a
    db $e4
    ld [hl], $e3
    nop
    pop hl
    dec hl
    ld e, $c7
    ldh [rOCPD], a
    ld l, e
    ld l, e
    dec hl
    rst $38
    ld [c], a
    or h
    ldh [$c0], a
    jp nz, $bdc0

    call nz, $ea00
    cp a
    ret nc

    pop bc
    pop hl
    jp z, $c1e1

    push hl
    ld l, e
    dec hl
    add e
    ld c, e
    dec hl
    dec bc
    db $e4
    nop
    ldh a, [$7f]
    rst $08
    pop bc
    db $e3

jr_059_643c:
    cp h
    ld [c], a
    dec hl
    ld b, $3f
    db $e3
    dec hl
    ld c, e
    adc l
    add $00
    db $ec
    ld [hl], e
    call nz, $cb40
    adc e
    db $e3
    nop
    cp e
    ld [c], a
    nop
    ld [c], a
    cp a
    ldh [rLCDC], a
    db $e4
    ld a, [$b2e6]
    rst $20
    nop
    ret nc

    add d
    and $00
    pop bc
    push hl
    ret nz

    db $e3
    pop bc
    and $c8
    and e
    ld a, a
    or $8c
    and c
    add d
    add sp, $7f
    and b
    ld bc, $802b
    jp nz, $a8c0

    ld a, a
    and [hl]
    ld a, [c]
    and e
    cp [hl]
    and d
    cp c
    and [hl]
    adc [hl]
    and b
    nop
    ld b, h
    add sp, $76
    pop bc
    ret nz

    ret nz

    push de
    push hl
    add c
    and e
    dec [hl]
    and h
    ld b, b
    add $c0
    rlc b
    pop bc
    jp nz, $a047

    inc b
    jp nz, $a1fe

    jr nc, jr_059_643c

    rst $38
    and [hl]
    db $fc
    ld [c], a
    ld [hl], l
    and [hl]
    db $10
    ld b, b
    ld a, [c]
    res 0, e
    cp a
    ld [c], a
    pop bc
    db $e4
    dec bc
    ld b, c
    and [hl]
    cp [hl]
    rst $00
    ld [hl], a
    and $04
    call nc, $9180
    add b
    inc l
    rst $38
    ldh [$b6], a
    add e
    add l
    and e
    adc c
    and d
    add c
    and d
    ret nz

    ld sp, $cea1
    ret


    or l
    and h
    ld [hl], b
    xor b
    add $e1
    ret nz

    rst $20
    dec bc
    ld c, e
    nop
    ld b, a
    and b
    ld c, h
    add b
    inc a
    and b
    ld a, b
    db $e3
    ld l, a
    add b
    ld d, d
    and [hl]
    ret nz

    add l
    jp nz, Jump_000_00c8

    cp [hl]
    add d
    add c
    rst $20
    ld e, $86
    ld hl, sp-$19
    rst $08
    rst $20
    nop
    adc l
    xor l
    add l
    ret nz

    jp hl


    nop
    push de
    ld [hl], l
    nop
    sub c
    rst $38
    push bc
    cp h
    ld l, h
    push de
    ld a, [c]
    nop
    sub b

Call_059_6500:
    xor d
    add [hl]
    jp nz, Jump_000_01c1

    inc l
    ld a, c
    add h
    push de
    ld [hl], e
    ld a, [bc]
    push bc
    nop
    adc d
    scf
    ld h, [hl]
    ret nz

    jp hl


    and e
    ld h, c
    nop
    push de
    sub b
    nop
    or a
    ld b, b
    call z, $93d5
    nop
    cp b
    cp l
    ld h, e
    cp a
    jp z, $f8d5

    nop
    ld a, a
    ld d, b
    db $fc
    ld c, e
    push de
    sbc d

jr_059_652c:
    nop
    xor e
    cp b
    and [hl]
    call nz, $80c0
    and [hl]
    push de
    or $00
    nop
    or c
    ld l, e
    ld b, [hl]
    cp a
    xor c
    push de
    sub d
    pop bc
    jr nc, jr_059_652c

    add a
    dec a
    and d
    rst $38
    xor h
    nop
    push de
    sub b
    pop bc
    inc l
    ld a, [hl]
    and a
    ret nz

    db $ec
    push de
    sub b
    pop bc
    inc [hl]
    ld l, h
    ld b, l
    cp a
    jp z, $d500

    sub c
    db $ec
    or d
    or [hl]
    ld h, a
    add c
    db $ec
    call nc, $c1f2
    ld d, b
    or [hl]
    jp z, $cb05

    nop
    ret nz

    or d
    pop bc
    ld c, e
    or [hl]
    ld l, b
    cp e
    dec c
    sub l
    ld c, a
    pop bc
    or e
    or l
    add a
    ld b, c
    ret


    nop
    ret nz

    or b
    pop bc
    ld d, d
    or [hl]
    ld h, a
    ld bc, $95ca
    ld d, e
    db $ec
    or c
    ld a, [hl-]
    ld [bc], a
    add hl, sp
    add c
    nop
    jp nz, $958d

    ld d, a
    pop bc
    ld c, b
    ld bc, $c227
    adc l
    sub l
    ld d, c
    db $ec
    or [hl]
    push bc
    jp nc, $9500

    ld c, [hl]
    pop bc
    ld d, e
    add b
    inc b
    ld [bc], a
    adc e
    sub l
    ld d, e
    ld h, l
    sub a
    ld [bc], a
    sub c
    di
    ld a, [c]
    nop
    and l
    sub $ff
    rst $38
    and l
    jp c, $ffff

    ld e, h
    ld [bc], a
    ld a, e
    ld b, [hl]
    ld a, [hl-]
    inc l
    rst $38
    rst $38
    nop
    ld h, l
    sbc l
    rst $38
    rst $38
    add b
    db $e3
    and l
    rst $10
    rst $38
    rst $38
    ld b, b
    add sp, -$06
    add h
    pop af
    ld h, [hl]
    nop
    rst $38
    rst $38
    and d
    ld c, e
    ld b, e
    ld b, a
    ret nz

    rst $38
    daa
    dec l
    ret nz

    db $ed
    rst $38
    rst $38
    ld [hl], e
    call nc, $cd00
    cp a
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
    ld e, [hl]
    ld d, e
    nop
    nop
    nop
    cp a
    ld e, e
    ld e, e
    ld e, e
    ld h, c
    nop
    jr nz, @+$01

    ld [c], a
    nop
    ld [hl], a
    ld sp, $5c5d
    pop af
    ldh [$5a], a
    ld e, e
    nop
    rst $38
    rst $38
    ld a, [hl]
    rst $20
    and $5b
    ld e, e
    ld e, a
    ld sp, $282b
    ret nz

    db $e4
    rst $00
    ld sp, $6031
    or b
    ldh [$c0], a
    rst $38
    ret nz

    ld [$315e], a
    scf
    ld de, $2112
    cp [hl]
    ldh [$0a], a
    dec bc
    ret nz

    ldh [$7d], a
    pop hl
    ld l, c
    ld e, d
    jp z, $80ff

    add sp, $5f
    jp z, Jump_000_11e1

    ld [de], a
    jp nz, $f2e3

    cp [hl]
    pop hl
    ld h, b
    add b
    rst $38
    ld b, b
    jp hl


    ld e, [hl]
    ld sp, $463c
    db $fd
    ld b, a
    add [hl]
    pop hl
    ld b, a
    ld b, [hl]
    ld d, l
    ld d, h
    ld d, l
    ld d, h
    pop af
    inc a
    inc a
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld h, b
    ld sp, $423c
    rst $38
    ld l, l
    ld [hl], $46
    ld b, a
    ld b, a
    ld b, [hl]
    ld [hl], $6a
    rra
    ld l, d
    ld l, d
    jr nc, jr_059_66d1

    ld b, d
    cp a
    ldh [$ca], a
    rst $38
    add sp, -$19
    inc e
    pop bc
    pop hl
    rst $38
    ldh [$36], a
    ld [hl], $30
    pop bc
    ld [c], a
    cp a
    ld [c], a
    jp z, $d0ff

    add sp, -$19
    pop bc
    db $e3
    jp $82e1


    ldh [rBCPS], a
    rst $38
    pop hl
    ld b, d
    inc a
    or h
    jp z, $e8ff

    rst $20
    ld d, e
    pop bc
    add sp, $6a
    ld l, d
    cp a
    ld [c], a
    ld d, e

jr_059_66d1:
    inc h
    jp z, $e8ff

    rst $20
    ld d, d
    pop bc
    jp hl


    cp a
    db $e3
    ld d, d
    jp z, $80ff

    ld [$c160], a
    add sp, -$02
    jp nz, $ff80

    add b
    ld [$e204], a
    ld [hl], $42
    cp $c3
    ld c, a
    ld l, l
    ld l, l
    ld l, h
    ld l, h
    add b
    rst $38
    jp hl


    add sp, $3e
    ld c, b
    pop bc
    ld [hl-], a
    ld b, b
    ret nz

    inc a

Jump_059_66ff:
    cp a
    pop hl
    pop bc
    ldh [$6d], a
    ld l, l
    ret nz

    rst $18
    ld b, b
    jp z, $c880

    and b
    ret nz

    and d
    cp a
    ldh [$c1], a
    db $e4
    ld b, b
    rst $18
    ret nz

    xor d
    jp z, Jump_059_5c81

    and c
    ld e, l
    cp a
    pop hl
    pop bc
    db $e4
    ret nz

    rst $38
    add b
    adc c
    ld h, b
    call Call_059_5b82
    ld [bc], a
    cp [hl]
    ldh [$3c], a
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_059_6850

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
    dec l
    ld l, b
    ld e, l
    ld l, b
    db $e3
    ld l, d
    xor [hl]
    ld l, h
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

jr_059_6850:
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
    ldh [$0c], a
    rst $38
    add sp, $0b
    dec bc
    ld a, [bc]
    dec bc
    add e
    inc c
    ld c, h
    rst $38
    ldh [$eb], a
    ldh [$fc], a
    ldh [$f9], a
    pop hl
    ld hl, sp-$1e
    ld c, h
    ld [$e4fa], sp
    rst $38
    db $ed
    pop bc
    push hl
    ld l, h
    db $e4
    db $e4
    or b
    db $e4
    ret nc

    pop hl
    db $fd
    db $e4
    nop
    or l

jr_059_6888:
    db $e3
    ld a, [$c0e4]
    ldh a, [$82]
    db $e4
    adc h
    db $e3
    ld [hl], c
    pop hl
    ret nz

    jp hl


    adc c
    ld [c], a
    ld e, b
    add d
    rst $20
    add b
    ldh a, [$79]
    and $0b
    ld c, h
    jp nz, Jump_059_4be3

    jr nc, jr_059_6888

    ld [hl], b
    ld a, [hl]
    db $e3
    db $fc
    db $e3
    ld b, b
    ld hl, sp+$0b
    db $e4
    ld l, e
    ld c, e
    ld c, e
    or $c1
    ccf
    ld l, e
    ld l, e
    ld c, e
    dec bc
    ld c, e
    ld a, [bc]
    nop
    ld a, [c]
    ld b, b
    rst $20
    pop af
    inc l
    ret nc

    jp $e4f9


    ld c, e
    ld [c], a
    ld l, e
    dec bc
    dec hl
    ld c, e
    rst $18
    ld c, e
    ld c, e
    ld l, e
    ld l, e
    ld l, e
    add d
    ldh [$0b], a
    ld c, e
    ret nz

    nop
    ld a, [c]
    add hl, sp
    and $bd
    call z, $e14a
    pop bc
    ldh [rIE], a

Jump_059_68e0:
    ldh [rWX], a
    ld l, e
    nop
    ld b, d
    pop hl
    ld a, a
    ldh [rP1], a
    push af
    ld a, a
    pop de
    pop bc
    rst $20
    push bc
    jp nz, $e101

    nop
    di
    inc c
    ld a, a
    call nc, $c100
    dec hl
    ld c, e
    pop bc
    ld [c], a
    ld a, $e0
    dec sp
    ldh [$b8], a
    ldh [rP1], a
    ld b, $c1
    add d
    call nz, $c940
    xor [hl]
    call nz, $efc0
    cp a
    pop hl
    pop bc
    push hl
    ret nz

    db $e3
    nop
    ld d, a
    call nz, $a6d1
    db $76
    call nz, $a3a9
    ret nz

    rst $28
    jp nz, $82c0

    pop hl
    dec sp
    ld [c], a
    nop
    ret nz

    db $e3
    pop bc
    and $7f
    and [hl]
    add c
    bit 7, h
    call nz, $e5c0
    add c
    jp nz, $e33e

    sbc b
    add b
    db $e4
    ret nz

    and a
    inc [hl]
    xor c
    ld c, h
    ld c, h
    rst $00
    and $0b
    xor b
    inc l
    nop
    inc b
    ret nz

    ld a, [hl]
    ldh [rIE], a
    jp $82f0


    ld d, c
    rst $20
    jr c, @-$58

    ld a, c
    and l
    cp h
    or c
    ld bc, $7e4c
    db $e4
    pop bc
    db $e3
    ret nz

    add b
    jr nc, @-$5a

    db $fc
    ld [c], a
    ld b, $e5
    cp c
    db $e4
    ld [hl-], a
    ld a, l
    ld [c], a
    inc l
    rst $38
    ldh [rNR31], a
    add sp, $0c
    ld c, h
    ld a, [hl]
    ld [c], a
    ld a, l
    and d
    nop
    ld [hl], b
    add h
    ld b, $a5
    ret nz

    rst $00
    rst $28
    add [hl]
    ret nz

    ldh a, [$7e]
    db $e3
    db $fd
    and l
    ld c, l
    add [hl]
    nop
    cp [hl]
    push bc
    scf
    add [hl]
    inc a
    add h
    add c
    jp hl


    ld h, h
    add sp, -$2f
    add $4d
    add l
    dec c
    add [hl]
    nop
    ld a, a
    and a
    ret nz

    rst $28
    push de
    sub e
    pop de
    ld h, [hl]
    cp c
    db $ed
    ld a, $af
    push de
    adc a
    ld d, d
    xor [hl]
    inc b
    or $ab
    jp nz, Jump_000_2cc1

    db $fd
    and [hl]
    push de
    ld l, a
    bit 5, c
    or $b1
    ret nz

    db $eb
    nop
    push de
    ld [hl], c
    res 0, [hl]
    or $b1
    ld b, b
    call $8ed5
    ld [hl], $e9
    or $b0
    nop
    rlc b
    push de
    sub c
    or $ea
    or $b0
    ld a, [hl]
    or b
    push de
    adc d
    ld a, a
    ret


    or $b1
    ld sp, hl
    add b
    nop
    add b
    and l
    dec d
    ld [hl], d
    ld c, b
    and h
    ld [de], a
    and l
    or $ac
    ret nz

    ld [$5215], a
    res 1, b
    nop
    cp d
    xor a
    jr c, jr_059_6a3b

    dec d
    ld d, b
    add c
    jp z, $e8f2

    cpl
    jp hl


    cp [hl]
    xor [hl]
    dec d
    ld l, c
    nop
    sub c
    ld c, b
    add [hl]
    xor d
    ld sp, hl
    ld d, b
    dec d
    ld [hl], c
    sub d
    adc c
    dec [hl]
    add sp, $5d
    rst $08
    ld b, b
    db $d3
    nop
    call nz, $0205
    dec h
    cp [hl]
    ld l, b
    ld [hl-], a
    ld l, b
    ld b, b
    reti


    adc h
    ld b, a
    xor e
    add sp, $32
    ld l, e
    nop
    ret nz

    pop de
    ld c, d
    add $8c
    ld b, [hl]
    nop
    adc b
    inc a
    xor e
    add c
    xor c
    dec d
    ld l, [hl]
    ccf
    rst $20
    nop
    ld b, a
    adc c
    inc a
    xor d
    ld b, c
    ld l, c
    dec d
    ld l, a
    ld e, d
    rst $20
    ld b, $cb
    adc h

jr_059_6a3b:
    ld h, [hl]
    ld a, c
    ld c, c
    nop
    dec d
    ld l, [hl]
    rst $28
    ld h, a
    ld b, $2b
    jr c, jr_059_6a8f

    add hl, sp
    ld c, b
    dec d
    ld [hl], b
    adc h
    jp z, $b43c

    nop
    sub c
    adc c
    ld e, e
    or b
    call nc, $6408
    jp z, $c157

    ld b, d
    adc c
    ret c

    db $eb
    adc h
    rst $08
    nop
    ld a, c
    dec l
    ret nz

    rst $28
    ld [hl], a
    ei
    ld a, c
    jr nc, @+$01

    rst $38
    ld h, h
    ret c

    jp z, $eaff

    ld b, $00
    ld h, h
    call nc, $ffff
    ld h, h
    reti


    ret nz

    rst $38
    add b
    rst $20
    ld h, h
    rst $10
    rst $38
    rst $38
    ld b, b
    add sp, $00
    ret z

    add h
    ld sp, $ffa8
    rst $38
    db $e3
    adc c
    or $89
    ret nz

    rst $38

jr_059_6a8f:
    dec l
    ret nc

    or [hl]
    adc c
    nop
    rst $38
    rst $38
    ld [hl], e
    db $d3
    call $ffb1
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c
    rst $18
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
    db $ed
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

jr_059_6abc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, l
    ld d, e
    nop
    nop
    nop
    rst $38
    ld e, e
    ld h, b
    ld sp, $2931
    daa
    db $10
    jr nz, @+$80

    rst $38
    db $e4
    nop
    ld sp, $5a61
    ld e, e
    nop
    rst $38
    rst $38
    call c, $e6e7
    pop bc
    push hl
    jr z, jr_059_6b1f

    jr z, jr_059_6abc

    pop hl
    rrca
    ld sp, $61e3
    ld e, e
    ret nz

    rst $38
    jp hl


    add sp, -$7e
    db $e4
    ld a, [bc]
    dec bc
    ld de, $123f
    ld hl, $0a28
    dec bc
    ld sp, $ffc0
    ret nz

    db $ec
    call c, $e143
    ret z

    pop hl

jr_059_6b1f:
    ld sp, $1131
    ld a, [$31e2]
    ld e, a
    add sp, -$40
    rst $38
    jp hl


    add sp, $04
    ldh [rNR23], a
    adc d
    ldh [$3c], a
    ld b, [hl]
    ld b, a
    ld a, [hl]
    cp l
    pop hl
    ld b, a
    ld b, [hl]
    scf
    ld sp, $5a5e
    jp z, $deff

    add sp, -$19
    dec hl
    db $10
    jr nz, jr_059_6b5f

    pop bc
    ldh [rSCY], a
    ld h, a
    rst $38
    ld [hl], $46
    ld b, a
    ld b, a
    ld b, [hl]
    ld [hl], $68
    add hl, sp
    add sp, $7f
    ldh [$ca], a
    rst $38
    ret nz

    jp hl


    rrca
    pop bc
    ld [c], a
    ld h, a
    ld l, d
    ld l, d

jr_059_6b5f:
    rst $38
    ld [hl], $36
    ld l, b
    ld l, b
    ld l, b
    ld c, b
    ld c, c
    ld sp, $5e11
    jp z, $40ff

    add sp, -$3f
    and $30
    rst $38
    db $e3
    ld a, a
    ldh [$ca], a
    rst $38
    jr nz, @-$7e

    ret


    ld b, d
    ld [c], a
    pop bc

Jump_059_6b7d:
    pop hl
    add d
    ldh [$7f], a
    ldh [rHDMA3], a
    ret nz

    rst $38
    ret nz

    db $ed
    db $ec
    ld bc, $82e0
    ldh [rOCPS], a
    ld l, d
    cp a
    ld [c], a
    ld d, d
    and h
    and h
    ldh [$ca], a
    rst $38
    ret nz

    db $ec
    ret nz

    ret nz

    pop bc
    ldh [$3e], a
    db $e3
    ld d, e
    add b
    add b
    sub b
    jp z, $c0ff

    db $ed
    ld a, [hl]
    pop hl
    ld a, $e4
    ld d, d
    ret nz

    rst $38
    nop
    jp z, Jump_000_2714

    inc d
    inc d
    add hl, hl
    ld a, [hl]
    db $e3
    ld a, $e3
    add e
    ret nz

    rst $38
    nop
    jp z, Jump_000_24f1

    rst $38
    ldh [$3d], a
    ret nz

    ld a, [hl]
    ld [c], a
    ld h, a
    ld h, l
    ld h, l
    ld c, b
    ld de, $c076
    rst $38
    ret nz

    xor h
    add h
    add b
    ld c, $7a
    jp $c03d


    add c
    ldh [$f0], a
    ret nz

    rst $38
    ret nz

    xor $88
    add b
    inc a
    and b
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    nop
    add c
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_059_6bf2:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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

Jump_059_6cc4:
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
    jr nc, jr_059_6d0d

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

Jump_059_6ce2:
    ld [$1a6c], a
    ld l, l
    adc c
    ld l, a
    ld c, e
    ld [hl], c
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

jr_059_6d0d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    ld a, [hl+]
    ld c, d
    ld c, d
    ld c, d
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld l, d
    rst $38
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    dec bc
    sbc $f4
    ldh [$0a], a
    inc c
    ld c, h
    inc c
    rst $38
    add sp, $4c
    ld c, h
    and h
    ldh a, [$eb]
    db $f4
    db $eb
    ld c, d
    cp a
    ldh [$c1], a
    db $e3
    dec bc
    rst $38
    ldh [rWX], a
    add c
    ld c, e
    ret nz

    pop hl
    adc $e0
    ret


    ldh [$fd], a
    ld [c], a
    ld hl, sp-$1d
    or b
    db $e3
    inc l
    db $fc
    ret nz

    ld a, [c]
    cp a
    ldh [$0a], a
    ld l, d
    ld l, e
    dec bc
    ld l, e
    dec hl
    pop hl
    dec hl
    cp a
    ld [c], a
    ret nz

    db $e4
    db $fd
    push hl
    or l
    db $e3
    ld c, h
    inc c
    inc l
    or d
    jp Jump_000_2ce0


    ld a, [$c0e2]
    xor $4a
    ld a, [hl+]
    ld b, e
    ldh [$0b], a
    adc e
    dec bc
    dec hl
    cp a
    ld [c], a
    dec hl
    ret nz

    jp hl


    ld b, a
    db $e3
    ld b, b
    pop hl
    inc l
    xor b
    ret nz

jr_059_6d88:
    ld [c], a
    ld a, [$c0e2]
    rst $28
    ld a, [bc]
    ld b, [hl]
    ldh [rOCPD], a
    ret nz

    ldh [rOCPD], a
    ld bc, $c04b
    db $e4
    inc c
    db $e3
    ld b, a
    db $e4
    ld b, b
    ld [c], a
    add a
    ld [c], a
    pop bc
    push hl
    jr c, jr_059_6d88

    ld hl, sp+$31
    db $e3
    pop bc
    pop bc
    ld b, d
    ldh [$0b], a
    ld c, e
    dec hl
    dec hl
    ld c, e
    nop
    pop bc
    ret nz

    ret nz

    call nz, $e382
    ld b, b
    add sp, -$3f
    db $e3
    cp $d0
    ret nz

    db $e4
    call nz, Call_000_00e0
    cp a
    pop hl
    ret nz

    db $e3
    add c
    jp $c67b


    ld a, a
    jp c, $c141

    add $c0
    add h
    ldh [rP1], a
    ld a, [hl]
    ldh [$38], a
    ldh [rLCDC], a
    db $e3
    pop bc
    db $e4
    ld a, a
    jp z, $f780

    ret nz

    db $e3
    ld b, b
    pop bc
    rst $00
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ret nz

    srl a
    add sp, $40
    or $4a
    dec hl
    dec b
    dec bc
    inc b
    db $e3
    ld l, e
    pop bc
    pop hl
    cp a
    ldh [$c0], a
    call nz, $a1c8
    dec [hl]
    call nz, $c070
    cp b
    ret nz

    pop hl
    call nz, $c0c1
    and c
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    cp a
    pop hl
    ld b, b
    rst $00
    jp $e2fc


    ld [hl], l

jr_059_6e12:
    add $6e
    and l
    ld a, h
    res 0, b
    db $e3
    dec bc

jr_059_6e1a:
    ld a, a
    ldh [rNR32], a
    rst $38
    and b
    pop bc
    db $e3
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld c, l
    and l
    add hl, sp
    and h
    ccf
    xor d
    inc b
    cp l
    xor l
    ld bc, $2aa1
    add l
    and d
    inc b
    ldh [$c0], a
    db $e3
    add b
    pop bc
    ld b, $c4
    jr nc, jr_059_6e76

    and h
    ld a, a
    add sp, $3b
    xor l
    pop bc
    pop hl
    ld a, [hl+]
    ld a, [hl+]
    ld b, c
    ldh [$c1], a
    db $e3
    add b
    ret nz

    ld [c], a
    res 0, d
    ret nz

    and l
    add b
    db $ed
    db $fd
    db $e3
    ld [hl], l
    and [hl]
    pop bc
    ld [c], a
    ld a, [hl+]
    ld bc, $042a
    db $e3
    ret nz

    push hl
    dec b
    and l
    ld a, l
    jp $ea80


    and $aa
    ld e, c
    add b
    nop
    ret


    db $e4
    adc b
    ret nz

    ret nz

    rst $20
    add [hl]
    and e
    ld b, c
    and h
    ld a, a
    and a

jr_059_6e76:
    ld a, e
    adc h
    ld [hl], c
    add e
    nop
    sub l
    rst $20
    adc l
    and $48
    ret z

    db $fd
    or d
    nop
    and [hl]
    ld [hl], c
    add d
    call nc, $c678
    ld [hl], h
    nop
    jr c, jr_059_6e12

    ld [hl], c
    add e
    call nc, $c67b
    ld [hl], d
    jr c, jr_059_6e1a

    ld [hl-], a
    add e
    call nc, $c67b
    ld [hl], d
    nop
    pop bc
    and $c0
    jp hl


    call nc, $c674
    ld [hl], c
    cp c
    ld l, e
    call nc, $c65a
    ld l, h
    ld a, [hl-]
    ldh a, [rP1]
    call nc, $cf59
    ld d, d
    ld b, b
    db $f4
    call nc, $8f51
    ld b, [hl]
    ret nz

    adc $22
    ld c, e
    call nc, SerialTransferCompleteInterrupt
    cp d
    db $e3
    add [hl]
    ld d, d
    cp [hl]
    db $eb
    call nc, $8853
    ld b, c
    add [hl]
    ld d, l
    ld a, a
    jp hl


    call nc, Call_000_0055
    adc [hl]
    ld b, l
    pop bc
    ld hl, sp-$2c
    ld e, d
    ld a, d
    and $41
    rst $30
    call nc, $c55f
    ei
    call nc, $005a
    add b
    rst $38
    call nc, $c05b
    rst $38
    call nc, Call_000_1b59
    ldh a, [$b6]
    rrca
    call nc, Call_000_1658
    pop de
    nop
    or [hl]
    dec c
    call nc, $5559
    rst $08
    ldh a, [$92]
    call nc, Call_059_4056
    ld a, [c]
    or [hl]
    dec c
    call nc, Call_000_005c
    ld d, l
    xor [hl]
    ld l, e
    pop af
    call nc, Call_000_3f54
    ld a, [c]
    ld [hl], $0e
    rlca
    and [hl]
    cp d
    db $fc
    or [hl]
    dec e
    nop
    dec h
    or b
    ld bc, $b625
    rra
    ld c, $d8
    ld [c], a
    cp a
    sbc c
    ld [hl], h
    ld [c], a
    cp a
    ld a, [hl]
    rst $38
    nop
    ld [c], a
    cp a
    add b
    ld hl, sp-$79
    inc h
    ld [c], a
    cp a
    ld b, b
    ei
    ld [c], a
    cp a
    ld c, $db
    ld [c], a
    cp a
    nop
    and $57
    db $76
    dec c
    rst $38
    rst $38
    inc c
    ld d, [hl]
    call $ffbf
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    nop
    reti


    or c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nz, $ff4f
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    db $ec
    rrca
    nop
    nop
    nop
    rst $38
    adc e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    adc b
    adc b
    adc b
    adc h
    rst $38
    ld h, b
    ld b, a
    ld b, [hl]
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld h, c
    dec h
    adc d
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $87
    cp a

jr_059_6fa6:
    ldh [$c1], a
    pop hl
    scf
    scf
    ld [hl], $68
    rst $38
    ldh [$36], a
    ld c, c
    ret nz

    rst $38
    ret nz

    db $ec
    cp $bf
    ldh [$88], a
    adc h
    ld e, a
    ld sp, $6939
    ld l, l
    sbc a
    ld l, h
    ld l, h
    ld l, l
    ld l, c
    add hl, sp
    ret nz

    rst $38
    ret nz

    db $ed
    add a
    rst $38
    adc e
    adc h
    ld e, e
    ld e, [hl]
    ld sp, $6952
    ld l, e
    sbc a
    ld l, l
    ld l, l
    ld l, e
    ld l, c
    ld d, d
    ret nz

    rst $38
    ret nz

    xor $87
    cp a
    ld e, e
    ld h, b
    ld sp, $423c
    jr nc, jr_059_6fa6

    ld [c], a
    ld d, e
    db $fc
    ret nz

    rst $38
    ret nz

    rst $28

jr_059_6fed:
    ld e, a
    ld sp, $4249
    ld l, l
    jr nc, jr_059_6fed

    jr nc, jr_059_7036

    rst $38
    add b
    db $f4
    ld e, [hl]
    ld sp, $6d39
    ld l, l
    cp b
    cp a
    ldh [$c0], a
    rst $18
    ld b, b
    di
    ld h, c
    ld sp, $c052
    ldh [$6d], a
    and l
    ccf
    ld b, b
    ret nz

    ld h, b
    ret nz

    rst $38
    ret nz

    pop af
    ld d, e
    add b
    ldh [rOBP0], a
    ccf
    ld c, c
    ld sp, $6031
    adc [hl]
    adc a
    ret nz

    rst $38
    ld b, b
    db $f4
    ld a, a
    add hl, sp
    ld sp, $5c5d
    adc [hl]
    adc c
    ld c, a
    cp a
    ldh [$fc], a
    jp z, $c0ff

    adc $4c
    ld l, l
    ld c, h
    ld c, c

jr_059_7036:
    ld e, [hl]
    ld e, e
    rst $00
    adc [hl]
    adc c
    adc c
    cp a
    pop hl
    jp z, $40ff

    call z, Call_000_315e
    rra
    inc a
    ld d, h
    inc a
    ld sp, $c15f
    pop hl
    cp a
    pop hl
    jp z, Jump_059_5eff

    ret nz

    xor d
    adc l
    adc [hl]
    ld e, a
    ld sp, $e0ff
    ld h, b
    pop bc
    db $e3
    ld hl, sp+$7e
    ldh [$ca], a
    rst $38
    ld b, b
    xor c
    adc l
    adc c
    adc c
    adc [hl]
    ld e, h
    add c
    ld e, l
    inc b
    pop hl
    rst $38
    push hl
    jp z, $c0ff

    adc b
    pop bc
    ldh [$bf], a
    ldh [$5b], a
    nop
    inc b
    ld [c], a
    ret nz

    rst $38
    rst $28
    xor $c1
    ld [c], a
    ld a, [hl]
    ldh [$c1], a
    add sp, -$40
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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

Call_059_714e:
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
    jr nc, jr_059_71aa

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
    add a
    ld [hl], c
    or a
    ld [hl], c
    add hl, hl
    ld [hl], h
    inc bc
    db $76
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

jr_059_71aa:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    cp l
    inc c
    rst $38
    ldh [$4c], a
    ld c, h
    inc c
    dec bc
    rst $38
    push hl
    dec hl
    add a
    ld a, [bc]
    dec bc
    dec bc
    db $ec
    db $e4
    db $fd
    push hl
    pop hl
    ldh [$dc], a
    ld [c], a
    inc l
    or b
    rst $38
    ldh [$d1], a
    pop hl
    db $fc
    xor $c1
    pop hl
    ld l, e
    ld c, e
    rst $38
    ld [c], a
    dec bc
    ld bc, $fd0b
    ldh [$c0], a
    jp hl


    cp c
    ldh [$b2], a
    db $e4
    pop bc
    pop hl
    ret nz

    di
    pop bc
    pop hl
    inc bc
    dec bc
    ld l, e
    rst $38
    pop hl
    cp a
    ldh [$c0], a
    pop hl
    adc a
    pop hl
    ld a, [hl]
    db $e4
    db $fc
    db $e3
    ld b, b
    ld e, h
    pop hl
    add e
    ldh [$c1], a
    or $c0
    ldh [$80], a
    ldh [$bb], a
    ldh [$2b], a
    cp a
    ldh [$81], a
    ld a, [bc]
    ld l, l
    ld [c], a
    add d
    db $e4
    ld b, b
    add sp, -$01
    or $42
    ldh [rSTAT], a
    ld [c], a
    ld l, e
    rlca
    ld l, e
    dec hl
    ld l, e
    ld a, a
    pop hl
    inc l

jr_059_7222:
    db $e3
    ld a, [$f1e7]
    call nz, $e504
    ret z

    ei
    call nz, $c7f4
    ld [bc], a
    ld [c], a
    dec hl
    ld a, d
    pop hl
    ld a, c
    pop hl
    dec bc
    ld c, e
    nop
    rst $20
    ret z

    or a
    db $e4
    jr c, jr_059_7222

    call nz, $bee0
    pop de
    add e
    ret nz

    rst $00
    ret nz

    ld a, l
    pop bc
    add b
    cp a
    pop hl
    ret nz

    ldh [$09], a
    db $e3
    ret nz

    push bc
    ccf
    jp hl


    ld a, c
    jp nz, $f000

    dec hl
    nop
    add c
    pop hl
    ld sp, hl
    push hl
    ld [bc], a
    pop hl
    ld a, $c4
    add c
    pop bc
    dec [hl]
    call nz, $c454
    dec sp
    rst $08
    inc b
    add d
    pop bc
    ret nz

    and $6b
    ret nz

    pop hl
    ld c, h
    call nz, $e4fe
    ld [hl], l
    add $d5
    and d
    nop
    pop bc
    db $f4
    add b
    db $e4
    cp b
    and c
    nop
    db $e3
    ld b, $c5
    ret nz

    bit 7, c
    rst $08
    ld b, e
    jp nz, $c000

    db $e3
    add h
    pop hl
    ld [hl], a
    and b
    ld b, b
    pop bc
    adc $c5
    cp [hl]
    call nz, $c6c0
    ld a, c
    push bc
    nop
    ld [hl], a
    and [hl]
    ret


    db $e4
    push bc
    and c
    pop bc
    db $e4
    ld b, b
    ld [c], a
    ccf
    push hl
    ret z

    ret z

    ccf
    push hl
    db $10
    call nz, Call_059_4aae
    pop hl
    add l
    and b
    ld b, $e0
    ld l, h
    db $f4
    add b
    cp [hl]
    and b
    ld c, $c6
    ret nz

    add c
    call nz, $a678
    ret nz

    ld a, [c]
    jp Jump_059_42c0


    pop bc
    rst $00
    jp $2c0c


    nop
    ld a, [hl]
    and b
    ld c, e
    push hl
    ld b, c
    and [hl]
    ld a, a
    xor b
    ld b, c
    db $e4
    or l
    add [hl]
    ld c, c
    ret z

    add c
    pop hl
    inc bc
    inc c
    inc l
    ld a, a
    ldh [rLCDC], a
    rst $20
    ret nz

    add sp, $78
    and [hl]
    ret nz

    db $ec
    set 0, e
    nop
    ld [$9fc3], sp
    and d
    ret nz

    pop hl
    ld h, h
    adc b
    ld a, c
    pop de
    ld [hl], $88
    add hl, de
    rst $20
    ld de, $00e6
    rst $00
    add [hl]
    ld a, c
    sub $f6
    ld l, e
    push de
    ld [hl], d
    db $ed
    pop af
    cp c
    add l
    cp d
    ld l, h
    push de
    ld [hl], d
    nop
    db $ed
    db $f4
    db $ed
    ld h, d
    or [hl]
    ld h, e
    ld [hl], h
    ld h, e
    push de
    ld [hl], l
    db $ed
    di
    ld b, b
    jp hl


    cp $c6
    nop
    push de
    ld [hl], d
    db $ed
    pop af
    cp l
    ld h, a
    push af
    ld c, d
    push de
    ld [hl], d
    ld [bc], a
    ldh a, [$e8]
    push hl
    cp a
    adc $00
    push de
    ld [hl], c
    rst $28
    rst $08
    ld a, d
    rst $28
    and [hl]
    ld h, a
    push de
    ld [hl], b
    call nz, $c44d
    add l
    ccf
    call z, $d500
    ld [hl], l
    call nz, $ee51
    and l
    cp a
    xor e
    push de
    db $76
    call nz, Call_059_714e
    add [hl]
    cp b
    inc l
    nop
    push de
    ld [hl], d
    call nz, Call_059_504f
    rst $20
    ld a, b
    dec hl
    push de
    ld [hl], d
    call nz, Call_059_7851
    ld b, [hl]
    add hl, sp
    add hl, hl
    nop
    push de
    ld [hl], l
    call nz, Call_000_3f50
    cp d
    push de
    ld l, h
    rst $28
    jp nc, $8c33

    dec a
    ret


    push de
    ld l, l
    nop
    call nz, $b850
    ld h, a
    ld b, b
    pop af
    push de
    ld l, h
    call nz, $fc50
    rlca
    or [hl]
    nop
    db $fd
    call z, Call_059_5500
    ld c, [hl]
    call nz, $c154
    inc hl
    nop
    adc h
    add b
    jp nc, $4fc4

    db $76
    and a
    jp nz, Jump_000_008a

    ld d, l
    ld d, e
    rst $28
    rst $08
    ld a, [hl-]
    rlca
    jp nz, $808d

    db $d3
    call nz, Call_000_3a4e
    dec bc
    add b
    call c, Call_059_6500
    sbc b
    ld [bc], a
    adc h
    ld d, l
    ld d, l
    ld a, [hl-]
    rla
    ld [bc], a
    adc a
    di
    ld a, [c]
    ld a, [hl-]
    jr @+$01

    rst $38
    nop
    ld h, l
    sbc d
    rst $38
    rst $38
    sbc l
    dec b
    ld a, [hl-]
    inc de
    rst $38
    rst $38
    ld h, l
    sbc c
    rst $38
    rst $38
    ld e, e
    and h
    nop
    ld a, [hl-]
    rla
    rst $38
    rst $38
    ld b, b
    add sp, $3a
    db $10
    rst $38
    rst $38
    push hl
    cp a
    rst $38
    rst $38
    push hl
    or a
    nop
    rst $38
    rst $38
    ld [hl], e
    call $bfcd
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
    ld e, b
    ld [hl], e
    nop
    nop
    nop
    db $ed
    jr nz, @+$01

    ld [c], a
    rrca
    ld sp, $e5ff
    ld h, b
    ld e, d
    ld e, e
    db $e3
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c1
    push hl
    inc a
    ld d, h
    ld d, h
    ld a, a
    ld d, l
    ld d, l
    dec sp
    ld b, a
    ld sp, $5f31
    ret nz

    rst $38
    call c, $edc0
    add d
    ldh [rOBP1], a
    ld b, d
    jr nc, @+$01

    pop hl
    ld [hl], $3c
    db $d3
    ld sp, $c05e
    rst $38
    add b
    db $ec
    nop
    ld b, e
    ldh [$39], a
    jr nc, @+$01

    ld l, d
    ld l, b
    ld l, b
    ld l, d
    jr nc, jr_059_7499

    ld b, d
    ld c, c
    rst $20
    ld sp, $5a5f
    jp z, $c0ff

    db $ed
    ld c, c
    ld c, b
    ld l, d
    cpl
    ld l, l
    ld l, h
    ld l, h
    ld l, l
    cp a
    ldh [$39], a
    ld a, a
    ldh [$ca], a
    rst $38
    ld c, [hl]
    add b
    db $ed
    add hl, sp
    ld l, d
    ld l, l
    ld b, b
    pop hl
    cp a
    ldh [rOBP0], a
    ld a, a
    ldh [$7c], a
    jp z, $40ff

    db $ed
    ld d, d
    ld l, l
    jr nc, jr_059_7504

jr_059_7498:
    ld l, h

jr_059_7499:
    cp a
    db $e3
    or b
    ld a, a
    ldh [$ca], a
    rst $38
    add b
    jp z, $c043

    ld d, d
    ld l, l
    ld b, c
    pop hl
    ld l, l
    rst $00
    jr nc, jr_059_7517

    ld l, c
    ret nz

    rst $38
    ld b, b
    call $c143
    ld b, d
    ld l, l
    rlca
    ld l, l
    ld l, b
    ld l, b
    ret nz

    ld [c], a
    cp a
    pop bc
    jp z, Jump_000_00ff

    ret z

    ld b, e
    jp nz, Jump_059_6b7d

    add a
    ldh [$30], a
    ld l, c
    ld l, e
    ld l, e
    ld l, e
    ccf
    jp nz, $ca58

    rst $38
    add sp, -$19
    add [hl]
    and c
    add hl, sp
    jr nc, jr_059_7498

    db $e3
    ld b, d
    cp a
    and e
    sbc b
    ld b, b
    rst $18
    jp hl


    add sp, $47
    and b
    xor h
    ld d, d
    add [hl]
    ret nz

    ld b, b
    ldh [rSCY], a
    ld h, l
    inc a
    ld a, [hl-]
    and c
    ld h, c
    ret nz

    cp a
    ret nz

    db $ec
    add c
    add e
    ret nz

    pop hl
    dec a
    ld l, h
    pop bc
    ldh [$15], a
    inc d
    inc d
    dec d
    ccf
    and b
    jp z, $ceff

jr_059_7504:
    add b
    jp hl


    xor h
    xor c
    add h
    ld b, e
    and c
    add d
    pop hl
    rla
    inc h
    di
    inc h
    rla
    nop
    rst $38
    ld b, b
    db $ec
    add c

jr_059_7517:
    add b
    add b
    ld l, a
    rst $30
    ld l, [hl]
    ld d, l
    ld d, h
    ld b, e
    ldh [$15], a
    ld d, $20
    jr nz, jr_059_7596

    ld d, $7f
    ldh [$ca], a
    rst $38
    nop
    add sp, -$54
    xor c
    add b
    rst $38
    ldh [$7d], a
    and b
    ccf
    add c
    rla
    jr z, jr_059_7558

    jr nz, jr_059_7562

    ld a, a
    ldh [rP1], a
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

jr_059_7558:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_059_7562:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_059_756b:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_7596:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_059_7662

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
    ccf
    db $76
    ld l, a
    db $76
    ld e, $79
    db $10
    ld a, e
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

jr_059_7662:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $38
    ld c, h
    ld c, h
    ld l, h
    ld l, h
    dec bc
    dec hl
    ld l, e
    ld c, e
    rst $20
    ld c, e
    ld c, e
    dec bc
    db $fd
    ldh [rIE], a
    pop hl
    ld a, [bc]
    dec bc
    inc c
    scf
    ld c, h
    inc c
    ld c, h
    rst $38
    ldh [$0c], a
    inc c
    rst $30
    ldh [$fd], a
    pop hl
    inc l
    cp $f9
    ret nz

    ldh [$0c], a
    ld l, e
    ret z

    ld [c], a
    dec hl
    cp [hl]
    ldh [$c2], a
    pop hl
    jp Jump_000_0b0b


    rst $20
    db $e4
    cp c
    pop hl
    or a
    cp $80
    ldh [$0b], a
    ld l, e
    ld bc, $c02b
    rst $20
    ld a, l
    pop hl
    adc h
    ld [c], a
    add b
    ld [c], a
    or a
    push hl
    db $fd
    db $e4
    db $ec
    and $2e
    ld l, h
    rst $20
    ld l, h
    ld l, h
    inc c
    add l
    ldh [$2b], a

jr_059_76c3:
    add l
    ldh [$fb], a
    ldh [$c0], a
    rst $38
    db $e4
    call nz, Call_059_7ee4
    ld [c], a
    ret nz

    rst $20
    ld a, [c]
    db $e3
    ret nz

    xor $2c
    inc l
    ld de, $452b
    ldh [rTIMA], a
    ldh [$c0], a
    and $0a
    jr z, jr_059_76c3

    db $fd
    jp nz, $e7b7

    db $f4
    or $c1
    push af
    call nz, $f92c
    jp hl


    inc l
    ld l, h
    inc l
    ld c, h
    ld [bc], a
    pop bc
    jp nz, $802b

    pop hl
    ld a, h
    db $e3
    rst $20
    jp $c5df


    add d
    push hl
    ld b, b
    di
    dec b
    inc l
    rst $38
    ldh [$2b], a
    jp $c0e1


    ldh [rSB], a
    db $e4
    ret nz

    jp $c79e


    inc b
    or c
    ld [$d072], a
    inc l
    cp a
    ret nz

    rst $38
    db $e4
    ld a, $c3
    ld c, b
    jp $ca47


    nop
    inc sp
    call nz, $f4c0
    ld b, h
    ret nz

    cp a
    rst $20
    ld [bc], a
    db $e4
    ei
    db $e3
    add hl, bc
    db $e3
    ret nz

    push bc
    inc b
    db $ed
    rst $00
    ret nz

    db $ec
    ld l, e
    ld a, l
    ret nz

    ccf
    pop hl
    cp l
    and c
    sub b
    add sp, -$42
    jp hl


    nop
    di
    and e
    or c
    xor [hl]
    sub a
    and b
    ret nz

    pop hl
    ld bc, $bae3
    ret nz

    jp nz, $9ea2

    jp nz, Jump_000_3b20

    call nz, $e3dc
    ld [hl], e
    push bc
    ld a, h
    call z, $c2ab
    ld l, h
    add e
    and c
    jp nz, Jump_000_04c2

    ret nz

    push hl
    add b
    call nz, $b72c
    and $01
    add sp, $30
    xor h
    call z, Call_059_42a4
    ret nz

    ld de, $ff6b
    add b
    cp $81
    rlca
    and b
    inc l
    jp nz, Jump_000_06c9

    call nz, $e42e
    ld b, b
    ld a, c
    xor l
    rst $00
    add b
    call nz, Call_059_7ea2
    and b
    cp h
    add b
    or $81
    inc l
    adc $86
    nop
    add b
    pop hl
    cp c
    add e
    ld b, h
    and $79
    and h
    ld a, [bc]
    pop bc
    add b
    rst $20
    ld a, a
    and c
    pop bc
    ld [c], a
    add e
    dec bc
    ld l, e
    or l
    add c
    adc e
    add e
    adc c
    bit 7, c
    xor h
    ret nz

    jp hl


    ld a, [bc]
    nop
    ld bc, $bda1
    add e
    db $fc
    add e
    ld h, b
    and b
    adc c
    adc $79
    xor h
    add c
    and $a8
    add [hl]
    nop
    ld hl, sp-$19
    rlca
    add l
    adc c
    ret


    ld a, c
    xor l
    ret nz

    add sp, -$2b
    ld l, d
    ret


    ld l, h
    adc d
    xor [hl]
    nop
    ld a, c
    or e
    ld e, $86
    ld [de], a
    adc l
    adc c
    rst $00
    ld a, c
    xor h
    pop bc
    pop bc
    ld a, c
    add e
    ld e, $8b
    nop
    ld [de], a
    adc h
    adc c
    rst $00
    ld a, c
    xor h
    ret nz

    add sp, -$76
    db $eb
    ld [de], a
    adc a
    ld [hl], d
    call nz, $ab79
    nop
    ld b, b
    rst $00
    ld e, $8a
    ld [de], a
    adc l
    add l
    push hl
    ld a, c
    xor [hl]
    ret nz

    ld [$8a1e], a
    ld [de], a
    adc h
    db $10
    ld a, a
    ld b, a
    ld a, c
    xor d
    ld [hl], a
    ld d, c
    ld [de], a
    sub d
    ld c, h
    ld d, e
    ld h, d
    ld a, c
    xor [hl]
    ld b, b
    add sp, $00
    ld e, $88
    ld [de], a
    adc [hl]
    ld a, h
    add a
    add l
    add sp, -$40
    and h
    rst $38
    xor b
    ld e, $89
    ld [de], a
    adc d
    nop
    ld a, h
    add d
    cp $8d
    ld h, [hl]
    add e
    ld h, l
    ld l, h
    ld [de], a
    ret


    adc c
    xor e
    add hl, bc
    add a
    cp c
    ld b, [hl]
    nop
    ret nz

    jp hl


    ld e, $89
    ld [de], a
    adc a
    ld b, h
    adc l
    ld b, b
    push hl
    sbc [hl]
    ld c, [hl]
    ld e, $85
    ld [de], a
    adc h
    nop
    ld a, a
    db $eb
    ld a, c
    ld d, c
    ld e, $89
    ld [de], a
    adc [hl]

Call_059_7851:
    ld b, a
    jp nc, $b000

    rst $08
    inc h
    jp nc, Jump_000_006f

    ret nz

    ld [hl], e
    ld sp, hl
    db $10
    ld e, $47
    ld a, [bc]
    adc e
    adc h
    ld b, h
    ld a, c
    ld c, [hl]
    ld b, c
    and a
    ld e, $51
    nop
    ld b, $2c
    nop
    or d
    ld [bc], a
    xor b
    inc c
    call z, Call_000_2a94
    ld b, d
    ld [bc], a
    nop
    or b
    nop
    pop de
    nop
    ld a, $86
    sub l
    and [hl]
    and [hl]
    adc d
    ld a, c
    ld c, b
    add d
    add a

jr_059_7886:
    inc c
    ret nc

    rst $10
    jr z, jr_059_7886

    add [hl]
    nop
    ld h, a
    pop de
    ld e, $53
    and [hl]
    rst $10
    xor d
    ld b, $02
    adc c
    and l
    ld hl, sp+$3b
    ld d, c
    ret nz

    xor $00
    ld sp, hl
    ld hl, sp-$3c
    rrca
    pop bc
    rrca
    cp a
    db $fc
    call nz, $c60d
    or d
    ld a, l
    db $f4
    call nz, $0011
    ld a, a
    rst $38
    and [hl]
    reti


    add e
    jp nc, $f880

    or d
    adc [hl]
    add b
    rst $38
    ld b, b
    pop af
    inc sp
    ld l, c
    nop
    add b
    rst $38
    and $6f
    ld b, l
    ld b, $d1
    ld h, $ff
    rst $38
    and h
    daa
    ret nz

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
    ld e, l
    ld d, e
    nop
    nop
    nop
    rst $38
    jr nz, @+$22

    jr z, @+$19

    ld sp, $3b3e
    ld d, h
    cp a
    ld d, h
    dec sp
    ld a, $31
    ld e, [hl]
    ld e, e
    rst $38
    pop hl
    ld e, d
    db $e3
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    ldh [$15], a
    ld c, c
    ld c, h
    cp l
    ld l, b
    rst $38
    ldh [$4c], a
    ld c, c
    ld sp, $c25f

Jump_059_7946:
    pop hl
    ld e, e
    ld a, h
    ret nz

    rst $38
    ret nz

    ld [$3117], a
    add hl, sp
    ld l, d
    ld l, h
    rst $38
    ldh [$e3], a
    ld l, l
    add hl, sp
    ld a, a
    db $e4
    ret nz

    rst $38
    add b
    jp hl


    jr z, jr_059_7974

    ld sp, $53ff
    ld l, l
    ld l, l
    jr nc, @+$32

    jr nc, @+$6f

    ld d, d
    ld [hl], e
    ld sp, $c061
    rst $38
    ret nz

    rst $28
    rla
    ld sp, $c152

jr_059_7974:
    pop hl
    sub a
    jr nc, jr_059_79e5

    ld d, e
    ret nz

    db $e4
    ld e, d
    jp z, Jump_000_00ff

    jp hl


    ld d, $73
    dec d
    add hl, sp
    pop bc
    ld [c], a
    add b
    ldh [$31], a
    ld e, l
    ld e, h
    add b
    rst $38
    sbc $c0
    adc $17
    ld c, c
    ld c, h
    ld l, l
    rst $38
    ldh [rOCPS], a
    ld b, d
    add $7d
    ret nz

    ld sp, $ff62
    ldh [$ca], a
    rst $38
    add b
    ret


    jr nz, jr_059_79d0

    rst $30
    ld sp, $3d3e
    pop bc
    ldh [$67], a
    ld l, d
    ld l, l
    ld b, d
    db $e3
    inc a
    ld sp, $e1ff
    jp z, $c0ff

    db $ec
    ld sp, $4c49
    cp $c1
    pop hl
    ld l, l
    ld l, l
    ld b, d
    ld c, c
    ld sp, $2931
    pop de
    inc d
    jp z, $c0ff

    rst $28
    pop bc
    ld [c], a
    jr nc, @+$3e

    ret nz

jr_059_79d0:
    ld sp, $b92b
    db $10
    jp z, $e8ff

    rst $20
    inc h
    inc h
    inc h
    add b
    ldh [$39], a
    sub h
    add d
    pop hl
    cp h
    pop bc
    ld d, e
    ret nz

jr_059_79e5:
    ldh [$2c], a
    jp z, $e8ff

    rst $20
    inc d
    cp a
    inc d
    inc d
    add hl, hl
    ld sp, $5331
    pop bc
    ld [c], a
    jr nc, jr_059_79fa

    ld l, l
    ld l, d
    ld a, h

jr_059_79fa:
    ret nz

    ret nz

    rst $38
    ld [$cfe9], a
    jp nz, $a0fe

    add c
    db $e3
    ccf
    ld l, d
    add e
    and a
    ld sp, $2817
    jp z, $e8ff

    rst $20
    ldh a, [$50]
    pop bc
    ld b, b
    ldh [rDIV], a
    pop hl
    dec a
    pop bc
    db $76
    and c
    ld sp, $9115
    ld d, $ca
    rst $38
    add sp, -$19
    adc l
    add c
    ld e, [hl]
    add b
    ret nz

    add e
    pop hl
    ld l, d
    ld a, a
    ld [hl], $72
    add b
    and c
    ld sp, $1731
    jp z, $feff

    ret nz

    jp hl


    ld e, d
    ld e, e
    ld e, a
    ld sp, $3e31
    ld a, [hl-]
    cp a
    ld d, h
    ld d, l
    ld d, l
    ld l, [hl]
    ld l, a
    add b
    ret nz

    pop hl
    dec d
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
    jr nc, jr_059_7b6f

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
    ld c, h
    ld a, e
    ld a, h
    ld a, e
    ld c, e
    ld a, l
    add hl, hl
    ld a, a
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
    ld e, d
    ld a, l
    cp a
    ld a, [hl]
    ld [hl], h
    db $10
    ld [hl+], a
    dec sp
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_059_7b6f:
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
    ld l, e
    dec bc
    dec bc
    dec bc
    ld c, e
    dec hl
    ccf
    dec bc
    dec hl
    dec hl
    ld c, e
    dec bc
    ld a, [bc]
    push af
    ldh [$f2], a
    ldh [$f5], a
    inc c
    rst $38
    db $ec
    inc l
    db $fd
    ldh [$2c], a
    ld c, h
    inc c
    ld c, h
    ei
    ld c, h
    ld c, h
    and $ed
    inc c
    inc c
    dec bc
    ld l, e
    ld l, e
    dec b
    dec hl
    push bc
    ldh [rWX], a
    cp [hl]
    pop hl
    jp nz, $bce2

    ldh [$c0], a
    ld a, [c]
    push bc
    rst $28
    inc b
    ret nz

jr_059_7bb6:
    db $e3
    jp nz, Jump_000_2be0

    add $e0
    cp [hl]
    ldh [$bf], a
    and $80
    pop af
    pop bc
    db $f4
    ld [hl], b
    ret nz

    db $e3
    pop bc
    ld [c], a
    cp a
    pop hl
    ccf
    ldh [$0a], a
    dec bc
    ld a, [bc]
    ld b, b
    db $ed
    nop
    ld c, c
    ldh [rDMA], a
    ldh a, [$80]
    rst $20
    pop bc
    db $e4
    ld a, [hl]
    and $94
    push af
    ld [$00ce], a
    pop hl
    nop
    rst $00
    ret nz

    add d
    db $e4
    inc a
    ldh [$fc], a
    jp $cedc


    jp c, $bae0

    ret nz

    db $fc
    pop hl
    jr nc, jr_059_7bb6

    rst $08
    ret nz

    pop hl
    ld b, c
    ld [c], a
    ld a, c
    pop bc
    ld c, e
    dec bc
    ld sp, hl
    pop hl
    call c, Call_000_00ef
    ret nz

    ld sp, hl
    adc b
    pop bc
    pop bc
    db $e3
    cp d
    jp $cfc0


    ret nz

    db $e4
    add b
    db $d3
    ccf
    db $e3
    add b
    rlca
    jp $a0f7


    ld a, a
    pop hl
    ld d, h
    adc $ee
    and e
    db $fd
    and d
    db $e4
    xor [hl]
    inc l
    db $10
    ld a, $e3
    add e
    db $e3
    cp b
    and b
    ret nz

    ldh a, [$2c]
    ld a, [hl]
    ret nz

    jp $fda0


    or e
    ld bc, $c92c
    and b
    cp a
    ld [c], a
    dec a
    jp nz, $a1f6

    add b
    rst $28
    adc b
    xor a
    or c
    and a
    ld de, $7e4c
    ld [c], a
    ccf

Call_059_7c49:
    push bc
    inc [hl]
    and c
    ld a, [bc]
    db $d3
    or [hl]
    rst $00
    ld [$a721], a
    nop
    inc a
    pop bc
    cp $a3
    db $f4
    add c
    nop
    ldh a, [$f7]
    cp h
    ld a, h
    pop bc
    add c
    and $c0
    ld sp, hl
    nop
    cp $d4
    adc d
    add c
    add d
    add b
    rst $38
    and $40
    ld hl, sp-$47
    sub c
    add b
    ld [c], a
    ld a, h
    call nz, Call_059_4000
    ld sp, hl
    ld a, $81
    ld bc, $1df1
    add e
    sbc e
    add e
    di
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, h
    di
    ld [hl], a
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld c, h
    or e
    ld a, h
    sub [hl]
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    daa
    rst $18
    ret nz

    rst $38
    cp b
    ld d, a
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add h
    cp c
    ld l, h
    ret nz

    rst $38
    add d
    rst $38
    nop
    rst $38
    rst $38
    ld bc, $ffbf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    push de
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    or $f5
    inc l
    db $dd
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    ld hl, $3721
    ld b, [hl]
    ld b, [hl]
    ld b, a
    scf
    ld hl, $217f
    ld c, l
    ld c, h
    ld c, e
    ld c, e
    ld c, d
    ld c, e
    rst $38
    ld [c], a
    ld sp, hl
    nop
    rst $38

jr_059_7d61:
    rst $38
    rst $20
    and $21
    daa
    ld h, $5d
    ld e, l
    rla
    ld e, l
    ld h, $36
    cp [hl]
    ldh [$50], a
    jp nz, $bce2

    ldh [$ca], a
    rst $38
    ld a, [$e8c0]
    ld b, b
    pop bc
    ldh [$5d], a
    jr nz, @+$22

    ld h, $36
    pop de
    dec a
    cp a
    and $ca
    rst $38
    add b
    add sp, $41
    pop bc
    ld [c], a
    ld d, a
    ld d, l
    ld [hl], e
    ld d, l
    ld [hl+], a
    cp a
    ldh [$3f], a
    ldh [rWY], a

jr_059_7d96:
    ld c, e
    ld c, d
    jp z, Jump_000_06ff

    ld b, b
    add sp, $39
    jr c, jr_059_7d61

    pop hl
    ld a, e
    pop hl
    cp a
    pop hl
    nop
    rst $38
    nop
    db $ed
    scf

jr_059_7daa:
    ld hl, $5d29
    pop bc
    db $e3
    jr nz, @+$22

    cp a
    push hl
    jp z, $cfed

    sub b
    nop
    sub b
    sub b
    ld sp, hl
    ld [c], a
    ret nz

    ld a, [c]
    add hl, sp
    jr c, jr_059_7dec

    jr nz, jr_059_7e19

    db $fc
    jp Jump_000_3d56


    ldh [rVBK], a
    ret nz

    pop af
    rst $38
    ldh [$d6], a
    ret nz

    rst $30
    ld hl, $c029
    ld [c], a
    jr nz, jr_059_7d96

    ldh [$5b], a
    ld [hl+], a
    db $e3
    dec a
    ld c, [hl]
    ret nz

    ret nc

    ret nz

    db $e4
    ld b, b
    db $f4
    ld hl, $223d
    add hl, de
    jr nz, jr_059_7daa

    pop hl
    ret nz

    pop hl
    ld e, e

jr_059_7dec:
    add hl, hl
    ld a, a
    pop hl
    ld a, [bc]
    xor $c2
    or $8f
    nop
    nop
    rlca
    ld [de], a
    cp a
    ld [c], a
    ret nz

    pop hl
    cp e
    pop bc
    ld b, e
    inc de
    ld hl, $c04e
    rst $18
    db $eb
    ld [$3e17], a
    ldh [$fd], a
    ret nz

    ld a, h
    call nz, Call_059_43e3
    ld hl, $c0fe
    set 7, a
    jp hl


    add sp, $01
    ld d, $13

jr_059_7e19:
    xor $7c
    ret nz

    ld d, l
    ld d, l
    ld d, l
    cp b
    and d
    ld [hl], e
    sub a
    ld hl, $4e69
    nop
    rst $18
    db $ec
    db $eb
    dec e
    ld a, h
    pop bc
    ld e, h
    ld e, h
    ld a, b
    and c
    sbc a
    ld [hl-], a
    ld [hl], h
    sub c
    ld hl, $8051
    rst $38
    ret nz

    xor $21
    sbc l
    add hl, hl
    ret nz

    ld [c], a
    jr nz, jr_059_7eb5

    ld [hl], b
    ret nz

    rst $38
    rst $28
    xor $09
    ld l, [hl]
    inc a
    ret nz

    sbc a
    ld h, $5c
    ccf
    ret nz

    ld h, $74
    ret nz

    rst $38
    ld a, [$eff0]
    ld e, $fc
    and b
    sub c
    ld e, a
    ld e, [hl]
    ld b, h
    ld b, l
    rlca
    ld e, [hl]
    ld e, a
    ld [hl], b
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
    cp d
    sbc h
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

Call_059_7ea2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_059_7eb5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_059_7ee4:
Jump_059_7ee4:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_059_7f00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    jr nc, jr_059_7f80

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_059_7f80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
