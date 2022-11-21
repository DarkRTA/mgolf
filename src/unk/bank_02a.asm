INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $02a", ROMX[$4000], BANK[$2a]

    cp a
    db $76
    ld h, [hl]
    ld [hl], a
    inc l
    ld b, b
    inc [hl]
    ld b, b
    ld b, a
    ld c, e
    add hl, bc
    ld d, c
    ld e, h
    ld d, [hl]
    call z, $2956
    ld d, a
    ld a, [hl+]
    ld d, a
    ld [hl], h
    ld b, b
    dec d
    ld e, d
    dec e
    ld e, d
    jr nc, jr_02a_4081

    sub e
    ld l, h
    dec hl
    ld [hl], e
    add h
    ld [hl], e
    db $d3
    ld [hl], e
    call nc, Call_02a_5d73
    ld e, d
    add hl, hl
    ld d, a
    db $d3
    ld [hl], e
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_02a_4057

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $18
    dec l
    rst $38
    ld d, e
    sub b
    inc bc
    call nc, $ff01
    ld a, a
    db $f4
    inc bc
    sub b
    inc bc
    call nc, $1601
    ld a, l
    sbc a

jr_02a_4057:
    ld a, [hl]
    pop af
    nop
    call nc, $ff01
    ld a, a
    sub b
    inc bc
    call nc, $ac01
    ld [$08f5], sp
    ld a, a
    ld de, $1aff
    xor h
    ld [$2508], sp
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_02a_4075:
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb

jr_02a_4081:
    nop
    jr z, @-$0f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    cp $42
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    cp h
    ld a, a
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_02a_4075

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38

Call_02a_40bf:
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rst $38
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    rst $38
    inc de
    rrca
    ld bc, $0b0f
    rlca

Call_02a_40d5:
    ld bc, $ff07
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $38
    rst $20
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [rNR41], a
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$0b], a
    db $f4
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$c0e3], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    rst $38
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    ld a, a
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [rIE], a
    ret nz

    and b
    ret nz

    ret nz

Jump_02a_4162:
    ldh [rBCPS], a
    ldh a, [$f1]
    rst $38
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    ld a, [hl]
    call nc, Call_02a_48c2
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    rst $38
    ld [bc], a
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b
    ld a, a
    nop
    jr nz, jr_02a_4187

jr_02a_4187:
    db $10
    ld [$0400], sp
    or d
    ret nz

    ret nz

    and d
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $e33c


    jp $fd3c


    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    rst $38
    call c, $f11e
    inc a
    db $e3
    ld a, h
    jp Jump_02a_7f7c


    jp $9ce3


    jp $18bc


    rst $20
    ld [c], a
    pop hl
    rst $38
    ld a, [de]
    push hl
    ld [de], a
    rst $28
    ld e, a
    cp b
    ld a, a
    ldh [rIE], a
    di
    adc h
    inc de
    rst $28
    rra
    ld hl, sp-$04
    ld h, e
    cp a
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    call nz, $98e1
    rst $38
    rst $20
    db $fc
    ld b, e
    call c, $f863
    daa
    ld l, b
    rst $38
    or a
    ld l, h
    sub e
    db $fc
    inc de
    add sp, $17
    ld hl, sp-$01
    rrca
    sbc $25
    inc a
    rst $00
    ld a, $c3
    ccf
    rst $38
    jp nz, $c13e

    jp $c33d


    dec a
    cp e
    rst $30
    rst $10
    rst $38
    nop
    and b
    jp hl


    jp $c3bc


    cp h
    ret


    ld a, h
    jp nz, $bee0

    pop hl
    ld b, e
    db $f4
    ldh [$a0], a
    pop hl
    nop
    rst $38
    cp a
    db $dd
    db $eb
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    rst $38
    rrca
    ldh a, [rNR32]
    db $e3
    inc e
    di
    inc e
    db $e3
    rst $38
    inc c
    di
    ccf
    ret nc

Jump_02a_422a:
    dec de
    db $f4
    ld d, a
    rst $38
    ld e, a
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    ld [hl], b
    ldh [$fc], a
    ld [hl], b
    ld [c], a
    rst $38
    ei
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    or a
    ld d, a
    rst $38
    cp a
    ld h, a
    and b
    di
    adc h
    ld hl, sp-$1f
    ld a, h
    db $fd
    db $e3
    ld [hl], b
    rst $20
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $38
    rst $30
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    rst $38
    push af
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    di
    ccf
    jp $e06e


    ld [hl], b
    ld [c], a
    db $ed
    rst $38
    db $d3
    inc a
    dec sp
    ld a, [hl]
    add c
    ld [hl], b
    jp hl


    db $e3
    sbc h
    cp h
    inc d
    ldh [rBCPD], a
    ldh [$eb], a
    jp $1063


    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    db $d3
    ld sp, hl
    rst $28
    ld c, d
    pop hl
    db $e4
    pop bc
    cp e
    db $f4
    ld e, e
    db $f4
    xor h
    rst $38
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    di
    cp e
    rst $38
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    cp d
    cp a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $58
    and b
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    ld l, a
    adc [hl]
    ldh [$af], a
    ld a, a
    or l
    rst $08
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld b, [hl]
    and b
    ret nc

    jp $e718


    cp $f8
    push hl
    ld d, a
    rst $38
    xor h
    rst $38
    ld [hl], h
    ei
    cp b
    ld l, a
    rst $20
    ld e, b
    rst $20
    db $fc
    dec b
    ldh [$98], a
    rst $20
    ld b, b
    rst $20
    rst $18
    cp d
    rst $38
    db $ec
    di
    sbc b
    ldh [$e0], a
    cp d
    rst $38
    jp hl


    ld l, h
    ld hl, sp-$20
    ret z

    push hl
    rst $28
    ld h, $e0
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    ld d, $ff
    dec sp
    rst $38
    dec d
    rst $38
    rst $38
    ld a, [de]
    rst $28
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $38
    rst $20
    ld a, [de]
    rst $20
    dec a
    jp $c33f


    add hl, de
    db $db
    rst $20
    rst $10
    db $e4
    add b
    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    adc d
    ld b, d
    pop hl
    ret c

    and b
    ldh [$bc], a
    sbc $c0
    or b
    pop hl
    ld b, b
    pop hl
    set 7, [hl]
    ld a, b
    and $b0
    rst $38
    ld d, h
    ei
    and h
    ei
    ld a, b
    rst $38
    rst $30
    xor b
    rst $30
    ld h, h
    ei
    or h
    ei
    ret nc

    rst $38
    rst $38
    pop bc
    rst $38
    or a
    rst $38
    ld e, l
    rst $38
    ld [$3e54], a
    ldh [$3a], a
    add c
    rst $38
    sub h
    add b
    ld d, a
    ld a, $e0
    dec [hl]
    ld a, [hl-]
    ldh [$f6], a
    xor [hl]
    ret nz

    rst $38
    rst $10
    ld hl, $ff83
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    sbc h
    ret nz

    call c, $afe1
    rst $38
    rst $18
    adc $e0
    rst $18
    ld hl, sp-$1a
    inc d
    rst $38
    push hl
    sbc $e5
    ld e, a
    jp z, Jump_02a_6fe0

    add $e0
    ld hl, sp-$1b
    ldh [$63], a
    jp z, $e1f8

    ld e, a
    sub [hl]
    ldh [$5f], a
    ret nc

    and $c7
    push hl
    ld l, c
    rst $38
    rst $38
    call nc, $81fc
    ldh a, [rDMA]
    ldh [$8b], a
    ret nz

    ld a, a
    ld d, a
    ret nz

    dec e
    add b
    xor a
    add b
    db $fd
    xor a
    ld h, b
    db $fd
    jp c, $8048

    and b
    db $fc
    ld b, c
    ldh a, [$0b]
    ret nz

    ei
    ld d, $00
    ld hl, sp-$1f
    ld a, [bc]
    ret nz

    rla
    nop
    cp l
    rst $30
    nop
    ld l, a
    nop
    push de
    ld h, b
    nop
    ld hl, sp-$02
    db $f4
    rst $38
    cp $d8
    db $fc
    pop af
    db $fc
    ld [c], a
    ld hl, sp-$2f
    rst $38
    ld hl, sp+$63
    ldh a, [$c6]
    ldh a, [$8b]
    ldh [rBGP], a
    rst $38
    ldh [$8f], a
    ret nz

    dec de
    ret nz

    cpl
    add b
    rra
    rst $38
    add b
    scf
    nop
    ld e, a
    nop
    inc h
    inc a
    ld b, d
    cp a
    nop
    xor l
    nop
    rst $30
    nop
    ld a, l
    jp nc, $ffe2

    push af
    nop
    db $ec
    pop hl
    cp a
    db $e4
    ldh [$2f], a
    add b
    cp a
    add b
    rst $18
    ld d, a
    nop
    ccf
    nop
    push af
    ld a, $e0
    ld b, l
    rst $38
    rst $38
    nop
    rst $00
    stop
    ld l, l
    nop
    cp e
    nop
    rst $38
    rst $28
    nop
    rst $20
    ldh a, [rSCX]
    ldh a, [$e5]
    ldh a, [rIE]
    ld b, a
    ldh [$8a], a
    ldh [$c7], a
    ldh [$a5], a
    ldh a, [$eb]
    jp $30f0


    ld h, e
    rst $18
    ld l, $60
    xor l
    rst $38
    ld b, d
    rst $38
    rst $38
    nop
    jp $fffc


    ld a, [$fcff]
    sbc $8c
    ldh [$f8], a
    cp $ec
    cp $f6
    ldh [rIE], a
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    ld c, a
    rst $38
    ldh [$87], a
    ldh a, [$d5]
    db $fc
    ld l, c
    rst $38
    ccf
    rst $38
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    db $f4
    add $4a
    ldh [rIE], a
    rst $38
    ld b, d
    ldh [$88], a
    db $e4
    add sp, -$1b
    db $e3
    rrca
    rst $38
    and $0f
    rr a
    rst $00
    rra
    adc a
    ccf
    rst $30
    sbc e
    ccf
    cpl
    db $fc
    ld b, b
    cp $00
    cp $00
    rst $38
    db $fc
    ld bc, $01fc
    ld hl, sp+$03

jr_02a_4474:
    ld sp, hl
    inc bc
    rst $08
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    inc h
    pop hl
    db $d3
    nop
    ld e, a
    ld b, d
    ld a, [hl]
    cp $00
    rst $38
    ld [c], a
    ldh [$fe], a
    sbc $e0
    rst $08
    db $fc
    ld bc, $01ff
    ld a, [c]
    ldh [$0a], a
    ld [c], a
    inc a
    nop
    rst $30
    nop
    rst $00
    ld b, l
    add h
    ret nz

    push af
    rst $38
    rst $20

Jump_02a_44a0:
    rrca
    rst $28
    ld [c], a
    rrca
    rst $30
    rrca
    add $e1
    di
    rlca
    push hl
    cp a
    rrca
    db $e3
    rrca
    jr jr_02a_4474

    ld b, d
    ld d, [hl]
    ldh [$f7], a
    ld [$c676], a
    ccf
    ld a, [hl]
    ret nz

    ccf
    add b
    and b
    sbc a
    ld a, a
    scf
    db $fd
    ld a, a
    or $e0
    rst $38
    ld [$5500], sp
    nop
    cp [hl]
    ld [hl], h
    ldh a, [$c0]
    ld l, b
    push hl
    ld e, a
    db $fc
    ret nz

    ld a, a
    nop
    xor a
    db $fc
    ldh [$9d], a
    ccf
    db $f4
    ld [c], a
    ld de, $2a80
    call nc, $f0c0
    push hl
    cp a
    ldh a, [$fa]
    db $e4
    ld l, d
    jp hl


    db $f4
    db $eb
    nop
    add e
    dec de
    db $e4
    dec d
    xor $ff
    dec l
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    xor d
    rst $18
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    ld [bc], a
    rst $38
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    ld a, [bc]
    rst $38
    adc e
    jr nz, @+$24

    nop
    db $dd
    nop
    cp l
    ld b, d
    cp $08
    and c
    ld d, $a9
    add sp, $03
    add l
    ld [hl+], a
    ld a, [hl+]
    rst $38
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    add hl, de
    ei

jr_02a_452a:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    ld [$f7ff], sp
    call z, $90fb
    ld l, a
    ld a, [hl+]
    rst $38
    rra
    rst $38
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    ld hl, sp-$09
    rlca
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, $ff3f
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    jp $d0fe


    pop hl
    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_02a_452a

    ld d, d

Jump_02a_4562:
    rst $38
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    ld a, [de]
    rst $38
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    ld l, l
    rst $38
    cp a

Jump_02a_4576:
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    ld c, [hl]
    rst $38
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    ld d, a
    rst $38
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    dec hl
    sbc $90
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    call nz, $f3ff
    or h
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    ld a, [hl-]
    rst $38
    rst $18
    ld c, l
    rst $38
    or h
    rst $38
    ld a, d
    rst $38
    xor b
    ei
    rst $38
    ld [hl], h
    cp [hl]
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    cp $70
    add [hl]
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    xor a
    db $fd
    ld [hl], a
    ei
    and d
    or b
    ld h, b
    dec c
    xor h
    ld h, b
    ld a, [bc]
    rst $38
    rst $38
    ld h, a
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    ld a, [$e0de]
    cp $1c
    add b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    rst $38
    sbc e
    ld [hl+], a
    rst $38

jr_02a_45ee:
    ld a, e
    rst $38
    or [hl]
    rst $38
    ld e, [hl]
    ei
    rst $38
    cp e
    add h
    ld h, b
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp e
    cp a
    ld d, a
    ld [hl], b

jr_02a_4601:
    ldh [$6d], a
    cp a
    ld e, $70
    ldh [rHDMA2], a
    rst $38
    db $fd
    xor $f9
    ld c, c
    or $a7
    ld hl, sp+$47
    rst $38
    ldh a, [$b4]
    ret


    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rst $38
    rra
    ld c, d
    cp a
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    rst $30
    ld [c], a
    jr c, jr_02a_45ee

    nop
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp a
    cp $01
    xor b
    rlca
    ld a, b
    add a
    db $10
    db $e3

jr_02a_4636:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_02a_4601

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_02a_61d8

Jump_02a_4646:
    cpl
    sub b
    ld sp, hl
    nop
    rst $38
    adc d
    ld hl, $0728
    ret c

    rlca
    cp h
    ld b, e
    db $fc
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    db $fd
    ld bc, $0dfe
    ldh a, [rIE]
    ld [bc], a
    db $fd
    ld a, [hl+]
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    rst $38
    ld e, a
    add b
    xor c
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    cp a
    sbc a
    jr nz, jr_02a_4636

    ld [bc], a
    ld h, a
    sbc b

Call_02a_4680:
    rrca

