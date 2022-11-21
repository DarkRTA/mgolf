; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $071", ROMX[$4000], BANK[$71]

    inc c
    ld b, b
    and c
    ld c, e
    ld e, l
    ld d, [hl]
    ld hl, $6d60
    ld h, h
    ld e, l
    ld l, a
    inc d

Call_071_400d:
    ld b, b
    ld h, a
    ld b, l
    inc l
    ld c, e
    ld c, [hl]
    ld c, e
    adc a
    ld c, l
    ld c, l
    dec c
    ld c, l
    rst $38
    pop hl
    ld a, [$f6e1]
    jp hl


    ld l, $02
    rst $38
    pop hl
    ld c, $ff
    pop hl
    ld [c], a
    ld [c], a
    pop hl
    rst $20
    ei
    db $e3
    set 4, b
    ret z

    ld [c], a
    nop
    db $ec
    jp hl


    db $e3
    rst $20
    call z, $c0e0
    ld a, [c]
    rst $20
    pop hl
    adc $ee
    cp b
    push hl
    pop hl
    ldh [rTMA], a
    ld [hl], a
    db $e4
    ld c, $0e
    ld l, h
    ldh [$80], a
    db $ed
    ld e, c

jr_071_404b:
    pop hl
    ld [hl], e
    pop hl
    ld l, e
    pop hl
    ret nc

    ret z

    db $ec
    ret nz

    db $ed
    or [hl]
    ld [c], a
    ld b, b
    and $0d
    jr c, @-$1e

    dec c
    dec c
    db $eb
    ld l, l
    ld l, l
    ld sp, $6de0
    jp nz, Jump_071_6ee0

Jump_071_4067:
    ld l, $6e
    nop
    ld a, [hl+]
    db $e3
    sub b
    ld [c], a
    ld b, b
    db $eb
    reti


    pop hl
    rst $10
    pop hl
    sub $e1
    ld [$00c0], a
    pop hl
    db $f4
    ld b, $e0
    ret nc

    ldh [rKEY1], a
    jp nz, Jump_071_6ee0

    ld l, $4e
    ld c, $1e
    jp hl


    pop bc
    ld l, [hl]
    ld c, $4e
    ld c, [hl]
    ld [$f2c0], a
    add $c6
    jp nz, $ff78

    ldh [$c0], a
    db $e3
    ret z

    pop bc
    ld c, [hl]
    ld c, $4e
    ld l, $9f
    and $04
    or l
    pop bc
    ld a, h
    ldh [$6e], a
    or c
    jp nz, $c6a9

    or l
    ldh [$80], a
    push hl
    inc d
    pop hl
    jr nz, jr_071_404b

    add $98
    pop hl
    sub a
    pop hl
    ld e, a
    ld [c], a
    sbc e
    ldh [$0d], a
    push af
    ret nz

    ld a, c
    ret nz

    add [hl]
    inc a
    ldh [$2e], a
    ld c, $c0
    jp hl


    db $fc
    call nz, $c243
    inc l
    add sp, $4d
    nop

Call_071_40cf:
    sbc b
    db $e4
    ldh [$e6], a
    adc $c4
    ld sp, $c0c1
    db $ed
    inc l
    jp nz, $c106

    inc l
    jp hl


    inc c
    add hl, bc
    ret


    ld d, b
    pop hl

Call_071_40e4:
    ld c, l
    dec l
    add hl, de
    jp $e380


    ret nz

    ret nz

    ret nz

    db $ec
    jr nz, @-$06

    and c
    inc l
    rst $20
    ret


    xor d
    rst $10
    pop bc
    jp nz, Jump_000_2da0

    call nz, $82a2
    jp nz, Jump_071_6d03

    ld l, l
    rst $38
    jp $e580


    nop
    db $e4
    sub l
    and a
    ret nz

    db $eb
    ret c

    push bc
    nop
    ret nz

    ld [c], a
    rst $38
    db $e3
    jp hl


    xor d
    inc l
    jp nz, $ebc0

    or h
    rst $20
    ld d, l
    pop hl
    adc $c1
    ld c, $18
    ld [c], a
    dec c
    ld c, l
    ld l, l
    ld a, c
    ldh [$2b], a
    jp $c429


    db $ec
    pop hl
    ldh [$2c], a
    pop bc
    add hl, de
    pop bc
    add b
    pop af
    ret nz

    rst $20
    sub a
    pop hl
    ld l, e
    ld l, e
    ld c, l
    pop bc
    dec l
    xor h
    pop hl
    ld c, h
    xor d
    inc l
    jp nz, $85d4

    sub l

Jump_071_4145:
    and e
    ld l, l
    ld l, l
    pop hl
    dec l
    jp nz, $b9a2

    and b
    ld c, b
    pop bc
    ld d, h
    and e
    dec c
    ld l, l
    dec c
    ld bc, $bf6b
    pop hl
    and c
    xor c
    and b
    and c
    inc l
    jp nz, $eac0

    dec b
    and b
    and [hl]
    adc d
    inc e
    ld a, [hl]
    jp nz, $a2a3

    ld l, e
    dec c
    ld c, e
    ret nz

    ld [c], a
    and c
    xor b
    ret nz

    db $e4
    ld b, b
    ld b, c
    add e
    inc l
    db $e3
    ld c, e
    and d
    db $e4
    ld [c], a
    ld d, c
    add a
    cp e
    and c
    ld l, e
    ret nz

    pop hl
    ld bc, $a16d
    xor h
    add b
    push hl
    ld l, $85
    sbc $84
    ld [c], a
    add b
    inc hl
    add c
    call Call_000_0080
    ldh [$a5], a
    ld [bc], a
    ldh [rLCDC], a
    ldh [$c0], a
    ldh [$a1], a
    xor h
    xor [hl]
    add e
    ld sp, hl
    ld h, e
    sbc $89
    ld hl, sp-$32
    ld h, c
    adc b
    call nz, $c205
    dec bc
    ld l, e
    ld l, e
    dec bc
    dec bc
    ld bc, $804b
    ldh [rSTAT], a
    xor h
    cp h

Call_071_41b7:
    ld h, d
    pop de
    jp $a2d1


    sbc $84
    adc [hl]
    ld h, b
    ld a, [hl]
    inc hl
    and l
    ld l, l
    ld c, e
    ld c, e
    dec c
    dec c
    ld c, e
    rst $38
    db $e4
    jr nz, @-$31

    call nz, $ac81
    ld a, [c]
    set 0, b
    db $e4
    ld c, a
    ld h, h
    ld l, l
    adc d
    ldh [$c0], a
    jp hl


    ld b, b
    ld h, e
    jp nz, $ac01

    sub e
    add e
    sub b
    ld h, e
    sbc [hl]
    add d
    di
    call nz, $ff0b
    ldh [rP1], a
    add [hl]
    push hl

Jump_071_41ee:
    add b
    and $a1
    xor c
    add b
    push hl
    ld b, a
    and h
    sbc [hl]
    add h
    add sp, -$1d
    pop bc
    db $e3
    nop
    ret nz

    jp hl


    nop
    ld [c], a
    ld h, c
    xor d
    cp e
    and l
    ret nz

    push hl
    sbc $84
    dec d

Call_071_420a:
    ld h, d
    pop bc
    db $e3
    cp $cc
    ret nz

    dec hl
    dec bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld l, d
    dec bc
    ld [bc], a
    db $fd
    ldh [rWX], a
    nop
    jp $a6a1


    ld [hl], h
    ld b, l
    di
    ld l, c
    pop bc
    and c
    ld [hl], l
    ld h, c
    ld [hl-], a
    ld [$4be1], sp
    adc l
    ret nz

    call nz, Call_071_4ae0
    ld a, [bc]
    rst $38
    db $e3
    cp a
    ldh [$60], a
    nop
    pop bc
    inc d
    ld b, [hl]
    cp d
    ld b, [hl]
    inc e
    ld b, [hl]
    xor b
    ld b, [hl]
    ld c, l
    dec c

Jump_071_4242:
    dec b
    db $e3
    di
    dec c
    dec c
    call nz, $bde4
    ld [c], a
    ld c, e
    ld c, e
    ld c, l
    dec l
    add c
    ld l, l
    ld [hl], c
    ld h, b
    cp [hl]
    add h
    cp d
    ld b, [hl]
    sub e
    add l
    ld a, h
    ld l, b
    ret nz

    and $6b
    dec bc
    ld a, [bc]
    ld a, [hl+]
    rst $20
    ld b, c
    dec c
    ld a, e
    pop hl
    ld a, [hl-]
    ret nz

    cp $80
    ld [$c0c4], sp
    cp d
    ld b, a
    ret nz

    and $ee
    rst $20
    adc h
    ld h, b
    pop de
    and b
    add d
    jp nz, Jump_000_0d6b

    cpl
    dec c
    dec hl
    dec bc
    dec bc
    cp a
    ldh [$2a], a
    cp $a4
    or e
    ld b, e
    and b
    cp d
    ld c, c
    ld a, [c]
    call nz, $48a8
    ld c, e
    ld h, c
    ret nz

    db $e4
    ld c, e
    dec [hl]
    pop hl
    dec hl
    inc b
    cp a
    ldh [$be], a
    and l
    ld c, $33
    ld b, d

Jump_071_429e:
    cp d
    ld c, [hl]
    and a
    xor e
    ld h, l
    ld h, d
    dec a
    push hl
    rra
    dec bc
    dec bc
    ld l, e
    ld a, [bc]
    dec bc
    ld a, h
    and b
    ld a, b
    and c
    add b
    xor $e0
    add hl, sp
    and h
    inc e
    ld b, d
    pop de
    ld b, $25
    ld h, e
    add d
    ld [c], a
    dec c
    dec hl
    dec hl
    add c
    ld c, e
    ei
    ret nz

    ret nz

    ld [$6c1a], a
    ret nz

    rst $28
    ld [hl], e
    ld bc, $a30c
    dec c
    ld c, $00
    jp nz, $4b2a

    dec l
    ld b, b
    and $1f
    ld h, b
    ld b, l
    add l
    ld a, [$c828]
    ld h, d
    ld bc, $4a28
    call z, $0b82
    add b
    pop hl
    add a
    add c
    dec l
    dec l
    ld bc, $bc2d
    add e
    ld a, [hl]
    ld h, c
    ld h, c
    inc bc
    ret nz

    db $ec
    xor [hl]
    ld [$e4c0], a
    call nz, $1682
    ld a, [$0d80]
    dec c
    pop bc
    push hl
    dec c
    dec bc
    and d
    call c, $8e85
    ld h, l
    jr z, jr_071_4338

    ld h, a
    ld a, h
    ld h, h
    ret nz

    rst $20
    ld c, e
    rlca
    add b
    ld l, e
    cp e
    add [hl]
    pop bc
    ldh [rP1], a
    xor e
    ld hl, $23ea
    adc e

jr_071_431e:
    rlca
    dec l
    ld l, d
    ld [$0687], sp
    add e
    adc c
    ld h, b
    pop bc
    rst $20
    nop
    adc a

jr_071_432b:
    ld [hl+], a
    jp nz, $c005

    ld h, l
    ld h, [hl]
    ld [bc], a
    adc $06
    add d
    db $e3
    pop bc
    ld [c], a

jr_071_4338:
    call nz, Call_000_00a0
    cp a
    and b
    add d
    jp hl


    ld e, h
    ld [bc], a
    ld [$7625], a
    ld b, l
    adc $0a
    ld b, d
    rst $20
    ld c, h
    push hl
    ret nz

    ld [hl], $c3

Call_071_434e:
    xor h
    add c
    xor h
    ld h, h
    ret nz

    and $76
    ld b, h
    dec l
    ld l, d
    dec c
    ld c, l
    nop
    ld a, l
    jr nz, jr_071_431e

    add sp, -$47
    and b
    ccf
    ld h, c
    jp $a0e1


    ld b, [hl]
    ret nz

    rst $20
    db $76
    ld b, d
    nop
    ld c, $2c
    ld [bc], a
    and $c0
    and l
    ld a, [hl-]
    ret nz

    ld b, $41
    and b
    ld b, a
    ld l, b
    inc b
    ld c, c
    push hl
    jr c, jr_071_432b

    ld c, c
    ld b, l
    ld b, d
    pop bc
    rst $20
    ld c, e
    dec c
    ld l, e
    add b
    and b
    cp d
    and b
    add b
    ld [$a0a0], sp
    ld b, [hl]
    ld l, e
    ld b, b
    dec bc
    jp nz, Jump_071_4576

    ld c, $2c
    ld [bc], a
    db $ec
    ld c, e
    inc bc
    ld l, e
    dec bc
    add e
    and b
    ret z

    ld [bc], a
    ldh [rDMA], a
    jp $c003


    ld a, [c]
    ld l, d
    ld [bc], a
    nop
    jp nz, $83ca

    and d
    call nz, $60c2
    ld b, h
    ld hl, $8025
    and $2d
    ld l, b
    ld h, c
    db $e3
    ld h, $87
    push bc
    dec l
    ld l, e
    ld b, $80
    add e
    and b
    dec bc
    rst $00
    ld h, c
    ret nz

    push hl
    nop
    ld b, a
    ld h, [hl]
    ld b, b
    and $f9
    ld [hl+], a
    ld b, h
    inc hl
    ld [hl+], a
    ld h, b
    ret nz

    nop
    ld d, l
    and h
    ld a, [$1660]
    ld b, b
    ld b, [hl]
    ld c, l
    dec l
    dec b
    ld [hl+], a
    ld c, $5d
    and b
    ld e, c
    ld h, l
    nop
    and $00
    ld a, h
    and h
    and h
    call nz, $8484
    sub $82
    add d
    pop bc
    rst $38
    db $e4
    ld b, e
    nop
    ld b, a
    ld l, h
    nop
    db $76
    ld b, l
    ld e, b
    inc bc
    and h
    add $c2
    and h
    ret nz

    db $e4
    pop bc
    db $e4
    dec sp
    ret nz

    cp a
    db $e3
    nop
    ld b, a
    ld l, c
    db $76
    ld b, l
    add e
    add h
    db $e4
    jp $f5c0


    ld a, e
    add b
    ld e, c
    ld l, [hl]
    jp nz, Jump_000_30e6

    ret nz

    rst $20
    add d
    and [hl]
    ld d, c
    db $e3
    call nz, $0b41
    dec bc
    or d
    ld b, b
    cp l
    ld b, b
    nop
    jp nz, Jump_000_0085

    inc l
    dec [hl]
    pop bc
    ld b, h
    ld h, $bd
    add d
    add h
    add d
    adc [hl]
    and d
    ld b, b
    and $00
    ld b, d
    nop
    ret nz

    push af
    ld [hl-], a
    jp Jump_000_2544


    ld a, [de]

Call_071_4444:
    and c
    ret nz

Jump_071_4446:
    call nz, Call_071_41b7
    ld b, b
    add sp, $00
    ret nc

    inc b
    ld e, c
    ld l, e
    jp nz, $fee5

    ldh [$b8], a
    ld h, d
    ld b, [hl]
    ld h, c
    sub b
    add e
    adc [hl]
    and d
    inc de
    dec c
    ld l, e
    add c
    and b
    cp l
    ld h, c
    ld l, e
    inc b
    add b
    rla
    jp Jump_071_6919


    nop
    ld b, l
    ld h, [hl]
    ld l, $62
    ld [hl], d
    ld [bc], a
    or l
    ld b, c
    push de
    ld h, l
    or $a1
    add e
    ld h, h
    add [hl]
    ld h, c
    nop
    ld h, b
    ld h, c
    and b
    add e
    ld b, a
    ld h, l
    ld a, h
    ld l, b

Call_071_4484:
    cp b
    ld b, a
    ld [bc], a
    rst $00
    cp a
    and l
    inc b
    add e
    nop
    ld e, d
    ld h, a
    or [hl]
    and b
    sub e
    and h
    ld c, a
    ldh [$82], a
    and e
    cp h
    ld b, l
    add c
    ld h, c
    ret nz

    jp hl


    nop
    ld a, [hl]
    and c

Jump_071_44a0:
    rst $00
    ld h, e
    add [hl]
    and b
    ld e, d
    ld h, l
    ld [hl], a
    and c
    ld d, b
    ld h, c
    call nz, $84e8
    ld b, $00
    ld b, d
    and h
    sub e
    and c
    db $f4
    ld h, h
    adc b
    ld h, e
    adc $20
    ld e, d
    ld h, a
    scf
    add a
    ld d, c
    inc b
    nop
    add h
    ld a, [bc]
    ld [bc], a
    push bc
    jr jr_071_44e7

    ld [de], a
    ld b, c
    ld c, [hl]
    ld bc, $2ba0
    sub e
    and a
    cp h
    ld b, h
    nop
    add h
    add hl, bc
    ld [bc], a
    add d
    ld d, e
    and c
    ld [hl], h
    ld h, c
    jp nc, $9e21

    add h
    ret nz

    ld a, [c]
    ld b, d
    and a
    nop
    dec hl
    and [hl]
    ld [$4f23], sp

jr_071_44e7:
    add b
    ld e, e
    ld h, c
    ld c, a
    ld b, e
    ld c, a
    ld hl, $811c
    add b
    db $eb
    nop
    ld d, e
    add c
    ld b, e
    call nz, Call_000_0af2
    ld d, l
    ld hl, $a112
    sbc c
    inc hl
    rlca
    pop hl
    ret nc

    ld [hl+], a
    nop
    ld e, d
    ld l, b
    sub e
    and h
    add b
    and $c0
    jp hl


    jr nz, jr_071_452e

    cp a
    ld [c], a
    ld d, c

Jump_071_4511:
    add b
    ld hl, $00a4
    sub c
    add h
    ld a, [de]
    ld h, a
    ld a, [$0822]
    and d
    ld b, h
    push bc
    dec hl
    xor e
    ret nz

    add a
    ld c, [hl]
    add h
    nop
    ret nc

    ld [hl+], a
    ld e, d
    ld h, a
    cp d
    ld [hl+], a
    add l
    ld [hl+], a

jr_071_452e:
    rst $38
    add [hl]
    ret nz

    pop af
    sbc d
    ld b, e
    add b
    ld [c], a
    nop
    ret nz

    db $e3
    ret c

    ld bc, $e3c0
    ld b, l

Call_071_453e:
    db $e3
    or h
    ld [c], a
    inc a
    inc hl
    ld [hl], d
    ld a, [bc]
    ret nz

Jump_071_4546:
    add a
    ld [$e47f], sp
    ld d, b
    inc hl
    ld de, $6d88
    ld [hl], e
    ld h, d
    adc $42
    ld e, c
    rst $20
    dec hl
    and [hl]
    nop
    nop
    add l
    and c
    add [hl]
    ld l, c
    ld b, h
    pop de
    ld l, b
    ld b, d
    db $e4
    db $fc
    jp nz, $0000

    nop
    db $fd
    and b
    rst $38
    db $f4
    jp c, $d0d3

    ret nc

    db $dd
    reti


    ld l, a
    db $dd
    pop de
    ret nc

    db $d3

Jump_071_4576:
    sbc $e1
    db $e4
    push hl
    ret c

    push af
    cp $c0
    ld a, [c]
    db $eb
    and b
    and b
    call c, $d4d7
    call nc, $d2bf
    ret nc

    ret nc

    jp nc, $d7d4

    sbc [hl]
    pop hl
    and $b9
    rst $20
    rst $20
    and $ff
    rst $38
    and b
    db $ec
    db $ed
    ld a, a
    pop hl
    reti


    db $dd
    reti


    cp l
    ldh [$d7], a
    reti


    jp c, $e15e

    add sp, -$17
    sbc [hl]
    rst $20
    and $d8
    push de
    push de
    ret c

    cp l
    rst $38
    ld a, a
    ldh [$db], a
    dec e
    db $db
    cp l
    ldh [$da], a
    db $db
    call c, $e0ce
    rst $08
    ld [c], a
    ld sp, hl
    ld [c], a
    ccf
    ret c

    push de
    jp nc, $d4d6

    sub $bd
    push af
    add hl, de
    db $e3
    sub h
    sbc [hl]
    and $bd
    ldh [$dc], a
    ldh [$c0], a
    db $d3
    db $fc
    pop bc
    rst $00
    ldh [$d0], a
    ld l, e
    jp nc, $f4d8

    ldh [$d6], a
    ld hl, sp-$20
    call nc, $ead6
    jp nz, $c450

    adc $19
    ldh [$61], a
    ldh [$9f], a
    ldh [$d2], a

Jump_071_45ef:
    ld e, h
    jp hl


    rst $10
    db $fc
    ret nz

    ld a, a
    ret c

    jp nc, $d1d0

    ret nc

    jp nc, $b4d7

    ldh [$0d], a
    rst $10
    jp hl


    ret nz

    jp nc, $b5d7

    ldh [$86], a
    ret z

    inc l
    push hl
    add hl, de
    ldh [$ab], a
    db $d3
    sub $e0
    pop hl
    sub $89
    jp nz, $b5ea

    jp $aada


    db $fc
    ret nz

    rst $10
    adc d
    pop hl
    rst $10
    ld hl, sp-$1f
    db $dd
    jp hl


    ret nz

    rst $10
    ld de, $69dd
    jp $e5c2


    inc l
    rst $20
    ret c

    and l
    ldh [$8b], a
    pop bc
    ldh [$e5], a
    ld l, d
    or l
    pop bc
    call c, $c0fc
    jp c, $e07b

    reti


    jp c, $e0f8

    cp b
    add hl, hl
    rst $00
    inc l
    add $2c
    jp hl


    db $d3
    ret nc

    db $dd
    sub $e1
    db $dd
    nop
    ld d, l
    ldh [$c8], a
    push bc
    or d
    jp $e07b


    di
    pop bc
    add hl, hl
    ret z

    inc l
    push bc
    inc l
    ld [$d3f7], a
    ret nc

    pop de
    jp z, $d0a0

    ret nc

    db $d3
    jp c, $0d00

    pop hl
    ld sp, hl
    jp nz, $a3c4

    ld a, e
    pop hl
    ld l, $e1
    add hl, hl
    rst $00
    inc l
    call nz, $c0e0
    jr c, @+$2e

    add sp, -$1e
    pop bc
    res 4, b
    call nc, $dcd7
    dec c
    pop hl
    call $21c0
    ret c

    sbc b
    rst $20
    add hl, hl
    call z, $c32c
    ld d, l
    xor h
    jp c, $a3cb

    jp z, Jump_071_78a1

    dec c
    ldh [$96], a
    pop bc
    call nz, $9fa1
    sbc l
    sbc l
    sbc a
    add e
    and a
    db $10
    add hl, hl
    call nz, $c32c
    sub $a1
    ld d, l
    xor b
    call c, $a3cb
    dec d
    ld [c], a

Call_071_46b2:
    or h
    pop hl
    cp $8d
    ret nz

    and b
    and b
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    sbc h
    ld bc, $6a9f
    and d
    ld c, d
    jp z, $c12c

    call nc, Call_071_5582
    xor c
    and d
    and $b4
    ld [c], a
    inc c
    adc l
    ret nz

    pop bc
    ldh [$ae], a
    ld b, [hl]
    cp a
    pop hl
    and c
    xor l
    inc l
    jp nz, $ec2c

    ld hl, sp+$0d
    pop bc
    inc a
    xor c
    add b
    and c
    and c
    xor [hl]
    xor a
    xor [hl]
    ld b, [hl]
    add a
    xor [hl]
    ld b, [hl]
    and c
    and c
    xor l
    inc l
    jp nz, $ed2c

    ld c, d
    rst $00
    sbc $be
    dec h
    add e
    ld [$9ea0], a
    xor a
    ld b, [hl]
    cp $e1
    sbc [hl]
    ldh [$a1], a
    xor l
    inc l
    jp nz, $ab79

    ld a, $c2
    ld c, $82
    db $eb
    and b
    ldh [rNR11], a
    pop hl
    db $e4
    ld h, e
    ld [bc], a
    pop hl
    cp $e1
    sbc [hl]
    and c
    xor [hl]
    inc l
    jp $850e


    ld hl, sp-$22
    add h
    ld [de], a
    and c
    dec a
    add d
    ld [c], a
    db $e3
    and b
    sbc a
    and d
    daa
    sbc l
    sbc l
    sbc l
    pop bc
    db $e4
    add b
    ldh [$ea], a
    and c
    xor d
    dec b
    xor c
    jr nz, @+$10

    add b
    sbc $85
    ld [de], a
    and c
    ld a, [$88c4]
    pop bc
    xor [hl]
    call nz, $80c1
    and $06
    and c
    xor b
    sbc $df
    ld b, l
    ld h, d
    sub e
    add [hl]
    sbc $85
    sub a
    and e
    add [hl]
    and $03
    xor a
    xor a
    ret nz

    jp hl


    and c
    xor b
    ld hl, $93e4
    add [hl]
    sbc $85
    inc c
    ld [$fa00], a
    jp hl


    nop
    pop hl
    and c
    xor b
    ld hl, $c4e0
    ld b, c
    sub e
    add [hl]
    sbc $85
    push de
    ld b, c
    inc c
    pop bc
    pop af
    add b
    ret nz

    sbc $df
    and c
    xor b
    add a
    ld b, h
    ld a, [c]
    rst $00
    or d
    call nz, $d5fc
    ld b, b
    add d
    rst $20
    ld b, l
    ld b, l
    ld b, l
    ld c, b
    ld c, [hl]
    ld d, e
    rra
    ld b, e
    ld c, b
    ld d, e
    ld b, l
    ld b, [hl]
    nop
    ret nz

    ld l, [hl]
    pop bc
    and c
    and a
    or b
    ld b, [hl]
    ld b, e
    sub e
    add h
    add hl, sp
    ld b, h
    adc $60
    add sp, -$17
    ld b, e
    and $45
    rst $38
    ld c, b
    ld c, c
    ld d, l
    ld b, a
    ld h, b
    ld h, c
    ld h, c
    ld c, h
    rrca
    ld h, b
    ld h, c
    ld d, d
    ld b, l
    nop
    ret nz

    ld c, l
    db $e4
    inc e
    ld l, d
    sub e
    add h
    ld a, [$49a8]
    sbc [hl]
    db $10
    jp $aeae


    ld d, c
    ld e, [hl]
    ld h, c
    rst $38
    ld d, l
    ld d, e
    ld e, c
    ld e, c
    ld d, h
    ld h, c
    ld h, c

