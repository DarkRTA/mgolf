INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $033", ROMX[$4000], BANK[$33]

    ld a, [bc]
    ld b, b
    cp [hl]
    ld d, [hl]
    add $5a
    cp c
    ld l, a
    ld e, $78
    ld h, d
    ld b, c
    add a
    ld b, c
    jr jr_033_4050

    ld [$c843], a
    ld b, h
    sub [hl]
    ld b, l
    ld [hl+], a
    ld b, a
    db $dd
    ld a, e
    nop
    inc bc
    nop
    dec [hl]
    nop
    nop
    nop
    add b
    ld bc, $dd16

jr_033_4025:
    ld a, e
    nop
    rrca
    nop
    scf
    nop
    nop
    nop
    ret nz

    ld bc, $dd0d
    ld a, e
    nop
    rla
    nop
    scf
    nop
    nop
    nop
    add b
    ld bc, $dd16
    ld a, e
    nop
    dec e
    nop
    inc sp
    nop
    nop
    nop
    ld b, b
    ld bc, $dd0d
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop

jr_033_4050:
    nop
    ld b, b
    ld bc, $dd15
    ld a, e
    nop
    add hl, bc
    nop
    ld b, c
    nop
    nop
    nop
    add b
    ld bc, $dd0c
    ld a, e
    ld b, b
    jr jr_033_4025

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd26
    ld a, e
    ld b, b
    ld [hl+], a
    ret nz

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd26
    ld a, e
    ld b, b
    ld [hl-], a
    ret nz

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd26
    ld a, e
    nop
    dec e
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd1f
    ld a, e
    nop
    dec c
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $bc1e
    ld c, b
    nop
    rrca
    nop
    ld de, $0000
    nop
    ld b, b
    ld bc, $d11e
    ld c, [hl]
    nop
    rla
    nop
    ld de, $0000
    nop
    ld b, b
    ld bc, $dd1e
    ld a, e
    nop
    daa
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd1e
    ld a, e
    nop
    scf
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd1e
    ld a, e
    nop
    inc bc
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $001e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $dd
    ld a, e
    nop
    inc bc
    nop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $dd16

jr_033_40ee:
    ld a, e
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    ret nz

    ld bc, $bc0d
    ld c, b
    nop
    rla
    nop
    ld de, $0000
    nop
    add b
    ld bc, $dd16
    ld a, e
    nop
    dec e
    nop
    dec c
    nop
    nop
    nop
    add b
    ld bc, $dd0d
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd1d
    ld a, e
    nop
    add hl, bc
    nop
    ld b, c
    nop
    nop
    nop
    add b
    ld bc, $dd0c
    ld a, e
    ld b, b
    jr jr_033_40ee

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd26
    ld a, e
    ld b, b
    ld [hl+], a
    ret nz

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd26
    ld a, e
    ld b, b
    ld [hl-], a
    ret nz

    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd26
    ld a, e
    nop
    daa
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $00c0
    ld [$0f00], sp
    ld [bc], a
    ld b, b
    nop
    dec de
    nop
    inc c
    inc bc
    ld b, b
    nop
    dec h
    nop
    inc c
    inc b
    ld b, b
    nop
    dec [hl]
    nop
    inc c
    dec b
    add b
    nop
    dec a
    nop
    dec c
    ld b, $c0
    nop
    ld bc, $0d00
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    ld bc, $ff02
    nop
    nop
    nop
    nop
    inc c
    ld bc, $ff03
    nop
    nop
    nop
    nop
    dec c
    ld bc, $ff04
    nop
    nop
    nop
    nop
    ld c, $01
    dec b
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld b, $ff
    nop
    nop
    nop
    nop
    jr jr_033_41b9

    rlca
    rst $38

jr_033_41b9:
    nop
    nop
    nop
    nop
    jr jr_033_41c2

    ld [$00ff], sp

jr_033_41c2:
    nop
    nop
    nop
    jr jr_033_41cb

    add hl, bc
    rst $38
    nop
    nop

jr_033_41cb:
    nop
    nop
    jr nc, jr_033_41d0

    rst $38

jr_033_41d0:
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    ld bc, $ff02
    nop
    nop
    nop
    nop
    rrca
    ld bc, $ff03
    nop
    nop
    nop
    nop
    db $10
    ld bc, $ff04
    nop
    nop
    nop
    nop
    ld de, $0502
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $ff
    nop
    nop
    nop
    nop
    add hl, de
    ld [bc], a
    rlca
    rst $38
    nop
    nop
    nop
    nop
    add hl, de
    inc bc
    ld [$00ff], sp
    nop
    nop
    nop
    add hl, de
    inc b
    add hl, bc
    rst $38
    nop
    nop
    nop
    nop
    jr nc, @+$04

    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    ld bc, $ff02
    nop
    nop
    nop
    nop
    ld [de], a
    ld bc, $ff03
    nop
    nop
    nop
    nop
    inc de
    ld bc, $ff04
    nop
    nop
    nop
    nop
    inc d
    inc bc
    dec b
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld b, $ff
    nop
    nop
    nop
    nop
    ld a, [de]
    ld [bc], a
    rlca
    rst $38
    nop
    nop
    nop
    nop
    ld a, [de]
    inc bc
    ld [$00ff], sp
    nop
    nop
    nop
    ld a, [de]
    inc b
    add hl, bc
    rst $38
    nop
    nop
    nop
    nop
    jr nc, @+$05

    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    inc bc
    ld bc, $ff02
    nop
    nop
    nop
    nop
    dec d
    ld bc, $ff03
    nop
    nop
    nop
    nop
    ld d, $01
    inc b
    rst $38
    nop
    nop
    nop
    nop
    rla
    inc b
    dec b
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld b, $ff
    nop
    nop
    nop
    nop
    dec de
    ld [bc], a
    rlca
    rst $38
    nop
    nop
    nop
    nop
    dec de
    inc bc
    ld [$00ff], sp
    nop
    nop
    nop
    dec de
    inc b
    add hl, bc
    rst $38
    nop
    nop
    nop
    nop
    jr nc, jr_033_42ae

    rst $38
    ld hl, $c4ba

jr_033_42ae:
    ld de, $0857
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $0c
    ld [$c4bc], a
    call Call_033_4dff
    ret


    ld hl, $c4ba
    ld de, $085e
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $0d
    ld [$c4bc], a
    call Call_033_4dff
    ret


    ld hl, $c4ba
    ld de, $0865
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $0e
    ld [$c4bc], a
    call Call_033_4dff
    ret


    ld hl, $c4ba
    ld de, $086c
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $0f
    ld [$c4bc], a
    call Call_033_4dff
    ret


    ld hl, $c4ba
    ld de, $0873
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $10
    ld [$c4bc], a
    call Call_033_4dff
    ret


    ld hl, $c4ba
    ld de, $087a
    ld a, e
    ld [hl+], a
    ld [hl], d
    ld a, $11
    ld [$c4bc], a
    call Call_033_4dff
    ret


    ld hl, $c4ba
    ld de, $08b7
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_033_4cac
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld hl, $c4ba
    ld de, $08c9
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_033_4cac
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld hl, $c4ba
    ld de, $08db
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_033_4cac
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld hl, $c4ba
    ld de, $08ed
    ld a, e
    ld [hl+], a
    ld [hl], d
    call Call_033_4cac
    ld a, $05
    rst $18
    ld [$c90a], sp
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $63
    jr nz, jr_033_4377

    ld hl, $087f
    rst $18
    ld c, $0a
    jr jr_033_4383

jr_033_4377:
    ld hl, $087e
    rst $18
    ld c, $0a
    rst $18
    ld a, [hl-]
    ld [bc], a
    rst $18
    ld d, [hl]
    dec b

jr_033_4383:
    ld a, $0b
    rst $18
    ld [$c90a], sp
    inc c
    rst $38
    nop
    nop
    xor e
    ld b, d
    ld bc, $0d00
    rst $38
    nop
    nop
    cp l
    ld b, d
    ld bc, $0e00
    rst $38
    nop
    nop
    rst $08
    ld b, d
    ld bc, $0f00
    rst $38
    nop
    nop
    pop hl
    ld b, d
    ld bc, $1000
    rst $38
    nop
    nop
    di
    ld b, d
    ld bc, $1100
    rst $38
    nop
    nop
    dec b
    ld b, e
    ld bc, $0600
    jr nz, jr_033_43bc

jr_033_43bc:
    nop
    db $ec
    ld c, b
    ld bc, $0600
    rst $38
    nop
    nop
    rst $28
    ld c, b
    ld bc, $0b00
    rst $38
    nop
    nop
    ld e, a
    ld b, e
    ld bc, $0800
    rst $38
    nop
    nop
    dec sp
    ld b, h
    ld bc, $0900
    rst $38
    nop
    nop
    ld b, a
    ld b, h
    ld bc, $0a00
    rst $38
    nop
    nop
    ld d, e
    ld b, h
    ld bc, $ff00
    ld [bc], a
    rst $38
    nop
    nop
    rla
    ld b, e
    ld bc, $0300
    rst $38
    nop
    nop
    add hl, hl
    ld b, e
    ld bc, $0400
    rst $38
    nop
    nop
    dec sp
    ld b, e
    ld bc, $0500
    rst $38
    nop
    nop
    ld c, l
    ld b, e
    ld bc, $0600
    jr nz, jr_033_440d

jr_033_440d:
    nop
    db $ec
    ld c, b
    ld bc, $0600
    rst $38
    nop
    nop
    rst $28
    ld c, b
    ld bc, $0800
    rst $38
    nop
    nop
    dec sp
    ld b, h
    ld bc, $0900
    rst $38
    nop
    nop
    ld b, a
    ld b, h
    ld bc, $0a00
    rst $38
    nop
    nop
    ld d, e
    ld b, h
    ld bc, $0b00
    rst $38
    nop
    nop
    ld e, e
    inc c
    ld bc, $ff00
    ld hl, $08b3
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$c90a], sp
    ld hl, $08b4
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$c90a], sp
    ld hl, $08b5
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$c90a], sp
    ld a, [$c450]
    cp $0b
    jr nz, jr_033_44c7

    rst $30
    add b
    ld de, $5c20
    ld a, [$c810]
    cp $00
    jr z, jr_033_44c7

    rst $20
    add b
    ld de, $5721
    inc c
    rst $18
    ld c, $0a
    ld a, $0b
    rst $18
    ld [$3e0a], sp
    dec bc
    ld bc, $2b00
    ld de, $0700
    rst $18
    jr nz, jr_033_4495

    ld a, $0b
    ld b, $40
    ld de, $0100
    rst $18
    jr z, jr_033_449f

jr_033_4495:
    ld a, $0b
    rst $18
    ld e, $0a
    ld a, $0b
    ld de, $ff40

jr_033_449f:
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $0b
    ld bc, $2700
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0b
    rst $18
    ld e, $0a
    ld a, $0b
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld hl, $0c5b
    rst $18
    ld c, $0a
    ld a, $0b
    rst $18
    ld [$cd0a], sp
    pop af
    ld a, h

jr_033_44c7:
    ret


    ld bc, $00ff
    nop
    or e
    ld [$0004], sp
    ld [bc], a
    rst $38
    nop
    nop
    or h
    ld [$0004], sp
    inc bc
    rst $38
    nop
    nop
    or l
    ld [$0004], sp
    inc b
    rst $38
    nop
    nop
    or [hl]
    ld [$0004], sp
    rrca
    add b
    nop
    nop
    ld e, a
    ld b, h
    ld b, $00
    rst $38
    call Call_033_4fe5
    cp $01
    jr z, jr_033_451a

    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $2520
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    call Call_033_4566
    ld a, $02
    ld [$c441], a
    rst $08
    sub d

jr_033_451a:
    ret


    call Call_033_4fe5
    cp $01
    jr z, jr_033_4544

    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $3520
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    call Call_033_4566
    ld a, $03
    ld [$c441], a
    rst $08
    sub d

jr_033_4544:
    ret


    call Call_033_4fe5
    cp $01
    jr z, jr_033_4565

    ld a, $00
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $00
    ld de, $0200
    rst $18
    jr z, jr_033_4568

    ld a, $04
    ld [$c441], a
    rst $08
    sub d

jr_033_4565:
    ret


Call_033_4566:
    ld a, $00

jr_033_4568:
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld b, $c0
    ld de, $0480
    rst $18
    jr z, @+$0c

    ld a, $00
    ld bc, $000b
    rst $18
    ld d, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $23
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    ld bc, $00ff
    nop
    db $d3
    ld c, e
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    pop af
    ld b, h
    nop
    nop
    inc bc
    ld b, b
    nop
    nop
    dec de
    ld b, l
    nop
    nop
    inc b
    stop
    nop
    ld b, l
    ld b, l
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    rst $00
    ld b, l
    nop
    nop
    inc bc
    rst $38
    nop
    nop
    rst $00
    ld b, l
    nop
    nop
    rst $38
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $00
    ld b, $80
    ld de, $0100
    rst $18
    jr z, @+$0c

    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $40
    ld de, $0080
    rst $18
    jr z, jr_033_45f3

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18

jr_033_45f3:
    ld a, [hl+]
    ld a, [bc]
    ret


jr_033_45f6:
    rst $20
    jr nz, jr_033_4617

    ret


jr_033_45fa:
    rst $20
    ld h, b
    ld e, $c9

Call_033_45fe:
    ld a, [$c450]
    cp $08
    jr nz, jr_033_4612

    ld a, $0b
    ld bc, $19c0
    ld de, $0d00
    rst $18
    jr nz, jr_033_461a

    jr jr_033_461d

jr_033_4612:
    ld a, $05
    ld bc, $19c0

jr_033_4617:
    ld de, $0d00

jr_033_461a:
    rst $18
    jr nz, jr_033_4627

jr_033_461d:
    rst $20
    nop
    ld e, $fa
    ld l, h
    ret


    cp $01
    jr z, jr_033_45f6

jr_033_4627:
    cp $04
    jr nc, jr_033_45fa

    rst $20
    ld b, b
    ld e, $c9

Jump_033_462f:
    ld a, $64
    ld [$c967], a
    ld a, [$c96c]
    cp $00
    jp z, Jump_033_46ad

    ld a, [$c96c]
    cp $04
    jr nc, jr_033_46aa

    ld a, [$c96c]
    add $05
    ld [$c441], a
    ret


jr_033_464c:
    ld a, $00
    ld [$c967], a
    rst $30
    add b
    rla
    jr nz, jr_033_46ad

    rst $30
    ret nz

    ld a, [bc]
    jr z, jr_033_46ad

    ld a, $5a
    ld [$c967], a
    ld a, $09
    ld [$c441], a
    ret


