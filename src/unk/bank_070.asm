INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $070", ROMX[$4000], BANK[$70]

    db $10
    ld b, b
    cp h
    ld c, b
    ld hl, $dc4d
    ld e, b
    xor h
    ld h, b
    ld a, [$9764]
    ld a, b
    ld e, c
    ld [hl], h
    jr jr_070_4052

    ld d, h
    ld b, e
    ld [hl], $48
    ld d, c
    ld c, b
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
    nop
    ld a, [$80ff]
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    db $f4

jr_070_4052:
    ld b, [hl]
    ldh [rSCX], a
    ld [c], a
    nop
    ld a, [$80e3]
    rst $18
    xor e
    xor $03
    db $e4
    ld h, b
    rst $18
    ret nz

    rst $30
    jp c, $80ff

    ret nc

    nop
    ld c, c
    push hl
    ld a, [hl-]
    db $e4
    ld sp, hl
    and $80
    rst $18
    jp z, Jump_000_09e4

    and $80
    db $e4
    ld a, c
    rst $38
    inc c

Jump_070_4079:
    ret nz

    ld [$e6ba], a
    ld c, l
    dec l
    ld a, e
    db $e4
    jp z, $9eff

    ret


    add l
    call nz, Call_070_6d07
    dec bc
    dec bc
    cp a
    ldh [$75], a
    rst $00
    ld l, [hl]
    rst $00
    add b
    db $db
    ld b, l
    jp nz, Jump_070_4d0b

    ld c, l
    pop bc
    ldh [$0b], a
    ld a, [hl]
    ld [c], a
    ld hl, sp-$35
    ld [hl], e
    rst $38
    add h
    ld [c], a
    dec bc
    dec c
    dec c
    pop bc
    ldh [$0b], a
    dec a
    db $e3
    ld hl, sp-$37
    ret nz

    or $c9
    xor d
    ld hl, sp-$3f
    ldh [$c0], a
    ldh [$bf], a
    and c
    dec bc
    ld c, l
    ld c, l
    ld c, l
    dec l
    inc bc
    ld c, l
    dec l
    cp d
    ret z

    or c
    or c
    add c
    db $ed
    add d
    ld [c], a
    ld a, l
    ldh [$7a], a
    db $e3
    nop
    ld hl, sp-$37
    or c
    cp a
    ld b, a
    and e
    pop bc
    ld [c], a
    ld a, l
    db $e3
    ld a, d
    ld [c], a
    ld hl, sp-$3d
    ld e, [hl]
    rst $00
    inc b
    ld b, e
    sub e
    nop
    push bc
    dec bc
    ld b, d
    pop hl

Jump_070_40e5:
    add l
    db $e3
    ld sp, hl
    jp $e3bf


    or c
    cp b
    nop
    ld c, $a7
    ret nz

    db $e4

jr_070_40f2:
    ld b, l
    push hl
    cp a
    rst $20
    inc sp

Jump_070_40f7:
    jp $dabc


    adc e
    add h
    ret z

    and b
    add b

Jump_070_40ff:
    add c
    ld [c], a

Jump_070_4101:
    add h
    jp $e0f3


    rst $30
    jp $a3b1


    inc a
    call nc, $a8c3
    ld c, $f7
    ld c, $4d
    dec l
    ld b, c
    ld [c], a
    dec c
    dec l
    dec hl
    ld a, [bc]
    ld hl, $796a
    pop bc
    or [hl]
    ldh [$f2], a
    and h
    db $e4
    ldh [rKEY1], a
    nop
    cp d
    dec b
    add h
    sbc $c0
    db $e3
    dec hl
    ld a, [bc]
    ld a, [bc]

Jump_070_412d:
    ld a, [hl+]
    jr c, jr_070_40f2

    dec l
    dec l
    ret nc

    ld a, [c]
    and d
    ld [hl], c

jr_070_4136:
    and c
    ld c, e
    sbc a
    cp [hl]
    push bc
    dec l
    ret nz

    ldh [$2a], a
    dec hl
    add e
    dec hl
    dec hl
    cp b
    rst $00
    ld a, d
    rst $00
    add b

jr_070_4148:
    db $db
    inc b
    and b
    adc h
    pop hl
    dec l
    inc bc
    dec bc
    ld l, e
    cp $e0
    ret nz

    ld [c], a
    cp e
    db $e3
    add b
    db $e3
    add b
    rst $18
    push bc
    add b
    inc b
    ld c, h
    db $e4
    ei
    add b
    ld c, e
    cp [hl]
    pop hl
    jr c, jr_070_4148

    ret nz

    db $e3
    ret nc

    jr c, jr_070_4136

    ld h, l
    cp h
    push bc
    add c
    ld a, a
    and e
    dec bc
    ld c, e
    ld c, e
    ld l, e

jr_070_4176:
    add d
    pop hl
    dec hl
    rst $00
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    add b
    jp hl


    nop
    cp h
    ret nz

    rst $20

Jump_070_4183:
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld l, d
    cp a
    pop hl
    ld hl, sp-$20
    ld c, e
    cpl
    call nz, Call_070_7174
    nop
    or d
    ld b, c
    and e
    dec de
    ld c, e
    ld a, [bc]
    ld a, a
    ld [c], a
    ld a, [bc]
    ld c, d
    ld hl, sp-$7c
    ccf
    sbc a
    ld [bc], a
    ret nz

    inc l
    ret z

    add h
    cp [hl]
    add d
    dec c
    ld l, e
    add [hl]
    pop hl
    ld a, [hl+]
    add b
    ld [c], a
    xor a
    ld h, e
    ld b, b
    ld b, e
    sbc e
    ld c, l
    jr nz, jr_070_4176

    and b
    nop
    push hl
    db $fc
    ld h, c
    ccf
    jp nz, $754b

    add e
    ld b, b
    inc a
    and [hl]
    scf
    db $ec
    inc c

jr_070_41c5:
    ld b, a
    ld a, [hl]
    db $e3
    jp nz, $c262

    add h
    ld l, e
    cp $c2
    nop
    xor [hl]
    ld h, e
    cp [hl]
    and a
    ld a, [hl-]
    or e
    ld c, b
    ld b, h
    ld a, [hl]
    ld [c], a
    adc $e5
    ld a, [$fba0]
    and b
    add b
    ld l, [hl]
    ld h, e
    cp $c7
    ld a, [bc]
    ld l, l
    or [hl]
    dec bc
    dec a
    pop hl
    ld a, e
    ld h, d
    cp d
    and d
    ld c, e
    nop
    add e
    ret nz

    or l
    ld l, d
    ld e, d
    ld c, b
    nop
    ld d, c
    db $fc

Jump_070_41fa:
    pop bc
    add a
    add c
    ld b, $a5
    ld a, b
    and b
    nop
    pop bc
    jp nz, $c57c

    sbc [hl]
    daa
    nop
    ld d, e
    ld l, a
    inc hl
    cp c
    call nz, $edfb
    rst $28
    ld b, c
    nop
    ld a, b

jr_070_4214:
    call z, Call_070_4f00
    dec l
    ld [hl+], a
    ld hl, sp+$61
    rst $30
    and [hl]
    rst $30
    ld h, b
    cp e
    jp hl


    and l
    inc hl
    jr jr_070_4214

    ld d, c
    ld a, [hl]
    add sp, $76
    and [hl]

Jump_070_422a:
    ld l, l
    dec c
    ld a, l
    ld b, b
    ld [hl], b
    jp hl


    db $f4
    ld h, e
    jr nc, @-$0a

    sub d
    jp nz, $f707

    and h
    ld [hl], l
    jr nz, jr_070_424a

    ld c, $3d
    ld b, b
    db $ec
    ld [hl+], a
    nop
    jr nc, jr_070_41c5

    ld l, $80
    ld [c], a
    jp $eb93


jr_070_424a:
    add b
    ld h, a
    or [hl]
    rlca
    ld c, d
    add e
    ld h, l
    nop
    nop
    ret nz

    pop hl
    ld l, l
    ld hl, $60f2
    rst $28
    ld h, c
    or h
    ld h, l
    add b
    ld [hl], l
    ld a, [hl]
    and $c0
    and $c4
    ld [$f323], a
    ld h, h
    dec hl
    ld e, l
    ld hl, $7980
    ld [hl], $06
    dec bc
    dec bc
    dec b
    ld l, l
    cp e
    ld bc, $402d
    ld [c], a
    ld [hl], h
    ld h, d
    dec [hl]
    ld h, b
    or d
    and b
    dec l
    ldh [rNR41], a
    or h
    daa
    xor d
    ld de, $6378
    add hl, sp
    ld hl, $650a
    dec c
    ld [hl], l
    ld h, d
    cpl
    ld h, e
    add b
    or [hl]
    ld h, a
    dec l
    ld [hl], l
    ld a, b
    ld h, d
    ld a, d
    ld b, e
    ld b, $26
    inc l
    ld b, c
    rst $28
    ld b, b
    dec hl
    inc bc
    ld l, e
    ld c, e
    daa
    inc b
    or a
    ld e, e
    ld a, e
    inc b
    or d
    ld bc, $03e8
    cp h
    ld h, c
    ld [bc], a
    pop bc
    ld [c], a
    dec hl
    ld [hl], c
    inc h
    cp l
    or h
    cp d
    dec b
    cp c
    ld [bc], a
    rst $10
    pop bc
    ccf
    ld b, b
    nop
    ld [$f521], a
    ld h, c
    add d

jr_070_42c5:
    pop hl

jr_070_42c6:
    or $46
    add b
    db $10
    ld b, d
    ret


    ld a, e
    inc h
    ld h, h
    dec h
    nop
    cp a
    ld [c], a
    pop bc
    ld [c], a
    xor e
    db $e3
    dec a
    db $fd
    ret nz

    ld h, c
    add d
    ret nz

    ld c, e
    daa
    ld a, [hl]
    pop hl
    nop
    pop bc
    db $e3
    inc d
    rst $00
    ld b, e
    di
    cp [hl]
    add h
    call z, Call_070_7e24
    add sp, -$01
    ld [c], a
    dec l
    ld [c], a
    nop
    push af
    ld b, h
    jr nc, jr_070_4347

jr_070_42f7:
    ld [hl+], a
    add h
    ld b, b
    ld [c], a
    ld c, h
    ld [hl+], a
    ld d, l
    and a
    ld c, b
    adc c
    ld a, b
    ld e, $02
    ld [bc], a
    pop bc
    dec l
    adc h
    jr z, @+$68

    xor d
    ld c, c
    ld c, a
    jr nc, @+$4d

    jp $82a1


    and l

jr_070_4313:
    nop
    jr jr_070_42c5

    ld c, d
    ld [hl], e
    add d
    call z, $e240
    inc c
    ld c, c
    ld a, [hl]
    jp hl


    db $76
    ld e, $00
    db $e4
    nop
    ld d, $83
    ret nz

    ei
    jp Jump_070_7aad


    jr z, jr_070_42c6

    ld h, b
    call nc, $d6a6
    sub h
    add b
    rst $10
    jr nz, jr_070_42f7

    inc hl
    ld d, $88
    rst $38
    rst $38
    ld a, [hl]
    ld l, b
    ld b, h
    add c
    ld c, l
    nop
    ld b, b
    sub [hl]
    ld l, h
    jr nz, jr_070_4313

jr_070_4347:
    ld hl, sp-$80
    rlc d
    ld [c], a
    add b
    adc b
    ld b, e
    or $0d
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
    inc c
    ld a, [$80ff]
    jp c, $d7d6

    ld b, [hl]
    ldh [rSCX], a
    ldh [$f8], a
    db $e3

Jump_070_43a4:
    add b
    rst $18
    ld a, $5b
    db $ed
    ret c

    reti


    and b
    ret nc

    pop de
    add $e0
    ld hl, sp-$20
    ld sp, hl
    and b
    add b
    rst $18
    ld e, e
    rst $28
    jp c, $a0db

    jp nc, Jump_000_1ed3

    cp l
    ldh [$da], a
    db $db
    sub $d7
    add b
    rst $18
    sbc b
    ret z

    ld b, a
    db $e3
    ld b, $84
    pop hl
    call nc, $bdd5
    pop hl
    ld a, [hl]
    pop hl
    inc sp
    pop hl
    add b
    rst $18
    sbc b
    pop bc
    ld [hl-], a
    ld c, a
    db $e3
    and b
    rst $00
    ld [c], a
    ld [$d4e0], sp
    push de
    ld a, [hl]
    pop hl
    dec sp
    ldh [$ec], a
    add b
    rst $18
    ld [hl], $a5
    jp c, $84db

    db $e4
    sbc a
    and d
    sbc l
    pop bc
    sbc a
    or a
    ld [c], a
    dec sp
    pop hl
    add b

Call_070_43fa:
    rst $18
    push de
    and a

Jump_070_43fd:
    add h
    db $e3
    sbc a
    sbc h

Call_070_4401:
    rrca
    ld b, [hl]
    ld b, [hl]
    sbc h
    sbc a
    dec sp
    push hl
    db $76
    add $80
    rst $18
    add h
    ld [c], a
    dec de
    sbc l
    sbc l
    pop bc
    ldh [rDMA], a
    xor [hl]
    cp a
    ldh [$f8], a
    jp nz, $c175

    ret c

    ld hl, sp-$3d
    add b
    rst $18
    add h
    ld [c], a
    xor [hl]
    xor [hl]
    pop bc
    ldh [rDMA], a
    xor a

Jump_070_4428:
    adc b
    cp a
    db $e3
    pop af
    pop bc
    ld hl, sp-$3c
    and b
    nop
    cp h
    ret


    and d
    pop bc
    ldh [$af], a
    rst $38
    xor a
    ld b, [hl]
    ld b, [hl]
    ld a, c
    ld a, d
    ld a, l
    xor a
    ld b, [hl]
    scf
    sbc h
    sbc l
    sbc l
    ld hl, sp-$40
    call nc, Call_000_33d5
    add $b1
    or c
    sbc $c9
    xor d
    and b
    and b
    sbc [hl]
    xor [hl]
    jp nz, Jump_070_46e0

    ld a, c
    rrca
    ld a, [hl]
    ld b, [hl]
    ld a, a
    ld a, l
    ld a, d
    pop hl
    ld hl, sp-$37
    or c
    or e
    ret


    xor c
    and $8a
    and b
    and c
    xor a
    ld b, d
    ldh [$c1], a
    ldh [rDMA], a
    ld b, [hl]
    adc [hl]
    dec c
    ld a, e
    rst $38
    ldh [$7c], a
    ld a, l
    or a
    pop bc
    inc sp
    add $3d
    ldh a, [rNR34]
    and l
    inc l
    dec bc
    and c
    adc d
    and b
    sbc [hl]
    ld b, [hl]
    ld b, d
    ldh [$80], a
    add l
    db $e3

jr_070_448a:
    ld sp, hl
    pop bc
    nop
    ld a, c
    ldh [$f8], a
    jp $a1b1


    rst $20
    add b
    or c
    xor [hl]
    jp Jump_000_13a5


    and c
    adc d
    and b
    ccf
    sbc [hl]
    ld b, [hl]
    xor [hl]
    ld b, [hl]
    ld a, c
    adc l
    ret nz

    rst $20
    cp a
    ld [c], a
    add b
    ld a, [c]
    and c
    ld l, [hl]
    and b

Jump_070_44ad:
    rst $28
    add c
    or c
    xor [hl]
    ld sp, hl
    ld b, l
    ld h, d
    pop hl
    dec b
    jp nz, Jump_070_6eaf

    add c
    ld [c], a
    add e
    adc c
    adc b
    rst $38
    ldh [$89], a
    add e
    ld a, [hl]
    ld [c], a
    ld h, b
    ld a, [c]
    and d
    rst $28
    add d
    sbc l
    and b
    add b
    ld [hl], a
    ld c, b
    add b
    ret nc

    pop de
    call nz, $fea0
    ld b, c
    pop hl
    adc d
    add l
    ld b, l
    ld c, b
    ld d, e
    ld b, l

jr_070_44dc:
    add l
    rra
    add [hl]
    add e
    ld b, [hl]
    add e
    add h
    ld a, [c]
    and h
    jr z, jr_070_448a

    nop
    cp b
    ld hl, sp+$48
    add b
    cp $c2
    ld bc, $81e1
    ld b, l
    ld c, b
    ld h, b
    ld d, h
    ld a, a
    ld b, h
    ld b, [hl]
    add l
    add a
    adc b
    add a
    add l
    ld a, [c]
    and d
    adc l
    sbc [hl]
    xor h
    add b
    sub $d7
    nop
    cp d
    ld c, b
    add b
    adc b
    add b
    and c
    cp $c1
    pop bc
    add e
    add h
    ld b, h
    ld d, h
    ld d, h
    dec l
    inc l
    dec c
    cp l
    or a
    add $af
    sbc [hl]
    rst $28
    ld h, d
    add b
    db $db
    jp z, Jump_000_0461

    and b
    rst $38
    add d
    add e
    add e
    add [hl]
    add l
    ld b, [hl]
    ld b, l
    cp l
    rst $38
    cp [hl]
    jr nz, jr_070_4563

    ld b, e
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld c, $fc
    ldh [rDMA], a
    ld b, [hl]
    sbc [hl]
    nop
    db $e3
    add b
    jp c, Jump_070_60ca

Jump_070_4542:
    push bc
    add c
    ei
    add l
    add a
    ld c, h
    ld [c], a
    ld [hl-], a
    jr nz, @+$22

    inc h
    dec sp
    ld e, a
    ld [hl], $45
    ld b, [hl]
    ld c, d
    ld b, a
    cp a
    pop hl
    and c
    jr z, jr_070_44dc

    add $80
    jp c, $d5d4

    add [hl]
    add c
    ld [bc], a
    and c

Jump_070_4562:
    db $fc

jr_070_4563:
    add c
    cp l
    ld sp, $2bff
    inc a
    dec [hl]
    dec [hl]
    jr c, jr_070_45a4

    ld d, l
    ld h, c
    ld hl, $805c
    ld [c], a
    nop
    pop hl
    add b
    reti


    ret


    ld b, c
    sbc [hl]
    call nz, $c282
    add b
    cp [hl]
    db $fc
    add b
    ld d, c
    ld e, a
    ld d, h
    ld a, [hl-]
    dec [hl]
    rst $38
    ldh [rWY], a
    add c
    ld d, [hl]
    ccf
    pop hl
    nop
    db $e3
    nop
    cp l
    ld b, c
    and b
    cp [hl]
    db $e4
    cp [hl]
    add b
    ld b, e
    sbc e
    ld e, e
    add hl, sp
    ret nz

    ldh [$3c], a
    ld c, a
    ret nz

    ld [c], a
    ld sp, $da81

jr_070_45a4:
    pop hl
    db $db
    nop
    cp l
    pop bc
    and b
    ret nz

    add c
    cp [hl]
    add d
    adc [hl]
    ld a, h
    ld a, l
    bit 0, l
    ld [hl], $7f
    ldh [rHDMA5], a
    add b
    ld [c], a

jr_070_45b9:
    xor a
    ld h, c
    ret nc

    pop de
    and b
    nop
    ld d, [hl]

Jump_070_45c0:
    inc c
    ld b, d
    ret nz

    call nz, $837f

Jump_070_45c6:
    inc bc
    and d
    ld b, h
    cp $c0
    add hl, sp
    dec b
    ld b, e
    dec hl
    db $e3
    sbc [hl]
    db $fc
    add l
    and $23
    add b
    dec bc
    sub [hl]
    ld b, d
    call Call_070_6c41
    cp [hl]
    jp $84be


    add c
    ld b, l
    cp $c0
    ld a, [hl-]
    ld b, l
    ld l, h
    add c
    inc c
    ld a, [hl]
    pop bc
    xor l
    ld b, c
    ret c

    reti


    db $e4
    jr nz, @-$53

    ld c, b
    inc c
    ld b, a
    ld a, $c8
    jr nc, @-$01

    and b
    ld a, h
    ld h, c
    ld b, l
    and b
    cp $c0
    inc a
    ld b, h
    db $ec
    ld h, d
    scf
    add d
    rrca
    jp nc, $dad3

    db $db
    db $e4
    jr nz, jr_070_45b9

    ld c, b
    sbc [hl]
    rlca
    pop de
    ld hl, $7ef4
    push hl
    rlca
    and c
    ld b, [hl]
    cp d
    and d
    scf
    jr c, jr_070_4653

    ld b, d
    nop
    db $ed
    jp Jump_070_44ad


    daa
    ld b, d
    dec a
    rst $20
    nop
    ld c, l
    cp h
    and c
    cp [hl]
    ld b, b
    rlca
    and b
    ld c, $06
    and e
    ld b, [hl]
    ld b, l
    ccf
    add b
    and d
    ld a, [hl]
    push hl
    sbc $25
    add sp, $25
    jr nz, jr_070_4640

jr_070_4640:
    ld c, e

jr_070_4641:
    db $fc
    pop bc
    pop bc
    ld bc, $a5b8
    ld a, [$9cec]
    rst $28
    ld b, b
    db $f4
    ld h, d
    nop
    add sp, $27
    sbc [hl]
    dec bc

jr_070_4653:
    call $de01
    jp nz, Jump_070_4079

    call z, $ffe6
    ldh [$b1], a
    jp hl


    nop
    ld hl, sp-$3d
    ld a, d
    push bc
    nop
    ld c, e
    call $de01
    jp nz, Jump_070_40f7

    ld c, h
    rst $20
    ld l, d
    push bc
    ret nz

    inc h
    and h
    ld hl, sp-$3c
    dec h
    inc hl
    nop
    ld c, l
    jr c, jr_070_46df

    rst $30
    and h
    sbc h
    sbc l
    ld de, $359f
    nop
    add sp, $42
    push af
    pop bc
    ld b, c
    ld [hl], l
    add c
    db $f4
    ld h, c
    sub h
    ld [bc], a
    nop
    dec h
    ld [hl+], a
    add b
    ld l, e
    add d
    pop hl
    ld [hl], $84
    adc $e2
    ld a, [bc]
    add b
    dec [hl]
    nop
    xor b
    add h
    scf
    ld b, l
    ld [hl], $a6
    ld [hl], c
    add b
    ld b, [hl]
    xor [hl]
    db $f4
    ld h, b
    ld hl, sp-$5f
    adc b
    add b
    ld [hl], c
    nop
    db $e3
    db $76
    ld b, e
    sub c
    ld c, d
    add d
    ld d, l
    db $e3
    xor b
    add c
    ld b, l
    cpl
    ld [hl], $62
    and a
    ld h, [hl]
    jr nc, jr_070_4641

    xor a
    inc [hl]
    ld h, d
    db $f4
    add l
    ld hl, sp-$80
    ld l, e
    inc e
    ld b, c
    ld [hl], $83
    and b
    sbc [hl]
    sub b
    ld b, [hl]
    ld b, [hl]
    pop hl
    sub c
    jp z, $a861

    ld h, c
    ld a, [c]
    ret nz

    pop bc
    ldh [$67], a
    and e
    ld l, b

jr_070_46df:
    ld [bc], a

Jump_070_46e0:
    cp a
    ldh [$9c], a
    dec l
    ldh [$72], a
    ld b, c
    add b
    ld de, $039e
    ld a, b
    ld h, e
    add b
    ldh [$7d], a
    sub b
    inc c
    and c
    sub $d7
    jp nc, $9ed3