jr_071_47d3:
    ld h, c
    add e
    ld d, [hl]
    ld b, l
    ccf
    and c
    ccf
    ld b, l
    cp d
    ld c, b
    sub e
    add h
    xor b
    ld c, c
    and c
    cp $d0
    and e
    xor a
    xor a

Jump_071_47e7:
    ld b, l
    ld d, d
    ld d, d
    ld a, c
    ld a, d
    ld a, a
    ld a, e
    ld a, h
    ld a, l
    ld b, a
    ld h, c
    ld h, c
    ld d, l
    cp $83
    ldh [$bc], a
    add h
    cp d
    ld c, b
    sub e
    add h
    xor b
    ld c, c
    ld bc, $79e8
    ld a, [hl]
    ld b, l
    rra
    ld b, c
    ld b, l
    ld a, a
    ld a, l
    ld c, e
    ld b, c
    ldh [$7e], a
    and l
    ld e, h
    and e
    add sp, -$46
    ld b, [hl]
    rst $30
    ld h, h
    xor b
    ld c, b
    ld [$c842], a
    add b
    cp l
    inc l
    inc bc
    ld h, $2a
    cp a
    ldh [$c1], a
    ld [c], a
    ld a, [hl]
    and h
    sbc d
    ld h, c
    cp d
    ld c, [hl]
    xor b
    ld c, c
    rst $30
    db $eb
    and b
    sbc [hl]
    adc d
    and h
    ld a, c
    adc l
    dec l
    jr nz, jr_071_4856

    jr nz, jr_071_4863

    ld d, b
    ld b, l
    add c
    ld a, b
    and e
    cp [hl]
    and e
    cpl
    jr nz, jr_071_47d3

    db $e3

jr_071_4844:
    dec bc
    ld [hl], l
    and c
    pop de
    ld [$2042], sp
    sbc [hl]
    adc d
    and e
    ld b, d
    ldh [$3a], a
    rra
    ld hl, $472a
    ld d, h

jr_071_4856:
    ld b, h
    ret nz

    ldh [$78], a
    and c
    cp [hl]
    and e
    ldh [$2f], a
    jr nz, jr_071_4844

    dec bc
    sub [hl]

jr_071_4863:
    add c
    pop de
    dec bc
    ld a, [hl]
    call nz, $4680
    add hl, sp
    ld a, a
    dec [hl]
    ld a, $49
    ld d, h
    ld b, l
    add e
    add h
    ld a, [hl]
    add l
    inc bc
    db $e4
    push hl
    cp b
    ld b, e
    db $e3
    ld a, [bc]
    ld [hl], l
    and d
    pop de
    rlca
    rst $20
    add b
    ld a, $c4
    rst $38
    add d
    add e
    ld a, [hl-]
    dec [hl]
    ld a, [hl-]
    ld b, e
    ld b, l
    add e
    inc bc
    add [hl]
    add l
    ld a, $83
    cp [hl]
    ld h, d
    xor b
    ld [hl+], a
    cp d
    ld c, e
    pop de
    dec bc
    ld [$fe80], sp
    ld a, $c4
    add l
    add a
    ld [hl], c
    ld [hl], c
    ld [hl], c
    adc b
    adc b
    ld bc, $c187
    db $e4
    ld a, $60
    ld a, b
    nop
    ld [$7725], a
    xor c

jr_071_48b2:
    ld l, h
    inc bc
    pop de
    inc b
    ld a, h
    ld [$be80], sp
    and h
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld [hl], $85
    jp $ff80


    ld b, e
    cpl
    jr nz, jr_071_48b2

    dec h
    inc bc
    ld a, [hl+]
    adc $0c
    adc [hl]
    ld h, e
    ld b, $81
    add hl, sp
    nop
    pop bc
    jp hl


    ld c, $82
    ld [$8025], a
    rlca
    adc $09
    add c
    add d
    ld c, a

Jump_071_48e0:
    ld h, h
    ld b, $81
    ld bc, $8245
    jp hl


    cpl
    ld h, d
    ld [$7625], a
    ld b, [hl]
    adc $0c
    ld a, [hl+]
    jr nz, jr_071_4934

    push hl
    ld c, $ff
    and c
    ld a, d

jr_071_48f7:
    ld a, h
    ld a, l
    ld b, h
    ld b, c
    ret nz

    ld [hl+], a
    ld c, $82
    ld [$c426], a
    ld c, c
    db $e4
    dec l
    ld l, h
    ld [$202a], a
    ret nz

    rst $20
    ld b, c
    and b
    ld b, [hl]
    ld a, a
    ld bc, $c67d
    add e
    ld h, l
    ld b, l
    ld [$7625], a
    ld b, h
    adc $0a
    db $fc
    jp nz, $6784

    dec bc
    ld a, c
    ld a, [hl]
    nop
    pop hl
    add c
    ld b, $40
    and b
    ld c, b
    or l
    inc b
    db $76
    ld b, l
    ld hl, sp-$32
    add hl, bc
    inc h
    and d
    ld b, l
    ld l, b

jr_071_4934:
    add b
    ld b, h
    ld a, [hl-]
    dec [hl]
    ld b, b
    ld [bc], a
    ret nz

    ldh [$9e], a
    and b
    ld c, c
    ld hl, sp+$04
    ld c, c
    push hl
    adc $09
    inc h
    and d
    ld b, d
    add h
    ld c, $c0
    and e
    ld [hl], $38
    ld b, h
    add e
    and b
    ld b, $41
    and b
    ld b, [hl]
    inc a
    add h
    ldh a, [rPCM12]
    ld b, l
    adc $09
    inc h
    and d
    jp nz, $85c8

    add [hl]
    add e
    ld b, e
    inc c
    add e
    and c
    add $20
    sbc $df
    and b
    ld c, d
    db $76
    ld b, a
    ld [hl], b
    add hl, bc
    inc h
    and d
    jr jr_071_48f7

    ld h, e
    adc [hl]
    ret nz

    adc e
    nop
    add l
    add a
    add e
    and d
    ld b, h
    jp nz, Jump_071_44a0

    ret nz

    ld e, c
    ld h, l
    ld c, c
    push hl
    ld b, h
    ld a, [hl+]
    ld [de], a
    ld [hl+], a
    ld d, l
    and h
    inc a
    ld c, c
    sbc h
    sbc a
    nop
    ld [hl], e
    jr nz, @-$38

    add c
    ld e, c
    ld h, a
    ld c, c
    push hl
    pop af
    ld b, l
    and h
    call nz, Call_071_6402
    sub [hl]
    add c
    ld e, $38
    ld h, b
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [rDIV], a
    ld h, h
    ld b, a
    ld l, e
    ldh a, [rPCM12]
    ld c, c
    and h
    add $84
    add l
    ld d, h
    ld [bc], a
    sbc [hl]
    ld b, l
    ld [hl], $3b
    inc bc
    dec [hl]
    dec sp
    db $fd
    ldh [$fc], a
    add b
    db $fd
    and h
    ld b, a
    ld l, b
    dec sp
    ld c, c
    and h
    add $78
    adc h
    nop
    add b
    db $e4
    cp b
    and c
    ld b, h
    inc a
    and h
    ld h, h
    rst $38
    ldh [$1f], a
    and l
    inc a
    ld b, h
    xor [hl]
    xor [hl]
    db $fc
    and b
    ld e, c
    ld l, h
    ld a, [$e228]
    ld b, h
    dec h
    db $eb
    adc h
    nop
    add d
    ld b, d
    ld c, [hl]
    jp nz, Jump_071_429e

    dec [hl]
    rst $38
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    dec [hl]
    ld b, d
    rlca
    xor a
    xor a
    sbc [hl]
    ld l, b
    ld hl, $6947
    ret nz

    inc b
    inc [hl]
    add e
    and h
    jp $6220


    ld b, c
    add h
    add e
    ld d, $60
    ld a, [$c040]
    ldh [$35], a
    rst $38
    ldh [$c0], a
    ldh [rP1], a
    cp [hl]
    ret nz

    push bc
    ld h, d
    ld b, a
    ld l, b
    ret nz

    inc b
    jp nz, $c765

    ld b, $c6
    ld b, d
    adc [hl]
    and d
    ld a, d
    ld b, b
    ldh [rOCPD], a
    cp a
    ld h, b
    ld [hl], c
    ld l, l
    inc a
    ld b, h
    push bc
    ld h, e
    jr nc, @+$49

    ld l, d
    ld [hl], e
    jr z, @+$09

    add l
    push bc
    nop
    sbc [hl]
    xor [hl]
    ld d, b
    ld bc, $83cf
    nop
    ret nz

    rst $00
    rst $38
    and b
    add a
    inc hl
    ld b, a
    ld [hl], b
    jp z, Jump_071_6962

    inc hl
    ld b, h
    add c
    pop bc
    db $e3
    ld [bc], a
    inc hl
    ldh [$ea], a
    ld b, b
    rst $00
    add a
    inc h
    ld e, $24
    cp [hl]
    dec c
    adc c
    ld h, b
    ld l, c
    inc h
    ld [bc], a
    ld b, h
    add l
    sbc [hl]
    inc hl
    db $e3
    ld a, c
    ld h, e
    inc b
    add e
    ld e, d
    ld l, e
    db $fc
    ld b, l
    ei
    rst $28
    jr nc, @+$04

    call nz, $0396
    jr c, jr_071_4add

    jp z, $de01

    rst $18
    adc b
    jr nz, jr_071_4add

    ld h, a
    db $10
    sub e
    xor b
    ld [hl], d
    inc c
    ld c, h
    pop hl
    jr jr_071_4ab6

    sbc a
    add h
    db $e3
    ld [$5aa0], a
    ld l, b
    jr nz, jr_071_4acd

    add a
    dec b
    and [hl]
    add h
    rlca
    ld b, d
    and h
    ld h, b
    add c
    db $d3
    db $f4
    ld b, c
    add $62
    nop
    ld l, [hl]
    ld b, b
    ld e, d
    ld l, b
    scf
    add [hl]
    cp a
    ld b, [hl]
    add h
    ld [$86c2], sp
    jr jr_071_4ad4

    jp nc, Jump_000_2021

jr_071_4ab6:
    ld c, [hl]
    ld b, $5a
    ld h, [hl]
    scf
    adc h
    dec hl
    xor e
    add [hl]
    ld [hl+], a
    xor [hl]
    ld c, a
    add b
    jr jr_071_4ae6

    add b
    dec c
    jp nz, Jump_000_23d0

    ld e, d
    ld l, b

Jump_071_4acc:
    scf

jr_071_4acd:
    add h
    ld [bc], a
    xor c
    add h
    rlca
    dec b
    ld b, d

jr_071_4ad4:
    xor a
    inc bc
    xor [hl]
    sbc [hl]
    xor [hl]
    and [hl]
    ret nc

    inc h
    ld e, d

jr_071_4add:
    ld l, b
    sub e
    and a

Call_071_4ae0:
    ld [bc], a
    and l
    ld [hl], d
    rlca
    inc bc
    db $e4

jr_071_4ae6:
    push hl
    cp a
    db $e3
    ld c, [hl]
    ld h, d
    and l
    add l
    ret nc

    ld hl, $675a
    ld hl, sp-$7e
    nop
    add d
    adc d
    ld [hl], d
    ld [$4502], sp
    ret nz

    rst $20
    ret nc

    ld h, $11
    add l
    cp l
    inc bc
    add c
    adc e
    nop
    ld [hl], d
    ld b, $02
    ld b, l
    ld c, [hl]
    ld b, e

Call_071_4b0b:
    and l
    add h
    ret nc

    inc hl
    ld [hl+], a
    dec h
    ld hl, sp-$7d
    ld a, a
    db $eb
    nop
    ld [hl], d
    add hl, bc
    ld b, b
    add h
    adc b
    call nz, Call_000_27d0
    cp $fb
    ld [hl], e
    ld h, a
    ld b, b
    db $ec
    ret nc

    ret nc

    nop
    cp a
    ld [$0000], a
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
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $eb
    ldh [rIE], a
    rst $38
    nop
    rst $38
    db $f4
    nop
    nop
    nop
    ld [bc], a
    nop
    dec h
    ld c, $02
    ld bc, $0f24
    ld [bc], a
    ld [bc], a
    ld h, $0f
    ld [bc], a
    inc bc
    jr z, jr_071_4b6d

    ld [bc], a
    inc b
    jr nz, jr_071_4b75

    ld [bc], a
    dec b
    ld hl, $0213
    ld b, $1a
    add hl, de

Jump_071_4b6a:
    ld [bc], a
    rlca
    dec de

jr_071_4b6d:
    add hl, de
    ld [bc], a
    ld [$1d16], sp
    ld [bc], a
    add hl, bc
    rla

jr_071_4b75:
    dec e
    ld [bc], a
    ld a, [bc]
    jr z, jr_071_4b97

    ld [bc], a
    dec bc
    add hl, hl
    dec e
    ld [bc], a
    inc c
    ld a, [de]
    inc hl
    ld [bc], a
    dec c
    dec de
    inc hl
    ld [bc], a
    ld c, $26
    cpl
    ld [bc], a
    rrca
    daa
    cpl
    ld [bc], a
    db $10
    ld de, $0232
    ld de, $3310
    ld [bc], a

jr_071_4b97:
    ld [de], a
    inc d
    ld a, [hl-]
    ld [bc], a
    inc de
    dec d
    dec sp
    rst $38
    rst $38
    rst $38
    xor c
    ld c, e
    ld d, [hl]
    ld d, c
    ld a, [hl-]
    ld d, [hl]
    ld e, d
    ld d, [hl]
    rst $08
    ld c, l
    ld c, l
    dec c
    ld c, l
    rst $38
    ldh [$fb], a
    ld [c], a
    ld c, l
    ld l, l
    rst $38
    ld l, l
    ld l, l
    ld l, $2e
    ld c, $6d
    ld l, l
    ld c, l
    ld de, $ff0d
    ldh [$e6], a
    ldh [$fb], a
    db $e3
    dec l
    pop af
    ldh [$dc], a
    rst $20
    ei
    db $e3
    ldh a, [$e2]
    pop hl
    db $ec
    add sp, -$36
    ldh [$c0], a
    ld [c], a
    ld l, $2e
    ld l, [hl]
    ld l, $23
    ld c, [hl]
    ld c, $c4
    ldh [$bf], a
    ldh [$ee], a
    ldh [$6d], a
    cp $e4
    ld a, [c]
    db $e3
    inc a
    cp $f4
    add b
    pop hl
    ld l, [hl]
    ld c, $0e
    ld c, l
    rst $08
    ldh [$c2], a
    ldh [$f0], a
    add b
    ldh [$c0], a
    ldh [$80], a
    ld [c], a
    add [hl]
    pop hl
    dec l
    ld l, l
    dec c
    dec c
    ld [bc], a
    db $fd
    ldh [$0d], a
    ldh [$e0], a
    add b
    push af
    ld b, b
    pop hl
    add b
    pop hl
    cp l
    ldh [$c2], a
    pop hl
    nop
    ret nz

    pop hl
    cp [hl]
    ld [c], a
    jp $bde3


    ldh [$ba], a
    ldh [$30], a
    ld [c], a
    ld e, e
    ld [c], a
    and a
    ld [c], a
    nop
    dec a
    db $e4
    dec sp
    push hl
    ld b, b
    ldh [$a0], a
    pop hl
    add hl, sp
    pop hl
    ret nz

    ld [c], a
    ld [hl], e
    pop hl
    pop bc
    push hl
    rlca
    ld l, l
    dec c
    ld l, l
    db $fd
    ldh [$be], a
    ldh [$5b], a
    ld [c], a
    and [hl]
    pop hl
    call nz, Call_071_40e4
    ld a, [c]
    add $80
    ld [c], a
    call $80e2
    db $e4
    rst $08
    ldh [rBGP], a
    db $e3
    dec c
    ld b, c
    ldh [rTMA], a
    db $fd
    db $e3
    dec c
    ld l, l
    ld a, l
    ldh [$80], a
    add sp, -$30
    pop bc
    add b
    jp hl


    or b
    jp nz, $0dc1

    ret nz

    pop bc
    jp nz, Jump_071_47e7

    ldh [$84], a
    pop hl
    ld a, [$2de0]
    dec l
    dec b
    dec l
    ld a, e
    ldh [$0d], a
    ld e, e
    db $e4
    and a
    pop bc
    ret nc

    pop bc
    ld a, b
    push bc
    ld b, h
    db $e4
    ld h, d
    ld e, e
    pop bc
    ld c, $4b
    jp $e0ce


    rst $00
    jp Jump_071_6d2d


    push bc
    ldh [$c0], a

jr_071_4c8c:
    rst $38
    jp nz, $c1b8

    dec de
    db $e4
    or l
    pop bc
    ld d, b
    call nz, $c245
    ld l, [hl]
    ld c, $01
    ld c, [hl]
    ld [bc], a
    ld [c], a
    ld hl, sp-$5f
    db $10
    jp $e2c0


    ld a, [bc]
    ret nz

    add c
    pop bc
    jr c, jr_071_4c8c

    nop
    cp l
    jp $c9d7


    add b
    rst $20
    ld c, a
    pop bc
    cp [hl]
    ldh [$bb], a
    jp $a3fa


    adc d
    ldh [rP1], a
    add h
    push bc
    ret nz

    db $e3
    cp a
    pop hl
    cp h
    and d
    sub e
    db $e4
    dec [hl]
    db $e3
    sbc l
    and d
    push bc
    and c
    ld c, $c7
    ld [c], a
    ld l, $0e
    ld l, [hl]
    ld [hl], l
    ldh [$84], a
    jp $c3be


    add e
    ret nz

    nop
    ld l, a
    and b
    inc bc
    ldh [rSB], a
    ldh [$3e], a
    pop bc
    ld [hl+], a
    ldh [$93], a
    rst $20
    ld [hl], h
    and [hl]
    ret nz

    and $06
    add h
    and b
    ld c, $4e
    and d
    ld [c], a
    ret nz

    and e
    jp z, $2fc2

    and c
    ld l, $a2
    nop
    xor l
    jp $c420


    or l
    pop hl
    dec a
    jp $c2c0


    db $ed
    ld [c], a
    add [hl]
    and b
    dec [hl]
    and $c8
    ld c, l
    db $e4
    jp Jump_000_30e2


    and b
    ld c, [hl]
    db $ec
    add b
    ld a, $c0
    ld c, l
    dec l
    nop
    ld d, e
    and $48
    ret


    ld [bc], a
    call nz, $e5c0
    or h
    jp $c3cc


    ldh a, [$81]
    rst $28
    add c
    nop
    ld [hl+], a
    and b
    ld a, $c1
    ld a, d
    ldh [$a0], a
    and e
    ld l, b
    add sp, $65
    pop hl
    add a
    add c
    ld b, h
    and c
    ld [$e5c0], sp
    jp nc, $d0e0

    ld [c], a
    dec l
    ldh a, [$84]
    ld c, [hl]
    pop hl
    xor l
    jp nz, $82dc

    nop
    push de
    add b
    ld l, b
    rst $20
    ld h, d
    and b
    rra
    db $e4
    add b
    ld [$a404], a
    ld l, h
    rst $20
    or h
    and b
    inc b
    ld a, [hl-]
    pop bc
    ld e, c

Call_071_4d60:
    and e
    dec c
    ld l, b
    rst $20
    add hl, bc
    pop hl
    rra
    ld [c], a
    inc bc
    and d
    ld b, b
    db $e4
    ld [bc], a
    adc h
    add b
    ld c, $c0
    db $ec
    xor a
    add e
    pop hl
    ld h, e
    call z, $14a1
    and $1f
    and $00
    ret nz

    add sp, -$68
    pop hl
    adc a
    ld [c], a
    ret nz

    add sp, -$80
    pop hl
    pop hl
    ld h, h
    call nc, $89c9
    pop bc
    nop
    set 0, l
    cp [hl]
    and e
    ret z

    ld h, b
    sub [hl]
    pop bc
    add a
    add d
    xor h
    add $38
    and b
    ld d, $e1
    nop
    pop hl
    ld h, e
    ret nz

    ld a, [c]
    call z, $1863
    ret nz

    add b
    ld [c], a
    ret


    ld h, h
    ret nz

    rst $20
    ld e, a
    ld h, c
    nop
    pop af
    pop bc
    pop hl
    ld h, c
    dec d
    db $e3
    ld b, b
    push hl
    ret nz

    ld [$6145], a
    db $f4
    ld h, e
    adc c
    ld h, b
    adc h
    push af
    ld b, c
    jp nz, $6da3

    ld l, l
    inc b
    add c
    ld d, h
    ld [c], a
    inc d
    bit 5, l
    ld [$ed80], sp
    ld a, [de]
    add b
    dec e
    and h
    dec c
    call z, $83e1
    ld h, b
    ld b, b
    and c
    inc b
    add d
    nop
    ret nz

    push hl
    ld l, b
    ld [$e500], a
    ld [de], a
    db $e3

Call_071_4de7:
    db $e4
    db $e3
    or b
    add d
    ldh a, [$e3]
    ld de, $0182
    dec l
    ld e, h
    ld b, b
    ld [$6342], a
    ld b, e
    inc [hl]
    and b
    ld a, [hl+]
    and l
    ret


    and e
    rst $18
    jp nz, $8530

    ld b, [hl]
    dec e
    and l
    ld h, l
    ldh [$09], a
    ret nz

    ld c, l
    dec l
    or c
    ld b, e
    xor d
    ld b, b
    nop
    jr c, jr_071_4e71

    ld b, $81
    sub h
    push bc
    dec sp
    ld b, h
    rra
    push hl
    add l
    ld b, [hl]
    db $fd
    ld b, h

jr_071_4e1d:
    add a
    ld b, b
    ld [$e1cc], sp
    or h
    add h
    or a
    ld b, e
    ld c, $a3
    ld b, b
    ld e, e
    add [hl]
    sub d
    ld b, c
    dec sp
    ld h, c
    nop
    ret nz

    inc h
    and h
    add $b0
    add l
    ldh a, [$c5]
    add sp, -$3b
    scf
    ld b, c
    ld [hl], e
    add c
    ld e, e
    add h

jr_071_4e40:
    nop
    rrca
    ld b, b
    dec sp
    ld h, [hl]
    or e
    db $e3
    and h
    call nz, Call_071_46b2
    ret z

    add sp, $2f
    ld b, c
    ret nz

    push hl
    add b
    sub b
    ld l, b
    add b
    and $05
    ld b, [hl]
    jr jr_071_4e1d

    sub e
    add d
    inc sp
    jp nz, Jump_071_4242

    dec c
    ld bc, $c36d
    jp nz, $e9c0

    or c
    ld [hl+], a
    sub c
    push hl
    nop
    ld [hl+], a
    and h
    call nz, $c24c

jr_071_4e71:
    nop
    ret nz

    ld [hl+], a
    or b
    jr nz, jr_071_4e7c

    jr nz, jr_071_4e40

    add e
    or b
    add h

jr_071_4e7c:
    rst $00
    xor d
    ld [hl], b
    ld b, a
    ld b, $69
    nop
    sbc b
    and d
    ld a, $23
    dec sp
    add c
    ld b, e
    ld b, c
    or h
    inc bc
    inc [hl]
    ld b, b
    cp [hl]
    and e
    ret nz

    rst $20
    nop
    ld a, l
    dec h
    ld b, $67
    ld [hl], a
    ld [hl+], a
    sub a
    ld h, b
    ld c, $21
    adc $21
    ld e, $c2
    ld l, c
    nop
    rlca
    dec bc
    dec bc
    dec bc
    ld a, [c]
    ld hl, $239e
    ret nz

    add sp, $03
    dec h
    ld b, $65
    add sp, $37
    ld [hl+], a
    ld b, [hl]
    ld b, c
    scf
    nop
    dec hl
    ld sp, $2b00
    dec c
    dec l
    inc b
    push bc
    ldh [$c2], a
    ldh [$2b], a
    cp [hl]
    ldh [$c0], a
    db $ec
    cp [hl]
    ld c, c
    ld b, $68
    call nz, Call_071_6862
    ei
    ld [hl+], a
    add a
    ld hl, $0145
    dec l
    jp nz, Jump_000_2be1

    dec hl
    ld a, [hl]
    pop hl
    nop
    or l
    nop
    add hl, de
    ld b, a
    or [hl]
    and [hl]
    ld b, $69
    add h
    nop
    sbc d
    ld h, b
    ld d, c
    ld b, d
    ld sp, $0020
    or [hl]
    ret nz

    ret nz

    nop
    add d
    ld [c], a
    ld a, a
    pop hl
    ld a, [hl-]
    jr nz, jr_071_4f1e

    ld h, b
    add h
    inc hl
    ld de, $c045
    ld a, l
    and e
    ld l, e
    rst $00
    ld c, h
    and d
    ld de, $8520
    and d
    ld b, e
    and d
    dec bc
    dec bc
    dec c
    ld l, e
    nop
    ldh [rWX], a
    ld c, e
    ld sp, hl
    and c
    add b
    pop hl
    inc b
    inc hl
    ld de, $e045
    add b