Jump_033_4666:
    ld a, [$c967]
    cp $00
    jr z, jr_033_4697

    ld a, [$c96c]
    cp $00
    jr nz, jr_033_4679

    call Call_033_5138
    jr jr_033_46ad

jr_033_4679:
    rst $28
    nop
    ld [de], a
    rst $28
    jr nz, jr_033_4691

    rst $28
    ld b, b
    ld [de], a
    rst $28
    ld h, b
    ld [de], a
    ld a, [$c298]
    rst $18
    ld a, [de]
    ld a, [bc]
    ld a, [$c298]
    ld bc, $3f00

jr_033_4691:
    ld de, $3f00
    rst $18
    jr nz, @+$0c

jr_033_4697:
    rst $28
    ldh [$0e], a
    ld a, [$c967]
    cp $0a
    jp z, Jump_033_462f

    cp $1e
    jr z, jr_033_464c

    cp $64
    jr nz, jr_033_46ad

jr_033_46aa:
    call Call_033_45fe

Jump_033_46ad:
jr_033_46ad:
    rst $08
    daa
    ld a, [$c450]
    cp $08
    jr z, jr_033_46e8

    ld a, $02
    ld bc, $0100
    ld de, $3500
    rst $18
    jr nz, @+$0c

    ld a, $02
    ld bc, $0008
    rst $18
    ld d, $0a
    call Call_033_4864
    ld a, $02
    ld bc, $0100
    ld de, $0d00
    rst $18
    jr nz, jr_033_46e1

    ld a, $02
    ld bc, $0300
    ld de, $0d00
    rst $18
    ld [hl+], a

jr_033_46e1:
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ret


jr_033_46e8:
    ld a, $11
    ld bc, $0100
    ld de, $3500
    rst $18
    jr nz, @+$0c

    ld a, $11
    ld bc, $0008
    rst $18
    ld d, $0a
    call Call_033_4864
    ld a, $11
    ld bc, $0100
    ld de, $0d00
    rst $18
    jr nz, jr_033_4713

    ld a, $11
    ld bc, $0300
    ld de, $0d00
    rst $18
    ld [hl+], a

jr_033_4713:
    ld a, [bc]
    ld a, $11
    rst $18
    ld e, $0a
    ret


Jump_033_471a:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    jr jr_033_4752

    rst $28
    nop

jr_033_4724:
    inc e
    rst $28
    jr nz, @+$1e

    rst $28
    ret nz

    ld c, $ef
    ret nz

    rla
    rst $28
    ldh [rNR22], a
    rst $28
    nop
    jr jr_033_4724

    jr nz, @+$1a

    rst $28
    and b
    inc c
    rst $28
    ret nz

    inc c
    ld a, [$c46a]
    cp $fa
    jp z, Jump_033_471a

    ld a, [$c46a]
    cp $06
    jr nz, jr_033_4752

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_033_4752:
    ld a, [$c450]
    cp $0b
    jr nz, jr_033_47a5

    ldh a, [$95]
    ld hl, $40e1
    rst $18
    ld b, $0a
    ld hl, $4262
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]

jr_033_476a:
    call Call_033_55db
    rst $30
    add b
    ld de, $0b20
    ld a, $0b
    ld bc, $0100
    ld de, $3500
    rst $18
    jr nz, jr_033_4787

    rst $30
    ld b, b
    ld c, $28
    jr nz, jr_033_476a

    ld h, b
    inc e
    ld a, $05

jr_033_4787:
    ld bc, $1d00
    ld de, $0b00
    rst $18
    jr nz, @+$0c

    ld a, $05
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    rst $30
    ld h, b
    ld de, $0628
    rst $20
    ld b, b
    inc e
    rst $28
    ld h, b
    inc e
    jp Jump_033_4854


jr_033_47a5:
    cp $0a
    jr nz, jr_033_47ef

    call Call_033_55bf
    ldh a, [$95]
    ld hl, $40e1
    rst $18
    ld b, $0a
    ld hl, $4219
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    rst $30
    jr nz, jr_033_47ce

    jr z, jr_033_47e2

    rst $20
    ld h, b
    inc e
    ld a, $05
    ld bc, $1d00
    ld de, $0b00
    rst $18

jr_033_47ce:
    jr nz, @+$0c

    ld a, $05
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    rst $30
    ld b, b
    ld de, $0628
    rst $20
    ld b, b
    inc e
    rst $28
    ld h, b
    inc e

jr_033_47e2:
    ld a, $0b
    ld bc, $0100
    ld de, $3500
    rst $18
    jr nz, @+$0c

    jr jr_033_4854

jr_033_47ef:
    cp $09
    jr nz, jr_033_4839

    ldh a, [$95]
    ld hl, $40e1
    rst $18
    ld b, $0a
    ld hl, $41d0
    ld de, $0008
    rst $18
    ld c, h
    ld a, [bc]
    call Call_033_55a3
    rst $30
    nop
    ld c, $28
    jr nz, @-$17

    ld h, b
    inc e
    ld a, $05
    ld bc, $1d00
    ld de, $0b00
    rst $18
    jr nz, jr_033_4824

    ld a, $05
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    rst $30
    jr nz, jr_033_4835

jr_033_4824:
    jr z, jr_033_482c

    rst $20
    ld b, b
    inc e
    rst $28
    ld h, b
    inc e

jr_033_482c:
    ld a, $0b
    ld bc, $0100
    ld de, $3500
    rst $18

jr_033_4835:
    jr nz, jr_033_4841

    jr jr_033_4854

jr_033_4839:
    cp $08
    ld hl, $4389
    ld de, $000c

jr_033_4841:
    rst $18
    ld c, h
    ld a, [bc]
    rst $20
    ld h, b
    inc e
    rst $30
    nop
    ld de, $0628
    rst $20
    ld b, b
    inc e
    rst $28
    ld h, b
    inc e
    jr jr_033_4854

Jump_033_4854:
jr_033_4854:
    ld a, [$c46a]
    cp $06
    jp z, Jump_033_4666

    cp $fa
    jp z, Jump_033_4666

    rst $08
    daa
    ret


Call_033_4864:
    ld a, [$c46a]
    cp $fa
    jp z, Jump_033_48bb

    rst $18
    nop
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, $00
    ld bc, $000c
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, [$c967]
    cp $64
    jr nz, jr_033_48b7

    ld a, [$c450]
    cp $08
    jp z, Jump_033_4d97

    jp Jump_033_4d25


jr_033_48b7:
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


Jump_033_48bb:
    ret


    ld bc, $0d0a
    ld c, $05
    nop
    dec c
    dec de
    ld bc, $0700
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0746
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0746
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $075a
    ld b, b
    nop
    ld bc, $0102
    ld b, [hl]
    rlca
    ret nz

    nop
    ld bc, $0102
    ld e, d
    inc c
    db $e3
    rst $38
    rst $20
    nop
    rra

Call_033_48ef:
    rst $28
    nop
    inc e
    call Call_033_4c94
    call Call_033_4dbe
    jp nz, $4abb

    rst $28
    nop
    rra
    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $06
    ld b, a
    ld a, $00
    rst $18
    jr nc, @+$0c

    rst $30
    nop
    ld e, $20
    inc bc
    jp Jump_033_5166


    ld a, [$c450]
    cp $08
    jp z, Jump_033_4d97

    jp Jump_033_4d25


    rst $30
    ld h, b
    inc e
    jp nz, Jump_033_4962

    ld de, $0001
    call Call_033_4c89
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
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_033_4957

    ld a, $06
    rst $18
    ld [$c90a], sp

jr_033_4957:
    rst $18
    db $10
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$c30a], sp
    cp e
    ld d, b

Jump_033_4962:
    ld de, $0001
    call Call_033_4c89
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
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_033_498a

    ld a, $06
    rst $18
    ld [$c90a], sp

jr_033_498a:
    ld de, $000a
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$cd0a], sp
    ld d, a
    ld d, d
    call Call_033_5166
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
    jr z, jr_033_49b8

    ld a, $06
    rst $18
    ld [$c90a], sp

jr_033_49b8:
    ld de, $0006
    call Call_033_4c89
    rst $30
    ld h, b
    inc e
    jp nz, Jump_033_4a68

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
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_033_49f6

    call Call_033_4ddc
    ld a, $06
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
    ret


Jump_033_49f6:
jr_033_49f6:
    rst $20
    nop
    inc e
    rst $30
    ld h, b
    inc e
    jr nz, jr_033_4a39

    rst $20
    add b
    ld e, $11
    ld [$cd00], sp
    adc c
    ld c, h
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
    jr nz, jr_033_4a2a

    ld de, $0003
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$c30a], sp
    cp e
    ld d, b

jr_033_4a2a:
    rst $28
    nop
    inc e
    ld de, $0002
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$c90a], sp

jr_033_4a39:
    rst $20
    nop
    inc e
    rst $20
    add b
    ld e, $11
    add hl, bc
    nop
    call Call_033_4c89
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
    jr nz, jr_033_4a2a

    ld de, $000a
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$e70a], sp
    nop
    inc e

Jump_033_4a68:
    ld de, $000b
    call Call_033_4c89
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
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jr z, jr_033_4ab3

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
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jp z, Jump_033_49f6

    ld de, $0005
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$c90a], sp

jr_033_4ab3:
    rst $18
    db $10
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$3e0a], sp
    nop
    ld bc, $001a
    rst $18
    ld d, $0a
    ld a, [$c298]
    ld bc, $001a
    rst $18
    ld d, $0a
    ld de, $0013
    call Call_033_4c89
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
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jp nz, Jump_033_4b91

    ld de, $0003
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $06
    ld b, b
    rst $18
    inc l
    ld a, [bc]
    rst $30
    nop
    rra
    jr z, jr_033_4b18

    ld a, $00
    ld bc, $0d00
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    jr jr_033_4b52

jr_033_4b18:
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, [$c298]
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, [$c298]
    ld bc, $0700
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, [$c298]
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]

jr_033_4b52:
    xor a
    ld bc, $1900
    ld de, $0b00
    rst $18
    jr c, jr_033_4b66

    ld a, $00
    ld bc, $1a00
    ld de, $0d00
    rst $18
    ld [hl+], a

jr_033_4b66:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ldh a, [$95]
    ld b, a
    ld a, $00
    ld de, $5105
    rst $18
    jr jr_033_4b81

    ldh a, [$95]
    ld b, a
    ld a, [$c298]
    ld de, $5123
    rst $18

jr_033_4b81:
    jr jr_033_4b8d

    push af
    ld a, $fa
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $28
    nop
    rra

jr_033_4b8d:
    call Call_033_4f4b
    ret


Jump_033_4b91:
    rst $28
    nop
    rra
    rst $28
    ld h, b
    inc e
    rst $28
    jr nz, @+$1e

    ld a, $06
    rst $18
    ld [$3e0a], sp
    ld b, $06
    ld b, b
    rst $18
    inc l
    ld a, [bc]
    ret


    ld a, $02
    ld bc, $1500
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $1700
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $1b00
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $05
    ld bc, $1900
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    call Call_033_4c94
    ld de, $0000
    call Call_033_4c89
    ld a, $06
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    rst $30
    ld b, b
    inc e
    jr z, jr_033_4bee

    ld de, $0015
    call Call_033_4c89

jr_033_4bee:
    ld a, $06
    rst $18
    ld [$010a], sp
    ld b, b
    nop
    rst $18
    ld [hl], $0a
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00

Jump_033_4c05:
    rst $18
    ld b, d
    ld a, [bc]
    xor a
    ld bc, $0900
    ld de, $0b00
    rst $18
    jr c, jr_033_4c1c

    rst $18
    inc a
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_033_4c1c:
    ld a, $00
    ld bc, $0d00
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $06
    ld b, a
    ld a, $00
    rst $18
    jr nc, @+$0c

    call Call_033_48ef
    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld b, $c0
    ld de, $0480
    rst $18
    jr z, @+$0c

    ld a, $00
    ld bc, $000b
    rst $18
    ld d, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $23
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_033_4c89:
    ld hl, $c4ba
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, de
    rst $18
    ld c, $0a
    ret


Call_033_4c94:
    ld hl, $c4ba
    ld a, [$c450]
    cp $08
    jr nz, jr_033_4ca5

    ld de, $0c1b
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


jr_033_4ca5:
    ld de, $0893
    ld a, e
    ld [hl+], a
    ld [hl], d
    ret


Call_033_4cac:
    ld hl, $c4ba
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c450]
    cp $0b
    jr nz, jr_033_4cc0

    ld a, $0c
    add l
    ld l, a
    jr nc, jr_033_4cc0

    inc h

jr_033_4cc0:
    ld a, [$c450]
    cp $0a
    jr nz, jr_033_4cce

    ld a, $06
    add l
    ld l, a
    jr nc, jr_033_4cce

    inc h

jr_033_4cce:
    rst $30
    nop
    ld e, $28
    ld l, $f7
    jr nz, jr_033_4cf4

    jr z, jr_033_4ce3

    ld a, $04
    add l
    ld l, a
    jr nc, jr_033_4cdf

    inc h

jr_033_4cdf:
    rst $18
    ld c, $0a
    ret


jr_033_4ce3:
    rst $30
    ld b, b
    ld e, $28
    dec bc
    ld a, $03
    add l
    ld l, a
    jr nc, jr_033_4cef

    inc h

jr_033_4cef:
    rst $18
    ld c, $0a
    ret


    rst $30

jr_033_4cf4:
    ld h, b
    ld e, $3e
    ld [bc], a
    add l
    ld l, a
    jr nc, jr_033_4cfd

    inc h

jr_033_4cfd:
    rst $18
    ld c, $0a
    ret


    rst $30
    ld b, b
    inc e
    jr z, jr_033_4d11

    ld a, $05
    add l
    ld l, a
    jr nc, jr_033_4d0d

    inc h

jr_033_4d0d:
    rst $18
    ld c, $0a
    ret


jr_033_4d11:
    rst $30
    ld h, b
    inc e
    jr z, jr_033_4d21

    ld a, $01
    add l
    ld l, a
    jr nc, jr_033_4d1d

    inc h

jr_033_4d1d:
    rst $18
    ld c, $0a
    ret


jr_033_4d21:
    rst $18
    ld c, $0a
    ret


Jump_033_4d25:
    ld a, [$c450]
    cp $0b
    jr nz, jr_033_4d34

    ld hl, $0c39
    rst $18
    ld c, $0a
    jr jr_033_4d4e

jr_033_4d34:
    ld a, [$c450]
    cp $0a
    jr nz, jr_033_4d43

    ld hl, $0c36
    rst $18
    ld c, $0a
    jr jr_033_4d4e

jr_033_4d43:
    ld a, [$c450]
    cp $09
    ld hl, $0c33
    rst $18
    ld c, $0a

jr_033_4d4e:
    rst $30
    jr nz, jr_033_4d6f

    jr z, jr_033_4d5b

    rst $18
    db $10
    ld a, [bc]
    rst $18
    db $10
    ld a, [bc]
    jr jr_033_4d63

