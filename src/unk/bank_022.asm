INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $022", ROMX[$4000], BANK[$22]

    ld [de], a
    ld b, b
    inc sp
    ld b, b
    or c
    ld c, d
    ld sp, $b151
    ld d, a

    db $4b, $64, $d1, $6a

    ld [hl-], a
    ld l, h
    inc sp
    ld b, b
    push af
    push bc
    push de
    push hl
    ldh [$95], a
    ld [$2000], a

    ld a, c
    add a
    add l
    ld l, a
    jr nc, jr_022_4022

    inc h

jr_022_4022:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, b
    ld b, $00
    add hl, bc
    ld c, $04
    call Call_000_0468
    pop hl
    pop de
    pop bc
    pop af
    ret


    inc b
    inc b
    dec sp
    ld b, b
    ld d, b
    ld c, d
    dec sp
    ld b, b
    ld d, b
    ld b, b
    ld d, b
    ld b, c
    ld d, b
    ld b, d
    ld d, b
    ld b, e
    ld d, b
    ld b, h
    ld d, b
    ld b, l
    ld d, b
    ld b, [hl]
    ld d, b
    ld b, a
    ld d, b
    ld c, b
    ld d, b
    ld c, c
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    inc c
    rlca
    ld b, $03
    inc bc
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    rrca
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$38]
    ld hl, sp+$44
    db $fc
    db $fc
    db $fc
    ld hl, sp-$78
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [rNR10]
    add sp, -$08
    db $fc
    db $fc
    db $ec
    inc l
    ret nc

    ld [hl], b
    or b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_022_4094:
    dec bc
    rrca
    inc c
    rrca
    dec bc
    rrca
    rra
    inc e
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr jr_022_40e2

    inc l
    dec sp
    ccf
    daa
    daa
    ld h, a
    ld h, h
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_022_4094

    ret nc

    ldh a, [$30]
    ldh a, [$d0]

jr_022_40b9:
    ldh a, [$f8]
    jr c, jr_022_40b9

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    ldh a, [$30]
    ret c

    ld hl, sp-$04
    db $f4
    db $fc
    or h
    add sp, -$18
    ret nz

    ret nz

    add b
    add b
    rlca
    rlca
    ld [$1c0f], sp
    rra
    ld [hl+], a
    ccf
    ccf
    ccf
    rra

jr_022_40db:
    ld de, $151f
    rra
    inc d
    rra

jr_022_40e1:
    db $10

jr_022_40e2:
    rrca
    ld [$0f0f], sp
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec bc
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, @-$0e

    jr nc, jr_022_40e1

    ld h, b
    ret nz

    ret nz

    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, jr_022_40db

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_022_4114:
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    inc e
    rra
    ccf
    cpl
    ccf
    daa
    rra
    dec de
    inc a
    cpl
    jr c, @+$41

    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_022_4114

jr_022_4134:
    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$38]
    ld hl, sp-$04
    db $f4

jr_022_413e:
    db $fc
    db $e4
    ld hl, sp-$28
    jr nc, jr_022_4134

    jr jr_022_413e

    cp $f6
    cp $be
    db $ec
    db $ec
    ret nz

    ret nz

    add b
    add b
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    inc c
    rlca
    ld b, $03
    inc bc
    ld b, $07
    rrca
    rrca
    rrca
    inc c
    dec bc
    ld c, $09
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$38]
    ld hl, sp+$44
    db $fc
    db $fc
    db $fc
    ld hl, sp-$78
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp+$08
    or $16
    or $f6
    db $fc
    call c, $68f8
    ld hl, sp-$08
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_022_4194:
    dec bc
    rrca
    inc c
    rrca
    dec bc
    rrca
    rra
    inc e
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr jr_022_4212

    ld l, h
    ld a, e
    ld a, a
    ccf
    cpl
    ccf
    dec l
    scf

jr_022_41ab:
    scf
    inc bc
    inc bc
    ld bc, $c001
    ret nz

    jr nz, jr_022_4194

    ret nc

    ldh a, [$30]
    ldh a, [$d0]

jr_022_41b9:
    ldh a, [$f8]
    jr c, jr_022_41b9

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    db $fc
    inc [hl]
    call c, $e0fc
    ldh [$e0], a
    jr nz, jr_022_41ab

    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    rlca
    rlca
    ld [$1c0f], sp
    rra
    ld [hl+], a
    ccf
    ccf
    ccf
    rra
    ld de, $151f
    rst $18
    call nc, $d0df
    ld l, a
    ld l, b
    scf
    ccf
    ccf
    ccf
    scf
    inc [hl]
    dec bc
    ld c, $0d
    rrca
    ld b, $06
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, @-$0e

    jr nc, @-$1e

    ld h, b
    ret nz

    ret nz

    ld h, b
    ldh [$f0], a
    ret nc

    ld hl, sp+$68
    ld hl, sp-$08
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc

jr_022_4212:
    inc b
    rlca

jr_022_4214:
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    inc e
    rra
    ccf
    cpl
    ccf
    daa
    rra
    dec de
    inc c
    rrca
    jr jr_022_4245

    ccf
    cpl
    ccf
    dec a
    rlca
    rlca

jr_022_422c:
    inc bc
    inc bc

jr_022_422e:
    ld bc, $c001
    ret nz

    jr nz, jr_022_4214

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$38]
    ld hl, sp-$02
    or $fe
    and $fc
    call c, $f43c
    inc e

jr_022_4245:
    db $fc
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_022_422c

    jr nz, jr_022_422e

    ret nz

    ret nz

    ld bc, $0601
    rlca
    ld [$080f], sp
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rlca
    inc b
    rlca
    ld b, $09
    rrca
    dec c
    rrca
    rrca
    dec bc
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$08f8], sp
    ld hl, sp+$38
    ld hl, sp-$3c
    db $fc
    db $fc
    db $fc
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [$90]
    ldh [$60], a
    ldh [$a0], a
    ldh a, [$f0]
    sbc e
    sbc e
    adc a
    adc a
    inc bc
    inc bc
    inc b
    rlca

jr_022_4294:
    ld [$090f], sp
    rrca
    ld [de], a
    rra
    dec e
    rra
    rra
    ld e, $1f
    dec d
    rra
    ld de, $0c0f
    dec bc
    ld c, $07
    dec b
    rlca
    ld b, $0f
    dec c
    inc de
    rra
    rra
    rra
    ret nz

    ret nz

    jr nz, jr_022_4294

    db $10
    ldh a, [$f0]
    ldh a, [$08]
    ld hl, sp-$0c
    db $fc
    db $fc
    inc c
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$d0]
    and b
    ldh [$f0], a
    ret nc

    ret z

    ld hl, sp-$08
    ld hl, sp+$03
    inc bc
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    inc e
    rra
    inc hl
    ccf
    ccf
    ccf
    rra
    dec d
    rra

jr_022_42e1:
    inc d
    rra

jr_022_42e3:
    db $10
    rrca
    add hl, bc
    rlca
    ld b, $07
    dec b
    rrca
    rrca
    db $db
    db $db

jr_022_42ee:
    pop af
    pop af
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_022_42e1

    jr nz, jr_022_42e3

    ld h, b
    sub b
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh a, [$d0]
    jr nz, jr_022_42ee

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca

jr_022_4314:
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    rla
    rra
    rra
    rra
    rra
    inc de
    rra
    inc d
    rrca
    rrca
    ld a, [bc]
    rrca
    rlca
    rlca
    rlca
    inc b
    rrca
    ld c, $13
    rra
    ld e, $1e
    ret nz

    ret nz

    jr nz, jr_022_4314

    ret nc

    ldh a, [rNR10]
    ldh a, [$e8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    db $f4
    db $fc
    db $f4
    jr c, @-$06

    jr z, @-$06

    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [$b0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$01
    ld bc, $0706
    ld [$080f], sp
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rlca
    inc b
    rra
    ld e, $1b
    rra
    rra
    dec e
    ld c, $0f
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$08f8], sp
    ld hl, sp+$38
    ld hl, sp-$3c
    db $fc
    db $fc
    db $fc
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    add b
    add b
    inc bc
    inc bc
    inc b
    rlca

jr_022_4394:
    ld [$090f], sp
    rrca
    ld [de], a
    rra
    dec e
    rra
    rra
    ld e, $1f
    dec d
    rra
    ld de, $cccf
    set 1, [hl]
    rst $28
    db $eb
    dec a
    ccf
    rrca
    rrca
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    jr nz, jr_022_4394

    db $10
    ldh a, [$f0]
    ldh a, [$08]
    ld hl, sp-$0c
    db $fc
    db $fc
    inc c
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    and b
    ld h, b
    ldh a, [$d0]
    ret z

    ld hl, sp+$78
    ld a, b
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    inc e
    rra
    inc hl
    ccf
    ccf
    ccf
    rra
    dec d
    rra

jr_022_43e1:
    inc d
    ccf

jr_022_43e3:
    jr nc, jr_022_4424

    add hl, sp
    rra
    rra
    dec bc
    dec c
    rlca
    rlca
    inc bc
    inc bc

jr_022_43ee:
    ld bc, $8001
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_022_43e1

    jr nz, jr_022_43e3

    ld h, b
    sub b
    ldh a, [$30]
    ldh a, [$f0]
    ret nc

    ldh a, [$90]
    jr nz, jr_022_43ee

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca

jr_022_4414:
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    rla
    rra
    rra
    rra
    rra
    inc de
    rra
    inc d
    rrca
    rrca

jr_022_4424:
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rrca
    ld c, $13
    rra
    ld e, $1e
    ret nz

    ret nz

    jr nz, jr_022_4414

    ret nc

    ldh a, [rNR10]
    ldh a, [$e8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    db $f4
    db $fc
    db $f4
    dec sp
    ei
    ld e, a
    rst $38
    db $ec
    db $fc
    ld hl, sp+$18
    ldh a, [$b0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$01
    ld bc, $0706
    ld [$080f], sp
    rrca
    adc $cf
    rst $08
    rst $08
    rst $08
    rst $08
    ld l, a
    ld l, h
    ccf
    inc a
    rra
    ld d, $0d
    rrca
    rrca
    ld c, $0f
    add hl, bc
    rrca
    dec bc
    inc b
    rlca
    rlca
    rlca
    ret nz

    ret nz

    jr nc, @-$0e

    ld [$08f8], sp
    ld hl, sp+$38
    ld hl, sp-$3c
    db $fc
    db $fc
    db $fc
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$c0], a
    ret nz

    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    inc bc
    inc bc
    inc b
    rlca

jr_022_4494:
    ld [$090f], sp
    rrca
    jp nc, $dddf

    rst $18
    rst $18
    sbc $7f
    ld [hl], l
    ccf
    ld sp, $2c3f
    rla
    ld e, $0d
    rrca
    rlca
    ld b, $0f
    rrca
    ld [de], a
    ld e, $1e
    ld e, $c0
    ret nz

    jr nz, jr_022_4494

    db $10
    ldh a, [$f0]
    ldh a, [$08]
    ld hl, sp-$0c
    db $fc
    db $fc
    inc c
    ld hl, sp+$28
    ld hl, sp+$28
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    ld h, b
    ldh [$f0], a
    ret nc

    ret z

    ld hl, sp+$78
    ld a, b
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    db $10
    rra
    inc e
    rra
    inc hl
    ccf
    ccf
    ccf
    rra
    dec d
    rra
    inc d
    rra
    db $10
    rrca
    add hl, bc
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc

jr_022_44ee:
    ld bc, $8001
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [$73]
    di
    di
    di
    rst $30
    rst $30
    db $fc
    inc a
    ld hl, sp+$38
    ldh a, [rSVBK]
    sub b
    ldh a, [$30]
    ldh a, [$f0]
    ret nc

    ldh a, [$90]
    jr nz, jr_022_44ee

    ldh [$e0], a
    inc bc
    inc bc
    inc b
    rlca

jr_022_4514:
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    rla
    rra
    rra
    rra
    rra
    inc de
    rra
    inc d
    rrca
    rrca
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rrca
    ld c, $13
    rra
    ld e, $1e
    ret nz

    ret nz

    jr nz, jr_022_4514

    ret nc

    ldh a, [rNR10]
    ldh a, [$eb]
    ei
    ei
    ei
    ei
    ei
    cp $f6
    db $fc
    db $f4
    ld a, h
    db $fc
    cp b
    ld hl, sp-$08
    add sp, -$10
    ld [hl], b
    ldh a, [$b0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$03
    inc bc
    inc c
    rrca
    db $10
    rra
    ret nc

    rst $18
    db $d3
    rst $18
    call c, Call_022_7fdf
    ld l, a
    ccf
    ccf
    ccf
    dec hl
    rla
    inc e
    rrca
    rrca
    inc c
    rrca
    rrca
    dec bc
    dec c
    rrca
    ld b, $07
    rlca
    rlca
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$f0]
    ldh a, [$f8]
    add sp, -$08
    ret z

    ldh a, [$30]
    ldh [$e0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    inc bc
    inc bc
    inc b
    rlca

jr_022_4594:
    ld [$c80f], sp
    rst $08
    ret nc

    rst $18
    db $fd
    rst $38
    rra
    rra
    rrca
    add hl, bc
    rrca
    ld [$0607], sp
    inc bc
    inc bc
    ld [bc], a
    inc bc
    rlca
    dec b
    dec bc
    rrca
    dec c
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_022_4594

jr_022_45b4:
    db $10
    ldh a, [$38]
    ld hl, sp-$3c
    db $fc
    jr jr_022_45b4

    ld hl, sp-$18
    ld hl, sp+$48
    ld hl, sp+$48
    ld hl, sp+$08
    ldh a, [$90]
    ld a, b
    add sp, $50
    ldh a, [$f0]
    ldh a, [$c8]
    ld hl, sp+$78
    ld a, b
    inc bc
    inc bc
    inc b
    rlca

jr_022_45d4:
    ld [$130f], sp
    rra
    inc d
    rra
    dec de
    rra
    rla
    ld e, $0f
    ld a, [bc]
    rrca
    ld [$0407], sp
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld bc, $c001
    ret nz

    jr nz, jr_022_45d4

    db $10
    ldh a, [$d3]
    di
    inc sp
    di
    ei
    db $eb
    cp $4e
    db $fc
    inc e
    ld hl, sp+$18
    add sp, $38
    ldh a, [$f0]
    ldh a, [$b0]
    ldh a, [rSVBK]
    ldh a, [$d0]
    sub b
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    inc b
    rlca

jr_022_4614:
    ld [$080f], sp
    rrca
    inc de
    rra
    cpl
    ld a, $3f
    ld a, [hl-]
    rra
    ld de, $090f
    rlca
    ld b, $05
    rlca
    rlca
    rlca
    rrca
    ld [$0d0f], sp
    inc de
    rra
    ld e, $1e
    ret nz

    ret nz

    jr nz, jr_022_4614

    db $10
    ldh a, [rNR13]
    di
    db $eb
    ei
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    or b
    ldh a, [$d0]
    ldh a, [$e0]
    ld h, b
    ldh [$e0], a
    ldh [$a0], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    inc c
    rlca
    ld b, $06
    rlca
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$38]
    ld hl, sp+$44
    db $fc
    db $fc
    db $fc
    ld hl, sp-$78
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp+$08
    add sp, -$08
    db $fc
    db $fc
    db $ec
    inc l
    ret nc

    ld [hl], b
    or b
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_022_4696:
    dec bc
    rrca
    inc c
    rrca
    dec bc
    rrca
    rra
    inc e
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr jr_022_46e0

    ccf
    daa
    daa
    ld h, a
    ld h, h
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_022_4696

    ret nc

    ldh a, [$30]
    ldh a, [$d0]

jr_022_46bb:
    ldh a, [$f8]
    jr c, jr_022_46bb

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    ret c

    ld hl, sp-$04
    db $f4
    db $fc
    or h
    add sp, -$18
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    rlca
    rlca
    ld [$1c0f], sp
    rra
    ld [hl+], a
    ccf
    ccf

jr_022_46db:
    ccf
    rra
    ld de, $151f

jr_022_46e0:
    rra
    inc d
    rra

jr_022_46e3:
    db $10
    rrca
    rrca
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec bc
    rrca
    ld b, $06
    nop

jr_022_46f1:
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    jr nc, jr_022_46f1

    jr nc, jr_022_46e3

    ld h, b
    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, jr_022_46db

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_022_4716:
    ld [$080f], sp
    rrca
    add hl, bc
    rrca
    inc e
    rra
    ccf
    cpl
    ccf
    daa
    rra
    dec de
    jr c, @+$41

    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_022_4716

    db $10
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$38]
    ld hl, sp-$04
    db $f4
    db $fc
    db $e4
    ld hl, sp-$28
    jr @-$06

    cp $f6
    cp $be
    db $ec
    db $ec
    ret nz

    ret nz

    add b
    add b
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $03
    inc bc
    inc bc
    inc bc
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    rrca
    rrca
    rlca
    rlca
    ldh a, [$f0]
    ld [$1cf8], sp
    db $fc
    ld [hl+], a
    cp $fe
    cp $fc
    call nz, Call_022_54fc
    db $fc
    inc d
    db $fc
    inc b
    ldh a, [rNR10]
    add sp, -$08
    db $fc
    db $fc
    db $ec
    inc l
    ret nc

    ld [hl], b
    or b
    ldh a, [$60]
    ld h, b
    ld bc, $0201
    inc bc
    dec b
    rlca
    ld b, $07
    dec b
    rlca
    rrca
    ld c, $1f
    dec d
    rra
    ld de, $0c0f
    ccf
    inc l
    dec sp
    ccf
    daa
    daa
    ld h, a
    ld h, h
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$e8]
    ld hl, sp+$18
    ld hl, sp-$18
    ld hl, sp-$04
    inc e
    cp $2a
    cp $22
    db $fc
    inc c
    ldh a, [$30]
    ret c

    ld hl, sp-$04
    db $f4
    db $fc
    or h
    add sp, -$18
    ret nz

    ret nz

    add b
    add b
    inc bc
    inc bc
    inc b
    rlca
    ld c, $0f
    ld de, $1f1f
    rra
    rrca

jr_022_47db:
    ld [$0a0f], sp
    rrca
    ld a, [bc]
    rrca
    ld [$080f], sp
    rrca
    rrca
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec bc
    rrca
    ld b, $06
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    sbc b
    ld hl, sp+$18
    ldh a, [$30]
    ret nz

    ret nz

    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, jr_022_47db

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld c, $0f
    rra
    rla
    rra
    inc de
    rrca
    dec c
    inc a
    cpl
    jr c, @+$41

    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$38
    ld hl, sp+$1c
    db $fc
    cp $fa

jr_022_483e:
    cp $f2
    db $fc
    db $ec
    jr nc, @-$0e

    jr jr_022_483e

    cp $f6
    cp $be
    db $ec
    db $ec
    ret nz

    ret nz

    add b
    add b
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    rra
    rra
    rra
    rra
    rra
    add hl, de
    rra
    jr jr_022_4870

    inc c
    inc bc
    inc bc
    ld b, $07
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    rrca
    rrca
    rlca
    rlca

jr_022_4870:
    ret nz

    ret nz

    jr nz, @-$1e

    ld [hl], b
    ldh a, [$88]
    ld hl, sp-$08
    ld hl, sp-$10
    db $10
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    add sp, -$08
    db $fc
    db $fc
    db $ec
    inc l
    ret nc

    ld [hl], b
    or b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$170f], sp
    rra
    jr jr_022_48b7

    rla
    rra
    ccf
    jr c, jr_022_491c

    ld d, h
    ld a, a
    ld b, h
    ccf
    jr nc, @+$41

    inc l
    dec sp
    ccf
    daa
    daa
    ld h, a
    ld h, h
    ld h, a
    ld h, a
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$60], a

jr_022_48b7:
    ldh [$a0], a
    ldh [$f0], a
    ld [hl], b
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$30]
    ldh a, [$30]
    ret c

    ld hl, sp-$04
    db $f4
    db $fc
    or h
    add sp, -$18
    ret nz

    ret nz

    add b
    add b
    rrca
    rrca
    db $10
    rra
    jr c, jr_022_4915

jr_022_48d6:
    ld b, h
    ld a, a

jr_022_48d8:
    ld a, a
    ld a, a
    ccf

jr_022_48db:
    inc hl
    ccf
    ld a, [hl+]
    ccf
    jr z, jr_022_4920

    jr nz, jr_022_48f2

    ld [$0f0f], sp
    rrca
    dec bc
    rra
    ld d, $1f
    rra
    dec bc
    rrca
    ld b, $06
    add b
    add b

jr_022_48f2:
    ld b, b
    ret nz

    jr nz, jr_022_48d6

    jr nz, jr_022_48d8

    ldh [$e0], a
    ldh [$e0], a
    ldh [$60], a
    ldh [$60], a
    ret nz

    ret nz

    ret nz

    ret nz

    ld h, b
    ldh [$f0], a
    ldh a, [$f0]
    jr nc, jr_022_48db

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$100f], sp

jr_022_4915:
    rra

jr_022_4916:
    db $10
    rra

jr_022_4918:
    inc de
    rra

jr_022_491a:
    jr c, jr_022_495b

jr_022_491c:
    ld a, a
    ld e, a
    ld a, a
    ld c, a

jr_022_4920:
    ccf
    scf
    inc a
    cpl
    jr c, jr_022_4965

    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

jr_022_4934:
    jr nz, jr_022_4916

    jr nz, jr_022_4918

    jr nz, jr_022_491a

    ld [hl], b
    ldh a, [$f8]
    add sp, -$08
    ret z

    ldh a, [$b0]
    jr nc, jr_022_4934

    jr @-$06

    cp $f6
    cp $be
    db $ec
    db $ec
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc

jr_022_4956:
    inc b
    rlca
    inc b
    rlca
    rlca

jr_022_495b:
    rlca
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    inc bc
    rlca

jr_022_4965:
    rlca
    rrca
    ld a, [bc]

jr_022_4968:
    rrca

jr_022_4969:
    rrca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_022_4956

    jr nc, jr_022_4968

    ld c, b
    ld hl, sp-$08
    ld hl, sp-$10
    sub b
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ld hl, sp-$08
    ret c

    jr jr_022_4969

    ld h, b
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    rlca
    rlca
    inc b
    rlca

jr_022_499a:
    rlca
    rlca
    rra
    ld d, $1f
    ld [de], a
    rrca
    inc c
    rra
    inc d
    inc de
    inc de
    inc sp
    jr nc, jr_022_49dc

    inc sp
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    ldh [$e0], a
    jr nz, jr_022_499a

    ldh [$e0], a
    ld hl, sp+$68
    ld hl, sp+$48
    ldh a, [$30]
    ldh [rNR41], a
    ld hl, sp-$18
    ld hl, sp-$58
    ret nc

    ret nc

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    inc c
    rrca

jr_022_49d8:
    ld [de], a
    rra

jr_022_49da:
    rra
    rra

