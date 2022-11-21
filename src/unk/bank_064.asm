INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $064", ROMX[$4000], BANK[$64]

    db $10
    ld b, b
    xor d
    ld c, d
    inc a
    ld d, h
    or c
    ld e, e
    and h
    ld h, l
    cpl
    ld l, a
    sbc d
    ld [hl], l
    ld l, d
    ld a, c
    jr @+$42

    add sp, $43
    ld b, b
    ld c, c
    ld e, e
    ld c, c
    cpl
    dec c
    ld c, $0e
    ld c, $fc
    pop hl
    ld c, l
    rst $30
    ldh [$fc], a
    pop af
    ld [$e5e0], sp
    ld hl, sp-$0b
    db $fd
    db $ed
    dec c
    call z, $fce1
    db $e4
    rst $38
    rst $38
    cp a
    push hl
    ld a, h
    add d
    rst $20
    rst $38
    ldh [rKEY1], a
    ld c, l
    ld c, l
    dec l

Jump_064_403d:
    dec l
    ld sp, hl
    ldh [$f8], a
    ld l, [hl]
    db $e4
    rst $38
    rst $38
    add d
    jp hl


    dec c
    ld l, l
    dec c
    ld l, e
    ld l, e
    rst $08
    dec c
    ld l, e
    ld c, l
    dec l
    add $ff
    ld b, d
    db $e4
    dec l
    dec l
    ld l, d
    add d
    jp hl


    ld l, l
    ld a, [hl]
    ldh [rOCPD], a
    db $fd
    ldh [rKEY1], a
    dec l

Jump_064_4062:
    ld l, [hl]
    and $c2
    cp $dc
    dec l
    sub $e0
    add d
    rst $20
    add h
    ldh [$bf], a
    pop hl
    ld l, e
    dec c
    add hl, bc
    ld l, l
    add [hl]
    rst $38
    inc b

jr_064_4077:
    ldh a, [rOCPD]
    ld b, e
    pop hl
    ld a, [$3ee2]
    ld [c], a
    nop
    rst $38
    nop
    inc b
    ld [$e103], a
    cp h
    db $e4
    cp a
    pop hl
    call z, Call_000_04ff
    ret nz

    jr jr_064_4077

    inc bc
    ld [c], a
    ld a, $c4
    ret nz

    dec hl
    ld a, [bc]
    dec bc
    dec c
    dec bc
    db $fc
    ret nz

    ld a, [hl]
    db $e4
    xor b
    ld [hl], h

Jump_064_40a0:
    ret nz

    nop
    rst $18
    add [hl]
    pop bc
    ld c, l

jr_064_40a6:
    inc bc
    pop hl
    ld l, e
    pop bc
    ldh [$0a], a
    rla
    ld a, [bc]
    dec bc
    dec hl
    cp a
    ldh [rOCPD], a
    dec sp
    ret nz

    ldh [$ca], a
    nop
    ld sp, hl
    db $fc
    add $c0
    ld c, c
    db $e3
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    dec bc
    dec bc
    ccf
    ld c, e
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld l, l
    db $fc
    and d
    ret nz

    db $fd
    ret c

    adc d
    and e
    add h
    ld [c], a
    ld b, l
    pop bc
    dec hl
    dec bc
    add e
    ldh [$0b], a
    ld c, e
    ld h, e
    ld a, [bc]
    ld a, [bc]
    push af
    and c
    jr nz, jr_064_40a6

    ld a, [hl]
    rst $18
    dec c
    ld c, l
    ld c, d
    call nz, Call_064_6bdd
    pop bc
    ldh [$0b], a
    ld l, e
    dec bc
    ld a, e
    ldh [$0b], a
    dec c
    add c
    ld l, l
    nop
    rst $18
    cp $85
    dec c
    jp nz, $e302

    ret nz

Call_064_40ff:
    pop hl
    add d
    ldh [$0a], a
    or e
    dec c
    ld l, e
    cp $bf
    inc b
    and a
    ld c, l
    dec l
    ld a, [bc]
    jp $8a2b


    ld b, h
    pop hl
    ld c, e
    db $fc
    ret nz

    ld c, e
    ld [hl], $a0
    nop
    rst $18
    cp [hl]
    adc b
    dec l
    nop
    ret nz

    db $e3
    ld b, c
    ldh [$c5], a
    ret nz

    dec a
    and c
    ld [bc], a
    db $e3
    ld [bc], a
    cp a
    ld a, [hl]
    ld [$e5c0], a
    ld [$82f8], sp
    nop
    sbc a
    cp d
    call z, $416b
    pop hl

Jump_064_4138:
    ld a, a
    ld [c], a
    ld b, b
    add b
    cp $7f
    inc d
    ld a, [hl]
    db $ec
    inc bc
    and c
    ld l, e
    add c
    ret nz

    dec c
    jp nz, Jump_064_40a0

    add b
    nop
    sbc a
    nop
    ld a, $e7
    add [hl]
    ld h, d
    add hl, bc
    and d
    ret nz

    pop hl
    cp a
    db $e4
    call nz, Call_064_4eff
    ld h, e
    ld a, [hl]
    ld h, h
    ld l, $7d
    pop bc
    dec c
    ld l, e
    ld c, e
    add [hl]
    and b
    dec c
    db $fc
    and c
    ld a, [hl]
    and $01
    dec l
    rst $38
    ldh [$fe], a
    rst $18
    cp d
    ld b, b
    inc a
    jp nz, $e0be

    db $fd
    add $60
    db $eb
    nop
    db $fc
    sbc a
    ei
    and b

Call_064_4180:
    ld a, [hl]
    and h
    ld a, [$42c1]
    and c
    db $fc
    rst $18
    add h
    ld c, d
    ld a, [hl-]
    and b
    nop
    ld b, h
    ld h, b
    ld a, l

Jump_064_4190:
    jp Jump_064_6037


    adc $ff
    ld a, $67
    add d
    ld b, [hl]
    cp l
    and h
    ret nz

    pop hl
    nop
    db $fc
    ccf
    add b
    db $ed
    add c
    ld h, e
    ld a, h
    and d
    ld a, [hl]
    ld e, a
    ld a, d
    xor [hl]
    ld a, d
    add b
    add l
    ld b, b
    ld b, c
    dec c
    ret nz

    db $e3
    ld a, [hl]
    ld c, b
    ret nz

    rst $38
    add h
    inc h
    add d
    ld b, e

Jump_064_41ba:
    dec c
    ld a, [hl]
    jp Jump_064_7e40


    ld b, c
    db $fc
    rst $18
    nop
    rst $00
    cp [hl]
    and l
    cp $c1
    cp $a0
    dec hl
    ld a, [hl]
    ld b, c
    ret nz

    ld a, d
    dec h
    db $fc
    cp c
    inc b
    jr z, jr_064_4219

    ld b, e
    ld a, a
    ld hl, $60ba
    dec hl
    dec hl
    ld b, b
    add hl, sp
    ld hl, $bffc
    ld a, d
    add a
    inc a
    add c
    or [hl]
    ld h, e
    cp d
    add e
    dec bc
    inc a
    ld b, d
    ld d, b
    ld h, [hl]
    ld [bc], a
    ret nz

    rst $38
    ld a, [hl]
    and h
    add b
    inc hl
    ld c, e
    inc a
    and d
    dec bc

Jump_064_41f9:
    ld a, h
    ld a, a
    call nz, $8620
    ld a, [hl]
    and h
    dec c
    ld a, l
    and c
    ld sp, hl
    add c
    or [hl]
    ld h, d
    dec hl
    dec bc
    nop
    db $fc
    ld b, h
    ld hl, sp+$23
    db $f4
    ld sp, $0d80
    cp d
    add d
    cp e
    and b
    rst $38
    ldh [$37], a

jr_064_4219:
    add c
    nop
    ld a, [$d8a8]
    ld bc, $39f4
    ld a, [hl]
    and h
    ei
    jp Jump_064_42f7


    ld a, b
    add c
    db $fc
    inc hl
    nop
    db $fc
    jp hl


    ld a, [$b91e]
    ld h, c
    cp l
    add $f8
    ld a, a
    ld [hl], $a7
    ld a, d
    add h
    add b
    ld [bc], a
    nop
    ld a, [hl]
    call nz, $e13e
    ld [$5ae0], sp
    add hl, bc
    db $f4
    xor l
    db $76
    ld l, $b6
    ld [hl+], a
    jr c, @+$64

    add b
    cp a
    ld [c], a
    db $fc
    ret


    db $f4
    cp c
    nop
    push hl
    ld b, e
    ld [bc], a
    ld bc, $76e5
    and d
    ld c, l
    nop
    ld a, [hl]
    db $ec
    ld [bc], a
    ld a, [$81bc]
    jr c, jr_064_42ab

    ld a, e
    db $e4
    ld a, [hl]
    db $ed
    nop
    pop de
    ld a, [hl]
    add h
    nop
    rlc c
    jr c, jr_064_4295

    ld a, [hl-]
    ld h, d
    cp d
    and $7e
    db $ed
    db $f4
    and a
    ld a, [hl]
    xor h
    ld a, l

Jump_064_427e:
    add c
    nop
    ld a, a
    jp Jump_064_41f9


    pop af
    dec h
    ld a, [c]
    ld h, b
    ld [hl], $a1
    ld [hl], d
    add a
    db $f4
    xor a
    sbc d
    call nz, $fe10
    ld h, b
    rst $30
    inc bc

jr_064_4295:
    ld a, [hl]
    db $e4
    ld a, c
    push bc
    ld l, e
    ld [hl], d
    adc c
    ld hl, sp-$2f
    cp $85
    ld [$c402], sp
    dec a
    ld [c], a
    cp [hl]
    jp hl


    dec c
    cpl
    ld b, b
    ld l, e

jr_064_42ab:
    ld hl, $db00
    ld a, $62
    inc c
    scf
    inc bc
    ld a, l
    db $eb
    dec hl
    dec bc
    ld h, d
    nop
    or h
    and c
    ld d, d
    inc bc
    db $ec
    add a
    nop
    ld a, [hl]
    ld c, a
    ld a, l
    ld h, d
    ld a, l
    ld [c], a

jr_064_42c6:
    db $f4
    ld h, $bf
    db $e3
    ld a, l
    pop hl
    ld [$c002], a
    pop hl
    ldh [$e8], a
    ld l, a
    sub d
    ld [bc], a
    cp a
    ld h, e
    cp e
    ld b, c
    ld [hl], e
    ld h, e
    ld c, e
    ld c, e
    ld c, e
    inc b
    jr c, jr_064_42c6

    ld h, d
    ld hl, $ff4d
    ldh [$f8], a
    call Call_000_2bfe
    cp l
    jr nz, jr_064_42ab

jr_064_42ed:
    add $02
    ld a, b
    jp $f64b


    push bc
    db $ed
    db $e4
    cp l

Jump_064_42f7:
    pop hl
    ld h, h
    ld b, a
    nop
    call $227c
    nop
    cp e
    add b

jr_064_4301:
    ld [hl], l
    ld [hl+], a
    cp e
    and $2b
    ld hl, $806e
    xor l
    db $e4
    or h
    pop bc
    ld [hl], d
    sub e
    nop
    rst $08
    ld b, d
    cp $81
    or d

jr_064_4315:
    inc b

jr_064_4316:
    or a
    push bc
    pop af
    and [hl]
    jr z, jr_064_4301

    ld [c], a
    jr nc, jr_064_439d

    dec h
    nop
    db $fc
    db $e4
    or d
    ld [bc], a
    cp c
    call nz, $e338
    cp d
    push bc
    ld a, [hl-]
    db $e3
    ld a, [hl]
    or $fc
    push hl
    nop
    ld [hl-], a
    ld hl, $022d
    ld a, l
    ld [$e53c], a
    ld a, [hl]
    rst $20
    nop
    adc l
    db $76
    jp hl


    ld l, [hl]
    ld b, c
    inc l
    ld a, l
    add sp, $6a
    jr nz, @+$4d

    ld l, e
    dec h
    ld h, d
    dec hl
    ld a, [hl]
    push hl
    db $76
    ld a, c
    ret nz

    jr nc, jr_064_4315

    ld l, a
    ld b, e
    dec l
    and h
    pop bc
    ldh [$c0], a
    ldh [$a7], a
    add c
    dec hl
    dec hl
    nop
    ld h, h
    ld c, l
    ld a, d
    rlca
    jr jr_064_42ed

jr_064_4366:
    ld a, [$6bc4]
    and a
    daa
    ld h, b
    xor h
    add d
    ld a, [hl]
    pop hl
    ld b, b
    inc h
    ld b, b
    ldh a, [rOBP1]
    sbc h
    inc sp
    ld a, [$f3c6]
    jp nz, $e4c1

    dec l
    cpl
    and d
    nop
    db $e4
    ld [hl+], a
    inc h
    add hl, bc
    ld e, [hl]
    ld b, l
    db $76
    db $eb
    ld l, l
    ld b, h
    ld [hl], a
    ld b, b
    di
    pop bc
    jp hl


    ld [hl+], a
    add d
    jr z, jr_064_4316

    ld l, e
    db $e4
    ld [hl+], a
    rst $38
    rst $38
    db $ec
    xor d
    add d
    ld [c], a

jr_064_439d:
    db $e3
    ld hl, $036b
    ld c, e
    dec hl
    inc l
    jr nc, jr_064_4424

    jp hl


    ldh a, [$c7]
    db $ec
    and [hl]
    inc h
    jr nz, jr_064_4366

    and e
    ld [bc], a
    pop bc
    pop hl
    dec c
    nop
    db $ec
    ret nz

    pop af
    db $ec
    xor h
    sbc a
    ld bc, $a236
    pop bc
    ld [c], a
    stop
    call z, Call_000_1324
    add [hl]
    ld c, e
    sbc a
    ld bc, $034b
    ret nz

    pop bc
    ld [c], a
    ld [hl], d
    ld h, d
    nop
    rst $38
    rst $38
    ldh [rOCPD], a
    db $e3
    ld bc, $4399
    ld l, b
    dec a
    db $ec
    or e
    db $f4
    rst $00
    ldh a, [$1f]
    nop
    ld l, d
    or a
    ld [hl], h
    ld b, a
    nop
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    ld [c], a
    and b
    ret c

    reti


    adc a
    and b
    and b
    jp nc, $fcd3

    xor $e0
    push hl
    ld hl, sp-$0c
    rst $18
    rst $30
    ldh [$e1], a
    ld [c], a
    db $fc
    pop hl
    sub $d7
    jp c, $bfdb

    ret nc

    pop de
    call nc, $a0d5
    and b
    db $fc
    rst $20
    sub $e7
    rst $10
    call nc, $e0d5
    push hl
    ld hl, sp-$0b
    db $e3
    db $e4
    push hl
    rst $30
    and $e3
    db $e4
    add d
    rst $20
    and b

jr_064_4424:
    sbc a
    and d
    sbc l
    rrca
    sbc l
    sbc l
    and d
    sbc a
    or $e0
    ld l, [hl]
    ld [c], a
    ldh [$e3], a
    db $fc
    rst $30
    cp a
    rst $20
    add sp, -$17
    ld [$e8e7], a
    add d
    rst $20
    sbc a
    rst $38
    sbc h
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    sbc h
    sbc a
    ld a, a
    and b
    ret nc

    pop de
    jp c, $d6db

    rst $10
    ldh [$e3], a
    ld hl, sp-$04
    rst $30
    ld b, $e1
    add d
    jp hl


    sbc h
    xor [hl]
    xor a
    xor [hl]
    ld b, [hl]
    add $fd
    ldh [$9c], a
    sbc a
    db $f4
    pop bc
    db $ec
    pop bc
    cp $db
    pop hl
    ld [c], a
    db $db
    and b
    and b
    add d
    jp hl


    ld b, [hl]
    xor a
    jp nz, $afe1

    ld b, [hl]
    rst $08
    xor [hl]
    sbc [hl]
    call nc, Call_064_7ed5
    db $e3
    cp $db
    push hl
    and $ae

Jump_064_4481:
    inc b
    add sp, -$60
    and c
    ld b, [hl]
    ld b, e
    pop hl
    xor a
    ld a, [$afe0]
    sbc b
    ld a, $e0
    ld a, [hl]
    db $e3
    cp $db
    jp hl


    ld [$c786], a
    inc bc
    ld [c], a
    xor [hl]
    inc c
    jp nz, $fce1

    pop bc
    sbc h
    sbc a
    ld a, [hl]
    db $e3
    cp $db
    add d
    jp hl


    inc bc
    pop hl
    ld a, $40
    ldh [rLYC], a
    ld d, b
    ld b, l
    xor a
    ld b, l
    db $fc
    ret nz

    ld a, [hl]
    db $e4
    ldh a, [$fe]
    db $db
    ld [$48c6], sp
    ret nz

    inc bc
    pop hl
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, a
    rst $28
    ld e, l
    ld e, h
    ld a, [hl+]
    ld a, [hl+]
    cp a
    ldh [rDMA], a

jr_064_44ca:
    and c
    and b
    dec c
    and b
    db $fc
    and b
    and b
    and b
    db $fc
    cp c
    adc d
    and l
    add $c0
    ld c, c
    db $e3
    rst $38
    ld b, [hl]
    ld d, c
    ld d, h
    ld d, e
    ld a, [hl+]
    jr nz, jr_064_4510

    ld b, h
    cpl
    ld b, l
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    db $fc
    cp a
    and $1c
    pop bc
    add d
    pop hl
    ld sp, hl
    sbc h
    inc c
    pop hl
    ld b, l
    pop bc
    ld b, l
    scf
    jr c, jr_064_451d

    jr nz, jr_064_44ca

    jr nz, jr_064_452a

    ld c, c
    ld e, h
    ld b, b
    pop hl
    db $fc
    and c
    and b
    and b
    db $e4
    nop
    db $db
    inc e
    jp nz, $c89e

    pop bc
    ld c, b
    pop bc
    ld b, l

jr_064_4510:
    ld [hl], $35
    rst $38
    dec [hl]
    inc h
    jr nz, jr_064_4541

    ld b, a
    ld d, h
    ld b, h
    xor a
    add b
    add c

jr_064_451d:
    ldh [$6e], a
    and d
    nop
    call c, $a108
    ld b, a
    ret nz

    ld c, e
    ret nz

    ld c, b
    pop bc

jr_064_452a:
    add hl, sp
    rst $38
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $41
    ld c, c
    ld h, b
    ld e, h
    add a
    xor [hl]
    ld b, [hl]
    sbc [hl]
    ldh a, [$81]
    nop
    rst $18
    adc d
    add d
    ld b, b
    db $e3
    ld b, [hl]

