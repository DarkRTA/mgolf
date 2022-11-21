INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

    db $10
    ld b, b
    db $10
    ld b, b
    push bc
    ld c, c
    ld l, e
    ld d, e
    ld b, [hl]
    ld e, l
    db $fc
    ld h, [hl]
    and c
    ld [hl], c
    db $10
    ld b, b
    inc a
    ld c, c
    ld [hl], $40
    jp Jump_045_4b40


    ld b, c
    ret nc

    ld b, c
    ld e, b
    ld b, d
    db $dd
    ld b, d
    ld h, h
    ld b, e
    di
    ld b, e
    ld a, b
    ld b, h
    rst $38
    ld b, h
    adc c
    ld b, l
    ld de, $9646
    ld b, [hl]
    dec e
    ld b, a
    and [hl]
    ld b, a
    cpl
    ld c, b
    or a
    ld c, b
    inc a
    ld c, c
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, [hl]
    daa
    jr z, jr_045_4100

    ld b, a
    ld c, b
    ld e, c
    ld h, [hl]
    ld h, a
    ld l, b
    ld a, c
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    nop
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    pop af
    rra
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rra
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    ccf

jr_045_4100:
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rrca
    ccf
    rst $38
    ld a, [c]
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rIE]
    ld a, [c]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    ld c, b
    ld b, [hl]
    ld c, b
    ld d, l
    ld h, [hl]
    ld [hl], a
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_045_4224

    ld e, b
    rst $38
    ld [bc], a
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    inc sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_4224:
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    ld c, [hl]
    ld [de], a
    inc de
    inc h
    ld [hl], a
    adc b
    rst $38
    dec b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld b, h
    ld b, a
    ld c, b
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    cpl
    ccf
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    rrca
    rra
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
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
    ld b, a
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    inc b
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    inc sp
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    ld bc, $3fff
    rst $38
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld d, e
    jr jr_045_4400

    ld a, [hl+]
    add hl, sp
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    add l
    add a
    adc b
    rst $38
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_4400:
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    inc sp
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld b, c
    jr z, jr_045_4524

    ld l, b
    ld [hl], a
    rst $38
    inc b
    nop
    nop
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
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_045_4524:
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ld de, $001f
    nop
    nop
    nop
    nop
    rrca
    inc sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
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
    nop
    add hl, sp
    ld h, $27
    ld b, [hl]
    ld b, a
    ld c, b
    ld e, c
    ld e, d
    rst $38
    rlca
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    di
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    inc sp
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    inc sp
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    ld d, e
    rla
    jr jr_045_4643

    scf
    db $76
    rst $38
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop

jr_045_4643:
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
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
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $5857
    rst $38
    ld [bc], a
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld c, d
    jr jr_045_4740

    jr c, jr_045_4762

    rst $38
    inc b
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca

jr_045_4740:
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38

jr_045_4762:
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    ld de, $00f0
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, a
    daa
    jr z, jr_045_47f7

    ld e, b
    ld h, a
    ld a, b
    rst $38
    ld b, $00
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ccf
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    inc sp
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop

jr_045_47f7:
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    ld b, e
    ld h, $35
    scf
    ld b, [hl]
    ld [hl], a
    ld a, b
    rst $38
    ld b, $00
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld b, [hl]
    jr c, jr_045_48eb

    ld a, [hl-]
    ld b, a
    ld d, [hl]
    rst $38
    dec b
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
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38

jr_045_48eb:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ld a, [c]
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    cpl
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ld a, [c]
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    pop af
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld h, e
    ld d, $17
    jr jr_045_49ea

    ld l, d
    ld l, e
    rst $38
    ld b, $e3
    ld d, d
    db $eb
    ld c, c
    ld [hl], c
    ld c, d
    ld sp, hl
    ld c, d
    ld a, a
    ld c, e
    ld [$8d4c], sp
    ld c, h
    jr jr_045_4a22

    and d
    ld c, l
    add hl, hl
    ld c, [hl]
    or c
    ld c, [hl]
    scf
    ld c, a
    cp h
    ld c, a
    ld b, c
    ld d, b
    ret


    ld d, b
    ld c, [hl]
    ld d, c
    push de
    ld d, c
    ld e, e
    ld d, d
    db $e3

