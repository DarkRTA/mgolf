INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    db $d6, $43

    ld [hl], c
    ld a, b
    add a
    ld a, b
    or h
    ld a, b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    db $10
    jr jr_00e_4017

    nop
    db $10
    jr nz, jr_00e_401d

jr_00e_4017:
    nop
    db $10
    jr z, jr_00e_4023

    nop
    add b

jr_00e_401d:
    db $10
    ld [$0000], sp
    db $10
    db $10

jr_00e_4023:
    ld [bc], a
    nop
    db $10
    jr jr_00e_402c

    nop
    db $10
    jr nz, jr_00e_4032

jr_00e_402c:
    nop
    db $10
    jr z, @+$0a

    nop
    db $10

jr_00e_4032:
    jr nc, @+$0c

    nop
    add b

    db $10, $08, $00, $00, $10, $10, $02, $00, $10, $18, $04, $00, $10, $20, $06, $00
    db $10, $28, $08, $00, $80

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    sbc c
    and $bf
    reti


    rst $38
    and e
    rst $38
    or d
    cp a
    jp c, $baff

    ei
    or l
    or c
    adc $00
    ld a, a
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    sub e
    ld l, h
    rst $38
    sub e
    rst $38
    cp d
    rst $38
    dec hl
    ld a, a
    xor e
    rst $38
    ld a, [hl-]
    rst $38
    sub d
    sub d
    ld l, l
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or e
    ld c, h
    rst $38
    or e
    rst $38
    or a
    rst $38
    and h
    cp $35
    rst $38
    and h
    rst $38
    or e
    or a
    ld c, b
    nop
    rst $38
    rst $38
    nop

jr_00e_40ac:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $fffe
    scf
    ret z

    rst $38
    scf
    rst $38
    ld [hl], l
    rst $38
    ld d, a
    rst $38
    db $76
    rst $38
    ld d, l
    rst $38
    ld d, l
    ld d, l
    xor d
    nop
    rst $38

jr_00e_40ca:
    cp $01
    nop
    ld bc, $0000
    nop
    nop
    add b
    add b
    nop
    ret nz

    nop
    ldh [$60], a
    sub b
    ldh a, [rBCPS]
    ld hl, sp+$74
    ld hl, sp+$56
    ld sp, hl
    ld d, [hl]
    ei
    ld [hl], h
    or $68
    ld l, h
    sub b
    jr jr_00e_40ca

    jr nc, jr_00e_40ac

    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$190f], sp
    ld d, $3f
    add hl, hl
    ld e, a
    ld l, c
    sbc a
    jp hl


    sbc a
    jp hl


    rra
    ld l, l
    rra
    dec l
    dec c
    ld [de], a
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    sbc e
    ld h, h
    rst $38
    sbc e
    rst $38
    cp e
    rst $38
    ld a, [hl+]
    rst $38
    cp d
    rst $38
    dec sp
    rst $38
    xor e
    xor e
    ld d, h
    nop
    rst $38
    rst $38
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    scf
    ret z

    rst $38
    scf
    rst $38
    or l
    rst $38
    and a
    rst $38

Jump_00e_4141:
    or [hl]
    rst $38
    and l
    rst $38
    dec [hl]
    dec [hl]
    jp z, $ff00

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld [hl], d
    adc l
    rst $38
    ld [hl], d
    rst $38
    ld d, a
    rst $38
    ld [hl], l
    rst $38
    ld h, l
    rst $38
    ld d, a
    rst $38
    ld [hl], d
    ld [hl], d
    adc l
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    scf
    ret z

    ld a, a
    or a
    rst $38
    ld [hl], l
    rst $38
    ld d, a
    rst $38
    db $76
    rst $38
    ld d, l
    rst $38
    ld d, l
    ld d, l
    xor d
    nop
    rst $38

jr_00e_418a:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld h, b
    sub b
    ld hl, sp+$60
    ld hl, sp+$70
    ld hl, sp+$50
    ld hl, sp+$50
    ld hl, sp+$70
    ld hl, sp+$60
    ld l, b
    sub b
    jr jr_00e_418a

    ldh a, [rP1]
    nop
    nop
    nop

Jump_00e_41af:
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$140f], sp
    dec de
    cpl
    inc [hl]
    ld c, a
    ld [hl], h
    adc a
    db $f4
    adc a
    db $f4
    rrca
    ld [hl], l
    rlca
    dec sp
    inc bc
    inc e
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    adc $31
    rst $38
    adc $fe
    reti


    cp $d9
    rst $38
    adc $ff
    add [hl]
    cp $3d
    inc a
    jp $ff00


    rst $38
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    add hl, sp
    add $7f
    cp c
    ld a, a
    xor e
    ld a, a
    cp d
    ld a, a
    or d
    ld a, a
    xor e
    rst $38
    add hl, sp
    add hl, sp
    add $00
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    dec de
    db $e4
    cp a
    ld e, e
    rst $38
    cp d
    rst $38
    xor e
    rst $38
    cp e
    rst $38
    xor d
    rst $38
    ld a, [hl+]
    ld a, [hl+]
    push de
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    or b
    ld c, [hl]
    ld sp, hl
    or [hl]
    db $fd
    cp d
    db $fd
    xor d
    db $fd
    ld a, [hl+]
    db $fd

jr_00e_4243:
    cp d
    ld sp, hl
    or [hl]
    or c
    ld c, [hl]
    inc bc
    db $fc
    cp $00
    nop
    nop
    nop
    nop
    nop
    jr jr_00e_426b

    inc h
    inc a
    ld b, d
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    jr jr_00e_4243

    jr jr_00e_4282

    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_426b:
    nop
    nop
    nop
    nop
    nop
    nop
    inc a
    jr @+$3e

    jr @+$01

    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    inc a
    ld a, [hl]
    jr @+$3e

    nop
    jr jr_00e_4281

jr_00e_4281:
    nop

jr_00e_4282:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, @+$1e

    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    ld c, d
    ld l, h
    ld [de], a
    jr c, @+$48

    nop
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $ff, $7f, $1f, $12, $00, $00, $80, $7d, $80, $7d, $00, $00, $82, $02, $ff, $27
    db $1f, $12, $ff, $7f, $00, $00, $80, $7d, $1f, $12, $ff, $7f, $00, $00, $1f, $00
    db $c0, $03, $60, $fd, $00, $7f, $00, $00, $1f, $04, $60, $82, $e0, $2b, $00, $00
    db $e0, $03, $9f, $00, $ff, $7f, $e0, $7c, $eb, $0a, $ff, $03, $fd, $00, $ff, $7f

Call_00e_42f0:
    ld a, $00
    ldh [rVBK], a
    ld hl, $4050
    ld de, $8000
    ld c, $20
    call Call_000_2096
    ld hl, $4250
    ld de, $8200
    ld c, $04
    call Call_000_2096
    ld hl, $4290
    ld de, $8300
    ld c, $02
    call Call_000_2096
    ld hl, $42b0
    ld de, $0808
    call Call_000_05a8
    ld hl, $c878
    ld a, [hl+]
    cp $01
    jr z, jr_00e_4346

    ld a, [wPlayer1_Char_AltColor]
    ld c, a
    ld a, [wPlayer1_Char_Sprite]
    ld b, $0a
    ld de, $8400
    rst $18

    db $40, $12

    ld a, [$c8d9]
    ld c, a
    ld a, [$c8d0]
    ld b, $0b
    ld de, $8440
    rst $18

    db $40, $12

    jr jr_00e_4372

jr_00e_4346:
    ld c, $00
    ld a, [hl+]
    ld b, $0a
    ld de, $8400
    rst $18
    ld b, b
    ld [de], a
    ld c, $00
    ld a, [hl+]
    ld b, $0b
    ld de, $8440
    rst $18
    ld b, b
    ld [de], a
    ld c, $00
    ld a, [hl+]
    ld b, $0c
    ld de, $8480
    rst $18
    ld b, b
    ld [de], a
    ld c, $00
    ld a, [hl+]
    ld b, $0d
    ld de, $84c0
    rst $18
    ld b, b
    ld [de], a

jr_00e_4372:
    ret


Call_00e_4373:
    call Call_000_23b6
    call Call_000_2e3b
    ld a, [$c837]
    ld b, a
    and a
    jr z, jr_00e_4387

    ld a, [$c4bd]
    and a
    jr nz, jr_00e_4387

    dec b

jr_00e_4387:
    ld a, b
    ld [$c4be], a
    ld a, [$c4be]
    cp $0a
    jr nc, jr_00e_439b

    ld [$c480], a
    xor a
    ld [$c481], a
    jr jr_00e_43a5

jr_00e_439b:
    sub $09
    ld [$c481], a
    ld a, $09
    ld [$c480], a

jr_00e_43a5:
    xor a
    ldh [$b9], a
    ldh [$b8], a
    ld a, $90
    ldh [rWY], a
    xor a
    ldh [$8b], a
    ldh [$8a], a
    xor a
    ld [$c320], a
    ld [$c321], a
    ld [$c322], a
    ld [$c323], a
    xor a
    ld [$c329], a
    ld [$c32a], a
    ld a, $3f
    ld [$c32b], a
    ld [$c32c], a
    call Call_000_2683
    xor a
    ldh [$bc], a
    ret


    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld c, $00
    ld a, [$c834]
    cp $01
    jr z, jr_00e_43fa

    ld c, $01
    ld a, [$c834]
    cp $02
    jr z, jr_00e_43fa

    ld c, $02
    ld a, [$c8d0]
    cp $ff
    jr z, jr_00e_43fa

    ld c, $03

jr_00e_43fa:
    ld b, $00

jr_00e_43fc:
    ld a, c
    add a
    add b
    add a
    add $22
    ld l, a
    adc $44
    sub l
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push bc
    call Call_000_0699
    pop bc
    and a
    jr z, jr_00e_4418

    ld a, b
    xor $01
    ld b, a
    jr jr_00e_43fc

jr_00e_4418:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


    add hl, bc
    ld d, d
    ld a, d
    ld l, h

    db $32, $44, $2f, $76

    ld a, d
    ld l, h
    ld a, d
    ld l, h
    ld [hl], $44
    sbc c
    ld [hl], c

    rst $18

    db $00, $3e

    ret


    rst $18
    ld [bc], a
    ld a, $c9

Call_00e_443a:
    ldh a, [$90]
    bit 6, a
    jr z, jr_00e_4456

    ld hl, $c322
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $ff80
    add hl, de
    bit 7, h
    jr nz, jr_00e_4456

    ld a, l
    ld [$c322], a
    ld a, h
    ld [$c323], a

jr_00e_4456:
    ldh a, [$90]
    bit 7, a
    jr z, jr_00e_4478

    ld hl, $c322
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0080
    add hl, de
    ld a, [$c32c]
    sub $12
    ld e, a
    ld a, h
    cp e
    jr nc, jr_00e_4478

    ld a, l
    ld [$c322], a
    ld a, h
    ld [$c323], a

jr_00e_4478:
    rst $18

    db $3c, $04

    ret


Call_00e_447c:
    push af
    push af
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    pop af
    ld [de], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld [de], a
    inc de
    pop af
    ret


Call_00e_4492:
    push af
    push hl

jr_00e_4494:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [hl+]
    and a
    jr z, jr_00e_44ab

    ld [de], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld [de], a
    inc de
    jr jr_00e_4494

jr_00e_44ab:
    pop hl
    pop af
    ret


    dec hl
    dec hl
    ld a, [hl+]
    inc hl
    cp $a0
    jr nc, jr_00e_44b8

    add $20

jr_00e_44b8:
    add $30
    dec de
    ld [de], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $08
    ld [de], a
    inc de
    jr jr_00e_4494

    dec hl
    dec hl
    ld a, [hl+]
    inc hl
    cp $a0
    jr nc, jr_00e_44d2

    add $20

jr_00e_44d2:
    add $2b
    dec de
    ld [de], a
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $08
    ld [de], a
    inc de
    jr jr_00e_4494

    push af
    push hl
    ld a, $06
    add e
    ld e, a
    jr nc, jr_00e_44eb

    inc d

jr_00e_44eb:
    ld a, [hl+]
    and a
    jr z, jr_00e_44f2

    dec de
    jr jr_00e_44eb

jr_00e_44f2:
    pop hl
    pop af
    call Call_00e_4492
    ret


Call_00e_44f8:
    push bc
    push hl
    ld c, l
    ld b, h

Call_00e_44fc:
    add sp, -$20
    ld hl, sp+$00
    push hl
    push de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    rst $18

    db $5c, $05

    pop de
    pop hl
    call Call_00e_4492
    add sp, $20
    pop hl
    pop bc
    ret


Call_00e_4513:
    push af
    push bc
    push hl
    ld c, l
    ld b, h
    add sp, -$0a
    ld hl, sp+$00
    push de
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld c, e
    ld b, d
    call Call_000_21f0
    ld l, c
    ld h, b
    pop de
    call Call_00e_4492
    add sp, $0a
    pop hl
    pop bc
    pop af
    ret


Call_00e_4532:
    push af
    push hl
    and $1f
    add a
    ld hl, $454a
    add l
    ld l, a
    jr nc, jr_00e_453f

    inc h

jr_00e_453f:
    ld a, [hl+]
    call Call_00e_447c
    ld a, [hl+]
    call Call_00e_447c
    pop hl
    pop af
    ret


    jr nz, jr_00e_457c

    jr nz, jr_00e_457f

    jr nz, jr_00e_4582

    db $20, $33, $20, $34, $20, $35

    jr nz, @+$38

    jr nz, jr_00e_4591

    jr nz, jr_00e_4594

    jr nz, jr_00e_4597

    ld sp, $3130
    ld sp, $3231
    ld sp, $3133
    inc [hl]
    ld sp, $3135
    ld [hl], $31
    scf
    ld sp, $3138
    add hl, sp
    ld [hl-], a
    jr nc, @+$34

    ld sp, $3232
    ld [hl-], a
    inc sp
    ld [hl-], a
    inc [hl]

jr_00e_457c:
    ld [hl-], a
    dec [hl]
    ld [hl-], a

jr_00e_457f:
    ld [hl], $32
    scf

jr_00e_4582:
    ld [hl-], a
    jr c, @+$34

    add hl, sp
    inc sp
    jr nc, jr_00e_45bc

    ld sp, $c5f5
    push hl
    add sp, -$0a
    ld hl, sp+$00

jr_00e_4591:
    push de
    push hl
    ld e, l

jr_00e_4594:
    ld d, h
    add $36

jr_00e_4597:
    ld h, $00
    ld l, a
    ld bc, $ffca
    add hl, bc
    ld c, l
    ld b, h
    ld a, $03
    call Call_000_21f0
    pop hl
    bit 7, b
    jr nz, jr_00e_45c3

    ld a, b
    or c
    jr z, jr_00e_45bf

    cp $64
    jr nc, jr_00e_45c3

    push hl

jr_00e_45b3:
    ld a, [hl+]
    cp $20
    jr z, jr_00e_45b3

    dec hl
    dec hl
    ld [hl], $2b

jr_00e_45bc:
    pop hl
    jr jr_00e_45c3

jr_00e_45bf:
    inc hl
    ld [hl], $2e
    dec hl

jr_00e_45c3:
    pop de
    call Call_00e_4492
    add sp, $0a
    pop hl
    pop bc
    pop af
    ret


    push af
    push bc
    push hl

jr_00e_45d0:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld [hl], $20
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ld [hl+], a
    dec b
    jr nz, jr_00e_45d0

    pop hl
    pop bc
    pop af
    ret


Call_00e_45e8:
    push af
    push bc
    push de
    push hl
    ld e, l
    ld d, h
    and a
    jr z, jr_00e_4623

    bit 7, a
    jr z, jr_00e_4616

    cp $ff
    jr z, jr_00e_4623

    push af
    ld hl, $4633
    ld a, [$c836]
    add a
    add l
    ld l, a
    jr nc, jr_00e_4606

    inc h

jr_00e_4606:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    and $7f
    add l
    ld l, a
    jr nc, jr_00e_4611

    inc h

jr_00e_4611:
    rst $18
    ld e, h
    dec b
    jr jr_00e_462e

jr_00e_4616:
    ld hl, $0053
    add l
    ld l, a
    jr nc, jr_00e_461e

    inc h

jr_00e_461e:
    rst $18
    ld e, h
    dec b
    jr jr_00e_462e

jr_00e_4623:
    push bc
    ld hl, $c800
    ld bc, $000b
    call MemCopy
    pop bc

jr_00e_462e:
    pop hl
    pop de
    pop bc
    pop af
    ret


    add [hl]
    nop
    add [hl]
    nop
    and c
    nop
    cp h
    nop
    rst $10
    nop
    ld a, [c]
    nop
    add [hl]
    nop
    add [hl]
    nop

Call_00e_4643:
    push bc
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld h, e
    ld l, $00
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    inc a
    inc a
    cp $14
    jp nc, Jump_00e_467a

    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    ld a, d
    add a
    add a
    add a
    ld d, a
    ldh a, [$8c]
    and $3f
    ld hl, $467d
    add l
    ld l, a
    jr nc, jr_00e_4671

    inc h

jr_00e_4671:
    ld a, [hl]
    add d
    ld d, a
    pop hl
    pop bc
    call Call_000_26ea
    ret


Jump_00e_467a:
    pop hl
    pop bc
    ret


    nop
    nop
    nop

    db $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $02, $02, $02, $01, $01, $01, $00, $00

    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp $ff
    rst $38
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    rst $38

Call_00e_46cd:
jr_00e_46cd:
    push bc
    call Call_00e_46eb
    call Call_00e_46eb
    call Call_00e_46eb
    call Call_00e_46eb
    call Call_00e_46eb
    call Call_00e_46eb
    call Call_00e_46eb
    call Call_00e_46eb
    pop bc
    dec c
    jr nz, jr_00e_46cd

    ret


Call_00e_46eb:
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    inc de
    push de
    ld a, b
    ld d, a
    cpl
    ld e, a
    ld a, d
    and b
    ld b, a
    ld a, d
    and c
    ld c, a
    ld a, [hl]
    and e
    or c
    ld [hl+], a
    ld a, [hl]
    and e
    or b
    ld [hl+], a
    pop de
    ret


    nop
    nop
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
    ld a, a
    nop
    ret nz

    nop
    add b
    rst $38
    inc c
    sbc [hl]
    ld a, [de]
    or e