jr_064_4541:
    rst $38
    xor [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    ld b, l
    add a
    ld d, e
    ld d, e
    ld b, l
    rst $38
    and b
    nop
    rst $18
    nop
    jp $a196


    sbc a
    call $ca9c
    and d
    ld b, h
    inc a
    ret nz

    pop hl
    rst $38

Jump_064_4560:
    add c
    sbc l
    sbc a
    ld h, b
    ld a, [hl]
    add d
    nop
    rst $18
    ld [$be84], sp
    jp $e141


    dec [hl]
    add hl, sp
    add d
    and d
    db $10
    ld a, [hl]
    add h
    nop
    sbc h
    ld [$7e81], sp
    db $e3
    sbc [hl]
    add [hl]
    and b
    ld b, c
    pop hl

Jump_064_4580:
    ld a, a
    ld [c], a
    ld b, d
    dec b
    ret nz

    and b
    ld a, [hl]
    add d
    nop
    sbc l
    adc d
    ld h, c
    add [hl]
    ld h, e
    sbc [hl]
    add hl, bc
    and b
    ld e, $c0
    ld [c], a
    xor h
    dec [hl]
    ld [hl], $45
    add b
    ld [c], a
    ld [hl], d
    ld h, c
    nop
    sbc l
    jr z, jr_064_45c0

    pop bc
    db $fc
    and e
    call nz, $ae80
    add c
    jp nz, $bfad

    push hl
    ld a, [hl]
    ld h, c
    stop

Jump_064_45af:
    sbc a
    cp $41
    inc b
    ld h, c
    ld b, h
    add c
    xor [hl]
    jp nz, $bfa0

    ldh [$fd], a
    pop bc
    ld b, b
    cp $c2

Jump_064_45c0:
jr_064_45c0:
    nop
    add d
    cp $9a
    ld [bc], a
    ld h, e
    db $fc
    and d
    inc bc
    add d
    xor [hl]
    cp a
    and b
    rlca
    ld h, d
    ld h, e
    ld h, [hl]
    db $fd
    jp nz, Jump_064_637e

    ldh [$61], a
    nop
    sbc c
    cp $41
    cp $fc
    add a
    xor a
    ld b, [hl]
    ld b, b
    ld h, d
    ld h, a
    dec [hl]
    ld l, b
    add e
    ld h, [hl]
    ld b, d
    nop
    add [hl]
    db $fc
    cp e
    ld [hl+], a
    ld h, e
    db $fc
    and e
    ld a, [hl-]
    and c
    ld b, [hl]
    scf
    ld a, c
    ld a, d
    ld a, b
    ld a, l
    and b
    ld l, d
    ld b, d
    jp Jump_000_0080


    jp $fc7c


    cp e
    inc b
    ld c, d
    and c
    xor [hl]
    xor a
    ld a, c
    ld a, [hl]
    cp l
    and c
    ret nc

    ret nz

    db $e3
    add d
    push hl
    nop
    ld e, l
    db $fc
    and l
    and b
    dec a
    ret nz

    add d
    add e
    ld [bc], a
    db $fc
    and d
    ld l, d
    ld b, b
    pop hl
    ld a, [hl]
    ld b, c
    db $fc
    cp l
    nop
    ld b, c
    db $fc
    and l
    ld a, d
    add b
    cpl
    ld b, [hl]
    add l
    add [hl]
    add e
    cp l
    add c
    ld l, d
    ld a, a
    pop bc
    ld [hl], d
    dec h
    ret nz

    nop
    ld e, l
    inc e
    db $e3
    db $fc
    add c
    ld b, $40
    cp a
    ldh [$3d], a
    add b
    ld l, d
    ld a, [hl-]
    pop bc
    ld b, l

Jump_064_4646:
    ld a, [hl]
    ld b, c
    db $fc
    cp a
    nop
    rst $00
    ld a, [hl]
    and b
    dec a
    add d
    add l
    adc e
    ccf
    ld b, h
    inc a

jr_064_4655:
    xor h
    ld [hl], l
    ld h, [hl]
    ld [hl], $fc
    adc b
    db $fc
    cp b
    ld hl, sp+$00
    push bc
    ld a, [hl]
    and e
    add c
    ld b, b
    ld b, [hl]
    ld b, [hl]
    add b
    ld b, l
    ld a, [hl-]
    dec e

jr_064_466a:
    xor l
    ld a, $c0
    jr c, jr_064_46a6

jr_064_466f:
    sbc h
    add hl, sp
    jr nz, jr_064_466f

    cp l
    nop
    push bc
    db $f4
    ld a, [hl]
    and e
    jp $8022


    cp e
    ld h, d
    ld l, b
    ld h, [hl]
    dec [hl]
    add hl, sp
    add b
    inc a
    ld b, b
    db $fc
    cp l
    ld [hl+], a
    inc hl
    db $fc
    add c
    ld a, [hl]
    and e
    add b
    jr nz, @+$7f

    ret nz

    ld [hl], $3e
    cp e
    add b
    ld l, d
    dec [hl]
    ld a, [hl-]
    xor a
    ld b, [hl]
    ld a, d
    ld h, $f8
    ld [hl], l
    ldh a, [rNR41]
    add [hl]
    ld a, d
    ld b, e
    inc a
    ld b, b
    ld a, l

jr_064_46a6:
    pop bc
    ld b, l
    ld [hl], $ad
    ld l, h
    dec b
    ld l, l
    scf
    ld h, b

Call_064_46af:
    ld b, l
    db $fc
    ld b, h
    ld hl, sp-$7a
    ld a, [c]
    ld c, $20
    add l
    ld a, [hl]
    and h
    inc a
    ld [hl], a
    ld b, d
    inc a
    ret nz

    ld b, b
    ld l, h

Jump_064_46c1:
    ld l, a
    ld l, [hl]
    scf
    add c
    ld a, b
    nop
    ldh [$f8], a
    dec b
    ret c

    ld bc, $2ff4
    jr nz, jr_064_4655

    ld a, [hl]
    ld [$46af], sp
    add l
    rrca
    add a
    adc b
    ld [hl], b
    ld l, [hl]
    ld a, b
    add e
    db $fc
    ld hl, $87f8
    ldh a, [$6f]
    nop
    jr nz, jr_064_466a

    ld a, d
    ld h, l
    cp h
    inc bc
    ld [hl], a
    ld h, c
    ld a, d
    add b
    or h
    ld b, b
    ld hl, sp+$63
    db $fc
    push bc

jr_064_46f3:
    ld [hl], b
    ldh a, [$6f]
    ld [hl+], a
    ld h, a
    ld a, d
    dec b
    cp e
    add c
    ld b, [hl]
    ld b, [hl]
    ld a, $7a
    add d
    add b
    inc [hl]
    ld b, b
    dec sp
    pop bc
    ld a, [hl]
    ld [$0bee], a
    ld [hl+], a
    ld h, a
    ld hl, sp+$05
    cp e
    ld bc, $07ae
    ld b, [hl]
    ld a, $69
    jr c, @+$62

    cp a
    pop hl
    ld sp, hl
    and b
    db $fc
    push bc
    ldh a, [$71]
    ld [hl], h
    ld [hl+], a
    ld h, a
    sub d
    inc h
    sbc [hl]
    or [hl]
    ld [hl+], a
    ld b, l
    ld a, [hl-]
    ld l, c
    ld a, c
    ld h, c
    ld bc, $f36a
    ld b, b
    cp e
    jp nz, Jump_000_2276

    ldh a, [$71]
    inc h
    ld b, a
    ld hl, sp+$02
    cp h
    add d
    ld e, $b9
    nop
    ld b, h
    inc a
    ld l, e
    ld l, h
    ld sp, hl
    ld h, c
    inc [hl]
    ld h, c
    ld a, d
    add $e0
    db $f4
    or c
    nop
    rst $00
    jr jr_064_46f3

    ld b, c
    ldh [$3a], a
    ld bc, $3645
    ld l, [hl]
    rlca
    ld l, a
    ld l, h
    dec [hl]
    db $fc
    and c
    rst $28
    ld [hl+], a
    ld a, [hl]
    db $ed
    ld [$2047], a
    ld b, l
    ld a, b
    ld a, [hl]
    and a
    ld a, e
    nop
    ld a, a
    pop bc
    ld [hl], $6e
    ld [hl], b
    ld [hl], c
    dec sp
    pop bc
    nop
    rst $28
    inc hl
    ld [hl], c
    jr nz, jr_064_47ea

    add e
    db $f4
    xor l
    ld [bc], a
    rst $20
    sub d
    ld [bc], a
    cp $60
    cp c
    ld [bc], a
    add hl, de
    xor [hl]
    ld [hl], a
    ld [bc], a
    cp $e6
    add hl, sp
    ld b, [hl]
    ld [hl-], a
    ld bc, $e4dc
    db $f4
    xor d
    add b
    jr nz, jr_064_47d9

    and d
    and c
    ld a, [hl]
    ld h, c
    add e
    ld [c], a
    ld [hl], l
    ld [bc], a
    dec [hl]
    ld b, d
    cp h
    db $e4
    ld a, [hl-]
    rlca
    ld b, l
    xor a
    ld b, [hl]
    scf
    jp nz, $ca76

    nop
    rst $08
    ld a, $61
    ld a, $80
    inc c
    ld a, $e2
    ld a, l
    ld [$4536], a
    ld h, d
    nop
    db $eb
    inc bc
    ld hl, sp-$35
    nop
    rlc b
    ld a, [hl]
    ld b, c

jr_064_47c1:
    db $fc
    jr nz, jr_064_47c1

    jp nz, Jump_000_23f4

    cp a
    add sp, $6b
    nop
    ld a, [hl]
    db $e3
    ld hl, sp-$37
    jp nz, $cc00

    and c
    ld [bc], a
    jp nz, Jump_000_00b6

    or a
    ld h, c

jr_064_47d9:
    or b
    nop
    scf
    jr c, jr_064_4825

    dec sp
    jr c, jr_064_481e

    jr c, @-$1c

    ld l, e
    nop
    ld a, [hl+]
    ld bc, $289d
    nop

jr_064_47ea:
    ret nz

    ld hl, sp-$37
    nop
    call z, Call_000_21bd
    cp [hl]
    jp $c1ba


    rst $30
    add c
    ld b, e
    ld b, l
    nop
    or $c3
    ld l, [hl]
    jr nz, @-$11

    db $e3
    cp h
    ldh [rBCPS], a
    ld h, b
    ld l, d
    add [hl]
    nop
    adc $de
    ld [c], a
    add b
    ld hl, sp+$61
    rst $30
    push bc
    ld [hl-], a
    jp nz, $a137

jr_064_4813:
    db $fc
    pop bc
    and $c3
    ld l, [hl]
    and l
    ret c

    ld bc, $00d9
    add a

jr_064_481e:
    db $fc
    ld [bc], a
    cp l
    ld h, c
    ld e, [hl]
    ld [c], a
    rst $30

jr_064_4825:
    and e
    ld a, e
    ld [c], a
    or d
    pop bc

jr_064_482a:
    nop
    ld [hl-], a
    jp nz, $e2be

    jr z, jr_064_4813

    and d
    ld bc, $6366
    nop
    adc [hl]
    sub a
    ld h, l
    or d
    ld [bc], a
    nop
    ld a, c
    jp nz, $e236

    ld [hl-], a
    jp $c0ba


    jr z, jr_064_482a

    db $ec
    add l
    nop
    adc a
    db $fc
    push hl
    nop
    ld [hl], a
    ldh [$32], a
    ld h, b
    or l
    pop bc
    ld a, l
    add sp, $38
    jp nz, $e5bf

    ldh [rSB], a
    nop
    adc a
    ret nz

    adc d
    dec h
    ld a, [c]

jr_064_4861:
    add e
    ld [hl], e
    and e
    ld a, l
    db $e3
    xor b
    jr nz, jr_064_4861

    and d
    ld b, l
    ld b, c
    ld b, $f2
    and l
    ret c

    reti


    nop
    adc c
    ld a, d
    ld bc, $e5fc
    db $76
    db $e4
    ld [hl], e
    ld h, b
    ld [hl], h
    or b
    add b
    or b
    and l
    scf
    cp l
    jp nz, Jump_000_3645

    and [hl]
    or c
    and d
    ld bc, $669e
    ld b, c
    nop
    ret


    sbc [hl]
    ld h, l
    db $76
    add sp, -$06
    jp $a26b


    cpl
    call nz, Call_064_652e
    add b
    ld h, d
    and a
    ld h, [hl]
    ld [hl], b
    and c
    sbc [hl]
    ret nc

    ld b, c
    ld h, $27
    jr nz, jr_064_4925

    add c
    db $76
    inc bc
    db $76
    rst $20
    db $ec
    nop
    ld a, [$9cc5]
    di
    pop bc
    pop bc
    db $e3
    rlca
    ld h, a
    and e
    ld l, b
    cp a
    pop hl
    ldh [rP1], a
    nop
    ret z

    db $fc
    ld h, [hl]
    ld a, d
    db $ed
    ldh a, [rBCPS]
    inc hl
    ld sp, $f300
    jp nz, $e1c1

    dec [hl]
    dec [hl]
    ld l, h
    or a
    rlca
    cp b
    ld b, d
    ld b, [hl]
    ld h, l
    ld b, b
    nop
    rst $00
    db $fc
    and l
    db $fc
    db $eb
    db $ec
    inc hl
    ld a, [hl]
    db $ec
    xor b
    ld b, l
    ld [hl], $b9
    cp d
    and e
    dec [hl]
    db $e3
    jr nz, jr_064_48ec

    ldh a, [$80]

jr_064_48ec:
    and c
    nop
    ret


    db $fc
    and l
    ld a, [hl]
    di
    adc a
    ld h, h
    sbc a
    nop
    ld l, b
    ld h, c
    jr @-$3d

    db $e3
    db $e4
    inc bc
    jr z, jr_064_4909

    jp c, Jump_064_7adb

    ld h, c
    db $fc
    jp hl


    db $ec
    xor h
    add b

jr_064_4909:
    sbc a
    nop
    daa
    ld h, c
    pop bc
    db $e4
    nop
    call z, $f1fc
    db $ec
    xor l
    ld a, $e2
    ld l, [hl]
    nop
    pop bc
    db $e4
    ld d, e
    ld b, b
    nop
    ret


    ld hl, sp-$0f
    db $ec
    xor [hl]
    ld l, e
    and c

jr_064_4925:
    db $fd
    ld [c], a
    ld a, [hl-]
    add c
    nop
    nop
    set 7, b
    pop af
    db $f4
    ret c

    db $fc
    ld h, h
    inc l
    ld de, $29ec
    ld [hl], d
    rst $08
    call c, Call_000_0087
    nop
    pop bc
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
    ld [de], a
    inc b
    ld [bc], a
    ld bc, $0415
    ld [bc], a
    ld [bc], a
    ld de, $0205
    inc bc
    inc de
    dec b
    ld [bc], a
    inc b
    ld d, $05
    ld [bc], a
    dec b
    inc d
    ld b, $02
    ld b, $18
    ld b, $02
    rlca
    ld [de], a
    rlca
    ld [bc], a
    ld [$080f], sp
    ld [bc], a
    add hl, bc
    ld de, $0208
    ld a, [bc]
    ld d, $08
    ld [bc], a
    dec bc
    add hl, de
    ld [$0c02], sp
    ld c, $09
    ld [bc], a
    dec c
    ld a, [de]
    add hl, bc
    ld [bc], a
    ld c, $0d
    dec bc
    ld [bc], a
    rrca
    db $10
    dec bc
    ld [bc], a
    db $10
    ld a, [bc]
    inc c
    ld [bc], a
    ld de, $0c0e
    ld [bc], a
    ld [de], a
    ld a, [de]
    inc c
    ld [bc], a
    inc de
    add hl, bc
    dec c
    ld [bc], a
    inc d
    inc c
    dec c
    ld [bc], a
    dec d
    add hl, de
    ld c, $02
    ld d, $0a
    rrca
    ld [bc], a
    rla
    ld c, $0f
    ld [bc], a
    jr jr_064_49d4

    db $10
    ld [bc], a
    add hl, de
    inc c
    ld de, $1a02
    dec bc
    ld [de], a
    ld [bc], a
    dec de
    inc de
    inc de
    ld [bc], a
    inc e
    dec c
    inc d
    ld [bc], a
    dec e
    inc d
    inc d
    ld [bc], a

jr_064_49d4:
    ld e, $0e
    dec d
    ld [bc], a
    rra
    db $10
    ld d, $02
    jr nz, jr_064_49ed

    jr @+$04

    ld hl, $190e
    ld [bc], a
    ld [hl+], a
    rrca
    inc e
    ld [bc], a
    inc hl
    ld a, [de]
    inc e
    ld [bc], a
    inc h

jr_064_49ed:
    ld d, $1d
    ld [bc], a
    dec h
    ld c, $1e
    ld [bc], a
    ld h, $10
    ld e, $02
    daa
    ld de, $021f
    jr z, @+$1f

    rra
    ld [bc], a
    add hl, hl
    jr jr_064_4a23

    ld [bc], a
    ld a, [hl+]
    inc de
    ld [hl+], a
    ld [bc], a
    dec hl
    inc e
    ld [hl+], a
    ld [bc], a
    inc l
    inc d
    dec h
    ld [bc], a
    dec l
    inc de
    ld h, $02
    ld l, $16
    ld h, $02
    cpl
    dec de
    ld h, $02
    jr nc, jr_064_4a3e

    daa
    ld [bc], a
    ld sp, $2814

jr_064_4a23:
    ld [bc], a
    ld [hl-], a
    ld [de], a
    add hl, hl
    ld [bc], a
    inc sp
    inc de
    ld a, [hl+]
    ld [bc], a
    inc [hl]
    rla
    dec hl
    ld [bc], a
    dec [hl]
    jr z, jr_064_4a5e

    ld [bc], a
    ld [hl], $10
    inc l
    ld [bc], a
    scf
    ld [de], a
    dec l
    ld [bc], a
    jr c, @+$17

jr_064_4a3e:
    dec l
    ld [bc], a
    add hl, sp
    ld a, [de]
    dec l
    ld [bc], a
    ld a, [hl-]
    ld de, $022e
    dec sp
    inc d
    ld l, $02
    inc a
    ld d, $2e
    ld [bc], a
    dec a
    inc e
    ld l, $02
    ld a, $2b
    ld l, $02
    ccf
    dec d
    cpl
    ld [bc], a
    ld b, b
    add hl, de

jr_064_4a5e:
    cpl
    ld [bc], a
    ld b, c
    inc l
    cpl
    ld [bc], a
    ld b, d
    dec de
    ld sp, $4302
    ld e, $31
    ld [bc], a
    ld b, h
    inc [hl]
    ld sp, $4502
    inc e
    ld [hl-], a
    ld [bc], a
    ld b, [hl]
    inc hl
    ld [hl-], a
    ld [bc], a
    ld b, a
    ld sp, $0232
    ld c, b
    ld hl, $0233
    ld c, c
    jr nz, @+$36

    ld [bc], a
    ld c, d
    ld h, $34
    ld [bc], a
    ld c, e
    inc h
    dec [hl]
    ld [bc], a
    ld c, h
    ld [hl+], a

Jump_064_4a8e:
    ld [hl], $02
    ld c, l
    dec h
    ld [hl], $02
    ld c, [hl]
    ld a, [hl+]
    ld [hl], $02
    ld c, a
    daa
    scf
    ld [bc], a
    ld d, b
    ld h, $38
    ld [bc], a
    ld d, c
    dec l
    jr c, jr_064_4aa6

    ld d, d
    cpl

jr_064_4aa6:
    dec sp
    rst $38
    rst $38
    rst $38
    or d
    ld c, d
    jr z, jr_064_4afc

    ld a, [$1552]
    ld d, e
    cpl
    dec c
    ld c, $0e
    ld c, $fc
    push hl
    ld c, l
    di
    ldh [$fc], a
    di
    nop
    rst $38

Jump_064_4ac0:
    ldh [$d8], a
    add sp, -$34
    jp hl


    db $fd
    pop af
    db $d3
    ld [c], a
    db $e4
    ld [$e1a6], a
    rst $38
    rst $38
    and b
    sub d
    rst $20
    db $76
    pop af
    rst $38
    rst $38
    add d
    push hl
    ld d, c
    ldh [$2d], a
    ld [hl-], a
    ldh [rKEY1], a
    adc a
    dec c
    dec l
    ld c, l
    ld c, l
    ret nc

    rst $38
    ld [bc], a
    rst $20
    inc d
    and $6d
    scf
    dec c
    ld c, l
    dec l
    ld a, h
    ldh [$6d], a
    ld c, l
    cp a
    ldh [$fc], a
    ret


    add sp, -$06
    jp nc, $eb0a

    pop bc

jr_064_4afc:
    ld [c], a
    dec bc
    ld a, $e0
    ld c, l
    ld c, l
    ld l, l
    inc bc
    dec c
    dec bc
    cp a
    pop hl
    db $fc
    rst $18
    inc b

Jump_064_4b0b:
    db $eb
    pop bc
    pop hl
    cp $e0
    rst $38
    ldh [rNR10], a
    ei
    ldh [$7e], a
    ld [$fd08], a
    add h
    jp $c76d


    ld [c], a
    cp $e3
    ld a, [hl]
    db $eb
    call nz, $f902
    nop
    add $4d
    jp nz, Jump_064_7ee4

    db $e4
    scf
    ldh [$2d], a
    dec l
    nop
    ld hl, sp-$48
    inc b
    adc $c0
    ld [c], a
    db $fd
    ld [c], a
    inc a
    push hl
    or e
    ret nz

    db $fc
    rst $18
    ldh [$e5], a
    ld b, b
    add [hl]
    ret nz

    add e
    rst $20
    db $fc
    db $e4
    ld [hl], d
    pop bc
    db $fc
    rst $18
    add h
    and l
    ld c, l
    ld b, $e4
    pop bc
    dec hl
    cp $e0
    cp b
    push bc
    ld a, [hl]
    rst $20
    nop
    rst $18
    rst $38
    jp $2b0d


    add b
    jp nz, $f7e0

    rst $00
    ld a, [hl]
    and $fe
    rst $10
    ld a, [bc]
    and l
    ld b, e
    call nz, $e1c1
    ld c, e
    ret nz

    add hl, sp
    rst $20
    ld a, [hl]
    ld sp, hl
    inc b
    xor c
    ld a, d
    add b
    rst $38
    ret nz

    ld bc, $6bc0
    ld c, e
    rla
    ld l, e
    ld l, e
    ld c, e
    scf
    call nz, $f60d
    and e
    nop
    ei
    add b
    and $00
    rst $38
    ret nz

    pop bc
    and b
    ld b, c
    ld [c], a
    or a
    and d
    or d
    and c
    or b
    and b
    ret nz

    pop hl
    nop
    rst $18
    ld h, b
    ld a, [hl]
    pop bc
    add h
    and d
    ld b, b
    db $e3
    ld a, [hl]
    pop hl
    ld a, h
    jp Jump_064_6d0b


    db $f4
    add d
    nop
    nop
    sbc $c2
    add c
    pop bc
    and l
    ld sp, hl
    jp nz, $a4b1

    or d
    add b
    ld [hl], h
    sbc a
    sub [hl]
    ld h, c
    inc l
    ld bc, $3ea1
    and a
    dec bc
    dec hl
    or c
    and h
    ld l, l
    nop
    rst $18
    add h
    ld h, d
    inc h
    add d
    ld [c], a
    cp [hl]
    add b
    ld l, e
    cp [hl]
    and $b2
    add d
    ld l, l
    cp [hl]
    halt
    adc h
    dec b
    dec l
    ld b, c
    and h
    ld l, e
    ld b, e
    pop bc

Jump_064_4be0:
    cp e
    call nz, $806f
    ret nz

Call_064_4be5:
    pop hl
    nop
    rst $18
    ld a, h
    nop
    and c
    ld b, c
    jp $2b0d


    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    nop
    jp nz, Jump_064_7910

    and e
    add b
    rst $30
    inc b
    ld l, a
    ld a, $63
    ld a, [bc]
    rst $38
    ldh [$bf], a
    db $e3
    rst $30
    ld h, h
    ld hl, sp+$00
    db $fc
    add b
    ld h, l
    db $fc
    db $e4
    ld c, l
    dec l
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    pop hl
    ld c, d
    cp $c7
    cp h
    add d
    nop

jr_064_4c17:
    rst $18
    db $fc
    daa
    ld c, l
    dec l
    ld l, e
    inc bc
    ld c, d
    ld a, [bc]
    scf
    and d
    or l
    ret nz

    ret nz

    and c
    ldh [rBGP], a
    nop
    ld e, h
    ld a, [$0c25]
    db $fd
    ret nz

    or $82
    ld a, [bc]
    ld a, [hl+]
    inc sp
    ld h, c
    ld a, [hl]
    push bc
    inc a
    reti


    ld a, [hl]
    ld a, [hl+]
    dec de
    ld c, l
    ld l, e
    rst $38
    jp Jump_000_2a2b


    or a
    pop bc
    ret nz

    ld [c], a
    db $fc
    cp a
    add d
    or $aa
    dec hl
    rst $38
    jp $8035


    or l
    ld b, d
    cp $5f
    db $fc
    rlca
    dec c
    ld bc, $3a6d
    ld b, b
    rst $38
    jp $a57b


    or $40
    db $fc
    or c
    ld a, c
    or h
    ld a, h
    add d
    ldh [rIE], a
    jp $a5fc


    rst $30
    ld c, b
    db $fc
    ld a, h
    dec sp
    ld b, h
    ld l, e
    ld a, [hl+]
    ld c, d

jr_064_4c75:
    jr nz, jr_064_4c75

    and h
    xor l
    ld b, h
    ld a, [hl]
    push hl
    db $fc
    ld a, h
    cp h
    add [hl]
    ld a, [hl+]
    add [hl]
    pop bc
    add hl, sp
    ld l, b
    inc bc
    dec bc
    ld l, l
    nop
    ld e, c
    db $fc
    ld h, a
    adc [hl]

jr_064_4c8d:
    ld h, d
    ld a, d
    jr nz, jr_064_4c8d

    ld b, l
    jr c, jr_064_4c17

    ret nz

    cp e
    ld h, d
    db $fc
    ld l, h
    db $76
    ld [hl], d
    cp e
    add c
    ei
    ld l, c
    ld a, [hl]
    ret nz

    ld c, e
    ld c, e
    ld d, b
    ld l, b
    nop
    ld a, [hl-]
    add b
    ld c, b
    rst $18
    db $fc
    add d
    dec l
    cp $01
    ld c, e
    ld a, l
    ld b, h
    ld [bc], a
    ld [hl], $40
    dec hl
    db $f4
    ldh [$c1], a
    pop hl
    nop
    rst $18
    ld a, h
    inc bc
    cp e
    ld b, d
    dec a
    ld b, h
    rlca
    dec hl
    dec hl
    dec hl
    or l
    ld b, b
    ld a, l
    and d
    cp $9d
    add e
    add c
    ld a, [hl]
    rst $20
    ld [bc], a
    add c
    push hl
    dec hl
    db $f4
    ld h, c
    add d
    add sp, $00
    rst $10
    ld h, h
    push hl
    ld a, $81
    dec a
    ld b, b
    nop
    ld a, h
    ld h, h
    jr c, @+$44

    add sp, $40
    inc b
    rst $38
    add d
    db $e3
    ld hl, sp+$62
    cp d
    ld b, c
    inc a
    ld h, e
    add b
    db $76
    ld h, b
    xor $61
    ld a, [hl]
    ld h, a
    cp b
    rst $38

jr_064_4cfa:
    cp d
    ld b, e
    ld b, c
    jp Jump_064_427e


    dec l
    nop
    jp z, $c0e7

    rlc b
    sub e

Call_064_4d08:
    inc bc
    and b
    db $fc
    dec h
    ld a, $43
    add d
    ld b, [hl]
    nop
    ld e, l
    nop
    inc bc
    and a
    ld b, b
    push bc
    cp b
    ld bc, $033e
    rst $38
    rst $38
    add d
    db $e4
    nop
    ld b, h
    ld a, l
    inc bc
    nop
    add e
    jp $6300


    inc b
    rst $38
    adc b
    ld h, c
    inc d
    and h
    pop bc
    and e
    jr c, jr_064_4d74

    ld b, $a5
    jr nz, jr_064_4cfa

    or c
    nop
    adc l
    ret nz

    nop
    ccf
    inc hl
    pop bc
    and d
    ld c, e
    rst $00
    and d
    call nz, Call_000_00a3
    db $e3
    and d
    cp $1f
    ld b, e
    and e
    ret nz

    ldh [$7b], a
    and $46
    and h
    rst $38
    rst $38
    add [hl]
    ld b, l
    add b
    ld bc, $04e3
    call nz, $43c3
    add d
    ld b, d
    rst $38
    rst $38
    ld a, h
    inc hl
    adc c
    and e
    ld l, e
    nop
    call nz, $c1c4
    ld [c], a
    adc d
    ld d, h
    nop
    ld d, d
    ret nz

    db $e3
    ld b, b
    and b
    add b
    inc h

jr_064_4d74:
    jp nz, Jump_000_00a0

    inc b
    ld d, c
    nop
    db $dd
    add l
    call nz, Call_000_01c3
    inc b
    ld e, a
    nop
    jp z, Jump_064_4190

    add a
    ld b, a
    ld c, b
    ld b, h
    inc hl
    nop
    rst $18
    ld [$4b45], sp
    ld c, b
    ld h, [hl]
    bit 4, c
    ld c, e
    add l
    ld h, b
    nop
    add a
    ld b, l
    nop
    reti


    ld c, $20
    inc b
    and e
    ld d, l
    ld h, b
    ret nz

    rst $20
    add e
    nop
    ld b, l
    ld h, c
    jr nc, jr_064_4da9

jr_064_4da9:
    and d
    ld [bc], a
    rst $28
    xor l
    add hl, bc
    add b
    inc b
    ld c, l
    dec l
    adc a
    ldh [rNR11], a
    ld b, d
    ld bc, $7c0b
    ld h, b
    ld [$0481], sp
    jr z, jr_064_4dc3

    rst $38
    add [hl]
    ld h, c
    ret nz

jr_064_4dc3:
    ld [c], a
    ld [$8049], sp
    add d
    add [hl]
    call nz, $867d
    ld h, e
    sub h
    ld b, b
    ld b, b
    jp hl


    add d
    ld a, [$4f04]
    dec c
    ld b, l
    ld c, l
    ld d, h
    ld b, b
    ld c, e
    call nz, $fda0
    pop hl
    add l
    ld h, b
    ld l, l
    inc b
    call nz, Call_000_06e0
    xor a
    scf
    inc de
    ld b, e
    ld b, c
    adc a
    ld b, b
    cp $e1
    dec l
    ld c, e
    dec hl
    nop
    ld b, [hl]
    and c
    inc b
    rst $38
    nop
    xor l
    inc c
    ld h, $82
    jp hl


    cp b
    rst $38
    add b
    daa
    dec bc
    ret nz

    nop
    db $fd
    pop hl
    add d
    jp hl


    ret nz

    sub l
    nop
    adc l
    or $a3
    rst $38
    db $e3
    add d
    jp hl


    ld [bc], a
    pop af
    nop
    cp $96
    ld d, b
    db $e4
    ld c, h
    rst $38
    nop
    ld d, l
    ld hl, sp-$15
    cp b
    rst $38
    and b
    sbc a
    ld [bc], a
    di
    nop
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    and $a0
    ret c

    reti


    rrca
    and b
    and b
    jp nc, $fcd3

    db $eb
    db $ec
    pop hl
    cp $e0
    ret c

    jp hl


    sbc $cc
    add sp, -$21
    ldh [$e1], a
    ld [c], a
    db $fc
    push hl
    sub $d7
    rst $38
    jp c, $d0db

    pop de
    call nc, $a0d5
    and b
    di
    call nc, $f8d5
    pop hl
    db $fc
    db $e3
    jp c, $d6db

    rst $10
    di
    and b
    and b
    ret c

    jp hl


    call z, $e3e9
    db $e4
    push hl
    and $c0
    db $fc
    push hl
    add d
    push hl
    sub b
    pop hl
    ld a, [hl]
    db $ed
    ret c

    jp hl


    call z, $e7e9
    add sp, -$0d
    jp hl


    ld [$e5fc], a
    add d
    push hl
    and b
    sbc a
    and d
    sbc a
    ld b, $7a
    pop hl
    sbc a
    sbc a
    db $76
    db $e3
    ld a, [hl]
    pop hl
    ret c

    jp hl


    call z, $02e9
    jp hl


    sbc $82
    push hl
    sbc a
    sbc h
    xor [hl]
    sbc h
    push bc
    ldh [$9f], a
    sbc h
    ldh a, [$fa]
    pop hl
    db $fc
    ret


    ld a, [$02d0]
    rst $20
    and b
    and b
    sub $d7
    cp $82
    db $e3
    sbc h
    ld b, [hl]
    xor a
    xor [hl]
    sbc h
    sbc l
    sbc l
    ld h, a
    sbc h
    xor [hl]
    ld b, [hl]
    cp c
    pop hl
    db $fc
    rst $00
    sub $d7
    ld a, [$78cf]
    ld [bc], a
    rst $20
    sub [hl]
    push bc
    pop bc
    ldh [$ae], a
    ld b, [hl]
    xor a
    ld b, [hl]
    rst $38
    ldh [$cc], a
    ei
    ldh [$7e], a
    ld [$d9d8], a
    ld a, [$02cf]
    rst $20
    and b
    and b
    ld h, b
    add d
    pop bc
    add d
    pop hl
    jp nz, $bee3

    pop hl
    ld a, [hl]
    db $eb
    jp c, $fadb

    rst $08
    add h
    nop
    rlc h
    ret nz

    sbc [hl]
    add d
    ldh [$c5], a
    db $e3
    ld a, [hl]
    ld [c], a
    scf
    ldh [$a2], a
    ld de, $f89f
    cp b
    nop
    rlc h

Call_064_4eff:
    ret nz

    sbc [hl]
    ld b, h
    pop hl
    cp l
    ldh [$c5], a
    ldh [rP1], a
    inc a
    db $e4
    or e
    ret nz

    ld hl, sp-$49
    nop
    call $e240
    ld bc, $74e6
    ld [c], a
    or e
    ret nz

    db $e4
    ld a, [hl]
    rst $20
    nop
    db $dd
    and b
    ccf
    ldh [rTMA], a
    db $e3
    ld b, l
    dec hl
    dec hl
    pop hl
    ld b, l
    cp b
    push bc
    ld a, [hl]
    rst $20
    nop
    rst $18
    rst $38
    jp Jump_064_45af


    dec l
    rst $00
    jr nz, @+$22

    dec l
    rst $30
    add $7e
    add sp, $00
    db $db
    ret nc

    pop de
    add c
    and c
    ld b, e
    jp $e0c1


    ret nz

    db $e3
    add hl, sp
    db $e3
    db $fc
    rst $00
    nop
    db $db
    jp nc, $d3f9

    ccf
    pop bc
    ld a, l
    ret nz

    dec l
    ld h, $23
    dec hl
    ld b, l
    ld b, $75
    jp $ae46


    or $a3
    ld [hl], d
    add e
    nop
    db $db
    ld a, [hl]
    jp nz, $a1c1

    adc a
    ld b, d
    dec [hl]
    dec [hl]
    add hl, sp
    ld a, e
    jp $a1b2


    inc l
    ret nz

    and c
    ldh a, [rOCPS]
    add b
    db $fc
    xor a
    nop
    adc $bf
    call nz, Call_000_39ae
    dec [hl]
    dec [hl]
    rst $08
    ld a, [hl-]
    ccf
    ld b, c
    ccf
    ld [hl], a
    and b
    ld [hl], h
    and c
    xor a
    xor [hl]
    add e

jr_064_4f8c:
    ld b, [hl]
    sbc [hl]
    ld sp, hl
    ld h, b
    ldh [$60], a
    nop
    db $dd
    jp nz, Jump_064_4481

    and c
    ld a, $7f
    dec [hl]
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld [hl], $3c
    db $e4
    pop bc
    xor a
    xor [hl]
    add b
    db $f4
    ld h, c
    nop
    rst $18
    jp nz, $4780

    and c
    ld a, $35
    ld a, a
    ld l, c
    dec [hl]
    dec [hl]
    dec [hl]
    ld l, b
    ld h, [hl]
    ld [hl], $b1
    and e
    ldh [$6f], a
    add c
    ld h, [hl]
    ld h, c
    nop
    sbc l
    add d
    db $e3
    ret nz

    add b
    add hl, sp
    dec [hl]
    ld l, e
    dec d
    ld l, h
    cp a
    ld [c], a
    add hl, sp
    or d
    add d
    sbc [hl]
    add d
    ldh [rP1], a
    pop hl
    nop
    db $dd
    ei
    sbc a
    sbc h
    ld b, c
    and e
    xor [hl]
    ld b, l
    ld [hl], $6e
    ld [hl], b
    cp a
    ld [hl], c
    ld [hl], d
    ld l, h
    dec [hl]
    ld l, d
    ld a, [hl-]
    jr nc, jr_064_4f8c

    sbc [hl]
    ld hl, sp+$00
    rst $18
    nop
    add e
    add b
    add h
    xor a
    ld b, l
    ld c, b
    ld c, [hl]
    ld c, b
    sbc a
    ld [hl], $6e
    ld [hl], h
    dec [hl]
    ld [hl], l
    db $fd
    ret nz

    ld sp, $9e80
    db $f4
    db $76
    ld h, [hl]
    nop
    sbc [hl]
    sbc l
    rst $38
    ld [c], a
    sbc h
    ld d, d
    ld h, c
    ld h, c
    ld b, e
    ld e, h
    ld [hl], $fc
    ret nz

    ld a, $e2
    nop
    and $00
    db $dd
    and b
    sbc d
    ret nz

    ld a, [hl]
    db $fc
    ld [c], a
    sbc a
    sbc h
    ld d, e
    ld d, e
    ld b, a
    ld d, l
    cp h
    pop bc
    ldh a, [$3e]
    pop hl
    ld [hl], l
    ld h, d
    nop
    rst $18
    inc b
    ld c, c
    sbc a
    sbc h
    ld b, l
    ld c, e
    cp l
    ld e, d
    cp h
    ret nz

    ld l, h
    ld l, l

jr_064_503a:
    ld [hl], $44
    ld [hl], b
    ld h, c
    and c
    jr nz, jr_064_5041

jr_064_5041:
    jp Jump_000_2cf4


    nop
    adc l
    db $fc
    push hl
    db $76
    ld h, b
    and c
    ret nz

    ldh [rIE], a
    ret nz

    rra
    ld [hl], e
    ld l, [hl]
    ld c, d
    ld c, c
    ld b, l
    ld [hl], l
    ld h, b
    ld a, [hl]
    pop bc
    db $f4
    cpl
    cp b
    nop
    ld c, l
    db $fc
    push hl

Jump_064_5060:
    db $76
    ld h, c
    ld b, h
    ld d, h
    ld d, l
    rst $38
    ret nz

    ld [hl], e
    rla
    inc a
    ld d, l
    ld d, d
    ret nz

    ldh [$af], a

jr_064_506f:
    ld a, [hl]
    rst $00
    nop
    ld d, a
    ld a, [hl]
    ld hl, $7af4
    dec h
    ld a, [hl-]
    ld b, b
    ld b, h
    rst $38
    pop bc
    ld [hl], l
    ld h, [hl]
    jr c, jr_064_50b8

    jr nc, jr_064_503a

    add c
    db $fc
    ld [hl], e
    ld a, [hl+]
    dec hl
    add d
    rst $20
    sbc a
    sbc l
    ld a, [hl-]
    ld b, b
    rst $38
    jp Jump_064_7719


    ld a, [hl-]
    and b
    add hl, sp
    ld h, d
    sbc l
    sbc a
    db $fc
    xor a
    ld a, [hl+]
    dec hl
    add d
    and $02
    dec sp
    ld b, d
    ld b, [hl]
    rst $38
    jp $a23a


    ld [hl], l

jr_064_50a7:
    ld h, c
    xor d
    jr nz, jr_064_50a7

    xor [hl]
    ld a, [hl+]
    dec hl
    inc e
    db $fc
    ld l, c
    db $fd
    jr nz, jr_064_50f9

    ld d, [hl]
    ld d, [hl]
    cp $a1

jr_064_50b8:
    db $fc
    and l
    jr c, @+$63

    ld h, b
    db $fc
    xor l
    ld a, [hl+]
    dec hl
    db $fc
    ld h, h
    add d
    db $e3
    jr c, jr_064_5107

    ld d, l

jr_064_50c8:
    ld d, d
    ret nz

    db $e3
    ld b, h
    ld a, [hl-]
    and e
    xor h
    jr nz, jr_064_506f

    db $fc
    xor l
    jr z, jr_064_50e3

    db $fc
    and c
    and c
    adc [hl]
    ld h, d
    sbc $03
    ld b, b
    ld b, h
    ld [hl], $62
    db $76
    ret nz

    db $e3

jr_064_50e3:
    inc a
    ld b, h
    pop bc
    xor [hl]
    cp e
    ld h, e
    db $fc
    ld l, h
    jr z, jr_064_50fa

    db $fc
    add h
    ld [bc], a
    ld b, e
    xor a
    ld [hl], $fb
    ld h, d
    ld h, a
    add c
    ld [c], a
    ld l, h

jr_064_50f9:
    ld l, a

jr_064_50fa:
    ld a, [hl-]
    ld b, l
    xor a
    ld b, $3a
    ld h, b
    sbc h
    sbc a
    db $fc
    ld l, l
    jr z, jr_064_5113

    db $fc

jr_064_5107:
    ld b, $fe
    ld bc, $843c
    rra
    ld l, h
    ld [hl], d
    ld [hl], b
    ld l, [hl]
    add hl, sp
    add hl, sp

jr_064_5113:
    ld b, e
    db $fc
    ld l, [hl]
    jr z, jr_064_5125

    db $fc
    db $fc
    inc hl
    ld a, [$ae02]
    ld b, l
    ld a, [hl-]
    dec [hl]
    ld l, [hl]
    ld l, a
    ld b, $3f

jr_064_5125:
    and b
    ld l, a
    ld l, [hl]
    cp $a0
    dec sp
    ld b, d
    db $fc
    ld l, a
    ld [bc], a
    db $ed
    db $fc
    ld b, h
    sbc $3b
    ld [bc], a
    ld b, h
    inc a
    dec [hl]
    dec [hl]
    ei
    ld h, b
    ld [hl], b
    ld l, [hl]
    and b
    ld a, $80
    or l
    inc bc
    nop
    db $dd
    db $fc
    dec h
    jr c, jr_064_50c8

    and c
    ld bc, $3ac0
    ld [bc], a
    add h
    jp nz, $fc35

    ld b, d
    rst $38
    ld b, b
    ld a, [hl]
    ld h, e
    nop
    rst $18
    add d
    add e
    cp h
    nop
    jr @+$7e

    ld b, b
    pop bc
    ld [c], a
    jp nz, $9d40

    sbc l
    ld a, d
    rlca
    nop
    rst $10
    inc b
    and l
    ld a, [hl-]
    cp d
    ld b, e
    xor [hl]
    ccf
    pop hl
    dec [hl]
    dec [hl]
    ld b, d
    ld c, b
    jp $e582


    ret nz

    ret c

    ld hl, $5500
    add [hl]
    add h
    inc bc
    and c
    ld b, [hl]
    ld hl, $20bc
    dec [hl]
    dec [hl]
    inc bc
    inc a
    ld b, h
    pop bc
    ld b, d
    inc b
    push hl
    nop
    ld e, d
    add [hl]
    add l
    rlc e
    ld b, b
    db $e4
    ld bc, $c442
    add c
    add d
    ld h, l
    nop
    ld e, l
    add d
    pop hl
    inc bc
    and e
    ret nz

    push bc
    add e
    pop bc
    nop
    dec b
    jp nz, $8e04

    nop
    sub c
    ld a, [hl]
    jr nz, jr_064_51f2

    and b
    ret


    inc bc
    pop bc
    jp nz, $c144

    inc c
    ld b, $a2
    inc b
    add c
    and b
    and b
    nop
    ld e, b
    nop
    add h
    ret nz

    nop
    ld c, l
    inc bc
    ld [bc], a
    ld b, c
    jp nz, $c73a

    and c
    add b
    ld [hl+], a
    db $e4
    ld [bc], a
    jp nc, Jump_000_008d

    adc [hl]
    add [hl]
    ld b, d
    ld b, $8a
    ld bc, $46af
    add d
    jp nz, $a048

    ld b, [hl]
    and h
    add d
    ld b, c
    jp nc, Jump_000_008d

    nop
    adc a
    add [hl]
    ld b, e
    ld d, e
    add d
    add d
    pop bc
    call nz, Call_000_3320
    pop hl

jr_064_51f2:
    ld [bc], a
    ld hl, $4f04
    nop
    nop
    pop de
    add [hl]
    ld b, d
    ld a, $02
    add c
    and c
    call nz, $c1c3
    db $e3
    inc b
    ld h, c
    ld [bc], a
    dec l
    inc c
    nop
    call nc, $e3c0
    ld b, [hl]
    add hl, sp
    call nz, Call_000_05c5
    ld b, c
    add sp, -$7c
    nop
    rst $18
    add d
    nop
    rst $00
    ld b, l
    add l
    jp Jump_000_01c3


    add d
    inc b
    inc b
    ld c, e
    nop
    reti


    ld b, e
    add e
    ld b, c
    ld b, e
    db $fd
    ldh [rSC], a
    ld [c], a
    ld [$0086], sp
    rst $18
    add d
    and l
    ld b, l
    ld l, a
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$36], a
    ld b, l
    add hl, bc
    ld h, d
    ldh [$87], a
    ld b, b
    inc b
    and l
    nop
    ret c

    inc b
    add e
    add l
    ld b, d
    ld b, h
    inc a
    and h
    dec e
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    ld b, h
    inc bc
    jp nz, $8044

    ld [$f04d], sp
    nop
    ld c, a
    inc b
    add e
    ld b, d
    and d
    ld b, l
    ret nz

    ld l, c
    and e
    dec [hl]
    dec [hl]
    inc bc
    and e
    ld l, d
    inc b
    and b
    or [hl]
    ld b, c
    ld b, e
    nop
    ld [$004d], sp
    adc a
    and d
    dec b
    nop
    inc b
    ld b, c
    ret nz

    ldh [rWY], a
    ld b, d
    call nz, Call_064_4180
    call nz, Call_064_4d08
    nop
    adc a
    inc b
    ld b, e
    ld e, [hl]
    add [hl]
    ld h, e
    xor [hl]
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    ld b, b
    pop hl
    jr nz, jr_064_52dd

    jr nz, jr_064_529a

    add [hl]
    nop
    db $dd
    inc e