jr_070_46f8:
    pop bc
    ld [c], a
    ccf
    dec [hl]
    dec [hl]
    ld l, h
    or a
    cp b
    ld b, d
    ld hl, sp-$7d
    add b
    ld [de], a
    ldh a, [$7a]
    inc b
    ld a, b
    ld h, d
    ld b, c
    pop hl
    ret nz

    ldh [$d4], a
    push de
    ret c

    reti


    rst $38
    call nc, $9ed5
    xor [hl]
    ld [hl], $b9
    cp d
    and e
    ccf
    dec [hl]
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $45
    or [hl]
    ld b, c
    scf
    daa
    ldh [$b0], a
    dec c
    ld a, d
    ld bc, $e442
    adc a
    and h
    ld c, b
    ld hl, $af9e
    ld [hl], $07
    ld l, [hl]
    ld l, a
    ld l, h
    pop bc
    ld [c], a
    db $ec
    pop bc
    scf
    jr z, @-$4e

    ld l, l
    sbc d
    inc bc
    db $10
    ret nz

    db $e3
    dec c
    add d
    adc b
    ld b, b
    ld [$4521], a
    cp a
    ldh [$c1], a
    ld [c], a
    or [hl]
    ld b, d
    nop
    jr c, jr_070_46f8

    add b
    ld l, e
    ld a, d
    ld h, a
    cp b
    ld bc, $c182
    ld b, d
    jp nz, $0029

    xor b
    ld b, d
    nop
    cp a
    ldh [$c1], a
    ld [c], a
    or [hl]
    inc hl
    dec de
    and b
    add b
    dec c
    ld a, d
    dec b
    ret nc

    pop bc
    ret nc

    and d
    nop
    add d
    ret nz

    ld bc, $82e2
    ld [bc], a
    ld a, [hl]
    pop hl
    pop bc
    db $e3
    add d
    jp nz, Jump_000_0033

    add b
    ret nc

    ld [$e243], sp
    ret nc

    pop bc
    ld [bc], a
    jp nz, Jump_000_1690

    ld [c], a
    xor a
    and d
    ld l, d
    add e
    or $81
    ld b, $38
    inc h
    jp c, $80db

    pop de
    ld a, d
    ld h, d
    or [hl]
    ld [bc], a
    ld [bc], a
    pop bc
    ld b, d
    ret nz

    nop
    ld bc, $7ee2
    db $e4
    and b
    inc hl
    inc b
    pop bc
    ld b, e
    and $00
    xor l
    ld a, d
    ld h, h
    ld [bc], a
    and c
    nop
    jp nz, Jump_000_01a3

    ld [c], a
    ld h, l
    ld [bc], a
    inc c
    add c
    db $fc
    push hl
    ld b, e
    and $80
    ret nc

    ld a, d
    ld b, c
    nop
    ld b, d
    add c
    add d
    and e
    ld bc, $4fe2
    ld [hl+], a
    jp nz, $fc01

    push hl
    ld b, e
    and $80
    ret nc

    ld b, $04
    and e
    xor [hl]
    xor a
    ld b, b
    pop hl
    inc c
    ld c, c
    db $e4
    ld h, l
    dec a
    dec l
    jr nc, jr_070_4833

    inc b
    ld a, d
    ld b, c
    pop de
    and b
    sub b
    ld b, d
    and c
    cp a
    pop hl
    inc c
    ld b, l
    add sp, -$7d
    ldh [$83], a
    ret c

    add b
    ld de, $253d
    nop
    ld [c], a
    sbc [hl]
    sub b
    add c
    and c
    sub c
    sub b
    jr nz, jr_070_4805

jr_070_4805:
    and d
    push de
    and [hl]
    ld a, [$c3f2]
    xor l
    nop
    ld [c], a
    and c
    add c
    pop hl
    ld a, a
    pop hl
    ld b, d
    jp z, $a004

    call c, $808e
    sub $04
    add e
    ld b, h
    add c
    sub c
    ld a, a
    ldh [rP1], a
    jp z, Jump_070_4904

    cpl
    nop
    cp b
    inc b
    add h
    dec a
    pop hl
    cp [hl]
    and b
    sub d
    res 0, b
    rrca

jr_070_4833:
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
    jr jr_070_4869

    ld [bc], a
    ld bc, $1512
    ld [bc], a
    ld [bc], a
    inc de
    dec d
    ld [bc], a
    inc bc
    add hl, de
    dec d
    ld [bc], a
    inc b
    ld de, $0216
    dec b
    db $10
    rla

jr_070_4869:
    ld [bc], a
    ld b, $11
    jr @+$04

    rlca
    ld de, $021a
    ld [$1c26], sp
    ld [bc], a
    add hl, bc
    daa
    dec e
    ld [bc], a
    ld a, [bc]
    ld d, $21
    ld [bc], a
    dec bc
    rla
    ld hl, $0c02
    rrca
    ld [hl+], a
    ld [bc], a
    dec c
    db $10
    inc hl
    ld [bc], a
    ld c, $11
    inc hl
    ld [bc], a
    rrca
    inc h
    dec h
    ld [bc], a
    db $10
    dec h
    ld h, $02
    ld de, $2724
    ld [bc], a
    ld [de], a
    add hl, de
    dec hl
    ld [bc], a
    inc de
    ld [hl-], a
    inc l
    ld [bc], a
    inc d
    inc sp
    dec l
    ld [bc], a
    dec d
    ld [hl-], a
    ld l, $02
    ld d, $27
    cpl
    ld [bc], a
    rla
    daa
    ld [hl-], a
    ld [bc], a
    jr @+$19

    ld a, [hl-]
    ld [bc], a
    add hl, de
    ld d, $3b
    rst $38
    rst $38
    rst $38
    call nz, $bc48
    ld c, d
    cp $4c
    ld e, $4d
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

Jump_070_4904:
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
    ld a, h
    ld b, e
    rst $38
    ld b, e
    and $2d
    dec c
    dec l
    dec l
    dec l
    add b
    rst $18
    nop
    sbc b
    or $c2
    ldh [$bf], a
    ldh [$79], a
    rst $38
    ret nz

    rst $38
    dec a
    rst $38
    sub d
    ret


    ld c, b
    ld [c], a
    ld b, b
    push bc
    db $e3
    cp l
    db $e3
    add b
    rst $18
    adc c
    pop af
    ld b, l
    pop hl
    ld a, [hl-]
    pop bc
    dec c
    dec a
    rst $38
    nop
    ld l, e
    db $ed
    adc $ea
    db $fd
    rst $10
    db $db
    xor h
    sub b
    ret nz

    res 4, b
    adc d
    pop hl
    adc [hl]
    db $e4
    nop
    pop af
    pop hl
    rst $28
    ld [c], a
    ld a, d
    sub $8b
    ld [$e154], a
    ret nz

    ld [c], a

jr_070_495e:
    adc d
    push hl
    cp $c2
    ldh [$7d], a
    ei
    sub d
    ret z

    ld c, [hl]
    and c
    jp nc, $8ce3

    db $e3
    ld c, l
    dec c
    dec c
    rlca
    ld c, l
    dec l
    ld c, l
    add b
    rst $18
    adc h
    push bc
    ret c

    pop bc
    ld a, $e5
    sub b
    ldh [$3f], a
    ld c, l
    dec c
    ld l, l
    dec bc
    dec bc
    ld c, l
    cp e
    jp nz, $e23e

    ld h, b
    ld a, d
    ret nc

    dec d
    ret


    ld c, c
    pop bc
    adc [hl]
    and d
    ld [$4dc1], sp
    ld c, l
    cp [hl]
    add b
    rrca
    ld l, l
    dec bc

Jump_070_499b:
    dec hl
    dec bc
    cp [hl]
    pop hl
    ei
    jp $fb3d


    ld d, l
    ldh [$b3], a
    ld l, l
    ld c, l
    rst $38
    ldh [$fb], a
    pop hl
    dec l
    dec c
    db $fc
    ldh [rKEY1], a
    dec hl
    ld c, l
    dec c
    jp Jump_000_2be0


    cp l
    ldh [$6d], a
    xor h
    pop bc
    jr c, jr_070_495e

    and h
    db $fd
    ret nc

    rst $08
    and a
    dec c
    inc de
    ldh [$c7], a
    and b
    dec bc
    ld a, d
    pop bc
    ld c, l
    inc b
    ld c, b
    pop hl
    or l
    ldh [$2b], a
    rst $38
    pop hl
    dec a
    pop hl
    push de
    add e
    nop
    or a
    inc h
    ld [c], a
    ldh a, [$c0]
    pop hl
    dec c
    ldh [rLY], a
    ldh [$f4], a
    ld [c], a
    dec l
    dec bc
    dec bc
    ld l, e
    dec e
    ld l, e
    cp [hl]
    ldh [rWX], a
    ld c, e
    dec bc
    add c
    and e
    cp h
    jp c, $e102

    or h
    db $fc
    db $e3
    or d
    push hl
    ld c, l
    ld [hl], e
    ldh [rOCPD], a
    ld c, e
    cp $e0
    dec bc
    ld b, e
    dec c
    ld l, l
    add b
    rst $18
    or b
    ld h, [hl]
    add d
    add $44
    pop bc
    ld l, e
    add e
    ldh [rP1], a
    pop bc
    ldh [$3d], a
    and d
    scf
    sub d
    adc l
    sub b
    add b
    and e
    ccf
    call nz, $c1ef
    add d
    db $e4
    nop
    ld h, l
    and d
    rst $38
    rst $38
    sub a
    and e
    cp d
    and $ef
    pop bc
    add hl, sp
    and e
    dec h
    ld [c], a
    ld b, e
    sbc a
    nop
    ld a, h
    and h
    ld [$31a5], sp
    and a
    nop
    cp a
    dec l
    ld h, h
    ld b, c
    and [hl]
    push bc
    add h
    db $ec
    add e
    nop
    nop
    cp a
    push hl
    db $e4
    ld c, a
    and b
    rst $38
    add $7a
    add l
    dec a
    sbc a
    jp Jump_000_3651


    add [hl]
    nop
    add b
    ld a, a
    inc bc
    ld [hl], l
    db $fd
    ld e, a
    jp $c05d


    ei
    ld e, e
    ccf
    add b
    rra
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp a
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
    add b
    rst $18
    nop
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    ld b, e
    rst $38
    ld a, [$00ff]
    add b
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ld a, [$80ff]
    rlc b
    nop
    nop
    ccf
    add hl, de

jr_070_4abe:
    add hl, de
    add hl, de
    ld h, $27
    jr z, jr_070_4abe

    rst $38
    db $f4
    push af
    ccf
    ld l, $29
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld a, [$f4ff]
    push af
    ccf
    inc [hl]
    cpl
    jr nc, jr_070_4b08

    ld [hl-], a
    inc sp
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

jr_070_4b08:
    ld a, [$80ff]
    rst $18
    add b
    rst $18
    ld e, e
    rst $38
    nop
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld c, a
    ldh a, [$fd]
    db $e3
    add b
    rst $18
    add b
    ld d, l
    di
    cp a
    db $e3
    add b
    rst $18
    ld h, c
    ld hl, sp-$47
    ret nz

    add b
    rst $18
    ld c, c
    db $f4
    add hl, de
    rst $00
    add hl, de
    jr nz, @+$23

    dec a
    ei
    ld c, c
    ld sp, hl
    call nz, Call_000_22e1
    inc hl
    ldh a, [$bc]
    db $e3
    add b
    rst $18
    sub d
    ret


    adc d
    pop hl
    jr nz, jr_070_4b69

    ld [hl+], a
    inc hl
    ccf

Call_070_4b4b:
    ld a, [de]
    dec de
    inc h
    dec h
    ld a, [de]
    dec de
    cp h
    pop hl
    add b
    rst $18
    ld hl, sp-$6e
    add $4d
    ldh [$8a], a
    pop hl
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc e
    ld a, a
    dec e
    add hl, de
    add hl, de
    inc e
    dec e
    inc h
    dec h

jr_070_4b69:
    add hl, sp
    db $e4
    ld [hl], b
    add b

Jump_070_4b6d:
    db $dd
    jp $8ae6


    pop hl
    jp z, Jump_000_19e0

    ld e, $1f
    db $fc
    ld [c], a
    ret nz

    ld a, l
    db $e3
    add b
    rst $18
    ld c, [hl]
    and b
    jp $8ae4


    ldh [$ca], a
    ldh [rNR24], a
    add hl, de
    ld l, a
    ld d, $18
    inc d
    ld d, $7d
    db $e3

jr_070_4b8f:
    jr nz, @+$23

    add b
    sbc $e0
    jp nc, $8aa1

    pop hl
    jp $86e1


    ldh [rSCX], a
    ldh [rNR21], a
    inc de
    ld de, $110f
    inc de
    jr jr_070_4bbc

    ld a, c
    pop hl
    or a
    pop bc
    add b
    jp c, $80d1

    pop bc
    ld d, $94
    ldh [$fb], a
    pop hl
    ld c, c
    pop hl
    ld b, e
    pop hl
    pop bc
    ldh [rNR10], a
    db $10

jr_070_4bbc:
    ld [c], a
    cp [hl]
    ldh [rNR21], a
    ld a, $e0
    and a
    ld [c], a
    add b
    reti


    add hl, de
    ld d, $14
    ld l, a
    inc de
    inc de
    inc d
    inc d
    ei
    ld [c], a
    ld d, $16
    db $fc
    ldh [rIE], a
    add hl, de
    add hl, de
    rla
    ld de, $0312
    inc bc
    ld [$1207], sp
    ld de, $3115
    pop hl
    or a
    or e
    jr jr_070_4b8f

    call z, $c2e0
    ldh [$cd], a
    ld de, $e0bc
    inc de
    inc de
    ld c, b
    pop hl
    or l
    ldh [rNR10], a
    dec b
    ccf
    nop
    nop
    nop
    dec b
    db $10
    inc de
    ld a, $e0
    or a
    and c
    ld b, h
    nop
    or a
    rst $10
    add [hl]
    ld d, $d0
    pop bc
    or [hl]
    ld [c], a
    or l
    ldh [rNR11], a
    ret nz

    db $e4
    add e
    ld de, $b717
    and c
    add b
    reti


    ld c, [hl]
    xor b
    adc b
    jp nz, $e370

    inc de
    scf
    ld de, $0604
    ld b, b
    pop hl
    inc de
    ld d, $b7
    and c
    nop
    cp a
    ld [hl], b
    adc h
    ld h, b
    db $10
    and b
    ld b, l
    jp $c242


    inc de
    db $10
    ld c, $c0
    jp $0000


    db $e4
    nop
    cp a
    db $10
    and b
    ld b, l
    jp $a2ff


    cp c
    ret nz

    rst $28
    ret nz

    add d
    ldh [$30], a
    nop
    db $e3
    add b
    jp c, Jump_070_6392

    adc d
    and c
    jr nz, jr_070_4c76

    adc b
    and b
    rst $38
    and e
    nop
    cp l
    pop hl
    add d
    db $e3
    nop
    jp nz, Jump_070_7f80

    ret


    ld b, c
    adc h
    add b
    ld c, c
    add b
    cp d
    ld [c], a
    nop
    ld a, c
    and e
    add d
    pop bc
    ld sp, $80a1
    ld a, a
    adc h
    ld h, d
    ret nc

jr_070_4c76:
    add b
    ld c, c
    add b
    cp d
    ld [c], a
    nop
    ld a, c
    and d
    xor a
    add h
    nop
    cp a
    adc h
    ld h, a
    adc l
    add b
    cp d
    db $e3
    inc [hl]
    pop hl
    xor a
    add d
    nop
    ld a, d
    ld [hl], h
    ld e, $5a
    ld [hl], a
    db $e3
    db $ec
    add e
    add b
    ld a, a
    jp $c452


    db $e3
    add b
    ld a, a
    nop
    jp $bd57


    ld e, e
    ld e, e
    ccf
    add b
    rra
    ld d, l
    ccf
    nop
    ld e, a
    ld a, [$00ff]
    ld e, a
    nop
    ld a, [$80ff]
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
    add b
    rst $18
    ld e, e
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$00ff]
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$80ff]
    rst $18
    ld a, [$00ff]
    add b
    rst $18
    ld a, [$5bff]
    rst $38
    add b
    rst $18
    ld d, l
    rst $38
    add b
    rst $18
    ld a, [$80ff]
    rst $18
    nop
    ld a, [$80ff]
    rst $18
    ld a, [$e8ff]
    db $eb
    nop
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

Jump_070_4d0b:
    jr nc, jr_070_4d43

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
    add hl, hl
    ld c, l
    add e
    ld d, c
    ld a, [c]
    ld d, a
    dec c
    ld e, b
    rrca
    dec c
    ld c, $0e
    ld c, $fc
    jp hl


    ld a, [c]
    ldh [rIE], a
    ldh [$fa], a
    pop hl
    nop
    add sp, -$1e
    or $e5
    db $ed
    pop hl
    ret c

    ld [$e7d0], a
    ei
    db $ed

jr_070_4d43:
    jp z, $ddea

    db $e4
    ld l, b
    ld hl, sp-$1b
    rst $38
    rst $38
    adc d
    rst $20
    ld c, l
    rst $38
    pop hl
    dec l
    dec l
    cp b
    ld_long $ffd8, a
    rst $38
    inc a
    ld [c], a
    dec a
    ldh [$6d], a
    dec bc
    rst $38
    db $e3
    ld c, l
    dec l
    ld c, b
    add d
    db $fd
    cp $ca
    inc de
    db $e4
    ld c, l
    pop bc
    ldh [$f8], a
    pop bc
    dec c
    cp a
    pop hl
    ld [hl], b
    ld [hl], l
    ldh [$fe], a
    rst $18
    ld [bc], a
    jp hl


    add h
    ld [c], a
    dec c
    dec c
    dec hl
    cp h
    pop hl
    add b
    ld a, [hl]
    ldh [$3b], a
    ldh [rOBP0], a
    rst $38
    jp nz, Jump_070_45c6

    ldh [$8a], a
    ldh [$c6], a
    ld [c], a
    dec bc
    dec b
    dec hl
    cp a
    pop hl
    ld c, e
    ld a, h
    ld [c], a
    add $ff
    ret nz

    and $4a
    pop hl
    add d
    ldh [$0e], a
    add c
    ldh [rOCPD], a
    ld a, [bc]
    dec bc
    ret nz

    ldh [$bd], a
    ldh [$fa], a
    pop bc
    ld [bc], a
    rst $38
    db $fc
    ld b, $c5
    ld b, d
    db $e3
    ld c, e
    ld c, e
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]
    add b
    or h
    pop hl
    cp e
    ldh [$fb], a
    ret nz

    cp $d3
    ld b, d
    db $ed
    or d
    and b
    adc $e2
    dec c
    ccf
    ld l, e
    ld c, e
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add e
    ldh [$f4], a
    pop bc
    ld hl, sp-$40
    db $e3
    ld b, d
    rst $38
    ret nz

    rst $20
    dec bc
    dec hl
    ld c, e
    ld l, e
    ld a, [hl+]
    rla
    ld a, [hl+]
    ld c, e
    dec l
    ret nz

    ld [c], a
    dec bc
    add b
    ldh [$91], a
    or l
    ret nz

    rst $08
    cp $82
    call nz, Call_070_4b4b
    dec bc
    ld c, e
    dec l
    dec l
    dec l
    db $10
    ret nz

    cp $02
    db $ed
    ld b, d
    call nz, $c083
    dec bc
    pop bc
    ldh [$80], a
    db $e4
    cp c
    and e
    ld b, h
    cp $dc
    ret z

    add d
    ld l, l
    rst $00
    and c
    ld b, l
    pop bc
    ld c, d
    pop hl
    dec l
    push af
    jp nz, $b920

    and h
    ld a, $fe
    add [hl]
    add c
    pop bc
    ld [c], a
    add d
    pop hl
    ld c, e
    rst $38
    ldh [$b8], a
    and e
    ld b, [hl]
    or d
    pop bc
    dec bc
    dec c
    scf
    and d
    ld [bc], a
    rst $38
    call nc, $2de2
    ld [bc], a
    ret nz

    add b
    ret nz

    pop hl
    ld a, e
    pop hl
    ld b, d
    pop bc
    dec [hl]
    and d
    ret nz

    di
    inc b
    adc l
    ld c, l
    and d
    dec c
    inc bc
    dec l
    dec bc
    add c
    pop hl
    ld a, a
    ld [c], a
    add c
    db $e4
    xor e
    pop hl
    db $fc
    or c
    add b
    pop af
    inc a
    add c
    ldh [$c1], a
    ld [c], a
    dec hl
    dec bc
    ld a, [bc]
    ld l, d
    ld bc, $bce4
    and b
    pop bc
    ld l, l
    xor l
    ld h, h
    ld b, h
    cp e
    adc c
    add b
    ld c, e
    ret nz

    ret nz

    db $e3
    ld c, e
    ld a, [bc]
    rrca
    ld c, d
    ld a, [hl+]
    dec bc
    dec hl
    ret nz

    db $e4
    ld a, [hl]
    and c
    ret nz

    rst $38
    ld d, d
    add c
    ld l, a
    dec l
    dec l
    ld l, e
    ld l, e
    ret nz

    db $e4
    ld a, [bc]
    dec hl
    pop bc
    add b
    or b
    ret nz

    push hl
    pop hl
    ld h, [hl]
    nop
    sub $03
    and h
    dec bc
    ld l, e
    ld bc, $6be2
    rlca
    ld c, e
    ld a, [hl+]
    ld a, [bc]
    cp d
    ld h, d
    ld sp, $76a1
    and b
    add hl, sp
    ld h, h
    cp $55
    ld [bc], a

Call_070_4ea1:
    ret nz

    add sp, $0b
    add b
    pop hl
    add b
    add c
    cp e
    jp $e2c0


    ld b, b
    rst $18
    call nz, Call_000_0c69
    add b
    jp nz, $81fa

    dec hl
    ld l, e
    ret nz

    pop hl
    or a
    ld h, c
    ld [hl], a
    ld h, c
    call nz, Call_000_127f
    ld b, e
    and h
    dec bc
    ccf
    ret nz

    ld c, b
    add b
    dec hl
    ret nz

    pop hl
    rst $28
    ld h, h
    cp d
    ld [hl], e
    nop
    ld b, $67
    ld hl, sp+$20
    add hl, bc
    ld h, l
    call nz, $8481
    ld h, b
    add b
    ld h, b
    cp b
    and c
    cp [hl]
    and d
    jr nz, jr_070_4f5c

    pop hl
    dec sp
    add l
    ld [bc], a
    or l
    adc h
    ld b, c
    ld b, h
    and d
    dec hl
    add [hl]
    and b
    add e
    and c
    add b
    add c
    ldh [$79], a
    ld h, b
    cp [hl]
    and l
    ld a, l
    call nz, Call_070_5608
    ld [$d761], sp
    db $e3
    ld c, e
    nop

Call_070_4f00:
    ld c, b
    ldh [rSB], a
    db $e4
    cp e
    ld b, d
    cp [hl]
    and [hl]
    ret z

    ld a, [hl-]
    ld e, b
    and e
    adc c
    pop hl
    ld c, c
    ld [c], a
    ld [bc], a
    rst $38
    ret nz

    ld l, e
    ld a, a
    push hl
    ccf
    ld h, c
    inc a
    ld h, c
    cp $56
    ld e, d
    and [hl]
    ld b, l
    add c
    ld b, $c3
    add [hl]
    ld l, e
    ld l, e
    cp [hl]
    pop hl
    push af
    ld [hl+], a
    or a
    ld h, b
    ld [hl], l

