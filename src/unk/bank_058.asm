INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $058", ROMX[$4000], BANK[$58]

    db $d3
    ld b, h
    ld h, e
    ld c, c
    ld l, a
    ld c, [hl]
    ld b, l
    ld d, e
    add hl, sp
    ld e, b
    ld [hl-], a
    ld e, l
    ld c, b
    ld h, c
    add hl, bc
    ld h, [hl]
    ld b, $6b
    db $f4
    ld l, a
    sbc a
    ld [hl], h
    ld h, h
    ld a, c
    jr nz, jr_058_405a

    ld d, b
    ld b, b
    ldh [rSCY], a
    sbc a
    ld b, h
    ldh a, [$03]
    ld c, l
    rrca
    ld b, b
    ld [bc], a
    ret nz

    nop
    ldh a, [$03]
    push af

Jump_058_402b:
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

jr_058_405a:
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

Call_058_4087:
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

Jump_058_40a0:
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

Call_058_40e6:
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

Jump_058_40ff:
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

Jump_058_4180:
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

Jump_058_41a7:
    ld h, a
    add hl, de

Jump_058_41a9:
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
    jp Jump_058_4180


    jp z, Jump_000_2692

    ld de, $3c6c
    jr z, jr_058_4289

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

jr_058_4289:
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

Jump_058_42c3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp z, Jump_058_40ff

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
    jr nc, jr_058_436b

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

jr_058_436b:
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
    jp Jump_058_6b32


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
    jr nz, jr_058_43ed

    inc d
    jp z, $80ff

    jp z, Jump_058_473a

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

jr_058_43ed:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_44fe

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
    db $db
    ld b, h
    dec bc
    ld b, l
    ld a, [hl]
    ld b, a
    cpl
    ld c, c
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

jr_058_44fe:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    dec hl
    ld l, h
    inc c
    rst $38
    pop af
    ld c, h
    di
    ld [$f04c], a
    db $eb
    rst $38
    rst $38
    ldh [$ce], a
    ldh [$bc], a
    ld [c], a
    cp c
    ld [c], a
    ld hl, sp-$1f
    ret nz

    rst $30
    inc l
    inc l
    ld c, h
    db $10
    rst $38
    db $ec
    adc [hl]
    db $e4
    db $fd
    db $e3
    db $76
    cp $0b
    rst $38
    db $ec
    cp [hl]
    ld [c], a
    ret nz

    push hl
    ld a, h
    cp c
    ld [c], a
    db $76
    ei
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    rst $20
    ld h, b
    cp [hl]
    ld [c], a
    ld a, [hl]
    and $bd
    push hl
    or e
    db $e3
    ld h, [hl]
    db $e4
    inc l
    inc l
    ld b, [hl]
    db $e4
    ld a, $80
    db $e3
    ld l, e
    ld l, e
    dec bc
    dec hl
    dec hl
    ld a, d
    db $e4
    or [hl]
    pop hl
    jr nz, @+$71

    ldh [$3f], a
    db $e4
    ret nz

    jp hl


    cp l
    jp $c1b6


    inc l
    ret nz

    push hl
    add a
    jp $6b07


    ld l, e
    dec hl
    rst $38
    ldh [$3a], a
    rst $20
    ld a, h
    pop hl
    add c
    call nz, $e4fa
    ld [$e576], sp
    or [hl]
    call nz, $ebc1
    inc c
    pop bc
    ld [c], a
    ret nz

    add sp, -$42
    pop hl
    inc a
    rst $00
    sub b
    ld hl, sp-$3a
    ld b, b
    add sp, -$40
    call z, $e2c0
    dec hl
    dec b
    db $e3
    or e
    jp nz, Jump_058_402b

    add b
    ldh [rWY], a
    ld [$a8f1], a
    push af
    xor a
    ret nz

    db $e3
    ld a, d
    ret z

    ld l, e
    nop
    pop hl
    nop
    pop bc
    rst $28
    push af
    or l
    ret nz

    xor $c0
    jp nz, $c291

    pop af
    and h
    ld [hl], $c6
    ccf
    jp hl


    inc c
    cp h
    add $c0
    rst $28
    ld l, e
    ld l, e
    ld c, l
    and [hl]
    or h
    and [hl]
    or [hl]
    and d
    xor [hl]
    and h
    jr jr_058_45db

    xor e
    ld bc, $c2e4
    add sp, $0b
    ld a, [bc]
    ld c, l
    and l
    ld b, c
    and e
    ld l, b
    and a
    ld c, h
    or b

jr_058_45db:
    and l
    call Call_058_4b89
    ld c, e
    pop bc

Jump_058_45e1:
    jp $e7c2


    ld a, [bc]
    nop
    pop hl
    nop
    ret nc

    and h
    adc l
    and $af
    add h
    or l
    add l
    ei
    and b
    cp d
    and h
    ret nz

    db $e4
    add h
    push hl
    nop
    nop
    db $e4
    adc a
    and l
    ld b, $c8
    or b
    add h
    ld l, b
    push hl
    ret nz

    rst $20
    ld a, a
    ldh [$86], a
    add $00
    ld a, [c]
    add c
    add b
    ldh [rDMA], a
    and h
    ld [bc], a
    and h
    push af
    rst $20
    dec [hl]
    add h
    ret nz

    ld [c], a
    inc hl
    adc b
    nop
    adc e
    add e
    adc [hl]
    push hl
    ld d, $e6
    ld b, b
    and $81
    call nz, $a878
    dec sp
    xor b
    push de
    ld [hl], l
    nop
    jp Jump_058_41a7


    and [hl]
    ld a, a
    and l
    db $fc
    adc c
    push de
    ld [hl], l
    push af
    db $f4
    ld [c], a
    ld h, e
    ld a, l
    add b
    nop
    cp $e1
    pop hl
    add a
    ld e, a
    adc h
    push af
    pop af
    dec [hl]
    ld h, l
    adc a
    ld h, c
    ld b, d
    add d
    ret nz

    db $eb
    nop
    ld e, a
    adc d
    push af
    jp hl


    jp z, $e2a8

    and $e1
    ld b, b
    ld a, $ea
    ld e, a
    adc l
    ld d, h
    adc d
    nop
    jp z, Jump_058_41a9

    add e
    pop hl
    ld b, c
    ld a, [$5f66]
    sub c
    ld d, h
    adc h
    ld a, a
    ld b, a
    ld a, [hl-]
    add $00
    ld d, l
    ld e, a
    inc d
    rst $00
    ld a, a
    ld b, a
    jp hl


    adc b
    ld a, [hl-]
    ld h, l
    ld d, l
    ld d, d
    rrca
    ld b, h
    adc d
    ret z

    nop
    ld [hl], $49
    ret nz

    jp $e7c0


    rst $18
    ld d, b
    ld e, b
    rst $20
    ld b, d
    ld h, a
    and $26
    or c
    ld a, [hl+]
    nop
    rst $18
    ld d, e
    cp d
    db $e4
    dec c
    ret z

    ld a, b
    ld [$2e61], a
    add b
    adc $45
    call nz, $e82d
    nop
    ld [hl], h
    and $ab
    inc l
    rst $18
    ld d, d
    cp d
    push hl
    push af
    push bc
    ld b, c
    adc e
    ld sp, $df29
    ld d, e
    nop
    ld e, b
    ret z

    ld b, c
    adc a
    pop af
    rrca
    rst $18
    ld c, l
    ld e, c
    add l
    ld b, c
    sub e
    ld [bc], a
    ld l, b
    ld b, b
    xor d
    nop
    ccf
    db $eb
    add b
    ret z

    ld b, c
    adc h
    inc bc
    and d
    ld a, e
    daa
    rst $18
    ld d, d
    ld [hl], h
    xor h
    ld b, c
    adc d
    nop
    ld b, c
    ld l, c
    rst $18
    ld d, e
    inc c
    ld l, b
    ld b, c
    ld [hl-], a
    pop bc
    db $eb
    sbc [hl]
    rst $10
    ld b, c
    inc [hl]
    add c
    jp hl


    nop
    rst $18
    ld d, e
    ld b, a
    dec hl
    ld b, c
    jr c, jr_058_4743

    ld c, b
    sbc l
    or [hl]
    ld b, c
    ld l, $01
    db $ec
    rst $18
    ld d, b
    nop
    add l
    add [hl]
    ld h, d
    jp nc, $ee40

    sbc [hl]
    rst $08
    ret c

    add [hl]
    ld b, c
    inc a
    cp d

jr_058_4705:
    ld a, [$4502]
    nop
    ld b, c
    jr c, jr_058_4705

    ld hl, sp-$22
    ld [hl+], a
    ld b, c
    inc sp
    rst $38
    rst $38
    ld h, d
    reti


    rst $38
    rst $38
    add b
    db $e4
    nop
    ld b, c
    inc [hl]
    rst $38
    rst $38
    ld b, b
    db $eb
    nop
    xor a
    rst $38
    rst $38
    ld h, d
    db $db
    rst $38
    rst $38
    ld d, d
    add hl, hl
    nop
    ld bc, $ff29
    rst $38
    ld [hl], e
    call nc, $898e
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38

Jump_058_473a:
    rst $38
    nop
    reti


    and a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_058_4743:
    rst $38
    rst $38
    rst $38
    scf
    db $eb
    call c, $ffff
    rst $38
    nop

jr_058_474d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_058_4770:
    cp a
    rst $38
    rst $38
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
    sub a
    dec d
    ld d, $20
    rst $38
    xor $00
    rst $38
    rst $38
    rst $20
    and $17
    cp c
    jr z, jr_058_474d

    rst $38
    ld a, [$07f9]
    ld b, $05
    rst $38
    ld [$e824], a
    or b
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld sp, $ecff
    ld de, $2112
    ld sp, hl
    jr z, jr_058_4770

    rst $38
    ret nz

    jp hl


    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, l
    ld d, h
    rst $38
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    dec sp
    ld b, a
    ld hl, sp-$42
    ld [c], a
    jp z, $80ff

    add sp, $4d
    ld [hl-], a
    jr nc, jr_058_482c

    ld l, d
    adc l
    ld l, b
    rst $38
    db $e3
    jr nc, jr_058_47ff

    cp [hl]
    ld [c], a
    jp z, $e8ff

    rst $20
    ld c, l
    ld [hl], e
    ld [hl-], a
    ld l, d
    rst $38
    ldh [$c0], a
    db $e4
    ld l, b
    ld l, b
    ld l, h
    cp [hl]
    pop hl
    or h
    jp z, $e8ff

    rst $20
    add hl, sp
    pop bc
    pop hl
    ld l, d
    ld l, h

Jump_058_47e6:
    rst $38
    push hl
    ld l, l
    rst $08
    ld l, l
    ld l, l
    ld [hl], $3c
    jp z, $e8ff

    rst $20
    ld d, e
    ld l, c
    xor [hl]
    add b
    ldh [$6d], a
    ld l, l
    jr nc, @+$01

    ld [c], a
    ld l, e
    rst $38
    pop hl

Jump_058_47ff:
jr_058_47ff:
    ccf
    inc a
    ret nz

    rst $38
    jp hl


    add sp, $52
    ld l, c
    ld l, c
    ld l, c
    pop bc
    push hl
    ret nz

    ld [c], a
    di
    ld c, h
    ld c, c
    ld b, b
    rst $38
    add b
    ld [$6969], a
    ld l, e
    ld l, e
    ret nc

    ret nz

    and $bf
    jp nz, $ffca

    ret nz

    di
    ld c, d
    ccf
    jp nz, Jump_058_5c5d

    or h
    jp z, $e8ff

    rst $20
    add e

jr_058_482c:
    add b
    rst $20
    inc sp
    ld c, l
    or e
    and b
    ld e, l
    ld h, a
    ld e, h
    ld e, e
    ld e, d
    jp z, $e8ff

    rst $20
    ld a, c
    ld [hl], c
    ld b, b
    push hl
    call z, $e1c1
    jp nz, Jump_058_5ae1

    ld e, e
    jp z, $e8ff

    rst $20
    add b
    ld a, c
    inc bc
    ld l, [hl]
    ld [hl], $00
    ld [c], a
    add d
    ldh [$84], a
    ldh [rIE], a
    ld [c], a
    jp z, $c0ff

    add sp, -$11
    add b
    add b
    ld l, a
    ld l, [hl]
    ld b, h
    and b
    dec sp
    ld c, l
    ld sp, $6001
    jp nz, $80e3

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

Jump_058_48df:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_058_498e

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
    ld c, c
    sbc e
    ld c, c
    ld [hl], d
    ld c, h
    dec sp
    ld c, [hl]
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

jr_058_498e:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    cp a
    dec hl
    dec hl
    dec hl
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ldh [$0b], a
    ld l, [hl]
    ld hl, sp-$1f
    dec hl
    dec bc
    inc c
    rst $38
    db $e4
    ld c, h
    ld c, h
    db $fd
    db $e3
    db $e4
    ld sp, hl
    ldh [$f2], a
    db $e4
    inc l
    push hl
    push hl
    ld hl, sp-$16
    dec bc
    dec bc
    dec bc
    rra
    ld l, e
    dec bc
    dec hl
    dec bc
    dec bc
    cp a
    ld [c], a
    ret nz

    ld [c], a
    add $e0
    ld h, b
    pop bc
    ldh [$be], a
    push hl
    db $fc
    db $e3
    or b
    pop hl
    ret nz

    di
    ld c, e
    dec bc
    jp nz, Jump_000_00e0

    ret nz

    ldh [$bf], a
    pop hl
    rst $38
    pop hl
    adc [hl]
    ldh [$8d], a
    rst $20
    ret nz

    db $e3
    xor a
    db $e3
    ld a, c
    pop hl
    ld a, [bc]
    add b
    ld a, [c]
    dec hl
    ret nz

    ld [c], a
    ld c, e
    cp a
    push hl
    cp [hl]
    ldh [rLCDC], a
    ld [c], a
    ld a, [hl-]
    db $e3
    db $e4
    ld sp, $40e9
    ld a, [c]
    ld l, e
    rst $38
    ret nz

    ld b, b
    ldh [rWX], a
    dec hl
    ld c, e
    ld bc, $f94b
    jp nz, $e17a

    ld b, a
    db $e3
    cp e
    db $e4
    or d
    push hl
    ld a, a
    rst $20
    rst $30
    call nz, $f030
    jp $e081


    ld b, b
    ldh [$82], a
    pop hl
    ld c, e
    ld c, e
    or l
    pop hl
    add hl, sp
    pop hl
    add b
    ld b, c
    and $c0
    jp $fa3f


    ret nz

    ld [c], a
    cp h
    ret nz

    ld a, [hl]
    jp nz, $e2b5

    ld c, e
    nop
    ld a, h
    pop bc
    ret nz

    push bc
    add c
    pop bc
    ld [hl], l
    call nz, $f300
    ld b, b
    ret nz

    add d
    jp nz, $c1c1

    ld [bc], a
    dec [hl]
    db $e4
    ld c, e
    ld a, l
    call nz, $e5ff
    ld [hl], l
    add $80
    jp nc, $e04a

    pop bc
    db $e4
    nop
    dec [hl]
    and $0d
    add $be
    rst $00
    ret nz

    sub $07
    ret nz

    push bc
    ret nz

    pop bc
    and b
    call nz, Call_000_06a0
    dec [hl]
    db $e3
    ld c, e
    dec hl
    adc $c8
    db $f4
    and l
    ccf
    sub $c6
    jp $c042


    nop
    ld sp, hl
    and c
    dec [hl]
    db $e3
    ret nz

    ldh [$3f], a
    and $07
    push bc
    ld b, b
    ret z

    ld a, b
    and d
    ld [hl], e
    and [hl]
    nop
    add [hl]
    pop hl
    pop bc
    ld [c], a
    ret nz

    db $e4
    ld [hl], $a1
    ccf
    and a
    ld a, l
    add $b8
    and d
    scf
    or c
    nop
    inc c
    jp nz, $e302

    dec [hl]
    pop bc
    rst $38
    and d
    ld c, $c6
    ld b, c
    and l
    db $fd
    add e
    rst $38
    add b
    ld b, b
    scf
    xor a
    ld [$3fc2], sp
    and d
    nop
    pop hl
    ret nz

    and e
    add b
    db $f4
    inc l
    scf
    and a
    add c
    inc l
    rst $38
    ldh [$80], a

jr_058_4abe:
    add $bf
    add c
    cp [hl]
    add b
    ld [hl], $c1
    ei
    add d
    ld l, e
    nop
    add b
    db $f4
    scf
    xor b
    ret nz

    rst $20
    jp nz, Jump_058_45e1

    jp nz, $a303

    ld [hl], c
    add c
    ret nz

    pop bc
    nop
    dec a
    add h
    add b
    jp z, $e63f

    add c
    add sp, $15
    adc a
    adc d
    add [hl]
    add b
    adc $3f
    rst $20
    nop
    ret nz

    jp hl


    ld d, $84
    dec c
    add c
    cp $e7
    add b
    call nc, $a437
    or [hl]
    ld l, c
    ld d, [hl]
    and h
    jr nz, jr_058_4abe

    db $ed
    ld c, [hl]
    add $00
    jp hl


    push af

Jump_058_4b03:
    add l
    jp nz, Jump_000_2cc1

Jump_058_4b07:
    db $fd
    and [hl]
    add d
    push hl
    nop
    xor e
    jp hl


    call Call_058_4087
    xor c
    add hl, hl
    and [hl]
    ret nz

    jp hl


    ld b, b
    di
    ld b, [hl]
    ld l, b
    ret nz

    rst $00
    nop
    ei
    ld b, e
    db $ec
    ld b, c
    rst $38
    jp z, $f380

    bit 0, l
    ret nz

    ret z

    db $fc
    and h
    ld a, a
    rlc b
    push hl
    sub d
    bit 1, b
    ret nz

    jp z, $c6d2

    ret nz

    call z, $efc0

