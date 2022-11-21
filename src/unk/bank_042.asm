INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $042", ROMX[$4000], BANK[$42]

    ld a, [bc]
    ld b, b
    db $08
    ld b, b

    db $0b, $40, $74, $40

    ret


    ret


    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c800
    ld a, l
    add $10
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld c, [hl]
    ld a, c
    ld hl, $41f2
    add a
    add l
    ld l, a
    jr nc, jr_042_4027

    inc h

jr_042_4027:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    push hl
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $0e01
    call Call_000_0595
    pop hl
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld b, h
    ld c, l
    inc bc
    inc bc
    ld hl, $d540
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc bc
    inc bc
    inc hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc bc
    inc bc
    inc hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc bc
    inc bc
    inc hl
    ld a, c
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $01
    inc hl
    ld [hl], $ff
    inc hl
    ld [hl], $09
    inc hl
    ld [hl], $4a
    inc hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $01
    inc hl
    call Call_042_416b
    ret


    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d550]
    and a
    jr z, jr_042_4085

    dec a
    ld [$d550], a
    ret


jr_042_4085:
    ld hl, $d551
    ld a, [hl]
    and a
    jr z, jr_042_408d

    dec [hl]

jr_042_408d:
    ld hl, $d54a
    ld a, [hl]
    dec a
    ld [hl], a
    jr z, jr_042_4098

    jp Jump_042_40cb


jr_042_4098:
    ld hl, $d549
    inc [hl]
    call Call_042_40d2
    ld a, [hl]
    cp $ff
    jr z, jr_042_40ac

    inc hl
    ld a, [hl]
    ld hl, $d54a
    ld [hl], a
    jr jr_042_40c8

jr_042_40ac:
    ld a, [$d54b]
    bit 7, a
    jr nz, jr_042_40bb

    ld [$d548], a
    ld a, $ff
    ld [$d54b], a

jr_042_40bb:
    ld hl, $d549
    ld [hl], $00
    call Call_042_40d2
    inc hl
    ld a, [hl]
    ld [$d54a], a

jr_042_40c8:
    call Call_042_40f1

Jump_042_40cb:
    call Call_042_4128
    call Call_042_41b1
    ret


Call_042_40d2:
    ld hl, $d548
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld hl, $d544
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    add a
    add l
    ld l, a
    jr nc, jr_042_40e5

Jump_042_40e4:
    inc h

jr_042_40e5:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add a
    add a
    add l
    ld l, a

Jump_042_40ed:
    jr nc, jr_042_40f0

    inc h

jr_042_40f0:
    ret


Call_042_40f1:
    call Call_042_40d2
    ld b, [hl]
    ld hl, $d540
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_042_4105

    inc h

jr_042_4105:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a000
    ld c, $20
    call Call_000_0468
    call Call_000_0460
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, $01
    ld [$d551], a
    ret


Call_042_4128:
    call Call_042_414a
    call Call_042_40d2
    ld b, [hl]
    ld hl, $d542
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_042_413f

    inc h

jr_042_413f:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld b, $0e
    ld c, $00
    call Call_000_26ea
    ret


Call_042_414a:
    call Call_042_40d2
    inc hl
    inc hl
    ld b, h
    ld c, l
    ld a, [bc]
    ld hl, $d54e
    add [hl]
    ld [hl], a
    inc bc
    inc hl
    ld a, [bc]
    add [hl]
    ld [hl], a
    ld hl, $d54c
    ld a, [hl+]
    ld b, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld c, [hl]
    add d
    ld d, a
    ld a, b
    add c
    ld e, a
    ret


Call_042_416b:
    call Call_000_04de
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $4200
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a200
    ld c, $06
    call Call_000_04db
    ld hl, $421c
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a280
    ld c, $06
    call Call_000_04db
    ld hl, $4238
    ld de, $d000
    call Call_000_1f2f
    ld hl, $d000
    ld de, $a300
    ld c, $06
    call Call_000_04db
    ret


Call_042_41b1:
    ld b, $00
    ld hl, $d54f
    ld a, [hl]
    sub $01
    add $08
    jr c, jr_042_41c3

    inc b
    add $08
    jr c, jr_042_41c3

    inc b

jr_042_41c3:
    ld a, $20
    inc b
    ld hl, $4254

jr_042_41c9:
    inc hl
    inc hl
    add $08
    dec b
    jr nz, jr_042_41c9

    dec hl
    dec hl
    sub $08
    ld b, $0e
    ld c, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d54c]
    ld d, $04
    add d
    ld d, a
    ld a, [$d54d]
    ld e, $3e
    add e
    ld e, a
    call Call_000_26ea
    ret


    add c
    ld b, d
    adc h
    ld c, h
    inc a
    ld e, b

    db $9d, $63

    nop
    nop
    nop
    nop
    nop
    nop

    db $7f, $7f, $7f, $ff, $ff, $7f, $7f, $00, $ff, $f6, $f9, $ff, $ff, $e2, $e0, $f7
    db $fe, $fe, $ff, $ff, $fe, $01, $fe, $c0, $f7, $00, $00

    nop

    db $7f, $1f, $1f, $3f, $3f, $1f, $1f, $00, $ff, $f6, $f9, $ff, $ff, $e2, $e0, $f7
    db $f8, $f8, $fc, $fc, $f8, $01, $f8, $c0, $f7, $00, $00

    nop

    db $7f, $0f, $0f, $1f, $1f, $0f, $0f, $00, $ff, $f6, $f9, $ff, $ff, $e2, $e0, $f7
    db $f0, $f0, $f8, $f8, $f0, $01, $f0, $c0, $f7, $00, $00

    nop

    db $5a, $42

    ld h, a
    ld b, d
    ld [hl], h
    ld b, d

    db $10, $08, $00, $00, $10, $10, $02, $00, $10, $18, $04, $00, $80

    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    db $10
    jr @+$06

    nop
    add b
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    db $10
    jr jr_042_4283

    nop
    add b
    adc e
    ld b, d

jr_042_4283:
    sub e
    ld b, d
    add a
    ld c, d
    ld e, h
    ld c, h
    ld l, b
    ld c, h
    ld d, h
    ld h, d
    rst $38
    ld l, e
    rst $18
    jr jr_042_4292

jr_042_4292:
    nop
    or b
    ld b, d
    call nc, $f443
    ld b, h
    xor $45
    ld a, [hl+]
    ld b, a
    ld [hl], $48
    ld d, a
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, c
    nop
    rst $38
    rst $38
    di
    ld a, [c]
    ld bc, $e4ff
    ld [bc], a
    inc bc
    cp $e3
    db $eb
    ld bc, $e401
    jp hl


    inc bc
    rst $38
    ldh [rTIMA], a
    rlca
    ld [$0fff], sp
    ld [$110f], sp
    rra
    db $10
    rra
    jr nz, @+$01

    ccf
    ld hl, $293f
    ccf
    inc d
    rra
    rrca
    ld e, l
    rrca
    xor b
    pop hl
    inc bc
    inc bc
    inc b
    and $e2
    rrca
    ld [c], a
    ldh [$b3], a
    rlca
    rlca
    sub [hl]
    rst $38
    db $e4
    db $e3
    rlca
    rlca
    rst $08
    ldh [rIF], a
    rst $38
    rra
    rra
    daa
    ccf
    ld b, b
    ld a, a
    adc a
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld [hl+], a
    rst $38
    ld l, h
    rst $38
    ld e, [hl]
    di
    rst $38
    sbc $f7
    ld e, [hl]
    rst $30
    sbc $f7
    ld b, c
    rst $38
    rst $38
    nop
    rst $38
    add h
    rst $38
    add e
    rst $38
    ld b, b
    ld a, a
    rst $38
    jr nc, jr_042_4358

    ld a, h
    ld c, a
    rst $38
    db $e3
    rst $38
    pop af
    rst $18
    rst $38
    ei
    rst $38
    rst $38
    rst $28
    cp $e0
    ld e, a
    rst $38
    cp $ff
    pop hl
    ld a, a
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $18
    rst $38
    ld a, a
    ld a, a
    ld b, c
    ld a, a
    rst $28
    ldh [$c1], a
    ld a, $ff
    ld [c], a
    ld e, $fe
    ld [de], a
    cp $fe
    cp $02
    rst $20
    cp $fc
    db $fc
    add [hl]
    rst $38
    and $e5
    add b
    add b
    ret nz

    rst $38
    ret nz

    ldh a, [$f0]
    adc b
    ld hl, sp+$04

jr_042_4358:
    db $fc
    ld [c], a
    rst $38
    cp $f2
    cp $89
    rst $38
    ld l, l
    rst $38
    push af
    rst $38
    sbc a
    rst $30
    rst $18
    db $f4
    rst $18
    or $df
    inc b
    ld a, [$e080]
    ld b, e
    add b
    ldh [rTMA], a
    cp $1e
    cp $7c
    rst $38
    db $fc
    ld hl, sp-$38
    cp $8e
    rst $38
    rst $18
    rst $38
    xor $7d
    ldh [$fb], a
    rst $38
    db $fd
    cp $e2
    rst $38
    rst $38
    ld bc, $ffef
    ld sp, $c1ff
    ld [hl], h
    ldh [rSCY], a
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    add e
    db $fc
    add a
    ld hl, sp-$01
    adc b
    add d
    ld h, [hl]
    ldh [$c0], a
    ld l, [hl]
    ldh [$88], a
    rst $38
    ld l, d

jr_042_43a7:
    db $fd
    cp $e3
    add sp, -$0f
    ld b, b
    rst $38
    ret nz

    ld h, b
    ldh [$f0], a
    sub b
    ldh a, [$d0]
    ldh a, [rIE]
    or b
    ld hl, sp-$58
    ld hl, sp+$48
    ldh a, [$50]
    ldh [$fd], a
    ldh [$b0], a
    pop hl
    ret nz

    ret nz

    jr nz, jr_042_43a7

    db $10
    ldh a, [$37]
    db $10
    ldh a, [$f0]
    db $fc
    ldh [$e0], a
    ldh [rP1], a
    nop
    nop
    ld l, c
    nop
    rst $38
    rst $38
    di
    ld a, [c]
    ld bc, $e4ff
    ld [bc], a
    inc bc
    cp $e3
    rst $38
    add hl, de
    add hl, de
    inc h
    inc a
    inc h
    inc a
    ld [hl+], a
    ld a, $ff
    dec de
    rra
    ld [de], a
    rra
    dec l
    ccf
    inc hl
    ccf
    rst $38
    inc e
    rra
    ld de, $0e1f
    rrca
    inc bc
    inc bc
    cp $b6
    rst $28
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    sbc e
    rrca
    rrca
    db $fc
    ldh [rTAC], a
    rlca
    sub [hl]
    rst $38
    db $e4
    db $e3
    rlca
    db $fd
    rlca
    rst $08
    ldh [rIF], a
    rra
    rra
    daa
    ccf
    ld b, b
    rst $38
    ld a, a
    adc a
    rst $38
    sbc [hl]
    rst $38
    ld [hl+], a
    rst $38
    ld l, h
    rst $38
    rst $38
    ld e, [hl]
    di
    sbc $f7
    ld e, [hl]
    rst $30
    sbc $ff
    rst $30
    ld b, c
    rst $38
    nop
    rst $38
    add h
    rst $38
    add e
    rst $38
    rst $38
    ld b, b
    ld a, a
    jr nc, jr_042_447c

    ld a, h
    ld c, a
    rst $38
    rst $38
    db $e3
    ld a, a
    pop af
    ld a, a
    ei
    rst $18
    rst $38
    rst $18
    rst $30
    rst $38
    cp a
    rst $38
    rst $38
    push hl
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    db $ed
    add b
    ld a, [c]
    ldh [rSTAT], a
    ld a, a
    db $ed
    ldh [$c1], a
    ld a, $e2
    rst $38
    ld e, $fe
    ld [de], a
    cp $fe
    cp $02
    cp $f3
    db $fc
    db $fc
    add [hl]
    rst $38
    and $e5
    add b
    add b
    ret nz

    ret nz

    rst $38
    ldh a, [$f0]
    adc b
    ld hl, sp+$04
    db $fc
    ld [c], a
    cp $ff

jr_042_447c:
    ld a, [c]
    cp $89
    rst $38
    ld l, l
    rst $38
    push af
    sbc a
    ld a, a
    rst $30
    rst $18
    db $f4
    rst $18
    or $df
    inc b
    add b
    ldh [$fd], a
    ld b, e
    add b
    ldh [rTMA], a
    cp $1e
    cp $7c
    db $fc
    ld l, a
    ld hl, sp-$38
    cp $8e
    add e
    ldh [rIE], a
    ei
    cp $e0
    db $fd
    db $fd
    cp $e2
    rst $38
    rst $38
    ld bc, $31ff
    rst $38
    db $fd
    pop bc
    ld [hl], d
    ldh [rSCY], a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    add e
    rst $18
    db $fc
    add a
    ld hl, sp-$01
    adc b
    ld h, h
    ldh [$c0], a
    rst $38
    jp Jump_042_7f7f


    adc b
    rst $38
    ld l, d

jr_042_44c7:
    db $fd
    cp $e3
    add sp, -$0f
    ld b, b
    ret nz

    rst $38
    ld h, b
    ldh [$f0], a
    sub b
    ldh a, [$d0]
    ldh a, [$b0]
    rst $38
    ld hl, sp-$58
    ld hl, sp+$48
    ldh a, [$50]
    ldh [$e0], a
    cp $b0
    pop hl
    ret nz

    ret nz

    jr nz, jr_042_44c7

    db $10
    ldh a, [rNR10]
    dec de
    ldh a, [$f0]
    db $fc
    ldh [$e0], a
    ldh [rP1], a
    nop
    nop
    ld l, c
    nop
    rst $38
    rst $38
    rst $38
    cp $01
    rst $38
    db $e4
    ld [bc], a
    inc bc
    cp $e1
    rst $38
    ld b, $07
    rrca
    rrca
    rla
    rra
    inc hl
    ccf
    rst $38
    ld hl, $433f
    ld a, a
    ld b, h
    ld a, h
    add h
    db $fc
    rst $38
    add d
    cp $8e
    cp $44
    ld a, h
    dec a
    dec a
    ld a, [c]
    ldh [$e1], a
    inc bc
    sbc $e0
    sub $e3
    inc b
    rlca
    rlca
    rlca
    add sp, -$04
    pop hl
    and d
    rst $38
    ldh a, [$ef]
    rlca
    sbc [hl]
    ldh [rIF], a
    rrca
    rra
    rst $38
    rra
    cpl
    ccf
    ld b, a
    ld a, a
    add b
    rst $38
    add b
    rst $38
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld l, [hl]
    rst $38
    ld [c], a
    rst $38
    rst $38
    ld b, b
    rst $38
    call z, Call_042_5eff
    di
    ld e, $fb
    rst $30
    sbc [hl]
    cp $e0
    add c
    rst $38
    ret nz

    rst $38
    db $e3
    ld d, a
    rst $38
    ld a, b
    ld a, a
    rst $38
    pop hl
    rst $38
    rst $38
    ld [c], a
    rrca
    ldh a, [$e0]
    rst $30
    db $10
    rst $38
    add hl, bc
    call nc, $fee0
    ld a, [c]
    ld c, $fe
    rst $38
    ld a, [bc]
    cp $fa
    cp $06
    cp $fc
    db $fc
    db $fc
    sub d
    rst $38
    ld a, [c]
    pop af
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    rst $38
    ret z

    ld hl, sp-$7c
    db $fc
    ld [bc], a
    cp $02