jr_070_4f2c:
    jr z, jr_070_4f2c

    dec c
    db $10
    add $a6
    ret nz

    db $e3
    jp Jump_070_4183


    add c
    ld l, e
    ei
    inc h
    inc a
    ld h, [hl]
    ld a, h
    or $00
    add $a4
    ret z

    ld h, d
    ld b, h
    ld hl, $a1c8
    ld [bc], a
    ret nz

    ei
    inc h
    xor a
    ld hl, $b63e
    nop
    adc d
    ld h, $4b
    ld h, d
    jp nz, $fde3

    add b
    ld bc, $c1c0

jr_070_4f5c:
    pop hl
    ld a, [hl]
    pop bc
    dec sp
    ld b, d
    ret nz

    cp a
    and e
    ld c, e
    inc c
    ld [$ca85], sp
    inc hl
    add d
    db $e4
    ret nz

    add c
    ld l, e
    ld l, e
    add b
    ld a, [hl-]
    ld h, d
    dec a
    pop bc
    ld a, l
    ld h, h
    cp a
    add $02
    cpl
    ld c, d
    dec h
    ld b, d
    db $e3
    ld l, e
    rra
    inc c
    inc c
    inc c
    inc l
    inc l
    ret nz

    ldh [rSC], a
    ldh [$81], a
    db $e3
    jp nz, Jump_000_22ba

    dec bc
    cp $99
    db $10
    inc hl
    jp z, $c142

    ldh [$6c], a
    ld c, h
    ld bc, $bf4c
    ldh [$80], a
    ret nz

    cp l
    and d
    jp $fbe2


    ld hl, $f502
    ld c, d
    dec h
    ld [bc], a
    adc e
    ld b, c
    ld l, e
    pop bc
    pop hl
    ld [hl], $20
    cp a
    ldh [$b0], a
    pop hl
    scf
    ld [hl+], a
    cp d
    inc h
    adc [hl]
    cp $57
    ld c, $0e
    ld c, l
    ld d, l
    ld b, c
    call Call_070_4401
    ldh [$4c], a
    ld [$0044], sp
    cp a
    ld [c], a
    ld a, $02
    dec hl
    cp d
    dec h
    ld a, $63
    cp $12
    add [hl]
    ld h, e
    and $09
    add b
    ld l, e
    inc l
    ld b, e
    pop hl
    adc b
    add c
    dec c
    dec c
    ld l, h
    adc e
    inc l
    inc c
    ld b, c
    pop bc
    ld l, e
    pop bc
    db $eb
    ld b, $96
    add [hl]
    ld h, c
    ld l, e
    rst $08
    ld c, e
    inc l
    inc l
    ld l, h
    ld b, d
    ldh [$0a], a
    ret nz

    ld c, e
    dec c
    inc bc
    ld l, h
    inc c
    ret nz

    pop hl

Jump_070_5000:
    cp d
    inc h
    jp nz, Jump_070_499b

    dec b
    add a
    ret nz

    ld b, d
    ld [c], a
    ld c, $44
    ld hl, $2c0d
    inc c
    ccf
    ldh [$be], a
    add d
    ret nz

    ld hl, sp+$06
    ld l, d
    db $f4
    ld b, e
    ldh [rSCY], a
    pop hl
    ld c, e
    ccf
    and b
    ld l, e
    dec c
    dec l
    inc l
    add b
    rst $38
    pop bc
    ret nz

    db $e3
    daa
    add c
    db $fd
    inc b
    ld [bc], a
    or l
    ld b, c
    add c
    ret nz

    pop hl
    inc l
    ld de, $814b
    pop hl
    add d
    ld h, b
    or $c0
    ld c, h
    rst $38
    ld h, d
    ccf
    jp $207f


    or b
    pop bc
    inc h
    ld [bc], a
    or e
    jp z, Jump_070_4101

    pop hl
    inc l
    inc c
    dec [hl]
    jp nz, Jump_070_412d

    dec c
    ld a, [$c0a1]
    db $e3
    cp l
    ld b, h
    cp [hl]
    ld d, $68
    add h
    dec bc
    adc [hl]
    ret nz

    inc h
    ld a, $e1
    ret nz

    db $e3
    dec l
    ld a, h
    and b
    ld b, c
    and e
    dec hl
    cp b
    inc bc
    add b
    add e
    inc c
    cp $16
    call c, Call_070_6c41
    ld c, h
    ld b, [hl]
    and e
    nop
    ld b, d
    pop bc
    push bc
    ld a, [hl]
    ld b, c
    ld d, b
    ld bc, $02c4
    xor [hl]
    nop
    adc c
    ld e, c
    ld b, c
    ld c, h
    cp a
    ld [c], a
    inc c
    add b
    add b
    ret nz

    db $76
    jp nz, Jump_070_43fd

    ret nz

    db $e3
    nop
    ld hl, $d900
    ld b, [hl]
    ld hl, $0b0b
    ld h, b
    inc c
    ret nz

    jp Jump_000_3c80


    and c
    rst $30
    and b
    ret nz

    jp hl


    dec c
    ld l, l
    add c
    inc h
    ld h, h
    add $16
    ld a, a
    and c
    dec bc
    ld a, $e4
    ld hl, sp-$5f
    ld l, h
    ld l, h
    or $64
    db $10
    ld bc, $43e2
    ld h, c
    nop
    ld e, c

Jump_070_50c0:
    ld [bc], a
    ld b, c
    dec c
    add hl, de
    and b
    ld a, $e2
    pop bc
    db $e3
    ld b, b
    ld [hl], e
    add e
    add hl, sp
    ld h, d
    ld b, h
    ld b, l
    nop
    ld e, c
    ret nz

    ld hl, $a056
    ld c, h
    db $fc
    ret nz

    db $10
    ld b, c
    add b
    add d
    db $e3
    ld a, d
    ld h, c
    cp [hl]
    inc bc
    ld c, l
    ld a, [$3e80]
    ld sp, hl
    db $fc
    ld h, e
    nop
    inc a
    ld [c], a
    jp Jump_070_7ae0


    ld h, h
    add [hl]
    call nz, $63c3
    ld a, [de]
    add e
    inc b
    scf
    cp d
    ld h, [hl]
    nop
    cp [hl]
    ld b, l
    jp nz, $82e6

    ld e, e
    cp $0a
    jr jr_070_5127

    cp $f2
    cp a
    add $fe
    jp c, $c004

    ei
    ld b, b
    rra
    ld l, l
    nop
    ld b, [hl]
    ld a, c
    db $ed
    ld b, d
    ld b, c
    ret nz

    db $fc
    db $fc
    ld bc, $7e00
    ld b, c
    db $fc
    pop af
    ld b, b
    add e
    ld [bc], a
    ld sp, hl
    cp d
    ld b, d
    add b

jr_070_5127:
    daa
    ld sp, hl
    call $80c0
    nop
    nop
    reti


    ld [hl+], a
    db $e3
    add c
    ld bc, $22d7
    db $fc
    db $ec
    ld b, c
    ld b, [hl]
    cp $5b
    sbc e
    jr nz, @-$3e

    nop
    or $bf
    add e
    cp [hl]
    ld e, d
    ld b, b
    ei
    ld b, c
    add c
    nop
    db $dd
    ld c, l
    dec l
    sbc b
    db $10
    and b
    adc $80
    db $fc
    db $ed
    dec c
    ld c, e
    inc bc
    ld b, e
    nop
    sbc $4d
    ld bc, $512d
    add b
    cp [hl]
    rst $28
    ld [c], a
    ld b, c
    ld b, h
    db $dd
    ld a, [hl-]
    add h
    or $42
    ei
    db $e3
    nop
    adc d
    ld hl, $0381
    add d
    db $e4
    ret nz

    cp [hl]
    ld [hl], $04
    cp h
    db $e4
    inc l
    jr nz, jr_070_51b9

    nop
    nop
    ret z

    rst $00
    ld [bc], a
    or c
    nop
    nop
    nop
    rst $28
    and b
    call c, $dedd
    db $fc
    jp hl


    sub $d7
    and b
    cp $ff
    ldh [$d0], a
    pop de
    and b
    and b
    jp nc, $a0d3

    ccf
    call nc, $a0d5
    ret c

    reti


    and b
    db $fc
    ld [c], a
    ret c

    db $ed
    ld e, $c8
    push hl
    rst $18
    ldh [$e1], a
    ld [c], a
    db $fc
    jp hl


    ret nc

    ldh [$c3], a
    ldh [$f8], a
    call nz, $c3e0
    pop hl
    or l
    ldh [$da], a
    db $db
    ret nc

jr_070_51b9:
    pop de
    jp c, $dbe7

    and b
    and b
    ret c

    db $ed
    ret z

    push hl
    db $e3
    db $e4
    push hl
    ld [hl], c
    and $fc
    jp hl


    call nc, $87e0
    ld [c], a
    sbc a
    and d
    sbc l
    rst $38
    pop hl
    sbc e
    and d
    sbc a
    or h
    ld [c], a
    and b
    and b
    ret c

    db $ed
    ret z

    push hl
    rst $20
    rst $00
    add sp, -$17
    ld [$e9fc], a
    ld b, l
    ldh [$87], a
    pop hl
    sbc a
    sbc h
    ld l, l
    ld b, [hl]
    rst $38
    db $e3
    sbc h
    sbc a
    ld a, b
    pop hl
    ret nc

    pop de
    ret c

    db $ed
    ldh [$c8], a
    push hl
    ld a, [hl+]
    db $ec
    add hl, bc
    ld [c], a
    add h
    ldh [$c1], a
    ldh [$79], a
    ld a, d
    ld a, e
    inc bc
    ld a, h
    ld a, l
    cp a
    pop hl
    db $eb
    db $e3
    cp $d4
    ld [bc], a
    db $eb
    jp nz, Jump_070_45c0

    ldh [$7e], a
    add h
    ld [c], a
    ld a, c
    ld a, [hl]
    ld b, l
    ld b, c
    ld b, l
    ld a, a
    cp a
    pop hl
    ld e, $3b
    ldh [$d4], a
    push de
    ret nc

    pop de
    cp $d3
    ld [bc], a
    db $eb
    sub d
    pop bc
    rst $30
    sbc a
    sbc h
    xor [hl]
    pop bc
    ld [c], a
    cp l
    inc l
    ld h, $2a
    adc h
    cp a
    ld [c], a
    ld a, h
    ld [c], a
    jp nc, $fed3

    db $d3
    ld [bc], a
    db $eb
    sub [hl]
    pop bc
    sbc [hl]
    ei
    xor [hl]
    xor a
    add d
    ld [c], a
    ld l, $20
    jr nz, jr_070_5277

    ld d, b
    rrca
    ld b, e
    add c
    ld b, [hl]
    ld b, [hl]
    or c
    ldh [$fa], a
    pop bc
    cp $d3
    ld [bc], a
    db $ec
    ld a, [$c006]
    sbc [hl]
    pop bc
    ldh [rDMA], a
    add b
    xor [hl]
    ld b, d
    inc hl
    ld e, a
    ld h, $2a

jr_070_5269:
    ld b, a
    ld e, l
    ld d, l
    ret nz

    ldh [$af], a
    cp [hl]
    ldh [$71], a
    sbc [hl]
    ld [$00a1], a
    db $dd

jr_070_5277:
    call nz, $d2a1
    db $d3
    and c
    adc [hl]
    pop hl
    rst $38
    add b
    xor a
    ld b, b
    dec [hl]
    inc a
    ld c, d
    ld h, b
    ld d, l
    pop bc
    ld b, l
    add b
    ldh [$be], a
    pop hl
    ret nz

    ld [c], a
    nop
    db $dd
    sub h
    and c
    call nc, $fdd5
    sbc [hl]
    adc [hl]
    pop hl
    add b
    ld b, [hl]
    add hl, sp
    dec [hl]
    dec [hl]
    ld d, l
    cpl
    ld d, d
    ld b, l
    add e
    add h
    jr c, jr_070_5269

    sbc [hl]
    ld l, l
    and c
    nop
    db $dd
    ld hl, sp-$6c
    and c
    nop
    ldh [rTMA], a
    pop bc
    add d
    add e
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld e, a
    add hl, sp
    ld b, l
    add e
    add [hl]
    add l
    ld hl, sp-$5d
    and c
    ld sp, $f8a1
    nop
    call c, $c403
    add $a2
    add l
    add a
    ld [hl], c
    ld [hl], d
    ld l, h
    add c
    ld a, [hl-]
    pop bc
    ldh [$74], a
    pop bc
    cp c
    and [hl]
    ld a, [$0290]
    db $eb
    inc bc
    jp nz, $fd79

    ld a, d
    ret


    and b
    ld b, h

Call_070_52e2:
    inc a
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    add a
    dec c
    add l
    jp Jump_070_79c0


    ld a, d
    cp c
    and h
    xor e
    add b
    nop
    reti


    sbc d
    add d
    add [hl]
    pop bc
    pop hl
    ld a, [hl]
    xor [hl]
    ret


    and b
    ld bc, $3fe0
    ldh [$b8], a
    and d
    xor [hl]
    dec e
    ld b, [hl]
    cp c
    and b
    xor [hl]
    sbc h
    sbc a
    ld l, a
    add b
    nop
    reti


    ld [bc], a
    ld [c], a
    ld a, l
    and c
    adc b
    and b
    ld b, [hl]
    xor a
    add e
    add h
    ld b, l
    ld bc, $e7e0
    dec [hl]
    dec [hl]
    ld a, $36
    pop bc
    ld b, b
    pop bc
    ld a, a
    ld a, l
    xor a
    and e
    xor [hl]
    sbc [hl]
    ld [hl-], a
    add b
    nop
    db $db
    ld c, $80
    sbc [hl]
    ld b, $c0
    ld b, [hl]
    rst $08
    ld b, [hl]
    adc d
    add l
    ld [hl], $81
    pop hl
    add b
    ld [c], a
    add d
    add e
    dec e
    ld b, [hl]
    xor a
    and b
    add c
    ld b, [hl]
    xor a
    db $fd
    and e
    nop
    sbc c
    pop de
    ld h, b
    sbc $c0
    ldh [$af], a
    ld b, [hl]
    add e
    add h
    ld b, d

jr_070_5353:
    ld [c], a
    dec [hl]
    inc a
    ld a, a
    ld b, h
    ld c, b
    ld d, e
    ld b, l
    add l
    add [hl]
    add e
    ld [hl], b
    and b
    ld hl, $b881
    add d
    and e
    ld h, b
    nop
    sbc c
    add [hl]
    ld h, b
    sbc [hl]
    ld b, [hl]
    ret nz

    ld c, e
    ret nz

    cp $42
    ld [c], a
    dec [hl]
    ld a, [hl-]
    ld d, c
    ld e, [hl]
    ld d, h
    dec hl
    cp l
    ret nz

    cp a
    ldh [$c0], a
    pop hl
    ld a, [hl]
    and c
    ld [hl], e
    ld h, b
    nop
    sbc c
    ret nz

    jp nz, $8785

    rst $30
    add a
    add l
    ld b, h
    ret nz

    db $e3
    add hl, sp
    ld c, d
    ld e, b
    dec l
    ld e, a
    jr nz, jr_070_5353

    ld b, h
    add l
    adc e
    add b
    pop hl
    and c
    dec hl
    ld h, b
    or b
    ld [hl], a
    ld h, b
    nop
    jp c, Jump_070_6009

    jp nz, $45a2

    ld a, $82
    pop bc
    ld [hl], $7f
    ld b, l
    ld d, l

Jump_070_53ae:
    ld d, [hl]
    ld [hl-], a
    jr nz, jr_070_53d2

    dec l
    ld [hl], e
    and b
    ld bc, $80ae
    pop hl
    dec hl
    ld h, c
    nop
    sbc b
    call nz, $0263
    and b
    add [hl]
    ld h, b
    ld b, d
    pop bc
    rst $38
    inc a
    ld b, h
    ld b, [hl]
    ld b, l
    ld b, e
    cp l
    inc hl
    ld h, $82
    ret nz

    pop hl
    xor a

jr_070_53d2:
    nop
    pop hl
    or d
    ld b, b
    nop
    sbc c
    adc h
    ld b, b
    call nz, Call_070_7a66
    push de
    ld h, [hl]
    ld [bc], a
    ldh [rLYC], a
    ld b, [hl]
    add b
    add hl, sp
    cp c
    pop hl
    add b
    ld b, [hl]
    add a
    ld b, [hl]
    adc h
    ld a, l
    ld [hl], a
    ld h, d
    nop
    sbc c
    adc h
    ld b, c
    add l
    ld h, l
    ld [hl], $7f
    ld l, b
    ld h, [hl]
    dec [hl]
    add hl, sp
    xor [hl]
    ld b, [hl]
    xor a
    ld sp, hl
    and b
    rrca
    inc a
    ld b, h
    ld a, c
    adc l
    xor a
    ld h, b
    db $76
    ld h, b
    ld [hl], $60
    nop
    sbc b
    db $f4
    adc h
    ld b, c
    add hl, bc
    ld h, h
    adc a
    add h
    add b
    ld l, d
    dec [hl]
    ld b, b
    xor a
    dec de
    ld b, [hl]
    ld b, l
    ld sp, hl
    and b
    ld a, [hl-]
    ld b, l
    cp [hl]
    and d
    cp $a0
    ei
    ld h, e
    ld h, b
    nop
    ld d, h
    adc $20
    adc h
    ld b, d
    ld d, c
    and c
    add e
    and b
    ld l, h
    ld l, l
    pop bc
    ret nz

    or d
    dec sp
    and d
    ld a, $be
    and [hl]
    cp e
    ld h, b
    sub $d7
    nop
    ld d, l
    jp nc, $d3f9

    ld [$4262], sp
    and c
    scf
    jr c, jr_070_5480

    ld l, h
    ld l, a

jr_070_544d:
    push de
    ld l, [hl]
    ld b, c
    add b
    xor [hl]
    ld a, c
    pop bc
    ld a, [hl-]
    cp [hl]
    xor c
    ret c

    reti


    ld a, $00
    ld d, l
    call nc, $a1d5
    ld b, [hl]
    xor a
    adc b
    ld h, b
    ld c, h
    pop hl
    ld [hl], a
    ld l, h
    ld [hl], d
    ld [hl], b
    pop bc
    ldh [$35], a
    add hl, sp
    xor a
    cp e
    add d
    ld sp, $7d36
    and c
    ld l, h
    and b
    inc a
    ld h, c
    jp c, Jump_000_00db

    ld d, h
    add l
    and d
    ld b, $16

jr_070_5480:
    ld h, b
    add d
    add e
    pop bc
    ldh [$83], a
    pop hl
    ld b, b
    jp $81ba


    jr c, jr_070_544d

    rlca
    add l
    add a
    adc b
    dec [hl]
    add b
    cp [hl]
    and c
    ld a, [$044e]
    call nz, $a5c6
    jp nc, Jump_070_60c8

    ld [hl], c
    add e
    ld [c], a
    ld b, b
    jp nz, $b846

    and b
    ld h, d
    ld h, e
    nop
    cp d
    ld hl, $633c
    dec [hl]
    ld [hl+], a
    nop
    ld d, c
    sub e
    ld bc, $6248
    ret z

    ld h, b
    add [hl]
    add d
    ld a, d
    inc bc
    add d
    xor [hl]
    ld a, [hl-]
    add b
    ld h, d
    ld h, a
    dec [hl]
    add hl, sp
    ei
    inc hl
    inc bc
    xor [hl]
    sbc [hl]
    ld [hl], b
    nop
    ld h, c
    nop
    nop
    ld d, c
    adc d
    inc h
    add l
    ret nz

    ld b, a
    add e
    ccf
    dec [hl]
    dec sp
    jr c, jr_070_5510

    ld b, l
    ld b, [hl]
    nop
    ldh [$c1], a
    ldh [rDIV], a
    ld a, [$fb60]
    ld [hl+], a
    xor a
    ld [hl], $21
    ld sp, $0000
    ld c, a
    ld c, b
    ld b, c
    ret


    jr nz, jr_070_554c

    ld d, $40
    pop bc
    db $e4
    jr c, @+$39

    ld b, e
    ld b, e
    ldh [$ae], a
    ld b, c
    ldh [rTIMA], a
    ld l, c
    cp d
    ld h, c
    xor [hl]
    add d
    and b
    and h
    ret nz

    cp a
    jp Jump_070_5000


    ld c, d
    inc hl
    db $fc
    ret


    ld hl, $8308

jr_070_5510:
    ld [hl], $03
    inc b
    rlca
    inc b
    inc bc
    ld c, d
    ret z

    jr nz, jr_070_5553

    ret nz

    ld [c], a
    ld a, [hl-]
    inc bc
    jp nz, $206b

    sbc [hl]
    cp $50
    db $e4
    nop
    ld b, c
    ld b, [hl]
    ld h, c
    and c
    dec bc
    ld hl, $634a
    ld [hl], $02
    rrca
    rra
    inc b
    add hl, bc
    inc b
    rrca
    ld [bc], a
    ldh a, [$e1]
    add b
    pop hl
    or a
    add b
    ld h, [hl]
    cp d
    ld [hl+], a
    ld b, [hl]
    sbc [hl]
    cp $50
    ld [$d283], sp
    db $d3
    ld c, d
    ld [hl+], a
    ld a, $c3

jr_070_554c:
    pop bc
    jr c, jr_070_5586

    ld [bc], a
    rrca
    ld [bc], a
    ld a, l

jr_070_5553:
    ld b, b
    ld a, [$06e0]
    ret nz

    pop hl
    xor h
    xor h
    or a
    add b
    cp d
    inc h
    cp $51
    jr nc, jr_070_5566

    ld c, e
    ld [bc], a
    rst $30

jr_070_5566:
    xor [hl]
    ld b, [hl]
    ld b, b
    ld b, h
    ld [c], a
    rrca
    ld b, $79
    ld a, [hl]
    ei
    ld b, e
    ld a, a

jr_070_5572:
    cp a
    pop hl
    ld b, h
    inc a
    ld l, c
    xor l
    xor l
    add e
    dec [hl]
    add hl, sp
    cp d
    inc h
    ld a, $61
    nop
    ld d, h
    ld b, [hl]
    ld b, d
    ret nc

    add c

jr_070_5586:
    ld [hl], $ff
    dec b
    rrca
    sbc b
    ld c, $05
    add b
    dec l
    inc l
    rst $38
    cp l
    ld a, a
    ld a, l
    ld b, $0e
    dec b
    ld a, [hl-]
    ld l, e
    rst $00
    ld l, h
    dec [hl]
    inc a
    pop bc
    add sp, $00
    ld d, l
    add [hl]
    ld h, l
    ld b, l
    ld b, l
    ei
    ld b, $9a
    ld b, d
    ldh [$8d], a
    ld [hl-], a
    jr nz, jr_070_55e0

    ld b, [hl]
    rra
    add c
    dec b
    sbc b
    ld b, $39
    cp e
    jr nz, jr_070_5572

    ld hl, $217a
    ret nc

    ccf
    ld h, c
    nop
    ld d, l
    ret nz

    and l
    ld b, e
    ldh [$98], a
    ld b, d
    ldh [rLYC], a
    ld l, $7f
    jr nz, jr_070_55fa

    add e
    add h
    dec b
    sbc c
    ld [$a2b2], sp
    nop
    cp d
    jr nz, jr_070_5604

    ld bc, $613f