jr_033_4d5b:
    rst $30
    ld b, b
    ld e, $28
    inc bc
    rst $18
    db $10
    ld a, [bc]

jr_033_4d63:
    ld a, $06
    rst $18
    ld [$c90a], sp

Jump_033_4d69:
    ld a, $06
    rst $18
    ld a, [bc]
    ld a, [bc]
    push af

jr_033_4d6f:
    ld a, $05
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
    jr z, jr_033_4d88

    rst $18
    db $10
    ld a, [bc]

jr_033_4d88:
    ld a, $06
    rst $18
    ld [$c90a], sp

jr_033_4d8e:
    rst $18
    ld c, $0a
    ld a, $06
    rst $18
    ld [$c90a], sp

Jump_033_4d97:
    rst $30
    jr nz, jr_033_4db8

    jr z, jr_033_4da4

    ld hl, $0883
    rst $18
    ld c, $0a
    jr jr_033_4d8e

jr_033_4da4:
    rst $30
    ld b, b
    ld e, $28
    add hl, bc
    ld hl, $0880
    rst $18
    ld c, $0a
    jp Jump_033_4d69


    ld hl, $0884
    rst $18
    ld c, $0a

jr_033_4db8:
    ld a, $06
    rst $18
    ld [$c90a], sp

Call_033_4dbe:
    rst $30
    nop
    ld [de], a
    jp nz, Jump_033_4dd9

    rst $30
    jr nz, jr_033_4dd9

    jp nz, Jump_033_4dd9

    rst $30
    ld b, b
    ld [de], a
    jp nz, Jump_033_4dd9

    rst $30
    ld h, b
    ld [de], a
    jp nz, Jump_033_4dd9

    ld a, $00
    ret


Jump_033_4dd9:
jr_033_4dd9:
    ld a, $01
    ret


Call_033_4ddc:
    ld a, [$c450]
    cp $0b
    jr nz, jr_033_4de7

    ld a, $04
    jr jr_033_4dfb

jr_033_4de7:
    cp $0a
    jr nz, jr_033_4def

    ld a, $03
    jr jr_033_4dfb

jr_033_4def:
    cp $09
    jr nz, jr_033_4df7

    ld a, $02
    jr jr_033_4dfb

jr_033_4df7:
    cp $08
    ld a, $01

jr_033_4dfb:
    rst $18
    ld e, d
    dec b
    ret


Call_033_4dff:
    ld de, $0000
    call Call_033_4e8c
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
    jr z, jr_033_4e1c

    ld de, $0001
    call Call_033_4e74
    ret


jr_033_4e1c:
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    ld a, [$c4bc]
    sub $0c
    rst $18
    nop
    ccf
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
    ret


    ld c, $08
    call Call_000_25af
    call Call_000_2625
    ld hl, $087d
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
    jr z, jr_033_4e1c

Call_033_4e74:
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


Call_033_4e8c:
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


    ld bc, $0d0a
    ld c, $06
    nop
    dec c
    dec de
    ld bc, $0700
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0732
    ret nz

    nop
    ld [bc], a
    ld bc, $021e
    ld bc, $073c
    ld b, b
    ld b, b
    ld bc, $0102
    ld [hl-], a
    rlca
    ret nz

    ld b, b
    ld bc, $1e01
    ld [bc], a
    ld bc, $0c5a
    rst $18
    rst $38
    ld bc, $0d32
    ld c, $06
    nop
    dec c
    dec de
    ld bc, $0700
    ret nz

    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0764
    ld b, b
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0732
    ret nz

    nop
    ld [bc], a
    ld bc, $021e
    ld bc, $0750
    ld b, b
    ld b, b
    ld bc, $0102
    ld [hl-], a
    rlca
    ret nz

    ld b, b
    ld bc, $1e01
    ld [bc], a
    ld bc, $0c5a
    rst $18
    rst $38

Call_033_4f05:
    ld a, $0a
    ld [$c967], a
    rst $18
    inc e
    db $10
    ld a, $01
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    call Call_033_4f96
    call Call_033_66cb
    rst $18
    jr nc, @+$12

    ret


Call_033_4f28:
    ld a, $14
    ld [$c967], a
    rst $18
    inc e
    db $10
    ld a, $03
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    call Call_033_4f96
    call Call_033_66cb
    rst $18
    jr nc, @+$12

    ret


Call_033_4f4b:
    ld a, $1e
    ld [$c967], a
    rst $18
    inc e
    db $10
    ld a, $02
    ld [$c834], a
    call Call_033_4f6b
    ld bc, $8000
    rst $18
    ld e, $02
    call Call_033_4f96
    call Call_033_66cb
    rst $18
    jr nc, jr_033_4f7a

    ret


Call_033_4f6b:
    rst $30
    nop
    ld [de], a
    jr z, jr_033_4f77

    ld bc, $0401
    rst $18
    ld e, $02
    ret


jr_033_4f77:
    rst $30
    jr nz, jr_033_4f8c

jr_033_4f7a:
    jr z, jr_033_4f83

    ld bc, $0501
    rst $18
    ld e, $02
    ret


jr_033_4f83:
    rst $30
    ld b, b
    ld [de], a
    jr z, jr_033_4f8f

    ld bc, $0601
    rst $18

jr_033_4f8c:
    ld e, $02
    ret


jr_033_4f8f:
    ld bc, $0701
    rst $18
    ld e, $02
    ret


Call_033_4f96:
    ld a, [$c450]
    cp $0b
    jr nz, jr_033_4fad

    ld a, $0b
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld hl, $0401
    rst $18
    db $10
    db $10
    ret


jr_033_4fad:
    cp $0a
    jr nz, jr_033_4fc1

    ld a, $0a
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
    ret


jr_033_4fc1:
    cp $09
    jr nz, jr_033_4fd5

    ld a, $09
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld hl, $0201
    rst $18
    db $10
    db $10
    ret


jr_033_4fd5:
    ld a, $08
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld hl, $0101
    rst $18
    db $10
    db $10
    ret


Call_033_4fe5:
    call Call_033_4dbe
    cp $00
    jr nz, jr_033_4fef

    ld a, $00
    ret


jr_033_4fef:
    ld hl, $0c42
    call Call_033_506f
    ld a, [$c298]
    rst $18
    ld a, [bc]
    ld a, [bc]
    ld a, [$c298]
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
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
    jr nz, jr_033_5058

    ld hl, $0c4a
    call Call_033_506f
    ld a, [$c298]
    rst $18
    ld [$fa0a], sp
    sbc b
    jp nz, Jump_000_1adf

    ld a, [bc]
    ld a, [$c298]
    ld b, $80
    ld de, $0600
    rst $18
    jr z, @+$0c

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $08
    call Call_000_25a1
    call Call_000_2625
    call Call_033_50a6
    ld a, [$c298]
    rst $18
    ld a, [de]
    ld a, [bc]
    ld a, [$c298]
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld a, $00
    ret


jr_033_5058:
    ld a, [$c28a]
    add $80
    ld b, a
    ld a, $00
    ld b, b
    ld de, $0100
    rst $18
    jr z, jr_033_5071

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $01
    ret


Call_033_506f:
    rst $30
    nop

jr_033_5071:
    ld [de], a
    jp z, Jump_033_5079

    ld a, $00
    jr jr_033_509a

Jump_033_5079:
    rst $30
    jr nz, jr_033_508e

    jp z, Jump_033_5083

    ld a, $01
    jr jr_033_509a

Jump_033_5083:
    rst $30
    ld b, b
    ld [de], a
    jp z, Jump_033_508d

    ld a, $02
    jr jr_033_509a

Jump_033_508d:
    rst $30

jr_033_508e:
    ld h, b
    ld [de], a
    jp z, Jump_033_5097

    ld a, $03
    jr jr_033_509a

Jump_033_5097:
    ld a, $05
    ret


jr_033_509a:
    ld [$c4bc], a
    add l
    ld l, a
    jr nc, jr_033_50a2

    inc h

jr_033_50a2:
    rst $18
    ld c, $0a
    ret


Call_033_50a6:
    ld de, $0090
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
    call Call_000_2d49
    ret


Jump_033_50bb:
    xor a
    ld bc, $1900
    ld de, $0b00
    rst $18
    jr c, jr_033_50cf

    ld a, $00
    ld bc, $1a00
    ld de, $0d80
    rst $18
    ld [hl+], a

jr_033_50cf:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ldh a, [$95]
    ld b, a
    ld a, $00
    ld de, $5105
    rst $18
    jr jr_033_50ea

    ldh a, [$95]
    ld b, a
    ld a, [$c298]
    ld de, $5105
    rst $18

jr_033_50ea:
    jr jr_033_50f6

    push af
    ld a, $c8
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $30
    jr nz, jr_033_5112

jr_033_50f6:
    jr z, jr_033_50fc

    call Call_033_4f4b
    ret


jr_033_50fc:
    call Call_033_4f28
    ld c, $04
    call Call_000_25a1
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

jr_033_5112:
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
    ld [bc], a
    nop

Call_033_5138:
    ld a, [$c46a]
    cp $fa
    jr z, jr_033_5165

    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    jr nz, jr_033_5154

    ld a, [$c298]
    ld bc, $0900
    ld de, $0f00
    rst $18

jr_033_5154:
    jr nz, jr_033_5160

    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, [$c298]

jr_033_5160:
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]

jr_033_5165:
    ret


Call_033_5166:
Jump_033_5166:
    rst $30
    ld b, b
    inc e
    jp nz, Jump_033_54ca

    ld de, $0004
    call Call_033_4c89
    call Call_033_4ddc
    ld a, $06
    rst $18
    ld [$f50a], sp
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $0892
    ld de, $0501
    rst $18
    ld b, h
    ld a, [bc]
    cp $ff
    jr z, jr_033_519b

    cp $00
    jr z, jr_033_51a7

    cp $01
    jr z, jr_033_51db

    cp $02
    jr z, jr_033_519b

    ret


jr_033_519b:
    ld de, $0005
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$c90a], sp

jr_033_51a7:
    rst $28
    nop
    inc e
    rst $30
    ld h, b
    inc e
    jp nz, Jump_033_51cc

    ld de, $0007
    call Call_033_4c89
    call Call_033_4ddc
    ld a, $06
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
    ret


Jump_033_51cc:
    ld de, $000d
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$cd0a], sp
    ld d, a
    ld d, d
    ret


Jump_033_51db:
jr_033_51db:
    rst $20
    nop
    inc e
    rst $30
    ld h, b
    inc e
    jr nz, jr_033_5221

    ld de, $0008
    call Call_033_4c89
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
    jr nz, jr_033_5212

    ld de, $0003
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$e70a], sp
    ldh [$0e], a
    call Call_033_556c
    jp Jump_033_50bb


jr_033_5212:
    ld de, $0002
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$ef0a], sp
    nop
    inc e
    ret


jr_033_5221:
    rst $20
    nop
    inc e
    ld de, $0009
    call Call_033_4c89
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
    jr nz, jr_033_5212

    ld de, $000a
    call Call_033_4c89
    ld a, $06
    rst $18
    ld [$e70a], sp
    ldh [$0e], a
    rst $20
    nop
    inc e
    call Call_033_5257
    call Call_033_5573
    ret


Call_033_5257:
    rst $30
    nop
    inc e
    jr nz, jr_033_5267

    call Call_033_558e
    jr z, jr_033_5272

    call Call_033_5522
    jp Jump_033_544c


jr_033_5267:
    call Call_033_559c
    jr z, jr_033_5272

    call Call_033_5522
    jp Jump_033_54bb


jr_033_5272:
    ld de, $000e
    call Call_033_4c89
    rst $08
    ld h, l
    ld a, $07
    rst $18
    ld [$fa0a], sp
    ld d, b
    call nz, Call_000_08fe
    jp nz, Jump_033_52c1

    ld a, $02
    ld bc, $1500
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $03
    ld bc, $1700
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $04
    ld bc, $1b00
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $05
    ld bc, $1900
    ld de, $0d80
    rst $18
    jr nz, @+$0c

    ld a, $0b
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_033_52c8

    jp Jump_033_536e


Jump_033_52c1:
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]

jr_033_52c8:
    ld a, $00
    ld b, $40
    ld de, $0280
    rst $18
    jr z, jr_033_52dc

    ld a, $00
    rst $18
    ld e, $0a
    ldh a, [$95]
    ld b, a
    ld a, $04

jr_033_52dc:
    ld de, $7bde
    rst $18
    jr @+$0c

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    ld a, $05
    ld bc, $0010
    rst $18
    ld d, $0a
    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld bc, $1580
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    ld b, $c0
    ld de, $0200
    rst $18
    jr z, jr_033_532f

    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld bc, $1700

jr_033_532f:
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $04
    ld bc, $1a00
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    ld bc, $1880
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $0900
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a

Jump_033_536e:
    call Call_033_5522
    ld a, $00
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld bc, $0040
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $1900
    ld de, $0b00
    rst $18
    jr c, jr_033_539a

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $00
    rst $18

jr_033_539a:
    inc l
    ld a, [bc]
    ld a, $03
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $04
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $05
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $07
    ld bc, $1d00
    ld de, $0b00
    rst $18
    jr nz, jr_033_53c6

    ld a, $00
    ld bc, $000d
    rst $18
    ld d, $0a
    rst $30
    nop

jr_033_53c6:
    inc e
    jr nz, jr_033_53d6

    ld a, $04
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_033_53de

    jr jr_033_53d6

jr_033_53d6:
    ld a, $00
    ld bc, $1280
    ld de, $0d80

jr_033_53de:
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $07
    rst $18
    ld [$f00a], sp
    sub l
    ld b, a
    ld a, $04
    ld de, $5105
    rst $18
    jr jr_033_53fb

    push af
    ld a, $15
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_033_53fb:
    ld a, $05
    ld de, $5105
    rst $18
    jr jr_033_540d

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_033_540d:
    ld a, $03
    ld de, $5105
    rst $18
    jr jr_033_541f

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a

jr_033_541f:
    ld a, $02
    ld de, $5105
    rst $18
    jr jr_033_5431

    push af
    ld a, $01
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $30
    nop
    inc e

jr_033_5431:
    jr nz, jr_033_545e

    ldh a, [$95]
    ld b, a
    ld a, $00
    ld de, $5105
    rst $18
    jr jr_033_5448

    push af
    ld a, $c8
    rst $18
    inc b
    ld a, [bc]
    pop af
    push af
    ld a, $64

jr_033_5448:
    rst $18
    inc b
    ld a, [bc]
    pop af

Jump_033_544c:
    rst $28
    ldh [$0e], a
    call Call_033_5565
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    call Call_033_4f05
    ret


