INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $076", ROMX[$4000], BANK[$76]

    ld b, $40
    adc e
    ld d, [hl]

    db $b8, $5f

    db $10
    ld b, b
    ld d, b
    ld b, l
    jr nc, jr_076_4056

    ret nc

    ld c, [hl]
    ldh [rHDMA1], a
    ld l, a
    rst $38
    rst $38
    rst $38
    nop
    cp $ea
    rst $38
    nop
    rst $38
    ld_long $ffa7, a
    rst $38
    add b
    rst $38
    ld [$e1d0], a
    ld a, a
    cp $e0
    ccf
    ld d, d
    cp $e0
    rra
    cp $e0
    ret nc

    pop hl
    ld bc, $e0fe
    inc bc
    cp $e0
    add hl, bc
    rlca
    cp $e0
    or b
    ldh [rSB], a
    cp $e9
    or d
    db $eb
    or b
    ldh [$fe], a
    pop af
    rst $38

Jump_076_4045:
    inc bc
    db $fd
    rlca

jr_076_4048:
    ei
    ld c, $f3
    ld e, $e3
    rst $30
    ccf
    db $e4
    ccf
    add d
    pop hl
    db $fc
    db $fc
    di

jr_076_4056:
    ld e, a
    ld a, a
    ld hl, sp+$0f
    ld hl, sp-$51
    ld hl, sp-$01
    rlca
    ld [hl], d
    and $ff
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_076_4048

    jr nz, @-$1e

    ld a, $72
    db $eb
    add b
    add b
    rrca
    nop
    rrca
    adc b
    ld [c], a
    add b
    pop hl
    nop
    ld a, b
    pop hl
    ldh a, [$e1]
    ld l, b
    pop hl
    ld h, b
    pop hl
    ld e, b
    pop hl
    ld [hl], d
    db $eb
    ld h, h
    ldh [rNR12], a
    push hl
    ld a, a
    ld bc, $07fe
    ld sp, hl
    rrca
    pop af
    rra
    ld [de], a
    push hl
    rst $38
    db $fc
    db $fc
    ei
    xor a
    db $fc
    rlca
    db $fc
    ld d, a
    ldh a, [rSC]
    jp hl


    adc h
    pop hl
    ld [c], a
    ret z

    jr z, @-$1c

    ret


    ld a, a
    rst $10
    ld a, a
    rst $38
    rst $38
    ld a, c
    rst $38
    ld a, [c]
    rst $38
    cp d
    rst $38
    ld a, d
    rst $18
    rst $38
    ld [hl-], a
    rst $38
    ld de, $bf8c
    ret nz

    rst $38
    adc h
    rst $38
    rst $38
    ld d, d
    rst $38
    jp c, $faff

    rst $38
    adc d
    rst $38
    rst $38
    inc b
    sbc [hl]
    cp $53
    rst $38
    reti


    rst $38
    rst $38
    db $f4
    ld a, a
    ld [$f4ff], a
    rst $38
    ldh [$7f], a
    ei
    ldh a, [$5f]
    or d
    pop bc
    ld bc, $8100
    add b
    ld b, e
    ld a, a
    ret nz

    ld b, e
    ret nz

    ld b, a
    ret nz

    add a
    add b
    sub d
    pop bc
    ldh [$c0], a
    ret


    ldh [$e3], a
    ret nz

    ret z

    ld [hl], d
    ret


    or [hl]
    ret nz

    pop hl
    ccf
    and $1d
    ccf
    adc h
    jp hl


    db $fc
    rst $38
    inc bc
    sub c
    ldh [$8c], a
    rst $20
    db $ec
    pop bc
    rst $28
    sub b
    ldh a, [$50]
    ldh a, [rIE]
    ldh [rSVBK], a
    ld hl, sp-$18
    ei
    db $fc
    db $f4
    ld e, $e8
    nop
    rst $38
    rrca
    rst $38
    ld de, $ffff
    dec h
    rst $38
    and a
    rst $38
    ld h, e
    rst $38
    jr nc, @+$01

    rst $18
    ld a, b
    rst $08
    cp $e9
    ccf
    db $f4
    rra
    rst $38
    rst $38
    dec b
    rst $38
    adc a
    rst $38
    cp $df
    ld hl, sp-$01
    rst $18
    ld [hl], b
    rst $38
    inc hl
    cp $07
    db $fc
    rst $38
    rst $38
    ld hl, sp+$2f
    rst $38
    daa
    rst $38
    ld hl, $61ff
    rst $38
    cp a
    pop hl
    sbc [hl]
    ld a, [c]
    ld c, [hl]
    ld a, [$fca4]
    pop af
    adc a
    xor [hl]
    ret nz

    ret nz

    ret


    ld [bc], a
    pop bc

jr_076_4156:
    ret nz

    add b
    ldh [$80], a
    rst $38
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    add b
    cp $80
    cp $22
    pop bc
    db $fd
    ld bc, $01f9
    pop af
    ld bc, $6fe1
    ld bc, $01c1
    add c
    inc d
    jp nz, Jump_000_017f

    ldh a, [$a8]
    ld a, h
    db $ec
    ret nz

    adc h
    db $e4
    db $10
    rst $38
    jr @-$0f

    ld a, $ec
    pop bc

jr_076_4184:
    cp $8c
    jp hl


    db $fc

Call_076_4188:
    ld h, h
    db $fc
    ld b, h
    db $fd
    inc h
    ld sp, hl
    rst $38
    jr z, jr_076_4184

    jr nc, jr_076_4156

    ld b, b
    rst $20
    ldh [$57], a
    rst $38
    ldh a, [rIE]
    ld [hl+], a
    rst $38
    dec h
    ld a, a
    ld [hl+], a
    ld a, a
    rst $38
    ld hl, $123f
    ccf
    rrca
    db $10
    rra
    jr nz, @+$01

    ccf
    ld a, [c]
    sbc a
    pop hl
    ld a, a
    ldh [rIE], a
    rst $38
    rst $30
    ld e, a
    rst $38
    ldh [rBCPS], a
    and b
    add b
    ld a, a
    ret nz

    daa
    rst $38
    rst $38
    ret z

    rst $38
    inc d
    rst $38
    ld [$c0ff], sp
    rst $30
    rst $38
    rst $38
    ccf
    ld d, [hl]
    and c
    ld [$08f8], sp
    ld hl, sp-$0b
    add hl, bc
    cp $e0
    dec bc
    cp $e0
    rst $38
    ld hl, sp-$01
    inc b
    cp $e6
    and b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld e, a
    ld hl, sp+$00
    db $fc
    nop
    cp $34
    and b
    cp $f8
    ldh [$d5], a
    ld hl, sp-$10
    ldh [$e0], a
    add sp, -$20
    add b
    ldh a, [$a2]
    rlca
    ld bc, $07ff
    inc bc
    rrca
    ld c, $1f
    dec d
    rra
    ld [de], a
    rst $38
    rra
    ld de, $7fc9
    add h
    rst $38
    ld [bc], a
    rst $38
    rst $38
    add c
    rst $38
    ret nz

    ld a, a
    ldh a, [$3f]
    ldh a, [$9f]
    db $fd
    rst $38
    inc c
    ret nz

    ld sp, hl
    rst $38
    ld l, l
    rst $38
    sub d
    rst $38
    add hl, sp
    jr z, jr_076_4274

    ldh [rSCX], a
    and c
    rst $08
    ld hl, sp+$2f
    cp $e0
    rst $10
    ret nz

    rst $38
    db $f4
    rra
    ld a, [c]
    rra
    cp $f3
    cp $2f
    rst $28
    ccf
    jr nc, jr_076_4279

jr_076_423a:
    jr nz, jr_076_423a

    ldh [rNR10], a
    rra
    ld [$0fff], sp
    inc b
    rlca
    ld [bc], a
    inc bc
    ccf
    ldh [$bf], a
    rst $38
    ldh [$5f], a
    pop af
    cpl
    ld a, [$fc1f]
    rrca
    or $5d
    and b
    rra
    ldh a, [$c2]
    add b
    ld [hl], d
    adc a
    adc h
    inc bc
    db $d3
    ld [bc], a
    ld bc, $a416
    and e
    ldh [$03], a
    cp $82
    pop bc
    rst $38
    adc a
    add c
    cp $c3
    cp h
    and d
    add b
    ld [hl], b
    ldh [$c4], a
    ret nz

jr_076_4274:
    ld [hl], b
    ld l, a
    ret nz

    ld h, b
    ret nz

jr_076_4279:
    ld b, b
    cp $e0
    rst $38
    add b
    cp $e3
    ld e, a
    cp a
    add b
    adc a

jr_076_4284:
    add b
    add e
    and l
    add b
    ld bc, $e4ff
    rst $18
    inc bc
    ld bc, $010f
    ccf
    add $80
    rra
    ld [de], a
    cp a
    sbc a
    ld de, $08cf
    rst $20
    rlca
    jr nc, jr_076_4284

    ret nc

    rst $18
    rst $38
    ld d, b
    rst $38
    sub b
    ld a, a
    ld a, l
    ldh [$7f], a
    ld b, b
    ld [hl], e
    ld a, a
    ld b, b
    jp nz, $52e0

    add e
    inc b
    rst $38
    jr c, jr_076_42e0

    ret nz

    rst $38
    ld d, b
    rst $18
    ld d, b
    pop af
    rra
    pop af
    rra
    ld sp, hl
    sbc a
    rra
    ld a, [c]
    ld a, $fc
    inc a
    db $e3
    add b
    rst $18
    add b
    ld bc, $01f1
    ldh a, [$cc]
    cp b
    ret nz

    ld d, b
    adc c
    ret nz

    ld a, a
    db $e3
    ccf
    ld e, e
    db $fc
    inc e
    ldh [$c7], a
    add b
    add b
    db $10
    add e
    inc bc
    cp b

jr_076_42e0:
    add b
    dec d
    ccf
    or $60
    ccf
    or b
    add b
    inc bc
    ld d, b
    sub b
    add sp, -$13
    ret nc

    push hl
    call c, $e5c8
    ret c

    add sp, $03
    inc b
    rlca
    cp $e1
    inc bc
    inc bc
    ld a, e
    ld [bc], a
    inc bc
    and d
    ld h, b
    ldh a, [rIF]
    ld hl, sp+$07
    db $fd
    and b
    db $fc
    rst $20
    ld h, c
    db $e3
    ld h, c
    rst $18
    ret nc

    rst $38
    ld h, b
    rst $18
    rst $18
    rst $18
    ld d, c
    rst $18
    ld [hl], b
    rst $18
    rst $38
    db $fc
    pop hl
    rst $38
    di
    rst $38
    db $10
    rst $38
    ld a, b
    add a
    db $fc
    inc bc
    cp $03
    db $e3
    cp $ff
    add c
    add b
    dec de
    ret nz

    add b
    ld_long $ffff, a
    rrca
    rst $38
    nop
    adc a
    nop
    rst $00
    nop
    rst $20

jr_076_4337:
    nop
    inc sp
    di
    nop
    dec bc
    sbc b
    ld h, b
    ldh a, [$e1]
    ld c, $00
    inc e
    nop
    sub l
    jr jr_076_4337

    ldh [$2f], a
    ld [hl+], a
    add c
    rst $38
    add b
    db $ec
    ld [hl-], a
    ld l, l
    cp $fe
    ld [hl-], a
    ld h, e
    ld b, $06
    ld l, a
    ld l, c
    rst $38
    sbc c
    rst $38
    rst $30
    adc c
    ld a, a
    ld c, c
    ld [hl+], a
    ld h, e
    ld bc, $0601
    rlca
    rra
    add hl, bc
    rrca
    ld de, $211f
    xor h
    and d
    cp $40
    ld [bc], a
    add h
    cp b
    ld a, a
    ldh [$f2], a
    ld b, a
    add d
    and b
    ccf
    ldh [$03], a
    ld [hl-], a
    ldh [$08], a
    cp $66
    and b
    inc de
    rra
    inc h
    ccf
    dec hl
    ccf
    ccf
    rst $38
    inc a
    ld a, l
    rst $10
    cp $83
    cp $ab
    cp $ea
    dec de
    ld h, b
    add $06
    add c
    add $da
    db $e3
    rra
    ldh a, [$9f]
    ei
    ldh a, [rVBK]
    ld c, a
    ld h, c
    ld a, b
    ccf
    daa
    ccf
    add hl, sp
    cp a
    ld a, a
    ld d, c
    rst $38
    xor h
    rst $38
    sub h
    ld sp, hl
    ld h, b
    and c
    rst $38
    ld a, a
    ld b, c
    daa
    ccf
    ld c, e
    ld a, a
    ld d, a
    ld a, [hl]
    ei
    rst $38
    ld sp, hl
    adc $65
    add a
    rst $38
    cp $ff
    rst $38
    rst $18
    ld c, a
    rst $38
    adc c
    rst $38
    ld b, b
    dec l
    and b
    cp $ff
    rst $38
    adc h
    ccf
    ldh [$9f], a
    ldh a, [$5f]
    ldh a, [rIE]
    ld e, a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    add sp, -$33
    ld h, b
    ld h, h
    inc d
    ld h, d
    cp $2c
    and d
    ret nz

    nop
    db $ec
    inc c
    rst $38
    inc de
    ld a, a
    rst $18
    ld a, c
    rst $38
    db $dd
    rst $38
    cp l
    ld b, h
    ldh [$88], a
    rst $38
    ld a, a

jr_076_43f7:
    sub d
    ld a, a
    ld d, e
    ccf
    ld sp, $29ff
    ld d, c
    and b
    ld e, a
    ld a, l
    rst $38
    ld b, l
    rst $38
    add d
    cp $e0
    rst $00
    ld b, d
    ld b, b
    rst $38
    jr c, @+$01

    ld [hl], h
    cp $7a
    cp $32
    cp $ff
    ld [hl+], a
    cp $92
    db $fc
    sub h
    ld hl, sp+$18
    ccf
    rst $38
    add hl, sp
    rrca
    add hl, bc
    add a
    inc b
    add e
    ld [bc], a
    pop bc
    sbc $62
    add b
    pop hl
    ld bc, $00e0
    cp $65
    sbc a
    ldh a, [$bf]
    rra
    ld hl, sp+$0f
    cp $89
    rst $38
    ld [hl], d
    add l
    rst $38
    rst $38
    ld hl, sp-$71
    ld hl, sp-$01
    ld [hl], e
    db $fc
    rlca
    rst $38
    rst $38
    ld b, h
    rst $38
    inc h
    cp $28
    cp $30
    db $fc
    ld a, a
    ld h, b
    db $fc
    ret nz

    ld hl, sp-$40
    cp b
    ldh [$f4], a
    ld h, b
    db $fd
    ld [hl+], a
    db $fc
    db $e4
    inc de
    rst $38
    inc c
    rst $38
    ld [$ff8f], sp
    adc b
    sbc a
    sbc h
    rst $20
    rst $38
    add h
    rst $38
    jp nz, $ffff

    pop bc
    ld a, a
    add sp, $3f
    ldh a, [$1f]
    rst $38
    db $fd
    ld l, h
    jr z, jr_076_43f7

    ld bc, $83fe
    ld a, l
    rst $38
    ld a, [hl+]
    ei
    rst $38
    call nc, $8068
    ldh a, [$30]
    ldh a, [$60]
    ldh [rIE], a
    ldh [$50], a
    ldh a, [$c8]
    ld hl, sp+$2e
    cp $31
    set 7, a
    add hl, de
    ld l, c
    ldh [$61], a
    ld d, a
    and c
    ld c, a
    and b
    daa
    ccf
    ld a, a
    ccf
    jr c, jr_076_44df

    jr nz, jr_076_451f

    rst $38
    ld [$8240], a
    cp $33
    add b
    rst $38
    cp $7f
    rst $38
    ld bc, $f050
    ld a, a
    inc a
    db $fc
    ld [hl+], a

jr_076_44b4:
    cp $19
    rst $38
    dec d
    call nc, $ffe0
    ld [de], a
    cp $fc
    db $fc
    rst $38
    ld b, $7f
    ld bc, $b6f8
    ld hl, $413a
    ld a, $41
    ldh a, [$3f]
    di
    rst $38
    sbc a
    rra
    inc e
    cp a
    jr nz, @+$01

    jr nz, jr_076_44b4

    ret nz

    db $10
    and b
    ret z

    pop hl
    db $eb
    db $fc
    ld a, a
    dec bc

jr_076_44df:
    ld h, b
    ld [$60b0], sp
    jr c, @+$01

    ld c, b
    ld d, d
    ret z

    pop hl
    inc de
    call nc, $a2a0
    ld h, b
    ld [$60e9], sp
    inc b
    ld h, e
    add c
    pop hl
    cp a
    cp $e0

jr_076_44f8:
    jp nc, $e0e2

    adc h
    add $80
    ld d, b
    ldh a, [rNR10]
    ld a, a
    pop af
    db $10
    di
    db $10
    rst $20
    jr nz, jr_076_44f8

    xor [hl]
    pop hl
    sbc [hl]
    xor d
    ldh [$c0], a
    nop
    di
    inc bc
    jr jr_076_4554

    cp $e0
    rst $38
    sbc $8b
    and b
    rst $38
    rst $38
    rst $30
    ld b, h
    sbc a

jr_076_451f:
    ld h, b
    rst $18
    ld [hl], c
    ld a, [$80b5]
    rst $18
    or c
    add b
    rst $38
    rst $38
    db $fc
    inc b
    db $fc
    cp a
    ld a, h
    add h
    db $fc
    ld [bc], a
    cp $02
    ld h, h
    ldh [rDIV], a
    ld [hl], h
    ld [hl], b
    and b
    add b
    add b
    ld h, b
    ldh [$ea], a
    db $10
    ld hl, sp+$78
    ldh [$e9], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_076_454e:
    nop
    nop
    ld e, a
    rst $38
    rst $38
    rst $38

jr_076_4554:
    nop
    cp $fe
    ldh [$fc], a
    cp $e0
    xor a
    ld hl, sp+$00
    add d
    nop
    ldh a, [$e1]
    ld a, a
    cp $e0
    ccf
    ld e, [hl]
    cp $e0
    rra
    nop
    ld [hl], c
    jr nc, jr_076_454e

    ldh [$80], a
    cp $e1
    ld a, l
    cp a
    cp $e0
    sbc a
    add b
    pop bc
    add b
    nop
    rst $38
    db $ec
    rst $18
    jp nz, $e200

    nop
    ldh a, [$fe]
    ldh [$e0], a
    nop
    rst $18
    pop hl
    nop
    rst $00
    nop
    rst $08
    ldh a, [$e6]
    rst $20
    rlca
    rst $38
    rst $28
    rrca
    rst $00
    rlca
    rst $08
    nop
    ld [hl], e
    jr nc, @+$01

    ld e, a
    ld e, b
    ld c, a
    ld c, b
    adc a
    adc b
    sub a
    sub b
    rst $18
    add a
    add b
    db $e3
    nop
    di
    ret nc

    db $ed
    ld bc, $ef43
    nop
    ld b, a
    nop
    rrca
    cp $e0
    rlca
    nop
    add a
    rst $38
    add b
    jp $f3c0


    ld b, b
    jp $c780


    db $eb
    add b
    adc a
    cp $e0
    add a
    cp $e0
    db $e3
    add b
    di
    sub a
    add b
    rst $38
    nop
    ld [hl], b
    jp hl


    ld b, c
    ld a, [c]
    ldh [$50], a
    db $e3
    rst $38
    ld a, a
    rrca
    rst $30
    dec a
    rst $08
    ld a, b
    adc a
    ld a, [$e5e0]
    rst $38
    rst $38
    ldh [$df], a
    ld a, b
    rst $20
    inc a
    db $e3
    cp [hl]
    cp $d0
    and $01
    ld a, $03
    inc e
    rlca
    ld c, b
    rrca
    cp $d0
    db $e3
    rst $38
    ld a, a
    adc a
    ld_long a, $ff0f
    jr nc, @+$01

    rst $38
    ret nz

    rst $38
    rst $38
    ld bc, $0eff
    ld a, a
    rst $38
    ld c, $ff
    ret nz

    cp a
    ldh [rIE], a
    ldh a, [$1f]
    rst $38
    ld hl, sp+$09
    ld hl, sp-$01
    ld b, b
    rst $38
    ld b, b
    cp $b1
    add b
    nop
    add sp, $12
    ldh [$f0], a
    ldh [$80], a
    db $fc
    cp $e0
    ld hl, sp-$01
    add b
    add d
    add b
    ld b, e
    ld bc, HeaderCartridgeType
    ld c, $ff
    inc bc
    ld c, $03
    rlca
    inc bc
    add a
    rlca
    rst $28
    rst $38
    dec c
    rst $38
    dec bc
    rrca
    rst $38
    inc a
    rst $38
    ld e, a
    rst $18
    rst $38
    cp a
    ld a, [$d0ff]
    add sp, -$40
    ret nz

    rst $38
    rst $38
    db $d3
    pop hl
    rst $38
    ld a, c
    rst $38
    db $f4
    rst $38
    ld a, [$bfff]
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    db $fd
    sub a
    ldh a, [$c2]
    add b
    ldh a, [$80]
    ldh [$80], a
    pop hl
    rst $38
    add b
    rst $00
    ld b, b
    rst $28
    and b
    ld c, c
    rrca
    ld d, d
    rst $38
    rra
    ld [hl-], a
    ccf
    daa
    ccf
    dec h
    ccf
    xor a
    rst $38
    ld a, $ff
    ccf
    rst $38
    dec sp
    rra
    rst $38
    ld a, a
    ld e, a
    ld hl, sp-$01
    and b
    rst $38
    add a
    cp c
    ldh [$08], a
    add h
    ldh [rIE], a
    ld a, b
    rst $20
    db $fc
    di
    ld a, [hl]
    ei
    ld e, $ff
    rst $30
    xor $ff
    inc d
    cp $e0
    ld e, $ff
    dec a
    jp nz, $80f3

    ld [c], a
    jp nz, $c0e0

    db $e4
    add b
    rst $08
    add b
    rst $38
    ld a, l
    add hl, bc
    ret c

    ldh [$09], a
    rst $38
    dec b
    rst $38
    inc bc
    ld h, b
    pop bc
    rst $38
    add e
    ld bc, $9cff
    rst $38
    adc b
    rst $38