jr_042_458c:
    cp $ff
    ld bc, $f1ff
    rst $38
    db $ed
    rst $38
    adc a
    rst $38
    rst $38
    inc b
    rst $38
    ld h, [hl]
    rst $38
    db $f4
    sbc a
    ldh a, [$df]
    db $dd
    di
    cp $e0
    inc bc
    rst $38
    rlca
    xor $e0
    ld a, $fe
    db $fc
    rst $38
    db $e3
    ld a, [hl]
    pop hl
    pop hl
    rst $38
    adc [hl]
    rst $38
    ld de, $fdff
    jr nz, jr_042_458c

    ldh [rIE], a
    sbc a
    ldh [rIE], a
    and b
    rst $38
    dec c
    cp a
    ld e, [hl]
    ldh [$7f], a
    ld a, a
    sub h
    rst $38
    rst $38
    rst $38
    ld l, d
    rst $20
    cp $e1
    cp $66
    push hl
    add h
    db $fc
    adc $fa
    ld a, a
    ld [hl], c
    ld a, a
    ld a, l
    ld b, c
    cp $e0
    ld e, c
    ld a, [hl]
    ld [hl], d
    inc a
    inc a
    ldh [$e5], a
    ld e, $40
    db $e3
    ld b, b
    ret nz

    ret nz

    ret nz

    db $fc
    pop hl
    nop
    nop
    nop
    db $dd
    nop
    rst $38
    and $07
    rlca
    rrca
    rst $38
    ld [c], a
    rlca
    rlca
    rst $38
    inc b
    rlca
    ld [$090f], sp
    rrca
    inc de
    rra
    rst $18
    ld [de], a
    rra
    inc d
    rra
    dec d
    db $fc
    ldh [$0c], a
    rrca
    rst $38
    inc d
    rra
    ld d, $1f
    inc de
    rra
    ld a, [bc]
    rrca
    rst $38
    inc b
    rlca
    dec b
    rlca
    inc c
    rrca
    ld d, $1f
    rst $38
    ld [hl+], a
    ccf
    ld hl, $203f
    ccf
    ld de, $e31f
    rrca
    rrca
    ret nz

    rst $20
    rst $38
    rst $38
    cp $fd
    add b
    add b
    ld hl, sp-$01
    ld hl, sp-$7a
    cp $01
    rst $38
    ld a, $ff
    db $dd
    rst $38
    rst $38
    db $10
    rst $38
    add [hl]
    rst $38
    rrca
    ld sp, hl
    rrca
    rst $38
    db $fd
    rst $08
    db $fd
    ld h, [hl]
    db $fd
    adc h
    rst $38
    nop
    rst $38
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    ld c, h
    rst $38
    pop bc
    rst $38
    rst $38
    ccf
    rst $38
    rra
    di
    rra
    rst $30
    ccf
    rst $10
    rst $38
    ld a, a
    rst $38
    rst $38
    db $e3
    ld a, a
    rst $38
    db $e4
    ld a, [hl]
    ld a, a
    db $fd
    jr nz, jr_042_46dc

    ldh [rNR41], a
    ccf
    ccf
    ccf
    db $10
    rra
    ld a, e
    db $10
    rra
    rst $38
    ldh [rNR10], a
    rra
    inc e
    inc hl
    ld e, d
    ldh [$fb], a
    ld b, b
    ld a, a
    cp $e3
    ld hl, $3e3f
    ccf
    rra
    db $fd
    rra
    ld a, h
    db $fd
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    add e
    add d
    ld b, a
    rst $00
    rst $00
    call nz, $f477
    rst $38
    ld c, a
    rst $38
    dec hl
    ld a, [$fb2b]
    inc e
    rst $38
    push af

jr_042_46a7:
    jr jr_042_46a7

    ldh [$3c], a
    add [hl]
    ldh [$7f], a
    rst $18
    rst $38
    cp a
    rst $00
    rst $38
    ccf
    cp $ff
    ldh [$83], a
    db $e4
    ld a, h
    db $e4
    ld hl, sp-$01
    rst $18
    pop hl
    rst $38
    ld [hl+], a
    rst $38
    inc d
    ret c

    ldh [$38], a
    rst $38
    rst $38
    db $fc
    rst $38
    rst $18
    rst $30
    rst $18
    ld hl, sp-$11
    ld a, a
    rst $38
    add sp, $7f
    ldh a, [rIE]
    ld d, b
    rst $18
    ld d, b
    rst $18
    rst $38
    ret z

    rst $08

jr_042_46dc:
    ld b, a
    rst $00
    ld b, b
    ret nz

    ret nz

    ret nz

    rst $28
    ld b, b
    ret nz

    add b
    add b
    cp $df

jr_042_46e9:
    add b
    add b
    ldh a, [$df]
    ld [hl], b
    ld hl, sp+$08
    db $fc
    add h
    cp $e0
    call nz, $fffc
    ld h, h
    ld hl, sp-$78

jr_042_46fa:
    ldh a, [$30]
    ldh a, [rNR10]
    ldh [$8f], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld [c], a
    cp [hl]
    db $eb
    ldh a, [$e1]
    add b
    ld l, l
    add b
    and [hl]
    pop hl
    ld b, b
    ret nz

    call c, Call_000_10e1
    ldh a, [$fe]
    pop hl
    daa
    jr nz, jr_042_46fa

    ret nz

    sub [hl]
    ldh [$d0], a
    pop hl
    jr nz, jr_042_46e9

    ldh [$c6], a
    pop hl
    nop
    adc b
    ei
    nop
    nop
    nop
    jp hl


    nop
    rst $38
    rst $38
    push hl
    db $e4
    ld bc, $e4ff
    ld [bc], a
    inc bc
    ld [bc], a
    rst $38
    inc bc
    ld a, [hl-]
    dec sp
    ld b, [hl]
    ld a, a
    add c
    rst $38
    add b
    ld a, [hl]
    cp $e0
    adc l
    rst $38
    ld [hl], e
    ld [hl], e
    ld bc, $d201
    di
    db $fc
    xor h
    rst $38
    db $fc
    ei
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rst $18
    cpl
    ccf
    ld c, a
    ld a, a
    add a
    sub h
    ldh [rIF], a
    rst $38
    rst $38
    ld a, $ff
    ld h, d
    rst $38
    call z, Call_042_5eff
    di
    cp a
    sbc $f7
    ld e, [hl]
    rst $30
    ld e, $f7
    add b
    pop hl
    ret nz

    rst $38
    rst $38
    pop af
    rst $38
    db $fc
    rst $28
    rst $38
    di
    rst $38
    db $eb
    ld sp, hl
    ld a, a
    rst $38
    db $e4
    rst $38
    rst $38
    db $e4
    ld c, $ff
    nop
    rst $38
    rst $38
    add c
    rst $38
    ld a, a
    ld a, a
    ld b, e
    ld a, a
    ld b, a
    rst $38
    ld a, l
    ccf
    add hl, sp
    ld a, $23
    inc a
    ccf
    ld b, b
    ei
    ld a, a
    ld b, c
    ld c, h
    ldh [$83], a

jr_042_479e:
    rst $38
    db $fd
    rst $38
    add d
    rst $20
    cp $7c
    ld a, h
    add d
    rst $38
    ld [c], a
    pop hl
    add b
    add b
    ldh a, [rIE]
    ldh a, [$c8]
    ld hl, sp-$3c
    db $fc
    add d
    cp $02
    rst $28
    cp $e1
    rst $38
    ld sp, hl
    ld [de], a
    ldh [$67], a
    rst $38
    db $f4
    rst $38
    sbc a
    or $df
    db $f4
    rst $18
    ldh a, [$df]
    inc bc
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, a
    ld a, a
    rst $28
    rst $38
    sbc a
    cp $be
    cp $fe
    add [hl]
    push hl
    rst $10
    db $fc
    rst $38
    ldh a, [$e6]
    ret nz

    inc bc
    ld d, [hl]
    ldh [rSVBK], a
    ld a, a
    rst $38
    jr jr_042_4809

    rra
    rla
    ccf
    jr c, jr_042_479e

    cp a
    rst $30
    xor b
    cp a
    or b
    cp $e0
    sbc b
    sbc a
    sub a
    sbc a
    rst $08
    ld [$070f], sp
    rlca
    adc b
    rst $38
    ld l, h
    ei
    sbc h
    sbc h
    rst $38
    cp $f2
    cp a

jr_042_4809:
    pop hl
    rra
    pop af
    rra
    pop af
    ccf
    ld a, a
    push af
    cp a
    and a
    sbc h
    sbc h
    ld d, b
    jp hl


    cp $e3
    sbc a
    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    cp $e2
    ldh a, [$e5]
    jr nz, @+$01

    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$f0]
    ldh a, [rNR10]
    rlca
    ldh a, [$e0]
    ldh [$9c], a
    jp hl


    nop
    nop
    nop
    ld a, c
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rSB]
    ld bc, $0302
    cp $e1
    db $eb
    ld bc, $e601
    rst $28
    rrca
    rst $38
    ldh [$1f], a
    rra
    inc hl
    rst $38
    ccf
    ld b, a
    ld a, a
    ld e, b
    ld a, a
    ld h, d
    ld a, a
    ld b, d
    rst $38
    ld a, a
    ld b, e
    ld a, a
    ld b, [hl]
    ld a, a
    dec sp
    dec sp
    ld bc, $fffe
    ldh [rSC], a
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rst $38
    rlca
    rlca
    rlca
    ld [$100f], sp
    rra
    rra
    sbc a
    rra
    db $10
    rra
    rrca
    rrca
    sub h
    rst $38
    add [hl]
    db $ed
    ld c, $bf
    rrca
    ld hl, sp-$01
    db $10
    rst $38

jr_042_4883:
    jr nz, jr_042_4883

    ldh [rLCDC], a
    cp $fe
    ldh [$c0], a
    rst $38
    ld h, b
    ld a, a
    ld a, b
    ld a, a
    sbc a
    rst $38
    rst $38
    cp h
    rst $38
    xor h
    rst $38
    ld c, b
    ld a, a
    ld h, b
    rst $38
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $30
    cp $bf
    ei
    rst $18
    ld sp, hl
    cp a
    db $fc
    rst $38
    rst $38
    ld [c], a
    ld a, a
    cp $fa
    db $e4
    ccf
    rst $38
    ld c, $ff
    ld [bc], a
    rst $38
    rst $00
    rst $38
    rst $38
    inc a
    db $fc
    call c, Call_000_3cf4
    db $ec
    inc e
    ld a, a
    db $fc
    db $f4
    db $fc
    ld [$f0f8], sp
    ldh a, [$8e]
    rst $38
    cp $ec
    db $eb
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $01
    xor a
    rst $38
    rlca
    rst $38
    rrca
    cp $e0
    rra
    cp $e2
    ld c, $fb
    rst $38
    nop
    sub l
    ldh [$f7], a
    sbc $f3
    sbc $f3
    rst $38
    rst $18
    and $9f
    nop
    rst $38
    ld bc, $13ff
    rst $38
    rst $38
    adc a
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    add sp, -$21
    ld hl, sp-$3c
    db $fc
    cp [hl]
    cp $ff
    pop hl
    call nz, $f7fc
    ld c, $fe
    ld de, $e04a
    ld h, b
    rst $38
    rst $30
    rst $18
    rst $18
    ld hl, sp-$11
    or b
    rst $38
    sub b
    ld h, e
    ldh [$c0], a
    rst $38
    ld d, e
    ld a, a
    ld a, a

jr_042_491c:
    adc [hl]
    rst $38
    db $f4
    di
    add b
    rst $38
    ldh [$c0], a
    rst $38
    ldh [$fd], a
    ld b, b
    cp $e2
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$a0], a
    rst $38
    ldh a, [$b0]
    db $fc
    call z, $82fe
    rst $38
    adc c
    rst $38
    rst $38
    ld l, l
    rst $38
    rst $08
    db $fc
    db $f4
    ld hl, sp-$38
    ei
    ld [hl], b
    ld [hl], b
    jp z, Jump_000_20f3

    ldh [rNR10], a
    ldh a, [rNR10]
    ld a, a
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    ret


    nop
    rst $38
    rst $38
    ei
    ld_long a, $ff01
    db $e4
    sub $e7
    ld b, $06
    rst $38
    add hl, bc
    rrca
    ld [$120f], sp
    rra
    ld hl, $ff3f
    ld b, c
    ld a, a
    ld b, d
    ld a, a
    dec h
    ccf
    dec de
    dec de
    cp $ba
    db $eb
    rrca
    rrca
    db $10
    rra
    jr nz, jr_042_49be

    jr nz, jr_042_491c

    ccf
    ccf
    db $fc
    ldh [$1f], a
    rra
    sbc [hl]
    rst $38
    sub [hl]
    rst $20
    inc bc
    rst $28
    inc bc
    rrca
    rrca
    ld de, $e0c4
    ld b, a
    ld a, a
    ld c, a
    rst $38
    ld a, a
    sub c
    rst $38
    or [hl]
    rst $38
    xor a
    ld sp, hl
    rst $28
    rst $38
    ei
    cpl
    ei
    ld l, a
    ei
    ld hl, $40ff
    rst $38
    rst $38
    ret nz

    rst $38
    ld b, c
    ld a, a
    jr nz, jr_042_49ef

    jr @+$01

    rra
    ld c, $0f
    rrca
    dec bc
    rra
    rla
    cp a
    rst $18
    cp a
    ld a, a
    rst $38

jr_042_49be:
    ld a, a
    rst $38
    rst $38
    jp hl


    ld b, b
    ld a, a
    rst $38
    add e
    rst $38
    pop af
    rst $38
    ld c, a
    ld a, a
    pop bc
    rst $38
    rst $38
    cp $be
    cp $82
    ld a, h
    db $fc
    ld b, h
    db $fc
    ccf
    db $fc
    db $fc
    inc c
    db $fc
    ld hl, sp-$08
    adc b
    rst $38
    db $e4
    db $e3
    rst $30
    ldh [$e0], a
    ldh a, [rIE]
    ldh [$f8], a
    ld hl, sp-$1c
    db $fc
    rst $38
    ld [bc], a
    cp $f1

jr_042_49ef:
    rst $38
    ld a, c
    rst $38
    ld b, h
    rst $38
    rst $38
    ld b, $ff
    ld [hl-], a
    rst $38
    ld h, e
    rst $38
    ld [hl], d
    rst $38
    rst $30
    ld bc, $81ff
    db $fc
    ldh [rNR42], a
    rst $38
    jp $fffe


    rlca
    db $fc
    rrca
    ld hl, sp+$3f
    ld sp, hl
    rst $38
    ret c

    ld a, a
    rst $38
    inc a
    rst $38
    ld a, a
    cp $ff
    rst $30
    cp $e0
    rst $30
    ei
    rst $38
    db $fc
    ld a, d
    db $e4
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    adc h
    rst $38
    pop de
    rst $38
    daa
    ld a, $3f
    jr c, @+$01

    rra
    ld de, $1f1e
    ld [de], a
    rra
    rra
    rra
    rst $08
    db $10
    rra
    rrca
    rrca
    add [hl]
    rst $38
    db $f4
    di
    or b
    or b
    cp a
    ld hl, sp-$38
    cp $8e
    rst $38
    adc c
    cp $e0
    ld de, $feff
    ld [de], a
    cp $22
    db $fc
    inc h
    db $fc
    ld c, h
    rst $38
    cp $1a
    cp $32
    rst $38
    rst $20
    rst $38
    ld a, l
    rst $38
    rst $38
    add hl, sp
    cp $3e
    ld hl, sp-$08
    db $10
    ldh a, [$6d]
    ldh [rIE], a
    ldh [$c0], a
    ret nz

    or h
    db $e3
    add b
    add b
    db $fc
    pop hl
    rst $38
    add b
    add b
    ret nz

    ld b, b
    ldh a, [$f0]
    ld [$17f8], sp
    inc b
    db $fc
    inc b
    nop
    ldh [rDIV], a
    nop
    ldh [rP1], a
    nop
    nop
    sub l
    ld c, d
    sub $4a
    rla
    ld c, e
    ld e, b
    ld c, e
    sbc c
    ld c, e
    jp c, Jump_000_1b4b

    ld c, h
    db $10
    ld [$0000], sp
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_4aa7

    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_4aa7:
    ld [$2000], sp
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_4abf

    inc c
    nop
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_4ac8

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_4ad7

jr_042_4abf:
    inc d
    nop
    ld b, b
    jr jr_042_4ada

    nop
    db $10
    jr nz, jr_042_4ae0

jr_042_4ac8:
    nop
    jr nz, jr_042_4aeb

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_4af2

    nop
    add b
    db $10

jr_042_4ad7:
    ld [$0000], sp

jr_042_4ada:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_4ae8

jr_042_4ae0:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_4ae8:
    ld [$2000], sp

jr_042_4aeb:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_4b00

    inc c
    nop

jr_042_4af2:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_4b09

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_4b18

jr_042_4b00:
    inc d
    nop
    ld b, b
    jr jr_042_4b1b

    nop
    db $10
    jr nz, jr_042_4b21

jr_042_4b09:
    nop
    jr nz, jr_042_4b2c

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_4b33

    nop
    add b
    db $10

jr_042_4b18:
    ld [$0000], sp

jr_042_4b1b:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_4b29

jr_042_4b21:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_4b29:
    ld [$2000], sp

jr_042_4b2c:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_4b41

    inc c
    nop

jr_042_4b33:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_4b4a

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_4b59

jr_042_4b41:
    inc d
    nop
    ld b, b
    jr jr_042_4b5c

    nop
    db $10
    jr nz, jr_042_4b62