jr_022_49dc:
    rrca
    add hl, bc
    rrca
    ld [$080f], sp
    rlca
    inc b
    rlca
    rlca
    rrca
    ld a, [bc]
    rrca
    rrca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_022_49d8

    jr nz, jr_022_49da

    ldh [$e0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [rNR41], a
    ldh [$60], a
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc b
    rlca

jr_022_4a18:
    inc b
    rlca

jr_022_4a1a:
    dec b
    rlca
    rra
    rla
    rra
    inc de
    rrca
    rrca
    inc e
    rla

jr_022_4a24:
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_022_4a18

    jr nz, jr_022_4a1a

    and b
    ldh [$f8], a
    add sp, -$08
    ret z

    ldh a, [$f0]
    jr nz, jr_022_4a24

    db $fc
    db $ec
    db $fc
    cp h
    ret c

    ret c

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    ld h, d
    ld c, d
    ld h, l
    ld c, d
    ld l, e
    ld c, d
    ld l, [hl]
    ld c, d
    ld a, c
    ld c, d
    add b
    ld c, d
    adc b
    ld c, d
    sbc h
    ld c, d
    xor b
    ld c, d
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_022_4a77

    inc c
    dec b

jr_022_4a77:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_022_4a80

    jr @-$01

jr_022_4a80:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    rlca
    inc b
    cp c
    ld c, d
    ret nc

    ld d, b
    cp c
    ld c, d
    ret nc

    ld c, d
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, e
    ret nc

    ld c, h
    ret nc

    ld c, l
    ret nc

    ld c, [hl]
    ret nc

    ld c, a
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    ld de, $111f
    rra
    add hl, bc
    rrca
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    rrca
    ld a, [bc]
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$18
    cp b
    ld hl, sp-$68
    ld hl, sp+$58
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh a, [$f0]
    ld hl, sp+$68
    ld hl, sp+$38
    ldh a, [$f0]
    xor b
    ld hl, sp-$38
    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    dec bc
    ld c, $17
    inc e
    rla
    dec e
    rla
    dec e
    rrca
    inc c
    rra
    ld e, $3f
    dec hl
    ccf
    dec a
    rlca
    ld b, $05
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    sub b
    ldh a, [$c8]
    ld hl, sp-$18

jr_022_4b37:
    jr c, @-$06

    jr jr_022_4b37

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    ldh a, [$30]
    ld hl, sp-$28
    db $fc
    ld d, h
    db $fc
    inc [hl]
    ret c

    ld hl, sp-$50
    ldh a, [$e0]
    ldh [$80], a
    add b
    rlca
    rlca
    ld [$120f], sp
    rra
    rla
    dec e
    rra
    jr @+$21

    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    ld [$0407], sp
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld c, $0e
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$a8]
    ld hl, sp-$08
    ret c

    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh a, [$50]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    ld d, b
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    jr nc, @+$41

    jr c, jr_022_4bcd

    inc e
    rra
    ccf
    ccf
    ccf
    ld a, [hl+]
    rra
    inc e
    rrca
    inc c
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [$f0], a
    or b
    ld hl, sp+$28
    ld hl, sp+$68
    or b
    ldh a, [$e0]
    ldh [$c0], a

jr_022_4bcd:
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10
    rra
    ld de, $111f
    rra
    add hl, bc
    rrca
    rlca
    rlca
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    inc c
    rlca
    rlca
    ld a, [bc]
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$18
    cp b
    ld hl, sp-$68
    ld hl, sp+$58
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$a0], a
    ldh a, [$d0]
    ldh a, [$f0]
    ld hl, sp-$08
    add sp, -$08
    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    dec bc
    ld c, $17
    inc e
    rla
    dec e
    rla
    dec e
    rrca
    inc c
    rlca
    ld b, $0f
    dec c
    rra
    dec d
    rra
    ld d, $0d
    rrca
    ld b, $07
    inc bc
    inc bc
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [$c8]
    ld hl, sp-$18

jr_022_4c37:
    jr c, @-$06

    jr jr_022_4c37

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    db $fc
    inc a
    cp $ea
    cp $5e
    ldh a, [$30]
    ret nc

    ldh a, [$f0]
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld [$120f], sp
    rra
    rla
    dec e
    rra
    jr @+$21

    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    ld [$0407], sp
    rrca
    rrca
    rra
    ld d, $1f
    inc e
    rrca
    rrca
    dec d
    rra
    inc de
    rra
    ld c, $0e
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$a8]
    ld hl, sp-$08
    ret c

    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh [$a0], a
    ldh a, [$d0]
    ldh a, [$50]
    ldh [$e0], a
    ldh a, [$f0]
    ret nc

    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    jr nc, jr_022_4cdb

    jr c, jr_022_4ccd

    inc e
    rra
    rrca
    rrca
    rra
    ld a, [de]
    ccf
    jr z, jr_022_4ce6

    inc l
    dec de
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $c001
    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$28
    ld hl, sp+$70
    ldh a, [$f8]
    ld hl, sp-$08
    xor b
    ldh a, [rSVBK]
    ldh [$60], a
    and b
    ldh [$e0], a
    ldh [rNR41], a

jr_022_4ccd:
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10

jr_022_4cdb:
    rra
    ld de, $111f

Call_022_4cdf:
    rra
    add hl, bc
    rrca
    rlca
    rlca
    rrca
    dec bc

jr_022_4ce6:
    rrca
    ld a, [bc]
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [rBCPS]
    ld hl, sp-$18
    cp b
    ld hl, sp-$68
    ld hl, sp+$58
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [rNR41], a
    ld hl, sp+$68
    ld hl, sp+$38
    ldh a, [$f0]
    xor b
    ld hl, sp-$38
    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    dec bc
    ld c, $17
    inc e
    rla
    dec e
    rla
    dec e
    rrca
    inc c
    rra
    ld e, $3f
    dec a
    rlca
    ld b, $05
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ldh [$e0], a
    sub b
    ldh a, [$c8]
    ld hl, sp-$18

jr_022_4d39:
    jr c, @-$06

    jr jr_022_4d39

    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    ldh a, [$30]
    db $fc
    ld d, h
    db $fc
    inc [hl]
    ret c

    ld hl, sp-$50
    ldh a, [$e0]
    ldh [$80], a
    add b
    nop
    nop
    rlca
    rlca
    ld [$120f], sp
    rra
    rla
    dec e
    rra
    jr @+$21

    ld a, [de]
    rrca
    ld a, [bc]
    rrca
    ld [$0407], sp
    rlca
    dec b
    rrca
    dec bc
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$a8]
    ld hl, sp-$08
    ret c

    ld hl, sp+$18
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    ld d, b
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    jr nc, @+$41

    jr c, jr_022_4dcf

    inc e
    rra
    ccf
    ccf
    rra
    inc e
    rrca
    inc c
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    db $10
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$28

jr_022_4dbf:
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [$f8], a
    jr z, jr_022_4dbf

    ld l, b
    or b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop

jr_022_4dcf:
    nop
    ld bc, $0201
    inc bc
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$040f], sp
    rlca
    inc bc
    inc bc
    rlca
    dec b
    rrca
    dec bc
    rrca
    ld a, [bc]
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    ldh a, [$f0]
    ld [$34f8], sp
    db $fc
    ld [hl], h
    call c, $cc7c
    db $fc
    xor h
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$90]
    ldh a, [$f0]
    ld hl, sp+$68
    ld hl, sp+$38
    ldh a, [$f0]
    xor b
    ld hl, sp-$38
    ld hl, sp+$70
    ld [hl], b
    ld bc, $0201
    inc bc
    inc b
    rlca
    dec b
    rlca
    dec bc
    ld c, $0b
    ld c, $0b
    ld c, $07
    ld b, $0f
    rrca
    ccf
    dec hl
    ccf
    dec a
    rlca
    ld b, $05
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh a, [$f0]
    ld c, b
    ld hl, sp-$1c
    db $fc
    db $f4
    inc e
    db $fc
    inc c
    cp $aa
    cp $a2
    db $fc
    inc c
    ld hl, sp+$18
    ld hl, sp-$28
    db $fc
    ld d, h
    db $fc
    inc [hl]
    ret c

    ld hl, sp-$50
    ldh a, [$e0]
    ldh [$80], a
    add b
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    dec bc
    ld c, $0f
    inc c
    rrca
    dec c
    rlca
    dec b
    rlca
    inc b
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld c, $0e
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp-$78
    ld hl, sp-$2c
    ld a, h
    db $fc
    ld l, h
    db $fc
    inc c
    ld hl, sp+$38
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    ld d, b
    ldh a, [$90]
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$180f], sp
    rra
    inc e
    rla
    ld c, $0f
    rra
    rra
    ccf
    ld a, [hl+]
    rra
    inc e
    rrca
    inc c
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    jr c, @-$06

    ldh a, [$f0]
    ldh a, [$b0]
    ld hl, sp+$28
    ld hl, sp+$68
    or b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    ld de, $211f
    ccf
    inc hl
    ld a, $23
    ld a, $13
    ld e, $0f
    ld c, $07
    dec b
    rrca
    dec bc
    rrca
    ld a, [bc]
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, @-$1e

    ret nc

    ldh a, [$d0]
    ld [hl], b
    ldh a, [$30]
    ldh a, [$b0]
    ldh [$a0], a
    ldh [rNR41], a
    ret nz

    ld b, b
    ldh a, [$f0]
    ld hl, sp+$68
    ld hl, sp+$38
    ldh a, [$f0]
    xor b
    ld hl, sp-$38
    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    add hl, bc
    rrca

jr_022_4f14:
    inc de
    rra
    rla
    inc e
    cpl
    jr c, @+$31

    ld a, [hl-]
    cpl
    ld a, [hl-]
    rra
    jr jr_022_4f60

    inc a
    ccf
    dec hl
    ccf
    dec a
    rlca
    ld b, $05
    rlca
    rlca
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_022_4f14

    sub b
    ldh a, [$d0]
    ld [hl], b
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$30]
    ldh [$60], a
    ld hl, sp-$28
    db $fc
    ld d, h
    db $fc
    inc [hl]
    ret c

    ld hl, sp-$50
    ldh a, [$e0]
    ldh [$80], a
    add b
    rrca
    rrca
    db $10
    rra
    inc h
    ccf

jr_022_4f56:
    ld l, $3b

jr_022_4f58:
    ccf
    ld sp, $353f
    rra
    inc d
    rra
    db $10

jr_022_4f60:
    rrca
    add hl, bc
    rlca
    rlca
    rlca
    dec b
    rrca
    dec bc
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld c, $0e
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_022_4f56

    jr nz, jr_022_4f58

    ld d, b
    ldh a, [$f0]
    or b
    ldh a, [$30]
    ldh [$e0], a
    ret nz

    ret nz

    ldh a, [$50]
    ldh a, [$30]
    ldh a, [$30]
    ldh [$e0], a
    ld d, b
    ldh a, [$90]
    ldh a, [$e0]
    ldh [rIF], a
    rrca
    db $10
    rra
    jr nz, jr_022_4fd5

jr_022_4f96:
    jr nz, jr_022_4fd7

jr_022_4f98:
    jr nz, jr_022_4fd9

    ld h, b
    ld a, a
    ld [hl], b
    ld e, a
    jr c, jr_022_4fdf

    ld a, a
    ld a, a
    ccf
    ld a, [hl+]
    rra
    inc e
    rrca
    inc c
    dec bc
    rrca
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_022_4f96

    jr nz, jr_022_4f98

    db $10
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    ldh a, [$b0]
    ld hl, sp+$28
    ld hl, sp+$68
    or b
    ldh a, [$e0]
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop

jr_022_4fd5:
    inc bc

jr_022_4fd6:
    inc b

jr_022_4fd7:
    rlca
    inc b

jr_022_4fd9:
    rlca
    ld [$090f], sp
    rrca
    dec b