jr_00e_471e:
    dec sp
    and a
    dec [hl]
    and a
    ld a, [$e0f0]
    rst $38
    db $ec
    ldh [rP1], a
    ld [hl], c
    ei
    xor e
    adc [hl]
    rst $28
    ld c, l
    inc e
    ei
    jr c, @-$0e

    push hl
    inc e
    cp [hl]
    cp d
    rst $18
    db $e3
    ld e, l
    ld b, c
    ld l, l
    ld c, c
    ldh [$e5], a
    ld [hl], a
    rst $38
    cp a
    xor d
    adc b
    ld c, a
    jr @-$07

    ld [hl-], a
    ret nc

    push hl
    ld c, $7f
    sbc a
    sub l
    pop af
    ld l, [hl]
    ld h, b
    db $76
    ld h, h
    ret nz

    push hl
    rst $38
    jr nc, jr_00e_47d1

    ld c, c
    rst $08
    or [hl]
    add [hl]
    push de
    add h
    cp $b0
    push hl
    adc [hl]
    rst $18
    push de
    ld [hl], c
    xor [hl]
    jr nz, jr_00e_471e

    db $fd
    inc h
    sub b
    ldh [$fe], a
    ld bc, $0102
    nop
    add hl, sp
    ld a, a
    ld a, h
    ld [hl], l
    add $bb
    add d
    db $db
    sub d
    sub h
    pop hl
    xor [hl]
    db $fc
    jp hl


    ldh a, [rIF]
    pop af
    cp $e0
    di
    ld a, [$03e0]
    cp [hl]
    or $e0
    ldh a, [rIF]
    sbc a
    ldh a, [$bf]
    cp $e0
    rst $38
    ld a, [$e0fa]
    ldh a, [$f6]
    ld [c], a
    rrca
    nop
    cp $f1
    cp $f7
    pop af
    db $fc
    di
    db $fc
    db $e3
    rst $38
    ldh a, [$60]
    sub b
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    rrca
    rst $38
    db $fc
    db $e3
    ld c, a
    scf
    cp a
    rst $38
    ldh a, [$e0]
    db $eb
    ld l, a
    sbc a
    ldh [$ed], a
    cp $e1
    ei
    db $fc
    di
    db $fc
    db $e3
    rst $38
    ldh a, [$35]
    and l
    dec [hl]
    rst $38
    rst $28
    ld e, [hl]
    adc $7b
    jp nz, $c642

    ccf

jr_00e_47d1:
    rst $38
    rst $38
    nop
    ret nz

    ld a, a
    nop
    rst $18
    ld a, [de]
    sub a
    rst $38
    jr nc, @+$01

    ld [hl], b
    db $db
    ld [de], a
    ld [de], a
    ld [hl], $ed
    cp $f8
    ret nz

    rst $38
    nop
    ld a, l
    ld e, c
    ld a, l
    ld e, e
    ld a, d
    cp a
    ld d, d
    ld a, e
    ld b, [hl]
    ld b, [hl]
    adc $b9
    ldh a, [$e2]
    rst $18

jr_00e_47f7:
    rst $28
    db $10
    sbc [hl]
    jr nc, jr_00e_47f7

    ldh [$e8], a
    ld e, l
    pop bc
    ei
    rst $38
    jp $c96d


    ld a, l
    ld b, e
    ld b, d
    rst $00
    cp h
    db $fd
    cp $c5
    pop bc
    ld [hl], a
    dec l
    ei
    jr z, @+$01

    ld [$6ddf], sp
    add hl, de
    sbc c
    sbc e
    ld h, [hl]
    ret nz

    ld [c], a
    cp [hl]
    ld hl, $bdff
    ld hl, $21b6
    or [hl]
    inc h
    inc h
    ld l, l
    db $fd
    db $db
    or b
    ld [c], a
    ei
    or d
    ei
    or [hl]
    push af
    and [hl]
    rst $38
    push af
    adc h
    adc c
    sbc h
    ld [hl], c
    ld hl, sp+$03
    nop
    ldh a, [$cd]
    ldh [rP1], a
    ldh a, [rTMA]
    pop hl
    ld a, [$03c1]
    rrca
    rst $30
    rrca
    adc d
    ld d, b
    pop hl
    or b
    cp $c4
    or b
    ld b, h
    ld [c], a
    ld [bc], a
    db $e3
    ld a, [$0cc1]
    db $e3
    inc bc
    ld hl, sp-$21
    ldh [$08], a
    db $e3
    cp $c1
    ld b, b
    or b
    rrca
    add c
    rst $38
    nop
    db $e3
    sbc $c5

jr_00e_4867:
    ldh [$eb], a
    ret c

    pop bc
    ld [$fee5], sp
    jp Jump_000_01f8


    rst $30
    add b
    call nz, $c20c
    ld hl, sp-$18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [$57]
    ldh a, [rIF]
    ld bc, $c002
    ld bc, $e0fa
    pop af
    or $e0
    add hl, bc
    nop
    nop
    ret nz

    ld a, [bc]
    pop hl
    or b
    ld [bc], a
    ret nz

    ld hl, sp-$3f
    cp $c1
    ld [$7ee1], sp
    db $fc
    and c
    ld c, $01
    cp $f1
    rrca
    nop
    jr nz, jr_00e_4867

    inc sp
    nop
    ldh a, [$fe]
    and c
    ld a, [$40e1]
    or b
    sbc [hl]
    rst $38
    rst $38
    rst $38
    xor h
    rst $38
    rst $38
    ei
    ld a, [$0003]
    jp z, Jump_000_1f81

    and [hl]
    add b
    ccf
    ld [$80a4], a
    scf
    ldh a, [$e0]
    rra
    db $ec
    ldh [$03], a
    nop
    rlca
    xor [hl]
    and [hl]
    add b
    rst $38
    nop
    ld bc, $e2f0
    db $e3
    ld a, [c]
    ldh [$33], a
    ei
    nop
    rst $08
    call nc, $67e0
    nop
    sbc e
    nop
    daa
    ld e, e
    nop
    jp $e4ec


    rst $38
    nop
    nop
    ldh [$03], a
    nop
    ld [c], a
    ld c, $f8
    pop hl
    rlca
    rrca
    ldh a, [rDIV]
    ld [c], a
    ld b, $e1
    or $e3
    nop
    and c
    rst $28
    inc c
    inc bc
    ld c, $01
    ld [bc], a
    pop hl
    inc c
    inc bc
    ld [$073d], sp
    inc b
    pop hl
    nop
    ldh a, [rLCDC]
    or b
    inc b
    pop bc
    ld [bc], a

jr_00e_4911:
    ldh [rNR24], a
    ldh a, [$61]
    rst $38
    adc [hl]
    adc h
    rst $38
    rst $38
    ld l, d
    pop hl
    ld h, [hl]
    ldh [$f8], a
    db $e3
    cp $ff
    xor $f8
    rst $38
    ldh [$fc], a

jr_00e_4927:
    jp $88f7


    rst $38
    ldh a, [$8f]
    rst $18
    jr nz, jr_00e_4911

    ld e, $80
    ld a, a
    rst $38
    rst $38
    rra
    rst $38
    rlca
    adc a
    ld [hl], e
    ld a, c
    add a
    cp a
    add l
    ld a, e
    ld hl, sp+$07
    inc b
    ei
    jr nc, jr_00e_4927

    add e
    dec hl
    nop
    sbc a
    db $fc
    ldh [$87], a
    ld hl, sp-$20
    adc a
    db $f4
    ldh [$c3], a
    ld h, c
    push af

jr_00e_4954:
    add hl, sp
    nop
    db $e4
    cpl
    and d
    ld h, b
    ld sp, $0e00
    nop
    push af
    pop af
    sbc d
    ld h, b

jr_00e_4962:
    ld [hl], e
    and [hl]
    ld h, d
    rst $38
    nop
    inc e
    nop
    dec d
    inc hl
    adc h
    ld h, b
    ld hl, sp-$0e
    ret nz

    jr c, jr_00e_4962

    jp nz, $63ff

    ld [c], a
    pop hl
    ld d, l
    pop af
    sub $e0
    ld sp, $62f0
    jr c, jr_00e_4954

    ret nz

    ld hl, sp+$66
    ld h, b
    rst $30
    inc hl
    nop
    inc e
    ld h, e
    db $e4
    nop
    rst $38
    rlca
    ld hl, sp-$21
    jr @-$0d

    ld sp, $4ece
    ldh a, [$e6]
    ret nz

    cp a
    rra

jr_00e_4999:
    or b
    rst $08
    ret z

    daa
    inc h
    ldh [$e6], a
    ret c

    db $e4

jr_00e_49a2:
    rst $38
    rst $38
    cp [hl]
    adc l
    adc [hl]
    ld h, c
    nop
    adc [hl]
    nop
    ld [hl], b
    ld b, b
    ldh [$38], a
    xor d
    ld a, d
    ret nz

    inc e
    ldh a, [rLCDC]
    jp $c040


    ld b, $4c
    ldh [$09], a

jr_00e_49bc:
    rst $28
    nop
    and $00
    jr jr_00e_49a2

    ld b, b
    jr nz, jr_00e_49c5

jr_00e_49c5:
    sbc b
    xor a
    nop
    ld b, a
    nop
    jr nc, jr_00e_49bc

    ldh [$c6], a
    ld a, [$00e0]
    xor e
    nop
    rrca
    db $f4
    ldh [$ce], a
    jr c, jr_00e_4999

    db $fc
    ld d, $c0
    ld [hl], b
    cp $c0

jr_00e_49df:
    ld b, b
    ld h, l
    nop
    adc c
    nop
    ld [hl-], a

jr_00e_49e5:
    nop
    call nz, $d0ea
    ld [c], a
    ld [$40b0], sp
    inc a
    cp $a0
    ld h, h
    nop
    sub e
    ret nz

    ld a, [hl-]
    ld [c], a
    ld [hl], b
    push bc
    jr nz, jr_00e_49df

    sbc b
    add e
    jr nz, jr_00e_49e5

    ld c, a
    cp $fc
    ld a, h
    rst $38
    and e
    cp a
    reti


    ei
    cp h
    db $fd
    cp a
    cp a
    rst $38
    db $ec
    rst $38
    pop de
    ld a, a
    db $ec

jr_00e_4a11:
    ccf
    rra
    ld e, $ff

jr_00e_4a15:
    inc de
    inc de
    and e
    and e
    ld h, l
    push hl
    dec e
    db $fd
    rst $38
    jp Jump_000_39ff


    db $fd
    ld b, a
    rst $30
    rst $38
    ldh [rIE], a
    ccf
    jr c, jr_00e_4a11

    db $e4
    scf
    ld [hl], $5d
    ld e, a
    ccf
    adc e
    adc a
    di
    ld a, [$7607]
    ld de, $8eff
    ld c, h
    rst $18
    pop hl
    nop
    ld e, $00
    ld h, b
    ld a, $c0
    jr nz, jr_00e_4a44

jr_00e_4a44:
    ld [hl], a
    ld c, a
    nop
    add b
    inc b
    ld b, b
    pop hl
    nop
    inc c
    cp d
    and b
    rst $10
    rlca
    nop
    ld a, b
    jr z, jr_00e_4a15

    inc a
    db $f4
    jr nz, @-$31

    nop
    ld d, l
    ld [bc], a
    ld d, $e0
    ld bc, $6255
    ld a, a
    db $e4
    jr nz, @-$78

    ld [hl+], a
    ret nz

    ld d, l
    ld b, b
    ld c, $c0
    ld h, b
    ld [de], a
    ret nz

    jr nc, jr_00e_4a44

jr_00e_4a70:
    jr nz, jr_00e_4aa5

    ld b, $e0
    dec d
    jr c, jr_00e_4a79

    ret nz

    ld [hl], b

jr_00e_4a79:
    ld c, h
    jp nz, $c2ff

    ldh [$c0], a
    pop bc
    ldh a, [$e1]
    ld sp, $1a0c
    and b
    ld l, a
    rst $18
    db $fd
    db $fc
    rrca
    ccf
    cp d
    jp nz, $e170

    jp nz, $2068

    and $71
    and b
    ld h, b
    jr nz, @+$72

    db $e3
    ld e, b
    jr nz, jr_00e_4b00

    rst $30
    ld [de], a
    rst $18
    and b
    nop
    ld [hl], b
    db $e4
    ld c, b

jr_00e_4aa5:
    jr nz, @-$62

    xor a
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rra
    or $16
    add e
    add c
    rrca
    inc de
    rrca
    rst $18
    ld sp, $600f
    rrca
    sub b
    ld [de], a
    ld b, b
    or h
    ldh a, [rIE]
    ld hl, sp-$10
    cp c
    ldh a, [$f3]
    ldh a, [$b3]
    ldh a, [rSTAT]
    or a
    jr nc, jr_00e_4a70

    rst $38
    rst $38
    rst $38
    rst $38
    nop
    jp $0148


    ld bc, $037b
    ret nz

    sub b
    rst $00
    ld a, e
    and e
    sub b
    rst $00
    ld d, b
    ld [bc], a
    sub b
    call $e7c0
    nop
    nop
    sub a
    pop bc
    nop
    ld [hl], a
    inc e
    ld h, b
    ld a, b
    jr @+$62

    call nz, $12e0
    sbc l
    ccf
    ld l, [hl]
    ld h, b
    ldh [rP1], a
    ret nz

    ld a, [c]

Jump_00e_4aff:
    ld b, b

jr_00e_4b00:
    and h
    and c
    nop
    rst $38
    ld h, h
    cp $ff
    ld bc, $00ff
    rst $00

jr_00e_4b0b:
    jr c, jr_00e_4b0b

    dec a

jr_00e_4b0e:
    ret nz

    inc bc
    inc bc
    db $fc
    db $fc
    inc bc
    db $76
    ld sp, hl
    ld d, l
    ld h, b

jr_00e_4b18:
    inc d
    jr nz, jr_00e_4b0e

    db $10
    inc h
    di
    db $10
    jr nz, jr_00e_4b18

    ld d, $22
    ldh [rNR10], a
    inc hl
    ld a, [bc]
    ld hl, $ff43
    rst $38
    rst $38
    ld a, [$01f9]
    inc bc
    inc bc
    db $fd
    ld [bc], a
    db $fc
    ldh [rTAC], a
    rlca
    inc b
    rlca
    inc b
    inc bc
    db $fd
    rlca
    ld e, a
    ld b, b
    add hl, de
    rst $38
    pop af
    rst $38
    ld l, [hl]
    rst $38
    rst $38
    xor [hl]
    rst $38
    ld [hl+], a
    rst $18
    ld [hl], e
    adc h
    rst $18
    rst $38
    rst $38
    nop
    rst $30
    sbc h
    rst $38
    ld [$ebff], sp
    rst $38
    rst $38
    add sp, -$01
    dec de
    rst $28
    dec sp
    call nz, $ffef
    rst $38
    nop
    cp $62
    db $fc
    ld e, [hl]
    db $fc
    ld b, h
    ld hl, sp+$7f
    call c, Call_00e_44fc
    db $fc
    ld b, h
    cp b
    db $fc
    ld hl, $2fad
    rst $38
    nop
    ccf
    dec l
    cp $e0
    ld hl, $e0fe
    ld hl, sp-$20
    ei
    ld [de], a
    ccf
    ret nc

    ldh [$9a], a
    cp $0a
    cp $6b
    db $db
    rst $38
    ld l, e
    cp d
    ldh [$98], a
    ld h, a
    sub l
    ld b, b
    ld sp, hl
    adc b
    xor a
    ld sp, hl
    adc b
    pop af
    cp b
    db $fc
    db $e3
    ld [hl], c
    inc sp
    and b
    jr nz, @-$40

    ld a, [bc]
    ret nz

    sub e
    rrca
    sub c
    rrca
    pop de
    cp $e0
    pop af
    ld c, a
    rrca
    ldh a, [rIF]
    sub [hl]
    ld a, [bc]
    ret nz

    ld b, $c1
    ld sp, hl
    cp $e0
    ld h, l
    cp l
    cp $e0
    ldh a, [$e0]
    call nz, $e3fc
    rst $30
    rrca
    db $e4
    ret


    ld [hl], h
    ldh [$c1], a
    ld b, c
    ld b, b
    db $fc
    ld e, h
    ld b, b
    ld hl, sp-$02
    pop af
    ld a, [hl+]
    inc b
    ld l, d
    sbc l
    ld h, b
    db $e3
    jp z, $2040

    ld b, h
    ldh [$fb], a
    inc b
    ld [hl+], a
    ld b, b
    or $90
    jp z, Jump_000_01fe

    ld de, $7f40
    rst $38
    ccf
    rst $18
    ld a, a
    ccf
    rra
    rst $38
    rst $08
    ccf
    rst $08
    ccf
    jp z, $cc00

    nop
    add a
    inc d
    ret nz

    ld a, [hl-]
    ld a, a
    nop
    adc b
    inc b
    ret nz

    inc e
    ccf
    call nz, $8800
    db $f4
    and b
    ld h, [hl]
    nop
    adc c
    jr nz, @-$3b

    ret nz

    ld [$fe74], a
    ld b, $c0
    db $eb
    ld e, h
    cp $c0
    db $eb
    ld hl, sp+$20
    ret nz

    ld [$a300], a
    db $10
    dec [hl]
    ld de, $fab8
    ret nz

    nop
    jp hl


    ldh [$c1], a
    sbc a
    ld b, $e6
    jp c, $dea1

    and b
    cp [hl]
    ld c, [hl]
    daa
    db $fc
    db $fd
    ld a, [c]
    di
    adc h
    ccf
    ld [hl+], a
    rst $20
    rst $38
    di
    adc a
    and a
    ld e, a
    rst $08
    ccf
    sbc a
    ld a, a
    push hl
    adc a
    ld c, [hl]

jr_00e_4c42:
    ld h, b
    adc $2a

jr_00e_4c45:
    dec h
    sub c
    inc hl
    rst $38
    rrca
    rst $38
    db $fd
    ld [hl], b
    ldh a, [$e8]
    ld a, a
    push bc
    rst $38
    add l
    rst $38
    or l
    rst $38
    rst $38
    adc l
    rst $30
    cp h
    rst $20
    or h
    ld b, e
    rst $20
    cp $40
    ret nz

    ld h, e
    ld a, a
    ld b, e
    ld a, a
    jp c, $c2ff

    rst $18
    rst $38
    ld e, d
    rst $38
    ld e, e
    and h
    db $ed
    ld bc, $fe99
    rst $38
    rla
    rst $38
    pop af
    cp $f7
    rst $38
    ld sp, $53ff
    ld sp, $ddce
    nop
    jr nz, jr_00e_4c42

    dec h
    jr nz, jr_00e_4c45

    add hl, hl

jr_00e_4c86:
    jr nz, @-$38

    rst $38
    adc e
    rst $38
    add hl, bc
    rst $38
    ld l, b
    rst $38
    ld a, [bc]
    rst $38
    rst $18
    ld l, e
    cp $6b
    sub h
    cp $e0
    and b
    and d
    cp $ff
    ld [hl+], a
    db $fc
    ld l, $fe
    and d
    db $fc
    xor [hl]
    cp $c3
    and d
    ld e, h
    ldh a, [$e0]

jr_00e_4ca9:
    ldh [$ad], a
    ldh a, [$ee]
    inc b
    ret nz

    sub e
    rrca
    rst $18
    or c
    rrca
    or e
    rrca
    ld [hl], c
    cp $e0
    ldh a, [rIF]
    ld d, l
    sub e
    ld a, [bc]
    add b
    rst $30
    ld [$f780], sp
    jr nz, jr_00e_4ca9

    ldh a, [$0c]
    ldh [$e5], a
    ldh a, [$de]
    add b
    rst $38
    ld h, h
    and c
    and b
    and c
    ldh a, [$3f]
    ldh a, [$f5]
    ld a, a
    ld [$e0c1], sp
    ld c, c
    inc bc
    ld a, $c1
    adc b
    ld [hl], a
    sbc a
    cp $01
    add a
    ld a, b
    cp $90
    add b
    jr nz, @-$1d

    rrca
    rst $38
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ldh [$1f], a
    ld a, a
    db $f4
    inc [hl]
    ld b, b
    ldh a, [$1f]
    nop
    ld l, l
    jr nz, jr_00e_4c86

    nop
    rst $38
    ld b, c
    rst $38
    rst $18
    ld a, e
    sbc $42
    xor $4a
    ld e, [hl]
    inc b
    rst $38
    dec l
    rst $38
    xor $00
    ld a, d
    ld d, b
    ld a, [hl]
    jr nc, @+$01

    rst $20
    ld a, c
    add $42
    add $42