jr_064_529a:
    and d
    jp nz, $afa0

    ret nz

    add $c4
    and e
    ld d, b
    inc b
    sub e
    nop
    adc a
    inc b
    ld h, d
    ld b, e
    ld hl, $4045
    jp nz, $c1ae

    db $e3
    nop
    ld [$0265], sp
    xor a
    nop
    sub d
    cp l
    jp $86c8


    add [hl]
    ld h, [hl]
    inc b
    adc [hl]
    nop
    sub e
    ld b, b
    ld a, [hl]
    db $e4
    ld de, $8222
    jp hl


    inc b
    adc a
    nop
    sub e
    ld a, [hl]
    add d
    sbc l
    rst $38
    db $e3
    nop
    add d
    jp hl


    ld [bc], a
    pop af
    nop
    adc a
    nop
    ld b, l
    db $fc
    rst $20

jr_064_52dd:
    inc c
    ld c, a
    nop
    sbc c
    nop
    ld b, l
    nop
    db $fc
    jp hl


    inc c
    ld c, l
    nop
    sub a
    db $fc
    and c
    ld a, [hl]
    ld bc, $ebfc
    adc [hl]
    ld hl, $d104
    nop
    nop
    ld b, c
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
    ld d, $05
    ld [bc], a
    ld bc, $0617
    ld [bc], a
    ld [bc], a
    inc e
    ld b, $02
    inc bc
    dec d
    rlca
    ld [bc], a
    inc b
    ld e, $08
    ld [bc], a
    dec b
    inc de
    add hl, bc
    ld [bc], a
    ld b, $19
    add hl, bc
    ld [bc], a
    rlca
    jr nz, jr_064_533e

    ld [bc], a
    ld [$0a16], sp
    ld [bc], a
    add hl, bc
    dec de
    ld a, [bc]
    ld [bc], a

jr_064_533e:
    ld a, [bc]
    inc hl
    ld a, [bc]
    ld [bc], a
    dec bc
    rra
    dec bc
    ld [bc], a
    inc c
    inc h
    dec bc
    ld [bc], a
    dec c
    jr jr_064_5359

    ld [bc], a
    ld c, $14
    dec c
    ld [bc], a
    rrca
    ld [hl+], a
    dec c
    ld [bc], a
    db $10
    ld h, $0e

jr_064_5359:
    ld [bc], a
    ld de, $0f16
    ld [bc], a
    ld [de], a
    ld e, $0f
    ld [bc], a
    inc de
    dec h
    rrca
    ld [bc], a
    inc d
    jr nz, @+$12

    ld [bc], a
    dec d
    inc hl
    db $10
    ld [bc], a
    ld d, $27
    db $10
    ld [bc], a
    rla
    jr jr_064_5386

    ld [bc], a
    jr jr_064_53a0

    ld de, $1902
    inc d
    ld [de], a
    ld [bc], a
    ld a, [de]
    ld [hl+], a
    ld [de], a
    ld [bc], a
    dec de
    rla
    inc de
    ld [bc], a

jr_064_5386:
    inc e
    dec h
    inc de
    ld [bc], a
    dec e
    ld [de], a
    inc d
    ld [bc], a
    ld e, $23
    inc d
    ld [bc], a
    rra
    dec d
    dec d
    ld [bc], a
    jr nz, jr_064_53b0

    dec d
    ld [bc], a
    ld hl, $1526
    ld [bc], a
    ld [hl+], a
    dec h

jr_064_53a0:
    rla
    ld [bc], a
    inc hl
    daa
    jr jr_064_53a8

    inc h
    add hl, hl

jr_064_53a8:
    ld a, [de]
    ld [bc], a
    dec h
    inc e
    inc e
    ld [bc], a
    ld h, $27

jr_064_53b0:
    inc e
    ld [bc], a
    daa
    ld a, [hl+]
    dec e
    ld [bc], a
    jr z, @+$1c

    ld e, $02
    add hl, hl
    inc l
    ld e, $02
    ld a, [hl+]
    add hl, hl
    rra
    ld [bc], a
    dec hl
    jr jr_064_53e5

    ld [bc], a
    inc l
    dec de
    jr nz, jr_064_53cc

    dec l
    rla

jr_064_53cc:
    ld hl, $2e02
    dec e
    ld hl, $2f02
    ld a, [hl+]
    ld hl, $3002
    inc l
    ld hl, $3102
    add hl, de
    ld [hl+], a
    ld [bc], a
    ld [hl-], a
    dec hl
    ld [hl+], a
    ld [bc], a
    inc sp
    dec de
    inc h

jr_064_53e5:
    ld [bc], a
    inc [hl]
    add hl, hl
    dec h
    ld [bc], a
    dec [hl]
    ld h, $26
    ld [bc], a
    ld [hl], $1a
    daa
    ld [bc], a
    scf
    inc e
    jr z, jr_064_53f8

    jr c, jr_064_541c

jr_064_53f8:
    jr z, jr_064_53fc

    add hl, sp
    rla

jr_064_53fc:
    ld a, [hl+]
    ld [bc], a
    ld a, [hl-]
    ld h, $2a
    ld [bc], a
    dec sp
    dec d
    inc l
    ld [bc], a
    inc a
    add hl, de
    dec l
    ld [bc], a
    dec a
    dec h
    dec l
    ld [bc], a
    ld a, $16
    ld l, $02
    ccf
    ld [hl+], a
    cpl
    ld [bc], a
    ld b, b
    rla
    ld [hl-], a
    ld [bc], a
    ld b, c
    inc hl

jr_064_541c:
    ld [hl-], a
    ld [bc], a
    ld b, d
    jr nz, jr_064_5454

    ld [bc], a
    ld b, e
    dec d
    inc [hl]
    ld [bc], a
    ld b, h
    dec h
    inc [hl]
    ld [bc], a
    ld b, l
    ld [hl+], a
    dec [hl]
    ld [bc], a
    ld b, [hl]
    ld hl, $0236
    ld b, a
    ld d, $38
    ld [bc], a
    ld c, b
    dec e
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    ld b, h
    ld d, h
    ld bc, $df57
    ld e, d
    ld a, [$0f5a]
    dec c
    ld c, $0e
    ld c, $fc
    rst $38
    ld hl, sp-$09
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38

jr_064_5454:
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    ld a, [de]
    ld a, [$edff]
    cp $df
    and h
    db $eb
    db $10
    cp l
    ret nz

    db $fc
    jp hl


    rst $38
    rst $38
    db $ec
    db $eb
    ld c, l
    ret nz

    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc b
    ld b, $f4
    add d
    db $ed
    ld c, l
    cp $d0
    ld b, h
    ei
    db $ec
    rst $38
    inc b
    ei
    db $fc
    pop af
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $de
    inc b
    ld [c], a
    ld a, [hl]
    di
    ld hl, sp-$53
    inc b
    ei
    ld b, d
    rst $08
    add b
    inc a
    rst $38
    sub d
    db $eb
    db $fc
    rst $20
    db $fc
    rst $18
    add b
    xor a
    ld a, [hl-]
    ret nz

    rst $38
    db $e4
    dec l
    or c
    dec l
    ld [bc], a
    rst $38
    ld [$14c7], sp
    push hl
    ld l, l
    dec hl
    rst $38
    and $4d
    pop hl
    dec l
    ld l, [hl]
    call nz, $db00
    inc b
    jp hl


    pop bc
    ldh [$0d], a
    dec hl
    dec hl
    and b
    cp d
    add e
    cp a
    pop hl
    ld c, [hl]
    rst $38
    sub [hl]
    res 0, d
    ldh [$0d], a
    pop bc
    ldh [rWX], a
    jp nz, $e2bc

    ld c, e
    ld a, [hl]
    rst $20
    rst $38
    rst $38
    add d
    db $e4
    ld b, d
    ldh [$0d], a
    dec c