Jump_058_4b3a:
    ld [de], a
    and [hl]
    ld b, b
    and a
    nop
    inc sp
    ld b, h
    ld h, b
    ld b, c
    add b
    and a
    ld h, d
    ld b, h
    ccf
    call nz, $e504
    sub h
    xor b
    cp a
    jp hl


    add b
    or e
    add [hl]
    ld b, b
    jp hl


    ld h, d
    ld b, [hl]
    ret


    ld b, l
    ld hl, sp-$19
    cp l
    add a
    ld b, b
    jp z, Jump_000_004c

    add d
    xor h
    ret nc

    ld l, c
    ld a, b
    and $fd
    ld h, a
    rst $00
    add b
    or [hl]

Jump_058_4b6b:
    dec h
    ld h, h
    call nz, $a942
    nop
    ld [de], a
    add sp, -$0f
    ret z

    cp $a9
    ld a, e
    push bc
    db $f4
    ld b, a
    pop bc
    db $ec
    ld a, [de]
    adc d
    or h
    and $00
    ld d, h
    push hl
    push bc
    daa
    ld [hl], $87
    ret nz

Call_058_4b89:
    xor $76
    rst $00
    bit 1, h
    ld b, e
    ld [c], a
    ei
    ld c, e
    nop
    dec [hl]
    ld l, $42
    jp hl


    ld c, e
    adc [hl]
    ld b, d
    ld c, b
    dec sp
    ld h, $40
    xor $19
    res 1, l
    rlc b
    ld a, b
    daa
    inc b
    add h
    ld a, $21
    ld b, c
    xor d
    push af
    ld l, h
    bit 1, e
    db $fc
    xor h
    ld b, a
    ld h, d
    nop
    ret nz

    ld l, e
    ld b, b
    db $ec
    or c
    adc $30
    add [hl]
    ld b, l
    add $c1
    db $ec
    jp z, Jump_000_3cf1

Jump_058_4bc4:
    add a
    nop
    ld [hl], b
    add h
    cp e
    ld [$ed81], sp
    jp z, $fdd1

    ld h, l
    ld b, [hl]
    ld a, [bc]
    cp c
    ld de, $3295
    nop
    ld d, e
    xor c
    and c
    ld h, a
    ld d, l
    add l
    ld bc, $15ec
    ld [hl], e
    add h
    add a
    ld a, c
    dec h
    ld [bc], a
    ld d, b
    nop
    nop
    or $83
    jp hl


    ld [hl], d
    ld [$133a], a
    cp c
    or $7e
    call nz, $abb8
    db $fc
    ld hl, sp+$00
    cp e
    di
    cp d
    ld c, d
    rst $38
    rst $38
    ld h, l
    jp c, $ffcb

    ld l, b
    inc h
    ld c, d
    adc l
    add b
    rst $38
    nop
    ret nz

    db $ed
    ld a, d
    ld [de], a
    rst $00
    rst $38
    ld h, l
    cp e
    set 7, a
    and l
    xor [hl]
    ld a, [hl-]
    jr z, @+$01

    rst $38
    nop
    di
    call nc, $ac8d
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], h
    ld l, l
    rst $38
    rst $38
    nop

Call_058_4c2c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc d
    add d
    call c, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    sub e
    ld l, [hl]
    sbc b
    rst $18
    cp h
    ei
    or [hl]
    cp a
    ld l, l
    sbc [hl]
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    daa
    ld a, e
    ld d, l
    rst $38
    rst $38
    ldh [rTMA], a
    nop
    cp h
    dec hl
    cp e
    rst $38
    cp [hl]
    ldh a, [rIE]
    rst $38
    ret nz

    rst $18
    rst $38
    rst $38
    jr nc, jr_058_4ce0

    db $76
    ld l, e
    nop
    nop
    nop
    rst $38
    ld sp, $3131
    ld c, l
    ld a, [hl-]
    ld d, h
    ld d, l
    dec sp
    rst $38
    ld c, l
    ld sp, $5b60
    ld e, e
    ld e, e
    ld h, c
    ld sp, $2b9f
    inc l
    jr nz, jr_058_4ca9

    nop
    rst $38
    rst $38
    rst $20
    and $a4
    rst $38
    and h
    or b
    ld [hl-], a
    jr nc, jr_058_4d00

    jr nc, jr_058_4cc7

    ld [hl-], a
    db $e4
    cp a
    ld [c], a
    ret nz

    pop hl
    db $10
    ret nz

    rst $38
    jp hl


    add sp, -$80
    ld a, c
    ld [hl], c
    ld sp, hl
    ld l, e
    ret nz

    pop hl

jr_058_4ca9:
    cp a
    pop hl
    ld h, d
    ld h, d
    ld sp, $1131
    rst $20
    ld [de], a
    ld hl, $ca22
    rst $38
    add sp, -$19
    ld a, c
    ld [hl], c
    ld l, c
    ld [hl-], a
    ret nz

    ld [c], a
    ld l, l
    ld a, [hl]
    pop hl
    rst $38
    ld [c], a
    ld de, $ca12
    rst $38

jr_058_4cc7:
    add sp, -$19
    ei
    add e
    ld l, e
    ret nz

    ld [c], a
    ld l, l
    jr nc, jr_058_4d3e

    ld l, d
    ccf
    ld c, l
    ld d, h
    ld hl, sp-$3e
    ld sp, $ca31
    rst $38
    add sp, -$19
    ld d, e
    ret nz

    ld [c], a

jr_058_4ce0:
    add [hl]
    pop bc
    pop hl
    ld l, d
    ld l, l
    or l
    pop hl
    ld a, d
    pop hl
    jp z, $e8ff

    rst $20
    ld d, d
    ld [$e180], sp
    ld b, c
    ldh [$c1], a
    ldh [$30], a

jr_058_4cf6:
    ld [hl], l
    ld [c], a
    or a
    ret nz

    jp z, Jump_058_40ff

    db $ec
    add b
    pop bc

jr_058_4d00:
    db $e3
    ret nz

    db $e3
    db $76
    ret nz

    jp z, $c0ff

    call z, $e3c1
    add b
    db $e3
    ld l, l
    inc hl
    jr nc, jr_058_4d4a

    jp z, Jump_058_40ff

    bit 0, e
    ld [c], a
    ld l, l
    add hl, sp
    ret nz

    dec [hl]
    db $e3
    add c
    ld d, e
    jp z, Jump_000_00ff

    ret z

    rst $38
    and b
    pop bc
    ld [c], a
    cp e
    and b
    dec [hl]
    db $e4
    ld d, d
    ldh [$ca], a
    rst $38
    ret nz

    jp hl


    cp [hl]
    and b
    pop bc
    pop hl
    ret nz

    db $e4
    ld l, l
    ld l, d
    ld l, l
    add b
    ld b, b
    rst $38
    ret nz

    db $eb

jr_058_4d3e:
    cp a
    ld [c], a
    ret nz

    db $e4
    pop bc
    ldh [$c0], a
    rst $18
    ret nz

    db $ed
    xor d
    adc e

jr_058_4d4a:
    ld e, b
    ld [hl-], a
    ret nz

    db $e4
    ld l, h
    pop bc
    pop hl
    ld b, b
    rst $18
    nop
    ld [$8faa], a
    ld e, b
    xor e
    ld sp, $bf4d
    ldh [$c0], a
    ld [c], a
    pop bc
    pop hl
    ld h, b
    ldh a, [$ca]
    rst $38
    add sp, -$19
    jp nz, Jump_000_3ce1

    add d
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    rlca
    ld d, h
    ld d, h
    ld a, [hl-]
    jr c, jr_058_4cf6

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_4e9a

    ld sp, $3133
    inc sp
    nop
    and b
    ei
    rst $38
    rst $28
    nop
    nop

Call_058_4e6e:
    nop
    ld [hl], a
    ld c, [hl]
    and a
    ld c, [hl]
    dec h
    ld d, c
    ld de, $f053
    inc bc
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

jr_058_4e9a:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    push af
    inc c
    rst $38
    db $e4
    dec bc
    rst $38
    db $e4
    ld c, e
    dec bc
    ld a, [bc]
    dec bc
    add $ec
    ldh [$4c], a
    ld c, h
    db $fd
    and $f5
    ldh [$f0], a
    ld [c], a
    inc l
    inc l
    db $e3
    inc c
    inc c
    db $fd
    ldh [$fe], a
    di
    pop bc
    ldh [$2b], a
    ld l, e
    ld c, e
    adc e
    ld c, e
    ld c, e
    ret nz

    ldh [$0b], a
    ret nz

    jp hl


    cp c
    ldh [$b2], a
    db $e4
    inc l
    ret c

    ret nz

    ld [c], a
    cp h
    di
    add e
    ldh [rOCPD], a
    ld l, e
    db $fd
    ldh [rOCPD], a
    dec hl
    ld [bc], a
    cp l
    pop hl
    ld a, [bc]
    add c
    ldh [$7e], a
    push hl
    db $fc
    db $e3
    ld [hl], b
    pop hl
    add c
    pop hl
    ret nz

    rst $30
    ld b, $c1
    db $e3
    ld l, e
    ld l, e
    ld a, a
    ld [c], a

jr_058_4efc:
    inc l
    pop hl
    add d
    db $e4
    ld b, b
    add sp, -$3f
    db $e4
    jr jr_058_4f42

    db $ec
    ld [hl+], a
    pop hl
    pop bc
    rst $20
    ld l, e
    dec hl
    ld hl, sp-$3f
    nop
    pop hl
    db $e3
    db $e3
    ld h, b
    jp c, $f4e8

    push hl
    jr c, jr_058_4efc

    or e
    ld [c], a
    ret nz

    db $e4
    ld c, h
    inc c
    pop bc
    rst $20
    pop bc

jr_058_4f23:
    ld l, e
    cp c
    jp nz, $dcc0

    cp e
    jp z, $c0d2

    inc bc
    ldh [rWX], a
    ld c, e
    nop
    nop
    db $e3
    ld a, d
    jp $d8c0


    add b
    add sp, $46
    jp $c190


    adc d
    db $e3
    cp a
    pop bc
    nop

jr_058_4f42:
    ret nz

    push hl
    ret nz

    sub $c0
    xor $ca
    rst $20
    ld b, d
    add sp, -$40
    jp c, $abfb

    ld c, c
    ret nz

    nop
    push bc
    and l
    ld [bc], a
    ld [c], a
    xor c
    push bc
    ret nz

    sub $be
    xor h
    adc $c1
    call z, Call_000_3ea1
    db $e3
    nop
    call nz, Call_058_52a0
    rst $00
    push bc
    and e
    ld a, b
    call nz, $a27a
    add b
    rst $20
    ld [hl], a
    and [hl]
    ld c, a
    jp nz, $bf70

    push hl
    ret nz

    push hl
    add b
    rst $18
    jr c, jr_058_4f23

    dec hl
    dec bc
    dec hl
    inc c
    jp nz, Jump_058_7d20

    and c
    inc bc
    pop bc
    ld de, $80a3
    ret c

    cp $8c
    ld c, e
    cp a
    ldh [$c0], a
    add $42
    nop
    and b
    inc l
    pop de
    add e
    add b
    rst $10
    cp e
    and l
    or l
    add h
    ld a, [bc]
    ld a, a
    ldh [rP1], a
    nop
    ld [c], a
    ld b, h
    and c
    or l
    pop hl
    inc b
    push hl
    add b
    rst $10
    pop bc
    db $e3
    ld [hl], l
    add h
    ld c, [hl]
    add c
    nop
    ld c, e
    and d
    add l
    and d
    ld a, a
    ld [c], a
    add b
    rst $18
    add c
    rst $20

jr_058_4fbd:
    dec d
    adc c
    jp c, Jump_000_1584

    add l
    nop
    nop
    sbc b
    ret nz

    xor $58
    add a
    ld b, b
    add $c0
    db $e3
    ret nz

    ret nc

    add e
    ld [$8615], a
    nop
    ld [de], a
    call nz, $c611
    add b
    ldh [$c0], a
    db $db
    ld [hl], h
    ld h, a
    ld c, [hl]
    add $d3
    and [hl]
    pop de
    ld h, e
    nop
    ret nz

    sub $36
    ld h, e
    inc [hl]
    ld h, l
    dec d
    adc b
    ld b, h
    add $fd
    xor d
    nop
    ld l, [hl]
    ld [hl], $65
    nop
    add e
    rst $20
    nop
    ld [$a455], a
    ret nz

    cp e
    ld a, [hl-]
    add a
    call c, $0042
    ld [$4392], a
    nop
    ret nz

    cp c
    pop bc
    jp hl


    ld c, c
    rst $00
    db $d3
    add a
    inc de
    ld h, e
    nop
    ld [hl], c
    dec l
    ld h, [hl]
    ld b, b
    push hl
    nop
    ld b, h
    add sp, $55
    ld b, l
    inc bc
    ld h, e
    sbc l
    pop bc
    ld c, h
    ld b, e
    ei
    and $11
    rst $20
    cp a
    xor a
    nop
    ret nz

    jp z, $8453

    ret nz

    db $ed
    add b
    rst $20
    add b
    xor c
    jr nz, jr_058_4fbd

    and d
    ld a, [hl+]
    add b
    ld [c], a
    nop
    ld c, e
    ld b, [hl]
    add $a4
    or a
    ld l, [hl]
    sub c
    add l
    ld h, a
    ld sp, $eec1
    ld h, b
    and d
    ld [hl], a
    ld l, l
    nop
    ret z

    and l
    jp nz, Jump_000_10f2

    ld l, $36
    ld l, l
    add b
    rst $30
    inc e
    add h
    add b
    db $ed
    ld a, a
    ldh a, [rP1]
    push hl
    ld d, h
    ld b, b
    pop af
    or [hl]
    ld d, b
    db $db
    rlca
    or l
    sub $92
    adc c
    inc bc
    and h
    ld [bc], a
    and [hl]
    nop
    ld [hl+], a
    inc bc
    sub l
    dec b
    ld d, l
    ld e, c
    ld [hl+], a
    add d
    db $ed
    and l
    ld b, b
    res 0, b
    rst $38
    sub d
    dec b
    nop
    scf
    push bc
    ret nz

    res 0, b
    rst $38
    dec d
    adc c
    cp [hl]
    ld l, e
    ld e, $a6
    cp h
    rst $38
    ld a, c
    ld [hl-], a
    nop
    ld a, $87
    ld a, h
    xor l
    ld a, c
    scf
    add b
    db $eb
    sub c
    ret c

    add hl, sp
    rlca
    ld a, b
    adc b
    cp $4c
    nop
    ld d, d
    reti


    ld a, d
    daa
    ld e, c
    ld b, h
    set 7, a
    ld h, l
    xor h
    rst $38
    push hl
    dec h
    adc c
    rst $38
    rst $38
    nop
    push hl
    ld l, b
    sbc a
    adc b
    ld a, a
    rst $38
    ccf
    ld a, [c]
    db $e4
    cp a
    ld [bc], a
    or d
    db $e4
    cp a
    ret nz

    db $fc
    nop
    cp c
    ld b, $7d
    push bc
    add b
    rst $38
    ld a, a
    pop de
    ld a, [hl-]
    dec b
    ld e, a
    ld c, b
    rst $38
    rst $38
    inc h
    xor c
    nop
    ret nz

    add sp, -$01
    rst $38
    push af
    ld [hl], l
    call $ffbf
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    sbc c

Call_058_50e3:
    jp nc, $ff00

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    inc c
    nop
    nop
    nop
    db $ed
    jr nz, @+$01

    db $e3
    rrca
    ld sp, $e4ff
    ld e, a
    ld e, e
    ld e, d
    ld h, e
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $c0
    ld [c], a
    ld a, [bc]
    dec bc
    pop bc
    ldh [rIE], a
    ld a, $3a
    ld d, h
    ld d, h
    inc a
    ld sp, $5b5e
    jp hl


    ld e, e
    ret nz

    rst $38
    ret nz

    db $ec
    nop
    add e
    ldh [rKEY1], a
    ld b, l
    ld b, d
    rra
    ld l, d
    ld l, d
    ld l, d
    dec [hl]
    ld c, l
    ld a, a
    pop hl
    jp z, $80ff

    db $eb
    cp [hl]
    ld b, e
    ldh [rKEY1], a
    ld [hl-], a
    jr nc, jr_058_51d2

    ld l, l
    cp a
    ldh [$39], a
    jr @+$81

    pop hl
    jp z, $e8ff

    rst $20
    ld hl, $8128
    pop hl
    pop bc
    ld [c], a
    cp a
    pop hl
    rst $20
    ld d, d
    ld sp, $c031
    rst $38
    ld [$11e9], a
    ld [de], a
    ld hl, $0fe1
    pop bc
    push hl
    ld a, [hl]
    ldh [$80], a
    rst $38
    db $ed
    db $ec
    ld sp, $0431
    rst $08
    ld sp, $3931
    jr nc, @+$01

    pop hl
    ld a, [hl]
    ldh [rOBP0], a
    ld c, c
    rst $08
    ld sp, $5c5f
    ld e, l
    jp z, $e8ff

    rst $20
    ld e, l
    ld sp, $31bf
    ld c, e
    ld b, l
    ld b, d
    ld h, l
    ld h, l
    cp a
    db $e3
    add hl, sp
    sbc a
    ld sp, $6231
    ld sp, $ca31
    rst $38
    add sp, -$19
    ld e, a
    rst $38
    ld sp, $4849
    ld l, l
    ld l, d
    ld l, b
    ld l, b
    ld h, a
    inc a
    ld a, a
    pop hl
    add c
    ldh [$31], a
    ld sp, $1211
    jp z, $e8ff