jr_00e_4d18:
    ld a, [hl]
    ld b, $ff
    inc a
    rst $38
    ld a, $00
    rra
    dec d
    rra
    ld bc, $5fff
    xor e
    xor d
    jr nz, jr_00e_4d18

    ld b, l
    ld [hl], l
    ld b, l
    rst $38
    ld a, [de]
    rst $38
    ld c, $00
    rrca
    dec b
    cpl
    ld bc, $77ff
    xor a
    add sp, $60
    ld b, [hl]
    ld b, b
    inc bc
    inc bc
    db $fd
    nop
    ldh a, [$e0]
    sbc e
    ld bc, $41cf
    rst $18
    ld h, c
    ld a, a
    rst $18
    ld b, e
    cp $5a
    ld a, [hl]
    inc h
    dec a
    adc a
    xor $ff
    dec h
    nop
    ld a, [hl-]
    db $10
    push af
    ld bc, $b57a
    rst $38
    ld l, l
    dec h
    xor h
    inc h
    ld [hl], h
    ld b, h
    jr @+$01

    rst $38
    ld a, [hl+]
    nop
    ld a, a
    dec b
    dec a
    dec l
    ld a, [hl]
    add c
    rst $38
    ccf
    scf
    ld b, d
    ld [bc], a
    inc a
    nop
    ld e, $ff
    rst $38
    ld a, [bc]
    nop
    ld e, $04
    jr z, @+$0a

    ld d, b
    cp a
    rst $10
    jr nz, jr_00e_4d82

jr_00e_4d82:
    db $10
    jp Jump_000_0400


    ldh a, [$e0]
    adc a
    dec b
    rst $38
    rst $38
    ld b, c
    rst $08
    ld [hl], a
    call z, $cc44
    ld b, h
    cp a
    ld e, b
    ld [$ff28], sp
    ld c, $04
    ret nc

    ldh [$39], a
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    nop
    and b
    jr nz, jr_00e_4e23

    nop
    db $fd
    ccf
    ret nz

    pop hl
    ld bc, $2f3f
    ld [$44f7], sp
    rst $38
    inc b
    ld b, b
    nop
    ld a, h
    ld b, b
    rra
    rst $38
    ld c, d
    rst $38
    nop
    ld l, a
    dec h
    ld h, l
    dec h
    ld h, d
    cp l
    ld h, e
    cp a
    ld hl, $2165
    ld a, [hl-]
    ld [bc], a
    inc e
    or b
    ldh [rIE], a
    rst $38
    ld bc, $777f
    inc a
    rst $00
    inc a
    inc d
    inc a
    rst $08
    inc b
    inc e
    inc c
    ld [$e2e0], sp
    xor $e0
    or a
    ld l, b
    rst $30
    jr nz, jr_00e_4e43

    jr nz, @-$6e

    pop hl
    ld c, d
    nop
    ld a, a
    dec h
    rst $18
    db $fd
    ld bc, $dffe
    ld h, b
    ldh a, [$e0]
    jr c, jr_00e_4df4

jr_00e_4df4:
    db $fd
    inc e
    ldh a, [$e1]
    dec b
    db $fd
    dec a
    ld a, [hl]
    and c
    xor a
    cp a
    cpl
    ldh [rLCDC], a
    sbc $40
    ld c, a
    ld h, b
    ld [c], a
    dec [hl]
    rst $38
    dec d
    ld a, h
    add e
    ld a, [hl]
    inc a
    inc hl
    ld hl, $fd3f
    inc bc
    ld h, b
    pop hl
    ccf
    dec b
    rst $18
    dec de
    ld h, e
    db $fd
    rst $28
    inc bc
    ld bc, $0105
    and b
    and $67

jr_00e_4e23:
    inc l
    rst $18
    ei
    ld d, b
    db $10
    or b
    push hl
    cpl
    dec b
    dec [hl]
    dec b
    ld e, b
    rst $38

jr_00e_4e30:
    cp a
    and b
    jr nz, jr_00e_4df4

    ld b, b
    ld a, h
    nop
    ld a, $a0
    adc a
    rst $18
    rst $38
    rst $38
    ld e, [hl]
    ld a, [bc]
    ldh a, [$c3]

jr_00e_4e41:
    ld h, b
    rst $00

jr_00e_4e43:
    ld [$c0b0], a
    ld [hl], h
    ld e, a
    jr nc, jr_00e_4e30

    ld a, c
    rst $00
    ld b, e
    ld h, b
    jp $603a


    ret nz

    rst $10
    dec d
    dec b
    ld e, h
    ld h, b
    add $0a
    ld h, b
    ret nz

    dec h
    dec b
    db $fd
    ld [hl], b
    ld h, b
    add $0a
    nop
    sbc a
    ld bc, $4bcf
    rst $28
    sbc $61
    sbc $42
    ld h, b
    db $d3
    ld c, $00
    ld c, a
    rst $38
    dec b
    ld l, a
    ld hl, $bb67
    and $62
    jp Jump_00e_41af


    jp Jump_00e_4141


    jr nz, jr_00e_4e41

    adc e
    jr nc, @-$3e

    rst $38
    rst $18
    rlca
    ld hl, sp+$78
    ret nz

    ld b, b
    sub b
    pop bc
    ld c, $00
    ld [hl], e
    dec bc
    ld bc, $c0ae
    nop
    ld [c], a
    ld a, d
    ld [bc], a
    inc a
    ldh a, [$e2]
    rst $38
    cpl
    ld bc, $af57
    xor b
    jr nz, @+$46

    ld b, b
    rst $38
    ld [bc], a
    nop
    ld bc, $1eff
    nop
    ei
    ld bc, $7fff
    ld h, c

jr_00e_4eb0:
    ld e, a
    xor a
    ld a, h
    jr z, jr_00e_4eb0

    ld l, c
    sub a
    db $db
    ld c, c
    ld c, c
    nop
    xor $2a
    ldh [$c0], a
    ld l, [hl]
    ret nz

    db $dd
    ld a, a

jr_00e_4ec3:
    ld [hl], e
    ld sp, $2163
    rst $28
    ld h, c
    ld b, a
    nop
    ret nz

    cp $f0
    ldh [$03], a
    ld a, [hl]
    rst $28
    cp $00
    ld a, a
    ld [hl], a
    ei
    inc c
    inc b
    db $10
    pop bc
    ccf
    dec d
    ccf

jr_00e_4ede:
    ld bc, $7f7f
    cp l
    db $e3
    ld h, c
    ld b, a
    ld b, e
    ld a, $06
    ld b, b
    pop bc
    di
    cpl
    dec b
    ldh a, [$e0]
    ld [hl], b
    ldh [$0e], a
    ld b, $3c
    inc c
    ret


    jr jr_00e_4f28

    ld [c], a
    add b
    db $e3
    inc bc
    ld a, b
    pop hl
    jr nc, jr_00e_4ec3

    nop
    ld a, a
    rst $18
    cp e
    ld h, [hl]
    ld [hl+], a
    ld h, $22
    ret nc

    db $e3
    rst $28
    dec b
    rst $38
    ld [hl], l
    ld [hl], l
    ld [c], a
    dec e
    ld [hl], e
    ld [hl], c
    rlca
    inc bc
    rst $30
    cp $06
    ld a, h
    ret nc

    db $e3
    inc bc
    ld a, [hl]
    rst $30
    inc e
    cp a
    inc c
    jr c, jr_00e_4f33

    or $30
    ld h, e
    nop
    push bc

jr_00e_4f28:
    cp l
    rst $08
    ld h, a
    inc hl
    ld h, d
    ld [hl+], a
    inc [hl]
    and b
    and b
    and d
    push bc

jr_00e_4f33:
    ld b, l
    ccf
    ld b, d
    cp l
    inc bc
    ld bc, $0307
    jr nz, jr_00e_4ede

    sub b
    db $e4
    sbc a
    cp l
    rst $38
    ld b, c
    ld e, [hl]
    ld e, d
    adc $a0
    ret nz

    pop bc
    ld bc, $7fef
    rlca
    inc a
    rst $30
    ld h, b
    pop hl
    ld a, h
    inc c

jr_00e_4f53:
    jr c, jr_00e_4f53

    ld h, b
    and b
    xor a
    dec b
    push af
    ld d, l
    ld a, [c]
    ld e, l
    ld d, e
    reti


    ld d, c
    and b
    push hl
    add b
    and b
    ccf
    cp $9c
    and b
    inc e
    inc c
    rst $30
    ld a, b
    jr jr_00e_4f9e

    add b
    and e
    dec b
    ld a, h
    and e
    ld l, [hl]
    push bc
    ld l, $ae
    and c
    jr nz, jr_00e_4f7a

jr_00e_4f7a:
    rst $18
    rst $38
    rst $38
    nop
    call z, Call_000_054f
    rst $20
    ld h, l
    dec h
    ld h, h
    ld h, b
    add $e0
    add c
    call $f641
    and c
    rrca
    ld h, b
    push bc
    ldh [$c7], a
    ld h, b
    jp $c300


    ld d, b
    ld h, b
    add $0a
    ei
    nop
    rra
    add b

jr_00e_4f9e:
    pop bc
    rst $28
    ld e, h
    ld [$287a], sp
    nop
    ld h, b
    pop de
    nop
    nop
    nop
    rra
    ld [de], a
    rst $38
    ld c, a
    or $00
    nop
    nop
    rra
    ld [de], a
    rst $38
    inc bc
    or $00
    nop
    nop
    ret z

    ld [de], a
    ldh [rNR24], a
    rra
    ld [de], a
    or $00
    ld c, e
    inc bc
    ret z

    ld [de], a
    rra
    ld [de], a
    or $00
    ld a, [c]
    inc bc
    ld c, e
    inc bc
    rra
    ld [de], a
    or $00
    ld [bc], a
    inc bc
    add b
    ld a, l
    rst $38
    ld c, a
    ld [c], a
    nop
    add b
    ld a, [hl]
    rra
    ld [de], a
    or $00
    add b
    ld a, l
    adc [hl]
    ld a, a
    add b
    ld a, [hl]
    rra
    ld [de], a
    or $00
    push hl
    ld b, c
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $20
    and $9c
    nop
    ld bc, $027f
    inc bc
    inc b
    dec b
    ld b, $07
    ld b, e
    or [hl]
    ldh [$e7], a
    ld c, d
    ld c, e
    ld c, h
    ret nz

    rst $38
    db $ec
    db $eb
    rrca
    db $10
    ld de, $127f
    inc de
    inc d
    dec d
    ld d, $17
    scf
    db $76
    ldh [$9f], a
    ld e, d
    ld e, e
    ld e, h
    xor h
    xor l
    ret nz

    rst $38
    ld [$1fe9], a
    rst $38
    and b
    and c
    and d
    and [hl]
    and e
    and h
    and l
    and [hl]
    rst $38
    and [hl]
    add h
    add h
    add b
    ld l, d
    ld l, e
    ld l, h
    add l
    rst $20
    add [hl]
    add a
    sbc a
    jp z, $e8ff

    rst $20
    dec c
    or b
    or c
    rst $38
    or d
    or [hl]
    or e
    or h
    or l
    or [hl]
    or [hl]
    or [hl]
    rst $38
    sub h
    sub b
    sub c
    sub d
    sub e
    sub l
    sub [hl]
    sub a
    ld a, c
    ld c, $ca
    rst $38
    add sp, -$19
    dec e
    jr nz, jr_00e_5058

jr_00e_5058:
    jr nz, @+$01

    db $ec
    ld bc, $ca1e
    rst $38
    add b
    add sp, -$40
    rst $28
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld [bc], a
    add b
    di
    nop
    add b
    rst $38
    add b
    cp d
    ret nz

    rst $28
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    ld c, d
    push hl
    db $e4
    dec bc
    ret nz

    rst $28
    inc c
    jp z, $e8ff

    rst $20
    dec de
    add b
    rst $28
    add hl, hl
    inc e
    jp z, $e8ff

    rst $20
    dec hl
    ld b, b
    rst $28
    inc l
    jp z, $e8ff

    rst $20
    and l
    dec sp
    nop
    rst $28
    inc a
    jp z, $e8ff

    rst $20
    add hl, bc
    ret nz

    rst $08
    ld a, [bc]
    sub h
    jp z, $e8ff

    rst $20
    add hl, de
    add b
    rst $08
    ld a, [de]
    jp z, $e8ff

    rst $20
    add hl, hl
    ld d, d
    ld b, b
    rst $08
    ld a, [hl+]
    jp z, $e8ff

    rst $20
    add hl, sp
    nop
    rst $08
    ld a, [hl-]
    jp z, Jump_00e_4aff

    add sp, -$19
    ld a, b
    ret nz

    xor a
    ld a, c
    jp z, $e8ff

    rst $20
    adc b
    add b
    xor a
    add hl, hl
    adc c
    jp z, $e8ff

    rst $20
    sbc b
    ld b, b
    xor a
    sbc c
    jp z, $e8ff

    rst $20
    and l
    xor b
    nop
    xor a
    xor c
    jp z, $e8ff

    rst $20
    cp b
    ret nz

    adc a
    cp c
    inc d
    jp z, $e8ff

    rst $20
    sbc d
    add b
    adc a
    sbc e
    jp z, $ecf0

    pop af
    and e
    ld [c], a
    dec b
    xor d
    ld b, b
    adc a
    xor e
    adc d
    ldh a, [$ec]
    pop af
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld l, $80
    db $fc
    cp d
    xor [hl]
    xor a
    cp $ed
    cp e
    jp z, $ecd0

    pop af
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld e, h
    nop
    nop
    nop
    add l
    ld c, $ff
    ldh a, [$09]
    rst $38
    rst $38
    rst $20
    and $d3
    and $b7
    pop hl
    dec c
    ld e, e
    dec c
    dec c
    ret nz

    ldh a, [rOBP1]
    ld c, c
    cp c
    ld [$c029], a
    di
    ld de, $c008
    or $80
    rst $38
    reti


    add sp, $08
    cp b
    ldh [$80], a
    xor $7f
    pop hl
    ld b, c
    add hl, hl
    rst $38
    ld [c], a
    ret nz

    cp $2d
    rst $20
    call nc, Call_000_00ef
    ld a, [c]
    ld [$e08d], sp
    nop
    cp $eb
    ld b, b
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    or c
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    pop hl
    ldh [rIF], a
    ret nz

    rst $28
    nop
    db $ed
    ldh [rIE], a
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    db $fc
    ei
    dec b
    inc c
    ret nz

    rst $08
    dec bc
    jp z, $c0ff

    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    db $d3
    ldh [rDIV], a
    ret nz

    rst $38
    ld sp, hl
    ld hl, sp+$0a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld a, d
    and a
    nop
    xor l
    ldh [$d9], a
    pop af
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    or $fa
    nop
    db $fd
    ld [$c008], a
    rst $38
    add b
    ld hl, sp-$41
    rst $20
    ld a, [bc]
    rst $38
    ldh a, [$80]
    rst $38
    add b
    rst $20
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp-$09
    sbc d
    pop af
    add [hl]
    db $eb
    nop
    nop
    nop
    call Call_00e_4373
    call Call_00e_5230
    ld a, $01
    ld hl, $5348
    call Call_000_23e8

jr_00e_5217:
    ld b, $00
    ldh a, [$94]
    and $0b
    jr nz, jr_00e_522c

    ld b, $01
    ldh a, [$94]
    and $10
    jr nz, jr_00e_522c

    call Call_000_2e3b
    jr jr_00e_5217

jr_00e_522c:
    rst $08
    ld e, h
    ld a, b
    ret


Call_00e_5230:
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $0c10
    ld de, $d200
    call Call_000_0234
    ld a, $00
    ldh [rVBK], a
    ld hl, $d200
    ld de, $9200
    ld c, $20
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4710
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5131
    ld de, $d000
    call Call_000_1f2f
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4fea
    ld de, $d000
    call Call_000_1f2f
    call Call_00e_5309
    ld hl, $4faa
    ld de, $0008
    call Call_000_05a8
    call Call_00e_42f0
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld b, $a8
    ld de, $d400

jr_00e_52bd:
    ld hl, $46bd
    ld c, $01
    call Call_000_03eb
    dec b
    jr nz, jr_00e_52bd

    call Call_00e_5448
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $00
    ldh [rVBK], a
    ld hl, $d400
    ld de, $9400
    ld c, $40
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $68
    call Call_000_2096
    ld a, [$c482]
    inc a
    cp $0d
    jr c, jr_00e_52f8

    ld a, $10
    ld [$c323], a

jr_00e_52f8:
    ld a, $22
    ld [$c32c], a
    ld a, $01
    rst $18
    inc b
    dec bc
    rst $18
    inc a
    inc b
    call Call_000_0371
    ret


Call_00e_5309:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d146
    ld a, $40
    ld c, $1c

jr_00e_5316:
    push hl
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    ld [hl+], a
    inc a
    pop hl
    ld de, $0040
    add hl, de
    dec c
    jr nz, jr_00e_5316

    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d146
    ld a, $00
    ld c, $1c

jr_00e_5338:
    push hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    pop hl
    ld de, $0040
    add hl, de
    dec c
    jr nz, jr_00e_5338

    ret


    call Call_00e_443a
    ld a, [$c482]
    add $06
    ld d, a
    ld e, $60
    ld hl, $0500
    ld bc, $0240
    call Call_000_27b4
    ld hl, $4008
    ld de, $0d00
    ld bc, $0100
    call Call_00e_4643
    ld a, [$c4be]
    and a
    jr z, jr_00e_539f

    ld hl, $c483
    ld a, [$c875]
    cp [hl]
    jr z, jr_00e_539f

    ld a, [$c482]
    add $05
    ld d, a
    ldh a, [$8c]
    and $0f
    add $0a
    add a
    add a
    add a
    ld e, a
    ld bc, $0620
    ld hl, $c483
    ld a, [$c875]
    cp [hl]
    jr nc, jr_00e_5399

    ld a, e
    cpl
    ld e, a
    ld bc, $0622

jr_00e_5399:
    ld hl, $0080
    call Call_000_27fa

jr_00e_539f:
    ret


    jr nz, @+$22

    ld b, d
    ld h, e
    ld [hl-], a
    nop

Call_00e_53a6:
    ld a, $00
    ld [$c485], a
    ld a, $d4
    ld [$c486], a
    ld c, l
    ld b, h
    ld de, $d141

Jump_00e_53b5:
    ld a, [bc]
    cp $96
    jp z, Jump_00e_5447

    push de
    ld hl, $0003
    add hl, bc
    ld a, [hl]
    and $7f
    inc a
    call Call_00e_4532
    ld hl, $0003
    add hl, bc
    bit 7, [hl]
    jr z, jr_00e_53d5

    ld a, $2f
    call Call_00e_447c
    dec de