jr_042_4b4a:
    nop
    jr nz, jr_042_4b6d

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_4b74

    nop
    add b
    db $10

jr_042_4b59:
    ld [$0000], sp

jr_042_4b5c:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_4b6a

jr_042_4b62:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_4b6a:
    ld [$2000], sp

jr_042_4b6d:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_4b82

    inc c
    nop

jr_042_4b74:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_4b8b

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_4b9a

jr_042_4b82:
    inc d
    nop
    ld b, b
    jr jr_042_4b9d

    nop
    db $10
    jr nz, jr_042_4ba3

jr_042_4b8b:
    nop
    jr nz, jr_042_4bae

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_4bb5

    nop
    add b
    db $10

jr_042_4b9a:
    ld [$0000], sp

jr_042_4b9d:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_4bab

jr_042_4ba3:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_4bab:
    ld [$2000], sp

jr_042_4bae:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_4bc3

    inc c
    nop

jr_042_4bb5:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_4bcc

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_4bdb

jr_042_4bc3:
    inc d
    nop
    ld b, b
    jr jr_042_4bde

    nop
    db $10
    jr nz, jr_042_4be4

jr_042_4bcc:
    nop
    jr nz, jr_042_4bef

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_4bf6

    nop
    add b
    db $10

jr_042_4bdb:
    ld [$0000], sp

jr_042_4bde:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_4bec

jr_042_4be4:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_4bec:
    ld [$2000], sp

jr_042_4bef:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_4c04

    inc c
    nop

jr_042_4bf6:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_4c0d

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_4c1c

jr_042_4c04:
    inc d
    nop
    ld b, b
    jr jr_042_4c1f

    nop
    db $10
    jr nz, jr_042_4c25

jr_042_4c0d:
    nop
    jr nz, jr_042_4c30

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_4c37

    nop
    add b
    db $10

jr_042_4c1c:
    ld [$0000], sp

jr_042_4c1f:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_4c2d

jr_042_4c25:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_4c2d:
    ld [$2000], sp

jr_042_4c30:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_4c45

    inc c
    nop

jr_042_4c37:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_4c4e

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_4c5d

jr_042_4c45:
    inc d
    nop
    ld b, b
    jr jr_042_4c60

    nop
    db $10
    jr nz, jr_042_4c66

jr_042_4c4e:
    nop
    jr nz, jr_042_4c71

    ld a, [de]
    nop
    jr nc, jr_042_4c75

    inc e
    nop
    ld b, b
    jr nz, @+$20

    nop
    add b
    nop

jr_042_4c5d:
    inc d
    nop
    nop

jr_042_4c60:
    ld bc, $0014
    nop
    rst $38
    nop

jr_042_4c66:
    nop
    nop
    ld [bc], a
    ld [$0000], sp
    inc bc
    ld [$fe00], sp
    inc bc

jr_042_4c71:
    ld b, $00
    nop
    inc bc

jr_042_4c75:
    ld [bc], a
    nop
    ld bc, $0604
    nop
    ld [bc], a
    inc b
    ld [bc], a
    nop
    ld bc, $1005
    nop
    nop
    ld b, $20
    nop
    nop
    rst $38
    nop
    nop
    nop
    sub [hl]
    ld c, h
    sbc [hl]
    ld c, h
    ld hl, sp+$55
    db $10
    ld e, b
    inc e
    ld e, b
    add d
    ld d, l
    rst $38
    ld l, e
    rst $38
    jr nz, jr_042_4c9d

jr_042_4c9d:
    nop
    or b
    ld c, h
    ei
    ld c, l
    ld b, h
    ld c, a
    adc a
    ld d, b
    bit 2, c
    or l
    ld d, d
    call nc, $c253
    ld d, h
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    rst $20
    and $1c
    inc e
    inc de
    rra
    jr @-$0f

    rra
    jr nz, jr_042_4cfe

    db $10
    ld a, [$21e0]
    ccf
    ccf
    rst $38
    ccf
    ld bc, $0301
    inc bc
    rlca
    inc b
    rlca
    ld a, a
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $c001
    push hl
    call $ff01
    ldh [$03], a
    ld [bc], a
    cp $e0
    db $e4
    pop hl
    inc b
    rrca
    rst $38
    ld [$101f], sp
    ld a, a
    ld h, c
    rst $38
    add c
    ld a, [hl]
    rst $18
    ld a, d
    rrca
    dec bc
    dec b
    dec b
    sbc h
    pop hl
    inc bc
    inc bc
    ld a, a
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_042_4cfe:
    rrca
    db $fc
    ldh [$f3], a
    rlca
    rlca
    adc d
    rst $38
    add sp, -$19
    ld c, $0e
    ld sp, $ff3f
    ret nz

    rst $38
    sbc [hl]
    rst $38
    cp a
    pop hl
    cp a
    ldh [$ef], a
    ccf
    db $ec
    ld a, a
    ret nz

    cp $e0
    ret c

    rst $38
    or h
    rst $38
    rst $38
    inc l
    rst $38
    adc h
    rst $08
    or c
    rst $38
    add b
    rst $38
    ld a, a
    ld b, a
    ld a, $23
    ld a, a
    ld e, c
    rst $38
    call nc, $ffff
    ld d, e
    rst $38
    ld c, d
    rst $38
    ld b, h
    rst $38
    ld b, e
    di
    rst $38
    add b
    cp $e4
    rst $30
    ld [c], a
    add h
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    cp $c2
    rst $38
    ld a, $e2
    ld e, $fe
    ld [de], a
    cp $fe
    cp $cf
    ld [bc], a
    cp $fc
    db $fc
    adc d
    rst $38
    add sp, -$19
    ldh [$e0], a
    rst $38
    add hl, de
    ld sp, hl
    ld b, $ff
    ld a, [c]
    rst $38
    ld a, [$bf0f]
    ld a, [$f90f]
    ld l, a
    db $fd
    rlca
    cp $e0
    scf
    rst $38
    rst $38
    ld e, d
    rst $38
    ld l, c
    rst $38
    ld h, d
    rst $20
    ld a, [de]
    rst $38
    rst $38
    inc bc
    db $fc
    call nz, $88f8
    db $fc
    inc [hl]
    cp a
    cp $56
    rst $38
    sub l
    rst $38
    and l
    add b
    ldh [$84], a
    or e
    rst $38
    inc bc
    adc l
    ldh [$fe], a
    pop hl
    cp $03
    push af
    ldh [rSCY], a
    ei
    cp $81
    add b
    ldh [$fc], a
    add h
    db $fc
    db $fc
    rst $38
    cp a
    add a
    ld hl, sp-$71
    ldh a, [rIE]
    sub b
    ld [hl], d
    ldh [$80], a
    rst $20
    rst $38
    ld a, a
    ld a, a
    adc d
    rst $38
    add sp, -$19
    ld [hl], b
    ld [hl], b
    sub b
    cp a
    ldh a, [$30]
    ldh a, [$08]
    ld hl, sp+$10
    ld a, [$f8e2]
    ld a, a
    ld hl, sp+$00
    nop
    add b
    add b
    ret nz

    ld b, b
    cp $e1
    res 0, b
    add b
    jp nz, $80eb

    rst $38
    ld [c], a
    db $e4
    pop hl
    ldh [rNR41], a
    rst $38
    ldh a, [$d0]
    db $fc
    inc c
    cp $02
    db $fc
    cp h
    rst $28
    ldh [$a0], a
    ld b, b
    ld b, b
    db $e4
    db $e3
    ld b, b
    ret nz

    jr nz, jr_042_4e5f

    ldh [rNR41], a
    ldh [$e0], a
    db $fc
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    push hl
    db $e4
    inc e
    inc e
    inc de
    rra
    jr @-$0f

    rra
    jr nz, jr_042_4e49

    db $10
    ld a, [$29e0]
    ccf
    ld a, a
    rst $38
    ld d, a
    ld a, a
    ld b, l
    rst $38
    sub a
    rst $38
    cp l
    rst $38
    rst $38
    ret


    rst $38
    sub d
    rst $38
    add d
    ld a, a
    ld b, a
    ccf
    rst $38
    ld sp, $101f
    rrca
    add hl, bc
    rlca
    ld b, $07
    ld e, a
    inc b
    inc bc
    ld [bc], a
    ld bc, $b201
    rst $28
    ld bc, $e0ff
    cp $9c
    db $e3
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    sbc e
    rrca
    rrca
    db $fc
    ldh [rTAC], a
    rlca
    adc b
    rst $38

jr_042_4e49:
    and $e5
    ld c, $ff
    ld c, $31
    ccf
    ret nz

    rst $38
    sbc [hl]
    rst $38
    cp a
    ld a, a
    pop hl
    cp a
    ldh [$3f], a
    db $ec
    ld a, a
    ret nz

    cp $e0

jr_042_4e5f:
    rst $38
    ret c

    rst $38
    or h
    rst $38
    inc l
    rst $38
    adc h
    rst $08
    rst $38
    or c
    rst $38
    add h
    ld a, a
    ld b, a
    cp $e3
    rst $38
    rst $38
    add hl, sp
    rst $38
    inc [hl]
    rst $38
    inc sp
    rst $38
    ld c, d
    rst $38
    sbc a
    ld b, h
    rst $38
    jp $80ff


    cp $e4
    rst $30
    ld [c], a
    add h
    rst $38
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld b, d
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $c2
    ld a, $e2
    ld e, $fe
    ld [de], a
    rst $38
    cp $1e
    cp $e2
    cp $0e
    cp $f0
    ld sp, hl
    ldh a, [$88]
    rst $38
    and $e5
    ldh [$e0], a
    add hl, de
    ld sp, hl
    ld b, $ff
    rst $38
    ld a, [c]
    rst $38
    ld a, [$fa0f]
    rrca
    ld sp, hl
    rst $30
    ld l, a
    db $fd
    rlca
    cp $e0
    scf
    rst $38
    ld e, d
    rst $38
    rst $38
    ld l, c
    rst $38
    ld h, d
    rst $20
    ld a, [de]
    rst $38
    ld b, e
    db $fc
    rst $38
    call nz, $88f8
    db $fc
    inc [hl]
    cp $56
    rst $38
    ld [hl], a
    sub l
    rst $38
    and l
    add b
    ldh [$84], a
    rst $38
    inc bc
    adc l
    ldh [rPCM12], a
    cp $e1
    cp $03
    push af
    ldh [rSCY], a
    cp $81
    add b
    ldh [rIE], a
    db $fc
    add h
    db $fc
    db $fc
    cp $86
    ld sp, hl
    adc a
    rst $38
    ldh a, [rIE]
    sub b
    rst $38
    ldh a, [rIE]
    adc a
    rst $38
    rst $08
    ldh [rIE], a
    rra
    rra
    adc b
    rst $38
    and $e5
    ld [hl], b
    ld [hl], b
    ld a, a
    sub b
    ldh a, [$30]
    ldh a, [$08]
    ld hl, sp+$10
    ld_long a, $ffe2
    ld hl, sp-$08
    nop
    nop
    add b
    add b
    ret nz

    ld b, b

jr_042_4f17:
    sub [hl]
    cp $e1

jr_042_4f1a:
    add b
    add b

jr_042_4f1c:
    jp nz, $80eb

    rst $38
    ld [c], a
    db $e4
    pop hl
    ldh [rIE], a
    jr nz, jr_042_4f17

    ret nc

    db $fc
    inc c
    cp $02
    db $fc
    rst $18
    cp h
    ldh [$a0], a
    ld b, b
    ld b, b
    ld [c], a
    push hl
    ld b, b
    ret nz

    rst $18
    jr nz, jr_042_4f1a

    jr nz, jr_042_4f1c

    ldh [$fc], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    rst $20
    and $1c
    inc e
    inc de
    rra
    jr @-$0f

    rra
    jr nz, jr_042_4f92

    db $10
    ld a, [$21e0]
    ccf
    ccf
    rst $38
    ccf
    ld bc, $0301
    inc bc
    rlca
    inc b
    rlca
    ld a, a
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $c001
    push hl
    call $ff01
    ldh [$03], a
    ld [bc], a
    cp $e0
    db $e4
    pop hl
    inc b
    rrca
    rst $38
    ld [$101f], sp
    ld a, a
    ld h, c
    rst $38
    add c
    ld a, [hl]
    rst $18
    ld a, d
    rrca
    dec bc
    dec b
    dec b
    sbc h
    pop hl
    inc bc
    inc bc
    ld a, a
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_042_4f92:
    rrca
    db $fc
    ldh [$f3], a
    rlca
    rlca
    adc d
    rst $38
    add sp, -$19
    ld c, $0e
    ld sp, $ff3f
    ret nz

    rst $38
    sbc [hl]
    rst $38
    cp a
    pop hl
    cp a
    ldh [$ef], a
    ccf
    db $ec
    ld a, a
    ret nz

    cp $e0
    ret c

    rst $38
    or h
    rst $38
    rst $38
    inc l
    rst $38
    adc h
    rst $08
    or c
    rst $38
    add b
    rst $38
    ld a, a
    ld b, a
    ld a, $23
    ld a, a
    ld e, c
    rst $38
    call nc, $ffff
    ld d, e
    rst $38
    ld c, d
    rst $38
    ld b, h
    rst $38
    ld b, e
    di
    rst $38
    add b
    cp $e4
    rst $30
    ld [c], a
    add h
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld a, [hl]
    cp $c2
    rst $38
    ld a, $e2
    ld e, $fe
    ld [de], a
    cp $fe
    cp $cf
    ld [bc], a
    cp $fc
    db $fc
    adc d
    rst $38
    add sp, -$19
    ldh [$e0], a
    rst $38
    add hl, de
    ld sp, hl
    ld b, $ff
    ld a, [c]
    rst $38
    ld a, [$bf0f]
    ld a, [$f90f]
    ld l, a
    db $fd
    rlca
    cp $e0
    scf
    rst $38
    rst $38
    ld e, d
    rst $38
    ld l, c
    rst $38
    ld h, d
    rst $20
    ld a, [de]
    rst $38
    rst $38
    inc bc
    db $fc
    call nz, $88f8
    db $fc
    inc [hl]
    cp a
    cp $56
    rst $38
    sub l
    rst $38
    and l
    add b
    ldh [$84], a
    or e
    rst $38
    inc bc
    adc l
    ldh [$fe], a
    pop hl
    cp $03
    push af
    ldh [rSCY], a
    ei
    cp $81
    add b
    ldh [$fc], a
    add h
    db $fc
    db $fc
    rst $38
    cp a
    add a
    ld hl, sp-$71
    ldh a, [rIE]
    sub b
    ld [hl], d
    ldh [$80], a
    rst $20
    rst $38
    ld a, a
    ld a, a
    adc d
    rst $38
    add sp, -$19
    ld [hl], b
    ld [hl], b
    sub b
    cp a
    ldh a, [$30]
    ldh a, [$08]
    ld hl, sp+$10
    ld a, [$f8e2]
    ld a, a
    ld hl, sp+$00
    nop
    add b
    add b
    ret nz

    ld b, b
    cp $e1
    res 0, b
    add b
    jp nz, $80eb

    rst $38
    ld [c], a
    db $e4
    pop hl
    ldh [rNR41], a
    rst $38
    ldh a, [$d0]
    db $fc
    inc c
    cp $02
    db $fc
    cp h
    rst $28
    ldh [$a0], a
    ld b, b
    ld b, b
    db $e4
    db $e3
    ld b, b
    ret nz

    jr nz, jr_042_50f3

    ldh [rNR41], a
    ldh [$e0], a
    db $fc
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    db $e3
    ld [c], a
    inc bc
    inc bc
    inc b
    rlca
    rlca
    rst $18
    rlca
    ld [$0c0f], sp
    rrca
    ld a, [$07e1]
    rlca
    rst $30
    nop
    nop
    ld bc, $e4ff
    nop
    nop
    db $10
    db $10
    rst $38
    inc a
    inc l
    ld a, h
    ld d, h
    db $fc
    sbc h
    cp $b2
    rst $38
    ld a, a
    ld e, a
    ccf
    inc sp
    ccf
    jr nz, jr_042_50de

    db $10
    ccf
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    xor d
    push af
    add $e7
    db $fc
    rst $38
    rst $38
    and $e5
    rrca
    rrca
    ld a, [c]
    rst $38
    ld b, b
    rst $38
    rst $38
    sbc e
    rst $38
    cp a
    db $e4
    ld a, a
    ret nz

    ld a, a