jr_070_55da:
    nop
    sub h
    adc c
    ld bc, $01c8

jr_070_55e0:
    ld b, e
    ldh [rSCY], a
    pop hl
    rst $38
    ld b, [hl]
    add hl, sp
    ld hl, $2a26
    adc d
    add l
    ld b, $03
    sbc e
    ld [$c0ef], sp
    scf
    and e
    and h
    and b
    db $fd
    inc b
    nop
    ld d, b

jr_070_55fa:
    jr z, jr_070_563d

jr_070_55fc:
    cp $ff
    and b
    xor [hl]
    ld b, [hl]
    ld b, $98
    sub a

jr_070_5604:
    sbc b
    ld [$46fb], sp

Call_070_5608:
    add b
    add e
    jr nz, jr_070_5646

    ld b, l
    add c
    dec b
    ld c, $00
    ld b, b
    ldh [$f0], a
    and e
    ld [hl], $61
    ld a, a
    jr nz, jr_070_55da

    ld hl, $5100
    jr z, @+$43

    add b
    and b
    rst $28
    xor a
    ld b, [hl]
    ld [$8098], sp
    pop hl
    add d
    add e
    inc a
    rra
    dec [hl]
    ld a, [hl-]
    add e
    add h
    ld a, [bc]
    or a
    ret nz

    ld hl, sp+$24
    dec [hl]
    and b
    or b
    ld a, e
    jr nz, jr_070_55fc

    ld h, c
    nop

jr_070_563d:
    db $d3
    jr z, jr_070_5680

    and b
    and c
    ld e, e
    ld h, b
    ld b, $9f

jr_070_5646:
    ld bc, $9800
    sbc b
    ld b, $7c
    add c
    add l
    nop
    ld a, [bc]
    ret z

    ld bc, $b9e4
    inc bc
    inc a
    ld h, b
    sbc [hl]
    ld [bc], a
    xor a
    nop
    ld b, [hl]
    ret nc

    pop de
    inc a
    ld bc, $4d81
    ldh [$97], a
    sbc b
    rrca
    ld [bc], a
    ld b, b
    ld [c], a
    inc sp
    ldh [$0e], a
    ld bc, $35e3
    dec [hl]
    ld b, b
    ld h, [hl]
    add d
    ld a, $00
    ld [bc], a
    xor [hl]
    nop
    add [hl]
    db $ec
    ld a, a
    and b
    ld e, e
    pop bc
    ld [bc], a
    rrca

jr_070_5680:
    cp $c0
    ld c, $05
    ld a, $0f
    dec [hl]
    add hl, sp
    ld [bc], a
    rlca
    db $76
    ret nz

    ld sp, hl
    dec b
    ld bc, $00c5
    rst $10
    ret z

    ld b, $41
    sbc l
    add c
    cp [hl]
    ret nz

jr_070_5699:
    sub a
    add hl, bc
    ret nz

    db $fd
    add b
    ld bc, $4000
    ld bc, $b7e5
    ld b, b
    jp nz, $83a1

    ld h, c
    nop
    sub $7f
    and h
    ld b, [hl]
    adc e
    ret nz

    adc a
    sbc b
    sbc b
    rrca
    inc b
    ld sp, hl
    and b
    jr c, jr_070_5699

    dec sp
    ld [bc], a
    dec sp
    ret nz

    pop bc
    ld [c], a
    jp nz, $83a0

    ld h, c
    nop
    ld d, a
    db $fc
    ld h, b
    ld bc, $0242
    dec c
    rst $38
    nop
    ld bc, $9998
    sbc d
    sbc c
    sbc b
    dec c
    pop bc
    ld [bc], a
    jp nz, $f643

    ld h, c
    ld b, e
    ld h, d
    add e
    ld h, d
    nop
    ld d, [hl]
    ret c

    reti


    cp $fe
    inc hl
    xor [hl]
    inc bc
    inc b
    dec c
    sbc e
    dec c
    rlca
    add b
    nop
    add c
    cp e
    nop
    ld a, d
    ld h, c
    ld b, h
    ld h, d
    ld b, d
    ld [hl+], a
    ret c

    ld h, c
    nop
    ld d, l
    jp c, $db39

    ld b, b
    inc hl
    add hl, sp
    add b
    inc bc
    add hl, bc
    inc bc
    cp e
    inc bc
    jp nz, $80e5

    jp $4263


    ld b, c
    cp $0f
    ld [hl-], a
    ld h, l
    dec a
    and c
    ld b, c
    dec b
    set 4, h
    ld b, l
    nop
    jp nz, $82e5

    ld b, h
    ld b, d
    ld b, d
    nop
    call nc, Call_000_22fc
    ld b, c
    ld [bc], a
    ld a, b
    ld h, c
    db $fd
    pop af
    jr jr_070_576e

    ld b, e
    nop
    call nc, Call_000_01fa
    sub $d7
    cp e
    add d
    ld a, b
    ld h, c
    ret nz

    di
    nop
    sbc h
    add b
    nop
    push de
    ld a, [$ba01]
    ld b, e
    add d
    db $f4
    ret nz

    and h
    nop
    sub l
    inc l
    ld b, c
    cp $ba
    ld b, c
    sbc [hl]
    ld b, [hl]
    ld b, l
    ld b, c
    ld b, c
    scf
    scf
    ret nz

    db $fc
    rst $28
    ld a, [hl]
    add b
    cp [hl]
    and c
    nop
    rst $10
    cp [hl]
    and c
    dec sp
    and c
    ld b, d
    and h
    dec l
    ld h, h
    rst $38
    ldh a, [$a5]
    ld b, d
    ret nz

    add b
    and c
    ld b, c
    ld [hl+], a

jr_070_576e:
    nop
    call nc, $fcfe
    ld h, c
    call nc, $9ed5
    ld b, [hl]
    ld b, b
    ld l, c
    and e
    rla
    dec [hl]
    dec [hl]
    and e
    db $fc
    db $ed
    ld l, d
    cp l
    add c
    add c
    ld b, c
    nop
    sub $64
    db $e3
    and d
    db $fc
    nop
    ld b, d
    adc [hl]
    ld hl, $eefd
    ld l, d
    ld b, d
    cp a
    add h
    jr c, jr_070_5797

jr_070_5797:
    rst $10
    db $e3
    and b
    cp d
    jr nz, @+$48

    ld b, b
    ld l, e
    inc bc
    add b
    db $fd
    xor $e3
    ld l, l
    ld b, b
    ld b, c
    add c
    jr jr_070_57cb

    nop
    db $db
    sbc a
    sbc h
    ld b, l
    rst $18
    scf
    dec a
    jr c, @+$3a

    dec a
    db $fc
    db $ed
    xor [hl]
    ld b, l
    ld a, b
    jp Jump_000_0004


    db $dd
    ccf
    ret nz

    ld b, l
    ld b, e
    ld b, e
    ld b, l
    db $fc
    db $ed
    sbc [hl]
    add h
    ld bc, $d1d0

jr_070_57cb:
    jp c, Jump_000_00db

    db $dd
    cp $a0
    sbc l
    add h
    rst $38
    rst $20
    di
    and h
    sbc h
    db $ed
    ldh [$c4], a
    jr nz, jr_070_581d

    add c
    nop
    db $db
    and b
    ld [$4277], sp
    cp $e7
    ld [hl], e
    pop hl
    ld b, l
    ret z

    call nz, $a262
    nop
    sub b
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
    inc d
    rlca
    ld [bc], a
    ld bc, $0813
    ld [bc], a
    ld [bc], a
    inc hl
    ld [$0302], sp
    jr jr_070_5826

jr_070_581d:
    ld [bc], a
    inc b
    dec h
    add hl, bc
    ld [bc], a
    dec b
    dec d
    ld a, [bc]
    ld [bc], a

jr_070_5826:
    ld b, $20
    dec c
    ld [bc], a
    rlca
    inc d
    rrca
    ld [bc], a
    ld [$0f23], sp
    ld [bc], a
    add hl, bc
    jr z, jr_070_5844

    ld [bc], a
    ld a, [bc]
    dec h
    db $10
    ld [bc], a
    dec bc
    add hl, hl
    db $10
    ld [bc], a
    inc c
    ld [de], a
    ld de, $0d02
    inc h

jr_070_5844:
    ld de, $0e02
    ld h, $15
    ld [bc], a
    rrca
    dec e
    rla
    ld [bc], a
    db $10
    dec de
    jr @+$04

    ld de, $1825
    ld [bc], a
    ld [de], a
    daa
    add hl, de
    ld [bc], a
    inc de
    ld [de], a
    ld a, [de]
    ld [bc], a
    inc d
    ld h, $1a
    ld [bc], a
    dec d
    inc c
    dec de
    ld [bc], a
    ld d, $1c
    dec de
    ld [bc], a
    rla
    dec c
    inc e
    ld [bc], a
    jr jr_070_588c

    rra
    ld [bc], a
    add hl, de
    ld a, [hl+]
    rra
    ld [bc], a
    ld a, [de]
    dec c
    jr nz, @+$04

    dec de
    jr z, jr_070_589d

    ld [bc], a
    inc e
    ld a, [bc]
    ld hl, $1d02
    dec de
    ld hl, $1e02
    inc h
    ld hl, $1f02
    add hl, hl

jr_070_588c:
    ld hl, $2002
    add hl, bc
    inc hl
    ld [bc], a
    ld hl, $2420
    ld [bc], a
    ld [hl+], a
    ld hl, $0224
    inc hl
    dec bc
    dec h

jr_070_589d:
    ld [bc], a
    inc h
    ld h, $27
    ld [bc], a
    dec h
    add hl, hl
    add hl, hl
    ld [bc], a
    ld h, $0b
    ld a, [hl+]
    ld [bc], a
    daa
    daa
    ld a, [hl+]
    ld [bc], a
    jr z, jr_070_58da

    ld a, [hl+]
    ld [bc], a
    add hl, hl
    ld a, [bc]
    dec hl
    ld [bc], a
    ld a, [hl+]
    add hl, hl
    dec hl
    ld [bc], a
    dec hl
    inc c
    inc l
    ld [bc], a
    inc l
    dec bc
    ld l, $02
    dec l
    inc c
    cpl
    ld [bc], a
    ld l, $10
    ld [hl-], a
    ld [bc], a
    cpl
    ld h, $32
    ld [bc], a
    jr nc, jr_070_58e1

    dec [hl]
    ld [bc], a
    ld sp, $3829
    ld [bc], a
    ld [hl-], a
    ld h, $3d
    rst $38

jr_070_58da:
    rst $38
    rst $38
    db $e4
    ld e, b
    jp c, Jump_000_125b

jr_070_58e1:
    ld h, b
    dec l
    ld h, b
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f5
    ld a, [de]
    rst $38
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    db $fc
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $fc
    rst $38
    push hl
    cp $df
    and h
    di
    add $e1
    nop
    pop bc
    db $e3
    rst $38
    rst $38
    ret nz

    or $d8
    rst $38
    inc h
    ld sp, hl
    ret nz

    ei
    ld a, [bc]
    ld hl, sp+$01
    pop hl
    ld [hl], b
    dec a
    jp hl


    ld a, [$aad2]
    or $c0
    and $4d
    dec l
    dec l
    rst $38
    jp Jump_000_383c


    rst $38
    ret nz

    rst $28
    dec c
    dec c
    ld l, l
    dec c
    cp [hl]
    ldh [$c0], a
    rst $38
    or $80
    rst $28
    ld c, l
    ld c, l
    db $fd
    ldh [rKEY1], a
    ld l, l
    dec bc
    dec c
    adc a
    dec c
    dec bc
    ld c, l
    dec l
    ld a, d
    ret c

    db $10
    rrc h
    add $6d
    rrca
    dec c
    dec bc
    dec c
    dec bc
    rst $38
    push hl
    ld a, [hl]
    ld [c], a
    add b
    db $e4
    cp $dd
    add b
    call z, $88a0
    db $e3
    add [hl]
    pop hl
    cp [hl]
    db $e4
    ei
    ret nz

    ld c, e
    rst $38
    ld [hl], b
    and l
    ld l, l
    inc b
    jp z, $c0e6

    rst $20
    dec c
    ret nz

    rst $38
    adc [hl]
    and l
    ld b, a
    ldh [$8a], a
    push hl
    ld b, b
    and $03
    dec bc
    dec c
    ld a, h
    call nz, $dd00
    sub b
    jp nz, $e7c9

    ld a, d
    rst $20
    inc a
    ret nz

    nop
    db $fc
    or d
    ld a, [bc]

jr_070_59a7:
    call $e108
    ret nz

    db $f4
    ld [hl], h
    cp a
    sub c
    ld h, b
    adc e
    jp $c4c6


    nop
    add c
    add c
    ld a, [hl]
    ret


    ret nz

    db $fd
    ld d, c
    add d
    add $c6
    jp Jump_070_7ce2


    push bc
    ld a, [hl]
    jp nz, Jump_070_7610

    sub d
    ld [bc], a
    ld [$e803], a
    ld b, d
    pop bc
    dec hl
    ld [hl], l

Jump_070_59d0:
    add sp, -$04
    and e
    db $f4
    ld l, a
    nop
    sub h
    adc e
    res 4, [hl]
    adc c
    and b
    jp nz, $bee0

    ldh [$34], a
    push hl
    ld a, d
    and d
    ld a, [hl-]
    cp b
    nop
    ld hl, $19a2
    ldh [rDIV], a
    push bc
    jp nz, Jump_070_7ee1

    db $eb
    ret nz

    db $fc
    sub d
    add h
    add d
    and $ff
    ld c, e
    ld c, e
    ld c, e
    ld l, e
    ld c, e
    ld l, e
    ld a, [bc]
    ld c, d
    ret nz

    jr c, jr_070_59a7

    cp h
    and b
    or d
    ld [hl], b
    ld [bc], a
    xor a
    ld b, e
    push hl
    ret nz

    ldh [rOCPD], a
    ld a, [bc]
    rrca
    ld a, [hl+]
    ld a, [hl+]
    ld a, [bc]
    ld a, [bc]
    ld hl, sp-$7b
    ld [hl], l
    add b
    ld [bc], a
    cp a
    add b
    call nz, $c5fe
    pop bc
    ld c, e
    ld c, e
    dec bc
    ld a, [bc]
    ld a, [hl+]
    ld a, [bc]

jr_070_5a25:
    ld a, [hl+]
    add hl, bc
    ld c, e
    dec l
    pop hl
    or a
    pop bc
    ld l, l
    ld b, d
    cp a
    add b
    jp hl


    ret nz

    pop hl
    cp l
    ldh [$3f], a
    dec hl
    dec l
    dec l
    dec l
    dec hl
    dec hl
    db $76
    ret nz

    rst $38
    and e
    sbc h
    ret nc

    ld e, [hl]
    ret nz

    and h
    dec c
    ld l, e
    ld l, e
    ld bc, $47e1
    and b
    dec l
    nop
    xor $c1
    scf
    ret nz

    ld b, c
    jp $9ffe


    add l
    add [hl]
    ret nz

    ld [c], a
    pop bc
    pop hl
    add d
    pop hl
    ld b, b
    add b
    pop hl
    ld hl, sp+$33
    ld a, $ae
    add h
    add h
    add b
    ldh [$fe], a
    ret nz

    dec c
    pop bc
    ld [c], a
    nop
    or $a1
    ld b, b
    rst $38
    sub d
    ld [bc], a
    ccf
    ret nz

    add $a1
    ld b, b
    jp $813c


    ld a, h
    and b
    nop
    ld bc, $82e1
    jp nz, $ff00

    jp nc, $8542

    ld h, c
    ld b, b
    ret nz

    ld bc, $b9e1
    and c
    nop
    ld a, b
    and c
    add d
    push de
    ld [de], a
    dec l
    ld c, a
    ld b, d
    dec b
    ld h, c
    ld b, b
    pop bc
    ld bc, $fae0
    ld b, b
    jr c, jr_070_5a25

    and $00
    ld e, a
    ld d, $23
    ld c, l
    dec l
    dec hl
    add c
    pop hl
    pop bc
    pop hl
    nop
    add e
    ret nz

    ld a, d
    add d
    ld a, [hl-]
    ld b, b
    ld b, d
    rst $38
    cp h
    xor b
    pop bc
    ret nz

    ccf
    ret nz

    add e
    jp nz, $f600

    add c
    ld b, h
    push de
    adc [hl]
    ld de, HeaderDestinationCode
    set 4, b
    ld b, h
    call nz, Call_070_43fa
    ret nz

    ld sp, hl
    nop
    ld [bc], a
    db $ec
    adc h
    ld [hl+], a
    call nz, $8762
    and h
    ld b, e
    pop bc
    ld b, l
    add h
    cp $1a
    ld d, b
    inc h
    inc b
    adc h
    ld [hl+], a
    ld a, [bc]
    add c
    dec c
    add a
    and l
    ld b, c
    ld l, b
    inc c
    ld a, $04
    ld b, [hl]
    ld [bc], a
    add d
    nop
    add h
    ld [c], a
    jp Jump_070_73a1


    ldh [$c0], a
    rst $38
    push bc
    ld hl, $634c
    ld b, a
    ld h, d
    call z, $0681
    inc b
    jp Jump_000_2b2b


    inc sp
    ldh [$c0], a
    inc d
    ld [bc], a
    ld l, h
    sub c
    and h
    cp $29
    nop
    ld a, $62
    ld b, e
    add c
    ld [bc], a
    rst $38
    inc c
    ld h, h
    cp a
    db $ec
    add hl, sp
    ld b, c
    push bc
    ld h, l
    ld b, d
    ld sp, hl
    nop
    ld [bc], a
    ld b, c
    ld d, l
    and d
    jp z, $bdc4

    pop bc
    add [hl]
    ld l, c
    inc b
    ld e, l
    ret nz

    push hl
    ret


    ld b, l
    nop
    adc h
    and b
    ld a, [c]
    ld b, e
    add [hl]
    ld h, e
    nop
    sbc $82
    ld b, c
    adc $61
    ld b, c
    ld h, h
    ld de, $0043
    ld b, h
    inc hl
    sub $10
    cp $50
    call c, $bf21
    ld [c], a
    call z, $43a0
    and b
    or d
    ld b, l
    add c
    ld l, l
    ld b, d
    cp a
    and $e5
    ld [bc], a
    ld b, b
    ld c, h
    ld h, c
    pop bc
    pop hl
    inc c
    db $e4
    ld c, l
    nop
    ld b, e
    ret nz

    add h
    ld [bc], a
    ret nz

    rst $38
    ret nz

    db $e3
    cp a
    pop hl
    pop bc
    ld [c], a
    cpl
    push bc
    ld a, l
    ld h, b
    add b
    ld [$0250], sp
    ld [hl], c
    add b
    ldh [$c1], a
    ld hl, $20cb
    add d
    push hl
    xor [hl]
    nop
    dec hl
    ld bc, $eb2b
    ldh [rTMA], a
    inc sp
    ld [bc], a
    ld l, [hl]
    ld b, c
    ld h, e
    ld b, $60
    adc [hl]
    call nz, $c2ed
    nop
    ld a, $80
    add h
    ld [bc], a
    ld b, d
    rst $38
    add d
    ld h, e
    ld a, a
    add d
    or e
    add e
    ldh a, [rSC]
    ld a, a
    ldh [rNR41], a
    cp $c2
    ret nz

    rst $38
    ld b, b
    add [hl]
    ld [hl], $85
    inc sp
    ld h, d
    ld c, l
    cp $c3
    adc b
    ld a, [de]
    ret nz

    db $fc
    dec l
    xor $49
    cp [hl]
    jp $df00


    ld hl, sp+$69
    db $ec
    ld l, d
    ld c, l
    ld l, l
    nop
    ret nz

    ld [c], a
    ld b, e
    ld a, [de]
    ret nz

    ld sp, hl
    or l
    ld h, c
    rst $00
    rst $38
    db $fc
    ld a, [hl+]
    ret nz

    rst $28
    ld [bc], a
    or l
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
    nop
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    nop
    ld e, $ff
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    ld h, b
    ld c, $ec
    rst $38
    push hl
    nop
    rst $18
    ld [de], a
    ld a, [c]
    ret nz

    ldh [$d6], a
    rst $10
    cp e
    ldh [$f8], a
    nop
    rst $18
    ld d, $f3
    add b
    ldh [$d8], a
    reti


    and b
    ret nc

    pop de

jr_070_5c3a:
    ld hl, sp+$00
    rst $18
    ld d, $f3
    push bc
    ldh [$da], a
    db $db
    and b
    jp nc, $d8d3

    nop
    rst $18
    ld a, [bc]
    ldh a, [rDMA]
    pop hl
    jp nc, $fdd3

    ret nz

    call nc, Call_000_30d5
    jr c, jr_070_5c3a

    nop
    rst $18
    inc c
    jp nz, $e00d

    ret nc

    pop de
    ld b, [hl]
    ld [c], a
    push bc
    ldh [$1f], a
    sbc a
    sbc l
    and d
    sbc a
    and b
    dec a
    ldh [$38], a
    ldh [rP1], a
    rst $18
    ldh a, [rNR10]
    jp $e00d


    adc b
    pop hl
    ld b, [hl]
    ldh [$a0], a
    and b
    sbc a
    sbc h
    rrca
    xor [hl]
    xor [hl]
    sbc h
    sbc a
    dec a
    ldh [$38], a
    ldh [rP1], a
    rst $18
    db $10
    jp Jump_000_0dfc


    ldh [$88], a
    pop hl
    sbc l
    and d
    sbc l
    sbc l
    sbc l
    sbc h
    ccf
    ld b, [hl]
    xor a
    xor a
    ld b, [hl]
    sbc h
    sbc a
    dec a
    ld [c], a
    nop
    rst $18
    jr c, @+$59

    pop hl
    inc c
    jp $e088


    ld b, [hl]
    xor [hl]
    ld b, [hl]
    rst $38
    push hl
    ld a, [hl]
    ldh [$58], a
    ld l, $e0
    pop af
    add b
    nop
    call c, $d7d6
    rst $08
    ret nz

    sbc a
    adc b
    db $e4
    inc sp
    ld b, [hl]
    xor a
    cp a
    and $3d
    ldh [$d2], a
    db $d3
    pop af
    add c
    nop
    call c, $d8ab
    reti


    rst $08
    ret nz

    sbc h
    jp z, $afe6

    ld a, a
    push hl
    xor a
    rrca
    xor [hl]
    sbc [hl]
    call nc, $f1d5
    add c
    nop
    call c, $c013
    ld b, a
    pop hl
    inc e
    jp z, Jump_070_40e5

    and $46
    xor a
    sbc [hl]
    ld bc, $00e3
    db $db
    ld c, d
    ret nz

    db $10
    sub b
    ret nz

    ret


    add sp, $44
    ld [c], a
    ld sp, hl
    jp nz, $eea1

    and l
    nop
    ret c

    sub a
    and b
    add b
    ld b, e
    ldh [$c1], a
    db $ec
    add b
    pop bc
    cp b
    ret nz

    add b
    ldh [$fc], a
    or d
    ld [de], a
    xor d
    call nc, $d5f3
    sbc [hl]
    adc e
    jp $e38c


    ld b, [hl]
    ld a, c
    ld a, d
    ld a, h
    ld [hl], c
    ld a, l
    ld a, [hl]
    rst $00
    db $fc
    or d
    ld [de], a
    xor d
    and b
    and b
    and c
    call z, Call_070_7ec3
    adc h
    ld [c], a
    ld a, c
    ld a, d
    adc a
    ld b, [hl]
    ld b, [hl]
    ld a, a
    cp a
    db $e4
    ret nc

    cp e
    and b
    db $fc
    or d
    ld e, $68
    ld d, [hl]
    add c
    sbc [hl]
    call z, $79c7
    ld a, [hl]
    ld e, a
    ld b, [hl]
    ld b, [hl]
    ld b, l
    ld b, c
    ld b, l
    cp a
    db $e4
    xor a
    ld a, d
    and c
    sbc b
    db $e3
    and e
    nop
    sub h
    ld d, [hl]
    add b
    ret nc

    pop de
    ld b, b
    db $e4
    pop bc
    db $e3
    ld b, l
    rst $08
    dec hl
    inc l
    ld h, $2a
    cp a
    and $7a
    and b
    jp nc, $e0d3

    ld a, [c]
    ld h, b
    nop
    sub l
    db $10
    and b
    ret nz

    pop bc
    inc c
    call nz, Call_070_7e79
    ld b, l
    ld a, a
    scf
    jr c, jr_070_5d9c

    jr nz, jr_070_5d97

    daa
    ld b, d
    ld a, [hl]
    push hl
    rra
    xor [hl]
    xor [hl]
    and c
    call nc, $f2d5
    ld h, b
    nop
    sub l
    ld d, a
    add e
    db $fc
    jp nz, Jump_070_43a4

    ldh [$39], a
    dec [hl]
    dec [hl]
    ld hl, $312c
    rra
    dec hl
    ld c, e
    ld d, l
    ld b, [hl]