jr_045_49ea:
    ld d, d
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    di
    ldh a, [rP1]

jr_045_4a22:
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, e
    daa
    jr z, jr_045_4a98

    rst $38
    inc bc
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af

jr_045_4a98:
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    pop af
    di
    rst $38
    rra
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rra
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, [hl]
    dec sp
    inc a
    ld e, d
    ld a, c
    ld a, d
    rst $38
    dec b
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop

Jump_045_4b40:
    nop
    nop
    nop
    rst $38
    inc sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rra
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rVBK]
    inc h
    dec h
    ld h, $ff
    inc bc
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    pop af
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld c, e
    ld [hl], $37
    ld d, [hl]
    ld d, a
    ld l, c
    ld [hl], a
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld de, $001f
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $6968
    rst $38
    ld [bc], a
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, [hl]
    ld h, $27
    jr c, jr_045_4d58

    ld d, a
    ld e, b
    ld h, [hl]
    ld a, b
    rst $38
    ld [$0000], sp
    nop
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop

jr_045_4d58:
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    ccf
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
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
    ld d, b
    dec hl
    inc l
    ld l, b
    ld [hl], a
    ld a, c
    adc b
    sub a
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_045_4e6b

    ld c, b
    ld h, a
    ld l, b
    rst $38
    inc b
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop

jr_045_4e6b:
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    ld c, l
    dec [hl]
    ld [hl], $47
    ld l, b
    ld a, c
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    nop
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    di
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    cpl
    di
    ccf
    rra
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    di
    ccf
    rra
    nop
    nop
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    ld d, l
    rla
    jr jr_045_4f5b

    rst $38
    inc bc
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra

jr_045_4f5b:
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    rrca
    di
    ccf
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    ld d, c
    rla
    jr z, @+$01

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
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
    nop
    jr z, jr_045_50a5

    db $76
    rst $38
    ld [bc], a
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
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ld a, [c]
    di
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di

jr_045_50a5:
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld c, h
    ld a, [de]
    dec de
    inc l
    ld a, [hl-]
    dec sp
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    ld b, e
    rla
    jr z, @+$01

    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ld de, $00f0
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $59
    ld l, b
    ld l, d
    ld a, c
    rst $38
    inc b
    nop
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld c, b
    ld [hl], $37
    ld a, b
    rst $38
    inc bc
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    ld d, h
    inc h
    dec h
    ld b, a
    ld h, a
    db $76
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    rra
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld b, a
    daa
    jr z, jr_045_53af

    ld d, [hl]
    ld d, a
    rst $38
    dec b
    cp [hl]
    ld e, h
    sub c
    ld d, e
    ld [hl+], a
    ld d, h
    xor h
    ld d, h
    scf
    ld d, l
    cp a
    ld d, l
    ld c, b
    ld d, [hl]
    push de
    ld d, [hl]
    ld e, h
    ld d, a
    xor $57
    ld [hl], a
    ld e, b
    nop
    ld e, c
    add l
    ld e, c
    rrca
    ld e, d
    sbc d
    ld e, d
    dec h
    ld e, e
    xor l
    ld e, e
    jr c, jr_045_53eb

    cp [hl]
    ld e, h
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop

jr_045_53af:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop

jr_045_53eb:
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
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
    ld b, c
    rla
    jr jr_045_543b

    scf
    jr c, @+$48

    ld c, c
    ld d, l
    ld d, a
    ld e, b
    ld l, c
    ld [hl], l
    db $76
    ld a, b
    rst $38
    ld c, $00
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
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop

jr_045_543b:
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $1fff
    nop
    nop
    nop
    nop

Call_045_5463:
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f11
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
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
    dec sp
    jr z, jr_045_54ce

    ld c, b
    ld c, c
    ld h, a
    ld l, b
    ld l, c
    rst $38
    rlca
    nop
    nop
    rst $38
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop

jr_045_54ce:
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    ld d, h
    inc hl
    inc h
    scf
    jr c, jr_045_5578

    ld d, a
    ld e, b
    ld [hl], a
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop

jr_045_5578:
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rra
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld b, a
    ld c, b
    ld d, [hl]
    ld h, a
    ld l, b
    rst $38
    dec b
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    ccf
    nop
    nop
    nop
    nop
    nop
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
    ld b, c
    add hl, de
    ld a, [de]
    daa
    jr z, jr_045_568b

    ld h, l
    rst $38
    ld b, $00
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    inc sp
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca

jr_045_568b:
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
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
    inc a
    dec d
    ld d, $36
    scf
    ld c, c
    ld c, d
    ld d, a
    ld l, b
    ld l, c
    ld l, d
    rst $38
    ld a, [bc]
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld a, $17
    jr jr_045_5772

    ld a, b
    rst $38
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]

jr_045_5772:
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rIE]
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $37
    jr c, jr_045_5837

    ld e, b
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld [hl], a
    ld a, b
    add l
    add [hl]
    adc c
    adc d
    sub a
    rst $38
    rrca
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
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    di
    rst $38
    ld [hl+], a
    cpl
    ldh a, [rP1]
    nop
    rrca
    di
    ld a, [c]
    rst $38
    cpl
    ldh a, [rP1]
    nop
    rrca
    di
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop

jr_045_5837:
    nop
    rst $38
    rst $38
    ld [hl+], a
    cpl
    ldh a, [rP1]
    nop
    nop
    rst $38
    ccf
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

Jump_045_5857:
    nop
    nop
    ld bc, $ff1f
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    ld h, d
    daa
    jr z, jr_045_589b

    ld e, b
    ld e, c
    ld a, c
    rst $38
    ld b, $00
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38

jr_045_589b:
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, [hl]
    ld d, $27
    ld [hl], $57
    ld e, b
    ld h, [hl]
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    ld de, $001f
    nop
    nop
    nop
    nop
    nop
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    ld b, a
    ld c, b
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
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
    ld a, $28
    add hl, hl
    ld a, [hl+]
    ld b, a
    ld h, l
    ld h, a
    ld l, b
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
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
    ld c, l
    ld a, [de]
    dec de
    daa
    jr z, jr_045_5acb

    ld [hl], a
    adc b
    sub a
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop

jr_045_5acb:
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    pop af
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
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
    inc [hl]
    dec [hl]
    scf
    ld c, b
    ld e, c
    ld e, d
    ld a, d
    ld a, e
    rst $38
    ld [$0000], sp
    nop
    rrca
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
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
    inc sp
    ld b, a
    ld c, b
    ld e, c
    ld h, a
    ld l, b
    rst $38
    dec b
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, l
    add hl, de
    ld a, [de]
    ld a, [hl-]
    ld b, a
    ld c, b
    ld d, [hl]
    ld [hl], a
    ld a, b
    rst $38
    ld [$0000], sp
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    di
    pop af
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ld de, $00ff
    nop
    nop
    rrca
    di
    rst $38
    rra
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
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
    ld e, l
    jr z, jr_045_5ce4

    ld a, [hl+]
    rst $38
    inc bc
    nop
    nop
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    pop af
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    ld de, $ff11

jr_045_5ce4:
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld b, e
    jr jr_045_5d5a

    daa
    ld l, c
    ld a, b
    rst $38
    dec b
    ld [hl], l
    ld h, [hl]
    ld l, h
    ld e, l
    push af
    ld e, l
    ld a, [hl]
    ld e, [hl]
    inc b
    ld e, a
    adc l
    ld e, a
    ld d, $60
    sbc d
    ld h, b
    inc h
    ld h, c
    xor h
    ld h, c