jr_076_46be:
    jr z, jr_076_46be

    ld a, e
    ldh [$1f], a
    cp $87
    rst $38
    jp $f03f


    cp a
    rst $38

jr_076_46cb:
    ld [hl], e
    rst $38
    ld [hl+], a
    rst $38
    add hl, hl
    ld a, e
    ldh [$f1], a
    rst $38
    cp $c2
    db $fc
    add h
    cp $1e
    rst $38
    jr nz, jr_076_46cb

    cp $e2
    ld b, b
    cp a
    add b
    ret nc

    call nz, $ff37
    ld [de], a
    xor $fe
    ldh [rNR10], a
    rst $38
    ld a, [bc]
    ld h, d
    ldh [rTAC], a
    add d
    inc bc
    cp $7c
    ldh [$3f], a
    rst $38
    ld c, $f8
    rrca
    db $fc
    rlca
    rst $38
    cp $83

Jump_076_46ff:
    rst $38
    pop hl
    ccf
    ld hl, sp-$01
    push af
    cp $fe
    ldh [$63], a
    ccf
    rst $00
    ld a, h
    call nz, $cc7c
    rst $08
    ld hl, sp-$48
    or $7c
    ld [de], a
    jp $c710


    jp nz, $b703

    ld [c], a
    inc bc
    ld a, [c]
    cp $e0
    pop hl
    ld bc, $c320
    rrca
    rst $38
    ld hl, sp+$07
    rst $38
    dec a
    rst $38
    ld a, a
    add $ff
    db $fd
    add e
    nop
    ld [c], a
    ldh [$fb], a
    ccf
    push de
    rst $38
    di
    cp a
    rst $38
    ld sp, hl
    rra
    db $fc
    rrca
    ld hl, sp-$02
    ldh [rIE], a
    rst $38
    ld e, a
    db $e3
    ldh [rNR22], a
    ldh a, [$9f]
    ldh a, [rVBK]
    rst $38
    ld hl, sp-$51
    ld hl, sp-$29
    ldh a, [$e3]
    ldh [$f3], a
    rst $38
    add b
    call nz, $e407
    rlca
    db $f4
    rlca
    or $fb
    rlca
    db $e3

jr_076_4760:
    cp [hl]
    ldh [$c7], a
    ld bc, $00cf
    rra
    cp $2f
    ldh [$3e], a
    rst $38
    ld a, h
    rst $00
    ld a, [hl]
    jp $fdff


    add c
    ld a, d
    pop bc
    jp z, Jump_000_35fe

    rst $38
    ld c, e
    rst $38
    rst $38
    and e
    cp $41
    rst $38
    ld hl, $f0ff
    rst $18
    ei
    rst $38
    sbc a
    ldh a, [$a3]
    sbc a
    sub b
    rst $28
    ld a, b
    rst $28
    rst $18
    jr c, jr_076_4760

    db $fc
    sbc e
    cp $00
    call nz, Call_000_3f01
    rst $38
    ld bc, $023f
    rra
    ld [bc], a
    ld c, a
    rrca
    rst $38
    pop af
    ret c

    call nz, $eac0
    and d
    ld [hl], $c0
    ld bc, $82ff
    rst $38
    db $dd
    ld h, b
    ld a, [c]
    ld [c], a
    ld hl, $c1ff
    ld h, $c0
    ld [bc], a
    db $fd
    pop de
    inc b
    ld b, b
    call nz, $a730
    ret nz

    and c
    ld bc, $e2c0
    ld bc, $5f1f
    ld [bc], a
    ld b, e
    ld [bc], a
    rst $38
    ldh a, [$c0]
    ret nz

    inc b
    ld d, h
    ret nz

    xor $c0
    db $e3
    ld [bc], a
    rst $38
    jr jr_076_484f

    ret nz

    inc b
    rst $38
    inc de
    di
    rst $38
    rst $28
    db $f4
    ldh [$c0], a
    ldh [$a5], a
    rst $38
    rst $00
    rst $38
    rst $28
    adc $f8
    cp $b0
    ldh a, [$85]
    ld d, b

jr_076_47ee:
    rra
    ld h, b
    rst $38
    ccf
    jr nz, jr_076_4833

    cpl
    ccf
    jr nc, jr_076_4837

    sbc a
    rst $38
    rra

jr_076_47fb:
    rst $28
    rrca
    rst $38
    rst $38
    ld a, a
    pop bc
    ld a, $fb
    db $e3
    ld a, $89
    ldh [rSCY], a
    rst $38
    cp a
    rst $38
    jp $feff


    rst $38
    rst $38
    ei
    adc b
    rst $38
    db $fc
    ld b, e
    ld l, e
    cp $81
    xor c
    and b
    rst $38
    cpl
    ldh [rIE], a
    rst $38
    ldh a, [$8b]
    ld a, a
    rst $38
    rst $38
    ld c, a
    rrca
    ld d, b
    rra
    jr nz, @-$40

    ldh [$ed], a
    jr nz, jr_076_47ee

    ldh [$f0], a
    rra
    db $db
    pop hl

jr_076_4833:
    ld a, [hl]
    jp Jump_000_0a3e


jr_076_4837:
    ld c, l
    ret nz

    ld [bc], a
    add a
    add b
    inc bc
    ret nz

    ldh [rNR10], a
    set 0, b
    db $ed
    nop
    ret nz

    rst $38
    inc bc
    db $fc
    rlca
    ld a, b
    rrca
    ld [hl], c
    rra
    ld [hl-], a
    rst $38

jr_076_484f:
    rra
    inc h
    ccf
    ld h, l
    ld a, a
    ld c, a
    ld a, a
    rra
    db $db
    push af
    rra
    dec c
    ld [c], a
    ccf
    rst $38
    ld [hl], $e0
    ld b, b
    rst $38
    ei
    rrca
    ld a, a
    ld a, h
    ret nz

    ccf
    ldh a, [$1f]
    ldh a, [$cf]
    ld a, a
    ld hl, sp-$19
    db $fc
    rst $30
    inc a
    db $fd
    call c, $85e0
    ld l, [hl]
    jr nc, jr_076_47fb

    ld [hl], b
    adc d
    ld hl, sp-$10
    adc e
    ld b, h
    rlca
    add $c2
    rst $38
    ccf
    rst $18
    push af
    ccf
    ldh [$3f], a
    ld [$fc3f], a
    ldh a, [$81]
    xor [hl]
    add c
    add b
    ld a, a

jr_076_4892:
    ldh [$9f], a
    ldh a, [$8f]
    rst $38
    ld hl, sp-$79
    db $fc
    ld h, l
    db $fc
    ld c, e
    ld a, [hl]
    ld e, a
    rst $38
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    db $76
    ld a, a
    ld l, [hl]
    cp a
    ld d, a
    inc h
    rst $38
    inc h
    or d
    and b
    ld a, b
    call nz, $80a0
    jp z, $f5c0

    ld a, a
    cp $e0
    inc e
    ld e, $c0
    dec hl
    cp $2f
    cp $ff
    dec sp
    cp $7b
    cp $eb
    rst $38
    db $eb
    rst $38
    rst $38
    add $7f
    adc h
    add $fc
    ld [hl-], a
    cp $12
    rst $38
    cp $7c
    db $fc
    inc h
    db $fc
    dec h
    db $fc
    adc a
    ld a, a
    ld hl, sp-$21
    ld [hl], b
    ld c, c
    rrca
    ld c, d
    rrca
    rst $38
    ldh [rIE], a
    ld c, $1f
    rla
    cp a
    cpl
    rst $38
    ld h, $ff
    ei
    ld [hl+], a
    ld sp, $e0c7
    rst $38
    or c
    rst $38
    ld c, d
    rst $38
    db $fd
    ld e, e
    ret


    add b
    ld d, c
    rst $38
    jr nz, jr_076_4892

    cp $eb
    rst $18
    cp $ff
    sbc [hl]
    rst $38
    ld c, [hl]
    cp e
    add b
    ld e, l
    rst $38
    scf
    ld c, l
    rst $38
    adc c
    ld [$0fa0], sp
    rst $38
    ld [hl], d
    and b
    jp nz, $efa1

    ld hl, sp+$3f
    db $fc
    ld c, a
    cp d
    and d
    rst $00
    ld a, a
    ldh a, [$e5]
    ccf
    ld h, a
    ret nz

    ld [hl], l
    ld hl, $12c0
    and b
    sbc b
    rst $28
    ld a, b
    rst $38
    or a
    db $fd
    jp nc, $bcfe

    db $fc
    inc b
    db $fc
    db $e3
    ld b, [hl]
    db $fc
    inc h
    and c
    ld d, b
    ldh [$f0], a
    ld h, a
    inc h
    rst $38
    inc [hl]
    ld l, e
    rst $38
    inc c
    ld b, $c0
    ld bc, $c1d6
    adc b
    rrca
    and h
    add b
    db $fd
    pop af
    ld d, h
    ldh [$3b], a
    pop af
    rra
    rst $38
    adc $7f
    db $fd
    ldh [$da], a
    ret nz

    and l
    rst $38
    and $ff
    rst $00
    cp $ff
    adc a
    ld a, [c]
    rra
    pop hl
    ld a, a
    pop de
    rst $38
    sbc a
    xor $b0
    and c
    ldh [$1f], a
    ldh a, [rHDMA3]
    and c

jr_076_4973:
    adc a
    ld hl, sp+$1f
    rst $38
    ldh a, [$f1]
    ldh a, [$fe]
    sub e
    rst $38
    adc e
    rst $38
    db $fd

Call_076_4980:
    add l
    db $fc
    ldh [rLYC], a
    rst $38
    inc hl
    rst $18
    dec e
    rst $08
    pop hl
    ld bc, $a3a5
    rst $08
    ld h, b
    ld [$8461], sp
    ld h, b
    and d
    cp $42
    pop af
    cp $97
    and c
    ret c

    ld b, b
    sub b
    and c
    ld b, c
    ret z

    rrca
    db $fc
    rst $38
    ld a, a
    cp $a7
    rst $38
    sub l
    rst $38
    adc e
    cp $bf
    sub a
    cp $8b
    rst $38

jr_076_49b0:
    ld b, a
    ld de, $80a7
    add h
    db $fc
    dec [hl]
    and b
    jp z, Jump_076_57e5

    db $fc
    scf
    cp $87
    db $fd
    rst $30
    ld b, d
    cp $82
    jp z, $f3e4

    jr nc, jr_076_49b0

    jr nz, jr_076_4a16

    rst $08
    ret nz

    jr nz, jr_076_4a31

    nop
    nop
    ld h, c
    ld e, d
    and c
    ld a, a
    cp $e0
    dec a
    ccf
    cp $e0
    rra
    inc b
    ld b, a
    ld b, $38
    and h
    db $76
    and c
    ld a, a
    ld bc, $03fe
    cp $07
    rst $38
    jp nz, $a178

    ld a, [$a068]
    inc b
    jr jr_076_4973

    add h
    ld a, l
    call z, Call_000_39ff
    ld bc, $42ff
    and b
    nop
    and b
    ret nc

    pop hl
    ld b, b
    and c
    ld e, a
    push hl
    jp z, Jump_076_6ae6

    pop hl
    xor [hl]
    jp z, $fde5

    inc b
    ld c, e
    sub b
    xor h
    ld a, [$a294]
    rlca
    ld a, a
    rst $38

jr_076_4a16:
    dec c
    db $fd
    ld sp, hl
    ld sp, hl
    rla
    ldh a, [rLCDC]
    and b
    dec bc
    db $fc
    inc bc
    jr nc, @-$1c

    add c
    cpl
    ret nz

    ld d, b
    and c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

jr_076_4a31:
    rst $38
    rst $38
    di
    nop
    dec e
    nop
    and $00
    push af
    cp d
    cp $e0
    and $f6
    ldh [rIE], a
    rst $38
    rst $38
    nop
    xor [hl]
    cp $ea
    rst $38
    rst $38
    add b
    cp $e9
    nop
    rst $38
    db $ec
    di
    rst $38
    nop
    rrca
    nop
    ld a, c
    nop
    ld h, c
    nop
    ld b, c
    cp a
    nop
    inc bc
    nop
    rlca
    nop
    rra
    call nz, $f0e6
    cp a
    nop
    rst $08
    nop
    cp b
    nop
    ld h, a
    ldh [$e1], a
    ld bc, $7eff
    rlca
    ld l, b
    rrca
    ld d, b
    rra
    jr nc, jr_076_4ab5

    rst $38
    ld a, e
    ld c, a
    db $fc
    sub a
    rst $38
    ld a, h
    add e
    cp $ff
    ld bc, $01ff
    rst $38
    rrca
    rst $38
    cp e
    cp $ef
    ld a, d
    cp $f7
    db $fc
    and d
    push hl
    ldh a, [$80]
    rst $08
    rst $18
    add b
    cp b
    add b
    rst $20
    add b
    add d
    db $ec
    inc bc
    ld e, l
    ei
    nop
    ld e, l
    cp d
    ldh [$b8], a
    nop
    rst $08
    rlca
    ei
    rst $18
    ld c, $97
    inc e
    rst $38
    db $fd
    ld e, b
    push hl
    di
    ldh a, [$bf]
    rst $28
    cp h
    di
    rra

jr_076_4ab5:
    ldh a, [$5f]
    ld d, d
    db $ec
    add b
    rst $38
    ld sp, hl
    xor a
    pop af
    rst $18
    or e
    rst $38
    and e
    rst $38
    rst $38
    and $7f
    rst $28
    dec sp
    rst $38
    ld e, c
    rst $38
    adc c
    rst $38
    push af
    db $fc
    db $ed
    ld hl, sp-$29
    ldh a, [$b8]
    ldh [rIE], a
    rst $08
    add $fe
    ld c, $9f
    rra
    sbc a
    rra
    ld a, $c0
    and $00
    rst $08
    ret nz

    db $fd
    db $fc
    ld [de], a
    xor $92
    ldh [$3c], a
    sub b
    db $e4
    ld a, $e0
    sbc [hl]
    nop
    add a
    rlca
    ret nc

    rst $20
    jr @-$1d

    ld e, a
    db $fd
    db $fc
    db $dd
    add b
    db $dd
    ld e, d
    ldh [$b8], a
    ld d, d
    ldh [$bf], a
    ldh a, [$80]
    sbc [hl]
    add b
    add [hl]
    add b
    ldh [$eb], a
    ld h, c
    rst $38
    nop
    rrca
    inc b
    rst $38
    ld [$0b1f], sp
    rst $28
    rst $38
    ld a, [bc]
    cp a
    ld de, $13bf
    rst $38
    db $10
    rra
    rst $38
    db $10
    rst $38
    ld b, a
    db $fc
    daa
    ei
    ccf
    rst $38
    rst $38
    ld c, h
    rst $38

jr_076_4b2a:
    sub e
    rst $38
    inc h
    rst $38
    push af
    rst $38
    rst $38
    push af
    ld hl, sp-$01
    ld b, $ff
    reti


    rst $38
    cp $ff
    cp a
    rst $38
    add hl, de
    rst $38
    and h
    rst $38
    or l
    rst $38
    rst $38
    push af
    ld [hl], b
    ret nz

    ld c, a
    ret nz

    jr c, jr_076_4b2a

    and a
    ei
    ldh [$fd], a
    cp $e0
    rst $30
    ret nc

    ld hl, sp-$18
    rst $38
    rst $38
    sub c
    rst $38
    ld [c], a
    rst $38
    add [hl]

jr_076_4b5b:
    cp $42

jr_076_4b5d:
    rst $38
    db $fd
    ld b, e
    cp $e0
    ld b, c
    ccf
    ld hl, $3fbf
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    di
    rst $38
    db $e4
    rst $38
    ld [hl], l
    ld [hl], l
    cp $e0
    ld h, l
    ld h, b
    ret nz

    rst $38
    rst $38
    and a
    jp nz, Jump_076_7be5

    rst $38
    inc d
    ret z

    ret nz

    ret nz

    ld hl, sp-$40
    rst $20
    ret nz

    pop hl
    ccf
    ret nc

    rst $38
    add sp, -$08
    ret z

    rrca
    ld l, [hl]
    ret nz

    jr nc, jr_076_4b5b

    xor a
    ld bc, $1f9f
    rst $38
    cp [hl]
    pop hl
    ld a, a
    jr z, jr_076_4b5d

    ld hl, sp-$6e
    cp d
    ldh [$64], a
    ret nz

    ld [c], a
    ei
    db $e3
    db $e3
    ld a, h
    pop hl
    ld e, b
    ret nz

    add b
    ld a, [$e0c0]
    ret nz

    add b
    pop hl
    rst $20
    ldh [$f8], a
    ret nc

    add d
    ccf
    add b
    ret nz

    add b
    ldh [$80], a
    ld hl, sp+$0c
    add $28
    push de
    db $fc
    ld l, b
    push bc
    inc e
    pop hl
    ld a, a
    db $10
    ld l, a
    add hl, bc
    ld c, [hl]
    rrca
    db $fd
    ld [$e0fe], sp
    inc e
    rlca
    rst $38
    push hl
    rst $38
    ld h, d
    rst $38
    rst $38
    ld c, d
    rst $38
    rst $08
    ccf
    rst $20
    ccf
    pop hl
    rst $38
    rra
    ldh a, [$1f]
    db $fc
    rst $38
    inc d
    rst $38
    ld [$ffff], sp
    ld a, [bc]
    rst $38
    ld e, $ff
    db $fc
    rra
    ldh a, [rIE]
    rst $38
    pop hl
    rst $38
    rlca
    rst $38
    ret z

    ld hl, sp-$78
    cp a
    cp $48
    or $50
    ld [c], a
    ld h, b
    sbc b
    pop hl
    ld a, b
    rst $38
    ret nz

    rst $38
    jr nz, jr_076_4c49

    jr nz, @+$81

    inc de
    ld a, h
    rst $30
    rra
    ld d, b
    rra
    ret nz

    db $e4
    and d
    rst $38
    jp z, $ffff

    rst $08
    ld a, a
    rst $00
    ccf
    pop hl
    ccf
    pop af
    rra
    rst $20
    db $fc
    sub e
    cp $c2
    push hl
    or h
    ret nz

    pop af
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rrca
    rst $38
    adc b
    ld hl, sp+$48
    cp $50
    rst $38
    and $60
    add d
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [rIE]
    ld [$f3f8], sp
    ld [bc], a
    rrca
    ld [bc], a
    ld a, e
    ld [bc], a
    ei
    ld h, c

jr_076_4c49:
    ld bc, $a280
    ld bc, $031e

jr_076_4c4f:
    rst $38
    ldh [rIE], a
    rst $38
    ld [hl], h
    rst $38
    ld [hl], a
    rst $38
    jr nz, @+$01

    ret


    rst $28
    rst $38
    ld c, [hl]
    rst $38
    and $cc
    ldh [rP1], a
    rst $38
    and l
    ei
    rst $38
    dec e
    inc l
    and b
    ld [de], a
    rst $38
    ld c, $ff
    inc c
    ld a, e

jr_076_4c6f:
    rst $38
    ld de, $c1dc
    cp $c8
    or $90
    add b
    ldh [rIE], a
    ld b, b
    ldh [$e0], a
    jr jr_076_4c6f

    db $fc
    rlca
    rst $38
    ei
    inc bc
    cp $fe
    and $ff
    inc bc
    sub e
    cp $09
    rst $28
    rst $38
    inc b
    rst $38
    inc bc
    inc bc
    and [hl]
    ld sp, hl
    rrca
    ld a, [c]
    set 7, a
    jp c, $c045

    ld d, b
    xor l
    ldh [$e3], a
    add c
    ccf
    ldh [rIE], a
    ld e, a
    ldh a, [$5f]
    ldh a, [$7f]
    add sp, $3f
    add sp, -$41
    ccf
    db $e4
    ccf
    db $fc
    db $e3
    cp $c2
    db $eb
    rst $38
    db $ed
    ld bc, $ebc2
    rst $38
    nop
    jp nz, $ffeb

    nop
    ld c, a
    rst $20
    ld hl, sp+$5f
    db $f4
    add $e0
    cp $e1
    add sp, -$01
    ldh a, [$bb]
    rst $38
    jr nz, jr_076_4c4f

    ldh [rTAC], a
    rst $38
    add hl, bc
    sbc $c0
    ld [de], a
    rst $38
    rst $38
    inc de
    cp $0b
    db $fc
    rrca
    rrca