jr_042_50de:
    pop af
    rst $38
    ld a, a
    ret nz

    rst $38
    add b
    rst $38
    and b
    rst $38
    pop de
    rst $38
    rst $38
    ld [hl], b
    rst $38
    or b
    cp a
    ret z

    rst $38
    add c
    rst $38
    ld a, a

jr_042_50f3:
    ld c, [hl]
    ccf
    jr nz, jr_042_5176

    ld a, b
    rst $38
    sbc a
    rst $38
    rst $38
    ld d, $ff
    add hl, hl
    rst $38
    xor b
    rst $38
    ld h, a
    cp $d5
    ldh [$c0], a
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    ccf
    rst $38
    jr nz, @+$41

    ld hl, $223f
    ccf
    ld b, e
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rra
    inc de
    rra
    rra
    rra
    ld de, $7fff
    ld a, l
    add e
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    ccf
    ldh a, [rIE]
    rlca
    rst $38
    ld hl, sp-$08
    adc b

jr_042_5130:
    rst $38
    and $e5
    rst $38
    ldh [$e0], a
    jr jr_042_5130

    inc b
    db $fc
    rst $00
    rst $38
    rst $38
    ld [c], a
    ccf
    ld a, [c]
    rra
    pop af
    sbc a
    ld sp, hl
    rrca
    cp $fe
    ldh [$cf], a
    rst $38
    and [hl]
    rst $38
    ld [c], a
    rst $38
    call nz, $9fff
    ld h, c
    cp $06
    db $fc
    inc b
    db $fc
    inc c
    rst $38
    rst $38
    scf
    rst $38
    call nc, Call_000_24ff
    rst $38
    ld b, h
    cp a
    rst $38
    add h
    rst $38
    dec b
    rst $38
    inc bc
    cp $e0
    ld bc, $fece
    ldh [rIE], a
    ld [bc], a
    cp $fe
    pop hl
    rst $30
    ldh [rIE], a

jr_042_5176:
    rst $38
    rst $38
    rra
    cp $e7
    db $fd
    rlca
    ld sp, hl
    rst $08
    ld [hl], c
    rst $38
    rst $38
    pop de
    rst $18
    ld d, c
    rst $18
    jp z, $87cf

    ld sp, hl
    add a
    adc d
    rst $38
    db $ec
    db $eb
    ld a, h
    ld a, h
    add h
    db $fc
    inc e

jr_042_5194:
    rst $38
    db $fc
    ld [bc], a
    cp $04
    db $fc
    jr jr_042_5194

    call nz, $fccf
    db $fc
    db $fc
    add b
    rst $38
    ld [c], a
    ret z

    db $e3
    jr c, jr_042_51e0

    rst $28
    ld a, h
    ld b, h
    db $fc
    and h
    cp $e0
    db $e4
    db $fc
    call nz, $f8ff
    cp b
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [rNR10]
    inc sp
    ldh [$e0], a
    xor h
    rst $20
    call nc, $40e3
    ret nz

    cp $e5
    ret z

    push hl
    nop
    nop
    nop
    add hl, bc
    nop
    rst $38
    rst $38
    rst $30
    or $01
    rst $38
    ld [c], a
    ret c

    rst $38
    rst $38
    rst $38
    ld hl, sp-$09
    rst $38
    rlca
    rlca
    add hl, bc
    rrca
    rrca

jr_042_51e0:
    rrca
    jr nc, jr_042_5222

    rst $38
    ld b, b
    ld a, a
    ld a, h
    ld a, a
    rst $38
    rst $00
    rst $38
    add b
    di

jr_042_51ed:
    rst $38
    sbc b
    db $fc
    ldh [$fa], a
    pop hl
    or h
    rst $38
    adc h
    rst $38
    rst $38
    jr jr_042_51ed

    inc c
    rst $38
    nop
    rst $38
    and b
    ld a, a
    rst $38
    ld b, b
    ccf
    ld sp, $1f1f
    ccf
    dec hl
    ccf
    ld a, a
    daa
    ccf
    dec l
    ld a, a
    ld [hl], c
    ld a, a
    ld b, b
    cp $e3
    rst $18
    ccf
    ccf
    jr nc, jr_042_5257

    jr nz, @-$36

    ldh [rLCDC], a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add e

jr_042_5222:
    rst $38
    add l
    ld a, a
    ld a, c
    rst $38
    ld a, a
    ld b, c
    ld a, $33
    inc c
    rrca
    inc e
    rra
    rst $38
    inc e
    rra
    ld e, $1f
    rra
    rra
    rrca
    rrca
    cp $82
    rst $38
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    ldh [rIE], a
    ldh [rNR32], a
    db $fc
    rlca
    rst $38
    ld b, $ff
    ld [$ffff], sp
    sub b
    rst $38
    ret nc

    ld a, a
    ret z

    ld a, a
    and $ff
    ccf
    db $e3

jr_042_5257:
    ccf
    ld sp, hl
    ccf
    db $fd
    rla
    db $fd
    rst $38
    rla
    rst $38
    daa
    ld a, [$f60e]
    ld a, $fc
    rst $18
    ld a, h
    ld hl, sp-$68
    db $fc
    inc c
    cp $e0
    sbc h
    db $fc
    rst $38
    inc d
    db $fc
    db $ec
    cp $8a
    rst $38
    adc e
    rst $38
    rst $38
    sub c
    rst $38
    ld a, c
    rst $38
    rst $38
    ld c, $fe
    ld a, [bc]
    jp c, $e0fe

    add hl, sp
    add c
    ldh [$b8], a
    ld hl, sp-$02
    pop hl
    ld e, h
    db $fc
    ld a, [hl]
    cp $e5
    cp h
    db $fc
    ld hl, sp-$08
    add b
    add b
    add d
    rst $38
    cp $e8
    rst $20
    ldh [$e0], a
    db $10
    ldh a, [$f0]
    ldh a, [$08]
    cpl
    ld hl, sp+$18
    ld hl, sp-$60
    or $e2
    add b
    rst $38
    ldh [$ca], a
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    db $fc
    inc e
    inc e
    inc de
    rra
    jr jr_042_52de

    rst $30
    jr nz, jr_042_5301

    db $10
    ld a, [$21e0]
    ccf
    ccf
    ccf
    cp a
    ld bc, $0301
    inc bc
    rlca
    inc b
    cp $e1
    inc bc
    rst $38
    ld [bc], a
    ld a, c
    ld a, c
    cp $8e
    cp $8a
    rst $38
    rst $38
    cp a

jr_042_52de:
    rst $38
    and e
    rst $38
    ld [c], a
    rra
    ld [de], a
    rra
    ld a, a
    ld [de], a
    rrca
    add hl, bc
    rrca
    add hl, bc
    rlca
    rlca
    xor [hl]
    rst $20
    pop bc
    ld bc, $e0ff
    or $e7
    db $fc
    push hl
    adc [hl]
    db $fd
    ld l, [hl]
    db $eb
    ld c, $0e
    rst $38
    ld sp, $c13f

jr_042_5301:
    rst $38
    add b
    rst $38
    add c
    rst $38
    rst $18
    add l
    rst $38
    inc bc
    rst $38
    ld bc, $e2fe
    add b
    rst $38
    db $fd
    add [hl]
    ldh a, [$e0]
    add c
    rst $38
    jp Jump_042_67ff


    ld a, h
    rst $38
    ld a, a
    ld a, e
    rst $38
    rst $08
    rst $38
    ld b, c
    rst $38
    ld b, b
    jp c, $e4fe

    add b
    push de
    ld [c], a
    add c
    rst $38
    adc $e0
    add d
    rst $38
    ei
    ld [bc], a
    rst $38
    rst $38
    ldh [$87], a
    rst $38
    rst $38
    adc a
    rst $38
    ld a, e
    ld a, l
    db $fd
    rst $38
    rst $20
    ld sp, hl
    ld sp, hl
    ld a, b
    ld a, b
    adc b
    rst $38
    cp [hl]
    add sp, -$3b
    ldh [$e0], a
    add hl, de
    ld sp, hl
    ld b, $b6
    ldh [rSC], a
    db $eb
    rst $38
    jp nz, $e282

    ld hl, $e076
    inc bc
    cp $83
    ei
    cp $03
    cp $e0
    add a
    rst $38
    call z, $f87c
    ld a, a
    cp b
    cp $e6
    rst $38
    dec b
    rst $38
    inc b
    cp $e4
    db $fd
    inc bc
    db $e3
    ldh [rSC], a
    rst $38
    add c
    cp $fe
    ld [bc], a
    xor $fe
    ldh [$82], a
    cp $01
    ld a, [hl]
    ldh [$f8], a
    ld [$fdf8], sp
    ld hl, sp-$04
    ldh [$08], a
    db $fc
    db $fc
    ld [bc], a
    cp $f9
    cp $d5
    ldh [$fb], a
    rst $38
    db $fd
    rst $38
    ld a, a
    ld a, a
    ld e, $f9
    ld e, $84
    rst $38
    ld h, h
    pop bc
    ld [hl], b
    ld [hl], b
    sub b
    ldh a, [$30]
    rst $28
    ldh a, [$08]
    ld hl, sp+$10
    ld a, [$f8e2]
    ld hl, sp+$00
    rst $18
    nop
    add b
    add b
    ret nz

    ld b, b
    cp $e1
    add b
    add b
    rst $38
    inc a
    inc a
    ld a, [hl]
    ld b, [hl]
    cp $c2
    cp $a2
    cp a
    cp $f2
    db $fc
    call z, $88f8
    cp $e1
    ldh a, [rTAC]
    db $10
    ldh [$e0], a
    xor h
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
    db $e3
    ld [c], a
    rlca
    rlca
    ld [$0f0f], sp
    cp a
    rrca
    db $10
    rra
    jr jr_042_5404

    dec b
    or $e2
    ld bc, $fff0
    ldh [$ca], a
    rst $38
    rst $38
    rst $38
    cp $fd
    ld bc, $0201
    inc bc
    rst $38
    rlca
    rlca
    jr c, @+$41

    ldh [rIE], a
    ld h, b
    rst $38
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38

jr_042_5404:
    dec bc
    cp $13
    cp $ff
    ld h, a
    db $fc
    rst $00
    db $fc
    sbc a
    db $fc
    cp a
    add sp, -$01
    cp a
    add sp, -$01
    db $e4
    ld e, a
    ld [hl], b
    ld l, a
    ld a, h
    rst $38
    ccf
    ccf
    rra
    inc e
    ccf
    jr c, @+$41

    jr z, @+$01

    ld a, a
    ld c, b
    ld a, a
    ld [hl], l
    ccf
    inc hl
    ld a, a
    ld h, c
    rst $38
    ld a, a
    ld d, c
    rst $38
    sub d
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $30
    ld [hl], b
    ld a, a
    ld b, b
    cp $e0
    add b
    rst $38
    rst $38
    rst $38
    db $eb
    rra
    db $10
    cp $e0
    rra
    db $fc
    pop hl
    ld d, $1f
    ld a, [de]
    sbc e
    rra
    rla
    ld a, [hl-]
    ldh [rIF], a
    rrca
    add h
    rst $38
    ld [c], a
    pop hl
    ldh [rIE], a
    ldh [$90], a
    ldh a, [$f0]
    ldh a, [$0c]
    db $fc
    ld [bc], a
    rst $38
    cp $3e
    cp $ff
    db $e3
    rst $38
    ld bc, $f9ff
    add hl, de
    db $fc
    ldh [$fa], a
    pop hl
    dec l
    rst $38
    ld sp, $18ff
    rst $38
    rst $08
    jr nc, @+$01

    nop
    rst $38
    dec b
    cp $02
    rst $38
    db $fc
    db $ec
    ld hl, sp-$08
    db $fc
    or h
    db $fc
    db $e4
    cp a
    db $fc
    or h
    cp $0e
    cp $02
    cp $e3
    db $fc
    rst $38
    db $fc
    inc c
    db $fc
    ld b, h
    db $fc
    ld [hl+], a
    cp $32
    db $fd
    cp $ff
    ldh [$72], a
    cp $62
    db $fc

jr_042_54a0:
    call c, $fffc
    ld h, h
    ld hl, sp-$08
    jr jr_042_54a0

    inc b
    db $fc
    add h
    ld a, a
    db $fc
    ld a, h
    db $fc
    inc b
    db $fc
    ld hl, sp-$08
    add d
    rst $38
    ld [bc], a
    db $fc
    ei
    add b
    rst $38
    ld [c], a
    ret c

    rst $38
    rst $38
    ld sp, hl
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    rst $20
    and $3e
    ld a, $21
    ccf
    jr c, @+$01

    ccf
    ld b, b
    ld a, a
    jr nz, @+$41

    jr @+$21

    inc hl
    rst $08
    ccf
    ccf
    ccf
    ld bc, $e2ff
    ret z

    rst $20
    dec c
    dec c
    rst $38
    ccf
    dec sp
    ld a, a
    ld c, e
    ccf
    inc sp
    ccf
    ld h, $ff
    ccf
    ld [hl], $3f
    ld [hl+], a
    rra
    ld e, $0f
    ld [$07f3], sp
    rlca
    xor d
    rst $28
    jp z, $02e1

    inc bc
    inc bc
    inc bc
    di
    ld [bc], a
    inc bc
    call nz, $fee9
    db $fd
    rlca
    rlca
    jr jr_042_5528

    rst $38
    jr nz, jr_042_554b

    db $e3
    rst $38
    ld b, a
    db $fc
    ld c, a
    ld hl, sp-$01
    adc a
    ld sp, hl
    sbc a
    ldh a, [$9f]
    ldh a, [$df]
    di
    rst $38
    rst $38
    ld h, l
    rst $38
    ld b, a
    rst $38
    inc hl
    ld sp, hl
    add [hl]
    rst $38
    ld a, a
    ld h, b
    ccf

jr_042_5528:
    jr nz, jr_042_5569

    jr nc, @+$01

    db $ec
    rst $38
    rst $38
    dec hl
    rst $38
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $ffaf
    and b
    rst $38
    ret nz

    cp $e0
    add b
    cp $e0
    rst $38
    cp a
    ld b, b
    ld a, a
    ld b, c
    ld a, a
    ld b, b
    ld a, a
    rst $30
    ldh [rIE], a

jr_042_554b:
    rst $38
    ld a, a
    ld h, c
    ld a, a
    ld a, a
    rst $38
    pop bc
    rst $38
    cp l
    rst $18
    jp $817f


    rst $38
    add c
    ldh a, [$e0]
    ld bc, $f3ff
    cp $fe
    adc b
    rst $38
    and $e5
    ldh a, [$f0]
    adc a
    rst $38

jr_042_5569:
    rst $38
    ld [bc], a
    rst $38
    reti


    rst $38
    db $fd
    daa
    cp $03
    rst $28
    cp $8f
    cp $03
    pop bc
    ldh [rDIV], a
    rst $38
    adc d
    rst $38
    rst $38
    ld c, $ff
    dec c
    db $fd
    inc de
    rst $38
    add c
    rst $38
    cp $72
    db $fc
    inc b
    cp $1e
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld l, b
    rst $38
    sub h
    rst $38
    inc d
    rst $38
    rst $20
    cp $d5
    ldh [$03], a
    cp $02
    cp $02
    db $fc
    db $fc
    db $fd
    inc b
    cp $e0
    call nz, $82fc
    cp $fe
    cp $fe
    ld sp, hl
    ldh [$fc], a
    ld hl, sp-$78
    cp $9e
    pop hl
    rst $38
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    ldh [rIE], a
    di
    rra
    rra
    adc b
    rst $38
    and $e5
    ret nz

    ret nz

    jr nz, @-$1e

    cp a
    ldh [$e0], a
    db $10
    ldh a, [$30]
    ldh a, [$fa]
    pop hl
    ldh [$cf], a
    ldh [rP1], a
    nop
    add b
    rst $38
    db $e4
    call nz, Call_000_08e7
    ld [$bcff], sp
    or h
    cp $6a
    rst $38
    cp c
    rst $38
    dec l
    rst $38
    cp $3a
    db $fc
    inc e
    db $fc
    call nz, Call_000_3838
    nop
    xor b
    di
    add $e9
    nop
    nop
    nop
    ld [$4956], sp
    ld d, [hl]
    adc d
    ld d, [hl]
    bit 2, [hl]
    inc c
    ld d, a
    ld c, l
    ld d, a
    adc [hl]
    ld d, a
    rst $08
    ld d, a
    db $10
    ld [$0000], sp
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_561a

    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_561a:
    ld [$2000], sp
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_5632

    inc c
    nop
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_563b

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_564a

