; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    ld d, $40
    ld a, b
    ld b, a
    dec de
    ld c, h
    or h
    ld c, [hl]

    db $e9, $4f

    ld hl, sp+$54
    dec sp
    ld d, l
    dec d
    ld h, e

    db $b5, $6e

    ret c

    ld a, c
    ret c

    ld a, c
    ret


    ld b, b
    ld [c], a
    ld b, b
    inc h
    ld b, b
    or $40
    ld [hl], l
    ld b, c
    sub b
    ld b, c
    sbc c
    ld b, c
    jr jr_032_4068

    nop
    ld bc, $0700
    nop
    nop
    nop
    nop
    ld bc, $1820
    ld b, d
    nop
    ld bc, $0900
    nop
    nop
    nop
    nop
    ld bc, $1821
    ld b, d
    nop
    ld bc, $0b00
    nop
    nop
    nop
    nop
    ld bc, $1822
    ld b, d
    nop
    ld bc, $0d00
    nop
    nop
    nop
    nop
    ld bc, $1820
    ld b, d
    nop
    ld bc, $0f00
    nop
    nop
    nop
    nop
    ld bc, $1821
    ld b, d
    nop
    ld bc, $1100
    nop
    nop

jr_032_4068:
    nop
    nop
    ld bc, $0d22
    ld a, [hl]
    nop
    dec b
    add b
    inc b
    nop
    nop
    nop
    nop
    nop
    inc hl
    dec c
    ld a, [hl]
    nop
    rlca
    add b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0d23
    ld a, [hl]
    nop
    add hl, bc
    add b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    inc hl
    dec c
    ld a, [hl]
    nop
    dec b
    add b
    ld b, $00
    nop
    nop
    nop
    nop
    inc h
    dec c
    ld a, [hl]
    nop
    rlca
    add b
    ld b, $00
    nop
    nop
    nop
    ld bc, $0d24
    ld a, [hl]
    nop
    add hl, bc
    add b
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
    inc h
    dec c
    ld a, [hl]
    nop
    inc c
    add b
    add hl, bc
    nop
    nop
    nop
    add b
    ld bc, $0025
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    ld bc, $0080
    ld bc, $0100
    ld [bc], a
    ret nz

    nop
    ld e, $00
    ld bc, $c003
    nop
    ld e, $00
    ld sp, $01ff
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $dfff
    ld [bc], a
    ld b, h
    ret


    ld hl, $0172
    rst $18
    ld b, [hl]
    dec b
    ret


    ld [bc], a
    rst $38
    nop
    nop
    ld l, e
    ld bc, $0003
    inc bc
    rst $38
    nop
    nop
    ld l, h
    ld bc, $0003
    inc b
    rst $38
    nop
    nop
    ld l, l
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    ld l, [hl]
    ld bc, $0003
    ld b, $ff
    nop
    nop
    ld l, a
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    ld [hl], b
    ld bc, $0000
    ld [$00ff], sp
    nop
    db $eb
    ld b, b
    ld bc, $ff00
    ld [bc], a
    stop
    nop
    ld l, e
    ld bc, $0001
    inc bc
    add b
    nop
    nop
    ld l, h
    ld bc, $0001
    inc b
    jr nz, jr_032_4142

jr_032_4142:
    nop
    ld l, l
    ld bc, $0001
    dec b
    ld b, b
    nop
    nop
    ld l, [hl]
    ld bc, $0001
    ld b, $ff
    ld h, l
    add b
    ld l, a
    ld bc, $0001
    rlca
    jr nc, @+$67

    nop
    ld [hl], b
    ld bc, $0001
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    rst $28
    ld b, b
    ld [bc], a
    ret


    ld bc, $00ff
    nop
    ld h, a
    ld a, [hl]
    ld b, $00
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


    ld bc, $00ff
    nop
    ld a, [hl]
    ld b, c
    nop
    nop
    rst $38
    ld hl, $4713
    ld d, $0b
    ld e, $01
    call Call_000_0595
    ld a, [$c46a]
    cp $01
    jr nz, jr_032_41f4

    ld a, $00
    call Call_032_475b
    ld b, a
    ld a, $01
    call Call_032_475b
    cp b
    jr c, jr_032_41be

    ld c, $00
    ld e, $01
    jr jr_032_41c2

jr_032_41be:
    ld c, $01
    ld e, $00

jr_032_41c2:
    ld a, $10
    call Call_032_7e8e
    ld a, [hl]
    ld b, a
    and $0f
    ld d, a
    ld a, b
    sra a
    sra a
    sra a
    sra a
    and $0f
    ld b, a
    call Call_032_44b4
    call Call_032_45ee
    xor a
    ld [$c3f4], a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld a, $01
    ld hl, $467b
    call Call_000_23e8
    jr jr_032_420e

jr_032_41f4:
    cp $02
    jr nz, jr_032_420e

    ld a, $10
    call Call_032_7e8e
    ld a, [hl]
    and $0f
    ld b, a
    ld c, $02
    call Call_032_456a
    ld c, $08
    call Call_000_25af
    call Call_000_2625

jr_032_420e:
    call Call_000_2e3b
    ldh a, [$91]
    and $0b
    jr z, jr_032_420e

    ret


    nop

Call_032_4219:
    push af
    push bc
    push de
    push hl
    ld e, a
    ldh a, [$96]
    push af
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $02
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    dec a
    ld [hl], a
    inc hl
    ld a, $cc
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $03
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl], a
    inc hl
    ld a, $99
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $04
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    inc a
    ld [hl], a
    inc hl
    ld a, $66
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $05
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    dec a
    ld [hl], a
    inc hl
    ld a, $33
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $06
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl], a
    inc hl
    ld a, $00
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a
    ld a, $07
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl+], a
    ld a, e
    ld [hl], a
    inc hl
    ld a, $00
    ld [hl], a
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $08
    ld [hl+], a
    xor a
    ld [hl], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_434e:
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $19
    ld l, a
    ld b, [hl]
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    ld a, l
    add b
    ld hl, $0180
    call Call_000_0af2
    push hl
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $18
    ld l, a
    ld d, [hl]
    ld e, $00
    pop hl
    add hl, de
    ld b, h
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld [hl], c
    inc hl
    ld [hl], b
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld d, h
    ld e, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    ld d, h
    ld e, l
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, d
    cp $11
    jr c, jr_032_43f4

    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [$c3f5]
    or a
    jr nz, jr_032_43db

    ld a, $80
    ld [hl+], a
    ld a, $07
    ld [hl], a
    jr jr_032_43e0

jr_032_43db:
    xor a
    ld [hl+], a
    ld a, $06
    ld [hl], a

jr_032_43e0:
    call Call_000_0a61
    ld c, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $0e
    ld l, a
    ld a, c
    and $07
    add $10
    ld [hl+], a
    xor a
    ld [hl], a

jr_032_43f4:
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $02
    call Call_032_434e
    ld a, $03
    call Call_032_434e
    ld a, $04
    call Call_032_434e
    ld a, $05
    call Call_032_434e
    ld a, $06
    call Call_032_434e
    ld a, $07
    call Call_032_434e
    call Call_032_471b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_4427:
    ldh a, [$96]
    push af
    ld l, c
    ld h, $00
    ld a, $10
    push bc
    call Call_000_08b9
    pop bc
    ld c, b
    ld b, $00
    add hl, bc
    push hl
    ld l, e
    ld h, $00
    ld a, $40
    push de
    call Call_000_08b9
    pop de
    ld e, d
    ld d, $00
    add hl, de
    pop bc
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $d000
    add hl, de
    ld a, c
    ld de, $003c
    ld c, $08

jr_032_4458:
    ld b, $04

jr_032_445a:
    ld [hl+], a
    inc a
    dec b
    jr nz, jr_032_445a

    add hl, de
    dec c
    jr nz, jr_032_4458

    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_032_4469:
    push af
    push bc
    push de
    push hl
    push de
    ld h, a
    ld l, b
    sla a
    add b
    ld c, a
    ld d, $00
    ld a, $09
    add b
    add b
    ld e, a
    push hl
    rst $18
    ld d, $11
    pop hl
    call Call_032_44a0
    ld b, $00
    ld a, $09
    add l
    add l
    ld c, a
    push de
    call Call_032_4427
    pop de
    pop hl
    ld b, d
    ld c, e
    ld d, h
    ld e, l
    ld h, $04
    ld l, $08
    rst $18
    ld a, [bc]
    dec bc
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_44a0:
    ld e, $30
    ld a, h
    cp $06
    jr c, jr_032_44ab

    sub $06
    ld e, $38

jr_032_44ab:
    sla a
    add l
    sla a
    sla a
    ld d, a
    ret


Call_032_44b4:
    push af
    push bc
    push de
    push hl
    push bc
    ld a, c
    or a
    jr z, jr_032_4537

    push af
    push bc
    push de
    push hl
    ld b, $05
    ld c, $24
    ld d, $04
    ld e, $04
    ld h, $05
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    ld b, $00
    ld c, $24
    ld d, $0c
    ld e, $04
    ld h, $05
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    ld a, $08
    ld bc, $0d00
    ld de, $0480
    rst $18
    jr nz, @+$0c

    ld a, $09
    ld bc, $0f00
    ld de, $0480
    rst $18
    jr nz, @+$0c

    ld a, $0a
    ld bc, $1100
    ld de, $0480
    rst $18
    jr nz, @+$0c

    ld a, $0b
    ld bc, $0d00
    ld de, $0680
    rst $18
    jr nz, @+$0c

    ld a, $0c
    ld bc, $0f00
    ld de, $0680
    rst $18
    jr nz, @+$0c

    ld a, $0d
    ld bc, $1100
    ld de, $0680
    rst $18
    jr nz, @+$0c

    ld a, $0e
    ld bc, $0800
    ld de, $0980
    rst $18
    jr nz, jr_032_4536

    ld a, $0e
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    pop hl
    pop de
    pop bc

jr_032_4536:
    pop af

jr_032_4537:
    push de
    ld a, b
    ld b, c
    ld d, $04
    ld e, $07
    call Call_032_4469
    pop de
    ld a, d
    ld b, e
    ld d, $0c
    ld e, $07
    call Call_032_4469
    pop bc
    ld a, c
    or a
    jr nz, jr_032_4554

    ld a, $07
    jr jr_032_4556

jr_032_4554:
    ld a, $0e

jr_032_4556:
    call Call_032_4219
    ld a, $01
    ld hl, $43f5
    call Call_000_23e8
    xor a
    ld [$c3f5], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_456a:
    push af
    push bc
    push de
    push hl
    push bc
    ld a, c
    cp $01
    jr z, jr_032_4589

    sub $02
    ld c, a
    sla c
    sla c
    ld b, c
    ld c, $26
    ld d, $1f
    ld e, $05
    ld h, $04
    ld l, $03
    rst $18
    ld a, [bc]
    dec bc

jr_032_4589:
    pop bc
    push bc
    ld a, c
    cp $01
    jr z, jr_032_45a7

    sub $02
    ld c, a
    sla c
    ld a, $0a
    add c
    ld c, a
    ld b, c
    ld c, $24
    ld d, $17
    ld e, $0e
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc

jr_032_45a7:
    pop bc
    push bc
    ld a, c
    cp $01
    jr z, jr_032_45cc

    ld b, $22
    ld c, $0d
    ld d, $1f
    ld e, $0d
    ld h, $03
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld b, $0e
    ld c, $24
    ld d, $1b
    ld e, $0b
    ld h, $0d
    ld l, $03
    rst $18
    ld a, [bc]
    dec bc

jr_032_45cc:
    pop bc
    ld a, b
    ld b, $00
    ld d, $16
    ld e, $06
    call Call_032_4469
    ld a, $01
    ld [$c3f5], a
    ld a, $18
    call Call_032_4219
    ld a, $01
    ld hl, $43f5
    call Call_000_23e8
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_45ee:
    push af
    push bc
    push de
    push hl
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $08
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $09
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0a
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0b
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0c
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    ld a, $0d
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $17
    ld l, a
    xor a
    ld [hl], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld a, [$c3f4]
    cp $27
    jr c, jr_032_468a

    xor a
    ld [$c3f4], a

jr_032_468a:
    sla a
    ld hl, $46b5
    ld e, a
    ld d, $00
    add hl, de
    push hl
    ld d, $0a
    ld e, $01
    call Call_000_056c
    pop hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    ld d, $0c
    ld e, $01
    call Call_000_056c
    ld a, [$c3f4]
    inc a
    ld [$c3f4], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    jr nz, jr_032_4735

    ld b, b
    ld [hl], d
    ld h, b
    ld h, [hl]
    add c
    ld e, d
    and h
    ld c, [hl]
    rst $00
    ld b, d
    ld [$0d36], a
    dec hl
    jr nc, jr_032_46e6

    ld d, e
    inc de
    db $76
    rlca
    cp c
    inc bc
    call c, $ff03
    inc bc
    cp a
    inc bc
    ld a, a
    inc bc
    ccf
    dec bc
    rst $18
    ld [de], a
    cp a
    ld a, [de]
    ld a, a
    ld [hl+], a
    ccf
    ld a, [hl+]
    rst $38
    ld sp, $39bf
    ld a, a
    ld b, c
    ccf

jr_032_46e6:
    ld c, c
    rst $38
    ld d, b
    cp a
    ld e, b
    cp h
    ld e, h
    reti


    ld h, b
    or $64
    inc de
    ld l, c
    jr nc, @+$6f

    ld c, l
    ld [hl], c
    ld l, d
    ld [hl], l
    add a
    ld a, c
    and h
    ld a, l
    pop bc
    ld a, l
    ldh [$7d], a
    nop
    ld a, [hl]
    jr nz, jr_032_4783

    ld b, b
    ld [hl], d
    ld h, b
    ld h, [hl]
    add c
    ld e, d
    and h
    ld c, [hl]
    rst $00
    ld b, d
    ld [$0d36], a
    dec hl
    ld d, h
    ld h, d
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop

Call_032_471b:
    ld a, $0e
    rst $18
    inc d
    ld a, [bc]
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $18
    ld l, a
    ld a, [hl]

jr_032_4735:
    ld b, a
    bit 7, a
    jr nz, jr_032_473e

    ld c, $02
    jr jr_032_4740

jr_032_473e:
    ld c, $04

jr_032_4740:
    add c
    ld [hl], a
    ld a, b
    ld hl, $0040
    call Call_000_0af2
    ld hl, $0900
    add hl, de
    ld d, h
    ld e, l
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld [hl], e
    inc hl
    ld [hl], d
    ret


Call_032_475b:
    push bc
    push hl
    or a
    jr nz, jr_032_4765

    ld hl, $c8ac
    jr jr_032_4768

jr_032_4765:
    ld hl, $c8ec

jr_032_4768:
    ld b, $00
    ld c, $12

jr_032_476c:
    ld a, [hl+]
    and $0f
    add b
    ld b, a
    dec c
    jr nz, jr_032_476c

    ld a, b
    pop hl
    pop bc
    ret


    adc a
    ld b, a
    xor b
    ld b, a
    add [hl]
    ld b, a
    cp h
    ld b, a
    dec sp
    ld c, b
    ld d, [hl]