jr_033_545e:
    push af
    ld a, $c8
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $1980
    ld de, $0d80
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld l, $0a
    ld a, $07
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $3c
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
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ldh a, [$95]
    ld b, a
    ld a, $00
    ld de, $5105
    rst $18
    jr jr_033_54b7

    ld a, $07
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $c8

jr_033_54b7:
    rst $18
    inc b
    ld a, [bc]
    pop af

Jump_033_54bb:
    rst $28
    ldh [$0e], a
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    call Call_033_4f28
    ret


Jump_033_54ca:
    ld de, $0016
    call Call_033_4c89
    rst $28
    ld h, b
    inc e
    call Call_033_4ddc
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
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    and a
    jp z, Jump_033_51db

    call Call_000_0a61
    ld a, l
    and $01
    ld hl, $08ab
    add l
    ld l, a
    jr nc, jr_033_5501

    inc h

jr_033_5501:
    ld a, [$c450]
    sub $08
    add a
    add l
    ld l, a
    jr nc, jr_033_550c

    inc h

jr_033_550c:
    rst $18
    ld c, $0a
    ld a, $06
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
    ret


Call_033_5522:
    ld a, $06
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld de, $000f
    call Call_033_4c89
    ld a, $06
    ld b, a
    ld a, $00
    rst $18
    jr nc, jr_033_5548

    ld a, $06
    rst $18
    ld [$3e0a], sp
    nop
    ld b, a
    ld a, $05

jr_033_5548:
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $00
    rst $18
    inc [hl]
    ld a, [bc]
    ret


Call_033_5551:
    ld a, [$c450]
    sub $08
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


Call_033_5565:
    ld de, $00b0
    call Call_033_5551
    ret


Call_033_556c:
    ld de, $00b4
    call Call_033_5551
    ret


Call_033_5573:
    ld de, $00b8
    call Call_033_5551
    ret


Call_033_557a:
    ld a, [$c450]
    sub $08
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


Call_033_558e:
    ld de, $00b0
    call Call_033_557a
    ret


    ld de, $00b4
    call Call_033_557a
    ret


Call_033_559c:
    ld de, $00b8
    call Call_033_557a
    ret


Call_033_55a3:
    rst $18
    inc a
    ld a, [bc]
    ld b, $01
    ld c, $15
    ld d, $01
    ld e, $06
    ld h, $3a
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $560e
    ld de, $0206
    call Call_000_0595
    ret


Call_033_55bf:
    rst $18
    inc a
    ld a, [bc]
    ld b, $01
    ld c, $1a
    ld d, $01
    ld e, $06
    ld h, $3a
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $564e
    ld de, $0206
    call Call_000_0595
    ret


Call_033_55db:
    rst $18
    inc a
    ld a, [bc]
    ld b, $01
    ld c, $1f
    ld d, $01
    ld e, $06
    ld h, $3a
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    ld hl, $568e
    ld de, $0206
    call Call_000_0595
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


    add b
    nop
    jr nz, @+$57

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    nop
    dec hl
    rst $18
    ld bc, $4bff
    xor c
    inc [hl]
    rst $38
    ld c, e
    adc [hl]
    ld a, a
    nop
    dec hl
    xor c
    inc [hl]
    rst $38
    ld c, e
    rst $18
    ld bc, $4bff
    xor c
    inc [hl]
    rst $38
    ld a, a
    xor c
    inc [hl]
    jr nz, jr_033_565a

    nop
    dec hl
    adc [hl]
    ld a, a
    rst $38
    ld a, a
    rra
    ld bc, $44ad
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    add b
    nop
    jr nz, @+$57

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

jr_033_565a:
    ld c, h
    ld [bc], a
    xor c
    inc h
    call c, $5a12
    nop
    call c, $a912
    inc h
    rra
    ld h, e
    xor c
    inc h
    jp z, Jump_033_4c05

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
    ld [$8025], sp
    nop
    jr nz, @+$57

    and b
    ld a, [hl]
    rst $38
    ld a, a
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ldh [rSTAT], a
    db $f4
    inc d
    call nc, $862a
    inc l
    call nc, $5f2a
    ld h, c
    ldh [rSTAT], a
    add [hl]
    inc l
    call nc, $f42a
    inc d
    call nc, $862a
    inc l
    rst $18
    ld a, [hl]
    add [hl]
    inc l
    dec h
    dec l
    ldh [rSTAT], a
    ld e, a
    ld h, c
    rst $18
    ld a, [hl]
    inc d
    db $10
    ret z

    inc [hl]
    ld [$0825], sp
    dec h
    ld [$0825], sp
    dec h
    ld de, $1857
    ld d, a
    call z, Call_033_6b56
    ld d, a
    sbc l
    ld d, a
    ld a, [hl]
    ld e, b
    adc a
    ld e, b
    db $dd
    ld a, e
    nop
    dec b
    nop
    dec e
    nop
    nop
    nop
    nop
    ld bc, $dd13
    ld a, e
    nop
    rlca
    nop
    dec d
    nop
    nop
    nop
    nop
    ld bc, $dd13
    ld a, e
    nop
    dec c
    nop
    dec d
    nop
    nop
    nop
    add b
    ld bc, $dd13
    ld a, e
    ret nz

    ld [$0d80], sp
    nop
    nop
    nop
    ld b, b
    ld bc, $dd19
    ld a, e
    nop
    dec bc
    nop
    dec c
    nop
    nop
    nop
    ld b, b
    ld bc, $0026
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $0080
    add hl, bc
    nop
    ld hl, $01ff
    rst $38
    nop
    nop
    nop
    nop
    dec e
    ld bc, $ff02
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    rst $38
    rst $08
    adc d
    ld a, $00
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    call Call_033_57a6
    ret


    rst $08
    adc d
    ld a, $00
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $0dc0
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    call Call_033_57ce
    ret


    ld [bc], a
    rst $38
    nop
    nop
    ld b, h
    inc d
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    ld b, l
    inc d
    ld bc, $0400
    rst $38
    nop
    nop
    ld b, [hl]
    inc d
    ld bc, $0500
    rst $38
    nop
    nop
    ld b, a
    inc d
    inc bc
    nop
    ld b, $20
    nop
    nop
    scf
    ld d, a
    inc bc
    nop
    ld b, $ff
    nop
    nop
    add hl, hl
    ld d, a
    inc bc
    nop
    rst $38
    ret


    ld bc, $00ff
    nop
    ld de, $040c
    nop
    rst $38

Call_033_57a6:
    ld a, $00
    ld bc, $0b00
    ld de, $0dc0
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af

Call_033_57ce:
    ld a, $00
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    ld bc, $000c
    rst $18
    ld d, $0a
    ld a, $05
    ld bc, $0900
    ld de, $1040
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $05
    ld bc, $0b00
    ld de, $1080
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    xor a
    ld bc, $0b00
    ld de, $0700
    rst $18
    jr c, @+$0c

    call Call_033_5899
    rst $18
    inc a
    ld a, [bc]
    ld a, $05
    ld bc, $0b00
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $05
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $05
    rst $18
    inc [hl]
    ld a, [bc]
    call Call_033_5912
    rst $08
    sbc h
    push af
    ld a, $2d
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $02
    call Call_000_25a1
    call Call_000_2625
    ld a, $01
    ld [$c441], a
    ret


    rst $08
    sbc c
    ld a, $02
    ld [$c441], a
    ret


    ld bc, $00ff
    nop
    and [hl]
    ld d, a
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    db $76
    ld e, b
    nop
    nop
    rst $38
    rst $20
    and b
    rrca
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    ret


Call_033_5899:
    ld b, $15
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    rst $08
    sbc d
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $1a
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    rst $08
    sbc d
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $1f
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    rst $08
    sbc d
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $24
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    rst $08
    sbc d
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $29
    ld c, $0b
    ld d, $09
    ld e, $0b
    ld h, $04
    ld l, $04
    rst $18
    ld a, [bc]
    dec bc
    rst $08
    sbc d
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_033_5912:
    ld b, $15
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    ld a, $00
    ld bc, $0b00
    ld de, $0a80
    rst $18
    ld [hl+], a
    ld a, [bc]
    rst $08
    sbc e
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $001a
    rst $18
    ld d, $0a
    ld a, $05
    ld bc, $001a
    rst $18
    ld d, $0a
    ld a, $00
    ld b, $02
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $00
    ld bc, $0b00
    ld de, $0100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld b, $1a
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    ld b, $1f
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    ld a, $05
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    rst $08
    adc c
    ld a, $05
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $05
    ld bc, $0b00
    ld de, $1200
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $05
    rst $18
    ld e, $0a
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld b, $24
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld b, $29
    ld c, $10
    ld d, $09
    ld e, $09
    ld h, $04
    ld l, $06
    rst $18
    ld a, [bc]
    dec bc
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    ret nz

    ld a, [hl]
    nop
    jr jr_033_5a55

    ld [bc], a
    rst $38
    ld a, a
    rra
    ld c, h
    nop
    jr jr_033_5a5d

    ld [bc], a
    rst $38
    ld a, a
    ccf
    ld [bc], a
    nop
    jr jr_033_5a65

    ld [bc], a
    rst $38
    ld a, a
    cp l
    inc bc
    nop
    jr @+$62

    ld [bc], a
    rst $38
    ld a, a
    ret nz

    ld d, $00
    jr jr_033_5a75

    ld [bc], a
    rst $38
    ld a, a
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    xor b
    stop
    nop
    xor l
    dec [hl]
    sub h
    ld c, [hl]
    jp hl


    ld a, a
    xor h
    ld b, b
    nop
    inc bc
    rst $38
    ld a, a
    ccf
    ld d, $17
    ld bc, $0300
    ld l, d
    jr c, jr_033_5a60

    inc bc
    inc a
    ld [bc], a
    nop
    inc bc
    di
    inc bc
    rst $38
    ld a, a
    ld b, b
    ld bc, $0300
    di
    inc bc
    ld d, $01
    nop
    ld [bc], a
    nop

jr_033_5a55:
    inc bc
    ld c, c
    inc [hl]
    xor b
    stop
    nop
    xor l

jr_033_5a5d:
    dec [hl]
    sub h
    ld c, [hl]

jr_033_5a60:
    ld a, $00
    ld [$c3e0], a

jr_033_5a65:
    ld hl, $5a30
    ld de, $0203
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_033_5a75:
    ld a, [$c3e0]
    cp $03
    jr z, jr_033_5ac5

    ld hl, $59f0
    ld de, $0203
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $59f8
    ld de, $0203
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5a00
    ld de, $0203
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld hl, $5a08
    ld de, $0203
    call Call_000_056c
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    jr jr_033_5a65

jr_033_5ac5:
    ret


    add l
    ld e, e
    or b
    ld e, e
    call nc, Call_033_6b5a
    ld e, [hl]
    inc b
    ld e, a
    add hl, sp
    ld e, a
    ld b, d
    ld e, a
    db $dd
    ld a, e
    nop
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd11
    ld a, e
    nop
    ld de, $1300
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    rla
    nop
    inc de
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd13
    ld a, e
    nop
    rra
    nop
    add hl, bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd13
    ld a, e
    nop
    ld [de], a
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd08
    ld a, e
    nop
    stop
    inc c
    nop
    nop
    nop
    nop
    ld bc, $dd09
    ld a, e
    nop
    jr jr_033_5b2d

jr_033_5b2d:
    inc c
    nop
    nop
    nop
    add b
    ld bc, $dd1a
    ld a, e
    nop
    ld a, [de]
    nop
    stop
    nop
    nop
    add b
    ld bc, $dd12
    ld a, e
    nop
    ld a, [de]
    nop
    ld c, $00
    nop
    nop
    add b
    ld bc, $dd1b
    ld a, e
    nop
    ld c, $00
    rrca
    nop
    nop
    nop
    nop
    ld bc, $dd1c
    ld a, e
    nop
    ld de, $1d00
    nop
    nop
    nop
    ret nz

    ld bc, $dd19
    ld a, e
    nop
    dec d
    nop
    dec e
    nop
    nop
    nop
    ret nz

    ld bc, $dd26
    ld a, e
    nop
    ld bc, $2500
    sbc [hl]
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
    ld bc, $0040
    inc d
    nop
    add hl, bc
    ld [bc], a
    ld b, b
    nop
    rra
    nop
    dec bc
    inc bc
    ld b, b
    nop
    inc d
    nop
    rrca
    ld b, $40
    nop
    inc d
    nop
    ld d, $0a
    ld b, b
    nop
    inc d
    nop
    ld d, $0b
    ld b, b
    nop
    inc d
    nop
    ld d, $0c
    ld b, b
    nop
    inc d
    nop
    ld d, $ff
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    dec b
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    rst $38
    nop
    nop
    nop
    nop
    dec e
    inc bc
    rst $38
    rst $08
    adc d
    ld a, $00
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $1500
    ld de, $1d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, jr_033_5c07

    call Call_033_5f25
    ret


    ld a, $02
    ld b, a
    ld a, $05
    rst $18

jr_033_5c07:
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld bc, $1600
    ld de, $0840
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld bc, $1600
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld bc, $1400
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    rst $30
    and b
    ld c, $20
    inc h
    rst $30
    nop
    ld e, $28
    ld c, a
    rst $30
    jr nz, @+$20

    jr z, @+$0f

    ld hl, $1474
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$180a], sp
    jr nz, @-$07

    ld h, b
    ld e, $28
    dec d
    ld hl, $1470
    rst $18
    ld c, $0a
    jr jr_033_5c89

    ld hl, $1474
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$180a], sp
    ld b, $21
    ld [hl], d
    inc d
    rst $18
    ld c, $0a

jr_033_5c89:
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
    jp nz, Jump_033_5caa

    call Call_033_66dc
    ret


Jump_033_5caa:
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld hl, $145a
    rst $18
    ld c, $0a
    rst $30
    and b
    ld c, $28
    inc bc
    rst $18
    db $10
    ld a, [bc]
    ld a, $07
    rst $18
    ld [$c90a], sp
    ld hl, $1460
    rst $18
    ld c, $0a
    rst $30
    and b
    ld c, $20
    dec de
    ld hl, $145e
    rst $18
    ld c, $0a
    rst $30
    nop
    ld e, $28
    db $10
    rst $30
    ld h, b
    ld e, $20
    dec bc
    rst $18
    db $10
    ld a, [bc]
    rst $30
    ld b, b
    ld e, $20
    inc bc
    rst $18
    db $10
    ld a, [bc]
    ld a, $08
    rst $18
    ld [$c90a], sp
    ld hl, $145c
    rst $18
    ld c, $0a
    ld a, $09
    rst $18
    ld [$c90a], sp
    rst $18
    nop
    ld a, [bc]
    ld hl, $145d
    rst $18
    ld c, $0a
    ld a, $0b
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


    ld hl, $1459
    rst $18
    ld c, $0a
    rst $08
    sbc l
    ld a, $83
    rst $18
    ld [$c90a], sp
    ld hl, $1459
    rst $18
    ld c, $0a
    rst $08
    sbc l
    ld a, $81
    rst $18
    ld [$c90a], sp
    ld hl, $1463
    rst $18
    ld c, $0a
    rst $30
    and b
    ld c, $20
    ld d, $21
    ld h, c
    inc d
    rst $18
    ld c, $0a
    rst $30
    nop
    ld e, $28
    dec bc
    rst $18
    db $10
    ld a, [bc]
    rst $30
    jr nz, @+$20

    jr z, jr_033_5d4b

    rst $18
    db $10
    ld a, [bc]

