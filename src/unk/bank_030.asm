INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    ld c, $40
    ld hl, sp+$48
    ld h, l
    ld d, b
    db $fd
    ld d, a
    ld a, [hl+]
    ld h, h
    cp e
    ld [hl], c
    bit 6, e
    ld h, c
    ld b, b
    adc h
    ld b, b
    inc e
    ld b, b
    push bc
    ld b, b
    ld l, [hl]
    ld b, d
    adc c
    ld b, d
    sbc d
    ld b, d
    sbc c
    ld a, l
    nop
    dec de
    nop
    add hl, hl
    nop
    nop
    nop
    ret nz

    ld bc, $f40a
    ld a, l
    nop
    rra
    nop
    jr nz, jr_030_402f

jr_030_402f:
    nop
    nop
    ret nz

    ld bc, $ff16
    ld a, l
    nop
    ld e, $00
    dec e
    nop
    nop
    nop
    add b
    ld bc, $990d
    ld a, l
    nop
    inc e
    nop
    ld a, [de]
    nop
    nop
    nop
    ld b, b
    ld bc, $9916
    ld a, l
    nop
    jr jr_030_4051

jr_030_4051:
    rra
    nop
    nop
    nop
    nop
    ld bc, $0016
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    dec de
    nop
    inc sp
    ld [bc], a
    nop
    nop
    dec e
    nop
    jr nz, jr_030_4071

    nop
    nop
    inc e

jr_030_4071:
    nop
    dec e
    inc b
    nop
    nop
    dec e
    nop
    jr nz, jr_030_407f

    nop
    nop
    inc e
    nop
    dec e

jr_030_407f:
    ld b, $00
    nop
    dec e
    nop
    jr nz, @+$09

    nop
    nop
    inc e
    nop
    dec e
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [$0204], sp
    rst $38
    nop
    nop
    nop
    nop
    dec c
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    dec c
    inc bc
    inc b
    rst $38
    nop
    nop
    nop
    nop
    dec c
    inc b
    dec b
    rst $38
    nop
    nop
    nop
    nop
    dec c
    dec b
    ld b, $ff
    nop
    nop
    nop
    nop
    dec c
    ld b, $07
    rst $38
    nop
    nop
    nop
    nop
    dec c
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    xor $40
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    add hl, de
    ld b, c
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    and d
    ld b, c
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    dec hl
    ld b, d
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld l, c
    inc c
    inc bc
    nop
    rst $38
    ld hl, $0c63
    rst $18
    ld c, $0a
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
    jr nz, @+$09

    ld a, $02
    rst $18
    ld [$180a], sp
    ld [$10df], sp
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp
    rst $30
    and b
    inc c
    jr z, jr_030_4122

    call Call_030_44d0
    ret


jr_030_4122:
    ld hl, $0c9f
    rst $18
    ld c, $0a
    ld a, $03
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
    jr z, jr_030_4144

    ld a, $03
    rst $18
    ld [$180a], sp
    ld e, l

jr_030_4144:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $0d
    ld b, a
    ld a, $02
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $432e
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0708
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1d60
    ld de, $1f80
    rst $18
    jr nz, jr_030_419b

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $433e
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_419b:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_41b1

    ret


    rst $30
    ret nz

    inc c
    jr z, jr_030_41ab

    call Call_030_471c
    ret


jr_030_41ab:
    ld hl, $0cad
    rst $18
    ld c, $0a

jr_030_41b1:
    ld a, $04
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
    jr z, jr_030_41cd

    ld a, $04
    rst $18
    ld [$180a], sp
    ld e, l

jr_030_41cd:
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $0d
    ld b, a
    ld a, $03
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $459a
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0708
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1e60
    ld de, $1d60
    rst $18
    jr nz, jr_030_4224

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $45aa
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_4224:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_423a

    ret


    ld hl, $0c66
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18
    ld [de], a
    ld a, [bc]
    rst $18

jr_030_423a:
    inc c
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr nz, @+$09

    ld a, $06
    rst $18
    ld [$180a], sp
    ld [$10df], sp
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$c90a], sp
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18
    ld a, [bc]
    ld bc, $903e
    ldh [rWY], a
    call Call_000_2683
    ld a, $02
    ld [$c441], a
    ret


    ld bc, $00ff
    nop
    di
    ld a, l
    ld b, $00
    rst $38
    rst $18
    nop
    ld a, [bc]
    ld hl, $0857
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
    ld [hl], a
    ld b, d
    nop
    nop
    rrca
    rst $38
    nop
    nop
    and $47
    ld bc, $ff00
    ld a, [$c46a]
    cp $01
    jr z, jr_030_42a9

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_030_42a9:
    cp $02
    jr nz, jr_030_42b3

    call Call_030_44da
    jp Jump_030_432d


jr_030_42b3:
    cp $03
    jr nz, jr_030_42bd

    call Call_030_4726
    jp Jump_030_432d


jr_030_42bd:
    cp $04
    jr nz, jr_030_42ef

    call Call_030_4448
    rst $30
    ld b, b
    inc c
    jr z, jr_030_432d

    rst $28
    ld b, b
    inc c
    rst $30
    nop
    inc d
    jr nz, jr_030_432d

    call Call_000_2ed5
    ld e, $e7
    nop
    inc d
    ld de, $0014
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $06
    ld [$c441], a
    jr jr_030_432d

jr_030_42ef:
    cp $05
    jr nz, jr_030_4321

    call Call_030_46a1
    rst $30
    ld b, b
    inc c
    jr z, jr_030_432d

    rst $28
    ld b, b
    inc c
    rst $30
    jr nz, jr_030_4315

    jr nz, jr_030_432d

    call Call_000_2ed5
    ld e, $e7
    jr nz, @+$16

    ld de, $0014
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18

jr_030_4315:
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $07
    ld [$c441], a
    jr jr_030_432d

jr_030_4321:
    cp $fa
    jr nz, jr_030_432d

    rst $30
    add b
    inc c
    jr z, jr_030_432d

    rst $28
    add b
    inc c

Jump_030_432d:
jr_030_432d:
    ret


    nop
    ld h, b
    dec e
    nop
    add b
    rra
    nop
    add b
    ld b, $02
    ld c, $00
    ld bc, $0000
    nop
    ld e, [hl]
    ld b, e
    sbc e
    ld b, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0ca2
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0ca3
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $0ca4
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $08
    ld b, e
    add hl, bc
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0ca6
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0ca7
    rst $18
    ld c, d
    dec b
    call Call_000_2ed5
    jr z, jr_030_4434

    inc bc
    ld de, $0a03
    ld hl, $0ca8
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_4419

    ld a, $06
    ld [$c961], a
    jr jr_030_442e

jr_030_4419:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_442e

    rst $20
    ld h, b
    inc c

jr_030_442e:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a

jr_030_4434:
    ld hl, $d680
    ld bc, $0008
    add hl, bc
    ld a, [hl]
    ld [$c969], a
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_4448:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_44a8

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0caa
    rst $18
    ld c, $0a
    ld a, [$c969]
    cp $0d
    jr nz, jr_030_449b

    ld hl, $0cac
    rst $18
    ld c, $0a

jr_030_449b:
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$14

jr_030_44a8:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0ca9
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7dff
    rst $18
    jr jr_030_44cf

    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_030_44cf:
    ret


Call_030_44d0:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_030_4506
    ret


Call_030_44da:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0ca5
    rst $18
    ld c, $0a
    call Call_030_4506
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_4506:
    ld a, $03
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
    jr z, jr_030_453a

    ld hl, $0cab
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7dff
    rst $18
    jr jr_030_453b

    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_4599

jr_030_453a:
    rst $20

jr_030_453b:
    and b
    inc c
    rst $18
    inc e
    db $10
    rst $30
    nop
    inc d
    jr nz, jr_030_454a

    ld a, $08
    ld [$c82c], a

jr_030_454a:
    rst $18
    inc h
    db $10
    ld a, $0d
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0708
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1d60
    ld de, $1f80
    rst $18
    jr nz, jr_030_458b

    ld e, $06
    ld bc, $8000
    rst $18
    ld h, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_030_458b:
    ld hl, $43af
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_45a9

jr_030_4599:
    ret


    nop
    ld h, b
    ld e, $00
    ld h, b
    dec e
    add b
    ld h, a
    dec bc
    ld [bc], a
    ld e, $00
    ld bc, $0000

jr_030_45a9:
    nop
    jp z, Jump_000_0745

    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0cb0
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0cb1
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $0cb2
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_461e

    rst $20
    ld h, b
    inc c

jr_030_461e:
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld b, a
    ld b, [hl]
    ld [hl], e
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0cb4
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0cb5
    rst $18
    ld c, d
    dec b
    call Call_000_2ed5
    jr z, jr_030_46a3

    inc b
    ld de, $0a03
    ld hl, $0cb6
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_4683

    ld a, $07
    ld [$c961], a
    jr jr_030_4698

jr_030_4683:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_4698

    rst $20
    ld h, b
    inc c

jr_030_4698:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_46a1:
    rst $18
    nop

jr_030_46a3:
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_46f4

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0cb8
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr @+$14

jr_030_46f4:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0cb7
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7e08
    rst $18
    jr jr_030_471b

    ld a, $04
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_030_471b:
    ret


Call_030_471c:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_030_4752
    ret


Call_030_4726:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0cb3
    rst $18
    ld c, $0a
    call Call_030_4752
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_4752:
    ld a, $04
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
    jr z, jr_030_4786

    ld hl, $0cb9
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7e08
    rst $18
    jr jr_030_4787

    ld a, $04
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_47e5

jr_030_4786:
    rst $20

jr_030_4787:
    ret nz

    inc c
    rst $18
    inc e
    db $10
    rst $30
    jr nz, @+$16

    jr nz, jr_030_4796

    ld a, $08
    ld [$c82c], a

jr_030_4796:
    rst $18
    inc h
    db $10
    ld a, $0d
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0708
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1e60
    ld de, $1d60
    rst $18
    jr nz, jr_030_47d7

    ld e, $0b
    ld bc, $6780
    rst $18
    ld h, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_030_47d7:
    ld hl, $4627
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_47f5

jr_030_47e5:
    ret


    rst $18
    nop
    ld a, [bc]
    ld hl, $0c60
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18

jr_030_47f5:
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
    jr z, jr_030_4806

    jr jr_030_4809

jr_030_4806:
    call Call_030_480d

jr_030_4809:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_480d:
    rst $20
    add b
    inc c
    rst $18
    inc e
    db $10
    call Call_030_4855
    rst $18
    inc h
    db $10
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld a, $0c
    ld [$c834], a
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $c2a2
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    rst $18
    jr nz, jr_030_484e

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $48bc
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_484e:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_4864

    ret


Call_030_4855:
    ld a, [$c450]
    ld hl, $4868
    cp [hl]
    jr z, @+$10

    inc hl
    cp [hl]
    jr z, jr_030_4873

    inc hl
    cp [hl]

jr_030_4864:
    jr z, jr_030_487a

    jr jr_030_4881

    dec c
    db $10
    inc de
    ld d, $21
    ld [$df07], sp
    db $10
    db $10
    ret


jr_030_4873:
    ld hl, $070b
    rst $18
    db $10
    db $10
    ret


jr_030_487a:
    ld hl, $070e
    rst $18
    db $10
    db $10
    ret


jr_030_4881:
    ld hl, $0711
    rst $18
    db $10
    db $10
    ret


    rst $18
    nop
    ld a, [bc]
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $0c61
    rst $18
    ld c, $0a
    ld a, $80
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
    jr z, jr_030_48b5

    ld a, $80
    rst $18
    ld [$180a], sp
    inc bc

jr_030_48b5:
    call Call_030_480d
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    call c, $dd48
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_48ef

    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


jr_030_48ef:
    ld a, $01
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    ld c, e
    ld c, c
    db $76
    ld c, c
    ld b, $49
    adc a
    ld c, c
    ld d, b
    ld c, e
    ld e, c
    ld c, e
    ld h, d
    ld c, e
    sbc c
    ld a, l
    nop
    ld e, $00
    dec h
    nop
    nop
    nop
    ret nz

    ld bc, $110a
    ld a, [hl]
    nop
    jr nz, jr_030_4917