jr_032_4783:
    ld c, b
    xor [hl]
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    ld bc, $0080
    ld bc, $0100
    ld [bc], a
    ret nz

    nop
    ld e, $00
    ld bc, $c003
    nop
    ld e, $00
    ld sp, $01ff
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $dfff
    ld [bc], a
    ld b, h
    ret


    ld hl, $0172
    rst $18
    ld b, [hl]
    dec b
    ret


    ld [bc], a
    rst $38
    nop
    nop
    ld l, e
    ld bc, $0003
    inc bc
    rst $38
    nop
    nop
    ld l, h
    ld bc, $0003
    inc b
    rst $38
    nop
    nop
    ld l, l
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    ld l, [hl]
    ld bc, $0003
    ld b, $ff
    nop
    nop
    ld l, a
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    ld [hl], b
    ld bc, $0000
    ld [$00ff], sp
    nop
    or c
    ld b, a
    ld bc, $ff00
    ld [bc], a
    stop
    nop
    ld l, e
    ld bc, $0001
    inc bc
    add b
    nop
    nop
    ld l, h
    ld bc, $0001
    inc b
    jr nz, jr_032_4808

jr_032_4808:
    nop
    ld l, l
    ld bc, $0001
    dec b
    ld b, b
    nop
    nop
    ld l, [hl]
    ld bc, $0001
    ld b, $ff
    ld h, l
    add b
    ld l, a
    ld bc, $0001
    rlca
    jr nc, jr_032_4885

    nop
    ld [hl], b
    ld bc, $0001
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    rst $28
    ld b, b
    ld [bc], a
    ret


    ld bc, $00ff
    nop
    ld h, a
    ld a, [hl]
    ld b, $00
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


    ld bc, $00ff
    nop
    ld b, h
    ld c, b
    nop
    nop
    rst $38
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_032_48c7

    ld [hl], l
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, @+$70

    ld l, a
    ld [hl], h
    ld h, l
    ld [hl], e
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_032_48e0

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_032_48f9

    ld h, c
    ld l, [hl]
    ld [hl], h

jr_032_4885:
    jr nz, @+$76

    ld l, a
    jr nz, @+$75

    ld h, c
    db $76
    ld h, l
    inc l
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_032_48f9

    ld l, a
    ld [hl], d
    jr nz, jr_032_48e3

    ld l, c
    ld [hl], e
    ld [hl], b
    jr nz, jr_032_4901

    db $76
    ld h, c
    ld l, h
    ld [hl], l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $41
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    ld a, [$c46a]
    cp $04
    jr nz, jr_032_48e9

jr_032_48b5:
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $011c
    ld a, $03
    rst $18
    ld d, b
    dec b
    cp $ff

jr_032_48c7:
    jr z, jr_032_48b5

    ld [$c890], a
    or $10
    ld [$c8d0], a
    ld a, $01
    ld [$c96c], a
    ld a, $00
    rst $18
    jr jr_032_48e6

    ld a, $00
    ld bc, $0100

jr_032_48e0:
    ld de, $0100

jr_032_48e3:
    rst $18
    jr nz, @+$0c

jr_032_48e6:
    jr jr_032_48b5

    ret


jr_032_48e9:
    cp $05
    jr nz, jr_032_490f

    ld a, $03
    ld [$c836], a
    ld a, $0a
    ld [$c890], a
    ld a, $08

jr_032_48f9:
    ld [$c8d0], a
    ld a, $03
    ld [$c96c], a

jr_032_4901:
    ld a, $02
    rst $18
    jr jr_032_4911

    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ret


jr_032_490f:
    cp $06

jr_032_4911:
    jr nz, jr_032_4930

    ld a, $00
    ld [$c890], a
    ld a, $f6
    ld [$c8be], a
    ld a, $04
    ld [$c96c], a
    ld a, $01
    rst $18
    jr jr_032_4932

    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ret


jr_032_4930:
    cp $07

jr_032_4932:
    jr nz, jr_032_4956

    ld a, $06
    ld [$c890], a
    ld a, $02
    ld [$c8d0], a
    ld a, $03
    ld [$c96c], a
    ld a, $02
    rst $18
    jr jr_032_4953

    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ret


    nop
    ld [bc], a

jr_032_4953:
    inc bc
    inc b
    dec b

jr_032_4956:
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, $00
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a

jr_032_496f:
    ld hl, $011c
    ld a, $03
    rst $18
    ld d, b
    dec b
    cp $ff
    jr z, jr_032_496f

    or $10
    ld c, a
    ld [$c3e0], a

jr_032_4981:
    ld a, [$c3e0]
    ld c, a
    ld hl, $011f
    ld d, $04
    ld e, $04
    rst $18
    ld a, [bc]
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    rst $18
    ld c, [hl]
    dec b
    push af
    ld a, [$d82f]
    rst $18
    inc c
    dec b
    ld a, $ff
    ld [$d82f], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    pop af
    cp $ff
    jr z, jr_032_496f

    ld hl, $4951
    add l
    ld l, a
    jr nc, jr_032_49b7

    inc h

jr_032_49b7:
    ld b, [hl]
    call Call_032_4aa6

jr_032_49bb:
    call Call_000_2e3b
    ldh a, [$94]
    and $03
    jr z, jr_032_49bb

    call Call_032_4b3b
    call Call_000_23b6
    call Call_000_2ed5
    ld bc, $0adf
    ld bc, $1cdf
    dec b
    rst $18
    inc d
    dec b
    jr jr_032_4981

    ld a, $00
    rst $18
    jr jr_032_49e9

    ld a, $7e
    ld hl, $ff00
    ld de, $7f00
    call Call_000_0ddb

jr_032_49e9:
    push de
    push af
    ld a, a
    ld de, $010c
    call Call_000_22a5
    pop af
    pop de
    push hl
    push de
    ld h, h
    ld l, l
    ld de, $010d
    call Call_000_22bc
    pop de
    pop hl
    ret


    jr jr_032_4a45

    nop
    ld bc, $0700
    nop
    nop
    nop
    nop
    ld bc, $1820
    ld b, d
    nop
    ld bc, $0900
    nop
    nop
    nop
    nop
    ld bc, $1821
    ld b, d
    nop
    ld bc, $0b00
    nop
    nop
    nop
    nop
    ld bc, $1822
    ld b, d
    nop
    ld bc, $0d00
    nop
    nop
    nop
    nop
    ld bc, $1820
    ld b, d
    nop
    ld bc, $0f00
    nop
    nop
    nop
    nop
    ld bc, $1821
    ld b, d
    nop
    ld bc, $1100
    nop
    nop

jr_032_4a45:
    nop
    nop
    ld bc, $0d22
    ld a, [hl]
    nop
    dec b
    add b
    inc b
    nop
    nop
    nop
    nop
    nop
    inc hl
    dec c
    ld a, [hl]
    nop
    rlca
    add b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0d23
    ld a, [hl]
    nop
    add hl, bc
    add b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    inc hl
    dec c
    ld a, [hl]
    nop
    dec b
    add b
    ld b, $00
    nop
    nop
    nop
    nop
    inc h
    dec c
    ld a, [hl]
    nop
    rlca
    add b
    ld b, $00
    nop
    nop
    nop
    ld bc, $0d24
    ld a, [hl]
    nop
    add hl, bc
    add b
    ld b, $00
    nop
    nop
    nop
    ld [bc], a
    inc h
    dec c
    ld a, [hl]
    nop
    inc c
    add b
    add hl, bc
    nop
    nop
    nop
    add b
    ld bc, $0025
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

Call_032_4aa6:
    push af
    push bc
    push de
    push hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d34d], a
    rst $18
    ld b, $77
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $18
    ld l, d
    dec b
    ld d, $02
    ld e, $00
    ld b, $10
    ld c, $03
    ld hl, $0067
    rst $18
    ld l, h
    dec b
    ld d, $00
    ld e, $0b
    ld b, $14
    ld c, $07
    rst $18
    ld b, $05
    ld hl, $011f
    ld d, $04
    ld e, $03
    rst $18
    ld a, [bc]
    dec b
    ld a, $00
    rst $18
    ld l, [hl]
    dec b
    ld a, $00
    rst $18
    ld [hl], b
    dec b
    call Call_000_2ed5
    ld a, [bc]
    ld a, $02
    rst $18
    ld l, [hl]
    dec b
    ld a, $02
    rst $18
    ld [hl], b
    dec b

jr_032_4afb:
    rst $18
    ld c, [hl]
    dec b
    cp $ff
    jr z, jr_032_4afb

    ld [$c3f9], a
    ld hl, $00bc
    ld de, $dd74
    rst $18
    ld e, h
    dec b
    ld hl, $dd74
    rst $18
    ld d, h
    dec b
    ld hl, $00bd
    ld de, $dd84
    rst $18
    ld e, h
    dec b
    ld hl, $dd84
    rst $18
    ld d, h
    dec b
    ld hl, $016b
    ld b, $01
    rst $18
    ld [de], a
    dec b
    ld a, $01
    rst $18
    ld l, [hl]
    dec b
    ld a, $01
    rst $18
    db $76
    dec b
    rst $18
    ld [hl], b
    dec b
    jr jr_032_4afb

    ret


Call_032_4b3b:
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $ff
    ld [$d444], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld de, $c600
    ld hl, $d100
    ld c, $08

jr_032_4b57:
    push bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_032_4b57

    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d100
    ld c, $08

jr_032_4baf:
    push bc
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld bc, $002c
    add hl, bc
    ld a, $0c
    add e
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec c
    jr nz, jr_032_4baf

    ld hl, $c600
    ld de, $b880
    ld c, $10
    call Call_000_0468
    ld hl, $c700
    ld de, $9880
    ld c, $10
    call Call_000_0468
    call Call_000_0460
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld [hl-], a
    ld c, h
    ld c, e
    ld c, h
    add hl, hl
    ld c, h
    ld e, b
    ld c, h
    ld e, e
    ld c, h
    ld e, l
    ld c, h
    ld h, [hl]
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    add hl, bc
    nop
    add hl, bc
    ld bc, $0080
    ld bc, $0100
    ld [bc], a
    ret nz

    nop
    ld e, $00
    ld bc, $c003
    nop
    ld e, $00
    ld sp, $01ff
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $dfff
    ld [bc], a
    ld b, h
    ret


    rst $38
    rst $38
    ret


    rst $38
    ret


    ld bc, $00ff
    nop
    ld e, h
    ld c, h
    nop
    nop
    rst $38
    ld a, $00
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld b, $00
    push bc
    ld a, b
    call Call_032_4d74

Jump_032_4c7c:
    call Call_000_2e3b
    ld c, $00
    ldh a, [$91]
    and $01
    jp nz, Jump_032_4d15

    pop bc
    ldh a, [$91]
    and $40
    jr z, @+$0d

    ld a, b
    call Call_032_4d74
    ld c, $01
    call Call_032_4dab
    rst $08
    ld [$91f0], sp
    and $20
    jr z, jr_032_4cab

    ld a, b
    call Call_032_4d74
    ld c, $02
    call Call_032_4dab
    rst $08
    ld a, [bc]

jr_032_4cab:
    ldh a, [$91]
    and $80
    jr z, jr_032_4cbc

    ld c, $03
    call Call_032_4dab
    ld a, b
    call Call_032_4d74
    rst $08
    add hl, bc

jr_032_4cbc:
    ldh a, [$91]
    and $10
    jr z, jr_032_4ccd

    ld a, b
    call Call_032_4d74
    ld c, $04
    call Call_032_4dab
    rst $08
    dec bc

jr_032_4ccd:
    push bc
    ld a, b
    add a
    add a
    ld hl, $4e66
    add l
    ld l, a
    jr nc, jr_032_4cd9

    inc h

jr_032_4cd9:
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    pop de
    pop hl
    inc hl
    inc hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    pop bc
    push af
    push bc
    push de
    push hl
    ld h, d
    ld l, e
    ld a, $08
    add l
    ld l, a
    jr nc, jr_032_4cf4

    inc h

jr_032_4cf4:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld h, b
    ld l, c
    ld a, $08
    add l
    ld l, a
    jr nc, jr_032_4d03

    inc h

jr_032_4d03:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop bc
    rst $18
    jr nz, @+$0c

    pop hl
    pop de
    pop bc
    pop af
    jp Jump_032_4c7c


Jump_032_4d15:
    pop bc
    call Call_032_4e0c
    ld a, $01
    ld [$c441], a
    ret


Call_032_4d1f:
    add $04
    push af
    ld d, $00
    ld e, $04
    pop af
    ld h, $00
    ld l, a
    push de
    push hl

Jump_032_4d2c:
    pop hl
    pop de
    ld a, l
    cp e
    jr z, jr_032_4d4b

    push de
    push hl
    ld a, $05
    add l
    ld d, a
    ld e, $10
    ld b, $00
    ld c, $15
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    pop hl
    inc hl
    push hl
    jp Jump_032_4d2c


jr_032_4d4b:
    ret


Call_032_4d4c:
    ld d, $00
    ld e, a
    ld h, $00
    ld l, $00
    push de
    push hl

jr_032_4d55:
    pop hl
    pop de
    ld a, l
    cp e
    jr z, jr_032_4d73

    push de
    push hl
    ld a, $0b
    add l
    ld d, a
    ld e, $10
    ld b, $00
    ld c, $15
    ld h, $01
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    pop hl
    inc hl
    push hl
    jr jr_032_4d55

jr_032_4d73:
    ret


Call_032_4d74:
    push af
    push bc
    push de
    push hl
    push af
    ld b, $06
    ld c, $15
    ld d, $05
    ld e, $10
    ld h, $0a
    ld l, $01
    rst $18
    ld a, [bc]
    dec bc
    pop af
    add a
    ld hl, $4ea2
    add l
    ld l, a
    jr nc, jr_032_4d92

    inc h

jr_032_4d92:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    or a
    jr z, jr_032_4da6

    cp $80
    jr nc, jr_032_4da3

    call Call_032_4d4c
    jp Jump_032_4da6


jr_032_4da3:
    call Call_032_4d1f

Jump_032_4da6:
jr_032_4da6:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_4dab:
    push af
    ld a, c
    cp $01
    jr nz, jr_032_4dc1

    ld a, b
    add $fd
    cp $fc
    jr nc, jr_032_4dbb

    jp Jump_032_4e09


jr_032_4dbb:
    ld a, b
    add $06
    jp Jump_032_4e09


jr_032_4dc1:
    cp $02
    jr nz, jr_032_4ddd

    ld a, b
    add $ff
    cp $ff
    jr z, jr_032_4dd7

    cp $02
    jr z, jr_032_4dd7

    cp $05
    jr z, jr_032_4dd7

    jp Jump_032_4e09


jr_032_4dd7:
    ld a, b
    add $02
    jp Jump_032_4e09