jr_076_4cde:
    db $fc
    rst $38
    adc e
    rst $38
    call nc, $f3ff
    ccf
    call z, $fdff
    add e
    pop hl
    ldh [$3c], a
    rst $38
    cp $e7
    ld a, [$f71f]
    ld a, [c]
    rst $38
    inc l
    add b
    ld [c], a
    add b
    rst $38
    ld b, c
    rst $38
    ei
    rrca
    ld hl, sp-$42
    db $eb
    rrca
    ld bc, $01f3
    dec e
    add a
    ld bc, $01e7
    db $10
    push bc
    or $87
    ld c, b
    add d
    inc [hl]
    add l
    ld [$ffff], sp
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    and b
    rst $30
    or $3e
    pop hl
    and l
    ret nz

    push de
    ld a, a
    push af
    ld a, a
    ccf
    rst $18
    ld c, [hl]
    rst $20
    ld b, b
    ld hl, sp+$40
    ret nz

    ld [c], a
    ret nc

    xor b
    ldh a, [$c4]
    add sp, -$40
    rst $20
    jp nz, $c0e3

    ld [c], a
    ldh a, [rNR41]
    rst $28
    jr nz, jr_076_4cde

    ld hl, sp+$40
    rst $20
    ld b, b
    db $dd
    cp $e0
    ret nz

    pop hl
    inc c
    rst $18
    rlca
    db $f4
    rlca
    ld e, $03
    add b
    and $00
    rrca
    cp $c4
    call nz, $ffc0

jr_076_4d58:
    ld hl, sp-$41
    rst $38
    add a
    rst $38
    ld a, a
    add b
    ld a, a
    cp $ff
    ldh [$bf], a
    ldh [$d2], a
    ret nz

    ld d, a
    ldh a, [$7f]
    ldh [$64], a
    ret nz

    ld b, b
    ret nz

    ld [c], a
    jr nz, @-$3e

    and $ff
    jr nz, @-$0b

    ld bc, $070e
    ld a, b
    rrca
    ld l, b
    ld a, a
    rrca
    ld c, b
    rrca
    rlca
    rlca
    inc b
    rlca
    add d
    ld h, b
    ld [c], a
    jp z, Jump_000_0fa0

    call Call_076_77a0
    ld h, e
    ld [hl], d
    ld h, b
    and b
    rst $38

jr_076_4d92:
    jp $fc7f


    cp a
    db $e4
    cp a
    ldh [$bf], a
    rst $38
    db $fc
    pop hl
    rst $38
    rst $38
    rst $28
    jr nz, jr_076_4d92

    ldh a, [$0e]
    ld hl, sp+$0e

jr_076_4da6:
    ld a, a
    ld hl, sp+$0a
    ld hl, sp-$08
    ld hl, sp+$10
    ldh a, [rHDMA2]
    ld h, b
    add hl, hl
    ldh [$d0], a
    db $eb
    ld [hl], b
    ld h, d
    ld bc, $a0f0
    ld bc, $6170
    ld b, d
    ld h, d
    di
    ret nz

    ccf
    scf
    ld h, [hl]
    ld [hl+], a
    ld h, b
    ld b, b
    rst $38
    ld b, a
    ld hl, sp+$6b
    rst $38
    jr z, jr_076_4da6

    and b
    ccf
    push de
    and b
    rst $38
    rst $38
    jr jr_076_4d58

    ld a, a
    add [hl]
    nop
    add d
    nop
    ret nz

    nop
    ldh [rSC], a
    ld h, b
    rst $18
    add d
    nop
    rst $00
    rlca
    rst $38
    call z, Call_076_4188
    nop
    ld hl, sp-$7c
    and b
    call z, $2888
    ld h, e
    rst $20
    add b
    db $dd
    ret nz

    db $dd
    or $8a
    add b
    ld hl, sp-$20
    jr nz, jr_076_4e5d

    ld a, e
    ld [bc], a
    ld h, e
    ld [bc], a
    adc a
    ld b, e
    ld [bc], a
    inc bc
    ld bc, $6200
    sbc h
    add c
    ld a, h
    and [hl]
    ld a, a
    ld sp, hl
    ld c, [hl]
    jr jr_076_4d92

    ld a, h
    xor b
    rst $28
    ldh [$f0], a
    ret nc

    cp $ff
    add sp, -$02
    ret z

    ld a, [$f0c8]
    sub b
    ldh [$c7], a
    ld h, b
    ld hl, sp+$70
    sub d
    ld b, [hl]
    db $eb
    ld b, c
    rst $20
    ld b, b
    ld a, a
    ld h, $7f
    ld e, a
    ld [hl], c
    adc a
    db $fc
    add a
    rst $38
    ld [bc], a
    call c, $cf40
    ld c, $ff
    rra
    di
    ld c, h
    and c
    db $fc
    and a
    and b
    rst $38
    rst $38
    adc a
    ld hl, sp+$07
    db $fc
    ld b, a
    db $fc
    ld c, a
    db $fc
    ld a, a
    ld e, a
    rst $30
    inc a
    rst $28
    inc sp
    rst $38
    adc $52
    ld b, a
    cp e
    ret nz

    cp a
    or $c0
    rra
    ldh a, [$bf]
    sbc d

jr_076_4e5d:
    ret nz

    sbc a
    rst $18
    ldh a, [$bf]
    ld hl, sp-$01
    add $d3
    and b
    ld b, b
    rst $38
    ld a, a
    ld b, b
    pop bc
    rst $38
    ld [c], a
    ld a, a
    db $fd
    rra
    cpl
    and b
    cp l
    rlca
    xor e
    ldh [$67], a
    rst $38
    ld e, b
    inc a
    ld sp, hl
    ld h, b
    ldh [$fe], a
    ld h, d
    ret nz

    ld bc, $87ff
    cp $9f
    ld hl, sp-$08
    cp $c2
    ret nz

    inc de
    ldh a, [$3d]
    ldh [$66], a
    ret nz

    cp d
    ldh a, [$36]
    ld h, b
    nop
    ld b, d
    call z, $c2e0
    add b
    rra
    ldh [$3f], a
    ldh [$f7], a
    ccf
    ldh a, [$1f]
    ret nc

    jp nz, $e05f

    ld a, a
    ret nz

    ld a, [c]
    ret


    ret nz

    ld a, a
    push bc
    ret nz

    add b
    jp nz, $1ee0

    ldh a, [rNR21]
    ccf
    ldh a, [rNR12]
    ldh a, [$f0]
    ldh a, [rNR41]
    cp a
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
    rst $38
    rst $38
    rst $38
    ccf
    nop
    rst $08
    nop
    rst $30
    nop
    rst $18
    inc sp
    nop
    ld de, $1900
    cp $e0
    rst $38
    rst $38
    ei
    rst $38
    nop
    cp $e9
    dec a
    nop
    ei
    nop
    rlca
    cp e
    nop
    or a
    cp $e0
    rst $28
    nop
    rra
    and $ea
    db $fc
    di
    nop
    di
    db $ec
    ldh [$d2], a
    db $eb
    rst $38
    ld bc, $00cc
    rst $38
    adc b
    nop
    sbc b
    nop
    sbc a
    rrca
    or a
    dec a
    cp a
    rst $08
    ld a, b
    adc a
    ld_long a, $ff0f
    xor b
    db $e3
    ld sp, hl
    rst $38
    ldh [$dd], a
    ld a, b
    rst $20
    inc a
    db $e3
    cp [hl]
    pop hl
    or $a2
    db $ec
    rst $38
    nop
    ret nc

    push hl
    cp a
    ld a, [hl-]
    rst $18
    ld [hl], b
    rst $30
    sbc a
    push af
    sbc a
    ret nc

    and $9d
    ld hl, sp-$39
    ld a, h
    ei
    jp $d07e


    ldh [rSB], a
    ld a, $03
    adc $03
    rst $38
    rst $30
    inc bc
    inc sp
    inc bc
    rla
    dec b
    rra
    dec bc
    rst $38
    rra
    add hl, bc
    jr nc, @+$01

    ld c, h
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    call z, $92ff
    rst $38
    sub $fe
    ldh [$94], a
    rst $38
    add hl, de
    rst $38
    ld h, h
    rst $38
    ld_long a, $ffff
    ld h, a
    xor a
    rst $38
    sub e
    rst $38
    rst $10
    cp $e0
    ld d, e
    ld l, b
    ldh [$80], a
    rst $38
    di
    add b
    rst $28
    add b
    call z, $e8c0
    ld h, b
    rst $38
    ld hl, sp-$60
    ld hl, sp+$20
    rst $38
    ld bc, HeaderManufacturerCode
    rst $38
    rst $08
    ld bc, $01f7
    inc sp
    inc bc
    inc de
    inc bc
    rst $38
    rra
    dec b
    rra
    dec b
    ld h, b
    rst $38
    add b
    rst $38
    cp a
    ccf
    rst $38
    rst $38
    reti


    rst $38
    and b
    rst $30
    ldh [$80], a
    rst $38
    rst $38
    or c
    db $10
    rst $38
    ld [$f4ff], sp
    rst $38
    ei
    rst $38
    rst $08
    cp [hl]
    ldh [rTMA], a
    rst $38
    rrca
    rst $38
    and $ff
    rst $38
    add b
    db $fc
    add b
    ld [hl], e
    ret nz

    ld l, a
    ret nz

    rst $38
    call z, $c8c0
    ret nz

    ret c

    ld b, b
    ret c

    ld b, b
    rst $30
    jr nc, @+$01

    ld b, b
    sub b
    pop hl
    adc $ff
    sbc b
    rst $38
    cp l
    ret nz

    cp $e0
    sbc h
    add hl, de
    rst $38
    inc b
    sub b
    pop hl
    rst $20
    rst $28
    rst $38
    inc sp
    rst $38
    rlca
    cp $e0
    ld [hl], e
    ccf
    ld [$ffbf], sp
    add hl, bc
    rlca
    dec b
    or a
    inc bc
    ldh [$c2], a
    ld bc, $feff
    inc bc
    rst $38
    adc b
    rst $38
    jr z, @+$01

    inc a
    rst $38
    rst $38
    rra

jr_076_4ff6:
    rst $38
    add a
    rst $38
    ret nz

    ccf
    ldh a, [rIE]
    rst $38
    ld hl, sp-$01
    ld [hl+], a
    rst $38
    add hl, hl
    rst $38
    ld a, c
    rst $38
    rst $38
    pop af
    rst $38
    jp nz, Jump_000_07ff

    ld hl, sp+$1f
    rst $38
    ldh [$3f], a
    db $fc
    jr nz, @+$01

    jr nz, jr_076_4ff6

    ld b, b
    rst $30
    db $ed
    add b
    db $ed
    adc h
    ret nz

    ld hl, sp-$80
    ld a, a
    ret nz

    rst $38
    ccf
    inc b
    rst $38
    dec b
    rlca
    inc bc
    or a
    ld bc, $c0be
    and $a0
    rst $38
    ld h, b
    rst $38
    ld [hl], c
    ld e, l
    ldh [$8f], a
    ld [$e0c0], a
    ldh [$c0], a
    ldh [$82], a
    ld d, $e0
    ld a, [c]
    rst $38
    pop hl
    db $fc
    ld hl, sp-$20
    ret nz

    pop hl

jr_076_5046:
    ld a, a
    db $fc
    ld b, b
    rst $18
    ld b, b
    ldh [$fc], a
    jp nz, $c0e0

    push hl
    rst $38
    ld b, c
    rst $38
    ld c, c
    rst $38
    ld c, a
    cp $92
    ldh [rSTAT], a
    rst $38
    ldh [$1f], a
    ldh a, [rIE]
    db $fc
    db $eb
    rst $38
    dec b
    jr c, jr_076_5046

    adc [hl]
    ld hl, sp-$20
    pop af
    rst $38
    inc bc
    cpl
    db $fc
    rrca
    ldh a, [$3f]
    ld e, d
    ldh [rDIV], a
    dec e
    ldh [$fe], a
    pop hl
    xor a
    inc b
    rst $38
    rlca
    db $fc
    ld c, h
    pop hl
    ld bc, $e016
    ld [$ff7f], sp
    db $10
    rst $38
    ld [hl], b
    adc a
    db $fc
    inc bc
    dec hl
    ld [c], a
    rst $38
    ldh [$3f], a
    ldh a, [$1f]
    ld sp, hl
    rrca
    ei
    rrca
    adc [hl]
    ret nc

    ldh [rIE], a
    ld a, a
    ret nz

    cp $e1
    db $e4
    jp nz, $e3fc

    rlca
    rst $28
    ccf
    ld [bc], a
    rst $08
    ld [bc], a
    ret nz

    ret nz

    ld bc, $0111
    add hl, hl
    add hl, de
    cp $e0
    ldh [$a4], a
    ld [$e002], sp
    inc bc
    cp $e0
    ldh a, [$e1]
    jp hl


    ld bc, $e2fe
    jp z, $80a5

    add sp, -$5d
    call z, $8880
    rst $38
    add b
    sbc b
    add b
    ret c

    ld b, b
    ccf
    ld [bc], a
    rst $38
    rst $38
    rlca
    ld [$b00f], sp
    rra
    or b
    rra
    rst $28
    rst $30
    rrca
    jr jr_076_50ec

    jp nc, $81e2

    ld a, a
    cp $23
    xor a
    cp $03
    cp $ff
    db $fc
    pop hl
    rst $38

jr_076_50eb:
    ld e, d

jr_076_50ec:
    ldh [rTAC], a
    and l
    ld hl, sp-$35
    ret nz

    add b
    add a
    and b
    db $fc
    pop hl
    db $fc
    ld a, [hl-]
    ldh [$08], a
    ld a, e
    ld hl, sp+$0d
    cp $e0
    rst $30
    ldh a, [rNR23]
    ldh a, [$72]
    and b
    add h
    jp hl


    pop hl
    cp $e8
    nop
    rst $38
    db $ec
    ld d, [hl]
    rst $20
    ld [$80c4], sp
    and b
    sbc a
    rst $38
    rlca
    sbc a
    dec e
    xor a
    jr c, jr_076_50eb

    ld a, d
    rst $08
    ei
    ld a, a
    or b
    add b
    and d
    ld sp, hl
    ldh a, [$cd]
    ld a, h
    db $e3
    rrca
    ld a, $e1
    cp a
    ldh a, [rNR14]
    ret nz

    ld [hl+], a
    xor d
    add b
    ret nz

    ld e, b
    db $e3
    cp a
    sbc b
    add b
    cp h
    add b
    rst $18
    add b
    xor b
    ret nz

    add b
    call z, $85f8
    ld [$ffa5], sp
    nop
    ldh [$82], a
    nop
    ldh [rNR13], a
    ld [bc], a
    db $fd
    dec de
    cp $e0
    ret nz

    rst $38
    sbc a
    rst $38
    rst $38
    db $ec
    cp e
    rst $38
    ret c

    ld a, [c]
    and d
    ret c

    rst $38
    ld d, b
    ld a, [c]
    and [hl]
    inc bc
    cp $f0
    and b
    di
    rst $38
    ld b, c
    ld a, a
    ret nz

    inc a
    ldh [$7f], a
    or e
    ldh [$ef], a
    ldh [$ec], a
    ld h, b
    add sp, -$7e
    and b
    ld a, a
    ld hl, sp+$20
    db $ed
    add b
    rst $30
    add b
    ld hl, sp+$3e
    add sp, -$04
    cp b
    sub l
    ret z

    add e
    sbc b
    nop
    ccf
    ld [bc], a
    ei
    ld bc, $9076
    add h
    ld bc, $ac1e
    pop hl
    or b
    rst $38
    cp b
    adc l
    ldh [$5f], a
    ld c, a
    db $fc
    jp $e33c


    or d
    and b
    rlca
    ld [de], a
    ret nz

jr_076_51a1:
    or a
    ld sp, hl
    rst $38
    ldh a, [$f0]
    and b
    inc bc
    db $fc
    ld a, [c]
    and b
    ret nz

    daa
    rst $38
    db $fc
    jr nz, jr_076_51a1

    and h
    sbc b
    ldh [$78], a
    ld b, [hl]
    pop bc
    ld [de], a
    jp z, Jump_000_1094

    ret nz

    ld [de], a
    jp z, Jump_000_1200

    call z, $1000
    jp nz, $c99e

    cp h
    rrca
    nop
    rst $18
    nop
    ldh [$a2], a
    and b
    ld h, b
    and d
    ld a, [c]
    ld h, b
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    inc b
    nop
    scf
    di
    nop
    ld b, $fa
    ldh [$64], a
    nop
    ldh a, [$e3]
    db $fc
    add sp, -$02
    ldh [$e2], a
    ld hl, sp+$00
    push hl
    nop
    call z, $ac00
    xor e
    nop
    cp b
    ldh [$e1], a
    add b
    cp $e9
    nop
    rst $38
    db $ec
    ld [hl], h
    cpl
    nop
    db $f4
    nop
    db $e4
    db $eb
    ldh [rDIV], a
    cp d
    db $eb
    xor h
    db $e4
    db $fd
    ld hl, sp-$16
    db $ec
    inc b
    nop
    add e
    nop
    add a
    nop
    ld h, a
    rst $00
    nop
    db $e3
    and $e7
    and d
    ld [$80f8], a
    ld [hl], d
    db $ec
    db $fd
    ld bc, $e578
    sbc a
    rra
    rst $28
    ld a, d
    sbc a
    ldh a, [$fb]
    rra

jr_076_5239:
    rst $38
    ld c, b
    push hl
    db $f4
    ret nz

    or h
    ldh a, [$cc]
    rst $20
    ld a, b
    call nz, $8afc
    db $ed
    ld c, b
    db $e3
    cp e
    inc bc
    adc l
    ld a, a
    rrca
    sub e
    ld e, $e3
    ccf
    add $7f
    jr jr_076_5239

    rst $38
    db $fc
    ld hl, sp-$0a
    ld e, [hl]
    ld sp, hl
    rrca
    ld hl, sp-$01
    db $fd
    inc c

jr_076_5261:
    ld [de], a
    db $eb
    add b
    ld a, a
    ret nz

    push hl
    add b
    call z, $80ff
    xor h
    add b
    cp b
    add b
    add e
    add b
    add a
    sbc a
    add b
    rst $00
    add b
    db $e3
    add b
    add sp, -$3b
    jr z, jr_076_5261

    cp $ff
    inc bc
    cp $03
    db $fc
    rla
    dec a
    cpl
    db $fd
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    cp e
    rst $38
    xor a
    jr nc, @+$01

    rst $38
    ld b, b
    rst $38
    cp a
    rst $38
    ld a, a
    db $ed
    rst $38
    rst $30
    sbc b
    rst $38
    dec l
    xor $e0
    xor b
    ld h, d
    cp $13
    rst $38
    cp $e9
    rst $38
    push af
    cp a
    db $fd
    rst $08
    rst $38
    push hl
    and a
    sbc $e0
    xor a
    ld [$c0e5], sp
    jp nz, $fe80

    ld h, [hl]
    cp $08
    push hl
    di
    nop
    rlca
    ld bc, $2627
    ld a, a
    rst $38
    ld e, d
    ret z

    ld a, a
    sub a
    rst $38
    xor a
    db $fd
    cp a
    rst $18
    di
    rst $38
    push hl
    rst $38
    push af
    cp $e0
    ld h, [hl]
    ld [bc], a
    rst $38
    rst $38
    db $fd
    rst $38
    cp $b7
    rst $38
    add hl, de
    rst $38
    db $fd
    or h
    ldh a, [$e0]
    dec d
    rst $38
    inc c
    ld a, a
    ret nz

    ccf
    ld l, a
    ld_long $ffb5, a
    xor e
    db $e3
    ldh [$fd], a
    rst $18
    rst $18
    ldh [$f9], a
    rst $18
    or b
    ld [$c170], a
    xor e
    rst $38
    sbc c
    rst $38
    adc d
    rst $38
    ld a, a
    ld c, d
    ld a, a
    ld b, [hl]
    rst $38
    ld b, e
    cp $43
    rst $38
    db $fc
    daa
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld e, b
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ldh a, [$1f]
    ldh a, [$9f]
    rst $38
    rst $38
    rst $08
    rst $38
    ld h, [hl]
    rst $38
    ld b, l
    rst $38
    jp nc, $ffff

    ld a, [c]
    rst $38
    ld [c], a
    ld a, a
    rst $00
    ld a, l
    rst $08
    rst $38
    ei
    sbc [hl]
    db $db
    ld a, [hl]
    push de
    ld a, a
    bit 7, a
    rst $38
    push bc
    ld a, a
    xor e
    rst $38
    add l
    rst $38
    jp $ef7e


    rst $20
    inc a
    rst $38
    xor d
    ld [c], a
    ldh [$a2], a
    rst $38
    push de
    cp e
    rst $38
    and c
    scf
    ldh [rNR50], a
    rst $38
    jr @-$0a

    ldh [rWX], a
    rst $38
    rst $38
    ld c, a
    rst $38
    ld b, a
    rst $38
    pop hl
    cp a
    pop af
    rst $38
    rst $18
    ld a, h
    db $d3
    ld a, [hl]
    rst $38
    ld [$1aff], sp
    rst $38
    rst $38
    cp $ff
    db $fc
    rra
    ldh a, [rIE]
    pop af
    rst $38
    rst $38
    inc bc
    db $fc
    rrca
    ld sp, hl
    sbc a
    pop af
    ld e, a
    rst $38
    pop af
    ld e, a
    rst $38
    ld l, [hl]
    cp $c2
    ld a, a
    jp nz, Jump_000_3fff

    ld [c], a