Jump_02a_4681:
    and e
    ld c, d
    rst $38
    or l
    db $f4
    dec bc
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    ld e, a
    add b
    inc c
    di
    rlca
    ld hl, sp-$41
    and c
    add b
    sbc [hl]
    nop
    db $ed
    and b
    sbc d
    nop
    ld l, b
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    rst $20
    nop
    ld l, $d1
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $fc
    sub b
    call nz, $e3d0
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    rst $10
    ld e, d
    and c
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b
    ret nz

    ld d, l
    cp a
    ei
    adc [hl]
    ld a, a
    sub b
    jp z, Jump_02a_5ac8

    and c
    inc a
    jp Jump_02a_537f


    xor [hl]
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    cp $6b
    add c
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    rst $38
    or b
    cp a
    rst $28
    call z, $a4f3
    ei
    dec d
    cp h
    ret nz

    dec b
    xor e
    rst $38
    ld [bc], a
    add hl, hl
    and [hl]
    ld d, e
    or b
    ret nz

    ld [hl], l
    or b
    ret z

    ld [hl], a
    xor e
    adc b
    call z, $cab0
    scf
    or b
    call z, $b04e
    adc $ae
    db $db
    ld sp, hl
    ld a, c
    or b
    ret z

    cp a
    ld e, a
    or b
    jp $e21d


    ei
    ld [$20f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    cp e
    add c
    add sp, $30
    and $61
    ld e, $95
    or b
    ret nz

    add hl, sp
    rst $30
    jp nz, $f00f

    rst $38
    ld h, e
    ld d, a
    xor b
    ei
    nop
    cp a
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    rst $28
    ld h, e
    ld bc, $fffb
    ld h, b
    db $f4
    and b
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [$aeae], sp
    ld b, b
    ld b, b
    rst $38
    sub b
    ld d, h
    ldh [$28], a
    call c, $28c0
    ld [hl], d
    sbc $c0
    ld b, b
    sbc a
    ld h, c
    rst $38
    db $ec
    ld d, l
    nop
    cp d
    cp [hl]
    add b
    ld e, a
    xor e
    nop
    ld e, l
    nop
    ld [$80b6], a
    xor [hl]
    or d
    add b
    rst $18
    adc d
    nop
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    nop
    rst $38
    dec d
    nop
    xor b
    nop
    ld d, c
    nop
    ld [$ff00], sp
    ld [hl+], a
    nop
    sub h
    nop
    add hl, hl
    nop
    ld b, h
    nop
    push de
    db $10
    db $e4
    ldh [rP1], a
    sub e
    nop
    ld bc, $00b4
    jr nz, jr_02a_478d

jr_02a_478d:
    ld sp, hl
    add b
    xor [hl]
    nop
    cp l
    ldh [rNR23], a
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    db $fc
    inc a
    cp $80
    ld a, h
    rst $38
    ld h, h
    nop
    nop
    ld [$3e1c], sp
    ld [hl], $7f
    ld a, a
    and [hl]
    ld a, a
    add h

jr_02a_47ae:
    ld l, a
    ld b, b
    ld c, $08
    sbc [hl]
    ldh [$fd], a
    inc bc
    call nc, $0fc0
    rst $38
    ld a, [de]
    rst $38
    ld [hl], $fd
    ld a, a
    ld hl, $f8fe
    rst $30
    xor l
    di
    rst $38
    or d
    jr nz, jr_02a_4848

    ld d, d
    db $fd
    ld d, l
    xor d
    jr nz, jr_02a_47ae

    ld a, [bc]
    xor d
    jr nz, @+$01

    xor a
    rst $38
    add e
    rst $38
    ld c, l
    rst $30
    sub e
    rst $28
    rst $38
    ld c, a

jr_02a_47dd:
    rst $30
    and e
    rst $38
    ret


    rst $30
    and a
    ei
    rst $30

jr_02a_47e5:
    ret


    rst $30
    or $9c
    ld h, b
    ld [$b0ff], a
    rst $38
    rst $38
    db $eb
    db $fc
    ld b, c
    cp $a8
    rst $30
    ld b, $fb
    rst $38
    db $dd
    sbc e
    sbc l
    ld c, a
    daa
    rla
    and e
    di
    rst $38
    db $db
    pop hl
    xor $f1
    or h
    ei
    reti


    rst $38
    ld e, a
    jp c, $9d9f

    ld c, a
    ld h, $f0
    ld [c], a
    ld l, [hl]
    ldh a, [$e0]
    rst $38
    ld sp, hl
    rst $38
    rst $20
    jr jr_02a_47dd

    inc h
    rst $20
    inc h
    cp a
    rst $38
    inc a
    db $db
    inc a
    rst $20
    jr jr_02a_47e5

    ld b, c
    ld h, a
    rst $38
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    and b
    db $10
    rst $38
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    ld h, b
    ld d, $ff
    xor c

jr_02a_483b:
    pop hl
    dec bc
    adc d
    daa
    daa
    rrca
    xor l
    rst $08
    rra
    sub $3f
    ld a, l
    and [hl]

jr_02a_4848:
    add b
    ld d, b
    daa
    inc h
    db $db
    rst $38
    inc c
    rst $30
    ld [hl], $cf
    jr jr_02a_483b

    sub $0f
    rst $38
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    nop

jr_02a_485d:
    inc e
    inc bc
    rst $28

jr_02a_4860:
    cp a
    nop
    sbc c
    ld h, [hl]
    ld l, b
    ld hl, $c23d
    jr jr_02a_485d

    rst $20
    add hl, de
    ld h, b
    inc h
    ld b, b
    add c
    ld d, [hl]
    xor c
    ld [hl+], a
    rst $38
    ld sp, hl
    ld [hl], l
    ret nz

    add h
    or b
    and e
    ld de, $1fef
    ldh [$3d], a
    rst $18
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    db $10
    add l
    jr z, jr_02a_4860

    rst $38
    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $30
    jr @+$01

jr_02a_4893:
    rst $28
    jr z, jr_02a_4893

    ld l, $eb
    ld a, [hl+]
    rst $38
    ld l, d
    rst $38
    xor e
    or [hl]
    cp $af
    cp a
    xor l
    db $ed
    sbc a
    rst $38
    ld e, a
    db $ed
    push hl

Call_02a_48a8:
jr_02a_48a8:
    dec sp
    rst $30
    ld l, $ef
    jr c, @+$01

    cp a
    ld l, [hl]
    rst $30
    ld c, a
    adc $3f
    db $10
    rst $38
    rst $38
    jr z, jr_02a_48a8

    inc a
    rst $28
    ld a, [hl+]
    db $eb
    ld a, [hl]
    db $eb
    ei
    xor d
    or a

Call_02a_48c2:
    ldh [$e5], a
    dec h
    ei
    ld [hl], $ef
    jr z, @+$01

    rst $38
    ld a, $ef
    ld [hl], a
    rst $08
    ld l, $ff
    jr nz, @+$01

    rst $08
    or [hl]
    dec hl
    db $ed
    cp d
    dec sp
    rst $18
    db $76
    xor e
    rst $18
    ld d, h
    ld c, b
    jr nz, jr_02a_490b

    adc b
    nop
    ld [bc], a
    ld l, h
    jr nz, jr_02a_4901

    ei
    rst $38
    or [hl]
    ret nz

    call nz, $0fb0
    sbc $7f
    add hl, hl
    rst $28
    cp $55
    rst $38
    cp [hl]
    ld l, [hl]
    ldh [$aa], a
    rst $38
    ret nz

    sub a
    rst $38
    sbc b
    ld h, a
    sub b
    ld h, c

jr_02a_4901:
    ld e, b
    add b
    ld b, $40

Jump_02a_4905:
    ld l, e
    dec hl
    cp $80
    ld l, b
    inc a

jr_02a_490b:
    inc bc
    add h
    ld [hl], e
    or h
    db $eb
    inc hl
    db $fd
    call z, $e1a0
    ld a, [hl-]
    rst $18
    rst $30
    ld e, [hl]
    push de
    ld a, [hl]
    rst $28
    db $dd
    ld a, a
    ei
    ld l, $78
    inc bc
    add hl, de
    rst $20
    rla
    rst $38
    xor $3f
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [$00da]
    jp c, Jump_000_004e

    xor a
    cp $df
    ld hl, sp+$6f
    rst $10
    ld hl, sp-$21

jr_02a_493c:
    ldh a, [$f3]
    ld b, b
    inc a
    ld d, [hl]
    ld h, c
    ccf
    jp Jump_000_3ebf


    rst $00
    db $dd
    cpl

jr_02a_4949:
    jp c, $f02f

jr_02a_494c:
    push hl
    dec a
    rst $38
    jp $c73c


    ret nc

    cpl

jr_02a_4954:
    ret c

    cpl
    sub b
    cp e
    rst $38
    ld a, [hl+]
    jr nc, jr_02a_493c

    xor d
    db $eb
    ld a, a
    jr nc, jr_02a_4949

    and l
    cp d
    jr nc, @-$1e

    xor c
    jr nc, jr_02a_494c

    rst $38
    nop
    rst $18
    xor $20
    ei
    xor d
    ld a, [$7fe0]
    ld_long a, $ffe0
    sbc [hl]
    and b
    rst $30
    call nz, Call_02a_6b40
    db $eb
    nop
    sub $62
    ld [hl+], a
    ld [hl], l
    inc c
    ld [hl+], a
    db $db
    inc h
    cp $ff
    ld bc, $0af5
    jp c, $f425

    dec bc
    add sp, -$01
    rla
    add sp, $17
    or c
    ld c, [hl]
    jp hl


    ld d, $d2
    rst $38

jr_02a_4999:
    inc l
    ld h, e
    sbc h
    ret nc

    ld l, $e9
    ld d, $b4
    rst $38
    ld c, e
    rst $28
    db $10
    ld a, l
    add d
    rst $10
    jr z, jr_02a_4954

    rst $38
    ld d, l
    ld b, l
    cp d
    add b
    ld a, a
    jr jr_02a_4999

    ld l, [hl]
    rst $38
    add c
    ld a, [hl]
    cp l
    jr @-$17

    add b
    ld a, a
    ld b, l
    rst $38
    cp d
    xor d
    ld d, l
    rst $10
    jr z, jr_02a_4a40

    add d
    rst $28
    rst $38
    db $10
    ld e, a

jr_02a_49c8:
    add b
    rla
    ldh [$83], a
    ld a, b
    ld d, c
    rst $38
    xor h
    xor e
    ld d, h
    ldh a, [$0e]
    xor c
    ld d, [hl]
    db $f4
    rst $38
    dec bc
    db $f4
    dec bc
    xor c
    ld d, [hl]
    pop af
    ld c, $aa
    rst $38
    ld d, h
    ld d, d
    xor h
    add h
    ld a, b
    jr jr_02a_49c8

    ld l, b
    rst $38
    add b
    ld a, a
    cp a
    rra
    rst $28
    add a
    ld a, a
    ld d, e
    rst $18
    xor a
    xor e
    ld d, l
    pop af
    rrca
    ldh [$e1], a
    ld d, a
    nop
    rst $30
    adc [hl]
    nop
    rla
    inc e
    and b
    rlca
    nop
    ld c, d
    ld b, b
    rst $38
    dec b
    nop
    ld [bc], a
    nop
    sub b
    nop
    adc b
    nop
    rst $30
    ld de, $8001
    db $fc
    ldh [$c0], a
    ld b, b
    ld de, $ff01
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, b
    ld [bc], a
    nop
    ld b, b
    ld b, b
    rst $38
    and d
    and b
    ld b, b
    ld b, b
    and b
    and b
    ld d, l
    ld d, l
    rst $28
    ld [$41ea], a
    ld b, c
    db $ec
    ldh [rLYC], a
    inc hl
    inc hl
    rst $38
    ld b, l
    ld b, l
    xor e
    xor e
    ld d, a
    ld d, a
    rst $38
    rst $38
    rst $38
    sub b

jr_02a_4a40:
    nop
    adc c
    nop
    ld de, $8300
    nop
    rst $38
    ld [de], a
    nop
    rst $00
    ld b, b
    dec e
    nop
    ld [hl], a
    nop
    rst $38
    cp $ff
    cp $fe
    db $f4
    ld a, [$f2f6]
    rst $30
    pop af
    or $fe
    db $fc
    ldh [$f4], a
    ld a, [$7fff]
    ei
    ccf
    ld a, a
    db $fc
    ldh [rIE], a
    rst $38
    ld a, a
    cpl
    rst $30
    rst $38
    db $eb
    ld h, a
    inc hl
    rst $28
    ld sp, hl
    cp $fe
    cp $7f
    db $eb
    or $ee
    and $e3
    xor $fe
    db $fc
    ldh [$e7], a
    add sp, -$0a
    rst $38
    db $ec
    ldh [$fc], a
    ld [c], a
    ld b, a
    inc de
    rst $28
    db $dd
    rst $00
    ret c

    ldh [$f5], a
    ld a, [$bdfc]
    pop hl
    cp $dd
    ld a, a
    cp $f3
    db $fc
    ld d, l
    ld [$fdf2], a
    call nz, $9fe3
    ccf
    rst $38
    rst $30
    ld a, a
    ld a, $ac
    ld h, b
    cp b
    ldh [rIE], a
    rst $38
    ld a, [$fdfa]
    db $fd
    cp $fc
    db $fd
    ld a, [$64fc]
    nop
    add b
    ld bc, $bfdf
    ld a, a
    ld c, a
    ccf
    rst $18

jr_02a_4abf:
    ei
    ccf
    sbc a
    inc b
    jr nz, @-$0f

    rst $38
    ld e, a
    ccf
    cp $d6
    ld a, a
    pop hl
    db $fd
    cp $29
    nop
    cp $d8
    ldh [rIE], a
    db $fc
    ld a, a
    xor a
    sbc a
    ld l, a
    rra
    rst $00
    ld a, a
    rra
    db $d3
    nop
    or a

Call_02a_4ae0:
    cp a
    ld a, a
    rst $08
    ret c

    ldh [$f9], a
    cp $c8
    db $e3
    cp $ff
    cp $ef
    cp $7e
    db $fd
    or $ff
    sbc a
    ei
    rst $38
    cpl
    or a
    nop
    rst $18
    ccf
    rst $20
    sbc a
    rst $28
    ei
    rra
    call $e2d8
    rst $08
    rst $10
    db $e3
    db $db
    add e
    rst $38
    cp e
    ret


    or c
    pop hl
    sub l
    ld [hl], $00
    and c
    db $fd
    add c
    sbc d
    ld bc, $cfef
    rst $08
    rst $38
    sub a
    and a
    rst $38
    db $db
    and e
    sbc a
    db $e3
    ccf
    ld b, e
    ei
    ei
    rst $38
    cp $fe
    ld a, a
    ld a, [hl]
    ld hl, sp-$10

Jump_02a_4b2a:
    and [hl]
    sbc d
    rst $38
    pop hl
    add c
    daa
    daa
    rst $38
    rst $38
    sub c
    ld b, c
    rst $38
    ld b, d
    add b
    db $e3
    jr nz, jr_02a_4abf

    nop
    or e
    or e
    ld c, $8e
    ldh [$fe], a
    cp a
    cp a
    nop
    nop
    nop
    db $fd
    ld b, [hl]
    rst $38
    db $f4
    pop bc
    cp d
    or a
    or a
    call nz, Call_02a_6fc0
    call nz, $b7b8
    cp d
    sbc $e1
    set 1, h
    ret c

    push af
    cp $c0
    ld a, [c]
    jp nc, Jump_02a_4646

    jp $bbbe


    cp e
    cp a
    cp c
    or a
    or a
    cp c
    cp e
    cp [hl]
    sbc [hl]
    pop hl
    call $ceb9
    rst $20
    and $ff
    rst $38
    ld b, [hl]
    db $d3
    call nc, $e17f
    ret nz

    db $dd
    ret nz

    cp l
    ldh [$be], a
    ret nz

    pop bc
    ld e, [hl]
    pop hl
    rst $08
    ret nc

    sbc [hl]
    rst $20
    and $bf
    cp h
    cp h
    cp a
    cp l
    rst $38
    ld a, a
    ldh [$c2], a
    dec e
    jp nz, $e0bd

    pop bc
    jp nz, $cec3

    ldh [$cf], a
    ld [c], a
    ld sp, hl
    ld [c], a
    ccf
    cp a
    cp h
    cp c
    cp l
    cp e
    cp l
    cp l
    push af
    add hl, de
    db $e3
    sub h
    sbc [hl]
    and $bd
    ldh [$c3], a
    ldh [$c0], a
    cp d
    db $fc
    pop bc
    rst $00
    ldh [$b7], a
    ld l, e
    cp c
    cp a
    db $f4
    ldh [$bd], a
    ld hl, sp-$20
    cp e
    cp l
    ld [$50c2], a
    call nz, $19ce
    ldh [$61], a
    ldh [$9f], a
    ldh [$b9], a
    ld e, h
    jp hl


    cp [hl]
    db $fc
    ret nz

    ld a, a
    cp a
    cp c
    or a
    cp b
    or a
    cp c
    cp [hl]
    or h
    ldh [$0d], a
    cp [hl]
    jp hl


    ret nz

    cp c
    cp [hl]
    or l
    ldh [$86], a
    ret z

    inc l
    push hl
    add hl, de
    ldh [$ab], a
    cp d
    cp l
    ldh [$e1], a
    cp l
    adc c
    jp nz, $b5d1

    jp $aac1


    db $fc
    ret nz

    cp [hl]
    adc d
    pop hl
    cp [hl]
    ld hl, sp-$1f
    call nz, $c0e9
    cp [hl]
    ld de, $69c4
    jp $e5c2


    inc l
    rst $20
    cp a
    and l
    ldh [$8b], a
    pop bc
    ldh [$e5], a
    ld l, d
    or l
    pop bc
    jp $c0fc


    pop bc
    ld a, e
    ldh [$c0], a
    pop bc
    ld hl, sp-$20
    cp b
    add hl, hl
    rst $00
    inc l
    add $2c
    jp hl


    cp d
    or a
    call nz, $e1d6
    call nz, Call_02a_5500
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
    ld [$baf7], a
    or a
    cp b
    jp z, $b7a0

    or a
    cp d
    pop bc
    nop
    dec c
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
    cp e
    cp [hl]
    jp $e10d


    call $21c0
    cp a
    sbc b
    rst $20
    add hl, hl
    call z, $c32c
    ld d, l
    xor h
    pop bc
    res 4, e
    jp z, Jump_02a_78a1

    dec c
    ldh [$96], a
    pop bc
    call nz, $9aa1
    sbc b
    sbc b
    sbc d
    add e
    and a
    db $10
    add hl, hl
    call nz, $c32c
    sub $a1
    ld d, l
    xor b
    jp $a3cb


    dec d
    ld [c], a
    or h
    pop hl
    cp $8d
    ret nz

    ld b, [hl]
    ld b, [hl]
    sbc d
    sub a
    ld b, [hl]
    ld b, [hl]
    sub a
    ld bc, $6a9a
    and d
    ld c, d
    jp z, $c12c

    call nc, Call_02a_5582
    xor c
    and d
    and $b4
    ld [c], a
    inc [hl]
    adc l
    ret nz

    pop bc
    ldh [$a8], a
    sbc d
    add b
    sub a
    sbc d
    and c
    xor l
    inc l
    jp nz, Jump_000_2cf0

    db $ec
    dec c
    pop bc
    inc a
    xor c
    add b
    and c
    sbc e
    xor b
    xor c
    xor b
    rrca
    ld b, [hl]
    xor b
    ld b, [hl]
    sbc e
    and c
    xor l
    inc l
    jp nz, $ed2c

    ld c, d
    rst $00
    ld a, l
    push bc
    dec h
    add e
    pop de
    ld b, [hl]
    sbc c
    xor c
    ld b, [hl]
    cp $e1
    pop bc
    sbc c
    and c
    xor l
    inc l
    jp nz, $ab79

    ld a, $c2
    ld c, $82
    jp nc, $2346

    rst $00
    ret z

    db $e4
    ld h, e
    ld [bc], a
    pop hl
    jp c, $9961

    and c
    xor [hl]
    inc l
    jp $0ef0


    add l
    sbc $84
    ld [de], a
    and c
    dec a
    add d
    ret


    jp z, $9a46

    ld c, a
    sbc h
    sbc b
    sbc b
    sbc b
    pop bc
    db $e4
    add b
    ldh [$d1], a
    and c
    xor d
    ld b, b
    dec b
    xor c
    ld c, $80
    sbc $85
    ld [de], a
    and c
    ld a, [$88c4]
    pop bc
    xor b
    call nz, Call_000_0cc1
    add b
    and $a1
    xor b
    push bc

jr_02a_4d2c:
    add $45
    ld h, d
    sub e
    add [hl]
    sbc $85
    sub a
    and e
    ld b, $86
    and $a9
    xor c
    ret nz

    jp hl


    and c
    xor b
    ld hl, $93e4
    add [hl]
    sbc $85
    nop
    inc c
    ld [$49e2], a
    nop
    pop hl
    and c
    xor b
    ld hl, $c4e0

jr_02a_4d50:
    ld b, c
    sub e
    add [hl]
    sbc $85
    jr jr_02a_4d2c

    ld b, c
    pop bc
    pop af
    add b
    ret nz

    push bc
    add $a1
    xor b
    add a
    ld b, h
    ld a, [c]
    rst $00
    ld hl, sp-$4e
    call nz, Call_02a_40d5
    add d
    rst $20
    ld b, l
    ld b, l
    ld b, l
    ld c, b
    ld c, [hl]
    rra
    ld d, e
    ld b, e
    ld c, b
    ld d, e
    ld b, l
    ld sp, hl
    and b
    ld l, [hl]
    jp nz, $a7a1

    or b
    ld b, [hl]
    ld b, e
    sub e
    add h
    add hl, sp
    ld b, h
    adc $60
    rst $08
    ret nc

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
    ld hl, sp-$58
    ld c, c
    rla
    pop bc
    jp hl


    jr nz, jr_02a_4d50

    xor b
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

jr_02a_4db4:
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
    sbc e
    cp $ac
    inc hl
    xor c
    xor c
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
    pop de
    ld b, d
    ret z

    add b
    or d
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
    jp nc, $9946

    adc d
    and h
    ld a, c
    adc e
    dec l
    jr nz, jr_02a_4e37

    jr nz, jr_02a_4e44

    ld d, b
    ld b, l
    add c
    ld a, b
    and e
    cp [hl]
    and e

Jump_02a_4e21:
    cpl
    jr nz, jr_02a_4db4

    db $e3

jr_02a_4e25:
    dec bc
    ld [hl], l
    and c
    pop de
    ld [$2042], sp
    sbc c
    adc d
    and e
    ld b, d
    ldh [$3a], a
    rra
    ld hl, $472a
    ld d, h

jr_02a_4e37:
    ld b, h
    ret nz

    ldh [$78], a
    and c
    cp [hl]
    and e
    ldh [$2f], a
    jr nz, jr_02a_4e25

    dec bc
    sub [hl]

jr_02a_4e44:
    add c
    pop de
    dec bc
    ld a, [hl]
    call nz, Call_02a_4680
    add hl, sp
    ld a, a
    dec [hl]
    ld a, $49
    ld d, h
    ld b, l
    add e
    ld l, l
    ld a, [hl]
    add l
    inc bc
    set 1, h
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
    ld l, a
    add h
    sub l
    inc bc
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
    add h
    add l
    ld [hl], c
    ld [hl], c
    ld [hl], c
    add [hl]
    add [hl]
    ld bc, $c185
    db $e4
    ld a, $60
    ld a, b
    nop
    ld [$7725], a
    xor c

jr_02a_4e93:
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
    jr nz, jr_02a_4e93

    dec h
    inc bc

jr_02a_4eab:
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
    jr nz, jr_02a_4f15

    push hl
    ld c, $ff
    and c
    ld a, d

jr_02a_4ed8:
    ld a, h
    ld a, l
    ld b, h
    ld b, c
    ret nz

    ld [hl+], a
    ld c, $82
    ld [$c426], a
    db $76
    ld b, h
    dec l
    ld l, h
    pop de
    ld a, [hl+]
    jr nz, jr_02a_4eab

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
    and l
    jp nz, Jump_02a_6784

    dec bc
    ld a, c
    ld a, [hl]
    nop
    pop hl
    add c
    xor a
    add c
    and b
    ld b, a
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

jr_02a_4f15:
    add b
    ld b, h
    ld a, [hl-]
    dec [hl]
    ld b, b
    ld [bc], a
    ret nz

    ldh [$99], a
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
    rst $28
    ld h, d
    and b
    ld b, l
    inc a
    add h
    ldh a, [rPCM12]
    ld b, l
    adc $09
    inc h
    and d
    jp nz, $84c8

    ld l, a
    add e
    ld b, e
    inc c
    add e
    and c
    add $20
    push bc
    add $a0
    ld c, d
    db $76
    ld b, a
    ld [hl], b
    add hl, bc
    inc h
    and d
    jr jr_02a_4ed8

    ld h, e
    adc [hl]
    ret nz

    adc e
    nop
    add h
    add l
    add e
    and d
    ld b, h
    jp nz, Jump_02a_44a0

    ret nz

    jp nz, Jump_02a_4905

    push hl
    ld b, h
    ld a, [hl+]
    ld [de], a
    ld [hl+], a
    ld d, l
    and h
    inc a
    ld c, c
    sub a
    sbc d
    nop
    ld [hl], e
    jr nz, @-$38

    add c
    ld b, a
    ld h, a
    ld c, c
    push hl
    pop af
    ld b, l
    and h
    call nz, $6402
    sub [hl]
    add c
    ld e, $8f
    nop
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
    sbc c
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
    sbc $29
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
    sbc [hl]
    ld h, h
    rst $38
    ldh [$1f], a
    sbc a
    inc a
    ld b, h
    xor b
    xor b
    xor e
    ld b, e
    ld b, a
    ld l, a
    push de
    ld b, d
    ld [c], a
    ld b, h
    dec h
    jp nc, Jump_000_008c

    add d
    ld b, d
    dec sp
    db $e3
    ld b, d
    dec [hl]
    ld l, c
    rst $38
    sbc l
    dec [hl]
    dec [hl]
    sbc l
    ld l, d
    dec [hl]
    ld b, d
    xor c
    inc bc
    xor c
    sbc c
    ld l, b
    ld hl, $6947
    ret nz

    inc b
    inc [hl]
    add e
    and h
    jp Jump_02a_4162


    db $10
    add h
    add e
    ld d, $60
    ld a, [$c040]
    ldh [$35], a
    rst $38
    ldh [$c0], a
    ldh [$be], a
    ret nz

    nop
    push bc
    ld h, d
    ld e, c
    ld l, b
    ret nz

    inc b
    jp nz, $c765

    ld b, $c6
    ld b, d
    adc [hl]
    and d
    ld b, b
    ldh [$3d], a
    ld l, e
    cp a
    ld h, b
    ld [hl], c
    ld l, l
    inc a
    ld b, h
    push bc
    ld h, e
    ld b, a
    ld l, d
    jr jr_02a_508c

    jr z, jr_02a_502c

    ld b, l
    push bc
    nop
    sbc c
    xor b
    ld d, b
    ld bc, $83cf
    ret nz

    rst $00
    nop
    rst $38
    and b
    add a
    inc hl
    ld b, a

jr_02a_502c:
    ld [hl], b
    call nc, Call_02a_6922
    inc hl
    ld b, h
    add c
    pop bc
    db $e3
    inc hl
    ldh [rSB], a
    pop de
    ld b, b
    rst $00
    add a
    inc h
    inc c
    inc h
    cp [hl]
    dec c
    sub e
    jr nz, jr_02a_50ad

    inc h
    ld b, h
    add l
    ld bc, $2399
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
    ld [bc], a
    call nz, $9618
    inc bc
    jr c, jr_02a_50bd

    jp z, $c501

    add $88
    jr nz, jr_02a_50bd

    ld h, a
    sub e
    xor b
    ld [$0c72], sp
    ld c, h
    pop hl
    jr jr_02a_5096

    sbc d
    add h
    db $e3
    sub l
    ret nz

    ld e, d
    ld l, b
    scf
    add a
    db $10
    dec b
    and [hl]
    add h
    rlca
    ld b, d
    and h
    ld h, b
    add c
    cp d
    db $f4
    ld b, c
    add $62
    ld l, [hl]
    ld b, b
    nop
    ld e, d
    ld l, b
    scf
    add [hl]
    cp a

jr_02a_508c:
    ld b, [hl]
    add h
    ld [$86c2], sp
    jr jr_02a_50b4

    jp nc, Jump_02a_4e21

jr_02a_5096:
    ld b, $10
    ld e, d
    ld h, [hl]
    scf
    adc h
    dec hl
    xor e
    push de
    ld h, d
    xor b
    ld c, a
    add b
    jr jr_02a_50c6

    dec c
    jp nz, $d0c0

    inc hl
    ld e, d
    ld l, b
    scf

jr_02a_50ad:
    add h
    ld [bc], a
    xor c
    add h
    rlca
    dec b
    ld b, d

jr_02a_50b4:
    xor c
    xor b
    add c
    sbc c
    xor [hl]
    and [hl]
    ret nc

    inc h
    ld e, d

jr_02a_50bd:
    ld l, b
    sub e
    and a
    ld [bc], a
    and l
    ld [hl], d
    rlca
    rlc c

jr_02a_50c6:
    call z, $e3bf
    dec a
    ld b, a
    ret nc

    inc h
    ld e, d
    ld h, a
    ld hl, sp-$7e
    add l
    xor d
    add h
    ld [$0200], sp
    ld b, l
    db $fd
    daa
    ret nc

    ld h, $11
    add l
    cp l
    inc bc
    add c
    adc e
    ld [hl], d
    ld b, $02
    ld b, l
    nop
    ld c, [hl]
    ld b, e
    and l
    add h
    ret nc

    inc hl
    ld [de], a
    and l
    ld hl, sp-$7d
    ld a, a
    db $eb
    ld [hl], d
    add hl, bc
    ld b, b
    add h
    nop
    adc b
    call nz, Call_000_27d0
    cp $fb
    ld [hl], e
    ld h, a
    ld b, b
    db $ec
    ret nc

    ret nc

    cp a
    ld [$0000], a
    nop
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

jr_02a_5140:
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
    jp nz, Jump_02a_6ee0

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
    jp nz, Jump_02a_6ee0

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
    jr nz, jr_02a_5140

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
    jp nz, Jump_02a_6d03

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

    call nz, Call_02a_4ae0
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

Jump_02a_537f:
    ld a, [c]
    call nz, Call_02a_48a8
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
    jp nz, Jump_02a_4b2a

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
    jr z, jr_02a_542d

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

jr_02a_5413:
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

jr_02a_5420:
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

jr_02a_542d:
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
    jr nz, jr_02a_5413

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
    jr c, jr_02a_5420

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
    jp nz, Jump_02a_4576

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
    call nz, Call_02a_60c2
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

Call_02a_5500:
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
    and c
    ret nz

    call nz, $41b7
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
    jp Jump_02a_6919


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
    cp b
    ld b, a
    ld [bc], a
    rst $00
    cp a
    and l
    inc b
    add e
    nop

Call_02a_5582:
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
    jr jr_02a_55dc

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

jr_02a_55dc:
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


    jr nz, jr_02a_5623

    cp a
    ld [c], a
    ld d, c
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

jr_02a_5623:
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
    db $e3
    or h
    ld [c], a
    inc a
    inc hl
    ld [hl], d
    ld a, [bc]
    ret nz

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
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    pop hl
    ld bc, $ff0f
    pop hl
    db $e3
    ld a, [$f5df]
    push hl
    rst $20
    cp a
    ld a, [c]
    and a
    db $e3
    and l
    ld [c], a
    nop
    sbc a
    pop af
    adc d
    jp hl


    ld a, a
    ldh a, [rOCPD]
    ld [$f2e0], a
    ld b, h
    pop hl
    db $d3
    pop af
    db $ed
    pop af
    nop
    sbc a
    ei
    ld e, d
    ldh [$9f], a
    db $f4
    ld a, a
    db $fd
    add b
    ld sp, hl
    ld h, b
    rst $20
    sbc a
    pop de
    ld [bc], a
    ld [$e100], a
    rst $38
    ldh [$fa], a
    ld a, [hl+]
    jp nc, $e981

    ret nz

    di
    ld [$e0c5], sp
    rst $38
    ldh [rIE], a
    nop
    inc hl
    ret nc

    xor b
    and [hl]
    ld b, d
    call nc, $a6c4
    and c
    or $81
    and h
    ld hl, $5df4
    jp hl


    nop
    add b
    db $f4
    ld a, [bc]
    cp c
    ld c, d
    or h
    ldh [$fd], a
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e4
    db $e3
    dec b
    pop af
    pop hl
    db $fc
    pop af
    rst $18
    ei
    ldh [$fa], a
    jp $c0e0


    rst $30
    db $e3
    db $e3
    nop
    and b
    or $e1
    and $5f
    di
    pop hl
    rst $20
    ret nz

    cp $bf
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    nop
    ld hl, $e1ff
    ld a, [c]
    push bc
    db $db
    jp Jump_02a_69df


    sub $81
    call nz, $fde0
    add d
    sub $c0
    ld b, c
    db $db
    ret nz

    db $fc
    res 4, e
    and c
    db $fc
    add h
    cp b
    adc e
    cp h
    nop
    inc de
    ld bc, $2713
    cp a
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    db $ed
    nop
    nop
    nop

jr_02a_5729:
    cp $d5
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, jr_02a_5729

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    ld a, [$e0e5]
    add b
    ld [$00e4], a
    nop
    rla
    nop
    ld bc, $d612
    ld [c], a
    ld d, b
    rst $08
    ldh [$e6], a
    pop hl
    ld [$e2da], a
    db $fd
    db $e3
    and $e1
    ld d, a
    cpl
    nop
    inc bc
    ret nz

    ld [c], a
    and b
    xor a
    ldh [$64], a
    xor e
    ldh [$c7], a
    call nc, Call_000_2000
    ret nz

    ld [c], a
    jp z, $9ce1

    pop hl
    ld e, a
    nop
    ld d, l
    ld b, $96
    ld [c], a
    ld b, b
    adc a
    ldh [$b2], a
    adc e
    ldh [$a8], a
    or $e2
    sbc h
    and h
    db $e3
    ld a, h
    pop hl
    cp a
    nop
    inc c
    add b
    ld [c], a
    adc [hl]
    pop hl
    ld e, c
    ld a, [$e06b]
    ld d, b
    add h
    ld [c], a
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    rst $38
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    cp a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    db $ed
    ldh a, [$f8]
    push hl
    jr nz, @-$3e

    ld [hl], c
    db $e3
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    rst $38
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rst $38
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $07ff
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $28
    rst $38
    add c
    inc a
    db $10
    ld b, h
    and $20
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$c0e3], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$83], a
    db $f4
    rst $38
    ld a, b
    ldh [$cb], a
    jp $c5e2


    ldh a, [$e0]
    rst $28
    ld [$f1c0], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    db $ec
    rst $38
    ld sp, hl
    cp $7f
    and $f8
    ld c, b
    ldh a, [$d0]
    ldh [$a8], a
    ld [hl], d
    ldh [$fb], a