jr_022_4fdf:
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $0607
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_022_4fd6

    ld d, b
    ldh a, [$d0]
    or b
    ldh a, [$b0]
    ldh [$60], a
    ldh [rNR41], a
    ret nz

    nop
    ldh [$e0], a
    ldh a, [$30]
    ldh [$e0], a
    sub b
    ldh a, [$d0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    dec b
    rlca
    rlca
    ld b, $0b
    inc c
    dec bc
    dec c
    rlca
    inc b
    rrca
    ld c, $1f
    rla
    inc bc
    ld [bc], a
    ld bc, $0303
    inc bc
    nop

jr_022_502b:
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    and b

jr_022_5035:
    ldh [$d0], a
    ldh a, [$d0]
    jr nc, jr_022_502b

    jr nc, jr_022_5035

    ld c, b
    ldh a, [$30]
    ldh [rNR41], a
    ldh a, [$f0]
    ld hl, sp+$28
    ldh a, [$f0]
    and b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld a, [bc]
    rrca

jr_022_5058:
    dec bc
    dec c

jr_022_505a:
    rrca
    inc c
    rlca
    ld b, $07

jr_022_505f:
    inc b
    inc bc
    nop
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, jr_022_5058

    jr nz, jr_022_505a

    sub b
    ldh a, [$f0]
    jr nc, jr_022_505f

    ld h, b
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ret nz

    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca

jr_022_509a:
    ld [$1c0f], sp
    rla
    inc c
    rrca
    rra
    rra
    rra
    ld d, $07
    inc b
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    jr nz, @-$1e

    jr nz, jr_022_509a

    db $10
    ldh a, [rNR10]
    ldh a, [$60]
    ldh [$c0], a
    ret nz

    ldh [$a0], a
    ldh a, [$50]
    and b
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld [c], a
    ld d, b
    push hl
    ld d, b
    db $eb
    ld d, b
    xor $50
    ld sp, hl
    ld d, b
    nop
    ld d, c
    ld [$1c51], sp
    ld d, c
    jr z, jr_022_5133

    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_022_50f7

    inc c
    dec b

jr_022_50f7:
    rst $38
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_022_5100

    jr @-$01

jr_022_5100:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    rlca
    inc b

jr_022_5133:
    add hl, sp
    ld d, c
    ld d, b
    ld d, a
    add hl, sp
    ld d, c
    ld d, b
    ld d, c
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, d
    ld d, b
    ld d, e
    ld d, b
    ld d, h
    ld d, b
    ld d, l
    ld d, b
    ld d, [hl]
    nop
    nop
    nop
    rlca
    rlca
    ld [$110f], sp
    rra
    ld de, $171f
    rra
    rra
    add hl, de
    rrca
    ld [$0c0f], sp
    rlca
    ld b, $07
    dec b
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    inc d
    rra
    rra
    rra
    rra
    ld c, $0e
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$30]
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ld hl, sp-$18
    ld hl, sp+$78
    ldh [rNR41], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rTAC], a
    rlca
    ld [$090f], sp
    rrca
    dec bc
    ld c, $1f
    inc e
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr @+$41

    jr c, jr_022_5222

    ld d, h
    ld a, a
    ld a, e
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$30]
    ldh [rNR41], a
    ldh a, [$50]
    ld hl, sp-$68
    db $fc
    or h
    db $ec
    ld l, h
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    ld b, $07
    rrca
    dec c
    rrca
    dec c
    rrca
    ld [$0a0f], sp
    rrca
    ld a, [bc]
    rrca
    ld [$080f], sp
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$18
    ld hl, sp-$08
    sbc b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$60], a
    ldh [$a0], a
    ldh a, [$d0]
    ldh a, [rSVBK]
    ldh a, [$30]
    add sp, -$08
    ret z

    ld hl, sp+$70
    ld [hl], b
    rlca
    rlca
    ld [$080f], sp
    rrca

jr_022_5216:
    ld [$180f], sp
    rra
    jr c, @+$31

    inc a
    daa
    rra
    dec de
    ld a, a
    ld a, b

jr_022_5222:
    ld a, a
    ld d, h

jr_022_5224:
    ccf
    dec sp
    rrca
    ld [$0f0f], sp

jr_022_522a:
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, @-$1e

    jr nz, jr_022_5216

    jr nz, @-$1e

    jr nc, jr_022_522a

    jr c, jr_022_5224

    ld a, b
    ret z

    ldh a, [$b0]
    ldh [rNR41], a
    ldh a, [$50]
    ld hl, sp-$68
    db $fc
    inc [hl]
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$110f], sp
    rra
    ld de, $171f
    rra
    rra
    add hl, de
    rrca
    ld [$0c0f], sp
    rlca
    ld b, $07
    dec b
    rrca
    dec bc
    rrca
    ld c, $0f
    inc c
    rla
    rra
    inc de
    rra
    ld c, $0e
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$30]
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$a0], a
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    rlca
    rlca
    ld [$090f], sp
    rrca
    dec bc
    ld c, $1f
    inc e
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr @+$11

    ld [$141f], sp
    ccf
    inc sp
    ld a, a
    ld e, d
    ld l, a
    ld l, h
    rrca
    rrca
    rlca
    rlca

jr_022_52ae:
    ld bc, $c001
    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$30]
    ld hl, sp+$38
    db $fc
    ld d, h
    db $fc
    cp h
    ldh [$a0], a
    ldh [$60], a
    ldh [$e0], a
    jr nz, jr_022_52ae

    ret nz

    ret nz

    inc bc
    inc bc
    ld b, $07
    rrca
    dec c
    rrca
    dec c
    rrca
    ld [$0a0f], sp
    rrca
    ld a, [bc]
    rrca
    ld [$080f], sp
    rrca
    inc c
    rra
    rla
    rra
    ld e, $07
    inc b
    dec bc
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$18
    ld hl, sp-$08
    sbc b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$60], a
    ldh [$a0], a
    ldh [$e0], a
    ldh a, [$50]
    ld hl, sp+$28
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    rlca
    rlca
    ld [$080f], sp
    rrca

jr_022_5316:
    ld [$180f], sp
    rra
    jr c, @+$31

    inc a
    daa
    rra
    dec de
    rrca
    ld [$141f], sp

jr_022_5324:
    ccf
    inc sp
    ld a, a
    ld e, b
    ld l, a
    ld l, a

jr_022_532a:
    rrca
    rrca
    rlca
    rlca

jr_022_532e:
    ld bc, $c001
    ret nz

    jr nz, @-$1e

    jr nz, jr_022_5316

    jr nz, @-$1e

    jr nc, jr_022_532a

    jr c, jr_022_5324

    ld a, b
    ret z

    ldh a, [$b0]
    db $fc
    inc a
    db $fc
    ld d, h
    ld hl, sp-$48
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$e0], a
    jr nz, jr_022_532e

    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    ld [$110f], sp
    rra
    ld de, $171f
    rra
    rra
    add hl, de
    rrca
    ld [$0c0f], sp
    rlca
    ld b, $07
    rlca
    rrca
    ld a, [bc]
    rra
    inc d
    rra
    rra
    rra
    rra
    ld c, $0e
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    ret nc

    ld [hl], b
    ldh a, [$30]
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ld hl, sp-$18
    ld hl, sp+$78
    ldh [rNR41], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rP1], a
    nop
    rlca
    rlca
    ld [$090f], sp
    rrca
    dec bc
    ld c, $1f
    inc e
    ccf
    ld a, [hl+]
    ccf
    ld [hl+], a
    rra
    jr @+$41

    jr c, jr_022_5424

    ld a, e
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    and b
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh a, [$30]
    ld hl, sp-$58
    ld hl, sp-$78
    ldh a, [$30]
    ldh [rNR41], a
    ld hl, sp-$68
    db $fc
    or h
    db $ec
    ld l, h
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld b, $07
    rrca
    dec c
    rrca
    dec c
    rrca
    ld [$0a0f], sp
    rrca
    ld a, [bc]
    rrca
    ld [$080f], sp
    rlca
    rlca
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp-$18
    ld hl, sp-$08
    sbc b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh [$60], a
    ldh a, [$d0]
    ldh a, [rSVBK]
    ldh a, [$30]
    add sp, -$08
    ret z

    ld hl, sp+$70
    ld [hl], b
    nop
    nop
    rlca
    rlca
    ld [$080f], sp
    rrca

jr_022_5418:
    ld [$180f], sp
    rra
    jr c, jr_022_544d

    inc a
    daa
    rra
    dec de
    ld a, a
    ld a, b

jr_022_5424:
    ccf
    dec sp

jr_022_5426:
    rrca
    ld [$0f0f], sp
    rrca
    rrca

jr_022_542c:
    add hl, bc
    rrca
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    jr nz, @-$1e

    jr nz, jr_022_5418

    jr nz, @-$1e

    jr nc, jr_022_542c

    jr c, jr_022_5426

    ld a, b
    ret z

    ldh a, [$b0]
    ldh [rNR41], a
    ld hl, sp-$68
    db $fc
    inc [hl]
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

jr_022_544d:
    ret nz

    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    dec bc
    rrca
    rrca
    inc c
    rlca
    inc b
    rlca
    ld b, $03
    inc bc
    rlca
    dec b
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    inc d
    rra
    rra
    rra
    rra
    ld c, $0e
    ldh [$e0], a
    ld d, b
    ldh a, [$e8]
    cp b
    add sp, -$48
    ld hl, sp-$68
    ld hl, sp-$58
    ld hl, sp+$28
    ld hl, sp+$08
    ld hl, sp+$08
    ldh a, [$30]
    ld hl, sp-$18
    ld hl, sp+$78
    ldh [rNR41], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [$03], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    rrca
    ld c, $1f
    dec d
    rra
    ld de, $0c0f
    rra
    inc e
    ld a, a
    ld d, h
    ld a, a
    ld a, e
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    ld d, b
    ldh a, [$f0]
    or b
    ldh a, [$30]
    ld hl, sp+$18
    db $fc
    ld d, h
    db $fc
    ld b, h
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh a, [$50]
    ld hl, sp-$68
    db $fc
    or h
    db $ec
    ld l, h
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    ld b, $07
    ld b, $07
    inc b
    rlca
    dec b
    rlca
    dec b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    ldh a, [$f0]
    ld [$84f8], sp
    db $fc
    add h
    db $fc
    db $f4
    ld a, h
    db $fc
    ld c, h

Call_022_54fc:
    ld hl, sp+$08
    ld hl, sp+$18
    ldh a, [$30]
    ldh [$a0], a
    ldh a, [$d0]
    ldh a, [rSVBK]
    ldh a, [$30]
    add sp, -$08
    ret z

    ld hl, sp+$70
    ld [hl], b
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc c
    rrca
    inc e
    rla
    ld e, $13
    rrca
    dec c
    ccf
    inc a
    ld a, a
    ld d, h
    ccf
    dec sp
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    ldh [$e0], a
    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR23]
    ld hl, sp+$1c
    db $f4
    inc a
    db $e4
    ld hl, sp-$28
    ldh a, [rNR10]
    ldh a, [$50]
    ld hl, sp-$68
    db $fc
    inc [hl]
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    ld de, $231f
    ld a, $23
    ld a, $2f
    ld a, $3f
    ld [hl-], a
    rra
    db $10
    rra
    jr jr_022_5570

    inc c
    rlca
    dec b
    rlca
    rlca
    rrca
    ld a, [bc]
    rra
    inc d
    rra
    rra
    rra
    rra
    ld c, $0e

jr_022_5570:
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$a0], a
    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp-$18
    ld hl, sp+$78
    ldh [rNR41], a
    ret nc

    ldh a, [$90]
    ldh a, [$e0]
    ldh [rIF], a
    rrca
    ld de, $131f
    ld e, $17
    inc e
    ccf
    jr c, jr_022_561a

    ld d, l
    ld a, a
    ld b, l
    ccf
    jr nc, jr_022_5620

    ld [hl], b
    ld a, a
    ld d, h
    ld a, a
    ld a, e
    rrca
    ld a, [bc]
    rrca
    inc c
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$60], a
    ldh a, [$50]
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    ldh a, [$50]
    ld hl, sp-$68
    db $fc
    or h
    db $ec
    ld l, h
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    rlca
    rlca
    inc c
    rrca

jr_022_55d4:
    ld e, $1b
    ld e, $1b
    rra
    ld de, $151f
    rra

jr_022_55dd:
    inc d
    rra

jr_022_55df:
    db $10
    rra
    db $10
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    ret nz

    ret nz

    jr nz, jr_022_55d4

    db $10
    ldh a, [rNR10]
    ldh a, [$d0]
    ldh a, [$f0]
    jr nc, jr_022_55dd

    jr nz, jr_022_55df

    ld h, b
    ret nz

    ret nz

    ldh [$a0], a
    ldh a, [$d0]
    ldh a, [rSVBK]
    ldh a, [$30]
    add sp, -$08
    ret z

    ld hl, sp+$70
    ld [hl], b
    rrca
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr nc, jr_022_5659

jr_022_561a:
    ld [hl], b
    ld e, a
    ld a, b
    ld c, a
    ccf
    scf

jr_022_5620:
    rst $38
    ldh a, [$7f]
    ld d, h
    ccf
    dec sp
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    add hl, bc
    rrca
    rlca
    rlca
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [rSVBK], a
    ret nc

    ldh a, [$90]
    ldh [$60], a
    ret nz

    ld b, b
    ldh a, [$50]
    ld hl, sp-$68
    db $fc
    inc [hl]
    db $ec
    db $ec
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    add hl, bc

jr_022_5659:
    rrca
    dec bc
    rrca
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0607
    rrca
    ld [$0f0f], sp
    rrca
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    add b
    ret nz

    ldh [$60], a
    ldh [$60], a
    ldh [rNR41], a
    ldh [$60], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh a, [rSVBK]
    ret nz

    nop
    ldh [$e0], a
    and b
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec b
    rlca
    rlca
    ld b, $0f
    inc c
    rra
    ld [de], a
    rrca
    inc c
    rra
    inc e
    ccf
    jr z, jr_022_56ac

    ld b, $07
    inc b
    rlca
    rlca
    dec b
    rlca