jr_042_5632:
    inc d
    nop
    ld b, b
    jr jr_042_564d

    nop
    db $10
    jr nz, jr_042_5653

jr_042_563b:
    nop
    jr nz, jr_042_565e

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_5665

    nop
    add b
    db $10

jr_042_564a:
    ld [$0000], sp

jr_042_564d:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_565b

jr_042_5653:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_565b:
    ld [$2000], sp

jr_042_565e:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_5673

    inc c
    nop

jr_042_5665:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_567c

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_568b

jr_042_5673:
    inc d
    nop
    ld b, b
    jr jr_042_568e

    nop
    db $10
    jr nz, jr_042_5694

jr_042_567c:
    nop
    jr nz, jr_042_569f

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_56a6

    nop
    add b
    db $10

jr_042_568b:
    ld [$0000], sp

jr_042_568e:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_569c

jr_042_5694:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_569c:
    ld [$2000], sp

jr_042_569f:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_56b4

    inc c
    nop

jr_042_56a6:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_56bd

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_56cc

jr_042_56b4:
    inc d
    nop
    ld b, b
    jr jr_042_56cf

    nop
    db $10
    jr nz, jr_042_56d5

jr_042_56bd:
    nop
    jr nz, jr_042_56e0

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_56e7

    nop
    add b
    db $10

jr_042_56cc:
    ld [$0000], sp

jr_042_56cf:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_56dd

jr_042_56d5:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_56dd:
    ld [$2000], sp

jr_042_56e0:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_56f5

    inc c
    nop

jr_042_56e7:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_56fe

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_570d

jr_042_56f5:
    inc d
    nop
    ld b, b
    jr jr_042_5710

    nop
    db $10
    jr nz, jr_042_5716

jr_042_56fe:
    nop
    jr nz, jr_042_5721

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_5728

    nop
    add b
    db $10

jr_042_570d:
    ld [$0000], sp

jr_042_5710:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_571e

jr_042_5716:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_571e:
    ld [$2000], sp

jr_042_5721:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_5736

    inc c
    nop

jr_042_5728:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_573f

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_574e

jr_042_5736:
    inc d
    nop
    ld b, b
    jr jr_042_5751

    nop
    db $10
    jr nz, jr_042_5757

jr_042_573f:
    nop
    jr nz, jr_042_5762

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_5769

    nop
    add b
    db $10

jr_042_574e:
    ld [$0000], sp

jr_042_5751:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_575f

jr_042_5757:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_575f:
    ld [$2000], sp

jr_042_5762:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_5777

    inc c
    nop

jr_042_5769:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_5780

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_578f

jr_042_5777:
    inc d
    nop
    ld b, b
    jr jr_042_5792

    nop
    db $10
    jr nz, jr_042_5798

jr_042_5780:
    nop
    jr nz, jr_042_57a3

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_57aa

    nop
    add b
    db $10

jr_042_578f:
    ld [$0000], sp

jr_042_5792:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_57a0

jr_042_5798:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_57a0:
    ld [$2000], sp

jr_042_57a3:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_57b8

    inc c
    nop

jr_042_57aa:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_57c1

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_57d0

jr_042_57b8:
    inc d
    nop
    ld b, b
    jr jr_042_57d3

    nop
    db $10
    jr nz, jr_042_57d9

jr_042_57c1:
    nop
    jr nz, jr_042_57e4

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_57eb

    nop
    add b
    db $10

jr_042_57d0:
    ld [$0000], sp

jr_042_57d3:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_57e1

jr_042_57d9:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_57e1:
    ld [$2000], sp

jr_042_57e4:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_57f9

    inc c
    nop

jr_042_57eb:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_5802

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_5811

jr_042_57f9:
    inc d
    nop
    ld b, b
    jr jr_042_5814

    nop
    db $10
    jr nz, jr_042_581a

jr_042_5802:
    nop
    jr nz, jr_042_5825

    ld a, [de]
    nop
    jr nc, jr_042_5829

    inc e
    nop
    ld b, b
    jr nz, jr_042_582c

    nop
    add b
    nop

jr_042_5811:
    inc d
    nop
    nop

jr_042_5814:
    ld bc, $0014
    nop
    rst $38
    nop

jr_042_581a:
    nop
    nop
    ld [bc], a
    inc d
    nop
    nop
    inc bc
    ld [$ff00], sp
    inc b

jr_042_5825:
    ld [$ff00], sp
    dec b

jr_042_5829:
    ld [$0000], sp

jr_042_582c:
    ld b, $06
    nop
    ld bc, $0607
    nop
    ld bc, $0207
    nop
    ld [bc], a
    rst $38
    nop
    nop
    nop
    ld b, [hl]
    ld e, b
    ld c, [hl]
    ld e, b
    ld e, h
    ld h, c
    ld sp, $3d63
    ld h, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    ld e, a
    ld bc, $0000
    ld h, b
    ld e, b
    sub [hl]
    ld e, c
    db $dd
    ld e, d
    dec e
    ld e, h
    ld e, a
    ld e, l
    ret nz

    ld e, [hl]
    ld b, $60
    nop
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    rst $20
    and $01
    ld bc, $3131
    ld d, d
    rst $38
    ld [hl], e
    ld c, l
    ld a, a
    ld b, c
    ld a, a
    ld hl, $103f
    ld a, a
    rra
    ld [$060f], sp
    rlca
    ld bc, $dc01
    rst $28
    add [hl]
    cp $e1
    inc bc
    ld [bc], a
    cp $e1
    ld [c], a
    rst $28
    rst $38
    rst $38
    and $e5
    rlca
    rst $38
    rlca
    jr @+$21

    inc hl
    ccf
    ld c, [hl]
    ld a, l
    ld e, [hl]
    rst $38
    ld [hl], c
    cp a
    rst $20
    ei
    db $fc
    rst $28
    or e
    rst $38
    rst $38
    call z, $f2ff
    ld a, a
    call z, $d27f
    rst $38
    rst $38
    or $ff
    ld d, [hl]
    rst $38
    ld l, $ff
    jr nz, @+$01

    rst $38
    pop hl
    rra
    ldh a, [rIF]
    ld hl, sp-$39
    cp $3f
    rst $38
    ccf
    dec [hl]
    ccf
    ld [hl], a
    ld e, [hl]
    db $e3
    cp a
    ldh [rIE], a
    cp a
    ldh [rIE], a
    ldh a, [$9f]
    ldh a, [$9f]
    rst $38
    ld a, a
    rra
    db $f4
    inc e
    rst $38
    cp a
    ldh [$3f], a
    ldh a, [$e1]
    rst $38
    call nz, $c37f
    rst $38
    ld b, c
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ccf
    ld hl, $e1fe
    rra
    inc de
    rra
    ld de, $e0fe
    rst $38
    rra
    rra
    ld de, $717f
    adc a
    rst $38
    adc c
    ld a, a
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ld a, [hl]
    ld a, [hl]
    db $76
    push af
    rst $38
    ldh a, [$f0]
    inc c
    db $fc
    ld [c], a
    cp $b9
    ld e, a
    rst $38
    dec a
    rst $00
    cp $f3
    rst $28
    rra
    ei
    and $ef
    rst $38
    add hl, de
    rst $38
    daa
    db $fc
    ldh [rNR51], a
    rst $38
    scf
    rst $38
    rst $38
    dec [hl]
    rst $38
    cp d
    rst $38
    ld [bc], a
    rst $38
    jp $fcff


    add a
    ld hl, sp+$0f
    ld sp, hl
    ccf
    sbc $fe
    rst $38
    inc l
    db $fc
    sbc $f2
    rra
    pop af
    rra
    di
    rst $38
    rrca
    db $fd
    rra
    ld hl, sp+$2f
    add sp, -$19
    and $ff
    and a
    db $e4
    rst $30
    or $09
    rst $38
    inc d
    rst $38
    rst $38
    inc e
    rst $38
    sub b
    rst $38
    add hl, bc
    rst $38
    ld b, $fe
    rst $38
    db $fc
    db $fc
    cp $82
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d
    rst $08
    ld a, $22
    ld a, $22
    ld a, d
    ldh [$80], a
    ldh [$1f], a
    rla
    rst $30
    jr @+$21

    db $10
    ld [hl], a
    ldh [rNR10], a
    rra
    rrca
    rrca
    ld a, [$dff6]
    add b
    rst $38
    and $40
    ret nz

    ld b, [hl]
    add $a5
    rst $38
    rst $20
    reti


    ld a, a
    pop bc
    ld a, a
    jp nz, $847e

    ld a, a
    db $fc
    ld [$30f8], sp
    ldh a, [$c0]
    ret nz

    sub $ed
    inc bc
    ret nz

    ld b, b
    cp $e3
    jp z, $ace3

    rst $38
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    rst $20
    and $01
    ld bc, $3131
    ld d, d
    rst $38
    ld [hl], e
    ld c, l
    ld a, a
    ld b, c
    ld a, a
    ld hl, $103f
    rst $38
    rra
    ld c, $0f
    rra
    add hl, de
    ccf
    dec [hl]
    ccf
    rst $38
    ld a, [hl+]
    ccf
    ld hl, $121f
    rra
    ld de, $ff0f
    ld [$080f], sp
    rlca
    inc b
    inc bc
    ld [bc], a
    ld bc, $01f9
    cp b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    rlca
    jr @+$01

    rra
    inc hl
    ccf
    ld c, [hl]
    ld a, l
    ld e, [hl]
    ld [hl], c
    cp a
    rst $38
    rst $20
    ei
    db $fc
    rst $28
    or e
    rst $38
    call z, $ffff
    ld a, [c]
    ld a, a
    call z, $d27f
    rst $38
    or $ff
    rst $38
    ld d, [hl]
    rst $38
    ld l, $ff
    jr nz, @+$01

    pop hl
    rra
    rst $38
    pop af
    rrca
    ld sp, hl
    rst $00
    cp $ff
    cp a
    push af
    rst $38
    ld e, a
    rst $30
    sbc [hl]
    db $e3
    ccf
    ldh [$bf], a
    ldh [rIE], a
    rst $38
    ldh a, [$3f]
    ret nc

    ld e, a
    sbc a
    sbc a
    inc d
    rst $28
    inc e
    ccf
    ccf

jr_042_5a13:
    jr nz, jr_042_5a13

    ld [c], a
    ld b, h
    ld a, a
    ld b, e
    sbc $54
    ldh [$7f], a
    ld a, a
    ccf
    ld hl, $e1fe
    rra
    inc de
    ei
    rra
    ld de, $e0fe
    rra
    rra
    ld de, $717f
    rst $38
    adc a
    rst $38
    adc c
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    ei
    ld a, [hl]
    ld a, [hl]
    db $76
    push af
    ldh a, [$f0]
    inc c
    db $fc
    ld [c], a
    rst $38
    cp $b9
    ld e, a
    dec a
    rst $00
    cp $f3
    rst $28
    rst $38
    rra
    ei
    and $ff
    add hl, de
    rst $38
    daa
    rst $38
    db $fd
    ld bc, $e0fa
    rlca
    rst $38
    dec a
    rst $38
    sbc d
    rst $38
    rst $38
    ld [bc], a
    rst $38
    jp $c77c


    ld a, b
    rst $08
    ld sp, hl
    rst $38
    cp a
    rst $18
    cp $2f
    ld a, [$f1df]
    rra
    rst $38
    pop af
    rra
    ld a, [c]
    rrca
    db $fc
    rra
    ld hl, sp+$27
    rst $38
    db $e4
    db $e3
    db $e3
    and b
    ldh [$f0], a
    ldh a, [$08]
    db $dd
    ld hl, sp-$02
    pop hl
    add h
    db $fc
    inc b
    cp $e0
    db $fc
    db $fc
    rst $38
    cp $82
    ld a, [hl]
    ld b, d
    ld a, [hl]
    ld b, d

jr_042_5a93:
    ld a, $22
    di
    ld a, $22
    call nc, $80c0
    ldh [$1f], a
    rla
    jr jr_042_5abf

    cp l
    db $10
    ld [hl], a
    ldh [rNR10], a
    rra
    rrca
    rrca
    or $df
    add b
    cp $ff
    and $40
    ret nz

    ld b, [hl]
    add $a5
    rst $20
    reti


    rst $38
    ld a, a
    pop bc
    ld a, a
    jp nz, $847e

    db $fc
    jr c, @+$01

jr_042_5abf:
    ld hl, sp+$48
    ld hl, sp-$3c
    db $fc
    and h
    db $fc
    call nc, Call_042_7cff
    call nz, $f87c
    cp b
    ldh a, [rNR10]
    ldh [$1f], a
    jr nz, jr_042_5a93

    ld b, b
    add b
    add b
    or b
    rst $38
    xor h
    db $eb
    nop
    nop
    nop
    ld sp, hl
    nop
    rst $38
    rst $38
    rst $20
    and $01
    ld bc, $3131
    ld d, d
    rst $38
    ld [hl], e
    ld c, l
    ld a, a
    ld b, c
    ld a, a
    ld hl, $103f
    rst $38
    rra
    inc e
    rra
    ld a, $33
    ld a, a
    ld l, e
    ld a, a
    rst $38
    ld d, l
    ld a, a
    ld b, d
    ccf
    dec h
    ccf
    ld [hl+], a
    ccf
    rst $38
    ld [hl+], a
    rra
    ld de, $101f
    rrca
    ld [$f907], sp
    rlca
    cp b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    rlca
    jr @+$01

    rra
    inc hl
    ccf
    ld c, [hl]
    ld a, l
    ld e, [hl]
    ld [hl], c
    cp a
    rst $38
    rst $20
    ei
    db $fc
    rst $28
    or e
    rst $38
    call z, $ffff
    ld a, [c]
    ld a, a
    ret nz

    ld a, a
    call z, $feff
    rst $38
    rst $30
    ld d, d
    rst $38

jr_042_5b35:
    jr nz, jr_042_5b35

    ldh [$e1], a
    rra
    ldh a, [rIF]
    rst $38
    ld hl, sp-$79
    cp $fb
    ld a, a
    push af
    rst $18
    di
    rst $38
    ld e, $f1
    rra
    ldh a, [$1f]
    ldh a, [$9f]
    ldh a, [rIE]
    ld e, a
    ldh a, [rIE]
    rrca
    rrca
    dec bc
    ld c, $1f
    ei
    rra
    db $10
    cp $e2
    ld [hl+], a
    ccf
    ld hl, $203f
    rst $20
    ccf
    ccf
    ccf
    ld h, [hl]
    ldh [$fe], a
    ldh [$3f], a
    ld hl, $fd3e
    ld [hl+], a
    cp $e0
    ld a, $3e
    ld [hl+], a
    ld a, [hl]
    ld [hl], d
    adc [hl]
    rst $38
    cp $8a
    cp $fe
    cp $82
    cp $7e
    db $fd
    ld a, [hl]
    db $76
    push af
    ldh a, [$f0]
    inc c
    db $fc
    ld [c], a
    cp $ff
    cp c
    ld e, a
    dec a
    rst $00
    cp $f3
    rst $28
    rra
    rst $38
    ei
    and $ff
    add hl, de
    rst $38
    daa
    rst $38
    ld bc, $fafe
    ldh [$3f], a
    rst $38
    dec h
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    rst $38
    jp $87fc


    ld hl, sp+$0f
    pop af
    ccf
    rst $38
    rst $18
    cp $af
    ei
    rst $08
    ld a, b
    adc a
    ld hl, sp-$01
    rrca
    ld sp, hl
    rrca
    ld a, [$fc0f]
    dec bc
    ei
    rst $38
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ld hl, sp-$08
    inc b
    db $fc
    ld l, d
    cp $e1
    ld b, d
    sbc [hl]
    ldh [$82], a
    sbc b
    ldh [$7c], a
    ld b, h
    cp $e1
    ei
    ld a, [hl]
    ld b, d
    add b
    push hl
    ccf
    daa
    jr c, jr_042_5c1e

    jr z, jr_042_5c3f

    ld l, b
    ldh [rNR41], a
    ccf
    rra
    rra
    or $df
    add b
    rst $38
    and $ff
    ld b, b
    ret nz

    ld b, [hl]
    add $a5
    rst $20
    reti


    ld a, a
    rst $38
    pop bc
    ld a, a
    jp nz, $847e

    db $fc
    inc e
    db $fc
    db $fd
    inc h
    ld e, [hl]
    ldh [$d2], a
    ld a, [hl]
    ld [$e23e], a
    cp [hl]
    rst $38
    db $fc
    ld e, h
    ld hl, sp-$78
    ld hl, sp-$78
    ldh a, [rNR10]
    rrca
    ldh [rNR41], a
    ret nz

    ret nz

    xor [hl]
    rst $38
    xor h
    jp hl


    nop
    nop
    nop
    ld sp, hl