jr_071_4f1e:
    db $ec
    ld b, b
    db $e3
    sub h
    and d
    dec sp
    ld h, c
    ld a, h
    ld [bc], a
    dec bc
    ld l, e
    ld c, e
    nop
    cp $e0
    add c
    ldh [rNR30], a
    add d
    inc b
    ld [hl+], a
    pop de
    ld [hl+], a
    ld b, [hl]
    ld [hl+], a
    dec a
    inc hl
    ld b, [hl]
    ld b, [hl]
    ld h, b
    jr nz, jr_071_4f60

    ld d, e
    ld hl, $a406
    add hl, bc
    ld hl, $e1bf
    dec bc
    dec bc
    dec a
    nop
    add b
    ld a, l
    call nz, $e580
    ret nz

    db $e4
    add $49
    or e
    dec b
    add h
    ld [bc], a
    jp Jump_071_6d84


    nop
    ld a, [hl]
    ldh [$c1], a
    pop hl
    ld [hl], b

jr_071_4f60:
    push hl
    ret nz

    db $ed
    xor b
    dec b
    dec l
    and h
    or e
    ld [bc], a
    dec c
    add b
    nop
    sub [hl]
    ld b, b
    push bc
    and d
    cp l
    ret nz

    ld [hl], b
    ld hl, $02fe
    ld sp, $5128
    dec h
    rra
    daa
    nop
    ld h, b
    and e
    or e
    inc bc
    ld d, $80
    add d
    ld h, d
    adc e
    ld hl, $8109
    ccf
    inc bc
    inc e
    ld [hl+], a
    nop
    ld [de], a
    ld b, e
    or $a6
    nop
    ld b, a
    dec bc
    ld b, b
    jr nz, jr_071_4fbe

    rst $20
    ld b, d
    ld d, [hl]
    ld h, c
    cp l
    pop bc
    nop
    add l
    ld h, d
    pop bc
    ld h, c
    db $e4
    ld h, b
    ld [de], a

Jump_071_4fa6:
    ld b, [hl]
    ret nz

    and $00
    ld b, [hl]
    ld l, a
    and d
    ldh [rTIMA], a
    nop
    db $76
    and e
    add a
    add b
    adc b
    ld [hl+], a
    cp a
    ld h, h
    ret


    jr z, jr_071_5030

    ld h, c
    ld [hl], h
    ld h, d

jr_071_4fbe:
    rlc l
    nop
    dec d
    and h
    ld a, [hl]
    push bc
    and d
    add d
    cp l
    ld [bc], a
    ret z

    ld hl, $64bf
    db $dd
    add hl, bc
    ld b, l
    add h
    nop
    ret nz

    ld h, $ad
    ld [$01c0], sp
    push af
    ld hl, $45ae
    ld b, h
    add d
    dec [hl]
    pop bc
    ld e, l
    ld [$7f00], sp
    ld [bc], a
    dec [hl]
    ld [hl+], a
    add b
    push hl
    db $e4
    rst $00
    ld [hl], c
    nop
    ld d, d
    jr z, @-$34

    nop
    ld b, e
    ld b, d
    nop
    pop bc

jr_071_4ff5:
    call nz, $0471
    dec [hl]
    add hl, hl
    ret nz

    push hl
    or $05
    ld b, $80
    ret nc

    ld h, c
    ld b, e
    inc b
    nop
    ld sp, $2380
    add b
    cp c
    pop bc
    ld [hl], c
    jr z, @-$40

    dec b
    ld l, a
    add d
    ld e, a
    inc hl
    xor l
    rlca
    nop
    dec a
    and h
    ld d, d
    inc h
    add b
    db $e3
    rst $28
    add b
    ret nz

    jp hl


    ld [hl], l
    ld a, [hl+]
    ld b, c
    and $66
    ld h, [hl]
    nop
    ret nz

    db $ed
    jp $af22


    inc b
    sub $c2
    ret nz

jr_071_5030:
    db $eb
    call nz, $c0c4
    ld [$e10a], a
    nop
    xor [hl]
    ld b, d
    ret nz

    db $e4
    ld bc, $4b61
    jp nz, Jump_071_608a

    ld b, b
    pop hl
    sub c
    ld b, e
    cp e
    ld l, a
    nop
    add b
    rst $20
    sbc a
    push bc
    sub e
    ld h, e
    pop bc
    ld b, c
    sub c
    ld bc, $e4f3
    dec [hl]
    dec h
    ret nz

    inc hl
    nop
    nop
    ld b, e
    or $05
    call nz, Call_071_4444
    ld b, d
    adc a
    ld h, $81
    ld b, d
    and b
    add l
    ret z

    ld b, c
    nop
    ret nz

    ld b, a
    nop
    ld b, c
    db $e4
    ret z

    jr nz, jr_071_4ff5

    add [hl]
    jr nz, @-$75

    and d
    adc a
    daa
    ld h, c
    and e
    ld b, b
    jr jr_071_50e2

    jp $fc43


    jp hl


    xor l
    rlca
    and b
    ld h, d
    add $24
    dec l
    adc a
    jr z, jr_071_508c

jr_071_508c:
    ld b, c
    ld b, b
    ldh [$85], a
    or [hl]
    ld b, c
    add b
    jp hl


    ld [hl], a
    ld b, h
    or $05
    cp l
    push bc
    add b
    db $e3
    nop
    call $a3a5
    add d
    ld h, b
    add l
    ld a, c
    ld h, e
    jp $6ae5


    dec b
    add hl, bc
    ld [hl+], a
    ld [bc], a
    inc hl
    inc c
    adc [hl]
    inc bc
    ld c, a
    jr z, jr_071_50e0

    dec c
    rlca
    ld h, c
    and b
    add a
    jp nz, Jump_071_6e06

    ld h, c
    nop
    cp a
    ld h, $60
    ld h, h
    add d
    inc hl
    ret nz

    db $ec
    add a
    ld b, l
    sbc c
    ld b, d
    add b
    rst $20
    db $eb
    ld [hl+], a
    nop
    cp a
    dec h
    ld d, h
    ld [hl+], a
    ld sp, hl
    ld [c], a
    cp a
    ret nz

    ld a, [$c0a4]
    and $86
    push bc
    ld e, d
    ld b, c
    nop
    ld sp, hl

jr_071_50e0:
    ld b, h
    ld b, e

jr_071_50e2:
    ld h, e
    ld l, d
    add hl, bc
    ld l, [hl]
    ld bc, $618e
    ei
    add e
    adc a
    daa
    ret nc

    dec b
    nop
    pop bc
    jr z, jr_071_5133

    and $6a
    inc l
    adc [hl]
    ld h, c
    nop
    db $e4
    sub a
    daa
    ld l, e
    inc bc
    call nc, Call_000_0007
    db $76
    db $e4
    ret nz

    xor $6a
    inc b
    rst $08
    ld h, d
    rst $00
    ld h, e
    add e
    ld h, d
    ld c, l
    pop hl
    call nc, $000c
    ret nz

    dec b
    ccf
    ld a, [hl+]
    ld a, $45
    inc bc
    pop bc
    ccf
    ld [bc], a
    or a
    jp $82c4


    sub e
    ld b, e
    nop
    dec d
    rst $20
    cp l
    and $bf
    add hl, hl
    or [hl]
    inc bc
    ret nz

    dec h
    add d
    db $e3
    ld [hl], a
    and d
    ret nc

    ld h, d

jr_071_5133:
    nop
    ldh a, [$a9]
    ld b, b
    and $c0
    db $ec
    sbc [hl]
    and l
    cp h
    jp nz, $e380

    push bc
    ld b, l
    push de
    adc $00
    dec sp
    rlca
    ld [hl], h
    ld h, $9e
    and [hl]
    ld c, e
    ld h, c
    ld a, e
    inc h
    inc sp
    add h
    add b
    ldh a, [rP1]
    nop
    nop
    db $dd
    add hl, de
    rst $38
    db $ec
    ld [hl+], a
    rra
    ld [hl+], a
    db $ed
    pop hl
    jr z, jr_071_518a

    or $e7
    ldh [$32], a
    inc sp
    ld [c], a
    ldh [$2c], a
    dec l
    add hl, de
    add hl, de
    db $e3
    jr nc, jr_071_51a0

    reti


    db $ed
    jp z, $c2f3

    ldh [rNR32], a
    ld a, [de]
    inc e
    sbc [hl]
    cp a
    pop hl
    ld a, [hl+]
    dec hl
    add hl, de
    inc [hl]
    and l
    rst $20
    or a
    ldh [$35], a
    sbc $be
    ld a, [$1a1d]
    dec e

jr_071_518a:
    add hl, de
    db $dd
    ldh [rNR43], a
    inc e
    sbc a
    ld a, [de]
    dec de
    ld a, [de]
    inc e
    ld hl, $e48a
    ld h, l
    jp hl


    ld [hl], $5d
    scf
    ld a, [hl]
    ld a, [$1e21]

jr_071_51a0:
    ld hl, $e1dd
    ld hl, $e082
    ld h, a
    ld e, $21
    inc h
    sub e
    db $f4
    dec h
    ld [c], a
    ld l, $2f
    dec [hl]
    pop af
    rst $20
    inc h
    inc hl
    inc h
    ld sp, hl
    ld [c], a
    cp b
    ldh [rNR44], a
    inc h
    ld h, $74
    sub e
    db $f4
    ld e, e
    pop hl
    inc [hl]
    push af
    db $d3
    ld h, $25
    ld h, $cd
    pop bc
    ld bc, $b826
    ldh [$f6], a
    ldh [$5b], a
    ld hl, sp-$54
    jp $c6d0


    add d
    ret


    call Call_000_00c0
    cp b
    ld [c], a
    sub l
    sub $5b
    db $e4
    or l
    pop bc

jr_071_51e3:
    ret nc

    jp nz, $cc84

    ld d, a
    ret nz

    adc l
    pop bc
    ld b, $54
    push de
    jr z, @+$2b

    and e
    db $e4
    or l
    pop bc
    ld [hl], l
    ld [c], a
    rrca
    call nz, $c04e
    nop
    ld [hl], d
    jp hl


    ld e, a
    db $e3
    db $10
    rst $08
    ld h, c

jr_071_5202:
    pop hl
    pop hl
    and [hl]
    ld [hl], l
    push hl
    add l
    pop bc
    ld c, h
    jp nz, $cb06

    and c
    ld [hl+], a
    rra
    ld a, [hl+]
    ldh a, [$a0]
    and [hl]
    ld l, $c2
    sub e
    push hl
    jr jr_071_5202

    ld [hl], h
    adc h
    ret nz

    call z, Call_000_21a0
    push bc
    and c

jr_071_5222:
    jr nz, jr_071_5242

    jr nz, jr_071_51e3

    ld sp, hl
    ld e, b
    xor a
    and b
    sub e
    rst $20
    add l
    rst $00
    inc h
    inc hl
    ld [bc], a
    ret nz

    inc h
    cp l
    and b
    dec b
    jr nz, @+$04

    pop bc
    jr nz, jr_071_5222

    jp nz, $c81a

    ld l, d
    ld [$e593], a

jr_071_5242:
    ld h, h
    xor b
    inc b
    ld b, h
    ret nz

    ld [bc], a
    ret nz

    ld h, $7d
    and b
    ld [hl], a
    db $e3
    ld b, c
    and d
    rrca
    and l
    dec l
    ldh [$a0], a
    ld l, e
    ldh [$e0], a
    rst $00
    sub e
    push hl
    ld [bc], a
    rst $08
    add h
    and b
    daa
    ld [hl], a
    pop hl
    daa
    inc l
    ld h, [hl]
    jp nz, $c5bb

    dec e
    jr nz, @+$25

    pop hl
    jr nz, @+$54

    rst $00
    sub e
    db $e4
    cp $d2
    ret nc

    inc h
    dec e
    ld a, [de]
    ld a, [de]
    daa
    inc hl
    daa
    ld hl, $9b1b
    and c
    ld h, h
    rst $00
    ld l, $a3
    ld [de], a
    rst $00
    dec [hl]
    db $dd
    and e
    ld l, b
    jp hl


    ld c, $89
    call nz, Call_000_2126
    ld e, $b7
    ret nz

jr_071_5292:
    nop
    and c
    dec l
    add h
    ld d, $a0
    rla
    dec e
    ld a, [de]
    daa
    ld l, $a1
    daa
    xor l
    add c
    ld l, $82
    cp c
    add l
    inc c
    ld l, b
    rst $20
    rra
    rst $20
    inc h
    inc hl
    or a
    ret nz

    nop
    and c
    sbc h
    and h
    dec bc
    add b
    ld [hl], a
    dec e
    ld a, [de]
    dec de
    ld l, l
    ldh [rNR30], a
    ld a, [de]
    dec e
    ld [c], a
    add b
    jr jr_071_52c1

jr_071_52c1:
    ret


    ld l, b
    add sp, $1f
    rst $20
    ld h, $25
    or a
    ret nz

    nop
    and h
    ld d, c
    add c
    jr jr_071_5292

    ld h, b
    dec h
    pop bc
    ld l, [hl]
    add b
    ld e, $21
    db $ec
    add b
    cp b
    ld h, c
    pop hl
    ld h, l
    ld [$e868], sp
    rra
    ld [$e0bd], a
    ld h, $d6
    ld l, c
    dec h
    pop bc
    ld l, [hl]
    add b
    sub e
    and l
    nop
    pop hl
    ld h, [hl]
    ld l, b
    add sp, $1f
    and $27
    add l
    sub $64
    ccf
    ld h, d
    dec h
    pop bc
    ld l, [hl]
    add b
    nop
    ld h, e
    add b
    add hl, hl
    ld h, d
    pop hl
    ld h, l
    ld l, b
    jp hl


    rra
    and $1c
    ld h, d
    ld c, h
    ld h, c
    cp $43
    nop
    ccf
    ld h, b
    push af
    ld b, c
    ld l, [hl]
    ld [c], a
    ld e, a
    ld h, l
    pop hl
    ld h, h
    ld l, b
    ld [$e61f], a
    daa
    add e
    inc bc
    ld l, $2f
    or b
    add h
    ret


jr_071_5326:
    ld b, b
    ld e, e
    adc c
    inc b
    add d
    pop hl
    ld h, [hl]

jr_071_532d:
    ld l, b
    rst $20
    jr jr_071_5377

    ld h, b
    rra
    and $85
    ld b, c
    jr nc, @+$33

    or b
    add a
    ld e, e
    add h
    add $42
    ret nz

    ld e, a
    ld h, e
    pop hl
    ld h, a
    ld l, b
    push hl
    ld c, d
    pop bc
    or a
    db $e3
    add l
    ld b, e
    ld [hl-], a
    inc sp
    nop
    or b
    add l
    dec hl
    ld h, l
    add $40
    inc c
    ld h, b
    and a

jr_071_5357:
    ld h, e
    ld a, e
    ld b, b
    ld e, e
    adc l
    rra
    push hl
    ld h, b
    add l
    ld b, [hl]
    dec e
    and a
    dec hl
    ld h, c
    pop de
    ld b, d
    ld bc, $3645
    scf
    ld e, e
    adc b
    nop
    ld d, d
    ld b, b
    dec sp
    ld l, c
    and h
    add $b0
    add h
    sbc b

jr_071_5377:
    ld b, h
    add $22
    cp b
    jr nz, jr_071_532d

    jr nz, @+$12

    add [hl]
    ld b, c
    ld e, e
    add a
    cpl
    ld b, b
    dec sp
    ld l, b
    dec [hl]
    and h
    rst $00
    or d
    ld b, h
    adc l
    ld hl, $7b0c
    jr nz, jr_071_5357

    db $e3
    add hl, de
    dec [hl]
    or b
    jr nz, jr_071_5413

    ld hl, $8a5b
    dec sp
    ld h, a
    ret nz

    ld [c], a
    jr nz, jr_071_5326

    ld b, h
    and a
    ld b, [hl]
    adc l
    ld hl, $634d
    ld [hl], l
    jr nz, @+$38

    scf
    nop
    ld a, [hl-]
    jr nz, jr_071_53e2

    ld hl, $8a5b
    dec sp
    ld l, b
    and h
    add $a7
    ld b, e
    ld d, e
    ld [hl+], a
    set 4, d
    add b
    dec sp
    jr nz, jr_071_5436

    add hl, hl
    ld e, e
    adc b
    or b
    ld b, [hl]
    ld b, $6a
    inc e
    ld b, d
    ld d, e
    add hl, hl
    ld d, $5d
    ld d, $fc
    ldh [rNR23], a
    inc d
    inc d
    ld sp, hl
    ldh [$34], a
    ld a, l
    ld b, b
    and b
    ld e, e
    add a
    or b
    ld b, e
    rlc h
    ld b, $66

jr_071_53e2:
    and a
    ld b, [hl]
    ld d, $ce
    ldh [rNR21], a
    rst $18
    inc d
    inc d
    inc d
    inc de
    inc de
    db $fc
    ldh [rNR11], a
    ld de, $110f
    inc de
    jr @+$18

    xor e
    ld bc, $875b
    sbc $07
    ld b, $69
    inc e
    cp a
    inc hl
    rst $00
    ldh [rNR13], a
    ld de, $fc13
    pop hl
    push bc
    pop hl
    jp nz, Jump_000_1fe0

    ld c, $10
    ld de, $1511

jr_071_5413:
    dec [hl]
    ld bc, $895b
    add e
    rlca
    ret nc

    ld b, $68
    add e
    db $e4
    rst $38
    pop hl
    add l
    ldh [rNR21], a
    or [hl]
    ld [c], a
    db $10
    ld [bc], a
    rra
    inc bc
    inc bc
    ld [de], a
    ld de, $3613
    ldh [$ce], a
    xor d
    ld de, $e245
    ld b, $69

jr_071_5436:
    inc [hl]
    add h
    ld bc, $44a2
    dec b
    pop hl
    dec [hl]
    add hl, de
    ld d, $ff
    inc de
    ld de, $0004
    nop
    nop
    dec b

jr_071_5448:
    db $10
    ld b, b
    ld a, a
    ldh [$3b], a
    ld b, d
    cp l
    ld h, h
    ld de, $0644
    ld l, e
    call nz, Call_000_34c7
    ld a, $82
    ld b, $b6
    ret nz

    rla
    ld de, $e4c0
    add b
    ldh [$28], a
    ld [bc], a
    inc b
    inc hl
    ld de, $cc45
    ld b, $71
    nop
    ld b, e
    ld a, [hl+]
    dec hl
    ld a, [de]
    ld b, d
    add b
    ldh [rNR10], a
    ld bc, $039f
    ld [$1112], sp
    rla
    push af
    add h
    ld e, l
    pop bc
    inc [hl]
    add b
    ld de, $bc46
    add h
    ld b, $65
    jr nz, @+$26

    cp e
    ld bc, $604f
    cp c
    jr nz, jr_071_54b8

jr_071_5490:
    dec b
    add hl, hl
    cp a
    pop hl
    ld c, $7f
    ret nz

    ld bc, $a2e2
    nop
    ld a, c
    inc bc
    ld de, $0045
    ld c, c
    ld h, h
    ld b, $64
    or e
    dec b
    cp e
    inc b
    ld [hl], h
    nop
    ld b, a
    and b
    cp $c0
    pop bc
    pop hl
    inc bc
    jr z, @+$2b

    adc d
    jr nz, jr_071_5490

    ld h, b
    ld e, l

jr_071_54b8:
    jp Jump_071_4511


    jr nc, jr_071_5448

    jr nz, @+$2a

    inc e
    sub [hl]
    ld bc, $60ac
    inc l
    dec l
    inc [hl]
    ld hl, sp-$5e
    ld [bc], a
    jp nz, Jump_000_089b

    db $10
    ld de, $8945
    rlca
    ld c, $61
    inc bc
    add [hl]
    dec [hl]
    and d
    adc e
    ld a, a
    inc b
    ld sp, $8029
    ld de, $1f44
    daa
    ret nc

    pop bc
    or e
    dec b
    ld a, $a0
    add d
    ld h, e
    or $81
    ld [hl], $01
    scf
    or e
    ld b, b
    adc $02
    ld sp, $1129
    ld b, h
    rra
    daa
    ret c

    add d
    jr nz, @+$29

    nop
    and d
    add d
    add e
    ld h, e
    inc d
    and l
    ld sp, $9d29
    add c
    ld de, $1f41
    dec l
    ld a, $a4
    nop
    and d
    add a
    ld [hl], l
    rst $00
    ld sp, $9d29
    add [hl]
    rra
    daa
    inc h
    ld h, a
    ld [hl+], a
    nop
    ld d, d
    daa
    nop
    ld [hl], l
    rst $00
    ld sp, $182a

jr_071_5525:
    ld b, l
    rra
    ld h, $e4
    ret


    ld d, d
    dec hl
    cp c
    and $31

jr_071_552f:
    add hl, hl
    nop
    dec [hl]
    dec h
    rra
    ld h, $e4
    ret


    ld d, d
    dec hl
    xor e
    ld h, [hl]
    ld sp, $9128
    ld b, [hl]
    rra
    dec h
    nop
    db $e4
    ret


    xor [hl]
    ld c, l
    xor e
    ld h, l
    ret


    add hl, hl
    dec [hl]
    dec h
    rra
    dec h
    db $e4
    ret z

    or $04
    nop
    xor [hl]
    ld b, a
    rla

jr_071_5556:
    ld h, a
    ret


    daa
    dec [hl]
    dec h
    rra
    daa
    or $0b
    ld d, d
    jr z, jr_071_5525

    inc hl
    nop
    ld a, c
    ld b, d
    ld h, h
    add l
    db $e3
    add sp, $1f
    ld h, $f6
    inc c
    ld [hl], $c5
    ld l, e
    push bc
    ld a, c
    ld b, d
    nop
    ld h, b
    ld b, a
    dec [hl]
    daa
    nop
    ld b, h
    db $e4
    rst $00
    ld h, c
    add hl, hl
    adc a
    daa
    ld a, c

Call_071_5582:
    ld b, d
    and b
    add l
    nop
    cp $ec
    db $e4
    jp z, $21fd

    ld a, [hl]
    ld h, e
    cp [hl]
    ld h, b
    db $e4
    ld c, c
    and b
    adc b
    ld h, d
    inc h
    nop
    sub h
    ld [$c7f6], a
    ld c, c
    dec b
    adc e
    jr nz, jr_071_552f

    jr z, @+$2c

    ld h, c
    and b
    add l
    xor $05
    nop
    ld a, [$69f1]
    daa
    cp e
    and b
    adc a
    add hl, hl
    ld h, h
    jr nz, jr_071_5556

    dec b
    ldh [$60], a
    jp nz, $000a

    ld b, [hl]
    and h
    dec bc
    ld h, d

jr_071_55bd:
    ld l, c
    ld hl, $6104
    adc a
    dec l
    cp c
    and d
    and b
    add a
    jp nz, $8008

    ld l, d
    ld [$00d8], sp
    cp a
    add c
    and e
    ld h, $e4
    ld c, c
    ret nc

    inc bc
    and b
    add e
    dec [hl]
    nop
    jp nz, $bf08

    add hl, hl
    inc de
    inc h
    inc c
    daa
    db $e4
    ld c, b
    ret nc

    ld [$201e], sp
    jp nz, RST_08

    cp a
    cpl
    rst $10
    and h
    db $e4
    ld c, d
    ldh a, [$ac]
    rst $38
    xor b
    ld l, d
    ld a, [bc]
    jr nc, jr_071_55bd

    ld h, a
    rst $08
    nop
    ld l, e
    ld [bc], a
    call nc, Call_071_6a09
    ld de, $463e
    call c, $d4b1
    inc c
    ld b, $c7
    cp a
    jr z, jr_071_560d

jr_071_560d:
    sbc [hl]
    or h
    ret nc

    ld h, l
    dec d
    rst $28
    cp a
    inc l
    ld a, $48
    scf
    xor l
    daa
    ld b, c
    dec d
    xor $00
    db $db
    call Call_071_453e
    ld e, [hl]
    xor h
    ret nc

    ld h, l
    call nc, Call_071_420a
    or c
    ld a, $45
    ld a, $20
    nop
    cp l
    inc bc
    ld a, [c]
    inc bc
    or e
    ld h, l
    call nc, Call_000_000e
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld d, $10
    rla
    ld h, $20
    rrca
    daa
    jr nc, jr_071_567f

    scf
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld h, l
    ld d, [hl]
    ld c, d
    ld e, d
    ld d, e
    ld e, a
    ld [hl], d
    ld e, a
    ccf
    ld c, $0e
    dec c
    dec c
    dec c
    ld c, $ff
    db $e3
    or $f4
    ccf
    dec c
    ld c, l
    ld c, l
    ld c, l
    dec c
    inc c
    rst $38
    db $f4
    ret


    pop hl
    adc b
    jp $f6e3