jr_032_4ddd:
    cp $03
    jr nz, jr_032_4df1

    ld a, b
    add $03
    cp $09
    jr nc, jr_032_4deb

    jp Jump_032_4e09


jr_032_4deb:
    ld a, b
    add $fa
    jp Jump_032_4e09


jr_032_4df1:
    cp $04
    jr nz, jr_032_4e09

    ld a, b
    inc a
    cp $03
    jr z, jr_032_4e06

    cp $06
    jr z, jr_032_4e06

    cp $09
    jr z, jr_032_4e06

    jp Jump_032_4e09


jr_032_4e06:
    ld a, b
    add $fe

Jump_032_4e09:
jr_032_4e09:
    ld b, a
    pop af
    ret


Call_032_4e0c:
    push bc
    rst $18
    inc e
    db $10
    ld bc, $ff01
    rst $18
    ld e, $02
    ld bc, $8000
    rst $18
    ld e, $02
    pop bc
    ld a, b
    push de
    push af
    ld a, a
    ld de, $0d07
    call Call_000_22a5
    pop af
    pop de
    add a
    ld hl, $4e90
    add l
    ld l, a
    jr nc, jr_032_4e32

    inc h

jr_032_4e32:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    push de
    ld h, h
    ld l, l
    ld de, $0d08
    call Call_000_22bc
    pop de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, $01
    add l
    ld l, a
    jr nc, jr_032_4e50

    inc h

jr_032_4e50:
    ld b, h
    ld c, l
    rst $18
    ld e, $02
    ld hl, $0101
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld a, $12
    rst $18
    ld [de], a
    db $10
    ret


    inc l
    nop
    inc l
    nop
    ld c, h
    nop
    inc l
    nop
    ld l, h
    nop
    inc l
    nop
    inc l
    nop
    ld b, h
    nop
    ld c, h
    nop
    ld b, h
    nop
    ld l, h
    nop
    ld b, h
    nop
    inc l
    nop
    ld e, h
    nop
    ld c, h
    nop
    ld e, h
    nop
    ld l, h
    nop
    ld e, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc b
    nop
    dec b
    nop
    ld b, $00
    rlca
    nop
    ld [$0900], sp
    nop
    inc bc
    nop
    inc b
    nop
    nop
    nop
    ld bc, $fc00
    rst $38
    cp $ff
    rst $38
    rst $38
    ld [bc], a
    nop
    db $fd
    rst $38
    inc de
    ld c, a
    ld a, [de]
    ld c, a
    jp nz, Jump_000_234e

    ld c, a
    adc c
    ld c, a
    and h
    ld c, a
    xor l
    ld c, a
    dec c
    ld a, [hl]
    nop
    dec b
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $0d08
    ld a, [hl]
    nop
    add hl, bc
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $0d09
    ld a, [hl]
    nop
    dec c
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $0d12
    ld a, [hl]
    nop
    ld de, $0700
    nop
    nop
    nop
    ld b, b
    ld bc, $0d13
    ld a, [hl]
    nop
    rlca
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $0d11
    ld a, [hl]
    nop
    rrca
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $0018
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    dec bc
    nop
    rrca
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ld l, e
    ld bc, $0003
    inc bc
    rst $38
    nop
    nop
    ld l, l
    ld bc, $0003
    inc b
    rst $38
    nop
    nop
    ld l, a
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    ld [hl], b
    ld bc, $0003
    ld b, $ff
    nop
    nop
    ld [hl], d
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    ld [hl], h
    ld bc, $0003
    ld [$00ff], sp
    nop
    db $76
    ld bc, $0003
    add hl, bc
    rst $38
    nop
    nop
    ld [hl], a
    ld bc, $0000
    ld a, [bc]
    rst $38
    nop
    nop
    ld a, b
    ld bc, $0001
    dec bc
    rst $38
    nop
    nop
    ld a, c
    ld bc, $0001
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    rst $28
    ld b, b
    ld [bc], a
    ret


    ld bc, $00ff
    nop
    ld h, a
    ld a, [hl]
    ld b, $00
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


    ld bc, $00ff
    nop
    sub d
    ld c, a
    nop
    nop
    rst $38
    ret


    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0714
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0714
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0714
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0714
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0714
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0714
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0714
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0c14
    rst $00
    rst $38

    db $00, $50, $07, $50, $f7, $4f, $30, $50, $31, $50, $32, $50, $33, $50, $00, $00
    db $00, $00, $00, $00, $00, $00, $ff, $01, $c0, $00, $09, $00, $09, $ff, $04, $ff

    nop
    nop
    nop
    nop
    inc bc
    db $01

    db $05, $ff, $00, $00, $00, $00, $1e, $01

    ld b, $ff
    nop
    nop
    nop
    nop
    dec h
    inc bc
    ld a, [bc]
    rst $38
    nop
    nop
    nop
    nop
    rra
    ld [bc], a
    dec bc
    rst $38
    nop
    nop
    nop
    nop
    rra
    ld bc, $ffff
    rst $38
    rst $38

    call Call_032_5037
    ret


Call_032_5037:
    xor a
    ld [$cab8], a
    ld [$cab9], a
    ld [$caba], a
    ld [$cabb], a
    ld [$cabc], a
    ld [$cabd], a
    call Call_000_23b6
    call Call_000_304d
    xor a
    ldh [$b9], a
    ldh [$b8], a
    ld a, [$c46a]
    cp $01
    jp z, Jump_032_5080

    cp $02
    jp z, Jump_032_51a3

    cp $fa
    jp z, Jump_032_51a3

    xor a

jr_032_5068:
    push af
    ld hl, $cb40
    ld c, $04
    call Call_000_03a7
    call Call_000_304d
    pop af
    rst $18

    db $00, $40

    ld a, [$cb40]
    cp $10
    jp z, Jump_032_508b

Jump_032_5080:
    ld hl, $cb40
    ld c, $04
    call Call_000_03a7
    call Call_000_304d

Jump_032_508b:
    rst $08

    db $01

    call Call_000_2b54
    xor a
    ld [$c33f], a
    rst $18

    db $00, $09

    cp $ff
    jr z, jr_032_5068

    or a
    jp z, Jump_032_50b1

    cp $01
    jp z, Jump_032_5313

    cp $11
    jp z, Jump_032_53b8

    cp $02
    jp z, Jump_032_54ec

    jp Jump_032_54f2


Jump_032_50b1:
    rst $08

    db $01

    call Call_000_2b54
    ld de, $d658
    push de
    rst $18

    db $3c, $02

    pop hl
    push hl
    ld b, $00
    rst $18

    db $0e, $06

    rst $18

    db $0c, $06

    pop de
    cp $ff
    jp z, Jump_032_5080

    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $0f
    add l
    ld l, a
    jr nc, jr_032_50e0

    inc h

jr_032_50e0:
    ld d, [hl]
    ld a, b
    and $0f
    ld [$c2a5], a
    cp $0f
    jr nz, jr_032_5114

    push af
    push bc
    push de
    push hl
    rst $18

    db $14, $02

    pop hl
    pop de
    pop bc
    pop af
    push de
    ld a, c
    and $0f
    ld b, a
    ld c, $00
    rst $18

    db $1e, $02

    ld bc, $0000
    rst $18

    db $36, $02

    pop de
    bit 0, d
    jr z, jr_032_5111

    ld bc, $0100
    rst $18
    jr c, @+$04

jr_032_5111:
    jp Jump_032_51a3


jr_032_5114:
    ld b, a
    xor a
    ldh [$cf], a
    ld hl, $c800
    rst $18

    db $06, $02

    or a
    jr z, jr_032_512a

    call Call_000_2b54
    ld a, $05
    ld [$c441], a
    ret


jr_032_512a:
    call Call_000_2cde
    xor a
    dec a
    ld [$c2a7], a
    ld a, [$c95e]
    cp $64
    jr nz, @+$1e

    ld hl, $c95c
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    call Call_032_54b5
    ld a, $01
    ld h, $01
    rst $18
    ld [$af48], sp
    ld hl, $c95c
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    rst $18
    inc [hl]
    ld [bc], a
    rst $08
    ld bc, $50df
    ld a, [bc]
    ld a, [$c96d]
    cp $02
    jr z, jr_032_51a3

    cp $01
    jr z, jr_032_516c

    ld a, [$c450]
    cp $00
    jr nz, jr_032_516c

    jr jr_032_51a3

jr_032_516c:
    call Call_032_5474
    rst $18
    nop
    dec b
    call Call_032_7d35
    cp $ff
    jp z, Jump_032_50b1

    cp $00
    jr z, jr_032_5182

    ld a, $01
    jr jr_032_5183

jr_032_5182:
    xor a

jr_032_5183:
    push af
    rst $18
    ld [bc], a
    ld a, [bc]
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    pop af
    or a
    jr nz, jr_032_51a3

    ld a, [$c96d]
    or a
    jr nz, jr_032_519a

    ret


jr_032_519a:
    ld a, $ff
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    ret


Jump_032_51a3:
jr_032_51a3:
    ld a, $09
    ld [$c834], a

Jump_032_51a8:
    rst $08

    db $01

    ld a, $00
    ld [$c450], a
    ld a, $02
    ld [$c46a], a
    ld b, $80
    ld c, $00
    rst $18

    db $1e, $02

    xor a
    ld [$c96d], a
    ld bc, $ffff
    rst $18

    db $4e, $0a

    rst $28

    db $00, $12

    rst $28

    db $20, $12

    rst $28

    db $40, $12

    rst $28

    db $60, $12

    rst $18

    db $34, $02

    rst $18

    db $00, $0d

    cp $ff
    jp z, Jump_032_50b1

    ld [$c834], a
    cp $09
    jp z, Jump_032_51f9

    cp $01
    jp z, Jump_032_51ff

    cp $02
    jp z, Jump_032_5240

    cp $03
    jp z, Jump_032_52a3

    cp $04
    jp z, Jump_032_52cd

    ret


Jump_032_51f9:
    ld a, $04
    ld [$c441], a
    ret


Jump_032_51ff:
    call Call_032_5304
    rst $18
    nop
    rrca
    cp $ff
    jp z, Jump_032_51a8

    push af
    rst $18
    inc e
    db $10
    pop af
    ld h, a
    ld l, $01
    rst $18
    db $10
    db $10
    ld bc, $ff01
    rst $18
    ld e, $02
    ld a, $01
    ld [$c834], a
    rst $30
    ld b, b
    add hl, bc
    jr z, jr_032_522e

    ld a, $12
    ld [$c837], a
    ld a, $01
    jr jr_032_5239

jr_032_522e:
    rst $30
    jr nz, jr_032_523a

    jr nz, jr_032_5237

    ld a, $12
    jr jr_032_5239

jr_032_5237:
    ld a, $03

jr_032_5239:
    rst $18

jr_032_523a:
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    ret


Jump_032_5240:
    ld de, $d658
    push de
    rst $18

    db $3e, $02

    pop hl
    push hl
    ld b, $00
    rst $18

    db $0e, $06

    rst $18

    db $0c, $06

    pop de
    cp $ff
    jp z, Jump_032_51a8

    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld c, [hl]
    push bc
    rst $18

    db $00, $0f

    pop bc
    cp $ff
    jp z, Jump_032_5240

    push bc
    push af
    rst $18

    db $1c, $10

    pop af
    ld h, a
    ld l, $01
    rst $18

    db $10, $10

    pop bc
    ld b, c
    ld c, $01
    rst $18

    db $1e, $02

    ld a, $02
    ld [$c834], a
    rst $30

    db $40, $09

    jr z, jr_032_5291

    ld a, $12
    ld [$c837], a
    ld a, $01
    jr jr_032_529c

jr_032_5291:
    rst $30

    db $20, $09

    jr nz, jr_032_529a

    ld a, $12
    jr jr_032_529c

jr_032_529a:
    ld a, $03

jr_032_529c:
    rst $18

    db $12, $10

    rst $18

    db $30, $10

    ret


Jump_032_52a3:
    call Call_032_5304
    rst $18
    nop
    rrca
    cp $ff
    jp z, Jump_032_51a8

    push af
    rst $18
    inc e
    db $10
    pop af
    ld h, a
    ld l, $01
    rst $18
    db $10
    db $10
    ld bc, $ff01
    rst $18
    ld e, $02
    ld a, $03
    ld [$c834], a
    ld a, $12
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_032_52dc

    ret


Jump_032_52cd:
    ld hl, $0101

Jump_032_52d0:
    rst $08

    db $01

    rst $18

    db $02, $0f

    cp $ff
    jp z, Jump_032_51a8

    push af
    push bc

jr_032_52dc:
    rst $18

    db $1c, $10

    pop bc
    pop af
    ld h, a
    ld l, c
    push hl
    rst $18

    db $10, $10

    ld a, $04
    ld [$c834], a
    ld a, $01
    rst $18

    db $12, $10

    rst $18

    db $30, $10

    pop hl
    set 7, l
    ld a, $04
    ld [$c834], a
    ld a, [$c96c]
    or a
    jp z, Jump_032_52d0

    ret


Call_032_5304:
    rst $30
    ld h, b
    ld de, $f7c8
    ld h, b
    rrca
    ret nz

    pop hl
    ld a, $06
    ld [$c441], a
    ret


Jump_032_5313:
    ld a, $01
    ld [$c33f], a
    rst $18
    ld b, $4a

jr_032_531b:
    call Call_000_2e3b
    ldh a, [$c0]
    cp $20
    jr nz, jr_032_531b

    ld c, $7f
    call Call_000_258a
    call Call_000_2e3b
    call Call_000_30f8

Jump_032_532f:
jr_032_532f:
    ld de, $d658
    push de
    rst $18
    inc a
    ld [bc], a
    pop hl
    push hl
    ld b, $00
    rst $18
    ld c, $06
    rst $18
    inc c
    ld b, $d1
    cp $ff
    jp z, Jump_032_532f

    call Call_032_5428
    ld a, $02
    ld [$c834], a

Jump_032_534e:
    rst $18
    nop
    dec c
    cp $ff
    jr z, jr_032_532f

    ld [$c834], a
    ld [$c897], a
    rst $18
    nop
    rrca
    cp $ff
    jp z, Jump_032_534e

    ld [$c836], a
    ld hl, $c880
    ld de, $cb00
    ld c, $02
    call Call_000_03eb
    rst $18
    ld b, $4a
    ld a, $21
    ldh [$c9], a
    ld a, $20
    call Call_000_3081
    call Call_000_30eb

jr_032_5380:
    call Call_000_2e3b
    ldh a, [$c0]
    cp $22
    jr z, jr_032_538b

    jr jr_032_5380

jr_032_538b:
    ld a, [$c834]
    push af
    ld a, [$c836]
    push af
    rst $18
    inc e
    db $10
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $8201
    rst $18
    ld e, $02
    pop af
    ld h, a
    ld l, $01
    rst $18
    db $10
    db $10
    pop af
    ld [$c834], a
    ld a, $12
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    jp Jump_032_5080