jr_058_51d0:
    rst $20
    add a

jr_058_51d2:
    ld e, [hl]
    ld sp, $0639
    db $e3
    cp a
    ldh [$81], a
    pop hl
    ldh a, [$c0]
    ld [hl+], a
    db $f4
    jp z, Jump_000_00ff

    jp hl


    ld d, d
    ld b, $e2
    ld l, l
    ld l, c
    ld h, [hl]
    jr nc, jr_058_522a

    ld b, d
    scf
    ld sp, $2b31
    db $10
    ldh a, [$a0]
    rst $38
    rst $38
    nop
    add b
    add sp, -$40
    ldh [rSCX], a
    pop bc
    ret nz

    ldh [rSC], a
    ldh [$c0], a
    rst $38
    nop
    ldh a, [$84]
    jp nz, Jump_058_6a6f

    jr nc, jr_058_527b

    xor a
    ei
    add b
    rla
    jr z, jr_058_51d0

    rst $38
    ld a, [c]
    ld [$5be9], a
    rst $38
    ret nz

    ld b, e
    jp Jump_058_7971


    xor d
    ld e, b
    ld c, a
    xor h
    ld sp, $1615
    ret nz

    rst $38
    ld [$5ae9], a
    ld a, a
    ret nz

    db $fd

jr_058_522a:
    ld b, d
    inc bc
    pop bc
    ld [hl], c
    ld a, c
    add b
    add b
    add b
    add c
    ld hl, sp+$7f
    ld [c], a
    jp z, $80ff

    add sp, $5b
    ld h, b
    ld sp, $553c
    ld [hl], a
    ld d, h
    ld d, l
    ld l, [hl]
    pop bc
    pop hl
    add b
    xor [hl]
    ld [hl], b
    ld a, a
    pop hl
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

jr_058_527b:
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

Call_058_52a0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_5370

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
    ld c, l
    ld d, e
    ld a, l
    ld d, e
    ld [hl-], a
    ld d, [hl]
    dec b
    ld e, b
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

jr_058_5370:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $28
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    rst $38
    ld [c], a
    dec hl
    dec hl
    dec bc
    rrca

Jump_058_5388:
    ld c, h
    ld c, h
    ld c, h
    inc c
    rst $38
    ld [c], a
    rst $30
    ldh [$f6], a
    pop hl
    ld a, [c]
    ldh [rNR10], a
    rst $28
    db $e4
    ld a, [$c3f7]
    db $e3
    cp l
    db $e3
    ld c, e
    ret nz

    push hl
    cp [hl]
    pop hl
    db $fd
    and $0c
    db $eb
    rst $20
    ret nz

    db $fd
    dec hl
    dec hl
    cp a
    and $c3
    and $7b
    ld [c], a
    ld hl, sp-$1b
    ld [bc], a
    ld [hl], e
    ldh a, [$0a]
    ld b, c
    db $e4
    ld a, b
    db $e4
    ld a, [hl]
    db $ed
    db $fc
    ld [c], a
    scf
    db $e3
    ld [hl], e
    di
    ld c, $03
    ld [c], a
    ld l, e
    ld l, e

jr_058_53c8:
    ld c, e
    rst $38
    pop hl
    rst $30
    pop bc
    rst $38
    call nz, $e582
    jr c, jr_058_53c8

    jp nz, $e2b8

    ld [hl], e
    push hl
    inc c
    inc c
    inc l
    db $db
    jp $e3f9


    inc c
    pop bc
    db $e3
    cp [hl]
    ldh [rOCPD], a
    dec hl
    ret nz

    ld [c], a
    cp h
    db $e4
    or a
    jp $c9b1


    nop
    ld [hl], e
    and $c0
    call z, $e1c4
    pop bc
    ld [c], a
    ld a, l
    ret nz

    ld a, e
    db $e4
    cp e
    add $bd
    rst $20
    nop
    ld [hl], e
    rst $20
    ret nz

    ldh a, [$c1]
    push hl
    dec a
    ret nz

    cp e
    pop hl
    add b
    ld [c], a
    ret nz

    rst $00
    ld a, [hl+]
    push bc
    ld b, d
    dec [hl]
    db $d3
    dec bc
    call z, $81e1
    ld [c], a
    pop bc
    db $e3
    ld hl, sp-$60
    ld c, e
    ld b, $c3
    nop
    add c
    push bc
    cp b
    db $eb
    db $ec
    xor l
    ret nz

    call nz, $ebc0
    jp $ffa2


jr_058_542d:
    push hl
    call nz, Call_000_00c5
    db $ec
    or e
    ld c, [hl]
    ld [c], a
    add b
    jp hl


    db $76
    and b
    cp a
    and l
    cp b
    push bc
    ccf
    push hl
    db $ec
    xor c
    ld [de], a
    add b
    and [hl]
    ld c, h
    ld c, [hl]
    pop hl
    nop
    db $e4
    ld l, e
    inc sp
    jp nz, $c480

    ld c, d
    jp Jump_058_7580


    jp z, $d279

    cp a
    ldh [rSTAT], a
    pop bc
    call nz, $fce0
    ret nz

    pop bc
    pop hl
    dec bc
    jr nz, jr_058_542d

    and h
    ld c, e
    push hl
    ldh a, [$a3]
    db $ec
    xor h
    add sp, -$79
    inc l
    adc l
    pop bc
    cp a
    pop hl
    ld b, b
    cp [hl]
    pop hl
    cp l
    jp nz, $c610

    cp h
    add sp, -$4c
    add [hl]
    sbc l
    add h
    inc l
    cp d
    and h
    ld b, a
    inc c
    inc c
    ld l, h
    ld a, $e0
    cp a
    ld [c], a
    or l
    add l
    ld l, e
    pop bc
    adc h
    ld d, b
    or d
    jp $acec


    ret nz

    rst $20
    ld a, a
    ldh [$0b], a
    jp nz, $4ba1

    pop bc
    jp Jump_058_7300


    and b
    pop bc
    adc l
    ld a, [$ec85]
    xor c
    add c
    push hl
    ld e, l
    add l
    ld hl, sp-$19
    ld c, $e4
    nop
    ld c, [hl]
    xor d
    ld [hl], a
    add [hl]
    db $ec
    and [hl]
    ret nz

    rst $20
    db $d3
    add $cd
    ld l, c
    pop bc
    adc h
    ld [hl], l
    push bc
    ld b, b
    db $ec
    and a
    add b
    ret z

    call nc, $cdc6
    ld l, l
    or d
    ld l, c
    db $ec
    xor l
    inc l
    ld a, c
    add l
    nop
    ret nz

    xor $e1
    and [hl]
    inc bc
    ret z

    dec a
    add h
    db $ec
    xor b
    ret nz

    rst $20
    sub h
    and [hl]
    call Call_000_0069
    ld d, c
    rst $00
    ld b, l
    xor b
    db $ec
    xor c
    ld b, b
    add $17
    ld h, [hl]
    pop hl
    xor e
    ld b, h
    add $e1
    rst $00
    inc b
    push af
    ld b, l
    ret nz

    ld h, b
    inc l
    rst $38
    ldh [rNR30], a
    adc c
    db $d3
    ld h, a
    db $10
    adc c
    add c
    and a
    nop
    di
    adc b
    ld l, a
    ld d, e
    pop hl
    xor l
    jp nc, $8668

    xor d
    ld b, l
    call nz, $ea80
    ret nz

    rst $08
    nop
    rst $28
    bit 7, c
    and a
    ld b, b
    pop af
    push de
    ld h, h
    call Call_058_4e6e
    adc a
    ld sp, $4367
    xor b
    nop
    jp $cdaa


    ld l, c
    ld a, [hl-]
    ld c, [hl]
    ld h, h
    rst $20
    inc bc
    xor c
    ld b, c
    call z, Call_058_67cd
    ld l, l
    pop de
    nop
    ld sp, $0564
    ret z

    push de
    ld h, a
    call $ff6c
    dec b
    ld a, [hl-]
    ld c, e
    ld a, $c7
    ld h, l
    xor d
    nop
    ccf
    jp hl


    ld d, c
    ld h, a
    ld l, l
    call $557c
    ld [hl+], a
    jp z, $4686

    adc $49
    cp c
    dec b
    nop
    inc bc
    add [hl]
    ld b, b
    ldh a, [rNR43]
    push bc
    ld d, e

jr_058_555d:
    add [hl]
    ld a, [hl-]
    ld c, l
    ld a, $ca
    ld b, c
    and a
    dec d
    ld l, h
    nop
    push af
    jp hl


    ld c, [hl]
    adc l
    dec hl
    ld bc, $a247
    ld b, c
    xor h
    and h
    jp z, Jump_000_24c3

    ld c, c
    ld h, [hl]
    nop
    dec h
    db $ec
    ld [$0262], sp

jr_058_557d:
    xor h
    ld [$57cc], sp
    daa
    dec h
    db $eb
    or $26
    jp nz, Jump_000_0089

    ld [$c9d1], sp
    add hl, hl
    ld l, l
    set 0, l
    ld a, [hl+]
    ret nz

    pop de
    ld [hl], e
    and l
    ld e, $49
    ld a, b
    daa
    nop
    rst $20
    call nz, $8cc2
    set 1, l
    db $fd
    adc b
    ld a, c
    ld c, $c0
    xor $54
    jr nc, jr_058_555d

    ld b, a
    nop
    ld a, c
    ld c, $41
    pop af
    ld c, d
    pop de
    and h
    db $d3
    ld e, a
    push bc
    cp l
    rst $38
    sbc $43
    add [hl]
    ld l, [hl]
    jr nz, jr_058_557d

    jp nc, $f676

    xor h
    adc a
    add l
    dec c
    ei
    ld a, [$792c]
    db $10
    add b
    ld a, [$c000]
    xor $21
    ld a, [hl+]
    jr nc, jr_058_55fc

    rst $38
    rst $38
    inc hl
    ld l, b
    ld a, $05
    ld a, b
    ld a, [bc]
    rst $38
    rst $38
    nop
    db $e4
    ld h, a
    ret nz

    add sp, -$01
    rst $38
    di
    call nc, $ab0d
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    nop
    rst $38
    rst $38
    ld [hl], h
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    inc l

jr_058_55fc:
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    ld c, d
    nop
    nop
    nop
    rst $28
    ld e, e
    ld e, e
    ld e, d
    ld e, e
    rst $38
    db $e3
    ld h, c
    ld sp, $1729
    daa
    db $10
    jr nz, @+$01

    pop hl
    nop
    rst $38
    rst $38
    rst $20
    and $c3
    db $e4
    rra
    ld e, e
    ld e, e
    ld h, b
    ld sp, $bf31
    ldh [$c0], a
    rst $38
    ret nz

    pop af
    ld c, a
    ld e, h
    ld e, l
    ld h, d
    ld h, d
    pop bc
    ldh [$bf], a
    ldh [rNR42], a
    ret nz

    rst $38
    ld [bc], a
    db $ec
    db $eb
    ld e, d
    ld b, c
    ldh [$85], a
    pop hl
    db $fd
    db $e4
    cp a
    ld [c], a
    jp z, Jump_058_40ff

    ld [$60ff], a
    ld sp, $3a4d
    ld d, h
    ld d, l
    ld d, h
    ld a, [hl-]
    add l
    ld c, l
    ld a, l
    pop hl
    inc b
    rst $38
    ldh [$ca], a
    rst $38
    nop
    jp hl


    pop bc
    ldh [$32], a
    ld a, a
    jr nc, jr_058_56f8

    ld l, l
    ld l, l
    ld l, d
    ld [hl-], a
    ld a, $78
    db $e4
    db $f4
    jp z, $c0ff

    ret z

    ld e, a
    pop bc
    push hl
    jr nc, @+$32

    ld b, d
    ld d, l
    rst $00
    ld d, l
    ld d, h
    dec sp
    cp e
    ldh [$ca], a
    rst $38
    add b
    ret z

    ld e, [hl]
    ld sp, $39ed
    add d
    pop hl
    ld l, c
    jr nc, @+$7e

    ldh [$67], a
    ld l, e
    ld l, e
    rst $20
    ld l, e
    ld b, d
    inc a
    ret nz

    rst $38
    ld b, b
    ret


    ld h, c
    ld sp, $4e53
    ret nz

    db $e3
    ld l, l
    ld l, l
    ld h, [hl]
    pop bc
    ldh [$7a], a
    ldh [rOBP1], a
    jp z, Jump_000_34ff

jr_058_56ce:
    add sp, -$19
    add hl, bc
    ret nz

    ld d, d
    ret nz

    db $eb
    jr nc, jr_058_5710

    jp z, $e8ff

    rst $20
    ret z

    jp z, Jump_058_40a0

    db $e4
    ret nz

    and $52
    jp z, $c0ff

    add sp, $04
    ld sp, $49c3
    ld c, b
    add c
    ret nz

    nop
    push hl
    add b
    rst $38
    db $ec
    db $eb
    inc d
    inc d
    cp c
    dec d

jr_058_56f8:
    cp a
    jp $c080


    ld l, l
    ld [hl], $36
    rst $38
    ret nz

    ld [hl-], a
    ld sp, hl
    ld c, l
    jp z, $e8ff

    rst $20
    inc h
    inc h
    rla
    ld sp, $fd49
    ld b, d
    nop

jr_058_5710:
    jp nz, Jump_000_3a42

    ld b, a
    ld b, a
    ld a, [hl-]
    ld d, l
    ld hl, sp-$47
    and b
    jp z, $e8ff

    rst $20
    jr nz, @+$22

    inc l
    dec d
    ld sp, $3c91
    cp a
    pop hl
    ld b, a
    ret nz

    jr c, jr_058_56ce

    ld h, b
    jp z, $c0ff

    jp hl


    jr nz, jr_058_57b1

    rla
    ld sp, $3e31
    ld a, [hl-]
    ld d, h
    ld a, [hl-]
    add d
    and h
    rlca
    ld e, l
    ld e, h
    ld e, e
    jp z, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_058_57b1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_5864

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
    ld b, c
    ld e, b
    ld [hl], c
    ld e, b
    daa
    ld e, e
    cp $5c
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

jr_058_5853:
    jr c, @+$10

    ld sp, $4819
    rrca
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_058_5864:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    di
    ld a, [bc]
    dec bc
    rst $38
    ldh [$fb], a
    ldh [$2b], a
    dec hl
    dec bc
    ld a, [bc]
    dec hl
    ld c, d
    ld l, d
    rst $38
    db $e3
    inc c
    rst $38
    ldh [$4c], a
    db $fd
    ldh [$fc], a
    ldh [rSVBK], a
    ld hl, sp-$1e
    ldh a, [$e8]
    db $ec
    ld [c], a
    db $fd
    jp hl


    dec bc
    dec bc
    ld c, d
    cp [hl]
    pop hl
    jr nz, jr_058_5853

    ldh [$be], a
    ldh [$bf], a
    db $e4
    add $e0
    push bc
    ld [c], a
    ld c, h
    db $fd
    and $f0
    push hl
    pop af
    inc l
    db $fc
    pop hl
    ret nz

    db $ec
    call nz, Call_058_6be2
    ld c, e
    dec bc
    dec bc
    pop bc
    ld c, e
    cp a
    push hl
    sbc d
    db $e4
    jp Jump_058_7ee6


    ld [c], a
    or d
    pop hl
    inc l
    inc l
    ld l, h
    db $fc
    ld [c], a
    ld a, l
    jp hl


    ld a, [bc]
    dec hl
    jp nz, Jump_058_6be1

    ld c, e
    rst $38
    pop hl
    ld b, c
    dec bc
    ld a, [hl]
    db $e4
    ld c, c
    and $7e
    db $e3
    ld b, a
    db $e3
    jr nc, @-$1d

    inc l

jr_058_58db:
    add b
    ldh [$0e], a
    ret nz

    db $ec
    dec hl
    ld l, e
    dec bc
    jp nz, $bfe4

    ld [c], a
    db $fc
    jp nz, $e344

    nop
    ccf
    db $e4
    rst $30
    jp nz, $e530

    db $ec
    jp nz, $e43f

    jr c, jr_058_58db

    ld b, [hl]
    ldh [$c1], a
    and $00
    cp a
    push hl
    db $dd
    call nz, $c3d5
    rst $08
    add $38
    ld [c], a
    inc [hl]
    pop hl
    rst $38
    jp z, $e981

    add b
    dec a
    push hl
    pop de
    push hl
    cp e
    push hl
    ld a, a
    call z, $edc0
    cp $c0
    ld bc, $6be0
    inc e
    ld a, l
    pop bc
    db $fc
    ret nz

    ld c, e
    dec bc
    ld c, d
    adc a
    add sp, -$40
    call nz, $eb3f
    add d
    ld b, b
    sra e
    add e
    ret nz

    ret nz

    pop hl
    ld a, l
    ret nz

    cp c
    ret nz

    ret nz

    ldh [$0b], a
    ld c, b
    ld b, d
    push hl
    rst $38
    or d
    nop
    adc $2b
    adc d
    pop hl
    cp a
    and c
    dec hl
    ld a, c
    ldh [rNR41], a
    ld [hl], d
    ret nz

    ret nz

    pop hl
    rst $38
    cp b
    ret nz

    xor [hl]
    ld c, d
    ldh [$0b], a

jr_058_5955:
    ld a, h
    ret nz

    cp b
    ld [c], a
    nop
    ret nz

    rst $20
    rst $38
    or a
    add l
    jp nz, $a6bb

    add [hl]
    db $e3
    ld b, d
    and b