jr_02a_5857:
    ld b, b
    add b
    db $10
    rst $20
    jp hl


    cp $8e
    ldh a, [$30]
    pop af
    ret nz

    ld hl, sp-$1b
    ld h, d
    pop bc
    db $10
    push hl
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rst $30
    rla
    rrca
    ld [de], a
    inc d
    ldh [$09], a
    rlca
    rla
    inc bc
    rst $38
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    rst $30
    jp Jump_000_3c3c


    sbc d
    add $00
    nop
    ld b, b
    add b
    rst $18
    ret nz

    add b
    jr nz, jr_02a_5857

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_02a_64e1

    pop bc
    xor b
    ldh a, [$ea]
    ldh a, [$df]
    db $f4
    ld hl, sp-$2c
    ld hl, sp-$0c
    inc d
    ldh [$b8], a
    ldh a, [$fb]
    add sp, -$10
    db $10
    jp hl


    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$fc3b], a
    ld sp, hl
    ld hl, sp-$20
    db $f4
    rst $38

jr_02a_58cd:
    ld c, b
    ld [hl+], a
    db $eb
    and b
    ldh [$f0], a
    call z, $fba3
    push bc
    pop af
    call $cbe3
    nop
    nop
    db $ed
    cp $ff
    cp $f8
    add sp, -$10
    ld d, d
    ldh [$e8], a
    ret nz

    rst $20
    ret nz

    add b
    ld d, b
    sub $c0
    jr nz, @-$39

    cp l
    cp $ee
    jp $b1f0


    ld a, [de]
    ldh [$f8], a
    push hl
    or d
    and c
    ld d, h
    and c
    rst $38
    ld a, a
    rst $30
    xor a
    ld a, a
    ld a, a
    inc d
    ldh [$b7], a
    rra
    ccf
    rra
    ld a, a