jr_00e_53d5:
    inc de
    inc de
    push bc
    push de
    ld hl, $0002
    add hl, bc
    ld a, [hl]
    ld hl, $c490
    call Call_00e_45e8
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d200
    ld c, $06
    call Call_000_03a7
    ld hl, $c490
    ld de, $d200
    rst $18
    ld h, $03
    ld hl, $c485
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d200
    ld c, $06
    call Call_00e_46cd
    ld a, l
    ld [$c485], a
    ld a, h
    ld [$c486], a
    pop de
    pop bc
    ld a, $06
    add e
    ld e, a
    jr nc, jr_00e_541a

    inc d

jr_00e_541a:
    inc de
    ld hl, $0000
    add hl, bc
    ld a, [hl]
    call $458a
    inc de
    ld hl, $0001
    add hl, bc
    ld a, [hl]
    and a
    jr z, jr_00e_5431

    call Call_00e_4532
    jr jr_00e_5437

jr_00e_5431:
    inc de
    ld a, $2d
    call Call_00e_447c

jr_00e_5437:
    pop de
    ld hl, $0040
    add hl, de
    ld e, l
    ld d, h
    ld hl, $0004
    add hl, bc
    ld c, l
    ld b, h
    jp Jump_00e_53b5


Jump_00e_5447:
    ret