jr_076_5381:
    sbc a
    db $f4
    ld sp, hl
    cpl
    ld a, [c]
    rra
    rst $28
    ld hl, sp+$0f
    db $fc
    rlca
    cp $e3
    rst $38
    rlca
    ccf
    rst $28
    ldh a, [$8f]
    rst $38
    ld d, c
    or a
    ldh [$0a], a
    rst $38
    inc b
    cp $c3
    and d
    db $eb
    ld a, [hl]
    sub e
    cp $23
    cp $c1
    rst $38
    rst $38
    ld bc, $06ff
    cp $02
    cp $fe
    sbc l
    cp $9e
    ldh [rNR10], a
    rst $38
    jr nz, jr_076_5381

    ret nz

    ld h, $c5
    ld [$d7ba], sp
    ldh [$03], a
    adc h
    and a
    ret


    ld a, a
    add h
    pop af
    ldh [$c0], a
    rst $18
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld a, [hl-]
    ldh [rLCDC], a
    pop af
    set 7, a
    adc d
    ld l, c
    ldh [$50], a
    call Call_076_65e0
    and c
    rst $38
    nop
    cp a
    ld c, a
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$fe], a
    db $e3
    rst $38
    push af
    ldh [$b6], a
    ldh [rDIV], a
    ld e, [hl]
    ldh [rNR10], a
    ccf
    jr nz, @+$01

    ld a, a
    jr nz, @+$41

    jr nz, jr_076_5455

    ld [hl], b
    ld e, a
    ld [hl], b
    ld b, d
    and h
    rst $38
    db $10
    rst $38
    ld e, $ff
    inc d
    rst $38
    ld h, d
    rst $38
    and a
    ld [hl+], a
    cp $02
    ld [hl], a
    ldh [$fe], a
    pop hl
    ld [bc], a
    cp $e2
    ld bc, $8080
    rst $00
    db $10
    and h
    add $e0
    ld [hl], b
    ld [c], a
    cp $e1
    ld h, $a1
    ld l, h
    db $e3
    ld a, b
    cp a
    rst $38
    jr z, @+$01

    ld b, [hl]
    rst $38
    ld b, h
    db $fc
    ldh [rNR10], a
    cp $5e
    pop hl
    db $fc
    inc b
    db $fd
    inc b
    ld a, [$fa0e]
    rst $38
    ld c, $f2
    ld e, $4f
    ld a, b
    rst $00
    ld a, a
    ldh [$df], a
    ccf
    jr jr_076_5460

    rlca
    rlca
    ld [c], a
    add h
    ld h, e
    cp a
    rst $38
    ld [c], a
    ld a, a
    jp $83fe


    cp $03
    rst $38
    sbc h
    and $a0
    or d
    add b

jr_076_5455:
    rrca
    ldh a, [$1f]
    ld l, c
    pop hl
    or a
    add e
    rst $38
    rst $38
    rst $38
    add e

jr_076_5460:
    nop
    rst $00
    ret nz

    daa
    ldh [rNR44], a
    rst $30
    ldh [$38], a
    ldh [$2d], a
    pop hl
    rst $38
    rst $38
    ld [hl], l
    ld bc, $f65f
    inc bc
    db $e4
    rlca
    inc b
    cp $e0
    rst $38
    ret nc

    pop bc
    rst $20
    rst $38
    rst $38
    ldh a, [$c3]
    ret nz

    ld a, l
    add b
    inc bc
    rst $38
    db $fc
    cp $f9
    ret nz

jr_076_5489:
    rst $38
    rst $38
    db $fd
    rst $00
    cp $43
    rst $38
    ld sp, hl
    pop bc
    sub $e0
    ld [hl], h
    db $e3
    rst $38
    db $e3
    cp $07
    db $fc
    adc a
    rra
    ld hl, sp-$1d
    ldh [$c6], a
    add h
    or b
    ldh [$d0], a
    adc d
    rst $38
    db $e4
    and a
    ret nz

    cp $e8
    dec b
    ldh [$86], a
    xor b
    add l
    di
    ld bc, $fe07
    ld [$65e0], a
    ld bc, $0175
    push af
    ld bc, $fbe5
    ld bc, $0001
    db $e3
    ld c, $1f
    dec d

jr_076_54c6:
    rst $38
    ld [de], a
    cp a
    rra
    dec d
    rra
    ld [de], a
    ld a, a
    ld de, $e050
    ccf
    cp $93
    db $e3
    ret nz

    ld a, a
    db $e3
    cp a
    db $ec

jr_076_54da:
    ld a, a
    db $fc
    rst $38
    ld hl, sp+$2f
    cp $7d
    rst $10
    rst $38
    sub e
    cp $f5
    xor e
    rla
    add c
    ld a, a
    ld a, [c]
    ld h, e
    jr nz, jr_076_54c6

    ld a, b
    xor l
    ld a, a
    db $fc
    call nc, $eafc
    cp $46
    cp $3e
    add h
    ld a, [hl]
    or $a0
    ldh a, [$1f]
    ld hl, sp+$7f
    cp $af
    jr jr_076_5489

    rst $38
    db $fc
    inc bc
    rst $38
    inc e
    rst $38
    ld a, $eb
    ld a, a
    cp c
    ret


    db $10
    xor b
    cp b
    add b
    ld a, b
    ret nz

    ld a, a
    ld [de], a
    pop bc
    jr nz, jr_076_54da

    ld a, a
    ld b, c
    ld a, a
    ld b, c
    rst $38

jr_076_5520:
    ld b, c
    push de
    add b
    jr nz, jr_076_559c

    rst $38
    ccf
    rst $38
    or [hl]
    and c
    ld sp, hl
    rst $38
    ld a, c
    ld d, [hl]
    and b
    rst $38
    add b
    rst $38
    add d
    rst $38
    rst $20
    rst $38
    push bc
    rst $38
    rst $30
    ld l, a
    rst $38
    ld h, c
    db $ec
    and d
    ld bc, $7fff
    add e
    rst $38
    cp $c3
    cp $a7
    db $fc
    rst $00
    db $fc
    db $e4
    rst $10
    cp h
    rst $38
    sbc h
    add h
    and b
    sub b
    ld c, b
    pop hl
    rst $20
    ld [bc], a
    rst $30
    inc bc
    ld [bc], a
    rlca
    jr c, jr_076_5520

    db $fc
    ld e, a
    db $fd
    daa
    rst $28
    ld_long a, $ff1f
    rlca
    sub c
    ldh [rNR23], a
    rst $38
    inc a
    rst $28
    rst $38
    inc a
    ld a, a
    push de
    sbc b
    jp Jump_000_12ff


    rst $38
    db $fd
    ld [hl], c
    ld [hl], $61
    jp Jump_000_37c0


    ldh a, [rVBK]
    ld hl, sp-$01
    adc e
    ld hl, sp-$7c
    db $fc
    adc a
    db $fc
    rst $18
    db $f4
    cp [hl]
    cp $a0
    db $10
    rst $38
    add hl, bc
    cp $0f
    ld e, [hl]
    and e
    ld hl, sp-$02
    ld hl, sp-$20
    rst $38
    db $e3
    ccf
    pop hl
    ccf
    ldh a, [$2f]

jr_076_559c:
    cp a
    db $fc
    inc de
    cp $09
    rst $38
    ld b, $21
    ld h, d
    rst $20
    rst $38
    ei
    adc a
    ld [hl], e
    cp $77
    db $fd
    rrca
    ld sp, hl
    ld e, $5f
    ldh [$a1], a
    rst $38
    rst $38
    sub b
    cp [hl]
    add b
    and [hl]
    and c
    ld h, b
    and a
    add sp, -$02
    pop hl
    cp [hl]
    and e
    ld e, $c1
    jr z, jr_076_5607

    and b
    ld sp, $31ff
    rst $38
    rst $18
    ld a, b
    adc a
    cp $0b
    rst $38
    dec c
    rst $38
    ld a, [$e28a]
    jr nz, @+$2e

    ldh [rIE], a
    cp $3b
    db $fd
    rlca
    rst $28
    ld_long a, $ffff
    jp nz, $a08a

    ld b, d
    rst $38
    add h
    rst $38
    rst $38
    add h
    ld a, a
    ret z

    ccf
    add sp, -$61
    ldh a, [rIE]
    ld hl, sp+$0f
    cp $07
    rst $38
    dec b
    rlca
    inc b
    dec e
    rst $30
    dec c
    pop bc
    ld [bc], a
    ld h, l
    ld bc, $43ad
    ld [hl], $61
    sbc b
    ld b, e
    pop bc

jr_076_5607:
    ld b, c
    and $80
    and b
    add b
    ld h, [hl]
    and c
    xor b
    ld b, e
    ret nz

    jp z, $80b8

    db $fd
    db $fd
    and [hl]
    add d
    ld [$ff0f], sp
    rrca

jr_076_561c:
    rrca
    ld [$0f9f], sp
    ld [$0667], sp

jr_076_5623:
    ld [bc], a
    ld l, e
    ld b, h
    jp nc, Jump_076_4045

    db $d3
    rst $38
    and b
    and a
    ret nz

    or a

jr_076_562f:
    and b
    ld hl, sp-$25
    add b
    ld h, b
    rst $38
    di
    ld d, b
    cp a
    sbc b
    and b
    ld d, b
    ld b, b
    add b

jr_076_563d:
    push hl
    ld b, b
    db $ec
    rst $38
    jr nz, jr_076_562f

    jr nz, jr_076_563d

    jr nz, jr_076_56be

    ld [bc], a
    rst $30
    rrca
    inc b
    rst $20
    dec b
    ld b, $90
    and a
    sbc h
    ret nz

    xor e
    ld b, e
    ret z

    call nz, Call_000_018d
    ld a, [hl+]
    add b
    rst $38
    ld c, b
    ld a, [hl-]
    ld h, b
    daa
    ld b, c
    ld d, b
    and l
    inc de
    rst $28
    ldh a, [rNR23]
    ldh a, [rIE]
    sbc [hl]
    add c
    rst $38
    ld [hl], a
    inc bc
    ld l, [hl]
    ret nz

    ldh [rTAC], a
    ld [bc], a
    inc bc
    ld d, b
    and [hl]
    nop
    rst $38
    jr nz, jr_076_5623

    ld [hl], $f2
    jr nz, jr_076_561c

    ldh a, [$c0]
    add sp, -$3d
    ld b, b
    ret nz

    db $eb
    ldh a, [$2c]
    ld bc, $00ff
    nop
    nop
    db $db
    ld d, [hl]
    ld c, c
    ld d, a
    call z, Call_000_3a57
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ld e, b
    dec hl
    ld e, c
    sub l
    ld e, c
    rst $38
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld e, d
    call z, Call_000_3c5a
    ld e, e
    xor c
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    ld e, h
    adc b

jr_076_56be:
    ld e, h
    push af
    ld e, h
    ld h, d
    ld e, l
    db $d3
    ld e, l
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld e, [hl]
    sbc a
    ld e, [hl]
    cp $5e
    ld e, e
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $01ff
    ld bc, $0504
    dec bc
    inc c
    rlca
    rlca
    rst $38
    rlca
    ld b, $06
    ld b, $0d
    ld c, $0b
    ld b, $ff
    rla
    rlca
    rrca
    db $10
    ld de, $0718
    ld c, $ff
    ld [hl+], a
    ld b, $0c
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec c
    rst $38
    rlca
    inc hl
    ld c, $2c
    ld b, $24
    dec h
    ld h, $ff
    daa
    rlca
    dec l
    dec bc
    scf
    rlca
    inc l
    ld l, $ff
    cpl
    jr nc, jr_076_575d

    dec l
    ld b, $38
    dec bc
    ld b, c
    rst $38
    ld b, d
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    ld b, e
    ld b, h
    ld c, $ff
    ld [bc], a
    ld bc, $4501
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    inc bc
    nop
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed

jr_076_575d:
    db $e3
    push af
    add sp, -$1e
    pop hl
    jp $c5e3


    ldh [$f7], a
    ld l, l
    ld c, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld l, l
    dec b
    rst $38
    inc b
    ld bc, $0101
    nop
    nop
    nop
    inc bc
    rst $38
    ld [bc], a
    ld c, $0d
    ld b, $06
    ld b, $07
    rlca
    rst $38
    rlca
    inc c
    dec bc
    ld c, $07
    jr @+$08

    ld b, $ff
    ld c, l
    rlca
    rla
    ld b, $0b
    inc hl
    rlca
    dec c
    rst $38
    ld b, $52
    ld d, e
    ld d, h
    inc c
    ld b, $22
    dec bc
    rst $38
    dec l
    rlca
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld b, $2c
    rst $38
    ld c, $38
    ld b, $2d
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    rst $38
    inc l
    rlca
    scf
    ld c, $44
    ld b, e
    ld l, b
    ld l, c
    rst $38
    ld l, d
    ld l, e
    ld b, d
    ld b, c
    dec bc
    dec b
    nop
    nop
    ld a, a
    ld l, a
    ld b, [hl]
    ld [hl], b
    ld [hl], c
    ld bc, $0201
    nop
    nop
    nop
    ret


    dec c
    rst $38
    rst $38
    db $e3
    ld [c], a
    dec l
    rst $30
    xor $cc
    jp hl


    ld c, l
    ld c, l
    db $fd
    ld c, l
    ld sp, hl
    db $e4
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $01ff

Jump_076_57e5:
    ld bc, $0504
    dec bc
    inc c
    rlca
    rlca
    rst $38
    ld [$0a09], sp
    ld b, $0d
    ld c, $0b
    ld b, $ff
    rla
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $07
    ld c, $ff
    ld [hl+], a
    ld b, $0c
    dec e
    ld e, $1f
    jr nz, jr_076_5828

    rst $38
    rlca
    inc hl
    ld c, $2c
    ld b, $28
    add hl, hl
    ld a, [hl+]
    rst $38
    dec hl
    rlca
    dec l
    dec bc
    scf
    rlca
    inc l
    ld [hl-], a
    rst $38
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $06
    jr c, jr_076_582c

    ld b, c
    rst $38
    ld b, d
    dec a
    ld a, $18
    ccf

jr_076_5828:
    ld b, b
    ld b, h
    ld c, $ff

jr_076_582c:
    ld [bc], a
    ld bc, $4901
    ld c, d
    ld c, e
    ld c, h
    nop
    inc bc
    nop
    dec b
    nop
    nop
    nop
    sub a
    dec l
    dec l
    dec c
    rst $38
    ld [c], a
    dec l
    rst $38
    ldh [$f6], a
    and $0d
    nop
    db $eb
    ld [c], a
    ld sp, hl
    ldh [$f6], a
    rst $20
    db $ed
    db $e3
    push af
    db $e4
    call z, $e2e1
    pop hl
    call z, $eee3
    push bc
    ldh [$6d], a
    ld c, l
    ld c, l
    cp c
    pop hl
    ld c, l
    ld c, l
    ld l, l
    rst $38
    dec b
    inc b
    ld bc, $0101
    nop
    nop
    nop
    rst $38
    inc bc
    ld [bc], a
    ld c, $0d
    ld b, $06
    ld b, $07
    rst $38
    rlca
    rlca
    inc c
    dec bc
    ld c, $07
    jr jr_076_58cb

    rst $38
    ld c, a
    ld d, b
    ld d, c
    rla
    ld b, $0b
    inc hl
    rlca
    rst $38
    dec c
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    inc c
    ld b, $22
    rst $38
    dec bc
    dec l
    rlca
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld b, $ff
    inc l
    ld c, $38
    ld b, $2d
    dec c
    ld h, l
    ld h, [hl]
    rst $38
    ld h, a
    inc l
    rlca
    scf
    ld c, $44
    ld b, e
    dec l
    rst $38
    ld l, h
    ld l, l
    ld l, [hl]
    ld b, d
    ld b, c
    dec bc
    dec b
    nop
    rst $38
    nop
    ld l, a
    ld b, [hl]
    ld [hl], d
    ld [hl], e
    ld bc, $0201
    nop
    nop
    nop
    rlca
    dec c
    dec c
    dec l
    cp $e0
    ld a, [$fbe0]
    ldh [$f6], a
    jp hl


jr_076_58cb:
    add sp, -$1e
    ret nz

    push hl
    db $e3
    db $dd
    db $e3
    or $e7
    db $eb
    push hl
    or $e9
    ret c

    and $02
    nop
    ld a, [hl]
    rst $38
    pop hl
    ld bc, $0000
    ld [bc], a
    add hl, bc
    inc b
    rst $38
    ldh [rIE], a
    dec b
    ld b, $04
    inc b
    add hl, bc
    ld de, $0a0a
    rst $30
    ld a, [bc]
    dec bc
    inc c
    ei
    ldh [rNR11], a
    add hl, de
    inc b
    inc b
    rst $38
    ld [de], a
    inc de
    inc d
    dec d
    inc b
    inc b
    add hl, de
    ld hl, $0aff
    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    ld a, [bc]
    ld a, [bc]
    cp l
    ld hl, $e0d8
    ld [hl+], a
    inc hl
    inc h
    dec h
    ret c

    db $e3
    ld a, [hl+]
    rst $30
    dec hl
    inc l
    dec l
    ret c

    ldh [$38], a
    dec [hl]
    dec [hl]
    ld [hl-], a
    ccf
    inc sp
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    jr c, jr_076_5929

jr_076_5929:
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $e3
    ldh a, [$e0]
    or $e2
    add b
    rst $38
    pop hl
    db $ec
    ldh [$f7], a
    db $e4
    push hl
    db $e4
    db $dd
    db $e4
    ld [c], a
    and $d8
    ldh a, [rSC]
    db $dd
    nop
    rst $38
    db $e4
    ld [bc], a
    add hl, bc
    inc b
    rst $38
    ldh [rTAC], a
    ld [$04ff], sp
    inc b
    add hl, bc
    ld de, $0a0a
    dec c
    ld c, $ff
    rrca
    db $10
    ld a, [bc]
    ld a, [bc]
    ld de, $0419
    inc b
    rst $30
    ld d, $17
    jr @-$17

    ldh [rNR24], a
    ld hl, $0a0a
    ld a, a
    ld e, $1f
    jr nz, jr_076_597e

    ld a, [bc]
    ld a, [bc]
    ld hl, $e0d8
    rst $28
    ld h, $27
    jr z, jr_076_59a7

jr_076_597e:
    ret c

    db $e3
    ld l, $2f
    jr nc, @-$01

    ld sp, $e0d8
    jr c, jr_076_59be

    dec [hl]
    ld [hl], $37
    inc [hl]
    rrca
    dec [hl]
    dec [hl]
    dec [hl]
    jr c, jr_076_5993

jr_076_5993:
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    rst $38
    pop hl
    db $ec
    ldh [$80], a
    rst $30
    db $e4
    db $db
    ld [c], a

jr_076_59a7:
    or $e5
    ld [c], a
    ld [c], a
    ret c

    rst $20
    call nz, $d8e2
    and $02
    db $fd
    nop
    rst $38
    db $e4
    ld [bc], a
    add hl, bc
    inc b
    inc b
    inc b
    dec [hl]
    db $fd
    add hl, sp

jr_076_59be:
    ei
    ldh [$09], a
    ld de, $0a0a
    ld a, [hl-]
    dec sp
    rst $38
    inc a
    dec a
    ld a, [bc]
    ld a, [bc]
    ld de, $0419
    inc b
    rst $38
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc b
    inc b
    add hl, de
    ld hl, $0aff
    ld a, [bc]
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld a, [bc]
    ld a, [bc]
    db $dd
    ld hl, $e0d8
    ld d, b
    ld d, c
    ld d, d
    ret c

    db $e4
    ld d, a
    ld e, b
    ei
    ld e, c
    ld a, [bc]
    ret c

    ldh [$38], a
    dec [hl]
    dec [hl]
    ld e, l
    ld e, [hl]
    rra
    ld e, a
    dec [hl]
    dec [hl]
    dec [hl]
    jr c, jr_076_59fd

jr_076_59fd:
    nop
    nop
    rla
    dec c
    dec c
    dec l
    cp $e3
    dec l
    or $eb
    add sp, -$1e
    push hl
    pop hl
    ld h, b
    rst $38
    pop hl
    db $dd
    db $e3
    or $e5
    db $eb
    push hl
    ret c

    ld a, [c]
    ld [bc], a
    nop
    rst $38
    db $e4
    rst $30
    ld [bc], a
    add hl, bc
    inc b
    rst $38
    db $e4
    add hl, bc
    ld de, $0a0a
    rst $38
    ld a, $3f
    ld b, b
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld de, $df19
    inc b
    inc b
    ld b, l
    ld b, [hl]
    ld b, a
    rst $20
    ldh [rNR24], a
    ld hl, $0aff
    ld a, [bc]
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld a, [bc]
    ld a, [bc]
    cp l
    ld hl, $e0d8
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ret c

    db $e3
    ld e, d
    ei
    ld e, e
    ld e, h
    ret c

    pop hl
    jr c, jr_076_5a88

    dec [hl]
    ld [hl], $37
    rra
    inc [hl]
    dec [hl]
    dec [hl]
    dec [hl]
    jr c, jr_076_5a5d

jr_076_5a5d:
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a
    db $fc
    db $e3
    add h
    rst $28
    ldh [$fd], a
    pop hl
    dec l
    rst $28
    pop hl
    or $e6
    di
    push hl
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    adc $e3
    ld l, l
    ld l, l
    ld [bc], a
    ld bc, $0000
    db $fd
    ld bc, $e1fc

jr_076_5a88:
    ld [bc], a
    ld [$0405], sp
    inc b
    dec b
    cp $fc
    pop hl
    ld [$1413], sp
    db $10
    add hl, bc
    ld a, [bc]
    dec bc
    rst $38
    inc c
    db $10
    inc d
    inc de
    ld hl, $2322
    dec d
    cp a
    ld d, $17
    jr @+$25

    ld [hl+], a
    ld hl, $e0e2
    inc h
    rst $30
    dec h
    ld h, $27
    ld [c], a
    db $e3
    jr nc, jr_076_5ae4

    ld [hl-], a
    inc sp
    sbc $e2
    db $e3
    inc a
    dec a
    ld a, $3f
    ld [c], a
    ldh [rSC], a
    ld bc, $50ff
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld d, b
    ld bc, $0002
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a
    db $fc
    db $e3
    add h
    rst $28
    ldh [$fd], a
    pop hl
    dec l
    rst $28
    pop hl
    or $e6
    di
    push hl