jr_02a_590b:
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    inc d
    ld [c], a
    rst $38
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    sub l
    rst $18
    ld [de], a
    ldh [rSCY], a
    sub b
    ld [$0ca0], a
    ld [c], a
    cp $e1
    and b
    ld [hl], h
    jr nc, jr_02a_58cd

    jr nz, @-$3b

    ei
    jp c, $b0e6

    ldh [$f4], a
    rra
    ret nz

    rst $30
    ret c

    ldh a, [$f8]
    inc d
    ldh [$b4], a
    ldh [$f0], a
    ldh [$fa], a
    jr nz, jr_02a_590b

    ei
    ld [de], a
    ldh [$91], a
    nop
    db $fd
    cp $f6
    rst $38
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    ld b, $f8
    ldh [$f5], a
    cp $78
    push hl
    inc l
    push af
    nop
    and c
    xor $cc
    pop af
    xor d
    rst $38
    ld [bc], a
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $a1ff


    jp $8300


    dec b
    add e
    ld b, b
    add c
    di
    ld b, c
    add b
    ldh [$a0], a
    ld [hl], b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [rIE]
    pop af
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $fd
    ld [de], a
    ld [hl], h
    add d
    ld c, b
    nop
    ld bc, $5878
    rst $38
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $85ff


    jp $8304


    ld b, c
    add e
    ld [bc], a
    add c
    or $6d
    add b
    add b
    and b
    ld c, h
    and b
    ret nc

    ldh [$64], a

jr_02a_59b0:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_02a_59b0

    nop
    add d
    ret nc

Call_02a_59c0:
    ldh [$a0], a
    xor c
    ld [bc], a
    ld bc, $0300
    nop
    ld [hl], c
    xor c
    pop af
    ldh [$60], a
    add sp, $30
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    nop
    nop
    nop
    jr nz, jr_02a_5a40

    ld d, l
    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    rst $18
    dec l
    rst $38
    ld d, e
    sub b
    inc bc
    call nc, $ff01
    ld a, a
    db $f4
    inc bc
    sub b
    inc bc
    call nc, $1601
    ld a, l
    sbc a

jr_02a_5a40:
    ld a, [hl]
    pop af
    nop
    call nc, $ff01
    ld a, a
    sub b
    inc bc
    call nc, $ac01
    ld [$08f5], sp
    ld a, a
    ld de, $1aff
    xor h
    ld [$2508], sp
    ld [$0825], sp
    dec h
    ld [$d525], sp

jr_02a_5a5e:
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, @-$0f

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    cp $e5
    ldh [$80], a
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    cp $42
    ld hl, sp-$38
    ldh a, [$80]
    ldh [rNR10], a
    rst $28
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    cp h
    ld a, a
    rst $38
    add sp, -$01
    add c
    cp $08
    ldh a, [$f8]
    push hl
    ei
    jr nz, jr_02a_5a5e

    cp a
    ld [c], a
    nop
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    ld a, a
    rst $38
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rra
    rst $38
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $ff07
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop

Jump_02a_5ac8:
    rst $38
    rst $20
    add c
    inc a
    db $10
    db $d3
    db $e3
    add e
    ldh [rNR41], a
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$e063], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$0b], a
    db $f4
    rst $38
    ld a, b
    ldh [$80], a
    and e
    and $23
    pop hl
    ldh a, [$e0]
    rst $28
    ld [$c0e3], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    ld [bc], a
    add c
    and b
    rst $38
    pop bc
    add b
    pop bc
    add l
    jp $c3a1


    nop
    ld a, a
    add e
    dec b
    add e
    ld b, b
    add c
    ld b, c
    add b
    ret nz

    ldh [rIE], a
    ret nz

    and b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [$f1]
    rst $38
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $12
    ld a, [hl]
    call nc, Call_02a_48c2
    nop
    ld bc, $5878
    rst $38
    or b
    jp hl


    rst $38
    ld [bc], a
    ld bc, $0300
    nop
    nop
    ld b, b
    ld b, b
    ld a, a
    nop
    jr nz, jr_02a_5b70

jr_02a_5b70:
    db $10
    ld [$0400], sp
    or d
    ret nz

    ret nz

    and d
    pop bc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f3]
    jp $e33c


    jp $fd3c


    ldh [$fe], a
    ld [c], a
    db $f4
    pop hl
    dec de
    rst $20
    cpl
    rst $38
    call c, $f11e
    inc a
    db $e3
    ld a, h
    jp Jump_02a_7f7c


    jp $9ce3


    jp $18bc


    rst $20
    ld [c], a
    pop hl
    rst $38
    ld a, [de]
    push hl
    ld [de], a
    rst $28
    ld e, a
    cp b
    ld a, a
    ldh [rIE], a
    di
    adc h
    inc de
    rst $28
    rra
    ld hl, sp-$04
    ld h, e
    cp a
    db $fc
    add e
    db $fc
    inc bc
    cp h
    ld b, e
    call nz, $98e1
    rst $38
    rst $20
    db $fc
    ld b, e
    call c, $f863
    daa
    ld l, b
    rst $38
    or a
    ld l, h
    sub e
    db $fc
    inc de
    add sp, $17
    ld hl, sp-$01
    rrca
    sbc $25
    inc a
    rst $00
    ld a, $c3
    ccf
    rst $38
    jp nz, $c13e

    jp $c33d


    dec a
    cp e
    rst $30
    rst $10
    rst $38
    nop
    and b
    jp hl


    jp $c3bc


    cp h
    ret


    ld a, h
    jp nz, $bee0

    pop hl
    ld b, e
    db $f4
    ldh [$a0], a
    pop hl
    nop
    rst $38
    cp a
    db $dd
    db $eb
    rst $38
    nop
    ld a, [hl]
    add c
    add b
    ld [c], a
    db $f4
    rst $38
    rrca
    ldh a, [rNR32]
    db $e3
    inc e
    di
    inc e
    db $e3
    rst $38
    inc c
    di
    ccf
    ret nc

    dec de
    db $f4
    ld d, a
    rst $38
    ld e, a
    xor a
    db $fc
    ld a, [hl]
    pop af
    cp h
    ld [hl], b
    ldh [$fc], a
    ld [hl], b
    ld [c], a
    rst $38
    ei
    rst $38
    sbc $ff
    push af
    rst $38
    xor d
    rst $38
    or a
    ld d, a
    rst $38
    cp a
    ld h, a
    and b
    di
    adc h
    ld hl, sp-$1f
    ld a, h
    db $fd
    db $e3
    ld [hl], b
    rst $20
    rst $28
    rst $38
    rst $10
    ld a, a
    db $ed
    ld a, a
    rst $38
    rst $30
    ccf
    ld l, e
    cp a
    db $76
    sbc a
    ei
    rra
    rst $38
    push af
    rra
    ld a, [$dd0f]
    daa
    ld a, $c7
    di
    ccf
    jp $e06e


    ld [hl], b
    ld [c], a
    db $ed
    rst $38
    db $d3
    inc a
    dec sp
    ld a, [hl]
    add c
    ld [hl], b
    jp hl


    db $e3
    sbc h
    cp h
    inc d
    ldh [rBCPD], a
    ldh [$eb], a
    jp $1063


    ldh [$57], a
    and h
    ldh [$7d], a
    rst $38
    db $d3
    ld sp, hl
    rst $28
    ld c, d
    pop hl
    db $e4
    pop bc
    cp e
    db $f4
    ld e, e
    db $f4
    xor h
    rst $38
    di
    ld l, h
    di
    cp h
    db $e3
    ld l, h
    di
    cp e
    rst $38
    db $f4
    db $db
    db $f4
    cp l
    jp $ffe7


    cp d
    cp a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    cp $58
    and b
    rst $38
    rst $28
    rst $38
    db $db
    rst $38
    ld l, a
    adc [hl]
    ldh [$af], a
    ld a, a
    or l
    rst $08
    ld a, a
    rst $28
    ld a, a
    ld d, a
    ld b, [hl]
    and b
    ret nc

    jp $e718


    cp $f8
    push hl
    ld d, a
    rst $38
    xor h
    rst $38
    ld [hl], h
    ei
    cp b
    ld l, a
    rst $20
    ld e, b
    rst $20
    db $fc
    dec b
    ldh [$98], a
    rst $20
    ld b, b
    rst $20
    rst $18
    cp d
    rst $38
    db $ec
    di
    sbc b
    ldh [$e0], a
    cp d
    rst $38
    jp hl


    ld l, h
    ld hl, sp-$20
    ret z

    push hl
    rst $28
    ld h, $e0
    ld l, l
    rst $38
    scf
    rst $38
    rst $38
    dec hl
    rst $38
    ld d, $ff
    dec sp
    rst $38
    dec d
    rst $38
    rst $38
    ld a, [de]
    rst $28
    dec [hl]
    rst $08
    ld a, $c7
    dec de
    rst $38
    rst $20
    ld a, [de]
    rst $20
    dec a
    jp $c33f


    add hl, de
    db $db
    rst $20
    rst $10
    db $e4
    add b
    inc l
    db $d3
    and b
    rst $20
    sbc b
    rst $20
    adc d
    ld b, d
    pop hl
    ret c

    and b
    ldh [$bc], a
    sbc $c0
    or b
    pop hl
    ld b, b
    pop hl
    set 7, [hl]
    ld a, b
    and $b0
    rst $38
    ld d, h
    ei
    and h
    ei
    ld a, b
    rst $38
    rst $30
    xor b
    rst $30
    ld h, h
    ei
    or h
    ei
    ret nc

    rst $38
    rst $38
    pop bc
    rst $38
    or a
    rst $38
    ld e, l
    rst $38
    ld [$3e54], a
    ldh [$3a], a
    add c
    rst $38
    sub h
    add b
    ld d, a
    ld a, $e0
    dec [hl]
    ld a, [hl-]
    ldh [$f6], a
    xor [hl]
    ret nz

    rst $38
    rst $10
    ld hl, $ff83
    db $dd
    rst $38
    ld [hl], a
    ld e, h
    sbc h
    ret nz

    call c, $afe1
    rst $38
    rst $18
    adc $e0
    rst $18
    ld hl, sp-$1a
    inc d
    rst $38
    push hl
    sbc $e5
    ld e, a
    jp z, Jump_02a_6fe0

    add $e0
    ld hl, sp-$1b
    ldh [$63], a
    jp z, $e1f8

    ld e, a
    sub [hl]
    ldh [$5f], a
    ret nc

    and $c7
    push hl
    ld l, c
    rst $38
    rst $38
    call nc, $81fc
    ldh a, [rDMA]

Call_02a_5d73:
    ldh [$8b], a
    ret nz

    ld a, a
    ld d, a
    ret nz

    dec e
    add b
    xor a
    add b
    db $fd
    xor a
    ld h, b
    db $fd
    jp c, $8048

    and b
    db $fc
    ld b, c
    ldh a, [$0b]
    ret nz

    ei
    ld d, $00
    ld hl, sp-$1f
    ld a, [bc]
    ret nz

    rla
    nop
    cp l
    rst $30
    nop
    ld l, a
    nop
    push de
    ld h, b
    nop
    ld hl, sp-$02
    db $f4
    rst $38
    cp $d8
    db $fc
    pop af
    db $fc
    ld [c], a
    ld hl, sp-$2f
    rst $38
    ld hl, sp+$63
    ldh a, [$c6]
    ldh a, [$8b]
    ldh [rBGP], a
    rst $38
    ldh [$8f], a
    ret nz

    dec de
    ret nz

    cpl
    add b
    rra
    rst $38
    add b
    scf
    nop
    ld e, a
    nop
    inc h
    inc a
    ld b, d
    cp a
    nop
    xor l
    nop
    rst $30
    nop
    ld a, l
    jp nc, $ffe2

    push af
    nop
    db $ec
    pop hl
    cp a
    db $e4
    ldh [$2f], a
    add b
    cp a
    add b
    rst $18
    ld d, a
    nop
    ccf
    nop
    push af
    ld a, $e0
    ld b, l
    rst $38
    rst $38
    nop
    rst $00
    stop
    ld l, l
    nop
    cp e
    nop
    rst $38
    rst $28
    nop
    rst $20
    ldh a, [rSCX]
    ldh a, [$e5]
    ldh a, [rIE]
    ld b, a
    ldh [$8a], a
    ldh [$c7], a
    ldh [$a5], a
    ldh a, [$eb]
    jp $30f0


    ld h, e
    rst $18
    ld l, $60
    xor l
    rst $38
    ld b, d
    rst $38
    rst $38
    nop
    jp $fffc


    ld a, [$fcff]
    sbc $8c
    ldh [$f8], a
    cp $ec
    cp $f6
    ldh [rIE], a
    rst $38
    rst $38
    add b
    ccf
    add b
    ld a, a
    ret nz

    sbc a
    ret nz

    ld c, a
    rst $38
    ldh [$87], a
    ldh a, [$d5]
    db $fc
    ld l, c
    rst $38
    ccf
    rst $38
    nop
    rrca
    ret nz

    ld b, e
    ldh a, [$a0]
    db $fc
    db $f4
    add $4a
    ldh [rIE], a
    rst $38
    ld b, d
    ldh [$88], a
    db $e4
    add sp, -$1b
    db $e3
    rrca
    rst $38
    and $0f
    rr a
    rst $00
    rra
    adc a
    ccf
    rst $30
    sbc e
    ccf
    cpl
    db $fc
    ld b, b
    cp $00
    cp $00
    rst $38
    db $fc
    ld bc, $01fc
    ld hl, sp+$03