jr_033_5d4b:
    ld a, $0c
    rst $18
    ld [$c90a], sp
    ld hl, $1464
    rst $18
    ld c, $0a
    rst $30
    and b
    ld c, $28
    inc bc
    rst $18
    db $10
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$c90a], sp
    ld hl, $1466
    rst $18
    ld c, $0a
    rst $30
    and b
    ld c, $28
    inc bc
    rst $18
    db $10
    ld a, [bc]
    ld a, $04
    rst $18
    ld [$c90a], sp
    ld hl, $1468
    rst $18
    ld c, $0a
    rst $30
    and b
    ld c, $28
    inc bc
    rst $18
    db $10
    ld a, [bc]
    ld a, $05
    rst $18
    ld [$c90a], sp
    rst $18
    nop
    ld a, [bc]
    rst $30
    ldh [rIF], a
    jr nz, jr_033_5d9d

    ld hl, $146c
    rst $18
    ld c, $0a
    jr jr_033_5dc2

jr_033_5d9d:
    ld hl, $146a
    rst $18
    ld c, $0a
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
    jr z, jr_033_5dcb

    rst $18
    db $10
    ld a, [bc]

jr_033_5dc2:
    ld a, $06
    rst $18
    ld [$df0a], sp
    ld [bc], a
    ld a, [bc]
    ret


jr_033_5dcb:
    push af
    ld a, $05
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    adc c
    ld a, $06
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    push af
    ld a, $0f
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld bc, $2100
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $06
    rst $18
    ld e, $0a
    ld a, $06
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $06
    rst $18
    ld [$3e0a], sp
    nop
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $1f00
    ld de, $0900
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $19
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    sbc c
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    ld a, $1e
    ld [$c967], a
    rst $18
    inc e
    db $10
    ld a, $1d
    ld b, a
    ld a, $02
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $03
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0501
    rst $18
    db $10
    db $10
    call Call_033_66cb
    rst $18
    jr nc, jr_033_5e77

    rst $18
    ld [bc], a
    ld a, [bc]
    ret


    ld [bc], a
    ld h, b
    nop
    nop
    ld c, l
    ld e, h
    inc de
    nop
    ld [bc], a
    rst $38
    nop
    nop

jr_033_5e77:
    ld bc, $135c
    nop
    inc bc
    rst $38
    nop
    nop
    ld d, c
    ld e, l
    inc bc
    nop
    inc b
    rst $38
    nop
    nop
    ld h, l
    ld e, l
    inc bc
    nop
    dec b
    rst $38
    nop
    nop
    ld a, c
    ld e, l
    inc bc
    nop
    ld b, $ff
    nop
    nop
    adc l
    ld e, l
    inc de
    nop
    rlca
    rst $38
    nop
    nop
    or b
    ld e, h
    inc bc
    nop
    ld [$00ff], sp
    nop
    call nz, Call_000_035c
    nop
    add hl, bc
    rst $38
    nop
    nop
    ldh a, [$5c]
    inc bc
    nop
    dec bc
    rst $38
    nop
    nop
    db $fc
    ld e, h
    inc bc
    nop
    ld a, [bc]
    ld b, b
    nop
    nop
    inc e
    ld e, l
    inc bc
    nop
    ld a, [bc]
    rst $38
    nop
    nop
    ld c, $5d
    inc bc
    nop
    inc c
    rst $38
    nop
    nop
    ld a, [hl+]
    ld e, l
    inc bc
    nop
    dec c
    rst $38
    nop
    nop
    ld l, l
    inc d
    inc bc
    nop
    ld c, $ff
    nop
    nop
    pop de
    ld e, e
    inc bc
    nop
    rst $38
    ret


    rst $08
    sbc [hl]
    rst $30
    ldh [rSC], a
    jr nz, jr_033_5ef8

    ld hl, $147e
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$c90a], sp

jr_033_5ef8:
    ld hl, $147d
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$c90a], sp
    ld bc, $00ff
    nop
    pop de
    ld e, e
    rst $38
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld a, h
    inc d
    rst $38
    nop
    inc bc
    rst $38
    nop
    nop
    push hl
    ld e, [hl]
    rst $38
    nop
    inc b
    rst $38
    sbc [hl]
    nop
    ld b, a
    ld l, a
    rlca
    nop
    rst $38

Call_033_5f25:
    rst $08
    sbc h
    ld c, $08
    call Call_000_25a1
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $01
    ld [$c441], a
    ret


    ld bc, $00ff
    nop
    dec h
    ld e, a
    nop
    nop
    rst $38
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    rst $20
    and b
    rrca
    call Call_033_5f5b
    call Call_033_5f8f
    call Call_033_63f9
    call Call_033_60b2
    call Call_033_672a
    ret


Call_033_5f5b:
    ld a, [$c46a]
    cp $0a
    jp nz, Jump_033_5f6a

    ld a, $01
    ld [$c96c], a
    jr jr_033_5f86

Jump_033_5f6a:
    ld a, [$c46a]
    cp $0b
    jp nz, Jump_033_5f79

    ld a, $02
    ld [$c96c], a
    jr jr_033_5f86

Jump_033_5f79:
    ld a, [$c46a]
    cp $0c
    jp nz, Jump_033_5f8e

    ld a, $03
    ld [$c96c], a

jr_033_5f86:
    rst $20
    ret nz

    rrca
    ld a, $06
    ld [$c46a], a

Jump_033_5f8e:
    ret


Call_033_5f8f:
    ld a, [$c46a]
    cp $06
    jp z, Jump_033_5fa5

    cp $fa
    jp nz, Jump_033_5f9f

    jp Jump_033_5faf


Jump_033_5f9f:
    rst $28
    ld b, b
    dec c
    jp Jump_033_5faf


Jump_033_5fa5:
    ld a, [$c96c]
    cp $00
    jr z, @+$23

    rst $20
    ld b, b
    dec c

Jump_033_5faf:
    rst $30
    ld b, b
    dec c
    jr z, @+$05

    rst $20
    nop
    ld e, $fa
    ld l, h
    ret


    cp $01
    jr z, jr_033_5fc6

    cp $04
    jr nc, jr_033_5fca

    rst $20
    ld b, b
    ld e, $c9

jr_033_5fc6:
    rst $20
    jr nz, @+$20

    ret


jr_033_5fca:
    rst $20
    ld h, b
    ld e, $c9

Jump_033_5fce:
    ld a, [$c46a]
    cp $01
    jr nz, jr_033_603f

    rst $08
    sbc h
    ld a, $00
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25af
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    xor a
    ld bc, $1400
    ld de, $1100
    rst $18
    jr c, jr_033_6006

    ld a, $00
    ld bc, $1400
    ld de, $0f00
    rst $18
    ld [hl+], a

jr_033_6006:
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    rst $18
    ld b, d
    ld a, [bc]

jr_033_603f:
    ret


Call_033_6040:
    ld a, $00
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]
    rst $08
    sbc h
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25af
    ld a, $00
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    xor a
    ld bc, $1400
    ld de, $1300
    rst $18
    jr c, @+$0c

    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $1400
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    push af
    ld a, $02
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    adc d
    ld a, $00
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $00
    rst $18
    ld b, d
    ld a, [bc]
    ret


Call_033_60b2:
    rst $30
    add b
    ld c, $c2
    adc $5f
    rst $30
    ldh [rIF], a
    jp z, Jump_033_60c1

    rst $20
    ret nz

    rrca

Jump_033_60c1:
    rst $30
    ret nz

    rrca
    jp nz, Jump_033_5fce

    rst $08
    db $10
    ld a, $02
    ld bc, $1400
    ld de, $0700
    rst $18
    jr nz, @+$0c

    ld a, $06
    ld bc, $1f00
    ld de, $0b00
    rst $18
    jr nz, jr_033_60e9

    call Call_033_6040
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_033_60e9:
    rst $20
    ret nz

    rrca
    ld hl, $144a
    rst $18
    ld c, $0a
    rst $08
    adc d
    ld a, $03
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $03
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $03
    ld bc, $1280
    ld de, $1100
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    push af
    ld a, $1e
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
    ld a, $03
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $03
    rst $18
    ld l, $0a
    ld a, $03
    rst $18
    ld [$3e0a], sp
    inc bc
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    ld a, $03
    ld bc, $1100
    ld de, $1300
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld e, $0a
    ld a, $03
    ld b, $00
    rst $18
    ld a, [hl+]
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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $00
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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
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
    ld bc, $1400
    ld de, $0a00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $80
    rst $18
    inc l
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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $00
    rst $18
    inc l
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
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
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
    ld [$3e0a], sp
    inc c
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0c
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0c
    rst $18
    ld [$3e0a], sp
    nop
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $0c
    ld bc, $1000
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0c
    rst $18
    ld e, $0a
    ld a, $0c
    rst $18
    ld [$3e0a], sp
    inc c
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0c
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0c
    rst $18
    ld [$cd0a], sp
    ld e, l
    ld l, [hl]
    rst $08
    sbc l
    ld a, $0a
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $0a
    ld bc, $1800
    ld de, $1000
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0a
    rst $18
    ld e, $0a
    ld a, $0a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $0a
    ld de, $6f39
    rst $18
    jr jr_033_6299

    call Call_033_6eaa
    rst $08
    sbc l
    ld a, $0a
    ld b, a
    ld a, $06

jr_033_6299:
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0a
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $0a
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $0a
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    call Call_033_6eaa
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    rst $08
    sbc l
    ld a, $0a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    call Call_033_6eaa
    ld a, $0a
    ld b, a
    ld a, $08
    rst $18
    ld l, $0a
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
    ld a, $0c
    ld b, a
    ld a, $08
    rst $18
    ld l, $0a
    ld a, $08
    rst $18
    ld [$3e0a], sp
    ld [$3e47], sp
    ld b, $df
    ld [hl-], a
    ld a, [bc]
    ld a, $08
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $08
    ld bc, $1000
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $08
    rst $18
    ld e, $0a
    ldh a, [$95]
    ld b, a
    ld a, $0a
    ld de, $6f40
    rst $18
    jr jr_033_6329

    ld a, $08
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $08

jr_033_6329:
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $08
    rst $18
    ld [$3e0a], sp
    ld [$3e47], sp
    inc c
    rst $18
    jr nc, jr_033_6343

    ld a, $0c
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $0c

jr_033_6343:
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $0c
    rst $18
    ld [$3e0a], sp
    inc c
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
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
    inc c
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $08
    ld bc, $1000
    ld de, $0c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $08
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $08
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $08
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $07
    ld b, a
    ld a, $02
    rst $18
    jr nc, jr_033_63c2

    push af
    ld a, $28
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $07
    ld b, a

jr_033_63c2:
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
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $00
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $02
    rst $18
    ld l, $0a
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    call Call_033_66dc
    ret


Call_033_63f9:
    rst $30
    ldh [rIF], a
    jr z, jr_033_642b

    ld b, $2a
    ld c, $06
    ld d, $1a
    ld e, $06
    ld h, $08
    ld l, $05
    rst $18
    ld a, [bc]
    dec bc
    ld b, $2a
    ld c, $06
    ld d, $1a
    ld e, $06
    ld h, $08
    ld l, $05
    rst $18
    inc c
    dec bc
    ld b, $2a
    ld c, $06
    ld d, $1a
    ld e, $06
    ld h, $08
    ld l, $05
    rst $18
    ld c, $0b

jr_033_642b:
    ret


Jump_033_642c:
    rst $30
    ldh [rIF], a
    jp nz, Jump_033_668d

    ld hl, $146e
    rst $18
    ld c, $0a
    ld a, $02
    ld b, a
    ld a, $07
    rst $18
    jr nc, @+$0c

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $07
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, $00
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $07
    ld b, a
    ld a, $05
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $07
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $06
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    xor a
    ld bc, $1f00
    ld de, $0b00
    rst $18
    jr c, jr_033_6485

    rst $18
    inc a
    ld a, [bc]
    ld a, $06
    ld b, $80
    rst $18
    inc l
    ld a, [bc]

jr_033_6485:
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
    ld a, $06
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    call Call_033_6e45
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $06
    rst $18
    inc [hl]
    ld a, [bc]
    ld a, $06
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $06
    rst $18
    inc [hl]
    ld a, [bc]
    call Call_033_6b62
    ld c, $02
    call Call_000_25a1
    ld a, $06
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $06
    rst $18
    inc [hl]
    ld a, [bc]
    rst $20
    ldh [rIF], a
    rst $18
    ld b, [hl]
    inc b
    call Call_033_63f9
    ld c, $02
    call Call_000_25af
    call Call_000_2625
    ld a, $06
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $06
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $06
    ld bc, $2100
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $06
    rst $18
    ld e, $0a
    ld a, $06
    ld b, $00
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $06
    ld b, $80
    rst $18
    inc l
    ld a, [bc]
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
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
    ld [$cf0a], sp
    adc c
    ld a, $0b
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $0a
    ld de, $6efa
    rst $18
    jr jr_033_655e

    ld a, $07
    ld b, $40
    ld de, $0200
    rst $18
    jr z, jr_033_6568

jr_033_655e:
    rst $08
    adc d
    ld a, $09
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]

jr_033_6568:
    ld a, $09
    rst $18
    ld b, d
    ld a, [bc]
    rst $08
    adc c
    ld a, $07
    ld de, $ff40
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $07
    rst $18
    ld b, d
    ld a, [bc]
    ldh a, [$95]
    ld b, a
    ld a, $0a
    ld de, $6f15
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $09
    ld de, $6f15
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $0b
    ld de, $6f15
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $07
    ld de, $6f15
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $08
    ld de, $6f15
    rst $18
    jr @+$0c

    ldh a, [$95]
    ld b, a
    ld a, $0c
    ld de, $6f21
    rst $18
    jr @+$0c

    push af
    ld a, $64
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $00
    ld bc, $0010
    rst $18
    ld d, $0a
    ld a, $02
    ld bc, $1400
    ld de, $0c00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
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
    ld bc, $1f00
    ld de, $0b00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld bc, $0010
    rst $18
    ld [hl], $0a
    xor a
    ld bc, $2100
    ld de, $0b00
    rst $18
    jr c, @+$0c

    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $1f00
    ld de, $0d00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    push af
    ld a, $03
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld bc, $1f00
    ld de, $0800
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld bc, $1f00
    ld de, $0800
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    ld bc, $1f00
    ld de, $3000
    rst $18
    jr nz, jr_033_6680

    push af
    ld a, $14
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    rst $18