jr_022_56ac:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh a, [$90]
    ldh [rNR41], a
    ret nz

jr_022_56c1:
    nop
    ldh [$60], a
    ld hl, sp-$58
    ret c

    ld e, b
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
    inc bc

jr_022_56d6:
    rlca
    dec b
    rlca
    dec b
    rlca
    inc b
    rlca
    ld b, $07

jr_022_56df:
    inc b
    rlca
    inc b
    inc bc
    nop
    inc bc
    ld bc, $0607
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_022_56d6

    db $10
    ldh a, [rNR10]
    ldh a, [$d0]
    ldh a, [$e0]
    jr nz, jr_022_56df

    jr nz, jr_022_56c1

    ld b, b
    ret nz

    add b
    ldh [$60], a
    ldh [rNR41], a
    ret nc

    ldh a, [$d0]
    ldh a, [$60]
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc c
    rrca

jr_022_571c:
    inc e
    inc de
    rrca
    rrca
    ccf
    inc a
    ccf
    jr z, jr_022_572c

    inc b
    rlca
    rlca
    rlca
    rlca
    dec b
    rlca

jr_022_572c:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    jr nz, jr_022_571c

    ld [hl], b
    ret nc

    ldh [$a0], a
    ret nz

    nop
    ldh [$60], a
    ld hl, sp+$28
    ret c

    ret c

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    ld h, d
    ld d, a
    ld h, l
    ld d, a
    ld l, e
    ld d, a
    ld l, [hl]
    ld d, a
    ld a, c
    ld d, a
    add b
    ld d, a
    adc b
    ld d, a
    sbc h
    ld d, a
    xor b
    ld d, a
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_022_5777

    inc c
    dec b

jr_022_5777:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_022_5780

    jr @-$01

jr_022_5780:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    inc b
    inc b
    cp c
    ld d, a
    ldh [$63], a
    cp c
    ld d, a
    ldh [$57], a
    ldh [$58], a
    ldh [$59], a
    ldh [$5a], a
    ldh [$5b], a
    ldh [$5c], a
    ldh [$5d], a
    ldh [$5e], a
    ldh [$5f], a
    ldh [$60], a
    ldh [$61], a
    ldh [$62], a
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
    jr jr_022_57fa

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    jr z, jr_022_5829

    dec hl
    ccf
    cpl
    inc a
    scf
    inc [hl]
    inc hl
    ld [hl+], a
    inc bc
    inc bc
    rlca
    dec b
    ld c, $0b
    rlca
    rlca

jr_022_57fa:
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

    ld hl, sp-$10
    ldh a, [rSB]
    ld bc, $0302

jr_022_5824:
    rlca
    rlca
    ld [$110f], sp

jr_022_5829:
    rra
    ld de, $3f1f
    ld l, $3f
    ld a, [hl+]
    ccf
    jr c, jr_022_58b2

    ld e, h
    ld a, e
    ld a, a
    ld e, h
    ld d, a
    rst $08
    set 0, a
    rst $00
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_022_5824

    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    db $fc
    ld [hl], h
    db $fc
    ld d, h
    ld hl, sp+$18
    add sp, $38
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld l, $3b
    rra
    dec e
    rra
    dec d
    rra
    db $10
    rrca
    add hl, bc
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    jr jr_022_589a

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $12
    cp $d4
    db $fc
    db $f4
    inc a
    add sp, $28
    ret z

    ld c, b
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr nc, @-$0e

    ldh [$e0], a

jr_022_589a:
    ret nc

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_022_58a4:
    dec bc
    rrca
    inc c
    rrca
    inc d
    rra
    inc d
    rra
    inc a
    cpl
    ld a, $2f
    ld a, [hl]
    ld a, e

jr_022_58b2:
    ld a, a
    ld e, a
    jr c, @+$41

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ret nz

    ret nz

    jr nz, jr_022_58a4

    sub b
    ldh a, [$50]
    ldh a, [rOBP0]
    ld hl, sp+$48
    ld hl, sp-$64
    db $f4
    cp a
    rst $30
    ei
    db $db
    ld l, [hl]
    cp $de
    ld a, [c]
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    jr jr_022_58fa

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    ld c, b
    ld a, a
    dec hl
    ccf
    cpl
    inc a
    rla
    inc d
    inc de
    ld [de], a
    rlca
    rlca
    ld c, $0b
    inc c
    rrca
    rlca
    rlca

jr_022_58fa:
    dec bc
    ld c, $09
    rrca
    ld b, $06
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    cp $0e
    or $96
    ld h, h
    db $e4
    add sp, -$58
    ldh a, [$d0]
    ld hl, sp+$78
    add sp, -$08
    jr nc, jr_022_5950

    inc bc
    inc bc
    inc b
    rlca
    rlca
    rlca
    ld [$110f], sp
    rra
    ld de, $3f1f
    ld l, $3f
    ld a, [hl+]
    rst $18
    ret c

    rst $10
    call c, $6f7b
    ld a, h
    ld e, a
    ld l, a
    ld l, e
    rlca
    rlca
    inc bc
    inc bc

jr_022_593e:
    nop
    nop

jr_022_5940:
    add b
    add b
    ld b, b
    ret nz

    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    db $fc
    ld [hl], h
    db $fc
    ld d, h

jr_022_5950:
    db $fc
    inc e
    cp $3a
    sbc $fe
    jr c, jr_022_5940

    ldh a, [$d0]
    ldh [$e0], a
    jr nz, jr_022_593e

    ret nz

    ret nz

    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld l, $3b
    rst $18
    db $dd
    rst $18
    push de
    ld e, a
    ld d, b
    ccf
    add hl, sp
    ld e, $17
    inc e
    rra
    rrca
    dec bc
    rla
    inc e
    dec de
    rra
    inc c
    inc c
    jr jr_022_599a

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $14
    db $fc
    call nc, $f4fc
    inc a
    db $ec
    inc l
    call nz, $c044
    ret nz

    ldh [$a0], a
    ld [hl], b
    ret nc

    ldh [$e0], a

jr_022_599a:
    ldh a, [rSVBK]
    ret nc

    ldh a, [$60]
    ld h, b
    inc bc
    inc bc
    inc b
    rlca

jr_022_59a4:
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld [de], a
    rra
    ld [de], a
    rra
    add hl, sp
    cpl
    dec a
    cpl
    rra
    dec de
    db $76
    ld a, a
    ld a, e
    ld c, a
    inc a
    ccf
    rrca
    dec bc
    rlca
    rlca

jr_022_59bc:
    inc bc
    inc bc

jr_022_59be:
    nop
    nop

jr_022_59c0:
    ret nz

    ret nz

    jr nz, jr_022_59a4

    ret nc

    ldh a, [$30]
    ldh a, [$2b]
    ei
    dec hl
    ei
    ld a, $f6
    ld a, [hl]
    or $7e
    sbc $fe
    ld a, [$fcdc]
    jr c, jr_022_59c0

    ldh a, [$d0]
    jr nz, jr_022_59bc

    jr nz, jr_022_59be

    ret nz

    ret nz

    inc b
    inc b
    ld a, [de]
    ld e, $27
    ccf
    ld l, $3b
    dec d
    rra
    rla
    ld e, $17
    inc e
    dec bc
    ld a, [bc]
    dec b
    rlca
    ld a, [bc]
    rrca
    inc e
    rla
    ld e, $13
    rrca
    rrca
    ld b, $06
    add hl, bc
    rrca

jr_022_59fe:
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    jr jr_022_59fe

    inc b
    db $fc
    inc d
    db $fc
    cp b
    add sp, -$10
    ld d, b
    ldh a, [$90]
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [rLCDC], a
    ret nz

    ldh [$a0], a
    ld h, b
    ld h, b
    ld d, $16
    ld c, $0e
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld [$180f], sp
    rra
    inc a
    cpl
    ccf
    daa
    rra
    add hl, de
    rrca
    inc c
    dec bc
    rrca
    rlca
    dec b
    rlca
    ld b, $07
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$48
    ld hl, sp-$04
    or h
    db $fc
    ld d, h
    ld hl, sp+$58
    ldh a, [$30]
    ret nc

    ldh a, [$e0]
    and b
    ldh [$e0], a
    ldh [$a0], a
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    rlca
    rlca
    jr jr_022_5a85

    jr nz, jr_022_5aa7

    jr z, jr_022_5aa9

    dec e
    rla
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rra
    db $10
    rrca
    add hl, bc
    ld b, $07
    ld [bc], a
    inc bc
    rlca
    dec b
    ld b, $06
    ld l, b
    ld l, b
    ld [hl], b
    ld [hl], b
    jr nz, jr_022_5aa2

    ld e, b
    ld a, b
    db $e4

jr_022_5a85:
    db $fc
    ld [hl], h
    call c, $f8a8
    add sp, $78
    add sp, $38
    ret nc

    ld d, b
    and b
    ldh [$50], a
    ldh a, [$38]
    add sp, $78
    ret z

    ldh a, [$f0]
    ld h, b
    ld h, b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc

jr_022_5aa2:
    inc b
    rlca

jr_022_5aa4:
    add hl, bc
    rrca
    ld a, [bc]

jr_022_5aa7:
    rrca
    ld [de], a

jr_022_5aa9:
    rra
    ld a, [hl-]
    cpl
    dec a
    daa
    dec e
    rla
    dec bc
    rrca
    inc c
    rrca
    dec bc
    rrca
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_022_5aa4

    ret nc

    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$78
    ld hl, sp+$70
    ret nc

    ldh a, [$f0]
    ret nc

    ldh a, [$f0]
    db $10
    ldh a, [$f0]
    ldh a, [$d0]
    ret z

    ld hl, sp-$08
    ld hl, sp+$04
    inc b
    ld a, [de]
    ld e, $27
    ccf
    ld l, $3b
    dec d
    rra
    rla
    ld e, $17
    inc e
    dec bc
    ld a, [bc]
    dec b
    rlca
    ld a, [bc]
    rrca
    inc e
    rla
    ld e, $1f
    rrca
    rrca
    ld b, $06
    add hl, bc
    rrca

jr_022_5afe:
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    jr jr_022_5afe

    inc b
    db $fc
    inc d
    db $fc
    cp b
    add sp, -$10
    ld d, b
    ldh a, [$90]
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld [$180f], sp
    rra
    inc a
    cpl
    ccf
    daa
    rra
    add hl, de
    rrca
    inc c
    dec bc
    rrca
    rlca
    dec b
    ld a, a

jr_022_5b39:
    ld a, a
    ld h, a
    ld h, l
    add hl, bc
    rrca
    ld c, $0e
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$48
    ld hl, sp-$04
    or h
    db $fc
    ld d, h
    ld hl, sp+$58
    ldh a, [$30]
    ret nc

    ldh a, [$e0]
    jr nz, jr_022_5b39

    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    rlca
    rlca
    jr jr_022_5b85

    jr nz, jr_022_5ba7

    jr z, jr_022_5ba9

    dec e
    rla
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rra
    db $10
    rrca
    add hl, bc
    ld b, $07
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_022_5ba2

    ld e, b
    ld a, b
    db $e4

jr_022_5b85:
    db $fc
    ld [hl], h
    call c, $f8a8
    add sp, $78
    add sp, $38
    ret nc

    ld d, b
    and b
    ldh [$d0], a
    ldh a, [$f8]
    add sp, $78
    ret z

    ldh a, [$f0]
    ld h, b
    ld h, b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc

jr_022_5ba2:
    inc b
    rlca

jr_022_5ba4:
    add hl, bc
    rrca
    ld a, [bc]

jr_022_5ba7:
    rrca
    ld [de], a

jr_022_5ba9:
    rra
    ld a, [hl-]
    cpl
    dec a
    daa
    dec e
    rla
    dec bc
    rrca
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_022_5ba4

    ret nc

    ldh a, [$30]
    ldh a, [$28]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$78
    ld hl, sp+$70
    ret nc

    ldh a, [$f0]
    ret nc

    ldh a, [$fe]
    ld e, $f6
    or $f0
    ret nc

    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc b
    inc b
    ld a, [de]
    ld e, $27
    ccf
    xor $fb
    push de
    rst $18
    rst $10
    sbc $57
    ld e, h
    dec hl
    ld a, [hl+]
    dec e
    rra
    inc e
    rla
    ld e, $1b
    rra
    rra
    rrca
    rrca
    ld b, $06
    add hl, bc
    rrca