jr_076_5ae4:
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    adc $e3
    ld l, l
    ld l, l
    ld [bc], a
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld [bc], a
    ld [$0405], sp
    ld b, $07
    rst $38
    dec b
    inc b
    inc b
    dec b
    ld [$1413], sp
    db $10
    rst $38
    dec c
    ld c, $0f
    db $10
    db $10
    inc d
    inc de
    ld hl, $22ff
    inc hl
    add hl, de
    ld a, [de]
    dec de
    inc e
    inc hl
    ld [hl+], a
    cp l
    ld hl, $e0e2
    jr z, jr_076_5b45

    ld a, [hl+]
    dec hl
    ld [c], a
    db $e3
    inc [hl]
    rst $30
    dec [hl]
    ld [hl], $37
    ld [c], a
    db $e3
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    cp $e2
    ldh [rSC], a
    ld bc, $4850
    ld c, h
    ld c, d
    ld c, e
    rlca
    ld d, b
    ld bc, $0002
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd

jr_076_5b45:
    ld [c], a
    db $fc
    db $e3
    add h
    rst $28
    ldh [$fd], a
    pop hl
    dec l
    rst $28
    pop hl
    or $e6
    di
    push hl
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    adc $e3
    ld l, l
    ld l, l
    ld [bc], a
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld [bc], a
    ld [$0405], sp
    inc b
    dec b
    cp $fc
    pop hl
    ld [$1413], sp
    db $10
    db $10
    ld de, $ff12
    db $10
    db $10
    inc d
    inc de
    ld hl, $2322
    dec e
    cp a
    ld e, $1f
    jr nz, @+$25

    ld [hl+], a
    ld hl, $e0e2
    inc l
    rst $30
    dec l
    ld l, $2f
    ld [c], a
    db $e3
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    sbc $e2
    db $e3
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [c], a
    ldh [rSC], a
    ld bc, $50ff
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, e
    ld d, b
    ld bc, $0002
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a
    db $fc
    db $e3
    nop
    rst $28
    ldh [$ea], a
    db $e3
    push hl
    db $e3
    ld [$e2e1], a
    db $e3
    rst $20
    push hl
    rst $30
    db $e3
    ld [c], a
    push hl
    or $c4
    ldh [rKEY1], a
    ld c, l
    cp c
    db $e3
    ld l, l
    ld l, l
    ld [bc], a
    ld bc, $00f7
    nop
    ld bc, $e1fc
    ld [bc], a
    ld [$0405], sp
    ei
    inc b
    dec b
    db $fc
    pop hl
    ld [$1413], sp
    db $10
    db $10
    db $fd
    inc d
    db $fc
    pop hl
    inc de
    ld hl, $2322
    inc hl
    ld d, c
    rst $18
    ld d, d
    ld d, e
    inc hl
    ld [hl+], a
    ld hl, $e0e2
    ld d, h
    ld d, l
    ei
    ld d, [hl]
    ld d, a
    ld [c], a
    db $e3
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    cp $e2
    db $e3
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld [hl+], a
    ld hl, $ff02
    ld bc, $5050
    ld h, c
    ld h, d
    ld h, e
    ld d, b
    ld bc, $0201
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a
    db $fc
    db $e3
    add h
    rst $28
    ldh [$fd], a
    pop hl
    dec l
    rst $28
    pop hl
    or $e6
    di
    push hl
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    adc $e3
    ld l, l
    ld l, l
    ld a, [hl+]
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld a, [hl+]
    inc l
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    cp $fc
    pop hl
    inc l
    jr nc, @+$33

    rlca
    inc b
    dec b
    ld b, $ff
    rlca
    rlca
    ld sp, $3630
    scf
    jr c, jr_076_5c67

    cp a
    dec bc
    inc c
    dec c
    jr c, jr_076_5c9a

    ld [hl], $e2
    ldh [rNR14], a

jr_076_5c67:
    rst $30
    dec d
    ld d, $17
    ld [c], a
    db $e3
    ld e, $1f
    jr nz, jr_076_5c92

    sbc $e2
    db $e3
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [c], a
    ldh [$2a], a
    ld bc, $41ff
    ld h, $27
    jr z, @+$2b

    ld b, c
    ld bc, $002a
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a

jr_076_5c92:
    db $fc
    db $e3
    add h
    rst $28
    ldh [$fd], a
    pop hl
    dec l

jr_076_5c9a:
    rst $28
    pop hl
    or $e6
    di
    push hl
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    adc $e3
    ld l, l
    ld l, l
    ld a, [hl+]
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld a, [hl+]
    inc l
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    cp $fc
    pop hl
    inc l
    jr nc, @+$33

    rlca
    rlca
    ld [$ff09], sp
    rlca
    rlca
    ld sp, $3630
    scf
    jr c, jr_076_5cd8

    cp a
    rrca
    db $10
    ld de, $3738
    ld [hl], $e2
    ldh [rNR23], a
    rst $30
    add hl, de
    ld a, [de]
    dec de

jr_076_5cd8:
    ld [c], a
    db $e3
    ld e, $1f
    jr nz, jr_076_5cff

    sbc $e2
    db $e3
    ld [hl+], a
    inc hl

Call_076_5ce3:
    inc h
    dec h
    ld [c], a
    ldh [$2a], a
    ld bc, $41ff
    ld h, $27
    jr z, @+$2b

    ld b, c
    ld bc, $002a
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a

jr_076_5cff:
    db $fc
    db $e3
    add h
    rst $28
    ldh [$fd], a
    pop hl
    dec l
    rst $28
    pop hl
    or $e6
    di
    push hl
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    adc $e3
    ld l, l
    ld l, l
    ld a, [hl+]
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld a, [hl+]
    inc l
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    cp $fc
    pop hl
    inc l
    jr nc, @+$33

    rlca
    inc b
    dec b
    ld b, $ff
    rlca
    rlca
    ld sp, $3630
    scf
    jr c, jr_076_5d41

    cp a
    ld [de], a
    inc de
    dec c
    jr c, jr_076_5d74

    ld [hl], $e2
    ldh [rNR14], a

jr_076_5d41:
    rst $30
    dec d
    ld d, $17
    ld [c], a
    db $e3
    ld e, $1f
    jr nz, jr_076_5d6c

    sbc $e2
    db $e3
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [c], a
    ldh [$2a], a
    ld bc, $41ff
    ld h, $27
    jr z, jr_076_5d85

    ld b, c
    ld bc, $002a
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a

jr_076_5d6c:
    db $fc
    db $e3
    nop
    rst $28
    ldh [$f0], a
    db $e3
    push hl

jr_076_5d74:
    ld [c], a
    rst $38
    db $e3
    ld a, [c]

jr_076_5d78:
    db $e3
    ld [c], a
    push hl
    add sp, -$1d
    or $e7
    ei
    ld c, l
    ld c, l
    db $ec
    db $e3
    ld l, l

jr_076_5d85:
    ld l, l
    ld a, [hl+]
    ld bc, $fb00
    nop
    ld bc, $e1fc
    ld a, [hl+]
    inc l
    inc bc
    ld [bc], a
    ld [bc], a
    db $fd
    inc bc
    db $fc
    pop hl
    inc l

jr_076_5d98:
    jr nc, @+$33

    rlca
    rlca
    add hl, bc
    rst $38
    ld [$0707], sp
    ld sp, $3630
    scf
    jr c, jr_076_5e26

    ld de, $0f10
    ld c, $38
    scf
    ld [hl], $e2
    ldh [$ef], a
    dec de
    inc e
    dec e
    jr jr_076_5d98

    db $e3
    ld e, $1f
    jr nz, jr_076_5d78

    ld hl, $e3e2
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [c], a
    ldh [$2a], a
    rst $38
    ld bc, $2641
    daa
    jr z, jr_076_5df5

    ld b, c
    ld bc, $2a01
    nop
    nop
    nop
    cpl
    dec c
    dec c
    dec l
    dec c
    db $fc
    pop hl
    dec l
    db $fd
    ld [c], a
    db $fc
    db $e3
    add h
    rst $28
    ldh [$fd], a
    pop hl
    dec l
    rst $28
    pop hl
    or $e6
    di
    push hl
    ld [c], a
    ld a, [c]
    ld c, l
    db $fd
    ld c, l
    adc $e3
    ld l, l
    ld l, l
    ld a, [hl+]

jr_076_5df5:
    ld bc, $0000
    db $fd
    ld bc, $e1fc
    ld a, [hl+]
    inc l
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    cp $fc
    pop hl
    inc l
    jr nc, @+$33

    rlca
    rlca
    dec l
    ld l, $ff
    cpl
    rlca
    ld sp, $3630
    scf
    jr c, jr_076_5e47

    cp a
    inc sp
    inc [hl]
    dec [hl]
    jr c, @+$39

    ld [hl], $e2
    ldh [$39], a
    rst $30
    ld a, [hl-]
    dec sp
    inc a
    ld [c], a
    db $e3
    dec a

jr_076_5e26:
    ld a, $3f
    ld b, b
    sbc $e2
    db $e3
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [c], a
    ldh [$2a], a
    ld bc, $41ff
    ld h, $27
    jr z, jr_076_5e63

    ld b, c
    ld bc, $002a
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6

jr_076_5e47:
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    add hl, bc
    rlca
    ld [$0605], sp
    db $fc
    pop hl

jr_076_5e63:
    rst $38
    inc a
    ld de, $0d12
    ld a, [bc]
    dec bc
    inc c
    dec c
    rst $38
    dec c
    dec a
    ld a, $09
    rlca
    dec de
    inc de
    inc d
    rst $18
    dec d
    ld d, $2f
    ld b, $3c
    ld [c], a
    ldh [rNR32], a
    dec e
    ld a, e
    ld e, $1f
    ld [c], a
    db $e3
    inc h
    dec h
    ld h, $27
    ld [c], a
    db $e3
    rst $28
    inc l
    dec l
    ld l, $1b
    ld [c], a
    ldh [$03], a
    ld bc, $7f3b
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $66
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    add hl, bc
    rlca
    ld [$0605], sp
    db $fc
    pop hl
    rst $38
    inc a
    ld de, $0d12
    dec c
    ld c, $0f
    db $10
    rst $38
    dec c
    dec a
    ld a, $09
    rlca
    dec de
    rla
    jr @-$1f

    add hl, de
    ld a, [de]
    cpl
    ld b, $3c
    ld [c], a
    ldh [rNR41], a
    ld hl, $227b
    inc hl
    ld [c], a
    db $e3
    jr z, jr_076_5f0e

    ld a, [hl+]
    dec hl
    ld [c], a
    db $e3
    rst $28
    cpl
    jr nc, @+$33

    ld [hl-], a
    ld [c], a
    ldh [$03], a
    ld bc, $7f3b
    scf
    jr c, jr_076_5f30

    ld a, [hl-]
    ld h, [hl]
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af

jr_076_5f0e:
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    add hl, bc
    rlca
    ld [$0605], sp
    db $fc
    pop hl
    cp a
    inc a
    ld de, $0d12
    dec c
    dec a
    db $fc
    pop hl
    ld a, $ff
    add hl, bc
    rlca
    dec de
    ccf

jr_076_5f30:
    ld b, b
    ld b, c
    ld b, d
    cpl
    ld a, e
    ld b, $3c
    ld [c], a
    ldh [rDMA], a
    ld b, a
    ld c, b
    ld c, c
    ld [c], a
    db $e3
    rst $28
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld [c], a
    db $e3
    ld d, [hl]
    ld d, a
    ld e, b
    db $fd
    ld e, c
    ld [c], a
    ldh [$03], a
    ld bc, $5e3b
    ld e, a
    ld h, b
    rrca
    ld h, c
    ld h, [hl]
    ld bc, $0003
    nop
    nop
    ld h, l
    dec c
    rst $38
    push hl
    dec l
    or $e6
    rst $30
    add sp, $4d
    ld c, l
    ld hl, sp-$15
    db $fc
    ld [c], a
    push af
    ret c

    and $6d
    inc bc
    ld bc, $0002
    ld bc, $fc7e
    pop hl
    inc bc
    add hl, bc
    rlca
    ld [$0605], sp
    db $fc
    pop hl
    cp a
    inc a
    ld de, $0d12
    dec c
    dec a
    db $fc
    pop hl
    ld a, $ff
    add hl, bc
    rlca
    dec de
    cpl
    ld b, e
    ld b, h
    ld b, l
    cpl
    ld a, e
    ld b, $3c
    ld [c], a
    ldh [rWY], a
    ld c, e
    ld c, h
    ld c, l
    ld [c], a
    db $e3
    rst $28
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld [c], a
    db $e3
    ld e, d
    ld e, e
    ld e, h
    db $fd
    ld e, l
    ld [c], a
    ldh [$03], a
    ld bc, $623b
    ld h, e
    ld h, h
    rrca
    ld h, l
    ld h, [hl]
    ld bc, $0003
    nop
    nop
    ret nc

    ld e, a
    ldh a, [$64]
    nop
    ld l, d

    db $70, $6e

    ldh a, [$71]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
    rst $38
    rst $38
    add b
    rst $38
    ld_long $ffff, a
    rst $38
    nop
    dec d
    ld a, a
    cp $e0
    ccf
    cp $e0
    rra
    cp $e0
    ldh a, [$e1]
    cp $e9
    cp $d2
    db $eb
    add b
    add b
    rrca
    nop
    rrca
    nop
    rlca
    jp z, $e0fe

    inc bc
    cp $e0
    ld bc, $e0fe
    jp nc, $ffeb

    nop
    ldh a, [rIE]
    db $ed
    or d
    pop hl
    and b
    jp hl


    add d
    pop hl
    ret nz

    add b
    ldh [$80], a
    rst $38
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    add b
    cp $80
    db $fd
    rst $38
    cp $ec
    nop
    nop
    add b
    nop
    ret nz

    nop
    rst $38
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    adc a
    cp $00
    rst $38
    ld bc, $eafe
    ld b, c
    ldh [$ce], a
    db $e3
    cp a

jr_076_6034:
    xor a
    add b
    adc a
    add b
    add e
    dec [hl]
    ldh [$3f], a
    ld [hl], b
    ldh [$03], a
    nop
    sub b
    db $ec
    ld a, $e1
    add sp, -$13
    ld [hl], d
    db $e4
    ld de, $48e1
    ld [c], a
    ld b, b
    pop hl
    jr c, @-$1d

    add b
    jr nc, jr_076_6034

    ld [$00e1], sp
    pop hl
    ld hl, sp-$3f
    ccf
    pop hl
    ldh [$e9], a
    add b
    pop hl
    db $fd
    rst $38
    ld bc, $01f9
    pop af
    ld bc, $01e1
    pop bc
    xor a
    ld bc, $0181
    rst $38
    ld l, h
    ldh [$fc], a
    ld h, h
    ldh [$f0], a
    ld [$e05c], a
    ret nz

    ld d, h
    ldh [rSB], a
    rst $38
    db $e4
    inc bc
    ld bc, $530f
    ld bc, $543f
    ldh [rIE], a
    push bc
    inc bc
    ret c

    ret nz

    ccf
    or [hl]
    ret nz

    db $fc
    ld hl, sp-$1b
    ldh [$cf], a
    rrca
    rrca
    ld d, $1f
    ld h, a
    ld a, l
    cp [hl]
    sub d
    ret z

    add b
    ld a, a
    ret nz

    ccf
    ldh [$bf], a
    rst $00
    ld bc, $01df
    ld [bc], a
    inc bc
    dec b
    rlca
    ld [hl], d
    ret z

    ldh a, [$cf]
    rst $30
    ld hl, sp-$39
    ld a, [hl]
    ld h, d
    ret nz

    rlca
    ld hl, sp+$1f
    ldh [$fd], a
    ld a, a
    rst $00
    pop bc
    pop bc
    rst $38
    rst $38
    ld a, a
    ld a, h
    ld a, h
    rst $38
    add a
    rst $38
    rrca
    ei
    ld c, $fb
    rrca
    ei
    di
    rrca
    ld hl, sp-$1d
    pop bc
    ld a, a
    pop bc
    add b
    add b
    ld a, h
    db $fc
    rst $10
    ld b, d
    cp $f1
    ldh [$e0], a
    ld sp, hl
    ld l, a
    ret nz

    dec e
    dec e
    rst $38
    ld a, $23
    ld a, a
    ld c, e
    rst $38
    sbc a
    rst $38
    xor l
    rst $38
    rst $38
    sbc c
    rst $38
    db $eb
    add a
    db $fd
    rlca
    db $fc
    rst $38
    ld c, $ff
    jr nc, @+$01

    ld b, a
    rst $38
    sbc a
    ld hl, sp-$01
    rst $38
    ldh a, [rIE]
    xor [hl]
    cp a
    ldh a, [rIE]
    ld hl, sp-$11
    rlca
    db $fc
    rst $38
    db $fc
    db $ed
    ldh [$50], a
    rst $38
    ld a, b
    ei
    rst $38
    inc e
    ld [bc], a
    jp nz, $fe01

    ccf
    cp $43
    rst $38
    rst $38
    adc a
    rst $38
    add e
    rst $38
    add a
    rst $38
    ld a, $ff
    pop hl
    rst $38
    ldh [rIE], a
    ldh [$bf], a
    ldh a, [$bf]
    rst $30
    ld hl, sp-$71
    rst $38
    ld [hl], e

jr_076_612f:
    ret nz

    nop
    nop
    ldh [$e0], a
    rst $28
    jr jr_076_612f

    ld b, $fe
    ld l, c
    pop bc
    add e
    rst $38
    cp $ff
    cp $0d
    rrca
    rra
    rra
    jr nz, jr_076_6185

    ccf
    rst $38
    ccf
    rrca
    inc c
    rrca
    ld a, [bc]
    rra
    ld e, $3f
    rst $38
    jr c, @-$3d

    ld a, a
    ldh [$3f], a
    ld [hl], b
    rst $38
    inc c
    rst $38
    rst $38
    ld [c], a
    rst $38
    ld sp, hl
    rra
    rst $38
    rrca
    rst $38
    db $fd
    ld [hl], l
    or d
    and b
    cp b
    ld b, a
    db $fc
    db $d3
    cp $f9
    ld c, e
    rst $38
    or l
    add c
    ldh [$d7], a
    and d
    xor h
    ld [hl+], a
    ret nz

    cp $84
    ldh [rIE], a
    sbc h
    rst $38
    xor h
    rst $38
    sbc b
    rst $38
    adc b
    rst $38
    rst $30
    ld b, c
    rst $38

jr_076_6185:
    ld sp, hl
    dec sp
    ldh [$67], a
    rst $38
    inc sp
    rst $38
    rst $18
    ld a, d
    rst $38
    rlca
    rst $38
    add hl, bc
    db $e4
    and b
    ret nz

    add hl, bc
    rst $38
    rst $38
    pop af
    rst $38
    jp nc, $9afe

Call_076_619d:
    cp $c2
    cp $fe
    ldh [$fc], a
    cp h
    db $fc
    add h
    ld a, a
    ld b, a
    ld a, a
    rst $38
    ld h, l
    ccf
    ld sp, $213f
    ccf
    jr nz, @+$21

    ld sp, hl
    db $10
    cp $e1
    ld e, [hl]
    ldh [$cc], a
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38