Call_00e_5448:
    call Call_00e_78b4
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    ld de, $c600
    ld bc, $0074
    call MemCopy
    ld hl, $c600
    call Call_00e_53a6
    ld hl, $c600
    call Call_00e_7871
    ld [$c482], a
    call Call_00e_7887
    ld [$c483], a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $fd, $00, $ff, $eb, $ff, $3c, $3c, $5a, $66, $7e, $df, $42, $5a, $66, $5a, $66
    db $f6, $e1, $3c, $ff, $ff, $6c, $6c, $fe, $92, $fe, $da, $da, $b6, $fb, $fc, $fc
    db $e0, $e3, $24, $24, $7e, $5a, $ff, $d7, $81, $7e, $5a, $fa, $e3, $24, $f0, $e2
    db $bf, $c1, $ff, $ff, $9b, $bd, $c3, $ff, $d9, $fd, $83, $ff, $7e, $ff, $73, $73
    db $af, $dd, $fd, $ab, $ff, $aa, $d6, $75, $6b, $ef, $d5, $d5, $bb, $ff, $6e, $ff
    db $70, $70, $a8, $d8, $fb, $ab, $ff, $6f, $5d, $dd, $ab, $ea, $b6, $be, $ca, $ff
    db $74, $ff, $60, $60, $f0, $90, $f0, $d0, $ef, $d0, $b0, $e0, $e0, $90, $e3, $1c
    db $1c, $2c, $f7, $34, $38, $28, $fe, $e3, $2c, $34, $18, $ff, $bf, $38, $38, $34
    db $2c, $1c, $14, $fe, $e3, $34, $ff, $2c, $18, $ff, $c3, $c3, $e7, $a5, $7e, $ef
    db $5a, $3c, $24, $3c, $88, $e0, $e7, $a5, $42, $7e, $60, $e0, $3c, $24, $ff, $e7
    db $ff, $81, $fe, $e0, $f5, $e7, $ea, $e0, $ff, $40, $e3, $30, $30, $78, $48, $df
    db $78, $68, $68, $58, $30, $f0, $e2, $ff, $ff, $c0, $e0, $e2, $e4, $e1, $30, $e0
    db $d2, $e2, $d4, $e0, $ea, $e2, $ff, $03, $ff, $02, $07, $05, $0d, $0b, $1a, $16
    db $34, $ff, $2c, $68, $58, $50, $70, $60, $ff, $7e, $fd, $7e, $46, $e0, $99, $ef
    db $91, $f7, $89, $ff, $ef, $99, $bd, $c3, $7e, $00, $e0, $5c, $64, $7c, $a7, $44
    db $7c, $64, $90, $e0, $f8, $c0, $3c, $e0, $e4, $f7, $9f, $f9, $b9, $c7, $ef, $9f
    db $08, $e0, $d0, $e2, $f7, $df, $99, $7e, $62, $ff, $f9, $d0, $e3, $3e, $3e, $ff
    db $5e, $62, $be, $c2, $fe, $92, $ff, $93, $e6, $6c, $e0, $f3, $0c, $85, $e0, $64
    db $e0, $9f, $fd, $83, $56, $e0, $e5, $7e, $7e, $e2, $e0, $9e, $f0, $e0, $99, $a0
    db $e3, $7e, $64, $e1, $f5, $fb, $2e, $32, $3a, $26, $2c, $e1, $e1, $18, $80, $e4
    db $7c, $e1, $d0, $e5, $f4, $e3, $bf, $c1, $7f, $6d, $79, $70, $e1, $00, $00, $0e
    db $e1, $3c, $3c, $f8, $e4, $26, $10, $e0, $18, $18, $f0, $e1, $ee, $c0, $34, $e0
    db $c1, $36, $e3, $ff, $68, $58, $34, $2c, $1a, $16, $0e, $0e, $f1, $00, $f0, $c0
    db $18, $e3, $12, $e3, $00, $ff, $58, $68, $ff, $2c, $34, $16, $1a, $16, $1a, $2c
    db $34, $df, $58, $68, $70, $70, $00, $10, $e4, $eb, $f7, $fc, $ac, $e1, $20, $c1
    db $3c, $3c, $62, $5e, $df, $b9, $ff, $b3, $ed, $af, $f5, $bd, $db, $72, $4e, $9e
    db $f0, $e1, $5a, $66, $bd, $db, $52, $e1, $9c, $c0, $99, $ff, $e7, $ff, $fc, $fc
    db $fa, $86, $fe, $9a, $ae, $40, $e3, $fd, $83, $fe, $e0, $e5, $9f, $d2, $c0, $db
    db $ec, $e0, $a1, $e0, $e1, $fd, $9b, $e2, $e2, $9b, $fa, $86, $fd, $fc, $00, $e2
    db $fe, $9e, $fe, $82, $fc, $9c, $63, $fe, $9e, $78, $e5, $f0, $e3, $08, $c0, $90
    db $f0, $a0, $e4, $fe, $e4, $e0, $91, $bf, $d9, $5b, $65, $3f, $ff, $d3, $e7, $e7
    db $94, $e5, $de, $c1, $e7, $70, $c0, $7e, $42, $e3, $7e, $66, $10, $c2, $78, $a0
    db $d0, $c3, $ff, $f3, $7e, $ff, $72, $fe, $92, $ba, $c6, $54, $6c, $38, $ff, $ff
    db $ee, $ee, $f7, $99, $ed, $93, $fa, $ff, $86, $fa, $86, $ed, $93, $f7, $99, $ee
    db $87, $ff, $f0, $f0, $a8, $e2, $a4, $e0, $6c, $e0, $0c, $c0, $f7, $ff, $f7, $eb
    db $9d, $f7, $89, $eb, $95, $f7, $bf, $9d, $ff, $9d, $f7, $95, $62, $a0, $e2, $ef
    db $07, $99, $f7, $89, $1e, $c0, $a0, $e2, $20, $e7, $40, $eb, $42, $e2, $99, $9c
    db $60, $e5, $02, $e1, $bd, $db, $60, $e1, $e0, $e9, $ff, $7b, $99, $e6, $d0, $a4
    db $b6, $ce, $6d, $73, $30, $c7, $c0, $76, $a2, $fe, $e3, $00, $c1, $36, $e2, $e0
    db $c5, $f0, $e5, $a5, $db, $f2, $aa, $81, $3c, $60, $e0, $68, $e0, $9d, $ab, $d5
    db $bf, $bf, $c1, $75, $4b, $7e, $4a, $34, $00, $e2, $bd, $29, $c3, $90, $81, $78
    db $a1, $e7, $f0, $c4, $a5, $a4, $c1, $b0, $e5, $ff, $81, $6d, $73, $3a, $26, $5c
    db $64, $b7, $69, $cf, $2c, $a1, $f2, $a2, $2c, $ce, $81, $3c, $2c, $00, $a1, $ff
    db $d6, $ba, $ba, $d6, $54, $6c, $fe, $82, $ab, $fe, $ee, $fc, $e1, $38, $e0, $e3
    db $34, $be, $81, $3c, $79, $34, $e0, $81, $d2, $a1, $7e, $5a, $66, $66, $20, $85
    db $f8, $15, $88, $f0, $82, $e0, $8d, $3c, $3c, $7a, $46, $3d, $ff, $3b, $5f, $61
    db $bf, $d9, $ff, $99, $7f, $ff, $41, $3f, $ff, $e0, $e0, $f0, $90, $fc, $f1, $9c
    db $1c, $c3, $2a, $c0, $70, $a2, $5e, $62, $bf, $d9, $ff, $f6, $96, $bf, $d9, $5e
    db $62, $3c, $ff, $3f, $07, $07, $0f, $09, $3f, $39, $d0, $e7, $50, $a1, $ee, $be
    db $a2, $81, $be, $de, $e0, $e1, $0f, $0f, $17, $5f, $19, $2f, $37, $fe, $e6, $5e
    db $e0, $e6, $50, $81, $ef, $3f, $3f, $5b, $65, $a4, $e3, $3d, $3b, $7a, $b3, $46
    db $3c, $a0, $ea, $90, $a1, $78, $78, $36, $80, $48, $e6, $fa, $e4, $48, $78, $10
    db $e3, $fe, $81, $24, $f4, $ec, $f7, $e8, $98, $70, $10, $c0, $f6, $96, $ff, $99
    db $2f, $fb, $87, $fe, $8e, $70, $c1, $f7, $d0, $e5, $fc, $e5, $1c, $f0, $62, $6c
    db $a2, $83, $ff, $a9, $fe, $e0, $e0, $60, $3e, $a0, $0f, $a6, $fd, $83, $ef, $a0
    db $a4, $60, $e6, $40, $a9, $62, $80, $d6, $00, $c5, $3f, $3f, $04, $e0, $c1, $80
    db $80, $d9, $5f, $ef, $61, $3f, $39, $0f, $b0, $83, $91, $f7, $8f, $db, $e8, $98
    db $40, $a3, $00, $00, $de, $e2, $df, $ff, $37, $81, $fd, $fb, $10, $a1, $3c, $3c
    db $58, $a2, $4e, $a0, $1f, $3e, $26, $2e, $32, $1e, $70, $60, $2e, $a4, $be, $e3
    db $c2, $f0, $e4, $bd, $02, $c3, $10, $80, $62, $62, $66, $e0, $fd, $ab, $df, $fe
    db $82, $7a, $56, $2c, $e0, $e5, $c3, $7e, $c2, $00, $c2, $f7, $f0, $84, $82, $e1
    db $e0, $c3, $32, $63, $7d, $73, $c7, $5a, $66, $bf, $00, $c2, $50, $4c, $f3, $f2
    db $18, $00, $ef, $1c, $04, $0c, $0c, $30, $47, $bd, $db, $e7, $e7, $bd, $e7, $a5
    db $50, $83, $90, $ad, $40, $00, $78, $ff, $00, $fc, $3c, $7e, $20, $af, $2f, $e0
    db $ff, $40, $de, $40, $4f, $ff, $20, $00, $7c, $ff, $00, $3e, $1e, $7c, $00, $7e
    db $3c, $23, $f7, $21, $3f, $03, $30, $e1, $3c, $00, $de, $1c, $ff, $63, $61, $03
    db $01, $05, $01, $3a, $02, $fd, $1c, $90, $40, $fe, $00, $7f, $67, $2c, $0c, $7f
    db $50, $10, $60, $20, $3c, $00, $1e, $c0, $e0, $ff, $2c, $00, $36, $06, $58, $18
    db $a0, $20, $f3, $c0, $40, $c6, $e0, $b0, $e0, $6c, $00, $f6, $34, $ff, $67, $23
    db $fe, $62, $ee, $4a, $5a, $40, $fd, $0d, $60, $40, $9c, $00, $ce, $4c, $c1, $41
    db $ff, $c0, $40, $e0, $40, $5e, $00, $2f, $ff, $ff, $10, $00, $58, $08, $7c, $20
    db $7e, $0c, $7f, $ff, $59, $fb, $51, $7f, $32, $27, $90, $e0, $ff, $fc, $10, $7e
    db $4c, $3b, $19, $77, $11, $df, $fb, $51, $77, $52, $13, $30, $40, $38, $00, $ff
    db $7c, $28, $fa, $68, $db, $49, $fb, $59, $ff, $77, $33, $22, $ff, $04, $00, $be
    db $00, $ff, $df, $5b, $c6, $42, $de, $42, $ee, $4a, $ff, $5e, $04, $2d, $ff, $e0
    db $00, $74, $50, $ff, $76, $30, $e7, $63, $c6, $42, $c6, $42, $ff, $7e, $06, $3c
    db $ff, $30, $00, $18, $10, $ff, $14, $04, $5c, $08, $aa, $20, $ef, $45, $f7, $75
    db $45, $1a, $f0, $22, $20, $00, $70, $20, $ff, $e8, $60, $46, $40, $03, $03, $00
    db $ff, $ff, $1e, $00, $8f, $0b, $de, $40, $cf, $4b, $7f, $de, $42, $fe, $5a, $7e
    db $24, $2d, $80, $e0, $ef, $fc, $00, $7e, $6e, $fc, $e0, $0e, $f8, $60, $ff, $7c
    db $18, $32, $ff, $78, $00, $3c, $2c, $ff, $1c, $08, $7e, $02, $be, $18, $f7, $53
    db $f7, $5a, $12, $24, $00, $e0, $74, $00, $3a, $18, $ff, $71, $11, $b2, $10, $73
    db $11, $3d, $01, $fd, $1e, $50, $e2, $78, $20, $6c, $08, $b2, $10, $df, $f3, $51
    db $5d, $11, $26, $e0, $c0, $3c, $00, $ff, $fe, $1e, $7c, $40, $fe, $1e, $72, $50
    db $ff, $3f, $23, $0e, $ff, $48, $00, $7c, $20, $ff, $ee, $0c, $73, $51, $37, $13
    db $12, $02, $df, $18, $08, $08, $ff, $08, $10, $e0, $ee, $44, $ff, $ff, $35, $ff
    db $55, $5d, $41, $1e, $0e, $fd, $08, $10, $e0, $1c, $00, $1e, $0e, $18, $08, $d7
    db $78, $08, $b8, $ba, $e0, $32, $50, $e2, $2c, $0c, $fc, $a0, $c3, $a0, $e1, $44
    db $00, $66, $22, $66, $22, $ff, $26, $02, $16, $12, $0e, $06, $3c, $0c, $f9, $18
    db $70, $e2, $6e, $c0, $78, $62, $40, $77, $23, $f7, $3e, $06, $1c, $e0, $c7, $13
    db $f6, $52, $72, $7b, $50, $11, $e0, $e6, $42, $40, $07, $03, $e0, $e5, $ff, $76
    db $44, $3b, $19, $73, $11, $f3, $51, $f7, $75, $51, $12, $a0, $c0, $18, $08, $28
    db $08, $7d, $30, $9a, $c0, $7a, $28, $ad, $21, $46, $e0, $02, $bf, $0a, $00, $0f
    db $05, $05, $05, $00, $85, $0e, $1e, $f2, $e0, $0f, $01, $07, $07, $f0, $6d, $df
    db $65, $fe, $eb, $f0, $ef, $ed, $ff, $ed, $a0, $bd, $d2, $a0, $7d, $ff, $01, $7f
    db $9f, $7d, $03, $01, $07, $03, $50, $c1, $60, $82, $00, $ff, $7e, $5a, $3e, $06
    db $3c, $1c, $70, $30, $fd, $20, $40, $02, $04, $00, $1e, $06, $fc, $0c, $f3, $78
    db $68, $c0, $c1, $40, $c3, $fc, $00, $fe, $7a, $f2, $20, $c0, $46, $90, $a1, $23
    db $a1, $f8, $00, $7c, $5c, $d3, $30, $10, $46, $c0, $40, $62, $08, $3c, $c1, $66
    db $3c, $cf, $14, $fc, $34, $64, $d0, $e6, $ae, $e0, $16, $34, $3b, $14, $10, $d0
    db $e7, $74, $1c, $0c, $d0, $e5, $f2, $e1, $f3, $fc, $04, $fc, $e2, $00, $64, $a4
    db $00, $f6, $52, $23, $7e, $76, $8c, $e0, $f0, $46, $2a, $a0, $7f, $01, $e1, $50
    db $e1, $ef, $13, $01, $1d, $01, $4c, $c1, $38, $18, $10, $7e, $80, $a0, $06, $02
    db $0a, $02, $f4, $04, $62, $e1, $7a, $20, $c1, $10, $00, $a0, $ff, $7d, $43, $41
    db $30, $e1, $6a, $60, $c1, $00, $d0, $81, $2e, $e4, $e1, $18, $08, $e6, $80, $fc
    db $00, $c0, $e0, $81, $3c, $14, $3c, $14, $7c, $34, $e7, $ec, $64, $44, $40, $c0
    db $d0, $80, $5d, $33, $11, $7f, $73, $31, $63, $21, $ef, $61, $47, $30, $c1, $bc
    db $80, $a0, $d4, $e2, $77, $0c, $04, $04, $20, $c0, $3e, $7f, $00, $7f, $3d, $e3
    db $61, $43, $41, $30, $c5, $3e, $f0, $e0, $3b, $e6, $62, $46, $42, $f0, $a3, $90
    db $82, $a0, $c2, $c0, $fe, $e1, $b8, $c0, $d0, $a2, $7e, $80, $3b, $cc, $a0, $22
    db $fe, $80, $e3, $e2, $00, $73, $71, $e3, $01, $73, $9f, $71, $07, $03, $fe, $06
    db $20, $e1, $20, $a0, $7a, $ff, $0e, $06, $1c, $0c, $38, $10, $f6, $30, $ed, $63
    db $20, $80, $60, $20, $4e, $80, $3d, $67, $23, $df, $62, $22, $3e, $00, $1f, $00
    db $40, $82, $00, $3f, $c3, $41, $43, $01, $23, $21, $70, $c3, $80, $e1, $ff, $5f
    db $1d, $b3, $01, $5f, $51, $07, $03, $d6, $20, $81, $0c, $00, $aa, $80, $34, $62
    db $e3, $7c, $0c, $fd, $38, $d0, $20, $a2, $00, $f3, $51, $f3, $51, $d1, $53, $e0
    db $e0, $a0, $e1, $e2, $60, $3e, $44, $e3, $1c, $0c, $d7, $78, $18, $30, $a0, $e2
    db $60, $fc, $80, $6e, $2e, $36, $f8, $e0, $20, $20, $00, $a0, $0c, $04, $e0, $e9
    db $e0, $c2, $a9, $3e, $9c, $c6, $60, $e4, $2e, $60, $e6, $10, $90, $61, $36, $ff
    db $1c, $04, $fc, $08, $7a, $68, $19, $09, $e1, $08, $90, $c2, $fe, $e1, $3e, $e1
    db $c0, $e3, $48, $00, $64, $ff, $20, $66, $22, $e2, $60, $c3, $41, $c3, $fb, $41
    db $41, $40, $20, $80, $00, $ce, $40, $f7, $7f, $07, $f8, $78, $c0, $40, $7e, $00
    db $90, $21, $de, $e0, $c5, $05, $01, $7a, $02, $a0, $a3, $20, $00, $ff, $50, $00
    db $a8, $20, $44, $40, $02, $00, $dd, $01, $50, $c2, $7f, $6f, $5c, $f2, $80, $fb
    db $69, $d7, $db, $49, $49, $b0, $c4, $47, $c4, $81, $0c, $08, $ff, $00, $04, $ff
    db $f0, $00, $7c, $70, $7e, $ff, $1e, $38, $20, $1c, $1c, $e0, $00, $7c, $f3, $60
    db $0e, $60, $60, $c2, $80, $10, $58, $10, $64, $fe, $ca, $c0, $ff, $7d, $41, $ff
    db $02, $00, $03, $ef, $01, $25, $01, $16, $fc, $a0, $34, $00, $da, $17, $1a, $60
    db $ff, $c2, $60, $3e, $fc, $e1, $12, $e1, $00, $61, $7e, $40, $c1, $ff, $1d, $7d
    db $69, $1a, $0a, $06, $e1, $35, $04, $f0, $a3, $3a, $cc, $a1, $0e, $06, $10, $e3
    db $5a, $e0, $ff, $3d, $3f, $01, $1f, $1d, $03, $01, $7f, $43, $01, $3f, $c0, $c5
    db $f0, $82, $20, $81, $00, $84, $22, $0e, $e1, $fc, $00, $81, $90, $62, $28, $78
    db $28, $7a, $28, $ff, $ef, $6b, $de, $46, $4c, $a0, $c3, $20, $62, $20, $3f, $67
    db $23, $7e, $26, $7c, $1c, $70, $c1, $80, $a1, $06, $f4, $c1, $c3, $41, $f0, $a1
    db $f0, $e3, $70, $a9, $f0, $a1, $d0, $a1, $80, $f0, $a5, $e3, $25, $fa, $68, $d0
    db $20, $fa, $6a, $ad, $37, $e0, $6d, $ff, $bf, $00, $37, $00, $83, $00, $af, $fc
    db $e0, $9f, $fa, $f8, $e0, $87, $c0, $6d, $ff, $00, $02, $03, $0f, $df, $1d, $1f
    db $10, $1f, $10, $fa, $e0, $15, $0a, $fe, $91, $a0, $01, $03, $83, $c2, $fb, $7e
    db $ff, $7f, $46, $ff, $c4, $ff, $7c, $83, $c7, $f0, $e0, $ff, $80, $c1, $e0, $e1
    db $b0, $f1, $b8, $f9, $ef, $88, $f1, $98, $61, $b1, $00, $ff, $92, $bb, $ff, $d6
    db $d7, $ee, $bf, $ee, $bb, $ee, $bb, $bb, $ff, $80, $af, $61, $10, $ff, $d6, $fe
    db $e0, $11, $bc, $fa, $e0, $92, $62, $f8, $8f, $fc, $b7, $fe, $e1, $f8, $b9, $8f
    db $d3, $e1, $f4, $00, $84, $ff, $b5, $fe, $e0, $84, $77, $ff, $bd, $e7, $d0, $e3
    db $21, $ff, $ad, $fe, $e0, $b9, $23, $fa, $e0, $62, $63, $88, $ff, $db, $fe, $e2
    db $d8, $5d, $ff, $b0, $e3, $44, $ff, $6d, $fe, $e0, $6c, $fa, $e0, $fe, $b0, $e3
    db $2f, $f8, $af, $f8, $af, $fe, $2f, $77, $fe, $a3, $fe, $32, $62, $00, $00, $03
    db $c2, $02, $f7, $03, $00, $06, $f1, $44, $c1, $00, $40, $00, $5d, $c0, $1b, $e0
    db $60, $00, $30, $e1, $42, $c7, $b0, $20, $5f, $23, $00, $e1, $00, $42, $d1, $44
    db $c0, $e0, $e0, $e9, $40, $7a, $a0, $d2, $44, $85, $70, $e2, $85, $ff, $bc, $de
    db $70, $e4, $a2, $ff, $b7, $fd, $fe, $e1, $37, $fd, $fe, $d2, $42, $28, $fc, $7d
    db $d7, $7f, $da, $77, $ff, $de, $7f, $da, $3d, $e7, $18, $bc, $ff, $df, $00, $03
    db $07, $47, $ed, $15, $e0, $19, $ff, $ef, $95, $ff, $b4, $5b, $31, $02, $2c, $7e
    db $7e, $bf, $db, $f7, $dd, $ff, $4d, $be, $e0, $e2, $08, $4a, $22, $60, $3c, $1e
    db $60, $18, $82, $e0, $61, $43, $3c, $e0, $40, $45, $34, $ba, $20, $0c, $d8, $40
    db $f0, $e3, $e2, $e1, $7c, $52, $45, $b7, $d8, $ff, $9b, $12, $e2, $8b, $fe, $80
    db $e2, $c0, $75, $7f, $fe, $e3, $80, $52, $45, $84, $ff, $f5, $62, $e1, $bc, $58
    db $e0, $60, $e2, $e0, $3f, $e0, $bf, $fe, $e0, $3f, $01, $c0, $32, $44, $00, $00

    nop

    db $ff, $00, $00, $00, $7f, $00, $c0, $03, $87, $ff, $05, $8c, $0b, $98, $16, $90
    db $14, $91, $fe, $f0, $e0, $ff, $00, $00, $ce, $ff, $b5, $31, $bf, $2d, $21, $79
    db $e3, $f7, $ce, $f0, $e3, $71, $ff, $fb, $aa, $8e, $77, $04, $f6, $04, $96, $fd
    db $24, $e0, $e3, $e3, $f7, $d5, $1c, $eb, $08, $ef, $ee, $c8, $ed, $89, $d0, $e3
    db $c3, $e7, $a5, $7f, $2c, $ab, $28, $2e, $78, $dd, $f1, $c0, $e3, $ff, $9c, $fe
    db $6a, $63, $5d, $41, $7d, $c1, $fd, $a5, $e0, $e4, $78, $fd, $b5, $87, $fb, $02
    db $ef, $bb, $32, $bb, $22, $90, $e0, $fe, $01, $02, $ff, $f1, $f8, $69, $0c, $f5
    db $04, $35, $44, $73, $55, $64, $80, $e0, $fd, $ea, $f0, $0f, $f1, $fe, $e0, $f5
    db $f3, $fa, $e0, $03, $f6, $e0, $f0, $0f, $9f, $f0, $d5, $bf, $fe, $e0, $ff, $fa
    db $e0, $f0, $f6, $e2, $0f, $00, $bf, $fe, $f1, $fe, $f1, $fc, $f3, $fc, $e3, $ff
    db $ff, $f0, $60, $90, $4f, $bf, $4f, $bf, $0f, $bd, $ff, $fc, $e3, $4f, $bf, $ff
    db $f0, $e0, $eb, $6f, $d9, $9f, $e0, $ed, $fe, $e1, $fc, $f3, $fc, $e3, $ff, $f0
    db $ff, $0e, $98, $07, $8c, $1f, $b8, $3e, $a1, $ff, $21, $a3, $1e, $bf, $00, $c0
    db $7f, $00, $ff, $eb, $ce, $6b, $4e, $77, $c6, $da, $c2, $ef, $23, $e7, $1c, $3f
    db $f5, $c1, $37, $64, $77, $ff, $64, $d6, $24, $f6, $0c, $0c, $1d, $f3, $fe, $e8
    db $c0, $ff, $00, $cf, $18, $9e, $38, $cd, $bf, $99, $ef, $88, $88, $b8, $77, $f0
    db $e2, $ba, $ff, $33, $3a, $73, $dd, $f1, $56, $50, $48, $f7, $d9, $87, $cf, $c5
    db $c1, $ed, $99, $fd, $81, $7f, $e5, $81, $dd, $99, $99, $bb, $66, $d0, $e2, $ff
    db $f3, $06, $e7, $0e, $b3, $26, $bb, $22, $f7, $22, $6e, $dd, $c0, $e2, $75, $64
    db $75, $4c, $ff, $e9, $0c, $e9, $18, $11, $38, $e1, $f0, $ff, $03, $00, $fe, $00
    db $7e, $7e, $bd, $c3, $ff, $ff, $99, $ff, $99, $bf, $c1, $7f, $79, $8f, $bd, $c3
    db $7e, $ff, $00, $e1, $06, $e1, $fa, $c1, $03, $57, $0f, $f7, $0f, $50, $e1, $b0
    db $fe, $c4, $b0, $44, $e2, $1c, $02, $e3, $fa, $c1, $0c, $03, $f8, $df, $e0, $08
    db $e3, $fe, $c1, $0f, $40, $b0, $0f, $ff, $00, $e3, $de, $c5, $e0, $eb, $d8, $c1
    db $ec, $08, $e5, $fe, $c3, $f8, $f7, $80, $e3, $ef, $91, $f7, $f7, $89, $ff, $99
    db $80, $e1, $3c, $3c, $5c, $64, $ff, $7c, $44, $7c, $64, $3c, $24, $7e, $66, $ef
    db $7e, $42, $3c, $ff, $60, $e3, $f7, $f9, $b9, $bf, $c7, $ef, $9f, $ff, $81, $7e
    db $f0, $e2, $f7, $df, $99, $7e, $62, $ff, $f9, $d0, $e3, $3e, $3e, $ff, $5e, $62
    db $be, $c2, $fe, $92, $ff, $93, $bf, $ff, $81, $ff, $f3, $0c, $ff, $ff, $e0, $81
    db $6f, $ff, $9f, $fd, $83, $e0, $e5, $7e, $7e, $e2, $e0, $e1, $9e, $f0, $e0, $1c
    db $e0, $20, $e1, $e0, $e1, $f5, $fb, $2e, $ff, $32, $3a, $26, $3c, $24, $3c, $24
    db $18, $a8, $a0, $e4, $fc, $c3, $00, $e3, $01, $02, $c0, $01, $fa, $e0, $f1, $12
    db $f6, $e0, $00, $00, $c0, $0a, $e1, $b0, $02, $c0, $f8, $c1, $fe, $c1, $fc, $08
    db $e1, $fc, $a1, $0e, $01, $fe, $f1, $0f, $00, $e6, $20, $c1, $00, $f0, $fe, $a1
    db $fa, $e1, $40, $b0, $ef, $7f, $1f, $cf, $3f, $cf, $3f, $0f, $ff, $fc, $e3, $ef
    db $cf, $3f, $0c, $03, $ad, $c0, $00, $0c, $03, $ff, $0f, $00, $ff, $f0, $0c, $03
    db $08, $07, $ff, $c0, $30, $cf, $3f, $00, $f0, $c0, $30, $fb, $80, $70, $f8, $e1
    db $00, $f0, $06, $4f, $0f, $ff, $49, $0f, $4d, $07, $4d, $07, $45, $07, $ff, $45
    db $02, $47, $3f, $00, $e0, $f0, $f0, $f7, $10, $f0, $50, $fe, $e0, $10, $e0, $70
    db $80, $ff, $c0, $ff, $00, $0e, $5f, $1f, $51, $1f, $ff, $55, $1f, $5d, $0f, $5b
    db $1f, $51, $0e, $71, $5f, $e0, $ef, $d2, $80, $fe, $ec, $03, $ff, $38, $ec, $e0
    db $7d, $1f, $e8, $e0, $3f, $ff, $7f, $ff, $37, $f0, $e0, $dd, $1f, $ec, $e0, $03
    db $ff, $07, $e4, $c1, $ff, $01, $ba, $f0, $e2, $e3, $f2, $e0, $33, $ff, $cf, $d4
    db $e0, $67, $bf, $ff, $9b, $ff, $27, $ff, $c3, $ec, $e4, $ff, $cb, $ff, $00, $00
    db $e0, $03, $00, $e2, $f8, $e1, $07, $0f, $e1, $f0, $04, $e2, $06, $e1, $f6, $e3
    db $00, $a1, $0c, $03, $0e, $f1, $01, $02, $e1, $30, $e1, $04, $e1, $00, $f0, $40
    db $b0, $1e, $04, $c1, $40, $b0, $00, $f0, $08, $e5, $fe, $c3, $c1, $a0, $ca, $bc
    db $80, $f0, $b0, $80, $f0, $b0, $80, $f4, $e1, $1f, $f0, $55, $3f, $fe, $e0, $ff
    db $fa, $e0, $70, $f6, $e2, $00, $8c, $e1, $f8, $3c, $e2, $f8, $e3, $ff, $ee, $f8
    db $ff, $e0, $fc, $c3, $ff, $f7, $88, $f0, $8f, $df, $20, $e1, $1e, $fb, $80, $7f
    db $27, $e0, $07, $8f, $73, $79, $87, $7f, $85, $7b, $f8, $07, $04, $fb, $00, $30
    db $e0, $57, $83, $ff, $9f, $fc, $e0, $87, $f8, $e0, $8f, $f4, $e0, $ea, $f0, $c1
    db $39, $00, $e4, $2f, $e4, $c0, $31, $ff, $0e, $eb, $ff, $f1, $dc, $c0, $73, $a4
    db $e4, $1c, $ff, $23, $8a, $ce, $c0, $f8, $f2, $c0, $38, $f0, $c2, $c0, $c3, $e2
    db $e1, $f1, $aa, $d6, $e0, $31, $b2, $c2, $38, $d4, $c0, $f8, $a8, $c0, $23, $f8
    db $d2, $e0, $a1, $ce, $4b, $c0, $e1, $1f, $c0, $3f, $ec, $f1, $7f, $fe, $e1, $70
    db $e0, $41, $60, $1f, $00, $8f, $80, $ff, $87, $80, $e7, $e4, $9f, $fc, $cf, $f8
    db $ff, $ff, $ff, $8f, $f8, $9f, $f0, $9f, $f7, $df, $9e, $f7, $9f, $f0, $8f, $f2
    db $e0, $ff, $ff, $ff, $f7, $dd, $f7, $5d, $f7, $5d, $ef, $5d, $ef, $ff, $41, $be
    db $e3, $61, $a1, $fc, $07, $fc, $cf, $07, $f8, $df, $70, $fe, $e2, $04, $e1, $61
    db $ff, $57, $8e, $ff, $70, $40, $e0, $38, $7a, $c0, $1c, $32, $c0, $f5, $c3, $40
    db $c0, $06, $4c, $e0, $09, $ff, $e6, $ff, $fd, $18, $22, $c0, $20, $ff, $98, $ff
    db $47, $ff, $d5, $30, $f0, $e0, $c6, $fa, $e0, $00, $90, $80, $30, $ff, $d5, $ce
    db $38, $c0, $fc, $16, $c0, $70, $02, $c0, $65, $ff, $5f, $89, $ff, $32, $ff, $c4
    db $d0, $e2, $08, $f2, $a0, $25, $3c, $fe, $a0, $64, $f1, $80, $3a, $e1, $f0, $20
    db $ec, $94, $c3, $e0, $20, $e7, $83, $c6, $b9, $a6, $f0, $4d, $a1, $ad, $91, $7f
    db $c2, $ff, $3e, $fc, $3c, $e3, $67, $b7, $d9, $77, $ff, $98, $7f, $90, $ff, $b9
    db $3f, $30, $1f, $ff, $10, $df, $d0, $0f, $08, $ef, $e8, $bf, $a7, $b8, $9f, $98
    db $22, $60, $79, $80, $80, $fe, $e4, $81, $fe, $32, $c3, $19, $ef, $b8, $ed, $ba
    db $ee, $bb, $6f, $ef, $bb, $fe, $1b, $61, $81, $e0, $bf, $fe, $e0, $ef, $3f, $e0
    db $3f, $60, $f8, $e0, $ff, $ff, $e1, $ef, $ff, $1e, $ff, $60, $3e, $c0, $20, $ff
    db $4f, $74, $c8, $e0, $f0, $e1, $0c, $dd, $40, $07, $ff, $78, $28, $c0, $dd, $3c
    db $32, $80, $cd, $ff, $02, $16, $e0, $01, $ff, $55, $fe, $18, $a0, $7f, $22, $80
    db $86, $22, $c0, $40, $0e, $c0, $55, $60, $12, $c0, $30, $12, $80, $33, $06, $e0
    db $38, $02, $c0, $45, $70, $4c, $c2, $ff, $c2, $e0, $c0, $c1, $f0, $e1, $0c, $1a
    db $a0, $dc, $30, $a0, $1f, $41, $fc, $00, $01, $15, $60, $3f, $00, $7f, $60, $00
    db $40, $00, $86, $00, $39, $fa, $e0, $fd, $9f, $f4, $e0, $fc, $00, $02, $01, $00
    db $80, $cd, $c0, $fe, $e9, $00, $bf, $01, $ee, $df, $21, $f8, $00, $bd, $07, $f4
    db $e5, $7f, $ff, $0f, $7f, $5e, $20, $0c, $6b, $00, $03, $b0, $e3, $fc, $0f, $40
    db $00, $f7, $de, $e0, $fe, $d4, $e4, $ff, $ff, $bf, $e1, $bd, $e3, $9f, $ed, $f6
    db $fe, $e1, $9d, $f7, $8d, $82, $e1, $fd, $23, $ff, $ff, $d7, $bf, $d6, $ff, $16
    db $ff, $36, $fe, $61, $61, $5c, $f7, $fc, $b7, $fc, $57, $fe, $1f, $17, $ff, $11
    db $fd, $d3, $90, $80, $70, $e7, $60, $e0, $bf, $0f, $5f, $00, $e1, $00, $1e, $58
    db $e0, $9f, $5b, $00, $20, $f8, $01, $06, $8f, $f0, $e0, $0c, $d8, $60, $f7, $07
    db $00, $78, $50, $e1, $f1, $f8, $00, $cd, $9b, $00, $02, $30, $e7, $09, $5f, $30
    db $e8, $c8, $00, $32, $9c, $b0, $e7, $0a, $e1, $02, $39, $7c, $0e, $e0, $fe, $e8
    db $3f, $e0, $f7, $c0, $fe, $e7, $00, $41, $10, $81, $0e, $81, $81, $0f, $13, $bf
    db $0f, $31, $0f, $60, $0f, $90, $12, $40, $b4, $ff, $f0, $f8, $f0, $b9, $f0, $f3
    db $f0, $b3, $63, $f0, $b7, $0f, $80, $42, $83, $fc, $e3, $f7, $0f, $42, $85, $f6
    db $3c, $83, $ff, $f0, $d0, $b6, $01, $fe, $02, $fc, $f7, $04, $fc, $04, $61, $66
    db $e0, $1f, $18, $07, $57, $04, $03, $02, $90, $b0, $03, $60, $c2, $1e, $83, $a4
    db $9a, $00, $e5, $00, $50, $c1, $03, $47, $00, $e8, $28, $00, $91, $c9, $fb, $00
    db $e8, $f0, $e0, $7b, $c0, $c9, $30, $c0, $c1, $e0, $80, $3b, $03, $50, $c2, $e0
    db $c3, $00, $c7, $e0, $c3, $5b, $c1, $00, $c6, $39, $4b, $7c, $60, $14, $20, $f3
    db $10, $24, $20, $e1, $f7, $16, $22, $f0, $10, $23, $0a, $21, $f0, $b2, $f0, $f7
    db $00, $f8, $0b, $f8, $ff, $0d, $f8, $0c, $f8, $0d, $ff, $3f, $c1, $fd, $79, $40
    db $40, $ff, $41, $c1, $20, $e0, $10, $fd, $70, $fe, $e1, $e0, $e0, $3c, $3c, $07
    db $07, $fe, $51, $40, $f0, $cf, $cc, $47, $46, $23, $23, $bf, $03, $03, $07, $07
    db $9f, $9e, $c2, $cd, $07, $df, $4c, $0f, $48, $0f, $4b, $fe, $e0, $48, $07, $fb
    db $4c, $03, $f0, $20, $fb, $6a, $fb, $2a, $fb, $ff, $aa, $ff, $a4, $ff, $31, $ce
    db $7b, $84, $7d, $ce, $13, $40, $84, $ff, $85, $ff, $bd, $fa, $e0, $ef, $bc, $ff
    db $85, $7a, $51, $40, $e1, $30, $f1, $d5, $90, $fe, $e0, $10, $f8, $e1, $63, $75
    db $a0, $1f, $56, $92, $fe, $e0, $50, $fe, $e0, $f8, $e0, $09, $d0, $20, $bf, $80
    db $85, $7b, $ff, $b5, $fe, $e0, $84, $ff, $cc, $33, $21, $40, $ff, $7d, $44, $7d
    db $44, $79, $dc, $fd, $c4, $ff, $f9, $5c, $fd, $44, $bb, $fc, $fe, $00, $7d, $20
    db $0a, $c0, $93, $0f, $91, $0f, $d1, $fe, $e0, $a5, $f1, $60, $40, $96, $0a, $c0
    db $06, $c1, $f9, $fe, $e0, $bd, $32, $fe, $e0, $f0, $e0, $c4, $fc, $e3, $f7, $0f
    db $e4, $c9, $e0, $c1, $9c, $2f, $61, $5c, $40, $f8, $fe, $f1, $2a, $04, $59, $c0
    db $e3, $7e, $39, $60, $20, $df, $ff, $00, $fb, $04, $22, $40, $ef, $01, $ff, $00
    db $c7, $6f, $20, $fc, $03, $03, $f7, $fc, $fc, $03, $20, $42, $7f, $ff, $3f, $df
    db $03, $3f, $1f, $da, $24, $50, $cb, $00, $a0, $50, $ca, $00, $a0, $50, $ca, $18
    db $00, $a0, $20, $a7, $30, $80, $07, $4f, $d0, $8b, $e0, $a0, $d0, $85, $02, $70
    db $82, $7d, $2f, $61, $a0, $a3, $f0, $82, $c0, $e8, $d0, $82, $4e, $80, $22, $10
    db $38, $b8, $fa, $c0, $00, $e9, $e0, $c1, $9f, $06, $e6, $da, $a1, $7c, $de, $a0
    db $4e, $27, $fc, $fd, $f2, $f3, $8c, $9b, $02, $ff, $e7, $f3, $8f, $a7, $5f, $cf
    db $3f, $9f, $43, $7f, $8f, $d4, $60, $4b, $c1, $95, $27, $40, $41, $70, $f0, $e8
    db $fc, $56, $c3, $4e, $c2, $57, $08, $5c, $3f, $00, $8f, $f7, $d9, $df, $71, $2d
    db $40, $61, $ff, $c1, $7f, $ff, $dd, $22, $77, $ff, $00, $f9, $0c, $fd, $15, $64
    db $fe, $e0, $04, $f8, $e1, $9b, $50, $c0, $e2, $a5, $da, $a1, $fb, $04, $4e, $e0
    db $a4, $2a, $ff, $2e, $ff, $60, $f7, $9f, $f1, $0e, $0b, $21, $82, $ff, $82, $fd
    db $be, $8f, $40, $b8, $a8, $38, $a8, $10, $88, $c0, $f9, $ff, $08, $f9, $08, $f1
    db $b8, $e1, $b0, $e1, $1f, $a0, $e1, $a0, $43, $e0, $10, $80, $21, $6d, $04, $c0
    db $7f, $93, $0f, $b1, $0f, $b3, $0f, $71, $fe, $e0, $57, $f0, $0f, $93, $0a, $80
    db $f7, $08, $80, $f7, $20, $e4, $50, $40, $05, $a1, $40, $f6, $02, $42, $01, $7f
    db $08, $c1, $e0, $d0, $24, $97, $c1, $00, $77, $a2, $40, $78, $9e, $40, $80, $63
    db $f0, $2f, $00, $e0, $00, $c0, $ed, $00, $80, $80, $64, $ff, $fc, $ff, $0e, $00
    db $8a, $00, $ff, $41, $df, $7b, $ff, $de, $42, $ee, $4a, $5e, $04, $2d, $ff, $ff
    db $ee, $00, $7a, $50, $7e, $30, $e7, $79, $ff, $c6, $42, $c6, $42, $7e, $06, $3c
    db $ff, $ff, $3e, $00, $1f, $15, $1f, $01, $5f, $ab, $ff, $aa, $20, $ef, $45, $75
    db $45, $1a, $ff, $ff, $0e, $00, $0f, $05, $2f, $01, $77, $af, $df, $e8, $60, $46
    db $40, $03, $b0, $a0, $0e, $00, $ff, $9b, $01, $cf, $41, $df, $61, $df, $43, $df
    db $fe, $5a, $7e, $24, $3d, $3f, $2e, $25, $00, $ff, $3a, $10, $f5, $01, $7a, $b5
    db $6d, $25, $ff, $ac, $24, $74, $44, $18, $ff, $2a, $00, $ff, $7f, $05, $3d, $2d
    db $7e, $81, $3f, $37, $ff, $42, $02, $3c, $00, $1e, $ff, $0a, $00, $ff, $1e, $04
    db $28, $08, $50, $bf, $20, $00, $df, $10, $00, $08, $00, $04, $f0, $e0, $8f, $05
    db $ff, $ff, $41, $cf, $77, $cc, $44, $cc, $44, $bf, $58, $08, $28, $ff, $0e, $04
    db $d0, $e0, $39, $ff, $02, $ff, $40, $00, $a0, $20, $7e, $00, $fd, $3f, $c0, $e1
    db $01, $3f, $2f, $08, $f7, $44, $ff, $04, $40, $00, $7c, $40, $1f, $ff, $4a, $ff
    db $00, $6f, $25, $65, $25, $62, $bd, $63, $bf, $21, $65, $21, $3a, $02, $1c, $b0
    db $e0, $ff, $ff, $01, $7f, $77, $3c, $c7, $3c, $14, $3c, $cf, $04, $1c, $0c, $08
    db $e0, $e2, $ee, $e0, $b7, $68, $f7, $20, $60, $20, $90, $e1, $4a, $00, $7f, $25
    db $df, $fd, $01, $fe, $df, $60, $f0, $e0, $38, $00, $fd, $1c, $f0, $e1, $05, $fd
    db $3d, $7e, $a1, $af, $bf, $2f, $e0, $40, $de, $40, $4f, $60, $e2, $35, $ff, $15
    db $7c, $83, $7e, $3c, $23, $21, $3f, $fd, $03, $60, $e1, $3f, $05, $df, $1b, $63
    db $fd, $ef, $03, $01, $05, $01, $a0, $e6, $67, $2c, $df, $fb, $50, $10, $b0, $e5
    db $2f, $05, $35, $05, $58, $ff, $bf, $a0, $20, $c0, $40, $7c, $00, $3e, $a0, $3f
    db $0f, $ff, $ff, $5d, $da, $f0, $c3, $60, $c7, $ea, $b0, $c0, $74, $5f, $30, $e6
    db $79, $c7, $43, $60, $c3, $3a, $60, $c0, $d7, $15, $05, $5c, $60, $c6, $0a, $60
    db $c0, $25, $05, $fd, $70, $60, $c6, $0a, $00, $9f, $01, $cf, $4b, $ef, $de, $61
    db $de, $42, $60, $d3, $0e, $00, $4f, $ff, $05, $6f, $21, $67, $bb, $e6, $62, $c3
    db $af, $41, $c3, $41, $41, $30, $c0, $8b, $30, $c0, $ff, $df, $07, $f8, $78, $c0
    db $40, $90, $c1, $0e, $00, $73, $0b, $01, $ae, $c0, $00, $e2, $7a, $02, $3c, $f0
    db $e2, $ff, $2f, $01, $57, $af, $a8, $20, $44, $40, $ff, $02, $00, $01, $ff, $1e
    db $00, $fb, $01, $ff, $7f, $61, $5f, $af, $7c, $28, $fb, $69, $97, $db, $49, $49
    db $00, $ee, $2a, $e0, $c0, $6e, $c0, $dd, $7f, $73, $31, $63, $21, $ef, $61, $47
    db $00, $c0, $fe, $f0, $e0, $03, $7e, $ef, $fe, $00, $7f, $77, $fb, $0c, $04, $10
    db $c1, $3f, $15, $3f, $01, $7f, $7f, $bd, $e3, $61, $47, $43, $3e, $06, $40, $c1
    db $f3, $2f, $05, $f0, $e0, $70, $e0, $0e, $06, $3c, $0c, $c9, $18, $30, $e2, $80
    db $e3, $03, $78, $e1, $30, $c3, $00, $7f, $df, $bb, $66, $22, $26, $22, $d0, $e3
    db $ef, $05, $ff, $75, $75, $e2, $1d, $73, $71, $07, $03, $f7, $fe, $06, $7c, $d0
    db $e3, $03, $7e, $f7, $1c, $bf, $0c, $38, $10, $f6, $30, $63, $00, $c5, $bd, $cf
    db $67, $23, $62, $22, $34, $a0, $a0, $a2, $c5, $45, $3f, $42, $bd, $03, $01, $07
    db $03, $20, $a1, $90, $e4, $9f, $bd, $ff, $41, $5e, $5a, $ce, $a0, $c0, $c1, $01
    db $ef, $7f, $07, $3c, $f7, $60, $e1, $7c, $0c, $38, $fe, $b0, $a0, $af, $05, $f5
    db $55, $f2, $5d, $53, $d9, $51, $a0, $e5, $80, $a0, $3f, $fe, $9c, $a0, $1c, $0c
    db $f7, $78, $18, $30, $80, $a3, $05, $7c, $a3, $6e, $c5, $2e, $ae, $a1, $20, $00
    db $df, $ff, $ff, $00, $cc, $4f, $05, $e7, $65, $25, $64, $60, $c6, $e0, $81, $cd
    db $41, $f6, $a1, $0f, $60, $c5, $e0, $c7, $60, $c3, $00, $c3, $50, $60, $c6, $0a
    db $fb, $00, $1f, $80, $c1, $ef, $5c, $08, $7a, $28, $00, $60, $d1, $00, $00

    nop

    db $eb, $0a, $ff, $4f, $88, $01, $00, $00, $1f, $12, $ff, $03, $f6, $00, $49, $00
    db $c8, $12, $e0, $19, $1f, $12, $f6, $00, $4b, $03, $c8, $12, $1f, $12, $f6, $00
    db $f2, $03, $4b, $03, $1f, $12, $f6, $00, $ff, $00, $80, $7d, $ff, $67, $6a, $00
    db $80, $7e, $1f, $12, $f6, $00, $80, $7d, $8e, $7f, $80, $7e, $1f, $12, $f6, $00

    ret


    ld b, c
    rst $38
    rst $38
    rst $30
    or $00
    rst $38
    ldh [$da], a
    pop hl
    ld c, d
    ld c, d
    rst $38
    ld c, d
    ld c, e
    ld c, h
    ld b, d
    nop
    ld bc, $0302
    ccf
    inc b
    dec b
    ld b, $07
    sbc [hl]
    sbc a
    db $ec
    rst $38
    ret c

    db $e3
    cp $c0
    db $e3
    xor h
    xor l
    ld e, d
    ld c, d
    ld c, d
    ld e, e
    ld e, h
    rst $38
    ld b, l
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $c7
    rla
    ld d, l
    dec l
    db $ec
    rst $38
    ret c

    db $e3
    add b
    pop hl
    sbc h
    add l
    rst $38
    cp h
    cp l
    and b
    and c
    and d
    ld l, e
    ld l, h
    and a
    rst $38
    ld h, a
    and e
    and h
    and l
    and [hl]
    add c
    add d
    add e
    ld a, e
    add h
    dec a
    db $ec
    rst $20
    and a
    and a
    ld h, a
    ld h, [hl]
    ei
    ldh [$f3], a
    and a
    ld h, a
    db $ec
    ld a, [c]
    ld b, b
    pop hl
    rrca
    sub l
    sub [hl]
    sub a
    rst $38
    or b
    or c
    or d
    db $76
    sub b
    or a
    ld [hl], a
    or e
    rst $38
    or h
    or l
    or [hl]
    sub c
    sub d
    sub e
    sub h
    dec l
    cp $ec
    db $e4
    jr nc, jr_00e_69d1

    or a
    or a
    or a
    ld [hl], a
    ld [hl-], a
    pop af
    inc sp
    ld a, [$ece1]
    ld a, [c]
    nop
    pop hl
    dec e
    ld l, c
    ld l, c
    ld hl, $6827
    ld l, c
    ld l, c
    db $fd
    ldh [$fc], a
    and $1e
    db $ec
    add sp, -$06
    push hl
    cp h
    db $ec
    ld a, [c]
    ret nz

    pop bc
    dec c
    ld l, c
    ld l, c
    ld [hl+], a
    ret nz

    db $ec
    ld c, $10
    db $ec
    add sp, -$46
    push hl
    db $ec
    ld a, [c]