jr_058_5966:
    pop bc
    ld [c], a
    ld [hl], a
    pop hl
    ld [hl], b
    ld b, b
    db $e3
    rst $38
    or a
    ccf
    ret nz

    ld a, l
    xor b
    inc l
    inc l
    dec hl
    cp [hl]
    ret nz

    add h
    pop bc
    db $e4
    ld [hl], $a3
    ld a, [bc]
    add c
    add $ff
    or b
    rst $20
    add c
    ret nz

    db $eb
    inc l
    pop af
    inc l
    ld b, c
    ldh [$08], a
    ld [c], a
    ld a, c
    ret nz

    dec bc
    ld l, e
    dec bc
    ld a, [bc]
    jr nz, jr_058_5955

    ld [c], a
    rst $38
    or [hl]
    or d
    add d
    jp z, $c0e1

    and $6c
    cp a
    ldh [$84], a
    push hl
    jr nz, jr_058_5966

    pop hl
    add b
    pop hl
    add d
    sub $34
    and e
    ret nz

    jp hl


    ld l, h
    ld a, a
    pop hl
    jp nz, $02e4

    pop bc
    ld [c], a
    ld a, [bc]
    add d
    db $dd
    ret nz

    ld [c], a
    jr c, @-$72

    ld c, h
    add sp, $08
    sub c
    add c
    add l
    nop
    daa
    and h
    ld a, [$546a]
    ld hl, sp+$09
    ret


    add l
    add h
    xor d
    ld h, h
    ld a, [$d565]
    ld [hl], a
    nop
    ld a, d
    ld l, b
    inc c
    add c
    ld [hl], d
    ld h, l
    and l
    add e
    or $60
    cp b
    ld h, e
    push de
    ld [hl], a
    adc d
    ld l, b
    nop
    jp nc, $86e1

    ld h, d
    ld l, l
    add l
    ret nz

    rst $20
    push de
    ld [hl], a
    adc d
    ld l, c
    call $83a1
    and e
    nop
    xor d
    ld h, h
    ld a, [$d566]
    ld [hl], a
    sub l
    and d
    adc d
    ld h, h
    adc l
    and b
    xor l
    push hl
    ld sp, $0063
    ld sp, hl
    ld c, h
    push de
    ld [hl], c
    call nc, $8b44
    add l
    ld [hl], d
    ld b, h
    ld a, [hl+]
    ld h, a
    ld c, h
    ret z

    push de
    ld [hl], d
    nop
    ld c, [hl]
    db $e4
    adc d
    ld h, l
    ld c, e
    rst $00
    ld l, b
    ld b, e
    add b
    db $eb
    push de
    ld [hl], e
    ld b, [hl]
    pop hl
    ld sp, hl
    daa
    nop

jr_058_5a2a:
    dec b
    ld c, b
    nop
    jp hl


    db $d3
    ld h, $56
    ld b, e
    ld a, [bc]
    ld b, h
    ld a, $68
    ret nz

    add sp, -$74
    ret z

    nop
    ld b, c
    db $ec
    call c, $fc21
    ld [c], a
    jr nz, jr_058_5a2a

    or d
    push hl
    ld a, [hl]
    daa
    ld l, c
    ld b, [hl]
    ld a, c
    ld l, d
    nop
    sub h
    dec h
    sub e
    ld b, a
    call $c028
    call z, $e7df
    ld a, [bc]
    or c
    rrca
    daa
    rrca
    ld c, c
    nop
    ret nz

    ret z

    dec bc
    rst $00
    cp [hl]
    ld l, b
    ccf
    rst $20
    ld b, a
    ld l, c
    ld a, e
    ld a, [hl+]
    pop bc
    rlca
    ld l, [hl]
    daa
    nop
    ret nz

    rst $20
    sub l
    ld h, $52
    ld b, l
    sub h
    ld [$cb40], sp
    ld h, [hl]
    jp hl


    ld a, l
    adc [hl]
    ret


    db $ec
    nop
    call z, Call_058_40e6
    rst $00
    ld a, $12
    ld a, a
    rst $00
    sbc $2d
    ld a, c
    ld b, $77
    adc b
    rst $00
    halt
    pop af
    ld b, a
    ld bc, $9567
    xor $81
    inc b
    add c
    ld l, h
    add b
    ei
    ld d, $af
    ld a, d
    ld hl, sp+$00
    ld e, a
    ld [$c612], a
    ld a, l
    ld a, [bc]
    rst $38
    ei
    ld e, $f0
    ld a, l
    dec c
    ld a, [$afcc]
    rst $08
    nop
    jp c, Jump_058_7dc8

    ld de, $dfba
    xor b
    sbc e
    rst $38
    rst $38
    xor b
    sbc e
    rst $38
    rst $38
    xor b
    sbc h
    nop
    rst $38
    rst $38
    xor b
    sbc e
    rst $38
    rst $38
    xor b
    sbc e
    rst $38
    rst $38
    xor b
    sbc d
    rst $38
    rst $38
    xor b
    sbc e
    nop
    rst $38
    rst $38
    jr z, @-$42

    rst $38
    rst $38
    ld l, c
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]

Jump_058_5ae1:
    rst $38
    rst $38
    rst $38
    nop
    cp b
    dec hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, d
    add e
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
    cp a
    rst $38
    rst $38
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
    ei
    ld e, d
    ld e, e
    rst $38
    ldh [$5a], a
    ld e, h
    ld e, l
    ld e, l
    ld e, h
    cpl
    ld e, e
    ld e, d
    adc h
    ld c, [hl]
    rst $38
    db $e3
    nop
    rst $38
    rst $38
    rst $20
    and $1e
    jp Jump_058_5be0


    ld e, h
    ld e, l
    ld sp, $e0ff
    cp [hl]
    ldh [$bf], a

jr_058_5b49:
    db $e4
    db $fc
    jp z, $c0ff

    jp hl


    ld e, e
    ld h, b
    ld sp, $3e31
    ld b, [hl]
    rra
    ld b, [hl]
    ld a, $31
    ld sp, $bf60
    db $e4
    jp z, $e8ff

    rst $20
    db $fd
    ld e, d
    pop bc
    ldh [$3e], a
    ld b, [hl]
    ld [hl], $65
    ld h, l
    ld [hl], $e3
    ld b, [hl]
    ld c, l
    cp a
    push hl
    jp z, Jump_058_40ff

    add sp, $5f
    ld sp, $8449
    jp nz, $fee0

    pop hl
    ld [hl-], a
    cp a
    ldh [$fc], a
    jp nz, $ffca

    nop
    add sp, $5e
    rlca
    ld sp, $6839
    rst $38
    db $e4
    cp a
    push hl
    jp z, $e8ff

    rst $20
    add c
    ldh [$03], a
    ld c, b
    ld l, h
    rst $38
    push hl
    ld a, [hl]
    pop hl
    cp e
    ret nz

    jp z, $e8ff

    rst $20
    add c
    ldh [rIE], a
    ld l, e
    jr nc, @+$32

    ld l, l
    ld l, b
    ld l, b
    ld l, l
    jr nc, jr_058_5b49

    rst $38
    ldh [$3d], a
    ldh [$5f], a
    ld e, e
    adc h
    jp z, $e8ff

    rst $20
    ld sp, $c0be
    pop hl
    ld l, l
    ld l, d
    jr nc, @+$32

    ld l, d
    cp a
    pop hl
    ld l, l
    sbc a
    add hl, sp
    ld sp, $5b5e
    ld e, e
    jp z, $c0ff

    jp hl


    ld c, c
    db $eb
    ld c, b
    ld l, l
    call nz, Call_058_69e2
    ld a, c
    ldh [$67], a
    ld d, d
    ld sp, $6159
    ret nz

    rst $38
    add b
    db $eb

Jump_058_5be0:
    ld sp, $8539
    db $e3
    ld l, c
    pop bc
    ldh [$b3], a
    ld h, a
    ld d, e
    ret nz

    rst $38
    ret nz

    xor $49
    ld [hl], $46
    pop hl
    ld l, d
    ld h, l
    ld l, l
    pop bc
    ldh [$67], a
    ld b, b
    rst $38
    db $ed
    db $ec
    ld [de], a
    ld de, $a182
    add hl, sp
    ld [hl], $c1
    db $e3
    cp h
    and c
    ld e, a
    ld e, e
    adc [hl]
    jp z, $e8ff

    rst $20
    ld a, e
    ld [hl+], a
    ld hl, $e3be
    ld d, l
    ld d, h
    ld d, l
    ld d, l
    inc a
    and e
    di
    adc [hl]
    ld c, a
    jp z, $e8ff

    rst $20
    jr nz, jr_058_5c31

    ld hl, $c12b
    ld bc, $81c1
    db $fc
    db $e3
    pop bc
    pop hl
    ret nz

    rst $38
    ret nz

    jp hl


    jr nz, jr_058_5c41