jr_033_6680:
    ld e, $0a
    ld a, $00
    ld bc, $1f00
    ld de, $3000
    rst $18
    jr nz, @+$0c

Jump_033_668d:
    ld a, $00
    ld [$c96c], a
    rst $08
    sbc c
    ld a, $0a
    ld [$c967], a
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    rst $18
    inc e
    db $10
    ld a, $1d
    ld b, a
    ld a, $06
    ld c, a
    rst $18
    ld c, [hl]
    ld a, [bc]
    ld a, $01
    ld [$c834], a
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    ld hl, $0501
    rst $18
    db $10
    db $10
    call Call_033_66cb
    rst $18
    jr nc, jr_033_66da

    ret


Call_033_66cb:
    rst $30
    nop
    add hl, bc
    jr z, jr_033_66d6

    ld a, $01
    rst $18
    ld [de], a
    db $10
    ret


jr_033_66d6:
    ld a, $12
    rst $18
    ld [de], a

jr_033_66da:
    db $10
    ret


Call_033_66dc:
    ld hl, $1477
    rst $18
    ld c, $0a
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
    jp z, Jump_033_6710

    rst $30
    nop
    ld e, $28
    ld b, $21
    db $76
    inc d
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

Jump_033_6710:
    ld a, $00
    ld bc, $1400
    ld de, $0f00
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $00
    rst $18
    ld e, $0a
    ld a, $00
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    jp Jump_033_642c


Call_033_672a:
    ld a, [$c46a]
    cp $06
    jp nz, Jump_033_69f5

    ld a, [$c96c]
    cp $00
    jp z, Jump_033_69f5

    ld a, [$c96c]
    cp $04
    jp nc, Jump_033_69f5

    rst $30
    ldh [$0d], a
    jp nz, Jump_033_696b

    ld a, [$c96c]
    cp $01
    jr nz, jr_033_675c

    rst $20
    ldh [$0d], a
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a

jr_033_675c:
    ld b, $2a
    ld c, $10
    ld d, $10
    ld e, $11
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    ldh a, [$95]
    ld hl, $6a00
    rst $18
    ld b, $0a
    ld bc, $0040
    rst $18
    ld [hl], $0a
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    ld a, $00
    ld bc, $1400
    ld de, $0e00
    rst $18
    jr nz, @+$0c

    ld a, [$c96c]
    cp $01
    jr nz, jr_033_67ba

    ld b, $2a
    ld c, $0d
    ld d, $13
    ld e, $0e
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    ld a, $0f
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $10
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld hl, $1479
    rst $18
    ld c, $0a
    rst $20
    jr nz, jr_033_67c7

    jr jr_033_681d

jr_033_67ba:
    cp $02
    jr nz, jr_033_67ec

    rst $28
    jr nz, jr_033_67d0

    ld b, $2d
    ld c, $0d
    ld d, $13

jr_033_67c7:
    ld e, $0e
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc

jr_033_67d0:
    ld hl, $147a
    rst $18
    ld c, $0a
    ld a, $0e
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $10
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld hl, $0002
    rst $18
    ld d, [hl]
    dec b
    jr jr_033_681d

jr_033_67ec:
    cp $03
    jp nz, Jump_033_69f5

    rst $28
    jr nz, jr_033_6803

    ld b, $30
    ld c, $0d
    ld d, $13
    ld e, $0e
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc

jr_033_6803:
    ld hl, $147a
    rst $18
    ld c, $0a
    ld a, $0e
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld a, $0f
    ld b, $00
    rst $18
    ld b, [hl]
    ld a, [bc]
    ld hl, $0003
    rst $18
    ld d, [hl]
    dec b

jr_033_681d:
    rst $08
    inc b
    rst $08
    sub e
    rst $18
    inc a
    ld a, [bc]
    ld c, $02
    call Call_000_25af
    call Call_000_2625
    ld a, $02
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $0e
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $0f
    ld bc, $0008
    rst $18
    ld d, $0a
    ld a, $10
    ld bc, $0008
    rst $18
    ld d, $0a
    push af
    ld a, $96
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
    ld bc, $1300
    ld de, $1200
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $0e
    ld bc, $1380
    ld de, $1180
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0f
    ld bc, $1380
    ld de, $1180
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $10
    ld bc, $1380
    ld de, $1180
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld b, $c0
    rst $18
    inc l
    ld a, [bc]
    ld a, $0e
    ld bc, $13c0
    ld de, $1100
    rst $18
    jr nz, @+$0c

    ld a, $0f
    ld bc, $13c0
    ld de, $1100
    rst $18
    jr nz, @+$0c

    ld a, $10
    ld bc, $13c0
    ld de, $1100
    rst $18
    jr nz, jr_033_68cf

    ld a, $02
    ld bc, $1400
    ld de, $1080
    rst $18
    ld [hl+], a

jr_033_68cf:
    ld a, [bc]
    push af
    ld a, $0a
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $0e
    ld bc, $1400
    ld de, $1000
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0f
    ld bc, $1400
    ld de, $1000
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $10
    ld bc, $1400
    ld de, $1000
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
    ld a, $00
    ld b, a
    ld a, $02
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
    ld hl, $147b
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$cf0a], sp
    sub e
    ld a, $0e
    ld bc, $1480
    ld de, $0f40
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $0f
    ld bc, $1480
    ld de, $0f40
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $10
    ld bc, $1480
    ld de, $0f40
    rst $18
    ld [hl+], a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $00
    ld b, a
    ld a, $07
    rst $18
    ld [hl-], a
    ld a, [bc]
    push af
    ld a, $96
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25a1
    call Call_000_2625

Jump_033_696b:
    ld a, [$c96c]
    cp $01
    jr nz, jr_033_69a5

    ld a, [$c810]
    rst $18
    ld [bc], a
    ld b, b
    rst $18
    ld h, h
    ld a, [bc]
    rst $20
    ldh [$0d], a
    ld a, $00
    ld [$c450], a
    ld a, $02
    ld [$c46a], a
    xor a
    ld [$c96d], a
    ld bc, $ffff
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $00
    ld [$c450], a
    ld a, $03
    ld [$c46a], a
    ld a, $fa
    ld [$c441], a
    ret


jr_033_69a5:
    ld a, [$c967]
    cp $32
    jr nz, jr_033_69b2

    ld a, $02
    ld [$c441], a
    ret


jr_033_69b2:
    ldh a, [$95]
    ld hl, $6abd
    rst $18
    ld b, $0a
    ld b, $2d
    ld c, $10
    ld d, $13
    ld e, $0e
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    ld b, $30
    ld c, $10
    ld d, $10
    ld e, $11
    ld h, $02
    ld l, $02
    rst $18
    ld a, [bc]
    dec bc
    rst $08
    db $10
    ld a, $00
    ld bc, $1400
    ld de, $0f00
    rst $18
    jr nz, @+$0c

    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ret


Jump_033_69f5:
    ld a, [$c46a]
    cp $06
    jp nz, Jump_033_69fd

Jump_033_69fd:
    rst $08
    db $10
    ret


    db $dd
    ld a, e
    nop
    inc d
    nop
    inc de
    nop
    nop
    nop
    ret nz

    ld bc, $dd11
    ld a, e
    nop
    rrca
    nop
    dec d
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    rla
    nop
    dec d
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    ld de, $1500
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    add hl, de
    nop
    dec d
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    ld bc, $dd08
    ld a, e
    nop
    stop
    dec c
    nop
    nop
    nop
    nop
    ld bc, $dd09
    ld a, e
    nop
    add hl, de
    nop
    dec c
    nop
    nop
    nop
    add b
    ld bc, $dd1a
    ld a, e
    nop
    ld a, [de]
    nop
    ld de, $0000
    nop
    add b
    ld bc, $dd12
    ld a, e
    nop
    ld a, [de]
    nop
    rrca
    nop
    nop
    nop
    add b
    ld bc, $dd1b
    ld a, e
    nop
    rrca
    nop
    ld de, $0000
    nop
    nop
    ld bc, $dd1c
    ld a, e
    nop
    inc d
    nop
    rla
    nop
    nop
    nop
    ret nz

    ld bc, $f319
    ld l, [hl]
    nop
    ld de, $1180
    nop
    nop
    nop
    ld b, b
    ld bc, $f329
    ld l, [hl]
    nop
    ld de, $1180
    nop
    nop
    nop
    ld b, b
    ld bc, $f32a
    ld l, [hl]
    nop
    ld de, $1180
    nop
    nop
    nop
    ld b, b
    ld bc, $002b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $dd
    ld a, e
    nop
    inc d
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd11
    ld a, e
    nop
    ld de, $1300
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    rla
    nop
    inc de
    nop
    nop
    nop
    ret nz

    ld bc, $dd13
    ld a, e
    nop
    add hl, bc
    nop
    dec bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd13
    ld a, e
    nop
    rra
    nop
    add hl, bc
    nop
    nop
    nop
    ld b, b
    ld bc, $dd13
    ld a, e
    nop
    ld [de], a
    nop
    ld a, [bc]
    nop
    nop
    nop
    ld b, b
    ld bc, $dd08
    ld a, e
    nop
    stop
    inc c
    nop
    nop
    nop
    nop
    ld bc, $dd09
    ld a, e
    nop
    jr jr_033_6b16

jr_033_6b16:
    inc c
    nop
    nop
    nop
    add b
    ld bc, $dd1a
    ld a, e
    nop
    ld a, [de]
    nop
    stop
    nop
    nop
    add b
    ld bc, $dd12
    ld a, e
    nop
    ld a, [de]
    nop
    ld c, $00
    nop
    nop
    add b
    ld bc, $dd1b
    ld a, e
    nop
    ld c, $00
    rrca
    nop
    nop
    nop
    nop
    ld bc, $dd1c
    ld a, e
    nop
    ld de, $1d00
    nop
    nop
    nop
    ret nz

    ld bc, $dd19
    ld a, e
    nop
    dec d
    nop
    dec e
    nop
    nop
    nop

Call_033_6b56:
    ret nz

    ld bc, $0026

Call_033_6b5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38

Call_033_6b62:
    ld a, $00
    ld [$c3e2], a
    ld [$c3e0], a

jr_033_6b6a:
    ld a, [$c3e0]
    cp $05
    jr z, jr_033_6bb2

    ld a, [$c3e2]
    add $fe
    ld [$c3e2], a
    ld bc, $0760
    call Call_033_6bb3
    ld a, [$c3e2]
    add $fe
    ld [$c3e2], a
    ld bc, $0762
    call Call_033_6bb3
    ld a, [$c3e2]
    add $fe
    ld [$c3e2], a
    ld bc, $0764
    call Call_033_6bb3
    ld a, [$c3e2]
    add $fe
    ld [$c3e2], a
    ld bc, $0766
    call Call_033_6bb3
    ld a, [$c3e0]
    inc a
    ld [$c3e0], a
    jr jr_033_6b6a

jr_033_6bb2:
    ret


Call_033_6bb3:
    ld h, $05

jr_033_6bb5:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $00e8
    ld a, $00
    add l
    ld l, a
    jr nc, jr_033_6bc7

    inc h

jr_033_6bc7:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0048
    ld a, [$c3e2]
    add l
    ld l, a
    jr nc, jr_033_6be4

    inc h

jr_033_6be4:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $6c90
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_033_6bb5

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
    nop
    nop
    nop
    ld b, b
    ld d, d
    stop
    db $10
    jr z, jr_033_6c95

    add d
    db $10
    jr z, jr_033_6c2f

    nop
    nop
    db $10
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_033_6c5e

    sub d
    xor $28
    jr c, jr_033_6c2b

jr_033_6c2b:
    db $10
    ld d, b
    ld [de], a
    nop

jr_033_6c2f:
    nop
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_033_6c6e

    sub d
    xor $28
    jr c, jr_033_6c3b

jr_033_6c3b:
    db $10
    ld d, b
    ld [de], a
    nop
    nop
    nop
    nop
    ld c, b
    ld [$0808], sp
    ld [hl], $3e
    ld [$0808], sp
    ld [$4202], sp
    nop
    nop
    nop
    nop
    ld c, b
    ld [$0808], sp
    ld [hl], $3e
    ld [$0808], sp
    ld [$4202], sp

jr_033_6c5e:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld b, b
    ld b, b

jr_033_6c6e:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, b
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
    ld b, b
    ld b, b
    nop
    nop
    db $10
    db $10
    ld [bc], a
    ld [de], a
    jr z, jr_033_6cbe

    sub d
    xor $28
    jr c, jr_033_6c8b

jr_033_6c8b:
    db $10
    ld d, b
    ld [de], a
    nop
    nop
    db $10
    ld [$0000], sp
    db $10

jr_033_6c95:
    db $10
    ld [bc], a
    nop
    db $10
    jr jr_033_6c9f

    nop
    db $10
    jr nz, jr_033_6ca5

jr_033_6c9f:
    nop
    add b
    ret nz

    ld bc, $7fff

jr_033_6ca5:
    ld a, [c]
    dec sp
    rst $38
    inc hl
    nop
    nop
    nop
    nop
    nop
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
    jr jr_033_6cda

    db $10
    rra
    db $10

jr_033_6cbe:
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

jr_033_6cda:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    ld a, [hl+]
    ld [hl], $3e
    ld [hl], $14
    inc e
    inc e
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
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
    ld bc, $0301
    inc bc
    inc bc
    ld [bc], a
    rrca
    ld c, $1f
    jr jr_033_6dc0

    db $10
    rra
    db $10
    rra
    jr jr_033_6db4

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

jr_033_6db4:
    nop
    nop
    ldh a, [$f0]
    ld hl, sp+$18
    ld hl, sp+$08
    ld hl, sp+$08
    cp $0e

jr_033_6dc0:
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
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, $3e
    ld a, a
    ld h, e
    ld a, a
    ld b, c
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e3
    ld a, [hl+]
    ld [hl], $3e
    ld [hl], $14
    inc e
    inc e
    inc e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh [$60], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
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
    ret nz

    ld bc, $7fff
    ld c, e
    ld b, e
    nop
    nop

Call_033_6e45:
    xor a
    ldh [rVBK], a
    ld hl, $6c10
    ld de, $8600
    ld c, $08
    call Call_000_0468
    ld hl, $6ca1
    ld de, $0f01
    call Call_000_056c
    ret


    xor a
    ldh [rVBK], a
    ld hl, $6cb0
    ld de, $8500
    ld c, $18
    call Call_000_0468
    ld hl, $6e3d
    ld de, $0f01
    call Call_000_056c
    ret