jr_045_5d5a:
    dec [hl]
    ld h, d
    cp h
    ld h, d
    ld b, h
    ld h, e
    call Call_045_5463
    ld h, h
    db $dd
    ld h, h
    ld h, d
    ld h, l
    ld [$7565], a
    ld h, [hl]
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld b, c
    ld d, $17
    jr jr_045_5e27

    ld d, a
    db $76
    rst $38
    ld b, $00
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop

jr_045_5e27:
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    ccf
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    ld c, b
    inc de
    inc d
    inc sp
    ld b, l
    ld h, l
    sub l
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    inc sp
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $57
    ld e, b
    ld l, c
    rst $38
    inc bc
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    ld c, h
    jr z, jr_045_5fb0

    ld c, b
    ld a, c
    sbc c
    sbc d
    rst $38
    ld b, $00
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
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_5fb0:
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ccf
    jr jr_045_6029

    daa
    ld l, b
    db $76
    ld [hl], a
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_6029:
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ld de, $001f
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    pop af
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld e, c
    rst $38
    ld bc, $0000
    nop
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    di
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    ld c, b
    jr jr_045_6136

    ld [hl], $37
    ld d, l
    ld h, h
    ld h, [hl]
    rst $38
    rlca
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop

jr_045_6136:
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld c, a
    dec de
    inc e
    ld e, e
    sbc b
    sbc c
    rst $38
    dec b
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    jr c, jr_045_6245

    jr jr_045_6249

    ld e, c
    ld l, b
    sbc c
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_6245:
    nop
    nop
    nop
    nop

jr_045_6249:
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ld de, $00f0
    nop
    nop
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ld de, $00f0
    nop
    nop
    nop
    rrca
    di
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr z, jr_045_630e

    ld e, b
    ld h, [hl]
    ld [hl], a
    rst $38
    inc b
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop

jr_045_630e:
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    ld b, e
    rla
    jr jr_045_6369

    ld d, a
    ld l, b
    rst $38
    dec b
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop

jr_045_6369:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    ld c, [hl]
    ld [de], a
    inc de
    ld d, h
    add [hl]
    sub a
    sbc b
    rst $38
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rrca
    di
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_045_6474

    ld h, $48
    ld e, c
    rst $38
    inc b
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop

jr_045_6474:
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rra
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld b, e
    dec sp
    inc a
    ld a, b
    ld a, c
    sub [hl]
    sub a
    rst $38
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    ld bc, $ffff
    rst $38
    ldh a, [rP1]
    nop
    nop
    pop af
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    rst $38
    pop af
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    pop af
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    db $76
    ld [hl], a
    rst $38
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld e, d
    inc l
    dec l
    ld c, c
    sbc b
    sbc c
    rst $38
    dec b
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld a, [hl-]
    add hl, bc
    jr jr_045_6688

    add hl, hl
    ld e, c
    ld h, a
    ld l, b
    add a
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38

jr_045_6688:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    ld c, d
    inc sp
    inc [hl]
    dec [hl]
    ld h, [hl]
    rst $38
    inc b
    inc b
    ld [hl], c
    ld [hl+], a
    ld h, a
    cp e
    ld h, a
    ld b, h
    ld l, b
    db $e3
    ld l, b
    ld [hl], e
    ld l, c
    ld [de], a
    ld l, d
    or h
    ld l, d
    ld a, $6b
    rst $18
    ld l, e
    ld h, h
    ld l, h
    ld a, [$866c]
    ld l, l
    ld [hl+], a
    ld l, [hl]
    and a
    ld l, [hl]
    ld c, b
    ld l, a
    rst $10
    ld l, a
    ld [hl], d
    ld [hl], b
    inc b
    ld [hl], c
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    nop
    rrca
    cpl
    rst $38
    di
    ld a, [c]
    ldh a, [rP1]
    nop
    rrca
    cpl
    rst $38
    inc sp
    rst $38
    ldh a, [rP1]
    nop
    rrca
    cpl
    rst $38
    di
    rst $38
    ldh a, [rP1]
    nop
    rrca
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ldh a, [rP1]
    nop
    rrca
    rst $38
    pop af
    rra
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    di
    ccf
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    rst $38
    ld de, $ff11
    nop
    nop
    nop
    nop
    rrca
    ld de, $f011
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    ld l, a
    jr c, jr_045_67e8

    ld b, [hl]
    ld b, a
    ld c, e
    ld c, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld a, b
    add a
    sub h
    sub l
    and [hl]
    and a
    xor b
    or e
    or l
    cp e
    cp h
    add $c7
    rst $38
    ld d, $22
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    nop
    nop
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    rrca
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38