jr_076_61be:
    rst $38
    and a
    rst $38
    rst $00
    rst $38
    db $d3
    rst $38
    ret nc

    db $eb
    rst $38
    ld [hl+], a
    adc $a2
    ld h, e
    ld l, $e0
    db $fc
    rst $38
    add sp, -$05
    rst $38
    ld [$aa32], sp
    inc a
    jp $f07e


    sbc a
    cp [hl]
    jr z, jr_076_61be

    ld c, e
    rst $38
    ld e, c
    rst $38
    ld b, e
    cp $e0
    ld hl, $fefe
    ldh [$7f], a
    rst $38
    ccf
    rst $38
    add hl, sp
    rst $38
    dec [hl]
    rst $38
    rst $38
    add hl, de
    rst $38
    ld de, $82fe
    rst $38
    sbc a
    ld a, [c]
    ccf
    xor e
    add b
    ld [hl], b
    and b
    dec l
    and a
    inc a
    inc a
    ld a, [hl]
    ld b, d
    db $eb
    ld a, a
    ld b, h
    ld c, [hl]
    and d
    add $0d
    ldh [$3f], a
    rra
    rla
    rst $38
    rra
    db $10
    db $e3
    cp $a7
    cp $cf
    db $fc
    db $eb
    rst $20
    db $fc
    add $c0
    ld [$e2fe], sp
    ld [bc], a
    rst $38
    inc b
    db $fd
    ld a, a
    cp $e0
    ccf
    inc c
    ccf
    ld [de], a
    rra
    db $10
    cp a
    ccf
    jr nz, @+$01

    ld e, b
    rst $38
    inc l
    cp $e0
    inc e
    rst $38
    ei
    ld c, $fd
    rrca
    db $f4
    rra
    db $e3
    rst $38
    cp $31
    ldh [rIE], a
    rst $38
    ld a, e
    rst $38
    rlca
    db $fc
    rrca
    rst $38
    ld hl, sp+$1f
    add sp, -$01
    cp c
    rst $38
    db $fc
    call nz, $f8ff
    ret z

    ld sp, hl
    ld [$10f1], sp
    db $e3
    and b
    rst $28
    jp $87c0


    add b
    ld [hl], b
    and b
    add hl, bc
    rrca
    add hl, bc
    rst $38
    adc [hl]
    rrca
    adc b
    rrca
    call nz, $c407
    rlca
    rst $38
    ld [c], a
    inc bc
    pop hl
    ld bc, $f8bf
    ccf
    db $fc
    rst $10
    daa
    cp $11
    di
    ret nz

    rlca
    pop hl
    ret nz

    add c
    rst $38
    cp $b6
    ldh [rNR34], a
    jp hl


    ccf
    ret


    rst $38
    pop de
    rst $38
    rst $38
    ld l, c
    rst $38
    dec bc
    cp $87
    db $fc
    pop hl
    ld a, a
    rst $38
    and c
    rst $38
    sub c
    rst $38
    reti


    ld a, a
    pop af
    ld a, a
    rst $38
    db $db
    ld a, a
    call z, $f87c
    jr c, @+$01

    inc hl
    rst $38
    rst $38
    inc de
    ld a, a
    db $10
    ld a, a
    ld [$053f], sp
    rst $38
    ccf
    inc bc
    rra
    ld bc, $001f
    ld_long a, $ff1f
    db $f4
    ccf
    db $f4
    ccf
    ld hl, sp+$3f
    ret nc

    ld a, a
    rst $38
    or b
    rst $38
    jr z, @+$01

    add $ff
    ld b, b
    ret nz

    rst $30
    jr nz, @-$1e

    ld hl, $e0fe
    inc sp
    ldh a, [$5b]
    ld hl, sp-$01
    rra
    ld hl, sp+$3f
    db $e4
    cp $86
    rst $38
    add l
    rst $38
    rst $38
    adc c
    rst $38
    sbc d
    rst $38
    adc [hl]
    rst $38
    ret c

    cp $e9
    and b
    inc e
    ccf
    jr c, jr_076_634f

    ld a, b
    sub a
    db $fc
    rst $38
    sub e
    rst $38
    adc e
    rst $38
    sub [hl]
    rst $38
    ret nc

    ld a, a
    rst $38
    pop hl
    ccf
    rst $38
    sub b
    rst $38
    sub b
    ld a, [hl]
    ldh a, [rIE]
    ld e, $f0
    inc a
    ldh [$3c], a
    ldh [$78], a
    ret nz

    rst $38
    ld hl, sp-$80
    ccf
    jr nz, jr_076_6353

    ld hl, $1f1f
    dec l
    rlca
    db $10
    and b
    inc bc
    ld [bc], a
    cp $e1
    pop bc
    ld l, h
    ldh [rSTAT], a
    and h
    cp $72
    and b
    rst $38
    nop
    ld c, $fe
    ld [$88f8], sp
    ei
    ld hl, sp+$08
    cp $e0
    db $10
    ldh a, [$f8]
    add sp, -$08
    dec hl
    ld [$36f0], sp
    add d
    ld sp, hl
    cp h
    add b
    db $fc
    inc [hl]
    add d
    rrca
    add e
    call c, Call_076_619d
    sub [hl]
    ld h, e
    rst $00
    cp $07
    ld l, [hl]
    and b

jr_076_634f:
    rrca
    rst $38
    ei
    rst $38

jr_076_6353:
    ld hl, sp-$6a
    ldh [rP1], a
    rst $38
    ld b, b
    ldh a, [rSVBK]
    rst $38
    ldh a, [$80]
    ldh [rP1], a
    ldh [$80], a
    ret nz

    ld b, b
    cp $fe
    db $e3
    ldh a, [$7f]
    ldh a, [$1f]
    pop af
    rra
    ldh a, [$fe]
    cp $e0
    ld hl, sp+$0f
    rst $38
    rla
    rst $38
    db $10
    rst $38
    cp a
    call nz, $84ff
    rst $38
    ld hl, sp-$61
    nop
    add b
    rst $38
    dec e
    ld b, b
    cp $e2
    ld c, $f1
    ld bc, $e1a0
    adc b

jr_076_638c:
    ret nz

    cp $e2
    rst $38
    db $e3
    ld a, a
    and b
    cp a
    jr nz, @+$41

    ldh a, [rIE]
    dec sp
    rst $38
    rra
    ret nz

    and b
    nop
    rst $38
    ld [bc], a
    add b
    pop hl
    or b
    ld [c], a
    ld sp, hl
    add b
    ld d, d
    add b
    dec b
    ld h, b
    inc bc
    ld [bc], a
    add e
    ld [bc], a
    pop bc
    ld c, d
    inc [hl]
    add b
    pop af
    inc l
    add b
    db $fd
    jp z, $12e1

    ld h, c
    ld [$a092], sp
    rst $20
    ld [bc], a
    rst $38
    inc bc
    sub h
    ld h, c
    ld b, l
    pop hl
    db $fd
    add h
    db $fd
    pop hl
    inc b
    jr c, jr_076_638c

    add [hl]
    ld h, c
    xor a
    add b
    db $10
    adc d
    add b
    rst $38
    ld bc, $7f1b
    ld bc, $41d6
    rrca
    ld bc, $c3fc
    inc a
    and d
    ld a, [hl-]
    ld h, c
    ld a, [$6558]
    adc b
    xor d
    add b
    and b
    rst $38
    and e
    cp $1f
    rst $38
    ld a, [c]
    rra
    ld hl, sp+$1f
    rst $30
    rra
    ldh [rNR41], a
    rst $18
    pop hl
    jr nz, @-$1b

    ld h, b
    sbc a
    sbc h
    add b
    inc bc
    cp $f8
    cp $e1
    jr nz, jr_076_6470

    ld [hl+], a
    ld h, b
    db $10
    rst $38
    db $10
    ld a, a
    ld hl, $7fef
    jr nz, jr_076_648f

    ld b, b
    cp d
    db $e4
    ld b, b
    cp $40
    pop de
    db $fc
    db $e4
    ld b, b
    ld a, [$4cc0]
    pop hl
    ld b, b
    or d
    and c
    ccf
    ld b, $6d
    add hl, de
    sbc h
    add b
    ld b, b
    ld a, a
    cp $e1
    rst $38
    ld de, $80aa
    rst $38
    dec b
    db $fd
    push bc
    ld a, b
    ld hl, sp+$48
    ld hl, sp+$18
    sbc $9f
    ret nz

    add b
    add b
    add c
    add b
    ld [hl], $61
    adc a
    add b
    xor $ec
    jp $023f


    rrca
    ret z

    ld h, b
    ld [bc], a
    inc bc
    inc b
    rst $18
    rlca
    rlca
    rlca
    inc b
    rlca
    ld [hl+], a
    ld b, b
    ld a, b
    add a
    pop af
    cp $27
    ld [c], a
    rla
    ld b, b
    pop bc
    ld b, c
    rst $38
    add e
    db $fc
    adc a
    rst $18
    ldh a, [$bf]
    ld h, b
    ld a, a
    ld a, b
    or a
    add b
    ld a, b
    ccf
    cp $f1

jr_076_6470:
    ldh [$80], a
    ld l, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp-$04
    jp nz, $9b60

    ret nz

    rst $38
    rst $38
    jp $f102


    ld bc, $57a6
    pop hl
    db $fc
    rlca
    ld e, h
    and b
    ret nz

    db $e3
    db $fc
    ret nz

    jp hl


jr_076_648f:
    ld hl, sp-$01
    sbc a
    or $87
    db $e3
    add c
    rst $20
    nop
    call z, Call_000_00eb
    ret nc

    ld d, [hl]
    ld b, b
    rst $38
    cp $60
    ld [bc], a
    cp $fc
    db $fd
    db $fc
    and b
    ld b, a
    ccf
    ld bc, $070e
    ld [$ee0f], sp
    ld h, l
    add c
    rrca
    rrca
    ld [$c029], sp
    rst $38
    pop bc
    ccf
    rst $38
    pop af
    rrca
    db $fd
    rlca
    cp $1f
    cp $e3
    scf
    cp $1d
    db $fc
    sub d
    jr nz, jr_076_6548

    ret nz

    adc [hl]
    add c
    sbc h
    dec h
    rst $38
    rst $38
    add hl, de
    ld sp, hl
    ld [hl], c
    pop hl
    cp c
    add c
    jr jr_076_64e2

    or b
    ldh [$f4], a
    ld [de], a
    ld b, c
    rst $38
    nop
    nop
    nop
    nop

jr_076_64e2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
    jp nz, $e200

    nop
    ldh a, [$fe]
    ldh [$e0], a
    nop
    rst $38
    pop hl
    nop
    rst $00
    nop
    rst $08
    nop
    ld b, e
    nop
    rst $30
    ld b, a
    nop
    rrca
    cp $e0
    rlca
    nop
    add a
    nop
    rst $28
    db $e3
    nop
    di
    inc bc
    ldh [$e9], a
    rst $38
    ld hl, sp-$19
    db $fd
    cp [hl]
    ret nc

    db $eb
    rst $28
    ldh [rIE], a
    nop
    rst $38
    nop
    ld [hl], l
    ld a, a
    cp $e0
    ccf
    cp $e0
    rra
    nop
    ld b, c
    ld a, [c]
    ldh [rIE], a
    rst $38
    rrca
    ld hl, sp+$3f
    ld hl, sp+$7f
    cp b
    rst $28
    cp a
    cp h
    rst $28
    cp $e3
    rst $38
    rst $38
    ldh [$e0], a
    add b
    rst $18
    ld a, a
    ld hl, sp+$07
    cp $01
    rst $10
    pop hl

jr_076_6548:
    rst $38
    ldh [$f6], a
    ldh a, [$e1]
    nop
    cp $fe
    ldh [$fc], a
    add b
    ld a, h
    ret nz

    rst $28
    ld a, b
    ret nz

    jp nz, $c0c0

    add sp, $01
    rra
    ld bc, $41fd
    reti


    db $e3
    rra
    ldh a, [$7f]
    ldh a, [rIE]
    ld [hl], b
    rst $18
    rst $18
    ld a, b
    rst $18
    db $fc
    rst $00
    and b
    db $e3
    rst $38
    ldh a, [$c7]
    rrca
    db $fc
    inc bc
    cp [hl]
    ld [c], a
    ret nz

    and $fe
    ldh [$f8], a
    add b
    rst $38
    add d
    add b
    rst $38
    jr @+$01

    inc h
    ld a, a
    inc h
    rst $38
    ld a, a
    ld [de], a
    ccf
    add hl, hl
    ccf
    daa
    ld a, a
    ld d, h
    rst $38
    ld a, a
    ld l, b
    db $fc
    rrca
    ldh a, [$1f]
    pop hl
    ccf
    rst $38
    rst $20
    ccf
    db $eb
    rst $38
    rst $38
    ld a, $ff
    ld e, c
    rst $38
    cp a
    cp d
    pop af
    cp a
    ld hl, sp-$71
    db $fc
    rst $38
    rst $38
    adc a
    rst $38
    cp $ff
    rst $38
    ld d, e
    rst $38
    adc h
    ei
    rst $38
    ld d, d
    ld [hl], d
    ldh [$c0], a
    ld a, $e0
    ld a, $e0
    rst $38
    cp h
    ldh [$fc], a
    ret nz

    ld hl, sp-$40
    ld [c], a
    ldh [rIE], a
    rst $38
    ld c, $f3
    ld a, $c3
    ld a, [hl]
    add a
    rst $38
    rst $38
    sbc [hl]
    rst $38
    xor a
    rst $38
    rst $38
    ld a, c
    rst $38
    ld h, [hl]
    rst $38
    sbc a
    ld hl, sp-$39
    cp $e1

Call_076_65e0:
    ccf
    ldh a, [rIE]
    rst $38
    inc a
    rst $38
    ld_long a, $ffff
    ld c, a
    rst $38
    inc sp
    or $50
    db $e4
    add b
    db $fc
    cp $e0
    ld hl, sp+$00
    add d
    nop
    rst $38
    ld b, e
    inc bc
    ld b, h
    rlca
    rra
    rra
    ccf
    ld h, $ff
    ld a, a
    ld h, l
    rst $38
    ld e, c
    rst $38
    xor $ff
    sbc h
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $38
    ld d, a
    rst $38
    ld hl, sp-$01
    and h
    rst $38
    ld b, b
    rst $28
    ld a, a
    rst $38
    rst $38
    rst $18
    sub c
    ldh [$0e], a
    rst $38
    adc l
    rst $38
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld h, b
    jp nz, $ff80

    ld [c], a
    ret nz

    ldh a, [$c0]
    ldh a, [rLCDC]
    ldh [rLCDC], a
    rst $38
    pop hl
    ld b, b
    rst $00
    ld b, b
    rst $08
    add b
    ld b, e
    ld bc, $47ff
    rlca
    ld [$0f0f], sp
    rlca
    rlca
    ld bc, $87ff
    nop
    di
    db $10
    ei
    ld [$ffff], sp
    xor a
    add b
    rst $38
    rrca
    rst $38
    ret nz

    ldh [$e6], a
    ld a, a
    ldh [$f0], a
    rst $30
    rst $38
    ld c, b
    pop bc
    call $ffc0
    cp a
    rst $38
    rra
    rst $38
    rst $38
    inc e
    rst $38
    ld a, [de]
    rst $38
    inc c
    rst $38
    ld [$c0fe], sp
    ldh [rP1], a
    ldh a, [$80]
    ldh a, [$80]
    ldh [$80], a
    rst $38
    pop hl
    add b
    rst $00
    add b
    rst $08
    add b
    ld a, a
    ld d, e
    rst $38
    ld a, a
    jr nz, @+$21

    db $10
    rrca
    inc c
    rrca
    ld [$87ff], sp
    inc b
    rst $20
    inc b
    di
    ld [bc], a
    rst $38
    jp z, $ffff

    jp c, Jump_076_46ff

    rst $38
    ld b, l
    rst $38
    ld l, a
    db $eb
    rst $38
    ccf
    jp z, Jump_000_0ce0

    ld a, [c]
    ldh [$fa], a
    rst $38
    adc e
    di
    rst $38
    dec b
    dec c
    ldh [rPCM12], a
    pop hl
    adc c
    ld a, [c]
    sub b
    ld a, [c]
    rst $38
    ret nc

    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh [$a0], a
    pop hl
    call Call_000_20c0
    call nz, Call_000_0f01
    cp $e0
    add b
    ldh [$03], a
    rst $20
    rst $38
    inc b
    rst $30
    inc [hl]
    rst $38
    jp hl


    rst $38
    dec hl
    rst $38
    db $dd
    ld l, e
    sub h
    ldh [rNR14], a
    rst $38
    cp [hl]
    ld b, l
    ldh [$9f], a
    rst $38
    ld a, a
    ld c, e
    rst $38
    ld l, d
    rst $38
    db $eb
    rst $38
    inc l
    ldh a, [$e0]
    dec [hl]
    ld a, $42
    ret nz

    ld a, h
    ld b, b
    ldh [rLCDC], a
    ldh a, [$fe]
    ldh [rLCDC], a
    ldh [$bd], a
    add b
    ldh [$a1], a
    rst $38
    ld c, b
    rst $38
    jr c, jr_076_6723

    ldh [rSB], a
    cp $80
    ret nz

    ld hl, sp-$01
    ccf
    add e
    inc bc
    rst $38
    ld b, b
    rst $38
    rst $38
    db $e3
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    adc b
    rst $38
    ld a, a
    ld b, h
    ccf
    ld h, $dd
    rst $18
    rst $38
    rst $20
    rst $38
    rst $38
    add $ff
    rst $08
    db $fc
    adc a
    db $fc

jr_076_6723:
    rrca
    sbc a
    db $f4
    rra
    db $ec
    ccf
    ret


    ld hl, $fee1
    and c
    ret nz

    rst $38
    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    dec c
    db $fc
    cp $ec
    ret nz

    nop
    rst $38
    ld bc, $e0fe
    db $fc
    ld a, h
    rst $18
    rst $38
    rrca
    ei
    inc bc
    add d
    ld [c], a
    and b
    rst $38
    add c
    rst $38
    rst $38
    rst $00
    rst $38
    rst $38
    ccf
    cpl
    ccf
    db $10
    rst $38
    sbc a
    sbc b
    ld l, a
    inc a
    rst $38
    pop bc
    rst $38
    rst $08
    rst $38
    rst $38
    adc a
    db $fc
    sbc a
    ld hl, sp+$1f
    ld hl, sp+$1f
    rst $28
    add sp, $3f
    jp c, Jump_000_007f

    call nz, Call_000_3fc0
    ldh [$3d], a
    rra
    cp [hl]
    ldh [rNR24], a
    ld hl, sp-$01
    ld bc, $e0c2
    nop
    push bc
    db $fc
    ld [hl], b
    ret nz

    ld b, b
    ret nz

    ld e, $e7
    cp a
    push bc
    rst $38
    add h
    rst $38
    rst $38
    ld b, e
    ld a, a
    jr z, jr_076_67cd

    ld [hl], b
    ccf
    rst $38
    rst $38
    ld [hl], d
    rst $38
    ld [bc], a
    cp $24
    cp $06
    db $fd
    rst $08
    adc a
    ld hl, sp-$01
    and d
    cp $e0
    ld h, b
    and a
    cp a
    add b
    cp a
    ld e, a
    ret nz

    ld b, c
    ret nz

    rst $38
    ld c, h
    jp nc, Jump_000_22c0

    rst $28
    rst $38
    db $10
    rst $38
    dec c
    adc c
    ret nz

    add hl, de
    sbc a
    rla
    rst $38
    rst $38
    sub d
    rst $38
    cp c
    rst $28
    ld hl, sp-$09
    cp h
    rst $38
    rst $30
    inc e
    di
    ld a, $f1
    rst $38
    pop af
    rra
    rst $38
    rst $38

jr_076_67cd:
    inc h
    rst $38
    ret z

    cp $08
    cp $98
    ld a, a
    or $1e
    pop af
    ccf
    ret nz

    rst $38
    ld b, h
    ret nz

    add sp, -$41
    ccf
    nop
    sbc a
    add b
    ld b, c
    ret nz

    ret nc

    add c
    pop af
    ld a, a
    ld bc, $07f7
    db $fc
    inc e
    pop af
    ld [hl], b
    ret nc

    add c
    rst $38
    ld c, a
    rrca
    ld h, h
    ld h, a
    call z, Call_000_0cc7
    rlca
    rst $38
    inc c
    rrca
    sbc [hl]
    dec de
    rst $30
    dec d
    rst $30
    inc h
    sub a
    ld [hl], c
    rst $38

jr_076_6807:
    jr nz, jr_076_6807

    ldh [rLCDC], a
    ld d, h
    and e
    ld [bc], a
    and b
    ccf
    rst $38
    db $f4
    rst $38
    jp nz, $c27f

    ccf
    pop hl
    ccf
    ei
    rst $38
    ld h, c
    dec h
    ldh [$c1], a
    ld a, a
    rst $00
    rlca
    cp $7f
    ld a, h
    pop af
    ld bc, $02f3
    rst $28
    inc c
    ld a, h
    ldh [$7f], a
    ld [hl-], a
    rst $38
    ld e, c
    ld c, a
    ld a, a
    db $ec
    cp a
    inc d
    ldh [$fd], a
    rrca
    ret nc

    ret nz

    rla
    and $27
    rst $30
    ld b, l
    ld a, [c]
    db $d3
    rst $38
    ld b, c
    xor l
    ret nz

    set 0, c
    nop
    and [hl]
    and c
    ld hl, sp+$7f
    or a
    db $e4
    rst $38
    add d
    cp [hl]
    ldh [$fe], a
    ld [hl], c
    ret nz

    ld [c], a
    db $d3
    rst $38
    ld a, a
    ld d, b
    rra
    ld h, b
    ccf
    jr nz, @+$41

jr_076_6860:
    ld b, b
    rst $18
    ld a, a
    ld b, b
    ld a, a
    ldh a, [$7f]
    ld h, b
    and b
    ld b, b
    jp nz, $eff8

    pop bc
    db $fc
    ld [c], a
    ld a, b
    and d
    ld bc, $e023
    ld h, a
    ldh [rIE], a
    rst $38
    sub b
    rst $38
    db $10
    rst $28
    ld a, b
    add a
    db $fc
    cp a
    db $e3
    cp $c3
    cp $cf
    ld a, [bc]
    jp c, Jump_000_03a0

    cp $20
    add a
    pop hl
    ccf
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    cp $57
    and b
    ldh [$7f], a
    rst $38
    ld e, a
    rst $38
    ld b, b
    call nz, $ffef
    ld [bc], a
    rst $38
    inc bc
    ret nz

    add sp, $43
    ret nz

    rst $20
    db $fd
    and b
    ld [c], a
    ret nz

    jr @-$07

    inc a
    jp $f1fe


    ld d, a
    ld a, a
    pop hl
    ld a, a
    db $fd
    ret nz

    adc b
    jp nc, Jump_000_10c0

    add hl, hl
    ld [c], a
    rst $10
    jr nc, jr_076_6860

    rra
    add hl, sp
    add d
    ld b, h
    db $fc
    and b
    db $10
    rst $38
    cp l
    ld [hl], b
    dec d
    ldh [$e0], a
    db $e3

jr_076_68cf:
    ld a, a
    pop bc
    cp $e0