jr_030_4917:
    ld hl, $0000
    nop
    nop
    ld bc, $ff16
    ld a, l
    nop
    inc e
    nop
    rra
    nop
    nop
    nop
    ld b, b
    ld bc, $990d
    ld a, l
    nop
    rra
    nop
    ld a, [de]
    nop
    nop
    nop
    ld b, b
    ld bc, $9916
    ld a, l
    nop
    inc h
    nop
    ld e, $00
    nop
    nop
    add b
    ld bc, $0016
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    inc hl
    nop
    add hl, sp
    ld [bc], a
    ld b, b
    nop
    jr nz, jr_030_4956

jr_030_4956:
    rra
    inc bc
    ret nz

    nop
    inc e
    nop
    ld hl, $4004
    nop
    jr nz, jr_030_4962

jr_030_4962:
    rra
    dec b
    ret nz

    nop
    inc e
    nop
    ld hl, $4006
    nop
    jr nz, jr_030_496e

jr_030_496e:
    rra
    rlca
    ret nz

    nop
    inc e
    nop
    ld hl, $01ff
    rst $38
    nop
    nop
    nop
    nop
    add hl, bc
    inc b
    ld b, $ff
    nop
    nop
    nop
    nop
    db $10
    ld b, $07
    rst $38
    nop
    nop
    nop
    nop
    db $10
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ret nc

    ld c, c
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld h, $4a
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    xor a
    ld c, d
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    ei
    ld c, c
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld [hl], b
    inc c
    inc bc
    nop
    rst $38
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld hl, $0c6a
    rst $18
    ld c, $0a
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
    jr nz, @+$09

    ld a, $02
    rst $18
    ld [$180a], sp
    ld [$10df], sp
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld hl, $0c6d
    rst $18
    ld c, $0a
    ld a, $06
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
    jr nz, @+$09

    ld a, $06
    rst $18
    ld [$180a], sp
    ld [$10df], sp
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$c90a], sp
    rst $30
    and b
    inc c
    jr z, jr_030_4a2f

    call Call_030_4d6d
    ret


jr_030_4a2f:
    ld hl, $0cba
    rst $18
    ld c, $0a
    ld a, $03
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
    jr z, jr_030_4a51

    ld a, $03
    rst $18
    ld [$180a], sp
    ld e, l

jr_030_4a51:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $10
    ld b, a
    ld a, $02
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $4bf7
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070b
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2000
    ld de, $2080
    rst $18
    jr nz, jr_030_4aa8

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $4c07
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_4aa8:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_4abe

    ret


    rst $30
    ret nz

    inc c
    jr z, jr_030_4ab8

    call Call_030_4f9b
    ret


jr_030_4ab8:
    ld hl, $0cc8
    rst $18
    ld c, $0a

jr_030_4abe:
    ld a, $04
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
    jr z, jr_030_4ada

    ld a, $04
    rst $18
    ld [$180a], sp
    ld e, l

jr_030_4ada:
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $10
    ld b, a
    ld a, $03
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $4e37
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070b
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1ca0
    ld de, $1fa0
    rst $18
    jr nz, jr_030_4b31

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $4e47
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_4b31:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_4b47

    ret


    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18
    ld a, [bc]
    ld bc, $903e
    ldh [rWY], a

jr_030_4b47:
    call Call_000_2683
    ld a, $01
    ld [$c441], a
    ret


    ld bc, $00ff
    nop
    di
    ld a, l
    ld b, $00
    rst $38
    rrca
    rst $38
    nop
    nop
    and $47
    ld bc, $ff00
    ld a, [$c46a]
    cp $01
    jr z, jr_030_4b71

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_030_4b71:
    cp $02
    jr nz, jr_030_4b7b

    call Call_030_4d77
    jp Jump_030_4bf6


jr_030_4b7b:
    cp $03
    jr nz, jr_030_4b85

    call Call_030_4fa5
    jp Jump_030_4bf6


jr_030_4b85:
    cp $04
    jr nz, jr_030_4bb7

    call Call_030_4cf9
    rst $30
    ld b, b
    inc c
    jr z, jr_030_4bf6

    rst $28
    ld b, b
    inc c
    rst $30
    add b
    inc d
    jr nz, jr_030_4bf6

    call Call_000_2ed5
    ld e, $e7
    add b
    inc d
    ld de, $0019
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $06
    ld [$c441], a
    jr jr_030_4bf6

jr_030_4bb7:
    cp $05
    jr nz, jr_030_4be9

    call Call_030_4f23
    rst $30
    ld b, b
    inc c
    jr z, jr_030_4bf6

    rst $28
    ld b, b
    inc c
    rst $30
    and b
    inc d
    jr nz, jr_030_4bf6

    call Call_000_2ed5
    ld e, $e7
    and b
    inc d
    ld de, $0019
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $07
    ld [$c441], a
    jr jr_030_4bf6

jr_030_4be9:
    cp $fa
    jp nz, Jump_030_4bf6

    rst $30
    add b
    inc c
    jr z, jr_030_4bf6

    rst $28
    add b
    inc c

Jump_030_4bf6:
jr_030_4bf6:
    ret


    nop
    nop
    jr nz, jr_030_4bfb

jr_030_4bfb:
    add b
    jr nz, jr_030_4bfe

jr_030_4bfe:
    ret nz

    inc c
    ld [bc], a
    ld d, $00
    ld bc, $0000
    nop
    daa
    ld c, h
    ld l, a
    ld c, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0cbd
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cbe
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cbf
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $0cc0
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    and e
    ld c, h
    bit 1, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0ca6
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0ca7
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0ca8
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_4cdb

    ld a, $06
    ld [$c961], a
    jr jr_030_4cf0

jr_030_4cdb:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_4cf0

    rst $20
    ld h, b
    inc c

jr_030_4cf0:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_4cf9:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_4d4c

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0cc6
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$0d

jr_030_4d4c:
    ld hl, $0cc5
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7dff
    rst $18
    jr jr_030_4d6c

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_030_4d6c:
    ret


Call_030_4d6d:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_030_4da3
    ret


Call_030_4d77:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0cc1
    rst $18
    ld c, $0a
    call Call_030_4da3
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_4da3:
    ld a, $03
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
    jr z, jr_030_4dd7

    ld hl, $0cc7
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7dff
    rst $18
    jr jr_030_4dd8

    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_4e36

jr_030_4dd7:
    rst $20

jr_030_4dd8:
    and b
    inc c
    rst $18
    inc e
    db $10
    rst $30
    add b
    inc d
    jr nz, jr_030_4de7

    ld a, $0a
    ld [$c82c], a

jr_030_4de7:
    rst $18
    inc h
    db $10
    ld a, $10
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070b
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2000
    ld de, $2080
    rst $18
    jr nz, jr_030_4e28

    ld e, $0c
    ld bc, $c000
    rst $18
    ld h, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_030_4e28:
    ld hl, $4c83
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_4e46

jr_030_4e36:
    ret


    nop
    and b
    inc e
    nop
    and b
    rra
    or b
    db $ec
    dec c
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ldh a, [rP1]
    nop

jr_030_4e46:
    nop
    ld h, a
    ld c, [hl]
    and c
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0ccb
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0ccc
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0ccd
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $0cce
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    call $f54e
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0cd0
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0cd1
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0cd2
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_4f05

    ld a, $07
    ld [$c961], a
    jr jr_030_4f1a

jr_030_4f05:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_4f1a

    rst $20
    ld h, b
    inc c

jr_030_4f1a:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_4f23:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_4f76

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0cd4
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr @+$14

jr_030_4f76:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0cd3
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7dff
    rst $18
    jr @+$0c

    ld a, $04
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ret


Call_030_4f9b:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_030_4fd1
    ret


Call_030_4fa5:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0ccf
    rst $18
    ld c, $0a
    call Call_030_4fd1
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_4fd1:
    ld a, $04
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
    jr z, jr_030_5005

    ld hl, $0cd5
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7e08
    rst $18
    jr jr_030_5006

    ld a, $04
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_5064

jr_030_5005:
    rst $20

jr_030_5006:
    ret nz

    inc c
    rst $18
    inc e
    db $10
    rst $30
    and b
    inc d
    jr nz, jr_030_5015

    ld a, $0a
    ld [$c82c], a

jr_030_5015:
    rst $18
    inc h
    db $10
    ld a, $10
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070b
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1ca0
    ld de, $1fa0
    rst $18
    jr nz, jr_030_5056

    ld e, $0d
    ld bc, $eed0
    rst $18
    ld h, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_030_5056:
    ld hl, $4ead
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_5074

jr_030_5064:
    ret


    cp b
    ld d, b
    db $e3
    ld d, b
    ld [hl], e
    ld d, b
    inc e
    ld d, c
    cp c
    ld d, d
    jp nz, $cb52

    ld d, d
    sbc c

jr_030_5074:
    ld a, l
    nop
    add hl, de
    nop
    dec e
    nop
    nop
    nop
    nop
    ld bc, $110a
    ld a, [hl]
    nop
    inc hl
    nop
    rra
    nop
    nop
    nop
    nop
    ld bc, $ff16
    ld a, l
    nop
    rra
    nop
    rra
    nop
    nop
    nop
    nop
    ld bc, $990d
    ld a, l
    nop
    ld hl, $1500
    nop
    nop
    nop
    ld b, b
    ld bc, $9916
    ld a, l
    nop
    add hl, hl
    nop
    dec de
    nop
    nop
    nop
    nop
    ld bc, $0016
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    inc de
    nop
    dec [hl]
    ld [bc], a
    ret nz

    nop
    inc hl
    nop
    ld hl, $c003
    nop
    rra
    nop
    ld hl, $c004
    nop
    inc hl
    nop
    ld hl, $c005
    nop
    rra
    nop
    ld hl, $c006
    nop
    inc hl
    nop
    ld hl, $c007
    nop
    rra
    nop
    ld hl, $01ff
    rst $38
    nop
    nop
    nop
    nop
    ld a, [bc]
    inc b
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    inc de
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    inc de
    inc bc
    inc b
    rst $38
    nop
    nop
    nop
    nop
    inc de
    inc b
    dec b
    rst $38
    nop
    nop
    nop
    nop
    inc de
    dec b
    ld b, $ff
    nop
    nop
    nop
    nop
    inc de
    ld b, $07
    rst $38
    nop
    nop
    nop
    nop
    inc de
    rlca
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ld [hl], c
    inc c
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    and a
    ld d, c
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    jr nc, jr_030_5184

    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    ld e, l
    ld d, c
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld [hl], a
    inc c
    inc bc
    nop
    rst $38
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld hl, $0c72
    rst $18
    ld c, $0a
    ld a, $06
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
    jr nz, jr_030_517f

    ld a, $06
    rst $18
    ld [$180a], sp
    daa

jr_030_517f:
    rst $18
    db $10
    ld a, [bc]
    ld a, $06

jr_030_5184:
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
    jr nz, @+$09

    ld a, $06
    rst $18
    ld [$180a], sp
    ld [$10df], sp
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$c90a], sp
    rst $30
    and b
    inc c
    jr z, jr_030_51b0

    call Call_030_54e7
    ret


jr_030_51b0:
    ld hl, $0cd6
    rst $18
    ld c, $0a
    ld a, $03
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
    jr z, jr_030_51d2

    ld a, $03
    rst $18
    ld [$180a], sp
    ld e, l

jr_030_51d2:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $13
    ld b, a
    ld a, $02
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $535f
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070e
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2360
    ld de, $1e80
    rst $18
    jr nz, jr_030_5229

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $536f
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_5229:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_523f

    ret


    rst $30
    ret nz

    inc c
    jr z, jr_030_5239

    call Call_030_5733
    ret


jr_030_5239:
    ld hl, $0ce5
    rst $18
    ld c, $0a

jr_030_523f:
    ld a, $04
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
    jr z, jr_030_525b

    ld a, $04
    rst $18
    ld [$180a], sp
    ld e, l