Jump_032_53b8:
    ld a, $02
    ld [$c33f], a
    ld a, $20
    ldh [$c1], a
    call Call_000_30f8

Jump_032_53c4:
    ld de, $d658
    push de
    rst $18
    inc a
    ld [bc], a
    pop hl
    push hl
    ld b, $00
    rst $18
    ld c, $06
    rst $18
    inc c
    ld b, $d1
    cp $ff
    jp z, Jump_032_53c4

    call Call_032_5428
    rst $18
    ld b, $4a
    ld de, $cb00
    ld hl, $c880
    ld c, $02
    call Call_000_03eb
    ld a, $22
    ldh [$c9], a
    ld a, $20
    call Call_000_3081
    call Call_000_30eb

jr_032_53f8:
    call Call_000_2e3b
    ldh a, [$c0]
    cp $21
    jr z, jr_032_5403

    jr jr_032_53f8

jr_032_5403:
    rst $18
    inc e
    db $10
    ld hl, $c880
    ld de, $c8c0
    ld c, $04
    call Call_000_03eb
    ld bc, $8200
    rst $18
    ld e, $02
    ld a, [$c897]
    ld [$c834], a
    ld a, $12
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    jp Jump_032_5080


Call_032_5428:
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, $0f
    add l
    ld l, a
    jr nc, jr_032_543b

    inc h

jr_032_543b:
    ld d, [hl]
    ld a, b
    and $0f
    ld [$c2a5], a
    cp $0f
    jr nz, jr_032_5462

    push de
    ld a, c
    and $0f
    ld b, a
    ld c, $00
    rst $18
    ld e, $02
    ld bc, $0000
    rst $18
    ld [hl], $02
    pop de
    bit 0, d
    jr z, jr_032_5461

    ld bc, $0100
    rst $18
    jr c, @+$04

jr_032_5461:
    ret


jr_032_5462:
    ld hl, $c800
    ld b, a
    rst $18
    ld b, $02
    call Call_000_2cde
    ld b, $80
    ld c, $00
    rst $18
    ld e, $02
    ret


Call_032_5474:
    ldh a, [$96]
    push af
    call Call_000_0341
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $90
    call Call_000_03a7
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld c, $90
    call Call_000_03a7
    ld hl, $d000
    ld de, $9800
    ld c, $24
    call Call_000_04db
    ld hl, $d000
    ld de, $b800
    ld c, $24
    call Call_000_04db
    call Call_000_0371
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_032_54b5:
    ld a, [$c812]
    cp $0a
    jr nc, jr_032_54bd

    ret


jr_032_54bd:
    cp $14
    jr nc, jr_032_54cb

    ld h, d
    ld l, e
    srl d
    rr e
    add hl, de
    ld d, h
    ld e, l
    ret


jr_032_54cb:
    cp $1e
    jr nc, jr_032_54d5

    ld h, d
    ld l, e
    add hl, de
    ld d, h
    ld e, l
    ret


jr_032_54d5:
    cp $28
    jr nc, jr_032_54e4

    ld h, d
    ld l, e
    srl d
    rr e
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ret


jr_032_54e4:
    ld h, d
    ld l, e
    add hl, hl
    add hl, de
    ld d, h
    ld e, l
    ret


    ret


Jump_032_54ec:
    rst $18

    db $22, $0b

    jp Jump_032_5080


Jump_032_54f2:
    call Call_032_79d8
    jp Jump_032_5080


    rrca
    ld d, l
    ld d, $55
    ld b, $55
    scf
    ld d, l
    jr c, jr_032_5557

    add hl, sp
    ld d, l
    ld a, [hl-]
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    add hl, bc
    nop
    add hl, bc
    rst $38
    inc b
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $ff05
    nop
    nop
    nop
    nop
    ld e, $01
    ld a, [bc]
    rst $38
    nop
    nop
    nop
    nop
    rra
    ld [bc], a
    dec bc
    rst $38
    nop
    nop
    nop
    nop
    rra
    ld bc, $ffff
    rst $38
    rst $38
    ret


    jp z, $f555

    ld d, l
    ld c, c
    ld d, l
    ld e, $57
    nop
    ld e, h
    ld e, e
    ld e, l
    rlca
    ld e, [hl]
    dec c
    ld a, [hl]
    nop
    ld hl, $2100
    nop
    nop
    nop
    add b
    ld bc, $0d0c
    ld a, [hl]

jr_032_5557:
    nop
    ld hl, $1f00
    nop
    nop
    nop
    add b
    ld bc, $0d0b
    ld a, [hl]
    nop
    dec e
    nop
    ld hl, $0000
    nop
    nop
    ld bc, $0d0a
    ld a, [hl]
    nop
    dec e
    nop
    rra
    nop
    nop
    nop
    ld b, b
    ld bc, $0d0d
    ld a, [hl]
    nop
    rla
    nop
    inc de
    nop
    nop
    nop
    add b
    ld bc, $0d16
    ld a, [hl]
    nop
    dec d
    nop
    inc de
    nop
    nop
    nop
    nop
    ld bc, $190d
    ld a, [hl]
    nop
    rla
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $b20a
    ld e, [hl]
    nop
    dec e
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $0d16
    ld a, [hl]
    nop
    add hl, de
    nop
    add hl, de
    nop
    nop
    nop
    ret nz

    ld bc, $0d17
    ld a, [hl]
    nop
    ld hl, $1300
    nop
    nop
    nop
    add b
    ld bc, $000b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    ld a, [de]
    nop
    add hl, hl
    ld [bc], a
    ld b, b
    nop
    ld a, [de]
    nop
    dec b
    inc bc
    ld b, b
    nop
    rlca
    nop
    dec b
    inc b
    ld b, b
    nop
    dec b
    nop
    inc de
    dec b
    ld b, b
    nop
    add hl, bc
    nop
    inc de
    ld b, $40
    nop
    ld l, $00
    dec b
    rlca
    ld b, b
    nop
    dec l
    nop
    inc de
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    ld bc, $ff02
    nop
    nop
    nop
    nop
    ld [$0301], sp
    rst $38
    nop
    nop
    nop
    nop
    dec b
    ld bc, $ff04
    nop
    nop
    nop
    nop
    ld b, $01
    dec b
    rst $38
    nop
    nop
    nop
    nop
    ld b, $02
    ld b, $ff
    nop
    nop
    nop
    nop
    inc b
    ld bc, $ff07
    nop
    nop
    nop
    nop
    rlca
    ld bc, $ff0d
    nop
    nop
    nop
    nop
    ld bc, $0e01
    rst $38
    nop
    nop
    nop
    nop
    dec h
    ld bc, $faff
    sbc b
    jp nz, $0011

    rst $38
    rst $18
    ld b, b
    ld a, [bc]
    ld a, [$c298]
    rst $18
    ld b, d
    ld a, [bc]
    ld a, [$c298]
    ld b, a
    ld a, $00
    rst $18
    jr nc, jr_032_5660

    ld a, [$c298]
    rst $18
    inc d
    ld a, [bc]
    push hl
    ld hl, $c290

jr_032_5660:
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    rst $18
    ld c, h
    inc b
    ld a, $0a
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $0a
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $0a
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $0a
    ld bc, $1900
    ld de, $1d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0a
    rst $18
    ld e, $0a
    ld a, $0a
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $04
    rst $18
    inc d
    ld a, [bc]
    ld de, $001a
    add hl, de
    ld [hl], $00
    ld a, $04
    ld bc, $1d00
    ld de, $2500
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    rst $18
    ld e, $0a
    ld a, $0a
    ld bc, $1900
    ld de, $1900
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $04
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $04
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $04
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $04
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $04
    rst $18
    ld b, d
    ld a, [bc]
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    call Call_032_62f7
    jp z, Jump_032_56f8

    ld hl, $01d1
    call Call_032_5b5a
    jr jr_032_56fe

Jump_032_56f8:
    ld hl, $016b
    rst $18
    ld c, $0a

jr_032_56fe:
    ld a, $02
    rst $18
    ld [$c90a], sp
    call Call_032_62f7
    jp z, Jump_032_5712

    ld hl, $01db
    call Call_032_5b5a
    jr jr_032_5718

Jump_032_5712:
    ld hl, $016c
    rst $18
    ld c, $0a

jr_032_5718:
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    ld [$0356], a
    nop
    inc bc
    rst $38
    nop
    nop
    inc b
    ld d, a
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld l, l
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    ld l, [hl]
    ld bc, $0003
    ld b, $ff
    nop
    nop
    ld l, a
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    ld [hl], b
    ld bc, $0003
    ld [$00ff], sp
    nop
    ld [hl], c
    ld bc, $0003
    add hl, bc
    rst $38
    nop
    nop
    ld [hl], d
    ld bc, $0003
    ld a, [bc]
    rst $38
    nop
    nop
    ld [hl], e
    ld bc, $0001
    dec bc
    rst $38
    nop
    nop
    ld [hl], h
    ld bc, $0001
    rst $38
    call Call_032_62f7
    jp z, Jump_032_577d

    ld hl, $01d1
    call Call_032_5b5a
    jr jr_032_5790

Jump_032_577d:
    rst $30
    nop
    ld de, $0828
    ld hl, $0176
    rst $18
    ld c, $0a
    jr jr_032_5790

    ld hl, $0175
    rst $18
    ld c, $0a

jr_032_5790:
    ld a, $02
    rst $18
    ld [$c90a], sp
    call Call_032_62f7
    jp z, Jump_032_57a4

    ld hl, $01db
    call Call_032_5b5a
    jr jr_032_57b7

Jump_032_57a4:
    rst $30
    nop
    ld de, $0828
    ld hl, $0178
    rst $18
    ld c, $0a
    jr jr_032_57b7

    ld hl, $0177
    rst $18
    ld c, $0a

jr_032_57b7:
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $017e
    rst $18
    ld c, $0a
    ld a, $09
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr nz, jr_032_57e5

    ld a, $09
    rst $18
    ld [$c90a], sp

jr_032_57e5:
    rst $18
    db $10
    ld a, [bc]
    ld a, $09
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_57f5:
    call Call_032_62f7
    jr nz, jr_032_5804

    call Call_032_62e2
    jr z, jr_032_580a

    rst $18
    db $10
    ld a, [bc]
    jr jr_032_580a

jr_032_5804:
    rst $18
    db $10
    ld a, [bc]
    rst $18
    db $10
    ld a, [bc]

jr_032_580a:
    ld a, $0a
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld hl, $0181
    rst $18
    ld c, $0a
    ld a, $00
    ld [$c4bc], a
    call Call_032_57f5
    ret


    ld hl, $0195
    rst $18
    ld c, $0a
    ld a, $01
    ld [$c4bc], a
    call Call_032_57f5
    ret


    ld hl, $01a3
    rst $18
    ld c, $0a
    ld a, $02
    ld [$c4bc], a
    call Call_032_57f5
    ret


    ld hl, $01af
    rst $18
    ld c, $0a
    ld a, $03
    ld [$c4bc], a
    call Call_032_57f5
    ret


    ld [bc], a
    rst $38
    nop
    nop
    ld l, a
    ld d, a
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sub [hl]
    ld d, a
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld a, c
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    ld a, d
    ld bc, $0003
    ld b, $ff
    nop
    nop
    ld a, e
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    ld a, h
    ld bc, $0003
    ld [$00ff], sp
    nop
    ld a, l
    ld bc, $0003
    add hl, bc
    rst $38
    nop
    nop
    cp l
    ld d, a
    inc bc
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    rla
    ld e, b
    ld bc, $0b00
    rst $38
    nop
    nop
    add h
    ld bc, $0001
    rst $38
    call Call_032_62f7
    jp z, Jump_032_58b2

    ld hl, $01d1
    call Call_032_5b5a
    jr jr_032_58c7

Jump_032_58b2:
    rst $30
    jr nz, @+$13

    jr z, jr_032_58bf

    ld hl, $0189
    rst $18
    ld c, $0a
    jr jr_032_58cd

jr_032_58bf:
    ld hl, $0185
    rst $18
    ld c, $0a
    jr jr_032_58cd

jr_032_58c7:
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_032_58cd:
    ld a, $02
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    jr nz, jr_032_58c7

    rst $18
    db $10
    ld a, [bc]
    rst $30
    nop
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    call Call_032_62f7
    jp z, Jump_032_590f

    ld hl, $01db
    call Call_032_5b5a
    jr jr_032_5922

Jump_032_590f:
    rst $30
    jr nz, @+$13

    jr z, jr_032_591c

    ld hl, $018e
    rst $18
    ld c, $0a
    jr jr_032_5922

jr_032_591c:
    ld hl, $018d
    rst $18
    ld c, $0a

jr_032_5922:
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    and h
    ld e, b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld bc, $0159
    nop
    inc b
    rst $38
    nop
    nop
    adc a
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    sub b
    ld bc, $0003
    ld b, $ff
    nop
    nop
    sub c
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    sub d
    ld bc, $0003
    ld [$00ff], sp
    nop
    sub e
    ld bc, $0003
    add hl, bc
    rst $38
    nop
    nop
    sub h
    ld bc, $0003
    ld a, [bc]
    rst $38
    nop
    nop
    ld h, $58
    ld bc, $0b00
    rst $38
    nop
    nop
    sbc b
    ld bc, $0001
    rst $38
    call Call_032_62f7
    jp z, Jump_032_5987

    ld hl, $01db
    call Call_032_5b5a
    jr jr_032_599a

Jump_032_5987:
    rst $30
    ld b, b
    ld de, $0828
    ld hl, $019c
    rst $18
    ld c, $0a
    jr jr_032_599a

    ld hl, $019b
    rst $18
    ld c, $0a

jr_032_599a:
    ld a, $03
    rst $18
    ld [$c90a], sp
    call Call_032_62f7
    jp z, Jump_032_59ae

    ld hl, $01d1
    call Call_032_5b5a
    jr jr_032_59c1

Jump_032_59ae:
    rst $30
    ld b, b
    ld de, $0828
    ld hl, $019a
    rst $18
    ld c, $0a
    jr jr_032_59c1

    ld hl, $0199
    rst $18
    ld c, $0a

jr_032_59c1:
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    and b
    ld e, c
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld a, c
    ld e, c
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    sbc l
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    sbc [hl]
    ld bc, $0003
    ld b, $ff
    nop
    nop
    sbc a
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    and b
    ld bc, $0003
    ld [$00ff], sp
    nop
    and c
    ld bc, $0003
    add hl, bc
    rst $38
    nop
    nop
    and d
    ld bc, $0003
    ld a, [bc]
    rst $38
    nop
    nop
    dec [hl]
    ld e, b
    ld bc, $0b00
    rst $38
    nop
    nop
    and [hl]
    ld bc, $0001
    rst $38
    call Call_032_62f7
    jp z, Jump_032_5a26

    ld hl, $01d1
    call Call_032_5b5a
    jr jr_032_5a2c

Jump_032_5a26:
    ld hl, $01a7
    rst $18
    ld c, $0a