jr_02a_5e5d:
    ld sp, hl
    inc bc
    rst $08
    ld a, [c]
    rlca
    pop af
    rlca
    ret nc

    push hl
    inc h
    pop hl
    db $d3
    nop
    ld e, a
    ld b, d
    ld a, [hl]
    cp $00
    rst $38
    ld [c], a
    ldh [$fe], a
    sbc $e0
    rst $08
    db $fc
    ld bc, $01ff
    ld a, [c]
    ldh [$0a], a
    ld [c], a
    inc a
    nop
    rst $30
    nop
    rst $00
    ld b, l
    add h
    ret nz

    push af
    rst $38
    rst $20
    rrca
    rst $28
    ld [c], a
    rrca
    rst $30
    rrca
    add $e1
    di
    rlca
    push hl
    cp a
    rrca
    db $e3
    rrca
    jr jr_02a_5e5d

    ld b, d
    ld d, [hl]
    ldh [$f7], a
    ld [$c676], a
    ccf
    ld a, [hl]
    ret nz

    ccf
    add b
    and b
    sbc a
    ld a, a
    scf
    db $fd
    ld a, a
    or $e0
    rst $38
    ld [$5500], sp
    nop
    cp [hl]
    ld [hl], h
    ldh a, [$c0]
    ld l, b
    push hl
    ld e, a
    db $fc
    ret nz

    ld a, a
    nop
    xor a
    db $fc
    ldh [$9d], a
    ccf
    db $f4
    ld [c], a
    ld de, $2a80
    call nc, $f0c0
    push hl
    cp a
    ldh a, [$fa]
    db $e4
    ld l, d
    jp hl


    db $f4
    db $eb
    nop
    add e
    dec de
    db $e4
    dec d
    xor $ff
    dec l
    ret nc

    dec b
    ld a, [$c034]
    ld d, a
    xor d
    rst $18
    and h
    ld a, [bc]
    ld c, e
    add b
    ld b, d
    ldh [rNR41], a
    dec e
    ld [bc], a
    rst $38
    cp h
    inc bc
    sbc b
    ld h, a
    rla
    xor d
    db $e4
    ld a, [bc]
    rst $38
    adc e
    jr nz, @+$24

    nop
    db $dd
    nop
    cp l
    ld b, d
    cp $08
    and c
    ld d, $a9
    add sp, $03
    add l
    ld [hl+], a
    ld a, [hl+]
    rst $38
    rlca
    db $db
    nop
    cp h
    ld b, e
    ccf
    ret nz

    add hl, de
    ei

jr_02a_5f13:
    and $18
    ld h, b
    and b
    inc a
    jp $e7b8


    ld [$f7ff], sp
    call z, $90fb
    ld l, a
    ld a, [hl+]
    rst $38
    rra
    rst $38
    ldh [$d0], a
    ld bc, $a15a
    ld c, b
    rlca
    ld hl, sp-$09
    rlca
    inc e
    inc bc
    ret nz

    pop hl
    or b
    rrca
    call z, $ff3f
    ld a, c
    add [hl]
    ld [de], a
    rst $28
    dec de
    ldh [$3c], a
    jp $d0fe


    pop hl
    dec a
    ret nz

    ld c, a
    and b
    jr nc, jr_02a_5f13

    ld d, d
    rst $38
    and c
    ld l, l
    jp nz, $c934

    ld c, b
    or e
    ld a, [de]
    rst $38
    push hl
    dec d
    cp a
    adc $3f
    ld d, [hl]
    cp a
    ld l, l
    rst $38
    cp a
    sbc [hl]
    ld a, a
    ld l, d
    cp a
    dec e
    rst $38
    ld c, [hl]
    rst $38
    cp a
    dec [hl]
    ret nz

    ld c, [hl]
    and c
    ld [hl-], a
    ret


    ld d, a
    rst $38
    and d
    ld a, a
    push bc
    ld [hl-], a
    rst $08
    ld d, l
    cp a
    dec hl
    sbc $90
    add d
    cp h
    ld b, e
    ld e, b
    and a
    nop
    and b
    db $e3
    call nz, $f3ff
    or h
    db $eb
    sbc d
    ld a, a
    rst $28
    ccf
    ld a, [hl-]
    rst $38
    rst $18
    ld c, l
    rst $38
    or h
    rst $38
    ld a, d
    rst $38
    xor b
    ei
    rst $38
    ld [hl], h
    cp [hl]
    add b
    inc hl
    rst $18
    dec b
    rst $38
    ld a, [de]
    cp $70
    add [hl]
    call nc, $bbff
    cp $74
    rst $38
    xor [hl]
    ld a, [$209a]
    xor [hl]
    ld a, [hl-]
    add b
    inc bc
    rst $38
    ld d, d
    db $fc
    xor d
    xor a
    db $fd
    ld [hl], a
    ei
    and d
    or b
    ld h, b
    dec c
    xor h
    ld h, b
    ld a, [bc]
    rst $38
    rst $38
    ld h, a
    adc b
    call Call_000_32bb
    rst $28
    db $eb
    ld a, [$e0de]
    cp $1c
    add b
    cp d
    rst $38
    daa
    ret z

    ld l, l
    rst $38
    sbc e
    ld [hl+], a
    rst $38

jr_02a_5fd7:
    ld a, e
    rst $38
    or [hl]
    rst $38
    ld e, [hl]
    ei
    rst $38
    cp e
    add h
    ld h, b
    ld c, $bf
    db $dd
    ccf
    ld l, [hl]
    cp e
    cp a
    ld d, a
    ld [hl], b

jr_02a_5fea:
    ldh [$6d], a
    cp a
    ld e, $70
    ldh [rHDMA2], a
    rst $38
    db $fd
    xor $f9
    ld c, c
    or $a7
    ld hl, sp+$47
    rst $38
    ldh a, [$b4]
    ret


    ld c, d
    or c
    dec de
    db $e4
    rst $38
    rst $38
    rra
    ld c, d
    cp a
    ld l, c
    sub a
    ld [de], a
    rst $28
    add hl, de
    rst $30
    ld [c], a
    jr c, jr_02a_5fd7

    nop
    pop hl
    dec hl
    ret nc

    xor d
    ld b, c
    cp a
    cp $01
    xor b
    rlca
    ld a, b
    add a
    db $10
    db $e3

jr_02a_601f:
    and c
    rst $38
    ld e, $8c
    ld a, d
    ld d, a
    xor b
    jr c, jr_02a_5fea

    dec c
    rst $30
    ldh a, [$3d]
    jp nz, Jump_02a_61d8

    cpl
    sub b
    ld sp, hl
    nop
    rst $38
    adc d
    ld hl, $0728
    ret c

    rlca
    cp h
    ld b, e
    db $fc
    ret z

    ld h, c
    add hl, sp
    and e
    ld [bc], a
    db $fd
    ld bc, $0dfe
    ldh a, [rIE]
    ld [bc], a
    db $fd
    ld a, [hl+]
    ret nc

    dec hl
    sub $f5
    ld a, [bc]
    rst $38
    ld e, a
    add b
    xor c
    ld [bc], a
    ld a, a
    add b
    db $10
    rrca
    rst $38
    ldh [$1f], a
    add b
    ld a, a
    ld d, a
    xor d
    push af
    ld a, [bc]
    cp a
    sbc a
    jr nz, jr_02a_601f

    ld [bc], a
    ld h, a
    sbc b
    rrca
    and e
    ld c, d
    rst $38
    or l
    db $f4
    dec bc
    sbc l
    ld [hl+], a
    cp d
    rlca
    ld a, e
    ld e, a
    add b
    inc c
    di
    rlca
    ld hl, sp-$41
    and c
    add b
    sbc [hl]
    nop
    db $ed
    and b
    sbc d
    nop
    ld l, b
    rst $38
    sub b
    pop bc
    rla
    add sp, -$2f
    rst $20
    nop
    ld l, $d1
    add b
    pop hl
    ret nz

    db $e3
    or b
    rrca
    add $fc
    sub b
    call nz, $e3d0
    dec a
    ret nz

    ld e, a
    and b
    inc [hl]
    ret


    rst $10
    ld e, d
    and c
    ld a, l
    sub b
    ret nz

    ld c, h
    sub b

Jump_02a_60a9:
    ret nz

    ld d, l
    cp a
    ei
    adc [hl]
    ld a, a
    sub b
    jp z, Jump_02a_5ac8

    and c
    inc a
    jp Jump_02a_537f


    xor [hl]
    ld [hl], a
    call $bf42
    dec d
    ld l, d
    ld h, b
    cp $6b

Call_02a_60c2:
    add c
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    rst $38
    or b
    cp a
    rst $28
    call z, $a4f3
    ei
    dec d
    cp h
    ret nz

    dec b
    xor e
    rst $38
    ld [bc], a
    add hl, hl
    and [hl]
    ld d, e
    or b
    ret nz

    ld [hl], l
    or b
    ret z

    ld [hl], a
    xor e
    adc b
    call z, $cab0
    scf
    or b
    call z, $b04e
    adc $ae
    db $db
    ld sp, hl
    ld a, c
    or b
    ret z

    cp a
    ld e, a
    or b
    jp $e21d


    ei
    ld [$20f7], sp
    pop hl
    dec l
    ret nc

    sbc d
    ld h, c
    ld a, [hl]
    cp e
    add c
    add sp, $30
    and $61
    ld e, $95
    or b
    ret nz

    add hl, sp
    rst $30
    jp nz, $f00f

    rst $38
    ld h, e
    ld d, a
    xor b
    ei
    nop
    cp a
    sbc [hl]
    ld hl, $07a8
    ld [hl], b
    adc a
    rst $28
    ld h, e
    ld bc, $fffb
    ld h, b
    db $f4
    and b
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld [$aeae], sp
    ld b, b
    ld b, b
    rst $38
    sub b
    ld d, h
    ldh [$28], a
    call c, $28c0
    ld [hl], d
    sbc $c0
    ld b, b
    sbc a
    ld h, c
    rst $38
    db $ec
    ld d, l
    nop
    cp d
    cp [hl]
    add b
    ld e, a
    xor e
    nop
    ld e, l
    nop
    ld [$80b6], a
    xor [hl]
    or d
    add b
    rst $18
    adc d
    nop
    ld d, h
    nop
    xor d
    ldh a, [$e0]
    xor d
    nop
    rst $38
    dec d
    nop
    xor b
    nop
    ld d, c
    nop
    ld [$ff00], sp
    ld [hl+], a
    nop
    sub h
    nop
    add hl, hl
    nop
    ld b, h
    nop
    push de
    db $10
    db $e4
    ldh [rP1], a
    sub e
    nop
    ld bc, $00b4
    jr nz, jr_02a_6176

jr_02a_6176:
    ld sp, hl
    add b
    xor [hl]
    nop
    cp l
    ldh [rNR23], a
    inc a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    db $fc
    inc a
    cp $80
    ld a, h
    rst $38
    ld h, h
    nop
    nop
    ld [$3e1c], sp
    ld [hl], $7f
    ld a, a
    and [hl]
    ld a, a
    add h

jr_02a_6197:
    ld l, a
    ld b, b
    ld c, $08
    sbc [hl]
    ldh [$fd], a
    inc bc
    call nc, $0fc0
    rst $38
    ld a, [de]
    rst $38
    ld [hl], $fd
    ld a, a
    ld hl, $f8fe
    rst $30
    xor l
    di
    rst $38
    or d
    jr nz, jr_02a_6231

    ld d, d
    db $fd
    ld d, l
    xor d
    jr nz, jr_02a_6197

    ld a, [bc]
    xor d
    jr nz, @+$01

    xor a
    rst $38
    add e
    rst $38
    ld c, l
    rst $30
    sub e
    rst $28

Jump_02a_61c4:
    rst $38
    ld c, a

jr_02a_61c6:
    rst $30
    and e
    rst $38
    ret


    rst $30
    and a
    ei
    rst $30

jr_02a_61ce:
    ret


    rst $30
    or $9c
    ld h, b
    ld [$b0ff], a
    rst $38
    rst $38

Jump_02a_61d8:
    db $eb
    db $fc
    ld b, c
    cp $a8
    rst $30
    ld b, $fb
    rst $38
    db $dd
    sbc e
    sbc l
    ld c, a
    daa
    rla
    and e
    di
    rst $38
    db $db
    pop hl
    xor $f1
    or h
    ei
    reti


    rst $38
    ld e, a
    jp c, $9d9f

    ld c, a
    ld h, $f0
    ld [c], a
    ld l, [hl]
    ldh a, [$e0]
    rst $38
    ld sp, hl
    rst $38
    rst $20
    jr jr_02a_61c6

    inc h
    rst $20
    inc h
    cp a
    rst $38
    inc a
    db $db
    inc a
    rst $20
    jr jr_02a_61ce

    ld b, c
    ld h, a
    rst $38
    sbc d
    call nz, $0b8a
    ret nz

    ld b, d
    and b
    db $10
    rst $38
    ret nz

    jp hl


    add b
    ld h, b
    sub c
    adc e
    ld h, b
    ld d, $ff
    xor c

jr_02a_6224:
    pop hl
    dec bc
    adc d
    daa
    daa
    rrca
    xor l
    rst $08
    rra
    sub $3f
    ld a, l
    and [hl]

jr_02a_6231:
    add b
    ld d, b
    daa
    inc h
    db $db
    rst $38
    inc c
    rst $30
    ld [hl], $cf
    jr jr_02a_6224

    sub $0f
    rst $38
    ld e, c
    and [hl]
    ld b, d
    rrca
    ei
    nop

jr_02a_6246:
    inc e
    inc bc
    rst $28

jr_02a_6249:
    cp a
    nop
    sbc c
    ld h, [hl]
    ld l, b
    ld hl, $c23d
    jr jr_02a_6246

    rst $20
    add hl, de
    ld h, b
    inc h
    ld b, b
    add c
    ld d, [hl]
    xor c
    ld [hl+], a
    rst $38
    ld sp, hl
    ld [hl], l
    ret nz

    add h
    or b
    and e
    ld de, $1fef
    ldh [$3d], a
    rst $18
    rst $00
    inc sp
    rst $08
    dec l
    rst $10
    db $10
    add l
    jr z, jr_02a_6249

    rst $38
    ld b, h
    ei
    or h
    rst $38
    ret nc

    rst $38
    rst $30
    jr @+$01

jr_02a_627c:
    rst $28
    jr z, jr_02a_627c

    ld l, $eb
    ld a, [hl+]
    rst $38
    ld l, d
    rst $38
    xor e
    or [hl]
    cp $af
    cp a
    xor l
    db $ed
    sbc a
    rst $38
    ld e, a
    db $ed
    push hl

jr_02a_6291:
    dec sp
    rst $30
    ld l, $ef
    jr c, @+$01

    cp a
    ld l, [hl]
    rst $30
    ld c, a
    adc $3f
    db $10
    rst $38
    rst $38
    jr z, jr_02a_6291

    inc a
    rst $28
    ld a, [hl+]
    db $eb
    ld a, [hl]
    db $eb
    ei
    xor d
    or a
    ldh [$e5], a
    dec h
    ei
    ld [hl], $ef
    jr z, @+$01

    rst $38
    ld a, $ef
    ld [hl], a
    rst $08
    ld l, $ff
    jr nz, @+$01

    rst $08
    or [hl]
    dec hl
    db $ed
    cp d
    dec sp
    rst $18
    db $76
    xor e
    rst $18
    ld d, h
    ld c, b
    jr nz, jr_02a_62f4

    adc b
    nop
    ld [bc], a
    ld l, h
    jr nz, jr_02a_62ea

    ei
    rst $38

Call_02a_62d2:
    or [hl]
    ret nz

    call nz, $0fb0
    sbc $7f
    add hl, hl
    rst $28
    cp $55
    rst $38
    cp [hl]
    ld l, [hl]
    ldh [$aa], a
    rst $38
    ret nz

    sub a
    rst $38
    sbc b
    ld h, a
    sub b
    ld h, c

jr_02a_62ea:
    ld e, b
    add b
    ld b, $40
    ld l, e
    dec hl
    cp $80
    ld l, b
    inc a

jr_02a_62f4:
    inc bc
    add h
    ld [hl], e
    or h
    db $eb
    inc hl
    db $fd
    call z, $e1a0
    ld a, [hl-]
    rst $18
    rst $30
    ld e, [hl]
    push de
    ld a, [hl]
    rst $28
    db $dd
    ld a, a
    ei
    ld l, $78
    inc bc
    add hl, de
    rst $20
    rla
    rst $38
    xor $3f
    ret z

    cpl
    ret c

    rra
    ldh a, [$fd]
    ld a, [$00da]
    jp c, Jump_000_004e

    xor a
    cp $df
    ld hl, sp+$6f
    rst $10
    ld hl, sp-$21

jr_02a_6325:
    ldh a, [$f3]
    ld b, b
    inc a
    ld d, [hl]
    ld h, c
    ccf
    jp Jump_000_3ebf


    rst $00
    db $dd
    cpl

jr_02a_6332:
    jp c, $f02f

jr_02a_6335:
    push hl
    dec a
    rst $38
    jp $c73c


    ret nc

    cpl