jr_030_525b:
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $13
    ld b, a
    ld a, $03
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $55b1
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070e
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1f60
    ld de, $1e40
    rst $18
    jr nz, jr_030_52b2

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $55c1
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_52b2:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_52c8

    ret


    ld bc, $00ff
    nop
    di
    ld a, l
    ld b, $00
    rst $38
    rrca
    rst $38
    nop
    nop
    and $47

jr_030_52c8:
    ld bc, $ff00
    ld a, [$c46a]
    cp $01
    jr z, jr_030_52da

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_030_52da:
    cp $02
    jr nz, jr_030_52e4

    call Call_030_54f1
    jp Jump_030_535e


jr_030_52e4:
    cp $03
    jr nz, jr_030_52ee

    call Call_030_573d
    jp Jump_030_535e


jr_030_52ee:
    cp $04
    jr nz, jr_030_5320

    call Call_030_545f
    rst $30
    ld b, b
    inc c
    jr z, jr_030_535e

    rst $28
    ld b, b
    inc c
    rst $30
    nop
    dec d
    jr nz, jr_030_535e

    call Call_000_2ed5
    ld e, $e7
    nop
    dec d
    ld de, $002d
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $06
    ld [$c441], a
    jr jr_030_535e

jr_030_5320:
    cp $05
    jr nz, jr_030_5352

    call Call_030_56ae
    rst $30
    ld b, b
    inc c
    jr z, jr_030_535e

    rst $28
    ld b, b
    inc c
    rst $30
    jr nz, jr_030_5347

    jr nz, jr_030_535e

    call Call_000_2ed5
    ld e, $e7
    jr nz, jr_030_5350

    ld de, $002d
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]

jr_030_5347:
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $07
    ld [$c441], a

jr_030_5350:
    jr jr_030_535e

jr_030_5352:
    cp $fa
    jr nz, jr_030_535e

    rst $30
    add b
    inc c
    jr z, jr_030_535e

    rst $28
    add b
    inc c

Jump_030_535e:
jr_030_535e:
    ret


    nop
    ld h, b
    inc hl
    nop
    add b
    ld e, $c0
    and l
    inc c
    ld [bc], a
    ld d, $00
    add c
    nop
    nop
    nop
    adc a
    ld d, e
    ret


    ld d, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0cd9
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cda
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cdb
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $0cdc
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    push af
    ld d, e
    dec e
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0cde
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cdf
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0ce0
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_542d

    ld a, $06
    ld [$c961], a
    jr jr_030_5456

jr_030_542d:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d68c]
    ld [$c969], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_5456

    rst $20
    ld h, b
    inc c

jr_030_5456:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_545f:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_54b2

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0ce3
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$21

jr_030_54b2:
    ld a, [$c969]
    bit 7, a
    jr z, jr_030_54c6

    ld hl, $0ce1
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    dec bc

jr_030_54c6:
    ld hl, $0ce2
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7e11
    rst $18
    jr jr_030_54e6

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_030_54e6:
    ret


Call_030_54e7:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_030_551d
    ret


Call_030_54f1:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0cdd
    rst $18
    ld c, $0a
    call Call_030_551d
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_551d:
    ld a, $03
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
    jr z, jr_030_5551

    ld hl, $0ce4
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7dff
    rst $18
    jr jr_030_5552

    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_55b0

jr_030_5551:
    rst $20

jr_030_5552:
    and b
    inc c
    rst $18
    inc e
    db $10
    rst $30
    nop
    dec d
    jr nz, jr_030_5561

    ld a, $09
    ld [$c82c], a

jr_030_5561:
    rst $18
    inc h
    db $10
    ld a, $13
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070e
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $2360
    ld de, $1e80
    rst $18
    jr nz, jr_030_55a2

    ld e, $0c
    ld bc, $a5c0
    rst $18
    ld h, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_030_55a2:
    ld hl, $53d5
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_55c0

jr_030_55b0:
    ret


    nop
    ld h, b
    rra
    nop
    ld b, b
    ld e, $c0
    sbc $08
    ld [bc], a
    inc d
    nop
    ld bc, $0000

jr_030_55c0:
    nop
    pop hl
    ld d, l
    dec de
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0ce8
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0ce9
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0cea
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $0ceb
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    ld b, a
    ld d, [hl]
    ld l, a
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0ced
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0cee
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0cef
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_567f

    ld a, $07
    ld [$c961], a
    jr jr_030_5694

jr_030_567f:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_5694

    rst $20
    ld h, b
    inc c

jr_030_5694:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d680
    ld bc, $0008
    add hl, bc
    ld a, [hl]
    ld [$c969], a
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_56ae:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_570e

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0cf1
    rst $18
    ld c, $0a
    ld a, [$c969]
    cp $0d
    jr nz, jr_030_5701

    ld hl, $0cf3
    rst $18
    ld c, $0a

jr_030_5701:
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr @+$14

jr_030_570e:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0cf0
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7dff
    rst $18
    jr @+$0c

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ret


Call_030_5733:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_030_5769
    ret


Call_030_573d:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0cec
    rst $18
    ld c, $0a
    call Call_030_5769
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_5769:
    ld a, $04
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
    jr z, jr_030_579d

    ld hl, $0cf2
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7e08
    rst $18
    jr jr_030_579e

    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_57fc

jr_030_579d:
    rst $20

jr_030_579e:
    ret nz

    inc c
    rst $18
    inc e
    db $10
    rst $30
    jr nz, jr_030_57bb

    jr nz, jr_030_57ad

    ld a, $09
    ld [$c82c], a

jr_030_57ad:
    rst $18
    inc h
    db $10
    ld a, $13
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c

jr_030_57bb:
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $070e
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1f60
    ld de, $1e40
    rst $18
    jr nz, jr_030_57ee

    ld e, $08
    ld bc, $dec0
    rst $18
    ld h, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]

jr_030_57ee:
    ld hl, $5627
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_580c

jr_030_57fc:
    ret


    ld d, b
    ld e, b
    ld a, e
    ld e, b
    dec bc
    ld e, b
    sub h
    ld e, b
    ld l, d
    ld e, c
    ld [hl], e
    ld e, c
    ld a, h
    ld e, c
    sbc c

jr_030_580c:
    ld a, l
    nop
    jr nz, jr_030_5810

jr_030_5810:
    ld a, [hl+]
    nop
    nop
    nop
    ret nz

    ld bc, $110a
    ld a, [hl]
    nop
    jr nz, jr_030_581c

jr_030_581c:
    jr nz, jr_030_581e

jr_030_581e:
    nop
    nop
    add b
    ld bc, $ff16
    ld a, l
    nop
    dec e
    nop
    inc hl
    nop
    nop
    nop
    ld b, b
    ld bc, $990d
    ld a, l
    nop
    daa
    nop
    inc hl
    nop
    nop
    nop
    add b
    ld bc, $a516
    ld a, l
    nop
    dec de
    nop
    dec e
    nop
    nop
    nop
    ld b, b
    ld bc, $0016
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    dec de
    nop
    inc sp
    ld [bc], a
    add b
    nop
    ld [hl+], a
    nop
    jr nz, jr_030_5860

    add b
    nop
    rra

jr_030_5860:
    nop
    inc hl
    inc b
    add b
    nop
    ld [hl+], a
    nop
    jr nz, jr_030_586e

    add b
    nop
    rra
    nop
    inc hl

jr_030_586e:
    ld b, $80
    nop
    ld [hl+], a
    nop
    jr nz, @+$09

    add b
    nop
    rra
    nop
    inc hl
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    dec bc
    inc b
    ld b, $ff
    nop
    nop
    nop
    nop
    ld d, $06
    rlca
    rst $38
    nop
    nop
    nop
    nop
    ld d, $07
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ld a, b
    inc c
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sub h
    ld e, d
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    dec hl
    ld e, e
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    push de
    ld e, b
    inc bc
    nop
    ld b, $ff
    nop
    nop
    ld a, [hl]
    inc c
    inc bc
    nop
    rst $38
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $0d16
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld hl, $0c79
    rst $18
    ld c, $0a
    ld a, $06
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
    jr nz, @+$09

jr_030_58f0:
    ld a, $06
    rst $18
    ld [$180a], sp
    jr nz, @-$1f

    db $10
    ld a, [bc]
    ld a, $06
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
    jr nz, jr_030_58f0

    rst $18
    db $10
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    ld a, a
    inc c
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sub h
    ld e, d
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    dec hl
    ld e, e
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    add b
    inc c
    inc bc
    nop
    ld b, $ff
    nop
    nop
    add c
    inc c
    inc bc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    sub d
    inc c
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    sub h
    ld e, d
    dec bc
    nop
    inc b
    rst $38
    nop
    nop
    dec hl
    ld e, e
    dec bc
    nop
    dec b
    rst $38
    nop
    nop
    sub e
    inc c
    inc bc
    nop
    ld b, $ff
    nop
    nop
    sub h
    inc c
    inc bc
    nop
    rst $38
    ld bc, $00ff
    nop
    di
    ld a, l
    ld b, $00
    rst $38
    rrca
    rst $38
    nop
    nop
    and $47
    ld bc, $ff00
    call Call_030_6414
    rst $30
    ld h, b
    ld de, $0b28
    ld hl, $5941
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_030_599d

    rst $30
    ld h, b
    ld c, $28
    add hl, bc
    ld hl, $5918
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]

jr_030_599d:
    ld a, [$c46a]
    cp $01
    jr z, jr_030_59ac

    push af
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    pop af

jr_030_59ac:
    cp $02
    jr nz, jr_030_59b6

    call Call_030_5d54
    jp Jump_030_5a93


jr_030_59b6:
    cp $03
    jr nz, jr_030_59c0

    call Call_030_5f7a
    jp Jump_030_5a93


jr_030_59c0:
    cp $04
    jr nz, jr_030_5a2a

    rst $30
    nop
    inc e
    jr z, jr_030_59fa

    call Call_030_60da
    rst $30
    ld b, b
    inc c
    jp z, Jump_030_5a93

    rst $28
    ld b, b
    inc c
    rst $30
    add b
    dec de
    jp nz, Jump_030_5a93

    call Call_000_2ed5
    ld e, $e7
    add b
    dec de
    ld de, $0032
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $06
    ld [$c441], a
    jp Jump_030_5a93


jr_030_59fa:
    call Call_030_5cc2
    rst $30
    ld b, b
    inc c
    jp z, Jump_030_5a93

    rst $28
    ld b, b
    inc c
    rst $30
    add b
    dec d
    jp nz, Jump_030_5a93

    call Call_000_2ed5
    ld e, $e7
    add b

Call_030_5a12:
    dec d
    ld de, $0032
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $06
    ld [$c441], a
    jr jr_030_5a93

jr_030_5a2a:
    cp $05
    jr nz, jr_030_5a87

    rst $30
    jr nz, @+$1e

    jr z, jr_030_5a5d

    call Call_030_62cb
    rst $30
    ld b, b
    inc c
    jr z, jr_030_5a93

    rst $28
    ld b, b
    inc c
    rst $30
    and b
    dec de
    jr nz, jr_030_5a93

    rst $20
    and b
    dec de
    ld de, $0032
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $07
    ld [$c441], a
    jr jr_030_5a93

jr_030_5a5d:
    call Call_030_5ef8
    rst $30
    ld b, b
    inc c
    jr z, jr_030_5a93

    rst $28
    ld b, b
    inc c
    rst $30
    and b
    dec d
    jr nz, jr_030_5a93

    rst $20
    and b
    dec d
    ld de, $0032
    call Call_030_7e7f
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $07
    ld [$c441], a
    jr jr_030_5a93

jr_030_5a87:
    cp $fa
    jr nz, jr_030_5a93

    rst $30
    add b
    inc c
    jr z, jr_030_5a93

    rst $28
    add b
    inc c

Jump_030_5a93:
jr_030_5a93:
    ret


    rst $30
    nop
    inc e
    jr z, jr_030_5a9d

    call Call_030_6159
    ret


jr_030_5a9d:
    rst $30
    and b
    inc c
    jr z, jr_030_5aa6

    call Call_030_5d4a
    ret