jr_032_5a2c:
    ld a, $03
    rst $18
    ld [$c90a], sp
    call Call_032_62f7
    jp z, Jump_032_5a40

    ld hl, $01db
    call Call_032_5b5a
    jr jr_032_5a46

Jump_032_5a40:
    ld hl, $01a8
    rst $18
    ld c, $0a

jr_032_5a46:
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    jr @+$5c

    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld [hl-], a
    ld e, d
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    xor c
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    xor d
    ld bc, $0003
    ld b, $ff
    nop
    nop
    xor e
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    xor h
    ld bc, $0003
    ld [$00ff], sp
    nop
    xor l
    ld bc, $0003
    add hl, bc
    rst $38
    nop
    nop
    xor [hl]
    ld bc, $0003
    ld a, [bc]
    rst $38
    nop
    nop
    ld b, h
    ld e, b
    ld bc, $0b00
    rst $38
    nop
    nop
    or d
    ld bc, $0001
    rst $38
    call Call_032_62f7
    jp z, Jump_032_5aab

    ld hl, $01d1
    call Call_032_5b5a
    jr jr_032_5ab1

Jump_032_5aab:
    ld hl, $01b3
    rst $18
    ld c, $0a

jr_032_5ab1:
    ld a, $02
    rst $18
    ld [$c90a], sp
    call Call_032_62f7
    jp z, Jump_032_5ac5

    ld hl, $01db
    call Call_032_5b5a
    jr jr_032_5acb

Jump_032_5ac5:
    ld hl, $01b4
    rst $18
    ld c, $0a

jr_032_5acb:
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $01b6
    rst $18
    ld c, $0a
    ld a, $05
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_5afc

    rst $18
    db $10
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$c90a], sp

jr_032_5afc:
    ld a, $05
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld [bc], a
    rst $38
    nop
    nop
    sbc l
    ld e, d
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    or a
    ld e, d
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    or l
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    pop de
    ld e, d
    inc bc
    nop
    ld b, $ff
    nop
    nop
    cp c
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    cp d
    ld bc, $0003
    ld [$00ff], sp
    nop
    cp e
    ld bc, $0003
    add hl, bc
    rst $38
    nop
    nop
    cp h
    ld bc, $0003
    ld a, [bc]
    rst $38
    nop
    nop
    cp l
    ld bc, $0001
    dec bc
    rst $38
    nop
    nop
    cp [hl]
    ld bc, $0001
    rst $38

Call_032_5b5a:
    rst $30
    ld h, b
    ld [de], a
    jr z, jr_032_5b6c

    rst $30
    ld h, b
    ld de, $0428
    ld a, $09
    jr jr_032_5bb2

    ld a, $08
    jr jr_032_5bb2

jr_032_5b6c:
    rst $30
    ld b, b
    ld [de], a
    jr z, jr_032_5b7e

    rst $30
    ld b, b
    ld de, $0428
    ld a, $07
    jr jr_032_5bb2

    ld a, $06
    jr jr_032_5bb2

jr_032_5b7e:
    rst $30
    jr nz, jr_032_5b93

    jr z, jr_032_5ba2

    rst $30
    jr nz, @+$13

    jr z, jr_032_5b8c

    ld a, $05
    jr jr_032_5bb2

jr_032_5b8c:
    rst $30
    ld b, b
    ld c, $28
    inc b
    ld a, $04

jr_032_5b93:
    jr jr_032_5bb2

    rst $30
    jr nz, @+$10

    jr z, jr_032_5b9e

    ld a, $03
    jr jr_032_5bb2

jr_032_5b9e:
    ld a, $02
    jr jr_032_5bb2

jr_032_5ba2:
    rst $30
    nop
    ld [de], a
    jr z, jr_032_5bb2

    rst $30
    nop
    ld de, $0428
    ld a, $01
    jr jr_032_5bb2

    ld a, $00

jr_032_5bb2:
    add l
    ld l, a
    jr nc, jr_032_5bb7

    inc h

jr_032_5bb7:
    rst $18
    ld c, $0a
    call Call_032_5bbe
    ret


Call_032_5bbe:
    rst $30
    ld h, b
    ld de, $0428
    ld a, $05
    jr jr_032_5be6

    rst $30
    ld h, b
    ld c, $28
    inc b
    ld a, $04
    jr jr_032_5be6

    rst $30
    ld b, b
    ld c, $28
    inc b
    ld a, $04
    jr jr_032_5be6

    rst $30
    jr nz, jr_032_5bea

    jr z, jr_032_5be2

    ld a, $03
    jr jr_032_5be6

jr_032_5be2:
    ld a, $02
    jr jr_032_5be6

jr_032_5be6:
    rst $18
    ld e, d
    dec b
    ret


jr_032_5bea:
    call Call_000_0a61
    ld a, l
    and $03
    add $e5
    ld l, a
    adc $01
    sub l
    ld h, a
    rst $18
    ld c, $0a
    ld a, $ff
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    ld [$015b], a
    nop
    rst $38
    ld a, $02
    ld [$c441], a
    rst $08
    sub d
    ld c, $08
    call Call_000_25a1
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


jr_032_5c1d:
    ld a, $01
    ld [$c441], a
    rst $08
    sub d
    ret


    rst $30
    ld h, b
    ld de, $f328
    rst $30
    and b
    ld [de], a
    jr nz, jr_032_5c1d

    rst $30
    ldh [rIF], a
    jr nz, jr_032_5c1d

    ld hl, $01ce
    jr jr_032_5c39

jr_032_5c39:
    rst $18
    ld c, $0a
    ld a, $0a
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld bc, $0040
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1900
    ld de, $1d00
    rst $18
    jr c, jr_032_5c5d

    rst $18
    inc a
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_032_5c5d:
    ld a, $0a
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_5c98

    rst $18
    db $10
    ld a, [bc]
    ld a, $0a
    rst $18
    ld [$af0a], sp
    ld bc, $1a00
    ld de, $2500
    rst $18
    jr c, jr_032_5c8e

    ld a, $00
    ld bc, $1a00
    ld de, $2500
    rst $18
    ld [hl+], a

jr_032_5c8e:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    rst $18
    inc a
    ld a, [bc]
    ret


jr_032_5c98:
    rst $20
    and b
    ld [de], a
    ld a, $0a
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    rst $08
    sub d
    ret


    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_032_5cce

    call Call_032_5ef5
    ld a, $03
    ld [$c441], a
    rst $08
    sub d

jr_032_5cce:
    ret


    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_032_5cee

    call Call_032_5fbe
    ld a, $04
    ld [$c441], a
    rst $08
    sub d

jr_032_5cee:
    ret


    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_032_5d0e

    call Call_032_6087
    ld a, $05
    ld [$c441], a
    rst $08
    sub d

jr_032_5d0e:
    ret


    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_032_5d2e

    call Call_032_6150
    ld a, $06
    ld [$c441], a
    rst $08
    sub d

jr_032_5d2e:
    ret


    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_032_5d4e

    call Call_032_6219
    ld a, $07
    ld [$c441], a
    rst $08
    sub d

jr_032_5d4e:
    ret


    ld hl, $01c2
    rst $18
    ld c, $0a
    ld a, $0a
    rst $18
    ld [$c90a], sp
    ld bc, $00ff
    nop
    dec h
    ld e, h
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    add hl, bc
    ld e, h
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    xor a
    ld e, h
    nop
    nop
    inc b
    rst $38
    nop
    nop
    rst $08
    ld e, h
    nop
    nop
    dec b
    rst $38
    nop
    nop
    rst $28
    ld e, h
    nop
    nop
    ld b, $ff
    nop
    nop
    rrca
    ld e, l
    nop
    nop
    rlca
    rst $38
    nop
    nop
    cpl
    ld e, l
    nop
    nop
    rst $38

Call_032_5d94:
    push de
    call Call_000_0699
    ld a, $00
    ld bc, $000a
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $40
    ld de, $0200
    rst $18
    jr z, @+$0c

    ld a, [$c298]
    cp $ff
    jr z, jr_032_5dc1

    ld a, a
    ld bc, $000a
    rst $18
    ld d, $0a
    ld a, a
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_032_5dcb

jr_032_5dc1:
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    pop de
    ld l, e

jr_032_5dcb:
    ld h, d
    call Call_000_0699
    ld a, $00
    rst $18
    ld e, $0a
    ret


Jump_032_5dd5:
    ld hl, $5f4e
    ld de, $5f65
    call Call_032_5d94
    ret


Jump_032_5ddf:
    ld hl, $6017
    ld de, $602e
    call Call_032_5d94
    ret


Jump_032_5de9:
    ld hl, $60e0
    ld de, $60f7
    call Call_032_5d94
    ret


Jump_032_5df3:
    ld hl, $61a9
    ld de, $61c0
    call Call_032_5d94
    ret


Jump_032_5dfd:
    ld hl, $6272
    ld de, $6289
    call Call_032_5d94
    ret


    ld a, $00
    ld [$c967], a
    ld a, [$c46a]
    cp $01
    jr nz, jr_032_5e25

    rst $30
    and b
    ld c, $ca
    dec h
    ld e, [hl]
    rst $30
    nop
    rrca
    jp nz, Jump_032_5e25

    ld a, $0e
    ld [$c441], a
    ret


Jump_032_5e25:
jr_032_5e25:
    rst $30
    ld h, b
    ld de, $0b28
    ld hl, $5b09
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_5e89

    rst $30
    ld h, b
    ld c, $28
    ld d, $21
    ld c, h
    ld e, d
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $09
    ld de, $7e19
    rst $18
    jr jr_032_5e58

    jr jr_032_5e89

    rst $30
    ld b, b
    ld c, $28
    ld d, $21
    rst $00
    ld e, c

jr_032_5e58:
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $09
    ld de, $7e19
    rst $18
    jr jr_032_5e73

    jr jr_032_5e89

    rst $30
    jr nz, jr_032_5e7c

    jr z, jr_032_5e7b

    ld hl, $5928

jr_032_5e73:
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_5e89

jr_032_5e7b:
    rst $30

jr_032_5e7c:
    nop
    ld c, $28
    add hl, bc
    ld hl, $5853
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]

jr_032_5e89:
    ld a, [$c46a]
    cp $03
    jp z, Jump_032_5dd5

    ld a, [$c46a]
    cp $04
    jp z, Jump_032_5ddf

    ld a, [$c46a]
    cp $05
    jp z, Jump_032_5de9

    ld a, [$c46a]
    cp $06
    jp z, Jump_032_5df3

    ld a, [$c46a]
    cp $07
    jp z, Jump_032_5dfd

    ret


    dec c
    ld c, $08
    nop
    dec c
    dec de
    ld bc, $0700
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0728
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0c28
    rst $00
    rst $38

Call_032_5ef5:
    ld b, $02
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $06
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $08
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $08
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $06
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $02
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $00
    ld c, $3c
    ld d, $06
    ld e, $04
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_5fbe:
    ld b, $02
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $06
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $08
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $08
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $06
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $02
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $00
    ld c, $3c
    ld d, $04
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_6087:
    ld b, $02
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $06
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $08
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $08
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $06
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $02
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $00
    ld c, $3c
    ld d, $08
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_6150:
    ld b, $04
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $08
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $0c
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $10
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $10
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $0c
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $08
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $00
    ld c, $3e
    ld d, $2c
    ld e, $04
    ld h, $04
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_6219:
    ld b, $02
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $06
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $08
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $08
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld b, $06
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $04
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $02
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $00
    ld c, $3c
    ld d, $2c
    ld e, $12
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_62e2:
    ld de, $0088
    ld a, [$c4bc]
    ld h, $00
    ld l, a
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d10
    ret


Call_032_62f7:
    rst $30
    nop
    ld [de], a
    jp nz, Jump_032_6312

    rst $30
    jr nz, jr_032_6312

    jp nz, Jump_032_6312

    rst $30
    ld b, b
    ld [de], a
    jp nz, Jump_032_6312

    rst $30
    ld h, b
    ld [de], a
    jp nz, Jump_032_6312

    ld a, $00
    ret


Jump_032_6312:
jr_032_6312:
    ld a, $01
    ret


    sbc b
    ld h, e
    sbc a
    ld h, e
    inc hl
    ld h, e
    ld c, l
    ld h, h
    inc l
    ld h, a
    xor h
    ld l, c
    or l
    ld l, c
    dec c
    ld a, [hl]
    nop
    dec e
    nop
    rla
    nop
    nop
    nop
    add b
    ld bc, $0d16
    ld a, [hl]
    nop
    add hl, de
    nop
    rla
    nop
    nop
    nop
    nop
    ld bc, $0d0d
    ld a, [hl]
    nop
    dec de
    nop
    inc de
    nop
    nop
    nop
    ret nz

    ld bc, $0d0a
    ld a, [hl]
    nop
    dec bc
    nop
    add hl, de
    nop
    nop
    nop
    ret nz

    ld bc, $0d0d
    ld a, [hl]
    nop
    add hl, bc
    nop
    rla
    nop
    nop
    nop
    ret nz

    ld bc, $0d0a
    ld a, [hl]
    nop
    rlca
    nop
    add hl, bc
    cp l
    nop
    nop
    nop
    ld bc, $0d04
    ld a, [hl]
    nop
    add hl, bc
    nop
    rlca
    cp l
    nop
    nop
    ld b, b
    ld bc, $0d05
    ld a, [hl]
    nop
    dec bc
    nop
    rlca
    cp l
    nop
    nop
    ld b, b
    ld bc, $0d06
    ld a, [hl]
    nop
    dec c
    nop
    add hl, bc
    cp l
    nop
    nop
    add b
    ld bc, $0007
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    jr jr_032_639d

jr_032_639d:
    rra
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    ld b, $ff

Jump_032_63a8:
    ld hl, $c4ba
    ld de, $01fd
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $07
    ld [$c4bc], a
    call Call_032_6b81
    ret


Jump_032_63ba:
    ld hl, $c4ba
    ld de, $0416
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $08
    ld [$c4bc], a
    call Call_032_6b81
    ret


Jump_032_63cc:
    ld hl, $c4ba
    ld de, $042f
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $09
    ld [$c4bc], a
    call Call_032_6b81
    ret


Jump_032_63de:
    rst $20
    ld h, b
    db $10
    ld hl, $c4ba
    ld de, $0448
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $0a
    ld [$c4bc], a
    call Call_032_6b81
    ret