jr_070_5d97:
    add c
    ld a, b
    call nz, $a0fc

jr_070_5d9c:
    ld a, [c]
    ld h, b
    db $f4
    nop
    sbc b
    ld c, c
    add c
    sbc [hl]
    ld b, e
    push hl
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld [hl], $0f
    ld b, a
    ld e, l
    ld e, l
    ld h, b
    ret nz

    push hl
    ei
    add c
    inc sp
    ld h, b
    nop
    sbc b
    db $fc
    ld [bc], a
    and d
    ret nz

    ld [c], a
    add b
    ld b, [hl]
    ld b, [hl]
    ld b, h
    inc a
    dec [hl]
    rst $38
    dec [hl]
    add hl, sp
    ld d, d
    ld d, h
    ld e, c
    ld d, e
    ld b, l
    add e
    pop bc
    add h
    cp h
    add h
    ei
    ld h, c
    nop
    sbc c
    ld [bc], a
    and c
    add b
    db $e3
    add d
    add e
    rst $38
    ld b, [hl]
    ld b, b
    dec [hl]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, h
    ld b, l
    ld e, a
    ld b, [hl]
    ld b, [hl]
    add e
    add [hl]
    add l
    ld a, b
    add d
    sbc [hl]
    ei
    ld h, d
    ld [hl], h
    nop
    sbc c
    rst $08
    ld h, d
    and c
    ld c, e
    add c
    add l
    add [hl]
    add e
    ld b, b
    pop hl
    inc bc
    dec [hl]
    ld b, b
    pop bc
    rst $20
    ld a, [hl]
    and b
    jr c, jr_070_5e64

    nop
    ld e, h
    ld a, $c1
    cp a
    ld [c], a
    ld a, a
    adc e
    ld b, [hl]
    ld a, $35
    dec [hl]
    inc a
    ld b, h
    pop bc
    rst $20
    jr @+$40

    and c
    ld hl, sp+$30
    db $10
    ld c, h
    jp nc, $c0d3

    db $e3
    cp $c0
    add b
    ret nz

    rst $08
    ld a, [hl-]
    ld b, l
    ld b, [hl]
    adc d
    pop bc
    push hl
    cp [hl]
    add b
    sub $d7
    ld h, h
    nop
    ld e, l
    ret nc

    ld b, c
    sbc h
    adc b
    ld h, d
    ret nz

    ld [c], a
    add hl, sp
    ld b, [hl]
    add h
    push bc
    add $7d
    ld h, d
    ret c

    reti


    nop
    ld e, l
    ld b, [hl]
    ld h, e
    adc b
    ld h, b
    ld a, c
    adc l
    jr nc, @+$42

    ret nz

    ld b, c
    ldh [$c0], a
    and $82
    pop bc
    jp c, Jump_000_00db

    ld e, h
    ld d, c
    inc hl
    ld [bc], a
    ld a, h

jr_070_5e59:
    and c
    add b
    ld b, b
    pop bc
    ld b, c
    ldh [rLY], a
    ret nz

    ld a, [$7d42]

jr_070_5e64:
    ld b, d
    nop
    ld e, l
    nop
    dec d
    ld hl, $81fb
    ld a, $60
    ld b, c
    db $e4
    ld b, h
    pop bc
    ld a, [$3e41]
    ld b, b
    cp d
    jr nz, jr_070_5e59

    nop
    ld e, l
    cp a
    add c
    ei
    add c
    inc a
    ret nz

    pop bc
    ret nz

    jr c, jr_070_5ebc

    ld b, l
    add h
    dec b
    jp nz, Jump_070_41fa

    sbc [hl]
    xor a
    ld [hl+], a
    nop
    ld e, l
    call nz, Call_070_52e2
    ld hl, $229e
    cp a
    and b
    ld b, l
    ld b, e
    ldh [$c6], a
    and d
    cp e
    ld b, c
    and c
    scf
    ld [hl+], a
    nop
    ld e, h
    nop
    ld d, $25
    cp h
    add c
    cp a
    and b
    dec b
    ret z

    cp a
    ld [hl+], a
    scf
    ld [bc], a
    nop
    ld e, b
    inc c
    ld [hl+], a
    inc e
    inc b
    ld b, h
    ld a, [hl]
    and b
    add a
    adc b

jr_070_5ebc:
    add a
    dec b
    add $42
    call nz, $db00
    jr nc, jr_070_5e59

    ld bc, $4704
    ld a, h
    ld c, h
    ret nz

    ld b, b
    jp c, Jump_000_00db

    db $db
    call nz, Call_000_38a2
    ld c, l
    jr nz, jr_070_5f22

    ld h, b
    cp e
    xor $af
    ld b, [hl]
    sbc [hl]
    ld l, [hl]
    nop
    nop
    jp c, $023c

    ld h, d
    adc [hl]
    jr nz, jr_070_5f2b

    ld [hl], $a6
    ld [hl], $bf
    db $ec
    cp $20
    ldh [rLCDC], a
    ld hl, $b002
    nop
    ld b, a
    ld [bc], a
    ld h, b
    jp nz, Jump_070_4542

    ld [hl], $62
    dec de
    and a
    ld h, [hl]
    cp a
    db $ec
    xor a
    xor a
    ld a, $00
    and l
    ret nz

    nop
    reti


    cp b
    ld [bc], a
    ld h, b
    jp nz, $c141

    ldh [$67], a
    and e
    ld l, b
    cp a
    db $e3
    sbc h
    ldh [$b6], a
    jp Jump_070_6686


    nop
    jp c, $004a

    add h
    add c
    ld b, d
    xor b

jr_070_5f22:
    xor c
    rlca
    ld l, h
    dec [hl]
    dec [hl]
    cp a
    ld [c], a
    adc h
    and c

jr_070_5f2b:
    or h
    inc bc
    add [hl]
    ld h, e
    nop
    sbc $fe
    ret nz

    pop bc
    ld b, l
    ld [hl], $6e
    ld l, a
    ld l, h
    dec [hl]
    and e
    rrca
    xor d
    xor e
    ld [hl], $45
    adc h
    and d
    ld a, [c]
    ld b, d
    jp nz, $a4a1

    ld h, b
    ldh a, [rSC]
    or b
    nop
    adc c
    ldh [$a1], a
    cp a
    db $e4
    ld l, h
    ld l, a
    ld l, [hl]
    ld [hl], $09
    ld b, l
    adc h
    and d
    or d
    ld b, c
    sub c
    add [hl]
    ld h, e
    ld [bc], a
    or c
    nop
    ld c, c
    ld [bc], a
    and c
    ldh a, [$82]
    ld b, b
    ld a, [hl]
    pop hl
    pop bc
    pop hl
    call $9ec3
    sub c
    ld b, [hl]
    ld b, [hl]
    ld bc, $8690
    ld h, d
    ld [bc], a
    or d
    nop
    ld c, c
    add $84
    cp a
    pop hl
    pop bc
    ld [c], a
    ld d, b
    and d
    add e
    sbc [hl]
    sub b
    ret nz

    db $e3
    ld b, [hl]
    jr nz, jr_070_5f8b

    or c
    nop

jr_070_5f8b:
    ld c, e
    pop bc
    inc h
    ld b, l
    ld de, $8236
    ld [c], a
    cpl
    pop bc
    ret nz

    ld [c], a
    sub c
    inc bc
    add e
    ld [bc], a
    ld [hl], c
    nop
    ld c, e
    ld h, b
    jp nz, $bf61

    ld [c], a
    ld b, e
    ldh [$92], a
    ld h, c
    adc d
    ldh [$a1], a
    sub b
    ccf
    pop hl
    or b
    add h
    ld [bc], a
    ld [bc], a
    ld [hl], c
    nop
    ld c, e
    jp nz, $a061

    sbc a
    cp a
    add b
    sbc l
    nop
    adc a
    db $e4
    ldh a, [rSB]
    ld a, a
    pop hl
    cp $c2
    ld [bc], a
    ld [hl], c
    nop
    ld c, e
    ld hl, $ff22
    db $e4
    nop
    ld [hl], $82
    ldh a, [rSC]
    cp [hl]
    push bc
    ld [bc], a
    ld [hl], c
    nop
    ld c, [hl]
    or $85
    xor $47
    cp [hl]
    call nz, Call_000_06f0
    cpl
    nop
    ld d, c
    or $85
    ldh a, [rNR52]
    sub $d7
    sbc [hl]
    sub b
    add hl, bc
    sub c
    ld b, b
    pop hl
    ld b, $23
    and b
    nop
    ld e, h
    or $84
    ld d, $66
    dec c
    ld b, b
    add e
    sbc [hl]
    sub b
    rst $38
    ldh [rSC], a
    add c
    nop
    db $dd
    db $fc
    add hl, hl
    ld [$da86], a
    add hl, de
    db $db

Jump_070_6009:
    ret nz

    db $e4
    ld [bc], a
    ld [hl], e
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
    ld [hl+], a
    inc de
    ld [bc], a
    ld bc, $1323
    ld [bc], a
    ld [bc], a
    ld a, [de]
    dec d
    ld [bc], a
    inc bc
    inc e
    dec d
    ld [bc], a
    inc b
    dec e
    ld d, $02
    dec b
    ld h, $16
    ld [bc], a
    ld b, $1c
    rla
    ld [bc], a
    rlca
    daa
    rla
    ld [bc], a
    ld [$1813], sp
    ld [bc], a
    add hl, bc
    ld [de], a
    add hl, de
    ld [bc], a
    ld a, [bc]
    ld [hl+], a
    add hl, de
    ld [bc], a
    dec bc
    inc hl
    add hl, de
    ld [bc], a
    inc c
    ld de, $021b
    dec c
    ld d, $1b
    ld [bc], a
    ld c, $17
    dec de
    ld [bc], a
    rrca
    db $10
    inc e
    ld [bc], a
    db $10
    jr z, jr_070_608d

    ld [bc], a
    ld de, $1d29
    ld [bc], a
    ld [de], a
    ld de, $021e
    inc de
    ld a, [hl+]
    rra
    ld [bc], a
    inc d
    dec hl
    rra
    ld [bc], a
    dec d
    inc d
    daa
    ld [bc], a
    ld d, $15
    jr z, jr_070_608c

    rla
    ld [hl+], a

jr_070_608c:
    add hl, hl

jr_070_608d:
    ld [bc], a
    jr jr_070_60b3

    ld a, [hl+]
    ld [bc], a
    add hl, de
    ld [hl+], a
    dec hl
    ld [bc], a
    ld a, [de]
    ld h, $2f
    ld [bc], a
    dec de
    rrca
    jr nc, @+$04

    inc e
    ld c, $31
    ld [bc], a
    dec e
    inc h
    ld sp, $1e02
    dec h
    ld sp, $ffff
    rst $38
    or h
    ld h, b
    ld a, e
    ld h, d
    rst $10
    ld h, h
    rst $30

jr_070_60b3:
    ld h, h
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_070_60c8:
    or $f5

Jump_070_60ca:
    ld a, [de]
    rst $38
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    db $fc
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_070_60f6:
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld c, $ea
    rst $38
    push hl
    ld [bc], a
    rst $38
    and h
    di
    call nz, Call_000_00e3
    db $db
    rst $18
    ld h, h
    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    db $fc
    ld b, $f8
    db $fd
    ret z

    ld a, [$00d7]
    ld b, $f5
    ret nz

    jp nz, $c5bb

    ld a, [hl-]
    rst $38
    ret nz

    or $f8
    rst $20
    rst $38
    rst $38
    ld b, $e9
    jr nc, jr_070_60f6

    db $e4
    ret nz

    db $fc
    ld [$03d4], sp
    pop bc
    ld c, l
    ld c, l
    cp l
    ld [$b3f8], a
    nop
    ld [$7dd4], sp
    add sp, $7a
    rst $20
    ld c, b
    rst $38
    ret z

    and l
    db $fc
    push hl
    rlca
    and $c0
    rst $38
    adc [hl]
    ret nz

    ld a, [c]
    ld c, l
    ld c, l
    dec l
    ld [hl], a
    ret z

    cp $df
    ld c, $a0
    ld c, l
    db $fc
    rrca
    and h
    ld [bc], a
    and b
    ld l, l
    ld c, e
    ld c, e
    ld c, e
    ld c, l
    ld l, l
    db $e3
    dec l
    dec l
    ld [hl], l
    and $00
    sbc $08
    ld [$4b4d], a
    dec hl
    ld a, a
    dec bc
    dec hl
    dec bc
    ld c, e
    dec bc
    ld c, l
    dec l
    push af
    and h
    sbc h
    rst $38
    rst $38
    ret z

    jp z, Jump_070_4b6d

    dec hl
    cp a
    ldh [$be], a
    ldh [$6d], a
    ldh a, [$59]
    ld h, l
    ret nz

    rst $38
    dec b
    add $44
    add b
    ld c, e
    ld l, e
    dec hl
    dec bc
    ccf
    dec bc
    dec bc
    dec hl
    ld c, e
    ld c, e
    ld l, l
    nop
    rst $18
    inc d
    add a
    xor h
    rst $08
    ret nz

    set 0, c
    ld c, l
    ld c, l
    add c
    ldh [rOCPD], a
    ret nz

    ldh [rWX], a
    ld b, e
    ld c, e
    dec c
    add b
    db $e3
    nop
    db $db
    add $c1
    rst $38
    pop hl
    ld l, l
    rst $00
    pop hl
    inc c
    jp $ffe1


    pop hl
    ld l, e
    ld l, e
    ld sp, hl
    pop hl
    ret nz

    push bc
    ld a, $fa
    add a
    jp nz, Jump_070_53ae

    ret nz

    dec c
    dec l
    ld c, e
    db $fd
    ldh [rWX], a
    db $76
    ld [c], a
    ld c, e
    inc d
    pop bc
    ldh [$be], a
    ldh [$6d], a
    ld [bc], a
    and e
    ld c, l
    ret nz

    db $fc
    ld b, h
    pop bc
    ld d, $e0
    rlca
    ld c, l
    dec c
    ld l, l
    dec a
    ret nz

    dec c
    ldh [$36], a
    ret nz

    or a
    ldh [$b6], a
    ldh [rP1], a
    pop bc
    ret nz

    nop
    rst $18
    jr jr_070_623a

    dec b
    add a
    adc l
    pop hl
    or [hl]
    ld [c], a
    cp c
    ld h, a
    nop
    rst $18
    nop
    db $fd
    di
    ld b, d
    cp a
    ret nz

    ld hl, sp+$02
    cp a
    adc b
    ld l, l
    ld a, e
    add [hl]
    ret nz

    rst $38
    nop
    sbc b
    nop
    pop bc
    ld c, c
    ld [bc], a
    cp a
    nop
    sub b
    ld a, [hl-]
    add [hl]
    ld b, d
    cp a
    ret z

    cpl
    nop
    add a
    ret nz

    rst $38
    nop
    ret nz

    ld hl, sp+$3d
    jr z, jr_070_6226

jr_070_6226:
    ld e, a
    db $fc
    rst $38
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    db $fc
    rst $38

jr_070_623a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    cp $df
    db $fc
    rst $38
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld [bc], a
    rst $38
    db $fc
    rst $38
    and c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp $df
    db $fc
    rst $38
    cp $df
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    and $00
    nop
    nop
    rst $08
    add hl, de

jr_070_627d:
    ld h, $27
    jr z, jr_070_627d

    rst $38
    ld hl, sp-$09
    add hl, hl
    ld a, [hl+]
    di
    dec hl
    inc l
    db $fc
    rst $38
    ld hl, sp-$09
    dec l
    ld l, $2f
    jr nc, jr_070_62ce

    db $fc
    rst $38
    ld hl, sp-$09
    ld sp, $3332
    inc [hl]
    db $fc
    rst $38
    ld hl, sp-$09
    nop
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    ld e, $ff
    db $fc
    ei
    nop
    ld e, $ff
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    nop
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc

jr_070_62ce:
    rst $38
    nop
    call c, $ff70
    push hl
    nop
    rst $18
    ld d, $f2
    ret nz

    ld [c], a
    jr nz, jr_070_62fd

    add hl, de
    nop
    rst $18
    inc a
    ld d, $f3
    call nz, $19e1
    ld [hl+], a
    inc hl
    add hl, de
    nop
    rst $18
    ld d, $f3
    ld e, $c4
    pop hl
    add hl, de
    inc h
    dec h
    add hl, de
    nop
    rst $18
    ld b, $f4
    call nz, Call_000_00e0
    rst $38
    add sp, $00

jr_070_62fd:
    rst $18
    ld b, $ea
    ld b, e
    pop hl
    ei
    db $e3
    ld a, [$06d9]
    db $f4
    add l
    ret nz

    add b
    ld b, e
    pop hl
    ld [bc], a
    pop hl
    cp b
    ld [c], a
    ld a, [$06d6]
    db $f4
    adc d
    ret nz

    rlca
    ldh [rNR30], a
    pop bc
    dec de
    ld [bc], a
    ldh [$b8], a
    ld [c], a
    ld a, [$08d6]
    call nc, $e283
    add hl, de
    inc e
    pop bc
    dec e
    cp l
    db $e3
    ld a, [hl-]
    push hl
    nop
    rst $18
    ld [$83c5], sp
    ld [c], a
    add hl, de
    ld e, $01
    rra
    cp l
    db $e3
    ld a, [hl-]
    db $e4
    nop
    rst $18
    ld [bc], a
    push hl
    rlca
    pop bc
    add e
    ldh [$7f], a
    and b
    ldh [$bd], a
    ld [c], a
    ld a, [hl-]
    db $e4
    nop
    rst $18
    ld [$07c4], sp
    jp nz, $1f1e

    ld d, $0f
    jr jr_070_636b

    inc d
    ld d, $bd
    ld [c], a
    dec [hl]
    jp $df00


    ld c, $a5
    ei
    inc h
    dec h
    ld b, d
    ldh [rNR21], a
    inc de
    ld de, $1111

jr_070_636b:
    rrca
    inc de
    inc d
    jr jr_070_6386

    dec [hl]
    pop hl
    nop
    rst $18
    ld c, $a2
    ld [de], a
    and b
    ld hl, sp+$0f
    and b
    dec b
    ldh [$c5], a
    ret nz

    dec d
    ld de, $0e10
    db $10
    dec b
    db $10

jr_070_6386:
    cp l
    ldh [rNR21], a
    dec [hl]
    ld [c], a
    nop
    rst $18
    ld c, $a0
    ld [de], a
    and b
    rrca

Jump_070_6392:
    and b
    db $fc
    adc b
    ret nz

    ld b, d
    ldh [rNR13], a
    ld de, $0304
    inc bc
    inc bc
    ccf
    ld [bc], a
    db $10
    ld de, $1e15
    rra
    cp d
    add b
    nop
    rst $18
    ldh a, [$0e]
    and b
    ld [de], a
    and b
    rrca
    and b
    ld c, $e2
    rla
    ld de, $050f
    ld a, a
    nop
    nop
    nop
    rlca
    rrca
    ld de, $ba15
    add d
    cp h
    nop
    call c, $8413
    ld d, $16
    add hl, de
    ld d, $cb
    ret nz

    ld d, $f7
    inc d
    inc d
    inc de
    ret nz

jr_070_63d1:
    db $e3
    dec b
    db $10
    inc de
    ld d, $68
    cp b
    and d
    nop
    db $db
    add $e0
    inc d
    rst $38
    pop hl
    inc de
    inc de
    rst $00
    ldh [$fc], a
    db $fc
    pop hl
    rst $38
    pop hl
    inc b
    inc bc
    ld [$0403], sp
    ld de, $1701
    dec [hl]
    call nz, $da00
    ret nz

    ld [c], a
    jp $c2e0


    pop hl
    adc b
    ret nz

    rst $30
    ldh [rNR34], a
    ld a, a
    ldh [rNR10], a
    ld c, $11
    ld c, $01
    ldh [$b8], a
    and c
    push af
    ld h, c
    nop
    nop
    reti


    ld b, e
    push hl
    ld b, d
    pop hl
    ld b, e
    ldh [$09], a
    ret nz

    jr c, @-$1e

    ccf
    jp $e041


    jr nc, jr_070_63d1

    add e
    nop
    rst $18
    ld d, b
    add [hl]
    ld b, d
    and c
    ld a, [de]
    dec de
    dec l
    pop hl
    cp a
    and b
    ld [$a176], sp
    cp c
    ld h, b
    nop
    rst $18
    inc l
    ld d, b
    add h
    nop
    jp $82c2


    ld sp, hl
    add e
    ld h, b
    ld [bc], a
    or l
    nop
    adc $50
    add e
    nop
    jp nz, $84c2

    inc e
    dec e
    cp [hl]
    ld b, b
    nop
    ld [bc], a
    or l
    nop
    adc $4b
    ld h, e
    adc a
    db $e3
    add l
    ld b, b
    cp d
    ld [c], a
    cp [hl]
    ld b, b
    ld [bc], a
    or l
    ret nz

    nop
    sbc e
    pop bc
    ld b, c
    or a
    ld h, d
    ld a, b
    ld b, c
    nop
    ld e, a
    nop
    adc h
    jr nz, jr_070_648c

    nop
    pop bc
    ld b, c
    ld a, [hl-]
    ld h, l
    nop
    ld e, a
    ld [bc], a
    ld l, e
    ld a, l
    ld h, l
    ld a, l
    ld b, d
    inc a
    ld b, b
    nop
    ld e, a
    nop
    ld a, [$43cb]
    ld c, l
    nop
    ld e, a
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    ld e, a
    db $fc