jr_058_5c31:
    nop
    ret nz

    rst $20
    dec sp
    add b
    pop bc
    ldh [$c0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_058_5c41:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_058_5c5d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_5d5d

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
    ld e, l
    ld l, d
    ld e, l
    ld c, d
    ld e, a
    inc d
    ld h, c
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

jr_058_5d5d:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, a
    dec bc
    ld l, e
    dec bc
    ld l, h
    inc c
    rst $38
    db $e4
    dec bc
    rst $38
    db $e4
    inc b
    ldh a, [$e5]
    add sp, -$1d
    ld c, h
    rst $38
    pop hl
    ld a, [$fde0]
    pop hl
    rst $38
    rst $28
    ret nz

    ldh [$0e], a
    db $f4
    rst $20
    dec bc
    dec hl
    dec hl
    ret nz

    rst $28
    or h
    ld [$efc0], a
    add c
    rst $20
    sub b
    add b
    ld [c], a
    cp [hl]
    pop hl
    ret nz

    rst $30
    add b
    ldh a, [$0b]
    ld h, b
    ld [c], a
    ld h, l
    ldh [rOCPD], a
    ldh [$c2], a
    pop hl
    cp [hl]
    ld [c], a
    jp z, $80ff

    jp hl


    ld a, [bc]
    db $e3
    ld l, e
    ld l, e
    ld c, e
    db $10
    rst $38
    db $e3
    ld b, b
    rst $28
    rst $38
    call nz, $e600
    inc l
    ld sp, hl
    jp hl


    jp z, $87e0

    pop hl
    add e
    ld l, e
    ld l, e
    ld b, $e2
    cp $c0
    cp [hl]
    ldh [rP1], a
    rst $38
    add b
    db $eb
    dec hl
    sbc b
    pop bc
    pop hl
    rst $00
    ldh [$b4], a
    db $e3

jr_058_5dd5:
    ld c, e
    ld c, e
    ld c, d
    rst $38
    add b
    ret z

    ld c, d
    ret nz

    adc d
    ret nz

    pop bc
    push hl
    scf
    ld [c], a

Call_058_5de3:
    ret nz

    db $ed
    pop hl
    call nz, $f700
    ld l, e
    dec bc
    ld d, b
    add d
    db $e3
    ld bc, $c0c5
    rst $18
    rst $18
    xor b
    ld a, [bc]
    ret nz

    pop hl
    dec hl
    ld b, d
    pop hl
    sub b
    jp nz, Jump_000_3ea0

    db $e3
    ret nz

    rst $38
    add b
    bit 1, e
    ret nz

    push hl
    ld a, [hl]
    jp Jump_000_006b


    ret nz

    db $ec
    ld b, b
    db $ed
    add c
    jp nz, $c47c

    ld c, h
    and e
    cp a
    pop hl
    add [hl]
    jp nz, $c33d

    nop
    add b
    rst $38
    ld b, b
    xor c
    ccf
    ldh [$7e], a
    ldh [rSCX], a
    db $e4
    inc a
    ld [c], a
    add b
    cp a
    ret nz

    xor l
    ld h, d
    ret z

    and e
    dec hl
    cp [hl]
    jp $88ef


    rst $30
    or c
    inc l
    inc l
    ret nz

    and b
    nop
    ei
    ldh [$ba], a
    and h
    adc h
    add b
    ld a, [hl]
    pop hl
    dec sp
    push hl
    ret nz

    ldh a, [rLCDC]
    call z, $ecc0
    nop
    jp $bbe3


    pop hl
    cp a
    and $80
    or a
    jr c, jr_058_5dd5

    add c
    db $ec
    ld d, $b4
    dec bc
    add c
    nop
    dec c
    add l
    ret nz

    xor e
    ret nz

    ld a, [$bf0d]
    rst $38
    rst $38
    db $fd
    db $fc
    pop bc
    pop bc
    jp nz, Jump_000_00c1

    ld a, [$d3e0]
    rst $38
    ret nz

    rst $38
    nop
    push af
    db $10
    ld h, h
    dec c
    ld h, h
    nop
    db $eb
    rst $38
    rst $18
    nop
    dec c
    ld a, b
    ret nz

    ld a, [$9b55]
    rst $38
    rst $38
    or l
    rst $38
    ccf
    rst $18
    cp a
    rst $18
    ret nz

    ld a, [$3d00]
    rst $38
    db $fc
    add d
    sbc b
    rst $38
    swap e
    ld a, l
    inc hl
    ret nz

    rst $38
    ld c, d
    call z, $8d7c
    nop
    adc l
    rst $38
    db $fc
    db $db
    adc b
    rst $38
    or c
    rst $38
    rst $38
    rst $38
    xor [hl]
    call Call_058_66ca
    ld bc, $00ff
    ld b, l
    push de
    jp Jump_000_3e81


    ld hl, $9000
    sbc c
    rst $08
    cp l
    push af
    pop bc
    cp a
    pop bc
    ei
    nop
    db $fc
    ld b, e
    jp Jump_058_48df


    ld l, e
    cp d
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, l
    or b
    nop
    pop bc
    ld d, b
    ld e, a
    ld l, $eb
    xor $40
    rst $38
    db $e3
    adc [hl]
    ret


    cp a
    and e
    sbc a
    adc h
    rst $38
    nop
    rst $38
    rst $38
    ret nz

    rst $38
    add b
    cp $c1
    rst $38
    db $e4
    ld l, [hl]
    ld e, [hl]
    ld a, [hl+]
    ret nz

    rst $38
    ret nz

    ei
    nop
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add [hl]
    ld a, [bc]
    nop
    nop
    nop
    cp a
    ld e, e
    ld e, a
    ld sp, $1615
    jr nz, @+$01

    ld [c], a
    nop
    sub a
    ld sp, $5b61
    rst $38
    ld [c], a
    nop
    rst $38
    rst $38
    rst $20
    and $5b
    rst $28
    ld e, [hl]
    ld sp, $2817
    ret nz

    push hl
    ld sp, $5c5d
    ld [hl], h
    ret nz

    rst $38
    db $ec
    db $eb
    ld h, b
    add c
    and $0a
    dec bc
    ld sp, $e0ff
    ld a, b
    cp [hl]
    pop hl
    jp z, $e8ff

    rst $20
    ld sp, $2931
    dec b
    rst $38
    pop hl
    ldh [$c2], a
    db $e3
    cp [hl]
    db $e3
    jp z, $c0ff

    jp hl


    ret z

    db $e3
    ld c, l
    ld a, [hl-]
    ld d, h
    ccf
    ld d, h
    ld d, l
    ld d, h
    ld d, l
    ld b, [hl]
    ld b, a
    ld a, e
    ldh [$ca], a
    rst $38
    ld [hl], d
    add sp, -$19
    ld h, d
    rst $38
    ldh [$c1], a
    pop hl
    ld [hl-], a
    ld h, a
    ld l, b
    rst $38
    ld [c], a
    ld b, a
    ld e, c
    dec sp
    ld c, l
    ret nz

    rst $38
    ret nz

    ret


    adc l
    ret nz

    ld h, c
    pop bc
    pop hl
    ei
    ld l, d
    ld l, l
    rst $38
    pop hl
    jr nc, jr_058_5fee

    jr nc, jr_058_5ff2

    ld c, l
    add h
    jp z, $80ff

    ret z

    ld e, d
    ret nz

    ldh [$c1], a
    push hl
    jp nz, $bfe0

    ldh [$39], a
    ld a, h
    jp z, $80ff

    ld [$315f], a
    add hl, sp
    ld h, [hl]
    ld l, c
    jp nz, Jump_058_47e6

    jr nc, jr_058_600f

    ld d, d
    jp z, $e8ff

    rst $20
    add c
    ldh [$5e], a
    ret nz

    db $e3
    ld c, d
    ld b, l
    ldh [rOCPS], a
    db $fc

jr_058_5fee:
    ret nz

    ld l, d
    ret nz

    rst $38

jr_058_5ff2:
    nop
    db $ec
    ld h, b
    jp nz, $16c0

    ret nz

    ld [c], a
    ld l, d
    ld l, h
    rst $38
    pop hl
    ld l, d
    ret nz

    rst $38
    ret nz

    call z, $e0bf
    ld a, [de]
    ld b, d
    ret nz

    ld [hl], $c1
    db $e3
    ld l, h
    ld l, h
    ret nz

    rst $38

jr_058_600f:
    ret nz

    call z, $e07e
    sbc $85
    and b
    ld c, e
    dec [hl]
    ld l, h
    ld l, h
    add c
    ret nz

    ld l, h
    ld l, h
    ld a, c
    add e
    jp z, Jump_058_40ff

    bit 3, e
    ld e, e
    ld e, h
    ld e, l
    ei
    and b
    dec a
    add hl, sp
    pop bc
    pop hl
    jr nc, jr_058_6060

    ld b, d
    add h
    jp z, Jump_000_00ff

    jp z, Jump_058_7e38

    pop hl
    ld a, [$40c3]
    pop bc
    ld [hl], $72
    add b
    jp z, $80ff

    jp z, Jump_058_4b3a

    add d
    ld e, d
    ld a, [$6ec4]
    ld l, a
    add b
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

jr_058_6060:
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_6173

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
    ld d, b
    ld h, c
    add b
    ld h, c
    rla
    ld h, h
    push de
    ld h, l
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

jr_058_6173:
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
    ld c, h
    inc c
    dec bc
    dec bc
    dec bc
    ld l, e
    sbc $fc
    ldh [rWX], a
    dec bc
    ld c, e
    ld a, [hl+]
    push af
    ldh [$0b], a
    dec bc
    rlca
    inc c
    inc c
    ld c, h
    db $fd
    ldh [$fc], a
    ldh [$f8], a
    ld [c], a
    ld sp, hl
    ldh [$fb], a
    db $e3
    xor d
    db $fc
    ld a, [c]
    inc l
    ret nz

    ld [c], a
    ld l, e
    rst $38
    ldh [rWX], a
    ret nz

    ldh [$2b], a
    rra
    dec hl
    dec bc
    dec bc
    ld a, [hl+]
    dec bc
    call z, $a8e2
    ldh [$fd], a
    push hl
    ld [hl], h
    or l
    ld [c], a
    cp [hl]
    db $f4
    ld c, e
    add b
    pop hl
    ld l, e
    ld l, e
    dec hl
    ret nz

    pop hl
    add c
    ld c, e
    add d
    ld [c], a
    add b
    pop hl
    ret nz

    add sp, -$47
    ldh [$b2], a
    ld [c], a
    cp d
    db $f4
    ld c, e
    ld b, a
    inc l
    ld c, h
    inc c

jr_058_61db:
    pop bc
    ldh [$c0], a
    ld [c], a
    pop bc
    db $e4
    ld a, [hl+]
    ld c, c
    db $e4
    ldh a, [$7e]
    db $e3
    db $fc
    db $e3
    xor l
    push hl
    jr c, jr_058_61db

    dec hl
    dec bc
    inc c
    dec hl
    sbc h

jr_058_61f2:
    pop bc
    ldh [$80], a
    db $e4
    ld c, e
    dec bc
    ld a, [hl+]
    db $fd
    ret nz

    nop
    db $fc
    inc l
    nop
    ld sp, hl
    jp hl


    rrca
    ldh [$81], a
    pop hl
    ld b, b
    db $e3
    ld a, $e1
    ret nz

    pop hl
    nop
    pop af
    jr c, jr_058_61f2

    ld b, $00
    rst $28
    dec hl
    dec bc
    add d
    ldh [rLCDC], a
    db $e4
    ld a, a
    pop hl
    nop
    push af
    ld [hl], h
    add $12
    ld [hl], l
    rrc e
    ret nz

    rst $20
    ld a, $c0
    ld c, e
    ld a, $c2
    nop
    or $3a
    ret nc

    nop
    ret nz

    rst $20
    dec b
    pop bc
    ld a, a
    db $e3

jr_058_6234:
    inc b
    call nz, $c382
    ld b, b
    and $b8
    rst $00
    ret nz

    ld hl, sp+$20
    ei
    and b
    nop
    ret nz

    ret nz

    or d
    ld [hl], d
    jp $ce00


    ld a, [hl+]
    ld a, a
    rst $28
    pop bc
    ei
    nop
    add c
    jp nz, $c47c

    ret nz

    and b
    cp a
    push bc
    ld a, $e3
    cp e
    and d
    add c
    sub $14
    and b
    add b
    rst $00
    and $00
    add $bf
    db $eb
    add b
    and l
    add c
    ret nc

    add hl, sp
    and h
    db $f4
    adc e
    ld a, [hl+]
    ld b, h
    ret nz

    rst $20
    cp a
    push hl
    ld a, [bc]
    add c
    or h
    db $fd
    jp $82b0


    inc l
    rst $38
    ldh [rP1], a
    ld b, b
    call nz, $8185
    ld a, a
    and c
    ld a, [$c2a1]
    ld [c], a
    ld b, b
    ldh [$81], a
    pop de
    ld [hl], b
    add $00
    ld a, [hl-]
    ld [c], a
    ret nz

    ld [$c044], a
    add d
    and e
    cp a
    ld [c], a
    ret nz

    db $e3
    ld c, $cc
    ld bc, $00e5
    cpl
    add e
    add c
    rst $20
    jr z, jr_058_6234

    rlca
    sub h
    ccf
    and $34
    add e
    ret nz

    jp hl


    dec d
    db $d3
    nop
    rlca
    xor c
    add $a4
    ld b, b
    and a
    or d
    ld l, c
    push de
    ld [hl], l
    rlca
    xor c
    or [hl]
    ld h, e
    ld a, b
    ld h, [hl]
    nop
    ld bc, $36e4
    rst $00
    push de
    ld l, [hl]
    ld b, a
    and l
    ccf
    ld h, l
    or h
    ld l, b
    add hl, sp
    and l
    ret nz

    push hl
    nop
    push de
    ld [hl], d
    ret nz

    ld h, l
    ld b, a
    ld h, a
    ld hl, sp-$7d
    ld a, d
    push bc
    ld a, $c2
    adc $df
    add [hl]
    ret z

    inc b
    ccf
    ld h, e
    ld l, c
    rst $20
    ld c, h
    nop
    push bc
    pop de
    rst $00
    sub d
    ld c, d
    add e
    ld b, h
    ret


    ld h, [hl]
    nop
    ld a, [$1044]
    and $4e
    ret


    sub d
    ld d, h
    ld b, a
    ld c, b
    dec h
    xor $40
    rst $20
    xor l
    rst $20
    nop
    sub d
    ld l, h
    ld b, a
    ld b, a
    ld a, [hl-]
    ret


    ld h, b
    and $bf
    xor b
    sub d
    ld d, c
    dec bc
    ld b, d
    cp d
    ld l, b
    nop
    ei
    ld b, [hl]
    or b
    dec l
    sub [hl]
    ld h, $92
    ld l, e
    ld c, l
    add sp, -$78
    ret z

    cpl
    ld b, l
    ld [hl], c
    jr z, jr_058_6328

jr_058_6328:
    dec de
    ld b, l
    ld de, $47ac
    ld l, e
    adc b
    ret z

    ld h, [hl]
    db $e4
    sub $e8
    rst $20
    daa
    adc e
    ret z

    nop
    add $89
    adc b
    jp z, $e9d0

    sbc b
    ret


    sbc [hl]
    xor a
    pop af
    adc d
    ld [bc], a
    xor l
    xor a
    inc c
    nop
    rst $08
    add [hl]
    sbc [hl]
    and [hl]
    ld d, e
    xor b
    adc b
    ret z

    or a
    adc h
    inc a
    db $eb
    sbc [hl]
    xor c
    set 1, d
    nop
    ld b, d
    adc $40
    pop bc
    jp $f989


    add sp, $18
    add a
    or l
    and $7b
    ld a, [hl+]
    ld b, a
    ld h, d
    ld b, b
    nop
    adc h
    sbc [hl]
    or e
    push bc
    ld h, [hl]
    jp hl


    xor d
    ld [$8162], sp
    ld l, e
    inc l
    sbc [hl]
    or e
    nop
    ld d, e
    and l
    ld a, e
    dec hl
    jp nz, $c34b

    db $f4
    or l
    ldh a, [rNR14]
    jp hl


    dec c
    ld l, h

jr_058_638a:
    inc c
    rst $20
    nop
    and $f3
    jp hl


    xor d
    ld bc, $726d
    adc h
    ld a, [hl+]
    jp hl


    jp hl


    or b
    ret nz

    pop af
    ld sp, hl
    ld hl, sp+$00
    jp hl


    or b
    set 7, a
    jp hl


    cp e
    ret


    rst $38
    ld h, l
    ld c, [hl]
    jp c, $c86b

    rst $38
    or c
    cpl
    nop
    xor h
    ld c, c
    set 7, a
    jp hl


    cp b
    add b
    rst $38
    ld a, a
    pop de
    call nz, $c76a
    rst $38
    pop af
    dec c
    nop
    ld a, h
    adc c
    ret nz

    rst $38
    ld l, b
    sub b
    inc a
    adc c
    rst $38
    rst $38
    or d
    or e
    call $ffbf
    rst $38
    nop
    rst $38
    rst $38
    sub [hl]
    rst $38
    jr jr_058_638a

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
    jp c, Jump_000_0033

    nop
    nop
    rst $38
    rla
    jr z, jr_058_643b

    nop
    ld sp, $3131
    ld c, l
    rst $38
    ld d, [hl]
    ld d, [hl]
    ld d, a
    ld c, l
    ld sp, $5a5f
    ld e, e
    or d
    rst $38
    pop hl
    nop
    rst $38
    rst $38
    rst $20
    and $15
    ld d, $c0
    pop hl
    ld c, l
    ld a, a
    ld [hl-], a
    ld l, d
    ld l, l
    ld l, l

jr_058_643b:
    add hl, sp
    ld sp, $c15e
    pop hl
    ld a, c
    ld e, d
    ret nz

    rst $38
    jp hl


    add sp, $31
    rla
    jr z, jr_058_644a

jr_058_644a:
    pop bc
    ldh [rNR33], a
    ld l, e
    ret nz

    ldh [rOBP0], a
    ld c, c
    ld h, c
    add c
    ld [c], a
    ret nz

    rst $38
    ret nz

    jp hl


    cp a
    dec d
    ld d, $0f
    ld c, l
    ld [hl-], a
    ld l, c

jr_058_6460:
    ret nz

    pop hl
    ld l, d
    push hl
    ld d, c
    ret nz

    db $e3
    ld e, d
    jp z, $e8ff

    rst $20
    ld e, [hl]
    ld sp, $f704
    ld sp, $6b39
    ret nz

    db $e3
    add hl, sp
    ld sp, $5b5f
    pop af
    ld e, d
    db $fd
    ret nz

    jp z, $e8ff

    rst $20
    ld e, a
    ld sp, $4931
    adc l
    ld c, b
    ret nz

    db $e4
    ld c, b
    ld c, c
    rst $38
    ret nz

    ret nz

    rst $38
    db $eb
    ld [$2f5b], a
    ld h, c
    ld sp, $6b51
    add b
    db $e4
    ld l, e
    ld a, a
    pop hl
    nop
    rst $38
    jr nz, jr_058_6460

    rst $30
    ld a, a
    ldh [$3e], a
    pop bc
    jp z, $80ff

    add sp, $5e
    add b
    add sp, $7f
    db $e4
    inc d
    jp z, Jump_058_40ff

    add sp, $5f
    nop
    push hl
    jr nc, jr_058_6537

    db $e3
    nop
    rst $18
    nop
    db $eb
    inc bc
    ld e, d
    ld e, [hl]
    add b
    ret nz

    cp a
    and $fe
    jp nz, $ffca

    ret nz

    ret z

    ld a, a
    db $e3
    nop
    ld a, [hl]
    push hl
    ld a, l
    jp nz, $ffca

    ret nz

    jp hl


    ld a, [hl]
    ret nz

    ld a, a
    ldh [$3d], a
    db $e4
    ret nz

    rst $38
    inc a
    db $ed
    db $ec
    adc $80
    ld h, c
    ld sp, $3649
    cp a
    push hl
    cp l
    and d
    ld a, h
    jp z, Jump_058_40ff

    db $eb
    ld sp, $6f70
    ld l, [hl]
    ld c, d
    ei
    and c
    rst $00
    ld b, h
    ld b, l
    ld c, l
    ccf
    pop bc
    jp z, Jump_000_00ff

    jp hl


    ld e, [hl]
    ld sp, $70ff
    xor [hl]
    add b
    add b
    ld a, b
    ld a, l
    ld a, h
    ld a, l
    rlca
    ld a, l
    xor a
    ld sp, $df40
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_058_6537:
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_6634

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
    ld de, $4166
    ld h, [hl]
    push de
    ld l, b
    jp nc, $f86a

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

jr_058_6634:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    db $fd
    dec bc
    rst $38
    ldh [rOCPD], a
    dec bc
    ld l, e
    ld l, e
    ld c, e
    ld c, e
    rla
    dec bc
    dec bc
    inc c
    rst $38
    and $4c
    rst $38
    push hl
    push af
    pop hl
    jp hl


    pop hl
    or e
    inc l
    inc l
    db $e3
    rst $20
    or $ea
    dec bc
    ld a, [bc]
    ret nz

    ld [c], a
    dec bc
    ld de, $c00b
    ldh [$d5], a
    db $e3
    pop bc
    ld [c], a
    inc c
    jp z, $f1e1

    db $e4
    cp a
    pop hl
    ld [hl], d
    pop bc
    push af
    inc c
    pop bc
    db $e3
    ret nz

    pop hl
    ld c, e
    dec bc
    inc l
    ret nz

    push hl
    ld b, b
    adc d
    db $e3
    cp l
    db $e4
    add b
    db $e3
    ld h, h
    ld [c], a
    ld a, d
    ldh a, [rSTAT]
    ld [c], a
    dec hl
    ld a, [hl-]
    pop hl
    add b
    ld a, a
    jp hl


    cp c
    add sp, -$13
    jp hl


    dec sp
    ldh a, [rP1]
    pop hl
    ret nz

    db $e3
    ld a, e
    ldh [$2c], a
    ld [bc], a
    inc de
    ld [c], a

jr_058_66a3:
    dec bc
    adc d
    and $01
    and $80
    push hl
    cp d
    jp hl


    xor $c3
    ret nz

    ld [c], a
    nop
    ld bc, $b8e0
    jp $c2cd


    cp b
    ret nz

    rst $38
    pop bc
    jp nz, $c1c2

    pop bc
    call nz, Call_000_01c1
    inc l
    cp [hl]
    push de
    add $e3
    ld a, [$b9e4]

Call_058_66ca:
    ret nz

    ret nz

    push hl
    cp [hl]
    call nz, $c0b7
    pop de
    inc l
    ret nz

    ld [c], a
    ld a, [$7be3]
    rst $08
    inc l
    cp a
    add sp, $2b
    dec hl
    add b
    ld a, [hl-]
    pop bc
    jr c, jr_058_66a3

    ld c, b
    push bc
    ld b, c
    jp nz, $c245

    cp e
    ld [c], a
    ld a, d
    pop af
    inc l
    ld bc, $ff4c
    add $ba
    ret nz

    cp [hl]
    ldh [$c0], a
    rst $20
    ld b, b
    push hl
    pop bc
    db $e3
    cp d
    db $e4
    inc e
    ret nz

    xor $7f
    ld [c], a
    dec hl

jr_058_6704:
    dec hl
    dec hl
    add d
    ldh [$7a], a
    call nz, $e100
    nop
    ld a, a
    db $d3
    ld a, d
    db $e3
    ld e, e
    res 7, a
    pop hl
    pop bc
    ldh [$fd], a
    pop hl
    ld a, [hl-]
    jp nz, $a178

    nop
    jp $80a6


    and l
    add b
    rst $20
    ld h, c
    and h
    ld [hl], c
    xor b
    ld a, $e0
    ret nz

    add sp, $00
    ld [c], a
    nop
    ret nz

    jp $e83f


    ld b, a
    db $eb
    ld a, a
    db $f4
    db $fc
    add d
    or h
    and c
    add c
    call nz, $c23b
    db $10
    ret nz

    xor e
    ld b, b
    ldh a, [rNR51]
    and b
    add [hl]
    pop bc
    ld l, e
    cp l
    add c
    cp $e0
    ld [hl], h
    and c
    nop
    call nz, Call_058_6d89
    xor d
    pop bc
    add $2b
    jp $e7c0


    cp a
    ld [c], a
    pop bc
    ld [c], a
    or l
    pop bc
    ret nz

    ld e, h
    add sp, $3f
    xor h
    ccf
    and $77
    ret


    dec a
    jp nz, $e702

    ld l, e
    ld c, e
    nop
    add l
    add h
    rst $38
    and l
    jp nz, $2aee

    add b
    jr nc, jr_058_6704

    rla
    and $8a
    add e
    ld c, e
    db $e3
    nop
    ld [$8083], sp
    pop af
    inc h
    and c
    ldh a, [$66]
    ld e, d
    and l
    ret nz

    db $e4
    ret


    ld [hl], l
    sub b
    db $ed
    nop
    db $f4
    db $ec
    sub l
    call nz, $e37b
    ld e, d
    ret z

    db $db
    ret z

    jr z, @-$73

    ld [hl], b
    ld h, b
    ld l, [hl]
    ld h, [hl]
    nop
    ld d, [hl]
    call nz, $a60b
    cp c
    add sp, -$40
    db $f4
    ld l, h
    add d
    ld l, $67
    ld d, $e4
    add d
    ld l, d
    nop
    adc d
    ret nc

    cp d
    ld l, b
    rst $30
    sub b
    jp nc, $c944

    ld [hl], c
    nop
    ld h, [hl]
    inc [hl]
    and h
    or a
    adc d
    nop
    ld c, d
    and $77
    push bc
    ret


    ld l, a
    ret nz

    ld l, d

Call_058_67cd:
    dec e
    ld l, [hl]
    ld b, a
    rst $00
    ret


    ld a, b
    ld b, [hl]
    add [hl]
    nop
    ld [hl], c
    ld h, h
    scf
    adc b
    ld e, d
    ld h, e
    sub a
    ld h, c
    ret


    ld [hl], l
    ld b, [hl]
    add a
    push bc
    and l
    rst $30
    ld h, a
    nop
    add sp, $22
    sub $22
    ret


    and l
    ret


    ld l, a
    ret nz

    ld h, [hl]
    ldh a, [$85]
    or d
    inc l
    sub d
    and a
    nop
    ld a, a
    sbc $72
    ld l, $96
    ld b, h
    adc d
    or l
    add b
    db $eb
    ld [hl], d
    ld [hl-], a
    ld d, e
    jr c, jr_058_6847

    xor $00
    xor c
    xor l
    ld d, e
    add hl, sp
    ld b, d
    pop af
    xor c
    cp c
    adc d
    cp h
    add $89
    or e
    adc l
    adc d
    or l
    nop
    pop bc
    pop de
    ld [hl], d
    dec l
    jp nz, Jump_058_5388

    ld a, $72
    dec hl
    ld b, $a8
    ld d, e
    ld sp, $d341
    nop
    xor c
    xor e
    ld l, l
    ld bc, $b88a
    ld bc, $81d6
    db $eb
    adc d
    or l
    sbc [hl]
    rst $18
    pop af
    dec hl
    nop
    add hl, bc
    sub h
    ld [hl], d
    dec [hl]
    pop hl
    db $fd
    rst $38
    ld h, $72
    dec sp
    ld d, e

jr_058_6847:
    ld [hl], $6d
    ld b, l
    ld [hl], d
    dec [hl]
    nop
    add c
    jp z, $f1e1

    ld h, $84
    ld [hl], d
    dec [hl]
    ld b, a
    ld l, b
    ld d, e
    ld [hl-], a
    db $e3
    sub b
    add sp, $54
    nop
    ld d, e
    ld [hl], $af
    ld h, a
    ld [hl], d
    ld [hl], $53
    ld [hl], $e6
    and e
    daa
    ld c, b
    ld a, [c]
    inc d
    ld d, e
    dec [hl]
    nop
    ld b, b
    and $81
    call nz, Call_000_282a
    ret nz

    rst $08
    pop hl
    db $f4
    or c
    inc h
    ld e, [hl]
    ld c, d
    pop bc
    or b
    nop
    pop hl
    db $f4
    ld b, b
    push hl
    ld e, h
    jp hl


    rst $38
    rst $38
    adc h
    inc sp
    db $ec
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    sub [hl]
    rst $38
    ld a, [c]
    add hl, de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    db $ed
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

jr_058_68bd:
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
    xor l
    inc de
    nop
    nop
    nop
    db $fd
    ld e, e
    rst $38
    ldh [$5f], a
    ld sp, $3a4d
    dec sp
    ld c, l
    ld e, a
    ld sp, $2b31
    inc l
    jr nz, @+$01

    ld [c], a
    nop
    rst $38
    rst $38
    cp $e7
    and $5b
    ld e, d
    ld e, e
    ld e, e
    ld e, [hl]
    ld sp, $7f39
    ld l, l
    ld l, l
    add hl, sp
    ld sp, $1731
    jr z, jr_058_68bd

    rst $38
    db $fc
    xor $ed
    pop bc
    ldh [$5f], a
    ld sp, $4849
    ld l, l
    ld l, l
    ld e, a
    ld c, b
    ld c, c
    ld sp, $1615
    ret nz

    ld [c], a
    ld [$ffca], sp
    ld e, h
    add b
    add sp, -$7f
    pop hl
    ld d, c
    ld l, d
    ld l, l
    ld a, a
    add sp, $15
    jp z, $beff

    ret nz

    jp hl


    ld h, b
    ld sp, $5131
    ld h, a
    cp a
    ldh [$93], a
    ld e, a
    sub l
    ld sp, $2715
    ld [hl+], a
    ld b, d
    ldh [$31], a
    jp z, $9eff

    add sp, -$19
    ld h, d
    ld h, d
    ld sp, $0131
    ldh [$bf], a
    ldh [$30], a
    ld a, a
    sbc l
    sub l
    ld sp, $1211
    ld hl, $c028
    rst $38
    cp h
    ld [$c2e9], a
    ldh [$31], a
    ld sp, $6d53
    cp a
    ldh [$30], a
    cpl
    sbc l
    add [hl]
    sub l
    ld sp, $e0be
    rrca
    ret nz

    rst $38
    jp hl


    add sp, -$0b
    add hl, hl
    cp a
    pop hl
    ld d, d
    ld bc, $65e0
    ld h, l
    sub h
    sbc h
    rst $00
    sbc h
    sub [hl]
    sub a
    or b
    pop hl
    jp z, $e8ff

    rst $20
    ld d, $15
    cp [hl]
    add b
    pop hl
    ld l, c
    ld l, l
    ld l, l
    ld l, h
    ld l, h
    cp l
    ldh [$99], a
    or e
    sbc b
    ld c, c
    ret nz

    rst $38
    db $eb
    ld [$1728], a
    add b
    pop hl
    ld l, c
    rst $38
    ld l, c
    ld l, l
    ld l, h
    ld l, l
    ld h, a
    ld l, h
    ld l, h
    ld h, a
    ret c

    ld sp, hl
    and c
    ret nz

    rst $38
    jp hl


    add sp, $20
    ld d, $3e
    ldh [$39], a
    ld l, c
    ld l, a
    ld l, c
    ld l, e
    ld l, l
    ld h, a
    cp l
    ldh [rOCPD], a
    ld h, [hl]
    ld sp, hl
    and b
    db $f4
    ret nz

    rst $38
    ret nz

    jp hl


    jr nz, jr_058_69f9

    ldh [rOBP1], a
    ld c, b
    ld l, c
    ld l, e
    ld e, a
    ld h, [hl]
    ld l, e
    ld l, l
    jr nc, jr_058_6a31

    ld a, [$50e0]
    ret nz

    rst $38
    inc h
    ret nz

    db $eb
    ld a, $e1
    add hl, sp
    ret nz

    ld [c], a
    add b
    ld [c], a
    xor a
    ret nz

    rst $38
    add b
    db $eb
    xor [hl]
    rst $08
    and b
    ld sp, $324d
    ld a, $c0

Call_058_69e2:
    ld l, h
    nop
    pop hl
    add e
    pop af
    add c
    ret nz

    rst $38
    ret nz

    rst $28
    cp a
    ld [c], a
    ld h, l
    ld h, l
    ld h, l
    ld l, l
    ld c, a
    ld [hl], $84
    xor c
    xor e
    ret nz

    rst $38

jr_058_69f9:
    add b
    db $eb
    jr z, jr_058_6a3a

    pop bc
    rst $38
    ld c, l
    ld b, l
    ld d, h
    ld d, h
    ld d, l
    ld d, h
    ld l, [hl]
    ld l, a
    rrca
    add b
    add b
    xor d
    ld e, b
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

jr_058_6a31:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

jr_058_6a3a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_058_6a6f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_6b31

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
    ld c, $6b
    ld a, $6b
    pop hl
    ld l, l
    ret nz

    ld l, a
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

jr_058_6b26:
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp

jr_058_6b31:
    dec h

Jump_058_6b32:
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    cp l
    ld c, e
    rst $38
    pop hl
    dec bc
    dec bc
    ld l, e
    dec bc
    rst $38
    ld [c], a
    ld c, e
    ld a, e
    dec bc
    dec hl
    rst $28
    ldh [$0c], a
    ld c, h
    inc c
    ld c, h
    rst $38
    ldh [$03], a
    inc c
    inc c
    rst $30
    ldh [$fd], a
    pop hl
    ld hl, sp-$1b
    push af
    ld [c], a
    db $fc
    db $ec
    ret nc

    pop hl
    jr jr_058_6b26

    ldh [$c0], a
    push hl
    cp a
    ldh [$0a], a
    ld c, e
    reti


    ld [c], a
    ret nz

    ldh [$fd], a
    push hl
    nop
    or l
    and $bc
    ldh a, [$8f]
    ldh [$82], a
    and $bf
    db $e3
    add b
    ld [c], a
    ret nz

    rst $20
    ld [hl], h

Jump_058_6b82:
    ldh [rP1], a
    or d
    and $6e
    db $e3
    ret nz

    db $eb
    ld b, a
    ldh [$c1], a
    rst $20
    ld a, h
    db $e3
    push de
    push hl
    call z, Call_058_50e3
    adc d
    db $e4
    dec [hl]
    ld [c], a
    cp h

jr_058_6b9a:
    db $e3
    add hl, sp
    jp hl


    ld c, h
    ret nz

    xor $0b
    ld b, b
    ld [c], a
    inc h
    add d
    and $40
    rst $28
    inc l
    ld sp, hl
    jp $e3f9


    inc l
    inc bc
    rst $20
    dec sp
    push hl
    ld h, c
    ld a, [bc]
    nop
    db $e3
    ld a, [$3fe8]
    add sp, -$44
    call Call_058_4c2c
    jp Jump_000_20c9


    ld b, b

Call_058_6bc2:
    db $e4
    ld h, d
    rst $20
    ld c, $e5
    ld [hl], a
    add $c0
    xor $2c
    add e
    ret nz

    ld b, d
    jp nz, Jump_058_4b03

    ld c, e
    dec sp
    jp $e1c0


    sub e
    jp $c5c0


    inc [hl]
    jp $d1c2


    ld a, $1d

Jump_058_6be1:
    ret nz

Call_058_6be2:
    ld l, h
    dec bc
    dec hl
    ld l, e
    ld l, e
    ld a, [$81a2]
    ld [c], a
    nop
    push af
    pop hl
    sub $c2
    ld a, $c4
    add c
    pop bc
    dec [hl]
    rst $00
    rst $38
    or b
    ld a, $c1
    ret nz

    db $e3
    add d
    ld [hl], l
    jp nz, $c00a

    ld [c], a
    ld a, $c4
    cp $e4
    di
    and [hl]
    add b
    ret nc

    inc c
    jr nz, jr_058_6b9a

    and b
    ret


    and b
    ld a, e
    and d
    ld a, b
    and b
    pop bc
    pop hl
    ld c, e
    sbc [hl]
    jp $c506


    nop
    ret nz

    ret z

    di
    and d
    add c
    jp nz, $c47c

    ret nz

    db $e4
    ld [bc], a
    jp z, $c4c0

    sub b
    xor b
    nop
    ld b, d
    xor b
    rst $38
    xor [hl]
    ld a, [bc]
    and e
    add b
    and l
    rst $30
    ret nz

    ccf
    ldh [rNR34], a
    ret nz

    ld [bc], a
    and e
    ldh [rLY], a
    push hl
    ld sp, $02a7
    rst $28
    ld b, a
    rst $00
    jp nz, Jump_058_4bc4

    ld c, e
    ld c, h
    ld b, b
    ld b, b
    and $81
    call nz, $a706
    cp l
    and l
    rst $38
    ldh [rP1], a
    and h
    ld l, e
    ld c, c
    ret nz

    add d
    cp a
    push hl
    ld l, e
    add d
    pop hl
    nop
    rst $00
    cp c
    ld a, [c]
    ret nz

    db $ec
    inc b
    push bc
    ld c, e
    inc c
    ld a, [$38c1]
    jp nz, Jump_000_0b0a

    add b
    and l
    cp c
    jp nc, $8128

    add c
    rst $20
    nop
    ld e, d
    add sp, $52
    and $94
    jp hl


    cp c
    rst $08
    db $eb
    ld h, c
    ret nz

    jp hl


    jr nz, @-$19

    ld e, $c5
    nop
    res 0, e
    add $6a
    cp c
    res 7, d
    or e
    ld c, $a7
    ld [hl], d
    and $7b
    ld h, [hl]
    nop
    db $eb
    dec bc
    ld c, h
    ld c, h
    jp nz, Jump_000_2cc1

    ld a, c
    add h
    ld e, d
    ld h, [hl]
    ld e, a
    xor d
    add $6b
    nop
    or [hl]
    adc l
    ret nz

    ld [$a617], a
    ld d, e
    and [hl]
    ld c, [hl]
    rst $00
    add hl, bc
    ld h, h
    or [hl]
    adc a
    cp a
    ret z

    nop
    jp hl


    ld c, h
    or b
    rst $20
    add $68
    or [hl]
    adc h
    ld a, a
    res 2, e
    add h
    ei
    and $fa
    and $00
    ld e, [hl]
    res 6, [hl]
    adc b
    ret nz

    reti


    or b
    rst $20
    ld a, a
    ret


jr_058_6cd6:
    or [hl]
    adc h
    ccf
    bit 7, h
    jp nc, $c600

    ld l, e
    db $fd
    xor l
    ld b, b
    and a
    xor h
    ld d, d
    db $10
    xor $b6
    adc h
    jp $fcc8


    or d
    nop
    sub [hl]
    ld h, h
    add e
    ld b, e
    inc a
    ld h, a
    db $fd
    add [hl]
    add e
    push de
    call $8acc
    ld a, [hl+]
    cp d
    add hl, hl
    nop
    add c
    add sp, $6e
    ld [hl], b
    or l
    and a
    add e
    inc hl
    pop bc
    ld b, h
    add c
    ret z

    ld b, c
    db $eb
    push de
    ld sp, $8a00
    db $eb
    or c
    add a
    adc a
    ld a, [c]
    push de
    cpl
    call nz, $81ab
    rst $08
    rst $00
    sub d
    push de
    inc l
    nop
    ld c, h
    rst $20
    ld a, [hl]
    adc [hl]
    jp $bf80


    ld b, [hl]
    push de
    ld sp, $8843
    ld a, [hl]
    ld [hl], d
    ld bc, $00a9
    push de
    ld sp, $8843
    ret z

    rst $00
    cp [hl]
    inc bc
    ld [$c262], sp
    adc c
    push de
    ld [hl-], a
    or l
    jp hl


    nop
    cp h
    ld l, b
    add c
    ldh a, [$d5]
    jr c, jr_058_6cd6

    rrca
    dec a
    inc [hl]
    inc e
    ld [hl], d
    ld c, d
    ld a, [bc]
    or l
    adc c
    nop
    add b
    db $ed
    push de
    ld [hl-], a
    adc d
    daa
    xor b
    ld c, c
    ret nz

    ld a, [c]
    push de
    inc sp
    pop de
    ld c, b
    ld a, e
    ld a, [bc]
    nop
    call nz, $d158
    inc sp
    ld l, c
    and h
    pop af
    ret z

    add c
    ld e, c
    ld b, $33
    ld a, e
    add hl, bc
    ret nz

    db $fd
    nop
    ld a, h
    db $f4
    pop af
    rst $00
    rst $38
    rst $38
    and [hl]
    db $dd
    rst $38
    rst $38
    and [hl]
    rst $10
    ret nz

    rst $38
    and $ae
    nop
    cp h
    ld h, l

Call_058_6d89:
    or d
    jr z, @+$01

    rst $38
    scf
    adc c
    ret nz

    add sp, -$01
    rst $38
    inc sp
    db $f4
    call Call_000_008a
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], h
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    scf
    cp $dc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    dec e
    ld [hl], e
    nop
    nop
    nop
    ld a, l
    ld e, e
    rst $38
    pop hl
    ld h, b
    ld sp, $5647
    ld d, a
    cp $e1