Call_032_63f3:
    ld a, $02
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6415

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_032_6415:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld hl, $0466
    rst $18
    ld c, $0a
    call Call_032_63f3
    ret


    ld hl, $046b
    rst $18
    ld c, $0a
    call Call_032_63f3
    ret


    ld hl, $0470
    rst $18
    ld c, $0a
    call Call_032_63f3
    ret


    ld hl, $0475
    rst $18
    ld c, $0a
    call Call_032_63f3
    ret


    ld [bc], a
    rst $38
    nop
    nop
    jp hl


    ld bc, $0003
    inc bc
    rst $38
    nop
    nop
    ld [$0301], a
    nop
    inc b
    rst $38
    nop
    nop
    db $eb
    ld bc, $0003
    dec b
    rst $38
    nop
    nop
    db $ec
    ld bc, $0001
    ld b, $ff
    nop
    nop
    db $ed
    ld bc, $0003
    rlca
    rst $38
    nop
    nop
    xor b
    ld h, e
    inc bc
    nop
    ld [$00ff], sp
    nop
    cp d
    ld h, e
    inc bc
    nop
    add hl, bc
    rst $38
    nop
    nop
    call z, Call_000_0363
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    sbc $63
    inc bc
    nop
    dec bc
    rst $38
    nop
    nop
    db $ed
    ld bc, $0003
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ld e, a
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld h, b
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld h, c
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    ld h, d
    inc b
    ld bc, $0600
    rst $38
    nop
    nop
    ld h, h
    inc b
    inc bc
    nop
    rlca
    rst $38
    nop
    nop
    xor b
    ld h, e
    inc bc
    nop
    ld [$00ff], sp
    nop
    cp d
    ld h, e
    inc bc
    nop
    add hl, bc
    rst $38
    nop
    nop
    call z, Call_000_0363
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    sbc $63
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    dec h
    ld h, h
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld l, c
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld l, d
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    ld h, d
    inc b
    ld bc, $0600
    rst $38
    nop
    nop
    ld h, h
    inc b
    inc bc
    nop
    rlca
    rst $38
    nop
    nop
    xor b
    ld h, e
    inc bc
    nop
    ld [$00ff], sp
    nop
    cp d
    ld h, e
    inc bc
    nop
    add hl, bc
    rst $38
    nop
    nop
    call z, Call_000_0363
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    sbc $63
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    cpl
    ld h, h
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld l, [hl]
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld l, a
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    ld h, d
    inc b
    ld bc, $0600
    rst $38
    nop
    nop
    ld h, h
    inc b
    inc bc
    nop
    rlca
    rst $38
    nop
    nop
    xor b
    ld h, e
    inc bc
    nop
    ld [$00ff], sp
    nop
    cp d
    ld h, e
    inc bc
    nop
    add hl, bc
    rst $38
    nop
    nop
    call z, Call_000_0363
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    sbc $63
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    add hl, sp
    ld h, h
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld [hl], e
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld [hl], h
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    ld h, d
    inc b
    ld bc, $0600
    rst $38
    nop
    nop
    ld h, h
    inc b
    inc bc
    nop
    rlca
    rst $38
    nop
    nop
    xor b
    ld h, e
    inc bc
    nop
    ld [$00ff], sp
    nop
    cp d
    ld h, e
    inc bc
    nop
    add hl, bc
    rst $38
    nop
    nop
    call z, Call_000_0363
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    sbc $63
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ld b, e
    ld h, h
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld a, b
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld a, c
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    dec bc
    ld h, [hl]
    ld bc, $0600
    rst $38
    nop
    nop
    add hl, sp
    ld h, [hl]
    inc bc
    nop
    rlca
    rst $38
    nop
    nop
    ld h, a
    ld h, [hl]
    inc bc
    nop
    ld [$00ff], sp
    nop
    add [hl]
    ld h, [hl]
    inc bc
    nop
    add hl, bc
    rst $38
    nop
    nop
    and l
    ld h, [hl]
    inc bc
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    call nz, $0366
    nop
    rst $38
    ld hl, $0484
    rst $18
    ld c, $0a
    rst $30
    and b
    rla
    jr nz, jr_032_6633

    ld hl, $0462
    rst $18
    ld c, $0a
    rst $30
    nop
    ld de, $1228
    rst $30
    jr nz, jr_032_6635

    jr z, jr_032_6633

    rst $30
    ld b, b
    ld de, $0828
    rst $30
    ld h, b
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]

jr_032_6633:
    ld a, $05

jr_032_6635:
    rst $18
    ld [$c90a], sp
    ld hl, $0485
    rst $18
    ld c, $0a
    rst $30
    and b
    rla
    jr nz, jr_032_6633

    ld hl, $0464
    rst $18
    ld c, $0a
    rst $30
    nop
    ld de, $1228
    rst $30
    jr nz, jr_032_6663

    jr z, jr_032_6661

    rst $30
    ld b, b
    ld de, $0828
    rst $30
    ld h, b
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]

jr_032_6661:
    ld a, $05

jr_032_6663:
    rst $18
    ld [$c90a], sp
    ld a, $07
    ld [$c4bc], a
    rst $30
    nop
    ld a, [bc]
    jp z, Jump_032_63a8

    ld hl, $047a
    rst $18
    ld c, $0a
    rst $30
    nop
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]
    ld a, $07
    rst $18
    ld [$c90a], sp
    ld a, $08
    ld [$c4bc], a
    call Call_032_6e9f
    jp z, Jump_032_63ba

    ld hl, $047c
    rst $18
    ld c, $0a
    rst $30
    jr nz, @+$13

    jr z, jr_032_669f

    rst $18
    db $10
    ld a, [bc]

jr_032_669f:
    ld a, $08
    rst $18
    ld [$c90a], sp
    ld a, $09
    ld [$c4bc], a
    call Call_032_6e9f
    jp z, Jump_032_63cc

    ld hl, $047e
    rst $18
    ld c, $0a
    rst $30
    ld b, b
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]
    ld a, $09
    rst $18
    ld [$c90a], sp
    ld a, $0a
    ld [$c4bc], a
    call Call_032_6e9f
    jp z, Jump_032_63de

    rst $30
    add b
    ld [de], a
    jr nz, jr_032_6713

    ld hl, $0480
    rst $18
    ld c, $0a
    ld a, $0a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0a
    rst $18
    ld [$3e0a], sp
    ld a, [bc]
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0a
    rst $18
    ld [$3e0a], sp
    ld a, [bc]
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0a
    rst $18
    ld [$e70a], sp
    add b
    ld [de], a

jr_032_6713:
    ld a, $0a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld hl, $0483
    rst $18
    ld c, $0a
    ld a, $0a
    rst $18
    ld [$c90a], sp
    ld bc, $00ff
    nop
    ld h, a
    ld a, [hl]
    ld b, $00
    rst $38
    call Call_032_6ab6
    ret


    rst $30
    and b
    rla
    jr z, jr_032_6742

    rst $20
    nop
    inc c
    ret


jr_032_6742:
    rst $20
    nop
    inc c
    xor a
    ld [$c4b3], a
    ld de, $87c0
    ld b, $00
    rst $18
    inc c
    ld bc, $ddcd
    dec b
    ld a, $0f
    ld hl, $6735
    call Call_000_23e8
    ld hl, $01ee
    rst $18
    ld c, $0a
    ld bc, $0040
    rst $18
    ld [hl], $0a
    ld a, $06
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $06
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $06
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_032_67be

    ld a, $05
    rst $18
    ld e, $0a
    push af
    ld a, $0a
    rst $18
    inc b

jr_032_67be:
    ld a, [bc]
    pop af
    rst $30
    nop
    ld de, $1228
    rst $30
    jr nz, jr_032_67d9

    jr z, jr_032_67d7

    rst $30
    ld b, b
    ld de, $0828
    rst $30
    ld h, b
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]

jr_032_67d7:
    ld a, $05

jr_032_67d9:
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af

Jump_032_67e3:
    xor a
    ld bc, $0a00
    ld de, $1040
    rst $18
    jr c, jr_032_67f7

    rst $18
    inc a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_032_67f7:
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c4b3], a
    ld hl, $01f1
    rst $18
    ld c, $0a
    rst $30
    ld h, b
    ld de, $0628
    ld hl, $01f9
    rst $18
    ld c, $0a
    ld a, $86
    rst $18
    ld [$af0a], sp
    ld [$c4b3], a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld [$c4b3], a
    ld hl, $01f2
    rst $18
    ld c, $0a
    rst $30
    ld b, b
    ld de, $0628
    ld hl, $01fa
    rst $18
    ld c, $0a
    ld a, $86
    rst $18
    ld [$af0a], sp
    ld [$c4b3], a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $06
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld [$c4b3], a
    ld hl, $01f3
    rst $18
    ld c, $0a
    rst $30
    jr nz, jr_032_6898

    jr z, jr_032_688f

    ld hl, $01fb
    rst $18
    ld c, $0a

jr_032_688f:
    ld a, $86
    rst $18
    ld [$af0a], sp
    ld [$c4b3], a

jr_032_6898:
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld [$c4b3], a
    ld hl, $01f4
    rst $18
    ld c, $0a
    rst $30
    nop
    ld de, $0628
    ld hl, $01fc
    rst $18
    ld c, $0a
    ld a, $86
    rst $18
    ld [$af0a], sp
    ld [$c4b3], a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $06
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $01f5
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_694e

    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    jp Jump_032_67e3


jr_032_694e:
    rst $18
    db $10
    ld a, [bc]
    rst $30
    nop
    ld de, $1228
    rst $30
    jr nz, jr_032_696a

    jr z, jr_032_6968

    rst $30
    ld b, b
    ld de, $0828
    rst $30
    ld h, b
    ld de, $0328
    rst $18
    db $10
    ld a, [bc]

jr_032_6968:
    ld a, $05

jr_032_696a:
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_032_699c

    ld a, $05
    rst $18
    ld e, $0a
    ld a, $05
    ld b, $c0
    rst $18

jr_032_699c:
    inc l
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $6735
    call Call_000_2449
    ret


    ld bc, $60ff
    nop
    add hl, sp
    ld h, a
    nop
    nop
    rst $38
    ld a, [$c46a]
    cp $fa
    jr nz, jr_032_69c2

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_032_69c2:
    rst $30
    nop
    ld [de], a
    jr z, jr_032_69d2

    ld a, $07
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_032_69dc

jr_032_69d2:
    rst $30
    jr nz, jr_032_69e7

    jr z, jr_032_69e2

    ld a, $08
    ld bc, $3f00

jr_032_69dc:
    ld de, $3f00
    rst $18
    jr nz, jr_032_69ec

jr_032_69e2:
    rst $30
    ld b, b
    ld [de], a
    jr z, jr_032_69f2

jr_032_69e7:
    ld a, $09
    ld bc, $3f00

jr_032_69ec:
    ld de, $3f00
    rst $18
    jr nz, jr_032_69fc

jr_032_69f2:
    rst $30
    ld h, b
    ld [de], a
    jr z, jr_032_6a02

    ld a, $0a
    ld bc, $3f00

jr_032_69fc:
    ld de, $3f00
    rst $18
    jr nz, @+$0c

jr_032_6a02:
    rst $30
    ld h, b
    ld de, $0b28
    ld hl, $65c2
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_6a5b

    rst $30
    ld h, b
    ld c, $28
    dec bc
    ld hl, $6579
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_6a5b

    rst $30
    ld b, b
    ld c, $28
    dec bc
    ld hl, $6530
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_6a5b

    rst $30
    jr nz, jr_032_6a43

    jr z, jr_032_6a4d

    ld hl, $64e7
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    ldh a, [$95]
    ld b, a

jr_032_6a43:
    ld a, $04
    ld de, $6a5c
    rst $18
    jr jr_032_6a55

    jr jr_032_6a5b

jr_032_6a4d:
    rst $30
    nop
    ld c, $28
    add hl, bc
    ld hl, $649e

jr_032_6a55:
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]

jr_032_6a5b:
    ret


    dec c
    ld c, $06
    nop
    dec c
    dec de
    ld bc, $0700
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $07c8
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0d32
    db $10
    ret nz

    nop
    ld bc, $07f0
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0d32
    db $10
    ret nz

    nop
    ld bc, $072c
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0d32
    db $10
    ret nz

    nop
    ld bc, $07f0
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0d32
    db $10
    ret nz

    nop
    ld bc, $0c18
    set 7, a
    ldh a, [$f0]
    nop
    nop
    ld [hl], b
    jr nz, jr_032_6aa9

jr_032_6aa9:
    nop
    ld d, b
    inc d
    jr nz, jr_032_6aae

jr_032_6aae:
    ld d, b
    inc d
    nop
    nop
    jr nc, jr_032_6ad4

    jr nz, jr_032_6ab6

Call_032_6ab6:
jr_032_6ab6:
    push af
    push bc
    push de
    push hl
    ld a, [$c4b3]
    and a
    jr z, jr_032_6aca

    ld a, [$c4b2]
    rrca
    and $07
    jr nz, jr_032_6aca

    rst $08
    sub b

jr_032_6aca:
    ld a, [$c4b3]
    add a
    add a
    ld hl, $6aa2
    add l
    ld l, a

jr_032_6ad4:
    jr nc, jr_032_6ad7

    inc h

jr_032_6ad7:
    ld a, [hl+]
    ld d, a
    ld a, [hl+]
    ld e, a
    ld b, [hl]
    ld a, [$c4b2]
    rrca
    and $07
    bit 5, b
    jr z, jr_032_6ae7

    cpl

jr_032_6ae7:
    add $00
    add d
    ld d, a
    ld a, [$c4b2]
    rrca
    and $07
    add $08
    add e
    ld e, a
    ld c, $7c
    call Call_000_26a4
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_6aff:
    ld hl, $c4ba
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    rst $18
    ld c, $0a
    ld a, [$c4bc]
    rst $18
    ld [$f50a], sp
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_6b17:
    ld hl, $c4ba
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    rst $18
    ld c, $0a
    ld a, [$c4bc]
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_032_6b2f:
    ld a, [$c4bc]
    sub $07
    ld h, $00
    ld l, a
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d10
    ret


Call_032_6b43:
    ld a, [$c4bc]
    sub $07
    ld h, $00
    ld l, a
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d2e
    ret


Call_032_6b57:
    ld a, [$c4bc]
    sub $07
    add a
    ld h, $00
    ld l, a
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d10
    ret


    ld a, [$c4bc]
    sub $07
    add a
    ld h, $00
    ld l, a
    add hl, de
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, l
    ld d, h
    call Call_000_2d2e
    ret


Call_032_6b81:
    ld a, [$c4bc]
    cp $07
    jr z, jr_032_6baa

    ld de, $004e
    call Call_032_6b57
    jr nz, jr_032_6baa

    ld de, $0088
    call Call_032_6b2f
    jr nz, jr_032_6ba1

    ld de, $0011
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6ba1:
    ld de, $0012
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6baa:
    ld de, $0050
    call Call_032_6b57
    jr z, jr_032_6bdd

    ld de, $0088
    call Call_032_6b2f
    jr z, jr_032_6bc3

    ld de, $0010
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6bc3:
    ld de, $0052
    call Call_032_6b57
    jr nz, jr_032_6bd4

    ld de, $000f
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6bd4:
    ld de, $0018
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6bdd:
    ld a, [$c4bc]
    cp $0a
    jr z, jr_032_6be9

    rst $30
    ld h, b
    ld de, $6720