jr_022_5bfe:
    rrca
    rrca
    nop
    nop
    ldh [$e0], a
    jr jr_022_5bfe

    inc b
    db $fc
    inc d
    db $fc
    cp b
    add sp, -$10
    ld d, b
    ldh a, [$90]
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [$c0], a
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    rlca
    inc b
    rlca
    dec bc
    rrca
    ld [$d80f], sp
    rst $18
    db $fc
    rst $28
    rst $38
    rst $20
    ccf
    add hl, sp
    rra
    inc e
    rrca
    dec bc
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    ld c, $0e
    add b
    add b
    ld b, b
    ret nz

    or b
    ldh a, [rNR10]
    ldh a, [$88]
    ld hl, sp+$48
    ld hl, sp-$04
    or h
    db $fc
    ld d, h
    ld hl, sp+$58
    ldh a, [$30]
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [$e0], a
    and b
    sub b
    ldh a, [$f0]
    ldh a, [rP1]
    nop
    rlca
    rlca
    jr jr_022_5c85

    jr nz, jr_022_5ca7

    jr z, jr_022_5ca9

    dec e
    rla
    rrca
    ld a, [bc]
    rrca
    add hl, bc
    rra
    db $10
    rrca
    add hl, bc
    dec b
    rlca
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_022_5ca2

    ld e, b
    ld a, b
    db $e4

jr_022_5c85:
    db $fc
    ld [hl], h
    call c, $fbab
    db $eb
    ld a, e
    ld [$d43a], a
    ld d, h
    xor b
    add sp, -$30
    ldh a, [$f8]
    add sp, -$08
    ret z

    ldh a, [$f0]
    ld h, b
    ld h, b
    sub b
    ldh a, [$f0]
    ldh a, [$03]
    inc bc

jr_022_5ca2:
    inc b
    rlca

jr_022_5ca4:
    add hl, bc
    rrca
    ld a, [bc]

jr_022_5ca7:
    rrca
    ld [de], a

jr_022_5ca9:
    rra
    ld a, [hl-]
    cpl
    dec a
    daa
    dec e
    rla
    dec bc
    rrca
    inc b
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    dec b
    add hl, bc
    rrca
    rrca
    rrca
    ret nz

    ret nz

    jr nz, jr_022_5ca4

    db $d3
    di
    inc sp
    di
    add hl, hl
    ld sp, hl
    ld a, [hl+]
    ld a, [$fc2c]
    ld a, h
    db $f4
    ld a, b
    ret c

    add sp, -$08
    ret z

    ld hl, sp-$10
    db $10
    ldh a, [$f0]
    ldh a, [$d0]
    ld c, b
    ld a, b
    ld a, b
    ld a, b
    inc bc
    inc bc
    inc b
    rlca

jr_022_5ce4:
    dec bc
    rrca
    call nc, $d4df
    rst $18
    call nc, Call_022_4cdf
    ld c, a
    inc l
    cpl
    dec d
    rla
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    ld [$0f0f], sp
    rlca
    rlca
    add hl, bc
    rrca
    ld c, $0e
    ret nz

    ret nz

    jr nz, jr_022_5ce4

    sub b
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nc

    ldh a, [$d0]
    ldh [$a0], a
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    jr jr_022_5d3a

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    ret z

    rst $38
    ld [$efff], a
    db $fd
    scf
    inc [hl]
    dec de
    dec de
    dec b
    rlca
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    inc b

jr_022_5d3a:
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    ld hl, sp+$08
    ldh a, [$90]
    ld h, b
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ldh [$e0], a
    sub b
    ldh a, [rSVBK]
    ld [hl], b
    nop
    nop
    rlca
    rlca
    ld [$110f], sp
    rra
    inc de
    ld e, $1f
    dec e
    rra
    dec d
    rra
    db $10
    rrca
    ld [$0707], sp

jr_022_5d74:
    ld b, $07
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rlca
    dec b

jr_022_5d7e:
    rlca
    rlca
    ret nz

    ret nz

    jr nc, jr_022_5d74

    ret z

    ld hl, sp+$2b
    ei
    sub e
    di
    or e
    di
    ld a, [c]
    ld d, d
    db $f4
    inc d
    add sp, $68
    ldh a, [$d0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$e0], a
    jr nz, @-$3e

    ret nz

    jr nz, jr_022_5d7e

    ldh [$e0], a
    inc bc
    inc bc
    inc c
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld e, $13
    rra
    dec d
    rra
    dec d
    rra
    db $10
    rrca
    dec bc
    inc b
    rlca
    dec b
    rlca
    inc bc
    inc bc
    rlca
    rlca
    add hl, bc
    rrca
    ld c, $0e
    jr jr_022_5dda

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $13
    rst $38
    rst $10
    rst $38
    rst $30
    ccf
    db $fc
    inc a
    ld hl, sp-$08
    ld [hl], b
    ret nc

    and b
    ldh [$c0], a
    ret nz

    ldh [rNR41], a

jr_022_5dda:
    ldh [$e0], a
    and b
    ldh [$e0], a
    ldh [rP1], a
    nop
    jr jr_022_5dfc

    dec h
    dec a
    ld c, [hl]
    ld a, a
    ld e, h
    ld [hl], a
    jr z, jr_022_5e2b

    dec hl
    ccf
    cpl
    inc a
    scf
    inc [hl]
    inc hl
    ld [hl+], a
    rlca
    dec b
    ld c, $0b
    rlca
    rlca
    rrca
    rrca

jr_022_5dfc:
    dec bc
    rrca
    ld b, $06
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    ld [$24f8], sp
    db $fc
    ld [hl], h
    call c, $dc74
    ld hl, sp-$48
    ld hl, sp-$58
    ld hl, sp+$08
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

    ld hl, sp-$10
    ldh a, [rP1]
    nop
    ld bc, $0201
    inc bc

jr_022_5e26:
    rlca
    rlca
    ld [$110f], sp

jr_022_5e2b:
    rra
    ld de, $3f1f
    ld l, $3f
    ld a, [hl+]
    ccf
    jr c, jr_022_5eb0

    ld a, a
    ld e, h
    ld d, a
    rst $08
    set 0, a
    rst $00
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_022_5e26

    ld h, b
    ldh [$90], a
    ldh a, [$c8]
    ld a, b
    add sp, $38
    db $fc
    ld [hl], h
    db $fc
    ld d, h
    ld hl, sp+$18
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    db $10
    rra
    inc h
    ccf
    ld l, $3b
    ld l, $3b
    rra
    dec e
    rra
    dec d
    rra
    db $10
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    nop
    nop
    jr jr_022_5e9c

    and h
    cp h
    ld [hl], d
    cp $3a
    xor $12
    cp $d4
    db $fc
    db $f4
    inc a
    add sp, $28
    ret z

    ld c, b
    ld [hl], b
    ret nc

    jr nc, @-$0e

    ldh [$e0], a
    ret nc

    ld [hl], b

jr_022_5e9c:
    sub b
    ldh a, [$60]
    ld h, b
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca

jr_022_5ea6:
    dec bc
    rrca
    inc c
    rrca
    inc d
    rra
    inc d
    rra
    inc a
    cpl

jr_022_5eb0:
    ld a, $2f
    ld a, [hl]
    ld a, e
    jr c, jr_022_5ef5

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nz, jr_022_5ea6

    sub b
    ldh a, [$50]
    ldh a, [rOBP0]
    ld hl, sp+$48
    ld hl, sp-$64
    db $f4
    cp a
    rst $30
    ei
    db $db
    sbc $f2
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    inc c
    inc c
    ld [de], a
    ld e, $27
    ccf
    ld l, $3b
    inc d
    rra
    dec d
    rra
    rla
    ld e, $1b
    ld a, [de]
    ld de, $0311
    inc bc
    rlca

jr_022_5ef5:
    dec b
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ld hl, sp-$08
    inc b
    db $fc
    ld [de], a
    cp $3a
    xor $ba
    xor $fc
    ld e, h
    db $fc
    ld d, h
    db $fc
    inc b
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

    ld hl, sp-$10
    ldh a, [rP1]
    nop
    ld bc, $0301
    inc bc
    inc b
    rlca
    ld [$080f], sp
    rrca
    rra
    rla
    rra
    dec d
    rra
    inc e
    ld a, a
    ld e, h
    ld a, e
    ld a, a
    ld e, h
    ld d, a
    rst $08
    set 0, a
    rst $00
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$b0]
    ldh a, [rOBP0]
    ld hl, sp-$1c
    cp h
    db $f4
    sbc h
    cp $3a
    cp $2a
    db $fc
    inc c
    add sp, $38
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$120f], sp
    rra
    rla
    dec e
    rla
    dec e
    rrca
    ld c, $0f
    ld a, [bc]
    rrca
    ld [$090f], sp
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    inc c
    inc c
    jp nc, Jump_000_39de

    rst $38
    dec e
    rst $30

jr_022_5f88:
    add hl, bc
    rst $38
    ld l, d
    cp $fa
    sbc [hl]
    db $f4
    sub h
    db $e4
    inc h
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr nc, jr_022_5f88

    ldh [$e0], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    ld bc, $0201
    inc bc
    dec b
    rlca
    ld b, $07
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    ld e, $17
    rra
    rla
    ccf
    dec a
    ld a, a
    ld e, a
    jr c, jr_022_5ff5

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    ldh [$e0], a
    db $10
    ldh a, [$c8]
    ld hl, sp+$28
    ld hl, sp+$24
    db $fc
    inc h
    db $fc
    ld c, [hl]
    ld a, [$fb5f]
    ld a, l
    db $ed
    ld l, [hl]
    cp $de
    ld a, [c]
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    jr nc, jr_022_6012

    ld c, e
    ld a, e
    sbc h
    rst $38
    cp b
    rst $28
    ld d, b
    ld a, a
    ld d, [hl]
    ld a, a
    ld e, a
    ld a, c
    ld l, a
    ld l, c
    ld b, a
    ld b, h
    inc bc
    inc bc
    rlca

jr_022_5ff5:
    dec b
    ld c, $0b
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld b, $06
    nop
    nop
    ldh [$e0], a
    db $10
    ldh a, [rOBP0]
    ld hl, sp-$18
    cp b
    add sp, -$48
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [rNR10]

jr_022_6012:
    ldh a, [$90]
    ld a, b
    add sp, $38
    ld hl, sp-$10
    ret nc

    add sp, $78
    ret c

    ld hl, sp-$10
    ldh a, [$03]
    inc bc
    inc b
    rlca
    ld c, $0f
    ld de, $231f
    ld a, $23
    ld a, $7f
    ld e, h
    ld a, a
    ld d, h
    ld a, a
    ld [hl], b
    ld a, a
    ld e, h
    ld a, e
    ld a, a
    ld e, h
    ld d, a
    rst $08
    set 0, a
    rst $00
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    ret nz

    ret nz

    jr nz, @-$1e

    sub b
    ldh a, [$d0]
    ld [hl], b
    ld hl, sp-$18
    ld hl, sp-$58
    ldh a, [$30]
    add sp, $38
    call c, Call_000_3ef4
    ld a, [$d6f6]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rra
    rra
    jr nz, jr_022_60a5

    ld c, b
    ld a, a
    ld e, h
    ld [hl], a
    ld e, l
    ld [hl], a
    ccf
    ld a, [hl-]
    ccf
    ld a, [hl+]
    ccf
    jr nz, jr_022_6082

    add hl, bc
    ld b, $07
    rlca
    dec b
    rrca
    dec bc
    rra
    ld e, $17
    rra
    inc c
    inc c
    jr nc, jr_022_60b2

jr_022_6082:
    ld c, b
    ld a, b
    db $e4
    db $fc
    ld [hl], h
    call c, $fc24
    xor b
    ld hl, sp-$18
    ld a, b
    ret nc

    ld d, b
    sub b
    sub b
    ldh [$e0], a
    ld [hl], b
    ret nc

    jr nc, @-$0e

    ldh [$e0], a
    ret nc

    ld [hl], b
    sub b
    ldh a, [$60]
    ld h, b
    rlca
    rlca
    ld [$170f], sp