jr_071_567f:
    push af
    and c
    pop hl
    dec c
    ret nz

    ld sp, hl
    add l
    ld hl, sp+$67
    ld [c], a
    ld c, l
    db $10
    ld a, a
    ldh [$c0], a
    ld a, [$f685]
    ld a, [hl+]
    db $e3
    ld c, l
    cp l
    pop hl
    ld b, b
    rst $30
    nop
    cp $60
    ret nz

    ldh [rLCDC], a
    ld_long a, $ff00
    add b
    ld a, [$fe00]
    dec c
    ld c, l

jr_071_56a7:
    ld e, l
    ret nz

    nop
    nop
    rst $38
    ld a, e
    ret c

    cp a
    ldh [rP1], a
    rst $38
    nop
    ret c

    ld a, [hl]
    ldh [rP1], a
    rst $38
    nop
    rst $38
    add b
    nop
    rst $38
    nop
    db $d3
    ret nz

    cp l
    nop
    call c, $bc80
    add l
    jp c, $e5ff

    ld l, l
    nop
    nop
    rst $38
    or $d0
    ld b, h
    and b
    ld b, h
    ret nz

    ld b, c
    ret nz

    pop bc
    or $00
    ld a, [c]
    call $8084
    ld l, b
    push bc
    ld [bc], a
    ret c

    nop
    ld a, [c]
    jr nc, jr_071_56a7

    cp d
    push hl
    ret nz

    cp $00
    call $084d
    db $10
    and c
    jp hl


    and c
    adc b
    add b
    dec l
    ld b, e
    add d
    ld [bc], a
    rst $10
    nop
    push de
    call z, $80a2
    ret


    ld h, b
    ret nz

    ldh [$c0], a
    and d
    ld b, b
    ei
    inc d
    adc c
    rst $08
    pop bc
    ld l, h
    and d
    ld l, l
    rrca
    dec c
    dec c
    ld c, e
    ld c, e
    ld a, a
    ldh [$83], a
    and c
    pop bc
    rst $10
    nop
    call z, $8f08
    jp $c24f


    add hl, hl
    and b
    ld c, e
    cp a
    ldh [$7a], a
    pop hl
    pop bc
    ld hl, sp+$00
    xor e
    ld hl, sp-$2a
    ld h, c
    inc de
    ld h, c
    adc [hl]
    ldh [$0d], a
    dec c
    dec bc
    dec bc
    dec bc
    ldh [$bf], a
    ldh [$fd], a
    pop hl
    pop bc
    ld hl, sp+$00
    xor [hl]
    ld [$6de3], sp
    ld c, e
    dec c
    di
    ld c, e
    dec bc
    cp $e1
    ei
    pop hl
    ld c, e
    inc c
    inc l
    inc l
    jr nz, jr_071_574f

jr_071_574f:
    rst $38
    call nc, $8643
    ld [c], a
    adc c
    pop hl
    rst $00
    ld [c], a
    dec bc
    db $fc
    ret nz

    ret nz

    pop hl
    ld b, b
    add b
    ei
    inc d
    xor d
    ld [$46e1], sp
    ldh [$c3], a
    pop hl
    ret nz

    and $4c
    rst $38
    pop hl

jr_071_576d:
    ret nz

    nop
    rst $38
    ld [de], a
    and h
    jp nz, $02e1

    ldh [$7c], a
    and $fb
    jp $4c4c


    nop
    dec sp
    di
    nop
    adc e
    ld d, [hl]
    ld h, c
    ld b, h
    pop hl
    ld c, b
    pop hl
    or h

jr_071_5788:
    ld [c], a
    cp $c0
    db $fc
    jp Jump_000_0d01


    ld a, l
    db $f4
    add l
    xor h
    adc [hl]
    and b
    call $cfc2
    ldh [$bd], a
    push hl
    ld [hl], c
    pop hl
    jr c, @+$70

    pop hl
    add hl, sp
    ldh [rP1], a
    rst $18
    ld c, $4d
    dec l
    rst $00
    jp nz, $e23e

    nop
    ld a, [hl]
    pop bc
    ld [hl], $e1
    inc [hl]
    pop bc
    ld l, a
    ret nz

    jr c, jr_071_5788

    nop
    ld l, e
    jp nc, $bf21

    pop hl
    nop
    rst $38
    pop bc
    cp c
    ld [c], a
    ld a, l
    jp nz, $c4ec

    ret nz

    db $f4
    nop
    ld l, e
    jp nc, Jump_071_7e00

    pop hl
    nop
    ld bc, $04c0
    and c
    ld [hl-], a
    ldh [$b4], a
    pop bc
    or h
    and d
    ret nz

    or $00
    ld [$4170], a
    dec l
    ld l, e
    ret nz

    ld [c], a
    dec c
    dec l
    ei
    pop bc
    dec c
    cp b
    ldh [$30], a
    pop bc
    jr z, jr_071_576d

    pop hl
    dec sp
    pop de
    inc d
    ld [hl], c
    ld l, e
    ret z

    and c
    ld c, e
    dec a
    pop bc
    ld a, e
    pop bc
    inc bc
    dec l
    dec l
    ret nz

    db $e4
    ccf
    ld a, [c]
    nop
    xor e
    ret nz

    and $42
    pop bc
    ld a, d
    and c
    inc bc
    dec bc
    dec hl
    cp $e0
    add b
    ld [c], a
    dec a
    ret nz

    ret nz

    di
    nop
    ld c, b
    add h
    add h
    jr c, jr_071_5869

    pop bc
    add c
    add c
    push bc
    ld [c], a
    dec hl
    ld a, [bc]
    ld l, d
    cp a
    push hl
    nop
    cp a
    ld a, [c]
    sub e
    ld [hl+], a
    ld l, l
    sub h
    pop bc
    inc b
    and b
    ld c, e
    ld c, e
    ld l, e
    ld l, e
    ld [bc], a
    ret nz

    pop hl
    ld a, [bc]
    cp e
    and d
    ret nz

    ld hl, sp+$0a
    ld c, b
    sub h
    ld b, c
    ld c, $c4
    cp b
    add e
    rrca
    ld l, e
    ld l, e
    ld a, [bc]
    ld c, d
    add b
    ei
    nop
    ld a, [hl+]
    jp nz, $ca62

    and e
    ld c, $c5
    and c
    dec hl
    ld c, e
    ld c, e
    add b
    db $e4
    ld hl, sp+$75
    inc d
    inc l
    or c
    ld [bc], a
    inc c
    ld b, d
    and e
    ld a, [hl]
    pop bc
    ld l, e
    ld l, e
    cp a
    ldh [$fc], a
    add e
    ret nz

jr_071_5869:
    rst $30
    add l
    dec bc
    db $10
    adc h
    ld b, c
    jp Jump_071_7f82


    ld [c], a
    ret nz

    ldh [rWX], a
    ld a, a
    ret nz

    ld a, d
    add d
    nop
    sbc a
    ld b, b
    ld a, a
    and d
    ld c, e
    ld b, c
    ld [$c8a3], sp
    add b
    ret nz

    pop hl
    inc a
    add h
    inc c
    ld a, c
    ld [hl], d
    ld [$2f85], sp
    ld a, [bc]
    ld b, c
    ld [bc], a
    db $e3
    dec l
    ld a, l
    jp nz, $82b2

    ld a, d
    db $76
    add l
    dec l
    nop
    add c
    ld b, c
    cp $83
    add [hl]
    and c
    ld a, a
    pop bc
    ld [hl], d
    add e
    ret nz

    ld hl, sp-$71
    ld de, $4285
    nop
    ld a, a
    ld b, d
    cp $c1
    ret nz

    db $fc
    nop
    xor e
    rst $38
    inc hl
    ld b, e
    add e
    cp $a3
    rst $30
    pop bc
    ld [bc], a
    ld a, [hl-]
    ld b, c
    ld l, h
    rst $30
    ld b, d
    push af
    ld c, e
    nop
    ld l, $be
    add e
    ret nz

    add sp, $3e
    ldh [rNR21], a
    ld b, d
    and e
    ld l, h
    ld l, h
    ld h, d
    ld [c], a
    dec l
    push af
    ld c, d
    nop
    adc $33
    ld [bc], a
    ld [hl], b
    ret nz

    add sp, -$43
    add b
    cp [hl]
    pop hl
    ld a, d
    ld b, b
    ld l, h
    dec c
    ld l, l
    and h
    ld bc, $4d01
    cp a
    ldh [rP1], a
    ld sp, hl
    dec a
    call nz, Call_071_4484
    ld h, d
    ret nz

    ld a, [hl]
    jp nz, $81f3

    nop
    or d
    ld bc, $625e
    ld [hl-], a
    ld c, b
    nop
    ld c, l
    ld a, $c3
    db $fc
    and d
    cp c
    ld b, h
    cp a
    db $e4
    ld [bc], a
    ld [hl], h
    and b
    dec l
    ld sp, $bf03
    ld [c], a
    cp $e5
    nop
    xor $fa
    and e
    db $fc
    and e
    inc a
    ld a, a
    ld h, d
    ld l, [hl]
    ld b, b
    ld l, e
    ld c, e
    dec hl
    dec hl
    rst $30
    ld h, b
    ld sp, $8004
    ld h, $00
    ld e, c
    push bc
    ld c, d
    inc hl
    nop
    ld l, c
    or a
    ld h, h
    ld a, [hl]
    ldh [$f8], a
    ld [hl+], a
    ld l, l
    ld [$416e], sp
    ld a, [$b661]
    ld h, c
    ld l, e
    cp a
    pop hl
    inc e
    ld h, d
    jp c, $2601

    ld [bc], a
    ld [hl], b
    db $10
    ld h, b
    nop
    xor h
    dec a
    add $04
    add b
    ld c, e
    dec l
    dec l
    ldh a, [rSCX]
    nop
    ld a, h
    ld h, d
    ld [hl], l
    ld h, b
    ld a, $e0
    ret nz

    db $e4
    ld a, d
    ld [c], a
    ld d, b
    ld h, d
    nop
    xor h
    ld [hl], c
    ld b, e
    ld h, h
    ret


    pop bc
    add h
    add b
    dec l
    or b
    ld b, d
    ld b, h
    ldh [$0b], a
    dec bc
    ld a, [$8740]
    dec hl
    dec bc
    dec l
    rst $28
    pop hl
    ld a, h
    pop bc
    add c
    pop hl
    call nc, Call_071_4d60
    ld [$834f], sp
    ld a, e
    ld l, l
    ret nz

    db $e4
    ld l, e
    ret nz

    ldh [$af], a
    ld h, c
    add hl, sp
    ld h, d
    cp e
    db $e3
    ld bc, $052d
    pop hl
    ld c, a
    adc e
    nop
    xor $fa
    ld h, l
    add b
    ld [c], a
    ld [hl], b
    ld h, d
    add d
    ldh [$82], a
    cp a
    ret nz

    dec hl
    or b
    ldh [$9b], a
    add h
    jp z, $002a

    db $ed
    db $fc
    add e
    ld l, l
    ld [$e280], sp
    xor [hl]
    inc bc
    add b
    db $e3
    ld l, e
    or c
    jp nz, $cf4f

    nop
    db $ed
    ld a, d
    ld [bc], a
    ld bc, $866d
    add d
    ld c, $c1
    cp a
    and c
    ld b, b
    pop hl
    pop bc
    pop hl
    sub c
    jp $cb4f


    ld b, b
    or c
    xor $be
    ld [c], a
    ld [bc], a
    pop hl
    rst $08
    pop hl
    or c
    ld h, c
    ld b, a
    ldh [$0b], a
    add d
    ld [c], a
    add b
    pop af
    ret nz

    ld c, a
    rst $08
    nop
    rst $28
    inc a
    ld [hl+], a
    pop bc
    ret nz

    db $10
    and b
    ld c, a
    pop bc
    dec l
    ld b, b
    or [hl]
    pop bc
    ld b, e
    db $e3
    adc a
    jp nz, $cd4f

    inc l
    ldh a, [rSCY]
    call nz, Call_071_400d
    jp nz, $9202

    and h
    ld l, l
    db $f4
    and b
    rst $08
    and d
    nop
    cp $bc
    ld [bc], a
    dec b
    add b
    ld b, d
    pop bc
    nop
    xor l
    ld h, a
    db $f4
    and e
    adc a
    and c
    nop
    ei
    ld hl, $02a3
    jp nz, $84d0

    db $db
    and a
    nop
    call nc, Call_000_00cf
    pop de
    ldh [$81], a
    add b
    ld [c], a
    ret nc

    add h
    rst $08
    xor b
    call nc, Call_000_00d0
    rst $08
    nop
    add b
    ld [c], a
    ret nz

    db $e3
    ld de, $85e7
    pop af
    nop
    push de
    add b
    rst $20
    ld de, $85e2
    rst $30
    inc bc
    dec c
    ld c, $00
    nop
    nop
    rst $38
    call c, $a0dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $eb
    db $e3
    db $e4
    or $f6
    and b
    rst $38
    ldh [$9e], a
    ld [$ff98], sp
    sub a
    sub [hl]
    sub l
    sub l
    sub [hl]
    sub [hl]
    sub a
    sub a
    rst $18
    sbc b
    sbc b
    sub a
    sub a
    sub [hl]
    db $f4
    and $e5
    and $ff
    rst $20
    and b
    add sp, -$17
    ld [$eceb], a
    and b
    ld e, $f6
    push af
    and b
    and b
    db $e3
    db $e4
    ret nz

    rst $30
    add l
    ei
    ld h, a
    ld [c], a
    cp b
    add b
    ld a, [$fa85]
    ld h, a
    db $e3
    and b
    sub $d7
    ld b, b
    push af
    sub a
    dec a
    sbc b
    nop
    rst $38
    rst $18
    and b
    ret c

    reti


    nop
    di
    di
    pop bc
    ld e, $00
    rst $38
    and b
    and b
    jp c, $c0db

    pop de
    ld a, a
    db $e3
    nop
    rst $38
    ld b, $00
    ldh [$f5], a
    or $80
    adc $7f
    push hl
    nop
    rst $38
    add c
    pop bc
    ld b, b
    call Call_071_7f30
    rst $20
    nop
    rst $38
    nop
    rst $08
    ld a, a
    rst $20
    sub a
    sub a
    nop
    rst $38
    add b
    call Call_071_7f08
    rst $20
    or d
    and c
    nop
    rst $38
    db $e4
    add b
    jp z, $e77f

    ld [hl], d
    and e
    nop
    rst $38
    ldh a, [$80]
    ret


    ld a, a
    rst $20
    ld a, $a5
    add l
    cp [hl]
    sbc $df
    push af
    or $07
    and b
    sbc a
    sbc h
    nop
    and c
    ld a, a
    rst $20
    cp $a7
    nop
    ld a, [$a087]
    ld e, $ff
    ld [c], a
    sbc a
    sbc h
    ld [bc], a
    rrca
    jp z, $c081

    db $ec
    cp l
    and c
    db $fc
    adc a
    call nc, $e3c6
    ret c

    reti


    db $e3
    db $e4
    ret nc

    pop de
    ld c, $82
    add b
    ld [bc], a
    rrca
    sbc c
    adc c
    add b
    cp a
    ret


    cp $a2
    ld [hl], b
    add b
    ld [hl], b
    adc a
    sub h
    ld c, l
    and b
    ld c, c
    ldh [$87], a
    and b
    and b
    jp nc, $42d3

    add c
    rst $00
    nop
    ld bc, $3f99
    res 7, l
    and l
    nop
    rst $08
    and b
    and b
    ld hl, sp-$73
    ldh [$c6], a
    pop hl
    ld [$ed81], sp
    xor $d4
    push de
    rst $28
    jp nz, $8002

    sbc c
    add b
    db $eb
    cp l
    and a
    nop
    pop de
    adc l
    pop hl
    and b
    sbc a
    db $fd
    sbc l
    rst $38
    ldh [$9f], a
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ret nz

    jp nz, $ca61

    ld h, d
    res 0, h
    cp l
    xor c
    inc d
    adc a
    adc l
    db $e3
    sbc a
    sbc h
    ccf
    xor [hl]
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    pop bc
    jp $6082


    call nz, $c7cd
    cp l
    xor c
    sub l
    adc a
    rst $08
    adc l
    ld [c], a
    pop bc
    ldh [$af], a
    xor a
    ld bc, $bf46
    ldh [$7a], a
    pop hl
    add d
    call nz, $818c
    cp l
    xor e
    ld l, $60
    nop
    xor d
    inc b
    ld d, $81
    ld c, a
    call nz, $c2ae
    pop hl
    db $fd
    db $e4
    add d
    jp $818b


    cp l
    xor d
    or b
    ld a, d
    add d
    nop
    xor e
    ld d, $80
    ld [$9ce2], sp
    ld b, [hl]
    pop bc
    add sp, $46
    rlca
    ld [$0001], sp
    cp a
    ld [c], a
    ret z

    ld l, c
    ld a, d
    add l
    add l
    adc d
    sub [hl]
    and d
    jr jr_071_5bc8

    pop hl
    add h
    push hl
    db $f4
    db $e3
    ld [$4199], sp

jr_071_5bc8:
    pop bc
    cp l
    push bc
    ld a, h
    ret z

    ldh [$79], a
    ld b, b
    add l
    ld c, h
    ld [$43e5], sp
    db $e4
    db $f4
    db $e3
    ld [bc], a
    rlca
    rlca
    add a
    rlca
    rrca
    sbc b
    dec a
    jp $c87c


    cp c
    ld h, d
    nop
    adc h
    sbc [hl]
    add b
    ld [$7ce3], sp
    jp hl


    db $fc
    push bc
    dec sp
    pop hl
    ld a, h
    ret z

    cp c
    ld h, h
    inc d
    ld c, h
    sbc [hl]
    ld a, c
    xor a
    ld b, d
    ld [c], a
    add h
    pop bc
    ld a, c
    ld a, d
    ld a, h
    ld a, l
    ld [hl], $e8
    pop bc
    ld [bc], a
    ld a, l
    ldh [$bc], a
    add c
    ld b, $65
    cp c
    ld h, h
    add l
    xor h
    sbc a
    sbc h
    ld a, [hl]
    adc b
    push bc
    ld a, c
    ld a, [hl]
    ld b, [hl]
    ld b, [hl]
    adc [hl]
    ld a, e
    cp l
    db $e3
    ret nz

    or $a0
    xor b
    ldh [$bc], a
    add d
    ld b, l
    ld c, b
    ld a, b
    ld [hl+], a
    adc a
    adc l
    sbc a
    sbc h
    inc b
    pop bc
    rst $20
    ld a, $c1
    ld a, a
    ld a, h
    ldh [$34], a
    jp nz, $a0f2

    ld a, d
    xor e
    jr c, jr_071_5c5f

    jr nz, jr_071_5c3e

jr_071_5c3e:
    adc $bf
    db $e3
    pop bc
    push hl
    cp a
    ld [c], a
    inc l
    db $e3
    xor [hl]
    ld a, b
    ret nz

    ld a, d
    add h
    ld hl, sp-$08
    ld [$ce00], sp
    cp a
    db $e3
    add b
    ld b, [hl]
    ld b, [hl]
    add e
    adc c
    ld c, a
    adc b
    adc b
    adc c
    add e
    cp a
    db $e3

jr_071_5c5f:
    ld [hl], h
    jp nz, Jump_071_7a46

    add [hl]
    add sp, -$48
    ld [$8c85], sp
    add h
    add c
    sbc [hl]
    ret nz

    db $e3
    adc d
    add l
    ld b, [hl]
    ld a, a
    ld b, [hl]
    add l
    add [hl]
    add e
    ld b, [hl]
    add e
    add h
    db $f4
    and h
    ldh [$78], a
    and h
    ld a, d
    ld l, c
    nop
    ld l, [hl]
    ld de, $c081
    ldh [$79], a
    adc l
    ld b, [hl]
    ld a, e
    ld b, [hl]
    add c
    ccf
    and c
    add l
    add a
    adc b
    add a
    cp b
    ldh [$80], a
    db $f4
    and d
    ccf
    ldh [$7a], a
    add [hl]
    ld a, c
    ld b, l
    nop
    ld c, e
    ld de, $8083
    ldh [$80], a
    inc c
    add [hl]
    and b
    ret nz

    ld [c], a
    ld b, [hl]
    ld b, l
    rst $38
    ldh [$b3], a
    and l
    cp a
    ret nz

    ld b, l
    add hl, bc
    or b
    ld l, [hl]
    and d
    nop
    ld c, e
    ld de, $c082
    ld [c], a
    xor a
    xor a
    add b
    ldh [rLYC], a
    ccf
    dec hl
    ld sp, $2a2c
    ld c, d
    ld d, d
    cp a
    push hl
    ei
    ld b, c
    add b
    nop
    ret


    cp l
    pop hl
    add l
    ld l, e
    sub l
    ld b, b
    ld a, a
    jp nz, $c0c1

    ld b, b
    pop hl
    ld b, l
    ccf
    ld l, $20
    jr nz, jr_071_5d08

    ld c, a
    ld d, [hl]
    ld a, a
    push hl
    ld b, c
    pop hl
    call z, Call_071_67fc
    or b
    add c
    sbc b
    sbc b
    nop
    db $ed
    rst $00
    ld h, c
    ld b, [hl]
    ld b, [hl]
    push af
    add d
    adc b
    ret nz

    adc h
    add d
    and b
    cp l
    inc hl
    inc hl
    dec hl
    pop bc
    ld c, e
    ret nz

    add sp, -$41
    adc b
    cp a
    db $e4
    inc d

jr_071_5d08:
    ld l, $fe
    add d
    add l
    adc e
    ld a, $c5
    and e
    ld b, h
    inc a
    dec [hl]
    ld [hl], $52
    ret nz

    db $eb
    ld a, $83
    jr @-$01

    db $e3
    ld a, [hl]
    ldh [rNR14], a
    inc l
    sub $d7
    cp $83
    ld a, a
    pop hl
    ld a, [hl]
    ret nz

    ccf
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    jr c, jr_071_5d73

    ld hl, sp+$66
    ei
    ld b, a
    inc c
    cp a
    and $85
    inc c
    ret c

    reti


    cp $80
    rlca
    ld h, b
    rlca
    pop bc
    ld a, $e1
    rra
    add hl, sp
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $7f
    call nz, Call_000_26fb
    cp $e5
    and b
    nop
    jr nc, jr_071_5dd1

    ld h, c
    cp a
    db $e3
    ld a, $e1
    ld a, a
    ldh [$36], a
    cp a
    ldh [rLCDC], a
    inc b
    ld a, $8a
    ret nz

    jp hl


    sub [hl]
    nop
    dec l
    ld d, d
    inc hl
    add $41
    cp l
    ret nz

    add [hl]
    and c
    ld [bc], a
    ld a, $e1
    add hl, sp
    ld a, a
    add c

jr_071_5d73:
    ld [bc], a
    and c
    cp [hl]
    ld h, e
    ld bc, $40e4
    inc hl
    add l
    dec l
    jr nc, jr_071_5d08

    ld hl, $827c
    add [hl]
    and l
    ld a, $e0
    ld a, [hl-]
    ld b, l
    ld [$bc61], a
    inc hl
    sub b
    add [hl]
    add $f5
    ld b, h
    nop
    ld c, a
    call nz, $9e20
    db $fd
    ld c, b
    ld a, $e1
    ld b, d
    nop
    ld [hl], d
    ld b, c
    inc a
    ld [hl+], a
    rst $38
    and $f5
    ld b, e
    nop
    ld c, l
    dec b
    ld hl, $e1c0
    ld a, d
    ld h, e
    xor $bf
    db $e4
    ld a, [hl-]
    dec [hl]
    add hl, sp
    push af
    ld hl, $9908
    rrca
    add b
    ld hl, sp+$40
    push af
    ld c, b
    pop af
    ld [hl+], a
    nop
    inc l
    pop af
    nop
    ld a, [hl]
    add d
    ld b, c
    ld c, c
    add hl, sp
    inc c
    ccf
    ldh [$3a], a
    ld b, c
    rrca
    ld [bc], a
    or d
    dec h
    push af

jr_071_5dd1:
    ld b, h
    rst $28
    ld hl, $6c00
    cp b
    pop af
    nop
    ld a, [hl]
    add d
    ret nz

    ld c, c
    ld b, h
    inc a
    inc a
    db $fd
    and c
    ld [bc], a