jr_02a_633d:
    ret c

    cpl
    sub b
    cp e
    rst $38
    ld a, [hl+]
    jr nc, jr_02a_6325

    xor d
    db $eb
    ld a, a
    jr nc, jr_02a_6332

    and l
    cp d
    jr nc, @-$1e

    xor c
    jr nc, jr_02a_6335

    rst $38
    nop
    rst $18
    xor $20
    ei
    xor d
    ld a, [$7fe0]
    ld_long a, $ffe0
    sbc [hl]
    and b
    rst $30
    call nz, Call_02a_6b40
    db $eb
    nop
    sub $62
    ld [hl+], a
    ld [hl], l
    inc c
    ld [hl+], a
    db $db
    inc h
    cp $ff
    ld bc, $0af5
    jp c, $f425

    dec bc
    add sp, -$01
    rla
    add sp, $17
    or c
    ld c, [hl]
    jp hl


    ld d, $d2
    rst $38

jr_02a_6382:
    inc l
    ld h, e
    sbc h

Jump_02a_6385:
    ret nc

    ld l, $e9
    ld d, $b4
    rst $38
    ld c, e
    rst $28
    db $10
    ld a, l
    add d
    rst $10
    jr z, jr_02a_633d

    rst $38
    ld d, l
    ld b, l
    cp d
    add b
    ld a, a
    jr jr_02a_6382

    ld l, [hl]
    rst $38
    add c
    ld a, [hl]
    cp l
    jr @-$17

    add b
    ld a, a
    ld b, l
    rst $38
    cp d
    xor d
    ld d, l
    rst $10
    jr z, jr_02a_6429

    add d
    rst $28
    rst $38
    db $10
    ld e, a

jr_02a_63b1:
    add b
    rla
    ldh [$83], a
    ld a, b
    ld d, c
    rst $38
    xor h
    xor e
    ld d, h
    ldh a, [$0e]
    xor c
    ld d, [hl]
    db $f4
    rst $38
    dec bc
    db $f4
    dec bc
    xor c
    ld d, [hl]
    pop af
    ld c, $aa
    rst $38
    ld d, h
    ld d, d
    xor h
    add h
    ld a, b
    jr jr_02a_63b1

    ld l, b
    rst $38
    add b
    ld a, a
    cp a
    rra
    rst $28
    add a
    ld a, a
    ld d, e
    rst $18
    xor a
    xor e
    ld d, l
    pop af
    rrca
    ldh [$e1], a
    ld d, a
    nop
    rst $30
    adc [hl]
    nop
    rla
    inc e
    and b
    rlca
    nop
    ld c, d
    ld b, b
    rst $38
    dec b
    nop
    ld [bc], a
    nop
    sub b
    nop
    adc b
    nop
    rst $30
    ld de, $8001
    db $fc
    ldh [$c0], a
    ld b, b
    ld de, $ff01
    ld [bc], a
    ld [bc], a
    ld b, l
    ld b, b
    ld [bc], a
    nop
    ld b, b
    ld b, b
    rst $38
    and d
    and b
    ld b, b
    ld b, b
    and b
    and b
    ld d, l
    ld d, l
    rst $28
    ld [$41ea], a
    ld b, c
    db $ec
    ldh [rLYC], a
    inc hl
    inc hl
    rst $38
    ld b, l
    ld b, l
    xor e
    xor e
    ld d, a
    ld d, a
    rst $38
    rst $38
    rst $38
    sub b

jr_02a_6429:
    nop
    adc c
    nop
    ld de, $8300
    nop
    rst $38
    ld [de], a
    nop
    rst $00
    ld b, b
    dec e
    nop
    ld [hl], a
    nop
    rst $38
    cp $ff
    cp $fe
    db $f4
    ld a, [$f2f6]
    rst $30
    pop af
    or $fe
    db $fc
    ldh [$f4], a
    ld a, [$7fff]
    ei
    ccf
    ld a, a
    db $fc
    ldh [rIE], a
    rst $38
    ld a, a
    cpl
    rst $30
    rst $38
    db $eb
    ld h, a
    inc hl
    rst $28
    ld sp, hl
    cp $fe
    cp $7f
    db $eb
    or $ee
    and $e3
    xor $fe
    db $fc
    ldh [$e7], a
    add sp, -$0a
    rst $38
    db $ec
    ldh [$fc], a
    ld [c], a
    ld b, a
    inc de
    rst $28
    db $dd
    rst $00
    ret c

    ldh [$f5], a
    ld a, [$bdfc]
    pop hl
    cp $dd
    ld a, a
    cp $f3
    db $fc
    ld d, l
    ld [$fdf2], a
    call nz, $9fe3
    ccf
    rst $38
    rst $30
    ld a, a
    ld a, $ac
    ld h, b
    cp b
    ldh [rIE], a
    rst $38
    ld a, [$fdfa]
    db $fd
    cp $fc
    db $fd
    ld a, [$64fc]
    nop
    add b
    ld bc, $bfdf
    ld a, a
    ld c, a
    ccf
    rst $18

jr_02a_64a8:
    ei
    ccf
    sbc a
    inc b
    jr nz, @-$0f

    rst $38
    ld e, a
    ccf
    cp $d6
    ld a, a
    pop hl
    db $fd
    cp $29
    nop
    cp $d8
    ldh [rIE], a
    db $fc
    ld a, a
    xor a
    sbc a
    ld l, a
    rra
    rst $00
    ld a, a
    rra
    db $d3
    nop
    or a
    cp a
    ld a, a
    rst $08
    ret c

    ldh [$f9], a
    cp $c8
    db $e3
    cp $ff
    cp $ef
    cp $7e
    db $fd
    or $ff
    sbc a
    ei
    rst $38
    cpl
    or a
    nop

Jump_02a_64e1:
    rst $18
    ccf
    rst $20
    sbc a
    rst $28
    ei
    rra
    call $e2d8
    rst $08
    rst $10
    db $e3
    db $db
    add e
    rst $38
    cp e
    ret


    or c
    pop hl
    sub l
    ld [hl], $00
    and c
    db $fd
    add c
    sbc d
    ld bc, $cfef
    rst $08
    rst $38
    sub a
    and a
    rst $38
    db $db
    and e
    sbc a
    db $e3
    ccf
    ld b, e
    ei
    ei
    rst $38
    cp $fe
    ld a, a
    ld a, [hl]
    ld hl, sp-$10
    and [hl]
    sbc d
    rst $38
    pop hl
    add c
    daa
    daa
    rst $38
    rst $38
    sub c
    ld b, c
    rst $38
    ld b, d
    add b
    db $e3
    jr nz, jr_02a_64a8

    nop
    or e
    or e
    ld c, $8e
    ldh [$fe], a
    cp a
    cp a
    nop
    nop
    nop
    rst $38
    cp c
    or a
    cp c
    cp a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    pop bc
    rst $38
    cp [hl]
    cp e
    cp [hl]
    ret nz

    pop bc
    jp $cd46


    cp c
    adc $f3
    ldh [$fd], a
    jp hl


    cp d
    or a
    cp d
    xor $e5
    pop bc
    rst $08
    ret nz

    ret nz

    cp [hl]
    cp e
    reti


    pop hl
    db $dd
    ld [c], a
    cp a
    cp h
    rst $38
    cp h
    cp l
    cp e
    cp l
    cp c
    cp b
    or a
    cp c
    db $fd
    cp [hl]
    ret nz

    ldh [$c3], a
    pop bc
    ret nz

    pop bc
    jp nz, $efc3

    ld b, [hl]
    ld b, [hl]
    rst $08
    ret nc

    ret nz

    rst $20
    jp nc, $c546

    ld [hl], e
    add $46
    xor b
    ldh [$ae], a
    push hl
    jp $c2c2


    cp l
    ldh [$ec], a
    reti


    ld [c], a
    and a
    pop hl
    cp l
    cp e
    add h
    ldh [$bd], a
    cp c
    cp e
    push af
    cp [hl]
    or b
    ld [c], a
    jp $e4e9


    ld b, [hl]
    ld b, [hl]
    sbc d
    sbc b
    cp $ff
    ldh [$9a], a
    ld b, [hl]
    ld b, [hl]
    db $d3
    call nc, $c746
    pop hl
    ret z

    adc e
    ldh [$91], a
    db $e3
    cp l
    and $d9
    db $e4
    cp a
    cp c
    cp [hl]
    and $45
    ldh [$bb], a
    cp [hl]
    ld c, d
    ld [c], a
    ld c, h
    push hl
    pop de
    ld b, [hl]
    sbc d
    or a
    sbc h
    sbc b
    sub a
    ld sp, $a8e0
    sub a
    cp a
    ldh [rDMA], a
    rla
    ld b, [hl]
    ret


    jp z, $e3a8

    jp nc, $e22b

jr_02a_65d0:
    ld [hl], d
    ldh [$28], a
    jp hl


    dec [hl]
    call nz, $e10d
    call nz, $e24a
    cp a
    cp h
    db $fc
    pop bc
    add h
    pop hl
    ld a, h
    jp $f1e1


    ret nz

    xor c
    xor b
    sub a
    sbc b
    sbc h
    ld a, e
    pop hl
    ldh [$f2], a
    jp nz, $e076

    ld [$72c1], a
    ldh [$e8], a
    ret


    cp b
    call nz, $87c0
    call nz, $b7b7
    inc sp
    ld [c], a
    db $db
    pop bc
    and d
    pop hl
    pop bc
    pop hl
    xor b
    ccf
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    xor c
    cp c
    pop bc
    ld a, e
    ldh [rNR42], a
    pop de
    or c
    call nz, $e19e
    ld [hl], d
    ldh [$a3], a
    rst $00
    cp [hl]
    ld [bc], a
    ldh [rLCDC], a
    ldh [$e1], a
    cp e
    ret c

    jp nz, $c1db

    inc d
    ldh [$82], a
    ld [c], a
    xor c
    add b
    or d
    rst $08
    inc l
    ld a, [hl+]
    ld a, a
    ld a, l
    ld a, c
    pop bc
    ld a, [hl-]
    ld [c], a
    set 1, h
    jr nz, jr_02a_65d0

    pop bc
    ld e, c
    call nz, $e657
    ld [hl], e
    ret nz

    ld [hl], h
    jp nz, $d8c0

    jp nz, $c1db

    rst $18
    ret


    jp z, $979a

    xor b
    ld b, e
    pop bc
    add b
    dec l
    and a
    jr nz, jr_02a_667e

    ld b, d
    cp a
    ld [c], a
    ld a, [hl-]
    ldh [$9a], a
    ld l, $c1
    cp a
    ld d, e
    cp c
    or a
    ld e, c
    jp $e0f7


    cp c
    dec d
    db $e4
    jp $c374


    cp c
    jp nz, $c466

    ld l, h
    pop bc
    sbc c
    xor b
    xor c
    cp a
    pop hl
    add b
    sbc a
    ld b, d
    daa
    jr nz, jr_02a_66a8

jr_02a_667e:
    ld b, l
    ld a, [hl]
    pop hl
    ldh a, [$e0]
    sub a
    ld bc, $2e9a
    ret nz

    sub [hl]
    jp $c009


    adc l
    ret nz

    db $10
    ret nz

    call nc, Call_02a_74c4
    rst $00
    xor $cd
    and h

jr_02a_6697:
    sbc e
    xor c
    xor b
    add hl, bc
    pop hl
    add d
    add e
    ld a, [hl+]
    rst $18
    ld h, $21
    add hl, sp
    ld b, [hl]
    add c
    cp d
    pop bc
    xor c

jr_02a_66a8:
    ld b, [hl]
    add c
    sbc e
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
    add d
    call nz, $fd9a
    sub a
    jp z, $84c2

    add l
    add [hl]
    ld [hl], d
    ld l, h
    ld a, [hl-]
    inc bc
    add e
    ld l, l
    ld a, c
    pop bc
    ld l, e
    ldh [$a3], a
    xor b
    sbc d
    and c
    ld e, b
    and b
    add b
    and d
    ret nz

    ld c, l

jr_02a_66d3:
    push bc
    push hl
    ret nz

    ld a, c
    and b
    cp l
    db $e3
    ld b, d
    jp nz, $c0fc

    add hl, sp
    ld l, [hl]
    rrca
    ld [hl], b
    ld [hl], c
    add l
    add h
    scf
    and e
    ret nz

    pop hl
    and e
    and a
    ld a, [bc]
    pop hl
    ld e, h
    ret nc

    and e
    jr z, jr_02a_6697

    cp d
    or a
    cp l
    cp b
    and c
    cp l
    ld a, [de]
    and d
    cp $93
    pop hl
    xor c
    ld b, [hl]
    ld b, l
    ld a, [hl-]
    dec [hl]
    dec [hl]
    ld a, [hl-]
    add c
    ld b, l
    or h
    jp nz, $e4c0

    and h
    and e
    push de
    add $6d
    pop bc
    jr z, @-$59

    cp d
    pop af
    or a
    inc l
    db $e3
    cp d
    add d
    sub e
    ld [c], a
    ld a, c
    ld a, d
    ld h, l
    ld h, [hl]
    inc bc
    dec [hl]
    ld a, $44
    pop hl
    db $fc
    and h
    adc b
    and l
    rla
    and $9b
    add c
    jr z, jr_02a_66d3

    rst $10
    cp [hl]
    cp c

jr_02a_6731:
    call nz, $e12c
    call nz, $8099
    set 1, h
    cp $81
    and c
    ld a, c
    ld a, [hl]
    add hl, sp
    dec [hl]
    ld l, b
    ld h, [hl]
    ld a, $0c
    ld a, c
    add d
    jr nc, @-$3d

    sub a
    sbc d
    adc b
    and d
    sub c
    add h
    ld d, a
    and d
    sbc e
    add c
    ld e, [hl]
    ret nc

    add l
    pop bc
    cp d
    or a
    or a
    ld [hl], a
    and b
    cp b
    ld e, c
    add b
    db $fc
    ld b, h
    add b
    jp nc, $80c0

    ld b, [hl]
    ld a, $35
    dec [hl]
    ld l, d
    add hl, bc
    add hl, sp
    or $c2
    jr nc, jr_02a_6731

    sbc c
    adc b
    and d
    sub c
    add h
    ld [hl-], a
    add a
    ld l, e
    add l
    db $e4
    dec l
    add b
    db $76
    and d
    cp [hl]
    ld b, h
    add c
    ld d, d
    ret nz

    add d
    add e

Jump_02a_6784:
    add hl, sp
    nop
    ret nz

    db $e4
    inc a
    and b
    add hl, sp
    and c
    cp [hl]
    jp nz, $8591

    ld a, [c]
    ld h, d
    ld c, [hl]
    add $ea
    ld l, [hl]
    db $76
    ld d, d
    ret nz

    add h
    adc c
    ret nz

    ret nz

    ld l, d
    ld a, [hl-]
    ld b, l
    cp b
    ld h, d
    rra
    ld b, l
    ld b, l
    ld b, [hl]
    xor b
    sbc e
    ei
    add c
    sub c
    add l
    db $d3
    ld h, b
    ldh [$4e], a
    ret


    ld [$5a6a], a
    add b
    ld [de], a
    pop bc
    ccf
    pop hl
    ld [hl], l
    ld h, [hl]
    ld [hl], $7e
    cp a
    ldh [$b2], a
    dec hl
    ld c, d
    ld d, d
    ld b, l
    xor c
    ld a, $c2
    ld b, $91
    add l
    cp d
    pop bc
    ld c, [hl]
    set 5, d
    ld l, b
    ret nc

    ld h, b
    cp $82
    rst $38
    jp nz, Jump_02a_68ff

    ld h, [hl]
    add hl, sp
    ld b, l
    dec hl
    or e
    daa
    ld c, a
    inc sp
    ld d, [hl]
    ld b, l
    push af
    ld h, e
    sub c
    add l
    cp [hl]
    jp $cb4e


    xor h
    adc d
    call c, $81fe
    rst $38
    call nz, Call_02a_6d6c
    ld a, [hl-]
    ld sp, hl
    add b
    ld l, $4b
    rrca
    ld d, [hl]
    ld b, l
    xor c
    xor b
    ld a, l
    and c
    sub c
    add l
    ei
    add d
    ld c, [hl]
    add $c8
    ld [hl], a
    ld h, e
    xor h
    add e
    and d
    ld h, c
    sbc c
    add hl, bc
    add c
    ld b, b
    and b
    ld [hl], c
    ld [hl], c
    rst $38
    ld [hl], b
    ld l, [hl]
    ld a, [hl-]
    ld b, d
    ld hl, $b223
    ld d, h
    rlca
    ld d, e
    ld b, l
    ld b, [hl]
    ccf
    ld [c], a
    sub c
    add l
    ei
    add c
    ld c, [hl]
    rst $00
    rst $38
    and e
    ldh a, [$ac]
    add e
    nop
    add l
    jp z, Jump_02a_7fc1

    and b
    dec [hl]
    ld a, $44
    inc a
    ld bc, $fb35
    pop bc
    db $fd
    add c
    db $fc
    ld h, c