jr_070_648c:
    rst $38
    nop
    nop
    ld e, a
    db $fc
    rst $38
    nop
    jp c, $fffc

    nop
    jp c, $fffc

    nop
    ld e, e
    db $fc
    rst $38
    nop
    nop
    ld e, e
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    ld a, [de]
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    nop
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    nop
    rst $18
    db $fc
    rst $38
    ld e, $ff
    nop
    nop
    db $db
    nop
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
    jr nc, jr_070_651c

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
    ld [bc], a
    ld h, l
    sbc d
    ld l, e
    inc b
    ld [hl], e
    ld h, $73
    rst $38
    ld l, [hl]
    ld l, $4e
    ld c, $4d
    ld c, l
    ld c, l
    ld l, $ff
    ld l, $2e
    ld c, $2e
    ld c, $0e
    ld c, l
    dec c
    ld b, a
    dec c
    ld c, l
    dec c
    pop af
    ldh [$fc], a
    db $e4

jr_070_651c:
    ld a, [c]
    ldh [$6e], a
    db $eb
    ldh [$60], a
    ldh a, [$e3]
    call c, $dde1
    ldh [$fe], a
    ldh [$dd], a
    ldh [$0d], a
    ld l, l
    ld a, [c]
    pop hl
    daa
    ld c, [hl]
    ld c, $4e
    db $ed
    pop hl
    ret nz

    and $6d
    ret nz

    pop hl
    cp h
    ldh [rNR21], a
    push bc
    pop hl
    ld c, l
    dec c
    or d
    pop hl
    dec c
    xor b
    ldh [$b7], a
    db $e3
    ret nz

    db $eb
    push bc
    ld c, l
    ret nz

    ldh [$6e], a
    add h
    pop hl
    adc d
    ld [c], a
    pop af
    ld [c], a
    ld c, $6d
    ld [hl], e
    ld l, l
    ld l, l
    add l
    pop hl
    sub h
    ld [c], a
    dec l
    dec c
    ld l, l
    ld [hl], d
    ld [c], a
    pop bc
    dec c
    ld l, e
    ldh [$6f], a
    push hl
    ld e, c
    pop hl
    add b
    ldh [$60], a
    db $e3
    ld l, $6e
    cp b
    ld [hl], d
    db $e4
    add b
    db $e3
    ld c, b
    pop hl
    dec c
    ld c, l
    ld c, $85
    pop hl
    ld l, l
    rrca
    dec bc
    dec bc
    dec bc
    dec c
    cp a
    ldh [rLCDC], a
    db $e3
    dec hl
    ld [c], a
    add sp, -$20
    jr nz, jr_070_65f7

    db $e4
    cp c
    db $e3
    dec e
    ldh [$33], a
    pop hl
    ret nz

    db $e4
    ld l, l
    add e
    pop hl
    cp a
    db $e3
    ld c, l
    dec c
    jp $6be0


    ld l, e
    ret nz

    ldh [$fb], a
    ret nz

    dec l
    cp h
    db $e4
    add e
    ld c, l
    ld c, l
    ld a, l
    db $e3
    cp a
    db $e4
    xor b
    push hl
    ld a, [c]
    push bc
    ld c, d
    ldh [$6d], a
    inc e
    db $db
    pop bc
    ld b, $e2
    ld l, l
    ld c, e
    ld l, e
    ld [bc], a
    ldh [$fd], a
    pop hl
    ld a, e
    ldh [rNR11], a
    dec bc
    ld a, [hl-]
    ldh [rNR14], a
    db $e3
    sbc [hl]
    ld [c], a
    ld l, l
    add b
    rst $20
    ld b, b
    pop hl
    or d
    call nz, $9492
    ret nz

    ld c, $82
    ret nz

    add [hl]
    jp $846d


    ldh [$c5], a
    pop hl
    dec hl
    rlca
    dec c
    dec c
    ld c, e
    push af
    pop hl
    ld a, [hl-]
    pop hl
    ld l, $e1
    call nc, $59c0
    call nz, Call_070_7270
    jp nz, $e940

    ld h, d
    ld [c], a

jr_070_65f7:
    ld b, [hl]
    jp Jump_070_6d0d


    dec c
    ld b, l
    ldh [$75], a
    ld c, e
    ei
    ldh [$2b], a
    ccf
    ldh [rWX], a
    ld c, e
    ld c, e
    inc sp
    ret nz

    ld [$e1bf], sp
    call nc, $cbc5
    pop bc
    ld c, $8e
    ret nz

    add b
    db $ec
    ld [de], a
    ret nz

    cp h
    push bc
    ld [bc], a
    jp z, $2be3

    ld a, a
    ldh [$bf], a
    ld [c], a
    scf
    pop bc
    cp b
    pop bc
    db $e3
    and h
    dec bc
    pop hl
    ld [$c000], sp
    ret nc

    and b
    sbc d
    pop bc
    dec l
    call Call_070_4ea1
    add $80
    jp nz, $c007

    dec de
    ld l, e
    dec bc
    rst $38
    ret nz

    ld c, e
    ld c, e
    ld sp, hl
    pop hl
    db $76
    ldh [$39], a
    ldh [$03], a
    dec l
    ld l, l
    ret nz

    db $eb
    adc h
    and $97
    and [hl]
    ld a, d
    and $0b
    ret nz

    ld c, e
    ldh [rLCDC], a
    adc d
    pop hl
    ld a, [hl]
    ldh [$f4], a
    ld [c], a
    dec sp
    ldh [$ec], a
    and c
    and e
    and h
    ld l, l
    ret nz

    push hl
    ld c, b
    ld e, h

Jump_070_6668:
    and c
    xor b
    and e
    xor $a1

jr_070_666d:
    ld l, [hl]
    ld a, [hl+]
    ldh [$ab], a
    and h
    dec l
    call z, Call_000_0ee3
    ccf
    ldh [$0b], a
    dec l
    dec l
    db $f4
    pop bc
    ret nz

    ldh [$30], a
    and b
    and e
    and h
    add b
    or [hl]
    pop hl

Jump_070_6686:
    add b
    and $28
    and b
    ld e, b
    and c
    ld h, b
    and b
    db $eb
    pop bc
    ld [$6dc1], a
    call nz, $c05f
    adc h
    ld [c], a
    dec hl
    rst $38
    ret nz

    jp $f8c0


    and c
    ld c, e
    dec bc
    add b
    ld l, l
    and b
    ret c

    ld [c], a
    cp h
    and e
    ld a, [hl]
    jp $c2ac


    call $b8a1
    xor b
    ld c, [hl]
    ld h, b
    db $f4
    pop bc
    ld c, d
    jp $c104


    ld a, [hl]
    ret nz

    add d
    pop hl
    ld c, e
    ld c, e
    cp c
    and b
    db $10
    ld l, e
    and d
    db $fc
    and d
    inc e
    and c
    sub $c3
    ld l, l
    jr z, jr_070_666d

    add b
    db $e4
    xor d
    add h
    ld [$c292], sp
    ld c, e
    pop bc
    ld b, c
    pop hl
    dec hl
    jp Jump_000_30e2


    pop bc
    ld [hl], $a2
    sub c
    add a
    nop
    ld d, a
    and h
    or $81
    ret nz

    db $ec
    and [hl]
    ld [c], a
    add b
    and b
    ld b, c
    and b
    ld b, $e2
    rst $30
    and b
    nop

jr_070_66f2:
    cp c
    and d
    adc b
    and b
    sub b
    pop hl
    sub c
    add h
    ld [hl-], a
    add e
    scf
    and e
    ld b, b
    jp hl


    ret nz

    ld [c], a
    ld bc, $0b6d
    jp nz, $e2bf

    scf
    pop bc
    ld a, a
    jp nz, $c1be

    sub c
    adc b
    ld [hl-], a
    add c
    add b
    ret z

    and l
    or a
    ld [c], a
    add b
    rst $20
    ld b, b
    add b
    ret nz

    db $e3
    ld a, [hl]
    and $76
    ret nz

    ld c, e
    inc bc
    dec c
    dec l
    ld l, c
    add c
    add hl, de
    add sp, $4e
    rst $00
    rst $30
    add [hl]
    nop
    db $e3
    jr z, jr_070_66f2

    ld hl, sp+$0b
    jp nz, $81c4

    add $e0
    ld c, e
    dec bc
    dec hl
    ld a, [bc]
    ld l, d
    inc bc
    dec bc
    dec c
    db $eb
    ld h, c
    ld e, c
    add sp, $4e
    ret z

    ld sp, $ea85
    ld h, e
    cp $c1
    ld hl, sp-$02
    add b
    ret nz

    db $e4
    inc a
    and c
    ld l, e
    dec hl
    ld a, [bc]
    ld a, [bc]
    ld c, e
    nop
    push af
    ld h, b
    ret nz

    xor $4e
    push bc
    inc de
    ld h, d
    xor h
    add h
    ld a, e
    ld h, c
    rst $38
    add d
    rst $38
    jp nz, $fc1e

    add d
    dec bc
    ld c, e
    ld a, [bc]
    ld c, d
    push af
    ld h, b
    db $fd
    and c
    ld de, $8087
    adc [hl]
    ret


    ld [$ac42], a
    add h
    add [hl]
    ld h, c
    nop
    and b
    jp z, Jump_000_3e82

    add b
    dec hl
    dec de
    ld c, e
    dec hl
    dec a
    add b
    ld a, [hl+]
    ld a, [hl+]
    ld a, d
    add b
    ret nz

    db $eb
    adc [hl]
    ret z

    ld [$c4c0], sp
    xor h
    add d
    ld [hl], e
    and d
    ld l, l
    pop bc
    ldh [rOBP0], a
    add b
    cp a
    jp nz, $a17a

    nop
    ei
    pop bc
    ld a, a
    jp $8591


    ld e, e
    and b
    ret nz

    add sp, -$49
    ld h, e
    db $ec
    add e
    ld [bc], a
    jp nz, $ca00

    and e
    add c
    add b
    ld hl, sp+$63
    ld hl, sp-$5d
    ret nz

    db $e3
    ld e, b
    ld h, c
    ei
    add h
    dec [hl]
    ret z

    nop
    ret nz

    add sp, $0a
    ld b, b
    adc [hl]
    add d
    ld a, $61
    ld b, d
    ld h, c
    ld sp, hl
    jp nz, $817d

    ld a, $a3
    nop
    ld h, c
    jp nz, Jump_070_422a

    ld c, [hl]
    xor d
    xor h
    add l
    rst $18
    add b
    add d
    and d
    ret


    ld h, d

jr_070_67e5:
    ld a, a
    add c
    nop
    cp h
    jp $813d


    ld a, $a3
    ld c, c
    add d
    cp c
    add b
    ccf
    ld h, d
    ld a, [hl-]
    add h
    ld l, l
    ld b, h
    jr nz, @+$80

    push bc
    dec c
    add e
    ld bc, $c080
    db $e3
    ccf
    push hl
    dec bc
    rst $28
    inc hl
    sbc l
    ld h, e
    nop
    or e
    ld b, [hl]
    sbc l
    ld [hl+], a
    cp [hl]
    push hl
    ld a, [hl+]
    ld b, e
    add d
    ld b, b
    ld b, b
    ld h, h
    db $fd
    add d
    scf
    ld h, e
    add b
    db $ed
    call nz, Call_000_20ad
    or e
    ld c, d
    ld l, c
    ld b, d
    ld d, h
    inc hl
    add d
    ld b, [hl]
    pop bc
    ld [c], a
    ld l, e
    nop
    add b
    add e
    pop bc

jr_070_682d:
    db $e3
    or [hl]
    jr nz, jr_070_682d

    add d
    ld l, d
    ldh [$ac], a
    ld [hl+], a
    db $10
    jp nz, Jump_000_02f9

    ld b, b
    ld l, h
    pop bc
    db $fc
    ld bc, $04dd
    jp nz, $cec2

    add c
    ld b, b
    add e
    dec hl
    nop
    ret nz

    nop
    ld [hl], a
    add d
    ld [hl], $40
    ld l, d
    jp Jump_000_21ed


    ldh a, [rNR43]
    or e
    ld b, l
    cp a
    inc b
    add h
    ld [bc], a
    jr c, jr_070_67e5

    inc bc
    sub c
    add e
    jp Jump_000_2bc3


    ld l, e
    ld a, [bc]
    add h
    and b
    ld a, b
    ld h, d
    add h
    dec hl
    jp $e077


    ld l, e
    inc sp
    ld h, b
    add c
    and d
    ret nz

    push hl
    cp a
    ld bc, $644d
    jp nz, $8220

    inc h
    dec l
    ld bc, $41e1
    add h
    ld c, e
    ld a, [bc]
    rst $38
    ldh [rP1], a
    ld hl, sp+$61
    xor h
    ld b, e
    or h
    add b
    db $e4
    pop bc
    ret nz

    ldh [rRP], a
    ld b, $38
    push hl
    dec l
    ld h, l
    ld a, [c]
    ld l, [hl]
    ld b, b
    ld l, e
    ld b, d
    ld hl, $e2c9
    dec bc
    dec bc
    ld a, [hl+]
    ld a, [bc]
    dec b
    ld a, [bc]
    ld hl, sp+$23
    dec l
    ld l, h
    and e
    inc sp
    ld h, d
    ld h, b
    ld bc, $0556
    cp a
    inc b
    ldh [$64], a
    inc b
    db $eb
    ld [bc], a
    add c
    ret nz

    pop bc
    ldh [$c0], a
    db $e3
    dec bc
    ld a, [hl+]
    ld a, [hl+]
    nop
    cp c
    ld b, e
    ld l, [hl]
    and e
    ld h, l
    and e
    db $f4
    ld b, b
    cp a
    ldh [$bb], a
    pop hl
    ld a, [c]
    ld b, d
    ld sp, hl
    add c
    jr z, @+$7e

    ld h, $42
    add b
    ld c, l
    ld hl, $c14a
    db $e4
    dec hl
    add hl, sp
    ld h, d
    add b
    and d

jr_070_68e0:
    nop
    ld [hl], a
    ld [hl+], a
    and $22
    or e
    ld b, c
    ld [$3fc4], sp
    dec b
    ld [bc], a
    ld b, l
    ld sp, $4441
    and c
    dec b
    ld l, e
    pop bc
    jp $fb0b


    ld [hl+], a
    ret nz

    push hl
    xor h
    ld h, c
    jr nc, @+$23

    or e
    ld b, d
    nop
    sub $60
    ccf
    ld [$66b4], sp
    inc bc
    ld hl, $60c3
    add h
    and d
    ld b, c
    ret nz

    inc a
    and e
    nop
    pop bc
    ret nz

    or l
    nop
    dec l
    inc b
    cp e
    pop bc
    di
    ld b, c
    add b
    ld [$4502], a
    xor e
    ld b, c
    nop
    ld b, e
    and d
    pop bc
    db $e3
    ld bc, $c220
    jp Jump_000_00c0


    xor a
    jr nz, jr_070_68e0

    ldh [$c0], a
    db $e4
    nop
    ld c, a
    and l
    ld l, $85
    db $f4
    ld l, b
    nop
    ld hl, $e4c0
    db $fc
    ld h, e
    cp d
    and b
    ld sp, $0000
    pop bc
    pop hl
    db $ed
    add b
    jp hl


    ld b, b
    ret nz

    ld [c], a
    ld c, l
    ld hl, $2213
    inc b
    ld h, h
    add d
    ld b, [hl]
    nop
    pop bc
    inc hl
    inc b
    ld hl, $63bb
    add hl, bc
    call nz, $e1c5
    ld [hl-], a
    ldh [$3f], a
    and b
    xor b
    ld b, b
    ld b, b
    pop af
    ld [bc], a
    dec b
    ld hl, $6509
    or c
    and d
    ret nz

    and $44
    ld b, h
    ld l, e
    cp e
    ld b, c
    nop
    add h
    ld h, e
    rst $38
    add b
    add d
    ld [c], a
    rst $30
    ld h, b
    ld l, b
    ld b, c
    ld [hl], e
    ld b, b
    inc [hl]
    ld b, c
    ld d, b
    and b
    nop
    add hl, bc
    ld h, l
    ld [hl], h
    ld h, a
    jp c, $8302

    ld h, c
    ld a, e
    add d
    ld sp, hl
    db $e3
    ld [hl], h
    nop
    ld sp, $0081
    pop af
    add c
    add sp, $01
    ld h, b
    ld b, b
    sub b
    and l

jr_070_69a1:
    add hl, bc
    ld h, l
    db $f4
    ld b, [hl]
    cp l
    ld b, c
    ld d, l
    ld [hl+], a
    inc h
    sub c
    and l
    ret nz

    and $2d
    ld b, [hl]
    add b
    cp $e1
    dec c
    ret nz

    and c
    adc l
    pop hl
    db $10
    adc b
    db $e3
    dec [hl]
    dec b
    ld [bc], a
    ld b, e
    dec hl
    ld hl, $d76d
    and c
    sub b
    add h
    ld a, b
    nop
    ld b, $7b
    daa
    ld a, [bc]
    ld a, [hl+]
    cp d
    pop hl
    ld b, d
    pop bc
    adc d
    dec h
    cp e
    pop bc
    rst $00
    db $e4
    ldh [rOBP0], a
    ld [hl+], a
    pop bc
    ld h, [hl]
    db $fd
    ld hl, $a48c
    ld a, [hl-]
    inc hl
    dec c
    ld c, e
    ld a, [bc]
    rlca
    ld a, [hl+]
    ld a, [bc]
    ld a, [hl+]
    ld [hl], d
    ld hl, $2175
    jr c, jr_070_69f5

    add hl, bc
    ld h, h
    ld l, [hl]
    add c
    jr nz, jr_070_6a29

jr_070_69f5:
    add b
    pop bc
    ld h, a
    ret nz

    rst $20
    ld a, [hl-]
    ld b, d
    ld c, b
    add b
    ld l, e
    dec l
    and b
    ld [hl-], a
    ld [hl+], a
    ld [$2136], sp
    jr c, jr_070_6a0f

    add a
    dec h
    ld l, l
    jr c, jr_070_6a4d

    ld b, l
    inc bc

jr_070_6a0f:
    pop bc
    add c
    dec d
    and h
    nop
    or h
    ld h, d
    scf
    ld [bc], a
    rst $30
    inc hl
    xor c
    jr nz, jr_070_69a1

    and e
    jr c, jr_070_6a27

    ld [hl], d
    ld b, d
    pop af
    add h
    ldh [$c1], a
    ld h, e

jr_070_6a27:
    add h
    inc hl

jr_070_6a29:
    adc a
    add h
    ld a, [$b721]
    ld bc, $0b4b
    ld a, [bc]
    rlca
    ld c, d
    ld c, e
    ld l, e
    db $fc
    ldh [rLY], a
    call nz, $0638
    call z, Call_070_7b44
    db $e4
    ret nz

    db $e4
    ldh [rLYC], a
    ld h, c
    ld a, [de]
    pop bc
    ld de, $fb84
    jr nz, jr_070_6ac8

    and d

jr_070_6a4d:
    ld c, e
    ld c, d
    ld bc, $b44a
    ld h, c
    ret nz

    push hl
    jp Jump_070_4428


    ld b, d
    ld [bc], a
    inc hl
    ret nz

    and $d4
    ld h, a
    inc b
    or b
    add d
    ld a, [hl-]
    ld bc, $c06b
    pop bc
    ld a, a
    ld h, c
    ld a, b
    nop
    ld b, e
    dec hl
    add b
    db $e4
    nop
    jp nz, $8381

    ld [hl+], a
    ld b, h
    nop
    rst $38
    inc bc
    dec bc
    add l
    or $20
    add e
    ld h, [hl]
    ld b, d
    jp nz, $0300

    add hl, hl
    add e
    ld [hl+], a
    ld b, b
    ldh [$b4], a
    ld [hl+], a
    ld b, b
    pop hl
    add h
    ld [bc], a
    ret nz

    rst $20
    or a
    ld [bc], a
    nop
    ld [hl], b
    nop
    xor h
    ld [bc], a
    db $f4
    ret nz

    ld b, d
    ld h, d
    ld a, b
    ld [$2584], sp
    ret nz

    and l
    ld e, d
    ld b, e
    nop
    ld a, $e8
    cp e
    add [hl]
    ld hl, sp-$7e
    ld b, e
    and d
    jr c, jr_070_6ab6

    rst $38
    jr nz, jr_070_6b23

    add c
    ld a, $65
    add b
    inc b
    ld b, c

jr_070_6ab6:
    rst $38
    ld [hl+], a
    jp z, $84e6

    pop hl
    ld a, a
    push hl
    or a
    jr nz, jr_070_6ac2

    pop bc

jr_070_6ac2:
    ld c, l
    nop
    jr c, jr_070_6ace

    ret z

    ld b, l

jr_070_6ac8:
    ld a, e
    ld b, c
    ld b, e
    add e
    rst $00
    add e

jr_070_6ace:
    pop bc
    jp hl


    inc a
    ld [c], a
    ld a, b
    add h
    add d
    ld [c], a
    add d
    ld l, l
    cp e
    ret nz

    pop bc
    inc bc
    add hl, bc
    ld h, $86
    add c
    ld [hl], l
    nop
    ld l, l
    add b
    ld [bc], a
    add c
    inc e
    ld h, c
    add a
    ld [bc], a
    db $fc
    xor $01
    ret nz

    sbc d
    and c
    ret nz

    pop hl
    ld l, $00
    bit 0, [hl]
    ld b, h
    ld b, h
    ld h, h
    ld bc, $c6fe
    ld b, d
    ld b, e
    ld a, [$84ee]
    ld [hl+], a
    add l
    ld h, c
    nop
    db $fc
    and d
    bit 0, l
    inc b
    ld b, l
    db $fc
    inc hl
    ld a, $a2
    adc b
    add c
    jp z, $fc40

    db $eb
    nop
    ld [hl], a
    ld hl, $21cb
    add l
    ld h, c
    cp h
    add $03
    ld [hl+], a
    call nz, Call_070_7e22

jr_070_6b23:
    ld bc, $00fc
    nop
    ld b, c
    nop
    ld b, c
    ld b, e
    add b
    di
    ld a, [de]
    ldh [rHDMA5], a
    ld bc, $c73c
    adc e
    ld h, c
    or h
    ld [hl+], a
    nop
    ld a, [hl]
    nop
    ld a, $a3
    nop
    ld h, e
    ld b, b
    di
    sub a
    add c
    push bc
    ld h, h
    ret nz

    db $ed
    dec l
    inc h
    nop
    cp a
    pop bc
    adc l
    jp nz, $eef8

    ld l, b
    add b
    add $41
    jp nc, $4681

    ld h, $bc
    add a
    inc b
    or h
    ld b, e
    ld a, [hl]
    call nz, $be2b
    pop af
    ld b, e
    jp nz, $61c4

    ret nz

    ld h, c
    ld b, l
    ld [hl+], a
    nop
    cp h
    add [hl]
    xor $44
    ld a, e
    ld h, c
    daa
    ld [hl+], a
    inc h
    jr nz, @+$39

    jp nz, $8333

    add e
    dec h
    add b
    and $42
    jp c, $bf01

    ld b, d
    inc a
    adc e
    dec a
    ld h, e
    rst $38
    ld [hl+], a
    rst $28
    and h
    dec l
    nop
    ld b, d
    ld b, c
    sub b
    and d
    call c, $d1a8
    ld h, h
    ret


    inc h
    add d
    push hl
    nop
    nop
    nop
    rst $38
    jp nc, $d2d0

    ret c

    and b
    and b
    and b
    jp c, $d7ff

    call nc, $d9d7
    jp c, $a0dc

    and $b9
    rst $20
    di
    ldh [$fd], a
    jp hl


    db $d3
    ret nc

    db $d3
    xor $e5
    jp c, $d9cf

    reti


    rst $10
    call nc, $e1d9
    db $dd
    ld [c], a
    ret c

    push de
    rst $38
    push de
    sub $d4
    sub $d2
    pop de
    ret nc

    jp nc, $d7fd

    ret nz

    ldh [$dc], a
    jp c, $dad9

    db $db
    call c, $a0ef
    and b
    add sp, -$17
    ret nz

    rst $20
    db $eb
    and b
    sbc $73
    rst $18
    and b
    xor b
    ldh [$ae], a
    push hl
    call c, $dbdb
    cp l
    ldh [$ec], a
    reti


    ld [c], a
    and a
    pop hl
    sub $d4
    add h
    ldh [$d6], a
    jp nc, $f5d4

    rst $10
    or b
    ld [c], a
    call c, $e4e9
    and b
    and b
    sbc a
    sbc l
    cp $ff
    ldh [$9f], a
    and b
    and b
    db $ec
    db $ed
    and b
    ldh [$e1], a
    pop hl
    adc e
    ldh [$91], a
    db $e3
    cp l
    and $d9
    db $e4
    ret c

    jp nc, $e6d7

    ld b, l
    ldh [$d4], a
    rst $10
    ld c, d
    ld [c], a
    ld c, h
    push hl
    ld [$9fa0], a
    rst $38
    and d
    sbc l