jr_071_5de3:
    dec e
    ld [bc], a
    ld [hl-], a
    ld hl, $d1d0
    sbc a
    ld [hl], c
    jr nz, jr_071_5de3

    rst $00
    nop
    dec l
    xor b
    adc a
    ld [bc], a
    db $fc
    and e
    cp $24
    xor [hl]
    inc a
    ret nz

    add hl, sp
    ld [hl], e
    ld [hl+], a
    sbc [hl]
    add b
    dec l
    nop
    ld sp, $bf00
    pop hl
    rst $30
    add $00
    adc l
    adc a
    inc bc
    cp a
    rst $20
    xor a
    inc bc
    xor a
    xor a
    cp a
    ldh [$c0], a
    db $e4
    and h
    ld b, $ee
    ld hl, $c3f3
    nop
    db $ec
    ret nz

    ld a, e
    ld h, d
    ld a, c
    ld [hl+], a
    nop
    inc hl
    ret nz

    nop
    ld l, [hl]
    ld b, b
    db $fd
    ld h, b
    ld b, l
    ld b, c
    ld bc, $7245
    nop
    ld sp, $2403
    inc bc
    cp $e3
    nop
    ld l, e
    ld a, e
    ld b, $b9
    ld b, h
    dec sp
    sbc h
    sbc a
    ld l, [hl]
    ld b, h
    ld b, l
    ld [hl], $a6
    add hl, sp
    and b
    ld sp, $0003
    db $db
    add b
    add hl, de
    jp $c113


    nop
    xor h
    ld a, e
    rlca
    ld a, [$4e41]
    ldh [$6e], a
    nop
    cp [hl]
    ldh a, [rLCDC]
    ld b, l
    ld [hl], $62
    and a
    ld h, [hl]
    ld hl, sp-$80
    sbc [hl]
    nop
    ldh [$a2], a
    ld e, d
    nop
    rst $10
    ld h, c
    call nc, Call_000_00a2
    xor h
    ld a, e
    inc bc
    dec a
    ret nz

    ret nz

    push hl
    ld a, [hl-]
    ld l, [hl]
    nop
    sbc [hl]
    pop bc
    pop hl
    ld h, a
    and e
    ld l, b
    cp a
    ldh [$c0], a
    ldh [rP1], a
    sbc h
    and b
    ld e, d
    ld b, c
    ld a, [hl]
    push hl
    nop
    pop af
    sbc e
    pop bc
    add b
    db $e4
    ld l, [hl]
    ld [bc], a
    pop bc
    pop hl
    ccf
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    ld b, d
    add b
    db $e3
    ld c, a
    adc c
    ldh a, [rP1]
    ldh a, [$9b]
    jp $e440


    cpl
    ld bc, $b936
    cp d
    and e
    rrca
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    add b
    ldh [rTIMA], a
    db $e4
    jp z, Jump_000_0027

    ldh a, [$f0]

jr_071_5eb9:
    cp e
    ld b, d
    jr c, @+$25

    db $10
    ldh [$6e], a
    nop
    ld [hl], $6e
    ld l, a
    ld l, h
    ld e, $c1
    ld [c], a
    sbc h
    sbc a
    ret c

    reti


    ld c, a
    xor h
    nop
    ldh a, [$3c]
    add e
    inc b
    ld c, $c4
    ld l, [hl]
    ld bc, $bf45
    ldh [$c1], a
    db $e3
    ldh [$60], a
    ld c, a
    call z, $cf00
    nop
    cp [hl]
    add e
    ld [bc], a
    jp $a04f


    ld l, [hl]
    ld bc, $e0bf
    pop bc
    db $e3
    inc hl
    add b
    ld c, a
    ld l, h
    ld h, b
    nop
    ret nc

    jr nz, jr_071_5eb9

    ld b, d
    jp nz, $c311

    ld l, [hl]
    ld bc, $3645
    ld b, e
    pop hl
    jr @-$17

    and d
    ld c, a
    ld l, h
    nop
    rst $08
    sbc $df
    inc c
    jp $c2c2


    ld [hl], d
    add c
    ld [bc], a
    sub d
    and h
    sbc a
    rst $20
    and e
    nop
    rst $38
    inc c
    jp $87d0


    sub e
    and [hl]
    ld [$00c2], sp
    nop
    cp $7b
    ld [hl+], a
    add d
    and h
    ret nc

    add e
    ld c, a
    and e
    ld e, c
    xor $00
    or $42
    and a
    ld b, $d0
    add h
    ret c

    reti


    ld h, $62
    call nc, Call_000_00d1
    pop af
    ld [bc], a
    and a
    ld h, b
    and d
    nop
    cpl
    pop hl
    ld e, c
    pop de
    nop
    reti


    ret nz

    add $6a
    ld b, h
    ld e, c
    pop de
    nop
    jp nz, $0000

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
    dec c
    add b
    cp $e0
    nop
    ld b, b
    ret c

    push hl
    rst $30
    and $ff
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    ld [bc], a
    nop
    ld a, [de]
    inc de
    ld [bc], a
    ld bc, $131b
    ld [bc], a
    ld [bc], a
    add hl, de
    inc d
    ld [bc], a
    inc bc
    jr jr_071_5f97

    ld [bc], a
    inc b
    ld [de], a
    rla
    ld [bc], a
    dec b
    inc de
    rla
    ld [bc], a
    ld b, $1e
    rla
    ld [bc], a
    rlca
    rra
    rla
    ld [bc], a
    ld [$1811], sp
    ld [bc], a

jr_071_5f97:
    add hl, bc
    db $10
    add hl, de
    ld [bc], a
    ld a, [bc]
    ld d, $19
    ld [bc], a
    dec bc
    rla
    add hl, de
    ld [bc], a
    inc c
    ld de, $021a
    dec c
    jr z, jr_071_5fc4

    ld [bc], a
    ld c, $25
    dec de
    ld [bc], a
    rrca
    add hl, hl
    dec de
    ld [bc], a
    db $10
    inc h
    inc e
    ld [bc], a
    ld de, $1d25
    ld [bc], a
    ld [de], a
    ld a, [hl+]
    dec e
    ld [bc], a
    inc de
    ld a, [hl+]
    rra
    ld [bc], a
    inc d

jr_071_5fc4:
    dec hl
    jr nz, @+$04

    dec d
    jr jr_071_5feb

    ld [bc], a
    ld d, $19
    ld hl, $1702
    inc de
    inc h
    ld [bc], a
    jr jr_071_5fe7

    dec h
    ld [bc], a
    add hl, de
    inc de
    ld h, $02
    ld a, [de]
    inc d
    daa
    ld [bc], a
    dec de
    dec d
    jr z, @+$04

    inc e
    ld h, $29
    ld [bc], a

jr_071_5fe7:
    dec e
    daa
    ld a, [hl+]
    ld [bc], a

jr_071_5feb:
    ld e, $16
    dec hl
    ld [bc], a
    rra
    ld h, $2b
    ld [bc], a
    jr nz, @+$19

    inc l
    ld [bc], a
    ld hl, $2e17
    ld [bc], a
    ld [hl+], a
    jr jr_071_602d

    ld [bc], a
    inc hl
    jr nz, jr_071_6031

    ld [bc], a
    inc h
    ld hl, $022f
    dec h
    ld [hl+], a
    cpl
    ld [bc], a
    ld h, $19
    jr nc, jr_071_6011

    daa
    inc hl

jr_071_6011:
    jr nc, jr_071_6015

    jr z, jr_071_6038

jr_071_6015:
    ld [hl], $02
    add hl, hl
    ld [hl+], a
    scf
    ld [bc], a
    ld a, [hl+]
    inc hl
    jr c, @+$01

    rst $38
    rst $38
    add hl, hl
    ld h, b
    inc d
    ld h, d
    ld c, d
    ld h, h
    ld l, d
    ld h, h
    ccf
    ld c, $0e
    dec c

jr_071_602d:
    dec c
    dec c
    ld c, $ff

jr_071_6031:
    db $e3
    or $ff
    nop
    db $ec
    rst $28
    db $dd

jr_071_6038:
    pop hl
    rst $10
    db $e3
    or $ff
    or $f6
    sbc c
    rst $38
    or $f9
    sbc c
    rst $38
    nop
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    sbc c
    rst $38
    add l
    rst $38
    nop
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    add l
    rst $38
    nop
    or $ff
    nop
    rst $38
    or $ff

Call_071_607f:
    ld a, e
    rst $38
    or $ff
    and e
    rst $38
    add l
    rst $38

Call_071_6087:
    sbc c
    db $fd
    rra

Jump_071_608a:
    ld c, l
    ld c, l
    ld c, l
    ld c, $0e
    ei
    ldh [$f9], a
    pop hl
    nop
    rst $38
    inc b
    add l
    rst $28
    pop bc
    pop hl
    dec c
    cp l
    pop hl
    ld a, e
    rst $38
    add l
    rst $28
    ld h, b
    db $e4
    ret nz

    ld [c], a
    nop
    ld a, h
    pop hl
    nop
    rst $38
    ld a, [bc]
    rst $20
    ld c, l
    db $e3
    call $80e2
    db $e4
    inc a
    push hl
    add l
    rst $38
    nop
    ld a, [bc]
    pop hl
    ld c, b
    pop hl
    ret nz

    ld [c], a
    pop af
    and $fd
    jp $fc00


    reti


    jp $e1c9


    inc [hl]
    and e
    pop bc
    ld c, l
    pop hl
    dec l
    cp h
    ret nz

    dec l
    dec l
    cp d
    call nz, $ff00
    cp h
    adc a
    call nz, $e308
    dec c
    ld c, l
    ld l, l
    ld c, e
    db $fd
    ldh [rWX], a
    add e
    dec bc
    ld l, l
    or b
    db $e3
    nop
    rst $38
    db $db
    jp $c1d5


    ld b, [hl]
    pop hl
    ld l, l
    rla
    ld c, e

Jump_071_60f1:
    dec bc
    ld c, e
    rst $38
    pop hl
    dec c
    ret nz

    db $e3
    nop
    db $fc
    add hl, de
    jp nz, $fbee

    db $e3
    dec c
    ld c, l
    dec l
    dec bc
    pop bc
    dec l
    ld c, e
    dec hl
    ccf
    dec bc
    dec bc
    dec bc
    dec hl
    dec bc
    ld l, l
    cp b
    jp $fb00


    ld [de], a
    call nz, Call_071_4de7
    ld c, c
    pop hl
    pop bc
    pop hl
    dec c
    pop bc
    pop hl
    ret nz

    ldh [$f6], a
    ldh [rSVBK], a
    cp b
    jp $fd00


    jp Jump_000_10e1


    ldh [rWX], a
    dec c
    dec l
    ld c, b
    pop hl
    cpl
    ld c, l
    ld l, l
    dec hl
    ld l, e
    add b
    ldh [rOCPD], a
    ld b, b
    ldh [rP1], a
    rst $18
    jp nz, $a30a

    ld l, l
    push bc
    ldh [rTAC], a
    pop hl
    add a
    pop bc
    dec b
    ld [c], a
    ld c, e
    ld l, e
    rlca
    ld l, e
    ld c, e
    ld c, e
    add c
    ldh [rP1], a
    rst $18
    sub c
    jp nz, $e1c5

    sub e
    db $e3
    nop
    ld b, h
    jp nz, $e0c1

    pop bc
    jp nz, $df00

    nop
    ld [c], a
    add a
    pop hl
    push bc
    and e
    sub b
    db $e3
    ld [bc], a
    cp a
    ret nz

    ld c, e
    ld [hl], d
    ld [c], a
    push hl
    and d
    nop
    rst $18
    cp h
    db $e3
    sub h
    db $e4
    ld b, b
    and h
    nop
    add h
    pop bc
    add e
    jp $df00


    sbc c
    add c
    ret z

    add d
    inc b
    and e
    di
    push hl
    ld b, e
    push bc
    nop
    nop
    cp h
    ld de, $c681
    add h
    sub d
    push bc
    ld a, c
    ld h, d

Jump_071_6194:
    ei
    add [hl]
    nop
    cp e
    sub $85
    nop
    jp $c584


    add l
    xor a
    rst $20
    nop
    rst $38
    ld a, [bc]
    ld h, l
    ld a, c
    and $f9
    add sp, $00
    rst $38
    nop
    ld [hl], c
    ld h, a
    ld [hl], $a8
    add l
    rst $38
    or $ff
    nop
    ld e, a
    or $ff
    nop
    ld a, a
    or $ff
    nop
    nop
    rst $38
    or $ff
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    and e
    rst $38
    add l
    rst $38
    or $ff
    nop
    rst $38
    adc a
    rst $38
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    nop
    or $ff
    add l

Jump_071_61e2:
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    nop
    add l
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    adc a
    rst $38
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    add l
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    ld a, e
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    nop
    nop
    rst $38
    ld h, $27
    add hl, de
    jr z, jr_071_6243

    ld a, [hl+]
    dec hl
    inc l
    di
    dec l
    ld l, $f6
    rst $38
    db $ec
    pop af
    cpl
    jr nc, jr_071_6258

    add hl, de
    ccf
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $19
    or $ff
    db $ec
    pop af
    nop
    sbc c
    rst $38
    or $fb
    sbc c
    rst $38
    or $fb
    sbc c
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop

jr_071_6243:
    rst $38
    nop
    adc a
    rst $38
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    nop
    or $ff

jr_071_6258:
    nop
    rst $38
    or $ff
    nop
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    adc a
    rst $38
    nop
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff

Jump_071_6277:
    ldh a, [rP1]
    rst $38
    or $ff
    nop
    rst $38
    ld [c], a
    ld [c], a
    add hl, de
    add hl, de
    add hl, de
    dec l
    push hl
    ld l, $fb
    ldh [rNR24], a
    ld d, e
    pop af
    sbc c
    rst $38
    ld [hl-], a
    add hl, de
    add hl, de
    ccf
    ld a, [de]
    dec de
    add hl, de
    add hl, de
    jr nz, jr_071_62b8

    nop
    rst $38
    add l
    ldh a, [rIE]
    jr nz, jr_071_62bf

    ccf
    ld b, b
    add hl, de
    inc e
    dec e
    add hl, de
    rlca
    add hl, de
    ld [hl+], a
    inc hl
    ld a, l
    ld [c], a
    nop
    rst $38
    ld a, [bc]
    add sp, $46
    ldh [$c9], a
    ldh [rIE], a
    scf
    jr c, jr_071_62d4

    rra
    add hl, sp

jr_071_62b8:
    add hl, de
    inc h
    dec h
    jp nz, $e17d

    add hl, de

jr_071_62bf:
    nop
    rst $38
    ld a, [bc]
    rst $20
    ld c, b
    pop hl
    ret


    ldh [$3a], a
    dec sp
    rlca
    inc a
    dec a
    ld a, $b4
    db $e4
    or $c0
    nop
    rst $38
    db $ec

jr_071_62d4:
    ret nz

    ld [de], a
    ldh [$fc], a
    ld c, b
    ld [c], a
    ld b, e
    ldh [rNR24], a
    ld d, $18
    ld d, $16
    inc d
    rlca
    inc d
    jr @+$18

    ld a, l
    pop hl
    or h
    ret nz

    nop
    rst $38
    sub l
    db $e4
    ld c, b
    db $e3
    rst $38
    ld d, $14
    inc de
    ld de, $1313
    ld de, $8f11
    ld de, $3f15
    ld b, b
    cp b
    ret nz

    nop
    rst $38
    ld d, c
    ret nz

    ccf
    ret


    ld b, b
    sub l
    pop hl
    ld c, b
    ld [c], a
    ld d, $c5
    pop hl
    db $fd
    pop hl
    inc de
    ld d, $61
    add hl, de
    cp b
    jp nz, $fb00

    add hl, de
    jp nz, $e3fb

    ld d, $14
    adc $e0
    db $fd
    add hl, de
    ret nz

    ldh [rNR10], a
    ld [bc], a
    ld [$0208], sp
    db $10
    sub c
    dec d
    cp b
    jp $fb00


    call nz, $14e7
    ld c, c
    pop hl
    ld a, [$16e0]
    rst $38
    rla
    db $10
    ld bc, $0000
    nop
    rlca
    rrca
    inc bc
    inc de
    ld d, $b8
    call nz, $fd00
    jp Jump_000_10e1


    pop hl
    dec bc
    ld [c], a
    dec b
    ldh [rNR31], a
    rrca
    dec b
    ret nz

    ldh [rSB], a
    db $10
    ld b, b
    pop hl
    nop
    rst $18
    ld [hl], c
    and b
    add $0e
    ldh [rNR13], a
    inc de
    add l
    ldh [$8b], a
    pop bc
    inc bc
    ld [c], a
    ld [de], a
    inc bc
    ld a, a
    inc bc
    ld [bc], a
    db $10
    ld de, $3f17
    ld b, b
    nop
    rst $18
    push bc
    add hl, hl
    sub c
    pop bc
    inc de
    push bc
    ldh [$93], a
    db $e3
    ld [hl], l
    db $e4
    db $10
    stop
    pop bc
    jp $df00


    ld b, $e2
    ld d, a
    ld [c], a
    ld c, b
    and c
    sub b
    ld [c], a
    ld a, a
    pop bc
    ld [hl], d
    pop hl
    ret nz

    ei
    add b
    nop
    rst $18
    nop
    ld [c], a
    ld b, b
    pop bc
    ld de, $0da2
    and c
    ld a, [de]
    dec de
    nop
    xor [hl]
    ld [c], a
    ei
    add e
    nop
    sbc a
    ld [hl], c
    add c
    cp h
    ld [c], a
    sub h
    pop hl
    sub b
    pop hl
    push bc
    add c
    ret nz

    add h
    add c
    ei
    add d
    nop
    sbc a
    ld e, a
    push hl
    ld hl, sp-$5c
    push bc
    add d
    ccf
    ld b, b
    nop
    add h
    add b
    ei
    add l
    nop
    db $dd
    rrca
    and c
    cp e
    and e
    dec [hl]
    pop bc
    push bc
    add h
    rlca
    db $e3
    nop
    and h
    and h
    nop
    cp a
    ld a, [bc]
    ld h, d
    or b
    and [hl]
    add h
    ld h, h
    ld a, l
    ld h, c
    nop
    rst $38
    ld [hl], c
    ld h, a
    nop
    rst $38
    pop af
    nop
    rst $38
    or $ff
    nop
    sbc a
    or $ff
    nop
    rst $38
    or $ff
    nop
    ld a, a
    nop
    or $ff
    nop
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop

Call_071_6402:
    rst $38
    adc a
    rst $38
    nop
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    nop
    rst $38
    or $ff
    nop
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    adc a
    rst $38
    nop
    rst $38
    nop
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    or $ff
    nop
    rst $38
    nop
    or $ff
    nop
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    nop
    or $00
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    xor $ed
    ld d, $10
    rla
    ld h, $20
    rrca
    daa
    jr nc, jr_071_648f

    scf
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $30
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], l
    ld h, h
    ld sp, hl
    ld l, b
    sbc e
    ld l, [hl]
    or [hl]
    ld l, [hl]
    dec e
    dec c
    rst $38
    rst $20
    ld c, $0e
    ld c, $f2
    add sp, -$01
    rst $38
    xor $ed
    ld c, $c0
    pop hl
    ld c, $0e
    ld l, $b2
    and $f3
    add sp, -$38
    cp $80

jr_071_648f:
    add sp, $0f
    ld c, $6e
    ld l, [hl]
    ld l, $ba
    ldh [$73], a
    ld [c], a
    or c
    and $65
    pop hl
    ldh a, [$b1]
    push af
    ld c, b
    ld [c], a
    adc $e2
    add b
    ldh [$6e], a
    ld l, [hl]
    ld l, [hl]
    dec bc
    inc bc
    dec hl
    ld c, [hl]
    ld a, e
    ldh [$eb], a
    db $e4
    ld a, [hl+]
    db $e4
    and l
    db $e4
    ld l, a
    ld a, [c]
    ld [$3de8], sp
    ld c, $c3
    ldh [$0a], a
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    cp a
    pop hl
    ld [$78ca], a
    ld [hl], d
    db $e3
    add b
    ld hl, sp+$0f
    db $e3
    ld l, [hl]
    dec hl
    ld a, [bc]
    ld a, [hl+]
    ret nz

    pop hl
    ld b, c
    ld c, e
    ld a, [hl]
    ldh [$e9], a
    and $aa
    rst $18
    rst $08
    add $83
    ldh [$2a], a
    ld l, [hl]
    pop bc
    ld b, e
    ld c, e
    dec bc
    ret nz

    pop af
    or l
    rst $30
    adc c
    pop bc
    sub a
    ldh [$6e], a
    jp nz, $83e2

    dec bc
    dec hl
    db $fc
    ldh [$f1], a
    call nz, $c372
    ld l, d
    call nz, $fd75
    ld c, $ff
    dec bc
    ld l, e
    dec c
    dec c
    dec hl
    dec bc
    dec bc
    dec hl
    pop bc
    dec bc
    ret nz

    push hl
    ld a, l
    add $28
    jp nz, $eaee

    inc bc
    pop de
    dec c
    dec bc
    ld a, [hl]
    ld b, l
    ldh [rWX], a
    ld c, e
    ld l, e
    dec l
    dec c
    dec bc
    cp [hl]
    call nz, Call_000_25c0
    push bc
    add b
    db $eb
    rst $20
    xor e
    ld d, $c4
    ret nz

    db $e4
    ld l, a
    and c
    dec l
    dec l
    rlca
    inc c
    inc l
    ld c, [hl]
    ld sp, hl
    and b
    ret nz

    and $97
    xor h
    xor c
    xor e
    ret nz

    rst $20
    ld a, [hl-]
    ld c, b
    ldh [$0c], a
    rst $38
    db $e4
    inc l
    inc l
    dec bc
    ld a, h
    pop hl
    ret z

    and e
    ldh [$b5], a
    xor d
    add a
    pop de
    db $e4
    jp $a0c9


    pop bc
    db $e3
    ld l, h
    ld l, h
    ld c, h
    add a
    ld c, h
    ld c, h
    inc l
    ld a, h
    pop hl
    inc b
    db $e3
    ld a, $ca
    cpl
    ret c

    ld c, [hl]
    ld e, c
    ld l, $c8
    ldh [$c4], a
    ldh [$6c], a
    dec bc
    db $76
    pop hl
    ld c, h
    ld a, h
    ldh [$e0], a
    db $76
    and e
    rra
    push hl
    ld l, a
    xor c
    push hl
    adc [hl]
    add $81
    ld c, [hl]
    ld l, $0b
    ld b, $c3
    ldh [$0d], a
    dec bc
    ret nz

    ldh [$b4], a
    ret nz

    cp a
    db $e4
    ret nz

    add sp, $3a
    jp nc, $9978

    adc c
    cp a
    ldh [$7c], a
    ret nz

    dec hl
    dec bc
    dec hl
    ld c, e
    ld c, [hl]
    pop hl
    or b
    dec sp
    ldh [rPCM34], a
    push bc
    ret nz

    ld hl, sp+$77
    jp z, Jump_000_2e4e

    ccf
    add c
    ld a, [bc]
    rlca
    dec bc
    dec hl
    dec hl
    inc sp
    pop bc
    ld [hl], a
    pop hl
    ld [hl], a
    ret nz

    ld [hl], l
    pop bc
    ld [hl+], a
    add e
    ldh a, [$3e]
    sbc d
    ld d, $a3
    add e
    add c
    ei
    and b
    dec hl
    dec hl
    dec hl
    ld a, [bc]
    add d
    ld [hl], c
    ret nz

    inc l
    inc sp
    ld [c], a
    pop af
    and h
    push af
    add [hl]
    ld sp, $c08c
    ld [$784d], a
    ret nc

    add b
    ret nz

    pop hl
    ei
    ret nz

    dec hl
    dec bc
    ld l, h
    inc l
    inc [hl]
    pop bc
    ld h, b
    rst $28
    ret nz

    pop af
    and d
    sbc a
    ld h, [hl]
    ld sp, $9c8c
    add b
    dec l
    dec l
    ld a, c
    xor b
    ld l, [hl]
    ld a, d
    and c
    ld l, e
    ld l, e
    ld c, e
    cp c
    ret nz

    ld l, h
    ld c, h
    db $f4
    and c
    ld [bc], a
    pop af
    and c
    ld c, e
    ld l, h
    add c
    adc l
    xor e
    add b
    jp hl


    ret nz

    ldh [$bb], a
    add h
    cp c
    and c
    cp a
    dec c
    ld l, e
    ld c, e
    ld l, e
    ld c, e
    ld a, [bc]
    pop af
    add b
    dec bc
    inc c
    ld hl, sp-$5f
    or b
    and d
    inc c
    inc c
    ld h, $e2
    ld sp, $8095
    add sp, -$7e
    ld h, b
    add d
    dec a
    pop bc
    dec c
    cp l
    ret nz

    ld [hl], $c0
    or [hl]
    and b
    ld a, h
    pop hl
    ld l, b
    and b
    dec c
    ld b, b
    ld [$3f68], a
    push de
    jp nc, $fa62

    and b
    sub b
    and c
    inc a
    ret nz

    ld a, [bc]
    cp l
    ret nz

    nop
    ld hl, sp-$60
    cp a
    ld [c], a
    dec a
    pop hl
    xor d
    ld h, h
    ld [hl], e
    adc b
    nop
    adc c
    cp c
    xor c
    scf
    add d
    and $35
    ld h, b
    dec c
    ld a, [bc]
    or $a0
    ld a, a
    db $e3
    inc l
    inc c
    dec c
    ldh a, [$80]
    add sp, $68
    ld l, c
    xor h
    ret z

    scf
    and l
    ld l, $2e
    ld l, e