jr_045_67e8:
    ld a, [c]
    ld [hl+], a
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rIE]
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [c]
    cpl
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    cpl
    rst $38
    nop
    nop
    rrca
    ld de, $fff0
    rst $38
    ldh a, [rP1]
    nop
    rrca
    ccf
    ldh a, [rIE]
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    ld l, h
    add hl, de
    jr z, jr_045_6898

    ld l, b
    ld a, c
    adc b
    rst $38
    ld b, $00
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    ld de, $f0ff
    nop
    nop
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    rst $38
    nop
    rrca
    pop af
    rra
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    rst $38
    pop af
    rra
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38

jr_045_6898:
    rst $38
    pop af
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    ld de, $1f11
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    pop af
    ld de, $ffff
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    sub b
    inc de
    inc d
    ld [hl+], a
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld b, e
    ld c, b
    ld d, l
    ld d, a
    ld e, c
    ld e, d
    ld h, e
    ld h, h
    ld h, [hl]
    ld l, b
    ld [hl], l
    ld [hl], a
    add h
    add [hl]
    adc e
    sub l
    sub a
    sbc c
    sbc d
    and [hl]
    xor b
    rst $38
    inc e
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cpl
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    cpl
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    di
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    ld c, h
    inc de
    inc d
    dec d
    ld b, l
    ld b, a
    ld d, [hl]
    ld e, b
    ld [hl], a
    ld a, b
    xor b
    xor c
    cp d
    cp e
    rst $38
    dec c
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rrca
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    nop
    rst $38
    pop af
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    ld de, $00f0
    nop
    nop
    nop
    nop
    rrca
    rra
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld c, l
    dec d
    ld d, $23
    inc h
    daa
    jr z, jr_045_6a24

    dec [hl]
    ld [hl], $42
    ld b, e
    ld b, h
    ld b, a
    ld c, b
    ld d, c
    ld d, l
    ld d, [hl]
    ld h, d
    ld h, h
    ld h, a
    ld l, b
    ld [hl], c
    ld [hl], e
    ld [hl], l
    add d
    add h
    sub e
    and h
    rst $38
    inc e
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl

jr_045_6a24:
    di
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    cpl
    ld a, [c]
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rrca
    rrca
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [hl]
    rla
    jr jr_045_6ada

    ld b, l
    ld b, [hl]
    ld c, c
    ld c, d
    ld d, a
    ld e, b
    ld h, h
    ld h, l
    ld h, [hl]
    ld l, c
    ld l, d
    ld [hl], a
    ld a, b
    add h
    add l
    add [hl]
    adc c
    adc d
    sub a
    sbc b
    and h
    and l
    and [hl]
    xor c
    xor d
    or a
    cp b
    add $ff
    rra
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rrca
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a