jr_070_6c29:
    sbc h
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    xor [hl]
    sbc h
    ld e, [hl]
    cp a
    ldh [$a0], a
    and b
    ld [c], a
    db $e3
    xor b
    db $e3
    db $eb
    dec hl
    ld [c], a
    call nc, $e072
    jr z, jr_070_6c29

    db $dd

Call_070_6c41:
    dec c
    pop hl
    db $dd
    ld c, d
    ld [c], a
    ret c

    push de
    ldh a, [$fc]
    pop bc
    add h
    pop hl
    jp $c0e1


    ldh [$af], a
    xor [hl]
    sbc h
    sbc l
    add c
    and d
    ld a, e
    pop hl
    ld a, [c]
    jp nz, $e076

    ld [$72c1], a
    ldh [$e8], a
    ret


    pop de
    rra
    db $dd
    reti


    db $dd
    ret nc

    ret nc

    inc sp
    ld [c], a
    db $db
    pop bc
    and d
    pop hl
    cp $c1
    pop hl
    xor [hl]
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    xor a
    add h
    cp b
    pop hl
    ld a, e
    ldh [$ea], a
    or c
    call nz, $e19e
    ld [hl], d
    ldh [$a3], a
    rst $00
    rst $10
    add h
    ld [bc], a
    ldh [rLCDC], a
    ldh [$d4], a
    ret c

    jp nz, $c1db

    inc d
    ldh [$82], a
    ld [c], a
    xor a
    ccf
    add b
    cp l
    inc l
    ld a, [hl+]
    ld a, a
    ld a, l
    ld a, b
    pop hl
    ld a, [hl-]
    ld [c], a
    add e
    db $e4
    push hl
    sub h
    pop bc
    ld e, c
    call nz, $e657
    ld [hl], e
    ret nz

    ld [hl], h
    jp nz, Jump_070_7cd9

    ret c

    jp nz, $c1db

    ld [c], a
    db $e3
    sbc a
    sbc h
    xor [hl]
    ld b, d
    pop hl
    sbc a
    add b
    dec l
    jr nz, jr_070_6ce9

    ld b, d
    cp a
    ld [c], a
    ld a, [hl-]
    ldh [$9f], a
    ld c, [hl]
    ld l, $c1
    ret c

    jp nc, Jump_070_59d0

    jp $e0f7


    jp nc, $e415

    push hl
    call c, $c374
    db $db
    ld h, [hl]
    call nz, $c16c
    sbc [hl]
    xor [hl]
    xor a
    ld a, [hl]
    cp a
    pop hl
    add b
    ld b, d
    daa
    jr nz, jr_070_6d13

jr_070_6ce9:
    ld b, l
    ld a, [hl]
    pop hl
    ld b, $f0
    ldh [$9c], a
    sbc a
    ld l, $c0
    sub [hl]
    jp $c009


    adc l
    ret nz

    db $10
    ret nz

    cp b
    call nc, Call_070_74c4
    rst $00
    call $a1a4

jr_070_6d03:
    xor a
    xor [hl]
    add hl, bc
    pop hl

Call_070_6d07:
    add d
    ld a, a
    add e
    ld a, [hl+]
    ld h, $21

Jump_070_6d0d:
    add hl, sp
    ld b, [hl]
    add c
    cp d
    pop bc
    rlca

jr_070_6d13:
    xor a
    ld b, [hl]
    and c
    and e
    xor b
    sbc d
    and c
    sub b
    and b
    rst $28
    and [hl]
    push hl
    push bc
    or $82
    call nz, $9c9f
    jp z, $85c2

    add a
    adc b
    ld [hl], d
    rst $28
    ld l, h
    ld a, [hl-]
    add e
    add h
    ld a, c
    pop bc
    ld b, [hl]
    ld b, [hl]
    sbc [hl]
    nop
    and e
    xor b
    sbc d
    and c
    ld e, b
    and b
    add b
    and d
    ld c, l
    push bc

jr_070_6d40:
    push hl
    ret nz

    ld a, c
    and b
    cp l
    db $e3
    db $fc
    ld b, d
    jp nz, $c0fc

    add hl, sp
    ld l, [hl]
    ld [hl], b
    ld [hl], c
    add a
    add l
    ret nz

    ld [hl], $c3
    ret nz

    pop hl
    and e
    and a
    ld a, [bc]
    pop hl
    ret nc

    and e
    jr z, jr_070_6d03

    db $d3
    ret nc

    push de
    sub $b8
    and c
    sub $1a
    and d
    sbc [hl]
    adc h
    ld [c], a
    ld b, l
    ld a, [hl-]

Call_070_6d6c:
    rrca
    dec [hl]
    dec [hl]
    ld a, [hl-]
    ld b, l
    or h
    jp nz, $e4c0

jr_070_6d75:
    and h
    and e
    push de
    add $8c
    ld l, l
    pop bc
    jr z, @-$59

    db $d3
    ret nc

    inc l
    db $e3
    cp d
    add d
    ret nz

    pop hl
    ld b, [hl]
    ccf
    ld a, c
    ld a, d
    ld h, l
    ld h, [hl]
    dec [hl]
    ld a, $44
    pop hl
    db $fc
    and h
    ld [hl], b
    adc b
    and l
    rla
    and $9b
    add c
    jr z, jr_070_6d40

    rst $10
    jp nc, Jump_000_2cdd

    pop hl
    db $ed
    db $dd
    sbc c
    add b
    db $e4
    push hl
    add c
    and c
    ld a, c
    ld a, [hl]
    add hl, sp
    rst $08
    dec [hl]
    ld l, b
    ld h, [hl]
    ld a, $78
    and d
    jr nc, jr_070_6d75

    sbc h
    sbc a
    ldh [$88], a
    and d
    sub c
    add h
    ld d, a
    and d
    sbc e
    add c
    ret nc

    add l
    jp c, $d0d3

    push bc
    ret nc

    ld [hl], a
    and b
    pop de
    ld e, c
    add b
    ld b, h
    add b
    ccf
    ldh [$80], a
    ld b, [hl]
    sbc a
    ld a, $35
    dec [hl]
    ld l, d
    add hl, sp
    or $c2
    jr nc, @-$3c

    sbc [hl]
    ld b, b
    adc b
    and d
    sub c
    add h
    ld [hl-], a
    add a
    ld l, e
    add l
    dec l
    add b
    db $76
    and d
    rst $10
    ld b, h
    add c
    dec b
    and c
    ld b, c
    pop bc
    add hl, sp
    ret nz

    db $e4
    inc a
    and b
    add hl, sp
    and c
    cp [hl]
    jp nz, $8591

    or b
    ld a, [c]
    ld h, d
    ld c, [hl]
    add $ea
    ld l, [hl]
    cp a
    ret nz

    add l
    adc e
    ret nz

    ret nz

    ld l, d
    ei
    ld a, [hl-]
    ld b, l
    or a
    add d
    ld b, l
    ld b, l
    ld b, [hl]
    xor [hl]
    and c
    nop
    ei
    add c
    sub c
    add l
    db $d3
    ld h, b
    ld c, [hl]
    ret


    ld [$5a6a], a
    add b
    ld a, a
    pop bc
    ccf
    pop hl
    rst $30
    ld [hl], l
    ld h, [hl]
    ld [hl], $bf
    ldh [$bd], a
    dec hl
    ld c, d
    ld d, d
    inc sp
    ld b, l
    xor a
    ld a, $c2
    sub c
    add l
    db $d3
    jp c, $cb4e

    ld [$f868], a
    ret nc

    ld h, b
    cp $82
    rst $38
    jp nz, Jump_070_6668

    add hl, sp
    ld b, l
    dec hl
    sbc a
    cp [hl]
    daa
    ld c, a
    ld d, [hl]
    ld b, l
    push af
    ld h, e
    sub c
    add l
    rst $10
    pop hl
    call c, $cb4e
    xor h
    adc d
    cp $81
    rst $38
    call nz, Call_070_6d6c
    ld a, [hl-]
    ld a, [hl]
    ld sp, hl
    add b
    ld l, $4b
    ld d, [hl]
    ld b, l
    xor a
    xor [hl]
    ld a, l
    and c
    ld b, b
    sub c
    add l
    ei
    add d
    ld c, [hl]
    add $77
    ld h, e
    xor h
    add e
    and d
    ld h, c
    sbc [hl]
    add hl, bc
    add c
    cp $40
    and b
    ld [hl], c
    ld [hl], c
    ld [hl], b
    ld l, [hl]
    ld a, [hl-]
    ld b, d
    ld hl, $233f
    cp l
    ld d, h
    ld d, e
    ld b, l
    ld b, [hl]
    ccf
    ld [c], a
    sub c
    add l
    add b
    ei
    add c
    ld c, [hl]
    rst $00
    rst $38
    and e
    xor h
    add e
    nop
    add l
    jp z, Jump_070_7fc1

    and b
    dec [hl]
    rrca
    ld a, $44
    inc a
    dec [hl]
    ei
    pop bc
    db $fd
    add c
    db $fc
    ld h, c

jr_070_6eaa:
    dec b
    ld h, [hl]
    add b
    ld c, [hl]
    ret z

Jump_070_6eaf:
    ld l, d
    ld b, d
    xor h
    add h
    inc d
    ld h, b
    add c
    and d
    cp $81
    ld a, $c0
    dec [hl]
    inc bc
    add hl, sp
    xor [hl]
    add hl, sp
    and b
    ld sp, hl
    and c
    cp l
    add b
    ld a, [hl+]
    ld c, e
    jr c, jr_070_6f14

    xor h
    adc b
    or h
    ld [bc], a
    ret nz

    cp [hl]
    ld h, c
    xor a
    ld a, $a2
    add hl, sp
    xor a
    ld hl, sp-$60
    ld a, $02
    or c
    add c
    and c
    ld a, [hl+]
    ld b, e
    cp e
    ld b, e
    ld a, [hl+]
    ld b, b
    jr c, jr_070_6f2b

    ld h, h
    ld h, c
    xor h
    add [hl]
    ld sp, $c1ea
    add c
    cp [hl]
    ld h, c
    ld a, $a3
    ld a, [hl-]
    ld b, l
    ccf
    ldh [$f9], a
    add d
    nop
    ld [hl], h
    ld b, e
    cp e
    ld b, c
    ldh a, [rNR41]
    or h
    ld b, e
    jr c, jr_070_6f45

    sub d
    inc h
    inc b
    ld b, l
    add c
    add e
    ld c, e
    ld a, c
    ld a, [hl]
    ld a, a
    add c
    ld l, d
    ccf
    ld [c], a
    cp c
    and e
    sbc h
    rst $28
    inc hl

jr_070_6f14:
    ldh [$7e], a
    ld b, [hl]
    ld d, c
    ld b, [hl]
    sub d
    jr nz, jr_070_6f47

    ld c, b
    ld b, e
    ld b, h
    add b
    ld b, l
    ld [hl], $84
    pop bc
    ret nz

    ret nz

    ldh [$af], a
    jr c, jr_070_6eaa

    cp [hl]

jr_070_6f2b:
    jp $60eb


    jr nc, jr_070_6f70

    sbc a
    jr nz, jr_070_6fb1

    ld b, e

jr_070_6f34:
    or e
    ld b, [hl]
    dec hl
    ld b, l
    ld [bc], a
    ld b, h
    inc b
    ld b, l
    add b
    jp nz, Jump_000_00c1

    ret nz

    ld a, a
    xor [hl]
    add hl, sp
    dec [hl]

jr_070_6f45:
    ld h, d
    ld h, e

jr_070_6f47:
    ld h, l
    ld a, l
    db $ed
    jp $a900


    ld h, b
    xor h
    inc h
    or e
    ld b, [hl]
    db $fc
    inc bc
    sbc l
    jr nz, jr_070_6f34

    inc b
    jp $8060


    ld b, c
    cp e
    ld a, c
    adc l
    pop bc
    ld h, b
    ld l, h
    ld l, a
    ld l, [hl]
    ret nz

    ret nz

    ld h, d
    rrca
    ld h, a
    dec [hl]
    inc a
    ld a, a
    push af
    inc hl
    db $f4
    ld b, d

jr_070_6f70:
    ldh a, [rNR43]
    or e
    ld b, [hl]
    call nz, Call_000_03bf
    push af
    ld [hl+], a
    rst $10
    ld a, [de]
    ld b, c
    jp nz, $81c1

    push hl
    ld [hl], e
    ld l, [hl]
    rra
    ld [hl], $47
    ld c, h
    ld d, l
    ld l, c
    ld a, b
    ld h, c
    cp b
    ld b, b
    ld l, l
    inc hl
    add b
    inc sp
    ld h, h
    or e
    ld b, [hl]
    cp a
    inc bc
    inc c
    jr nz, @-$21

    ld bc, $0048
    ld b, h
    inc hl
    ld a, c
    ld a, l
    adc l
    inc bc
    pop bc
    ld l, d
    ld a, [hl-]
    ld c, e
    ld h, b
    ld h, c
    ret nz

    pop hl
    ld bc, $b839
    ld b, d
    db $fd
    push hl
    or e
    ld c, c

jr_070_6fb1:
    cp a
    inc b
    add l
    inc b
    ld c, b
    ld bc, $8003
    xor $82
    ld h, b
    ld b, a
    ld e, d
    inc a
    ret nz

    pop hl
    ld d, [hl]
    ld h, c
    ld h, c
    ccf
    add hl, sp
    ld l, c
    dec [hl]
    inc a
    ld b, h
    adc d
    cp b
    ld b, h
    or e
    ld c, [hl]
    cp b
    cp a
    inc b
    or c
    ld l, b
    ld b, e
    add d
    ld c, d
    ld h, b
    ld d, l
    ld b, e
    and b
    ld [hl], l
    ccf
    ld h, [hl]
    add hl, sp
    ld d, [hl]
    ld d, d
    ld a, [hl-]
    ld l, c
    ld b, c
    push hl
    jp Jump_070_50c0


    xor b
    ld [bc], a
    di
    ld hl, $0cbf
    ld [bc], a
    ld b, [hl]
    db $eb
    ret nz

    db $e4
    ld d, [hl]
    ld b, d
    pop bc
    ld a, a
    dec [hl]
    ld l, d
    ld a, $45
    ld [hl], $62
    db $76
    cp c
    ld b, b
    nop
    ld bc, $a7e2
    inc hl
    ld a, [hl+]
    dec b
    dec [hl]
    inc bc
    cp a
    inc b
    ld [bc], a
    ld b, l

jr_070_700d:
    ld e, h
    nop
    jp Jump_000_0962


    ld b, l
    inc b
    and c
    ld b, c
    add b
    add hl, sp
    add d
    pop bc
    ret nz

    push hl
    or a
    ld hl, $00e4
    ld b, h
    ld a, [hl]
    jp nz, Jump_000_00b0

    ld [$c10a], a
    cp a
    inc b
    ld [bc], a

jr_070_702b:
    ld c, h
    add b
    add h
    add d
    ld [hl+], a
    ld b, c
    ret nz

    xor [hl]
    ld b, d
    ldh [$c1], a
    jp RST_30


    ld a, e
    ld l, $01
    and e
    ld [bc], a
    db $10
    or h
    add h
    dec [hl]
    nop
    cp a
    inc b
    ld [bc], a
    ld c, d
    xor [hl]
    inc bc
    jr nz, jr_070_700d

    ret nz

    ld [bc], a
    ret nz

    rst $38
    ld [hl], $af
    inc a
    ld l, e
    ld l, h
    ld l, h
    ld [hl], d
    adc b

jr_070_7057:
    ld c, a
    add a
    add l
    ld a, c
    ld a, [hl]
    ld b, b
    jp nz, $a4f8

    sbc [hl]
    or h
    add e
    cp b
    cp a
    rlca
    or h
    ld l, b
    nop
    ld hl, $8785
    ld [hl], c
    jp Jump_070_4562


    cp a
    ld b, l
    ld a, [hl-]
    ld l, [hl]
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld a, [$8040]
    or b
    rst $30
    inc h
    ld hl, sp-$5d
    pop af
    ld bc, $684f
    and b
    and b
    or h
    ld h, a
    sbc $01
    rst $18
    ld a, $a1
    ld bc, $08e2
    add c
    rst $30
    push hl
    ret nz

    ldh [$f7], a
    jr nz, jr_070_7057

    jp hl


    ret nc

    ld d, b
    and e
    ld a, [bc]
    and h
    or h
    ld h, a
    ld a, a
    ld h, b
    and c
    push bc
    ld h, e
    jr c, jr_070_70dd

    sbc b
    ld [bc], a
    jr nz, jr_070_702b

    ld h, b
    ld a, d
    ld h, b
    ld a, [hl-]
    ld b, l
    add b
    ldh [rBCPD], a
    ld [bc], a
    adc h
    add c
    ld a, l
    ld [hl-], a
    inc hl
    dec b
    inc h
    add hl, bc
    ld h, l
    ld [bc], a
    ld b, a
    ld a, a
    ld h, c
    ret c

    add b
    ld [hl], $b8
    jp nz, $bae0

    dec b
    add hl, sp
    ld h, b
    ld [hl], $82
    add e
    ccf
    and h
    add c
    add b
    ld a, e
    add b
    ld a, [hl-]
    add d
    dec b
    ld [hl+], a
    add hl, bc
    ld h, l
    ld [bc], a
    ld b, [hl]
    and b
    nop

jr_070_70dd:
    ld b, c
    ld b, b
    xor [hl]
    sub e
    xor a
    xor [hl]
    add $23
    ld [hl], $e5
    inc a
    or c
    ld b, b
    rst $38
    ldh [$89], a
    rrca
    add e
    add e
    add h
    xor a
    ret nz

    and c
    ld a, d
    ld h, b
    pop de
    ld h, d
    add hl, bc
    ld h, l
    ld h, h
    rst $20
    ld c, b
    ccf
    add b
    xor a
    sub $a0
    ld b, a
    inc b
    ld b, [hl]
    ld a, c
    ld a, c
    nop
    cp $37
    ld bc, $4546
    ld b, e
    ld c, b
    ld c, b
    add l
    add a
    dec b
    add a
    scf
    and b
    sbc [hl]
    add c
    ld h, h
    add hl, bc
    ld l, e
    pop bc
    ld l, d
    sub l
    and c
    ld d, e
    and d
    rst $28
    ld a, c
    ld a, [hl]
    inc a
    ld l, b
    cp a
    ldh [$39], a
    xor [hl]
    ld b, [hl]
    rra
    ld c, d
    ld e, l
    ld h, b
    ld d, h
    ld b, h
    inc [hl]
    inc b
    jr c, jr_070_713c

    add hl, bc
    ld h, l
    add b
    rst $20
    ld b, d
    rst $30
    ld b, b

jr_070_713c:
    pop bc
    ld h, h
    add b
    pop hl
    ld c, $82
    or [hl]
    and c
    cp a
    ldh [$39], a
    ccf
    xor a
    ld b, [hl]
    ld c, d
    ld d, [hl]
    inc l
    inc l
    pop af
    ld bc, $62c0
    nop
    jr c, jr_070_715d

    add hl, bc
    ld h, h
    rst $20
    ld b, c
    ld b, l
    inc bc
    ld c, l
    inc bc

jr_070_715d:
    ret nc

    ld h, c
    add hl, sp
    ld [hl+], a
    ld a, b
    nop
    cp [hl]
    cp c
    ld b, c
    ld b, l
    ld b, e
    ld a, [hl+]
    jr nz, jr_070_7195

    add b
    pop hl
    sbc [hl]
    sub b
    inc de
    ld h, c
    jr c, jr_070_7186

    ld b, l

Call_070_7174:
    nop
    inc bc
    ld b, d
    xor a
    cp a
    ret nz

    db $10
    and h
    add b
    db $fd
    ld b, [hl]
    ld hl, sp+$41
    ld l, d
    dec [hl]
    ld b, d
    ld c, d
    ld d, [hl]

jr_070_7186:
    ld a, [hl+]
    rla
    ld a, [hl+]
    ld c, e
    ld d, l
    jp nz, $9e80

    inc de
    ld h, b
    jr c, jr_070_719c

    or h
    ld c, d
    ret nz

jr_070_7195:
    inc bc
    ld b, c
    rst $10
    and b
    ld d, d
    ld h, e
    sub e

jr_070_719c:
    add b
    ld c, b
    ret nz

    scf

jr_070_71a0:
    ld bc, $443c
    sbc a
    ld c, d
    ld h, b
    ld e, l
    ld e, l
    ld h, b
    ret nz

    ldh [rPCM34], a
    nop
    ld [c], a
    add c
    db $e3
    jr c, @+$0a

    adc b
    ld b, e
    ld [bc], a
    inc h
    ld [bc], a
    add d
    jp $f9e7


    ld bc, $7786
    add e
    ld b, [hl]
    add hl, sp
    cp c
    nop
    ld b, l
    ld b, l
    ld d, e
    rst $38
    ldh [rP1], a
    scf
    ld hl, $8102
    jr c, jr_070_71d7

    ret nz

    push hl
    ld [bc], a
    ld [hl+], a
    jp nz, $d963

    ld h, h

jr_070_71d7:
    jp nc, $0663

    rlca
    pop bc
    ld [hl], b
    ld l, [hl]
    ld a, $22
    ld b, d
    ld h, l
    jp nz, Jump_000_3840

    rlca
    ld b, $43
    nop
    ld sp, hl
    and [hl]
    nop
    db $e4
    call nc, $b746
    inc bc
    nop
    ld b, h
    ld [bc], a
    ld h, [hl]
    jr c, @+$0a

    or e
    inc hl
    nop
    ld [bc], a
    ld h, $80
    jp $e93e


    db $76
    ld bc, $e8c1
    ret nz

    ret nz

    jr c, jr_070_7212

    or e
    ld [hl+], a
    db $10
    ld sp, hl
    and a
    add b
    jp $ebc1


    or e