jr_030_5aa6:
    ld hl, $0cf4
    rst $18
    ld c, $0a
    ld a, $03
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
    jr z, jr_030_5ac8

    ld a, $03
    rst $18
    ld [$180a], sp
    ld h, d

jr_030_5ac8:
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $07
    ld [$c82c], a
    rst $18
    inc h
    db $10
    ld a, $16
    ld b, a
    ld a, $02
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $5bc2
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4f00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0711
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1ec0
    ld de, $2060
    rst $18
    jr nz, jr_030_5b24

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $5bd2
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_5b24:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    ret


    rst $30
    jr nz, jr_030_5b4a

    jr z, jr_030_5b34

    call Call_030_634a
    ret


jr_030_5b34:
    rst $30
    ret nz

    inc c
    jr z, jr_030_5b3d

    call Call_030_5f70
    ret


jr_030_5b3d:
    ld hl, $0d03
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld a, [bc]
    ld a, [bc]
    rst $18
    ld [de], a

jr_030_5b4a:
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
    jr z, jr_030_5b5f

    ld a, $04
    rst $18
    ld [$180a], sp
    ld h, d

jr_030_5b5f:
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$df0a], sp
    inc e
    db $10
    ld a, $07
    ld [$c82c], a
    rst $18
    inc h
    db $10
    ld a, $16
    ld b, a
    ld a, $03
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld hl, $5e0c
    ld de, $c600
    ld c, $04
    call Call_000_03eb
    ld bc, $4e00
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0711
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1d60
    ld de, $2380
    rst $18
    jr nz, jr_030_5bbb

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $5e1c
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_5bbb:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_5bd1

    ret


    nop
    ret nz

    ld e, $00
    ld h, b
    jr nz, jr_030_5bfe

    jr nc, jr_030_5bd6

    ld [bc], a
    rla
    nop
    add c
    nop
    nop

jr_030_5bd1:
    nop
    ld a, [c]
    ld e, e
    inc l
    ld e, h

jr_030_5bd6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0cf7
    rst $18

jr_030_5bfe:
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cf8
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cf9
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld de, $0a03
    ld hl, $0cfa
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    ld e, b
    ld e, h
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $03
    ld de, $0a03
    ld hl, $0cfc
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cfd
    rst $18
    ld c, d
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0cfe
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_5c90

    ld a, $06
    ld [$c961], a
    jr jr_030_5cb9

jr_030_5c90:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld a, [$d68c]
    ld [$c969], a
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_5cb9

    rst $20
    ld h, b
    inc c

jr_030_5cb9:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_5cc2:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_5d15

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0d01
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$21

jr_030_5d15:
    ld a, [$c969]
    bit 7, a
    jr z, jr_030_5d29

    ld hl, $0cff
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$180a], sp
    dec bc

jr_030_5d29:
    ld hl, $0d00
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7e11
    rst $18
    jr jr_030_5d49

    ld a, $03
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_030_5d49:
    ret


Call_030_5d4a:
    ld hl, $0d11
    rst $18
    ld c, $0a
    call Call_030_5d80
    ret


Call_030_5d54:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0cfb
    rst $18
    ld c, $0a
    call Call_030_5d80
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_5d80:
    ld a, $03
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
    jr z, jr_030_5db4

    ld hl, $0d02
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7dff
    rst $18
    jr jr_030_5db5

    ld a, $03
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_5e0b

jr_030_5db4:
    rst $20

jr_030_5db5:
    and b
    inc c
    rst $18
    inc e
    db $10
    rst $30
    add b
    dec d
    jr nz, jr_030_5dc4

    ld a, $0b
    ld [$c82c], a

jr_030_5dc4:
    rst $18
    inc h
    db $10
    ld a, $16
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0711
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1ec0
    ld de, $2060
    rst $18
    jr nz, jr_030_5e05

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $5c38
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_5e05:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_5e1b

jr_030_5e0b:
    ret


    nop
    ld h, b
    dec e
    nop
    add b
    inc hl
    call Call_000_06ef
    ld [bc], a
    ld d, $00
    ld bc, $0000

jr_030_5e1b:
    nop
    inc a
    ld e, [hl]
    db $76
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0d06
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0d07
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0d08
    rst $18
    ld c, d
    dec b
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld de, $0a03
    ld hl, $0d09
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


    and d
    ld e, [hl]
    jp z, Jump_000_005e

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl+]
    db $10
    ld a, $04
    ld de, $0a03
    ld hl, $0d0b
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0d0c
    rst $18
    ld c, d
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0d0d
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_5eda

    ld a, $07
    ld [$c961], a
    jr jr_030_5eef

jr_030_5eda:
    ld hl, $0060
    call Call_030_7e2e
    ld [$c968], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_030_5eef

    rst $20
    ld h, b
    inc c

jr_030_5eef:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_5ef8:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    or a
    jr nz, jr_030_5f4b

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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0d0f
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    ret nz

    inc c
    jr @+$14

jr_030_5f4b:
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0d0e
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7dff
    rst $18
    jr @+$0c

    ld a, $04
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ret


Call_030_5f70:
    ld hl, $0d12
    rst $18
    ld c, $0a
    call Call_030_5fa6
    ret


Call_030_5f7a:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0d0a
    rst $18
    ld c, $0a
    call Call_030_5fa6
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_5fa6:
    ld a, $04
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
    jr z, jr_030_5fda

    ld hl, $0d10
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7e08
    rst $18
    jr jr_030_5fdb

    ld a, $04
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_6031

jr_030_5fda:
    rst $20

jr_030_5fdb:
    ret nz

    inc c
    rst $18
    inc e
    db $10
    rst $30
    and b
    dec d
    jr nz, jr_030_5fea

    ld a, $0b
    ld [$c82c], a

jr_030_5fea:
    rst $18
    inc h
    db $10
    ld a, $16
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $0c
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0711
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1d60
    ld de, $2380
    rst $18
    jr nz, jr_030_602b

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $5e82
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_602b:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_6041

jr_030_6031:
    ret


    ld d, d
    ld h, b
    ld e, h
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

jr_030_6041:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$c969]
    ld [$c8a0], a
    rst $18
    db $10
    ld [de], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_6073

    ld a, $06
    ld [$c961], a
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


jr_030_6073:
    ld hl, $0060
    call Call_030_7e2e
    or a
    jr nz, jr_030_609c

    ld hl, $c968
    inc [hl]
    ld a, [hl+]
    inc [hl]
    ld b, [hl]
    ld h, $00
    ld l, b
    rst $18
    ld d, [hl]
    dec b
    ld h, $00
    ld l, a
    rst $18
    ld d, [hl]
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0c85
    rst $18
    ld c, d
    dec b
    jr jr_030_60b9

jr_030_609c:
    ld hl, $c968
    ld a, [hl+]
    inc [hl]
    ld b, [hl]
    ld h, $00
    ld l, b
    rst $18
    ld d, [hl]
    dec b
    ld h, $00
    ld l, a
    rst $18
    ld d, [hl]
    dec b
    ld a, $03
    ld de, $0a03
    ld hl, $0c86
    rst $18
    ld c, d
    dec b

jr_030_60b9:
    ld a, b
    cp $0a
    jr z, jr_030_60c7

    ld a, $01
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


jr_030_60c7:
    ld a, [$c968]
    cp $07
    jr c, jr_030_60d1

    rst $20
    ld b, b
    inc c

jr_030_60d1:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_60da:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    cp $07
    jr c, jr_030_6138

    rst $28
    ld h, b
    inc c
    cp $0a
    jr nz, jr_030_6111

    rst $20
    ld h, b
    inc c

jr_030_6111:
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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0c87
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$0d

jr_030_6138:
    ld hl, $0c89
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7e11
    rst $18
    jr jr_030_6158

    ld a, $03
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_030_6158:
    ret


Call_030_6159:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $03
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0c82
    rst $18
    ld c, $0a
    call Call_030_6185
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_6185:
    ld a, $03
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
    jr z, jr_030_61b9

    ld hl, $0c96
    rst $18
    ld c, $0a
    ld a, $03
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $03
    ld de, $7dff
    rst $18
    jr jr_030_61ba

    ld a, $03
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_621e

jr_030_61b9:
    rst $20

jr_030_61ba:
    and b
    inc c
    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$210a], sp
    ld l, b
    ret


    xor a
    ld [hl+], a
    ld [hl], a
    rst $18
    inc e
    db $10
    rst $30
    add b
    dec de
    jr nz, jr_030_61d7

    ld a, $0b
    ld [$c82c], a

jr_030_61d7:
    rst $18
    inc h
    db $10
    ld a, $16
    ld b, a
    ld a, $04
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $05
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0711
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1e60
    ld de, $20a0
    rst $18
    jr nz, jr_030_6218

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $6032
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_6218:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_622e

jr_030_621e:
    ret


    call Call_030_6159
    ret


    ld b, e
    ld h, d
    ld c, l
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_622e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$c969]
    ld [$c8a0], a
    rst $18
    db $10
    ld [de], a
    ret


    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    or a
    jr nz, jr_030_6264

    ld a, $07
    ld [$c961], a
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


jr_030_6264:
    ld hl, $0060
    call Call_030_7e2e
    or a
    jr nz, jr_030_628d

    ld hl, $c968
    inc [hl]
    ld a, [hl+]
    inc [hl]
    ld b, [hl]
    ld h, $00
    ld l, b
    rst $18
    ld d, [hl]
    dec b
    ld h, $00
    ld l, a
    rst $18
    ld d, [hl]
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0c8d
    rst $18
    ld c, d
    dec b
    jr jr_030_62aa

jr_030_628d:
    ld hl, $c968
    ld a, [hl+]
    inc [hl]
    ld b, [hl]
    ld h, $00
    ld l, b
    rst $18
    ld d, [hl]
    dec b
    ld h, $00
    ld l, a
    rst $18
    ld d, [hl]
    dec b
    ld a, $04
    ld de, $0a03
    ld hl, $0c8e
    rst $18
    ld c, d
    dec b

jr_030_62aa:
    ld a, b
    cp $0a
    jr z, jr_030_62b8

    ld a, $01
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


jr_030_62b8:
    ld a, [$c968]
    cp $07
    jr c, jr_030_62c2

    rst $20
    ld b, b
    inc c

jr_030_62c2:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_030_62cb:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c968]
    cp $07
    jr c, jr_030_6329

    rst $28
    ld h, b
    inc c
    cp $0a
    jr nz, jr_030_6302

    rst $20
    ld h, b
    inc c

jr_030_6302:
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
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0c8f
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$e70a], sp
    ld b, b
    inc c
    rst $28
    and b
    inc c
    jr @+$0d

jr_030_6329:
    ld hl, $0c91
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7e11
    rst $18
    jr jr_030_6349

    ld a, $04
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    rst $18
    ld [bc], a
    ld a, [bc]

jr_030_6349:
    ret


Call_030_634a:
    rst $18
    nop
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $04
    ld de, $7d99
    rst $18
    jr @+$0c

    ld a, [$c296]
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $0c8a
    rst $18
    ld c, $0a
    call Call_030_6376
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_6376:
    ld a, $04
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
    jr z, jr_030_63aa

    ld hl, $0c8b
    rst $18
    ld c, $0a
    ld a, $04
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $7dff
    rst $18
    jr jr_030_63ab

    ld a, $04
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    jr jr_030_640f

jr_030_63aa:
    rst $20

jr_030_63ab:
    ret nz

    inc c
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$210a], sp
    ld l, b
    ret


    xor a
    ld [hl+], a
    ld [hl], a
    rst $18
    inc e
    db $10
    rst $30
    and b
    dec de
    jr nz, jr_030_63c8

    ld a, $0b
    ld [$c82c], a

jr_030_63c8:
    rst $18
    inc h
    db $10
    ld a, $16
    ld b, a
    ld a, $05
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $05
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0711
    rst $18
    db $10
    db $10
    ld a, $00
    rst $18
    ld e, $10
    ld hl, $1d60
    ld de, $22c0
    rst $18
    jr nz, jr_030_6409

    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $6223
    rst $18
    ld a, [de]
    db $10
    ld a, $01