jr_042_5c1e:
    nop
    rst $38
    rst $38
    rst $28
    xor $19
    add hl, de
    add hl, hl
    add hl, sp
    ld h, $fb
    ccf
    ld hl, $e0fe
    ld de, $101f
    rra
    ld [$0fff], sp
    inc e
    rra
    ccf
    scf
    ld a, a
    ld l, e
    ld a, a
    rst $38
    ld d, l
    ld a, a
    ld b, d

jr_042_5c3f:
    ccf
    dec h
    ccf
    ld [hl+], a
    rra
    rst $38
    ld de, $111f
    rrca
    ld [$0407], sp
    inc bc
    ld sp, hl
    inc bc
    or [hl]
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    jr jr_042_5c76

    inc hl
    rst $38
    ccf
    ld c, [hl]
    ld a, l
    ld e, [hl]
    ld [hl], c
    cp a
    rst $20
    ld hl, sp-$01
    rst $28
    ldh a, [$bf]
    rst $28
    ldh a, [rIE]
    rst $08
    ld a, a
    rst $38
    ld a, [c]
    ld a, a
    ret nz

    rst $38
    call z, Call_042_7eff
    rst $38
    rst $38
    ld [de], a
    rst $38

jr_042_5c76:
    jr nz, @+$01

    ldh [$1f], a
    pop af
    rrca
    rst $38
    ld hl, sp+$07
    cp $fb
    rst $38
    push af
    ld e, a
    di
    rst $28
    sbc [hl]
    pop af
    rra
    ldh a, [$fe]
    pop hl
    sbc a
    ldh a, [$7f]
    ld a, a
    sbc a
    sbc a
    dec bc
    ld c, $0f
    rrca
    db $10
    ld h, b
    ldh [$bd], a
    ld [hl+], a
    ld d, [hl]
    ldh [$2c], a
    ccf
    ccf
    inc sp
    ld d, l
    ldh [rNR10], a
    rst $38
    ccf
    jr nz, jr_042_5ce7

    ld hl, $5e7e
    ld a, [hl]
    ld h, d
    rst $38
    cp [hl]
    cp $c1
    rst $38
    cp a
    rst $38
    pop bc
    rst $38
    ei
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    db $fd
    ldh a, [$f0]
    inc c
    db $fc
    ld [c], a
    rst $38
    cp $b9
    ld e, a
    dec a
    rst $00
    db $fc
    rst $30
    rrca
    db $fd
    ei
    sbc b
    ldh [rTAC], a
    rst $38
    ld sp, hl
    rst $38
    daa
    rst $38
    rst $38
    ld bc, $19ff
    rst $38
    ccf
    rst $38
    inc h
    rst $38
    rst $38
    ld [bc], a
    rst $38
    add e
    db $fc
    rst $00
    ld hl, sp+$0f
    ldh a, [rIE]
    ccf

jr_042_5ce7:
    rst $18
    rst $38
    xor a
    ld sp, hl
    rst $08
    ld a, b
    adc a
    rst $30
    ld hl, sp+$0f
    ld sp, hl
    cp $e0
    cp $0b
    ld_long a, $fff9
    ld sp, hl
    ret nc

    ld [hl], b
    ld hl, sp-$08
    inc b
    db $fc
    inc b
    rst $38
    db $fc
    ld b, d
    cp $82
    cp $ba
    cp $fe
    rst $38
    add $fc
    add h
    db $fc
    add h
    cp $82
    ld a, [hl]
    rst $38
    ld b, d
    ccf
    dec a
    ccf
    inc hl
    ld a, $3f
    ld b, c
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld b, c
    ld a, a
    ccf
    ccf
    cp $df
    ld a, [$e5e6]
    add b
    rst $38
    and $44
    call nz, $ce4a
    xor d
    rst $38

jr_042_5d32:
    xor $d2
    ld a, [hl]
    jp nz, $c47e

    ld a, h
    add h
    cp a
    db $fc
    ld [$1cf8], sp
    db $fc
    ld h, h
    ld e, h
    ldh [$d2], a
    rst $38
    ld a, [hl]
    ld [$e2be], a
    cp [hl]
    db $fc
    ld e, h
    ld hl, sp+$7f
    ld [$10f0], sp
    ldh [rNR41], a
    ret nz

    ret nz

    or h
    rst $38
    rrca
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    add sp, $08
    ld [$141c], sp
    ld a, $2a
    rst $38
    ld a, [hl]
    ld d, [hl]
    ld a, a
    ld l, e
    ld a, a
    ld d, h
    ccf
    jr nz, jr_042_5d32

    ccf
    jr nz, @+$21

    ld de, $090f
    cp $e0
    ld [$0fef], sp
    ld [$0407], sp
    cp $e1
    dec de
    ld a, [de]
    cpl
    ei
    ld a, $23
    cp $e0
    ld de, $0d1f
    rrca
    inc bc
    sbc a
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $c201
    jp hl


    or [hl]
    rst $20
    inc bc
    db $fd
    inc bc
    pop de
    pop hl
    rrca
    rrca
    inc de
    ld e, $13
    ld e, $cf
    ld de, $0e1f
    ld c, $da

jr_042_5dab:
    di
    or $f5
    rst $00
    rst $00
    rst $38
    ret c

    ld e, a
    and e
    cp a
    adc $fd
    sbc a
    rst $30
    rst $38
    jr c, jr_042_5dab

    rst $30
    ld hl, sp-$11
    or e
    rst $38
    call z, $ffff
    ld a, [c]
    rst $38
    ret nz

    rst $38
    ld c, h
    rst $38
    ld a, [hl]
    rst $28
    rst $38
    ld d, d
    rst $38

jr_042_5dcf:
    jr nz, jr_042_5dcf

    ldh [$31], a
    rst $38
    ld d, c
    rst $38
    rst $38
    adc c
    rst $38
    ld c, $ff
    dec bc
    rst $30
    dec e
    rst $38
    di
    sbc [hl]
    ld [hl], c
    ld e, a
    jr nc, jr_042_5e24

    db $10
    rra
    ld a, [hl]
    cp $e1
    rrca
    rrca
    dec bc
    ld c, $0f
    rrca
    db $f4
    pop hl
    rst $38
    and b
    cp a
    ld h, d
    rst $38
    pop hl
    rst $38
    ldh [$3f], a
    rst $28
    rst $38
    ld a, a
    rst $38
    and c
    cp $e1
    ld a, a
    ld h, c
    ld a, a
    sbc a
    ld h, c
    ld a, $22
    inc e
    inc e
    add h
    rst $38
    ld a, [c]
    pop bc
    ldh a, [rIE]
    ldh a, [$0c]
    db $fc
    ld [c], a
    cp $b9
    ld e, a
    db $fd
    rst $38
    rst $30
    ld c, $fb
    rst $30
    rrca
    ei
    and $ff
    rst $18
    add hl, de

jr_042_5e24:
    rst $38
    daa
    rst $38
    ld bc, $e0fa
    ccf
    rst $38
    rst $38
    dec h
    rst $38
    add e
    rst $38
    ld [bc], a
    rst $38
    jp nz, $ff7f

    push bc
    ld a, a
    ret z

    rst $38
    or b
    rst $38
    ret nc

    rst $28
    rst $38
    cp b
    rst $08
    ld a, b
    adc a
    ld sp, hl
    ld c, $fa
    inc c
    rst $38
    db $fc
    ld [$08f8], sp
    ld hl, sp-$10
    ldh a, [$d0]
    rst $38
    ld [hl], b
    ld hl, sp-$08
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    ei
    cp $43
    rst $10
    ldh [$83], a
    cp $ff
    rst $38
    ld a, a
    db $dd
    ld b, d
    cp $e2
    ld b, e
    ld a, a
    ld b, e
    add b
    rst $38
    nop
    nop
    rst $38
    inc c
    inc c
    ld a, [de]
    ld e, $15
    rra
    db $db
    rst $18
    rst $38
    or l
    rst $38
    ld c, e
    ld a, a
    ld b, c
    ld a, a
    ld hl, $ff3f
    cp [hl]
    cp [hl]
    ld a, h
    db $e4
    db $fc
    call nz, $c8f8
    rst $28
    ld a, b
    ret z

    ldh a, [$90]
    cp $e0
    db $10
    or $36
    rst $38
    db $ed
    ccf
    pop hl
    ccf
    jp nz, $c47e

    ld a, h
    rst $38
    ret z

    ld hl, sp-$10
    ld [hl], b
    ldh [rNR41], a
    ret nz

    ld b, b
    cp e
    add b
    add b
    ld a, [hl]
    pop de
    ldh [$e0], a
    db $10
    rst $08
    ldh [$f8], a
    rst $38
    ld a, b
    db $e4
    inc a
    db $e4
    cp h
    call nz, $b8fc
    ld bc, $0cb8
    ld sp, hl
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    ld a, [$0e0e]
    rra
    dec de
    rra
    ld d, $ff
    ccf
    dec hl
    ccf
    dec [hl]
    ccf
    jr z, jr_042_5f11

    jr nc, @+$01

    ccf
    add hl, sp
    cpl
    add hl, sp
    rra
    add hl, de
    rrca
    add hl, bc
    cp a
    rrca
    ld [$080f], sp
    rlca
    inc b
    cp $e0
    dec b
    ld c, a
    inc bc
    ld [bc], a
    ld bc, $be01
    ei
    and b
    rst $20
    ld bc, $e4ff
    cp $d6
    db $fd
    rlca
    rlca
    jr jr_042_5f18

    inc hl
    ccf
    ld c, [hl]
    rst $38
    ld a, l
    sbc a

Call_042_5eff:
    rst $30
    cp b
    rst $28
    rst $30
    ld hl, sp-$11
    rst $38
    or e
    rst $38
    call z, Call_042_72ff
    rst $38
    ld b, b
    rst $38
    rst $38
    ld c, h
    rst $38

jr_042_5f11:
    cp $7f
    ld d, d
    ccf
    jr nz, @+$41

    rst $38

jr_042_5f18:
    jr nz, @+$01

    pop hl
    sbc a
    pop af
    rst $28
    ld sp, hl
    rst $38
    rst $38
    sbc [hl]
    ei
    adc a
    push af
    rra
    di
    ld e, $f1
    rst $38
    rra
    ldh a, [$df]
    jr nc, jr_042_5f6e

    db $10
    rra
    db $10
    ccf
    rra
    rrca
    rrca
    dec bc
    ld c, $1f
    ld hl, sp-$20
    db $f4
    pop hl
    rst $30
    ld [hl+], a
    ccf
    ld hl, $e0d5
    ccf
    ccf
    rra
    ld de, $1fff
    ld de, $213f
    ld a, [hl]
    ld h, d
    cp [hl]
    ld [c], a
    rst $38

jr_042_5f51:
    cp h
    db $e4
    ld a, h
    call c, $c47c
    jr c, jr_042_5f51

    rst $28
    ld [$f0f8], sp
    ldh a, [$0c]
    ei
    ldh a, [$f0]
    inc c
    rst $38
    db $fc
    ld [c], a
    cp $b9
    ld e, a
    db $fd
    rst $30
    ld c, $ff
    ei

jr_042_5f6e:
    rst $30
    rrca
    ei
    and $ff
    add hl, de
    rst $38
    rst $30
    daa
    rst $38
    ld bc, $e0fa
    ccf
    rst $38
    dec h
    rst $38
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    jp $c77c


    ld a, b
    rst $38
    rst $08
    rst $38
    cp a
    rst $18
    pop af
    xor a
    ld hl, sp-$31
    rst $38
    ld a, b
    adc a
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    cp $0b
    rst $38
    ld a, [$fa0b]
    pop af
    pop af
    ret nc

    ld [hl], b
    ld hl, sp+$77
    ld hl, sp+$04
    db $fc
    cp $e1
    ld b, d
    cp $82
    cp $e0
    rst $38
    cp $fe
    ld a, h
    ld b, h
    ld a, h
    ld b, h
    ld a, [hl]
    ld b, d
    rst $38
    ccf
    inc hl
    ld a, $23
    ld e, $13
    rra
    dec e
    scf
    rra
    ld de, $c50e
    ret nz

    rlca
    rlca
    call nc, Call_042_6adf
    jp $80fd


    rst $38
    and $40
    ret nz

    ld b, [hl]
    add $b9
    rst $38
    rst $38
    pop bc
    ld a, a

jr_042_5fd9:
    reti


    ld a, a
    and $7e
    and d
    cp $ff
    sub d
    cp $ca
    cp $44
    ld a, h
    add sp, -$08
    rst $38
    ldh a, [$b0]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [rNR10]
    rst $38
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
    ld b, $b6
    ei
    ld b, b
    ret nz

    cp $e3
    ret c

    db $eb
    nop
    nop
    nop
    db $fd
    nop
    rst $38
    add sp, $08
    ld [$141c], sp
    ld a, $2a
    rst $38
    ld a, [hl]
    ld d, [hl]
    ld a, a
    ld l, e
    ld a, a
    ld d, h
    ccf
    jr nz, jr_042_5fd9

    ccf
    jr nz, @+$21

    ld de, $090f
    cp $e0
    ld [$0fef], sp
    ld [$0407], sp
    cp $e1
    dec de
    ld a, [de]
    cpl
    ei
    ld a, $23
    cp $e0
    ld de, $0d1f
    rrca
    inc bc
    rra
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $c201
    jp hl


    rst $38
    rst $38
    rst $38

jr_042_6042:
    rst $38
    cp $72
    pop hl
    rst $00
    rst $00
    ret c

    ld e, a
    and e
    cp a
    adc $ff
    db $fd
    sbc a
    rst $30
    jr c, jr_042_6042

    rst $30
    ld hl, sp-$11
    rst $38
    or e
    rst $38
    call z, $f2ff
    rst $38
    ret nz

    rst $38
    ld a, a
    ld c, h
    rst $38
    ld a, [hl]
    rst $38
    ld d, d
    rst $38

jr_042_6066:
    jr nz, jr_042_6066

    ldh [rIE], a
    ld sp, $51ff
    rst $38
    adc c
    rst $38
    ld c, $ff
    rst $38

jr_042_6073:
    dec bc
    rst $30
    dec e
    di
    sbc [hl]
    ld [hl], c
    ld e, a
    jr nc, jr_042_6073

    ccf
    db $10
    rra
    cp $e1
    rrca
    rrca
    dec bc
    ld c, $7d
    rra
    or $e2
    db $10
    rra
    ld [hl+], a
    ccf
    ld hl, $e03f
    rst $28
    ccf
    ccf
    rra
    ld de, $e1fe
    ccf
    ld hl, $f53e
    ld [hl+], a
    cp $e0
    ld a, $fa
    ld [c], a
    ld [hl+], a
    ld e, [hl]
    ld a, [hl]
    ld b, d
    rst $28
    ld a, [hl]
    ld e, d
    ld a, [hl]
    ld h, [hl]
    ld a, [$42e0]
    ld a, [hl]
    inc a
    db $fd
    inc a
    ld [hl], b
    rst $28
    ldh a, [$f0]
    inc c
    db $fc
    ld [c], a
    cp $ff
    cp c
    ld e, a
    db $fd
    rst $30
    ld c, $fb
    rst $30
    rrca
    rst $38
    ei
    and $ff
    add hl, de
    rst $38
    daa
    rst $38
    ld bc, $fafe
    ldh [$3f], a
    rst $38
    dec h
    rst $38
    add e
    rst $38
    ld [bc], a
    rst $38
    rst $38
    jp nz, $c57f

    ld a, a
    ret z

    rst $38
    or b
    rst $38
    rst $38