jr_032_6be9:
    ld de, $0088
    call Call_032_6b2f
    jp z, Jump_032_6d0a

    ld de, $0080
    call Call_032_6b2f
    jr nz, jr_032_6c19

    ld de, $000a
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6c19

    ld de, $000b
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6c19:
    ld de, $000c
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6c38

    ld de, $000d
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6c38:
    ld de, $000e
    call Call_032_6aff
    call Call_032_6dcf
    ld de, $0090
    call Call_032_6b43
    ld de, $0080
    call Call_032_6b43
    jp Jump_032_6dce


    ld de, $0088
    call Call_032_6b2f
    jr z, jr_032_6cb1

    ld de, $0013
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6c77

    ld de, $000b
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6c77:
    ld de, $0015
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6c96

    ld de, $000d
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6c96:
    ld de, $0016
    call Call_032_6aff
    call Call_032_6dcf
    ld de, $0090
    call Call_032_6b43
    ld de, $0080
    call Call_032_6b43
    rst $28
    ret nz

    ld c, $c3
    adc $6d

jr_032_6cb1:
    ld de, $0014
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6cd0

    ld de, $0017
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6cd0:
    ld de, $0015
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6cef

    ld de, $000d
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6cef:
    ld de, $0009
    call Call_032_6aff
    call Call_032_6dcf
    ld de, $0090
    call Call_032_6b43
    ld de, $0080
    call Call_032_6b43
    rst $28
    ret nz

    ld c, $c3
    adc $6d

Jump_032_6d0a:
    ld de, $0084
    call Call_032_6b2f
    jr z, jr_032_6d75

    ld a, [$c4bc]
    cp $08
    jr z, jr_032_6d3f

    ld a, [$c4bc]
    cp $0a
    jr z, jr_032_6d3f

    ld de, $0005
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6d3f

    ld de, $0006
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6d3f:
    ld de, $0007
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6d5e

    ld de, $0008
    call Call_032_6aff
    jp Jump_032_6dce


jr_032_6d5e:
    ld de, $0009
    call Call_032_6aff
    call Call_032_6dcf
    ld de, $0090
    call Call_032_6b43
    ld de, $0080
    call Call_032_6b43
    jr jr_032_6dce

jr_032_6d75:
    ld de, $0080
    call Call_032_6b2f
    jr nz, jr_032_6d9b

    ld de, $0000
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6d9b

    ld de, $0001
    call Call_032_6aff
    jr jr_032_6dce

jr_032_6d9b:
    ld de, $0002
    call Call_032_6b17
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18
    inc c
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_032_6db9

    ld de, $0003
    call Call_032_6aff
    jr jr_032_6dce

jr_032_6db9:
    ld de, $0004
    call Call_032_6aff
    call Call_032_6dcf
    ld de, $0090
    call Call_032_6b43
    ld de, $0080
    call Call_032_6b43

Jump_032_6dce:
jr_032_6dce:
    ret


Call_032_6dcf:
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c290
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0010
    add hl, de
    ld a, [hl]
    cp $c0
    jp nz, Jump_032_6e6d

    ld a, [$c4bc]
    cp $08
    jr z, jr_032_6df5

    ld a, [$c4bc]
    cp $09
    jr z, jr_032_6e32

    jr jr_032_6e6d

jr_032_6df5:
    ld a, $08
    rst $18
    inc d
    ld a, [bc]
    ld de, $001a
    add hl, de
    ld [hl], $00
    ld a, $08
    ld bc, $0500
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $08
    rst $18
    ld e, $0a
    ld a, $08
    ld bc, $0500
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $08
    rst $18
    ld e, $0a
    ld a, $08
    ld bc, $0700
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $08
    rst $18
    ld e, $0a
    jr jr_032_6e6d

jr_032_6e32:
    ld a, $09
    rst $18
    inc d
    ld a, [bc]
    ld de, $001a
    add hl, de
    ld [hl], $00
    ld a, $09
    ld bc, $0f00
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $09
    rst $18
    ld e, $0a
    ld a, $09
    ld bc, $0f00
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $09
    rst $18
    ld e, $0a
    ld a, $09
    ld bc, $0d00
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $09
    rst $18
    ld e, $0a

Jump_032_6e6d:
jr_032_6e6d:
    rst $08
    sub h
    ld a, [$c4bc]
    rst $18
    inc d
    ld a, [bc]
    push hl
    ld hl, $c290
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    rst $18
    ld c, h
    inc b
    ld a, [$c4bc]
    ld [$c298], a
    ld a, [$c298]
    rst $18
    inc d
    ld a, [bc]
    ld c, l
    ld b, h
    ld hl, $c294
    ld a, c
    ld [hl+], a
    ld [hl], b
    ld a, [$c4bc]
    sub $07
    add $04
    ld [$c299], a
    ret


Call_032_6e9f:
    ld de, $004e
    call Call_032_6b57
    jr z, jr_032_6eb2

    ld de, $0050
    call Call_032_6b57
    jr nz, jr_032_6eb2

    ld a, $01
    ret


jr_032_6eb2:
    ld a, $00
    ret


    db $7a, $6f, $87, $6f, $c3, $6e, $e5, $6f, $82, $71, $c6, $71, $cf, $71, $0d, $7e
    db $00, $03, $00, $09, $00, $00, $00, $00, $01, $14, $0d, $7e, $00, $0b, $00, $05
    db $00, $00, $00, $c0, $01, $0e, $19, $7e, $00, $0d, $00, $0b, $00, $00, $00, $40
    db $01, $15, $19, $7e, $00, $1d, $00, $0d, $00, $00, $00, $c0, $01, $1d, $0d, $7e
    db $00, $01, $00, $1f, $9c, $00, $00, $c0, $01, $0f, $00, $00, $00, $00, $00, $00
    db $00, $00, $ff, $0d, $7e, $00, $0b, $00, $05, $00, $00, $00, $40, $01, $14, $0d
    db $7e, $00, $09, $00, $05, $00, $00, $00, $40, $01, $0e, $0d, $7e, $00, $0d, $00
    db $05, $00, $00, $00, $40, $01, $15, $00, $00, $00, $00, $00, $00, $00, $00, $ff
    db $0d, $7e, $00

    inc bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    ld bc, $0d14
    ld a, [hl]
    nop
    add hl, bc
    nop
    rlca
    nop
    nop
    nop
    ld b, b
    ld bc, $0d0e
    ld a, [hl]
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ret nz

    ld bc, $0d15
    ld a, [hl]
    nop
    dec bc
    nop
    add hl, bc
    nop
    nop
    nop
    add b
    ld bc, $0d1d
    ld a, [hl]
    nop
    ld bc, $1f00
    sbc h
    nop
    nop
    ret nz

    ld bc, $000f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

    db $01

    ret nz

    nop
    dec bc
    nop
    db $11

    db $02, $c0, $00, $0b, $00, $0b

    rst $38

    db $01, $ff

    nop
    nop
    nop
    nop
    inc bc
    inc bc

    db $02, $ff, $00, $00, $00, $00, $00, $02

    rst $38

Call_032_6f98:
    rst $30
    ld b, b
    ld de, $0428
    ld a, $03
    jr jr_032_6fb1

    rst $30
    jr nz, jr_032_6fb5

    jr z, jr_032_6faa

    ld a, $02
    jr jr_032_6fb1

jr_032_6faa:
    rst $30
    nop
    ld de, $0828
    ld a, $01

jr_032_6fb1:
    rst $18
    ld e, d
    dec b
    rst $18

jr_032_6fb5:
    db $10
    ld a, [bc]
    ret


    ld hl, $049f
    rst $18
    ld c, $0a
    call Call_032_6f98
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld hl, $04a8
    rst $18
    ld c, $0a
    call Call_032_6f98
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld hl, $04b1
    rst $18
    ld c, $0a
    call Call_032_6f98
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    sub b
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sub d
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    sub e
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    sub c
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    sub h
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sub [hl]
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    sub a
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    sub l
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    sbc b
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sbc d
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    sbc e
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    sbc c
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    sbc h
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sbc [hl]
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    cp b
    ld l, a
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    sbc l
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    and c
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    and e
    inc b
    ld bc, $0400
    rst $38
    nop
    nop
    and h
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    and d
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    and l
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    and a
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    rst $00
    ld l, a
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    and [hl]
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    xor d
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    xor h
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    xor l
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    xor e
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    xor [hl]
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    or b
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    sub $6f
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    xor a
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    or e
    inc b
    ld bc, $0300
    rst $38
    nop
    nop
    or l
    inc b
    ld bc, $0400
    rst $38
    nop
    nop
    or [hl]
    inc b
    ld bc, $0500
    rst $38
    nop
    nop
    or h
    inc b
    ld bc, $ff00
    ld [bc], a
    rst $38
    nop
    nop
    or a
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    cp c
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    cp d
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    cp b
    inc b
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    cp e
    inc b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    cp l
    inc b
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    cp [hl]
    inc b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    cp h
    inc b
    inc bc
    nop
    rst $38
    or d
    pop bc
    db $db
    or b
    nop
    ret


    call Call_000_0a61
    ld a, l
    and $03
    add $06
    ld l, a
    adc $08
    sub l
    ld h, a
    rst $18
    ld c, $0a
    ld a, $ff
    rst $18
    ld [$c90a], sp
    call Call_000_0a61
    ld a, l
    and $03
    add $0a
    ld l, a
    adc $08
    sub l
    ld h, a
    rst $18
    ld c, $0a
    ld a, $ff
    rst $18
    ld [$c90a], sp
    ld bc, $00ff
    nop
    ld l, h
    ld [hl], c
    ld bc, $0200
    rst $38
    nop
    nop
    ld d, [hl]
    ld [hl], c
    ld bc, $0300
    rst $38
    nop
    nop
    ld h, a
    ld a, [hl]
    rlca
    nop
    inc b
    rst $38
    sbc h
    nop
    ld h, [hl]
    ld a, c
    rlca
    nop
    dec b
    rst $38
    nop
    nop
    ld h, a
    ld a, [hl]
    rlca
    nop
    rrca
    rst $38
    nop
    nop
    ld c, $08
    rst $38
    nop
    rst $38
    ret


    rst $18
    nop
    ld a, [bc]
    ld hl, $0172
    rst $18
    ld c, $0a
    ld a, $00
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


    ld bc, $00ff
    nop
    or h
    ld [hl], c
    nop
    nop
    rst $38

    ld a, [$c46a]
    cp $02
    jp nz, Jump_032_7461

    ld hl, $0487
    rst $18

    db $0e, $0a

    ldh a, [$95]
    ld hl, $6f08
    rst $18

    db $06, $0a

    ld a, $02
    ld bc, $0010
    rst $18

    db $16, $0a

    ld a, $03
    ld bc, $0010
    rst $18

    db $16, $0a

    ld a, $04
    ld bc, $0010
    rst $18

    db $16, $0a

    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $28
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $07
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, $80
    rst $18

    db $2c, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $00
    rst $18

    db $2c, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $03
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $40
    ld de, $0200
    rst $18

    db $28, $0a

    ld a, $03
    rst $18

    db $1e, $0a

    ld a, $03
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $c0
    rst $18

    db $2c, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, a
    ld a, $07
    rst $18

    db $32, $0a

    ld a, $03
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $03
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $40
    rst $18

    db $2c, $0a

    ld a, $04
    ld b, $40
    ld de, $0200
    rst $18

    db $28, $0a

    ld a, $04
    rst $18

    db $1e, $0a

    ld a, $04
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $04
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $04
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, $40
    ld de, $0200
    rst $18

    db $28, $0a

    ld a, $02
    rst $18

    db $1e, $0a

    push af
    ld a, $1e
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, $00
    rst $18

    db $2c, $0a

    push af
    ld a, $1e
    rst $18

    db $04, $0a

    pop af
    ld a, $04
    ld b, $80
    rst $18

    db $2c, $0a

    push af
    ld a, $1e
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, $80
    rst $18

    db $2c, $0a

    push af
    ld a, $1e
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $00
    rst $18

    db $2c, $0a

    push af
    ld a, $1e
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $03
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, $00
    rst $18

    db $2c, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $04
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $04
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $03
    ld b, $40
    rst $18

    db $2c, $0a

    ld a, $04
    ld b, $40
    rst $18

    db $2c, $0a

    ld a, $02
    ld b, $40
    rst $18

    db $2c, $0a

    push af
    ld a, $14
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $07
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18

    db $32, $0a

    ld a, $02
    rst $18

    db $34, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    rst $18

    db $08, $0a

    push af
    ld a, $0a
    rst $18

    db $04, $0a

    pop af
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    push af
    ld a, $1e
    rst $18

    db $04, $0a

    pop af
    ld a, $02
    ld [$c441], a
    ret


Jump_032_7461:
    ld a, [$c46a]

jr_032_7464:
    cp $01
    jr z, jr_032_746e

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_032_746e:
    rst $30
    and b
    ld c, $28
    jr nz, jr_032_7464

    sub l
    ld hl, $6f35
    rst $18
    ld b, $0a
    ld hl, $712f
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    rst $30
    nop
    rrca
    jp nz, Jump_032_7532

    call Call_032_7533
    ld a, $01
    ld [$c441], a
    ret


    rst $30
    ldh [rIF], a
    jr z, jr_032_74ac

    ldh a, [$95]
    ld hl, $6f35
    rst $18
    ld b, $0a
    ld hl, $710e
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jp Jump_032_7532


jr_032_74ac:
    rst $30
    ld h, b
    ld de, $1328
    ldh a, [$95]
    ld hl, $6f35
    rst $18
    ld b, $0a
    ld hl, $70ed
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_7532

    rst $30
    ld h, b
    ld c, $28
    dec bc
    ld hl, $70cc
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_7532

    rst $30
    ld b, b
    ld de, $0b28
    ld hl, $70ab
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_7532

    rst $30
    ld b, b
    ld c, $28
    dec bc
    ld hl, $708a
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_7532

    rst $30
    jr nz, @+$13

    jr z, jr_032_7504

    ld hl, $7069
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_7532

jr_032_7504:
    rst $30
    jr nz, jr_032_7515

    jr z, jr_032_7514

    ld hl, $7048
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_7532

jr_032_7514:
    rst $30

jr_032_7515:
    nop
    ld de, $0b28
    ld hl, $7027
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_032_7532

    rst $30
    nop
    ld c, $28
    add hl, bc
    ld hl, $7006
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]

Jump_032_7532:
jr_032_7532:
    ret


Call_032_7533:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    rst $30
    and b
    ld c, $20
    ld bc, $dfc9
    nop
    ld a, [bc]
    ld a, $02
    ld bc, $0b00
    ld de, $0500
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $0900
    ld de, $0600
    rst $18
    jr nz, @+$0c

    ld a, $05
    ld bc, $0d00
    ld de, $0500
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $0f00
    ld de, $0600
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld bc, $0b00
    ld de, $0b00
    rst $18
    jr nz, @+$0c

    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $03
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $05
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $04bf
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    ld a, $05
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $04
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $05
    rst $18
    jr nc, jr_032_76b9

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a

jr_032_76b9:
    ld a, $05
    rst $18
    jr nc, jr_032_76c8

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld b, a