jr_02a_683f:
    dec b
    ld h, [hl]

jr_02a_6841:
    ld c, [hl]
    ret z

    ld l, d
    ld b, d
    xor h
    add h
    db $ec
    inc d
    ld h, b
    ld d, h
    and h
    xor b
    ld b, [hl]
    ld a, $c0
    dec [hl]
    add hl, sp
    xor b
    nop
    add hl, sp
    and b
    ld sp, hl
    and c
    cp l
    add b
    ld a, [hl+]
    ld c, e
    jr c, jr_02a_68a9

    xor h
    adc b
    ld d, h
    add b
    cp [hl]
    ld h, c
    xor l
    xor c
    ld a, $a2
    add hl, sp
    xor c
    ld hl, sp-$60
    ld a, $b1
    add c
    sbc e
    ld b, b
    ld a, [hl+]
    ld b, e
    cp e
    ld b, e
    ld a, [hl+]
    ld b, b
    jr c, jr_02a_68c0

    ld h, h
    ld h, c
    xor h
    add [hl]
    pop de
    ld d, h
    add c
    inc c
    cp [hl]
    ld h, c
    ld a, $a3
    ld a, [hl-]
    ld b, l
    ccf
    ldh [$f9], a
    add d
    ld [hl], h
    ld b, e
    cp e
    ld b, c
    ret nz

    ldh a, [rNR41]
    or h
    ld b, e
    jr c, jr_02a_68da

    sub d
    inc h
    inc b
    ld b, l
    add c
    add e
    ld a, c
    ld a, [hl]
    ld [de], a
    ld a, a
    add c
    ld l, d
    ccf
    ld [c], a
    cp c
    and e
    sub a
    rst $28
    inc hl

jr_02a_68a9:
    ld a, [hl]
    ld b, [hl]
    ld d, c
    ld b, [hl]
    jr c, jr_02a_6841

    jr nz, jr_02a_68dc

    ld c, b
    ld b, e
    ld b, h
    add b
    ld b, l
    ld [hl], $c1
    ret nz

    ret nz

    ldh [rNR42], a
    xor c
    jr c, jr_02a_683f

    cp [hl]

jr_02a_68c0:
    jp $60eb


    jr nc, jr_02a_6905

    sbc d
    ld a, [hl]
    ld b, e
    or e

jr_02a_68c9:
    ld b, [hl]
    ret z

    dec hl
    ld b, l
    ld [bc], a
    ld b, h
    inc b
    ld b, l
    add b
    jp nz, Jump_000_00c1

    ret nz

    xor b
    add hl, sp
    rra
    dec [hl]

jr_02a_68da:
    ld h, d
    ld h, e

jr_02a_68dc:
    ld h, l
    ld a, l
    db $ed
    jp Jump_02a_60a9


    xor h
    inc h
    ret nz

    or e
    ld b, [hl]
    db $fc
    inc bc
    sbc l

jr_02a_68ea:
    jr nz, jr_02a_68c9

    inc b
    ld d, [hl]
    ld h, b
    add b
    ld b, c
    ld a, c
    adc e
    xor $c1
    ld h, b
    ld l, h
    ld l, a
    ld l, [hl]
    ret nz

    ret nz

    ld h, d
    ld h, a
    dec [hl]
    inc bc

Jump_02a_68ff:
    inc a
    ld a, a
    push af
    inc hl
    db $f4
    ld b, d

jr_02a_6905:
    ldh a, [rNR43]
    or e
    ld b, [hl]
    cp a

jr_02a_690a:
    inc bc
    push af
    ld [hl+], a
    pop af
    cp [hl]
    ld a, [de]
    ld b, c
    jp nz, $81c1

    push hl
    ld [hl], e
    ld l, [hl]
    ld [hl], $47

Jump_02a_6919:
    rlca
    ld c, h
    ld d, l
    ld l, c
    ld a, b
    ld h, c
    cp b
    ld b, b
    ld l, l

Call_02a_6922:
    inc hl
    inc sp
    ld h, h
    or e
    ld b, [hl]
    ld h, b
    cp a
    inc bc
    inc c
    jr nz, jr_02a_690a

    ld bc, $0048
    ld b, h
    inc hl
    ld a, c
    adc e
    inc bc
    pop bc
    ld e, a
    ld l, d
    ld a, [hl-]
    ld c, e
    ld h, b
    ld h, c
    ret nz

    pop hl
    add hl, sp
    cp b
    ld b, d
    ret nz

    jr nz, jr_02a_68ea

    ld d, [hl]
    ld [$04bf], sp
    add l
    inc b
    ld c, b
    ld bc, $4155
    ld a, c
    ld a, [hl]
    rst $30
    ld b, a
    ld e, d
    inc a
    ret nz

    pop hl
    ld d, [hl]
    ld h, c
    ld h, c
    add hl, sp
    rra
    ld l, c
    dec [hl]
    inc a
    ld b, h
    adc b
    cp b
    ld b, h
    or e
    ld c, [hl]
    cp a
    inc b
    sbc $a2
    db $ec
    add b
    ld c, d
    ld h, b
    ld d, l
    ld b, e
    and b
    ld [hl], l
    ld h, [hl]
    rra
    add hl, sp
    ld d, [hl]
    ld d, d
    ld a, [hl-]
    ld l, c
    ld b, c
    push hl
    jp $dec0


    inc hl
    call nc, $0fbf
    ld [bc], a
    ld b, [hl]
    jp nc, $e4c0

    ld d, [hl]
    ld b, d
    pop bc
    dec [hl]
    ld l, d
    rra
    ld a, $45
    ld [hl], $62
    db $76
    cp c
    ld b, b
    ld bc, $a7e2
    inc hl
    ld b, b
    ld a, [hl+]
    dec b
    dec [hl]
    inc bc
    cp a
    inc b
    ld [bc], a
    ld b, l

jr_02a_699f:
    ld e, h
    nop
    jp Jump_02a_4562


    inc b
    and c
    ld [bc], a
    ld b, c
    add b
    add hl, sp
    add d
    pop bc
    ret nz

    push hl
    or a
    ld hl, $00e4
    ld a, [hl]
    jp nz, Jump_000_00b0

    sub c
    pop de
    ld a, [bc]
    pop bc
    cp a
    inc b

jr_02a_69bc:
    ld [bc], a
    ld c, h
    add b
    add h
    add d
    ld b, c
    ret nz

    xor b
    ld [$e042], sp
    pop bc
    jp RST_30


    ld a, e
    ld l, $01
    and e
    ld [bc], a
    or h
    add h
    ld a, [bc]
    ret nz

    call nz, Call_000_04bf
    ld [bc], a
    ld c, d
    xor b
    inc bc
    jr nz, jr_02a_699f

    ret nz

    ld [bc], a

Jump_02a_69df:
    ret nz

    ld [hl], $a9
    rst $38
    inc a
    ld l, e
    ld l, h
    ld l, h
    ld [hl], d
    add [hl]

jr_02a_69e9:
    add l
    add h
    inc de
    ld a, c
    ld a, [hl]
    dec hl
    add d
    ld hl, sp-$5c
    sbc c
    or h
    add e
    cp a
    rlca
    or h
    ld l, b
    xor $00
    ld hl, $8584
    ld [hl], c
    jp Jump_02a_4562


    ld b, l
    ld a, [hl-]
    cpl
    ld l, [hl]
    ld [hl], b
    ld [hl], b
    ld l, [hl]
    ld a, [$8040]
    rst $30
    inc h
    ld hl, sp-$5d
    ld l, h
    pop af
    ld bc, $684f
    ld b, [hl]
    ld b, [hl]
    or h
    ld h, a
    push bc
    add $3e
    and c
    nop
    ld bc, $08e2
    add c
    rst $30
    push hl
    ret nz

    ldh [$f7], a
    jr nz, jr_02a_69e9

    jp hl


    ld d, b
    and e
    add hl, bc
    ld h, h
    inc [hl]
    or h
    ld h, a
    ld a, a
    ld h, b
    sbc e
    push bc
    ld h, e
    jr c, jr_02a_6a6f

    ld [bc], a
    jr nz, jr_02a_69bc

    ld h, b
    ld h, [hl]
    ld a, d
    ld h, b
    ld a, [hl-]
    ld b, l
    add b
    ldh [rBCPD], a
    ld [bc], a
    adc d
    ld a, l
    ld [hl-], a
    inc hl
    jr nz, jr_02a_6a50

    inc h
    add hl, bc
    ld h, l
    ld [bc], a
    ld b, a

jr_02a_6a50:
    ld a, a
    ld h, c
    ret c

    add b
    ld [hl], $c2
    ldh [$ba], a
    dec b
    ld l, $39
    ld h, b
    ld [hl], $82
    add e
    adc [hl]
    inc h
    add c
    ld a, e
    add b
    ld a, [hl-]
    add d
    ldh [rTIMA], a
    ld [hl+], a
    add hl, bc
    ld h, l
    ld [bc], a
    ld b, [hl]
    and b
    nop

jr_02a_6a6f:
    ld b, c
    ld b, b
    xor b
    xor c
    xor b
    db $e4
    add $23
    ld [hl], $e5
    inc a
    or c
    ld b, b
    rst $38
    ldh [$87], a
    add e
    add e
    inc bc
    ld l, l
    xor c
    ld e, [hl]
    and c
    ld a, d
    ld h, b
    ld a, a
    and d
    add hl, bc
    ld h, l
    rst $20
    ld c, b
    ccf
    add b
    sbc c
    xor c
    sub $a0
    ld b, a
    inc b
    ld b, [hl]
    ld a, c
    ld a, c
    nop
    scf
    ld bc, $7f46
    ld b, l
    ld b, e
    ld c, b
    ld c, b
    add h
    add l
    add l
    scf
    and b
    pop bc
    sbc c
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
    ld a, c
    ld a, [hl]
    ei
    inc a
    ld l, b
    cp a
    ldh [$39], a
    xor b
    ld b, [hl]
    ld c, d
    ld e, l
    rlca
    ld h, b
    ld d, h
    ld b, h
    inc [hl]
    inc b
    jr c, @+$09

    add hl, bc
    ld h, l
    rst $20
    ld b, d
    rst $30
    ld b, b
    ldh [$c1], a
    ld h, h
    add b
    pop hl
    ld c, $82
    or [hl]
    and c
    cp a
    ldh [$39], a
    xor c
    ld b, [hl]
    rrca
    ld c, d
    ld d, [hl]
    inc l
    inc l
    pop af
    ld bc, $62c0
    jr c, jr_02a_6aee

    or a
    add h
    add b
    rst $20
    ld b, c
    ld b, l
    inc bc
    ld c, l

jr_02a_6aee:
    inc bc
    ret nc

    ld h, c
    add hl, sp
    ld [hl+], a
    ld a, b
    nop
    cp c
    ld b, c
    ld b, l
    cpl
    ld b, e
    ld a, [hl+]
    jr nz, jr_02a_6b27

    add b
    pop hl
    sbc c
    sbc h
    ld hl, $1338
    ld h, h
    ld b, l
    nop
    ld e, c
    ld [bc], a
    xor c
    cp a
    ret nz

    db $10
    and h
    add b
    ld b, [hl]
    ld hl, sp+$41
    rst $38
    ld l, d
    dec [hl]
    ld b, d
    ld c, d
    ld d, [hl]
    ld a, [hl+]
    ld a, [hl+]
    ld c, e
    dec b
    ld d, l
    jp nz, $9980

    inc de
    ld h, b
    jr c, jr_02a_6b2e

    or h
    ld c, d
    inc bc

jr_02a_6b27:
    ld b, c
    rst $10
    and b
    ldh a, [rHDMA2]
    ld h, e
    sbc b

jr_02a_6b2e:
    ld h, b
    ld c, b
    ret nz

    scf
    ld bc, $443c
    ld c, d
    ld h, b
    ld h, a
    ld e, l
    ld e, l
    ld h, b
    ret nz

    ldh [rPCM34], a
    nop
    ret


Call_02a_6b40:
    jp z, $0838

    ldh [rHDMA4], a
    inc hl
    ld [bc], a
    inc h
    ld h, h
    ld h, d
    jp $f9e7


    ld bc, $836f
    ld b, [hl]
    dec e
    add hl, sp
    cp c
    nop
    ld b, l
    ld b, l
    ld d, e
    rst $38
    ldh [$37], a
    ld hl, $61a0
    add b
    jr c, @+$0a

    ret nz

    push hl
    ld [bc], a
    ld [hl+], a
    and h
    ld h, h
    ld b, h
    call nz, Call_02a_62d2
    rlca
    pop bc
    ld [hl], b
    ld bc, $3e6e
    ld [hl+], a
    ld b, d
    ld h, l
    jp nz, Jump_000_3840

    rlca
    ld b, $43
    ld sp, hl
    and [hl]
    nop
    db $e4
    nop
    call nc, $b746
    inc bc
    nop
    ld b, h
    and c
    ld h, $38
    ld [$23b3], sp
    ld [bc], a
    ld h, $80
    jp Jump_000_3e00


    jp hl


    db $76
    ld bc, $e8c1
    ret nz

    ret nz

    jr c, jr_02a_6ba4

    or e
    ld [hl+], a
    ld sp, hl
    and a
    add b
    jp $c104


    db $eb
    adc d

jr_02a_6ba4:
    add hl, bc
    xor b
    ret nz

    ret nz

    dec b
    jr z, @+$6c

    ld b, a
    or b
    ld b, d
    ld b, e
    add e
    inc e
    cp $c7
    cp b
    rst $28
    xor c
    sub a
    sbc d
    sub c
    ld [bc], a
    ld a, [hl]
    and a
    daa
    ld c, b
    ld a, c
    jp nc, $e033

    ld b, b
    and h
    ld b, c
    ld b, c
    scf
    scf
    db $fc
    rst $28
    pop bc
    ld b, l
    dec b
    ld h, c
    sub c
    inc b
    rst $38
    nop
    bit 0, h
    push hl
    dec h
    db $d3
    call nc, $e6dc
    ld bc, $4262
    xor b
    sbc [hl]
    ld h, h

Jump_02a_6be0:
    rst $38
    ldh a, [$9f]
    ld b, d
    ld [hl], $84
    ld hl, $d0cf
    add l
    ld h, d
    cp d
    or a
    bit 1, b
    ld [c], a
    dec l
    cp a
    xor c
    ld l, c
    sbc l
    dec [hl]
    dec [hl]
    sbc l
    db $fc
    db $ed
    ld l, d
    sbc c
    ld b, b
    inc b
    ld b, e
    push de
    ld [bc], a
    cp d
    or a
    bit 1, b
    cpl
    ld b, $d1
    ld d, d
    ld a, $a3
    ld b, d
    adc c
    ld b, c
    db $fd
    xor $6a
    add b
    ld [c], a
    jp nc, Jump_02a_6385

    jp $b9be


    bit 1, b
    or h
    inc h
    pop af
    add c
    cp $82
    ld b, b
    ld l, e
    call z, Call_02a_40bf
    db $fd
    xor $6d
    ld b, b
    inc b
    add e
    add l
    ld h, d
    pop bc
    cp d
    ldh a, [$cb]
    ld b, a
    sub l
    ld h, e
    ld l, $62
    cp a
    inc bc
    ld b, l
    scf
    dec a
    jr c, @-$63

    jr c, jr_02a_6c7d

    db $fc
    db $ed
    xor b
    ld b, l
    inc b
    add e
    inc b
    ld [hl+], a
    jp $c7e0


    jr nz, @-$33

    ld b, l
    ld d, l
    ld h, e
    ld l, $62
    cp [hl]
    ld h, l
    ld b, l
    ld b, e
    ld b, e
    nop
    ld c, h
    add b
    db $fc
    db $eb
    ld b, e
    ret nz

    ld a, c
    ld [$20c7], sp
    bit 0, l
    db $fd
    xor b
    ld h, [hl]
    jr nz, @+$35

    sbc d
    sbc b
    rst $38
    ld [c], a
    or [hl]
    ld h, e
    ld b, [hl]
    sub a
    ld a, [c]
    db $e3
    db $ec
    ld [c], a
    ld bc, $119a
    and h
    jp c, $0e40

    ld h, d

jr_02a_6c7d:
    bit 0, h
    ei
    ld l, d
    ld hl, $f7c4
    ld b, d
    nop
    ld b, a
    and b
    adc l
    ld [$a511], a
    add h
    ld a, [hl+]
    ld a, a
    and c
    nop
    nop
    nop
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