Jump_042_60e0:
    ret nc

    rst $28
    cp b
    rst $08
    ld a, b
    adc a
    ld sp, hl
    rst $38
    ld c, $fa
    inc c
    db $fc
    ld [$08f8], sp
    ld hl, sp-$01
    ldh a, [$f0]
    ret nc

    ld [hl], b
    ld hl, sp-$08
    inc b
    db $fc
    xor $fe
    pop hl
    ld b, d
    cp $82
    cp $e0
    cp $fe
    ld a, h
    xor l
    ld b, h
    cp $e1
    ld a, [hl]
    ld b, d
    add b
    jp hl


    dec a
    ld h, h
    ldh [$2d], a
    ld a, e
    ccf
    inc sp
    ld e, [hl]
    ldh [rNR42], a
    ccf
    ld e, $1e
    add b
    ret


    rst $38
    inc c
    inc c
    ld a, [de]
    ld e, $15
    rra
    db $db
    rst $18
    rst $38
    or l
    rst $38
    ld c, e
    ld a, a
    ld b, c
    ld a, a
    ld hl, $ff3f
    cp [hl]
    cp [hl]
    ld a, h
    db $e4
    db $fc
    call nz, $c8f8
    rst $28
    ld a, b
    ret z

    ldh a, [$90]
    cp $e0
    db $10
    or $36
    rst $38
    db $ed
    ccf
    pop hl
    ccf
    jp nz, $c47e

    ld a, h
    rst $38
    ret z

    ld hl, sp-$10
    ld [hl], b
    ldh [rNR41], a
    ret nz

    ld b, b
    inc bc
    add b
    add b
    or b
    rst $18
    rst $38
    ei
    nop
    nop
    nop
    ld l, d
    ld h, c
    xor e
    ld h, c
    db $ec
    ld h, c
    dec l
    ld h, d
    ld l, [hl]
    ld h, d
    xor a
    ld h, d
    ldh a, [$62]
    db $10
    ld [$0000], sp
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_617c

    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_617c:
    ld [$2000], sp
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6194

    inc c
    nop
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_619d

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_61ac

jr_042_6194:
    inc d
    nop
    ld b, b
    jr jr_042_61af

    nop
    db $10
    jr nz, jr_042_61b5

jr_042_619d:
    nop
    jr nz, jr_042_61c0

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_61c7

    nop
    add b
    db $10

jr_042_61ac:
    ld [$0000], sp

jr_042_61af:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_61bd

jr_042_61b5:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_61bd:
    ld [$2000], sp

jr_042_61c0:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_61d5

    inc c
    nop

jr_042_61c7:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_61de

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_61ed

jr_042_61d5:
    inc d
    nop
    ld b, b
    jr jr_042_61f0

    nop
    db $10
    jr nz, jr_042_61f6

jr_042_61de:
    nop
    jr nz, jr_042_6201

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_6208

    nop
    add b
    db $10

jr_042_61ed:
    ld [$0000], sp

jr_042_61f0:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_61fe

jr_042_61f6:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_61fe:
    ld [$2000], sp

jr_042_6201:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6216

    inc c
    nop

jr_042_6208:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_621f

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_622e

jr_042_6216:
    inc d
    nop
    ld b, b
    jr jr_042_6231

    nop
    db $10
    jr nz, jr_042_6237

jr_042_621f:
    nop
    jr nz, jr_042_6242

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_6249

    nop
    add b
    db $10

jr_042_622e:
    ld [$0000], sp

jr_042_6231:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_623f

jr_042_6237:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_623f:
    ld [$2000], sp

jr_042_6242:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6257

    inc c
    nop

jr_042_6249:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_6260

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_626f

jr_042_6257:
    inc d
    nop
    ld b, b
    jr jr_042_6272

    nop
    db $10
    jr nz, jr_042_6278

jr_042_6260:
    nop
    jr nz, jr_042_6283

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_628a

    nop
    add b
    db $10

jr_042_626f:
    ld [$0000], sp

jr_042_6272:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_6280

jr_042_6278:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_6280:
    ld [$2000], sp

jr_042_6283:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6298

    inc c
    nop

jr_042_628a:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_62a1

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_62b0

jr_042_6298:
    inc d
    nop
    ld b, b
    jr jr_042_62b3

    nop
    db $10
    jr nz, jr_042_62b9

jr_042_62a1:
    nop
    jr nz, jr_042_62c4

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_62cb

    nop
    add b
    db $10

jr_042_62b0:
    ld [$0000], sp

jr_042_62b3:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_62c1

jr_042_62b9:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_62c1:
    ld [$2000], sp

jr_042_62c4:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_62d9

    inc c
    nop

jr_042_62cb:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_62e2

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_62f1

jr_042_62d9:
    inc d
    nop
    ld b, b
    jr jr_042_62f4

    nop
    db $10
    jr nz, jr_042_62fa

jr_042_62e2:
    nop
    jr nz, jr_042_6305

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_630c

    nop
    add b
    db $10

jr_042_62f1:
    ld [$0000], sp

jr_042_62f4:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_6302

jr_042_62fa:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_6302:
    ld [$2000], sp

jr_042_6305:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_631a

    inc c
    nop

jr_042_630c:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_6323

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_6332

jr_042_631a:
    inc d
    nop
    ld b, b
    jr jr_042_6335

    nop
    db $10
    jr nz, jr_042_633b

jr_042_6323:
    nop
    jr nz, @+$22

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_634d

    nop
    add b
    nop

jr_042_6332:
    inc d
    nop
    nop

jr_042_6335:
    ld bc, $0014
    nop
    rst $38
    nop

jr_042_633b:
    nop
    nop
    ld [bc], a
    inc c
    nop
    nop
    inc bc
    rrca
    nop
    nop
    ld b, $01
    nop
    ld a, [$0206]
    nop
    db $fc

jr_042_634d:
    ld b, $01
    nop
    db $fd
    ld b, $01
    nop
    db $fd
    ld b, $01
    nop
    cp $06
    ld bc, $fe00
    ld b, $01
    nop
    rst $38
    inc b
    ld bc, $ff00
    inc b
    ld bc, $ff00
    inc b
    ld bc, $ff00
    inc b
    ld bc, $ff00
    inc b
    inc b
    nop
    rst $38
    inc b
    ld a, [bc]
    nop
    nop
    inc b
    ld bc, $0100
    inc b
    ld bc, $0100
    inc b
    ld bc, $0100
    inc b
    ld bc, $0100
    dec b
    ld bc, $0100
    dec b
    ld bc, $0100
    dec b
    ld b, $00
    ld [bc], a
    dec b
    dec b
    nop
    inc bc
    rst $38
    nop
    nop
    nop

    db $a7, $63, $af, $63, $72, $6b, $04, $6d

    db $10
    ld l, l

    db $ff, $6b, $ff, $6b, $1f, $02, $00, $00, $c0, $63, $02, $65

    ld d, d
    ld h, [hl]
    adc a
    ld h, a
    xor l
    ld l, b
    ld [$006a], sp
    nop
    nop
    nop
    nop

    db $f9, $00, $ff, $ff, $f1, $f0, $01, $01, $07, $06, $07, $5f, $05, $0f, $0a, $07
    db $05, $f8, $e0, $04, $fe, $e2, $6c, $f8, $e5, $f2, $e0, $03, $03, $c4, $fb, $02
    db $03, $cd, $e1, $f1, $07, $c7, $e0, $d6, $f7, $da, $e1, $0c, $0f, $13, $1f, $ff
    db $17, $1c, $2f, $38, $3f, $33, $3f, $30, $ff, $3f, $27, $3b, $3f, $7b, $7f, $fb
    db $9f, $ff, $ff, $b7, $ff, $90, $ff, $b0, $df, $f8, $ff, $ff, $b9, $ef, $a8, $f7
    db $b4, $ff, $ec, $ff, $fb, $6a, $f3, $92, $f3, $93, $ec, $2f, $ff, $f5, $3f, $cd
    db $ff, $f2, $7f, $f2, $5f, $ff, $e2, $3f, $e3, $3f, $e0, $ff, $20, $3f, $ff, $40
    db $7f, $40, $7f, $7f, $7f, $7c, $6f, $fb, $7f, $43, $f7, $e0, $46, $3f, $21, $3f
    db $20, $fe, $fe, $e3, $7f, $40, $ff, $f8, $27, $fe, $11, $3f, $ff, $00, $ff, $ff
    db $ff, $04, $fc, $e0, $14, $f5, $ff, $e0, $e0, $18, $f8, $06, $fe, $19, $ff, $ff
    db $fd, $e7, $fe, $03, $ff, $19, $ff, $01, $ff, $ff, $1c, $ef, $bf, $ef, $ff, $ef
    db $ff, $ff, $ff, $bd, $ff, $a1, $ff, $41, $ff, $03, $ff, $ff, $33, $de, $f2, $9c
    db $f4, $fc, $64, $ff, $f8, $08, $fc, $0c, $f2, $3e, $e5, $ff, $7f, $89, $ff, $50
    db $ff, $60, $ff, $82, $fe, $e2, $a9, $01, $fe, $e4, $9d, $e0, $f7, $97, $e0, $00
    db $c2, $e0, $e0, $db, $bf, $a0, $fe, $e1, $df, $50, $fe, $e0, $d7, $f8, $bf, $6f
    db $f0, $ff, $50, $df, $df, $f3, $e0, $8f, $f5, $8f, $94, $df, $80, $ff, $e6, $c0
    db $c0, $e0, $20, $7b, $e0, $a0, $fc, $e1, $40, $c0, $80, $80, $da, $ed, $f7, $40
    db $c0, $20, $e1, $e0, $70, $d0, $f0, $90, $ff, $f8, $08, $f8, $88, $f8, $08, $f0
    db $10, $e7, $e0, $20, $c0, $d8, $e0, $c2, $e6, $40, $c0, $40, $fe, $c0, $e0, $20
    db $f0, $90, $78, $e8, $18, $f8, $ff, $18, $f8, $f0, $f0, $10, $f0, $e0, $e0, $00
    db $00, $00, $f9, $00, $ff, $ff, $f1, $f0, $1c, $1c, $3e, $2a, $7f, $ff, $55, $7f
    db $6f, $ff, $96, $7f, $6a, $3f, $ff, $34, $3f, $24, $3f, $20, $1f, $11, $1f, $ff
    db $1c, $0f, $08, $0f, $08, $07, $04, $07, $f7, $04, $03, $03, $be, $f9, $01, $01
    db $02, $03, $c6, $db, $e0, $07, $07, $d5, $e0, $d6, $f7, $da, $e1, $0c, $0f, $ff
    db $13, $1f, $17, $1c, $2f, $38, $3f, $33, $ff, $3f, $30, $3f, $27, $3b, $3f, $7b
    db $7f, $ff, $fb, $9f, $ff, $b7, $ff, $90, $ff, $b0, $ef, $5f, $78, $3f, $39, $94
    db $e1, $87, $84, $83, $fd, $82, $fe, $e0, $83, $8c, $8f, $b5, $bf, $cd, $ff, $ff
    db $f2, $bf, $f2, $1f, $e2, $3f, $e3, $ff, $3f, $e0, $ff, $20, $3f, $40, $7f, $40
    db $7f, $7f, $7f, $7f, $7c, $6f, $7f, $43, $f7, $e0, $df, $46, $3f, $21, $3f, $20
    db $fe, $e3, $7f, $40, $ff, $ff, $f8, $27, $fe, $11, $ff, $00, $ff, $e7, $ff, $ff
    db $04, $fc, $e0, $14, $f5, $e0, $e0, $18, $ff, $f8, $06, $fe, $19, $ff, $fd, $e7
    db $fe, $ff, $03, $ff, $19, $ff, $01, $ff, $1c, $ef, $ff, $bf, $ef, $ff, $ef, $ff
    db $ff, $bd, $ff, $ff, $a1, $ff, $41, $ff, $03, $ff, $33, $de, $ff, $f2, $9c, $f4
    db $fc, $64, $f8, $08, $fc, $ff, $0c, $f2, $3e, $e5, $ff, $89, $ff, $50, $2f, $ff
    db $60, $ff, $82, $fe, $e2, $01, $fe, $e4, $9d, $e0, $75, $f7, $97, $e0, $00, $c2
    db $e0, $e0, $bf, $a0, $fe, $e1, $fb, $df, $50, $fe, $e0, $d7, $f8, $6f, $f0, $ff
    db $ff, $50, $df, $df, $df, $70, $ff, $8f, $8f, $fa, $94, $df, $80, $ff, $e6, $c0
    db $c0, $e0, $20, $e0, $bd, $a0, $fc, $e1, $40, $c0, $80, $80, $da, $ed, $40, $fb
    db $c0, $20, $e1, $e0, $70, $d0, $f0, $90, $f8, $ff, $08, $f8, $88, $f8, $08, $f0
    db $10, $e0, $73, $20, $c0, $d8, $e0, $c2, $e6, $40, $c0, $40, $c0, $e0, $ff, $20
    db $f0, $90, $78, $e8, $18, $f8, $18, $7f, $f8, $f0, $f0, $10, $f0, $e0, $e0, $00
    db $00

    nop
    ld de, $ff00
    rst $38
    rst $38
    rst $38
    jp hl


    add sp, $01
    rst $38
    ld [c], a
    or $eb
    sbc $ed
    ld a, a
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    rlca
    db $fc
    ldh [$fb], a
    inc bc
    inc bc
    cp b
    rst $30
    ld [bc], a
    inc bc
    inc c
    rrca
    inc de
    rst $38
    rra
    rla
    inc e
    cpl
    jr c, jr_042_66bb

    inc sp
    ccf
    rst $38
    jr nc, jr_042_66c0

    daa
    dec sp
    ccf
    ld a, e
    ld a, a
    ei
    rst $38
    sbc a
    rst $38
    or a
    rst $38
    sub b
    rst $38
    or b
    ld e, a
    rst $18
    ld a, b
    ccf
    add hl, sp
    rrca
    ld [$e0bb], sp
    inc b
    inc bc
    rst $38
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    rlca
    inc e
    rra
    dec l
    rst $38
    ccf
    ld d, l
    ld a, a
    ld d, d
    ld a, a
    ld [c], a
    rst $38
    ld [c], a
    ld a, a
    ccf
    db $e3
    ccf
    ret nz

    ld a, a
    ret nz

    rst $38
    cp $e0
    rst $38
    ld a, a
    rst $38
    ld a, a
    db $fc

jr_042_66bb:
    ld l, a
    rst $38
    jp Jump_042_7f7f


jr_042_66c0:
    ld b, b
    ld a, a
    ld b, [hl]
    ccf
    ld hl, $203f
    cp $e3
    rst $38
    ld a, a
    ld b, b
    rst $38
    ld hl, sp+$27
    cp $11
    rst $38
    sbc a
    nop
    rst $38
    rst $38
    rst $38
    inc b
    db $fc
    ldh [$2e], a
    push af
    ldh [rIE], a
    ldh [rNR23], a
    ld hl, sp+$06
    cp $19
    rst $38
    db $fd
    rst $38
    rst $20
    cp $03
    rst $38
    add hl, de
    rst $38
    ld bc, $ffff
    inc e
    rst $28
    cp a
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    and c
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38
    rst $38
    inc sp
    sbc $f2
    sbc h
    db $f4
    db $fc
    ld h, h
    ld hl, sp-$01
    ld [$0cfc], sp
    ld a, [c]
    ld a, $e5
    rst $38
    adc c
    cp a
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    add d
    cp $e2
    ld bc, $fe7e
    ld [c], a
    inc bc
    cp $ff
    db $fc
    rst $38
    call c, $e09b
    db $dd
    ld [bc], a
    jp nz, $e0e0

    cp a
    and b
    cp $e1
    rst $18
    ld d, b
    cp $fe
    ldh [$d7], a
    ld hl, sp+$6f
    ldh a, [rIE]
    ld d, b
    rst $18
    cp a
    rst $18
    rst $18
    ld [hl], b
    rst $38
    adc a
    adc a
    xor [hl]
    rst $18
    add b
    ld a, [hl]
    rst $38
    and $c0
    ret nz

    ldh [rNR41], a
    ldh [$a0], a
    db $fc
    pop hl
    rst $28
    ld b, b
    ret nz

    add b
    add b
    jp c, Jump_042_40ed

    ret nz

jr_042_675b:
    jr nz, jr_042_675b

    pop hl
    ldh [rSVBK], a
    ret nc

    ldh a, [$90]
    ld hl, sp+$08
    ld hl, sp-$21
    adc b
    ld hl, sp+$08
    ldh a, [rNR10]
    jp nc, Jump_042_60e0

    ldh [rPCM34], a
    and b
    ret nz

    ld b, b
    jp nz, Jump_042_40e4

    ret nz

    ld b, b
    ret nz

    ldh [rIE], a
    jr nz, @-$0e

    sub b
    ld a, b
    add sp, $18
    ld hl, sp+$18
    ld a, a
    ld hl, sp-$10
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    sub c
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    ld [c], a
    ld bc, $e0ff
    jp c, Jump_000_03e7

    rst $38
    inc bc
    rlca
    inc b
    rrca
    add hl, bc
    rra
    inc d
    rra
    ld a, a
    ld [de], a
    rrca
    dec bc
    rlca
    rlca
    inc bc
    inc bc
    db $e4
    rst $20
    rst $38
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    call $fc07
    ldh [$03], a
    inc bc
    xor b
    rst $38
    ldh a, [$ef]
    rlca
    rlca
    rst $38
    jr jr_042_67e7

    ld [hl+], a
    ccf
    inc h
    ccf
    ld b, h
    ld a, a
    rst $38
    ld c, h
    ld a, a
    ld e, a
    ld [hl], e
    ld a, a
    ld h, [hl]
    ld a, a
    ld b, b
    rst $38
    ld a, a
    ld l, [hl]
    di
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $28
    cp a
    pop hl
    ld a, a
    ld [hl], c