jr_00e_69d1:
    add b
    db $e4
    inc hl
    add b
    ldh a, [$ec]
    push hl
    add b
    jp hl


    inc b
    db $ec
    xor $80
    db $e4
    inc h
    add b
    ldh a, [$ec]
    push hl
    add b

jr_00e_69e5:
    jp hl


    db $ec
    xor $00
    db $e4
    ld b, c
    dec h
    nop
    ldh a, [$ec]
    push hl
    nop
    jp hl


    db $ec
    xor $00
    db $e4
    ld h, $00
    ldh a, [rNR10]
    db $ec
    push hl
    nop
    jp hl


    db $ec
    xor $80
    call nz, $8027
    ret nc

    db $ec
    push hl
    add b
    ret


    cp h
    db $ec
    xor $40
    and c
    dec bc
    ld l, c
    ld l, c
    jr z, jr_00e_6a53

    call z, $f00c
    db $ec
    add sp, $3a
    push bc
    db $ec
    ld a, [c]
    nop
    and c
    dec de
    ld l, c
    ld l, c
    jr jr_00e_69e5

    nop
    call z, $ec1c
    add sp, -$06
    and l
    db $ec
    ld a, [c]
    ret nz

    add c
    dec hl
    ld c, l
    bit 1, [hl]
    ld c, a
    ret nz

    xor h
    inc l
    db $ec
    add sp, -$46
    and l
    inc l
    dec hl
    ccf
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl-], a
    and e
    inc l
    and e
    dec h
    inc l
    add b
    add c
    ld l, $e8
    and $00
    and [hl]
    cpl
    db $ec
    rst $20

jr_00e_6a53:
    nop
    and [hl]
    dec hl
    cpl
    ld l, $2c
    xor a
    cpl
    ld b, b
    add c
    ld a, $00
    and h
    ld d, $a0
    ld a, [c]
    nop
    and l
    ccf
    db $ec
    db $e4
    nop
    xor c
    ccf
    ld a, $69
    ld hl, $2095
    inc l
    xor h
    ccf
    nop
    add c
    add hl, de
    add sp, -$19
    db $fc
    add l
    ld a, [de]
    ld d, b
    db $ec
    add sp, -$06
    add l
    db $ec
    pop hl
    db $ec
    adc l
    ld a, [de]
    ret nz

    ld h, c
    add hl, hl
    add sp, -$19
    ld b, d
    cp h
    add l
    ld a, [hl+]
    db $ec
    add sp, -$46
    add l
    db $ec
    pop hl
    db $ec
    adc l
    ld a, [hl+]
    add b
    ld h, c
    add hl, bc
    add hl, sp
    add sp, -$19
    ld a, h
    add l
    ld a, [hl-]
    db $ec
    add sp, $7a
    add l
    db $ec
    pop hl
    db $ec
    adc l
    dec h
    ld a, [hl-]
    ld b, b
    ld h, c
    ld a, b
    add sp, -$19
    inc a
    add l
    ld a, c
    db $ec
    add sp, $3a
    add l
    sub h
    db $ec
    pop hl
    db $ec
    adc l
    ld a, c
    nop
    ld h, c
    adc b
    add sp, -$19
    db $fc
    ld h, l
    adc c
    ld d, b
    db $ec
    add sp, -$06
    ld h, l
    db $ec
    pop hl
    db $ec
    adc l
    adc c
    ret nz

    ld b, c
    sbc b
    add sp, -$19
    ld b, d
    cp h
    ld h, l
    sbc c
    db $ec
    add sp, -$46
    ld h, l
    db $ec
    pop hl
    db $ec
    adc l
    sbc c
    add b
    ld b, c
    add hl, bc
    xor b
    add sp, -$19
    ld a, h
    ld h, l
    xor c
    db $ec
    add sp, $7a
    ld h, l
    db $ec
    pop hl
    db $ec
    adc l
    dec h
    xor c
    ld b, b
    ld b, c
    cp b
    add sp, -$19
    inc a
    ld h, l
    cp c
    db $ec
    add sp, $3a
    ld h, l
    sub h
    db $ec
    pop hl
    db $ec
    adc l
    cp c
    nop
    ld b, c
    sbc d
    add sp, -$19
    db $fc
    ld b, l
    sbc e
    db $fc
    db $ec
    add sp, -$06
    ld b, l
    sbc e
    sbc d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    db $eb
    ld h, h
    ld h, l
    ld a, [$9be9]
    ret nz

    ld hl, $5daa
    ld e, [hl]
    push hl
    ld e, a
    ret nz

    ld c, h
    xor e
    db $ec
    add sp, -$46
    ld b, l
    xor e
    xor d
    ld l, l
    ld d, e
    ld l, [hl]
    ld l, a
    db $ec
    db $ed
    add b
    ld hl, $a87a
    rst $28
    ld a, e
    db $ec
    pop af
    rla
    cp d
    xor [hl]
    xor a
    cp $ed
    cp e
    add b
    ld [c], a
    xor b
    rst $20
    add b
    rst $20
    nop
    sub h
    db $f4
    db $fc
    pop af
    xor b
    pop af
    sub h
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $34
    ld [$6968], a
    jr nz, jr_00e_6b82

    ld [hl+], a
    inc hl
    inc h
    rra
    dec h
    ld h, $27
    jr z, jr_00e_6b82

    jp nc, $ffff

    rst $38
    rst $38
    rst $38
    ld [c], a
    or l
    jp z, $ff41

    rst $38
    db $e3
    ld [c], a
    ret nz

    ld sp, hl
    ld c, d
    ld c, e
    ld c, h
    rst $38
    ld b, c
    ld b, c
    ld b, d
    nop