Jump_02a_6d03:
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
    jr nz, jr_02a_6d88

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
    jp Jump_02a_6be0


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

Call_02a_6d6c:
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
    call nc, Call_02a_59c0
    call nz, Call_02a_7270
    jp nz, $e940

    ld h, d
    ld [c], a

jr_02a_6d88:
    ld b, [hl]
    jp $6d0d


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
    call $4ea1
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
    and c
    xor b
    and e
    xor $a1

jr_02a_6dfe:
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
    jr z, jr_02a_6dfe

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

jr_02a_6e83:
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
    jr z, jr_02a_6e83

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

Jump_02a_6ee0:
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
    jp nz, Jump_02a_422a

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

jr_02a_6f76:
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

jr_02a_6fbe:
    db $e3
    or [hl]

Call_02a_6fc0:
    jr nz, jr_02a_6fbe

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

Jump_02a_6fe0:
    ld l, d
    jp Jump_000_21ed


    ldh a, [rNR43]
    or e
    ld b, l
    cp a
    inc b
    add h
    ld [bc], a
    jr c, jr_02a_6f76

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

jr_02a_7071:
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
    jr nz, jr_02a_7071

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

jr_02a_7132:
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
    jr c, jr_02a_7186

    add hl, bc
    ld h, h
    ld l, [hl]
    add c
    jr nz, jr_02a_71ba

jr_02a_7186:
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
    jr c, jr_02a_71a0

    add a
    dec h
    ld l, l
    jr c, jr_02a_71de

    ld b, l
    inc bc

jr_02a_71a0:
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
    jr nz, jr_02a_7132

    and e
    jr c, jr_02a_71b8

    ld [hl], d
    ld b, d
    pop af
    add h
    ldh [$c1], a
    ld h, e

jr_02a_71b8:
    add h
    inc hl

jr_02a_71ba:
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
    call z, Call_02a_7b44
    db $e4
    ret nz

    db $e4
    ldh [rLYC], a
    ld h, c
    ld a, [de]
    pop bc
    ld de, $fb84
    jr nz, jr_02a_7259

    and d

jr_02a_71de:
    ld c, e
    ld c, d
    ld bc, $b44a
    ld h, c
    ret nz

    push hl
    jp $4428


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
    jr c, jr_02a_7247

    rst $38
    jr nz, jr_02a_72b4

    add c
    ld a, $65
    add b
    inc b
    ld b, c

jr_02a_7247:
    rst $38
    ld [hl+], a
    jp z, $84e6

    pop hl
    ld a, a
    push hl
    or a
    jr nz, jr_02a_7253

    pop bc

jr_02a_7253:
    ld c, l
    nop
    jr c, jr_02a_725f

    ret z

    ld b, l

jr_02a_7259:
    ld a, e
    ld b, c
    ld b, e
    add e
    rst $00
    add e

jr_02a_725f:
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

Call_02a_7270:
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
    call nz, Call_02a_7e22

jr_02a_72b4:
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
    jp nc, Jump_02a_4681

    ld h, $bc
    add a
    inc b
    or h
    ld b, e
    ld a, [hl]
    call nz, $be2b
    pop af
    ld b, e
    jp nz, Jump_02a_61c4

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
    jr nz, jr_02a_733d

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
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_02a_733d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fd
    rrca
    rst $38
    ldh [$e1], a
    db $fc
    rst $18
    ld hl, sp+$00
    jp $e0e2


    ld a, [$e4dc]
    ldh [$f7], a
    add b
    ld a, [$fca1]
    and b
    push hl
    db $fd
    add sp, $00
    ld h, b
    ld a, [c]
    ldh [$f6], a
    sbc a
    db $ec
    ldh [$f3], a
    pop af
    rst $30
    inc hl
    xor $b4
    rst $08
    cp a
    push bc
    nop
    add b
    ldh a, [rP1]
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [c]
    pop af
    pop af
    rst $38
    and $e0
    rst $38
    rst $38
    rst $38
    ld a, $ef
    xor $10
    db $10
    db $10
    inc de
    inc de
    reti


    ldh a, [rP1]
    nop
    nop

jr_02a_73d3:
    cp $d5
    nop
    rst $38
    ldh [rTIMA], a
    ei
    ldh [$0b], a
    rst $30
    pop hl
    nop
    ld [bc], a
    db $eb
    nop
    jr z, jr_02a_73d3

    ldh [$90], a
    db $eb
    ldh [$f5], a
    nop
    ret z

    ld a, [$e0e5]
    add b
    ld [$00e4], a
    nop
    rla
    nop
    ld bc, $d612
    ld [c], a
    ld d, b
    rst $08
    ldh [$e6], a
    pop hl
    ld [$e2da], a
    db $fd
    db $e3
    and $e1
    ld d, a
    cpl
    nop
    inc bc
    ret nz

    ld [c], a
    and b
    xor a
    ldh [$64], a
    xor e
    ldh [$c7], a
    call nc, Call_000_2000
    ret nz

    ld [c], a
    jp z, $9ce1

    pop hl
    ld e, a
    nop
    ld d, l
    ld b, $96
    ld [c], a
    ld b, b
    adc a
    ldh [$b2], a
    adc e
    ldh [$a8], a
    or $e2
    sbc h
    and h
    db $e3
    ld a, h
    pop hl
    cp a
    nop
    inc c
    add b
    ld [c], a
    adc [hl]
    pop hl
    ld e, c
    ld a, [$e06b]
    ld d, b
    add h
    ld [c], a
    add b
    nop
    db $ec
    rst $38
    ld hl, sp-$01
    rst $38
    ldh [$fe], a
    ld b, d
    ld hl, sp-$38
    ldh a, [$80]
    cp a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    rst $38
    rst $38
    ld [c], a
    rst $30
    rst $38
    rst $38
    cp h
    rst $38
    add sp, -$01
    add c
    cp $08
    db $ed
    ldh a, [$f8]
    push hl
    jr nz, @-$3e

    ld [hl], c
    db $e3
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    or a
    ld a, a
    rra
    rst $38
    ld a, a
    rrca
    ld a, a
    ld c, a
    ccf
    rlca
    rra
    ld [bc], a
    rst $38
    rra
    inc de
    rrca
    ld bc, $0b0f
    rlca
    ld bc, $07ff
    nop
    rlca
    inc b
    inc bc
    ld e, h
    rst $38
    nop
    rst $28
    rst $38
    add c
    inc a
    db $10
    ld b, h
    and $20
    ret nz

    add b
    cp a
    ret nz

    nop
    ldh [$90], a
    ldh [$80], a
    cp $e0
    nop
    ei
    ret nz

    jr nz, @-$5e

    ldh [$7d], a
    rst $38
    rst $28
    rst $38
    ld a, [hl-]
    ld a, [$e2da]
    ld [$c0e3], sp
    and h
    ld hl, sp-$20
    ld hl, sp-$10
    rst $38
    db $fc
    ret nc

    db $fc
    ld a, [c]
    db $fc
    ldh [$fc], a
    or b
    rst $30
    ld hl, sp-$1c
    ld hl, sp-$80

Call_02a_74c4:
    push hl
    cp [hl]
    rst $38
    db $e3
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $20
    db $fc
    rst $38
    or $ff
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$02
    add sp, -$02
    ld hl, sp-$08
    ldh [$83], a
    db $f4
    rst $38
    ld a, b
    ldh [$cb], a
    jp $c5e2


    ldh a, [$e0]
    rst $28
    ld [$f1c0], a
    ld b, b
    ldh [$ea], a
    ret nc

    pop hl
    rst $08
    jp hl


    db $ec
    rst $38
    ld sp, hl
    cp $7f
    and $f8
    ld c, b
    ldh a, [$d0]
    ldh [$a8], a
    ld [hl], d
    ldh [$fb], a

jr_02a_7501:
    ld b, b
    add b
    db $10
    rst $20
    jp hl


    cp $8e
    ldh a, [$30]
    pop af
    ret nz

    ld hl, sp-$1b
    ld h, d
    pop bc
    db $10
    push hl
    cp a
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld [hl], a
    ccf
    ld e, a
    ccf
    ld c, a
    ccf
    cpl
    rra
    rst $30
    rla
    rrca
    ld [de], a
    inc d
    ldh [$09], a
    rlca
    rla
    inc bc
    rst $38
    dec b
    inc bc
    inc b
    inc bc
    ld [bc], a
    ld bc, $ff5c
    rst $30
    jp Jump_000_3c3c


    sbc d
    add $00
    nop
    ld b, b
    add b
    rst $18
    ret nz

    add b
    jr nz, jr_02a_7501

    and b
    cp $e2
    ld d, b
    add b
    ldh a, [$a0]
    pop hl
    db $10
    db $e3
    jp c, Jump_02a_64e1

    pop bc
    xor b
    ldh a, [$ea]
    ldh a, [$df]
    db $f4
    ld hl, sp-$2c
    ld hl, sp-$0c
    inc d
    ldh [$b8], a
    ldh a, [$fb]
    add sp, -$10
    db $10
    jp hl


    ld e, b
    rst $20
    ld h, [hl]
    add c
    db $fc
    rst $38
    rst $38
    rst $30
    cp $fd
    cp $fa
    db $fc
    ld [$fc3b], a
    ld sp, hl
    ld hl, sp-$20
    db $f4
    rst $38

jr_02a_7577:
    ld c, b
    ld [hl+], a
    db $eb
    and b
    ldh [$f0], a
    call z, $fba3
    push bc
    pop af
    call $cbe3
    nop
    nop
    db $ed
    cp $ff
    cp $f8
    add sp, -$10
    ld d, d
    ldh [$e8], a
    ret nz

    rst $20
    ret nz

    add b
    ld d, b
    sub $c0
    jr nz, @-$39

    cp l
    cp $ee
    jp $b1f0


    ld a, [de]
    ldh [$f8], a
    push hl
    or d
    and c
    ld d, h
    and c
    rst $38
    ld a, a
    rst $30
    xor a
    ld a, a
    ld a, a
    inc d
    ldh [$b7], a
    rra
    ccf
    rra
    ld a, a

jr_02a_75b5:
    cpl
    rra
    ld e, a
    rrca
    rrca
    rlca
    ld a, [bc]
    inc d
    ld [c], a
    rst $38
    dec bc
    ld bc, $0103
    ld [bc], a
    ld bc, $0005
    sub l
    rst $18
    ld [de], a
    ldh [rSCY], a
    sub b
    ld [$0ca0], a
    ld [c], a
    cp $e1
    and b
    ld [hl], h
    jr nc, jr_02a_7577

    jr nz, @-$3b

    ei
    jp c, $b0e6

    ldh [$f4], a
    rra
    ret nz

    rst $30
    ret c

    ldh a, [$f8]
    inc d
    ldh [$b4], a
    ldh [$f0], a
    ldh [$fa], a
    jr nz, jr_02a_75b5

    ei
    ld [de], a
    ldh [$91], a
    nop
    db $fd
    cp $f6
    rst $38
    db $fc
    cp $fc
    db $fd
    ld hl, sp-$14
    ld hl, sp-$06
    ld b, $f8
    ldh [$f5], a
    cp $78
    push hl
    inc l
    push af
    nop
    and c
    xor $cc
    pop af
    xor d
    rst $38
    ld [bc], a
    add c
    and b
    pop bc
    add b
    pop bc
    add l
    jp $a1ff


    jp $8300


    dec b
    add e
    ld b, b
    add c
    di
    ld b, c
    add b
    ldh [$a0], a
    ld [hl], b
    ret nz

    ret nz

    ldh [rBCPS], a
    ldh a, [rIE]
    pop af
    db $fc
    call c, Call_000_1eff
    rst $38
    add b
    ld e, $fd
    ld [de], a
    ld [hl], h
    add d
    ld c, b
    nop
    ld bc, $5878
    rst $38
    rst $38
    ld b, b
    add c
    add d
    pop bc
    and b
    pop bc
    and c
    jp $85ff


    jp $8304


    ld b, c
    add e
    ld [bc], a
    add c
    or $6d
    add b
    add b
    and b
    ld c, h
    and b
    ret nc

    ldh [$64], a

jr_02a_765a:
    ldh a, [$ed]
    ldh a, [$d0]
    ld [c], a
    ld b, c
    ld e, $c6
    add c
    nop
    nop
    jr nc, jr_02a_765a

    nop
    add d
    ret nc

    ldh [$a0], a
    xor c
    ld [bc], a
    ld bc, $0300
    nop
    ld [hl], c
    xor c
    pop af
    ldh [$60], a
    add sp, $30
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld bc, $0000
    nop
    push af
    push bc
    push de
    push hl
    ld [$c32f], a
    ld c, a
    ld a, $ff
    ld b, $01
    ld hl, $c330
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl], b
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, c
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $4028
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [hl]
    cp $fe
    jr nz, jr_02a_76f1

    jr jr_02a_7761

jr_02a_76f1:
    add sp, -$02
    ld de, $c332
    push hl
    ld hl, sp+$02
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    ld d, h
    ld e, l
    ld b, $ff
    ld c, $03
    xor a
    ld hl, $c330
    ld [hl], a
    ld hl, $c338
    ld [hl], a
    inc hl

jr_02a_770d:
    inc b
    ld a, [de]
    inc de
    cp $fe
    jr z, jr_02a_7749

    cp $ff
    jr nz, jr_02a_770d

    inc b
    ld a, b
    inc a
    ld [hl], a
    push de
    push hl
    ld hl, sp+$04
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    ld [de], a
    inc de
    inc de
    push hl
    ld hl, sp+$04
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    ld a, [de]
    inc a
    inc de
    push hl
    push de
    ld d, a
    ld a, $04
    sub c
    ld hl, $c330
    ld e, a
    ld a, d
    ld d, $00
    add hl, de
    add hl, de
    inc hl
    ld [hl], a
    pop de
    pop hl
    inc hl
    dec c
    jr nz, jr_02a_770d

jr_02a_7749:
    ld a, $ff
    dec hl
    ld [hl], a
    push hl
    ld hl, sp+$02
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    dec de
    dec de
    ld [de], a
    ld a, $01
    ld hl, $7775
    call Call_000_23e8
    add sp, $02

jr_02a_7761:
    pop hl
    pop de
    pop bc
    pop af
    ret


    push af
    push bc
    push de
    push hl
    ld hl, $7775
    call Call_000_2449
    pop hl
    pop de
    pop bc
    pop af
    ret


    rst $30
    add b
    inc bc
    jr nz, jr_02a_777e

    rst $30
    nop
    inc bc
    ret nz

jr_02a_777e:
    push af
    push bc
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $00
    ld hl, $c338

jr_02a_7790:
    ld a, [hl]
    cp $ff
    jr z, jr_02a_77b2

    push hl
    ld l, c
    ld h, $00
    add hl, hl
    ld de, $c330
    add hl, de
    inc hl
    ld a, [hl]
    dec a
    ld [hl], a
    pop hl
    inc hl
    ld b, c
    inc c
    or a
    jr nz, jr_02a_7790

    ld a, b
    call Call_02a_77bc
    ld a, c
    cp $04
    jr nz, jr_02a_7790

jr_02a_77b2:
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_02a_77bc:
    push af
    push bc
    push de
    push hl
    push af
    add sp, -$01
    ld hl, sp+$00
    ld [hl], a
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [hl]
    ld [$c33c], a

jr_02a_77d2:
    ld a, [$c32f]
    ld l, a
    ld h, $00
    add hl, hl
    ld bc, $4028
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c33c]
    ld c, a
    ld b, $00
    add hl, bc
    ld a, [hl]
    cp $ff
    jr nz, jr_02a_77fb

    ld hl, sp+$00
    ld c, [hl]
    ld b, $00
    ld hl, $c338
    add hl, bc
    ld a, [hl]
    ld [$c33c], a
    jr jr_02a_77d2

jr_02a_77fb:
    ld b, a
    inc hl
    ld c, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld a, [hl]
    push af
    push bc
    ld l, e
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $b000
    add hl, de
    push hl
    ld l, b
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $d800
    add hl, bc
    pop de
    pop bc
    call Call_000_0468
    ld a, [$c33c]
    add $04
    ld [$c33c], a
    pop af
    ld d, a
    add sp, $01
    pop af
    ld h, $00
    ld l, a
    add hl, hl
    ld bc, $c330
    add hl, bc
    ld a, [$c33c]
    ld [hl+], a
    ld [hl], d
    pop hl
    pop de
    pop bc
    pop af
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

Jump_02a_78a1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02a_7b44:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_02a_7e22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02a_7f7c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_02a_7fc1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