jr_064_54da:
    add a
    inc c
    inc c
    inc c
    cp c
    ld [c], a
    ld a, [hl]
    di
    ld [$04d5], sp
    db $e3
    dec bc
    ccf
    dec c
    dec c
    inc l
    inc c
    inc c
    inc l
    db $fc
    ldh [$78], a
    ld [c], a
    ld b, c
    dec l
    ld l, [hl]
    add e
    cp $95
    inc c
    xor c
    ld c, $e0
    inc b
    ld [c], a
    dec hl
    ret nz

    ldh [$93], a
    inc c
    inc l
    cp l
    ldh [$7e], a
    pop hl
    ld l, l
    inc b
    rst $38
    ld [$4da6], sp
    adc $c4
    jp nz, Jump_000_0c0b

    ld c, h
    ld b, b
    ldh [$bd], a
    pop hl
    inc l
    dec bc
    add sp, -$40
    ld [c], a
    nop
    rst $38
    jr z, jr_064_5585

    ld c, l
    ld [bc], a
    ld [c], a
    dec bc
    dec hl
    ld c, h
    ld h, b
    cp a
    and $80
    ldh a, [rNR12]
    ld l, e
    jr jr_064_54da

    ret nz

    db $e3
    dec c
    dec hl
    cp [hl]
    db $e4
    add e
    inc l
    ld l, h
    ret nz

    pop hl
    nop
    rst $18
    ld a, [bc]
    ld h, l
    add b

Jump_064_5540:
    ld [c], a
    ld [$0bc1], sp
    inc b
    ld a, l
    ldh [$fc], a
    pop bc
    ld c, h
    ld b, b
    db $e3
    nop
    rst $38
    inc c
    and h
    ld b, b
    ldh [$0e], a
    ldh [$e7], a
    dec c

jr_064_5556:
    dec hl
    ld c, e
    cp a
    ldh [$c2], a
    ldh [$6c], a
    ld c, h
    dec l
    ret nc

    nop
    rst $38
    ld c, h
    ld b, l
    dec bc
    and c
    ld b, l
    and d
    dec bc
    rst $38
    ldh [rWX], a
    dec bc
    rst $38
    ld l, e
    inc c
    ld l, h
    ld l, h
    ld l, h
    dec l
    dec l
    dec l
    ldh [$80], a
    pop af
    inc c
    adc l
    dec bc
    xor c
    jp nz, $bee1

    ldh [rOCPD], a
    ld c, e
    inc c
    inc bc

jr_064_5585:
    ld l, h
    ld c, e
    pop bc
    pop hl
    nop
    db $e4
    nop
    sub d
    db $10
    ld h, l
    call z, Call_000_0983
    and b
    ld a, d
    add e
    db $e3
    dec c
    db $fd
    ldh [$2d], a
    dec c
    ld c, h
    dec bc
    pop bc
    ld [c], a
    ldh [rP1], a
    ld sp, hl
    add d
    push bc
    pop bc
    db $e3
    jp $c0a2


    db $e3
    ld l, e
    ld c, e
    dec c
    ld b, $be
    ldh [$2d], a
    dec l
    ld bc, $00c0
    ld sp, hl
    sub b
    ld b, l
    ret


    and e
    ld a, [hl]
    ld [c], a
    ld b, $03
    ld [c], a
    ld l, e
    ld c, e
    ld [hl], e
    db $e3
    ld l, h
    ld [c], a
    db $fc
    ld l, [hl]
    ld [bc], a
    add hl, hl
    adc [hl]
    ld b, e
    jr c, jr_064_5556

    and b
    cp a
    db $e3
    jp Jump_064_6bc1


    ld l, e
    ld c, e
    add e
    add c
    cpl
    push hl
    ld bc, $000d
    sbc $17
    add c
    ret nz

    db $e4
    add l
    ret nz

    call nz, $c0a0
    ld h, h
    nop
    add c
    ld [$e0c1], sp
    ld b, h
    cp h
    adc [hl]
    ld h, d
    dec c
    call $cbc0
    and c
    add a
    jp nz, $e6c0

    nop
    add d
    and $00
    cp e
    pop bc
    pop hl
    inc c
    and b
    add l
    pop hl
    add hl, bc
    ret nz

    dec b
    ld [c], a
    ld [bc], a
    db $e4
    nop
    add d
    push af
    inc c
    ld c, h
    ld c, l
    and h
    ld a, l
    ld [c], a
    dec b
    db $e3
    ld a, $65
    add d
    and $00
    reti


    nop
    jp nz, Jump_000_09c2

    jp $a007


    add a
    push bc
    ld [$40e1], sp
    dec e
    sbc [hl]
    inc bc
    sbc h
    nop
    and b
    adc c
    and [hl]
    ld bc, $86a3
    jp hl


    ld l, [hl]
    dec b
    sub b

Jump_064_5636:
    rla
    ld c, l
    sub b
    ld b, b
    ld l, e
    inc b
    adc $80
    add a
    and e
    dec bc
    add h
    ld b, b
    rst $28
    pop bc
    ld l, b
    rla
    nop
    adc $4f
    ld b, b
    nop
    db $10
    and b
    ld b, h
    pop bc
    ld b, a
    ld b, b
    add [hl]
    and b
    ld [hl], c
    ret nz

    add d
    ld [$0cce], a
    ld a, $ce
    nop
    ld [de], a
    ld b, c
    cp a
    ld [c], a
    ld a, b
    pop hl
    ld b, a
    and c
    ld [$00fd], sp
    call z, $22d1
    ld a, [hl]
    pop hl
    jr nc, @+$3b

    pop hl
    ld a, [c]
    and c
    ld [$b4e9], sp
    rst $38
    ld c, l
    dec l
    ld a, a
    ld [c], a
    ld c, l
    add b
    nop
    ret


    add b
    ld bc, $8ee0
    and a
    call nz, Call_000_04b5
    ld c, h
    ld a, [de]
    jr nz, jr_064_56dd

    ld [hl+], a
    inc b
    pop hl
    nop
    adc a
    add c
    inc c
    jp nc, $9900

    ld a, [hl]
    db $e3
    dec bc
    inc hl
    ld c, $bf
    nop
    adc a
    ld d, [hl]
    nop
    nop
    ld b, b
    add h
    pop bc
    ld [c], a
    add d
    jp nz, $ff08

    add sp, $69
    cp a
    pop hl
    ld c, $a5
    adc d
    cp [hl]
    nop
    nop
    ld d, c
    ei
    ld b, d
    ld [hl], l
    add e
    ld [$00d5], sp
    ld e, c
    ld d, h
    rst $00
    ld c, b
    rst $38
    db $fc
    call nc, $f800
    db $ec
    cp b
    rst $38
    inc h
    or c
    add sp, -$01
    cp $ce
    ld a, d
    rrca
    inc b
    jp c, $ff69

    nop
    rst $38
    rst $38
    call nz, $bcd9
    rst $18
    cp h
    dec d
    cp b
    rlc d

jr_064_56dd:
    rst $38
    db $fc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $df
    db $fc
    rst $38
    cp $df
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld sp, hl
    nop
    nop
    nop
    rst $08
    and b
    call c, $dedd
    db $fc
    rst $38
    ld hl, sp-$09
    rst $18
    ldh [$f3], a
    pop hl
    ld [c], a
    db $fc
    rst $38
    ld hl, sp-$09
    db $e3
    db $e4
    push hl
    and $3c
    db $fc
    rst $38
    ld hl, sp-$09
    rst $20
    add sp, -$17
    ld_long $fffc, a
    ld hl, sp-$09
    ldh a, [rNR34]
    db $fc
    rst $38
    db $ed
    xor $ce
    ld e, $fb
    and b
    and b
    sub $d7
    ld a, b
    db $fc
    jp hl


    xor $cf
    ld e, $fb
    and b
    and b
    ret c

    reti


    db $fc
    jp hl


    inc a
    xor $cf
    ld e, $fb
    sub $d7
    jp c, $fcdb

    jp hl


    xor $cf
    nop
    ld b, $fb
    add d
    db $eb
    cp $d1
    inc e
    push de
    ld [$82e3], sp
    db $eb
    db $f4
    pop bc
    nop
    rst $18
    ret nz

    inc c
    jp $ed86


    ld hl, sp-$3b
    nop
    rst $18
    inc c
    jp $e308


    ret nc

    pop de
    add $fc
    db $eb
    sub $d7
    nop
    rst $18
    ld [$86c5], sp
    pop bc
    jp nc, $e0d3

    db $fc
    db $eb
    db $fc
    call nz, $a8f8
    ld [$82d7], sp
    pop hl
    call nc, $a0d5
    ld bc, $fca0
    rst $20
    ld a, [hl]
    db $e3
    ld hl, sp-$55
    ld [$82d9], sp
    pop hl
    ld a, [hl]
    xor c
    ld a, [hl]
    push hl
    cp b
    ld hl, sp-$57
    ld [$82d7], sp
    db $e3
    sbc a
    and d
    sbc l
    rst $38
    db $e4
    and d
    pop hl
    sbc a
    ld a, [hl]
    push hl
    ld hl, sp-$57
    ld [$82d7], sp
    ld [c], a
    sbc a
    sbc h
    ld b, [hl]
    add [hl]
    rst $38
    and $9c
    sbc a
    db $fc
    push bc
    nop
    ret c

    ld [$82c5], sp
    db $e4
    sbc h
    rst $38
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, e
    ld a, e
    add e
    ld a, h
    ld a, l
    cp a
    pop hl
    db $fc
    jp $d900


    db $10
    and l
    add d
    and $af
    scf
    ld b, [hl]
    ld a, c
    ld a, [hl]
    ld a, h
    ldh [$ae], a
    ld a, a
    cp a
    ld [c], a
    ld l, [hl]
    jp nz, Jump_000_00f0

    reti


    db $10
    and l
    add d
    db $e4
    ld b, d
    ldh [$79], a
    ld a, [hl]
    dec bc
    dec bc
    add hl, de
    dec bc
    cp c
    ldh [$bf], a
    db $e3
    call nc, $fcd5
    xor e
    ld [$14d3], sp
    and d
    ld a, $c1
    push hl
    dec b
    dec c
    sbc e
    dec c
    ld [bc], a
    cp l
    ldh [$7e], a
    pop hl
    ld h, c
    and c
    ld hl, sp-$7c
    nop
    sub h
    ld [$86c5], sp
    and c
    and b
    and d
    inc b
    ld [c], a
    rst $38
    ld a, [hl]
    ld b, [hl]
    ld b, $00
    ld bc, $0d98
    dec c
    adc e
    dec c
    ld [bc], a
    ld a, [hl]
    pop hl
    sbc [hl]
    ld a, d
    and e
    nop
    sub l
    adc d
    xor d
    sbc [hl]
    cp $04
    ldh [rDMA], a
    add b
    ld b, [hl]
    inc c
    dec c
    sbc d
    sbc b
    rst $28
    sbc b
    sbc b
    nop
    ld bc, $e0bf
    add c
    ld b, [hl]
    sbc [hl]
    ret nc

    ld a, d
    and e
    nop
    sub l
    adc d
    and l
    add [hl]
    and d
    sbc [hl]
    ld b, l
    pop bc
    add b
    ld b, [hl]
    daa
    ld b, [hl]
    ld [bc], a
    rlca
    ld a, a
    ldh [$bf], a
    pop hl
    inc c
    ret nz

    ldh [rP1], a
    pop hl
    ld hl, sp+$00
    sub $0c
    xor d
    ret nz

    db $e3
    add [hl]
    add e
    ld b, l
    dec hl
    dec hl
    ccf
    ld [bc], a
    rrca
    sbc b
    sub a
    sbc b
    sbc b
    ret nz

    ld [c], a
    nop
    reti


    db $fc
    inc c
    xor e
    add b
    ld [c], a
    xor [hl]
    add l
    adc e
    ld b, d
    jr nz, jr_064_589d

    ld a, a
    cp l
    ld [bc], a
    sbc c
    sbc b
    sbc b
    sbc e
    ld b, $40
    pop hl
    db $fc
    nop
    reti


    inc c
    xor h
    sbc [hl]
    ld b, [hl]
    ld b, l
    ld b, l
    xor a
    ld b, l
    ld a, a
    add b
    ld b, b
    ld hl, $2020
    ld a, [hl+]
    ld [$e000], sp
    add a

jr_064_589d:
    dec b
    add e
    add h
    nop
    db $e3
    nop
    sub l

jr_064_58a4:
    ld [$0bc5], sp
    and h
    sbc h
    rst $38
    ld b, [hl]
    add hl, sp
    jr c, jr_064_58e5

    ld [hl], $6b
    ld l, h
    dec [hl]
    db $fd
    ld hl, $e0c0
    dec c
    inc b
    inc bc
    add e
    add [hl]
    add l
    ldh a, [rP1]
    db $e3
    nop
    sub h
    db $10
    ld h, h
    dec bc
    and a
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    rst $38
    dec [hl]
    ld l, [hl]
    ld l, a
    ld l, h
    ld b, b
    ld b, c
    ld b, l
    ld [$0203], sp
    ld b, [hl]
    pop bc
    pop hl
    nop
    db $e4
    nop
    sub d
    inc c
    add l
    call z, Call_000_0983
    and b
    rst $30
    ld b, [hl]
    ld b, h
    inc a

jr_064_58e5:
    ret nz

    ldh [$ac], a
    ld l, [hl]
    ld [hl], b
    adc b
    add a
    adc c
    add e
    dec bc
    pop bc
    db $e3
    nop
    reti


    adc [hl]
    ld h, l
    pop bc
    db $e3
    xor a
    db $fc
    rst $00
    add b
    ret nz

    ld [c], a
    xor l
    dec [hl]
    ld [hl], $45
    add l
    add a
    rst $08
    adc b
    adc b
    add a
    add l
    or l
    add c
    nop
    ret c

    and b
    and b
    ld [hl], d
    adc [hl]
    ld h, e
    sbc [hl]
    adc l
    add c
    add $a0
    xor a
    ld b, [hl]
    add hl, sp
    ld b, c
    ldh [$8f], a
    dec [hl]
    dec sp
    ld [hl], $45
    ld [hl], e
    ld [c], a
    jr c, jr_064_58a4

    or c
    and b
    and c
    ret nz

    nop
    db $db
    db $10
    ld h, c
    adc c
    and b
    ld c, h
    add b
    ld c, c
    add b
    ld bc, $36e1
    ld b, c
    add e
    ld b, e
    ld b, l
    or d
    ld [c], a
    cp h
    db $e3
    db $fd
    ld h, b
    nop
    jp c, Jump_064_6110

    and c
    db $fc
    ld b, e
    pop hl
    ld c, c
    add b
    ld b, l
    ld [hl], $35
    dec [hl]
    inc a
    ld b, h
    ret nz

    pop bc
    ld h, l
    db $ec
    pop hl
    cp [hl]
    ld h, c
    nop
    db $dd
    adc [hl]
    ld h, b
    pop bc
    pop hl
    ld b, l
    ld b, c
    ld bc, $c245
    pop bc
    ld b, h
    ldh [$80], a
    ld h, h
    pop bc
    db $e4
    nop
    sbc d
    db $10
    ld b, c
    pop bc
    pop hl
    dec c
    xor [hl]
    add h
    ldh [$a6], a
    ld [hl], $80
    ldh [rTIMA], a
    db $e3
    ld [bc], a
    db $e4
    add d
    db $e3
    or $00
    db $db
    jp nc, Jump_000_02d3

    pop hl
    xor a
    ld b, l
    ld [hl], $62
    sbc a
    and a
    ld h, [hl]
    ld [hl], $45
    ccf
    dec b
    db $e3
    ld a, d
    add b
    sbc h
    ldh [$bb], a
    ld b, c
    add d
    db $e4
    nop
    reti


    add d
    jp nz, $e1c1

    ld h, a
    and e
    ld l, b
    ld c, b
    cp a
    ldh [$87], a
    push bc
    ld [$a0e2], sp
    add d
    db $e4
    nop
    db $db
    sbc [hl]
    ld b, $c0
    ccf
    ld b, d
    xor b
    xor c
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    pop hl
    ld a, [$50a1]
    add h
    ldh [$08], a
    db $e4

jr_064_59bf:
    nop
    ld e, e
    nop

jr_064_59c2:
    jp $c39e


    pop bc
    ld [hl], $4b
    and b
    rst $38
    dec [hl]
    and e
    xor d
    xor e
    xor h
    ld b, l
    ld b, [hl]
    xor a
    add b
    ld c, l
    pop bc
    ld [$04e4], sp
    add e
    ret c

    and c
    nop
    rst $10
    jp nz, $bfa2

    ld [c], a
    ld l, h
    rra
    ld l, a
    ld l, [hl]
    xor l
    ld b, l
    xor [hl]
    pop bc
    ld [c], a
    add [hl]
    jr z, jr_064_59bf

    dec c
    ld hl, sp+$00
    call $a1c2
    add b
    pop bc
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, [hl]
    ld [hl], $87
    ld b, l
    xor [hl]
    xor a
    rst $08
    ld b, b
    ld [$04e8], sp
    ld c, e
    nop
    sub c
    and c
    inc b
    ld c, $40
    ccf
    jp nz, $c16e

    ldh [rPCM12], a
    and b
    adc a
    ld h, b
    add d
    jp hl


    inc b
    ld c, d
    sub [hl]
    nop
    db $d3
    ld b, [hl]
    xor [hl]
    cp a
    and d
    ld [hl], $82
    ldh [$c2], a
    jr nz, jr_064_59c2

    inc c
    adc d
    add $e0
    add c
    and b
    and b
    ret nc

    dec l
    nop
    call Call_000_200e
    add b
    ldh [rP1], a
    rst $38
    add c
    ld b, e
    ldh [$8f], a
    add c
    inc c
    ret nc

    call z, $0029
    call $e27e
    ld a, $e1
    nop
    cp c

jr_064_5a46:
    and b
    dec sp
    add b
    call z, $0c00
    rst $08
    adc $09
    inc b
    ld d, b
    ld a, [bc]
    inc hl
    rlca
    jr nz, jr_064_5a56

jr_064_5a56:
    pop bc
    ld [c], a
    ld l, [hl]
    ld h, $d6
    dec c
    nop
    sub c
    ld a, [hl]
    and $4e
    ld b, $8a
    and c
    db $ec
    inc bc
    inc b
    sub $0d
    nop
    ld e, b
    sbc a
    pop bc
    ld b, c
    ld c, $a3
    adc d
    and [hl]
    ld [bc], a
    ld a, [c]
    nop
    ld c, a
    nop
    db $fc
    jp $a114


    db $fc
    push hl
    adc [hl]
    inc hl
    ld [bc], a
    di
    nop
    ld c, a
    ld a, [hl]
    add hl, hl
    inc c
    xor c
    nop
    ld [bc], a
    di
    nop
    ld c, l
    db $fc
    push bc
    db $fc
    db $eb
    ld [$00d1], sp
    ld d, b
    or $04
    sub [hl]
    and l
    nop
    ld hl, sp-$17
    ld [bc], a
    push af
    nop
    ld c, c
    or $05
    jr jr_064_5a46

    db $fc
    db $eb
    ld [bc], a
    push af
    nop
    ld c, c
    nop
    ld hl, sp-$55
    ld a, d
    db $eb
    ld [bc], a
    push af
    nop
    ld c, c
    ld hl, sp-$57
    db $fc
    db $ed
    ld [bc], a
    push af
    nop
    call z, $fc00
    rst $38
    nop
    jp c, $fffc

    nop
    db $db
    db $fc
    rst $38
    nop
    db $db
    db $fc
    rst $38
    nop
    rst $18
    nop
    db $fc
    rst $38
    nop
    db $dd
    db $fc
    rst $38
    nop
    db $db
    db $fc
    rst $38
    nop
    db $db
    db $fc
    rst $38
    nop
    adc c
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
    ld hl, $0212
    ld bc, $1328
    ld [bc], a
    ld [bc], a
    dec e
    ld d, $02
    inc bc
    rra
    ld a, [de]
    ld [bc], a
    inc b
    jr jr_064_5b2c

    ld [bc], a
    dec b
    ld hl, $021e
    ld b, $17
    rra
    ld [bc], a
    rlca
    ld a, [de]
    rra
    ld [bc], a
    ld [$1f2c], sp
    ld [bc], a
    add hl, bc
    inc d
    jr nz, jr_064_5b25

    ld a, [bc]
    dec h

jr_064_5b25:
    jr nz, jr_064_5b29

    dec bc
    dec d

jr_064_5b29:
    ld hl, $0c02

jr_064_5b2c:
    jr jr_064_5b4f

    ld [bc], a
    dec c
    add hl, hl
    ld hl, $0e02
    inc d
    ld [hl+], a
    ld [bc], a
    rrca
    jr z, @+$24

    ld [bc], a
    db $10
    inc de
    inc hl
    ld [bc], a
    ld de, $2412
    ld [bc], a
    ld [de], a
    inc d
    inc h
    ld [bc], a
    inc de
    jr nz, jr_064_5b6e

    ld [bc], a
    inc d
    inc hl
    inc h
    ld [bc], a

jr_064_5b4f:
    dec d
    inc de
    dec h
    ld [bc], a
    ld d, $12
    ld h, $02
    rla
    ld e, $26
    ld [bc], a
    jr jr_064_5b6e

    daa
    ld [bc], a
    add hl, de
    jr nz, jr_064_5b89

    ld [bc], a
    ld a, [de]
    dec e
    jr z, jr_064_5b69

    dec de
    ld [de], a

jr_064_5b69:
    add hl, hl
    ld [bc], a
    inc e
    rra
    add hl, hl

jr_064_5b6e:
    ld [bc], a
    dec e
    inc de
    ld a, [hl+]
    ld [bc], a
    ld e, $14
    ld a, [hl+]
    ld [bc], a
    rra
    ld e, $2a
    ld [bc], a
    jr nz, jr_064_5b92

    dec hl
    ld [bc], a
    ld hl, $2b1f
    ld [bc], a
    ld [hl+], a
    inc de
    inc l
    ld [bc], a
    inc hl
    inc d

jr_064_5b89:
    inc l
    ld [bc], a
    inc h
    inc e
    inc l
    ld [bc], a
    dec h
    dec d
    dec l

jr_064_5b92:
    ld [bc], a
    ld h, $16
    dec l
    ld [bc], a
    daa
    add hl, de
    dec l
    ld [bc], a
    jr z, jr_064_5bb8

    dec l
    ld [bc], a
    add hl, hl
    dec e
    dec l
    ld [bc], a
    ld a, [hl+]
    rla
    ld l, $02
    dec hl
    ld a, [de]
    ld l, $02
    inc l
    inc e
    ld l, $ff
    rst $38
    rst $38
    cp c
    ld e, e
    ld c, d
    ld e, a
    ld a, $64
    ld e, c

jr_064_5bb8:
    ld h, h
    rst $28
    dec c
    ld c, $0e
    ld c, $fc
    ld [$0e4d], a
    ld c, $09
    ld c, l
    db $eb
    ldh [$fc], a
    rst $28
    dec c
    jp hl


    pop hl
    call nc, $c4eb
    ldh [$fd], a
    push af
    ld bc, $a70d
    ldh [$fc], a
    push hl
    xor $e4
    and [hl]
    ldh [rIE], a
    rst $38
    sub d
    and $fe
    ldh [$1f], a
    ld c, l
    ld c, l
    ld c, l
    dec l
    dec l
    adc c
    ld [c], a
    ld l, [hl]
    push hl
    rst $38
    rst $38
    cp $80
    rst $20
    ld l, l
    ld l, e
    ld l, e
    dec c
    ld l, e
    dec c
    ld c, l
    ld bc, $7e2d
    rst $20
    ld d, [hl]
    db $f4
    ld [bc], a
    ld [$e504], a
    pop bc
    ldh [$c2], a
    ldh [$7b], a
    pop hl
    ld c, b
    ld a, [hl]
    jp hl


    cp $dd
    inc e
    rst $20
    ld c, l
    add d
    pop hl
    cp a
    pop hl
    ld l, e
    ld a, [hl]
    rst $38
    nop
    inc b
    db $ed
    ld a, [hl]
    pop bc
    add c
    pop hl
    rst $38
    ldh [$fb], a
    pop hl
    ei
    ret nz

    nop
    rst $38
    add d
    call z, Call_064_6d01
    ld b, e
    db $e3
    cp h
    pop hl
    ld a, c
    ldh [$7d], a
    ldh [rSC], a
    rst $38
    inc b
    rst $00
    call nz, Call_000_06c1