Jump_071_666c:
    ld a, [bc]
    inc b
    ld a, [hl]
    jp nz, Jump_071_60f1

    dec c
    db $fd
    jp $c4fe


    or h
    ld b, [hl]
    ld a, c
    xor [hl]
    ld [hl], a
    ld [$4e9f], a
    ld l, $4b
    ld c, e
    dec bc
    ld a, l
    ret nz

    pop af
    ld h, b
    dec bc
    add b
    ret nz

    db $e4
    ld a, e
    ret nz

    ld h, [hl]
    ld b, l
    ld a, c
    cp l
    cp a
    db $e3
    or e
    ld h, b
    ld a, e
    ldh [rOCPD], a
    and d
    inc l
    add a
    inc l
    cp $c0
    and [hl]
    ld a, $8f
    ld b, b
    dec l
    ld hl, sp-$5c
    dec bc
    add d
    ei
    and b
    ld c, e
    db $ed
    ld h, l
    ld [$c061], a
    pop hl
    ld a, l
    ld [hl], b
    inc h
    ld c, e
    ld c, l
    jr nc, jr_071_6733

    and b
    ret nz

    db $e4
    ld a, [c]
    ld b, b
    ret nz

    add sp, $6c
    ld l, h
    ld a, [hl]
    ret


    ld a, c
    ld [hl-], a
    sub d
    nop
    ld [hl+], a
    ld c, l
    ld hl, sp-$5a
    db $76
    add b
    dec hl
    nop
    push bc
    xor c
    ld h, b
    dec c
    jp Jump_000_2e4b


    and l
    ld [c], a
    cp c
    ld a, [hl-]
    adc h
    ld h, [hl]
    ld a, [c]
    ld h, b
    ld a, [bc]
    dec bc
    dec c
    ld a, [bc]
    cp a
    rst $20
    inc l
    ld c, e
    db $e3
    nop
    ret nz

    db $e3
    cp d
    or d
    ld e, h
    dec l
    or a
    ld c, l
    ld c, $0a
    inc a
    jp nz, $6c2b

    ld [bc], a
    push hl
    ld c, $41
    ld l, [hl]
    dec h
    db $e3
    ret nz

    rst $30
    sbc l
    ld c, d
    ret nz

    and $3c
    and e
    ld c, h
    ret nz

    and b
    ret nz

    db $e3
    ret nz

    ld [hl], $8a
    jr nc, jr_071_6749

    ld a, b
    ld h, b
    ld a, a
    ld [c], a
    ld sp, hl
    add c
    inc c
    ld l, h
    ld b, b
    ret nz

    ld [c], a
    add $fa
    ld a, b
    add c
    rst $08
    nop
    sbc h
    ld [c], a
    ld l, a
    ld b, d
    ld l, e
    cp e
    and b
    add h
    inc sp
    ld h, b
    cp [hl]
    ldh [$4c], a
    add e
    ret nz

    ld b, c
    ldh [$b0], a
    nop
    ld a, [hl]

jr_071_6733:
    ldh [rKEY1], a
    add c
    ld c, l
    ld a, c
    db $e3
    db $fd
    ld c, l
    ret nz

    db $e4
    ld a, $c1
    ld [hl-], a
    ld h, h
    cp a
    ldh [$0a], a
    inc c
    ld a, h
    ld [c], a
    ld [hl], a
    and b

jr_071_6749:
    ld c, $6e
    db $db
    ld h, b
    and d
    ldh [rNR23], a
    add h
    cp e
    ld d, b
    nop
    ret nz

    push hl
    cp a
    ld [c], a
    ld l, $43
    cp c
    ld h, d
    cp a
    db $e3
    jp nz, $6d94

    ld a, [hl+]
    ret nz

    db $e4
    nop
    dec hl
    add e
    or a
    and c
    cp l
    add d
    ld a, [$f380]
    add b
    cp e
    ld b, l
    cp c
    ld a, b
    ld a, a
    and l
    jr @+$35

    ld h, a
    dec a
    and c
    ret nz

    db $e4
    ld c, [hl]
    ld l, $3b
    ld e, a
    or a
    ld [hl+], a
    ld bc, $00a0
    ret nz

    rst $20
    cp a
    ld [c], a
    add b
    pop hl
    ccf
    ldh [$3b], a
    ld e, c
    ld b, h
    call z, $85fb
    ld [hl], h
    jr nz, jr_071_6796

jr_071_6796:
    ld a, e
    jp nz, $c1be

    ld bc, $b387
    ld [de], a
    xor l
    ld h, a
    add b
    jp hl


    ld a, h
    and b
    or d

jr_071_67a5:
    ld b, b
    jr nz, jr_071_67a5

    jp nz, $8801

    dec h
    ld de, $6564
    ld a, $c2
    ld c, l
    ld e, c
    pop bc
    ld a, [$00a0]
    ret nz

    pop hl
    db $fc
    ld h, b
    ret nz

    db $e3
    inc a
    ld c, [hl]
    ld a, [hl]
    adc [hl]
    dec sp
    ld b, l
    ld a, d
    add h
    rst $28
    ld [bc], a
    nop
    cp h
    ld h, c
    db $76
    ld h, c
    ld l, d
    nop
    cp [hl]
    ld b, e
    ld a, l
    call nz, $f980
    db $76
    inc hl
    sub [hl]
    add c
    inc e
    scf
    jr nz, jr_071_6855

    add b
    ld l, e
    dec bc
    ld c, e
    or e
    add b
    ret nz

    db $e4
    ld c, l
    ld b, h
    nop
    ld [hl], $99
    sbc l
    and $c0
    pop hl
    cpl
    ld bc, $4172
    ret nz

    and $a1
    add h
    db $f4
    sbc h
    ld [bc], a
    cp a
    and b
    ld c, l
    cp d

Call_071_67fc:
    ld h, b
    cp b
    inc hl
    ld a, d
    and d
    xor c
    ld b, c
    sbc d
    ret


    ld a, e
    xor h
    inc c
    xor c
    push hl
    inc l
    ld c, b
    ld c, $4d
    cp a
    ldh [$71], a
    ld hl, $e27e
    rst $38
    ret nz

    add b
    ld a, [$f50a]
    xor l
    rst $20
    jp z, $c17d

    ld [hl], c
    inc h
    rst $38
    and $27
    nop
    ld l, $00
    sub h
    daa
    add [hl]
    xor a
    add hl, sp
    ld [$8099], sp
    cp c
    ld b, c
    ld d, l
    add b
    or d
    ld hl, $e47f
    nop
    db $fc
    xor h
    dec a
    ld d, a
    cp $a1
    ld b, b
    db $e3
    adc a
    ld h, d
    ld a, h
    and $bb
    and e
    sub l
    ld b, a
    nop
    ret nz

    rst $30
    cp a
    ld [c], a
    inc a
    ld [c], a
    rst $08
    ld h, c
    dec sp
    push hl
    ld [hl], h
    ld h, b

jr_071_6855:
    cp e
    xor c
    ret nz

    ld sp, hl
    ld [$e13d], sp
    ld sp, $b923
    pop bc
    ld c, $7c

Call_071_6862:
    jp nz, Jump_000_00f0

    ld hl, sp-$7d
    ld a, [hl-]
    rst $00
    inc c
    ld b, l
    jr nc, jr_071_6885

    add h
    dec c
    dec l
    inc a
    db $e3

jr_071_6872:
    scf
    add e
    dec sp
    pop bc
    db $f4
    ld h, d
    nop
    xor h
    nop
    ld a, a
    ld [hl], b
    call z, Call_000_3e46
    ld b, l
    dec a
    db $e3
    push af
    ld b, h

jr_071_6885:
    rst $30
    ld h, c
    ld [hl], d
    ld [hl+], a
    inc bc
    dec bc
    dec l
    ld l, e
    ld bc, $f8c0
    ld sp, hl
    xor h
    or a
    ld h, [hl]
    rst $30
    add b
    inc sp
    ld [bc], a
    and b
    ld [hl], e
    ld b, c
    add b
    or $f6
    dec bc
    xor [hl]
    dec hl
    ld sp, hl
    and d
    dec l
    ld a, [c]
    add b
    dec hl
    ld bc, $ba6b
    inc b
    ld a, [hl]
    jp c, $8ae0

    ld l, b

jr_071_68b0:
    db $e3
    db $f4
    inc hl
    pop bc
    ldh [rP1], a
    ld [c], a
    jr c, jr_071_6872

    jr c, jr_071_68b0

    ld b, $b0
    ld l, b
    ld c, $2e
    ld c, $f6
    ld b, c
    pop bc
    ld [c], a
    nop
    add hl, sp
    jr nz, jr_071_6943

    ld [hl], a
    ret nz

    db $f4
    inc [hl]
    ld b, h
    pop bc
    db $e4
    ld a, c
    dec a
    call c, Call_000_0f46
    ld c, c
    ret nz

    ld [hl], c
    ld hl, $e4c1
    pop bc
    cp a
    ld [hl], e
    adc b
    ld l, h
    ld h, [hl]
    rst $30
    add c
    ld l, $2e
    nop
    dec sp
    ld [hl+], a
    jp nz, Jump_071_73b1

    sbc c
    rrca
    ld c, e
    pop bc
    dec sp
    jr c, @-$31

    ld h, h
    ld c, d
    add c
    inc l
    nop
    nop
    nop
    dec e
    and b
    rst $38
    rst $20
    sub $d7
    ret c

    ld a, [c]
    add sp, -$01
    rst $38
    xor $ed
    ld a, a
    reti


    jp c, $a0db

    call nc, $d4d5
    xor [hl]
    db $e4
    db $e3
    ld [c], a
    db $e3
    di
    add sp, -$05
    ld a, [$e588]

Jump_071_6919:
    call c, $dedd
    cp $72
    pop hl
    sbc a
    sbc l
    sbc l
    sbc a
    call nc, $a0d4
    add e
    db $e4
    push hl
    ld h, l
    ldh [$b1], a
    and $b2
    ldh [$b1], a
    or $88
    pop hl
    and b
    xor $ce
    ldh [$df], a
    ldh [$e1], a
    jp $9ce1


    ld b, [hl]
    ld b, l
    ccf
    sbc h
    sbc a
    and b

jr_071_6943:
    and b
    and $e7
    db $eb
    ld [c], a
    ld a, [hl+]
    db $e4
    ldh [$b2], a
    ld [c], a
    ld l, a
    db $f4
    adc b
    db $e4
    add h
    ld [c], a
    jp Jump_071_48e0


    ld c, [hl]
    ld c, c
    ld bc, $bf49
    pop hl
    and d
    jp hl


    or d
    ld [c], a
    or c
    ld [c], a

Jump_071_6962:
    ld sp, $88f0
    pop hl
    rrca
    db $e3
    rst $38
    sbc a
    sbc h
    ld b, l
    ld c, b
    ld c, b
    ld d, d
    ld h, c
    ld h, c
    pop bc
    ld d, d
    ld a, [hl]
    pop hl
    or c
    call nz, $e8a2
    db $fc
    ei
    rrca
    ldh [$9e], a
    ld b, l
    rst $38
    ld b, a
    ld h, b
    ld h, b
    ld a, c
    ld a, d

jr_071_6985:
    ld a, h
    ld a, l
    ld b, [hl]
    jp $9e46


    add a
    db $e4
    and d
    push hl
    ld e, a
    db $db
    adc c
    pop bc
    and $e7
    rst $38
    sbc a
    sbc h
    ld d, c
    ld d, d
    ld a, c
    ld a, d
    adc a
    dec hl
    rlca
    dec hl
    ld a, a
    ld a, l
    ret nz

    ldh [$b1], a
    pop bc
    ld c, [hl]
    db $e4
    ld l, d
    call nz, $e4ae
    cp $75
    or $9e
    ld b, [hl]
    ld b, l
    ld a, c
    ld a, [hl]
    dec l
    cpl
    rrca
    jr nz, jr_071_69e9

    ld b, [hl]
    add c
    add b
    ldh [$29], a
    db $e4
    ld l, $c3
    jr z, jr_071_6985

    ld hl, sp+$5f
    call nz, $d229
    jp $9ea1


    xor [hl]
    ld b, [hl]
    add d
    add e
    ld a, a
    cp l
    inc l
    cpl
    ld a, [hl+]
    add e
    add h
    ld b, [hl]
    cp [hl]
    call nz, $48c0
    pop bc
    add $c6
    dec [hl]
    and $e7
    xor e
    call c, $c3e2
    and c
    sbc [hl]
    xor a
    rst $28

jr_071_69e9:
    ld b, [hl]
    add l
    add a
    adc b

jr_071_69ed:
    rst $38
    ldh [$87], a
    add l
    inc bc
    inc bc
    inc bc
    sbc h
    ld sp, hl
    and b
    ld c, b
    push bc
    ld [de], a
    db $ed
    xor c
    xor e
    sub $a2
    jp $bfa1


    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld [bc], a
    rlca
    rst $38

Call_071_6a09:
    ld [c], a
    dec c
    rlca
    rrca
    ld [bc], a
    ld b, [hl]
    ld a, h
    pop hl
    ld a, [$28a1]
    and e
    ld [hl], e
    or a
    inc h
    jp nz, $c3fe

    and d
    ret nc

    xor a
    ld [bc], a
    rrca
    nop
    ld bc, $7f99
    sbc b
    rrca
    inc b
    inc b
    rlca
    rlca
    inc c
    ld a, h
    pop hl
    ld hl, sp-$08
    and c
    ret


    call z, $98d9
    db $d3
    ret nc

    ld [bc], a
    rlca
    dec c
    rst $30
    dec c
    rlca
    rlca
    add h
    ldh [$ae], a
    ld b, [hl]
    inc c
    rlca
    nop
    ld a, h
    ldh [rPCM12], a
    and c
    jr z, jr_071_69ed

    and d
    add d
    ld l, a
    and c
    xor a
    and e
    or h
    xor a
    ld d, e
    and c
    rst $18
    db $d3
    ret nc

    ld b, [hl]
    inc bc
    inc bc
    ld a, [hl-]
    ldh [rDMA], a
    ld b, [hl]
    rra
    xor a
    xor [hl]
    ld b, [hl]
    xor [hl]
    ld [bc], a
    cp a
    db $e3
    and b
    and e
    ld b, e
    add $f8
    xor a
    xor [hl]
    sbc c
    adc c
    cp a
    ldh [rDMA], a
    xor [hl]
    xor a
    ld b, l
    scf
    rst $38
    scf
    ccf
    xor a
    xor [hl]
    xor a
    xor [hl]
    ld [bc], a
    rlca
    pop bc
    inc c
    ld [hl], a
    push bc
    ld a, [de]
    and a
    xor a
    xor b
    ld l, e
    xor h
    sbc e
    add c
    db $d3
    pop de
    rst $38
    ret nc

    xor a
    xor [hl]
    xor [hl]
    jp $cfcd


    ld [hl], $01
    xor a
    ld a, h
    pop hl
    scf
    ldh [rPCM34], a
    ret nz

    ld [hl], l
    pop bc
    and d
    add c
    ld [hl-], a
    call nz, $953e
    cp $9b
    add e
    db $d3
    ret nc

    xor a
    xor a
    rst $08
    call z, $5fcc
    rst $08
    jr c, jr_071_6aeb

    jp Jump_000_32af


    ldh [$af], a
    cp h
    pop hl
    ldh [$f1], a
    and h
    ld [hl-], a
    add $31
    adc h
    dec d
    and h
    sbc e
    add d
    and b
    and b
    jp nc, $aeff

    xor [hl]
    ld [hl], $cf
    call z, Call_000_35ce
    dec [hl]
    ld l, a
    dec sp
    ld [hl], $46
    ld b, $b2
    ret nz

    rlca
    ld [bc], a
    cp h
    ldh [$c0], a
    pop af
    and d
    inc l
    add b
    sbc a
    ld h, e
    ld sp, $3e8c
    add a
    ld a, c
    and d
    xor a

jr_071_6aeb:
    xor a
    cp $bf
    ldh [$cf], a
    jr c, jr_071_6b2a

    dec [hl]
    dec [hl]
    ld b, b
    dec b
    rst $38
    ld c, $00
    ld bc, $0f9b
    rlca
    rlca
    inc b
    ld bc, $f103
    and d
    dec c
    jp z, $8731

    ld a, $83
    ld b, h
    ld h, c
    ld a, c
    and d
    cp [hl]
    jp Jump_071_45ef


    jp Jump_000_363c


    or b
    and b
    rrca
    sbc d
    sbc c
    dec a
    sbc b
    rst $38
    ldh [$0d], a
    rlca
    dec b
    xor [hl]
    xor c
    ld h, c
    db $db
    ld e, h
    ld a, b
    inc a
    ld h, c
    cp c
    and b

jr_071_6b2a:
    dec a
    pop bc
    xor [hl]
    add hl, sp
    inc a
    xor [hl]
    inc bc
    ldh [$fe], a
    ld l, a
    and b
    rrca
    sbc b
    sbc b
    sbc c
    nop
    ld bc, $8106
    xor a
    db $eb
    add c
    ld a, h
    sub c
    ret c

    ld c, b
    or h
    ld h, d
    ld a, [$7ca0]
    ret nz

    xor a
    ld e, a
    ld a, [hl-]
    ld a, [hl-]
    xor a
    add $c7
    or a
    pop hl
    ld [bc], a
    cp a
    ldh [$03], a
    sbc b
    sbc c
    ld l, $a1
    ld a, [hl+]
    add e
    jr z, jr_071_6bc7

    nop
    adc b
    sub l
    adc b
    cp a
    pop hl
    rst $38
    xor a
    add hl, sp
    dec [hl]
    ld a, [hl-]
    jp $c5c4


    xor a
    db $fd
    jp $a0f6


    ld [bc], a
    sbc c
    sbc b
    sub a
    sbc b
    sbc b
    add a
    ld c, $05
    xor [hl]
    ld a, [hl+]
    add [hl]
    di
    ld l, e
    daa
    ld h, d
    sub l
    adc c
    db $d3
    rst $38
    pop de
    pop de
    ret nc

    add hl, sp
    jp Jump_000_3b35


    dec [hl]
    ld a, a
    jr c, jr_071_6bc9

    adc $cd
    rst $08
    xor a
    dec b
    ret nz

    ldh [$1f], a
    sub a
    sub a
    sbc b
    ld b, $af
    add sp, $42
    inc l
    add e
    jr z, jr_071_6c12

    cp h
    db $dd
    ld b, e
    ld [hl], a
    and $d3
    ret nc

    ld [hl], $3b
    cp a
    ldh [$35], a
    rst $38
    rst $08
    call Call_071_40cf
    ld b, $98
    sub a
    sub [hl]
    add a
    sub [hl]
    sub a
    sbc b
    ldh a, [$84]
    ld [hl], h
    ld b, e
    ld a, c
    or a
    inc c
    add h
    db $d3
    rst $38

jr_071_6bc7:
    ret nc

    ld b, e

jr_071_6bc9:
    xor [hl]
    ld b, e
    ld [hl], $c3
    dec [hl]
    dec [hl]
    add hl, hl
    ld [hl], $00
    ldh [$c0], a
    ld [c], a
    sbc e
    dec hl
    add b
    sbc [hl]
    ld h, $42
    and [hl]
    ld a, [hl-]
    ld a, [$850c]
    jp nc, $c081

    ld b, l
    ld [hl], $35
    ld a, [hl-]
    ld [bc], a
    ld de, $010f
    ldh [$81], a
    ldh [$7c], a
    ret nz

    ld [$e1c0], sp
    ld a, l
    ld [hl], b
    inc h
    ld c, [hl]
    ld a, [de]
    ld [hl], c
    ld h, e
    xor [hl]
    ret nz

    pop hl
    add hl, sp
    ld [$61ed], sp
    cp a
    pop hl
    ccf
    pop hl
    ld hl, $379e
    add a
    add hl, sp
    ld sp, $2500
    ld hl, sp-$5b
    ld b, b
    or a
    add b

jr_071_6c12:
    add b
    db $e4
    jp nz, $e100

    xor [hl]
    jr z, jr_071_6c61

    add hl, sp
    inc sp
    dec c
    dec h
    ld hl, sp-$5b
    jp $f1ce


    jp $e1bf


    add c
    ret nz

    ld a, e
    and b
    ld [$af46], sp
    ret nc

    pop hl
    sbc a
    reti


    inc bc
    db $76
    sub b
    pop bc
    inc bc
    ld e, h
    ld a, [hl+]
    jp nc, $c7c6

    xor l
    adc $76
    add b
    ld [hl], $06
    ret nz

    and c
    sbc c
    ret nz

    ldh [$d0], a
    pop hl
    db $d3
    ld d, c
    inc h
    xor b
    ld d, b
    add sp, $6a
    dec d
    inc hl
    sbc [hl]
    call nz, $cec5
    ret nz

    ldh [$ce], a
    inc a
    dec b
    inc a
    and b
    add sp, $40
    ld b, $ae
    ld [hl], c

jr_071_6c61:
    jp nc, Jump_071_4acc

jr_071_6c64:
    inc l
    dec sp
    ld c, l
    nop
    sbc [hl]
    ld b, [hl]
    ld b, b
    or $60
    ld a, [hl-]
    ld a, a
    ldh [rLYC], a
    cp b
    add c
    db $10
    dec b
    xor a
    ld b, d

jr_071_6c77:
    ret nz

    cp h
    ld [hl], l
    jr c, jr_071_6c64

    ld h, [hl]
    daa
    and l
    reti


    and b
    sbc a
    ret nc

    ld b, l
    or $60
    push af
    ld h, b
    rrca
    jr c, jr_071_6cc2

    ld b, l

jr_071_6c8c:
    ld [bc], a
    dec a
    add b
    ld [bc], a
    ldh [$ee], a
    inc [hl]
    cp [hl]
    add h
    add sp, -$5b
    and c
    ld a, [de]
    dec h
    add hl, hl
    ld b, c
    db $d3
    cp a
    pop hl
    jp Jump_000_35cd


    ld h, $bb
    and b
    ld b, l
    ld b, [hl]

jr_071_6ca7:
    ld [bc], a
    ld [c], a
    cp h
    ld h, d
    call nc, Call_000_0fb5
    ld a, h
    add e
    jr nz, jr_071_6ca7

    ld hl, $0a4f
    cp a
    pop hl
    jp nz, $bfe0

    db $e3
    jp nc, $878b

    or l
    dec c
    ld a, h
    ld l, l

jr_071_6cc2:
    jr z, jr_071_6c8c

    ld a, [bc]
    and b
    jp nc, Jump_071_4446

    inc a
    cp a
    db $e3
    add c
    ld b, b
    inc l
    inc b
    or l
    add hl, bc
    cp e
    db $db
    inc sp
    ld h, d
    dec a
    and c
    ld a, [hl]
    ld [c], a
    add hl, sp
    ret nz

    xor h
    nop
    dec sp
    ld e, a
    ld b, h
    jp $0389


    inc sp
    ld h, e
    cp a
    push hl
    ld a, [hl-]
    ld b, l
    add e
    ld b, [hl]
    sbc [hl]
    dec sp
    ld e, c
    ld a, l
    adc a
    xor h
    inc bc
    cp a
    pop hl
    jr c, jr_071_6c77

    dec [hl]
    inc bc
    inc a
    ld b, h
    dec hl
    inc bc
    ld b, c
    add d
    nop
    or b
    ld l, l
    ld l, c

Jump_071_6d03:
    ld [hl], $43
    or $c1
    rst $38
    sbc [hl]
    ld b, [hl]
    add $c7
    ld b, [hl]
    ld b, l
    ld b, e
    ld a, [hl-]
    add b
    add b
    ld [c], a
    ld [hl], e
    ld [hl+], a
    push bc
    and l
    dec a
    xor a
    sub a
    dec b
    dec h
    ld h, h
    ld a, h
    and d
    sbc [hl]
    rla
    ld b, [hl]
    call nz, $f1c5
    nop
    add hl, sp
    nop
    pop hl
    jp hl


    nop
    inc a
    ld c, b

Jump_071_6d2d:
    ld d, b
    dec a
    xor a
    add e
    ld b, c
    dec sp
    ld b, l
    sbc c
    dec h
    sbc a
    rst $28
    nop
    jp $c2fc


    ld bc, $7740
    ld [hl+], a
    ld b, b
    add d
    adc a
    ld b, d
    dec a
    xor a
    cp $85
    sbc d
    add $56
    ld h, c
    ld a, l
    jp nc, $e189

    jp Jump_071_4546


    ccf
    ld b, l
    scf

jr_071_6d56:
    ldh [rSB], a
    xor a
    ld b, b
    add l
    ld c, l
    ld b, d
    db $f4
    dec [hl]
    cp $a1
    sbc l
    and $bf
    pop bc
    cpl
    ld bc, $4601
    scf
    pop hl
    nop
    add c
    ld e, d
    ld [c], a
    rrca
    ld b, d
    or $75
    ld e, [hl]
    ld l, d
    ccf
    pop hl
    inc b
    ld [hl], a
    ld [bc], a
    ld bc, $afe1
    ld a, h
    jr nz, jr_071_6dd8

    add a
    cp e
    xor l
    cp b