jr_032_76c8:
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $03
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    rst $18
    ld [$f50a], sp
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $04
    rst $18
    ld [$3e0a], sp
    inc b
    ld bc, $0d00
    ld de, $0700
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    rst $18
    ld e, $0a
    ld a, $03
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $04
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $00
    rst $18
    jr nc, @+$0c

    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    jr nc, jr_032_77da

    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a

jr_032_77da:
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld l, $0a
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$3e0a], sp
    inc b
    ld bc, $0f00
    ld de, $0600
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    dec b
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $05
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $03
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $04
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $04
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$e70a], sp
    nop
    rrca
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    rst $20
    add b
    inc de
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $63
    jr z, jr_032_79d7

    rst $18
    ld a, [hl-]
    ld [bc], a
    ld e, l
    ld d, h
    rst $18
    ld [hl+], a
    ld [bc], a
    ld a, $06
    ld bc, $1900
    ld de, $0300
    rst $18
    jr nz, jr_032_7996

    rst $08
    ld h, e
    ld a, $06
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]

jr_032_7996:
    ld a, $06
    rst $18
    ld b, d
    ld a, [bc]
    push af
    ld a, $10
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld hl, $0c5f
    rst $18
    ld c, $0a
    ld a, $86
    rst $18
    ld [$cd0a], sp
    rst $20
    ld a, [hl]
    ld a, $fa
    ld [$c441], a
    ld a, $fa
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call MemCopy
    ld a, [$c2a4]
    ld [$c465], a

jr_032_79d7:
    ret


Call_032_79d8:
    push af
    push bc
    push de
    push hl

jr_032_79dc:
    rst $08
    ld bc, $02df
    add hl, bc
    or a
    jr z, jr_032_79f1

    cp $01
    jp z, Jump_032_79ec

    jp Jump_032_79f8


Jump_032_79ec:
    call Call_032_7a0a
    jr jr_032_79dc

jr_032_79f1:
    ld a, $06
    rst $18
    nop
    ccf
    jr jr_032_79dc

Jump_032_79f8:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    call Call_000_2e3b
    pop af
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_7a0a:
    push af
    push bc
    push de
    push hl

Jump_032_7a0e:
    rst $18
    ld b, $09
    or a
    jr z, jr_032_7a21

    cp $01
    jp z, Jump_032_7b21

    cp $02
    jp z, Jump_032_7be3

    jp Jump_032_7c7b


jr_032_7a21:
    ld de, $d658
    push de
    rst $18
    ld d, b
    ld [bc], a
    pop hl
    cp $00
    jp z, Jump_032_7cad

    cp $03
    jp z, Jump_032_7cd2

    push af
    push bc
    push de
    push hl
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    push hl
    ld b, $01
    rst $18
    ld c, $06
    rst $18
    inc c
    ld b, $d1
    cp $ff
    jp z, Jump_032_7bd8

    ld h, a
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld [$d251], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld hl, $c800
    ld b, a
    ld c, a
    rst $18
    ld b, $02
    ld a, $01
    ld c, $00
    rst $18
    inc h
    ld b, c
    cp $00
    jp z, Jump_032_7c9d

    push af
    push bc
    push de
    push hl
    xor a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    rst $18
    ld [$e109], sp
    pop de
    pop bc
    pop af
    call Call_000_2e3b
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d251]
    ld h, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld b, h
    call Call_032_7d10
    cp $ff
    jr z, jr_032_7afb

    ld c, a
    ld a, b
    push bc
    ld hl, $c800
    ld b, a
    ld c, a
    rst $18
    ld b, $02
    pop bc
    ld a, c
    ld [$c2a5], a
    call Call_000_2cde
    ld hl, $c800
    ld a, l
    add $0b
    ld l, a
    ld a, h
    adc $00
    ld h, a
    push hl
    call Call_000_0a61
    ld a, h
    pop hl
    ld [hl], a
    inc hl
    push hl
    call Call_000_0a61
    ld a, h
    pop hl
    ld [hl], a
    inc hl
    push hl
    call Call_000_0a61
    ld a, h
    pop hl
    ld [hl], a
    inc hl
    push hl
    call Call_000_0a61
    ld a, h
    pop hl
    ld [hl], a
    inc hl
    push hl
    call Call_000_0a61
    ld a, h
    pop hl
    ld [hl], a
    inc hl
    rst $18
    inc [hl]
    ld [bc], a

jr_032_7afb:
    ld d, $02
    ld e, $01
    ld b, $10
    ld c, $05
    rst $18
    inc b
    dec b
    call Call_032_7de5
    push af
    ld b, a
    ld hl, $14a5
    call Call_032_7dfb
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_032_7cfb
    pop af
    rst $18
    inc c
    dec b
    jp Jump_032_7c9d


Jump_032_7b21:
    ld de, $d658
    push de
    rst $18
    ld d, b
    ld [bc], a
    pop hl
    cp $00
    jp z, Jump_032_7cad

    push af
    push bc
    push de
    push hl
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    push hl
    ld b, $01
    rst $18
    ld c, $06
    rst $18
    inc c
    ld b, $d1
    cp $ff
    jp z, Jump_032_7bd8

    ld h, a
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld [$d251], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, h
    ld hl, $c800
    ld b, a
    ld c, a
    rst $18
    ld b, $02
    ld a, $02
    ld c, $01
    rst $18
    inc h
    ld b, c
    cp $00
    jp z, Jump_032_7c9d

    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d251]
    ld h, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld b, h
    rst $18
    inc c
    ld [bc], a
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_000_2e3b
    push af
    push bc
    push de
    push hl
    xor a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    rst $18
    ld [$e109], sp
    pop de
    pop bc
    pop af
    call Call_000_2e3b
    ld d, $02
    ld e, $01
    ld b, $10
    ld c, $05
    rst $18
    inc b
    dec b
    call Call_032_7de5
    push af
    ld b, a
    ld hl, $14a3
    call Call_032_7dfb
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_032_7cfb
    pop af
    rst $18
    inc c
    dec b
    jp Jump_032_7c9d


Jump_032_7bd8:
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    jp Jump_032_7c9d


Jump_032_7be3:
    push af
    push bc
    push de
    push hl
    xor a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    rst $18
    ld [$e109], sp
    pop de
    pop bc
    pop af
    ld d, $02
    ld e, $01
    ld b, $10
    ld c, $05
    rst $18
    inc b
    dec b
    call Call_032_7de5
    push af
    ld b, a
    ld hl, $1497
    call Call_032_7dfb
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    ld d, $02
    ld e, $0a
    ld hl, $001a
    rst $18
    ld a, [bc]
    dec b
    ld a, $01
    ld [$c3f9], a
    rst $18
    ld l, [hl]
    dec b
    rst $18
    ld [hl], b
    dec b
    rst $18
    ld c, [hl]
    dec b
    cp $00
    jr nz, jr_032_7c8d

    call Call_032_7de5
    rst $18
    ld [hl], d
    dec b
    pop af
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    push af
    push bc
    push de
    push hl
    rst $18
    ld c, [hl]
    ld [bc], a
    rst $18
    ld [bc], a
    ld [bc], a
    rst $18
    ld l, d
    ld [bc], a
    xor a
    ld [$cabb], a
    pop hl
    pop de
    pop bc
    pop af
    ld d, $02
    ld e, $01
    ld b, $10
    ld c, $05
    rst $18
    inc b
    dec b
    call Call_032_7de5
    push af
    ld b, a
    ld hl, $14a2
    call Call_032_7dfb
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_032_7cfb
    pop af
    rst $18
    inc c
    dec b

Jump_032_7c7b:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    call Call_000_2e3b
    pop af
    pop hl
    pop de
    pop bc
    pop af
    ret


jr_032_7c8d:
    call Call_032_7de5
    rst $18
    inc c
    dec b
    pop af
    rst $18
    inc c
    dec b
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b

Jump_032_7c9d:
jr_032_7c9d:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    call Call_000_2e3b
    pop af
    jp Jump_032_7a0e


Jump_032_7cad:
    ld d, $02
    ld e, $0b
    ld b, $10
    ld c, $05
    rst $18
    inc b
    dec b
    call Call_032_7de5
    push af
    ld b, a
    ld hl, $14a6
    call Call_032_7dfb
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_032_7cfb
    pop af
    rst $18
    inc c
    dec b
    jr jr_032_7c9d

Jump_032_7cd2:
    ld d, $02
    ld e, $0b
    ld b, $10
    ld c, $05
    rst $18
    inc b
    dec b
    call Call_032_7de5
    push af
    ld b, a
    ld hl, $14a7
    call Call_032_7dfb
    rst $18
    inc e
    dec b
    rst $18
    inc d
    dec b
    call Call_000_2e3b
    call Call_032_7cfb
    pop af
    rst $18
    inc c
    dec b
    jp Jump_032_7c9d


Call_032_7cfb:
    push af
    push bc
    push de
    push hl

jr_032_7cff:
    call Call_000_2e3b
    ldh a, [$94]
    cp $00
    jr z, jr_032_7cff

    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_032_7d10:
    push bc
    push de
    push hl
    xor a
    ld d, a

jr_032_7d15:
    ld a, d
    cp $03
    jr z, jr_032_7d2f

    ld hl, $c800
    ld b, a
    ld c, a
    push de
    rst $18
    ld b, $02
    pop de
    or a
    jr z, jr_032_7d2a

    ld a, d
    jr jr_032_7d31

jr_032_7d2a:
    ld a, d
    inc a
    ld d, a
    jr jr_032_7d15

jr_032_7d2f:
    ld a, $ff

jr_032_7d31:
    pop hl
    pop de
    pop bc
    ret


Call_032_7d35:
    push bc
    push de
    push hl
    xor a
    rst $18
    nop
    ld c, b

Jump_032_7d3c:
    rst $18
    ld [bc], a
    ld c, b
    xor a
    call Call_032_7d82
    cp $ff
    jp z, Jump_032_7d61

    cp $00
    jp z, Jump_032_7d65

    rst $18
    inc b
    ld c, b
    ld a, $01
    call Call_032_7d82
    cp $ff
    jr z, jr_032_7d69

    cp $00
    jp z, Jump_032_7d6c

    jp Jump_032_7d3c


Jump_032_7d61:
    ld a, $ff
    jr jr_032_7d6e

Jump_032_7d65:
    ld a, $00
    jr jr_032_7d6e

jr_032_7d69:
    jp Jump_032_7d3c


Jump_032_7d6c:
    ld a, $01

jr_032_7d6e:
    push af
    ld c, $10
    call Call_000_25a1
    call Call_000_2625
    rst $18
    ld e, $41
    rst $18
    ld a, [bc]
    ld bc, $e1f1
    pop de
    pop bc
    ret


Call_032_7d82:
    push bc
    push de
    push hl
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [$d251], a
    xor a
    ld [$d253], a

jr_032_7d94:
    call Call_000_2e3b
    ldh a, [$94]
    or a
    jr z, jr_032_7d94

    push af
    push bc
    push de
    push hl
    xor a
    ld [$d253], a
    pop hl
    pop de
    pop bc
    pop af
    bit 0, a
    jr nz, jr_032_7dcd

    bit 1, a
    jr nz, jr_032_7dda

    bit 6, a
    jr nz, jr_032_7dba

    bit 7, a
    jr nz, jr_032_7dba

    jr jr_032_7d94

jr_032_7dba:
    rst $08
    ld e, e
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d251]
    inc a
    and $01
    ld [$d251], a
    jr jr_032_7d94

jr_032_7dcd:
    rst $08
    ld e, h
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d251]
    jr jr_032_7dde

jr_032_7dda:
    rst $08
    ld e, l
    ld a, $ff

jr_032_7dde:
    call Call_000_2e3b
    pop hl
    pop de
    pop bc
    ret


Call_032_7de5:
    push bc
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d820]
    ld b, a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, b
    pop bc
    ret


Call_032_7dfb:
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld [de], a
    dec b
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    db $00

    dec c
    dec de
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $0c01
    db $fc
    rst $38

    db $13, $09, $02

    ld bc, $0c28
    ei
    rst $38
    inc bc
    nop
    dec d
    nop
    dec d
    ld bc, $0414
    nop
    rla
    nop
    dec d
    ld [bc], a
    ld bc, $0614
    nop
    nop
    nop
    cp $02
    ld bc, $0714
    add b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0814
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0d14
    ld a, [bc]
    nop
    add hl, de
    dec c
    ld [de], a
    ld bc, $0200
    ld bc, $0e14
    inc c
    nop
    cp $0d
    ld [de], a
    ld bc, $0200
    ld bc, $1014
    inc bc
    ld bc, $1078
    ld bc, $1401
    inc c
    cp h
    rst $38
    ret


    db $10
    inc bc
    ld bc, $10a0
    ld [bc], a
    ld bc, $0c04
    rst $30
    rst $38
    ld bc, $1028
    inc bc
    ld bc, $0c78
    ld sp, hl
    rst $38
    ld bc, $1050
    inc bc
    ld bc, $0c78
    ld sp, hl
    rst $38
    ld bc, $108c
    inc bc
    ld bc, $0c78
    ld sp, hl
    rst $38

Call_032_7e8e:
    push de
    ld hl, $c880
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_032_7e9f

    ld a, $40
    add e
    ld e, a

jr_032_7e9f:
    add hl, de
    pop de
    ret


    push bc
    push de
    push hl
    push hl
    rst $18
    inc b
    db $10
    ld d, h
    ld e, l
    pop hl
    call Call_000_08ac
    bit 7, h
    ld a, $01
    jr nz, jr_032_7eb6

    xor a

jr_032_7eb6:
    pop hl
    pop de
    pop bc
    ret


    push af
    push bc
    ld hl, $c290
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, l
    ldh [$e0], a
    ld a, h
    ldh [$e1], a
    ld a, $04
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $06
    ld l, a
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $ffe0
    ld a, [hl+]
    ld h, [hl]
    add $04
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop bc
    pop af
    ret


Call_032_7ee7:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18
    nop
    ld b, c
    ret


    rst $30
    ld h, b
    inc c
    jr z, jr_032_7f05

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_032_7f05:
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, @+$23

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_032_7ee7
    ret


    ld a, [$c810]
    cp $00
    jr z, jr_032_7f2d

    rst $30
    add b
    ld de, $6828

jr_032_7f2d:
    ld a, [$c810]
    cp $01
    jr z, jr_032_7f39

    rst $30
    and b
    ld de, $5c28

jr_032_7f39:
    ld a, [$c810]
    cp $02
    jr z, jr_032_7f45

    rst $30
    ret nz

    ld de, $5028

jr_032_7f45:
    ld a, [$c810]
    cp $03
    jr z, jr_032_7f51

    rst $30
    ldh [rNR11], a
    jr z, jr_032_7f95

jr_032_7f51:
    ld de, $012c
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, jr_032_7f80

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_032_7ee7
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $fa
    ld [$c441], a
    ld a, $fa

jr_032_7f80:
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call MemCopy
    ld a, [$c2a4]
    ld [$c465], a

jr_032_7f95:
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