jr_030_6409:
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_641f

jr_030_640f:
    ret


    call Call_030_634a
    ret


Call_030_6414:
    rst $30
    ld h, b
    ld de, $1028
    rst $30
    add b
    dec d
    jr z, jr_030_6421

    rst $20

jr_030_641f:
    nop
    inc e

jr_030_6421:
    rst $30
    and b
    dec d
    jr z, jr_030_6429

    rst $20
    jr nz, jr_030_6445

jr_030_6429:
    ret


    ret nc

    ld h, l
    ld bc, $3866
    ld h, h
    xor b
    ld h, a
    and a
    ld l, c
    or b
    ld l, c
    cp c
    ld l, c
    sbc c
    ld a, l
    nop
    dec d
    nop
    ld e, $00
    nop
    nop
    nop
    ld bc, $990a

jr_030_6445:
    ld a, l
    nop
    jr z, jr_030_6449

jr_030_6449:
    rra
    nop
    nop
    nop
    add b
    ld bc, $9916
    ld a, l
    nop
    jr nz, jr_030_6455

jr_030_6455:
    add hl, de
    nop
    nop
    nop
    ld b, b
    ld bc, $a516
    ld a, l
    nop
    daa
    nop
    inc hl
    nop
    nop
    nop
    ret nz

    ld bc, $990e
    ld a, l
    nop
    rra
    nop
    ld h, $00
    nop
    nop
    ret nz

    ld bc, $7a16
    ld l, d
    nop
    jr nz, jr_030_6479

jr_030_6479:
    rra
    nop
    nop
    nop
    ret nz

    ld bc, $9928
    ld a, l
    nop
    dec h
    nop
    inc e
    nop
    nop
    nop
    ld b, b
    ld bc, $8316
    ld l, d
    nop
    jr nz, jr_030_6491

jr_030_6491:
    inc hl
    ld d, b
    add b
    nop
    nop
    ld bc, $9904
    ld a, l
    nop
    ld bc, $0100
    nop
    nop
    nop
    ret nz

    ld bc, $0027
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc c
    ld a, l
    nop
    rra
    nop
    dec h
    nop
    nop
    nop
    ret nz

    ld bc, $990a
    ld a, l
    nop
    rra
    nop
    dec de
    nop
    nop
    nop
    ld b, b
    ld bc, $9916
    ld a, l
    nop
    jr jr_030_64ca

jr_030_64ca:
    jr nz, jr_030_64cc

jr_030_64cc:
    nop
    nop
    nop
    ld bc, $9916
    ld a, l
    nop
    add hl, de
    nop
    dec de
    nop
    nop
    nop
    ld b, b
    ld bc, $990e
    ld a, l
    nop
    ld h, $00
    jr nz, jr_030_64e4

jr_030_64e4:
    nop
    nop
    add b
    ld bc, $7a16
    ld l, d
    nop
    rra
    add b
    jr nz, jr_030_64f0

jr_030_64f0:
    nop
    nop
    ret nz

    ld bc, $9928
    ld a, l
    nop
    ld sp, $1c00
    nop
    nop
    nop
    add b
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc c
    ld a, l
    nop
    ld a, [de]
    nop
    jr nz, jr_030_6511

jr_030_6511:
    nop
    nop
    nop
    ld bc, $a50a
    ld a, l
    nop
    rla
    nop
    jr jr_030_651d

jr_030_651d:
    nop
    nop
    nop
    ld bc, $9916
    ld a, l
    nop
    ld hl, $1b00
    nop
    nop
    nop
    ld b, b
    ld bc, $9916
    ld a, l
    nop
    ld h, $00
    rra
    nop
    nop
    nop
    add b
    ld bc, $990e
    ld a, l
    nop
    inc e
    nop
    dec h

jr_030_6540:
    nop
    nop
    nop
    ret nz

    ld bc, $7a16
    ld l, d
    nop
    ld hl, $2080
    nop
    nop
    nop
    ret nz

    ld bc, $9928
    ld a, l
    nop
    rra
    nop
    dec d
    nop
    nop
    nop
    ret nz

    ld bc, $992d
    ld a, l
    nop
    dec e
    nop
    inc de
    nop
    nop
    nop
    nop
    ld bc, $990d
    ld a, l
    nop
    ld hl, $1300
    nop
    nop
    nop
    add b
    ld bc, $0016
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    sbc c
    ld a, l
    nop
    ld a, [de]
    nop
    jr nz, jr_030_6586

jr_030_6586:
    nop
    nop
    nop
    ld bc, $a50a
    ld a, l
    nop
    rla
    nop
    jr jr_030_6592

jr_030_6592:
    nop
    nop
    nop
    ld bc, $9916
    ld a, l
    nop
    ld hl, $1b00
    nop
    nop
    nop
    ld b, b
    ld bc, $9916
    ld a, l
    nop
    ld h, $00
    rra
    nop
    nop
    nop
    add b
    ld bc, $990e
    ld a, l
    nop
    ld a, [de]
    nop
    dec h
    nop
    nop
    nop
    ret nz

    ld bc, $7a16
    ld l, d
    nop
    jr nz, jr_030_6540

    ld e, $00
    nop
    nop
    ret nz

    ld bc, $0028
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $c000
    dec c
    nop
    dec e
    ld [bc], a
    nop
    ret nz

    dec bc
    nop
    jr z, jr_030_65e0

    nop
    ret nz

    dec bc

jr_030_65e0:
    nop
    dec d
    inc b
    nop
    ret nz

    dec c
    nop
    inc hl
    dec b
    nop
    ret nz

    dec c
    nop
    dec e
    ld b, $00
    nop
    dec h
    nop
    rra
    rlca
    nop
    nop
    dec de
    nop
    ld h, $08
    nop
    ret nz

    dec de
    nop
    ld h, $ff
    ld bc, $00ff
    nop
    nop
    nop
    ld [$ff05], sp
    ld bc, $00ff
    nop
    nop
    nop
    add hl, bc
    dec b
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld a, [bc]
    dec b
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    dec hl
    ld bc, $ff03
    nop
    nop
    nop
    nop
    ld a, [hl+]
    rrca
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    dec bc
    dec b
    rst $38
    ld hl, $10b1
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_030_6647:
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
    jr nz, jr_030_665d

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_030_665d:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp
    call Call_030_6eb3
    jr z, jr_030_6673

    ld hl, $10db
    rst $18
    ld c, $0a
    jr jr_030_6679

jr_030_6673:
    ld hl, $10ce
    rst $18
    ld c, $0a

jr_030_6679:
    rst $30
    ld b, b
    jr jr_030_6647

    add hl, sp
    ld h, a
    ld hl, $10d9
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld [$c90a], sp
    call Call_030_6eb3
    jr z, jr_030_669c

    ld hl, $10db
    rst $18
    ld c, $0a
    rst $30
    ld h, b
    jr @-$34

    add hl, sp
    ld h, a

jr_030_669c:
    ld hl, $10ce
    rst $18
    ld c, $0a
    rst $30
    ld h, b
    jr jr_030_66ce

    ld e, d
    ld hl, $10d9
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$c90a], sp
    call Call_030_6eb3
    jr z, jr_030_66c3

    ld hl, $10db
    rst $18
    ld c, $0a
    rst $30
    add b
    jr jr_030_66ea

    db $76

jr_030_66c3:
    ld hl, $10ce
    rst $18
    ld c, $0a
    rst $30
    add b
    jr jr_030_66f5

    inc sp

jr_030_66ce:
    ld hl, $10d9
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$c90a], sp
    call Call_030_6eb3
    jr z, jr_030_66ea

    ld hl, $10db
    rst $18
    ld c, $0a
    rst $30
    and b
    jr jr_030_6711

    ld c, a

jr_030_66ea:
    ld hl, $10ce
    rst $18
    ld c, $0a
    rst $30
    and b
    jr jr_030_671c

    inc c

jr_030_66f5:
    ld hl, $10d9
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$c90a], sp
    call Call_030_6df6
    ld a, $06
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $18

jr_030_6711:
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

jr_030_671c:
    pop af
    and a
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    jr z, jr_030_6733

    ld hl, $10d1
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$c90a], sp

jr_030_6733:
    ld hl, $10d2
    rst $18
    ld c, $0a
    ld a, $06
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
    jr z, jr_030_675a

    ld hl, $10d3
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$c90a], sp

jr_030_675a:
    ld hl, $10d4
    rst $18
    ld c, $0a
    ld a, $0a
    ld [$c967], a
    ld a, $06
    rst $18
    ld [$3e0a], sp
    nop
    ld [$c3e0], a
    ld [$c3e1], a
    rst $18
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $05
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    call Call_030_6b90
    ld a, $00
    rst $18
    ld e, $10
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $6c0f
    rst $18
    ld a, [de]
    db $10
    ld a, $05
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_67b7

    ret


    ld [bc], a
    rst $38
    nop
    nop
    dec [hl]
    ld h, [hl]
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    or h
    db $10
    inc bc

jr_030_67b7:
    nop
    inc b
    rst $38
    nop
    nop
    or l
    db $10
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    or [hl]
    db $10
    inc bc
    nop
    ld b, $ff
    nop
    nop
    or a
    db $10
    inc bc
    nop
    ld [$00ff], sp
    nop
    ld h, [hl]
    ld h, [hl]
    inc bc
    nop
    add hl, bc
    add b
    nop
    nop
    ldh [rOCPS], a
    stop
    add hl, bc
    rst $38
    nop
    nop
    adc h
    ld l, d
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    cp c
    db $10
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    cp d
    db $10
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    cp e
    db $10
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    cp h
    db $10
    inc bc
    nop
    ld b, $ff
    nop
    nop
    adc e
    ld h, [hl]
    inc bc
    nop
    ld [$00ff], sp
    nop
    ld e, l
    inc c
    inc bc
    nop
    rst $38
    rst $30
    jr nz, @+$21

    jp nz, Jump_030_71af

    rst $30
    ldh [rNR12], a
    jp nz, Jump_030_70b0

    rst $30
    ld b, b
    inc de
    jp nz, Jump_030_70b0

    rst $30
    ld b, b
    ld c, $c2
    ld b, d
    ld l, a
    ld hl, $1529
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld [$c90a], sp
    rst $30
    jr nz, @+$21

    jp nz, Jump_030_71af

    rst $30
    ldh [rNR12], a
    jp nz, Jump_030_70b0

    rst $30
    ld b, b
    inc de
    jp nz, Jump_030_70b0

    rst $30
    ld b, b
    ld c, $c2
    ld b, d
    ld l, a
    ld hl, $152a
    rst $18
    ld c, $0a
    ld a, $09
    rst $18
    ld [$c90a], sp
    rst $30
    jr nz, @+$21

    jp nz, Jump_030_71af

    rst $30
    ldh [rNR12], a
    jp nz, Jump_030_70b0

    rst $30
    ld b, b
    inc de
    jp nz, Jump_030_70b0

    rst $30
    ld b, b
    ld c, $c2
    ld b, d
    ld l, a
    ld hl, $152b
    rst $18
    ld c, $0a
    ld a, $0a
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    cp l
    db $10
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    cp [hl]
    db $10
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    cp a
    db $10
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    ret nz

    db $10
    inc bc
    nop
    ld b, $ff
    nop
    nop
    or e
    ld h, [hl]
    inc bc
    nop
    ld [$00ff], sp
    nop
    ld a, [de]
    ld l, b
    ld bc, $0900
    rst $38
    nop
    nop
    ld a, $68
    ld bc, $0a00
    rst $38
    nop
    nop
    ld h, d
    ld l, b
    ld bc, $ff00
    ld [bc], a
    rst $38
    nop
    nop
    pop bc
    db $10
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    jp nz, Jump_000_0310

    nop
    inc b
    rst $38
    nop
    nop
    jp Jump_000_0310


    nop
    dec b
    rst $38
    nop
    nop
    call nz, Call_000_0310
    nop
    ld b, $ff
    nop
    nop
    jp c, $0366

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    push bc
    db $10
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    add $10
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    rst $00
    db $10
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    ret z

    db $10
    inc bc
    nop
    ld b, $ff
    nop
    nop
    jp c, $0366

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    nop
    ret


    db $10
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    jp z, Jump_000_0310

    nop
    inc b
    rst $38
    nop
    nop
    rl b
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    call z, Call_000_0310
    nop
    ld b, $ff
    nop
    nop
    jp c, $0366

    nop
    rst $38
    ld a, [$c810]
    cp $02
    jr z, jr_030_69a6

    rst $20
    ret nz

    ld de, $5921
    inc c
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$3e0a], sp
    ld [$0001], sp
    inc sp
    ld de, $1c00
    rst $18
    jr nz, @+$0c

    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld b, $80
    ld de, $0200
    rst $18
    jr z, jr_030_6987

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_030_6987:
    ld a, [hl+]
    ld a, [bc]
    ld a, $08
    ld b, $80
    ld de, $0200
    rst $18
    jr z, @+$0c

    ld a, $08
    rst $18
    ld e, $0a
    ld hl, $0c5d
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld [$cd0a], sp
    xor l
    ld a, [hl]