jr_022_60a5:
    rra

jr_022_60a6:
    jr jr_022_60c7

    jr z, jr_022_60e9

    jr z, jr_022_60eb

    ld a, c
    ld e, a
    ld a, l
    ld e, a
    db $fd
    rst $30

jr_022_60b2:
    ld a, a
    ld e, a
    jr c, @+$41

    inc e
    rla
    rrca
    dec bc
    inc b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_022_60a6

    and b

jr_022_60c7:
    ldh [$90], a
    ldh a, [$90]
    ldh a, [$38]
    add sp, $7e
    xor $f6
    or [hl]
    ld l, [hl]
    cp $de
    ld a, [c]
    inc a
    db $fc
    ldh a, [$d0]
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc c
    inc c
    ld de, $261d
    ccf
    inc l

jr_022_60e9:
    dec sp
    inc d

jr_022_60eb:
    rra
    rla
    inc e
    dec de
    jr jr_022_6104

    ld [de], a
    inc bc
    inc bc
    ld b, $07
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_022_6104:
    ldh [$e0], a

jr_022_6106:
    db $10
    ldh a, [$08]
    ld hl, sp+$68
    ld hl, sp-$10
    or b
    ldh a, [$90]
    ldh a, [rNR10]
    ldh [$a0], a
    jr nc, jr_022_6106

    ldh [$e0], a
    ret nc

    ld [hl], b
    ldh a, [$f0]
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    rra
    ld d, $1f
    ld d, $1f
    inc e
    ccf
    inc l
    inc l
    dec hl
    ld h, a
    ld h, a
    ld h, e
    ld h, e
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    and b
    ldh [$d0], a
    ld [hl], b
    ld hl, sp+$68
    ld hl, sp+$68
    ldh a, [$30]
    ret nc

    jr nc, jr_022_6191

    db $f4
    db $ec
    db $ec
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [$100f], sp
    rra
    ld d, $1f
    rrca
    dec c
    rrca
    add hl, bc
    rrca
    ld [$0507], sp
    inc bc
    ld bc, $0707
    rrca
    ld c, $0b
    rrca
    inc b
    inc b
    nop
    nop
    nop
    nop
    jr nc, jr_022_61b4

    adc b
    cp b
    ld h, h
    db $fc
    inc [hl]
    call c, $fc24
    add sp, $38
    ret nc

    db $10
    ret nc

jr_022_6191:
    ld d, b
    ret nz

    ret nz

    jr nz, @-$1e

    ret nz

    ret nz

    ldh [$60], a
    and b
    ldh [rLCDC], a
    ld b, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    inc bc
    rlca
    rlca
    inc b
    rlca
    ld [$1c0f], sp
    rla
    ld e, $17
    ld a, $3f
    ccf
    cpl

jr_022_61b4:
    inc c
    dec bc
    rlca
    rlca
    nop
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    ret nz

    and b
    ldh [$60], a
    ldh [$50], a
    ldh a, [$b8]
    add sp, -$42
    xor $f6
    or $5c
    db $fc
    jr c, @-$06

    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

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
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    dec bc
    rrca

jr_022_62aa:
    inc c
    rrca
    inc c
    rrca
    dec e
    rla
    ccf
    dec sp
    ld a, $2f
    inc e
    rra
    rrca
    dec bc
    dec b
    rlca
    dec b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_022_62aa

    and b
    ldh [$a0], a
    ldh [rSVBK], a
    ret nc

    ld hl, sp-$48
    ld hl, sp-$08
    ld a, b
    ret z

    ldh a, [$b0]
    ret nz

    ret nz

    add b
    add b
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
    nop
    nop
    inc bc
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    ld a, [bc]
    rrca
    ld a, [bc]
    rrca
    dec e
    rla
    rrca
    dec bc
    ld e, $1f
    inc a
    daa
    rra
    dec de
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    and b
    ldh [$60], a
    ldh [$60], a
    ldh [$78], a
    ret c

    ld hl, sp-$48
    ld hl, sp-$18
    ld [hl], b
    ldh a, [$e0]
    and b
    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    or $63
    ld sp, hl
    ld h, e
    rst $38
    ld h, e
    ld [bc], a
    ld h, h
    dec c
    ld h, h
    inc d
    ld h, h
    inc e
    ld h, h
    jr nc, @+$66

    inc a
    ld h, h
    or $63
    ld b, l
    ld h, h
    nop
    rst $38
    db $fd
    nop
    ld e, $01
    ld e, $ff
    nop
    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_022_640b

    inc c
    dec b

jr_022_640b:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr jr_022_6414

    jr @-$01

jr_022_6414:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd
    ld a, [bc]
    ld e, $0b
    ld e, $ff
    nop

    db $05, $04, $53, $64, $70, $6a, $53, $64, $70, $64, $70, $65, $70, $65, $70, $65

    ld [hl], b
    ld h, l
    ld [hl], b
    ld h, l

    db $70, $66

    ld [hl], b
    ld h, a
    ld [hl], b
    ld l, b

    db $70, $69

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rlca
    ld b, $07
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$30
    ret nc

    sub b
    ldh a, [$e8]
    ld a, b
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_022_64db

    ld a, [hl+]
    ccf
    inc hl
    ccf
    ld e, c
    ld a, [hl]
    ld a, h
    ld [hl], a
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_022_64db:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$30
    ldh a, [$78]
    ret c

    db $f4
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    inc c
    dec bc
    add hl, bc
    rrca
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$f0], a
    jr nc, @-$16

    cp b
    add sp, -$08
    jr nc, @-$0e

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, @+$41

    ld a, e
    ld a, a
    ld e, a
    ld [hl], h
    ccf
    jr c, jr_022_6556

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a

jr_022_6556:
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    xor b
    ld hl, sp+$28
    ld hl, sp-$50
    ldh a, [$f0]
    ld d, b
    ld hl, sp+$18
    db $f4
    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc
    rrca
    ld [$070f], sp
    rlca
    rrca
    inc c
    rla
    dec e
    rla
    rra
    inc c
    rrca
    ld c, $0b
    rrca
    dec c
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$3e
    cp $36
    sub $94
    db $f4
    add sp, $68
    cp b
    ld hl, sp-$30
    ldh a, [$f8]
    ld hl, sp+$78
    ld l, b
    ld [hl], b

jr_022_65af:
    ld [hl], b
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_022_65db

    ld a, [hl+]
    ccf
    db $e3
    rst $38
    reti


    sbc $7c
    ld [hl], a
    ld e, a
    ld [hl], e
    ld a, a
    ld a, h
    dec bc
    rrca

jr_022_65ca:
    ld c, $0f
    rlca
    rlca
    ld bc, $8001
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_022_65db:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$34
    db $fc
    ld a, h
    call c, $a0e0
    ldh [$e0], a
    jr nz, jr_022_65ca

    ret nc

    ldh a, [$e0]
    jr nz, jr_022_65af

    ret nz

    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$740f], sp
    ld a, a
    ld a, h
    ld a, a
    inc l
    dec hl
    add hl, sp
    ccf
    rla
    ld e, $1f
    rra
    ld [$1d0f], sp
    rla
    ld e, $1a
    ld c, $0e
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ret nc

    ldh a, [$d0]
    ldh a, [$b0]
    ldh a, [$f0]
    ret nc

    ldh [$e0], a
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, jr_022_667f

    dec de
    rra
    rra
    inc d
    ccf
    jr nc, jr_022_66a6

    ld a, h
    ld l, e
    ld l, a
    rrca
    rrca
    rlca
    rlca
    ld bc, $c001
    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    or $f6
    xor [hl]
    cp $2c
    db $fc
    cp h
    db $fc
    db $f4
    ld e, h
    ld hl, sp+$38
    ldh [$60], a
    and b
    ldh [$d0], a
    ldh a, [$e0]
    jr nz, @-$3e

    ret nz

    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
    ld c, $0f
    rlca
    rlca
    add hl, bc

jr_022_667f:
    rrca
    ld [$070f], sp
    rlca
    rlca
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    sub b
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$38
    ld hl, sp+$30
    ret nc

    add sp, $78

jr_022_66a6:
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    inc c
    rrca
    ld [$0a0f], sp
    rrca
    jr jr_022_66dd

    ld a, [hl+]
    ccf
    inc hl
    ccf
    ld e, c
    ld a, [hl]
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, @-$1e

    and b
    ldh [$30], a

jr_022_66dd:
    ldh a, [$a8]
    ld hl, sp-$78
    ld hl, sp+$30
    ldh a, [$f4]
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    dec bc
    rrca
    ld [$0c0f], sp
    rrca
    ld [$140f], sp
    rra
    inc e
    rra
    inc c
    dec bc
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]

jr_022_671a:
    ld [hl], b
    ldh a, [$e0]
    ldh [$90], a
    ldh a, [rNR10]
    ldh a, [$e0]
    ldh [$e8], a
    cp b
    add sp, -$08
    jr nc, jr_022_671a

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld a, [hl+]
    ccf
    jr z, jr_022_6781

    ld a, e
    ld a, a
    ccf
    jr c, jr_022_6756

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a

jr_022_6756:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    xor b
    ld hl, sp+$28
    ld hl, sp-$50
    ldh a, [$f8]
    jr @-$0a

    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc bc

jr_022_6781:
    inc bc
    rlca
    ld b, $07
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ldh a, [$f0]
    ld hl, sp-$08
    ret z

    ld hl, sp-$78
    ld hl, sp+$18
    ld hl, sp-$78
    ld hl, sp-$6c
    db $fc
    inc e
    db $fc
    sbc b
    add sp, -$70
    ldh a, [$e8]
    ld a, b
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    inc b
    rlca
    dec b
    rlca
    inc c
    rrca
    dec d
    rra
    ld de, $2c1f
    ccf
    ld a, h
    ld [hl], a
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [rNR23]
    ld hl, sp+$54
    db $fc
    call nz, $98fc
    ld a, b
    ld a, b
    ret c

    db $f4
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    dec b
    rlca
    inc b
    rlca
    ld b, $07
    inc b
    rlca
    ld a, [bc]
    rrca
    ld c, $0f
    ld b, $05
    add hl, bc
    rrca
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld hl, sp+$38
    ld hl, sp+$70
    ldh a, [rOBP0]
    ld hl, sp+$08
    ld hl, sp+$70
    ldh a, [$f0]
    jr nc, @-$16

    cp b
    add sp, -$08
    jr nc, @-$0e

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    ld bc, $0301
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    dec d
    rra
    inc d
    rra
    dec a
    ccf
    ld e, a
    ld [hl], h
    ccf
    jr c, jr_022_6856

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]

jr_022_6856:
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld d, h
    db $fc
    inc d
    db $fc
    ret c

    ld hl, sp-$10
    ld d, b
    ld hl, sp+$18
    db $f4
    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca

jr_022_6876:
    ld e, $1f

jr_022_6878:
    inc e
    rra
    ld c, $0f
    ld [de], a
    rra
    db $10
    rra
    ld c, $0f
    rlca
    ld b, $07
    dec b
    dec bc
    rrca
    dec bc
    rrca
    rrca
    rrca
    rrca
    dec bc
    rlca
    rlca
    ret nz

    ret nz

    ldh [$e0], a
    jr nz, jr_022_6876

    jr nz, jr_022_6878

    ld h, b
    ldh [rNR41], a
    ldh [$50], a
    ldh a, [rSVBK]
    ldh a, [$60]
    and b
    sub b
    ldh a, [$e8]
    ld a, b
    ld hl, sp-$08
    db $10
    ldh a, [$f8]
    add sp, -$08
    ret c

    ld [hl], b
    ld [hl], b
    rrca
    rrca
    rra
    rra
    add hl, de
    rra
    db $10
    rra
    dec d
    rra
    jr nc, @+$41

    ld d, l
    ld a, a
    ld b, a
    ld a, a
    or d
    db $fd
    ld a, h
    ld [hl], a
    ld c, a
    ld c, e
    rst $08
    adc $c9
    rst $08
    ld d, $1f
    rrca
    add hl, bc
    rlca
    rlca
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld h, b
    ldh [$50], a
    ldh a, [rNR10]
    ldh a, [$60]
    ldh [$78], a
    ret c

    db $f4
    sbc h
    db $fc
    ld a, h
    and b
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    nop
    nop
    rrca
    rrca
    rra
    rra
    rla
    rra
    ld de, $181f
    rra
    ld de, $291f
    ccf