jr_00e_6b82:
    ld bc, $0302
    inc b
    rra
    dec b
    ld b, $07
    sbc [hl]
    sbc a
    db $ec
    pop af
    ld b, b
    push de
    nop
    nop
    nop
    ld c, c
    ld c, $ff
    rst $38
    rst $30
    or $09
    rst $38
    ldh [$da], a
    pop hl
    dec c
    rst $38
    pop hl
    and b
    ld a, [c]
    ld [c], a
    xor $e5
    db $ec
    rst $38
    add $e1
    ret nz

    ld [$c00a], a
    push hl
    ld a, [bc]
    nop
    ret nz

    rst $20
    db $ec
    db $fc
    add b
    ld [c], a
    adc c
    push hl
    ld hl, sp-$19
    ld h, a
    db $e3
    db $ec
    rst $38
    ret nz

    rst $38
    ld l, $c0
    rst $38
    add hl, bc
    ld c, $08
    rst $38
    xor $0e
    db $ec
    rst $38
    ret c

    db $e3
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    call nc, $c0ff
    rst $38
    call nc, $c0ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $ec
    rst $38
    ret nz

    rst $38
    db $ec
    rst $38
    ret nz

    rst $38
    ld d, b
    xor h
    ld [$bf40], a
    ld b, b
    cp a
    ret nz

    ldh a, [rIF]
    call nc, $0fef
    db $ec
    ld a, [c]
    nop
    ld e, b
    rst $28
    push bc
    ld [c], a
    add sp, -$0f
    db $ec
    rst $38
    ret nz

    rst $38
    db $ec
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rla
    add hl, bc
    add hl, bc
    inc c
    add b
    rst $08
    inc c
    db $ec
    rst $38
    ret c

    db $e3
    ret nz

    rst $38
    ld a, [bc]
    ret nz

    rst $38
    dec bc
    nop
    rst $08
    dec bc
    db $ec
    rst $38
    ret c

    db $e3
    jp nc, $c042

    xor a
    ld bc, $ec0a
    rst $38
    ret c

    db $e3
    ret nz

    rst $38
    ret nz

    rst $38
    call nc, $acff
    db $e4
    cp $f0
    nop
    ret nz

    rst $38
    add b
    rst $38
    and a
    ld a, [c]
    rst $38
    rst $38
    add b
    rst $38
    inc d
    ldh a, [$fc]
    pop af
    sbc d
    rst $38
    nop
    sub h
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    ld l, d
    add b
    ld l, c
    jp nc, $c0ff

    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    ld l, h
    rst $38
    rst $38
    ld [c], a
    pop hl
    ret nz

    ld sp, hl
    dec c
    dec c
    ld bc, $de0d
    add sp, -$4c
    db $e3
    db $ec
    db $ed
    add b
    push af
    nop
    nop
    nop
    call Call_00e_4373
    call Call_00e_6ca8
    ld a, $01
    ld hl, $6d47
    call Call_000_23e8

jr_00e_6c88:
    ld b, $00
    ldh a, [$94]
    and $0b
    jr nz, jr_00e_6ca4

    ld a, [$c834]
    cp $03
    jr z, jr_00e_6c9f

    ld b, $01
    ldh a, [$94]
    and $20
    jr nz, jr_00e_6ca4

jr_00e_6c9f:
    call Call_000_2e3b
    jr jr_00e_6c88

jr_00e_6ca4:
    rst $08
    ld e, h
    ld a, b
    ret


Call_00e_6ca8:
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5480
    ld de, $d200
    call Call_000_1f2f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d200
    ld de, $9200
    ld c, $60
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5e51
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $40
    call Call_000_2096
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $6b93
    ld de, $d000
    call Call_000_1f2f
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $6921
    ld de, $d000
    call Call_000_1f2f
    ld hl, $68e1
    ld de, $0008
    call Call_000_05a8
    call Call_00e_42f0
    call Call_00e_6e61
    ld a, [$c837]
    cp $0a
    jr c, jr_00e_6d36

    ld a, $0c
    ld [$c323], a

jr_00e_6d36:
    ld a, $1e
    ld [$c32c], a
    ld a, $01
    rst $18
    inc b
    dec bc
    rst $18
    inc a
    inc b
    call Call_000_0371
    ret


    call Call_00e_443a
    ld de, $0500
    ld hl, $0900
    ld bc, $0240
    call Call_000_27b4
    ld de, $1100
    ld hl, $0900
    ld bc, $0240
    call Call_000_27b4
    ld a, [$c834]
    cp $03
    jr z, jr_00e_6d9d

    ld hl, $401d
    ld de, $0100
    ld bc, $010a
    call Call_00e_4643
    ld de, $0580
    ld l, $01
    ld h, $12

jr_00e_6d7c:
    push hl
    ld a, [$c836]
    ld h, a
    rst $18
    ld c, h
    ld [bc], a
    jr z, jr_00e_6d8f

    ld hl, $0180
    ld bc, $0730
    call Call_000_27fa

jr_00e_6d8f:
    pop hl
    inc d
    ld a, l
    cp $09
    jr nz, jr_00e_6d99

    inc d
    inc d
    inc d

jr_00e_6d99:
    inc l
    dec h
    jr nz, jr_00e_6d7c

jr_00e_6d9d:
    ret


Call_00e_6d9e:
    ld h, $09

jr_00e_6da0:
    push hl
    push de
    ld a, [$c836]
    ld h, a
    rst $18

    db $0c, $13

    call Call_00e_4532
    pop de
    pop hl
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00e_6db5

    inc d

jr_00e_6db5:
    inc l
    dec h
    jr nz, jr_00e_6da0

    ret


Call_00e_6dba:
    inc h
    dec h
    ret z

jr_00e_6dbd:
    push hl
    push de
    ld a, [bc]
    and $0f
    call Call_00e_4532
    inc de
    inc de
    ld a, [bc]
    swap a
    and $0f
    call Call_00e_4532
    inc de
    ld a, [$c836]
    ld h, a
    rst $18
    inc c
    inc de
    ld h, a
    ld a, [bc]
    and $0f
    sub h
    call $458a
    pop de
    pop hl
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00e_6de8

    inc d

jr_00e_6de8:
    inc bc
    inc l
    dec h
    jr nz, jr_00e_6dbd

    ret


Call_00e_6dee:
    push de
    ld c, $00

jr_00e_6df1:
    push hl
    ld a, [$c836]
    ld h, a
    rst $18

    db $0c, $13

    add c
    ld c, a
    pop hl
    inc l
    dec h
    jr nz, jr_00e_6df1

    pop de
    ld h, $00
    ld l, c
    ld a, $02
    call Call_00e_4513
    ret


Call_00e_6e0a:
    inc h
    dec h
    ret z

    push hl
    push de
    ld e, c
    ld d, b
    ld bc, $0000

jr_00e_6e14:
    ld a, [de]
    and $0f
    add b
    ld b, a
    ld a, [de]
    swap a
    and $0f
    add c
    ld c, a
    inc de
    dec h
    jr nz, jr_00e_6e14

    pop de
    ld h, $00
    ld l, b
    ld a, $03
    call Call_00e_4513
    inc de
    inc de
    ld h, $00
    ld l, c
    ld a, $02
    call Call_00e_4513
    pop hl
    ld c, $00

jr_00e_6e3a:
    push hl
    ld a, [$c836]
    ld h, a
    rst $18
    inc c
    inc de
    add c
    ld c, a
    pop hl
    inc l
    dec h
    jr nz, jr_00e_6e3a

    inc de
    ld a, b
    sub c
    call $458a
    ret


    ld a, [$c4be]
    ld l, a
    ld de, $c8ac
    call Call_00e_6edb
    ld de, $d708
    call $458a
    ret


Call_00e_6e61:
    ld de, $d145
    ld l, $01
    call Call_00e_6d9e
    ld de, $d445
    ld l, $0a
    call Call_00e_6d9e
    ld a, [$c480]
    ld h, a
    ld bc, $c8ac
    ld de, $d149
    ld l, $01
    call Call_00e_6dba
    ld a, [$c481]
    ld h, a
    ld bc, $c8b5
    ld de, $d449
    ld l, $0a
    call Call_00e_6dba
    ld de, $d385
    ld l, $01
    ld h, $09
    call Call_00e_6dee
    ld de, $d685
    ld l, $0a
    ld h, $09
    call Call_00e_6dee
    ld de, $d705
    ld l, $01
    ld h, $12
    call Call_00e_6dee
    ld a, [$c480]
    ld h, a
    ld bc, $c8ac
    ld de, $d388
    ld l, $01
    call Call_00e_6e0a
    ld a, [$c481]
    ld h, a
    ld bc, $c8b5
    ld de, $d688
    ld l, $0a
    call Call_00e_6e0a
    ld a, [$c4be]
    ld h, a
    ld bc, $c8ac
    ld de, $d708
    ld l, $01
    call Call_00e_6e0a
    ret


Call_00e_6edb:
    xor a
    inc l
    dec l
    ret z

    push bc
    push de
    push hl
    ld b, $00
    ld c, l
    ld a, [$c836]
    ld h, a
    ld l, $01

jr_00e_6eeb:
    push hl
    rst $18
    inc c
    inc de
    ld h, a
    ld a, [de]
    and $0f
    sub h
    add b
    ld b, a
    pop hl
    inc de
    inc l
    dec c
    jr nz, jr_00e_6eeb

    pop hl
    pop de
    pop bc
    ret


    ret


    ld b, c
    rst $38
    rst $38
    db $e3
    ld [c], a
    nop
    rst $38
    db $f4
    add $e1
    ld c, d
    ld c, d
    rst $38
    ld c, d
    ld c, e
    ld c, h
    ld b, d
    nop
    ld bc, $0302
    ccf
    inc b
    dec b
    ld b, $07
    sbc [hl]
    sbc a
    db $ec
    pop af
    ret nz

    rst $30
    rst $38
    xor h
    xor l
    ld e, d
    ld c, d
    ld c, d
    ld e, e
    ld e, h
    ld b, l
    rst $38
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    di
    ld d, l
    dec l
    db $ec
    pop af
    add b
    push af
    sbc h
    add l
    cp h
    cp l
    rst $38
    and b
    and c
    and d
    ld l, e
    ld l, h
    and a
    and a
    and a
    dec sp
    ld h, a
    ld h, [hl]
    ei
    ldh [$a7], a
    ld h, a
    dec a
    db $ec
    pop af
    ld b, b
    push af
    rst $38
    rrca
    sub l
    sub [hl]
    sub a
    or b
    or c
    or d
    jr nc, jr_00e_6fdc

    ld sp, $b7b7
    or a
    ld [hl], a
    ld [hl-], a
    inc sp
    ld a, [$f9e1]
    dec l
    db $ec
    pop af
    nop
    push af
    dec e
    ld l, c
    ld l, c
    ld hl, $2368
    ld l, c
    ld l, c
    db $fd
    ldh [$fe], a
    ldh [$fa], a
    db $e3
    ld e, $ec
    pop af
    ret nz

    push de
    cpl
    dec c
    ld l, c
    ld l, c
    ld [hl+], a
    ret nz

    db $ec
    ld c, $ec
    pop af
    add b
    ld hl, sp+$11
    inc hl
    add b
    ldh a, [$ec]
    xor $80
    ld hl, sp+$24
    add b
    ldh a, [$ec]
    xor $00
    ld hl, sp+$11
    dec h
    nop
    ldh a, [$ec]
    xor $00
    ld hl, sp+$26
    nop
    ldh a, [$ec]
    xor $80

jr_00e_6fa8:
    ret c

    pop af
    daa
    add b
    ret nc

    db $ec
    xor $40
    or l
    dec bc
    ld l, c
    ld l, c

jr_00e_6fb4:
    jr z, jr_00e_6fa8

    ld b, b
    call z, $ec0c
    pop af
    nop
    or l
    dec de
    ld l, c
    ld l, c
    jr jr_00e_6fb4

    nop
    call z, $ec1c
    pop af
    ret nz

    sub l
    dec hl
    ld c, l
    ld c, [hl]
    ld c, a
    cp $c0
    xor h
    inc l
    dec hl
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], b
    ld [hl], c
    xor c
    ld [hl], d
    ld [hl-], a
    and e
    inc l

jr_00e_6fdc:
    and e
    inc l
    add b
    sub l
    ld l, $d4
    rst $28
    cpl
    push de
    ld l, $2c
    xor a
    cpl
    ld b, b
    sub l
    ld a, $00
    xor a
    ccf
    ld a, $57
    ld l, c
    ld hl, $2c20
    xor h
    ccf
    nop
    sub l
    add hl, de
    call nc, $a9ef
    ld a, [de]
    db $ec
    ldh [$ec], a
    adc l
    ld a, [de]
    ret nz

    ld [hl], l
    add hl, hl
    call nc, Call_000_2aef
    ld d, h
    db $ec
    ldh [$ec], a
    adc l
    ld a, [hl+]
    add b
    ld [hl], l
    add hl, sp
    call nc, Call_000_3aef
    db $ec
    ldh [$2a], a
    db $ec
    adc l
    ld a, [hl-]
    ld b, b
    ld [hl], l
    ld a, b
    call nc, Call_00e_79ef
    db $ec
    ldh [$ec], a
    adc l
    sub l
    ld a, c
    nop
    ld [hl], l
    adc b
    call nc, $89ef
    db $ec
    ldh [$ec], a
    adc l
    adc c
    ld c, d
    ret nz

    ld d, l
    sbc b
    call nc, $99ef
    db $ec
    ldh [$ec], a
    adc l
    sbc c
    add b
    ld d, l
    and l
    xor b
    call nc, $a9ef
    db $ec
    ldh [$ec], a
    adc l
    xor c
    ld b, b
    ld d, l
    cp b
    ld d, d
    call nc, $b9ef
    db $ec
    ldh [$ec], a
    adc l
    cp c
    nop
    ld d, l
    sbc d
    call nc, $ffef
    sbc e
    sbc d
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld a, d
    ld a, [$9be9]
    ret nz

    dec [hl]
    xor d
    ld e, l
    ld e, [hl]
    ld e, a
    ret nz

    ld c, h
    sbc a
    xor e
    xor d
    ld l, l
    ld l, [hl]
    ld l, a
    db $ec
    db $ed
    add b
    dec [hl]
    ld a, d
    ld e, [hl]
    sub h
    rst $28
    ld a, e
    cp d
    xor [hl]
    xor a
    cp $ed
    cp e
    add b
    or $00
    sub h
    rst $38
    ei
    ld_long a, $ff94
    rst $38
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
    db $76
    ld l, e
    ld b, c
    rst $38
    ldh a, [$ca]
    rst $38
    ret nz

    db $eb
    rst $38
    ld c, d
    ld c, e
    ld c, h
    ld b, c
    ld b, c
    ld b, d
    nop
    ld bc, $02ff
    inc bc
    inc b
    dec b
    ld b, $07
    sbc [hl]
    sbc a
    nop
    jp z, $f2ff

    ld b, a
    nop
    nop
    nop
    ld c, c
    ld c, $ff
    rst $38
    db $e3
    ld [c], a
    add hl, bc
    rst $38
    db $f4
    add $e1
    dec c
    rst $38
    pop hl
    ld d, b
    sbc $e6
    or h
    db $e3
    db $ec
    db $ed
    ret nz

    cp $0a
    sbc [hl]
    push hl
    ld a, [bc]
    ret nz

    rst $20
    add b
    db $ec
    add sp, -$80
    or $6d
    pop af
    reti


    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    db $e3
    ld [$ff02], sp
    xor $0e
    db $ec
    pop af
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

    rst $38
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
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld [$bf80], a
    ld b, b
    cp a
    ret nz

    rst $38
    dec l
    add d
    dec b
    rrca
    db $ed
    ldh a, [rIF]
    inc l
    rst $28
    reti


    ldh a, [$c0]
    db $e4
    call nc, $c0f0
    rst $38
    ld [hl], b
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add hl, bc
    add hl, bc
    inc c
    ld b, b
    rst $08
    and c
    inc c
    db $ec
    pop af
    ret nz

    rst $38
    ret nz

    rst $38
    cp h
    ld d, c
    dec bc
    ret nz

    xor a
    dec bc
    inc d
    db $ec
    pop af
    add b
    ld d, l
    ld a, [bc]
    add b
    xor a
    ld a, [bc]
    db $ec
    pop af
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    rst $38
    ret nz

    db $e4
    cp $f0
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    ld a, [c]
    rst $38
    rst $38
    add b
    rst $38
    nop
    sub h
    rst $38
    rst $30
    or $94
    rst $38
    rst $38
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
    ld d, e
    ld l, l
    cp $ef
    jp z, $c0ff

    db $eb
    dec c
    inc bc
    dec c
    dec c
    jp z, $c0e8

    rst $38
    ret nz

    ld c, c
    nop
    nop
    nop
    call Call_00e_4373
    call Call_00e_71c0
    ld a, $01
    ld hl, $725f
    call Call_000_23e8

jr_00e_71a7:
    ld b, $00
    ldh a, [$94]
    and $0b
    jr nz, jr_00e_71bc

    ld b, $01
    ldh a, [$94]
    and $20
    jr nz, jr_00e_71bc

    call Call_000_2e3b
    jr jr_00e_71a7

jr_00e_71bc:
    rst $08
    ld e, h
    ld a, b
    ret


Call_00e_71c0:
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5480
    ld de, $d200
    call Call_000_1f2f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d200
    ld de, $9200
    ld c, $60
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5e51
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $40
    call Call_000_2096
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $70c2
    ld de, $d000
    call Call_000_1f2f
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $6f00
    ld de, $d000
    call Call_000_1f2f
    ld hl, $68e1
    ld de, $0008
    call Call_000_05a8
    call Call_00e_42f0
    call Call_00e_7377
    ld a, [$c837]
    cp $0a
    jr c, jr_00e_724e

    ld a, $0c
    ld [$c323], a

jr_00e_724e:
    ld a, $1e
    ld [$c32c], a
    ld a, $01
    rst $18
    inc b
    dec bc
    rst $18
    inc a
    inc b
    call Call_000_0371
    ret


    call Call_00e_443a
    ld hl, $4036
    ld de, $0100
    ld bc, $0116
    call Call_00e_4643
    ld a, [$c878]
    cp $01
    jr z, jr_00e_729b

    ld de, $0500
    ld hl, $0a80
    ld bc, $0240
    call Call_000_27b4
    ld de, $1100
    call Call_000_27b4
    ld de, $0500
    ld hl, $1080
    ld bc, $0344
    call Call_000_27b4
    ld de, $1100
    call Call_000_27b4
    jr jr_00e_72e3

jr_00e_729b:
    ld de, $0500
    ld hl, $09c0
    ld bc, $0240
    call Call_000_27b4
    ld de, $1100
    call Call_000_27b4
    ld de, $0500
    ld hl, $0bc0
    ld bc, $0344
    call Call_000_27b4
    ld de, $1100
    call Call_000_27b4
    ld de, $0500
    ld hl, $0fc0
    ld bc, $0448
    call Call_000_27b4
    ld de, $1100
    call Call_000_27b4
    ld de, $0500
    ld hl, $11c0
    ld bc, $054c
    call Call_000_27b4
    ld de, $1100
    call Call_000_27b4

jr_00e_72e3:
    ret


Call_00e_72e4:
    inc h
    dec h
    ret z

jr_00e_72e7:
    push hl
    push de
    ld a, l
    dec a
    add $ac
    ld c, a
    adc $c8
    sub c
    ld b, a
    ld a, [bc]
    and $0f
    call Call_00e_4532
    inc de
    inc de
    inc de
    inc de
    ld a, l
    dec a
    add $ec
    ld c, a
    adc $c8
    sub c
    ld b, a
    ld a, [bc]
    and $0f
    call Call_00e_4532
    pop de
    pop hl
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00e_7314

    inc d

jr_00e_7314:
    inc bc
    inc l
    dec h
    jr nz, jr_00e_72e7

    ret