jr_058_6dec:
    rla
    ld c, l
    ld sp, $ef60
    ldh [rP1], a
    rst $38
    rst $38
    rst $20
    and $d0
    pop hl
    rst $38
    ld h, b
    ld sp, $363c
    ld l, h
    ld l, h
    jr nc, jr_058_6e6b

    rla
    jr nc, jr_058_6e35

    ld [hl-], a
    cp a
    ldh [$5a], a
    ret nz

    rst $38
    jp hl


    add sp, -$71
    ldh [rPCM12], a
    pop bc
    ldh [rSCY], a
    ld l, h
    rst $38
    ldh [$66], a
    ld l, c
    ld l, e
    cp a
    pop hl
    ld a, c
    ld e, a
    ret nz

    rst $38
    ret nz

    jp hl


    ld sp, $3162
    ld c, c
    pop bc
    ld [c], a
    ld a, $c0
    pop hl
    ld l, e
    jr nc, jr_058_6e7e

    ld sp, $c05e
    rst $38
    jp hl


    add sp, $1f
    dec d

jr_058_6e35:
    ld sp, $3131
    add hl, sp
    pop bc
    ld [c], a
    ret nz

    rst $38
    ld a, [c]
    pop af
    sbc a
    rla
    ld sp, $4931
    ld c, b
    ret nz

    and $40
    ld [c], a
    ld e, d
    db $fc
    jp z, $e8ff

    rst $20
    ld d, $15
    ld sp, $6d50
    jr nc, jr_058_6dec

    add b
    ld [c], a
    ld h, a
    ld l, d
    ret nz

    pop bc
    ld e, [hl]
    add b
    rst $18
    ld [$28e9], a
    rst $18
    rla
    ld sp, $6a51
    ld h, a
    cp a
    pop hl
    ld h, a

jr_058_6e6b:
    ld l, d
    adc a
    ld b, d
    ld b, l
    ld c, l
    ld sp, $c0c1
    ret nz

    rst $38
    jp hl


    add sp, $20
    db $ed
    rla
    add b
    ldh [rOCPS], a
    ld h, l

jr_058_6e7e:
    rst $38
    ldh [rOCPS], a
    ld l, l
    add hl, sp
    ld hl, sp-$0c
    ret nz

    nop
    rst $18
    ret nz

    db $ec
    ld a, [de]
    ld sp, $3050
    ld l, l
    ld e, l
    ld l, b
    rst $38
    ldh [$6d], a
    jr nc, jr_058_6ee6

    pop bc
    ldh [$5a], a
    ret nz

    rst $38
    cp [hl]
    db $eb
    ld [$3118], a
    ld sp, $3051
    nop
    ld [c], a
    jr nc, @-$2e

    add h
    pop bc
    pop bc
    pop hl
    ret nz

    rst $38
    jp hl


    add sp, $1a
    ret nz

    ldh [rOCPS], a
    ld l, l
    adc l
    jr nc, @+$01

    pop hl
    ld c, b
    ld c, c
    inc bc
    pop hl
    ret nz

    rst $38
    ret nz

    xor h
    ld sp, $afaf
    ld [hl], c
    ld l, d
    ld l, l
    cp [hl]
    pop hl
    add hl, sp
    add h
    pop bc
    ld e, e
    ld e, b
    ccf
    ldh [$ca], a
    rst $38
    ret nz

    ld [$7981], a
    cp a
    pop hl
    ld l, l
    ld b, l
    and d
    inc a
    add b
    rst $38
    nop
    xor l
    ld [hl], b
    and l
    xor [hl]
    add b
    cp a
    pop hl
    dec b