jr_064_5c39:
    inc bc
    pop hl
    ld a, [bc]
    ld a, [hl+]
    cp h
    db $e4
    db $76
    ret nz

    cp [hl]
    pop hl
    db $fc
    or c
    inc b
    db $d3
    ld a, $05
    ld [c], a
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    dec bc
    dec bc
    cp h
    ret nz

    ld sp, hl
    pop bc
    ldh a, [$fa]
    ret nz

    db $fc
    cp a
    sub [hl]
    xor b
    ld b, [hl]
    ret nz

    ld l, e
    ld a, [hl+]
    ld a, [bc]
    dec hl
    inc c
    ret nz

    ld [c], a
    ld a, b
    jp nz, $6d6b

    ld l, d
    jp nz, $bfbc

    add d
    pop hl
    ld b, c
    db $e4
    rra
    ld a, [bc]
    ld l, e
    dec bc
    ld c, e
    dec hl
    or [hl]
    and d
    ld a, c
    ret nz

    add b
    or $b0
    ld [hl-], a
    xor e
    add [hl]
    and c
    jp Jump_064_45c0


    pop bc
    ld a, [hl+]
    ld a, [hl+]
    add b
    ldh [$0a], a
    add hl, bc
    ld c, d
    ld [hl], l
    pop hl
    dec [hl]
    ret nz

    ld l, l
    nop
    rst $18
    jr jr_064_5c39

    call $83c2
    and b
    rrca
    ld c, e
    ld l, e
    ld c, e
    ld c, e
    ld a, e
    ldh [$7e], a
    and b
    dec [hl]
    ret nz

    ret nz

    ldh [$d8], a
    rst $38
    rst $38
    inc e
    db $e3
    adc [hl]
    db $e3
    dec c
    dec c
    ld bc, $2be0
    ld a, [bc]
    ld b, d
    cp [hl]
    ret nz

    dec l
    ld a, [c]
    pop bc
    nop
    ld [c], a
    rst $38
    rst $38
    ld a, $81
    dec l
    call nz, Call_000_0ea2
    ret nz

    ld [c], a
    dec bc
    dec hl
    dec bc
    jp nz, $77e0

    and c
    add b
    db $f4
    inc b
    adc a
    db $ec
    rla
    add b
    add [hl]
    and d
    dec c
    dec hl
    add b
    pop hl
    dec bc
    dec c
    dec l
    nop
    or c
    pop hl
    xor a
    and b
    nop
    rst $18
    ld [bc], a
    rst $00
    dec b
    and e
    add c
    ldh [$80], a
    ldh [$c1], a
    jp nz, Jump_000_0290

    jp nz, $df40

    add [hl]
    ld h, e
    ld [bc], a
    add c
    ld l, e
    ld b, a
    ret nz

    ld b, b
    pop hl
    ld l, e
    add e
    ld a, [bc]
    dec bc
    ld a, [hl-]
    and c
    add d
    jp nz, $ffc0

    cp [hl]
    ld h, l
    adc c
    add b
    ld a, [bc]
    add hl, de
    ld a, [hl+]
    add d
    and b
    ld b, b
    ret nz

    ld a, [hl+]
    ld a, [bc]
    ld b, c
    ld [c], a
    add b
    rst $30
    nop
    call Call_000_003c
    ld h, b
    call $4ac1
    ld a, [bc]
    ld a, [hl+]
    ld c, e
    ret nz

    ret nz

    ld sp, hl
    ldh [$e1], a
    dec bc
    inc bc
    ret nz

    ld a, d
    ld h, h
    nop
    rst $18
    ld a, [hl]
    push bc
    ld l, e
    ld l, e
    ld a, [bc]
    dec sp
    ld a, [bc]
    ld l, d
    add b
    pop bc
    ld a, [hl+]
    ld a, [bc]
    ld c, e
    ret nz

    pop hl
    ld c, d
    rst $38
    ld e, h
    ldh [$c5], a
    ld a, [hl]
    push bc
    dec hl
    ld a, [bc]
    ld a, [bc]
    cp a
    pop bc
    ld c, e
    ld a, a
    pop hl
    ld [hl], b
    add d
    jp $ffc0


    ldh [$c3], a
    ld [$2b82], sp
    ld a, [bc]
    ld c, d
    add b
    pop bc
    add l
    dec bc
    ld a, d
    add b
    ld c, e
    ld a, l
    and b
    nop
    sbc a
    ld hl, sp+$23
    ld a, [hl]
    call nz, Call_000_146b
    ld b, d
    add b
    add c
    pop hl
    dec hl
    ret nz

    ldh [rWX], a
    cp d
    ld b, c
    db $fc
    dec [hl]
    inc b
    ld d, e
    ld [de], a
    ret nz

    ldh [rWY], a
    jp nz, Jump_000_3f81

    and c
    ld c, d
    db $fc
    ld h, c
    ld a, [hl]
    ld h, h
    ld b, b
    rst $18
    inc b
    ld a, [hl]
    and h
    ccf
    pop hl
    ld l, e
    ret nz

    and c
    cp c
    ret nz

    ccf
    ret nz

    ld bc, $8180
    ld [hl+], a
    nop
    ret nz

    rst $38
    inc b
    ld b, h
    ret nz

    and b
    pop bc
    jp $c000


    ld b, c
    add e
    add b
    or $00
    ld d, b
    ld [$4043], sp
    add d
    ret nz

    add c
    jp nz, $ff4a

    ld h, c
    ld b, c
    add c
    nop
    rst $18
    add b
    rst $00
    nop
    cp a
    add c
    inc bc
    ld h, c
    nop
    jp Jump_064_4138


    ld a, [hl]
    ret c

    nop
    pop de
    ld b, $41
    pop bc
    jp nz, $bf20

    add d
    ld hl, sp+$21
    ld a, [hl]
    and e
    ret nz

    rst $38
    ld [bc], a
    ld b, l
    ld l, e
    add d
    add d
    cp $a2
    nop
    ld bc, $53e3
    inc d

jr_064_5ddb:
    nop
    db $d3
    rst $00
    ld hl, $e8c0
    add d
    ld b, h
    nop
    rst $18
    add b
    adc b
    ld [bc], a
    ret nz

    and $2b
    ld a, b
    ld bc, $e480
    ld b, b
    rst $18
    nop
    add d
    adc $42
    ret nz

    add sp, $00
    ld a, $22
    nop
    rst $18
    cp $48
    jp $c001


    add sp, -$80
    add hl, sp
    nop
    rst $08
    add b
    add h
    ld b, b
    add c
    call nz, $e2c0
    ret nz

    ld [hl+], a
    nop
    rst $18
    add b
    adc b
    ld a, a
    push hl
    dec hl
    ld bc, $c880
    ld [hl], h
    ld bc, $5f00
    add d
    ret z

    ld l, l
    ld c, c
    ld [bc], a
    ld b, b
    add d
    ld c, e
    ld c, e
    jr nz, jr_064_5ddb

    ld b, e
    nop
    ld e, a
    ld a, [$0da8]
    ld [c], a
    ld bc, $2b43
    di
    inc h
    nop
    ld e, a
    nop
    add d
    and h
    nop
    and e
    cp [hl]
    ld h, c
    ld b, c
    and $00
    and a
    nop
    rst $18
    cp $03
    adc $c1
    ld [bc], a
    nop
    add d
    ld c, e
    ret nz

    add sp, $40
    rst $18
    add d
    and l
    cp a
    ld [bc], a
    ret nz

    ld h, e
    ld [hl], h
    ld [hl+], a
    nop
    ld a, [hl]
    ld b, l
    nop
    rst $18
    add d
    jp nz, $c0c1

    ccf
    jp $c342


    ld b, c
    jp nz, $9f00

    ld [$26c4], sp
    pop bc
    add c
    ret nz

    db $e4
    dec hl
    add d
    pop bc
    ccf
    and e
    nop
    rst $18
    ld [bc], a
    and $00
    ccf
    add e
    cp l
    add c
    ld b, d
    jp nz, $8340

    ld b, [hl]
    rst $38
    add d
    push bc
    ret nz

    push hl
    ld [bc], a
    ld b, c
    nop
    add d
    jp $8140


    nop
    rst $18
    ld [bc], a
    add $81
    and e
    ret nz

    ld b, e
    ret nz

    and $00
    rst $18
    nop
    add d
    ld h, h
    ld b, d
    ld [hl+], a
    cp a
    add l
    ld [hl], a
    and d
    nop
    sbc a
    add b
    set 0, b
    db $e4
    ccf
    ld b, c
    add b
    add h
    add c
    ld [bc], a
    and a
    nop

jr_064_5eb1:
    rst $18
    add d
    inc hl
    call z, Call_064_7cc3
    add c
    ld b, c
    jp Jump_000_000d


    add d
    add d
    ret nz

    rst $38
    add b
    ld h, h
    rst $38
    jp Jump_064_41ba


    jp $0282


    and a
    nop
    rst $18
    nop
    jr jr_064_5eb1

    add b
    ld h, d
    cp [hl]
    pop bc
    dec b
    jr nz, @+$41

    ld [c], a
    add d
    and l
    nop
    rst $18
    add b
    ld h, a
    ld b, b
    ld b, b
    ld b, h
    add b
    ld b, c
    add d
    sub $00
    ld d, l
    ld a, a
    add c
    pop bc
    ld b, l
    dec bc
    inc b
    add h
    nop
    nop
    rst $18
    add b
    ld l, d
    ret nz

    ld [$78d4], a
    nop
    ld d, d
    db $fd
    and b
    jp nz, $bd60

    jr nz, jr_064_5f00

    dec l

jr_064_5f00:
    ld b, b
    db $e3
    add d
    call nz, $ff02
    ld a, [hl]
    ld h, a
    ld bc, $c0e6
    db $e3
    rst $38
    rst $38
    ld h, b
    db $fc
    adc h
    pop bc
    push bc
    nop
    jr nz, jr_064_5f1a

    ld e, a
    ld a, h
    sub c
    ld c, e

jr_064_5f1a:
    ld l, e
    inc bc
    and b
    ld [bc], a
    nop
    and b
    ld c, e
    add h
    add h
    ret nz

    push af
    ld l, $ef
    db $fc
    add d
    cp $a4
    pop bc
    pop hl
    nop
    inc b
    and h
    jp nc, $fe10

    ld d, [hl]
    ei
    ld h, d
    db $fd
    db $e3
    ld b, $9f
    db $fc
    inc sp
    db $fc
    rst $20
    nop
    inc b
    rst $18
    ld a, [$fc51]
    rst $20
    jp nc, $0059

    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    ld [$d2a0], a
    db $d3
    adc [hl]
    db $fc
    rst $28
    ret c

    reti


    and b
    rst $38
    pop hl
    call nc, $c4ed
    ldh [$df], a
    rst $30
    ldh [$e1], a
    ld [c], a
    db $fc
    jp hl


    sub $d7
    call nc, $f6d5
    db $fc
    pop hl
    and b
    and b
    db $fc
    rst $20
    ret nc

    pop de
    jp c, $cfdb

    sub $d7
    and b
    and b
    call nc, $c4ed
    pop hl
    db $e3
    db $e4
    db $e3
    push hl
    and $fc
    jp hl


    sub [hl]
    pop hl
    sub d
    db $e3
    sbc a
    and d
    sbc l
    rrca
    sbc l
    sbc l
    and d
    sbc a
    add a
    ldh [$7e], a
    push hl
    call nc, $c4ed
    pop hl
    rst $08
    rst $20
    add sp, -$17
    ld [$e9fc], a
    sub [hl]
    pop hl
    jp c, $ffdb

    ret nc

    pop de
    and b
    sbc a
    sbc h
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    rlca
    ld b, [hl]
    xor [hl]
    sbc h
    cp a
    ldh [$7e], a
    push hl
    call nc, $c4ed
    pop hl
    ld [bc], a
    db $ed
    or $14
    db $e3
    jp nc, $c1d3

    ldh [$ae], a
    ld b, [hl]
    xor a
    xor [hl]
    ld h, c
    xor a
    cp a
    ld [c], a
    db $fc
    rst $00
    cp $ce
    ld [bc], a
    db $eb
    and b
    and b
    add d
    db $e3
    cp a
    call nc, $9ed5
    ld b, [hl]
    ld b, [hl]
    xor a
    db $fd
    ldh [$ae], a
    add e
    xor a
    ld b, [hl]
    ld a, [hl]
    jp hl


    cp $cf
    ld [bc], a
    db $eb
    add d
    push hl
    ld b, d
    pop hl
    xor [hl]
    add hl, de
    ld b, [hl]
    rst $38
    ldh [$bc], a
    ldh [rDMA], a
    sbc h
    ei
    pop bc
    ld a, d
    jp $cffe


    db $ec
    ld [bc], a
    db $eb
    add d
    push hl
    sbc a
    sbc h
    ld b, e
    ldh [$79], a
    ld a, d
    ld a, h
    ld bc, $bc7d
    ldh [$b8], a
    ldh [$fb], a
    ret nz

    ld a, d
    jp $cffe


Jump_064_6013:
    inc b
    res 0, d
    rst $20
    rst $38
    xor a
    ld b, [hl]
    ld a, c
    ld a, [hl]
    ld c, b
    ld c, b
    adc [hl]
    ld a, e
    ld a, e
    ld a, h
    ld a, l

jr_064_6023:
    add hl, sp
    ldh [$ae], a
    sbc h
    sbc l
    sbc a
    add sp, -$5e
    ret c

    db $fc
    xor a
    inc b
    rlc h
    db $e3
    and b
    and c
    ld b, h
    ldh [$79], a

Jump_064_6037:
    ld a, [hl]
    ld a, a
    ld c, d
    ld h, b
    ld d, h
    ld b, c
    ld b, l
    ld b, [hl]
    ld a, a
    ld a, h
    ldh [$83], a
    xor a
    xor [hl]
    ld a, [$e8c0]
    and c
    db $fc
    xor a
    inc b
    call $e29a
    sbc [hl]
    cp $cf
    ldh [$80], a
    ld b, [hl]
    ld d, l
    ld h, c
    dec l
    jr nz, jr_064_6087

    inc sp
    ld b, [hl]
    xor [hl]
    cp a
    ldh [$79], a
    ret nz

    ld b, [hl]
    sbc [hl]
    db $fc
    or e
    inc b
    call $86dc
    and c
    ld b, c
    ld [c], a
    add d
    add e
    ld c, d

jr_064_606f:
    ret nz

    pop hl
    ld b, l
    xor a
    inc [hl]
    cp a
    ldh [$79], a
    pop bc
    and c
    ld a, d
    and c
    and b
    and b
    nop
    db $db
    jr jr_064_6023

    ld a, [hl]
    jp Jump_064_46c1


    ld b, [hl]
    add l

jr_064_6087:
    adc e
    ld d, l
    ld d, h
    add b
    ldh [$5f], a
    ld c, c
    ld d, l
    xor a
    ld b, [hl]
    add c
    dec [hl]
    pop bc
    sbc [hl]
    nop
    ld [c], a
    db $e4
    nop
    call c, $a286
    sbc [hl]
    dec bc
    ret nz

    add l
    and b
    add b
    ld b, l
    ld b, l
    rst $38
    dec l
    ld h, $2d
    ld e, [hl]
    ld d, l
    ld b, [hl]
    add e
    add h
    ld h, d
    dec [hl]
    pop bc
    sbc [hl]
    add sp, -$7f
    nop
    rst $18
    add d
    add b
    sbc [hl]
    xor a
    add l
    and c
    rst $38
    ld b, [hl]
    add b
    xor [hl]
    ld b, l
    ld [hl], $35
    ld [hl], $53
    rrca
    ld b, h
    ld b, [hl]
    adc d
    add l
    rst $28
    pop hl
    nop
    ld [c], a
    nop
    rst $18
    add [hl]
    add b
    cp $42

Jump_064_60d3:
    jp nz, Jump_064_4646

    add b
    xor a
    add hl, sp
    dec [hl]
    dec [hl]
    rst $18
    dec [hl]
    ld [hl], $45
    add e
    add h
    cp b
    and c
    sbc h
    sbc a
    ldh a, [rP1]
    rst $18
    jr jr_064_606f

    ld b, h
    and b
    call nz, $8080
    ld b, l
    ld a, [hl-]
    dec [hl]
    ccf
    dec [hl]
    ld l, h
    ld [hl], d
    adc b
    add a
    add l
    cp b
    add b
    cp c
    add b
    db $ec
    nop
    rst $18
    add [hl]
    add h
    and b
    and c
    ld b, h
    and c
    xor a
    add d
    add e
    ccf
    inc a
    dec [hl]
    dec [hl]
    ld [hl], e
    ld l, [hl]
    ld b, d

Jump_064_6110:
    inc sp
    ld [c], a
    add d
    ret nz

    ld hl, sp+$00
    rst $18
    nop
    push bc
    cp a
    ret nz

    xor [hl]
    ld b, [hl]
    ld b, l
    add l
    add a
    ccf
    ld [hl], d
    ld l, h
    dec [hl]
    ld l, d
    ld [hl], $50
    ld a, $c0
    add d
    call nz, Call_000_00ec
    rst $18
    add d
    ld h, c
    ret nc

    pop de
    pop bc
    and b
    xor a
    ld b, [hl]
    ld c, d
    rst $38
    ld c, c
    ld c, b
    ld l, [hl]
    ld [hl], h
    dec [hl]
    ld l, d
    ld c, d
    ld e, l
    pop bc
    ld e, h
    ld [hl], a
    add b
    add d
    and e
    nop
    rst $18
    inc b
    add l
    ld b, l
    add b
    ld c, d
    ld h, c
    ld [hl], a
    ld h, b
    ld [hl], $69
    ret nz

    ldh [$61], a
    ld c, b
    ld b, l
    inc bc
    ret nz

    ld hl, sp-$18
    ld h, h
    nop
    rst $18
    ld a, [hl]
    push bc
    ld b, [hl]
    ld b, l
    ld e, e
    ld e, [hl]
    ld d, d
    ld c, $c0
    ldh [$36], a
    ld d, [hl]
    ld d, [hl]
    ret nz

    ld [c], a
    nop
    sbc a
    nop
    add a
    ld a, [hl]
    jp $45ff


    ld d, d
    ld d, [hl]
    ld l, c
    dec [hl]
    ld [hl], l
    ld h, [hl]
    ld b, e
    ld h, l
    ld c, b
    ld a, a
    ldh [$9e], a
    nop
    sbc a
    ld a, [$a042]
    and b
    ld a, [hl]
    push bc
    rst $08
    ld b, [hl]
    ld b, l
    ld b, a
    ld d, l
    ld b, b
    ldh [rIE], a
    ret nz

    ld h, b
    ld d, d
    rst $20
    ld b, l
    ld b, [hl]
    and c
    nop
    sbc a
    nop
    ld c, d
    sbc [hl]
    ld b, [hl]
    xor [hl]
    rst $38
    ld c, d
    ld h, b
    ld d, l
    ld h, d
    db $76
    dec [hl]
    ld l, h
    ld l, l
    pop bc
    ld c, a
    ld b, b
    ldh [$ba], a
    ld b, d
    nop
    rst $18
    nop
    ld b, l
    cp [hl]
    and c
    xor a
    ld c, d
    dec sp
    ld d, h
    add hl, sp
    add c
    ldh [$73], a
    ld l, [hl]
    ld c, e
    nop
    ldh [$ba], a
    ld b, d
    cp b
    nop
    rst $18
    nop
    ld b, l
    cp $a1
    ld b, [hl]
    ld b, l
    ld b, l
    ret nz

    pop hl
    ld l, d
    rrca
    ld [hl], $52
    ld h, c
    ld e, h
    nop
    add b
    ld a, [hl]
    add $00
    ld e, a
    inc b
    ld b, d
    rst $18
    xor a
    ld b, [hl]
    ld b, l
    ld c, e
    ld e, d
    ld bc, $49e2
    ld e, e
    ret nz

    or e
    add c
    ld a, [hl]
    call nz, $dd00
    ld a, [de]
    ld hl, $817e
    ld b, c
    ret nz

    ld c, e
    ld h, c
    dec b
    ld d, l
    pop bc
    jp nz, $ff61

    ld h, b
    ld b, c
    add c
    nop
    db $e3
    nop
    ld e, a
    inc b
    ld hl, $c076
    pop hl
    ld d, e
    ld d, e
    add c
    jp nz, Jump_064_5636

    ld d, l
    jr c, jr_064_6251

    ld [hl], b
    ld a, [hl]
    jp nz, $df00

    sub [hl]
    inc b
    ld b, c
    ret nz

    ld b, [hl]
    xor [hl]
    add hl, sp
    add c
    ret nz

    ld b, $00
    ret nz

    ld [hl], $44
    ld hl, sp+$21
    ld a, d
    ld [hl+], a

jr_064_6227:
    nop
    rst $18
    nop
    jp Jump_064_623f


    ld a, e
    xor a
    ld a, $02
    ret nz

    dec [hl]
    dec [hl]
    ld l, b
    ld h, [hl]
    ld a, a
    add c
    ret nc

    jp nz, $0041

    rst $18
    nop
    push bc

Jump_064_623f:
    add b
    add d
    ld b, [hl]
    ret nz

    db $e3
    dec [hl]
    ld l, d
    add c
    add hl, sp
    ld b, c
    ld b, c
    add d
    ld b, b
    nop
    rst $18
    nop
    push bc
    add b

jr_064_6251:
    add d
    ret nz

    and $3e
    nop
    or $01
    ld b, d
    ld b, b
    nop
    rst $18
    db $fc
    dec h
    add b
    add b
    add b
    add sp, -$40
    ldh [rP1], a
    and $3c
    nop
    rst $18
    nop
    add $46
    add hl, sp
    ld l, e
    ld l, h
    ret nz

    and $80
    ld hl, $0048
    rst $18
    nop
    add $fe
    ld b, d
    ld b, d
    pop bc
    ld h, b
    rst $38
    ld b, b
    ld l, l
    add b
    pop hl
    ld h, d
    ccf

Jump_064_6284:
    jr nz, jr_064_6227

    nop
    rst $18
    nop
    add $3f
    jp nz, Jump_000_3a45

    ld a, a
    pop bc
    scf
    ld [hl], e
    ld l, [hl]
    add hl, sp
    ld a, h
    ld bc, $aeaf
    nop
    ld e, a
    nop
    rst $00
    or $c0
    ld h, c
    xor [hl]
    ld b, [hl]
    ret nz

    add c
    dec [hl]
    ld l, d
    ld a, [hl-]
    ld b, l
    add [hl]
    or e
    ld b, c
    xor [hl]
    xor a
    nop
    ld e, a
    nop
    ld b, d
    ld a, [hl]
    inc hl
    ld c, $41
    ld b, [hl]
    ld bc, $0142
    add b
    ld b, c
    pop hl
    di
    ld hl, $5f00
    nop
    ld b, [hl]
    nop
    and e
    ld a, a
    ret nz

    ld bc, $4040
    add d
    ld b, c
    pop hl
    nop
    and a
    nop
    ld e, a
    jr jr_064_6311

    ld b, c
    add c
    ld a, $00
    ld h, b
    add b
    pop hl
    ld b, c
    ldh [$c0], a
    push hl
    nop
    rst $18
    nop
    ld b, l
    and b
    and c
    cp a
    nop
    add b
    ld b, b
    db $e3
    ld [bc], a
    jp $a33f


    nop
    ld e, a
    add d
    ld b, e
    add c
    ld b, d
    dec a
    jr nz, jr_064_6334

    inc bc
    ld l, e
    ld l, h
    ld b, d
    jp $c241


    nop
    sbc a
    nop
    ld b, h
    jp nz, Jump_064_5060

    ld bc, $ff1e
    and c
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    add hl, sp
    db $f4
    ld [c], a
    add b
    ld h, c
    nop
    rst $18
    ret c