jr_070_7212:
    jp hl


    xor [hl]
    ret nz

    ret nz

    dec b
    jr z, jr_070_71a0

    and a
    ld [hl], b
    ld [bc], a
    ld [hl+], a
    ld b, e
    add e
    cp $c7
    cp b
    rst $28
    xor a
    sbc h
    sbc a
    sub c
    ld [bc], a
    db $e4
    ld a, [hl]
    and a
    ld b, h
    xor b
    db $eb
    and $00
    ld b, b
    and h
    ld b, c
    ld b, c
    scf
    dec b
    scf
    db $fc
    rst $28
    ld b, l
    dec b
    ld h, c
    sub c
    inc b
    rst $38
    nop
    bit 0, h
    push bc
    dec b
    di
    db $ec
    db $ed
    and $01
    nop
    ld b, c
    ld b, [hl]
    xor [hl]
    and h
    ld h, h
    or [hl]
    rst $38
    ldh a, [$a5]
    ld b, d
    add h
    ld hl, $e9e8
    push de
    ld [bc], a
    db $d3
    ld sp, hl
    ret nc

    bit 1, b
    nop
    ld c, h
    ld b, [hl]
    xor a
    ld l, c
    and e
    dec [hl]
    sbc e
    dec [hl]
    and e
    db $fc
    db $ed
    ld l, d
    ld b, b
    inc b
    ld b, e
    push de

Call_070_7270:
    ld [bc], a
    db $d3
    add hl, hl
    ret nc

    bit 1, b
    cpl
    ld b, $ea
    cp $83
    ld b, d
    adc c
    ld b, c
    db $fd
    xor $35
    ld l, d
    add b
    ld [c], a
    db $eb
    add l
    ld h, e
    rst $10
    jp nc, $48cb

    or h
    inc h
    call z, $81f1
    cp [hl]
    add d
    ld b, b
    ld l, e
    cp a
    ld b, b
    db $fd
    xor $6d

jr_070_7299:
    ld b, b
    inc c
    inc b
    add e
    add l
    ld h, d

jr_070_729f:
    jp c, $cbd3

    ld b, a
    ld b, e
    inc hl
    ld l, $62
    cp a
    inc bc
    cp a
    ld b, l
    scf
    dec a
    jr c, jr_070_72e7

    dec a
    db $fc
    db $ed
    xor [hl]
    add hl, bc
    ld b, l
    inc b
    add e
    inc b
    ld [hl+], a
    call c, Call_000_20c7
    bit 0, l
    inc bc
    inc hl
    ld l, $62
    ld c, $be
    ld h, l
    ld b, l
    ld b, e
    ld b, e
    ld c, h
    add b
    db $fc
    db $eb
    ld b, e
    ret nz

    sub [hl]
    ld l, b
    jr nc, jr_070_7299

    jr nz, jr_070_729f

    ld b, l
    db $fd
    xor b
    cp e
    ld h, b
    sbc a
    sbc l
    rst $38
    ld [c], a
    or [hl]
    ld h, e
    inc de
    ld b, [hl]
    sbc h
    ld a, [c]
    db $e3
    db $ec
    ld [c], a
    sbc a

jr_070_72e7:
    ld de, $daa4
    ld b, b
    rst $00
    ld [hl+], a
    nop
    bit 0, h
    ei
    xor d
    ld hl, $f7c4
    ld b, d
    ld b, a
    and b
    adc l
    ld [$a511], a
    add h
    ld a, [hl+]
    nop
    ld a, a
    and c
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
    ld d, $04
    ld [bc], a
    ld bc, $0517
    ld [bc], a
    ld [bc], a
    ld de, $0206
    inc bc
    inc e
    rlca
    ld [bc], a
    inc b
    dec c
    ld [$0502], sp
    dec e
    ld [$0602], sp
    inc c
    add hl, bc
    ld [bc], a
    rlca
    ld c, $09
    ld [bc], a
    ld [$091c], sp
    ld [bc], a
    add hl, bc
    ld e, $09
    ld [bc], a
    ld a, [bc]
    dec c
    ld a, [bc]
    ld [bc], a
    dec bc
    dec e
    ld a, [bc]
    ld [bc], a
    inc c
    ld de, $020c
    dec c
    add hl, de
    dec c
    ld [bc], a
    ld c, $1d
    rrca
    ld [bc], a
    rrca
    dec de
    db $10
    ld [bc], a
    db $10
    ld e, $10
    ld [bc], a
    ld de, $1221
    ld [bc], a
    ld [de], a
    rrca
    inc d
    ld [bc], a
    inc de
    ld hl, $0214
    inc d
    ld c, $15
    ld [bc], a
    dec d
    ld [hl+], a
    dec d
    ld [bc], a
    ld d, $13
    jr jr_070_7385

    rla
    ld a, [de]

jr_070_7385:
    jr jr_070_7389

    jr jr_070_7398

jr_070_7389:
    add hl, de
    ld [bc], a
    add hl, de
    jr nz, jr_070_73a7

    ld [bc], a
    ld a, [de]
    db $10
    ld a, [de]
    ld [bc], a
    dec de
    dec de
    dec de
    ld [bc], a
    inc e

jr_070_7398:
    ld h, $1c
    ld [bc], a
    dec e
    ld a, [de]
    dec e
    ld [bc], a
    ld e, $22

Jump_070_73a1:
    dec e
    ld [bc], a
    rra
    jr z, jr_070_73c3

    ld [bc], a

jr_070_73a7:
    jr nz, jr_070_73d3

    dec e
    ld [bc], a
    ld hl, $1e0d
    ld [bc], a
    ld [hl+], a
    add hl, hl
    ld e, $02
    inc hl
    dec h
    ld [hl+], a
    ld [bc], a
    inc h
    daa
    ld [hl+], a
    ld [bc], a
    dec h
    ld h, $23
    ld [bc], a
    ld h, $2c
    inc hl
    ld [bc], a

jr_070_73c3:
    daa
    add hl, hl
    inc h
    ld [bc], a
    jr z, jr_070_73e1

    dec h
    ld [bc], a
    add hl, hl
    ld a, [hl+]
    dec h
    ld [bc], a
    ld a, [hl+]
    dec c
    ld h, $02

jr_070_73d3:
    dec hl
    ld h, $27
    ld [bc], a
    inc l
    inc h
    jr z, @+$04

    dec l
    ld c, $29
    ld [bc], a
    ld l, $17

jr_070_73e1:
    add hl, hl
    ld [bc], a
    cpl
    db $10
    ld a, [hl+]
    ld [bc], a
    jr nc, jr_070_7414

    ld a, [hl+]
    ld [bc], a
    ld sp, $2b0e
    ld [bc], a
    ld [hl-], a
    rrca
    dec hl
    ld [bc], a
    inc sp
    ld de, $022b
    inc [hl]
    db $10
    inc l
    ld [bc], a
    dec [hl]
    ld [de], a
    inc l
    ld [bc], a
    ld [hl], $11
    dec l
    ld [bc], a
    scf
    inc d
    dec l
    ld [bc], a
    jr c, @+$23

    dec l
    ld [bc], a
    add hl, sp
    db $10
    ld l, $02
    ld a, [hl-]
    ld [de], a
    ld l, $02
    dec sp

jr_070_7414:
    ld c, $2f
    ld [bc], a
    inc a
    ld de, $022f
    dec a
    ld d, $2f
    ld [bc], a
    ld a, $0f
    jr nc, jr_070_7425

    ccf
    db $10

jr_070_7425:
    jr nc, jr_070_7429

    ld b, b
    ld a, [hl+]

jr_070_7429:
    jr nc, jr_070_742d

    ld b, c
    inc c

jr_070_742d:
    ld sp, $4202
    dec c
    ld sp, $4302
    ld c, $33
    ld [bc], a
    ld b, h
    dec d
    inc sp
    ld [bc], a
    ld b, l
    rrca
    inc [hl]
    ld [bc], a
    ld b, [hl]
    ld c, $35
    ld [bc], a
    ld b, a
    ld a, [hl+]
    dec [hl]
    ld [bc], a
    ld c, b
    add hl, hl
    ld [hl], $02
    ld c, c
    db $10
    scf
    ld [bc], a
    ld c, d
    db $10
    add hl, sp
    ld [bc], a
    ld c, e
    ld h, $3d
    rst $38
    rst $38
    rst $38
    ld h, c
    ld [hl], h
    sub c
    ld [hl], h
    ld a, c
    db $76
    ld h, e
    ld a, b
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
    ld a, a
    dec bc
    dec bc
    dec hl
    dec bc
    inc c
    ld l, h
    inc c
    rst $38
    ld [c], a
    db $fd
    dec bc
    rst $38
    pop hl
    ld a, [bc]
    dec bc
    ld c, e
    inc c
    ld c, h
    inc c
    sub c
    ld c, h
    rst $38
    ldh [$fb], a
    pop hl
    rst $30
    ldh [$0c], a
    db $fc
    ld [c], a
    cp $f5
    ld a, [bc]
    sbc h
    ret nz

    ldh [$d3], a
    ld [c], a
    inc c
    dec hl
    dec hl
    ret nz

    pop hl
    ld a, [$0ae0]
    ret nz

    adc $e1

jr_070_74c3:
    ret


Call_070_74c4:
    db $e4
    push bc
    ld [c], a
    ret nz

    ld sp, hl
    add b
    pop hl
    rst $38
    db $eb
    ld c, e
    dec bc
    ld hl, sp-$40
    db $ed
    db $fd
    ld sp, hl
    ret nz

    jp hl


    ld l, e
    ld l, e
    ld c, e
    ld c, e
    ld c, e
    add h
    ret nz

    ld [c], a
    jr nc, jr_070_74c3

    inc l
    rst $38
    ldh [$c1], a
    db $fc
    inc c
    pop hl
    ret


    ld [c], a
    ld c, e
    dec de
    dec hl
    ld l, e
    pop bc
    pop hl
    ld l, e
    ld c, e
    ei
    ret nz

    call z, $a2fd
    db $e4
    ld e, d
    set 0, d
    ld l, e
    adc c
    ldh [$0b], a
    dec hl
    adc d
    ldh [rWX], a
    or $e0
    ret nc

    ld b, e
    ldh [$7f], a
    pop hl
    call nz, $b0ff
    rst $00
    ld l, e

jr_070_750e:
    ld c, d
    ldh [$2b], a
    dec hl
    jr nz, jr_070_755c

    ldh [$86], a
    ld [c], a
    ld [bc], a
    pop hl
    ret nz

    rst $38
    ret nz

    bit 5, e
    adc e
    pop hl
    ld b, [hl]
    ldh [rNR10], a
    inc bc
    ld [c], a
    dec a
    jp nz, $ffca

    add b
    ret z

    ld l, e
    ret nz

    ldh [rOBP0], a
    pop hl
    ld a, e
    ld [c], a
    nop
    add d
    pop hl
    ret nz

    rst $38
    ld b, b
    jp z, $e143

    ret nz

    ld [$c780], a
    rst $38
    rst $38
    nop
    jp nz, $c000

    db $e3
    add c
    jp nz, $e37d

    jp z, $83ff

    call nz, $a3c0
    adc b
    and e
    rst $38
    jp $fd28


    jp nz, $ffc1

    ld a, [hl-]
    ret z

    inc l

jr_070_755c:
    ld a, a
    and d
    dec hl
    ld a, h
    ret nz

    ret nz

    rst $38
    add b
    ret nz

    ld a, [c]
    cp [hl]
    ldh [$3b], a
    and d
    ret nz

    jp nz, $c23b

    jp z, $c0ff

    ld [$406c], a
    ret nz

    db $e3
    ld a, [hl]
    jp nz, $81bc

    ret nz

    add b
    rst $38
    rst $38
    add b
    rst $28
    dec bc
    cp b
    and b
    nop
    nop
    rst $18
    ld [hl], $8d
    add hl, de
    add e
    jr jr_070_750e

    inc c
    add l
    adc l
    sbc l
    ret nz

    db $eb
    push de
    ld a, a
    nop
    ld a, a
    db $fd
    push de
    ld a, a
    ret nz

    rst $38
    add l
    rst $38
    cp c
    rst $18
    jp c, $ffff

    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    ld h, l
    pop hl
    ld h, [hl]
    reti


    ld h, c
    ld d, e
    sbc a
    ld e, h
    ld l, e
    inc de
    ld l, b
    pop de
    rst $38
    pop bc
    pop af
    nop
    ret


    ld [c], a
    ld e, e
    ld h, l
    db $d3
    ld a, a
    sbc a
    ld c, [hl]
    ccf
    jp hl


    ret nz

    rst $38
    sbc a
    ld c, [hl]
    sbc c
    ld b, d
    nop
    ld b, c
    rst $38
    ldh [rHDMA4], a
    db $fd
    ld [c], a
    dec d
    ld b, h
    rst $08
    rst $38
    sbc l
    ld a, [bc]
    adc l
    db $e4
    ret


    db $e4
    nop
    ld a, a
    rst $38
    add [hl]
    rst $08

Jump_070_7610:
    ld c, l
    push bc
    ld b, [hl]
    jp $ff7f


    add b
    add sp, -$12
    inc h
    inc hl
    ld b, a
    nop
    add b
    rst $38
    ld b, b
    pop af
    ld h, b
    ccf
    ld b, b
    ei
    ld h, b
    ccf
    and h
    rla
    ld h, b
    ccf
    rst $38
    rst $38
    nop
    ld h, b
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    sub [hl]
    rst $38
    reti


    cp b
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
    rst $38
    di
    nop
    nop
    nop
    ld a, a
    ld e, e
    ld e, e
    ld h, c
    ld sp, $102b
    jr nz, @+$01

    ldh [rIE], a
    ld a, [bc]
    dec bc
    ld sp, $5b61
    ld e, e
    ld e, e
    ld e, d
    and a
    ld e, e
    ld e, e
    nop
    rst $38
    rst $38
    rst $20
    and $5a
    ret nz

    ldh [$29], a
    rst $20
    daa
    dec b
    dec b
    jp nz, $ffe0

    ldh [$62], a
    ld h, d
    ld e, l
    add a
    ld e, h
    ld e, e
    ld e, d
    jp z, $e8ff

    rst $20
    add b
    pop hl
    rst $38
    db $eb
    ld e, a
    db $fc
    add b
    rst $38
    ret nz

    db $f4
    ld b, a
    ld b, [hl]
    ld d, h
    ld b, [hl]
    ld c, l
    ld sp, $5ef9
    ret nz

    rst $38
    add b
    jp hl


    ld h, b

jr_070_76c2:
    ld sp, $3a4d
    ld d, l
    rst $30
    ld d, h
    ld b, [hl]
    ld b, a
    jp nz, Jump_000_36e0

    jr nc, jr_070_76ff

    jr nc, jr_070_76c2

    add hl, sp
    ei
    ret nz

    jp z, $e8ff

    rst $20
    ld e, a
    ld sp, $3931
    cp $c9
    ldh [$30], a
    ld [hl], $54
    ld [hl], $6d
    ld l, h
    ld l, h
    ccf
    ld l, l
    jr nc, @+$4a

    ld c, c
    ld sp, $ca5f
    rst $38
    add sp, -$19
    rst $38
    ld e, [hl]
    ld sp, $4849
    jr nc, jr_070_7728

    ld l, d
    ld l, b
    ei
    ld l, b
    ld l, d
    ei
    ld [c], a

jr_070_76ff:
    ld l, l
    jr nc, @+$52

    ld sp, $a85e
    jp z, $e8ff

    rst $20
    add c
    ld [c], a
    ld l, d
    add l
    pop hl
    ld l, d
    ld b, d
    ldh [rOCPS], a
    rra
    ld l, d
    ld l, l
    ld d, c
    ld sp, $ca31
    rst $38
    ret nz

    add sp, -$7f
    pop hl
    cp a
    ld l, c
    ld l, e
    jr nc, jr_070_7753

    ld l, e
    ld l, c
    add hl, sp
    pop hl
    ld l, c

jr_070_7728:
    inc bc
    ld l, e
    add hl, sp
    ret nz

    rst $38
    ret nz

    ld a, [$c0ff]
    jp z, Jump_070_40ff

    db $ec
    add b
    pop hl
    inc sp
    ld l, l
    ld l, d
    ccf
    ldh [rLCDC], a
    ldh [$30], a
    ld d, c
    ret nz

    rst $38
    nop
    ld [$377f], a
    ld [hl], $36
    ld d, h
    ld d, l
    ld d, h
    ld [hl], $bf
    ldh [$f8], a
    ret nz

    jp nz, $ff80

jr_070_7753:
    db $eb
    ld [$1112], a
    ld sp, $4747
    ccf
    ld sp, $5031
    ld l, a
    ld l, [hl]
    ld b, d
    ld b, b
    jp nz, $a0ff

    db $ec
    add b
    rst $18
    jp hl


    add sp, $22
    ld hl, $e0be
    ld sp, $5131
    rst $00
    add b
    add b
    add e
    ld sp, hl
    and c
    nop
    rst $18
    db $ed
    db $ec
    jr nz, jr_070_778d

    ei
    ld [hl+], a
    dec hl
    add $80
    ld d, b
    add b
    add b
    ld a, b
    ld a, [hl]
    ld [hl-], a
    add b
    and e
    ld e, [hl]
    ret nz

    sbc a

jr_070_778d:
    ret nz

    jp hl


    jr nz, jr_070_77b1

    ret nz

    pop hl
    add b
    ldh [rIF], a
    add b
    add b
    ld l, a
    ld l, [hl]
    nop
    and c
    ret nz

    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_070_77b1:
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_070_78c2

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
    sbc a
    ld a, b
    rst $08
    ld a, b
    ld d, h
    ld a, e
    ld sp, $ea7d
    inc bc
    push bc
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

jr_070_78c2:
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
    jr nz, jr_070_797e

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


jr_070_792e:
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
    jr c, jr_070_792e

    add hl, de
    ldh [$c7], a
    call nz, $f9b0
    push hl
    ccf
    xor $c0
    set 0, b
    and $2b
    dec hl
    ld a, d
    ldh [$0b], a
    ld hl, $8b4b
    call nz, $c681
    ld [hl], l
    call nz, $f441
    inc c
    jp z, $81e0

    push hl
    inc b
    add hl, sp
    ld [c], a
    ld a, a
    ldh [$6c], a
    adc [hl]
    jp $c5b3


    inc sp
    call nz, $e7f8
    ret nz

    rst $30

jr_070_797e:
    ld b, b
    ld a, b
    call nz, $c7ce
    inc d
    call nz, $d8c0
    ld c, c
    pop hl
    cp [hl]
    jp $c16b


    push hl
    ld b, b
    or h
    and c
    ld c, l
    ret z

    ret nz

    adc $c0
    xor h
    ld a, $e6
    pop bc
    push hl
    dec bc
    adc e
    and h
    nop
    ret nz

    and l
    ld b, b
    pop de
    sbc c
    and l
    add b
    and c
    db $fd
    rst $00
    inc [hl]
    and [hl]
    ld d, b
    and b
    push bc
    and e
    jr jr_070_7a27

    call nz, $eafc
    ld b, b
    xor d
    inc l
    inc l
    add $ec
    ld d, b
    and c
    ld bc, $02b4
    ld b, b

Jump_070_79c0:
    pop de
    inc l

Call_070_79c2:
    rst $38
    ldh [$87], a
    jp $e4c2


    ld bc, $47b6
    and [hl]
    sbc h
    add b
    ld [$e1ca], sp
    ret nz

    rst $20
    ld a, l
    ld [c], a
    dec hl
    pop bc
    rst $20
    ld bc, $40b4
    ret z

    ret nz

    rst $20
    ld bc, $114c
    ret nz

    ld bc, $7cc5
    add c
    ld l, [hl]
    add c
    ld bc, $f8b5
    add [hl]
    add c
    rst $20
    nop
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
    bit 4, [hl]
    nop
    ld b, b
    add a
    ccf
    or h
    call nc, $cbd3
    ld h, a
    ld bc, $78aa
    add e
    call z, Call_070_79c2
    add h
    nop
    push de
    ld [hl], e
    bit 5, c
    ld bc, $c0a8
    ldh a, [$d4]
    sub $f6
    xor $45
    adc c
    rst $38
    ret


    nop
    call nc, $fdd3
    adc b
    db $ec

jr_070_7a27:
    add sp, -$50
    ld b, e
    ld b, h
    ldh [rLCDC], a
    ret z

    push de
    ld [hl], d
    jp z, Jump_000_00c9

    ld b, c
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
    ret nz

    xor b
    nop
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
    ld b, c
    adc l
    nop
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
    add c
    xor h
    nop

Call_070_7a66:
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
    and e
    di
    nop
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
    push af
    and a
    nop
    dec b
    ld [hl], c
    ld b, b
    adc b
    call nc, $ce75
    add a
    inc hl
    adc a
    ld bc, $d5ac
    ld c, $75
    adc d
    nop
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
    inc de
    ld a, [hl+]
    nop
    inc hl
    sub b
    ret nz

Jump_070_7aad:
    adc e
    nop
    or b
    or $cb
    add b
    adc h
    ld [bc], a
    adc d
    push de
    ld de, $290b
    nop
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
    ld c, $0b
    add hl, hl
    nop
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
    or e
    nop
    reti


    inc bc
    dec c

Jump_070_7ae0:
    call nz, $9b80
    di
    ld a, [c]
    inc hl
    ld h, c
    rra
    ld h, d
    add b
    sbc [hl]
    ldh a, [$d7]
    nop
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
    ld hl, sp+$10
    ld b, h
    nop
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
    cp a
    rst $38
    nop
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

Call_070_7b44:
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

jr_070_7b6e:
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
    jr nc, jr_070_7bc1

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
    jr nc, jr_070_7bd9

    ld d, l
    ld l, a
    ld d, h
    ld d, l
    dec sp
    ld c, l
    di
    ret nz

    rla
    jr z, jr_070_7b6e

    rst $38
    cp $ea
    jp hl


    ld d, d
    ld l, c
    ld h, [hl]
    ld l, b
    ld l, b
    ld l, l
    jr nc, jr_070_7bf0

    rst $38
    pop hl
    ld l, l
    ld [hl-], a
    cp a
    ldh [$15], a

jr_070_7bc1:
    ld d, $c0
    rst $38
    ret nz

    db $ec
    rst $38
    jr nc, jr_070_7bf9

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

jr_070_7bd9:
    db $ec
    jr nc, jr_070_7c46

    rst $08
    ld h, l
    ld h, l
    ld h, l
    ld h, a
    ld a, e
    ldh [$7e], a
    ldh [$15], a
    inc d
    ld sp, hl
    dec b
    jp z, $c0ff

    ret z

    ld [hl-], a
    ld l, d
    ld l, d

jr_070_7bf0:
    ld l, d
    ld l, l
    sbc a
    jr nc, jr_070_7c5b

    ld l, e
    rra
    rra
    ld a, b

jr_070_7bf9:
    ldh [$3e], a
    pop hl
    ld sp, $3101
    jp z, Jump_000_00ff

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

    xor d
    add $7e
    ld [c], a
    ld h, [hl]
    ld l, e
    add d
    and $c0
    rst $38
    add b
    xor h
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
    jr nz, jr_070_7c56

jr_070_7c46:
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

jr_070_7c56:
    pop af
    dec bc
    jp z, $e8ff

jr_070_7c5b:
    rst $20
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38

Jump_070_7cd9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_070_7ce2:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr nc, jr_070_7d90

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

jr_070_7d90:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_070_7e22:
    rst $38
    rst $38

Call_070_7e24:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_070_7e79:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_070_7ec3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_070_7ee1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_070_7f80:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_070_7fc1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