Jump_071_6d84:
    inc h
    db $e4
    ld h, e
    jr nz, jr_071_6dc7

    add d
    pop af
    ld bc, $20b2
    ld c, b
    ldh [$7e], a
    ld [c], a
    jp $e03f


    ld a, [$4008]
    cp e
    xor a
    db $76
    ld [hl+], a
    rst $30
    jr z, jr_071_6e0b

    ld h, d
    cp a
    pop hl
    cp $e8
    sbc [hl]
    and b
    and [hl]
    nop
    add [hl]
    or c
    db $e4
    ld l, b
    ld e, d
    jr nz, @+$52

    and e
    or d
    ld hl, $e57f
    db $fc
    and e
    dec sp
    sub d
    nop
    or [hl]
    or b
    ld l, h
    ld h, [hl]
    ld a, h
    jp hl


    cp h
    jr nz, jr_071_6d56

    ld hl, $39fc
    ld h, c
    adc c

jr_071_6dc7:
    ld [hl], c
    dec h
    ld c, $bd
    jp Jump_071_4145


    ld b, l
    cp e
    xor c
    add hl, sp
    jr @-$56

    dec b
    ld d, c
    jr nz, jr_071_6de4

jr_071_6dd8:
    or d
    inc hl
    pop bc
    ld [c], a
    ld [hl], $a6
    rst $30
    ld h, b
    ld a, [hl-]
    jr nz, @+$66

    add c

jr_071_6de4:
    ei
    cpl
    ldh [rBCPD], a
    ld b, l
    sbc b
    adc c
    add sp, $00
    or d
    dec h
    ld [hl], c
    jr nz, jr_071_6e54

    and a
    ld h, [hl]
    add b
    or [hl]
    ld h, b
    ld a, [$e535]
    nop
    ld h, a
    ld h, $70
    ld [$8377], sp
    ld [hl-], a
    ld hl, $0762
    ld h, a

Jump_071_6e06:
    and e
    ld l, b
    cp a
    ldh [$ba], a

jr_071_6e0b:
    and e
    dec b
    inc sp
    dec h
    dec h
    ld e, l
    ld c, b
    ld hl, sp+$6d
    ld h, c
    rst $30
    add b
    pop bc
    pop hl
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    add e
    ld b, d
    sbc [hl]
    cp a
    ld a, b
    dec [hl]
    ld h, a
    db $db
    ld b, e
    dec h
    ld h, l
    cpl
    nop
    cp c
    ccf
    cp d
    and e
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    add b
    pop hl
    cp h

Jump_071_6e36:
    ld de, $b0f8
    dec c
    db $db
    ld b, a
    ld [hl], b
    ld h, d
    jp nc, Jump_071_6e36

    ld l, a
    ld l, h
    adc b
    pop bc
    ld [c], a
    ld a, [$5b00]
    and h
    push de
    ld bc, $dbd9
    ld b, a
    add sp, -$3f
    call nc, $9e03

jr_071_6e54:
    ld b, l
    cp a
    ldh [$c1], a
    ld [c], a
    ld a, [$7a00]
    ld [hl], a
    or l
    rlca
    ld l, $27
    inc b
    add sp, -$3e
    or d
    ld hl, $c16e
    ld [c], a
    ld a, [$3f00]
    ld a, [hl-]
    ld h, d
    ld c, b
    sub a
    dec b
    ld b, $b6
    add e
    ld b, l
    ld [hl], $c1
    db $e4
    ld [bc], a
    dec sp
    rst $38
    ld h, [hl]
    ld a, [hl-]
    jp Jump_071_666c


    nop
    rst $30
    add b
    cp $e0
    ld a, h
    nop
    jp nz, Jump_000_2bb3

    ld sp, $45d2
    rst $08
    dec hl
    add $7b
    nop
    ld l, l
    ld l, $22
    add hl, bc
    add c
    inc l
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
    dec c
    ld a, [bc]
    ld [bc], a
    ld bc, $0c0e
    ld [bc], a
    ld [bc], a
    jr @+$10

    ld [bc], a
    inc bc
    inc d
    rrca
    ld [bc], a
    inc b
    add hl, de
    rrca
    ld [bc], a
    dec b
    dec de
    rrca
    ld [bc], a
    ld b, $13
    db $10
    ld [bc], a
    rlca
    ld a, [de]
    db $10
    ld [bc], a
    ld [$101c], sp
    ld [bc], a
    add hl, bc
    inc d
    ld de, $0a02

Jump_071_6ee0:
    dec d
    ld de, $0b02
    dec e
    ld de, $0c02
    ld hl, $0211
    dec c
    dec h
    ld [de], a
    ld [bc], a
    ld c, $14
    inc de
    ld [bc], a
    rrca
    dec d
    inc de
    ld [bc], a
    db $10
    ld d, $14
    ld [bc], a
    ld de, $1515
    ld [bc], a
    ld [de], a
    ld e, $15
    ld [bc], a
    inc de
    dec hl
    dec d
    ld [bc], a
    inc d
    rla
    ld d, $02
    dec d
    ld a, [de]
    ld d, $02
    ld d, $1d
    ld d, $02
    rla
    jr jr_071_6f2d

    ld [bc], a
    jr jr_071_6f32

    rla
    ld [bc], a
    add hl, de
    jr nz, jr_071_6f35

    ld [bc], a
    ld a, [de]
    inc hl
    rla
    ld [bc], a
    dec de
    inc h
    jr jr_071_6f29

    inc e
    dec l

jr_071_6f29:
    jr jr_071_6f2d

    dec e
    dec e

jr_071_6f2d:
    dec de
    ld [bc], a
    ld e, $1c
    inc e

jr_071_6f32:
    ld [bc], a
    rra
    dec e

jr_071_6f35:
    dec e
    ld [bc], a
    jr nz, jr_071_6f67

    ld e, $02
    ld hl, $212d
    ld [bc], a
    ld [hl+], a
    ld l, $2c
    ld [bc], a
    inc hl
    dec h
    ld l, $02
    inc h
    ld l, $2e
    ld [bc], a
    dec h
    ld h, $2f
    ld [bc], a
    ld h, $2f
    cpl
    ld [bc], a
    daa
    ld a, [hl+]
    dec [hl]
    ld [bc], a
    jr z, jr_071_6f84

    ld [hl], $ff
    rst $38
    rst $38
    ld h, l
    ld l, a
    ld [hl-], a
    ld [hl], h
    jp z, $e57b

    ld a, e
    dec e
    inc c

jr_071_6f67:
    rst $38
    and $2c
    inc l
    inc l
    di
    rst $20
    ld a, [c]
    ldh [$f3], a
    ld [$e300], a
    jp hl


    rst $10
    db $eb
    rst $18
    rst $20
    pop bc
    db $e3
    push af
    db $e3
    db $dd
    db $eb
    and a
    pop hl
    cp h
    add sp, $00

jr_071_6f84:
    cp a
    xor $c1
    and $98
    push hl
    sub e
    jp hl


    ld a, b
    ldh a, [$a0]
    db $ec
    and a
    add sp, $67
    db $ec
    adc a
    ld l, h
    ld l, h
    ld c, h
    ld c, h
    ld d, l
    xor $bf
    db $ed
    pop bc
    or $6c
    rrca
    ld l, h
    ld l, h
    inc c
    inc l
    cp a
    db $e4
    or [hl]
    ldh [$e6], a
    jp z, $c8d2

    ld h, h
    ld b, [hl]
    and $0c
    db $eb
    inc l
    jp nz, $aae0

    pop bc
    ld c, h
    ld c, h
    push af
    pop hl
    rlca
    ld l, h
    inc c
    ld c, h
    ld [hl], l
    push hl
    ret c

    add $95
    ret z

    or d
    jp hl


    adc c
    ldh [$60], a
    call nc, $83e1
    ldh [$f7], a
    ld [c], a
    ld a, [hl]
    ldh [$b6], a
    db $e3
    inc c
    ld l, h
    add l
    and $f8
    xor a
    jp $c848


    ld b, l
    ret z

    ld l, h
    ld l, h
    dec bc
    dec bc
    dec hl
    dec l
    dec hl
    rst $00
    pop hl
    inc c
    ld c, h
    or $e0

jr_071_6fec:
    ld l, h
    ld sp, hl
    ldh [rPCM34], a
    pop hl
    ldh [$c0], a
    pop hl
    db $f4
    add $8d
    ld [$e7c0], a
    add [hl]
    pop hl
    inc c
    ld c, h
    dec hl
    ld [hl], c
    dec bc
    rst $38
    ldh [$bf], a
    ldh [$f1], a
    and b
    ld c, e
    ld c, e
    ld l, e
    ld a, [$90e1]
    db $ed
    and [hl]
    ld a, [$c0c6]
    pop af
    dec d
    ldh [$0b], a
    ld a, [de]
    pop hl
    pop bc
    ldh [rWX], a
    inc h
    cp l
    ldh [$2a], a
    and $2c

jr_071_7021:
    ld c, $e5
    ld [hl], c
    ret nz

    ld c, e
    ld [hl], b
    call nz, $e20d
    db $10
    ld c, d
    ret z

    add l
    and d
    sbc l
    ret nz

    sub [hl]
    and c
    ld l, e
    add c
    pop hl
    ld a, a
    ldh [$3a], a
    rst $00
    nop
    inc a
    jp nz, $e128

    ld h, [hl]
    ldh [$fb], a
    jp $c8ff


    nop
    rst $20
    ld c, [hl]
    pop hl
    jr c, jr_071_6fec

    ld a, [bc]
    add d
    ldh [$2b], a
    cp $c0
    inc c
    cp $e1
    ld [$08e0], a
    db $e3
    pop bc
    db $e4
    pop bc
    dec bc

jr_071_705c:
    jr c, jr_071_7021

    adc h
    rst $00
    or e
    ret z

    dec e
    call nz, $e2bf
    dec bc
    dec hl
    jr jr_071_705c

    add a
    dec b
    pop bc
    pop bc
    push hl
    dec bc
    dec bc
    rst $38
    ret z

    ld a, [hl-]
    and $c5
    add e
    ld c, b
    db $dd
    and c
    ld [hl], e
    jp $e03d


    dec hl
    ld c, $c0
    xor h
    add e
    ld l, h
    or [hl]
    pop bc
    nop
    xor d
    jp $f1c0


    sub e
    adc b
    sbc h
    and l
    ld d, $e1
    nop
    db $e3
    add $82
    add b
    ret nz

    dec c
    ld l, h
    ld l, d
    call nz, Call_071_4b0b
    sbc d
    add l
    push bc
    add sp, -$58
    add a
    ld [de], a
    and l
    xor a
    dec bc
    ld l, e
    ld l, e
    ld c, e
    rlca
    and [hl]
    ld c, h
    adc e
    ret nz

    ld l, h
    ld b, $2b
    jp Jump_000_2b2b


    ret nz

    push hl
    or $87
    ld l, a
    and a
    ld e, e
    and l
    cp [hl]
    ret nz

    ld [hl], a
    ld c, e
    ld c, e
    dec c
    ld [hl], e
    and $4c
    ld c, e
    dec c
    ldh a, [$e0]
    ld hl, $aa4b
    jp nz, $e481

    ld b, b
    rst $00
    add e
    xor b
    ld l, h
    sub l
    and b
    ld de, $bea1
    ret


    add b
    dec bc
    ld a, [bc]
    dec bc
    dec c
    dec c
    rrca
    and b
    ld c, h
    cp [hl]
    add b
    add b
    ld l, h
    ld c, e
    dec c
    dec c
    ld a, [bc]
    rst $38
    ldh [$2a], a
    ld b, d
    db $eb
    and b
    ld l, e
    or b
    add l
    xor $64
    push hl
    ld h, h
    sub b
    ld h, e
    ld c, h
    inc h
    pop hl
    ld a, [hl-]
    ret nc

    add b
    ld l, h
    jp nc, $0ae1

    ld a, [hl+]
    dec c
    adc d
    db $e3
    db $76
    ldh [$3e], a
    pop bc
    ld [c], a
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    ld l, e
    ld a, [$4b82]
    jp z, $8078

    jp hl


    ld h, a
    add h
    pop bc
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    ld l, d

jr_071_7121:
    dec c
    rst $38
    push hl
    add [hl]
    rst $28
    db $e4
    ld a, [bc]
    ld l, e
    scf
    and d
    jp c, $c0a5

    rst $28
    ret nz

    and d
    ld c, h
    ld [$e5d2], sp
    cp a
    and $c1
    push hl
    ld c, d
    dec l
    and c
    add hl, sp
    add b
    cp $8a
    ld b, e
    adc b
    jr nz, jr_071_7121

    ld h, e
    ld b, d
    db $e3
    ld a, [hl]
    db $e3
    ld c, d
    ld [c], a
    ldh a, [$e7]
    dec bc
    ld a, b
    and d
    ld e, d
    and e
    nop
    ret nz

    jp hl


    ld de, $e365
    add d
    ret nz

    add sp, -$0a
    db $ed
    ret nz

    pop hl
    or e
    and b
    push de
    ld b, h
    call z, Call_071_434e
    ld [bc], a
    adc b
    inc l
    inc c
    ld a, [bc]
    add c
    ret nz

    ld hl, sp+$0a
    ld c, h
    ld [bc], a
    ld l, h
    ld h, b
    inc l
    ld [hl], c
    ld h, b
    cp $a9
    ld b, d
    add a
    sbc h
    and c
    ret z

    ld h, b
    add b
    pop af
    adc b
    dec sp
    ldh [$38], a
    pop hl
    ld [hl], a
    ld h, b
    ld c, e
    rst $38
    push bc
    cp a
    rst $08
    rst $00
    ld h, d
    dec hl
    add hl, de
    dec bc
    ld d, h
    jp $ebc1


    ld c, e
    ld c, d
    inc l
    jp nz, Jump_071_41ee

    ld e, e
    and h
    ldh [$3d], a
    ld h, l
    ld b, d
    ld l, b
    ld e, h
    and b
    ret z

    ld h, c
    dec d
    jp nz, Jump_071_4b6a

    ld l, e
    ld [bc], a
    pop bc
    jp hl


    ld c, e
    inc l
    jp Jump_071_6277


    add b
    ld b, l
    nop
    push hl
    add c
    add a
    adc b
    ld h, b
    call z, Call_071_6087
    push de
    db $e4
    ld c, e
    ld l, e
    add l
    push bc
    add a
    and b
    ld c, e
    dec hl
    add b
    xor h
    and d
    sbc d
    ld h, e
    add b
    call z, $8701
    ret nz

    ld [c], a
    ld d, l
    call nz, Call_071_607f
    ld a, [hl+]
    ld c, a
    ld a, [bc]
    ld l, d
    ld c, d
    ld l, d
    ld b, a
    ldh [$74], a
    ld h, b
    dec bc
    ret nz

    db $e3
    ldh [$c5], a
    ld h, [hl]
    ccf
    adc h
    add b
    jp hl


    ret nz

    push hl
    ret nc

    add b
    ld a, [hl+]
    ld a, [hl+]
    ld c, d
    ld b, b
    db $fd
    and c
    push af
    pop hl
    add b
    ld [c], a
    ret nz

    and d
    ret nz

    add $3f
    xor [hl]
    ld l, h
    jp z, Jump_000_0261

    ret nz

    xor $2a
    dec hl
    ldh [rSTAT], a
    db $e4
    add l

jr_071_720b:
    ld h, d
    ret nz

    and [hl]
    jp z, $0223

    ld c, c
    ld [bc], a
    ld b, a
    ld b, b
    dec hl
    cp a
    and $ca
    db $e4
    pop bc
    ld [c], a
    ld bc, $1fe4
    ld b, h
    ld l, e
    rlca
    ld h, b
    adc c
    ld b, $5a
    inc b
    ld a, [de]
    add d
    inc d
    and e
    cp $60
    ld l, e
    ld l, e
    ld [$04c1], sp
    ld a, e

jr_071_7233:
    add e
    ret nz

    db $e3
    ld c, h
    ld a, l
    ld b, c
    rst $38
    adc d
    inc a
    ld h, a
    ld b, c
    ld b, c
    ld b, b
    rst $20
    ld [bc], a
    add b
    pop hl
    dec hl
    dec bc
    db $e3
    ld [hl], h
    ld h, c
    ld l, e
    call nz, Call_000_21e5
    cp a
    ld b, [hl]
    ld b, b
    push hl
    jr nz, jr_071_7296

    ld h, $c0
    and e
    inc d
    add h
    cp $e0
    ld a, [bc]
    jp nz, Jump_071_7a4a

    ldh [$bb], a
    add [hl]
    nop
    ld h, [hl]
    jr nz, jr_071_720b

    jr nz, jr_071_7233

jr_071_7267:
    add a
    ret nz

    db $eb
    nop
    pop bc
    ret nz

    and e
    cp h
    push hl
    ld [hl], l
    xor h
    add b
    pop bc
    ld b, c
    cp [hl]
    ld b, b
    ccf
    ld c, d
    or e
    jr z, jr_071_727c

jr_071_727c:
    ret


    ld a, e
    sub d
    add c
    ld [c], a
    dec hl
    nop
    rst $38
    add hl, hl
    nop
    ld l, e
    ld c, b
    inc hl
    jp z, $c08a

    db $ed
    ccf
    ld c, [hl]
    ret nz

    ld c, c
    jp z, Jump_000_0321

    dec hl
    dec bc

jr_071_7296:
    push de
    add e
    jp nz, $c0ef

    db $e3
    ccf
    ld c, l
    ld [hl], $09
    dec bc
    ld b, b
    nop
    ccf
    rst $20
    adc b
    ld h, a
    ld a, [hl]
    ld h, [hl]
    push af
    and d
    ccf
    ld c, h
    nop
    jp z, $e1c0

    ld b, b
    db $e4
    ld b, $49
    ld h, c
    ld l, d
    ld c, d
    rst $38
    pop hl
    jr c, @+$65

    add c
    jp nz, $e2c0

    pop bc
    ld h, [hl]
    nop
    dec a
    add h
    rst $38
    daa
    ret nz

    jp hl


    nop
    ld [$a03a], a
    push af
    and l
    add d
    xor e
    cp a
    dec hl
    ldh [$b2], a
    and b
    sbc d
    jr nz, jr_071_7267

    ldh [rTIMA], a
    rst $28
    ld a, a
    ld h, c
    dec hl
    ld l, e
    ld l, e
    ld b, c
    dec hl

jr_071_72e3:
    add d
    and l
    ld c, e
    rlca
    ret nz

    add [hl]
    ld b, b
    ld hl, $61a0
    ld l, e
    cp a
    push bc
    nop
    dec a
    ld l, h
    dec b
    ret nz

    ret nz

    pop bc
    ld b, c
    ld l, [hl]
    add b
    add a
    and [hl]
    ld hl, $a0f7
    add [hl]
    ld l, b
    ld b, b
    inc bc
    call z, $02fa
    jp c, $80e2

    ld c, b
    pop bc
    ld h, [hl]
    rst $20
    and $6b
    ld b, l
    rst $08
    nop
    jp $c0c4


    ld [c], a
    nop
    adc d
    ld [hl], e
    ld b, a
    add sp, $24
    sub b
    ld bc, $f000
    rlca
    ret nz

    jr nz, jr_071_72e3

    and $00
    adc a
    db $ed
    ld h, b
    xor b
    inc h
    add e
    nop
    dec hl
    db $fc
    and a
    cp $45
    nop
    push bc
    nop
    ld b, d
    db $e3
    add hl, sp
    ld bc, $7380
    add b

jr_071_733c:
    nop
    inc a
    ld [hl+], a
    sbc h
    add c
    db $10
    ld h, d
    dec de
    ld a, [hl+]
    ld a, [bc]
    ld [hl], d
    ld b, c
    dec hl
    ld c, e
    adc b
    nop
    ld d, e
    inc bc
    ld h, e
    ret nz

    jr jr_071_733c

    ld h, d
    nop
    ld [hl], e
    jr z, jr_071_7398

    ld l, h
    ld c, h
    inc a
    ld b, c
    reti


    jp $8354


    nop
    or e
    pop hl
    adc l
    and a
    rra
    and b
    rst $38
    and l
    add h
    and a
    inc sp
    add a
    daa
    ld h, c
    ret nz

    db $e3
    nop
    ld [hl], $80
    ld [hl], h
    and b
    jp nc, Jump_000_2c62

    ld b, b
    ld c, h
    ld h, [hl]
    dec b
    inc h
    ld c, d
    ld c, d
    ld a, a
    xor d
    nop

jr_071_7382:
    ld a, h
    add d
    sbc h
    ld h, c
    sbc c
    ldh [$ba], a
    ld [c], a
    db $10
    add c
    adc [hl]
    ld hl, $224c
    ld b, l
    dec b
    nop
    rst $08
    and [hl]
    or [hl]
    jr z, jr_071_7382

jr_071_7398:
    ld b, l
    ld a, h
    add b
    ld e, c
    and h
    ld c, d
    ld h, b
    rst $08
    and d
    ld c, $a1
    nop
    inc h
    pop hl
    ld b, [hl]
    ld b, $47
    and [hl]
    ld [hl], a
    ld b, a
    di
    add sp, -$39
    ld b, c
    inc sp

Jump_071_73b1:
    and [hl]
    cp e
    ld b, c
    ld b, b
    ld d, b
    push hl
    add a
    ld b, a
    add d
    jp hl


    ld a, c
    rst $20
    db $e3
    jp hl


    adc a
    call nz, $b52c
    db $e3
    nop
    rlc d
    rst $20
    add sp, -$3f
    ld [$2a3d], a
    db $fd
    db $ec
    add hl, hl
    rst $20
    add e
    add sp, $4a
    add h
    ld [$e8d1], sp
    ld l, a
    and $bd
    db $eb
    ld l, h
    cpl
    pop bc
    push bc
    call nz, $fad5
    ld l, c
    ret


    ld [bc], a
    ld a, c
    add sp, $2c
    ld b, b
    jp $06cf


    ld [c], a
    and $97
    db $ed
    ld [hl], c
    ld [$e765], a
    ccf
    ld c, h
    dec bc
    dec c
    dec bc
    dec bc
    dec l
    ld de, $e7a6
    ret


    nop
    ld d, $f0
    rst $28
    ret


    dec e
    inc h
    ret nz

    and e
    ret nc

    ld b, a
    pop bc
    rst $30
    ld h, d
    push hl
    ld [hl], l
    rlc b
    ld b, b
    db $e4
    dec de
    ret


    jp nz, $bdf4

    jp hl


    ld sp, $2767
    ld l, c
    pop bc
    rst $38
    daa
    and a
    nop
    dec [hl]
    adc $ca
    db $d3
    ld a, e
    db $f4
    dec [hl]
    ret nc

    ld d, c
    xor c
    ret nc

    db $ec
    nop
    nop
    nop
    rst $18
    sbc c
    sbc b
    sbc b
    sbc b
    sub a
    rst $38
    ld [c], a
    sub [hl]
    sub [hl]
    dec de
    sub [hl]
    sub l
    rst $38
    rst $20
    sub [hl]
    sub [hl]
    ld [$e2e2], a
    ldh [$e1], a
    ldh [$30], a
    push hl
    ldh [$e3], a
    add sp, -$29
    ldh [$e5], a
    db $e4
    sbc c
    sbc c
    pop bc
    db $e4
    rst $18
    ld [c], a
    nop
    pop bc
    db $e3
    push af
    db $e3
    pop bc
    pop hl
    call nz, $dde1
    ldh [$a0], a
    ldh [$b4], a
    pop hl
    cp h
    add sp, -$40
    cp a
    jp hl


    pop bc
    db $eb
    rst $00
    db $e3
    ld [hl], h
    ldh [$85], a
    ld [c], a
    and d
    ldh [$99], a
    ld bc, $0003
    sbc c
    ld h, b
    pop hl
    ld e, h
    db $e3
    reti


    db $ec
    ld a, [hl]
    pop hl
    add d
    db $e4
    ld c, e
    jp hl


    db $fc
    cpl
    ld [c], a
    ld h, d
    pop hl
    nop
    ld bc, $040d
    inc b
    rrca
    nop
    ld a, c
    ld [c], a
    ld [hl], h
    ld [c], a
    add hl, de
    db $e4
    cp a
    ld [$e322], a
    inc c
    rst $20
    jp nc, Jump_000_25e6

    ldh [$7f], a
    rrca
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rrca
    inc a
    ld [c], a
    rlca
    dec c
    rlca
    dec c
    cp h
    db $e4
    reti


    jp $e67e


    xor [hl]
    add sp, $0c
    ld [c], a
    db $fc
    db $ed
    pop bc
    ld b, a
    db $e3
    rrca
    ld [bc], a
    inc bc
    inc b
    dec c
    dec c
    rst $30
    ld [bc], a
    ld [bc], a
    rrca
    push af
    ldh [rDIV], a
    inc bc
    dec bc
    inc bc
    inc bc
    inc b
    rrca
    ld de, $d8e3
    add $55
    db $e4
    adc b
    pop bc
    sub c
    add $c8
    pop hl
    ld [hl], h
    adc c
    ldh [$d4], a
    ldh [rIF], a
    add $e0
    inc b
    add hl, bc
    inc b
    ld sp, hl
    pop hl
    ld c, $b6
    ld [c], a
    rlca
    dec b
    ld b, $f3
    pop bc
    or d
    ret nz

    call nc, $15c5
    db $e3
    db $fc
    ld c, b
    jp nz, $c691

    nop
    ld bc, $020f
    ld [hl], $3b
    rst $38
    jr c, jr_071_753f

    ld [bc], a
    rrca
    ld b, $05
    ld c, $06
    rst $38
    ld a, [hl+]
    cpl
    ld a, [hl+]
    ld b, $0e
    dec b
    ld [bc], a
    ld [bc], a
    rst $18
    ld [bc], a
    dec c
    sbc b
    sbc c
    sbc e
    rst $28
    ldh [rP1], a
    ld bc, $b2f0
    jp nz, $e68d

    add b
    rst $20
    sub c
    jp nz, Jump_000_070f

    rlca
    dec c
    rst $38
    sbc c
    ld b, $39
    dec [hl]
    ld h, d
    ld h, e
    ld h, [hl]
    ld [hl], $ff
    ld [bc], a
    dec b
    ld b, $99
    ld b, $2c
    cpl