jr_045_6ada:
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    ld bc, $22ff
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    nop
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rP1]
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
    nop
    ld c, b
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld d, [hl]
    ld l, b
    add [hl]
    rst $38
    rlca
    nop
    nop
    nop
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    cpl
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    nop
    rst $38
    cpl
    rst $38
    rst $38
    cpl
    rst $38
    nop
    nop
    rst $38
    cpl
    rst $38
    ld a, [c]
    cpl
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, [c]
    cpl
    rst $38
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    ccf
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld [hl], l
    ld [$2725], sp
    jr z, jr_045_6bfa

    add hl, sp
    ld b, e
    ld b, l
    ld b, a
    ld d, [hl]
    ld e, b
    ld e, h
    ld h, a
    ld [hl], l
    db $76
    ld a, b
    add a
    adc h
    sub l
    sub [hl]
    sbc e
    and h
    xor d
    xor h
    or [hl]
    or a
    cp b
    cp e
    ret


    jp z, Jump_000_1eff

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_6bfa:
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
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rra
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    daa
    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    ld [hl+], a
    cpl
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    di
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld c, e
    inc de
    inc d
    scf
    ld b, [hl]
    ld c, b
    ld d, a
    ld h, [hl]
    ld l, c
    ld [hl], l
    ld [hl], a
    ld a, b
    add [hl]
    adc c
    sub l
    sub a
    sbc b
    and [hl]
    xor c
    or l
    rst $38
    inc de
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rrca
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
    rrca
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, b
    inc d
    dec d
    ld d, $35
    ld d, l
    ld h, h
    ld [hl], d
    ld [hl], e
    add c
    rst $38
    add hl, bc
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [c]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld l, b
    inc de
    inc d
    dec d
    inc sp
    inc [hl]
    ld b, l
    ld b, [hl]
    ld c, b
    ld d, h
    ld d, a
    ld e, c
    ld e, d
    ld e, e
    ld h, l
    ld h, [hl]
    ld a, c
    ld a, d
    ld a, e
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    or h
    push bc
    rst $38
    add hl, de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    pop af
    rst $38
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    ccf
    rra
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld h, a
    ld l, b
    rst $38
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    cpl
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    cpl
    rst $38
    nop
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    cpl
    di
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], l
    ld a, [hl+]
    dec hl
    inc l
    ld b, a
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld [hl], l
    add [hl]
    add a
    adc b
    adc c
    adc d
    sub l
    sbc e
    xor b
    xor c
    xor d
    or [hl]
    or a
    rst $38
    ld e, $00
    nop
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    ld [hl+], a
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    nop
    nop
    ld b, h
    inc h
    dec h
    ld h, $66
    ld h, a
    ld a, b
    ld a, c
    sub a
    sbc c
    sbc d
    xor b
    ret z

    rst $38
    inc c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    di
    inc sp
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    di
    inc sp
    ccf
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ccf
    rst $38
    inc sp
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    inc sp
    rst $38
    inc sp
    inc sp
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    di
    rst $38
    inc sp
    inc sp
    ccf
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    cpl
    ldh a, [rIE]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ldh a, [rIF]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld c, [hl]
    ld b, l
    ld b, [hl]
    ld h, l
    ld h, [hl]
    ld [hl], a
    sub [hl]
    sub a
    sbc b
    sbc c
    and h
    and l
    or e
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    call nz, $d8c5
    reti


    jp c, $ffdb

    jr jr_045_7095

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

jr_045_7095:
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rP1]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    cpl
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    rrca
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    rrca
    ldh a, [rP1]
    nop
    nop
    nop
    ld d, a
    ld [$2a19], sp
    ld c, d
    ld e, e
    ld l, d
    ld a, c
    adc b
    adc d
    sbc c
    and a
    xor b
    or [hl]
    push bc
    db $d3
    rst $38
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rrca
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ldh a, [$f3]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    cpl
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld e, [hl]
    jr jr_045_71a0

    ld a, [de]
    daa
    dec hl
    ld [hl], $38
    add hl, sp
    ld a, [hl-]
    ld b, a
    ld c, e
    ld c, h
    ld d, [hl]
    ld e, b
    ld e, c
    ld e, d
    ld h, a
    db $76
    ld a, b
    ld a, c
    ld a, d
    add a
    sub [hl]
    sbc b
    and a
    or [hl]
    rst $38