jr_030_69a6:
    ret


    rrca
    stop
    nop
    ld b, d
    ld l, c
    ld b, $00
    rst $38
    rrca
    rst $38
    nop
    nop
    db $ec
    ld l, d
    ld bc, $ff00
    ld a, [$c46a]
    cp $fa
    jr nz, jr_030_69c6

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_030_69c6:
    ld a, [$c450]
    cp $17
    jr nz, jr_030_6a08

    ldh a, [$95]
    ld hl, $657f
    rst $18
    ld b, $0a
    ld hl, $68c7
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    ld hl, $662c
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    rst $30
    ld h, b
    ld de, $0b28
    ld hl, $6919
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_030_6a05

    rst $30
    ld h, b
    ld c, $28
    add hl, bc
    ld hl, $68f0
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]

jr_030_6a05:
    ld a, [$c450]

jr_030_6a08:
    cp $14
    jr nz, jr_030_6a28

    ldh a, [$95]
    ld hl, $650a
    rst $18
    ld b, $0a
    ld hl, $6886
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    ld hl, $6613
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    jr jr_030_6a58

jr_030_6a28:
    cp $11
    jr nz, jr_030_6a58

    ldh a, [$95]
    ld hl, $64ad
    rst $18
    ld b, $0a
    ld hl, $67e9
    ld de, $000c
    rst $18
    ld c, h
    ld a, [bc]
    ld hl, $660a
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    rst $30
    ret nz

    ld de, $0d20
    ld a, $08
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    jr jr_030_6a58

jr_030_6a58:
    ld a, [$c46a]
    cp $fa
    jr nz, jr_030_6a73

    ld a, [$c967]
    cp $14
    jr z, jr_030_6a74

    cp $0a
    jr z, jr_030_6a6b

    ret


jr_030_6a6b:
    call Call_030_6cf2
    ld a, $00
    ld [$c967], a

jr_030_6a73:
    ret


jr_030_6a74:
    ld a, $00
    ld [$c967], a
    ret


    dec c
    dec de
    nop
    nop
    dec c
    rla
    nop
    nop
    nop
    ld bc, $1044
    inc b
    ld bc, $0c3c
    ld sp, hl
    rst $38
    ld hl, $10b8
    rst $18
    ld c, $0a
    ld a, $09
    rst $18
    ld [$3e0a], sp
    ld a, [bc]
    ld bc, $2100
    ld de, $2400
    rst $18
    jr nz, @+$0c

    ld a, $0a
    ld bc, $0008
    rst $18
    ld d, $0a
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $09
    ld b, a
    ld a, $04
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    ld c, b
    ld a, $0a
    ld bc, $2000
    ld de, $1f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0a
    rst $18
    ld e, $0a
    rst $08
    ld e, d
    ld a, $0a
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_030_6ae9

    ret


    ld hl, $10b8
    rst $18
    ld c, $0a
    ld a, $09
    rst $18

jr_030_6ae9:
    ld [$c90a], sp
    rst $18
    nop
    ld a, [bc]
    ld hl, $0c60
    rst $18
    ld c, $0a
    ld a, $80
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
    jr z, jr_030_6b0c

    jr jr_030_6b0f

jr_030_6b0c:
    call Call_030_6b13

jr_030_6b0f:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Call_030_6b13:
    ld a, $14
    ld [$c967], a
    rst $18
    inc e
    db $10
    rst $18
    inc h
    db $10
    ld a, $07
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    call Call_030_6b51
    ld a, $00
    rst $18
    ld e, $10
    call Call_030_6d40
    ld de, $c000
    rst $18
    ld [hl+], a
    db $10
    ldh a, [$95]
    ld hl, $6bdb
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_6b60

    ret


Call_030_6b51:
    ld a, [$c450]
    cp $17
    jr nz, jr_030_6b64

    ld hl, $0712
    rst $18
    db $10
    db $10
    ld a, $0b

jr_030_6b60:
    ld [$c82c], a
    ret


jr_030_6b64:
    cp $14
    jr nz, jr_030_6b74

    ld hl, $070f
    rst $18
    db $10
    db $10
    ld a, $09
    ld [$c82c], a
    ret


jr_030_6b74:
    cp $11
    jr nz, jr_030_6b84

    ld hl, $070c
    rst $18
    db $10
    db $10
    ld a, $0a
    ld [$c82c], a
    ret


jr_030_6b84:
    ld hl, $0709
    rst $18
    db $10
    db $10
    ld a, $08
    ld [$c82c], a
    ret


Call_030_6b90:
    ld a, [$c450]
    cp $17
    jr nz, jr_030_6b9e

    ld hl, $0a0c
    rst $18
    db $10
    db $10
    ret


jr_030_6b9e:
    cp $14
    jr nz, jr_030_6ba9

    ld hl, $0a07
    rst $18
    db $10
    db $10
    ret


jr_030_6ba9:
    cp $11
    jr nz, jr_030_6bb4

    ld hl, $0a02
    rst $18
    db $10
    db $10
    ret


jr_030_6bb4:
    ld hl, $080e
    rst $18
    db $10
    db $10
    ret


    rst $18
    nop
    ld a, [bc]
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $10de
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


    ei
    ld l, e
    db $fc
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret


    ld a, [$c834]
    cp $07
    jr nz, jr_030_6c09

    ld a, $01
    rst $18
    ld l, $10
    ret


jr_030_6c09:
    ld a, $80
    rst $18
    ld l, $10
    ret


    cpl
    ld l, h
    ld e, b
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc e
    jr z, jr_030_6c35

    ret


jr_030_6c35:
    rst $20
    nop
    inc e
    ldh a, [$96]
    push af
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    rst $18
    ld a, [hl+]
    db $10
    ld a, $80
    ld de, $0a03
    ld hl, $10d5
    rst $18
    ld c, d
    dec b
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    ldh a, [$96]
    push af
    rst $18
    ld a, [hl+]
    db $10
    ld a, [$c834]
    cp $00
    jr nz, jr_030_6c73

    ld a, $00
    ld [$c967], a
    jr jr_030_6cd1

jr_030_6c73:
    ld hl, $0034
    call Call_030_7e2e
    or a
    jr nz, jr_030_6c93

    ld a, [$c3e1]
    inc a
    ld [$c3e1], a
    call Call_030_6cdf
    ld a, $80
    ld de, $0a03
    ld hl, $10d6
    rst $18
    ld c, d
    dec b
    jr jr_030_6ca4

jr_030_6c93:
    rst $18
    ld a, [hl+]
    db $10
    call Call_030_6cdf
    ld a, $80
    ld de, $0a03
    ld hl, $10d7
    rst $18
    ld c, d
    dec b

jr_030_6ca4:
    ld a, [$c3e0]
    cp $0a
    jr z, jr_030_6cd1

    and $01
    jr z, jr_030_6cbd

    ld a, $01
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


jr_030_6cbd:
    ld a, $01
    ld [$c8aa], a
    ld a, [$c3e0]
    rst $18
    ld b, [hl]
    db $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


jr_030_6cd1:
    ld a, $82
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    pop af
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_030_6cdf:
    ld a, [$c3e0]
    ld l, a
    ld h, $00
    rst $18
    ld d, [hl]
    dec b
    ld a, [$c3e1]
    ld l, a
    ld h, $00
    rst $18
    ld d, [hl]
    dec b
    ret


Call_030_6cf2:
    rst $18
    nop
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $06
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    call Call_030_6e89
    jr nz, jr_030_6d3f

    ld a, [$c3e1]
    cp $07
    jr nc, jr_030_6d27

    ld hl, $10da
    rst $18
    ld c, $0a
    call Call_030_6e9e
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $06
    add b
    rst $18
    inc l
    ld a, [bc]
    ret


jr_030_6d27:
    ld hl, $10d8
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$cd0a], sp
    ld [hl], h
    ld l, [hl]
    call Call_030_6ec8
    ld a, $06
    ld b, $80
    rst $18
    inc l
    ld a, [bc]

jr_030_6d3f:
    ret


Call_030_6d40:
    call Call_030_6d89
    ld hl, $c3e4
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a2
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    sra h
    rr l
    sra h
    rr l
    push hl
    ld hl, $c3e4
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    push hl
    ld hl, $c3e2
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $c2a0
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_08ac
    sra h
    rr l
    sra h
    rr l
    push hl
    ld hl, $c3e2
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    pop hl
    add hl, de
    pop de
    rst $18
    jr nz, jr_030_6d98

    ret


Call_030_6d89:
    ld a, [$c450]
    cp $17
    jr nz, jr_030_6da3

    ld de, $2780
    ld hl, $c3e2
    ld a, e
    ld [hl+], a

jr_030_6d98:
    ld [hl], d
    ld de, $1dc0
    ld hl, $c3e4
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


jr_030_6da3:
    cp $14
    jr nz, jr_030_6dba

    ld de, $28c0
    ld hl, $c3e2
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld de, $20e0
    ld hl, $c3e4
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


jr_030_6dba:
    cp $11
    jr nz, jr_030_6dd1

    ld de, $1f40
    ld hl, $c3e2
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld de, $2040
    ld hl, $c3e4
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


jr_030_6dd1:
    ld de, $21e0
    ld hl, $c3e2
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld de, $1ec0
    ld hl, $c3e4
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


    call Call_030_6e49
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


Call_030_6df6:
    ld de, $0004
    rst $30
    ld h, b
    ld c, $28
    rlca
    rst $30
    ld h, b
    ld de, $2a20
    jr jr_030_6e37

    ld de, $0003
    rst $30
    ld b, b
    ld c, $28
    rlca
    rst $30
    ld b, b
    ld de, $1b20
    jr jr_030_6e37

    ld de, $0002
    rst $30
    jr nz, jr_030_6e28

    jr z, jr_030_6e23

    rst $30
    jr nz, jr_030_6e30

    jr nz, jr_030_6e2d

    jr jr_030_6e37

jr_030_6e23:
    ld de, $0001
    rst $30
    nop

jr_030_6e28:
    ld de, $0220
    jr jr_030_6e37

jr_030_6e2d:
    ld hl, $10cf

jr_030_6e30:
    rst $18
    ld c, $0a
    call Call_030_6e41
    ret


jr_030_6e37:
    ld hl, $10d0
    rst $18
    ld c, $0a
    call Call_030_6e41
    ret


Call_030_6e41:
    ld a, e
    rst $18
    ld e, d
    dec b
    ld [$c3ea], a
    ret


Call_030_6e49:
    ld a, [$c450]
    cp $0e
    jr nz, jr_030_6e54

    ld a, $00
    jr jr_030_6e73

jr_030_6e54:
    ld a, [$c450]
    cp $11
    jr nz, jr_030_6e5f

    ld a, $01
    jr jr_030_6e73

jr_030_6e5f:
    ld a, [$c450]
    cp $14
    jr nz, jr_030_6e6a

    ld a, $02
    jr jr_030_6e73

jr_030_6e6a:
    ld a, [$c450]
    cp $17
    jr nz, jr_030_6e73

    ld a, $03