Call_033_6e75:
    ld h, $06

jr_033_6e77:
    push hl
    push bc
    ld hl, $c320
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $1600
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld hl, $0c80
    call Call_000_08ac
    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop hl
    ld d, h
    ld hl, $6e30
    call Call_000_26ea
    call Call_000_2e3b
    pop bc
    pop hl
    dec h
    jr nz, jr_033_6e77

    ret


Call_033_6eaa:
    ld bc, $0750
    call Call_033_6e75
    ld bc, $0756
    call Call_033_6e75
    ld bc, $075c
    call Call_033_6e75
    ld bc, $0750
    call Call_033_6e75
    ld bc, $0756
    call Call_033_6e75
    ld bc, $075c
    call Call_033_6e75
    ld bc, $0750
    call Call_033_6e75
    ld bc, $0756
    call Call_033_6e75
    ld bc, $075c
    call Call_033_6e75
    ld bc, $0750
    call Call_033_6e75
    ld bc, $0756
    call Call_033_6e75
    ld bc, $075c
    call Call_033_6e75
    ret


    db $10
    ld a, [bc]
    ld bc, $0c32
    ei
    rst $38
    ld c, $10
    ld b, b
    nop
    ld bc, $0e05
    stop
    nop
    ld bc, $0e05
    db $10
    ret nz

    nop
    ld bc, $0e05
    db $10
    add b
    nop
    ld bc, $0c05
    rst $20
    rst $38
    inc b
    nop
    rra
    nop
    dec bc
    ld [bc], a
    inc bc
    nop
    ld bc, $1500
    nop
    inc b
    nop
    ld [de], a
    nop
    ld de, $0402
    nop
    ld d, $00
    ld de, $0402
    nop
    rra
    nop
    dec bc
    ld [bc], a
    inc bc
    nop
    ld bc, $1500
    nop
    ld c, $35
    ld [bc], a
    nop
    ld bc, $0005
    ld c, $35
    ld bc, $0100
    dec b
    nop
    ld hl, $c800
    ld a, l
    add $12
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl]
    cp $63
    jr z, jr_033_6fb8

    rst $20
    ret nz

    inc de
    rst $18
    ld a, [hl-]
    ld [bc], a
    ld e, l
    ld d, h
    rst $18
    ld [hl+], a
    ld [bc], a
    ld a, $0f
    ld bc, $0b00
    ld de, $1b00
    rst $18
    jr nz, jr_033_6f77

    rst $08
    ld h, e
    ld a, $0f
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]

jr_033_6f77:
    ld a, $0f
    rst $18
    ld b, d
    ld a, [bc]
    push af
    ld a, $10
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $0f
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld hl, $0c5f
    rst $18
    ld c, $0a
    ld a, $82
    rst $18
    ld [$cd0a], sp
    or a
    ld a, h
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

jr_033_6fb8:
    ret


    rst $18
    ld l, a
    cp $6f
    rst $00
    ld l, a
    ret z

    ld [hl], b
    rst $28
    ld [hl], b
    ld e, e
    ld [hl], c
    add h
    ld [hl], c
    db $dd
    ld a, e
    nop
    inc hl
    nop
    add hl, de
    nop
    nop
    nop
    ld b, b
    ld bc, $002c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $10
    ld a, [bc]
    nop
    ld bc, $00c0
    dec d
    nop
    add hl, sp
    ld [bc], a
    ld b, b
    nop
    inc hl
    nop
    jr jr_033_6fef

    ret nz

    nop
    inc hl

jr_033_6fef:
    nop
    ld e, $0e
    ret nz

    nop
    inc hl
    nop
    ld e, $0f
    ret nz

    nop
    inc hl
    nop
    ld e, $ff
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    ld b, $02
    rst $38
    nop
    nop
    nop
    nop
    cpl
    ld [bc], a
    ld c, $ff
    nop
    nop
    nop
    nop
    ld h, $0e
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld h, $0f
    rst $38

Call_033_701f:
    ld hl, $14c8
    rst $18
    ld c, $0a
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
    ld [$f70a], sp
    ldh [rNR23], a
    jr nz, jr_033_705c

    rst $20
    ldh [rNR23], a
    ld a, $02
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $02
    ld b, $c0
    ld de, $0300
    rst $18
    jr z, jr_033_705a

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $00
    rst $18

jr_033_705a:
    ld a, [hl+]
    ld a, [bc]

jr_033_705c:
    ret


    ld hl, $14c8
    rst $18
    ld c, $0a
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
    ld [$f70a], sp
    ldh [rNR23], a
    jr nz, jr_033_705c

    rst $20
    ldh [rNR23], a
    ld a, $02
    ld b, $00
    ld de, $0200
    rst $18
    jr z, @+$0c

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $c0
    ld de, $0400
    rst $18
    jr z, @+$0c

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $80
    ld de, $0200
    rst $18
    jr z, jr_033_70af

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $40
    rst $18

jr_033_70af:
    inc l
    ld a, [bc]
    ret


    rst $30
    jr nz, jr_033_70ce

    jp z, Jump_033_70bc

    call Call_033_771a
    ret


Jump_033_70bc:
    ld hl, $14d5
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp
    ld [bc], a
    add b
    add $00
    ld e, l
    ld [hl], b

jr_033_70ce:
    inc de
    nop
    ld [bc], a
    rst $38
    add $00
    rra
    ld [hl], b
    inc de
    nop
    ld [bc], a
    rst $38
    nop
    nop
    or d
    ld [hl], b
    inc de
    nop
    rst $38
    rst $08
    sbc [hl]
    ld hl, $14d2
    rst $18
    ld c, $0a
    ld a, $83
    rst $18
    ld [$c90a], sp
    ld bc, $c6ff
    nop
    pop hl
    ld [hl], b
    ld b, $00
    rst $38
    rst $30
    ldh [rNR23], a
    jr nz, jr_033_7100

    call Call_033_701f

jr_033_7100:
    ld a, $01
    ld [$c4bc], a
    call Call_033_72be
    ret


    ld a, $02
    jr jr_033_710f

    ld a, $03

jr_033_710f:
    ld [$c4bc], a
    call Call_033_72be
    ret


    rst $30
    ret nz

    jr @+$22

    inc c
    ld hl, $14d2
    rst $18
    ld c, $0a
    ld a, $83
    rst $18
    ld [$c90a], sp
    ld a, $00
    ld b, $c0
    ld de, $0100
    rst $18
    jr z, jr_033_713b

    ld a, $00
    rst $18
    ld e, $0a
    ld a, $02
    ld [$c441], a

jr_033_713b:
    rst $08
    sub d
    ret


    rst $30
    ldh [rNR23], a
    jr z, @+$12

    rst $30
    ret nz

    jr jr_033_7167

    dec bc
    ld hl, $14c9
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld bc, $41ea
    call nz, $92cf
    ret


    ld bc, $00ff
    nop
    ld hl, sp+$70
    ld bc, $0200
    rst $38
    nop
    nop

jr_033_7167:
    add hl, bc
    ld [hl], c
    ld bc, $0300
    rst $38
    nop
    nop
    dec c
    ld [hl], c
    ld bc, $0400
    ld b, b
    add $80
    ld d, $71
    nop
    nop
    dec b
    add b
    nop
    nop
    ld a, $71
    nop
    nop
    rst $38
    call Call_033_7813
    rst $30
    ldh [rNR23], a
    jr nz, jr_033_7197

    ld a, $02
    ld bc, $2300
    ld de, $1e00
    rst $18
    jr nz, jr_033_71a1

jr_033_7197:
    rst $30
    and b
    ld a, [de]
    jr nz, jr_033_71ac

    rst $30
    ret nz

    jr @+$2a

    dec bc

jr_033_71a1:
    ld a, $02
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

jr_033_71ac:
    ld a, [$c46a]
    cp $fa
    jr nz, jr_033_71bf

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    call Call_033_73bb
    call Call_033_755b

jr_033_71bf:
    ld a, $00
    ld [$c967], a
    ld a, [$c46a]
    cp $0f
    jr z, jr_033_71fa

    cp $03
    jr z, jr_033_71d5

    cp $0e
    jp z, Jump_033_72b2

    ret


jr_033_71d5:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    rst $20
    and b
    ld a, [de]
    ld a, $02
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $14d5
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_71fa:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    rst $30
    ld b, b
    ld c, $20
    ld l, e
    rst $20
    ret nz

    jr jr_033_720f

    nop
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]

jr_033_720f:
    rst $18
    inc [hl]
    ld [bc], a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $14cf
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld bc, $000a
    rst $18
    ld d, $0a
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
    ld bc, $2300
    ld de, $1900
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld e, $0a
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
    ld bc, $2300
    ld de, $1500
    rst $18
    ld [hl+], a
    ld a, [bc]
    ld c, $04
    call Call_000_25a1
    call Call_000_2625
    ld a, $01
    ld [$c441], a
    ret


    rst $20
    ret nz

    jr @-$17

    nop
    add hl, de
    rst $20
    add b
    ld a, [de]
    rst $20
    and b
    ld a, [de]
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld hl, $14e9
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    inc [hl]
    ld a, [bc]
    ld hl, $14d5
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

Jump_033_72b2:
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    call Call_033_7660
    ret


Call_033_72be:
    ld hl, $14d3
    rst $18
    ld c, $0a
    ld a, $80
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
    jr z, jr_033_72e1

    ret


jr_033_72e1:
    ld a, $0a
    ld [$c967], a
    rst $18
    inc e
    db $10
    ld bc, $8000
    rst $18
    ld e, $02
    ld bc, $ff01
    rst $18
    ld e, $02
    call Call_033_730c
    call Call_033_751b
    ldh a, [$95]
    ld hl, $736f
    rst $18
    ld a, [de]
    db $10
    ld a, $01
    rst $18
    ld [de], a
    db $10
    rst $18
    jr nc, @+$12

    ret


Call_033_730c:
    ld a, [$c4bc]
    cp $01
    jr z, jr_033_732b

    cp $02
    jr z, jr_033_735b

    ld hl, $11e0
    ld de, $2ce0
    rst $18
    jr nz, @+$12

    ld a, $06
    ld [$c834], a
    ld a, $07
    ld [$c82c], a
    ret


jr_033_732b:
    ld hl, $2320
    ld de, $1da0
    rst $18
    jr nz, @+$12

    rst $30
    jr nz, jr_033_7350

    jr nz, jr_033_7350

    rst $30
    ret nz

    jr @+$2a

    rlca
    rst $30
    and b
    ld a, [de]
    jr nz, jr_033_7345

    jr jr_033_7350

jr_033_7345:
    ld a, $05
    ld [$c834], a
    ld a, $28
    ld [$c82c], a
    ret


jr_033_7350:
    ld a, $06
    ld [$c834], a
    ld a, $07
    ld [$c82c], a
    ret


jr_033_735b:
    ld hl, $1ca0
    ld de, $2980
    rst $18
    jr nz, jr_033_7374

    ld a, $06
    ld [$c834], a
    ld a, $07
    ld [$c82c], a
    ret


    adc a
    ld [hl], e
    sub b
    ld [hl], e
    nop

jr_033_7374:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_033_7381:
    nop
    nop
    nop
    nop
    nop
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


    ld a, $00
    ld [$c3e0], a
    rst $18
    ld a, [hl+]
    db $10
    ld hl, $003c
    call Call_033_7c72
    or a
    jr nz, jr_033_73b2

    ld a, $01
    ld [$c3e0], a
    rst $28
    ld h, b
    inc c
    ld a, [$c8aa]
    or a
    jr z, jr_033_73b2

    rst $20
    ld h, b
    inc c

jr_033_73b2:
    ld a, $80
    rst $18
    ld l, $10
    rst $18
    inc l
    db $10
    ret


Call_033_73bb:
    rst $30
    ret nz

    jr jr_033_7381

    ld d, c
    ld [hl], h
    ld a, [$c967]
    cp $0a
    jp nz, Jump_033_7451

    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, [$c4bc]
    cp $01
    jp nz, Jump_033_7473

    ld a, [$c3e0]
    cp $01
    jr nz, jr_033_7452

    ld hl, $14cd
    rst $18
    ld c, $0a
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
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
    ld [$110a], sp
    jr z, jr_033_7415

jr_033_7415:
    rst $30
    ld h, b
    inc c
    jr z, jr_033_7427

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_033_7427:
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
    call Call_033_7cb7
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld a, $0f
    ld [$c441], a

Jump_033_7451:
    ret


jr_033_7452:
    ld hl, $14cc
    rst $18
    ld c, $0a
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
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ret


Jump_033_7473:
    rst $30
    ldh [rNR23], a
    jr z, jr_033_747a

    jr jr_033_74c8

jr_033_747a:
    ld hl, $14c7
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$010a], sp
    ld c, b
    nop
    rst $18
    ld [hl], $0a
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
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
    ld [$e70a], sp
    ldh [rNR23], a
    ld a, $02
    ld b, $01
    rst $18
    ld a, [hl+]
    ld a, [bc]
    ld a, $02
    ld b, $c0
    ld de, $0300
    rst $18
    jr z, jr_033_74c5

    ld a, $02
    rst $18
    ld e, $0a
    ld a, $02
    ld b, $00
    rst $18

jr_033_74c5:
    ld a, [hl+]
    ld a, [bc]
    ret


jr_033_74c8:
    ld hl, $14ca
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$010a], sp
    ld c, b
    nop
    rst $18
    ld [hl], $0a
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
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
    push af
    ld a, $3c
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_033_751b:
    call Call_000_0a61
    ld a, l
    and $03
    and a
    jr nz, jr_033_7526

    ld a, $03

jr_033_7526:
    rst $30
    and b
    ld a, [de]
    jr nz, jr_033_753f

    ld hl, $c006
    add l
    ld l, a
    jr nc, jr_033_7533

    inc h

jr_033_7533:
    ld e, l
    ld d, h
    rst $18
    ld [hl+], a
    db $10
    ld hl, $0007
    rst $18
    db $10
    db $10
    ret


jr_033_753f:
    ld hl, $e006
    add l
    ld l, a
    jr nc, jr_033_7547

    inc h

jr_033_7547:
    rst $30
    nop
    add hl, bc
    jr z, jr_033_754f

    ld hl, $0000

jr_033_754f:
    ld e, l
    ld d, h
    rst $18
    ld [hl+], a
    db $10
    ld hl, $080b
    rst $18
    db $10
    db $10
    ret