jr_058_6ee6:
    jp Jump_000_00dc


    rst $38
    db $ed
    db $ec
    ld [hl], b
    xor [hl]
    add b
    rst $38
    ldh [$79], a
    ld a, h
    inc bc
    ld a, h
    xor a
    dec b
    jp nz, $e23f

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_701f

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
    db $fc
    ld l, a
    inc l
    ld [hl], b
    adc h
    ld [hl], d
    ld l, e
    ld [hl], h
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

jr_058_701f:
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
    db $ec
    dec bc
    dec bc
    ld a, [bc]
    dec bc
    db $ec
    ldh [$4c], a
    ld b, b
    add sp, -$1e
    ld a, [$f1e3]
    pop hl
    ldh a, [$e2]
    ld a, [$fce3]
    ld sp, hl
    dec bc
    rst $38
    ldh [rSB], a
    dec hl
    ret nz

    pop hl
    pop bc
    and $c7
    db $e3
    db $fd
    add sp, -$3e
    db $fc
    cp [hl]
    pop hl
    pop de
    pop hl
    ld bc, $fd4c
    db $e3
    db $fc
    ld [c], a
    cp b
    ld [c], a
    ld a, [$7fe3]
    ld a, [c]
    db $dd
    db $e3
    jp nz, $81e3

    dec hl
    ret nz

    ld [c], a
    cp [hl]
    push hl
    or $e1
    or l
    push hl
    xor h
    ld [c], a
    ld c, d
    or $6b
    dec de
    ld l, e
    ld c, e
    rst $38
    db $e4
    ld l, e
    ld l, e
    ld b, a
    db $e3
    rst $38
    push hl
    ld [hl], e
    rst $20
    ld [hl+], a
    ld sp, hl
    call nz, $cc2c
    jp $e4f9


    call z, Call_058_6bc2
    pop bc
    ldh [rTIMA], a
    pop hl
    adc e
    dec hl
    dec hl
    cp c
    ldh [rOCPD], a
    adc $c4
    ld c, a
    add sp, -$40
    rst $10
    inc l
    dec de
    inc l
    inc c
    jp nz, Jump_000_0be1

    dec bc
    ret nz

    pop hl
    cp a
    ldh [$c0], a
    db $e4
    add b
    db $fd
    jp $c5be


    ret nz

    ret c

    rlca
    pop hl
    add h
    ld [c], a
    dec b
    db $e3
    ld [hl], a
    ldh [$2b], a
    ld bc, $512b
    jp $e644


    ld b, b
    jp c, $e205

    add $c3
    push bc
    pop bc
    ld hl, sp-$3e
    jr nz, jr_058_710e

    push hl
    add c
    call nz, $e476
    ld [hl], b
    push hl
    ret nz

    rst $28
    dec bc

jr_058_70d8:
    push bc
    ret nz

    inc b
    pop hl
    ld c, $40
    jp nz, Jump_058_4b6b

    dec hl
    ld b, b
    push hl
    dec sp
    push hl
    ld b, b
    reti


    ret


    pop bc
    inc b
    add [hl]
    pop bc
    ret nz

    and $0b
    ret nz

    ld [c], a
    ld a, a
    or b
    or l
    jp z, $c683

    rrca
    pop bc
    nop
    add c
    rst $20
    dec a
    ld [c], a

jr_058_70ff:
    ret nz

    ld [c], a
    ld a, a
    or c
    or $eb
    ret nz

    jp hl


    add l
    db $e4
    db $fc
    call nz, $c100
    and [hl]

jr_058_710e:
    ld a, a
    xor d
    dec l

jr_058_7111:
    xor e
    add b
    add sp, -$3d
    push hl
    ld sp, hl
    ret nz

    ld a, $a3
    adc e
    and c
    inc b
    ld a, a
    xor a
    scf
    jp hl


    inc l
    rst $38
    ldh [$90], a
    add h
    call z, $88e4
    and c
    rst $30
    jp nz, Jump_058_7920

    and b
    add $84
    ld a, a
    xor h
    ld [hl], l
    xor b
    ret nz

    add sp, $0a
    adc d
    ld [c], a
    dec a
    call nz, $bf00
    add h
    adc $c9
    adc c
    ld [$8535], a
    add c
    rst $20
    jr jr_058_7111

    db $10
    add $4d
    add [hl]
    nop
    ld a, a
    xor l
    jr c, jr_058_70d8

    ret nz

    add sp, -$1a
    set 7, e
    push hl
    ld a, a
    or d
    cp e
    ld a, b
    sub c
    ld h, h
    jr nz, jr_058_70ff

    ld h, l
    inc c
    add sp, $7f
    xor d
    ld [hl], l
    and h
    jp nz, Jump_000_2cc1

    ld a, c
    add h
    ld l, l
    ld l, b
    nop
    ld de, $c383
    adc b
    ld a, a
    xor a
    or l
    ld h, e
    ret nz

    db $eb
    sub e
    jp hl


    or h
    ld h, l
    cp $65
    nop
    ld b, a
    db $ed
    cp $45
    cp a
    ret


    ld [de], a
    push bc
    ld e, a
    ld h, h
    sub a
    ld l, l
    dec d
    rst $00
    adc d
    ret z

    nop
    cp a
    rst $08
    adc c
    push bc
    inc e
    rst $00
    sub h
    ld e, b
    ld [hl], a
    ld c, a
    sub c
    ld [hl], c
    sub d
    reti


    cp h
    ret nz

    nop
    dec h
    ld c, c
    sub c
    ld [hl], b
    ld a, [$3ba7]
    call z, $c5bc
    ld [hl], c
    db $ec
    sub c
    ld l, h
    xor a
    rlc b
    cp d
    ld h, [hl]
    ld [hl], a
    ld d, l
    sub c
    ld [hl], b
    adc h
    ld c, b
    dec sp
    adc $76
    jr z, jr_058_7200

    rst $20
    sub c
    ld l, h
    nop
    db $fc
    daa
    ld b, l
    jp z, Jump_000_3037

    ldh [$ab], a
    nop
    and [hl]
    dec c
    jr z, jr_058_71e1

    jp z, Jump_000_3937

    nop
    and $89
    dec c
    ld sp, $1fb7
    sub $fb
    ld [hl], c
    ld b, a
    ld e, $da

jr_058_71e1:
    sub $e9
    ldh [$d3], a
    nop
    ld b, b
    adc b
    inc d
    ld c, a
    ld b, a
    ld c, e
    ldh [$d2], a
    nop
    adc e
    inc d
    ld c, l
    adc l
    rst $08
    rlca
    or d
    nop
    add e
    push de
    sbc l
    adc d
    call nc, $a3df
    rst $30
    rst $38

jr_058_7200:
    rst $38
    rst $38
    rst $38
    cp d
    dec hl
    ldh a, [$a1]
    nop
    sbc b
    rst $38
    add sp, -$39
    cp d
    dec l
    ret nz

    rst $38
    dec h
    ld [$36ba], sp
    rst $38
    rst $38
    xor b
    ld l, b
    nop
    cp d
    ld a, [hl+]
    jp z, Jump_058_47ff

    ld h, [hl]
    cp d
    add hl, sp
    rst $38
    rst $38
    db $fd
    ret z

    cp d
    add hl, hl
    ret nz

    rst $38
    nop
    add b
    rst $20
    xor b
    ld [hl], e
    rst $38
    rst $38
    ld b, b
    db $ec
    dec h
    xor l
    rst $38
    rst $38
    dec h
    cp e
    rst $38
    rst $38
    nop
    dec h
    cp h
    rst $38
    rst $38
    dec h
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    rst $30
    ld l, c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld h, l
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

jr_058_7282:
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
    db $dd
    inc d
    rst $38
    ldh [rNR42], a
    ld [hl+], a
    jr nz, @+$01

    db $e4
    ld a, [bc]
    dec bc
    sbc a
    ld sp, $5a61
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $24
    ld [$e0ff], sp
    jp nz, $ffe8

    ldh [$60], a
    ret nz

    rst $38
    jp hl


    add sp, -$7a
    push hl
    jp nz, $92e5

    cp [hl]
    ldh [$62], a
    jp z, $c0ff

    db $eb
    dec b
    rst $38
    ldh [$c2], a
    push hl
    and [hl]
    and a
    and h
    and h
    and h
    jp z, $80ff

    ld [$4a0c], a
    pop hl
    ld b, a
    rst $38
    ld b, [hl]
    ld d, h
    ld d, l
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld l, [hl]
    and a
    ld l, a
    add b
    add b
    jp z, Jump_058_40ff

    ld [$c21a], a
    pop hl
    ld [hl], $fd
    jr nc, @+$01

    ldh [rOCPD], a
    ld l, e
    ld l, e
    ld l, c
    ld [hl], $76
    db $fc
    ret nz

    rst $38
    nop
    ld [$310c], a
    ld c, l
    ld b, [hl]
    ld [hl], $6b
    add hl, sp
    ld l, e
    ret nz

    pop hl
    cp a
    ldh [rBCPD], a
    jr nc, jr_058_7282

    ret nz

Jump_058_7300:
    rst $38
    jp hl


    add sp, $7f
    dec b
    ld b, $1e

jr_058_7307:
    ld sp, $3039
    ld l, c
    add [hl]
    ldh [rIE], a
    jr nc, @+$6f

    ld l, h
    ld l, h
    jr nc, jr_058_7381

    ld l, l
    ld l, d
    ld h, e
    ld [hl], a
    ld a, c
    jp z, $e8ff

    rst $20
    ld c, [hl]
    ret nz

    ld c, c
    ld c, b
    ret nz

    pop hl
    ld l, [hl]
    push bc
    ldh [$6c], a
    ld l, h
    ld l, l
    cp a
    ldh [rBCPS], a
    add e
    jp z, $deff

    ret nz

    ld [$3039], a
    ld l, d
    ld l, l
    rst $00
    pop hl
    ld l, l
    ld l, b
    call $f868
    pop hl
    ld l, h
    ld d, e
    jp z, $e8ff

    rst $20
    ld h, b
    ld sp, $31b3
    ld d, e
    pop bc
    ldh [$87], a
    pop hl
    ld l, d
    jr nc, jr_058_7307

    ld [c], a
    ld l, h
    ld a, c
    ld d, d
    jp z, $e8ff

    rst $20
    ld e, e
    ld h, c
    ld sp, $c152
    db $e4
    adc a
    ld [hl], $55
    ld d, h
    ld [hl], $76
    pop hl
    add b
    rst $38
    ret nz

    db $eb
    ld d, e
    db $ec
    ld b, d
    ldh [$c4], a
    ldh [rDMA], a
    ld b, a
    ld a, [$55a1]
    ld d, h
    ld d, l
    ld c, c
    inc a
    jp z, $80ff

    ld [$c43c], a
    db $e3
    ld b, a
    and b

jr_058_7381:
    ld h, d
    ld a, $a3
    ldh a, [$ca]
    rst $38
    ld b, b
    add sp, -$01
    ret nz

    call nz, Call_058_5de3
    ld e, h
    ld e, e
    ld e, e
    ld b, a
    ld e, h
    ld e, l
    ld h, d
    rst $38
    ldh [$ca], a
    rst $38
    add sp, -$19
    ld e, d
    call z, $03e0
    ld sp, $c431
    pop hl
    cp $e7
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_74ca

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
    and a
    ld [hl], h
    rst $10
    ld [hl], h
    ld e, l
    ld [hl], a
    jr nc, jr_058_7520

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

jr_058_74ca:
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld e, e
    ld c, d
    ld a, [bc]
    rst $38
    ld [$0b6a], a

jr_058_74de:
    rst $38
    ldh [$0c], a
    rst $38
    ldh [$31], a
    ld c, h
    db $fd
    ld [c], a
    ld hl, sp-$1d
    rst $30
    ld [c], a
    inc c
    inc l
    ld a, [$fbe2]
    db $ed
    ld bc, $bf0a
    ld [$e2c1], a
    ret nz

    ldh [$cd], a
    ldh [$fd], a
    ld [c], a
    push bc
    ld [c], a
    ret nz

    ldh [$b1], a
    inc l
    jp $c0e0


    db $f4
    adc [hl]
    ldh [rWX], a
    ld c, e
    adc d
    ldh [$2b], a
    pop bc
    dec hl
    call nz, $f9e2
    pop hl
    ret nz

    db $e4
    cp h
    ldh [$c2], a
    db $e3
    ld c, h
    inc l
    jr nc, jr_058_74de

    ld [c], a
    ld a, a

jr_058_7520:
    ld a, [c]
    adc [hl]
    db $e3
    ei
    jp hl


    dec hl
    dec bc
    add c
    db $e4
    db $fc
    db $e3
    ld h, b
    ld b, b
    pop hl
    push bc
    ld [c], a
    ret nz

    di
    jp z, Jump_000_06e7

    pop hl
    ld l, e
    dec bc
    ld [hl], l
    ldh [rSB], a
    ld c, e
    inc bc
    ldh [rDMA], a
    ld [c], a
    ld b, b
    rst $20
    pop bc
    ld [c], a
    rst $38
    push bc
    rst $30
    call nz, $c3f0
    inc b
    add c
    db $e3
    ret z

    ldh [rWX], a
    ld b, b
    pop hl
    ld hl, sp-$1f

jr_058_7554:
    ret nz

    ldh [$bf], a
    call nz, $c3cf
    add sp, $38
    db $e4
    db $fd
    db $f4
    adc d
    ld [c], a
    ld l, e
    inc b
    ldh [rOCPD], a
    ld c, e
    ld c, e
    nop
    ld hl, sp-$1e
    di
    ret nz

    pop bc
    push hl
    ld a, a
    jp z, $e780

    ld b, b
    db $ec
    jp nz, $c4e0

    call nz, $bc02
    jp $804b


    ldh [$c0], a
    push bc

Jump_058_7580:
    add b
    jp $d935


    jp nz, $c1e2

    jp hl


    nop
    nop
    ld [c], a
    add c
    push bc
    jr c, jr_058_7554

    dec [hl]
    rst $10
    ld c, b
    ret nz

    ld b, [hl]
    pop bc
    ld a, $c1
    cp h
    jp Jump_058_4b07


    dec bc
    dec hl
    rlca
    jp nz, $e2fc

    ld b, b
    call nz, $d835
    ret nz

    pop hl
    ld b, $fe
    and b
    ld l, e
    ld l, e
    add [hl]
    ld [c], a
    rst $38
    ld [c], a
    ret nz

    ldh [rSB], a
    add sp, $35
    db $d3
    nop
    ld [hl], e
    and [hl]
    add d
    db $e3
    adc e
    ldh [$bf], a
    ldh [$c1], a
    db $e3
    ret nz

    pop bc
    ld b, $c4
    or a
    ld [c], a
    inc [hl]
    dec [hl]
    reti


    ret nz

    ld [c], a
    dec hl
    add c
    and b
    ld l, e
    ld c, e
    ld sp, hl
    ldh [$c1], a
    db $e4
    nop
    ld b, b
    and d
    ret nz

    and l
    dec [hl]
    db $dd
    rlca
    jp nz, $e243

    or a
    pop hl
    pop bc
    ld [c], a
    add b
    and b
    add b
    dec b
    and e
    ld bc, $35a3
    jp nc, $a6b2

    rst $00
    jp nz, $86fd

    ld a, [hl-]
    pop hl
    dec bc
    pop bc
    ld l, e
    nop
    jp hl


    dec [hl]
    ret z

    ld [hl], h
    and [hl]
    ret nz

    jp hl


    jp Jump_058_6b82


    ld l, e
    ld bc, $bb0a
    add h
    dec [hl]
    pop hl
    nop
    db $eb
    dec [hl]
    call z, $a53c
    ld [hl-], a
    add l
    ld e, c
    add l
    nop
    call Call_000_0884
    sub d
    dec [hl]
    call nz, $e5dd
    ret nz

    ld [$f5cd], a
    ld [$b78b], sp
    push bc
    nop
    push af
    sub b
    push de
    ld [hl], l
    ld [$3a89], sp
    and a
    ld l, l
    push bc
    xor a
    ld h, b
    ld [hl], b
    ld h, h
    push de
    ld [hl], h
    nop
    ld [$3c89], sp
    ld h, [hl]
    rst $38
    ret


    jr nc, @+$66

    push de
    ld [hl], h
    ld [$b28a], sp
    add [hl]
    db $ed
    and a
    nop
    ld a, [c]
    ld b, [hl]
    push de
    ld [hl], a
    ld [$0187], sp
    add a
    scf
    ld h, c
    inc b
    jp $ccbf


    push de
    ld l, a
    nop
    ld [$c188], sp
    ld l, d
    push bc
    and h
    ld a, a
    rst $18
    ret z

    ld l, b
    ld [hl], h
    ld h, [hl]
    dec sp
    ld h, [hl]
    or d
    ld l, b
    nop
    ld d, h
    ld d, h
    ld c, c
    ld l, b
    ld a, [bc]
    add $46
    xor d
    add c
    ld a, [$c3cc]
    rra
    xor $b8
    ld b, [hl]
    nop
    or d
    ld b, a
    push de
    ld [hl], $c0
    ret z

    ret nz

    ld c, a
    ret nz