jr_030_6e73:
    ret


    ld de, $00c2
    call Call_030_6e49
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


Call_030_6e89:
    ld de, $00c2
    call Call_030_6e49
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


Call_030_6e9e:
    ld de, $00be
    call Call_030_6e49
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


Call_030_6eb3:
    ld de, $00be
    call Call_030_6e49
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


Call_030_6ec8:
    ld a, [$c450]
    cp $17
    jr nz, jr_030_6ed4

    ld de, $0032
    jr jr_030_6eec

jr_030_6ed4:
    ld a, [$c450]
    cp $14
    jr nz, jr_030_6ee0

    ld de, $002d
    jr jr_030_6eec

jr_030_6ee0:
    cp $11
    jr nz, jr_030_6ee9

    ld de, $0019
    jr jr_030_6eec

jr_030_6ee9:
    ld de, $0014

jr_030_6eec:
    ld a, [$c3e1]
    cp $0a
    jr nz, jr_030_6f00

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_030_6f00:
    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    rst $08
    jr c, jr_030_6f2c

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_030_7e73
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

jr_030_6f2c:
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call MemCopy
    ld a, [$c2a4]
    ld [$c465], a
    ret


    ld a, $00
    ld b, a
    ld a, $08
    rst $18
    ld l, $0a
    ld a, $08
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $09
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld l, $0a
    ld hl, $152c
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
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
    jp nz, Jump_030_7060

    rst $18
    db $10
    ld a, [bc]
    ld a, $08
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
    jp nz, Jump_030_7088

    rst $18
    db $10
    ld a, [bc]
    ld a, $08
    rst $18
    ld [$cf0a], sp
    adc d
    ld a, $08
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $08
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $09
    ld b, a
    ld a, $0a
    rst $18
    jr nc, jr_030_6fdb

    ld a, $0a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a

jr_030_6fdb:
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0a
    rst $18
    ld [$3e0a], sp
    add hl, bc
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $08
    rst $18
    ld [$ef0a], sp
    ld h, b
    inc de

jr_030_6ff8:
    ld hl, $1808
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld [$f50a], sp
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $1809
    ld de, $0101
    rst $18
    ld b, h
    ld a, [bc]
    cp $ff
    jr z, jr_030_6ff8

    cp $01
    jr nz, jr_030_7026

    rst $20
    ld h, b
    inc de
    ld hl, $180b
    rst $18
    ld c, $0a
    jr jr_030_702c

jr_030_7026:
    ld hl, $180a
    rst $18
    ld c, $0a

jr_030_702c:
    ld a, $08
    rst $18
    ld [$3e0a], sp
    ld a, [bc]
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $08
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $02
    ld [$c441], a
    ret


Jump_030_7060:
    ld a, $08
    rst $18
    ld [$3e0a], sp
    ld [$c006], sp
    rst $18
    inc l
    ld a, [bc]
    ld a, $09
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $0a
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ret


Jump_030_7088:
    ld a, $08
    rst $18
    ld [$3e0a], sp
    ld [$c006], sp
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $09
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $0a
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ret


Jump_030_70b0:
    ld a, $00
    ld b, a
    ld a, $08
    rst $18
    ld l, $0a
    ld a, $08
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $09
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld l, $0a
    ld hl, $154b
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
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
    jp nz, Jump_030_7184

    rst $18
    db $10
    ld a, [bc]
    rst $08
    adc d
    ld a, $08
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $08
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $08
    rst $18
    ld [$ef0a], sp
    ld h, b
    inc de
    jr @+$0d

jr_030_711c:
    ld hl, $1808
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld [$f50a], sp
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld de, $0101
    ld hl, $1809
    rst $18
    ld b, h
    ld a, [bc]
    cp $ff
    jr z, jr_030_711c

    cp $01
    jr nz, jr_030_714a

    rst $20
    ld h, b
    inc de
    ld hl, $180b
    rst $18
    ld c, $0a
    jr jr_030_7150

jr_030_714a:
    ld hl, $180a
    rst $18
    ld c, $0a

jr_030_7150:
    ld a, $08
    rst $18
    ld [$3e0a], sp
    ld a, [bc]
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $08
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $09
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    ld [$c441], a
    ret


Jump_030_7184:
    rst $20
    jr nz, jr_030_71a6

    ld a, $08
    rst $18
    ld [$3e0a], sp
    ld [$c006], sp
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $09
    ld b, $00
    rst $18
    inc l

jr_030_71a6:
    ld a, [bc]
    ld a, $0a
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ret


Jump_030_71af:
    ld hl, $154e
    rst $18
    ld c, $0a
    ld a, $08
    rst $18
    ld [$c90a], sp
    rst $38
    ld [hl], c
    ld b, $72
    ret


    ld [hl], c
    rrca
    ld [hl], d
    db $10
    ld [hl], d
    ld de, $1272
    ld [hl], d
    sbc c
    ld a, l
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ret nz

    ld bc, $992d
    ld a, l
    nop
    dec bc
    nop
    dec c
    nop
    nop
    nop
    ret nz

    ld bc, $990d
    ld a, l
    nop
    add hl, bc
    nop
    dec c
    nop
    nop
    nop
    ret nz

    ld bc, $0016
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
    nop
    rst $38
    ld bc, $00c0
    dec bc
    nop
    dec bc
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $7f
    call Call_000_25a1
    ld a, [$c46a]
    cp $0f
    jp z, Jump_030_7220

    ret


Jump_030_7220:
    rst $18
    nop
    ld a, [bc]
    ld hl, $1539
    rst $18
    ld c, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    rst $30
    ldh [rNR12], a
    jr nz, jr_030_726c

    rst $30
    ld b, b
    inc de
    jr nz, jr_030_726c

    rst $20
    ldh [rNR12], a
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

jr_030_726c:
    ld hl, $153a
    rst $18
    ld c, $0a
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
    jr nz, jr_030_728c

    rst $28
    nop
    inc de
    jr jr_030_72a4

jr_030_728c:
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
    jr nz, jr_030_726c

    rst $20
    nop
    inc de

jr_030_72a4:
    call Call_030_72f0
    ret


Call_030_72a8:
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c873
    ld a, [$c835]
    or a
    jr nz, jr_030_72c9

    bit 0, [hl]
    jr z, jr_030_72c2

    res 0, [hl]
    ld bc, $8000
    jr jr_030_72db

jr_030_72c2:
    set 0, [hl]
    ld bc, $0b00
    jr jr_030_72db

jr_030_72c9:
    bit 1, [hl]
    jr z, jr_030_72d4

    res 1, [hl]
    ld bc, $0c01
    jr jr_030_72db

jr_030_72d4:
    set 1, [hl]
    ld bc, $0d01
    jr jr_030_72db

jr_030_72db:
    rst $18
    jr nz, jr_030_72e0

    ret


Call_030_72df:
    rst $30

jr_030_72e0:
    ld h, b
    inc de
    jr z, jr_030_72ea

    ld a, $03
    ld [$c834], a
    ret


jr_030_72ea:
    ld a, $02
    ld [$c834], a
    ret


Call_030_72f0:
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    rst $18
    inc e
    db $10
    call Call_030_72df
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $0c01
    rst $18
    ld e, $02
    ld a, $2b
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld hl, $0301
    rst $18
    db $10
    db $10
    ld a, $80
    rst $18
    ld e, $10
    ldh a, [$95]
    ld hl, $7361
    rst $18
    ld a, [de]
    db $10
    xor a
    ld [$c873], a
    ld hl, $c878
    ld [hl], $01
    inc hl
    ld a, [$c810]
    ld [hl+], a
    ld [hl], $0b
    inc hl
    ld [hl], $0c
    inc hl
    ld [hl], $0d
    rst $30
    nop
    inc de
    jr z, jr_030_7358

    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    xor a
    ld [$c835], a
    call Call_030_72a8
    ld hl, $c879
    ld [hl], $0b
    inc hl
    ld a, [$c810]
    ld [hl], a

jr_030_7358:
    ld a, $12
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, jr_030_7370

    ret


    or l
    ld [hl], e
    rst $00
    ld [hl], e
    nop
    nop
    add c
    ld [hl], e
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_7370:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $06
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c873
    bit 0, [hl]
    jr nz, jr_030_7396

    ld bc, $8000
    call Call_030_73af
    jr jr_030_739c

jr_030_7396:
    ld bc, $0b00
    call Call_030_73af

jr_030_739c:
    bit 1, [hl]
    jr nz, jr_030_73a8

    ld bc, $0c01
    call Call_030_73af
    jr jr_030_73ae

jr_030_73a8:
    ld bc, $0d01
    call Call_030_73af

jr_030_73ae:
    ret


Call_030_73af:
    push hl
    rst $18
    jr nz, jr_030_73b5

    pop hl
    ret


jr_030_73b5:
    ld a, [$c835]
    or a
    jr nz, jr_030_73c0

    rst $18
    db $10
    ld [de], a
    jr jr_030_73c3

jr_030_73c0:
    rst $18
    ld [de], a
    ld [de], a

jr_030_73c3:
    call Call_000_2e3b
    ret


    call Call_030_72a8
    ret


    dec de
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    reti


    ld [hl], e
    ld h, c
    ld [hl], h
    ld [hl], d
    ld [hl], h
    ld [hl], h
    ld [hl], h
    ld a, l
    ld [hl], h
    sbc c
    ld a, l
    nop
    rlca
    nop
    dec c
    nop
    nop
    nop
    ret nz

    ld bc, $992d
    ld a, l
    nop
    add hl, bc
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $990d
    ld a, l
    nop
    rlca
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $9916
    ld a, l
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $001d
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
    nop
    rst $38
    ld bc, $00c0
    add hl, bc
    nop
    dec c
    ld a, [bc]
    ld b, b
    nop
    add hl, bc
    nop
    dec c
    dec bc
    ret nz

    nop
    ld bc, $0d00
    inc c
    ret nz

    nop
    ld bc, $0d00
    dec c
    ret nz

    nop
    ld bc, $0d00
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld c, $ff
    nop
    nop
    nop
    nop
    dec hl
    ld a, [bc]
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld a, [hl+]
    rrca
    rst $38
    call Call_030_7c61
    call Call_030_7cae
    ret


    call Call_030_7c61
    call Call_030_7ce3
    ret


    dec b
    ld b, b
    nop
    nop
    ld d, e
    ld [hl], h
    nop
    nop
    dec b
    jr nz, jr_030_746c

jr_030_746c:
    nop
    ld e, d
    ld [hl], h
    nop
    nop
    rst $38
    rst $38
    ret


    ld bc, $00ff
    nop
    ld [hl], e
    ld [hl], h
    nop
    nop
    rst $38
    call $74e5
    ld a, [$c46a]
    cp $01
    jp z, Jump_030_74fe

    cp $06
    jp z, Jump_030_76f9

    cp $0a
    jp z, Jump_030_7a67

    ld a, [$c46a]
    cp $0b
    jp z, Jump_030_790f

    cp $0c
    jp z, Jump_030_7705

    cp $0d
    jp z, Jump_030_770d

    ret


    add b
    nop
    jr nz, jr_030_74fe

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld c, h
    ld [bc], a
    ld e, d
    nop
    call c, $a912
    inc h
    call c, $9f12
    ld [bc], a
    ld c, h
    ld [bc], a
    xor c
    inc h
    call c, Call_030_5a12
    nop
    call c, $a912
    inc h
    rra
    ld h, e
    xor c
    inc h
    jp z, $4c05

    ld [bc], a
    sbc a
    ld [bc], a
    rra
    ld h, e
    rst $18
    nop
    jp z, Jump_000_0828

    dec h
    ld [$0825], sp
    dec h
    ld [$0625], sp
    ld bc, $1a0e
    ld d, $01
    ld e, $06
    ld h, $3a
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $74b5
    ld de, $0206
    call Call_000_0595
    ret


Jump_030_74fe:
jr_030_74fe:
    rst $18
    nop
    ld a, [bc]
    ld hl, $1533
    rst $18
    ld c, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, $05
    ld b, a
    ld a, $06
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
    ld [bc], a
    ld b, a
    ld a, $00
    rst $18
    jr nc, jr_030_7533

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a