Call_033_755b:
    rst $30
    and b
    ld a, [de]
    jp z, Jump_033_75f0

    rst $30
    jr nz, @+$1b

    jp nz, Jump_033_75f0

    ld a, [$c967]
    cp $0a
    jp nz, Jump_033_75f0

    ld a, $02
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld c, $04
    call Call_000_25af
    call Call_000_2625
    ld a, [$c4bc]
    cp $01
    jp nz, Jump_033_7612

    ld a, [$c3e0]
    cp $01
    jr nz, jr_033_75f1

    ld hl, $14d9
    rst $18
    ld c, $0a
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
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
    ld de, $00b4
    rst $30
    ld h, b
    inc c
    jr z, jr_033_75c8

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_033_75c8:
    rst $20
    jr nz, @+$1b

    push de
    rst $18
    ld [hl+], a
    ld [bc], a
    pop hl
    rst $18
    ld d, [hl]
    dec b
    ld hl, $011b
    rst $18
    ld c, $0a
    ld a, $80
    rst $18
    ld [$cd0a], sp
    or a
    ld a, h
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

Jump_033_75f0:
    ret


jr_033_75f1:
    ld hl, $14d8
    rst $18
    ld c, $0a
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
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ret


Jump_033_7612:
    ld hl, $14d7
    rst $18
    ld c, $0a
    ld bc, $0048
    rst $18
    ld [hl], $0a
    ld a, $02
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
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
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $02
    ld de, $ff80
    rst $18
    ld b, b
    ld a, [bc]
    ld a, $02
    rst $18
    ld b, d
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$3e0a], sp
    nop
    ld b, $00
    rst $18
    ld a, [hl-]
    ld a, [bc]
    rst $18
    inc a
    ld a, [bc]
    push af
    ld a, $1e
    rst $18
    inc b
    ld a, [bc]
    pop af
    ret


Call_033_7660:
    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a
    rst $30
    nop
    inc e
    jr z, jr_033_7673

    ld hl, $14da
    rst $18
    ld c, $0a
    jr jr_033_7679

jr_033_7673:
    ld hl, $14de
    rst $18
    ld c, $0a

jr_033_7679:
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
    push af
    ld a, $05
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
    jr nz, jr_033_76ce

    rst $18
    db $10
    ld a, [bc]
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
    push af
    ld a, $05
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
    jr z, @+$15

jr_033_76c2:
    ld hl, $14e7
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_76ce:
    ld a, $02
    rst $18
    ld [$180a], sp
    jp z, $dd21

    inc d
    rst $18
    ld c, $0a
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
    push af
    ld a, $05
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
    jr nz, jr_033_76c2

    call Call_033_779f
    rst $30
    nop
    inc e
    jr z, jr_033_770e

    ld hl, $14e4
    rst $18
    ld c, $0a
    jr jr_033_7714

jr_033_770e:
    ld hl, $14e6
    rst $18
    ld c, $0a

jr_033_7714:
    ld a, $02
    rst $18
    ld [$c90a], sp

Call_033_771a:
    rst $30
    ret nz

    ld a, [de]
    jr z, jr_033_772b

    ld hl, $14e8
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_772b:
    ld hl, $14e2
    rst $18
    ld c, $0a
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
    push af
    ld a, $05
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
    jr z, jr_033_7760

jr_033_7754:
    ld hl, $14e7
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_7760:
    rst $30
    nop
    inc e
    jr z, jr_033_776d

    ld hl, $14e3
    rst $18
    ld c, $0a
    jr jr_033_7773

jr_033_776d:
    ld hl, $14e5
    rst $18
    ld c, $0a

jr_033_7773:
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
    push af
    ld a, $05
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
    jr nz, jr_033_7754

    call Call_033_779f
    ld a, $02
    rst $18
    ld [$c90a], sp

Call_033_779f:
    rst $20
    ret nz

    ld a, [de]
    rst $18
    ld [hl], b
    ld [bc], a
    xor $01
    rst $18
    ld [hl], d
    ld [bc], a
    ld a, $02
    ld b, a
    ld a, $06
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld c, $20
    call Call_000_25a1
    call Call_000_2625
    ld c, $20
    call Call_000_25af
    call Call_000_2625
    ld c, $20
    call Call_000_25a1
    call Call_000_2625
    ld c, $20
    call Call_000_25af
    call Call_000_2625
    ld c, $20
    call Call_000_25a1
    call Call_000_2625
    ld c, $20
    call Call_000_25af
    call Call_000_2625
    ld c, $20
    call Call_000_25a1
    call Call_000_2625
    ld c, $20
    call Call_000_25af
    call Call_000_2625
    ld c, $20
    call Call_000_25a1
    call Call_000_2625
    ld c, $20
    call Call_000_25af
    call Call_000_2625
    ld c, $20
    call Call_000_25a1
    call Call_000_2625
    ld c, $20
    call Call_000_25af
    call Call_000_2625
    ret


Call_033_7813:
    rst $18
    ld [hl], b
    ld [bc], a
    cp $01
    jr nz, jr_033_781d

    rst $20
    nop
    inc e

jr_033_781d:
    ret


    ld e, h
    ld a, b
    ld l, c
    ld a, b
    inc l
    ld a, b
    ld bc, $1379
    ld a, c
    ld c, e
    ld a, c
    ld e, h
    ld a, c
    db $dd
    ld a, e
    nop
    dec bc
    nop
    add hl, bc
    nop
    nop
    nop
    add b
    ld bc, $590e
    ld a, b
    nop
    dec h
    nop
    dec bc
    nop
    nop
    nop
    add b
    ld bc, $dd2c
    ld a, e
    nop
    ld bc, $1f00
    sbc l
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
    db $10
    ld a, [bc]
    nop
    ld bc, $00c0
    dec bc
    nop
    rrca
    ld [bc], a
    ret nz

    nop
    dec h
    nop
    rrca
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    ld [bc], a
    dec c
    ld [bc], a
    rst $38
    nop
    nop
    nop
    nop
    ld h, $02
    inc bc
    rst $38
    nop
    nop
    nop
    nop
    ld h, $03
    rst $38
    rst $30
    jr nz, jr_033_78a1

    jr nz, jr_033_7899

    rst $30
    ldh [rNR30], a
    jr nz, jr_033_7890

    call Call_033_7990
    ret


jr_033_7890:
    rst $30
    nop
    inc e
    jr nz, jr_033_7899

    call Call_033_7a73
    ret


jr_033_7899:
    rst $30
    nop
    dec de
    jr nz, jr_033_78aa

    ld hl, $181a

jr_033_78a1:
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_78aa:
    ld hl, $1814
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp
    rst $30
    add b
    ld a, [de]
    jr z, jr_033_78e4

    ld hl, $14d4
    rst $18
    ld c, $0a
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
    ld a, $02
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$e70a], sp
    and b
    ld a, [de]
    ld a, $03
    ld [$c441], a
    ret


jr_033_78e4:
    ld hl, $14d0
    rst $18
    ld c, $0a
    rst $30
    nop
    add hl, de
    jr z, jr_033_78f8

    rst $18
    db $10
    ld a, [bc]
    ld a, $03
    rst $18
    ld [$c90a], sp

jr_033_78f8:
    rst $20
    nop
    add hl, de
    ld a, $03
    rst $18
    ld [$c90a], sp
    ld [bc], a
    rst $38
    nop
    nop
    add d
    ld a, b
    inc bc
    nop
    inc bc
    rst $38
    nop
    nop
    or [hl]
    ld a, b
    inc bc
    nop
    rst $38
    ret


    ld bc, $9dff
    nop
    ld l, e
    ld a, e
    rlca
    nop
    rst $38
    rst $30
    jr nz, jr_033_793b

    jr z, jr_033_793f

    rst $30
    nop
    dec de
    jr z, jr_033_793f

    ld a, $02
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld hl, $1815
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$f50a], sp
    ld a, $1e

jr_033_793b:
    rst $18
    inc b
    ld a, [bc]
    pop af

jr_033_793f:
    ld a, $01
    ld [$c441], a
    ret


    ld a, $02
    ld [$c441], a
    ret


    ld bc, $00ff
    nop
    inc e
    ld a, c
    nop
    nop
    ld [bc], a
    rst $38
    nop
    nop
    ld b, l
    ld a, c
    nop
    nop
    rst $38
    ld a, [$c46a]
    cp $fa
    jr nz, jr_033_7969

    xor a
    ld hl, $c4b4
    ld [hl+], a
    ld [hl+], a

jr_033_7969:
    ld a, [$c450]
    cp $2e
    jp z, Jump_033_7977

    cp $2f
    jp z, Jump_033_7985

    ret


Jump_033_7977:
    ld a, $01
    ld [$c329], a
    ld a, $15
    ld [$c32b], a
    rst $20
    add b
    rrca
    ret


Jump_033_7985:
    ld a, $1b
    ld [$c329], a
    ld a, $2f
    ld [$c32b], a
    ret


Call_033_7990:
    ld hl, $180c
    rst $18
    ld c, $0a
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
    push af
    ld a, $05
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
    jr z, jr_033_79bf

    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_79bf:
    rst $18
    db $10
    ld a, [bc]
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
    push af
    ld a, $05
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
    jr z, jr_033_79f1

jr_033_79e5:
    ld hl, $180f
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_79f1:
    rst $18
    db $10
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$210a], sp
    ld de, $1118
    ld bc, $df01
    ld b, h
    ld a, [bc]
    cp $ff
    jr z, jr_033_79e5

    ld de, $0000
    cp $00
    jr z, jr_033_7a18

    ld de, $0001
    cp $01
    jr z, jr_033_7a18

    cp $02
    jr z, jr_033_79e5

jr_033_7a18:
    ld a, e
    ld [$c3e0], a
    cp $01
    jr nz, jr_033_7a23

    rst $20
    jr nz, jr_033_7a3e

jr_033_7a23:
    rst $20
    ldh [rNR30], a
    rst $20
    nop
    dec de
    rst $20
    jr nz, jr_033_7a48

    ld a, [$c3e0]
    inc a
    rst $18
    ld l, [hl]
    ld [bc], a
    ld hl, $1812
    ld a, [$c3e0]
    add l
    ld l, a
    jr nc, jr_033_7a3e

    inc h

jr_033_7a3e:
    rst $18
    ld c, $0a
    ld a, $00
    ld b, $40
    rst $18
    inc l
    ld a, [bc]

jr_033_7a48:
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    rst $08
    sub h
    ld a, $80
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $01
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld hl, $1814
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

Call_033_7a73:
    ld hl, $1816
    rst $18
    ld c, $0a
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
    push af
    ld a, $05
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
    jr z, jr_033_7aa8

jr_033_7a9c:
    ld hl, $1817
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_7aa8:
    rst $18
    db $10
    ld a, [bc]
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
    push af
    ld a, $05
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
    jr nz, jr_033_7a9c

    rst $20
    jr nz, @+$1e

    rst $30
    nop
    dec de
    jr z, jr_033_7b18

    rst $28
    nop
    dec de
    ld a, $00
    rst $18
    ld l, [hl]
    ld [bc], a
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld hl, $1819
    rst $18
    ld c, $0a
    ld a, $00
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $01
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld a, $02
    rst $18
    ld [$c90a], sp

jr_033_7b18:
    rst $20
    nop
    dec de
    rst $30
    jr nz, jr_033_7b39

    jr nz, jr_033_7b24

    ld a, $01
    jr jr_033_7b26

jr_033_7b24:
    ld a, $02

jr_033_7b26:
    rst $18
    ld l, [hl]
    ld [bc], a
    ld b, $00
    ld c, $fa
    rst $18
    ld c, [hl]
    ld a, [bc]
    rst $18
    inc [hl]
    ld [bc], a
    ld hl, $181b
    rst $18
    ld c, $0a

jr_033_7b39:
    ld a, $00
    ld b, $40
    rst $18
    inc l
    ld a, [bc]
    ld a, $00
    ld b, a
    ld a, $0a
    rst $18
    ld [hl-], a
    ld a, [bc]
    rst $08
    sub h
    ld a, $80
    rst $18
    ld [$3e0a], sp
    ld [bc], a
    ld b, a
    ld a, $00
    rst $18
    ld l, $0a
    ld a, $00
    ld b, a
    ld a, $01
    rst $18
    ld [hl-], a
    ld a, [bc]
    ld hl, $1814
    rst $18
    ld c, $0a
    ld a, $02
    rst $18
    ld [$c90a], sp
    rst $20
    and b
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
    jr z, jr_033_7bdc

    rst $18
    ld a, [hl-]
    ld [bc], a
    ld e, l
    ld d, h
    rst $18
    ld [hl+], a
    ld [bc], a
    ld a, $04
    ld bc, $0500
    ld de, $0700
    rst $18
    jr nz, jr_033_7b9b

    rst $08
    ld h, e
    ld a, $04
    ld de, $ff00
    rst $18
    ld b, b
    ld a, [bc]

jr_033_7b9b:
    ld a, $04
    rst $18
    ld b, d
    ld a, [bc]
    push af
    ld a, $10
    rst $18
    inc b
    ld a, [bc]
    pop af
    ld a, $04
    ld bc, $3f00
    ld de, $3f00
    rst $18
    jr nz, @+$0c

    ld hl, $0c5f
    rst $18
    ld c, $0a
    ld a, $88
    rst $18
    ld [$cd0a], sp
    or a
    ld a, h
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

jr_033_7bdc:
    ret


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
    jr z, jr_033_7c6f

    ld a, $40
    add e
    ld e, a

jr_033_7c6f:
    add hl, de
    pop de
    ret


Call_033_7c72:
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
    jr nz, jr_033_7c86

    xor a

jr_033_7c86:
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


Call_033_7cb7:
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
    jr z, jr_033_7cd5

    ld h, d
    ld l, e
    sra h
    rr l
    sra h
    rr l
    add hl, de
    ld d, h
    ld e, l

jr_033_7cd5:
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
    call Call_033_7cb7
    ret


    ld a, [$c810]
    cp $00
    jr z, jr_033_7cfd

    rst $30
    add b
    ld de, $6828

jr_033_7cfd:
    ld a, [$c810]
    cp $01
    jr z, jr_033_7d09

    rst $30
    and b
    ld de, $5c28

jr_033_7d09:
    ld a, [$c810]
    cp $02
    jr z, jr_033_7d15

    rst $30
    ret nz

    ld de, $5028

jr_033_7d15:
    ld a, [$c810]
    cp $03
    jr z, jr_033_7d21

    rst $30
    ldh [rNR11], a
    jr z, jr_033_7d65

jr_033_7d21:
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
    jr c, jr_033_7d50

    dec de
    ld bc, $0edf
    ld a, [bc]
    ld a, $80
    rst $18
    ld [$cd0a], sp
    rra
    inc l
    call Call_033_7cb7
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

jr_033_7d50:
    ld [$c46a], a
    ld hl, $c2a0
    ld de, $c466
    ld bc, $0004
    call MemCopy
    ld a, [$c2a4]
    ld [$c465], a

jr_033_7d65:
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