jr_042_67e7:
    rra
    inc de
    rst $38
    ccf
    jr c, jr_042_683c

    ld a, b
    add a
    db $fc
    bit 7, [hl]
    rst $38
    db $eb
    rst $38
    ei
    cp a
    ld hl, sp+$3f
    db $fc
    rst $28
    rst $38
    cp $9f
    rst $38

Jump_042_67ff:
    rst $38
    ld a, a
    ld b, e
    rst $38
    add c
    rst $38
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    ldh a, [$2f]
    db $fc
    ld a, a
    inc de
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc b
    db $fc
    ldh [$fc], a
    sub d
    rst $38
    ldh a, [$ef]
    ldh a, [$f0]
    inc c
    db $fc
    ld [bc], a
    cp $ff
    ld [bc], a
    cp $01
    rst $38
    add hl, sp
    rst $38
    db $fd
    rst $00
    rst $38
    rst $38
    inc sp
    rst $38
    ld bc, $3bff
    rst $08
    ld a, a
    ei
    rst $38
    cp $ad
    ldh [$7b], a
    cp $43

jr_042_683c:
    db $fd
    ld d, l
    rst $38
    rst $38
    rst $20
    cp $0f
    db $fc
    rrca
    push af
    rra
    rst $38
    rst $30
    ccf
    rst $20
    cp $b7
    cp $a9
    rst $38
    db $fd
    ld h, b
    rst $18
    ldh [$87], a
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [$fe]
    db $fc
    ld [c], a
    rst $20
    ld hl, sp+$6f
    ldh a, [rIE]
    ret nc

    rst $18
    ccf
    rst $18
    rst $18
    ld e, b
    rst $18
    adc a
    adc a
    sub d
    rst $38
    rst $38
    rst $38
    cp $e2
    pop hl
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    db $fc
    rst $38
    ldh [$f4], a
    pop hl
    ld b, b
    ret nz

    ldh a, [$f0]
    ld hl, sp+$08
    rst $28
    db $fc
    db $e4
    db $fc
    add h
    db $fc
    ldh [$8c], a
    db $fc
    db $f4
    rst $38
    db $fc
    add h
    ld hl, sp-$38
    ldh a, [$30]
    ldh a, [rNR10]
    cp $fe
    ldh [$30], a
    ld hl, sp-$68
    ld a, b
    add sp, $1c
    db $fc
    rst $38
    inc e
    db $fc
    ld hl, sp-$08
    db $10
    ldh a, [$e0]
    ldh [rP1], a
    nop
    nop
    cp a
    inc c
    inc c
    rra
    rla
    rra
    dec d
    cp $e0
    add hl, de
    rst $38
    ccf
    dec l
    ld a, a
    ld c, e
    ld a, a
    ld e, c
    ld a, a
    ld a, l
    rst $38
    ld a, a
    ld c, c
    ccf
    ld hl, $3b3f
    rra
    ld de, $0fff
    add hl, bc
    rrca
    add hl, bc
    rlca
    inc b
    rlca
    inc b
    ld e, a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $e2ff
    nop
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    db $ed
    db $ec
    inc bc
    inc bc
    inc b
    rlca
    jr jr_042_6907

    rst $38
    ld h, $3f
    cpl
    add hl, sp
    ld e, a
    db $76
    ld a, a
    ld l, b
    rst $38
    ld a, a
    ld h, b
    ld a, a
    ld c, [hl]
    ld [hl], a
    ld a, a
    rst $30
    rst $38
    rst $38
    rst $30
    ccf
    rst $38
    ld l, a
    rst $38
    ld hl, $60ff
    rst $38
    cp a
    ld a, [c]
    rst $38

jr_042_6907:
    ld [hl], e
    rst $38
    ld de, $39ff
    rst $38
    rst $08
    ld a, b
    add a
    db $fc
    rlca
    db $fc
    add a
    cp $ff
    ld l, c
    ld a, a
    dec de
    rra
    ld a, [hl+]
    ccf
    inc h
    ccf
    rst $38
    ld b, l
    ld a, a
    ld b, l
    ld a, a
    ld b, a
    ld a, a
    add b
    rst $38
    cp $fe
    pop hl
    sbc a
    rst $38
    db $fc
    rst $28
    rst $38
    db $e3
    ld a, a
    ld a, a
    ld b, b
    ld a, a
    ld b, d
    ld a, a
    ld b, c
    ccf

jr_042_6938:
    jr nz, jr_042_6938

    db $e3
    sbc e
    rra
    db $10
    cp $e6
    jr jr_042_6961

    rra
    ldh [$e9], a
    db $e3
    db $10
    rst $30
    rra
    rrca
    rrca
    ld l, [hl]
    db $ed
    ret nz

    ret nz

    jr nc, @-$0e

    rst $38
    inc c
    db $fc
    ld [hl-], a
    cp $fa
    adc $fd
    scf
    rst $38
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38

jr_042_6960:
    add hl, sp

jr_042_6961:
    rst $18
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $18
    cp $ff
    ld a, e
    rst $38
    ld b, d
    rst $38
    rst $38
    add e
    cp $67
    rst $38
    rst $20
    cp h
    db $e4
    rst $38
    jr c, jr_042_6960

    ld hl, sp-$38
    ldh a, [rNR10]
    ld hl, sp+$18
    rst $30
    db $e4
    ld a, h
    bit 6, e
    ldh [$a1], a
    rst $38
    pop bc
    rst $38
    push af
    ld [bc], a
    cp $e0
    inc bc
    db $d3
    ldh [rSB], a
    rst $38
    ccf
    rst $38
    db $eb
    cp $f7
    rst $28
    ldh [rP1], a
    ld [hl], l
    ldh [$e0], a
    rst $38
    ret nz

    cp $fc
    pop hl
    cp a
    or b
    sbc a
    sbc a
    ret


    ld c, a
    xor $ff
    cpl
    or $37
    di
    inc de
    pop af
    ld de, $fff0
    jr nc, @-$2e

    ldh a, [$b0]
    ldh a, [$e0]
    ldh [rLCDC], a
    sbc a
    ret nz

    ld b, b
    ret nz

    add b
    add b
    ldh a, [$df]
    ld [c], a
    pop hl
    add b
    pop af
    add b
    db $d3
    ldh [$fe], a
    ld [c], a
    adc $e9
    jr c, jr_042_6a07

    db $fc
    db $e4
    rst $38
    cp $92
    cp $42
    cp $02
    db $fc
    add h
    rst $38
    db $fc
    add h
    ld hl, sp-$38
    ld hl, sp+$48
    ld hl, sp+$08
    ld a, a
    ld hl, sp-$78
    ld hl, sp-$38
    or b
    or b
    add b
    rst $38
    ld [c], a
    cp a
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rNR41], a
    ld a, [$e0e0]
    ld [hl], a
    sub b
    ldh a, [$08]
    push hl
    ldh [$08], a
    ld hl, sp+$10
    adc b
    ldh [rP1], a
    sub d
    db $fd
    nop
    nop

jr_042_6a07:
    nop
    db $fd
    nop
    rst $38
    cp $19
    add hl, de
    ccf
    cpl
    ccf
    dec hl
    rst $38
    ccf
    dec hl
    ld a, $32
    ld a, [hl]
    ld e, d
    cp $96
    rst $38
    cp $b2
    cp $fa
    cp $92
    ld a, a
    ld b, e
    rst $38
    ld a, [hl]
    ld [hl], a
    ccf
    inc hl
    ccf
    inc hl
    rra
    db $10
    cp a
    rra
    db $10
    rrca
    add hl, bc
    rlca
    rlca
    cp d
    pop hl
    ld bc, $fff8
    and $ac
    rst $38
    xor $ed
    ld bc, $0301
    inc bc
    ld [bc], a
    rst $38
    inc bc
    rlca
    rlca
    ld [$180f], sp
    rra
    ld h, $ff
    ccf
    cpl
    add hl, sp
    ld e, a
    db $76
    ld a, a
    ld l, b
    ld a, a
    rst $38
    ld l, [hl]
    ld [hl], a
    ld e, a
    ld [hl], a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld h, c
    rst $38
    jr nz, @+$01

    ld h, d
    cp a
    rst $30
    pop af
    ld a, a
    ld [hl], b
    sub d
    ldh [$08], a
    rrca
    ld [$ffef], sp
    db $ec
    rra
    db $fc
    rrca
    cp $09
    rst $38
    sbc e
    rst $38
    rst $38
    xor d
    rst $38
    and h
    rst $38
    push bc
    rst $38
    rst $00
    rst $38
    rst $38
    ld h, b
    ld a, a
    add b
    rst $38
    ld bc, $07ff
    rst $38
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $28
    rst $38
    ldh [rIE], a
    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, d
    ccf
    ld hl, $e73f
    jr nz, jr_042_6ae0

    jr nz, jr_042_6b01

    pop hl
    db $fc
    and $18
    rra
    rra
    di
    rla
    rra
    db $eb

jr_042_6aad:
    ldh [$e7], a
    ldh [rNR10], a
    rra
    rrca
    rrca
    cp $68
    db $eb
    add b
    add b
    ld b, b
    ret nz

    jr nc, jr_042_6aad

    inc c
    rst $38
    db $fc
    ld [hl-], a
    cp $fa
    adc $fd
    scf
    rst $38
    cp a
    dec bc
    rst $38
    dec sp
    rst $18
    ld a, l
    rst $18
    add c
    ldh [rIE], a
    rst $38
    ld a, d
    rst $38
    ld b, e
    rst $38
    add d
    rst $38
    ld h, e
    cp [hl]
    rst $38
    rst $20
    rst $38
    rst $00
    db $fc

Call_042_6adf:
    inc b

jr_042_6ae0:
    ld hl, sp+$08
    ld hl, sp-$01
    ld [$11f1], sp
    cp $1f
    db $e4
    ld a, a
    ret z

    cp a
    rst $38
    ld [de], a
    rst $38
    and c
    rst $38
    ret nz

    adc b
    ldh [$03], a
    db $fd
    cp $fe
    ldh [rIE], a
    db $fd
    rst $38
    cp $ef
    cp $fd

jr_042_6b01:
    add e
    ld a, e
    ldh [rSB], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    ldh [$bf], a
    and b
    sbc a
    sub b
    sbc a
    sub b
    rst $18
    rst $38
    ld d, b
    rst $08
    ld c, a
    jp hl


    cpl
    cp $3f
    or $ff
    rla
    di
    inc de
    pop af
    ld sp, $f0d0
    or b
    rst $38
    ldh a, [$e0]
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    add b
    pop bc
    add b
    ld [$6adf], a
    db $e3
    db $d3
    ldh [$fe], a
    ld [c], a
    adc $e7
    ldh [$e0], a
    rst $28
    db $10
    ldh a, [$78]
    ld hl, sp-$01
    ldh [$98], a
    ld hl, sp-$78
    rst $38
    db $fc
    add h
    db $fc
    call nc, $62fe
    cp $92
    rst $28
    cp $0a
    cp $42
    db $f4
    ldh [$a4], a
    ret c

    ret c

    sbc $cc
    push hl
    ldh [rNR41], a
    ldh [rNR41], a
    ld a, [$e0e0]
    sub b
    add hl, bc
    ldh a, [rKEY1]
    ldh [rOBP1], a
    ldh [rNR10], a
    add [hl]
    ldh [$90], a
    rst $28
    nop
    nop
    nop

    db $7e, $6b, $bf, $6b

    nop
    ld l, h
    ld b, c
    ld l, h
    add d
    ld l, h
    db $c3
    ld l, h

    db $10, $08, $00, $00, $20, $08, $02, $00, $30, $08, $04, $00, $40, $08, $06, $00
    db $10, $10, $08, $00, $20, $10, $0a, $00, $30, $10, $0c, $00, $40, $10, $0e, $00
    db $10, $18, $10, $00, $20, $18, $12, $00, $30, $18, $14, $00, $40, $18, $16, $00
    db $10, $20, $18, $00, $20, $20, $1a, $00, $30, $20, $1c, $00, $40, $20, $1e, $00
    db $80, $10, $08, $00, $00, $20, $08, $02, $00, $30, $08, $04, $00, $40, $08, $06
    db $00, $10, $10, $08, $00, $20, $10, $0a, $00, $30, $10, $0c, $00, $40, $10, $0e
    db $00, $10, $18, $10, $00, $20, $18, $12, $00, $30, $18, $14, $00, $40, $18, $16
    db $00, $10, $20, $18, $00, $20, $20, $1a, $00, $30, $20, $1c, $00, $40, $20, $1e
    db $00, $80

    db $10
    ld [$0000], sp
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_6c12

    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_6c12:
    ld [$2000], sp
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6c2a

    inc c
    nop
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_6c33

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_6c42

jr_042_6c2a:
    inc d
    nop
    ld b, b
    jr jr_042_6c45

    nop
    db $10
    jr nz, jr_042_6c4b

jr_042_6c33:
    nop
    jr nz, jr_042_6c56

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_6c5d

    nop
    add b
    db $10

jr_042_6c42:
    ld [$0000], sp

jr_042_6c45:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_6c53

jr_042_6c4b:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_6c53:
    ld [$2000], sp

jr_042_6c56:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6c6b

    inc c
    nop

jr_042_6c5d:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_6c74

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_6c83

jr_042_6c6b:
    inc d
    nop
    ld b, b
    jr jr_042_6c86

    nop
    db $10
    jr nz, jr_042_6c8c

jr_042_6c74:
    nop
    jr nz, jr_042_6c97

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_6c9e

    nop
    add b
    db $10

jr_042_6c83:
    ld [$0000], sp

jr_042_6c86:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_6c94

jr_042_6c8c:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_6c94:
    ld [$2000], sp

jr_042_6c97:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6cac

    inc c
    nop

jr_042_6c9e:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_6cb5

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, jr_042_6cc4

jr_042_6cac:
    inc d
    nop
    ld b, b
    jr jr_042_6cc7

    nop
    db $10
    jr nz, jr_042_6ccd

jr_042_6cb5:
    nop
    jr nz, jr_042_6cd8

    ld a, [de]
    nop
    jr nc, @+$22

    inc e
    nop
    ld b, b
    jr nz, jr_042_6cdf

    nop
    add b
    db $10

jr_042_6cc4:
    ld [$0000], sp

jr_042_6cc7:
    jr nz, @+$0a

    ld [bc], a
    nop
    jr nc, jr_042_6cd5

jr_042_6ccd:
    inc b
    nop
    ld b, b
    ld [$0006], sp
    db $10
    db $10

jr_042_6cd5:
    ld [$2000], sp

jr_042_6cd8:
    db $10
    ld a, [bc]
    nop
    jr nc, jr_042_6ced

    inc c
    nop

jr_042_6cdf:
    ld b, b
    db $10
    ld c, $00
    db $10
    jr jr_042_6cf6

    nop
    jr nz, @+$1a

    ld [de], a
    nop
    jr nc, @+$1a

jr_042_6ced:
    inc d
    nop
    ld b, b
    jr @+$18

    nop
    db $10
    jr nz, jr_042_6d0e

jr_042_6cf6:
    nop
    jr nz, jr_042_6d19

    ld a, [de]
    nop
    jr nc, jr_042_6d1d

    inc e
    nop
    ld b, b
    jr nz, jr_042_6d20

    nop
    add b

    db $00, $14, $00, $00, $01, $14, $00, $00, $ff

    nop

jr_042_6d0e:
    nop
    nop
    ld [bc], a
    rrca
    nop
    nop
    inc bc
    ld a, [bc]
    nop
    nop
    inc b

jr_042_6d19:
    ld bc, $fc00
    inc b

jr_042_6d1d:
    ld [bc], a
    nop
    db $fd

jr_042_6d20:
    inc b
    inc bc
    nop
    cp $04
    ld b, $00
    rst $38
    inc b
    ld a, [bc]
    nop
    nop
    dec b
    dec b
    nop
    ld bc, $0405
    nop
    ld [bc], a
    dec b
    inc bc
    nop
    inc bc
    ld [bc], a
    inc d
    nop
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_042_72ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_042_7cff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_042_7eff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_042_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