jr_064_6311:
    nop
    ld b, c
    add d
    pop bc
    pop bc
    add d
    ld b, [hl]
    xor [hl]
    ret nz

    ld bc, $453a
    add b
    jp nz, Jump_064_4062

    add c
    nop
    rst $18
    nop
    add c
    add d
    pop bc
    pop bc
    add d
    ld c, e
    ld h, b
    ld a, $03
    dec [hl]
    dec [hl]
    add d
    call nz, Call_000_227f

jr_064_6334:
    nop
    rst $18
    nop
    ret nz

    add d
    ld h, d
    adc h
    db $e3
    add d
    ret nz

    pop hl
    ld b, d
    ret nz

    rst $20
    nop
    rst $18
    add d
    xor b
    ld a, $01
    add b
    pop hl
    ld b, b
    and b
    add e
    jp nz, $9f00

    nop
    ret z

    ld b, c
    ld h, e
    bit 0, c
    add hl, sp
    add b
    ld [c], a
    xor a
    jr nz, @+$04

    and d
    add sp, -$5f
    nop
    rst $18
    add d
    add a
    cp a
    jp Jump_000_033c


    ld h, d
    ld sp, $9800
    add d
    add d
    nop
    rst $18
    add d
    add c
    ret nc

    pop de
    ld b, d
    jr nz, jr_064_63c1

    jp $1939


    ld [hl], $c3
    add c
    nop
    ld b, b

Jump_064_637e:
    sbc h
    sbc a
    add d
    pop hl
    nop
    rst $18
    nop
    and e
    nop
    add b
    ld h, e
    ld a, l
    ld bc, $2045
    ld b, d
    ld h, c
    add d
    ld h, [hl]
    nop
    rst $18
    nop
    add d
    add b
    ld h, d
    ld c, a
    ld b, l
    ld b, e
    ld b, c
    ld b, e
    db $fd
    ldh [rP1], a
    and b
    xor [hl]
    add d
    call nz, Call_000_0078
    rst $18
    nop
    add h
    ld a, a
    add d
    ld [hl], $3b
    dec [hl]
    dec sp
    db $fd
    ldh [$e0], a
    dec a
    ldh [rDIV], a
    add c
    nop
    db $e3
    nop
    ld e, a
    ld a, [hl]
    add $af
    inc a
    and h
    dec e
    ld h, h
    rst $38

jr_064_63c1:
    ldh [$a5], a
    inc a
    ld b, h
    add d
    add $00
    ld e, a
    nop
    ld b, e
    cp $7f
    ld h, d
    ld b, d
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    dec c
    ld l, d
    cp l
    and b
    xor a
    sbc [hl]
    add d
    call nz, Call_064_6e02
    nop
    ld d, e
    ld a, [hl]
    ld h, d
    add b
    ret nz

    ldh [rSB], a
    ld b, d
    ld a, l
    and b
    add d
    push bc
    ld [bc], a
    rst $28
    nop
    ld d, e
    ld a, [hl]
    ld h, c
    xor [hl]
    xor a
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    rst $38
    ldh [$6d], a
    db $fd
    and b
    and c
    ld [$9404], sp
    nop
    ld d, e
    ld a, [hl]
    inc bc
    xor a
    ret nz

    rst $00
    call nz, Call_000_0400
    sub e
    nop
    ld d, b
    add d
    db $fc
    ld h, a
    xor a
    ld b, b
    push bc
    add l
    ld bc, $9304
    nop
    ld c, a
    db $fc
    ld h, [hl]
    and b
    inc bc
    sbc a
    sbc l
    rst $38
    push hl
    add d
    pop hl
    inc b
    sub e
    nop
    rst $08
    db $fc
    ld h, [hl]
    rst $38
    ld [$0400], a
    push de
    nop
    ld c, a
    db $fc
    ld h, l
    ld a, d
    add c
    db $fc
    rst $20
    inc b
    push de
    nop
    pop bc
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
    dec e
    inc b
    ld [bc], a
    ld bc, $041f
    ld [bc], a
    ld [bc], a
    dec de
    dec b
    ld [bc], a
    inc bc
    ld e, $05
    ld [bc], a
    inc b
    jr nz, jr_064_6472

    ld [bc], a
    dec b
    rra
    ld b, $02

jr_064_6472:
    ld b, $1a
    rlca
    ld [bc], a
    rlca
    jr jr_064_6481

    ld [bc], a
    ld [$0822], sp
    ld [bc], a
    add hl, bc
    dec h
    add hl, bc

jr_064_6481:
    ld [bc], a
    ld a, [bc]
    ld d, $0a
    ld [bc], a
    dec bc
    ld h, $0a
    ld [bc], a
    inc c
    rla
    dec bc
    ld [bc], a
    dec c
    ld hl, $020b
    ld c, $25
    dec bc
    ld [bc], a
    rrca
    daa
    dec bc
    ld [bc], a
    db $10
    ld [hl+], a
    inc c
    ld [bc], a
    ld de, $0c26
    ld [bc], a
    ld [de], a
    dec d
    dec c
    ld [bc], a
    inc de
    inc d
    ld c, $02
    inc d
    jr @+$10

    ld [bc], a
    dec d
    dec h
    ld c, $02
    ld d, $16
    rrca
    ld [bc], a
    rla
    dec de
    rrca
    ld [bc], a
    jr jr_064_64e3

    rrca
    ld [bc], a
    add hl, de
    add hl, de
    ld de, $1a02
    dec h
    ld de, $1b02
    ld d, $12
    ld [bc], a
    inc e
    inc hl
    ld [de], a
    ld [bc], a
    dec e
    dec d
    inc de
    ld [bc], a
    ld e, $17
    inc de
    ld [bc], a
    rra
    inc h
    inc de
    ld [bc], a
    jr nz, jr_064_64f2

    inc d
    ld [bc], a
    ld hl, $1918
    ld [bc], a
    ld [hl+], a

jr_064_64e3:
    dec h
    add hl, de
    ld [bc], a
    inc hl
    ld h, $1a
    ld [bc], a
    inc h
    rla
    dec de
    ld [bc], a
    dec h
    dec h
    dec de
    ld [bc], a

jr_064_64f2:
    ld h, $23
    inc e
    ld [bc], a
    daa
    add hl, de
    rra
    ld [bc], a
    jr z, jr_064_6512

    jr nz, jr_064_6500

    add hl, hl
    inc h

jr_064_6500:
    jr nz, jr_064_6504

    ld a, [hl+]
    dec d

jr_064_6504:
    ld hl, $2b02
    rla
    ld hl, $2c02
    dec h
    ld hl, $2d02
    ld d, $22
    ld [bc], a

jr_064_6512:
    ld l, $17
    inc hl
    ld [bc], a
    cpl
    ld h, $24
    ld [bc], a
    jr nc, jr_064_6543

    dec h
    ld [bc], a
    ld sp, $2626
    ld [bc], a
    ld [hl-], a
    jr z, jr_064_654b

    ld [bc], a
    inc sp
    add hl, de
    daa
    ld [bc], a
    inc [hl]
    inc hl
    daa
    ld [bc], a

Call_064_652e:
    dec [hl]
    daa
    daa
    ld [bc], a
    ld [hl], $18
    add hl, hl
    ld [bc], a
    scf
    ld d, $2a
    ld [bc], a
    jr c, @+$1b

    ld a, [hl+]
    ld [bc], a
    add hl, sp
    dec h
    dec hl
    ld [bc], a
    ld a, [hl-]

jr_064_6543:
    ld h, $2c
    ld [bc], a
    dec sp
    dec d
    dec l
    ld [bc], a
    inc a

jr_064_654b:
    ld hl, $022d
    dec a
    inc d
    ld l, $02
    ld a, $16
    ld l, $02
    ccf
    ld a, [de]
    ld l, $02
    ld b, b
    dec d
    cpl
    ld [bc], a
    ld b, c
    jr jr_064_6592

    ld [bc], a
    ld b, d
    ld [hl+], a
    ld sp, $4302
    dec h
    ld sp, $4402
    inc h
    ld [hl-], a
    ld [bc], a
    ld b, l
    ld h, $32
    ld [bc], a
    ld b, [hl]
    dec de
    inc sp
    ld [bc], a
    ld b, a
    dec h
    inc sp
    ld [bc], a
    ld c, b
    ld d, $34
    ld [bc], a
    ld c, c
    jr nz, jr_064_65b5

    ld [bc], a
    ld c, d
    inc hl
    inc [hl]
    ld [bc], a
    ld c, e
    rla
    dec [hl]
    ld [bc], a
    ld c, h
    inc h
    ld [hl], $02
    ld c, l
    add hl, de
    scf
    ld [bc], a

jr_064_6592:
    ld c, [hl]
    inc hl
    scf
    ld [bc], a
    ld c, a
    inc h
    jr c, @+$04

    ld d, b
    jr jr_064_65d8

    ld [bc], a
    ld d, c
    add hl, de
    inc a
    rst $38
    rst $38
    rst $38
    xor h
    ld h, l
    cpl
    ld l, c
    add hl, de
    ld l, [hl]
    inc [hl]
    ld l, [hl]
    ld c, a
    dec c
    ld c, $0e
    ld c, $fc
    ld a, [$e0ff]

jr_064_65b5:
    ld c, l
    db $db
    ldh [$08], a
    db $fc
    pop af
    call nz, $ffe1
    rst $38
    dec c
    reti


    rst $38
    ei
    ld a, [$f582]
    ld l, d
    pop hl
    nop
    rst $38
    rst $38
    ld [hl], h
    rst $28
    ld [hl], b
    db $ed
    ld [bc], a
    ei
    inc b
    db $eb
    db $f4
    pop bc
    ldh a, [$c9]
    ld a, l

jr_064_65d8:
    db $fd
    sbc b
    inc b
    db $eb
    or l
    pop bc
    rst $38
    ldh [$2d], a
    dec l
    ld b, [hl]
    rst $38
    inc b
    ld a, [c]
    dec c
    ld l, a
    ld l, l
    ld l, e
    dec c
    ld l, e
    rst $38
    ldh [rKEY1], a
    dec l
    nop
    rst $38
    ld h, $08
    pop af
    ld l, l
    dec c
    ret nz

    pop hl
    cp l
    ldh [rKEY1], a
    ld a, [hl]
    rst $20
    nop
    jp c, $4d0d

    ld [$4de8], sp
    ld c, l
    add d
    ldh [$c1], a
    pop hl
    cp e
    pop hl
    ld a, [hl]
    push hl
    jr nz, jr_064_6634

    rst $18
    ld [$46e4], sp
    db $e4
    add c
    ld [c], a
    cp d
    pop hl
    ld l, l
    db $e4
    cp a
    inc b
    rst $00
    cp $46
    push hl
    ld l, e
    ld l, e
    dec hl
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    dec bc
    add b
    ld a, [hl-]
    pop hl
    ret nz

    ldh [$7e], a
    and d
    add b
    rst $38
    inc a
    and d
    ld b, [hl]

jr_064_6634:
    ld [c], a
    pop bc
    pop hl
    ld c, d
    add a
    ld a, [hl+]
    ld a, [bc]
    ld c, d
    db $fd
    pop bc
    add b
    add sp, -$02
    sbc c
    ld [$4da4], sp
    inc e
    ld b, [hl]
    db $e4
    pop bc
    ldh [$0b], a
    ld a, [hl+]
    ld a, [bc]
    ld a, l
    jp $df00


    cp $87
    cp $48
    jp Jump_064_6b0d


    dec bc
    dec bc
    dec bc
    ld c, e
    ld a, [bc]
    ld de, $7c0a
    jp nz, $bffc

    inc b
    and a
    ld l, l
    jp z, $02c2

    ldh [$c0], a
    pop hl
    dec bc
    ld c, d
    ld c, e
    ld a, [hl]
    jp nz, Jump_064_6a6d

    add d
    rst $38

Jump_064_6675:
    rst $38
    ld a, [hl-]
    pop bc
    add d
    db $e3
    ld a, [hl]
    jp nz, Jump_064_4be0

    ld c, e
    ld l, e
    ld c, e
    ld a, [bc]
    ld c, e
    ei
    and d
    ld b, c
    ld l, l
    jp nz, Jump_000_0ce4

    sub a
    ld d, l
    and b
    inc c
    and e
    ret nz

    ldh [$0d], a
    add h
    ld [c], a
    rrca
    dec bc
    dec bc
    ld l, e
    ld c, e
    ret nz

    and d
    pop bc
    ldh [rP1], a
    db $db
    rst $20
    pop bc
    ld sp, $c24d
    and b
    add b
    db $e4
    ld c, c
    and b
    dec hl
    dec c
    pop bc
    db $e4
    add d
    db $eb
    jr jr_064_66ed

    db $f4
    adc [hl]
    ld l, d
    add d
    ret nz

    ld l, e
    dec hl
    ret nz

    pop hl
    ld b, c
    ldh [$b8], a
    jp nz, $8200

    push hl
    nop
    rst $18
    add d
    call nz, $e442
    ld b, e
    db $e3
    ld sp, hl
    add b
    ld [bc], a
    and a
    nop
    ret nc

    jr nz, @+$0a

    push hl
    add d
    rst $00
    ld [bc], a
    db $e3
    cp a
    ret nz

    ld a, $a2
    dec l
    ldh a, [rDMA]
    ld bc, $04b3
    ld [$84e5], sp
    xor b
    dec hl
    ret nz

    ld [c], a
    add d
    ret nz

    add l
    and d
    inc c
    cp a

jr_064_66ed:
    inc c
    adc h
    ld b, $84
    jp Jump_064_4b0b


    ei
    add e
    ld b, [hl]
    pop bc
    inc b
    rst $38
    inc c
    add [hl]
    jp z, Jump_000_00a0

    ld b, h
    push bc
    add l
    add d
    add h
    call z, $ec06
    inc b
    add sp, $0c
    add h
    call z, $8880
    and c
    ld bc, $446b
    jp nz, $c184

    ldh a, [rNR44]
    sbc $87
    inc b
    di
    inc c
    add d
    adc d
    and c
    rlca
    ld a, [bc]
    ld c, d
    ld a, [bc]
    add hl, bc
    and c
    ld b, l
    add $cc
    ld a, d
    sub [hl]
    daa
    adc b
    jp Jump_064_6b03


    dec c
    rrca
    add c
    ld b, l
    jp nz, Jump_064_6284

jr_064_6736:
    jp nz, Jump_000_04e1

    ld a, a
    inc c
    jp $9706


    ld h, e
    ld a, [hl+]
    ld a, [hl+]
    ld c, d
    and d
    dec bc
    and h
    jp z, $08d1

    pop de
    sub a
    ld b, c
    nop
    rla
    ld h, d
    adc l
    add d
    adc e
    ld h, b
    ld [$cc61], sp
    add d
    inc b
    res 0, c
    xor c
    inc b
    add sp, $14
    adc $82
    dec bc
    and c
    ld a, [bc]
    ld c, l
    add e
    ld a, [hl+]
    adc h
    add b
    adc d
    xor b
    ld [$6edd], sp
    ld c, [hl]
    add h
    ld l, e
    dec bc
    ld a, [bc]
    ret nz

    ld [c], a
    dec c
    ld a, [bc]
    dec c
    add b
    ld d, b
    db $10
    add e
    ld [$8ebf], sp
    add l
    add d
    ld [c], a
    ld a, [bc]
    add l
    pop bc
    dec hl
    ld c, [hl]
    ld b, c
    ld bc, $762d
    dec l
    nop
    ld c, [hl]
    inc d
    ld b, [hl]
    adc [hl]
    add h
    ld b, d
    pop hl
    call nz, $c8c0
    and e
    ld bc, $8e6b
    add [hl]
    inc b
    ret


    add e
    sub c
    sbc [hl]
    inc bc
    ld d, l
    ld b, c
    ld c, e
    and e
    ret z

    and c
    jr nz, jr_064_6736

    dec hl
    inc d
    ld e, l
    jr jr_064_67cf

    pop bc
    and $7c
    ldh [$2d], a
    ld c, e
    ld hl, $230c
    ldh a, [rLCDC]
    ld de, $0f9e
    add a
    and c
    ld c, $84
    ld a, [bc]
    ld a, [hl+]
    ld a, [hl+]
    dec l
    inc bc
    dec l
    dec l
    ld c, $46
    ret nz

    pop af
    inc d
    ld c, c
    ld c, e
    and e
    ld d, c

jr_064_67cf:
    ld h, c
    db $10
    ld h, e
    dec c
    dec hl
    rrca
    ld b, b
    dec c
    dec l

jr_064_67d8:
    adc c
    add e
    db $10
    ld b, l
    call c, Call_000_162f
    ld c, a
    nop
    ld c, [hl]
    add h
    ret nz

    ldh [rLY], a
    ret nz

    ld b, d
    ld b, e
    ld c, $24
    nop
    db $db
    ld d, a
    ld h, $c0
    push hl
    inc bc
    ld a, [hl+]
    ld a, [bc]
    ld [bc], a
    pop hl
    add a
    ld bc, $028e
    cp h
    cp $d4
    ret nz

    rst $10
    ld hl, $8006
    push hl
    ld c, e
    ld c, e
    ld [bc], a
    ld [c], a
    adc e
    ld bc, $f480
    ld [$548b], sp
    ld b, e
    nop
    add c
    and $5a
    jr nz, jr_064_67d8

    ret nz

    rrca
    ld b, e
    db $10
    ld b, h
    ld [bc], a
    di
    inc d
    ld c, c
    inc b
    push bc
    nop
    ld b, b
    and b
    add l
    jp Jump_000_21b1


    sub b
    ld [$720c], sp
    add d
    and l
    ld d, h
    ld [hl+], a
    add e
    jp Jump_000_1500


    add b
    ld b, h
    db $e3
    inc b
    xor b
    inc c
    ld a, [hl]
    ld d, e
    ld b, l
    sub h
    inc h
    add e
    ld [c], a
    db $10
    ld c, h
    ld [bc], a
    ret c

    ld c, [hl]
    dec l
    add d
    and $41
    db $e3
    ld de, $d366
    ld b, c
    ld l, [hl]
    and e
    inc c
    adc l
    nop
    jp z, $b24a

    jr z, jr_064_68ad

    inc hl
    call z, Call_000_1484
    ld b, h
    ld [$8e9f], sp
    ld b, a
    ld b, [hl]
    and h
    nop
    rla
    ld [hl+], a
    db $fd
    ld h, c
    jp z, Jump_000_0481

    rst $38
    adc [hl]
    ld c, b
    ld b, [hl]
    and e
    ld d, l
    ld b, e

jr_064_6872:
    sub h
    inc l
    nop
    call nc, $8e13
    ld c, e
    sub h
    inc hl
    jp nc, $8b43

    and c
    add [hl]
    ret z

    ld b, $b0
    ld l, a
    xor c
    nop
    adc [hl]
    ld b, e
    call nz, $98c3
    inc bc
    adc e
    and d
    ld c, h
    cp a
    sbc d
    ld b, $86
    and l
    pop bc
    push hl
    nop
    ld d, [hl]
    ld bc, $ff04
    add d
    rst $20
    ld b, l
    jp nz, Jump_000_005c

    adc a
    add d
    or a
    add c
    add d
    add sp, $18
    ret nz

    rst $30
    db $10
    ld b, l
    db $db

jr_064_68ad:
    ld [bc], a
    ld l, e
    dec hl
    ld d, c
    ld h, h
    jr @+$29

    ld [$00d7], sp
    ret z

    ld h, a
    ld a, [bc]
    and c
    rla
    ld b, b
    add h
    ldh [$db], a
    inc bc
    ret nc

    add e
    ld c, h
    db $fd
    ld [$0347], sp
    dec c
    ld c, l
    ld e, l
    inc bc
    cp a
    pop hl
    ld c, h
    and a
    inc b
    rst $38
    ld [hl-], a
    ld b, a
    reti


    ld [hl+], a
    jr nz, jr_064_6956

    pop hl
    inc de
    jr nz, jr_064_6872

    inc hl
    inc c
    cp e
    adc d
    inc l
    ld c, l
    ld d, b
    ld h, [hl]
    inc c
    add d
    ld [$5514], sp
    ld [bc], a
    ld [hl], l
    ld a, [bc]
    add b
    ld c, e
    ld c, [hl]
    add d
    db $fc
    jp nz, $df0c

    nop
    rst $28
    dec e
    dec l
    cp a
    ld [c], a
    dec hl
    dec hl
    dec hl
    sub e
    jr nz, @-$64

    dec bc
    ret nz

    rst $38
    nop
    adc b
    add d
    cp a
    ld [c], a
    pop bc
    db $e3
    jr @+$35

    adc d
    inc a
    ld a, [hl]
    ld [c], a
    add d
    jp hl


    jr c, @+$25

    nop
    ld [bc], a
    db $fd
    cp $c6
    ld c, d
    ld hl, $6818
    rst $38
    rst $38
    ld [$0c32], sp
    jp z, $ff44

    nop
    adc b
    rrca
    ret c

    rst $38
    nop
    ld c, l
    nop
    nop
    nop
    rst $08
    and b
    call c, $dedd
    db $fc
    ld a, [$e2ff]
    ret c

    reti


    cp h
    db $fc
    ld a, [c]
    call nz, $dfe0
    ldh [$e1], a
    ld [c], a
    db $fc
    ld sp, hl
    sub $7f
    rst $10
    and b
    and b
    sub $d7
    jp c, $fcdb

    pop hl
    db $e3
    ret nc

    pop de
    db $fc
    rst $20
    db $ec

jr_064_6956:
    pop hl
    call nz, $e3e1
    db $e4
    push hl
    add hl, de
    and $fc
    ld sp, hl
    add [hl]
    jp hl


    jp nc, $fcd3

    rst $20
    ld l, [hl]
    pop hl
    call nz, $8fe1
    rst $20
    add sp, -$17
    ld [$f9fc], a
    add [hl]
    db $e3
    add d
    db $e3
    call nc, $d507
    and b
    and b
    db $fc
    db $e3
    ld a, [hl]
    db $e3
    call nz, $02e1
    rst $38
    add d
    jp hl


    inc c
    cp $e5
    ld a, [hl]
    push hl
    and b
    call c, $fb02
    inc b
    db $e3
    ld [$82e3], sp
    ldh [$b7], a
    sbc a
    and d
    sbc l
    rst $38
    ldh [$a2], a
    sbc a
    ld a, [hl]
    and $df
    ld sp, hl
    ldh [rSC], a
    ei
    ld [$9feb], sp
    sbc h
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld [hl], $ff
    ldh [$9c], a
    sbc a
    db $fc
    push bc
    db $e3
    db $e4
    ld [bc], a
    ei
    ld [$3fea], sp
    sbc a
    sbc h
    xor [hl]
    ld b, [hl]
    xor a
    ld b, [hl]
    cp l
    pop hl
    cp a
    ldh [$a6], a
    db $fc
    jp $e8e7


    inc b
    db $db
    ld [$9fe6], sp
    ld b, a
    ldh [$9c], a
    sbc e
    ld b, [hl]
    xor a
    add c
    ldh [$ae], a
    xor a
    ld a, e
    ldh [$7e], a
    push hl
    and b
    ld bc, $04a0
    db $db
    ld [$8ac1], sp
    pop bc
    ld b, [hl]
    push hl
    add c
    ldh [$c1], a
    ldh [$7b], a
    ldh [$c1], a
    sbc [hl]
    ld [hl], d
    pop bc
    db $e4
    and c
    inc b
    rst $18
    add d
    pop hl
    ld b, [hl]
    db $e3
    ld b, [hl]
    ld b, [hl]
    ld e, a
    ld b, l
    ld c, b
    ld c, b
    ld d, b
    ld b, l
    ld a, a
    pop hl
    sbc [hl]
    db $fc
    and l
    sbc [hl]
    inc b
    rst $18
    ret nc

    pop de
    and b
    and c
    ld b, [hl]
    ld [c], a
    pop bc
    pop hl
    ld e, [hl]
    rst $10
    ld h, b
    ld e, l
    ld d, l
    ld a, c
    pop hl
    sbc [hl]
    db $fc
    and e
    and b
    and b
    db $f4
    nop
    db $db
    adc d
    and h
    sbc [hl]
    ld b, [hl]
    ld [c], a
    xor [hl]
    ld b, [hl]
    ld d, c
    ld e, [hl]