jr_045_71a0:
    ld a, [de]
    call c, $c77a
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    rst $00
    ld [hl], c
    nop
    nop
    rst $38
    nop
    nop
    rrca
    rrca
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    ldh a, [rIF]
    ld a, [c]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIF]
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rra
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld de, $ff1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    di
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    nop
    xor a
    inc sp
    inc [hl]
    ld c, h
    ld d, a
    ld l, h
    ld l, l
    add e
    sbc e
    sbc h
    or l
    or [hl]
    cp c
    cp d
    cp e
    cp h
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rrca
    pop af
    rra
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    ccf
    rst $38
    ld a, [c]
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    pop af
    ldh a, [rIE]
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    rst $38
    ldh a, [$8d]
    ld b, [hl]
    ld c, b
    ld d, l
    ld h, [hl]
    ld [hl], a
    rst $38
    dec b
    rst $38
    rst $38
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    rra
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    jp nz, Jump_045_5857

    rst $38
    ld [bc], a
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    di
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    di
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ret z

    ld [de], a
    inc de
    inc h
    ld [hl], a
    adc b
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ccf
    rra
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ret nz

    ld b, a
    ld c, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    cpl
    ccf
    rra
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ccf
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    di
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp h
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    inc sp
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    di
    pop af
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    di
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    jr jr_045_7596

    ld a, [hl+]
    add hl, sp
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    add l
    add a
    adc b
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_045_7596:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc sp
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    jr z, jr_045_76ba

    ld l, b
    ld [hl], a
    rst $38
    inc b
    nop
    nop
    rst $38
    nop
    nop
    rrca
    rrca
    ldh a, [rP1]
    nop
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    ldh a, [rIF]
    ld a, [c]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIF]
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38

jr_045_76ba:
    cpl
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rra
    rra
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    nop
    rst $38
    di
    rst $38
    rst $38
    pop af
    ldh a, [rP1]
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    ld de, $ff1f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    di
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    nop
    xor a
    inc sp
    inc [hl]
    ld c, h
    ld d, a
    ld l, h
    ld l, l
    add e
    sbc e
    sbc h
    or l
    or [hl]
    cp c
    cp d
    cp e
    cp h
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rrca
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    rrca
    pop af
    rra
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    di
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $38
    rst $38
    ldh a, [rIF]
    ccf
    rst $38
    ld a, [c]
    ld [hl+], a
    rst $38
    rst $38
    nop
    rst $38
    pop af
    ldh a, [rIE]
    ld a, [c]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rrca
    ldh a, [rIF]
    rst $38
    ldh a, [$8d]
    ld b, [hl]
    ld c, b
    ld d, l
    ld h, [hl]
    ld [hl], a
    rst $38
    dec b
    rst $38
    rst $38
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    rra
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    jp nz, Jump_045_5857

    rst $38
    ld [bc], a
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    di
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    di
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    ret z

    ld [de], a
    inc de
    inc h
    ld [hl], a
    adc b
    rst $38
    dec b
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    ccf
    rra
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ret nz

    ld b, a
    ld c, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    cpl
    ccf
    rra
    nop
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    ccf
    rra
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ccf
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    di
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rrca
    rst $38
    rst $38
    cp h
    inc [hl]
    dec [hl]
    ld [hl], $37
    rst $38
    inc b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    rst $38
    nop
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    inc sp
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    di
    pop af
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [rSB]
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIF]
    pop af
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    di
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    jr jr_045_7a64

    ld a, [hl+]
    add hl, sp
    ld b, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    add l
    add a
    adc b
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_045_7a64:
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret c

    ld d, a
    ld e, b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rra
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    pop af
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    di
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc sp
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    rrca
    rra
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    ldh a, [rP1]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    pop af
    ldh a, [rIF]
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ccf
    nop
    rrca
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ret nz

    jr z, jr_045_7b88

    ld l, b
    ld [hl], a
    rst $38
    inc b
    push af
    push de
    push hl
    ld hl, $4000
    ld a, [$c836]
    add a
    add l
    ld l, a
    jr nc, jr_045_7b72

    inc h

jr_045_7b72:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c837]
    add a
    add l
    ld l, a
    jr nc, jr_045_7b7e

    inc h

jr_045_7b7e:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, $0c
    call Call_000_03eb
    pop hl
    pop de

jr_045_7b88:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