jr_076_68d3:
    db $e3
    rst $38
    ccf
    db $fc
    inc a
    db $fc
    jr nz, jr_076_68d3

    jr nz, jr_076_68cf

    db $fd
    db $10
    call z, Call_076_4980
    ld a, a
    ld [hl-], a
    ld a, a
    dec e
    ccf
    sub l
    ld b, $f0
    ld h, h
    add h
    ret nz

    ldh [$90], a
    ld l, [hl]
    ldh [$c0], a
    db $e4
    pop hl
    cp [hl]
    jp nc, Jump_076_7fe1

    xor $3c
    db $fc
    jr nc, @-$2e

    db $e4
    ld h, b
    xor d
    cp [hl]
    and b
    add d
    db $fc
    and b
    add b
    scf
    ld [c], a
    pop hl
    ld [hl], e
    ldh [$03], a
    set 7, a
    ld hl, $e05f
    add b
    dec e
    ldh [$f7], a
    ret nz

    adc e
    cp $3f
    or e
    cp $e6
    db $fc
    cp $98
    add b
    add d
    db $10
    add c
    xor d
    ret nc

    pop hl
    ld b, d
    ret nc

    ld [c], a
    add c
    db $f4
    and b
    pop bc
    ret nc

    db $e4
    pop bc
    cp $d0
    push hl
    push bc
    ld a, a
    reti


    ld a, a
    ld a, [c]
    ld a, [hl]
    cp $b9
    inc c
    ret nc

    push hl
    jr nc, jr_076_69ab

    rst $38
    rst $38
    ldh a, [rP1]
    ldh [$80], a
    sbc $8c
    add b
    rst $38
    ld a, a
    ret nz

    ld a, a
    adc $80
    rst $38
    rst $38
    rst $00
    rst $00
    ld a, b
    rst $18
    scf
    ld [c], a
    pop bc
    add b
    ld h, d
    ld h, b
    rst $38
    ld a, [c]
    rst $30
    sub b
    ld h, d
    ldh [$d1], a
    add b
    ldh a, [$08]
    ld hl, sp-$07
    rst $18
    ld hl, sp+$0f
    ld hl, sp-$01
    rst $38
    db $10
    add c
    ld [$fd0f], sp
    ld [$804f], sp
    add h
    rlca
    db $e3
    inc bc
    rst $38
    rst $38
    ld e, a
    rra
    ld sp, hl
    rlca
    db $fd
    rlca
    ld a, e
    and b
    rst $38
    db $fc
    pop hl
    sub [hl]
    xor e
    ld h, b
    rst $38
    add e
    adc [hl]
    ld h, c
    ldh a, [rTAC]
    add c
    xor [hl]
    pop hl
    rst $38
    ei
    jp nz, $c080

    pop hl
    ld [$08f8], sp
    ld hl, sp-$0f
    rst $38
    ldh a, [rNR22]
    ldh a, [rIE]
    rst $38
    ld b, [hl]
    rlca
    ld c, b
    rst $38
    rrca
    db $10
    rra
    db $10

jr_076_69ab:
    rra
    rrca
    rrca
    adc b
    ei
    rrca
    rst $20
    push de
    ld h, b
    ccf
    pop af
    rrca
    ld sp, hl
    rrca
    ld a, [hl]
    ld e, l
    and b
    cp $fe
    inc bc
    cp $ff
    db $fc
    inc de
    add c
    ld [hl], h
    rst $38
    ld h, b
    ld l, a
    ldh [$bf], a
    cp $e0
    sbc a
    add b
    pop bc
    ld h, a
    ldh [rHDMA4], a
    jr nz, jr_076_6a3c

    sub b
    ld h, b
    jp $800a


    adc a
    cp $e0
    add a
    cp $e0
    rla
    db $e3
    add b
    di
    call nc, $fee2
    cp $e0
    ldh a, [$c5]
    and b
    ld h, b
    nop
    ld [c], a
    ld h, b
    ldh [$67], a
    or d
    db $e3
    or b
    rst $20
    ldh [$eb], a
    ld [hl], c
    ld b, b
    rst $38
    db $ec
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    nop
    rrca
    nop
    ld a, c
    nop
    ld h, c
    nop
    rst $38
    ld b, c
    nop
    inc bc
    nop
    rlca
    nop
    rra
    nop
    db $fd
    rst $38
    cp $e4
    rst $30
    rlca
    rst $18
    dec e
    rst $20
    ld a, l
    ei
    add a
    db $fc
    ldh a, [$e5]
    rst $08
    ret nz

    inc sp
    ldh a, [$8d]
    rst $10
    db $fc
    jp nz, $d07e

    db $ec
    ld bc, $e4d0
    rlca
    rst $38
    or $d2
    ld [c], a
    rrca
    rst $38
    ret nz

    db $e4
    ret nz

    ccf
    ldh a, [$8f]

jr_076_6a3c:
    rst $28
    db $fc
    jp $e17e


    ldh a, [$e5]
    nop
    rst $38
    rrca
    cp a
    cp $3b
    rst $08
    ei
    rrca
    ld hl, sp-$60
    push hl
    adc a
    rst $38
    add b
    ld [hl], e
    ldh [rNR33], a
    ld hl, sp-$7a
    db $fc
    rst $38
    ld sp, hl
    ld bc, $e2fe
    adc b
    pop hl
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    inc a
    rst $38
    ld e, a
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $38
    call z, $d2ff
    rst $38
    ld d, [hl]
    rst $38
    rst $10
    rst $38
    pop hl
    rst $38
    ld a, c
    rst $38
    push af
    rst $38
    rst $38
    sbc [hl]
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    sub a
    rst $38
    call nc, $d6ff
    ld h, h
    or b
    and $56
    pop hl
    add b
    cp $e0
    jp nz, $ffea

    ld [bc], a
    jp nz, $abeb

    rst $38
    inc [hl]
    jp nz, $fee1

    jp nz, $58e7

    jp nz, $80ec

    cp d
    sub d
    db $e4
    ret nz

    sub b
    ldh [rHDMA2], a
    rst $38
    push bc
    ret nc

    and $06
    rst $38
    rst $38
    ld h, a
    rst $38
    sub h
    rst $38
    add [hl]
    rst $38
    ld e, b
    di
    cp $03
    cp $e1
    ld e, d
    ld [c], a
    inc bc
    rst $38
    inc b
    rst $38
    rst $38
    dec b
    rra
    rst $38
    ld a, b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    sbc b
    rst $38
    and l
    rst $38
    xor l
    rst $38
    rst $38
    xor a
    jp nz, $f2fe

    cp $ea
    cp $fd
    dec e
    inc a
    ld d, b
    ldh [$2e], a
    rst $38
    xor c
    xor $e0

Jump_076_6ae6:
    ld h, b
    jp hl


    or d
    ret nz

    rst $38
    rrca
    ld [bc], a
    di
    ld [bc], a
    dec e
    ld bc, $00e6
    db $fd
    cp d
    cp $e0
    and $00
    dec e
    nop
    rst $38
    inc [hl]
    rst $38
    rst $38
    jr z, @+$01

    ld a, h
    rst $38
    rst $38
    rst $38
    ld a, $bf
    rst $38
    inc h
    rst $38
    inc de
    rst $38
    db $10
    ld l, [hl]
    ldh [$28], a
    rst $38
    rst $38
    ld a, l
    rst $38
    cp $ff
    ld hl, sp-$01
    ld c, b
    rst $38
    rst $38
    sub b
    rst $38
    db $10
    ldh a, [$80]
    rst $08
    add b
    rst $18
    cp b
    nop
    ld h, a
    nop
    ld e, l
    cp $e0
    ld h, a
    nop
    adc l
    cp b
    ret nz

    pop hl
    ld bc, $c61d
    ldh [$c0], a
    and $c2
    rst $20
    rla
    ld a, [hl+]
    ret nz

    ldh [$08], a
    jp nz, $d0e8

    ret nz

    ldh [rNR41], a
    ret nz

    ldh [$ca], a
    ldh [$7e], a
    ret nz

    pop af
    cp [hl]
    ld e, $ff
    inc hl
    ld a, a
    ld b, [hl]
    add d
    ld [$90f7], a
    rst $38
    adc c
    add d
    db $eb
    rst $38
    jr nz, @+$11

    inc b
    rst $38
    rst $30
    inc b
    rra
    ld c, $ef
    add hl, bc
    cp a
    db $10
    rst $38
    cp a
    db $10
    rst $38
    ld de, $081f
    rst $38
    ld l, b
    db $eb
    rst $38
    ld d, b
    ld h, h
    ldh [rIE], a
    ld e, h
    ldh [$c8], a
    rst $38
    and a
    rst $38
    rst $38
    jr nz, @+$01

    or c
    rst $38
    ld d, c
    rst $38
    ld_long a, $ff4f
    db $fc
    rst $38
    ldh a, [$92]
    pop hl
    sub b
    ldh [rP1], a
    sub b
    db $eb
    ei
    rst $38
    add hl, bc
    ld l, h
    ldh [$0c], a
    di
    rra
    pop af
    ccf
    cp a
    adc $7f
    and d
    rst $38
    ld [hl+], a
    rst $38
    call c, $ffe1
    rst $38
    ld h, b
    sbc a
    ldh a, [$1f]
    ld hl, sp-$19
    db $fc
    adc e
    rst $30
    cp $89
    rst $38
    sub b
    and c
    ld a, e
    inc bc
    ld h, a
    inc b
    rst $20
    ld c, a
    ld [$fe0f], sp
    ldh [$a0], a
    ldh [$09], a
    rst $38
    inc e
    rst $38
    di
    rst $38
    pop af
    ld a, a
    xor $bf
    ld [c], a
    cp a
    rst $28
    ld [c], a
    ld a, a
    db $e3
    ccf
    jp nc, $f8e2

    rla
    rst $38
    rst $18
    ld [$8bff], a
    rst $38
    adc d
    ld a, a
    ret nz

    rst $08

jr_076_6bdc:
    nop
    rst $38
    ldh a, [rP1]
    sbc [hl]
    nop
    and $e0
    ld [de], a
    ldh a, [$fd]
    db $10
    cp $e0
    jr jr_076_6bdc

    rst $38
    ld e, l
    rst $38
    adc l
    rst $28
    rst $38
    sbc a
    rst $38
    add a
    db $fc
    ldh [$89], a
    ld a, a
    ld b, b
    db $db
    ld a, a
    ld b, b
    cp $c0
    adc h
    ld [hl], e
    or a
    ret nz

    adc l
    rst $38
    sbc a
    dec h
    rst $38
    and d
    rst $38
    jp $e190


    sub d
    pop hl
    db $fc
    push hl
    ld h, e
    db $e3
    and b
    adc b
    cp $e0
    ret nz

    db $e3
    add [hl]
    nop
    add d
    rst $38
    nop
    ret nz

    add b
    ld h, b
    ret nz

    ld a, b
    ldh [rIE], a
    rst $38
    ld [$0c0f], sp
    ld a, a
    rlca
    ld h, h
    rlca
    ld b, d
    or a
    inc bc
    inc bc
    ld bc, $a110
    rst $18
    ld [hl], d
    ld h, h
    pop hl
    rla
    ei
    rst $38
    ld [hl-], a
    ld b, c
    ret nz

    push bc
    rst $38
    ld b, l
    ld a, a
    rst $38
    rst $38
    ld b, b
    rst $38

jr_076_6c46:
    ld h, b
    rst $18
    ld hl, sp-$69
    cp $61
    ld a, [c]
    db $ed
    and b
    nop
    and c
    ret nz

    ret nz

    db $eb
    ld hl, sp-$40
    rst $38
    ld bc, $f2f4
    and b
    or $a1
    inc b
    add h
    ret nz

    ld de, $10ff
    ld b, e
    and d
    rst $08
    ldh [$c0], a
    ld [hl], a
    and d
    inc l
    ret nz

    ld [hl], b
    and b
    add l
    db $db
    and b
    rlca
    adc l
    rst $38
    call $fea1
    rst $38
    ld sp, hl
    ld [c], a
    ld e, d
    and e
    db $db
    ldh [$3f], a
    rst $38
    ldh [$1f], a
    ldh a, [$1f]
    ldh a, [rIE]
    inc c
    rst $38
    or c
    dec bc
    cp b
    and b
    add sp, -$1f
    sub h
    add d
    ldh [$3f], a
    jp nz, $c0e1

    inc h
    jp nz, $b9e1

    ld [c], a
    ld b, $fb
    add b
    sub l
    and b
    cp $ee
    and b
    jr nc, jr_076_6c46

    cp a
    rra
    ldh a, [$3f]
    ldh a, [rIE]
    ldh [$0a], a
    xor b
    ld sp, $ff63
    rrca
    db $fc
    adc c
    add h
    db $e3
    add d
    push hl
    rst $38
    add b
    and l
    pop hl
    rst $20
    inc bc
    cp $01
    ld [hl], d
    pop hl
    ld e, b
    pop hl
    inc bc
    rst $38
    and b
    cp $4c
    ret nz

    db $10
    rst $38
    ld a, b
    add a
    db $fc
    rst $00
    db $fc
    ld h, a
    rlca
    db $fc
    ld l, a
    add b
    add [hl]
    adc b
    add h
    ld bc, $bb47
    ret nz

    cp d
    cp [hl]
    db $e4
    ld a, a
    inc b
    add c
    add hl, bc
    rst $38
    rlca
    dec c
    and b
    rlca
    ld a, e
    cp $07
    ld e, l
    and b
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$c0]
    jp c, $c13e

    db $10
    ld d, [hl]
    and b
    ldh [$3f], a
    cp $e0
    rra
    inc d
    rst $38
    rst $38
    inc de
    rra
    add hl, bc
    and $06
    cp d
    nop
    cp a
    cp e
    ld bc, $01e7
    rra
    ld [bc], a
    add $80
    ld b, b
    cp a
    rst $38
    add h
    rst $38
    add e
    rst $38
    add c
    add b
    add e
    cp $7f
    rlca
    db $fd
    rlca
    rst $38
    ld b, e
    rst $38
    add d
    inc [hl]
    add b
    db $fd
    add c
    db $ec
    ldh [$80], a
    ld d, b
    ldh a, [$9f]
    ldh a, [$38]
    rst $30

jr_076_6d31:
    ldh [$e7], a
    ret nz

    jr nc, @-$5a

    add b
    rrca
    nop
    di
    ld [hl], d
    ld a, [$e680]
    jp nz, $c0e0

    ldh [rSC], a
    rra
    inc bc
    add [hl]
    add b
    call c, $e8c2
    ret z

    ldh [rTMA], a
    rst $38
    ld b, d
    jp nz, $ffe7

    add e
    ld b, [hl]
    and b
    xor c
    rst $20
    add b
    ret nz

    rst $20
    add b
    add sp, -$7e
    db $e3
    add c
    db $10
    ld [c], a
    pop af
    ld [bc], a
    db $fc
    ld [c], a
    add d
    pop hl
    xor b
    ld h, e
    add b
    ld c, b
    ld hl, sp-$31
    rra
    ld hl, sp-$68
    ldh a, [$e7]
    ldh [$80], a