jr_064_6a26:
    rlca
    ld d, d
    dec hl
    ld d, [hl]
    ret nz

    ldh [$7d], a
    jp nz, $a2f0

    nop
    call c, $a38a
    cp $48
    call nz, Call_064_46af
    cp l
    ld sp, $2e2c
    ld c, e
    dec c
    ld e, h
    cp e
    pop bc
    ld b, [hl]
    and c
    db $76
    and b
    nop
    rst $18
    inc c
    and d
    add hl, bc
    ret nz

    db $fc
    jp z, Jump_000_02c1

    ldh [$32], a
    jr nz, jr_064_6a74

    dec l
    ld e, [hl]
    ld b, h
    and b
    ld a, d
    ret nz

    ccf
    ldh [rOCPS], a
    add d
    nop
    rst $18
    inc c
    and b
    sbc [hl]
    add d
    db $e3
    ld b, l
    rst $38
    scf
    jr c, jr_064_6a26

    inc hl
    ld a, [hl+]

jr_064_6a6c:
    ld b, e

Jump_064_6a6d:
    ld e, e
    ld b, l
    jr nz, jr_064_6a6c

    and c
    cp l
    and b

jr_064_6a74:
    nop
    ret c

    rla
    and [hl]
    inc e
    and d
    sbc [hl]
    ld [$c2c1], sp
    ldh [$1f], a
    dec [hl]
    dec [hl]
    dec [hl]
    ld [hl], $45
    ret nz

    and d
    nop
    call c, $830c
    inc c
    inc b
    and l
    jp nz, Jump_000_39c3

    xor h
    pop bc
    db $e4
    add d
    and $00
    rst $10
    inc c
    adc h
    cp $82
    ret nz

    ld b, [hl]
    ld b, l
    ld a, [hl-]
    xor l
    dec [hl]
    dec [hl]
    ld a, [hl-]
    add l
    ld b, l
    add e
    db $e3
    sbc l
    nop
    and [hl]
    nop
    db $d3
    sub d
    ld l, c
    add d
    jp nz, Jump_000_1b46

    ld b, l
    ld [hl], $43
    ldh [$35], a
    add hl, sp
    add e
    push hl
    add d
    db $e4
    nop
    call nc, Call_000_10e8
    ld h, h
    sub d
    ld h, h
    adc e
    add d
    add hl, sp
    inc b
    ldh [$ac], a
    inc a
    ld b, h
    ld b, b
    add e
    add b
    ld b, [hl]
    pop bc
    nop
    sbc e
    inc c
    add l
    sbc d
    ld h, c
    adc [hl]
    ld h, b
    and c
    adc $80
    dec bc
    ld b, l
    ld a, [hl-]
    call nz, $adc0
    ld b, c
    ldh [$85], a
    and d
    add d
    and $00
    db $d3
    cp d
    inc c
    adc [hl]
    xor a
    ld b, d
    db $e3
    dec [hl]
    add hl, sp
    xor [hl]
    ld bc, $9e82
    jr c, jr_064_6af8

jr_064_6af8:
    ld h, [hl]
    nop
    db $d3
    inc c
    adc h
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, d
    pop hl
    ld b, h

Jump_064_6b03:
    pop bc
    add c
    xor a
    ccf
    add c
    inc b
    add d
    inc b
    db $e3
    nop

Jump_064_6b0d:
    adc [hl]
    inc d
    ld b, [hl]
    inc c
    adc b
    ld b, l
    db $db
    ld b, a
    ld d, l
    ld b, d
    pop hl
    jr c, jr_064_6b51

    ld b, h
    pop bc
    ld b, [hl]
    xor a
    ret nz

    add h
    ld h, c
    inc b
    ld b, l
    nop
    ld c, l
    inc c
    rst $00
    inc c
    add h
    sub e
    ld h, b
    ld b, l
    ld d, b
    rlca
    ld e, [hl]
    ld d, l
    inc a
    ld b, l
    res 0, [hl]
    and d
    ret z

    dec h
    inc d
    ld d, c
    inc c
    and c
    ld a, e
    sbc l
    and d
    inc de
    ld h, d
    xor a
    ld c, d
    ld e, l
    ld d, [hl]
    ld b, h
    pop bc
    ld bc, $ca39
    ld h, d
    add e
    db $e3
    ld hl, sp+$22
    ret z

    dec h
    db $10

jr_064_6b51:
    sub c
    inc c
    jp Jump_064_6013


    ld a, [hl]
    jp nc, Jump_064_5540

    ld d, d
    ld [hl], $35
    jr c, jr_064_6b9c

    ld b, e
    ldh [rP1], a
    dec bc
    and d
    db $f4
    ld h, b
    add [hl]
    and h
    ret z

    dec h
    ld [$97d2], sp
    ld b, d
    sbc c
    add d
    add hl, bc
    and c
    rrca
    ld a, [hl-]
    ld b, a
    ld e, l
    ld e, h
    adc d
    and c
    adc c
    and b
    add d
    add hl, hl
    add $03
    ret c

    ld [$8ed1], sp
    add c
    ld d, $62
    ld b, l
    ld d, b
    rst $00
    and c
    add hl, sp
    ld e, [hl]
    inc bc
    ld d, e
    ld b, l
    adc d
    and [hl]
    inc b
    ret


    add $01
    inc d
    ld d, c
    adc [hl]
    add c
    jr jr_064_6bdc

    rst $38

jr_064_6b9c:
    ld b, e
    ld c, d
    ld d, [hl]
    ld a, [hl-]
    ld h, d
    ld h, e
    ld h, h
    ld a, l
    rlca
    ld d, e
    ld b, h
    xor [hl]
    adc c
    jp nz, Jump_000_2904

    inc b
    add c
    add $01
    inc d
    ld c, a
    db $fc
    adc [hl]
    add e
    sub $20
    ld b, l
    ld c, e
    ld h, b
    ld d, l
    ld h, d
    ld h, a
    ccf
    dec [hl]
    inc a
    ld a, a

Jump_064_6bc1:
    ld a, l
    ld b, [hl]
    xor a
    ld c, e
    and b
    adc [hl]
    ld b, e
    ldh a, [rDIV]
    ret


    add $01
    inc d
    ld c, a
    adc [hl]
    add h
    xor a
    ld b, [hl]
    ld b, h
    ld d, e
    rla
    ld d, e
    ld [hl], $69
    inc c
    add c
    add c

jr_064_6bdc:
    adc e

Call_064_6bdd:
    and c
    adc d
    xor b
    call z, $f429
    inc d
    ld c, c
    sbc [hl]
    ld b, $a1
    ld d, l
    ld b, c
    scf
    jr c, jr_064_6c28

    dec [hl]
    inc bc
    ld h, d
    db $76
    ret z

    and c
    ret nz

    ldh [$8a], a
    and [hl]
    ld [hl], d
    ld bc, $49ce
    inc c
    adc c
    ld hl, sp-$62
    dec b
    ld c, [hl]
    add e
    ld b, $e0
    ld h, h
    ld a, b
    ld [hl], $4b
    ld c, c
    rlca
    ld b, h
    add e
    add h
    ld c, e
    jr nz, jr_064_6c1c

    ld hl, $65e8
    call z, Call_000_0c29
    adc c
    sbc h
    sub [hl]
    ld [hl+], a
    ld d, a
    ld [hl+], a

jr_064_6c1c:
    ld b, [hl]
    ld b, [hl]
    add hl, sp
    ld b, $e0
    adc $60
    ld c, e
    rra
    ld d, h
    ld d, e
    add e

jr_064_6c28:
    add [hl]
    add l
    ld c, $42
    db $10
    ld b, e
    inc c
    ld b, c
    ret nc

    call z, Call_000_1429
    ld c, e
    ld c, e
    and e
    call nz, Call_000_3ac1
    ld b, $e0
    dec [hl]
    dec [hl]
    ccf
    ld a, $5e
    ld c, b
    ld b, l
    adc d
    add l
    adc c
    add e
    db $10
    ld b, e
    ld d, b
    jp nc, $140d

    ld c, e
    ld d, $45
    ld b, d
    ldh [rPCM12], a
    ret nz

    db $e3
    ld d, [hl]
    jp nz, Jump_000_00c1

    ld c, [hl]
    ld [hl+], a
    db $10
    ld b, e
    call nc, Call_000_142d
    ld c, e
    db $d3
    ld h, c
    ld d, a
    ld hl, $e342
    add b
    ldh [$03], a
    ld d, [hl]
    ld d, l
    ld [bc], a
    pop hl
    adc e
    ld bc, $6089
    inc c
    push bc
    call z, Call_000_1429
    ld c, e
    inc hl
    sbc a
    sbc h
    rst $10
    inc hl
    ld b, d
    db $e3
    ld c, $60
    ld b, e
    ld [bc], a
    ld [c], a
    inc bc
    and b
    ld h, b
    inc b
    and c
    inc c
    push bc
    adc $09
    ld [$168b], sp
    inc h
    ld b, h
    inc a
    ret nz

    db $e3
    rrca
    ld [hl], $83
    adc c
    add a
    ld [bc], a
    db $e3
    db $10
    dec h
    cp $ce
    ld [$5c8b], sp
    ld d, h
    ld b, d
    add e
    ret nz

    dec [hl]
    ld l, e
    ld l, h
    adc $60
    ccf
    add l
    jp nz, $ae03

    xor a
    push bc
    add c
    db $10
    ld b, l
    jp nc, Jump_000_080d

    adc h
    ld d, h
    ld [hl+], a
    pop de
    ld b, b
    ccf
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    adc b
    adc b
    adc b
    add e
    ldh [$8d], a
    ld h, l

jr_064_6cc9:
    nop
    inc c
    ld h, l
    jp nc, Jump_000_080d

    adc [hl]
    ld c, h
    add b
    inc de
    ld b, d
    sub h
    ld [hl+], a
    ld c, d
    add c
    jp nc, $0021

    db $10
    ld b, a
    sub $0d
    db $10
    ld c, e
    ld b, c
    ld [c], a
    inc de
    ld b, c
    ld de, $d362
    ld b, d
    adc [hl]
    ld h, [hl]
    nop
    inc c
    add a
    nop
    rrc h
    ld l, c
    ld d, l
    inc hl
    ret c

    ld bc, $028d
    inc d
    ld b, d
    sub d
    daa
    nop
    nop
    db $d3
    adc [hl]
    ld c, c

Call_064_6d01:
    ld b, [hl]
    and d
    rla
    ld [hl+], a
    jr c, jr_064_6cc9

    dec bc
    ret nz

    inc c
    sub c

Jump_064_6d0b:
    nop
    rlc b
    adc [hl]
    ld c, d
    ld b, [hl]
    and c
    rla
    ld [hl+], a
    adc e
    and h
    adc d
    add d
    inc c
    adc l
    nop
    jp z, Jump_064_4a8e

    nop
    sub h
    inc hl
    ld e, c
    nop
    ld a, [hl-]
    and c
    adc [hl]
    ld b, b
    add hl, bc
    add b
    inc c
    sub b
    adc $09
    adc [hl]
    ld c, e
    nop
    sub a
    ld [bc], a
    add [hl]
    pop bc
    ld b, b
    ld h, c
    adc e
    and c
    inc d
    ld b, d
    inc c
    adc l
    adc $09
    adc [hl]
    ld b, a
    nop
    ld h, e
    ld [bc], a
    sub a
    nop
    ld b, a
    pop bc
    cp e
    add c
    ld d, [hl]
    inc bc
    ld [$cad5], sp
    dec b
    db $10
    ld b, a
    nop
    adc $41
    sub a
    nop
    add l
    jp nz, Jump_000_2118

    ld d, b
    ld b, c
    ld [$cad7], sp
    dec b
    add d
    and $0b
    ld b, l
    ld b, c
    ld h, c
    nop
    ld b, d
    add hl, de
    ld hl, $e244
    jr jr_064_6d91

    ld [$b8d7], sp
    ret z

    dec h
    adc d
    ld h, d
    jp z, Jump_064_4580

    ld [hl], $a6
    adc [hl]
    and b
    ld b, l
    ret nz

    db $db
    ld [bc], a
    ld b, l
    db $e4
    ld [$fada], sp
    push bc
    adc d
    add h
    rst $08
    ld h, b
    and a
    ld h, [hl]
    and b
    ld c, l
    and e

jr_064_6d8f:
    ld c, h
    and l

jr_064_6d91:
    ld [$fadb], sp
    push bc
    adc d
    add d
    and c
    sub b
    ld h, b
    ld h, a
    inc bc
    and e
    ld l, b
    cp a
    db $e3
    sub [hl]
    inc hl
    inc c
    xor c
    ld [$0091], sp
    rst $00
    db $10
    ld b, c
    ccf
    ld b, d
    xor b
    xor c
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    db $e3
    push de
    jr nz, @-$0e

    sub [hl]
    add hl, hl
    ld b, $f6
    nop
    push bc
    db $10
    ld hl, $3645
    ld l, [hl]
    ld l, a
    rra
    ld l, h
    dec [hl]
    and e
    xor d
    xor e
    adc d
    add b
    inc c
    and c
    adc d
    and a
    ldh a, [rTMA]
    rst $30
    nop
    rst $00
    ld [bc], a
    ret nz

    cp a
    ld [c], a
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $01
    ld b, l
    sub [hl]
    ld h, h
    inc d
    ld d, c
    nop
    push de
    cp a
    push hl
    pop bc
    db $e3
    sbc [hl]
    rlca
    ld [$00d9], sp
    nop
    jp z, $e47e

    add d
    rst $28
    ld [bc], a
    db $fd
    nop
    jp $e27e


    adc b
    jr nz, jr_064_6d8f

    ld h, c
    nop
    add d
    jp hl


    ld [$00d9], sp

Call_064_6e02:
    ret


    ld [$0c25], sp
    rrc b
    db $db
    nop
    rst $00
    ld a, [hl]
    push hl
    jr @-$68

    ld l, e
    db $ec
    ld b, e
    ld [bc], a
    db $fd
    rst $20
    add sp, $00
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
    cpl
    rlca
    ld [bc], a
    ld bc, $082d
    ld [bc], a
    ld [bc], a
    ld [hl-], a
    ld [$0302], sp
    ld l, $09
    ld [bc], a
    inc b
    ld sp, $0209
    dec b
    inc [hl]
    add hl, bc
    ld [bc], a
    ld b, $29
    ld a, [bc]
    ld [bc], a
    rlca
    inc sp
    ld a, [bc]
    ld [bc], a
    ld [$0b27], sp
    ld [bc], a
    add hl, bc
    dec [hl]
    dec bc
    ld [bc], a
    ld a, [bc]
    jr z, @+$0e

    ld [bc], a
    dec bc
    dec hl
    dec c
    ld [bc], a
    inc c
    daa
    ld c, $02
    dec c
    inc sp
    ld c, $02
    ld c, $36
    ld c, $02
    rrca
    add hl, hl
    rrca
    ld [bc], a
    db $10
    inc [hl]
    rrca
    ld [bc], a
    ld de, $1025
    ld [bc], a
    ld [de], a
    ld h, $11
    ld [bc], a
    inc de
    ld [hl-], a
    ld de, $1402
    add hl, hl
    ld [de], a
    ld [bc], a
    dec d
    cpl
    inc de
    ld [bc], a
    ld d, $24
    dec d
    ld [bc], a
    rla
    ld a, [hl+]
    dec d
    ld [bc], a
    jr jr_064_6ec7

    dec d
    ld [bc], a
    add hl, de
    inc hl
    ld d, $02
    ld a, [de]
    inc l
    rla
    ld [bc], a
    dec de
    ld l, $17
    ld [bc], a
    inc e
    cpl
    jr jr_064_6eab

    dec e
    rra

jr_064_6eab:
    ld a, [de]
    ld [bc], a
    ld e, $2a
    ld a, [de]
    ld [bc], a
    rra
    inc e
    dec de
    ld [bc], a
    jr nz, jr_064_6ee0

    dec de
    ld [bc], a
    ld hl, $1c1a
    ld [bc], a
    ld [hl+], a
    dec e
    inc e
    ld [bc], a
    inc hl
    jr jr_064_6ee1

    ld [bc], a
    inc h
    dec de

jr_064_6ec7:
    dec e
    ld [bc], a
    dec h
    rla
    ld e, $02
    ld h, $26
    rra
    ld [bc], a
    daa
    add hl, de
    jr nz, jr_064_6ed7

    jr z, jr_064_6efe

jr_064_6ed7:
    inc hl
    ld [bc], a
    add hl, hl
    dec d
    dec h
    ld [bc], a
    ld a, [hl+]
    dec h
    dec h

jr_064_6ee0:
    ld [bc], a

jr_064_6ee1:
    dec hl
    ld de, $0226
    inc l
    daa
    ld h, $02
    dec l
    db $10
    daa
    ld [bc], a
    ld l, $26
    daa
    ld [bc], a
    cpl
    ld [de], a
    jr z, jr_064_6ef7

    jr nc, jr_064_6f1a

jr_064_6ef7:
    add hl, hl
    ld [bc], a
    ld sp, $2a22
    ld [bc], a
    ld [hl-], a

jr_064_6efe:
    ld de, $022b
    inc sp
    inc e
    dec l
    ld [bc], a
    inc [hl]
    jr jr_064_6f36

    ld [bc], a
    dec [hl]
    ld a, [de]
    cpl
    ld [bc], a
    ld [hl], $0f
    jr nc, jr_064_6f13

    scf
    inc e

jr_064_6f13:
    jr nc, jr_064_6f17

    jr c, jr_064_6f2e

jr_064_6f17:
    ld sp, $3902

jr_064_6f1a:
    dec de
    ld sp, $3a02
    inc c
    ld [hl-], a
    ld [bc], a
    dec sp
    ld d, $33
    ld [bc], a
    inc a
    inc de
    inc [hl]
    ld [bc], a
    dec a
    rla
    inc [hl]
    rst $38
    rst $38

jr_064_6f2e:
    rst $38
    scf
    ld l, a
    cp h
    ld [hl], c
    inc e
    ld [hl], l
    scf

jr_064_6f36:
    ld [hl], l
    rrca
    dec c
    ld c, $0e
    ld c, $fc
    rst $38
    ld hl, sp-$09
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    ld a, [de]
    push af
    ld c, l
    ld c, l
    ld c, l
    ld h, l
    dec c
    db $fc
    db $e4
    ld c, l
    cp $df
    sbc b
    rst $28
    ld c, l
    ld c, l
    db $fc
    rst $20
    nop
    rst $38
    rst $38
    ret nz

    ldh a, [$81]
    ret nz

    db $fc
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    db $10
    add $00
    dec c
    db $e4
    ld a, [hl]
    rst $20
    db $f4
    jp $ff02


    inc b
    jp hl


    db $f4
    pop de
    rst $38
    rst $38
    inc b
    rst $28
    ld h, b
    ld hl, sp-$21
    ld [hl+], a
    ld hl, sp-$34
    rst $38
    ld [$8ad2], sp
    push hl
    dec c
    dec c
    ld hl, sp-$36

jr_064_6f90:
    jr jr_064_6f90

    rst $18
    inc b
    ld [$e0c2], a
    ld c, l
    dec l
    ld a, [hl]
    rst $38
    ret z

    or c
    inc c
    ld [c], a
    ccf
    ld l, l
    dec c
    dec bc
    dec bc
    ld c, l
    dec l
    nop
    rst $38
    add h
    db $d3
    cpl
    dec c
    ld l, l
    dec bc
    dec c
    cp $e0
    ld l, l
    db $fc
    pop bc
    ld hl, sp-$29
    nop
    ld b, $b2
    inc c
    jp $e082


    cp [hl]
    ldh [$7f], a
    ldh [$3b], a
    ldh [$f8], a
    jp nz, $ff02

    call c, $c986
    ld b, d
    ldh [$0d], a
    dec hl
    ld a, [bc]
    cp h
    ldh [$0b], a
    dec c
    ld hl, sp-$06

jr_064_6fd5:
    rst $18
    inc b
    xor [hl]
    ld b, d
    ldh [$0b], a
    dec hl
    dec c
    ld c, d
    ld a, [bc]
    adc l
    ld l, d
    dec sp
    ld [c], a
    ld c, l
    dec l
    nop
    rst $38
    jr z, jr_064_6fd5

    ld b, e
    ldh [$0a], a
    ld e, a
    ld l, d
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld l, d
    add hl, sp
    pop hl
    dec bc
    ret nz

    ldh [$a4], a
    cp $df
    nop
    rrc e
    jp Jump_064_7ce0


    ldh [rWX], a
    cp d
    ret nz

    dec bc
    ld h, e
    dec c
    ld l, l
    nop
    rst $18
    inc b
    xor e
    jp nz, Jump_064_4ac0

    ld c, d
    ld [bc], a
    ldh [rWX], a
    ld l, e
    ld a, [bc]
    ld a, d
    pop bc
    ld l, l
    ld b, h
    rst $38
    nop
    call z, $c54d
    ldh [rIE], a
    ld a, [hl+]
    dec hl
    ld l, e
    dec bc
    ld a, [bc]
    ld a, [hl+]
    ld c, d
    dec bc
    pop de
    dec bc
    add d
    db $e3
    cp h
    rst $38
    add b
    jp hl


    dec l
    ld b, d
    ret nz

    ld l, e
    ld c, e
    jp Jump_000_0a6b


    dec sp
    pop hl
    ld [bc], a
    rst $38
    nop
    rst $08
    ld a, a
    ldh [$0b], a
    dec c
    cpl
    ld c, e
    ld l, e
    ld c, d
    ld a, [hl+]
    rst $38
    ret nz

    ld l, l
    ld a, d
    add e
    ld [bc], a
    rst $38
    inc b
    xor d
    ld c, b
    ret nz

    db $e4
    ld l, e
    pop bc
    pop hl
    ld b, d
    rst $38
    nop
    rst $08
    add b
    ld [c], a
    ld bc, $f8c0
    add d
    and $c0
    ld a, a
    add b
    db $eb
    dec l
    dec bc
    dec c
    dec c
    ld a, [bc]
    dec bc
    ld a, [hl+]
    ld c, e
    add h
    jp nz, $c02d

    and c
    ret nz

    db $f4
    nop
    sub l
    jp $0380


    dec c
    ld l, e
    pop bc
    pop hl
    ret nz

    db $e4
    nop
    ld e, a
    inc b
    ld l, c
    ccf
    ld [c], a
    ld b, b
    add b
    nop
    ld b, $a1
    add d
    pop hl
    ld a, [hl]
    pop hl
    rst $38
    rst $38
    nop
    adc d
    ld a, $c1
    ld b, c

jr_064_7095:
    add b
    ret nz

    rst $38
    nop
    nop
    sub h
    ld a, $c1
    add $82
    call z, $c0e1
    push af
    nop
    sub l
    cp [hl]
    jp $e2bf


    nop
    ret nz

    add $02
    rst $38
    ld b, d
    add hl, hl
    jp nz, Jump_064_7c00

    and b
    ld b, h
    add e
    add b
    reti


    nop
    sub h
    nop
    sub b
    and c
    cp l
    pop bc
    ld a, [hl]
    ld h, c
    ld a, d
    ld b, e
    ret nz

    rst $38
    ld b, $4c
    dec a
    ret nz

    ret nz

    pop hl
    nop
    ld a, h
    jp nz, $0134

    cp $df
    nop
    ld b, a
    cp [hl]
    ld b, h
    inc bc
    add c
    ld a, h
    jp nz, $20f4

    nop
    nop
    rst $18
    add b
    ld c, e
    dec a
    ld h, c
    jp Jump_000_0463


    cp a
    nop
    ld d, b
    pop bc
    ld [c], a
    add e
    ld h, c
    jr nz, jr_064_712d

    ld b, b
    jp nz, $809f

    xor a
    pop bc
    ld [c], a
    dec a
    ld b, b
    dec hl
    cp $22
    nop
    sbc a
    nop
    nop
    adc l
    ret z

    ld b, d
    ret nz

    pop hl
    ld b, d
    ld b, d
    ret nz

    pop bc
    ld [bc], a
    rst $38
    nop
    adc c
    ret


    ld b, c
    jr nz, jr_064_7095

    ld h, b