jr_058_7684:
    db $ec
    push de
    jr nc, @+$55

    ret


    ld a, e
    ld e, b
    nop
    and b
    ld [hl], a
    ld [hl], e
    pop de
    ret nz

    ldh a, [$d5]
    inc sp
    call z, $80a1
    rst $38
    nop
    rst $10
    adc e
    add c
    nop
    cp e
    ld h, a
    or e
    db $ec
    pop bc
    ldh a, [$d5]
    inc sp
    cp l
    rst $38
    and b
    db $76
    ld b, e
    ld c, e
    ld [hl], a
    rst $30
    nop
    and b
    ld [hl], l
    rst $08
    inc h
    ld b, b
    ld e, [hl]
    push de
    jr z, jr_058_7684

    xor d
    and e
    add [hl]
    and b
    call nc, wPlayer1
    nop
    and b
    ld a, b
    cp l
    ld b, h
    ld a, d
    reti


    push de
    ld b, a
    ld a, [de]
    push de
    ld b, b
    ld d, d
    ret nz

    ret z

    push de
    daa
    nop
    ldh [$2b], a
    call $4046
    ld d, c
    ret nz

    xor d
    ld a, [de]
    db $d3
    rlc d
    ld b, b
    ld d, h
    add b
    xor e
    nop
    jp c, $81b4

    inc bc
    and b
    ret c

    ei
    ld a, [$897b]
    ld b, b
    ld e, b
    ei
    ld a, [$0746]
    nop
    and b
    ret c

    add b
    or $6e
    and h
    and b
    push de
    ld b, b
    rst $38
    ld hl, $ba29
    sbc l
    ld b, b
    rst $30
    nop
    dec sp
    push hl
    db $ec
    daa
    rst $38
    rst $38
    ret z

    ld b, a
    ret nz

    db $eb
    rst $38
    rst $38
    ld [hl], e
    call nc, $4f89
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    ret nc

    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $dd
    cpl
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
    ld e, e
    ld [hl], e
    nop
    nop
    nop
    ld e, e
    ld c, [hl]
    adc b
    rst $38
    ld [$5b8c], a
    rst $38
    ldh [rP1], a
    rst $38
    rst $38
    add d
    rst $20
    and $87
    cp a
    ld [$e2c1], a
    ret nz

    rst $38
    ret nz

    jp hl


    adc [hl]
    ld [c], a
    ld e, h
    cpl
    ld e, l
    ld sp, $5c5d
    ld sp, hl
    pop hl
    ld h, d
    ld sp, hl
    pop hl
    jp z, $b0ff

    add sp, -$19
    ld c, a
    pop hl
    jp nz, $ffe0

    pop hl
    ld h, d
    ld h, d
    ld sp, hl
    ld [c], a
    ld e, h
    cp b
    ret nz

    rst $38
    jp hl


    add sp, -$3e
    db $e3
    inc [hl]
    ld d, a
    inc [hl]
    cp l
    ld [c], a
    ld c, l
    rra
    ld d, a
    ld c, l
    ld sp, $5f31
    jp z, $e8ff

    rst $20
    add h
    ld [c], a
    sbc a
    inc [hl]
    ld [hl-], a
    ld l, b
    ld b, h
    ld a, [hl-]
    cp [hl]
    ldh [$f8], a
    ldh [$3d], a
    rst $00
    ld c, l
    ld sp, $ca5e
    rst $38
    add sp, -$19
    jp nz, Jump_058_45e1

    ld b, h
    ld a, a
    ld l, d
    ld l, b
    ld l, d
    jr nc, jr_058_780c

    ld a, [hl-]
    ld a, [hl-]
    ld hl, sp-$1f
    rst $00
    ld [hl-], a
    ld c, l
    ld sp, $ffca
    ret nz

    add sp, -$3e
    ldh [$6d], a
    ld l, d
    dec hl

jr_058_77d9:
    ld l, d
    jr nc, jr_058_77d9

    ldh [$30], a
    ei
    pop hl
    ld l, d
    cp a
    ldh [$ca], a
    rst $38
    ld c, [hl]
    add sp, -$19
    inc a
    ld b, h
    ld l, l
    pop bc
    pop hl
    call nz, $68e1
    cp h
    db $e3
    ld d, e
    ld l, c
    add hl, sp
    jp z, $e8ff

    rst $20
    ld d, d
    pop bc
    db $e3
    ld l, b
    add e
    ldh [$a4], a
    inc a
    ldh [$c0], a
    ld [c], a
    ld d, d
    jp z, $e8ff

    rst $20
    ld d, e
    add d
    ld [c], a

jr_058_780c:
    ld l, d
    dec [hl]
    ld l, h
    call nz, $68e2
    rst $38
    ldh [rOCPS], a
    ld h, a
    ret nz

    rst $38
    jp hl


    add sp, -$63
    add hl, sp
    pop bc
    ld [c], a
    ld l, l
    ld b, h
    ld b, h
    cp d
    pop hl
    ret nz

    pop hl
    ld h, a
    ld sp, hl
    ld h, a
    ld b, b
    rst $38
    jp hl


    add sp, $4d
    ld b, l
    ld b, h
    jr nc, jr_058_789b

    ld a, [hl]
    ld b, e
    ret nz

    inc [hl]
    ld b, [hl]
    ld [hl], $6a
    ld l, d
    ld h, l
    rst $38
    pop hl
    call c, $dfc0
    ld b, b
    swap h
    ld b, l
    ld b, l
    jp $47a2


    ld b, [hl]
    ld bc, $c136
    db $e3
    ld b, b
    rst $18
    jp hl


    add sp, $45
    and e
    ld b, h
    and e
    cp [hl]
    pop hl
    pop bc
    ldh [$71], a
    ld h, b
    jp z, Jump_058_40ff

    xor b
    inc bc
    and c
    ld e, l
    ld e, h
    ld e, d
    ei
    add e
    inc bc
    ld b, a
    ld d, [hl]
    pop bc
    ldh [rP1], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_058_789b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

Jump_058_7920:
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_058_798f

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
    ld a, c
    sbc h
    ld a, c
    dec l
    ld a, h
    inc b
    ld a, [hl]
    ld hl, sp+$03
    ld c, h
    inc bc
    ld d, e

Jump_058_7971:
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

jr_058_798f:
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
    db $e4
    dec bc
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rst $38
    ld c, e
    ld c, e
    dec bc
    dec bc
    ld c, e
    dec hl
    ld c, h
    ld c, h
    inc bc
    inc c
    ld c, h
    rst $38
    ldh [$e5], a
    ldh [$fc], a
    ldh [$f9], a
    pop hl
    ei
    db $e3
    db $fc
    ld sp, hl
    inc c
    pop bc
    ld [c], a
    cp a
    ldh [$2b], a
    ld c, e
    ret nz

    ldh [$ac], a
    ld [c], a
    cp e
    ld [c], a
    ld a, [$08e3]
    or l
    ld [c], a
    cp d
    ld a, [$e282]
    dec hl
    ld a, a
    pop hl
    cp a
    pop hl
    adc h

jr_058_79da:
    ld [c], a
    jp Jump_000_00e6


    ld a, [c]
    db $e4
    cp d
    and $75
    db $eb
    ld d, a
    ld [c], a
    pop bc
    db $e3
    ret nz

    ld [c], a
    ld a, $e0
    ret nz

    ldh [$80], a
    ld c, e
    db $e3
    ld a, [hl]
    ld [c], a
    db $fc
    db $e3
    jr c, jr_058_79da

    or e
    db $e4
    ld b, a
    db $ec
    db $fd
    pop hl
    ld l, e
    dec hl
    ld l, e
    dec bc
    ret nz

    pop hl
    dec bc
    rst $38
    pop bc
    dec bc
    ld c, $e3
    add d
    db $e4

jr_058_7a0b:
    add h
    push af
    set 5, e
    pop bc
    inc l
    call z, $f9c3
    db $e3
    call $c1c2
    pop hl
    dec bc
    ld [bc], a
    cp a
    pop hl
    dec bc
    pop bc
    pop hl
    ret nz

    ld [c], a
    call $c7c4
    add $fa
    add $39
    db $ec
    ld bc, $ff2b
    ldh [$c1], a
    db $e3
    ld a, a
    ldh [$c3], a
    ret nz

    ret nz

    and $ce
    add $7f
    ret


    ld b, $40
    rst $28
    ld a, [bc]
    dec hl
    add d
    db $e4
    scf
    ld [c], a
    add c
    ld [c], a

jr_058_7a45:
    ld b, b
    ldh [$09], a
    db $e3
    jr nc, jr_058_7a0b

    push bc
    ld a, a
    ret z

    scf
    adc $c1
    ldh [$0b], a
    ld l, e
    ret


    db $e3
    pop bc
    db $e3
    nop
    sbc b
    rst $20
    add c
    add $f0
    and h
    ccf
    push hl
    ret nz

    rst $08
    adc c
    pop bc
    add l

jr_058_7a66:
    jp nz, $e643

    add b
    ld c, h
    add $b7
    and e
    ld a, b
    call nz, $c475
    rst $00
    xor e
    add d
    ldh [$c1], a
    add sp, $6c
    nop
    and l
    add $06
    push bc
    jr jr_058_7a45

    cpl
    add $83
    rst $00
    ld b, e
    and b
    dec c
    jp $e7ff


    ld b, b
    push bc
    ret


    sub c
    push hl
    adc d
    rst $20
    cp [hl]
    add sp, $07
    and h
    jp nz, Jump_000_2cf2

    cp [hl]
    and e
    nop
    ld b, h
    rst $20
    xor $c5
    xor h
    rst $20
    ret nz

    and $85
    ret z

    ld l, h
    and [hl]
    ld b, b
    and $81
    call nz, $8748
    and [hl]
    daa
    and h
    cp h
    and b
    inc l
    cp d
    and h
    ld b, [hl]
    push bc
    ld l, e
    scf
    ret nz

    nop
    sbc e
    adc h
    cp d
    pop af
    jr c, jr_058_7a66

    ret nz

    db $ed
    ld [bc], a
    and b
    ret nz

    add sp, $40
    sub c
    ld [hl], $eb
    nop
    add c
    push hl
    ld e, d
    add sp, $52
    and $58
    and [hl]
    ld b, b
    adc d
    ld [hl], $eb
    ret nz

    rst $20
    ret


    ld [$9000], a
    jp hl


    ld b, b
    adc h

jr_058_7ae1:
    ld a, [c]
    adc e
    inc a
    adc e
    ret nc

    ld [hl], e
    ld b, b
    adc e
    ld a, [c]
    adc e
    pop bc
    ret nz

    nop
    ld a, c
    add e
    xor [hl]
    add $90
    xor $40

jr_058_7af5:
    adc h
    ld a, [c]
    adc e
    ret nz

    rst $20
    ld h, d
    add sp, -$30
    ld l, [hl]
    nop
    ld b, b
    adc e
    ld a, [c]
    adc c
    ld b, b
    add $5f
    add a
    sub b
    db $ed
    ld b, b
    adc h
    ld a, [c]
    adc e
    ret nz

    jp hl


    nop
    sbc l
    ld c, c
    sub b
    db $ec
    ld b, b
    adc b
    ld a, [c]
    adc e
    ld [hl], b
    ld d, h
    ret nc

    ld l, d

jr_058_7b1c:
    ld b, b
    adc e
    ld a, [c]
    adc e
    nop
    ld b, b
    rst $20
    and l
    push hl
    ret nc

    ld l, a
    ld b, b
    adc [hl]
    ld a, [c]
    adc b
    ret nz

    jp hl


    cp [hl]
    ld [$ea90], a
    nop
    ld b, b
    adc e
    jr c, jr_058_7ae1

    ld [bc], a
    rst $28
    ret nc

    ld l, e
    ld b, l
    xor h
    rst $28
    jr z, @+$43

    and c
    db $db
    adc e
    nop
    ret nc

    ld [hl], c
    add l
    dec hl
    ld a, [hl]
    ld h, [hl]

jr_058_7b49:
    db $fd
    ld [hl], b
    ld c, l
    xor c
    ret nc

    ld l, b
    add l
    jr z, jr_058_7b9d

    ld b, [hl]
    nop
    rst $28
    ld l, b
    push de
    ld l, c
    ret nc

    ld [hl], c
    ld b, l
    xor d
    ld a, d
    ld l, e
    or c
    add hl, bc
    ld b, b
    db $eb
    ret nc

    ld l, c
    nop
    add l
    jr z, jr_058_7be2

    ld l, b
    cp c
    jp hl


    or d
    adc e
    sub l
    jr z, jr_058_7af5

    jr nc, jr_058_7b1c

    add sp, -$40
    add h
    nop
    push bc
    cp c
    add l
    ld l, $33
    ld l, h
    ld bc, $95a8
    jr nc, jr_058_7bc6

    xor a
    ld a, e
    ld b, $47
    ld h, b
    nop
    ld [bc], a
    ld l, c
    sub l
    inc sp
    add l
    ld l, $f6
    jp z, Jump_058_42c3

    jp nz, $958c

    inc l
    or l
    xor a
    nop
    ld bc, $9b47
    ld d, l
    push bc

jr_058_7b9d:
    xor l
    or $d3
    ld b, e
    ld b, l
    pop bc
    jp z, Jump_000_2d95

    ldh a, [$ee]
    nop
    cp d
    ld c, d
    ld b, b
    db $eb
    sub l
    ld [hl-], a
    or l
    xor a
    xor [hl]
    adc c
    db $db
    ccf
    or l
    xor [hl]
    ld l, c
    ret z

    nop
    rst $38
    rst $38
    and $d8
    ld a, a
    ldh a, [$fb]
    ld a, [$90ab]
    set 7, a

jr_058_7bc6:
    ld a, e
    jr jr_058_7b49

    rst $38
    nop
    and $df
    rst $38
    rst $38
    ld h, $cc
    nop
    ld h, [hl]
    and h
    add a
    rst $38
    rst $38
    and h
    jr z, @-$3e

    jp hl


    nop
    rst $38
    rst $38
    ld [hl], e
    call nc, $ac8d

jr_058_7be2:
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    rst $38
    rst $38
    ld [hl], l
    ld c, c
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
    and $dc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec d
    ld [hl], e
    nop
    nop
    nop
    db $fd
    jr nz, @+$01

    db $e3
    rrca
    ld sp, $3131
    ld c, l
    dec sp
    rst $38
    ld d, l
    ld d, h
    inc a
    ld sp, $5f31
    ld e, e
    nop
    ld hl, sp-$01
    rst $38
    rst $20
    and $c1
    add sp, $32
    ld l, c
    ld l, c
    jr nc, jr_058_7c8e

    ld b, a
    inc a
    ld sp, $c05e
    rst $38
    ret nz

    db $ed
    pop bc
    db $e3
    ld l, e
    ret nz

    ldh [$9f], a
    ld l, c
    ld b, d
    ld c, c
    ld sp, $ca5f
    rst $38
    add sp, -$19
    dec b
    ld a, b
    rst $38
    ldh [$c1], a
    db $e4
    ret nz

    ld [c], a
    ld l, c
    add hl, sp
    ld sp, $ca5e
    rst $38
    ld a, b
    add sp, -$19
    ld [$fde0], sp
    pop hl
    ld c, l
    ld [hl-], a
    ld l, h
    ld l, l
    ret nz

    push hl
    cp c
    ld sp, $ffca
    add sp, -$19
    ld h, d
    ld h, d
    ld h, d
    pop bc
    db $e3
    ld l, h
    scf
    ld l, h
    ld l, l
    ld l, d

jr_058_7c8e:
    ld b, b
    ldh [rOBP0], a
    ld c, c
    ret nz

    rst $38
    ld [$afe9], a
    ld e, e
    ld e, e
    ld e, e
    ld h, c
    push bc
    ret nz

    ld l, b
    rst $38
    ldh [rOCPS], a
    rst $00
    ld l, d
    jr nc, jr_058_7cd5

    add c
    pop hl
    ret nz

    rst $38
    jp hl


    add sp, $5a
    ld e, e
    db $fd
    ld h, b
    pop bc
    db $e4
    ld l, b
    ld l, b
    jr nc, jr_058_7ce5

    ld l, d
    ld [hl-], a
    ld sp, hl

jr_058_7cb8:
    ld c, l
    ret nz

    rst $38
    add b
    db $eb
    ld h, b
    ld sp, $3931
    jr nc, @+$1e

    rst $38

jr_058_7cc4:
    db $e4
    pop bc
    pop hl
    dec de
    ld de, $ca14
    rst $38
    add sp, -$19
    pop bc
    ldh [$db], a
    xor e
    ld d, e
    add c
    db $e3

jr_058_7cd5:
    ld l, b
    ld l, b
    add d
    pop hl
    rla
    inc h
    add hl, sp
    inc h
    jp z, $80ff

    ret z

    xor e
    ld e, b
    xor d
    ret nz

jr_058_7ce5:
    push hl
    ld b, e
    pop hl
    rst $08
    dec d
    ld d, $20
    jr nz, jr_058_7cb8

    rst $38
    add sp, -$19
    ld e, b
    xor d
    rst $38
    add b
    add b
    ld [hl], d
    ld d, h
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    sbc e
    ld d, h
    ld b, l
    inc b
    pop hl
    rla
    jr z, jr_058_7cc4

    rst $38
    ld [$80e9], a
    db $76
    rst $38
    ld [c], a
    xor [hl]
    ld [hl], b
    ld hl, sp-$5d
    ld de, $2212
    rst $28
    add b
    ld [hl], b
    jp z, $c0ff

    db $ec
    pop bc
    pop hl
    ld sp, hl
    and b
    ld de, $2112

Jump_058_7d20:
    pop bc
    pop hl
    ld hl, sp-$40
    rst $38
    add b
    db $ec
    add d
    pop hl
    ld h, b
    ld e, d
    ld e, [hl]
    ld sp, $f02b
    jp nz, $c0e2

    rst $38
    ld b, b
    db $ec
    pop bc
    ld [c], a
    ld e, e
    ld e, e
    ld e, a
    ld sp, $2b03
    inc l
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

Jump_058_7dc8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    jr nc, jr_058_7e63

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

Jump_058_7e38:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_058_7e63:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_058_7ee6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