jr_030_7533:
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $1e
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
    rst $30
    ld b, b
    ld de, $eec2
    db $76
    ld a, $05
    rst $18
    ld [$df0a], sp
    db $10
    ld a, [bc]
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e
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
    ld a, $03
    rst $18
    jr nc, jr_030_7598

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld b, a

jr_030_7598:
    ld a, $05
    rst $18
    ld [hl-], a
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
    ld a, $04
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $03
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
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
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $02
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $0010
    rst $18
    ld d, $0a
    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    xor a
    ld bc, $1d80
    ld de, $0d80
    rst $18
    jr c, jr_030_7618

    ld a, $00
    ld bc, $1d80
    ld de, $0d80
    rst $18
    ld [hl+], a

jr_030_7618:
    ld a, [bc]
    ld a, $02
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_030_762d

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld bc, $1b00

jr_030_762d:
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, @+$0c

    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_030_7658

    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld bc, $1900

jr_030_7658:
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $1700
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    rst $18
    ld e, $0a
    rst $18
    inc a
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
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
    ldh a, [$95]
    ld b, a
    ld a, $02
    ld de, $7d7b
    rst $18
    jr jr_030_76b2

    push af
    ld a, $15
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_030_76b2:
    ld a, $03
    ld de, $7d7b
    rst $18
    jr jr_030_76c4

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_030_76c4:
    ld a, $04
    ld de, $7d7b
    rst $18
    jr jr_030_76d6

    push af
    ld a, $64
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_030_76d6:
    ld a, $00
    ld de, $7d7b
    rst $18
    jr @+$0c

    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $0f
    ld [$c441], a
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    rst $18
    db $10
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$c30a], sp
    ld e, a
    ld [hl], l

Jump_030_76f9:
    ld a, [$c96c]
    cp $01
    jp z, Jump_030_790f

    cp $02
    jr z, jr_030_770d

Jump_030_7705:
    ld hl, $1541
    rst $18
    ld c, $0a
    jr jr_030_7713

Jump_030_770d:
jr_030_770d:
    ld hl, $153c
    rst $18
    ld c, $0a

jr_030_7713:
    call Call_030_7d02
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, $00
    rst $18
    ld e, $0a
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
    ld a, $03
    ld b, a
    ld a, $02
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
    ld [bc], a
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
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
    ld a, $02
    rst $18
    ld [$3e0a], sp
    inc b
    ld b, a
    ld a, $03
    rst $18
    jr nc, jr_030_7790

    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a

jr_030_7790:
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
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
    ld a, $02
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_030_77cd

    ld a, $03
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_030_77d7

jr_030_77cd:
    ld a, $04
    ld b, $00
    ld de, $0200
    rst $18
    jr z, @+$0c

jr_030_77d7:
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_030_77f0

    ld a, $03
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_030_77fa

jr_030_77f0:
    ld a, $04
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_030_7804

jr_030_77fa:
    ld a, $04
    rst $18
    ld e, $0a
    ld a, $02
    rst $18
    ld e, $0a

jr_030_7804:
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
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
    ld a, $04
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $04
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
    ld a, $02
    ld bc, $0700
    ld de, $1400
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    ld bc, $0500
    ld de, $1400
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $0500
    ld de, $1400
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    push af
    ld a, $32
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_030_78ad

    ld a, $04
    rst $18
    ld e, $0a
    ld a, $05
    ld b, a
    ld a, $00

jr_030_78ad:
    rst $18
    ld l, $0a
    ld a, $04
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_030_78c5

    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a

jr_030_78c5:
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $14
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
    ld a, $14
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
    ld a, $00
    ld bc, $0700
    ld de, $1300
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


Jump_030_790f:
    call Call_030_7d02
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, $00
    rst $18
    ld e, $0a
    ld hl, $1546
    rst $18
    ld c, $0a
    rst $08
    adc d
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    rst $08
    adc d
    ld a, $02
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $00
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
    ld a, $02
    rst $18
    ld [$210a], sp
    ld c, c
    dec d
    rst $18
    ld c, $0a
    ld a, $04
    ld b, a
    ld a, $03
    rst $18
    jr nc, jr_030_7993

    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a

jr_030_7993:
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $04
    rst $18
    ld l, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $03
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
    ld a, $02
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_030_79d0

    ld a, $03
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_030_79da

jr_030_79d0:
    ld a, $04
    ld b, $00
    ld de, $0200
    rst $18
    jr z, @+$0c

jr_030_79da:
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_030_79f3

    ld a, $03
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_030_79fd

jr_030_79f3:
    ld a, $04
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_030_7a07

jr_030_79fd:
    ld a, $04
    rst $18
    ld e, $0a
    ld a, $02
    rst $18
    ld e, $0a

jr_030_7a07:
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $03
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
    rst $30
    ld b, b
    inc de
    jr nz, jr_030_7a97

    rst $20
    ld b, b
    inc de
    ld de, $00c8
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
    call Call_030_7e73
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $0e
    ld [$c441], a
    ret


Jump_030_7a67:
    ld a, $02
    ld bc, $0900
    ld de, $0f00
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $0700
    ld de, $0f00
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $0700
    ld de, $0d00
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625

jr_030_7a97:
    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $02
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $0008
    rst $18
    ld d, $0a
    ld hl, $154a
    rst $18
    ld c, $0a
    ld a, $04
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
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
    ld a, $02
    ld bc, $0700
    ld de, $1400
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    ld bc, $0500
    ld de, $1400
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $0500
    ld de, $1400
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    push af
    ld a, $32
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_030_7b34

    ld a, $04
    rst $18
    ld e, $0a
    ld a, $05
    ld b, a
    ld a, $00

jr_030_7b34:
    rst $18
    ld l, $0a
    ld a, $04
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_030_7b4c

    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00

jr_030_7b4c:
    rst $18
    inc [hl]
    ld a, [bc]
    push af
    ld a, $14
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
    ld a, $14
    rst $18

jr_030_7b67:
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
    ld a, $00
    ld bc, $0700
    ld de, $1300
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $5a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


    nop
    rlca
    rlca
    dec de
    inc e
    cpl
    jr nc, jr_030_7c16

    ld b, b
    cp a
    rst $00
    ld hl, sp-$78
    add sp, -$68
    ld [hl], b
    ld [hl], b
    ld bc, $0301
    ld [bc], a
    rlca
    inc b
    dec b
    ld b, $03

jr_030_7ba9:
    inc bc
    dec b
    ld b, $07
    inc b
    inc bc
    inc bc
    ldh [$e0], a
    ret c

    jr c, jr_030_7ba9

    inc c
    cp $02
    db $fd
    db $e3
    rra
    ld de, $111f
    ld a, l
    ld h, e
    cp $82
    db $f4
    inc c
    ret c

    jr c, jr_030_7b67

    ld h, b
    ret nz

    ret nz

    ldh [rNR41], a
    and b
    ld h, b
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec c
    ld c, $17
    jr jr_030_7c0a

    inc sp
    inc a
    inc h
    inc l
    inc [hl]
    jr jr_030_7bfa

    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ret nz

    or b
    ld [hl], b
    add sp, $18

jr_030_7bfa:
    db $f4
    call z, Call_000_243c
    inc a
    inc h
    db $f4
    call z, Call_000_18e8
    or b
    ld [hl], b
    ld b, b
    ret nz

    add b
    add b

jr_030_7c0a:
    ret nz

    ld b, b
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_7c16:
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rrca
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld c, $04
    inc b
    ld bc, $0301
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [rNR41], a
    ldh a, [$90]
    ld [hl], b
    ld d, b
    ld [hl], b
    ld d, b
    ldh a, [$90]
    ldh [rNR41], a
    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
    nop
    nop
    db $10
    ld [$0000], sp
    db $10
    db $10
    ld [bc], a
    nop
    add b
    ret nz

    ld bc, $7fff
    ld c, e
    ld b, e
    nop
    nop

Call_030_7c61:
    xor a
    ldh [rVBK], a
    ld hl, $7b90
    ld de, $8500
    ld c, $18
    call Call_000_0468
    ld hl, $7c59
    ld de, $0f01
    call Call_000_056c
    ret


Call_030_7c79:
    ld h, $06

jr_030_7c7b:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0800
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0700
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $7c50
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_030_7c7b

    ret


Call_030_7cae:
    ld a, $00
    ld [$c3e0], a
    ld a, $05
    ld [$c3e1], a
    ld a, $05
    ld [$c3e2], a

jr_030_7cbd:
    ld a, [$c3e0]
    cp $05
    jr z, jr_030_7ce2

    inc a
    ld [$c3e0], a
    ld bc, $0750
    call Call_030_7c79
    ld bc, $0754
    call Call_030_7c79
    ld bc, $0758
    call Call_030_7c79
    ld bc, $0754
    call Call_030_7c79
    jr jr_030_7cbd

jr_030_7ce2:
    ret


Call_030_7ce3:
    ld a, $00
    ld [$c3e0], a

jr_030_7ce8:
    ld a, [$c3e0]
    cp $08
    jr z, jr_030_7d01

    inc a
    ld [$c3e0], a
    ld bc, $0754
    call Call_030_7c79
    ld bc, $0758
    call Call_030_7c79
    jr jr_030_7ce8

jr_030_7d01:
    ret


Call_030_7d02:
    ld a, $00
    ld bc, $0700
    ld de, $0d00
    rst $18
    jr nz, @+$0c

    ld a, $02
    ld bc, $0500
    ld de, $0d00
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $0300
    ld de, $0d00
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $0100
    ld de, $0d00
    rst $18
    jr nz, jr_030_7d38

    ld a, $00
    ld bc, $000a
    rst $18
    ld d, $0a
    ld a, $02

jr_030_7d38:
    ld bc, $000a
    rst $18
    ld d, $0a
    ld a, $03
    ld bc, $000a
    rst $18
    ld d, $0a
    ld a, $04
    ld bc, $000a
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    ld bc, $0700
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    ld bc, $0500
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $0300
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ret


    dec c
    ld c, $08
    nop
    inc b
    nop
    dec de
    nop
    dec c
    ld [bc], a
    rlca
    ret nz

    add b
    ld [bc], a
    ld [bc], a
    rlca
    ret nz

    ld b, b
    ld [bc], a
    db $10
    ld a, [bc]
    ld [bc], a
    inc bc
    nop
    dec de
    nop
    ld hl, $0201
    nop
    nop
    dec c
    dec de
    nop
    nop
    nop
    ld a, [bc]
    ld bc, $0c01
    db $fc
    rst $38
    inc de
    add hl, bc
    ld [bc], a
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
    push de
    ld hl, wPlayer1
    ld d, $00
    ld e, a
    ld a, [$c835]
    or a
    jr z, jr_030_7e2b

    ld a, $40
    add e
    ld e, a

jr_030_7e2b:
    add hl, de
    pop de
    ret


Call_030_7e2e:
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
    jr nz, jr_030_7e42

    xor a

jr_030_7e42:
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


Call_030_7e73:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    rst $18
    nop
    ld b, c
    ret


Call_030_7e7f:
    rst $30
    ld h, b
    inc c
    jr z, jr_030_7e91

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_030_7e91:
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
    call Call_030_7e73
    ret


    ld a, [$c810]
    cp $00
    jr z, jr_030_7eb9

    rst $30
    add b
    ld de, $6828

jr_030_7eb9:
    ld a, [$c810]
    cp $01
    jr z, jr_030_7ec5

    rst $30
    and b
    ld de, $5c28

jr_030_7ec5:
    ld a, [$c810]
    cp $02
    jr z, jr_030_7ed1

    rst $30
    ret nz

    ld de, $5028

jr_030_7ed1:
    ld a, [$c810]
    cp $03
    jr z, jr_030_7edd

    rst $30
    ldh [rNR11], a
    jr z, jr_030_7f21

jr_030_7edd:
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
    jr c, jr_030_7f0c

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_030_7e73
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

jr_030_7f0c:
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call MemCopy
    ld a, [$c2a4]
    ld [$c465], a

jr_030_7f21:
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