Call_00e_731a:
    inc h
    dec h
    ret z

    push de
    ld bc, $0000

jr_00e_7321:
    ld a, l
    dec a
    add $ac
    ld e, a
    adc $c8
    sub e
    ld d, a
    ld a, [de]
    and $0f
    add b
    ld b, a
    ld a, l
    dec a
    add $ec
    ld e, a
    adc $c8
    sub e
    ld d, a
    ld a, [de]
    and $0f
    add c
    ld c, a
    inc l
    dec h
    jr nz, jr_00e_7321

    pop de
    ld h, $00
    ld l, b
    ld a, $03
    call Call_00e_4513
    inc de
    inc de
    inc de
    ld h, $00
    ld l, c
    ld a, $03
    call Call_00e_4513
    ret


    ld a, [$c4be]
    ld l, a
    ld de, $c8ac
    call Call_00e_6edb
    ld de, $d708
    call $458a
    ld a, [$c4be]
    ld l, a
    ld de, $c8ec
    call Call_00e_6edb
    ld de, $d70e
    call $458a
    ret


Call_00e_7377:
    ld de, $d145
    ld l, $01
    call Call_00e_6d9e
    ld de, $d445
    ld l, $0a
    call Call_00e_6d9e
    ld a, [$c480]
    ld h, a
    ld de, $d149
    ld l, $01
    call Call_00e_72e4
    ld a, [$c481]
    ld h, a
    ld de, $d449
    ld l, $0a
    call Call_00e_72e4
    ld de, $d385
    ld l, $01
    ld h, $09
    call Call_00e_6dee
    ld de, $d685
    ld l, $0a
    ld h, $09
    call Call_00e_6dee
    ld de, $d705
    ld l, $01
    ld h, $12
    call Call_00e_6dee
    ld a, [$c480]
    ld h, a
    ld de, $d388
    ld l, $01
    call Call_00e_731a
    ld a, [$c481]
    ld h, a
    ld de, $d688
    ld l, $0a
    call Call_00e_731a
    ld a, [$c4be]
    ld h, a
    ld de, $d708
    ld l, $01
    call Call_00e_731a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

    db $c5, $41, $ff, $f0, $00, $ff, $ff, $e7, $e6, $c0, $e1, $4a, $4a, $ff, $4a, $4b
    db $4c, $42, $00, $01, $02, $03, $3f, $04, $05, $06, $07, $9e, $9f, $ca, $ff, $c0
    db $e9, $ff, $ac, $ad, $5a, $4a, $4a, $5b, $5c, $45, $ff, $10, $11, $12, $13, $14
    db $15, $16, $17, $f3, $55, $2d, $ca, $ff, $e8, $e7, $9c, $85, $bc, $bd, $ff, $a0
    db $a1, $a2, $6b, $6c, $a7, $a7, $a7, $3b, $67, $66, $fb, $e0, $a7, $67, $3d, $ca
    db $ff, $e8, $e7, $ff, $0f, $95, $96, $97, $b0, $b1, $b2, $30, $7f, $31, $b7, $b7
    db $b7, $77, $32, $33, $fa, $e1, $fc, $80, $ff, $e9, $e8, $1d, $69, $69, $21, $68
    db $69, $91, $69, $fd, $e0, $fe, $e0, $fa, $e3, $1e, $ca, $ff, $e8, $e7, $0d, $97
    db $69, $69, $22, $c0, $ec, $0e, $ca, $ff, $80, $ea, $23, $24, $80, $ff, $80, $fa
    db $24, $80, $ff, $00, $fa, $25, $80, $ff, $00, $fa, $c9, $26, $80, $ff, $80, $da
    db $27, $80, $ff, $f8, $f7, $0b, $69, $cb, $69, $28, $c0, $ec, $0c, $ca, $ff, $e8
    db $e7, $1b, $69, $cb, $69, $18, $80, $ec, $1c, $ca, $ff, $e8, $e7, $2b, $73, $9f
    db $74, $75, $70, $71, $72, $46, $a3, $40, $a3, $2c, $94, $ca, $ff, $e8, $e7, $2e
    db $40, $af, $2f, $ca, $ff, $e8, $e7, $3e, $97, $69, $21, $20, $c0, $cc, $3f, $ca
    db $ff, $e8, $e7, $19, $cb, $69, $21, $00, $ad, $1a, $ca, $ff, $e8, $e7, $29, $69
    db $e5, $21, $00, $ad, $2a, $ca, $ff, $e8, $e7, $39, $69, $21, $72, $00, $ad, $3a
    db $ca, $ff, $e8, $e7, $78, $69, $21, $00, $ad, $b9, $79, $ca, $ff, $e8, $e7, $88
    db $69, $21, $00, $ad, $89, $5c, $ca, $ff, $e8, $e7, $98, $69, $21, $00, $ad, $99
    db $ca, $ff, $2e, $e8, $e7, $a8, $69, $21, $00, $ad, $a9, $ca, $ff, $e8, $e7, $97
    db $b8, $69, $21, $00, $ad, $b9, $ca, $ff, $e8, $e7, $9a, $bf, $60, $61, $62, $63
    db $64, $65, $fa, $e9, $9b, $bc, $ca, $ff, $e8, $e7, $aa, $6d, $6e, $6f, $40, $8c
    db $ab, $5c, $ca, $ff, $e8, $e7, $ba, $ae, $af, $fe, $ed, $bb, $ca, $ff, $00, $ff
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $00
    db $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ea, $e9
    db $00, $00, $00, $45, $0e, $ff, $f0, $09, $ff, $ff, $e7, $e6, $c0, $e1, $0d, $ff
    db $e1, $28, $ca, $e6, $c0, $ff, $c0, $f2, $0a, $d4, $e5, $0a, $c0, $ff, $80, $e9
    db $10, $ed, $ff, $c0, $ff, $c0, $ff, $40, $f7, $08, $ff, $ee, $c0, $ff, $c0, $ff
    db $00, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0
    db $ff, $00, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $c0, $ff, $80, $bf
    db $ff, $ff, $28, $c0, $ff, $ff, $ff, $e3, $e2, $0f, $40, $ef, $0f, $ca, $ff, $c0
    db $ff, $a0, $ff, $ff, $c0, $ff, $ff, $ff, $c0, $ff, $fe, $fd, $0c, $40, $cf, $0c
    db $50, $ca, $ff, $c0, $ff, $ff, $ff, $e4, $e3, $0b, $c0, $af, $0b, $ca, $ff, $02
    db $e8, $e7, $0a, $80, $af, $b6, $46, $ff, $ff, $c0, $ff, $c0, $fe, $ff, $f0, $00
    db $ca, $ff, $80, $ff, $ff, $ff, $80, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff
    db $ff, $00, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $ff, $c0, $41, $00, $00

    nop

    call Call_00e_4373
    call Call_00e_7656
    ld a, $01
    ld hl, $76f5
    call Call_000_23e8

jr_00e_763d:
    ld b, $00
    ldh a, [$94]
    and $0b
    jr nz, jr_00e_7652

    ld b, $01
    ldh a, [$94]
    and $20
    jr nz, jr_00e_7652

    call Call_000_2e3b
    jr jr_00e_763d

jr_00e_7652:
    rst $08

    db $5c

    ld a, b
    ret


Call_00e_7656:
    call Call_000_0341
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5480
    ld de, $d200
    call Call_000_1f2f
    ld a, $00
    ldh [rVBK], a
    ld hl, $d200
    ld de, $9200
    ld c, $60
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $5e51
    ld de, $d000
    call Call_000_1f2f
    ld a, $01
    ldh [rVBK], a
    ld hl, $d000
    ld de, $9000
    ld c, $80
    call Call_000_2096
    ld hl, $d800
    ld de, $8800
    ld c, $80
    call Call_000_2096
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $7573
    ld de, $d000
    call Call_000_1f2f
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $73f0
    ld de, $d000
    call Call_000_1f2f
    ld hl, $68e1
    ld de, $0008
    call Call_000_05a8
    call Call_00e_42f0
    call Call_00e_7850
    ld a, [$c837]
    cp $0a
    jr c, jr_00e_76e4

    ld a, $0a
    ld [$c323], a

jr_00e_76e4:
    ld a, $1c
    ld [$c32c], a
    ld a, $01
    rst $18

    db $04, $0b

    rst $18

    db $3c, $04

    call Call_000_0371
    ret


    call Call_00e_443a
    ld hl, $4036
    ld de, $0100
    ld bc, $0116
    call Call_00e_4643
    ld a, [$c878]
    cp $01
    jr z, jr_00e_7731

    ld de, $0500
    ld hl, $0a80
    ld bc, $0240
    call Call_000_27b4
    ld de, $1000
    call Call_000_27b4
    ld de, $0500
    ld hl, $1080
    ld bc, $0344
    call Call_000_27b4
    ld de, $1000
    call Call_000_27b4
    jr jr_00e_7779

jr_00e_7731:
    ld de, $0500
    ld hl, $09c0
    ld bc, $0240
    call Call_000_27b4
    ld de, $1000
    call Call_000_27b4
    ld de, $0500
    ld hl, $0bc0
    ld bc, $0344
    call Call_000_27b4
    ld de, $1000
    call Call_000_27b4
    ld de, $0500
    ld hl, $0fc0
    ld bc, $0448
    call Call_000_27b4
    ld de, $1000
    call Call_000_27b4
    ld de, $0500
    ld hl, $11c0
    ld bc, $054c
    call Call_000_27b4
    ld de, $1000
    call Call_000_27b4

jr_00e_7779:
    ret


Call_00e_777a:
    ld hl, $c484
    xor a
    ld [hl+], a
    ld de, $d14a
    ld a, [$c4be]
    and a
    jr z, jr_00e_7803

    ld h, a
    ld l, $01

jr_00e_778b:
    push hl
    push de
    ld a, l
    dec a
    add $ac
    ld c, a
    adc $c8
    sub c
    ld b, a
    ld a, [bc]
    and $0f
    ld h, a
    ld a, l
    dec a
    add $ec
    ld c, a
    adc $c8
    sub c
    ld b, a
    ld a, [bc]
    and $0f
    cp h
    jr c, jr_00e_77d5

    jr nz, jr_00e_77be

    ld a, $7d
    call Call_00e_447c
    ld a, $05
    add e
    ld e, a
    jr nc, jr_00e_77b7

    inc d

jr_00e_77b7:
    ld a, $7d
    call Call_00e_447c
    jr jr_00e_77ea

jr_00e_77be:
    ld hl, $c484
    inc [hl]
    ld a, $7e
    call Call_00e_447c
    ld a, $05
    add e
    ld e, a
    jr nc, jr_00e_77ce

    inc d

jr_00e_77ce:
    ld a, $7f
    call Call_00e_447c
    jr jr_00e_77ea

jr_00e_77d5:
    ld hl, $c484
    dec [hl]
    ld a, $7f
    call Call_00e_447c
    ld a, $05
    add e
    ld e, a
    jr nc, jr_00e_77e5

    inc d

jr_00e_77e5:
    ld a, $7e
    call Call_00e_447c

jr_00e_77ea:
    pop de
    ld a, $40
    add e
    ld e, a
    jr nc, jr_00e_77f2

    inc d

jr_00e_77f2:
    pop hl
    ld a, l
    cp $09
    jr nz, jr_00e_77ff

    ld a, $80
    add e
    ld e, a
    jr nc, jr_00e_77ff

    inc d

jr_00e_77ff:
    inc l
    dec h
    jr nz, jr_00e_778b

jr_00e_7803:
    ret


Call_00e_7804:
    ld de, $d687
    ld a, [$c484]
    and a
    jr z, jr_00e_783f

    bit 7, a
    jr nz, jr_00e_7827

    inc de
    inc de
    call Call_00e_4532
    ld hl, $0120
    call Call_00e_44f8
    call Call_00e_4532
    ld hl, $0122
    call Call_00e_44f8
    jr jr_00e_784f

jr_00e_7827:
    cpl
    inc a
    call Call_00e_4532
    ld hl, $0122
    call Call_00e_44f8
    inc de
    inc de
    call Call_00e_4532
    ld hl, $0120
    call Call_00e_44f8
    jr jr_00e_784f

jr_00e_783f:
    inc de
    inc de
    ld hl, $0121
    call Call_00e_44f8
    inc de
    inc de
    ld hl, $0121
    call Call_00e_44f8

jr_00e_784f:
    ret


Call_00e_7850:
    ld de, $d145
    ld l, $01
    call Call_00e_6d9e
    ld de, $d405
    ld l, $0a
    call Call_00e_6d9e
    ld de, $d685
    ld l, $01
    ld h, $12
    call Call_00e_6dee
    call Call_00e_777a
    call Call_00e_7804
    ret


Call_00e_7871:
    push bc
    push hl
    ld c, $00

jr_00e_7875:
    ld a, [hl+]
    cp $96
    jr z, jr_00e_7883

    inc hl
    ld a, [hl+]
    inc hl
    and a
    jr z, jr_00e_7883

    inc c
    jr jr_00e_7875

jr_00e_7883:
    ld a, c
    pop hl
    pop bc
    ret


Call_00e_7887:
    call Call_00e_788d
    and $7f
    ret


Call_00e_788d:
    push bc
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d800
    ld c, $00

jr_00e_789d:
    ld a, [hl+]
    cp $96
    jr z, jr_00e_78ab

    inc hl
    ld a, [hl+]
    ld b, a
    ld a, [hl+]
    ld c, a
    ld a, b
    and a
    jr nz, jr_00e_789d

jr_00e_78ab:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ld a, c
    pop hl
    pop bc
    ret


Call_00e_78b4:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, [$c837]
    ld b, a
    and a
    jr z, jr_00e_78c9

    ld a, [$c4bd]
    and a
    jr nz, jr_00e_78c9

    dec b

jr_00e_78c9:
    ld a, b
    ld [$c4be], a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    add sp, -$74
    ld hl, sp+$00
    ld e, l
    ld d, h
    ld hl, $d800
    rst $18
    ld [bc], a
    inc a
    ld hl, $d800
    push de
    call Call_00e_790a
    pop hl
    push hl
    call Call_00e_7950
    pop hl
    ld de, $d800
    call Call_00e_79bd
    ld hl, $d800
    call Call_00e_7a1c
    ld hl, $d800
    call Call_00e_7a36
    add sp, $74
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_00e_790a:
    ld c, $1c
    ld a, $37
    add l
    ld l, a
    jr nc, jr_00e_7913

    inc h

jr_00e_7913:
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, [hl-]
    ld [de], a
    inc de
    ld a, c
    cp $1c
    jr z, jr_00e_7928

    cp $1b
    jr z, jr_00e_7941

    ld a, $80
    ld [de], a
    inc de
    jr jr_00e_7948

jr_00e_7928:
    push de
    push hl
    ld a, [$c4be]
    ld l, a
    ld de, $c8ac
    call Call_00e_6edb
    pop hl
    pop de
    dec de
    dec de
    ld [de], a
    inc de
    inc de
    ld a, $00
    ld [de], a
    inc de
    jr jr_00e_7948

jr_00e_7941:
    ld a, [$c836]
    add $03
    ld [de], a
    inc de

jr_00e_7948:
    inc de
    dec c
    jr nz, jr_00e_7913

    ld a, $96
    ld [de], a
    ret


Call_00e_7950:
    ldh a, [$96]
    push af
    ld a, $05
    ldh [$96], a
    ldh [rSVBK], a
    push hl
    ld a, [$c810]
    ld hl, $0043
    add l
    ld l, a
    jr nc, jr_00e_7965

    inc h

jr_00e_7965:
    ld de, $df00
    rst $18
    ld e, h
    dec b
    pop hl
    ld bc, $0000
    ld c, $00

jr_00e_7971:
    ld a, [hl]
    cp $96
    jr z, jr_00e_79b7

    inc hl
    inc hl
    ld a, [hl+]
    inc hl
    cp $80
    jr nz, jr_00e_7971

    push hl
    ld hl, $4633
    ld a, [$c836]
    add a
    add l
    ld l, a
    jr nc, jr_00e_798b

    inc h

jr_00e_798b:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add l
    ld l, a
    jr nc, jr_00e_7994

    inc h

jr_00e_7994:
    ld de, $df10
    rst $18
    ld e, h
    dec b
    ld hl, $df00
    ld de, $df10

jr_00e_79a0:
    ld a, [de]
    cp [hl]
    jr nz, jr_00e_79ab

    inc hl
    inc de
    cp $00
    jr nz, jr_00e_79a0

    inc c

jr_00e_79ab:
    pop hl
    ld a, c
    or $80
    dec hl
    dec hl
    ld [hl+], a
    inc hl
    inc c
    inc b
    jr jr_00e_7971

jr_00e_79b7:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_00e_79bd:
    ld a, h
    ld h, d
    ld d, a
    ld a, l
    ld l, e
    ld e, a
    ld [hl], $96

jr_00e_79c5:
    ld a, [de]
    cp $96
    jr z, jr_00e_7a1b

    push hl

jr_00e_79cb:
    ld a, [hl]
    cp $96
    jr z, jr_00e_7a0b

    ld a, [hl]
    add $36
    ld b, a
    ld a, [de]
    add $36
    cp b
    jr c, jr_00e_79f5

    jr z, jr_00e_79e2

    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_00e_79cb

jr_00e_79e2:
    inc hl
    inc hl
    ld b, [hl]
    dec hl
    dec hl
    inc de
    inc de
    ld a, [de]
    dec de
    dec de
    cp b
    jr c, jr_00e_79f5

Call_00e_79ef:
    inc hl
    inc hl
    inc hl
    inc hl
    jr jr_00e_79cb

jr_00e_79f5:
    push de
    ld a, [de]
    ld b, [hl]
    ld [hl+], a
    ld a, b
    ld [de], a
    inc de
    ld a, [de]
    ld b, [hl]
    ld [hl+], a
    ld a, b
    ld [de], a
    inc de
    ld a, [de]
    ld b, [hl]
    ld [hl+], a
    ld a, b
    ld [de], a
    inc hl
    pop de
    jr jr_00e_79cb

jr_00e_7a0b:
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    ld a, [de]
    inc de
    ld [hl+], a
    inc de
    inc hl
    ld [hl], $96
    pop hl
    jr jr_00e_79c5

jr_00e_7a1b:
    ret


Call_00e_7a1c:
    ld c, $00
    ld d, $00
    ld e, $9d

jr_00e_7a22:
    ld a, [hl]
    cp $96
    jr z, jr_00e_7a35

    ld a, [hl]
    cp e
    jr z, jr_00e_7a2d

    ld d, c
    ld e, a

jr_00e_7a2d:
    inc hl
    inc hl
    inc hl
    ld a, d
    ld [hl+], a
    inc c
    jr jr_00e_7a22

jr_00e_7a35:
    ret


Call_00e_7a36:
    ld e, l
    ld d, h
    inc hl
    inc hl
    inc hl
    inc hl

jr_00e_7a3c:
    ld a, [hl+]
    cp $96
    jr z, jr_00e_7a58

    inc de
    inc de
    inc de
    ld a, [de]
    and $7f
    ld b, a
    inc hl
    inc hl
    ld a, [hl]
    and $7f
    cp b
    jr nz, jr_00e_7a54

    or $80
    ld [de], a
    ld [hl], a

jr_00e_7a54:
    inc hl
    inc de
    jr jr_00e_7a3c

jr_00e_7a58:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