jr_076_6d74:
    db $ed
    ld [hl], b
    add h
    sbc $e0
    ld a, [c]
    cp d
    ld h, b
    adc h
    or b
    and b
    ld d, d
    pop hl
    add c
    rst $38
    ld bc, $57f9
    rrca
    cp $0f
    ld bc, $83e0
    ld [de], a
    add b
    ld bc, $e140
    rst $38
    jr nc, jr_076_6d74

    ld c, a
    ret nz

    ld a, b
    ret nz

    rst $20
    ret nz

    ei
    db $dd
    add b
    ld b, b
    db $e3
    di
    inc bc
    inc c
    rrca
    ld [hl], b
    rst $38
    rra
    ld h, b
    ccf
    ld h, b
    ccf
    rra
    rra
    db $10
    db $fd
    rra
    jr c, jr_076_6d31

    add d
    ld a, a
    pop hl
    rra
    pop af
    rra
    rst $10
    cp $07
    db $fc
    pop de
    ret nz

    db $fc
    jr z, @-$7e

    add e
    db $fc
    cp l
    rrca
    add hl, de
    pop bc
    ret nz

    ld a, a
    rst $38
    ld a, a
    db $fc
    ldh [rIE], a
    rst $38
    rst $08
    add b
    ld [hl], b
    ldh [rNR34], a
    ldh a, [$0e]
    ld hl, sp-$79
    ld a, [bc]
    ld hl, sp-$10
    ld a, $a0
    daa
    ld h, b
    ret nz

    db $ec
    jp nz, Jump_000_1fe5

    rst $08
    db $fc
    rst $20
    db $fc
    rra
    sbc b
    add b
    jp nz, $f0e5

    ld a, a
    adc a
    rst $08
    ld a, a
    ldh a, [$3f]
    and b
    push hl
    ld l, l
    ldh [$a0], a
    push hl
    add a
    push af
    ld hl, sp-$60
    ldh [$e0], a
    and b
    jp hl


    ret nz

    ld a, $e0
    ld d, $f7
    ldh a, [rNR12]
    ldh a, [$a0]
    db $e3
    rst $38
    pop bc
    ccf
    pop af
    pop af
    rrca
    ld c, c
    ret nz

    cp [hl]
    and c
    cp d
    and b
    rst $38
    rst $38
    adc a
    ldh a, [$cf]
    cp a
    ldh [$bf], a
    ret nz

    sbc [hl]
    and d
    ld e, h
    and c
    rst $08
    add b
    dec c
    ldh a, [$d0]
    and $20
    ldh [rWX], a
    and c
    cp a
    and h
    ld a, [$4ee5]
    ld b, a
    jr nc, @-$0a

    inc hl
    ld a, [hl]
    add b
    ld [hl], b
    ld l, c
    or b
    adc b
    nop
    ldh [$e2], a
    ldh [$c2], a
    push hl
    ld e, $48
    ld h, d
    add b
    rst $20
    add b
    db $dd
    cp $e0
    ld e, b
    pop bc
    sbc b
    ldh [rIE], a
    add b
    sbc [hl]
    add b
    add [hl]
    add b
    add d
    add b
    ret nz

    rrca
    add b
    ldh [$80], a
    ld hl, sp-$64
    rst $20
    add sp, $45
    ld a, b
    set 5, d
    and b
    nop
    ld a, b
    inc sp
    rst $38
    db $ed
    nop
    nop
    nop
    nop
    nop

    db $7f, $3d, $00, $fb, $00, $07, $00, $b7, $fe, $e0, $df, $ef, $00, $1f, $00, $ff
    db $fe, $e7, $07, $ff, $df, $1d, $e7, $7d, $87, $fc, $ee, $e6, $c0, $3f, $5f, $f0
    db $8f, $fc, $c3, $7e, $d0, $ec, $01, $d2, $eb, $cb, $0f, $ff, $d2, $eb, $e1, $f0
    db $e5, $a6, $e0, $fc, $00, $ef, $ff, $1f, $e7, $7d, $9e, $e7, $3f, $00, $ef, $c7
    db $e0, $1f, $f8, $be, $e0, $fe, $e1, $86, $e1, $01, $ff, $ff, $02, $ff, $02, $0f
    db $ff, $3c, $ff, $5f, $ff, $ff, $ff, $f2, $ff, $cc, $ff, $d2, $ff, $ff, $56, $ff
    db $d7, $e1, $ff, $79, $ff, $f5, $ff, $ff, $ff, $9e, $ff, $66, $ff, $97, $ff, $77
    db $d4, $ff, $d6, $5e, $e8, $00, $ff, $80, $fe, $e0, $b6, $c2, $ea, $ff, $02, $c2
    db $eb, $ff, $34, $c2, $ec, $58, $fa, $c2, $ec, $80, $88, $e2, $01, $fe, $03, $fe
    db $03, $be, $76, $e3, $87, $fd, $07, $fc, $07, $03, $e0, $18, $ff, $ff, $e0, $ff
    db $87, $ff, $ff, $ff, $87, $fe, $0c, $e0, $c3, $fe, $81, $ff, $61, $ff, $1f, $c7
    db $fe, $83, $fe, $ef, $e0, $dc, $c9, $d0, $c1, $02, $3f, $ff, $02, $cf, $01, $f7
    db $00, $33, $00, $11, $fb, $00, $19, $fe, $e0, $ff, $34, $ff, $28, $ff, $fd, $7c
    db $c7, $e0, $3e, $ff, $24, $ff, $13, $ff, $fd, $10, $8e, $e0, $28, $ff, $7d, $ff
    db $fe, $ff, $df, $f8, $ff, $48, $ff, $90, $f0, $e0, $80, $fc, $fb, $80, $f3, $94
    db $c0, $cc, $00, $88, $00, $98, $9c, $fe, $e0, $c0, $e0, $01, $cf, $00, $c0, $e8
    db $c2, $e7, $17, $aa, $c0, $e0, $08, $c2, $e8, $d0, $c0, $e0, $20, $c0, $e0, $00
    db $fe, $c0, $ec, $02, $cf, $02, $f7, $02, $33, $01, $fa, $80, $e4, $72, $dc, $c0
    db $57, $ff, $74, $ff, $68, $ff, $ff, $fc, $ff, $3f, $ff, $1e, $ff, $9c, $fe, $cc
    db $c0, $d4, $ff, $5c, $ff, $2d, $ff, $7e, $ba, $7c, $e0, $f0, $80, $e2, $80, $ef
    db $80, $80, $e6, $09, $fe, $9c, $e0, $0c, $f3, $1f, $f1, $3f, $ce, $7f, $ef, $a2
    db $ff, $22, $ff, $9e, $e0, $20, $ff, $60, $ff, $9f, $f0, $1f, $f8, $e7, $fc, $8b
    db $fe, $fb, $89, $ff, $e0, $a6, $01, $ef, $07, $1f, $09, $fe, $30, $e0, $09, $ff
    db $1c, $f3, $7f, $91, $ff, $bd, $0e, $97, $e0, $f2, $9f, $f3, $9f, $d2, $e2, $f8
    db $d7, $17, $fc, $e3, $d4, $e0, $8a, $93, $e0, $bc, $00, $df, $df, $00, $e0, $00
    db $ed, $fe, $e0, $f7, $c0, $8f, $38, $e0, $7f, $e0, $a0, $aa, $14, $c1, $90, $e3
    db $3f, $ff, $d3, $7f, $9f, $fc, $3f, $f0, $ff, $e1, $f6, $90, $e4, $f8, $57, $be
    db $e0, $eb, $7e, $f1, $3f, $fa, $70, $a8, $01, $d0, $e2, $14, $ff, $1b, $ff, $18
    db $7f, $f7, $7c, $93, $ff, $0b, $ff, $5f, $ce, $e1, $ff, $50, $ff, $b0, $ff, $30
    db $df, $7c, $d3, $e7, $fe, $23, $fe, $ce, $e1, $44, $c1, $ff, $03, $ff, $fd, $04
    db $fe, $e0, $08, $ff, $11, $ff, $10, $43, $8f, $ff, $40, $ff, $c0, $e7, $a2, $43
    db $c0, $e0, $a0, $85, $06, $e5, $e0, $07, $ff, $21, $c1, $43, $c0, $1a, $c1, $ca
    db $a3, $db, $e0, $bf, $3f, $e0, $1f, $f0, $1f, $f0, $5a, $c0, $23, $cf, $ff, $29
    db $ff, $15, $2f, $e0, $02, $a2, $e0, $bf, $47, $c0, $7f, $80, $be, $e0, $05, $c0
    db $b9, $e2, $14, $3b, $c0, $c9, $0d, $9f, $e0, $f5, $a0, $03, $9e, $a2, $ca, $e0
    db $5f, $f0, $4b, $9f, $f0, $44, $e0, $c0, $88, $a8, $f8, $85, $00, $5e, $c0, $bf
    db $02, $ff, $0b, $fc, $0f, $f0, $80, $e4, $f9, $ff, $bf, $fd, $c7, $ff, $82, $ff
    db $c2, $3f, $81, $e6, $fc, $a0, $20, $a0, $52, $e2, $ce, $e9, $fe, $c1, $ce, $e2
    db $f8, $7f, $ff, $ff, $9f, $ff, $80, $f1, $3f, $ce, $e8, $fd, $fa, $ee, $80, $14
    db $3f, $13, $cf, $09, $f7, $7d, $06, $a0, $a0, $01, $19, $01, $1b, $02, $23, $e0
    db $7f, $40, $ff, $84, $ff, $83, $ff, $81, $10, $a3, $bf, $fe, $07, $fd, $07, $ff
    db $43, $9e, $e0, $02, $fe, $ee, $e0, $81, $ff, $80, $5f, $f0, $9c, $f0, $cf, $33
    db $e0, $ef, $c0, $a0, $a4, $20, $a0, $3f, $00, $36, $a0, $a2, $01, $11, $c2, $e0
    db $1b, $03, $e3, $c0, $c2, $e8, $0e, $66, $e0, $06, $ff, $42, $c2, $e7, $a8, $e0
    db $58, $80, $60, $a6, $21, $80, $c0, $e8, $80, $e5, $e3, $c1, $be, $e9, $02, $be
    db $ec, $c0, $e9, $fe, $80, $e0, $3f, $03, $fc, $0f, $10, $1f, $a0, $7f, $3f, $a0
    db $3f, $ff, $1f, $10, $1f, $af, $80, $ff, $82, $7f, $e1, $1f, $f1, $1f, $fe, $07
    db $77, $fc, $ff, $fc, $fc, $e0, $ff, $ff, $83, $d4, $c0, $de, $79, $c0, $c0, $7f
    db $ff, $7f, $fc, $e0, $ff, $bc, $ff, $80, $7f, $e0, $10, $f0, $0d, $f8, $0d, $2f
    db $f8, $f7, $f0, $18, $bb, $c0, $3e, $c0, $ec, $c2, $e5, $af, $1f, $fc, $e7, $fc
    db $c2, $60, $ff, $c2, $e5, $f0, $1f, $7f, $cf, $7f, $f0, $3f, $0b, $c1, $28, $84
    db $fa, $e5, $32, $4e, $8d, $ff, $c0, $8b, $50, $a8, $00, $f8, $e2, $e0, $c2, $e7
    db $f6, $d8, $84, $80, $88, $fa, $c0, $98, $80, $bc, $80, $df, $df, $80, $e0, $80
    db $ed, $fe, $e0, $f7, $80, $7d, $f8, $9e, $e8, $33, $01, $13, $01, $1b, $fe, $e0
    db $7f, $3f, $01, $fb, $01, $07, $01, $b7, $f8, $a7, $10, $c8, $c7, $e8, $62, $98
    db $56, $d0, $cb, $00, $ff, $ed, $00, $00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld [hl], h
    nop
    db $f4
    nop
    db $e4
    nop
    nop
    nop
    rst $30
    inc b
    nop
    rst $38
    cp $eb
    rlca
    rst $38
    dec e
    rst $20
    rst $30
    ld a, l
    add a
    db $fc
    ld [$c0e6], a
    ccf
    ldh a, [$8f]
    rst $38
    db $fc
    jp nz, $837e

    nop
    add a
    nop
    rst $00
    rst $08
    nop
    db $e3
    nop
    ld hl, sp-$30
    db $ed
    ret nz

    pop hl
    rrca
    cp $dd
    ld a, e
    cp d
    ld [$3cc0], a
    ld hl, sp-$56
    add sp, $03
    db $fc
    rst $30
    rlca
    db $fc
    rra
    sbc d
    add sp, -$04
    ld a, e
    adc $f9
    push af
    sbc a
    or b
    db $ec
    add b
    ld a, d
    add sp, $01
    cp $03
    cp $7d
    ccf
    ld l, d
    add sp, -$02
    dec a
    rst $20
    ld a, h
    rst $08
    add b
    db $ec
    rst $20
    ret nz

    rst $38
    ld bc, $e2fe
    ret nc

    ld [c], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    ld [bc], a
    rrca
    rst $38
    inc a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    call z, $d2ff
    rst $38
    ld d, [hl]
    rst $38
    rst $38
    rst $10
    pop hl
    rst $38
    ld a, c
    rst $38
    push af
    rst $38
    cp $ff
    sbc [hl]
    cp $66
    rst $38
    sub a
    rst $38
    call nc, $a5ff
    sub $1a
    ld [$9080], a
    ld [c], a
    sbc b
    pop hl
    inc bc
    cp b
    db $e4
    ld [bc], a
    rst $38
    adc a
    ei
    rrca
    ld hl, sp+$0f
    rst $38
    jr @+$01

    rst $28
    ldh [rIE], a
    adc a
    rst $38
    rst $38
    ldh [$a7], a
    rlca
    cp $7f
    add d
    cp $81
    rst $38
    jp Jump_000_3fff


    rst $28
    ret nz

    ld [hl], d
    rst $28
    ldh [$2b], a
    ld a, [bc]
    ldh a, [$88]
    pop hl
    inc bc
    rst $38
    inc b
    cp $e0
    ld a, l
    dec b
    ld a, [$67e0]
    db $fc
    sbc a
    ld hl, sp+$4f
    pop de
    ldh [$f7], a
    xor a
    rst $38
    db $76
    add b
    ldh [$be], a
    db $fc
    rst $00
    db $fc
    ld l, a
    rst $38
    jr nc, @+$01

    adc h
    ld l, a
    ldh [rIE], a
    ld a, a
    ld a, [hl]
    ldh [rIE], a
    or c
    ld a, a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    dec c
    ldh a, [$fe]
    pop hl
    rst $18
    ldh a, [$99]
    ldh [rOBP0], a
    pop hl
    ld b, [hl]
    ld [c], a
    db $fc
    db $e4
    rst $18
    ret


    cp $27
    db $fd
    sub a
    dec a
    ldh [$37], a
    rst $38
    rst $38
    xor e
    rst $38
    ld c, e
    rst $38
    rra
    cp $f3
    sbc [hl]
    sbc $35
    ldh [$f2], a
    rst $38
    db $fd
    rra
    xor $e0
    ld c, d
    rst $38
    ld sp, hl
    ld e, b
    call nz, Call_076_5ce3
    ldh [$f8], a
    rst $08
    ld hl, sp-$11
    ld hl, sp-$05
    rst $38
    ldh a, [$c6]
    ld [c], a
    ld bc, $0004
    di
    nop
    db $fd
    ld b, $3c
    ret nz

    ld h, h
    nop

jr_076_7322:
    rst $38
    inc [hl]
    rst $38
    jr z, jr_076_7322

    rst $38
    ld a, h
    ld b, l
    ldh [$3e], a
    rst $38
    inc h
    rst $38
    inc de
    ld a, [$e0fe]
    ld e, b
    ldh a, [$e0]
    ld a, l
    rst $38
    cp $ff
    ld hl, sp-$31
    rst $38
    ld c, b
    rst $38
    sub b
    cp $e0
    inc c
    ld [c], a
    ld hl, sp+$00
    rst $38
    push hl
    nop
    call z, $ac00
    nop
    cp b
    nop
    cp $44
    ld [c], a
    rlca
    rra
    jr @+$01

    ld de, $171f
    xor a
    rra
    ld [de], a
    ld a, a
    inc d
    ld c, b
    ldh [$b8], a
    xor d
    ldh [$f8], a
    ei
    rst $38
    cp a
    dec c
    ldh [$6d], a
    rst $38
    rst $20
    rst $38
    xor l
    rst $38
    rst $38
    or c
    rst $38
    ld d, c
    rst $38
    ld a, [$fcff]
    adc [hl]
    sub h
    ldh [$90], a
    rst $38
    jr nz, @-$24

    and e
    ret nz

    add sp, $08

jr_076_7382:
    pop hl
    ld [$0fdf], sp
    add hl, bc
    rst $38
    db $10
    rra
    cp $e0
    ld l, a
    ld [$ffeb], sp
    ld b, h
    xor d
    jp nz, $c3c6

    ret nz

    ld l, a
    cp a
    db $e3
    xor a
    sbc a
    ld hl, sp-$01
    or e
    cp $e0
    ld h, [hl]
    and $c0
    jp $ffbf


    jp nz, $88ff

    rst $38
    rra
    and a
    ret nz

    ldh [rIE], a
    rst $38
    ld b, b
    ld hl, sp-$60
    push hl
    jr nz, jr_076_7382

    ld b, b
    or e
    xor h
    add b
    add b
    ld [c], a
    add $c0
    rrca
    ld [$e0bc], sp
    ld [$07ff], sp
    inc b
    ld h, a
    inc b
    rst $38
    ld [hl+], a
    rst $38
    ld b, b
    ld a, [$c02a]
    ld h, e
    jp nc, Jump_000_37c0

    rst $18
    ld [hl], c
    rst $08
    ld a, h
    xor e
    rst $38
    ld e, c
    cp $e0
    inc sp
    ld h, $c0

jr_076_73df:
    pop hl
    cp $e0
    call nz, $fffb
    rrca
    ld c, $e0
    ldh a, [rIE]
    jr nz, @-$06

    ret nc

    rst $38
    push af
    sub b
    db $ec
    jr nz, jr_076_73df

    ld b, b
    cp b
    add b
    cp $40
    xor h
    ld bc, $08ff
    rst $38
    add hl, bc
    rst $38
    inc c
    ld a, a
    di
    rra
    pop af
    ccf
    adc $7f
    and d
    or e
    ldh [$fe], a
    ld c, [hl]
    ldh [rNR41], a
    rst $38
    ld h, b
    sbc a
    ldh a, [$1f]
    ld hl, sp-$01
    rst $20
    db $fc
    adc e
    cp $89
    rst $38
    ld a, a
    db $10
    ld a, a
    rst $38
    db $10
    rst $28
    add hl, bc
    rrca
    ld [$f81f], sp
    ldh [$fb], a
    rst $38
    ld de, $e0d4
    ld [hl], b
    rst $38
    ld a, [c]
    rst $18
    ld a, b
    rst $38
    rst $10
    ld a, a
    ld a, [c]
    rst $38
    xor [hl]
    rst $38
    ld b, l
    rst $38
    db $fd
    push bc
    ret nc

    pop hl
    ld h, b
    rst $18
    ld hl, sp-$69
    db $fc
    ld h, e
    db $db
    cp $c1
    or l
    ldh [rDIV], a
    rst $38
    db $10
    xor d
    add b
    rst $38
    rst $38
    ret nz

    ld a, a
    add hl, bc
    rst $30
    dec b
    rst $20
    inc bc
    ld bc, $8efc
    ret nz

    ret nc

    add e
    rra
    db $f4
    rra
    ld hl, sp+$0f
    db $fc

jr_076_7463:
    ld a, a
    rla
    rst $38
    sub e
    rst $38

jr_076_7468:
    adc $7f
    push bc
    cp $e0
    ld a, a
    rst $38
    jr jr_076_7468

    inc a
    rst $20
    ld a, [hl]
    adc c
    sub l
    ret nz

    ld a, [c]
    dec h
    pop bc
    ld [$e7c0], sp
    ld [$7fc2], sp
    ret nc

    ld [hl], a
    ld [bc], a
    ei
    push af
    ld bc, $8990
    adc a
    ld a, [$fc8f]
    add a
    rst $38
    cp $8b
    rst $38
    ret


    ld a, a
    rst $20
    ccf
    ld [c], a
    cp $fe
    ldh [rIE], a
    inc c
    ei
    ld e, $f3
    ccf
    call nz, $ffbb
    ret z

    ld h, a
    ldh [$80], a
    rst $38
    add h
    add b
    push hl
    add b
    ld c, l
    ld a, b
    call z, Call_000_3fa2
    add sp, -$16
    add c
    sub d
    and h
    ld [$e040], sp
    ld b, e
    db $10
    ld b, e
    pop de
    jp nz, $a137

    ld d, c
    and b
    jr nc, jr_076_7463

    add l
    ld [hl], a
    and b
    dec de
    rlca
    rst $38
    cpl
    and c
    cp $ff
    ld sp, hl
    ld [c], a
    ld a, [de]
    and e
    xor h
    ret nz

    ldh a, [$8a]
    and e
    jr z, @-$7e

    ld c, d
    and l
    add $82
    rst $00
    ld a, a
    ret nz

jr_076_74df:
    ld a, a
    call nc, $81f9
    ret nz

    ldh [$7f], a
    cp $61
    dec b
    call nz, $fee1
    rlca
    dec l
    cp $12
    and c
    db $fc
    rlca
    push af
    add b
    ld b, b
    cp [hl]
    jp nz, $c1d2

    ld [hl], d
    ld c, b
    and b
    ccf
    ld d, b
    and c
    jp nz, $ffe8

    ld bc, $bb86
    add h
    xor d
    ret nz

    push hl
    ld [$60c7], sp
    dec b
    ld d, e
    and b
    ld h, c
    ld h, l
    add b
    ld a, [c]
    rla
    ccf
    pop af
    rra
    adc h
    and b
    ld [$c008], sp
    jr nz, jr_076_74df

    add d
    and b
    ld a, c
    and b
    ld d, b
    add b
    sbc b
    ld l, c
    rra
    ld [c], a
    ccf
    jp $e080


    or $7e
    pop hl
    ret nz

    rst $38
    adc [hl]
    and b
    add b
    rst $38
    sbc b
    inc b
    xor $b5
    add b
    ld [bc], a
    cp $0f
    call z, $e080
    rst $38
    ld sp, hl
    sub $a5
    ret nz

    ld a, a
    ret z

    ei
    ret nz

    call nz, $c0f7
    add h
    ld a, a
    rst $10
    ret z

    ld a, a
    ret nc

    ld l, c
    add b
    inc d
    ld a, [hl+]
    and b
    add hl, bc
    ld b, $ff
    ld b, $f3
    nop
    rlca
    ld bc, $0105
    ld h, a
    or l
    ld [bc], a
    cp $60
    ld b, b
    reti


    pop bc
    rst $38
    add c
    cp h
    add e
    cp $7f
    rlca
    db $fd
    rlca
    rst $38
    ld b, e
    rst $38
    add d
    db $f4
    ld h, b
    db $fd
    add c
    db $ec
    ldh [$80], a
    ld e, a
    ldh a, [$9f]
    ldh a, [$3f]
    rst $00
    ldh [$f8], a
    ret nz

    db $10
    and h
    and b
    ld h, h
    ret nc

    add l
    ld h, l
    ld bc, $fcee
    ld h, d
    adc h
    rst $38
    add a
    jp nc, $81e2

    rst $38
    ld bc, $f9af
    rrca
    cp $0f
    ld bc, $83e0
    ld l, $80
    ld bc, $c010
    pop hl
    ld c, h
    ret nz

    ld e, a
    ldh [$c0], a
    ldh [$80], a
    ret nz

    pop af
    sub b
    add b
    cp h
    ld h, c
    rst $18
    adc b
    rst $38
    ld b, a
    rst $38
    ld b, c
    cp $e0
    ld b, b
    rst $38
    rst $38
    add b
    pop hl
    ccf
    push bc
    ld a, a
    db $eb
    ld a, $ff
    pop af
    ld e, $80
    db $e4
    db $10
    db $e4
    sub b
    add [hl]
    add b
    db $fd
    ld a, a
    cp $ff
    ld a, a
    jp nz, Jump_076_7f7f

    ld a, a
    pop hl
    ld a, a
    ccf
    rst $38

jr_076_75de:
    ccf
    jr nz, jr_076_7620

    ld a, a
    rra
    ld a, a
    ldh a, [rIE]
    rst $38
    ret nz

    cp a
    ldh [$5f], a
    ldh a, [$5f]
    pop af
    xor a
    cp a
    ld sp, hl
    xor a
    ei
    xor a
    cp $f0
    db $ec
    ret nz

    push af
    push af
    rra
    add l
    ld h, b
    and b
    ld b, [hl]
    and d
    jr nz, jr_076_7679

    inc bc
    db $fc
    cpl
    rrca
    ldh a, [$1f]
    jr nz, jr_076_75de

    ldh [rIE], a
    bit 4, b
    ld l, l
    ld h, b
    rst $38
    add d
    ld a, a
    pop hl
    rra
    pop af
    rra
    cp $07
    sub l
    db $fc
    ld h, c
    ret nz

    db $fc
    ld e, l
    ld h, b

jr_076_7620:
    add e
    ldh [$e1], a
    cp e
    ldh [$7f], a
    ld sp, hl
    rst $38
    ld [hl], $c0
    pop af
    ldh [$80], a
    ld h, a
    ldh [rNR22], a
    ldh a, [$e7]
    dec bc
    ld hl, sp+$08
    db $e4
    ld h, b
    ld [de], a
    ret nz

    rst $38
    ld [hl], l
    ld bc, $f6af
    rlca
    add sp, $0f
    ld h, e
    add c
    rst $38
    daa
    ld h, c
    rst $38
    cpl
    rst $38
    pop bc
    ccf
    pop af
    ld e, $61
    inc bc
    ret nz

    ldh [$fc], a
    ldh [rIE], a
    rst $38
    rst $38
    adc a
    ldh a, [$bf]
    ldh [$bf], a
    ret nz

    db $fc
    add b
    pop bc
    cp h
    and d
    add e
    add b
    rst $00
    ret nz

    daa
    ldh [$e7], a
    inc de
    ldh a, [rNR23]
    sbc b
    add b
    ld [de], a
    ret nz

    rst $38
    ld [hl], h
    nop
    cpl
    rst $30

jr_076_7674:
    inc bc
    db $e4
    rlca
    ld h, e
    add b

jr_076_7679:
    rrca
    ret nz

jr_076_767b:
    db $e4
    cp b
    and c
    db $eb
    ld hl, sp+$17
    db $d3
    jr nz, @+$01

    db $fc
    ld [c], a
    rst $38
    call c, $f3e3
    cp [hl]
    pop bc
    add b
    and h
    ld a, h
    and c
    jp $e740


    jr nz, jr_076_7674

    rst $20
    jr nz, jr_076_767b

    ldh [$b8], a
    ret z

    jp nz, $ffff

jr_076_769e:
    ld a, l
    ld a, b
    adc b
    ldh [$e4], a
    rlca
    inc bc
    inc bc
    ld b, $4a
    and b
    cp $9a
    ld b, b
    rst $38
    xor a
    db $fc
    cp a
    ld hl, sp-$11
    cp $59
    push bc
    ret nz

    rst $20
    ld a, b
    add c
    db $10
    rst $28
    jr nc, jr_076_771d

    rst $38
    db $fc
    pop hl
    nop
    sub b
    adc e
    sbc a
    ld [c], a
    ld e, d
    ld b, d
    db $fc
    rst $20
    adc c
    pop hl
    ld d, h
    add hl, hl
    ldh a, [$e2]
    jr nc, jr_076_7739

    or b
    ldh [$e2], a
    ldh a, [rBGP]
    jr nz, @+$2e

    or d
    db $ec
    ld hl, sp-$80
    jr z, jr_076_769e

    add b
    cp $78
    ld h, b
    add b
    add e
    add b
    add a
    add b
    rst $00
    add b
    di
    db $e3
    add b
    ld h, $a7
    and [hl]
    ld hl, $0105
    di
    ld bc, $98fe
    and c
    ld h, l
    ld bc, $0175
    push af
    ld bc, $03e5
    ld bc, $9601
    inc hl
    call nc, $9806
    rst $28
    cp d
    dec bc
    sbc b
    ld b, a
    ret z

    dec b
    nop
    rst $38
    db $ed
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

jr_076_771d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_076_7739:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_076_77a0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_076_7be5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_076_7f7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_076_7fe1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