jr_022_68fe:
    jr c, jr_022_693f

jr_022_6900:
    add hl, de
    rla
    add hl, bc
    rrca
    rlca
    ld b, $05
    rlca
    dec bc
    rrca
    rra
    rra
    ld e, $16
    ld c, $0e
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a

jr_022_691a:
    ret nz

    ret nz

    jr nz, jr_022_68fe

    jr nz, jr_022_6900

    ret nz

    ret nz

    ldh a, [$30]
    add sp, -$48
    add sp, -$08
    jr nc, jr_022_691a

    ld [hl], b
    ret nc

    ldh a, [$b0]
    ldh [$e0], a
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld d, l
    ld a, a
    ld d, b

jr_022_693f:
    ld a, a
    rst $30
    rst $38
    ld e, a
    ld [hl], h
    ccf
    jr c, jr_022_6956

    inc c
    dec bc
    rrca
    rla
    rra
    rrca
    add hl, bc
    rlca
    rlca
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

jr_022_6956:
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld d, b
    ldh a, [$50]
    ldh a, [$60]
    ldh [$f0], a
    ld d, b
    ld hl, sp+$18
    db $f4
    ld a, h
    xor [hl]
    xor $e6
    and $c0
    ret nz

    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld b, $07
    dec b
    rlca
    inc b
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    and b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rNR10], a
    ldh a, [$30]
    ldh a, [rNR41]
    ldh [$a0], a
    ldh [$f0], a
    ldh a, [rNR41]
    ldh [$f0], a
    ret nc

    ldh a, [$f0]
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    ld b, $07
    ld d, $1f
    inc de
    rra
    dec l
    ld a, $3c
    dec sp
    ld h, a
    ld h, [hl]
    ld h, l
    ld h, a
    ld a, [bc]
    rrca
    rlca
    dec b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    nop
    ret nz

    add b
    ret nz

    sub b
    ldh a, [$90]
    ldh a, [rNR41]
    ldh [rSVBK], a
    ldh a, [$f8]
    ld a, b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$0c0f], sp
    rrca
    inc b
    rlca
    dec b
    rlca
    ld bc, $0703
    rlca
    rrca
    rrca
    ld c, $0a
    ld b, $06
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [$a0], a
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    ldh [rNR41], a
    ret nc

    ldh a, [rNR41]
    ldh [$60], a
    ldh [$e0], a
    and b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld d, $1f
    inc d
    rra
    ccf
    ccf
    cpl
    jr c, jr_022_6a4c

    inc b
    rlca
    rlca
    dec bc
    rrca
    rlca
    dec b

jr_022_6a4c:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    sub b
    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$e0], a
    ld h, b
    add sp, $78
    sbc h
    call c, $cccc
    ret nz

    ret nz

    nop
    nop
    nop
    nop

    db $82, $6a, $85, $6a

    adc e
    ld l, d
    adc [hl]
    ld l, d
    sbc c
    ld l, d

    db $a0, $6a

    xor b
    ld l, d

    db $bc, $6a

    ret z

    ld l, d
    nop
    rst $38
    db $fd

    db $00, $1e, $01, $1e, $ff, $00

    ld [bc], a
    rst $38
    db $fd
    ld [bc], a
    inc c
    inc bc
    inc c
    inc b
    jr jr_022_6a97

    inc c
    dec b

jr_022_6a97:
    inc c
    db $fd
    ld [bc], a
    jr @+$05

    jr @+$04

    jr @-$01

    db $00, $0a, $06, $1e, $00, $0a, $fe, $01

    nop
    ld a, [bc]
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    inc bc
    rlca
    ld a, [bc]
    nop
    inc bc
    ld [$000a], sp
    ld a, [bc]
    cp $01

    db $00, $0a, $09, $08, $00, $08, $09, $08, $00, $0a, $fe, $01

    ld [bc], a
    ld [de], a
    inc bc
    ld [de], a
    ld [bc], a
    ld e, $05
    ld [de], a
    db $fd

    db $63, $04, $e1, $6a, $f0, $6b, $d9, $6a, $78, $3a, $ff, $6b, $80, $12, $00, $00

    ldh a, [rOCPS]
    ldh a, [rOCPS]
    ldh a, [rOCPS]
    ldh a, [rOCPS]
    ldh a, [rOCPS]
    ldh a, [rOCPS]
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    inc c
    rra
    inc e
    inc sp
    add hl, sp
    ld h, $23
    ld a, h
    ld b, e
    ld a, h
    ld h, c
    ld e, [hl]
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld h, a
    ld a, a
    ccf
    ld a, d
    rra
    ld [hl-], a
    rra
    db $10
    rrca
    jr @+$09

    rrca
    nop
    nop
    ret nz

    ldh [$30], a
    ld hl, sp+$38
    call z, $649c
    call nz, $c23e
    ld a, $86
    ld a, d
    ld c, $f2
    ld c, $f2
    and $fe
    db $fc
    ld e, [hl]
    ld hl, sp+$4c
    ld hl, sp+$08
    ldh a, [rNR23]
    ldh [$f0], a
    nop
    nop
    inc bc
    rlca
    inc c
    rra
    inc e
    inc sp
    add hl, sp
    ld h, $23
    ld a, h
    ld b, e
    ld a, h
    ld h, c
    ld e, [hl]
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld h, a
    ld a, a
    ccf
    ld a, d
    rra
    ld [hl-], a
    rra
    db $10
    rrca
    jr @+$09

    rrca
    nop
    nop
    ret nz

    ldh [$30], a
    ld hl, sp+$38
    call z, $649c
    call nz, $c23e
    ld a, $86
    ld a, d
    ld c, $f2
    ld c, $f2
    and $fe
    db $fc
    ld e, [hl]
    ld hl, sp+$4c
    ld hl, sp+$08
    ldh a, [rNR23]
    ldh [$f0], a
    nop
    nop
    inc bc
    rlca
    inc c
    rra
    inc e
    inc sp
    add hl, sp
    ld h, $23
    ld a, h
    ld b, e
    ld a, h
    ld h, c
    ld e, [hl]
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld h, a
    ld a, a
    ccf
    ld a, d
    rra
    ld [hl-], a
    rra
    db $10
    rrca
    jr @+$09

    rrca
    nop
    nop
    ret nz

    ldh [$30], a
    ld hl, sp+$38
    call z, $649c
    call nz, $c23e
    ld a, $86
    ld a, d
    ld c, $f2
    ld c, $f2
    and $fe
    db $fc
    ld e, [hl]
    ld hl, sp+$4c
    ld hl, sp+$08
    ldh a, [rNR23]
    ldh [$f0], a
    nop
    nop
    inc bc
    rlca
    inc c
    rra
    inc e
    inc sp
    add hl, sp
    ld h, $23
    ld a, h
    ld b, e
    ld a, h
    ld h, c
    ld e, [hl]
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld h, a
    ld a, a
    ccf
    ld a, d
    rra
    ld [hl-], a
    rra
    db $10
    rrca
    jr @+$09

    rrca
    nop
    nop
    ret nz

    ldh [$30], a
    ld hl, sp+$38
    call z, $649c
    call nz, $c23e
    ld a, $86
    ld a, d
    ld c, $f2
    ld c, $f2
    and $fe
    db $fc
    ld e, [hl]
    ld hl, sp+$4c
    ld hl, sp+$08
    ldh a, [rNR23]
    ldh [$f0], a

    db $02, $6c, $05, $6c

    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, h
    ld [bc], a
    ld l, h
    nop
    rst $38
    db $fd
    nop
    ld e, $00
    ld e, $ff
    nop
    ld bc, $fdff
    nop
    ld e, $01
    ld e, $fd
    ld [bc], a
    jr @+$05

    jr jr_022_6c1a

    jr @-$01

jr_022_6c1a:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    ld h, e
    inc b
    ld b, d
    ld l, h
    ld d, b
    ld l, a
    ld a, [hl-]
    ld l, h
    ld a, b
    ld a, [hl-]
    rst $38
    ld l, e
    add b
    ld [de], a
    nop
    nop
    ld d, b
    ld l, h
    ld d, b
    ld l, l
    ld d, b
    ld l, [hl]
    ld d, b
    ld l, h
    ld d, b
    ld l, h
    ld d, b
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    jr jr_022_6c7a

    db $10
    rra
    db $10
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, e
    ld a, h
    rrca
    ld c, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_022_6c7a:
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    or b
    ld [hl], b
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    jr jr_022_6cba

    db $10
    rra
    db $10
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, e
    ld a, h
    rrca
    ld c, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_022_6cba:
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    or b
    ld [hl], b
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    jr jr_022_6cfa

    db $10
    rra
    db $10
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, e
    ld a, h
    rrca
    ld c, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_022_6cfa:
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    or b
    ld [hl], b
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    jr jr_022_6d3a

    db $10
    rra
    db $10
    ld a, a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld a, e
    ld a, h
    rrca
    ld c, $03
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

jr_022_6d3a:
    ret nz

    ld b, b
    ldh a, [rSVBK]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    or b
    ld [hl], b
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    rlca
    rlca
    rrca
    inc c
    rrca
    ld [$383f], sp
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    inc a
    dec b
    ld b, $07
    ld b, $02
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ld hl, sp+$38
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp+$78
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    inc c
    rrca
    ld [$383f], sp
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    inc a
    dec b
    ld b, $07
    ld b, $02
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ld hl, sp+$38
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp+$78
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    inc c
    rrca
    ld [$383f], sp
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    inc a
    dec b
    ld b, $07
    ld b, $02
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ld hl, sp+$38
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp+$78
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rrca
    inc c
    rrca
    ld [$383f], sp
    ld a, a
    ld h, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    inc a
    dec b
    ld b, $07
    ld b, $02
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ld hl, sp+$38
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp+$78
    ld b, b
    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
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
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    rrca
    ld c, $1f
    jr jr_022_6e80

    db $10
    rra
    db $10
    rra
    jr jr_022_6e74

    ld c, $07
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_022_6e74:
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    cp $0e

jr_022_6e80:
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    sbc $3e
    ldh a, [rSVBK]
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    rrca
    ld c, $1f
    jr jr_022_6ec0

    db $10
    rra
    db $10
    rra
    jr jr_022_6eb4

    ld c, $07
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_022_6eb4:
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    cp $0e

jr_022_6ec0:
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    sbc $3e
    ldh a, [rSVBK]
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    rrca
    ld c, $1f
    jr jr_022_6f00

    db $10
    rra
    db $10
    rra
    jr jr_022_6ef4

    ld c, $07
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_022_6ef4:
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    cp $0e

jr_022_6f00:
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    sbc $3e
    ldh a, [rSVBK]
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    rrca
    ld c, $1f
    jr jr_022_6f40

    db $10
    rra
    db $10
    rra
    jr jr_022_6f34

    ld c, $07
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop

jr_022_6f34:
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    cp $0e

jr_022_6f40:
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    sbc $3e
    ldh a, [rSVBK]
    ret nz

    ret nz

    add b
    add b
    ld h, d
    ld l, a
    ld h, l
    ld l, a
    ld h, d
    ld l, a
    ld h, d
    ld l, a
    ld h, d
    ld l, a
    ld h, d
    ld l, a
    ld h, d
    ld l, a
    ld h, d
    ld l, a
    ld h, d
    ld l, a
    ld [bc], a
    rst $38
    db $fd
    nop
    ld a, [bc]
    ld bc, $020a
    ld a, [bc]
    ld bc, $ff0a
    nop
    ld bc, $fdff
    nop
    ld e, $01
    ld e, $fd
    ld [bc], a
    jr @+$05

    jr jr_022_6f7e

    jr @-$01

jr_022_6f7e:
    nop
    ld a, [bc]
    ld b, $1e
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    cp $01
    nop
    ld a, [bc]
    add hl, bc
    ld [$0800], sp
    add hl, bc
    ld [$0a00], sp
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_022_7fdf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