jr_064_7111:
    cp h
    jr nz, jr_064_7116

    ld b, e
    ld b, b

jr_064_7116:
    rst $18
    nop
    adc e
    dec hl
    ld b, b
    db $e4
    ret nz

    pop bc
    inc d
    nop
    rst $18
    jr z, jr_064_7111

    ld l, l
    ret nz

    push hl
    dec hl
    cp h
    add d
    nop
    sbc a
    nop
    adc h

jr_064_712d:
    ld a, $03
    ld h, c
    dec bc
    dec c
    ld l, e
    dec bc
    ld l, e
    ld [hl], $21
    nop
    rst $18
    jr jr_064_713b

jr_064_713b:
    adc [hl]
    call nz, $fee0
    pop hl
    ld l, e
    ld l, e
    jp nz, $ff41

    rst $38
    nop
    ld c, [hl]
    nop
    call nz, Call_064_7f82
    ld bc, $4582
    rst $38
    rst $38
    add b
    ld l, d
    pop bc
    ld h, e
    db $fc
    ld b, b
    add d
    cp e
    ld b, h
    nop
    ld d, [hl]
    ld a, [hl]
    push hl
    dec l
    add d
    and e
    ld [bc], a
    rst $38
    ld a, [hl]
    ld d, b
    dec l
    dec b
    ld [hl+], a
    adc b
    ld b, h
    rst $38
    nop
    ret nc

    db $fc
    and e
    dec l
    inc b
    push bc
    cp h
    rst $38
    db $fc
    ld [hl], d
    ld c, l
    nop
    add d
    rst $38
    ld a, [hl+]
    db $f4
    db $10
    ld [hl+], a
    ld a, d
    ld h, b
    add d
    push hl
    ld [bc], a
    or e
    ld l, c
    db $fd
    add d
    rst $38
    nop
    db $fc
    inc a
    add d
    and $cc
    rst $38
    db $fc
    ld sp, $f5f0
    nop
    db $db
    ld a, [$7e03]
    rst $20
    nop
    ld b, $f5
    inc hl
    rst $38
    rst $38
    rst $38
    db $fc
    rst $18
    inc b
    rst $38
    ld hl, sp+$1b
    ret nz

    db $fd
    ld [hl+], a
    ei
    nop
    ld [$fe97], sp
    rst $18
    rst $38
    rst $38
    inc a
    rst $38
    call c, $c0ff
    rst $38
    ld [bc], a
    ld sp, hl
    nop
    nop
    nop
    rst $08
    and b
    call c, $dedd
    db $fc
    rst $38
    ld hl, sp-$09
    rst $18
    ldh [$f3], a
    pop hl
    ld [c], a
    db $fc
    rst $38
    ld hl, sp-$09
    db $e3
    db $e4
    push hl
    and $3c
    db $fc
    rst $38
    ld hl, sp-$09
    rst $20
    add sp, -$17
    ld_long $fffc, a
    ld hl, sp-$09
    ldh a, [rNR34]
    ld hl, sp-$01
    jp hl


    or $d6
    ld e, $f7
    and b
    and b
    sub $d7
    ld a, b
    db $fc
    push hl
    or $d7
    ld e, $f7
    and b
    and b
    ret c

    reti


    db $fc
    push hl
    db $fc
    or $d7
    ld e, $f7
    sub $d7
    jp c, $d0db

    pop de
    jp $dbda


    ld hl, sp-$1f
    or $d7
    ld b, $f7
    add d
    pop hl
    jp nc, Jump_064_60d3

    ld a, d
    db $e3
    ld a, [$1cd7]
    pop de
    ld [$82e3], sp
    pop hl
    call nc, Call_064_7ed5
    db $e3
    nop
    db $f4
    jp $df00


    db $10
    jp $e508


    add d
    pop hl
    ld a, [hl]
    push hl
    db $f4
    pop bc
    nop
    rst $18
    jr @+$12

    jp $e30c


    add d
    pop hl
    and b
    and b
    ld a, [hl]
    push hl
    ld hl, sp-$3f
    nop
    rst $18
    add b
    ld [$04c5], sp
    push hl
    db $fc
    and c
    ld a, [hl]
    jp hl


    nop
    rst $18
    ld [$04c3], sp
    db $e3
    sbc a
    rrca
    and d
    sbc l
    sbc l
    sbc a
    ld a, [hl]
    db $e4
    db $76
    jp $df00


    ld [$fec5], sp
    add [hl]
    ret nz

    sbc a
    sbc h
    xor [hl]
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    cp h
    ld hl, sp-$37
    nop
    rst $18
    jp hl


    ld [$a0a0], a
    add d
    db $e4
    sbc h
    ccf
    ld b, [hl]
    xor a
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    sbc [hl]
    db $fc
    pop bc
    ld hl, sp-$3f
    ld c, b
    ld hl, sp-$4d
    ld b, $b3
    ld [$9ec1], sp
    add d
    ldh [$be], a
    ldh [$9c], a
    dec sp
    ld [c], a
    or b
    ldh a, [$a3]
    nop
    rst $18
    nop
    call nz, $c086
    sbc a
    sbc h
    add d
    ldh [rLYC], a
    dec bc
    ld d, b
    ld b, l
    cp e
    ldh [$ae], a
    dec sp
    ldh [rPCM12], a
    and c
    nop
    rst $18
    nop
    rst $00
    cp $42
    ldh [rDMA], a
    ld b, l
    xor a
    ld d, c
    ld e, a
    ld d, d
    ld b, l
    push bc
    xor [hl]
    ld a, e
    pop hl
    sbc a
    db $76
    and c
    nop
    rst $18
    nop
    push bc
    ret nc

    pop de
    db $fd
    and c
    ld b, e
    ldh [rWY], a
    ld d, d
    ld b, h
    ld d, e
    ld d, h
    ld d, c
    adc l
    xor a
    add hl, sp
    ldh [rDMA], a
    and c
    nop
    pop hl
    nop
    rst $18
    ld [$d285], sp
    db $fd
    db $d3
    ld [bc], a
    ldh [rLYC], a
    ld c, e
    ld d, [hl]
    ld a, [hl+]
    cpl
    ld a, [hl+]
    pop hl
    ld b, l
    cp h
    ret nz

    ld a, d
    jp nz, $df00

    ld [$d487], sp
    push de
    sbc [hl]
    rst $38
    xor a
    ld b, [hl]
    ld d, c
    ld e, [hl]
    ld e, d
    jr nz, jr_064_7316

    ld a, [hl+]
    ld b, e
    ld d, b
    ld b, l
    ld b, c
    pop hl
    nop
    ld [c], a
    nop
    rst $18
    ld [$9e87], sp
    ld bc, $ffe0
    ld e, e
    add hl, sp
    dec h
    ld l, $4a
    ld e, l
    ld d, l
    ld b, [hl]
    ldh a, [$3c]
    pop bc
    nop
    rst $18
    nop
    set 0, b

jr_064_7316:
    pop bc
    ld b, [hl]
    add hl, sp
    cp h
    ld [hl+], a
    dec bc
    ld c, a
    ld h, c
    ret nz

    ldh [$a1], a
    db $76
    add c
    nop
    rst $18
    nop
    jp z, $e07f

    ld a, a
    ld b, [hl]
    xor [hl]
    inc a
    inc a
    ld c, d
    ld d, d
    ld b, l
    add d
    call nz, Call_000_0078
    rst $18
    nop
    jp z, $e1c0

    xor a
    scf
    scf
    ld b, l
    pop bc
    pop hl
    ret nc

    ld a, [hl]
    and d
    nop
    rst $18
    nop
    adc c
    add b
    db $e3
    ld b, a
    add d
    ld [c], a
    ret nc

    pop de
    ldh a, [$b4]
    ld b, e
    nop
    rst $18
    nop
    rst $00
    cp a
    and c
    xor [hl]
    xor a
    ld d, d
    ld d, d
    pop hl
    ld b, l
    cp a
    add b
    ld a, [hl-]
    ld h, l
    nop
    rst $18
    nop
    rst $00
    and b
    and b
    and c
    rrca
    ld b, [hl]
    xor a
    xor [hl]
    ld b, l
    pop bc
    pop hl
    ld b, d
    db $e4
    nop
    ld e, a
    nop
    ret


    inc b
    ld a, $c2
    add l
    and b
    and c
    ld b, $a0
    ld [bc], a
    ld [hl], a
    nop
    sub a
    ld a, $c4
    ld b, c
    add b
    jr @+$7e

    ld b, l
    nop
    ld e, a
    nop
    add a
    sub $d7
    ld a, $c4
    ret nz

    ld h, b
    ld a, h
    ld b, e
    inc c
    ld [bc], a
    di
    nop
    ld d, l
    ret c

    reti


    ld a, $82
    cp a
    db $e3
    ld a, [$3422]
    ld hl, $0010
    rst $18
    nop
    ld b, l
    sub b
    pop hl
    inc a
    add e
    xor [hl]
    ld a, [hl]
    ld [c], a
    inc [hl]
    inc hl
    nop
    rst $18
    nop
    nop
    ret z

    ret z

    pop bc
    cp l
    pop bc
    cp a
    pop hl
    ld [hl], l
    nop
    ld a, $e1
    nop
    rst $18
    nop
    ld b, a
    inc b
    ld b, h
    ld [hl+], a
    ei
    ld h, b
    xor [hl]
    ld a, h
    add $00
    rst $18
    nop
    ld c, c
    cp [hl]
    ld b, h
    dec a
    pop bc
    nop
    ld a, h
    call nz, $df00
    nop
    ld c, c
    ld b, b
    ld b, d
    inc b
    ld h, c
    dec a
    ld b, d
    add d
    add c
    nop
    rst $18
    db $fc
    nop
    ld c, c
    ld b, b
    ld b, c
    ld b, e
    ld b, c
    ld b, e
    ld b, e
    xor a
    ld b, e
    pop hl
    ld b, l
    ld a, $40
    inc b
    sub e
    nop
    ld e, c
    jp nz, Jump_000_3620

    dec sp
    dec [hl]
    add l
    dec sp
    db $fd
    ldh [$36], a
    cp $20
    db $fc
    ld bc, $df00
    nop
    adc e
    xor [hl]
    scf

jr_064_740c:
    inc a
    and h
    ld h, h
    rst $38
    ldh [$a5], a
    inc a
    cp [hl]
    add h
    nop
    rst $18
    cp $00
    adc e
    xor a
    dec [hl]
    ld l, c
    and e
    dec [hl]
    dec [hl]
    and e
    adc a
    ld l, d
    dec [hl]
    xor [hl]
    and c
    add d
    ld [hl+], a
    nop
    rst $18
    nop
    adc e
    ld b, d
    ld [hl], a
    dec [hl]
    ld l, c
    dec [hl]
    rst $38
    ldh [rOCPS], a
    dec [hl]
    xor a
    rst $38
    pop bc
    db $fc
    cp $95
    nop
    ld d, l
    sbc a
    sbc h
    ld b, h
    inc a
    ld l, e
    ld [hl], c
    ld e, $ff
    ldh [$6d], a
    inc a
    ld b, h
    sbc [hl]
    add d
    ld [hl+], a
    nop
    rst $18
    nop
    ld c, d
    dec hl
    ld b, [hl]
    xor [hl]
    ret nz

    ret nz

    xor h
    cp l
    ret nz

    xor h
    nop
    push hl
    nop
    rst $18
    cp h
    nop
    ld c, b
    jp nz, Jump_064_4560

    xor [hl]
    ld b, c
    xor a
    dec a
    ret nz

    xor a
    ld bc, $829e
    ld b, e
    nop
    rst $18
    nop
    adc c
    add h
    and l
    ret nz

    add c
    inc b
    ld d, l
    nop
    call c, Call_000_0806
    ld hl, $af46
    add d
    and h
    nop
    rst $18
    nop
    ld c, h
    ld b, d
    add h
    ccf
    ld h, b
    jr nc, jr_064_740c

    jp $f202


    nop
    rst $10
    ld a, [hl]
    ld b, c
    sbc l
    sbc h
    dec b
    ld [hl+], a
    inc b
    ld [hl+], a
    jr jr_064_749b

    di
    nop

jr_064_749b:
    ld d, a
    adc [hl]
    jp nz, $9c9f

    inc b
    add d
    add b
    ld h, c
    ld [bc], a
    di
    inc c
    nop
    sub a
    ld a, [hl]
    ld [c], a
    and b
    sbc a
    add d
    ld [c], a
    inc b
    ld hl, $f302
    nop
    ld d, d
    nop
    xor $40
    ld a, [hl]
    and $f4
    inc h
    ld l, [hl]
    ld [hl+], a
    nop
    rst $18
    or $46
    ld a, [hl]
    rst $20
    add [hl]
    dec b
    nop
    nop
    rst $18
    db $fc
    cpl
    adc b
    ld b, c
    ld b, h
    dec h
    nop
    rst $18
    db $fc
    cpl
    ld b, $41
    add d
    db $e3
    nop
    add d
    ld bc, $df00
    db $fc
    dec l
    inc b
    and $dc
    push af
    nop
    sub h
    db $fc
    dec h
    ld hl, sp+$61
    nop
    inc b
    pop hl
    inc b
    push de
    nop
    ld d, l
    db $fc
    dec h
    db $fc
    push hl
    inc b
    push de
    nop
    ld d, l
    db $fc
    inc hl
    nop
    db $fc
    jp Jump_000_3706


    nop
    reti


    ld hl, sp-$57
    ld [bc], a
    ld sp, hl
    nop
    push de
    ld hl, sp-$57
    ld [bc], a
    ld sp, hl
    ret nz

    nop
    push de
    db $f4
    ld l, c
    ld [bc], a
    ld sp, hl
    nop
    push de
    db $f4
    ld l, c
    ld [bc], a
    ld sp, hl
    rst $20
    add sp, $00
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
    dec e
    rrca
    ld [bc], a
    ld bc, $101f
    ld [bc], a
    ld [bc], a
    dec de
    ld de, $0302
    dec e
    ld [de], a
    ld [bc], a
    inc b
    inc h
    ld [de], a
    ld [bc], a
    dec b
    ld [hl+], a
    inc de
    ld [bc], a
    ld b, $19
    dec d
    ld [bc], a
    rlca
    inc hl
    dec d
    ld [bc], a
    ld [$191d], sp
    ld [bc], a
    add hl, bc
    dec e
    dec de
    ld [bc], a
    ld a, [bc]
    inc e
    inc e
    ld [bc], a
    dec bc
    dec e
    dec e
    ld [bc], a
    inc c
    jr nz, jr_064_758d

    ld [bc], a
    dec c
    ld hl, $0223
    ld c, $20
    inc h
    ld [bc], a
    rrca
    jr nz, @+$28

    ld [bc], a
    db $10
    ld a, [de]
    add hl, hl
    ld [bc], a
    ld de, $2a23
    ld [bc], a
    ld [de], a
    ld a, [de]
    dec l
    ld [bc], a
    inc de
    ld e, $2d
    ld [bc], a
    inc d
    ld [hl+], a
    dec l
    ld [bc], a
    dec d

jr_064_758d:
    inc e
    ld l, $02
    ld d, $20
    cpl
    ld [bc], a
    rla
    ld e, $31
    rst $38
    rst $38
    rst $38
    and d
    ld [hl], l
    jp nc, Jump_064_6675

    ld [hl], a
    ld c, c
    ld a, c
    or b
    inc bc
    adc [hl]

jr_064_75a5:
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
    jr jr_064_75a5

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

jr_064_7621:
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

    cp l
    call nz, $ff7f
    ret nz

    rst $28
    ld e, $42
    ret nz

    ld c, e
    dec hl
    dec bc
    ld c, e
    ld a, c
    pop bc
    add c
    rst $18
    ld b, d
    db $ed
    jr nz, jr_064_7621

    db $e3
    ld a, a
    pop hl
    ld a, e
    db $e3
    add c
    rst $38
    ret nz

    rst $28
    ld c, e
    ret nz

    and d
    ld a, h
    and b
    ld bc, $3b4b
    push hl
    rst $38
    rst $38
    jp nz, $8cc5

    and b
    ld c, l
    ret nz

    ld a, l
    call nz, $a0fa
    inc b
    call Call_064_40ff
    xor e
    ld l, e
    add c
    ld [c], a
    ret nz

    rst $38
    add d
    sub $7f
    jp nz, $a27e

    ret nz

    ld a, l
    add $ff
    rst $38
    ret nz

    add a
    ld b, a
    pop bc
    jp nz, $fae4

    add c
    ld c, e
    dec bc
    ret


    ld l, e
    cp e
    rst $38
    add b
    adc c
    ld a, [bc]
    ld c, d
    add d
    call z, Call_064_4be5
    ld c, e
    ld bc, $406b
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Jump_064_7719:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    add hl, hl
    jr z, jr_064_7794

    dec hl
    jr nc, jr_064_779d

    ld bc, $ff01
    ld b, d
    inc a
    inc a
    ld b, e
    ld b, h
    ld bc, $2e01
    sbc a
    add hl, hl
    jr z, jr_064_77a4

    jr z, jr_064_777e

jr_064_777e:
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

jr_064_7794:
    ret nz

    rst $38
    jp hl


    add sp, -$3f
    ldh [rLY], a
    rst $18
    ld b, e

jr_064_779d:
    ld c, c
    ld b, l
    ld b, a
    ld b, l
    db $fc
    ldh [rBGP], a

jr_064_77a4:
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

jr_064_77d5:
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
    jr jr_064_7809

    ret nz

    rst $38
    nop
    jp hl


    ld b, d
    ld a, $1c
    db $db
    ldh [$7e], a
    ldh [$37], a
    ld c, l
    ld c, l
    ld a, b
    ld [c], a
    ld a, a
    ldh [$ca], a
    rst $38
    ld a, [$c9c0]
    add hl, bc
    db $db

jr_064_7809:
    pop hl
    jr c, @+$3d

    jr c, @+$4f

    ld c, l
    and $78
    ld [c], a
    nop
    jr nz, jr_064_77d5

    rst $38
    jp hl


    add sp, $2c
    ld bc, $353f
    ld b, b
    ld a, a
    db $e3
    jr c, jr_064_7899

    ld [c], a
    nop
    nop
    add b
    rst $38
    ld [$cfe9], a
    dec l
    ld bc, $2001
    ccf
    db $e3
    cp a
    ld [c], a
    scf
    nop
    inc c
    nop
    rst $38
    db $eb
    ld [$2f29], a
    ret nz

    and $fd
    and d
    add c
    ldh [$c0], a
    rst $38
    sbc [hl]
    ld b, b
    xor c
    cpl
    ld bc, $3809
    rst $38
    ldh [$fd], a
    and l
    rrca
    ld a, c
    rlca
    nop
    rst $18
    add b
    ld [$012c], a
    add hl, de
    jr @-$76

    jp nz, Jump_000_3b7f

    ld b, $22
    ld [hl+], a
    ld b, $06
    rlca
    add b
    cp a
    xor h
    ret nz

    adc e
    rst $38
    ret nz

    inc c
    ld b, $c2
    pop hl
    dec d
    ld b, l
    and b
    rla
    ld [hl], b
    ld b, c
    and b
    nop
    cp a
    add b
    adc d
    ld a, a
    add c
    rla
    dec d
    inc hl
    jp nz, $02e1

    cp $e2
    ld l, $40
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_064_7899:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_064_7910:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
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
    ld [hl], d
    ld a, c
    and d
    ld a, c
    inc [hl]
    ld a, e
    jr nz, @+$7f

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

jr_064_79f2:
    ld b, $e0
    or l
    ld [c], a
    call z, Call_000_0cff
    add e
    ld [$c081], a
    dec hl
    dec bc
    call nz, $c0c0
    rst $38
    pop af
    ldh a, [rWX]
    pop hl
    jr nz, jr_064_7a0d

    pop hl
    ret nz

    db $e4
    ccf

jr_064_7a0d:
    pop hl
    ret nz

    rst $38
    ret nz

    db $eb
    dec bc
    rrca
    pop hl
    ld b, c
    db $e3
    nop
    nop
    pop hl
    rst $38
    rst $38
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
    ld bc, $012b
    jp nz, $e0f9

    jr c, jr_064_79f2

    rst $38
    rst $38
    cp l
    xor h
    ld c, e
    and b
    jp Jump_000_08e9


    ld a, h
    rst $38
    ld a, a
    rst $28
    ld a, l
    pop bc
    ld l, e
    ld b, b
    and e
    inc a
    rst $38
    ld bc, $07ec
    jp nz, $c906

    and $6b
    dec hl
    ld l, l
    and d
    rst $38
    rst $38
    ld b, b
    call nz, $818c
    call nz, Call_000_0081
    dec b
    db $e3
    ld [hl], l
    and b
    add b
    sbc a
    cp a
    db $ed
    adc l
    add [hl]
    jp $fee0


    pop hl

jr_064_7a66:
    set 7, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    jp nz, $ffff

    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $dd08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, jr_064_7a66

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or c

Jump_064_7adb:
    rlca
    cp c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_064_7b0a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_064_7b36:
    jr z, jr_064_7b36

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
    jr nc, jr_064_7b84

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
    jr jr_064_7b36

    pop hl
    dec sp
    inc [hl]
    nop
    jr c, jr_064_7b0a

    dec sp
    ld b, c
    ld b, e
    ld b, h
    ret nz

    rst $38
    jp hl


    add sp, $06

jr_064_7b84:
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
    ld l, l
    nop
    ret nz

    pop hl
    ld c, [hl]
    ld c, a
    ret nz

    db $e4
    ld c, b
    dec a
    jp z, $feff

    add sp, -$19
    ccf
    ld c, b
    nop
    scf
    nop
    nop
    dec [hl]
    cp a
    dec sp
    dec sp
    ld d, b
    ld d, c
    dec sp
    dec [hl]
    ld b, b
    pop hl
    dec sp
    inc sp
    ld c, b
    ccf
    jp z, $e8ff

    rst $20
    dec a
    ld c, b
    dec bc
    ldh [$bf], a
    ld [c], a
    and [hl]
    pop bc
    db $e4
    nop
    add hl, bc
    ret nz

    rst $18
    jp hl


    add sp, $4a
    ret nz

    ldh [$3b], a
    ld l, [hl]
    cp a
    ldh [$33], a
    inc sp
    inc sp
    pop bc
    db $e3
    jr jr_064_7c09

    ret nz

    rst $38
    add [hl]
    jp hl


    add sp, $42
    ld a, $c6
    pop bc
    ld a, [hl]
    ldh [rIE], a
    and b
    jp Jump_000_00c0


Jump_064_7c00:
    inc sp
    ld b, $0c

jr_064_7c03:
    nop
    rst $18
    add b
    jp z, Jump_064_403d

jr_064_7c09:
    ld b, [hl]
    ret nz

    db $fd
    ret nz

    sub [hl]
    ret nz

    pop hl
    nop
    ld b, $7c
    and c
    ld l, $ca
    rst $38
    ld b, b
    ret z

    ccf
    inc l
    ld a, a
    pop hl
    ret nz

    ld [c], a
    ld b, [hl]
    ld b, a
    ld a, $a2
    ld l, $00
    cp a
    jp hl


    add sp, -$21
    inc l
    ld bc, $4542
    ld b, [hl]
    add b
    pop hl
    ld b, [hl]
    ld b, l
    db $e4
    add [hl]
    and b
    pop bc
    ld [c], a
    jr z, jr_064_7c03

    rst $38
    add sp, -$19
    ld sp, $0101
    scf
    ld b, h
    ld b, e
    ld c, c
    rst $38
    ldh [$3c], a
    ld b, d
    add b
    sbc a
    ret nz

    sub c
    jr @-$7b

    add b
    cp [hl]
    pop hl
    add e
    ld [c], a
    dec hl
    ld a, [hl+]
    ld [hl-], a
    add c
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add sp, -$19
    ld e, l
    db $dd
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38

Call_064_7cc3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_064_7ce0:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_064_7e40:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_064_7ed5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_064_7ee4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_064_7f82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