jr_071_753f:
    inc l
    cp $fa
    ldh [rDMA], a
    inc c
    ld c, $98
    sub a
    sbc b
    sbc c
    rra
    ld c, $0c
    ld [$070d], sp
    or c
    jp nz, $e23c

    ld a, l
    call nz, $c0ec
    and $55
    ret nz

    ld b, $46
    ld a, [de]
    ldh [rTIMA], a
    ld a, $35
    ld a, a
    ld l, c
    dec [hl]
    ld l, b
    ld h, [hl]
    add hl, sp
    dec b
    ld c, $bf
    ret nz

    sbc $40
    ldh [$98], a
    ld c, $05
    dec b
    inc a
    pop bc
    sbc b
    ld [$0c1f], sp
    inc b
    inc bc
    ccf
    ld [bc], a
    ei
    jp $e20d


    call c, $fca1
    add b
    jp hl


    ld d, [hl]
    ldh [$0d], a
    rlca
    inc b
    inc bc
    add hl, sp
    dec [hl]
    ccf
    ld l, e
    ld l, h
    ld l, h
    ld l, l
    ld a, $0a
    or a
    jp nz, $c1b2

    ei
    ld a, [bc]
    ld a, [bc]
    pop bc
    pop hl
    rrca
    ld [bc], a
    scf
    jr c, jr_071_75de

    inc bc
    dec [hl]
    add hl, sp
    ei
    jp nz, $c2bc

    ret nz

    db $e4
    nop
    rst $20
    ld c, $e0
    ld [hl-], a
    and b
    rst $38
    dec c
    ld [bc], a
    ld [hl], $6e
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld a, $99
    ld a, [bc]
    daa
    and b
    inc hl
    and c
    sbc b
    sbc b
    ret nz

    pop hl
    pop bc
    ldh [$36], a
    ld a, a
    ld h, d
    ld h, e
    ld h, l
    ld h, [hl]
    ld a, [hl-]
    dec b
    ld c, $bc
    jp $1df0


    and l
    or e
    add $98
    db $e4
    sub $e2
    dec [hl]
    dec [hl]
    dec [hl]

jr_071_75de:
    ld a, $e5
    ld b, $e8
    add h
    sub a
    ret nz

    pop hl
    pop bc
    ld [c], a
    ld h, a
    dec [hl]
    dec [hl]
    rrca
    ld l, d
    dec [hl]
    ld b, d
    ld [$a30e], sp
    ld hl, sp-$7c
    ld [hl], h
    ret z

    ld e, b
    ld [c], a
    ld c, $b7

jr_071_75fa:
    pop hl
    ld c, $05
    ld a, [hl-]
    ret nz

    ld [c], a
    ld d, l
    jp nz, $e1f1

    push af
    ldh [rNR13], a
    ld b, $39
    pop bc
    pop hl
    ret nz

    ldh [rLCDC], a
    ret nz

    db $ed
    add a
    and a
    ld b, b
    pop hl
    adc [hl]
    adc h
    add c
    sbc c
    ld a, [bc]
    ld a, $80
    ldh [rP1], a
    ldh [$f7], a
    add d
    sbc b
    rst $38
    ld [$0846], sp
    sbc b
    db $10
    dec b
    ld a, [hl-]
    ld l, e
    rra
    ld l, h
    dec [hl]
    dec [hl]
    ld l, h
    ld l, l
    ld b, b
    db $ed
    ld [hl], $c7
    ld b, c
    ret nz

    db $fc
    jr jr_071_75fa

    ld d, [hl]
    pop bc
    ld b, $3e
    jr c, jr_071_7676

    ld b, e
    ld a, [bc]
    ld a, l
    sbc d
    add $83
    sbc b
    ld b, $46
    inc bc
    add hl, bc
    xor e
    ret nz

    rst $38
    ld l, [hl]
    ld l, a
    ld l, h
    ld l, h
    ld l, a
    ld l, [hl]
    add hl, sp
    ld b, $c0
    db $fc
    and d
    cp a
    and [hl]
    jp Jump_071_4fa6


    and d
    ld e, e
    and c
    sub $a0
    ld [$bf43], sp
    ld b, l
    ld b, [hl]
    xor [hl]
    dec b
    db $10
    sbc e
    db $e3
    ld h, c
    sbc c
    rst $38
    db $10
    dec b
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, e

jr_071_7676:
    scf
    dec e
    jr c, @-$54

    pop bc
    ld a, [hl-]
    rla
    ld c, $40
    jp z, $a8c3

    ld c, a
    and b
    rst $20
    dec b
    ld c, $04
    ret nc

    add b
    ret


    add b
    ld b, e
    ld d, b
    ld b, e
    rst $38
    xor a
    xor [hl]
    inc bc
    add hl, bc
    add hl, bc
    inc b
    inc b
    add hl, bc
    rst $38
    add hl, bc
    inc bc
    ld b, [hl]
    xor [hl]
    xor a
    ld c, b
    ld c, [hl]
    ld c, [hl]
    dec bc
    ld c, [hl]
    ld c, b
    xor d
    ret nz

    ld [hl], $b0
    add d
    db $fc
    add h
    ret nz

    jp Jump_071_6194


    ldh a, [$c3]
    and d
    sbc b
    and b
    call $d0c0
    add b
    ld [bc], a
    ld c, b
    ld c, c
    ld c, h
    rst $08
    ld e, l
    ld c, h
    ld b, a
    xor a
    adc d
    ldh [$fe], a
    ld [c], a
    xor [hl]
    xor a
    rst $38
    ld b, a
    ld h, b
    ld h, c
    ld h, c
    ld h, c
    ld h, b
    ld c, d
    ld [hl], $8f
    ld [hl], $02
    dec c
    db $10
    or e
    pop bc
    adc d
    ret z

    add b
    add sp, $0a
    xor $c1
    pop bc
    sbc b
    rrca
    inc c
    jp nc, Jump_071_61e2

    ld h, c
    ld d, d
    di
    xor a
    xor [hl]
    rst $38
    db $e3
    pop bc
    db $e3
    ld h, c
    ld h, c
    ld e, d
    ld b, l
    dec b
    ld b, l
    ld b, h
    ret nz

    ld b, $a8
    jp nz, $868b

    jp $9987


    and b
    adc $c0
    rrca
    sbc b
    ld b, $51
    ld e, [hl]
    pop bc
    ld [c], a
    cp a
    pop hl
    rst $38
    db $e3
    or b
    db $e4
    rlca
    ld h, c
    ld d, [hl]
    ld b, l
    and b
    and c
    ret nz

    pop hl
    cp $88
    ld b, e
    add [hl]
    ld e, c
    and b
    db $76
    add c
    and d
    ld a, [bc]
    ld c, d
    pop de
    db $e4
    ld h, c
    ld h, c
    ld d, h
    ld a, [bc]
    ldh [$b7], a
    ld c, [hl]
    ld c, [hl]
    ld c, c
    ldh a, [$e5]
    ld e, b
    ld b, h
    ld a, b
    and c
    ld a, [bc]
    or c
    ld a, [bc]
    jp z, $c042

    jp hl


    ld b, d
    add h
    ld b, $46
    db $e3
    add b
    sbc b
    inc hl
    ld a, [bc]
    ld c, a
    pop bc
    push hl
    ld hl, sp-$13
    ret nz

    ldh [$99], a
    or e
    and c
    db $ec
    ld b, e
    ld hl, sp-$42
    add h
    ld [bc], a
    add h
    ld [hl], h
    ld b, c
    ld c, $05
    ld b, l
    dec bc
    ld [bc], a
    db $fd
    rrca
    ret nz

    rst $30
    ld h, c
    ld e, h
    ld a, [bc]
    sbc d

jr_071_7762:
    rrca
    ld [bc], a
    ld b, c
    rla
    ld [hl], c
    ld h, b
    ld a, [hl]
    add h
    cp a
    ret


    sub a
    ld b, b
    ld c, c
    and b
    dec sp
    add hl, bc
    add b
    xor $80
    pop af
    ld d, h
    ld e, c
    ld d, h
    ret nz

    ld [c], a
    rrca
    ld [bc], a
    ld b, [hl]
    or b
    sbc l
    ldh [$3a], a
    ld h, e
    cp a
    jp z, $21f4

    ld b, $40
    ret z

    ld h, c
    ld b, l
    call Call_000_064b
    pop hl
    ld d, e
    ld d, e
    rst $08
    pop hl
    rst $30
    push bc
    ld d, d
    ld b, l
    dec de
    ld c, d
    ld e, l
    dec a
    ret nz

    ld e, h
    dec b
    xor $40
    add hl, hl
    ld h, c
    bit 0, a
    ld l, [hl]
    ld b, d
    ld l, b
    sbc c
    ld a, [bc]
    add hl, sp
    ret z

    ld h, c
    ld b, b
    ld c, l
    dec d
    ret nz

    ld e, a
    ld e, l
    ld c, d
    ld b, [hl]
    ld b, l
    ld d, d
    pop bc
    add sp, $46
    ld l, e
    jp nz, $5c83

    ld b, [hl]
    jr nz, jr_071_7762

    ld a, c
    ld h, b
    add c
    and $00
    pop hl
    add c
    add a
    ld a, $71
    ld l, c
    ld e, a
    add b
    ret nz

    pop hl
    push de
    pop hl
    ld b, [hl]
    ld b, l
    ld d, [hl]
    add d
    and $17
    ld b, l
    ld b, [hl]
    ld b, h
    ld [$5ce1], a
    rst $18
    and d
    ret nz

    pop hl
    ld b, b
    ret


    ld hl, sp+$01
    add a
    ret nz

    ld [c], a
    ld bc, $58c2
    ld b, h
    ld b, l
    scf
    scf
    rst $30
    ld d, l
    ld h, c
    ld h, b
    rst $38
    ldh [$61], a
    ld d, [hl]
    add hl, sp
    dec sp
    inc de
    ld [hl], $45
    ret nz

    db $e3
    ld a, b
    ld h, d
    ld [$64be], sp
    ccf
    adc b
    add b
    jp hl


    ld a, [hl]
    ret nz

    db $e4
    add hl, sp
    dec [hl]
    dec [hl]
    add hl, sp
    ld d, [hl]
    ld e, [hl]
    rst $38
    ldh [rOCPD], a
    ld h, c
    ld d, l
    di
    ld h, b
    add hl, sp
    add b
    pop hl
    ld e, b
    ld b, h
    xor l
    ld h, b
    ret nz

    ld a, a
    and c
    ld a, [hl]
    adc d
    nop
    jp hl


    ld [$8061], sp
    db $e4
    cp [hl]
    ld h, b
    ld a, [hl-]
    ld d, l
    ld [hl-], a
    ret nz

jr_071_7830:
    pop hl
    ld d, d
    ld [hl], e
    ld h, d
    ld l, e
    and c
    ld e, b
    ld b, h
    add l
    ld h, b

jr_071_783a:
    ld [hl], c
    add b
    ld sp, $ac06
    inc bc
    jp z, Jump_000_0023

    ret z

    ld b, $40
    ld [$0061], sp
    db $e4
    ld a, l
    inc a
    dec a
    ld h, b
    ld [hl], $53
    ld e, c
    ld e, c
    ld d, e
    inc [hl]
    ld h, c
    dec sp
    dec [hl]
    ld a, $6b
    and c
    ld e, b
    inc c
    ld c, $78
    ld hl, $817f
    ld hl, sp+$3e
    ld h, a
    add b
    and h
    db $d3
    ld bc, $050e
    scf
    dec a
    dec a
    db $fd
    jr c, jr_071_7830

    jp Jump_000_3855


    dec [hl]
    dec [hl]
    scf
    ld a, [hl-]
    rst $38

jr_071_7878:
    ld c, a
    ld c, c
    ld c, c
    ld e, d
    ld a, [hl-]
    scf
    dec [hl]
    dec [hl]
    ld e, e
    dec sp
    add hl, sp
    dec hl
    pop bc
    ld e, b
    inc c
    ld a, l
    ld b, c
    ld a, [hl-]
    ret nz

    rst $28
    cp h
    jp $8041


    and d
    scf
    dec a
    scf
    ld b, l
    pop bc
    add e
    ld d, l
    ld l, b
    ret nc

    ld h, b
    ret nz

    ldh [$8b], a
    add b
    ld a, [hl-]
    rst $30

Jump_071_78a1:
    ldh [rSCX], a
    ld b, e
    inc sp
    jp nz, $5c3b

    dec bc
    ld a, l
    ld b, b
    ld h, [hl]
    ld b, h
    ld [$eb40], sp
    ld b, e
    ld h, $ee
    db $dd
    ld b, b
    ld h, e
    ld h, [hl]
    jr c, jr_071_783a

    add d
    ld h, b
    ld e, l
    ld c, h
    rst $28
    ld c, c
    ld c, b
    scf
    jr c, jr_071_7878

    and b
    ld d, [hl]
    jr c, jr_071_78fe

    jp c, Jump_071_60f1

    ld c, h
    pop bc
    and c
    ld h, c
    ld e, h
    cp h
    ld b, c
    ld l, d
    add hl, sp
    pop bc

jr_071_78d4:
    ld [$29fe], sp
    nop
    adc c
    nop
    ret nz

    ret nz

    and e
    nop
    add d
    ld h, b
    ld c, h
    or c
    ld c, h
    ret


    ld h, c
    ld a, [$80e3]
    add e
    ld a, [hl-]

jr_071_78ea:
    ld l, c
    cp [hl]
    ld b, b
    add hl, sp
    ldh [$80], a
    db $e4
    ret nz

    add h
    add b
    ld h, a
    nop
    ret z

    add b
    sub e
    ld b, d
    ld h, d
    db $76
    rlca
    dec [hl]

jr_071_78fe:
    ld [hl], e
    ld l, [hl]
    ld a, d
    pop bc
    nop
    adc h
    add b
    push hl
    ld c, b
    ld hl, $a296
    ld b, d
    ld b, b
    sub e
    ld b, b
    jr z, @+$23

    ld a, a
    jr nz, jr_071_78d4

    adc a
    add b
    ld h, e
    add hl, sp
    ld b, b
    jp nz, $c050

    add c
    adc h
    add e
    rst $38
    db $e4
    or [hl]
    add l
    ld d, [hl]
    ldh [$e2], a
    add hl, sp
    ld bc, $6cc4
    ld b, c
    adc c
    db $76
    inc bc
    ld b, $45
    adc c
    jr nz, jr_071_7967

    add hl, sp
    ret nz

    ld h, h
    xor c
    ld d, d
    adc h
    ld b, c
    ld a, a
    ld h, d
    ld c, b
    or [hl]
    add h
    ld e, d
    xor d
    jr nz, jr_071_7977

    or b
    nop
    jr nz, @+$01

    dec h
    add b
    jr z, jr_071_79c9

    jp nz, Jump_000_050e

    ld c, e
    and b
    dec [hl]
    db $dd
    ld a, $80
    ld h, c
    ld d, a
    ld d, a
    ld d, d
    adc h
    ld b, b
    ld h, b
    ld e, l
    inc a
    rst $38
    ldh [$85], a
    ld b, b
    ld d, d
    ld d, d
    ld d, a
    ld d, a
    ret nz

    ld b, c
    and c

jr_071_7967:
    ld [c], a
    jr c, jr_071_78ea

    ld [bc], a
    ld b, c
    ld h, [hl]
    add b
    ld l, c
    sbc c
    ld b, $45
    rst $00
    nop
    ret nz

    pop hl
    and e

jr_071_7977:
    ld e, d
    ld c, b
    ld a, [bc]
    ld h, d
    ret nz

    push hl
    rst $30
    ld b, b
    ld c, b
    ld a, [hl+]
    ld h, b
    ld d, l
    rrca
    inc a
    dec [hl]
    jr c, @+$39

    jp nz, $c160

    ld h, e
    cp a
    inc l
    add b
    and b
    pop bc
    sbc c
    ld h, d
    and b
    and b
    and b
    ret nz

    ld b, b
    adc d
    add b
    ei
    ld c, h
    ld h, b
    ld e, l
    rla
    ld h, c
    ld d, d
    add hl, sp
    dec hl
    jr nz, jr_071_79ea

    add d
    and h
    nop
    ld b, [hl]
    add b
    ld h, a
    ld [hl], $40
    jr nz, jr_071_79b3

    inc bc
    ld d, $20
    ld b, l

jr_071_79b3:
    ld b, a
    cp a
    ld d, d
    ld a, [$8760]
    scf
    jr c, @+$3d

    ld a, a
    pop hl
    jr z, jr_071_79c2

    nop
    ld b, a

jr_071_79c2:
    add b
    add [hl]
    rrca
    ld [hl+], a
    ld h, d
    ld h, b
    dec c

jr_071_79c9:
    ld a, a
    jr nz, @-$78

    ld l, b
    ld [hl], l
    ld b, a
    ld d, [hl]
    jp nz, $b6e0

    add c
    ld h, b
    rst $38
    ret nz

    ld d, h
    and c
    ccf
    ld b, $80
    ld h, a
    add d
    inc bc
    sbc c
    sbc e
    ld a, c
    ld b, b
    inc b
    add [hl]
    ld h, l
    ld [hl], $48
    ld d, l
    and h

jr_071_79ea:
    pop bc
    ld [hl], l
    add c
    ccf
    ld bc, $4880
    scf
    ld [hl+], a

jr_071_79f3:
    ld [hl+], a
    ccf
    ld b, d
    ld b, $41
    ld hl, $8077
    sub b
    nop
    ld d, l
    ld b, d
    ldh a, [rNR50]
    pop bc
    add b
    ld a, a
    db $e4
    ld a, $03
    nop
    adc c
    rst $38
    jr nz, jr_071_79f3

    jr nz, @+$64

    ld h, c
    add e
    ld bc, $c53f
    ld b, l
    add d
    ld b, e
    ld d, a
    ld a, c
    ld b, c
    ld b, [hl]
    ret nz

    ld hl, sp-$20
    ld b, l
    ld b, l
    adc l
    ccf
    ld b, b
    db $e4
    dec [hl]
    ld a, [hl-]
    ld a, a
    jr nz, jr_071_7a28

jr_071_7a28:
    ld c, [hl]
    add hl, hl
    ld h, b
    inc c
    db $fc
    and h
    ld b, b
    ld [bc], a
    pop hl
    ld [hl], $3b
    dec [hl]
    jr c, jr_071_7a73

    scf
    rst $18
    ld e, e
    ld d, e
    ld d, e
    ld e, e
    ccf
    ldh a, [$60]
    scf
    ccf
    rst $38
    ld e, e
    ld e, e
    ld b, e
    inc bc

Jump_071_7a46:
    add hl, bc
    inc b
    rlca
    rlca

Jump_071_7a4a:
    dec bc
    inc b
    inc bc
    and $e0
    dec [hl]
    cp [hl]
    ret nz

    rst $38
    pop bc
    ccf
    rst $00
    rst $38
    ld h, l
    jp nz, $c1c2

    inc b
    add d
    ret nz

    sub b
    ld h, d
    inc bc
    ld h, b
    ret nc

    pop bc
    ld h, d
    ld h, e
    ld a, a
    ld h, l
    ld h, [hl]
    dec [hl]
    jr c, @+$46

    dec b
    db $10
    ld hl, $7f81
    sbc b
    db $10

jr_071_7a73:
    dec b
    ld b, e
    ccf
    ccf
    ld b, e
    cp $20
    inc [hl]
    add b
    add hl, bc
    rst $38
    dec b
    sbc b
    ld b, [hl]
    pop hl
    inc bc
    inc b
    ld a, l
    and d
    sbc c
    jp nz, Jump_071_4067

    dec [hl]
    dec [hl]
    ld [de], a
    add b
    cpl
    add b
    dec [hl]
    ld b, b
    ret nz

    pop hl
    inc e
    ld e, [hl]
    ld h, b
    sbc $c0
    rlca
    rlca
    rlca
    ld e, d
    pop hl
    ld c, d
    ld b, a
    ccf
    ret


    ld hl, sp+$7c
    add e
    sbc c
    jp $2038


    ld [hl], $35
    ld l, e
    ld l, h
    dec [hl]
    ld a, [$8010]
    ld a, [hl-]
    adc d
    ld hl, $980d
    sbc c
    sbc d
    sbc c
    ld [hl], b
    add [hl]
    ld b, e
    ld b, h
    ld h, h
    add b
    and l
    ld a, $09
    nop
    ld bc, $5906
    jp nz, $593c

    and c
    inc sp
    and b
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    ld [hl], c
    adc a
    add c
    ld h, [hl]
    ld [c], a
    rlca
    rlca
    sbc c
    rlca
    add [hl]
    ld b, h
    call z, $c126
    ld [c], a
    cp $a5
    ld a, h
    inc bc
    ldh [$de], a
    ld b, b
    call z, $1ac0
    jr nz, jr_071_7b1d

    and e
    or l
    db $e3
    nop
    ld bc, $820d
    adc b
    ld b, b
    dec bc
    add [hl]
    ld b, l
    dec c
    call nz, $834a
    ld a, [hl]
    dec h
    ei
    ld b, l
    rrca
    ld b, a
    inc b
    add hl, bc
    add hl, bc
    ld a, d
    and b
    ld sp, $cba1
    ldh [$37], a
    or l
    pop hl
    inc e
    and h
    ld h, b
    ld c, $60
    dec c
    rlca
    dec c
    ld b, h
    db $e4
    pop bc
    jp hl


    or l
    jp $f330


    add [hl]

jr_071_7b1d:
    cp b
    ld b, d
    db $fc
    db $e3
    db $db
    ld hl, $040d
    or l
    pop hl
    di
    db $e4
    nop
    ld c, c
    and h
    ld b, h
    push hl
    call z, $ae63
    db $eb
    cpl
    db $e3
    ldh [$82], a
    ld [hl], l
    pop hl
    inc c
    ret nz

    nop
    ld [$4fc0], sp
    add d
    ld c, $42
    push de
    db $ed
    ld c, e
    ld h, c
    ldh a, [$c4]
    ld a, [hl-]
    and d
    or b
    inc hl
    ld e, h
    cp h
    db $e3
    call c, Call_000_0820
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    ld d, c
    ld b, e
    add b
    jp c, $05e3

    jp hl


    ld c, [hl]

jr_071_7b5e:
    jp $e53e


    cp a
    db $e3
    ld h, l
    push hl
    ld b, c
    ld [c], a
    ld b, $3f
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    ld l, d
    ld de, $de25
    push hl
    jr nz, jr_071_7bcd

    push hl
    jr z, jr_071_7b5e

    ld sp, $bd83
    jp hl


    or c
    ld h, e
    ld b, $31
    ld b, b
    cpl
    ld b, b
    add b
    ld d, c
    and [hl]
    pop bc
    ld [$c3dd], a
    ld c, d
    ld b, b
    cp a
    jp hl


    ld [hl], l
    add $c1
    jp nz, Jump_000_1b08

    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld [$c68b], sp
    call c, $83e4
    rst $20
    nop
    cp a
    push hl
    db $e3
    jp $e6be


    dec [hl]
    push bc
    ret nz

    call nz, $a751
    pop bc
    jp hl


    jp nz, Jump_000_00e4

    cp a
    jp hl


    or c
    ld b, [hl]
    dec [hl]
    call z, $aa51
    add e
    db $eb
    ld a, l
    rst $20
    ld e, a
    ret


    dec [hl]
    add $00
    xor d
    push hl
    pop bc
    rst $30
    nop
    nop
    nop
    pop bc
    nop
    rst $38

jr_071_7bcd:
    rst $38
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
    add hl, de
    ld de, $0102
    dec h
    ld de, $0202
    ld a, [de]
    ld [de], a
    ld [bc], a
    inc bc
    inc h
    ld [de], a
    ld [bc], a
    inc b
    dec de
    inc de
    ld [bc], a
    dec b
    inc hl
    inc de
    ld [bc], a
    ld b, $1c
    inc d
    ld [bc], a
    rlca
    dec e
    inc d
    ld [bc], a
    ld [$141e], sp
    ld [bc], a
    add hl, bc
    rra
    inc d
    ld [bc], a
    ld a, [bc]
    jr nz, jr_071_7c25

    ld [bc], a
    dec bc
    ld hl, $0214
    inc c
    ld [hl+], a
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_071_7c25:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_071_7e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_071_7f08:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_071_7f30:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_071_7f82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
