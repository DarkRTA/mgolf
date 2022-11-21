INCLUDE "macros/hardware.inc"
INCLUDE "macros/unk.inc"
; Disassembly of "mario-golf.gbc"
; This file was created with:
; mgbdis v1.6 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

SECTION "ROM Bank $000", ROM0[$0]

RST_00::
    db $c3

Call_000_0001:
Jump_000_0001:
    sub b

Call_000_0002:
Jump_000_0002:
    ld b, $ff

Call_000_0004:
Jump_000_0004:
    rst $38
    rst $38
    rst $38

Call_000_0007:
    rst $38

RST_08::
    jp Jump_000_2bbb


Jump_000_000b:
    rst $38

    db $ff

Jump_000_000d:
    rst $38

Call_000_000e:
Jump_000_000e:
    rst $38

Jump_000_000f:
    rst $38

RST_10::
    jp Jump_000_01f6


Call_000_0013:
    rst $38

Jump_000_0014:
    rst $38

Jump_000_0015:
    rst $38
    rst $38
    rst $38

RST_18::
    jp Jump_000_01b6


    rst $38

Jump_000_001c:
    rst $38
    rst $38
    rst $38
    rst $38

RST_20::
    jp Jump_000_2d86


Call_000_0023:
Jump_000_0023:
    rst $38

Jump_000_0024:
    rst $38

Jump_000_0025:
    rst $38

Jump_000_0026:
    rst $38

Jump_000_0027:
    rst $38

RST_28::
    jp Jump_000_2d93


Jump_000_002b:
    rst $38

Call_000_002c:
Jump_000_002c:
    rst $38

Jump_000_002d:
    rst $38

Jump_000_002e:
    rst $38
    rst $38

RST_30::
    jp Jump_000_2d79


Call_000_0033:
Jump_000_0033:
    rst $38
    rst $38

Call_000_0035:
    rst $38

Jump_000_0036:
    rst $38
    rst $38

RST_38::
    rst $38
    rst $38

Jump_000_003a:
    rst $38
    rst $38

Call_000_003c:
Jump_000_003c:
    rst $38
    rst $38

Call_000_003e:
    rst $38

Jump_000_003f:
    rst $38

VBlankInterrupt::
    jp Jump_000_2ef9


Call_000_0043:
Jump_000_0043:
    rst $38

Call_000_0044:
    rst $38

Call_000_0045:
Jump_000_0045:
    rst $38

Call_000_0046:
Jump_000_0046:
    rst $38

Call_000_0047:
    rst $38

LCDCInterrupt::
    jp Jump_000_2f81


Jump_000_004b:
    rst $38

Call_000_004c:
Jump_000_004c:
    rst $38

Call_000_004d:
Jump_000_004d:
    rst $38

Jump_000_004e:
    rst $38
    rst $38

TimerOverflowInterrupt::
    jp Jump_000_2f6f


Jump_000_0053:
    rst $38
    rst $38

Call_000_0055:
    rst $38
    rst $38

Call_000_0057:
    rst $38

SerialTransferCompleteInterrupt::
    jp Jump_000_2f93


Jump_000_005b:
    rst $38

Call_000_005c:
Jump_000_005c:
    rst $38
    rst $38

Jump_000_005e:
    rst $38

Jump_000_005f:
    rst $38

JoypadTransitionInterrupt::
    reti


Call_000_0061:
Jump_000_0061:
    rst $38

Call_000_0062:
Jump_000_0062:
    rst $38

Call_000_0063:
    rst $38
    rst $38

Jump_000_0065:
    rst $38

Call_000_0066:
    rst $38
    rst $38

Jump_000_0068:
    rst $38

Call_000_0069:
Jump_000_0069:
    rst $38

Call_000_006a:
Jump_000_006a:
    rst $38

Call_000_006b:
Jump_000_006b:
    rst $38

Call_000_006c:
Jump_000_006c:
    rst $38

Call_000_006d:
Jump_000_006d:
    rst $38

Jump_000_006e:
    rst $38

Call_000_006f:
Jump_000_006f:
    rst $38

Call_000_0070:
    rst $38

Call_000_0071:
    rst $38
    rst $38
    rst $38

Call_000_0074:
    rst $38
    rst $38
    rst $38

Call_000_0077:
    rst $38

Call_000_0078:
    rst $38

Jump_000_0079:
    rst $38

Jump_000_007a:
    rst $38

Call_000_007b:
    rst $38
    rst $38
    rst $38

Jump_000_007e:
    rst $38

Jump_000_007f:
    rst $38

Call_000_0080:
Jump_000_0080:
    rst $38

Call_000_0081:
Jump_000_0081:
    rst $38

Call_000_0082:
Jump_000_0082:
    rst $38

Jump_000_0083:
    rst $38

Call_000_0084:
Jump_000_0084:
    rst $38

Call_000_0085:
Jump_000_0085:
    rst $38

Call_000_0086:
Jump_000_0086:
    rst $38

Call_000_0087:
    rst $38

Jump_000_0088:
    rst $38

Call_000_0089:
Jump_000_0089:
    rst $38

Call_000_008a:
Jump_000_008a:
    rst $38
    rst $38

Jump_000_008c:
    rst $38

Jump_000_008d:
    rst $38
    rst $38
    rst $38

Jump_000_0090:
    rst $38

Call_000_0091:
Jump_000_0091:
    rst $38

Call_000_0092:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_0097:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_009b:
    rst $38

Jump_000_009c:
    rst $38
    rst $38

Call_000_009e:
Jump_000_009e:
    rst $38
    rst $38

Call_000_00a0:
Jump_000_00a0:
    rst $38

Call_000_00a1:
Jump_000_00a1:
    rst $38

Call_000_00a2:
Jump_000_00a2:
    rst $38

Call_000_00a3:
Jump_000_00a3:
    rst $38
    rst $38
    rst $38

Call_000_00a6:
Jump_000_00a6:
    rst $38

Jump_000_00a7:
    rst $38

Jump_000_00a8:
    rst $38
    rst $38
    rst $38

Jump_000_00ab:
    rst $38

Jump_000_00ac:
    rst $38

Call_000_00ad:
Jump_000_00ad:
    rst $38

Jump_000_00ae:
    rst $38

Jump_000_00af:
    rst $38

Jump_000_00b0:
    rst $38

Jump_000_00b1:
    rst $38
    rst $38
    rst $38

Jump_000_00b4:
    rst $38
    rst $38

Jump_000_00b6:
    rst $38
    rst $38

Jump_000_00b8:
    rst $38

Call_000_00b9:
    rst $38
    rst $38

Jump_000_00bb:
    rst $38

Jump_000_00bc:
    rst $38
    rst $38
    rst $38

Jump_000_00bf:
    rst $38

Call_000_00c0:
Jump_000_00c0:
    rst $38

Call_000_00c1:
Jump_000_00c1:
    rst $38

Call_000_00c2:
Jump_000_00c2:
    rst $38

Call_000_00c3:
Jump_000_00c3:
    rst $38

Jump_000_00c4:
    rst $38

Call_000_00c5:
Jump_000_00c5:
    rst $38

Call_000_00c6:
Jump_000_00c6:
    rst $38
    rst $38

Jump_000_00c8:
    rst $38

Jump_000_00c9:
    rst $38

Call_000_00ca:
    rst $38

Jump_000_00cb:
    rst $38

Call_000_00cc:
Jump_000_00cc:
    rst $38

Jump_000_00cd:
    rst $38

Jump_000_00ce:
    rst $38

Call_000_00cf:
Jump_000_00cf:
    rst $38

Call_000_00d0:
    rst $38

Call_000_00d1:
Jump_000_00d1:
    rst $38

Call_000_00d2:
Jump_000_00d2:
    rst $38

Jump_000_00d3:
    rst $38
    rst $38

Call_000_00d5:
    rst $38
    rst $38
    rst $38

Call_000_00d8:
    rst $38
    rst $38
    rst $38

Jump_000_00db:
    rst $38

Call_000_00dc:
Jump_000_00dc:
    rst $38

Call_000_00dd:
    rst $38

Call_000_00de:
    rst $38

Jump_000_00df:
    rst $38

Call_000_00e0:
Jump_000_00e0:
    rst $38

Call_000_00e1:
Jump_000_00e1:
    rst $38

Call_000_00e2:
Jump_000_00e2:
    rst $38

Call_000_00e3:
Jump_000_00e3:
    rst $38

Call_000_00e4:
Jump_000_00e4:
    rst $38

Call_000_00e5:
Jump_000_00e5:
    rst $38

Jump_000_00e6:
    rst $38

Call_000_00e7:
Jump_000_00e7:
    rst $38
    rst $38

Call_000_00e9:
    rst $38
    rst $38

Call_000_00eb:
Jump_000_00eb:
    rst $38

Call_000_00ec:
Jump_000_00ec:
    rst $38

Call_000_00ed:
Jump_000_00ed:
    rst $38
    rst $38

Call_000_00ef:
Jump_000_00ef:
    rst $38

Call_000_00f0:
Jump_000_00f0:
    rst $38

Call_000_00f1:
Jump_000_00f1:
    rst $38

Call_000_00f2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_00f7:
Jump_000_00f7:
    rst $38

Call_000_00f8:
Jump_000_00f8:
    rst $38

Call_000_00f9:
    rst $38
    rst $38

Jump_000_00fb:
    rst $38

Call_000_00fc:
    rst $38

Call_000_00fd:
Jump_000_00fd:
    rst $38

Jump_000_00fe:
    rst $38

Call_000_00ff:
Jump_000_00ff:
    rst $38

Boot::
    nop

Call_000_0101:
Jump_000_0101:
    jp Jump_000_0150


HeaderLogo::
    db $ce, $ed, $66, $66, $cc, $0d, $00, $0b, $03, $73, $00, $83, $00, $0c, $00, $0d
    db $00, $08, $11, $1f, $88, $89, $00, $0e, $dc, $cc, $6e, $e6, $dd, $dd, $d9, $99
    db $bb, $bb, $67, $63, $6e, $0e, $ec, $cc, $dd, $dc, $99, $9f, $bb, $b9, $33, $3e

HeaderTitle::
    db "MARIO GOLF", $00

HeaderManufacturerCode::
    db "AWXE"

HeaderCGBFlag::
    db $c0

HeaderNewLicenseeCode::
    db $30, $31

HeaderSGBFlag::
    db $00

HeaderCartridgeType::
    db $1b

HeaderROMSize::
    db $06

HeaderRAMSize::
    db $02

HeaderDestinationCode::
    db $01

HeaderOldLicenseeCode::
    db $33

HeaderMaskROMVersion::
    db $00

HeaderComplementCheck::
    db $7a

HeaderGlobalChecksum::
    db $0f, $c7

Jump_000_0150:
    jp Jump_000_2da0


    add hl, sp

Call_000_0154:
    add hl, sp
    jr nc, jr_000_018f

    ld [hl-], a
    jr nc, jr_000_018c

    ld sp, $3831
    nop

Call_000_015e:
    push hl
    push hl

Jump_000_0160:
    push hl
    push af
    ld hl, sp+$04

Call_000_0164:
    ld [hl], $75

Jump_000_0166:
    inc hl

Call_000_0167:
    ld [hl], $01

Call_000_0169:
    inc hl
    ldh a, [$95]

Call_000_016c:
    ld [hl], a
    pop af

Jump_000_016e:
    ldh [$95], a

Call_000_0170:
    ld [$2000], a
    pop hl
    jp hl


    push af
    push hl
    ld hl, sp+$04

Call_000_0179:
    ld a, [hl]
    ldh [$95], a
    ld [$2000], a

Jump_000_017f:
    pop hl

Jump_000_0180:
    pop af

Call_000_0181:
Jump_000_0181:
    inc sp
    inc sp

Jump_000_0183:
    ret


Call_000_0184:
    push hl

Jump_000_0185:
    push hl
    push hl
    push af
    ld hl, sp+$04
    ld [hl], $a7

jr_000_018c:
    inc hl

Call_000_018d:
    ld [hl], $01

jr_000_018f:
    inc hl

Call_000_0190:
    ldh a, [$95]
    ld [hl], a
    pop af
    ldh [$95], a

Jump_000_0196:
    ld [$2000], a
    pop hl
    ld a, b
    add a
    add l
    ld l, a
    jr nc, jr_000_01a1

Call_000_01a0:
Jump_000_01a0:
    inc h

Call_000_01a1:
jr_000_01a1:
    ld a, [hl+]

Call_000_01a2:
Jump_000_01a2:
    ld h, [hl]

Jump_000_01a3:
    ld l, a
    or h
    ret z

Jump_000_01a6:
    jp hl


    push af

Jump_000_01a8:
    push hl
    ld hl, sp+$04
    ld a, [hl]
    ldh [$95], a

Jump_000_01ae:
    ld [$2000], a
    pop hl
    pop af
    inc sp
    inc sp
    ret


Jump_000_01b6:
    push hl
    push af

Call_000_01b8:
    ld hl, sp+$00
    ldh a, [$95]
    ld [hl], a
    ld hl, sp+$04
    push de

Jump_000_01c0:
    ld a, [hl+]

Call_000_01c1:
Jump_000_01c1:
    ld e, a
    ld d, [hl]

Call_000_01c3:
Jump_000_01c3:
    ld a, [de]

Jump_000_01c4:
    inc de

Jump_000_01c5:
    ld [hl], a
    ld a, [de]
    ldh [$95], a
    ld [$2000], a
    inc de

Jump_000_01cd:
    ld a, [hl]
    ld [hl], d
    dec hl

Jump_000_01d0:
    ld [hl], e
    pop de
    call Call_000_01e6

Call_000_01d5:
    push af
    push hl
    ld hl, sp+$04
    ld a, [hl]
    ldh [$95], a

Call_000_01dc:
    ld [$2000], a
    pop hl

Call_000_01e0:
Jump_000_01e0:
    pop af

Call_000_01e1:
Jump_000_01e1:
    inc sp

Jump_000_01e2:
    inc sp

Jump_000_01e3:
    inc sp
    inc sp

Call_000_01e5:
    ret


Call_000_01e6:
Jump_000_01e6:
    ld h, $40
    ld l, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_000_01ec:
    push hl
    ld hl, sp+$05
    ld a, [hl+]
    push af
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af

Jump_000_01f5:
    ret


Jump_000_01f6:
    ld hl, sp+$00

Jump_000_01f8:
    ldh a, [$95]

Call_000_01fa:
    push af
    ld a, [hl+]

Jump_000_01fc:
    ld h, [hl]
    ld l, a

Call_000_01fe:
Jump_000_01fe:
    ld a, [hl+]

Call_000_01ff:
Jump_000_01ff:
    ld e, a

Call_000_0200:
Jump_000_0200:
    ld a, [hl]

Call_000_0201:
Jump_000_0201:
    ldh [$95], a

Call_000_0203:
    ld [$2000], a
    call Call_000_0213
    pop af

Jump_000_020a:
    ldh [$95], a
    ld [$2000], a

Call_000_020f:
Jump_000_020f:
    pop hl
    inc hl
    inc hl
    jp hl


Call_000_0213:
    ld h, $40
    ld l, e
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    jp hl


Call_000_021a:
    push af
    ldh a, [$95]
    push af
    ld a, h
    ldh [$95], a

Call_000_0221:
    ld [$2000], a
    ld h, $40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call MemCopy
    pop af

Call_000_022d:
    ldh [$95], a

Jump_000_022f:
    ld [$2000], a
    pop af

Call_000_0233:
    ret


Call_000_0234:
    push af
    ldh a, [$95]
    push af
    ld a, h
    ldh [$95], a
    ld [$2000], a
    ld h, $40
    ld a, [hl+]

Jump_000_0241:
    ld h, [hl]
    ld l, a
    call Call_000_1f2f

Jump_000_0246:
    pop af

Jump_000_0247:
    ldh [$95], a
    ld [$2000], a
    pop af
    ret


Call_000_024e:
Jump_000_024e:
    ld a, $01

Call_000_0250:
    ldh [rVBK], a
    ld hl, $8000
    ld bc, $0200

Call_000_0258:
    call Call_000_03bc
    xor a
    ldh [rVBK], a
    ld hl, $8000

Call_000_0261:
Jump_000_0261:
    ld bc, $0200

Jump_000_0264:
    jp Jump_000_03bc


Call_000_0267:
Jump_000_0267:
    ld a, $01
    ldh [rVBK], a
    ld hl, $9800
    ld c, $80
    call Call_000_03a7

Jump_000_0273:
    xor a
    ldh [rVBK], a
    ld hl, $9800
    ld c, $80
    call Call_000_03a7
    ret


Call_000_027f:
    ld a, $80

Jump_000_0281:
    ldh [rBCPS], a
    ld c, $69
    jr jr_000_028d

Call_000_0287:
    ld a, $80

Call_000_0289:
    ldh [rOCPS], a
    ld c, $6b

jr_000_028d:
    ld b, $08

Jump_000_028f:
jr_000_028f:
    ld a, [hl+]

Jump_000_0290:
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a
    ld a, [hl+]
    ld [c], a

Call_000_029f:
    dec b

Call_000_02a0:
    jr nz, jr_000_028f

Call_000_02a2:
Jump_000_02a2:
    ret


Call_000_02a3:
    ldh a, [rKEY1]
    bit 7, a
    ret nz

    ld a, $01
    ldh [rKEY1], a
    ldh a, [rIE]
    push af
    xor a

Jump_000_02b0:
    ldh [rIE], a
    ld a, $30
    ldh [rP1], a
    stop

jr_000_02b8:
    ldh a, [rKEY1]
    bit 7, a
    jr z, jr_000_02b8

    xor a
    ldh [rP1], a

Jump_000_02c1:
    ldh [rIF], a

Call_000_02c3:
Jump_000_02c3:
    pop af
    ldh [rIE], a
    ret


Jump_000_02c7:
    ldh a, [rKEY1]
    bit 7, a
    ret z

    ld a, $01

Call_000_02ce:
    ldh [rKEY1], a
    ldh a, [rIE]
    push af

Jump_000_02d3:
    xor a
    ldh [rIE], a
    ld a, $30
    ldh [rP1], a
    stop

Call_000_02dc:
jr_000_02dc:
    ldh a, [rKEY1]
    bit 7, a

Call_000_02e0:
Jump_000_02e0:
    jr nz, jr_000_02dc

Jump_000_02e2:
    xor a

Call_000_02e3:
Jump_000_02e3:
    ldh [rP1], a
    ldh [rIF], a
    pop af

Jump_000_02e8:
    ldh [rIE], a

Jump_000_02ea:
    ret


Call_000_02eb:
    ld a, $20

Call_000_02ed:
    ldh [rP1], a

Call_000_02ef:
    ldh a, [rP1]

Call_000_02f1:
    ldh a, [rP1]
    cpl
    and $0f
    swap a

Jump_000_02f8:
    ld b, a

Jump_000_02f9:
    ld a, $10

Call_000_02fb:
    ldh [rP1], a

Call_000_02fd:
    ldh a, [rP1]

Jump_000_02ff:
    ldh a, [rP1]

Jump_000_0301:
    ldh a, [rP1]

Jump_000_0303:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    cpl
    and $0f

Call_000_030c:
    or b

Jump_000_030d:
    ld c, a

Call_000_030e:
    ldh a, [$90]

Call_000_0310:
Jump_000_0310:
    xor c
    and c
    ldh [$94], a
    ld a, c
    ldh [$90], a
    ld a, $30
    ldh [rP1], a
    ldh a, [$90]
    ld b, a
    or a
    jr z, jr_000_0337

Jump_000_0321:
    ldh a, [$92]
    cp b
    jr nz, jr_000_0337

    ldh a, [$93]
    dec a
    jr nz, jr_000_0332

    ldh a, [$a6]

Jump_000_032d:
    ldh [$93], a
    ld a, b

Call_000_0330:
Jump_000_0330:
    jr jr_000_033e

jr_000_0332:
    ldh [$93], a
    xor a
    jr jr_000_033e

jr_000_0337:
    ld a, $12
    ldh [$93], a
    ld a, b

Jump_000_033c:
    ldh [$92], a

jr_000_033e:
    ldh [$91], a

Call_000_0340:
    ret


Call_000_0341:
Jump_000_0341:
    ldh a, [rLCDC]
    bit 7, a
    jr z, jr_000_0362

    ldh a, [rIE]
    ldh [$9f], a

Jump_000_034b:
    res 0, a
    ldh [rIE], a

jr_000_034f:
    ldh a, [rLY]
    cp $91
    jr nz, jr_000_034f

    ldh a, [rLCDC]
    and $7f

Call_000_0359:
    ldh [rLCDC], a
    xor a

Call_000_035c:
    ldh [rIF], a
    ldh a, [$9f]

Call_000_0360:
Jump_000_0360:
    ldh [rIE], a

jr_000_0362:
    push hl

Call_000_0363:
Jump_000_0363:
    push bc
    call Call_000_0458
    xor a
    ld hl, $ffb8

Jump_000_036b:
    ld [hl+], a
    ld [hl+], a

Jump_000_036d:
    ld [hl+], a
    pop bc
    pop hl
    ret


Call_000_0371:
    ldh a, [rLCDC]
    or $80
    ldh [rLCDC], a
    rst $10

    db $02, $7e

Call_000_037a:
    ret


Call_000_037b:
    ldh a, [$fe]
    and a
    jp nz, Jump_000_024e

Call_000_0381:
Jump_000_0381:
    ld hl, $8000
    ld bc, $0200
    call Call_000_03bc
    ret


    ldh a, [$fe]
    and a
    jp nz, Jump_000_0267

    ld hl, $9800
    ld bc, $0400

jr_000_0397:
    xor a
    ld [hl+], a
    dec bc

Jump_000_039a:
    ld a, b
    or c

Jump_000_039c:
    jr nz, jr_000_0397

    ret


Call_000_039f:
jr_000_039f:
    xor a

Call_000_03a0:
Jump_000_03a0:
    ld [hl+], a

Jump_000_03a1:
    dec bc
    ld a, c
    or b
    jr nz, jr_000_039f

    ret


Call_000_03a7:
Jump_000_03a7:
    xor a

Jump_000_03a8:
jr_000_03a8:
    ld [hl+], a
    ld [hl+], a

Jump_000_03aa:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Call_000_03ae:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Call_000_03b3:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_000_03a8

    ret


Call_000_03bc:
Jump_000_03bc:
jr_000_03bc:
    xor a

Call_000_03bd:
    ld [hl+], a

Jump_000_03be:
    ld [hl+], a

Call_000_03bf:
    ld [hl+], a

Call_000_03c0:
Jump_000_03c0:
    ld [hl+], a

Jump_000_03c1:
    ld [hl+], a
    ld [hl+], a

Jump_000_03c3:
    ld [hl+], a

Jump_000_03c4:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec bc

Call_000_03ce:
    ld a, b

Call_000_03cf:
    or c
    jr nz, jr_000_03bc

    ret


; copies bc bytes from *hl to *de in the forward direction
MemCopy:
    inc c
    dec c
    jr z, .loop
    inc b
.loop:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, .loop
    dec b
    jr nz, .loop
    ret


Call_000_03e2:
Jump_000_03e2:
jr_000_03e2:
    ld a, [hl-]

Jump_000_03e3:
    ld [de], a

Jump_000_03e4:
    dec de

Jump_000_03e5:
    dec bc
    ld a, b

Jump_000_03e7:
    or c
    jr nz, jr_000_03e2

    ret


Call_000_03eb:
    ld a, $0f
    and e
    jr z, jr_000_0424

jr_000_03f0:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_03f6:
    ld a, [hl+]

Call_000_03f7:
    ld [de], a
    inc de
    ld a, [hl+]

Jump_000_03fa:
    ld [de], a
    inc de

Call_000_03fc:
    ld a, [hl+]

Jump_000_03fd:
    ld [de], a

Jump_000_03fe:
    inc de

Call_000_03ff:
Jump_000_03ff:
    ld a, [hl+]

Call_000_0400:
Jump_000_0400:
    ld [de], a

Call_000_0401:
Jump_000_0401:
    inc de

Jump_000_0402:
    ld a, [hl+]

Call_000_0403:
Jump_000_0403:
    ld [de], a

Jump_000_0404:
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]

Jump_000_0409:
    ld [de], a
    inc de
    ld a, [hl+]

Call_000_040c:
    ld [de], a

Jump_000_040d:
    inc de
    ld a, [hl+]

Jump_000_040f:
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

Jump_000_041d:
    ld a, [hl+]
    ld [de], a
    inc de
    dec c

Jump_000_0421:
    jr nz, jr_000_03f0

Jump_000_0423:
    ret


Jump_000_0424:
jr_000_0424:
    ld a, [hl+]
    ld [de], a

Call_000_0426:
Jump_000_0426:
    inc e
    ld a, [hl+]
    ld [de], a

Call_000_0429:
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]

Jump_000_043a:
    ld [de], a
    inc e

Call_000_043c:
    ld a, [hl+]
    ld [de], a
    inc e

Call_000_043f:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a

Jump_000_0444:
    inc e
    ld a, [hl+]

Call_000_0446:
    ld [de], a

Jump_000_0447:
    inc e
    ld a, [hl+]
    ld [de], a
    inc e

Call_000_044b:
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl+]
    ld [de], a

Jump_000_0450:
    inc e
    ld a, [hl+]
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_0424

    ret


Call_000_0458:
    ld hl, $c0a0
    ld c, $05
    jp Jump_000_03a7


Call_000_0460:
Jump_000_0460:
    xor a

Jump_000_0461:
    dec a

Jump_000_0462:
    ld h, a

Jump_000_0463:
    ld l, a
    ld d, a

Jump_000_0465:
    ld e, a
    ld c, $01

Call_000_0468:
    xor a
    ldh [$99], a

Jump_000_046b:
    ld a, c
    dec a
    push af
    push hl
    ld hl, $c0a0
    ld c, $0a

jr_000_0474:
    ld a, [hl]
    or a
    jr z, jr_000_0488

    ld a, l
    add $08
    ld l, a
    dec c
    jr nz, jr_000_0474

Jump_000_047f:
    ld a, $01

Jump_000_0481:
    ldh [$99], a
    pop hl
    pop af
    xor a
    ret


Call_000_0487:
    nop

jr_000_0488:
    ldh a, [$95]
    ld [hl+], a
    ldh a, [$96]
    ld [hl+], a
    pop bc
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    bit 5, d
    jr nz, jr_000_049a

    xor a
    jr jr_000_049c

jr_000_049a:
    ld a, $01

jr_000_049c:
    ld [hl+], a
    res 5, d
    ld [hl], e

Call_000_04a0:
    inc hl

Call_000_04a1:
    ld [hl], d
    inc hl
    pop af
    bit 7, a
    jr z, jr_000_04ae

    rst $08
    nop
    rst $08

Jump_000_04ab:
    rra
    ld a, $01

Call_000_04ae:
jr_000_04ae:
    ld [hl], a
    ld a, $01
    ldh [$99], a
    ret


Call_000_04b4:
    xor a

Call_000_04b5:
    ldh [$99], a
    push hl
    ld hl, $c180

Jump_000_04bb:
    ld c, $10

jr_000_04bd:
    ld a, [hl]
    or a

Call_000_04bf:
    jr z, jr_000_04ce

Call_000_04c1:
    inc hl

Jump_000_04c2:
    inc hl

Jump_000_04c3:
    inc hl
    inc hl

Call_000_04c5:
    dec c
    jr nz, jr_000_04bd

Jump_000_04c8:
    pop hl
    ld a, $01
    ldh [$99], a
    ret


jr_000_04ce:
    pop bc

Jump_000_04cf:
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld a, $01
    ldh [$99], a
    ret


Call_000_04db:
    call Call_000_0468

Call_000_04de:
    ldh a, [$99]

Jump_000_04e0:
    or a

Jump_000_04e1:
    ret z

Jump_000_04e2:
    ld hl, $c0a0
    ld c, $0a
    ldh a, [$96]

Call_000_04e9:
    ld e, a

Call_000_04ea:
    ldh a, [$95]
    ld d, a
    push de

jr_000_04ee:
    ld a, [hl]
    or a
    jr z, jr_000_0521

    push bc
    ldh [$95], a
    ld [$2000], a

Call_000_04f8:
    xor a
    ld [hl+], a
    ld a, [hl+]
    ldh [$96], a
    ldh [rSVBK], a

Call_000_04ff:
Jump_000_04ff:
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    bit 0, c
    jr nz, jr_000_0550

    ld a, [hl+]
    ldh [rVBK], a
    ld e, [hl]
    inc l
    ld d, [hl]
    inc l

Jump_000_050e:
    ld a, [hl+]
    push hl
    ld hl, $ff51
    ld [hl], b
    inc l
    ld [hl], c
    inc l
    ld [hl], d
    inc l
    ld [hl], e
    inc l
    ld [hl], a
    pop hl
    pop bc
    dec c
    jr nz, jr_000_04ee

jr_000_0521:
    pop de
    ld a, e
    ldh [$96], a
    ldh [rSVBK], a
    ld a, d
    ldh [$95], a

Jump_000_052a:
    ld [$2000], a
    ld hl, $c180
    ld c, $10

jr_000_0532:
    ld a, [hl]
    or a
    jr z, jr_000_054f

    push bc
    ld d, a
    xor a

Jump_000_0539:
    ld [hl+], a

Jump_000_053a:
    ld e, [hl]
    inc l
    ld c, [hl]
    inc l
    ld b, [hl]
    inc l
    xor a
    ldh [rVBK], a
    ld a, c
    ld [de], a
    ld a, $01
    ldh [rVBK], a
    ld a, b
    ld [de], a
    pop bc
    dec c
    jr nz, jr_000_0532

Call_000_054f:
jr_000_054f:
    ret


Call_000_0550:
jr_000_0550:
    pop bc
    dec c
    jr z, jr_000_0521

    ld a, c
    add a
    add a
    add a
    ld c, a
    ld a, l
    add $08
    and $f8
    ld l, a
    ld de, $c0a0

jr_000_0562:
    ld a, [hl+]

Jump_000_0563:
    ld [de], a

Call_000_0564:
    inc e
    dec c
    jr nz, jr_000_0562

    xor a
    ld [de], a
    jr jr_000_0521

Call_000_056c:
    push de
    ld a, e
    add a
    add a
    add a
    ld c, a
    ld a, d
    add a
    add a
    add a
    ld e, a
    ld d, $c1

jr_000_0579:
    ld a, [hl+]
    ld [de], a
    inc d
    ld [de], a
    dec d
    inc e

Jump_000_057f:
    dec c

Jump_000_0580:
    jr nz, jr_000_0579

Jump_000_0582:
    ld hl, $ff9d
    pop de

Jump_000_0586:
    bit 3, d
    jr nz, jr_000_058c

    set 0, [hl]

jr_000_058c:
    ld a, e
    add d
    cp $09
    jr c, jr_000_0594

    set 1, [hl]

jr_000_0594:
    ret


Call_000_0595:
    ld a, e
    add a
    add a
    add a
    ld c, a
    ld a, d
    add a
    add a
    add a
    ld e, a
    ld d, $c2

jr_000_05a1:
    ld a, [hl+]

Jump_000_05a2:
    ld [de], a

Jump_000_05a3:
    inc e
    dec c
    jr nz, jr_000_05a1

    ret


Call_000_05a8:
    push de
    ld a, e
    add a
    add a
    add a
    ld c, a
    ld a, d
    add a
    add a
    add a
    ld e, a
    ld d, $c2

jr_000_05b5:
    ld a, [hl+]
    ld [de], a
    ld b, a
    ldh a, [$bc]
    and a
    jr nz, jr_000_05c1

    dec d
    ld a, b
    ld [de], a
    inc d

Jump_000_05c1:
jr_000_05c1:
    inc e

Jump_000_05c2:
    dec c

Jump_000_05c3:
    jr nz, jr_000_05b5

Call_000_05c5:
    pop de
    ldh a, [$bc]
    and a
    jr nz, jr_000_05dc

    ld hl, $ff9d
    bit 3, d
    jr nz, jr_000_05d4

    set 0, [hl]

jr_000_05d4:
    ld a, e
    add d
    cp $09
    jr c, jr_000_05dc

    set 1, [hl]

jr_000_05dc:
    ret


Call_000_05dd:
    push af
    push bc

Call_000_05df:
    push de

Jump_000_05e0:
    push hl
    ld hl, $c200
    ld de, $c100
    ld c, $08
    call Call_000_03eb
    ld hl, $ff9d
    ld [hl], $03
    pop hl
    pop de
    pop bc
    pop af

Jump_000_05f5:
    ret


Call_000_05f6:
    ldh a, [$9d]
    rrca
    jr nc, jr_000_0601

    ld hl, $c100
    call Call_000_027f

Jump_000_0601:
jr_000_0601:
    ldh a, [$9d]
    rrca

Jump_000_0604:
    rrca
    jr nc, jr_000_060d

    ld hl, $c140

Jump_000_060a:
    call Call_000_0287

Jump_000_060d:
jr_000_060d:
    xor a

Jump_000_060e:
    ldh [$9d], a
    ret


Call_000_0611:
    push bc
    ld b, a
    ldh a, [$95]
    push af
    ld a, b
    ldh [$95], a
    ld [$2000], a
    ld c, [hl]
    pop af
    ldh [$95], a
    ld [$2000], a

Call_000_0623:
    ld a, c
    pop bc
    ret


Call_000_0626:
    ld b, a
    ldh a, [$95]

Jump_000_0629:
    push af
    ld a, b
    ldh [$95], a

Jump_000_062d:
    ld [$2000], a

Jump_000_0630:
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    pop af
    ldh [$95], a
    ld [$2000], a
    ret


Call_000_063b:
Jump_000_063b:
    push bc
    ldh a, [$95]
    ld b, a

Jump_000_063f:
    ld a, h
    ldh [$95], a

Jump_000_0642:
    ld [$2000], a
    ld c, a

Jump_000_0646:
    ld h, $40

Jump_000_0648:
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_064b:
    ld a, b
    ldh [$95], a
    ld [$2000], a
    ld a, c
    pop bc
    ret


Call_000_0654:
    push bc

Call_000_0655:
    ld b, a
    ldh a, [$95]
    ld c, a
    ld a, b
    ldh [$95], a
    ld [$2000], a
    ld a, c
    pop bc

Jump_000_0661:
    push af
    call MemCopy
    pop af
    ldh [$95], a
    ld [$2000], a
    ret


Call_000_066c:
    ld c, $80
    ld b, $0a
    ld hl, $067a

jr_000_0673:
    ld a, [hl+]
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_0673

    ret


    db $3e, $c0, $e0, $46, $3e, $28, $3d, $20, $fd, $c9

Call_000_0684:
    ld hl, $067a
    ld [hl], $c9
    ret


Call_000_068a:
    ld hl, $067a
    ld [hl], $3e
    ret


    add a
    pop hl
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_0699:
    jp hl


Call_000_069a:
    push af
    push bc
    ld c, a
    ldh a, [$95]
    push af

Call_000_06a0:
    ld a, h
    ldh [$95], a

Call_000_06a3:
    ld [$2000], a
    ld h, $40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, c
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_1f2f
    pop af
    ldh [$95], a
    ld [$2000], a
    pop bc

Jump_000_06c0:
    pop af

Call_000_06c1:
Jump_000_06c1:
    ret


Call_000_06c2:
    push af

Call_000_06c3:
Jump_000_06c3:
    push bc

Jump_000_06c4:
    push de
    push hl
    ld b, a
    ldh a, [$95]

Jump_000_06c9:
    push af

Call_000_06ca:
    ld a, h
    ldh [$95], a

Call_000_06cd:
    ld [$2000], a
    ld h, $40
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_06d5:
    ld a, b
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Call_000_06e0:
jr_000_06e0:
    ld a, [hl+]
    ld [de], a

Jump_000_06e2:
    inc de

Jump_000_06e3:
    dec c
    jr nz, jr_000_06e0

    pop af

Jump_000_06e7:
    ldh [$95], a

Call_000_06e9:
    ld [$2000], a
    pop hl
    pop de
    pop bc

Call_000_06ef:
    pop af

Call_000_06f0:
    ret


Call_000_06f1:
Jump_000_06f1:
    push af
    push bc
    push de
    push hl

Jump_000_06f5:
    ld b, a
    ldh a, [$95]
    push af
    ld a, h

Jump_000_06fa:
    ldh [$95], a

Call_000_06fc:
    ld [$2000], a

Call_000_06ff:
Jump_000_06ff:
    ld h, $40
    ld a, [hl+]
    ld h, [hl]

Call_000_0703:
    ld l, a

Call_000_0704:
Jump_000_0704:
    ld a, b
    add a
    add l

Jump_000_0707:
    ld l, a

Call_000_0708:
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_000_070f:
    call Call_000_0468
    pop af

Jump_000_0713:
    ldh [$95], a
    ld [$2000], a
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_071d:
    push af
    push bc
    push de

Call_000_0720:
Jump_000_0720:
    push hl
    ld b, a
    ldh a, [$95]
    push af
    ld a, h
    ldh [$95], a
    ld [$2000], a
    ld h, $40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add a
    add l
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2096
    pop af
    ldh [$95], a
    ld [$2000], a
    pop hl

Jump_000_0745:
    pop de
    pop bc
    pop af
    ret


Call_000_0749:
    push af
    push bc
    push de
    push hl
    ld b, a
    ldh a, [$95]
    push af

Call_000_0751:
    ld a, h
    ldh [$95], a
    ld [$2000], a
    ld h, $40
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, b
    add a
    add l
    ld l, a

Call_000_0760:
Jump_000_0760:
    ld a, h
    adc $00

Call_000_0763:
    ld h, a
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_03eb
    pop af

Jump_000_076b:
    ldh [$95], a

Call_000_076d:
    ld [$2000], a
    pop hl
    pop de

Jump_000_0772:
    pop bc
    pop af
    ret


Call_000_0775:
    ld c, $10

Jump_000_0777:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_0780:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]

Jump_000_0784:
    ld [de], a
    inc de
    ld a, [hl+]

Jump_000_0787:
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

Jump_000_0797:
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

Jump_000_07a1:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_07aa:
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

Call_000_07b5:
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

Call_000_07c0:
Jump_000_07c0:
    ld [de], a
    inc de
    ld a, [hl+]

Jump_000_07c3:
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

Call_000_07c7:
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
    push hl
    ld h, d
    ld l, e
    xor a
    ld [hl+], a

Jump_000_07dc:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Jump_000_07e0:
    ld [hl+], a

Jump_000_07e1:
    ld [hl+], a
    ld [hl+], a

Jump_000_07e3:
    ld [hl+], a
    ld [hl+], a

Jump_000_07e5:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Jump_000_07e8:
    ld [hl+], a
    ld [hl+], a

Jump_000_07ea:
    ld [hl+], a

Jump_000_07eb:
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Jump_000_07f0:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a

Jump_000_07f8:
    ld [hl+], a

Call_000_07f9:
Jump_000_07f9:
    ld [hl+], a
    ld [hl+], a

Call_000_07fb:
Jump_000_07fb:
    ld [hl+], a

Jump_000_07fc:
    ld d, h
    ld e, l
    pop hl

Call_000_07ff:
Jump_000_07ff:
    dec c

Call_000_0800:
Jump_000_0800:
    jp nz, Jump_000_0777

Call_000_0803:
    ret


Call_000_0804:
Jump_000_0804:
    push af
    push bc

Call_000_0806:
Jump_000_0806:
    push de
    push hl
    ldh a, [$96]
    push af
    ld a, $01

Jump_000_080d:
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d000
    ld de, $c600
    ld c, $20
    call Call_000_03eb
    ld a, $02
    ldh [$96], a

Call_000_0820:
Jump_000_0820:
    ldh [rSVBK], a
    ld hl, $c600
    ld de, $d000

Jump_000_0828:
    call Call_000_0775

Jump_000_082b:
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d200
    ld de, $c600
    ld c, $20
    call Call_000_03eb

Call_000_083c:
    ld a, $02
    ldh [$96], a

Jump_000_0840:
    ldh [rSVBK], a
    ld hl, $c600
    ld de, $d800
    call Call_000_0775
    ld hl, $d800
    ld c, $80
    call Call_000_03a7
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d400

Call_000_085c:
    ld de, $c600
    ld c, $20
    call Call_000_03eb

Call_000_0864:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c600
    ld de, $d000
    call Call_000_0775
    ld a, $01
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $d600
    ld de, $c600
    ld c, $20
    call Call_000_03eb

Call_000_0884:
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld hl, $c600
    ld de, $d800
    call Call_000_0775
    ld hl, $d800
    ld c, $80

Call_000_0898:
    call Call_000_03a7

Jump_000_089b:
    pop af
    ldh [$96], a
    ldh [rSVBK], a

Call_000_08a0:
    pop hl

Jump_000_08a1:
    pop de
    pop bc

Call_000_08a3:
    pop af
    ret


Call_000_08a5:
    ld h, $00
    bit 7, l
    ret z

    dec h
    ret


Call_000_08ac:
Jump_000_08ac:
    push af
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a

Jump_000_08b3:
    pop af
    ret


jr_000_08b5:
    ld hl, $0000
    ret


Call_000_08b9:
Jump_000_08b9:
    or a
    jr z, jr_000_08b5

    push af
    push de
    ld d, h
    ld e, l

Jump_000_08c0:
    add a

Jump_000_08c1:
    jr c, jr_000_08d7

    add a

Call_000_08c4:
Jump_000_08c4:
    jr c, jr_000_08de

Jump_000_08c6:
    add a
    jr c, jr_000_08e5

    add a
    jr c, jr_000_08ec

    add a
    jr c, jr_000_08f3

    add a
    jr c, jr_000_08fa

    add a
    jr c, jr_000_0901

    jr jr_000_0917

jr_000_08d7:
    jr z, jr_000_0908

    add hl, hl
    add a

Jump_000_08db:
    jr nc, jr_000_08e0

    add hl, de

jr_000_08de:
    jr z, jr_000_0911

Jump_000_08e0:
jr_000_08e0:
    add hl, hl
    add a
    jr nc, jr_000_08e7

Jump_000_08e4:
    add hl, de

Jump_000_08e5:
jr_000_08e5:
    jr z, jr_000_0912

Call_000_08e7:
jr_000_08e7:
    add hl, hl

Jump_000_08e8:
    add a

Jump_000_08e9:
    jr nc, jr_000_08ee

    add hl, de

jr_000_08ec:
    jr z, jr_000_0913

jr_000_08ee:
    add hl, hl

Call_000_08ef:
    add a
    jr nc, jr_000_08f5

    add hl, de

jr_000_08f3:
    jr z, jr_000_0914

jr_000_08f5:
    add hl, hl

Jump_000_08f6:
    add a
    jr nc, jr_000_08fc

    add hl, de

jr_000_08fa:
    jr z, jr_000_0915

Call_000_08fc:
jr_000_08fc:
    add hl, hl
    add a

Call_000_08fe:
Jump_000_08fe:
    jr nc, jr_000_0903

Call_000_0900:
Jump_000_0900:
    add hl, de

jr_000_0901:
    jr z, jr_000_0916

jr_000_0903:
    add hl, hl
    add hl, de
    pop de
    pop af
    ret


Call_000_0908:
jr_000_0908:
    srl h
    rr l
    rra
    ld h, l
    ld l, a
    jr jr_000_0917

jr_000_0911:
    add hl, hl

jr_000_0912:
    add hl, hl

jr_000_0913:
    add hl, hl

Call_000_0914:
jr_000_0914:
    add hl, hl

jr_000_0915:
    add hl, hl

jr_000_0916:
    add hl, hl

jr_000_0917:
    pop de

Call_000_0918:
    pop af
    ret


    push af
    push bc
    push de
    add sp, -$02
    or a
    jr nz, jr_000_0927

    ld hl, $ffff
    jr jr_000_095e

jr_000_0927:
    ld b, $ff
    ld a, e
    cpl
    ld c, a
    inc bc
    push hl

Call_000_092e:
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    pop hl
    ld de, $0000
    ld bc, $0000
    ld a, $10

jr_000_093c:
    add hl, hl
    push hl
    rl c

Call_000_0940:
    rl b

Jump_000_0942:
    sla e
    rl d
    push bc
    ld h, b
    ld l, c

Jump_000_0949:
    push hl
    ld hl, sp+$06
    ld c, [hl]

Call_000_094d:
    inc hl
    ld b, [hl]
    pop hl
    add hl, bc
    pop bc
    jr nc, jr_000_0958

    set 0, e
    ld b, h
    ld c, l

jr_000_0958:
    pop hl
    dec a
    jr nz, jr_000_093c

    ld h, d
    ld l, e

jr_000_095e:
    add sp, $02

Call_000_0960:
Jump_000_0960:
    pop de
    pop bc

Jump_000_0962:
    pop af

Call_000_0963:
    ret


    push af
    push bc
    push de
    add sp, -$02
    ld a, e
    or a
    jr nz, jr_000_0976

    ld a, d
    or a
    jr nz, jr_000_0976

    ld hl, $ffff
    jr jr_000_09a8

jr_000_0976:
    xor a
    sub e

Call_000_0978:
    ld c, a
    sbc a
    sub d
    ld b, a

Jump_000_097c:
    push hl

Call_000_097d:
    ld hl, sp+$02
    ld [hl], c

Jump_000_0980:
    inc hl
    ld [hl], b
    pop hl

Call_000_0983:
    ld de, $0000
    ld bc, $0000
    ld a, $10

jr_000_098b:
    add hl, hl
    push hl
    rl c
    rl b
    sla e
    rl d
    push af
    ld hl, sp+$04
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    add hl, bc
    jr nc, jr_000_09a2

    inc e
    ld b, h

Jump_000_09a1:
    ld c, l

jr_000_09a2:
    pop hl
    dec a
    jr nz, jr_000_098b

Jump_000_09a6:
    ld h, d
    ld l, e

jr_000_09a8:
    add sp, $02
    pop de
    pop bc
    pop af
    ret


Call_000_09ae:
    push af
    push bc
    xor a
    sub e
    ld c, a
    sbc a
    sub d
    ld b, a
    or c
    jr nz, jr_000_09bf

    ld hl, $ffff
    pop bc
    pop af
    ret


jr_000_09bf:
    ld a, h
    ld h, l
    push hl

Jump_000_09c2:
    ld hl, $0000
    scf
    adc a

Jump_000_09c7:
    rl l
    add hl, bc
    jr c, jr_000_09ce

    dec a
    add hl, de

jr_000_09ce:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_09d6

    dec a
    add hl, de

jr_000_09d6:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_09de

    dec a
    add hl, de

jr_000_09de:
    adc a
    rl l

Jump_000_09e1:
    add hl, bc

Jump_000_09e2:
    jr c, jr_000_09e6

Jump_000_09e4:
    dec a
    add hl, de

jr_000_09e6:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_09ee

Jump_000_09ec:
    dec a
    add hl, de

jr_000_09ee:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_09f6

    dec a
    add hl, de

Call_000_09f6:
jr_000_09f6:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_09fe

    dec a
    add hl, de

jr_000_09fe:
    adc a

Call_000_09ff:
    rl l

Call_000_0a01:
Jump_000_0a01:
    add hl, bc
    jr c, jr_000_0a06

    dec a
    add hl, de

jr_000_0a06:
    ld h, a
    pop af
    push hl
    ld h, $00
    scf
    adc a

Jump_000_0a0d:
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0a16

    dec a
    add hl, de

jr_000_0a16:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0a20

    dec a
    add hl, de

jr_000_0a20:
    adc a
    rl l

Call_000_0a23:
    rl h
    add hl, bc
    jr c, jr_000_0a2a

Call_000_0a28:
    dec a
    add hl, de

Jump_000_0a2a:
jr_000_0a2a:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0a34

Call_000_0a32:
    dec a
    add hl, de

jr_000_0a34:
    adc a
    rl l
    rl h

Jump_000_0a39:
    add hl, bc
    jr c, jr_000_0a3e

    dec a
    add hl, de

Jump_000_0a3e:
jr_000_0a3e:
    adc a

Jump_000_0a3f:
    rl l

Call_000_0a41:
    rl h
    add hl, bc
    jr c, jr_000_0a48

Jump_000_0a46:
    dec a
    add hl, de

Jump_000_0a48:
jr_000_0a48:
    adc a
    rl l

Call_000_0a4b:
Jump_000_0a4b:
    rl h
    add hl, bc

Jump_000_0a4e:
    jr c, jr_000_0a52

Call_000_0a50:
    dec a
    add hl, de

jr_000_0a52:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0a5c

    dec a
    add hl, de

jr_000_0a5c:
    pop hl
    ld l, a
    pop bc
    pop af

Jump_000_0a60:
    ret


Call_000_0a61:
    push af
    push de
    ldh a, [$fc]
    ld l, a
    ldh a, [$fd]

Call_000_0a68:
    ld h, a

Call_000_0a69:
    ld d, h
    ld e, l

Jump_000_0a6b:
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $3573
    add hl, de
    ld a, l
    ldh [$fc], a
    ld a, h
    ldh [$fd], a
    pop de
    pop af
    ret


Call_000_0a7b:
    push bc
    ld c, $00
    ld a, h
    or l

Jump_000_0a80:
    jr z, jr_000_0acd

    ld c, $10
    ld a, d
    or e
    jr z, jr_000_0acd

    push hl
    push de
    bit 7, d
    jr z, jr_000_0a94

    xor a
    sub e
    ld e, a
    sbc a

Call_000_0a92:
    sub d
    ld d, a

jr_000_0a94:
    bit 7, h
    jr z, jr_000_0a9e

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_000_0a9e:
    ld a, h
    cp $10
    jr c, jr_000_0aaf

    sra d

Jump_000_0aa5:
    rr e
    sra d
    rr e
    add hl, hl
    add hl, hl
    jr jr_000_0ab3

jr_000_0aaf:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl

jr_000_0ab3:
    call Call_000_09ae
    ld c, $0f
    ld a, h
    or a
    jr nz, jr_000_0acb

    ld b, l
    ld hl, $0ae1

Jump_000_0ac0:
    ld c, $ff

Jump_000_0ac2:
jr_000_0ac2:
    inc c
    ld a, [hl+]
    cp $ff
    jr z, jr_000_0acb

Call_000_0ac8:
    cp b
    jr c, jr_000_0ac2

jr_000_0acb:
    pop de
    pop hl

jr_000_0acd:
    ld a, c
    add a
    add a
    bit 7, d
    jr z, jr_000_0ad8

    ld c, a
    ld a, $80
    sub c

jr_000_0ad8:
    bit 7, h
    jr z, jr_000_0adf

    ld c, a
    xor a
    sub c

jr_000_0adf:
    pop bc

Jump_000_0ae0:
    ret


    db $00, $01, $03, $04, $06, $08, $0a, $0d, $10, $13, $18, $1e, $26, $35, $51, $a5
    db $ff

Call_000_0af2:
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    sra h
    rr l
    push hl
    push af
    call Call_000_0b3c

Jump_000_0b07:
    pop af
    ld d, h
    ld e, l

Jump_000_0b0a:
    pop hl

Call_000_0b0b:
Jump_000_0b0b:
    call Call_000_0b3a
    add hl, hl
    add hl, hl
    add hl, hl

Jump_000_0b11:
    add hl, hl
    sla e
    rl d
    sla e
    rl d
    sla e

Jump_000_0b1c:
    rl d
    sla e
    rl d
    ret


    bit 7, h
    jr z, jr_000_0b31

    push af
    xor a
    sub l
    ld l, a

Call_000_0b2b:
Jump_000_0b2b:
    sbc a
    sub h
    ld h, a
    pop af
    add $80

Call_000_0b31:
jr_000_0b31:
    push hl
    push af
    call Call_000_0b3c
    pop af
    ld d, h
    ld e, l
    pop hl

Call_000_0b3a:
    add $40

Call_000_0b3c:
    bit 7, a
    jr z, jr_000_0b4c

    and $7f
    call Call_000_0b4c
    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

Jump_000_0b4b:
    ret


Call_000_0b4c:
jr_000_0b4c:
    bit 6, a
    jr z, jr_000_0b53

    cpl
    add $81

jr_000_0b53:
    push bc
    add $69
    ld c, a
    adc $0b
    sub c
    ld b, a
    ld a, [bc]

Jump_000_0b5c:
    call Call_000_08b9
    ld bc, $0040
    add hl, bc
    add hl, hl
    sbc a
    ld l, h
    ld h, a
    pop bc
    ret


    db $00, $03, $06, $09, $0d, $10, $13, $16, $19, $1c, $1f, $22, $25, $28, $2b, $2e
    db $31, $34, $37, $3a, $3c, $3f, $42, $45, $47, $4a, $4c, $4f, $51, $54, $56, $58
    db $5b, $5d, $5f, $61, $63, $65, $67, $69, $6b, $6c, $6e, $6f, $71, $72, $74, $75
    db $76, $77, $79, $7a, $7b, $7b, $7c, $7d, $7e, $7e, $7f, $7f, $7f, $80, $80, $80
    db $80

    ld a, [hl]
    add e
    ld [hl+], a
    ld a, [hl]
    adc d
    ld [hl+], a
    ld a, [hl]
    jr nc, jr_000_0bb4

    inc [hl]

jr_000_0bb4:
    ret


Call_000_0bb5:
    bit 7, h
    jp z, Jump_000_08b9

    push af
    xor a
    sub l
    ld l, a
    sbc a
    sub h

Jump_000_0bc0:
    ld h, a

Jump_000_0bc1:
    pop af
    call Call_000_08b9
    push af

Call_000_0bc6:
    xor a
    sub l
    ld l, a

Call_000_0bc9:
    sbc a
    sub h

Jump_000_0bcb:
    ld h, a
    pop af

Jump_000_0bcd:
    ret


Call_000_0bce:
Jump_000_0bce:
    bit 7, h
    jr z, jr_000_0bec

    push de
    ld d, a
    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ld a, d
    call Call_000_0bec
    ld d, a
    xor a

Call_000_0be0:
Jump_000_0be0:
    sub l

Jump_000_0be1:
    ld l, a

Jump_000_0be2:
    sbc a

Jump_000_0be3:
    sub h
    ld h, a

Jump_000_0be5:
    ld a, d
    pop de
    ret


jr_000_0be8:
    ld hl, $0000
    ret


Call_000_0bec:
Jump_000_0bec:
jr_000_0bec:
    or a
    jr z, jr_000_0be8

    push de

Jump_000_0bf0:
    ld e, l
    ld d, h
    rra
    jr c, jr_000_0c21

    rra
    jr c, jr_000_0c09

    rra
    jr c, jr_000_0c0d

    rra
    jr c, jr_000_0c11

Jump_000_0bfe:
    rra
    jr c, jr_000_0c15

    rra
    jr c, jr_000_0c19

    rra

Call_000_0c05:
    jr c, jr_000_0c1d

Jump_000_0c07:
    jr jr_000_0c59

jr_000_0c09:
    srl h

Jump_000_0c0b:
    jr jr_000_0c2b

jr_000_0c0d:
    srl h
    jr jr_000_0c33

jr_000_0c11:
    srl h
    jr jr_000_0c3b

jr_000_0c15:
    srl h
    jr jr_000_0c43

jr_000_0c19:
    srl h
    jr jr_000_0c4b

jr_000_0c1d:
    srl h
    jr jr_000_0c53

jr_000_0c21:
    srl h
    rr l
    rra
    jr nc, jr_000_0c29

    add hl, de

Call_000_0c29:
jr_000_0c29:
    rr h

jr_000_0c2b:
    rr l
    rra
    jr nc, jr_000_0c31

Jump_000_0c30:
    add hl, de

jr_000_0c31:
    rr h

jr_000_0c33:
    rr l
    rra
    jr nc, jr_000_0c39

    add hl, de

jr_000_0c39:
    rr h

jr_000_0c3b:
    rr l
    rra
    jr nc, jr_000_0c41

Jump_000_0c40:
    add hl, de

jr_000_0c41:
    rr h

jr_000_0c43:
    rr l
    rra
    jr nc, jr_000_0c49

    add hl, de

jr_000_0c49:
    rr h

jr_000_0c4b:
    rr l
    rra
    jr nc, jr_000_0c51

    add hl, de

jr_000_0c51:
    rr h

jr_000_0c53:
    rr l
    rra
    jr nc, jr_000_0c59

    add hl, de

jr_000_0c59:
    rr h
    rr l
    rra
    pop de
    ret


Call_000_0c60:
    xor a
    sub l

Jump_000_0c62:
    ld l, a
    sbc a
    sub h
    ld h, a
    ret


Call_000_0c67:
    xor a
    sub e

Call_000_0c69:
Jump_000_0c69:
    ld e, a
    sbc a
    sub d

Jump_000_0c6c:
    ld d, a
    ret


    bit 7, h
    jr z, jr_000_0cb5

    push af
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    sbc $00
    cpl

Jump_000_0c7c:
    ld h, a
    pop af
    call Call_000_0cb5
    push af
    ld a, l
    cpl
    add $01
    ld l, a
    ld a, h
    sbc $00
    cpl
    ld h, a

Call_000_0c8c:
Jump_000_0c8c:
    pop af
    ret


Call_000_0c8e:
    ld a, h
    xor d
    ldh [$a7], a
    bit 7, h
    jr z, jr_000_0c9c

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_000_0c9c:
    bit 7, d
    jr z, jr_000_0ca6

    xor a

Call_000_0ca1:
    sub e
    ld e, a
    sbc a

Jump_000_0ca4:
    sub d
    ld d, a

jr_000_0ca6:
    call Call_000_0cb5
    ldh a, [$a7]
    bit 7, a

Jump_000_0cad:
    ret z

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ret


Call_000_0cb5:
jr_000_0cb5:
    push de
    push bc
    ld c, d
    ld a, e
    ld b, $00
    push hl
    add a
    jr c, jr_000_0cdd

    jr z, jr_000_0cd8

Call_000_0cc1:
Jump_000_0cc1:
    ld e, l
    ld d, h
    add a
    jr c, jr_000_0ce5

    add a

Call_000_0cc7:
    jr c, jr_000_0ceb

    add a
    jr c, jr_000_0cf1

Jump_000_0ccc:
    add a
    jr c, jr_000_0cf7

    add a
    jr c, jr_000_0cfd

    add a
    jr c, jr_000_0d03

    xor a
    jr jr_000_0d09

jr_000_0cd8:
    ld hl, $0000

Jump_000_0cdb:
    jr jr_000_0d09

jr_000_0cdd:
    ld e, l
    ld d, h
    add hl, hl

Jump_000_0ce0:
    adc a

Jump_000_0ce1:
    jr nc, jr_000_0ce5

    add hl, de

Jump_000_0ce4:
    adc b

jr_000_0ce5:
    add hl, hl
    adc a
    jr nc, jr_000_0ceb

Jump_000_0ce9:
    add hl, de

Jump_000_0cea:
    adc b

jr_000_0ceb:
    add hl, hl
    adc a
    jr nc, jr_000_0cf1

    add hl, de

Jump_000_0cf0:
    adc b

jr_000_0cf1:
    add hl, hl
    adc a
    jr nc, jr_000_0cf7

    add hl, de
    adc b

jr_000_0cf7:
    add hl, hl
    adc a
    jr nc, jr_000_0cfd

    add hl, de

Call_000_0cfc:
    adc b

jr_000_0cfd:
    add hl, hl

Jump_000_0cfe:
    adc a

Call_000_0cff:
Jump_000_0cff:
    jr nc, jr_000_0d03

Jump_000_0d01:
    add hl, de
    adc b

jr_000_0d03:
    add hl, hl
    adc a
    jr nc, jr_000_0d09

Call_000_0d07:
    add hl, de
    adc b

jr_000_0d09:
    ld e, h
    ld d, a

Jump_000_0d0b:
    ld a, c

Jump_000_0d0c:
    ld c, l

Call_000_0d0d:
Jump_000_0d0d:
    pop hl

Jump_000_0d0e:
    push de

Jump_000_0d0f:
    add a
    jr c, jr_000_0d30

    jr z, jr_000_0d2b

    ld e, l
    ld d, h
    add a
    jr c, jr_000_0d38

    add a
    jr c, jr_000_0d3e

    add a
    jr c, jr_000_0d44

    add a
    jr c, jr_000_0d4a

    add a
    jr c, jr_000_0d50

    add a
    jr c, jr_000_0d56

    xor a
    jr jr_000_0d5c

jr_000_0d2b:
    ld hl, $0000
    jr jr_000_0d5c

Call_000_0d30:
Jump_000_0d30:
jr_000_0d30:
    ld e, l
    ld d, h

Call_000_0d32:
    add hl, hl
    adc a
    jr nc, jr_000_0d38

    add hl, de
    adc b

jr_000_0d38:
    add hl, hl
    adc a
    jr nc, jr_000_0d3e

    add hl, de
    adc b

jr_000_0d3e:
    add hl, hl
    adc a
    jr nc, jr_000_0d44

    add hl, de
    adc b

jr_000_0d44:
    add hl, hl
    adc a
    jr nc, jr_000_0d4a

    add hl, de
    adc b

jr_000_0d4a:
    add hl, hl
    adc a
    jr nc, jr_000_0d50

    add hl, de
    adc b

jr_000_0d50:
    add hl, hl
    adc a
    jr nc, jr_000_0d56

    add hl, de
    adc b

jr_000_0d56:
    add hl, hl
    adc a
    jr nc, jr_000_0d5c

    add hl, de

Jump_000_0d5b:
    adc b

jr_000_0d5c:
    pop de
    add hl, de
    adc b
    ld b, a
    ld a, c

Call_000_0d61:
    ldh [$a8], a
    ld a, l
    ldh [$a9], a
    ld a, h

Jump_000_0d67:
    ld l, h
    ldh [$aa], a
    ld a, b

Jump_000_0d6b:
    ld h, b
    ldh [$ab], a
    pop bc
    pop de
    ret


    push bc
    push de
    add sp, -$02
    ldh [$ae], a

Jump_000_0d77:
    ld a, h
    ldh [$ad], a
    ld a, l
    ldh [$ac], a
    ldh a, [$ae]
    ld h, a
    ldh a, [$ad]
    ld l, a
    ld a, e
    or d
    jr nz, jr_000_0d8d

    ld a, $ff
    ld h, a
    ld l, a
    jr jr_000_0dd6

jr_000_0d8d:
    ld a, d
    cpl
    ld b, a
    ld a, e
    cpl
    ld c, a
    inc bc
    push hl
    ld hl, sp+$02
    ld [hl], c
    inc hl
    ld [hl], b
    pop hl
    ld de, $0000
    ld bc, $0000
    ld a, $18

jr_000_0da3:
    cp $10
    jr nz, jr_000_0db2

    push af
    ldh a, [$ac]
    ld l, a
    ld a, e
    ldh [$ae], a
    ld de, $0000
    pop af

jr_000_0db2:
    add hl, hl
    push hl
    rl c
    rl b
    sla e
    rl d
    push bc
    ld h, b
    ld l, c
    push hl
    ld hl, sp+$06
    ld c, [hl]
    inc hl
    ld b, [hl]
    pop hl
    add hl, bc
    pop bc
    jr nc, jr_000_0dce

    set 0, e
    ld b, h
    ld c, l

Call_000_0dce:
jr_000_0dce:
    pop hl
    dec a
    jr nz, jr_000_0da3

    ld h, d
    ld l, e
    ldh a, [$ae]

jr_000_0dd6:
    add sp, $02
    pop de
    pop bc
    ret


Call_000_0ddb:
Jump_000_0ddb:
    push bc
    ldh [$ac], a
    xor a
    sub e

Call_000_0de0:
Jump_000_0de0:
    ld c, a

Call_000_0de1:
Jump_000_0de1:
    sbc a
    sub d

Jump_000_0de3:
    ld b, a

Jump_000_0de4:
    or c

Jump_000_0de5:
    jr nz, jr_000_0ded

Call_000_0de7:
    ld a, $ff
    ld h, a
    ld l, a

Jump_000_0deb:
    pop bc
    ret


jr_000_0ded:
    ld a, l
    push af
    ldh a, [$ac]
    push hl

Call_000_0df2:
Jump_000_0df2:
    scf
    ld hl, $0000
    adc a
    rl l

Jump_000_0df9:
    add hl, bc

Call_000_0dfa:
    jr c, jr_000_0dfe

Jump_000_0dfc:
    dec a
    add hl, de

jr_000_0dfe:
    adc a

Jump_000_0dff:
    rl l
    add hl, bc
    jr c, jr_000_0e06

    dec a

Jump_000_0e05:
    add hl, de

jr_000_0e06:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_0e0e

Jump_000_0e0c:
    dec a
    add hl, de

Call_000_0e0e:
Jump_000_0e0e:
jr_000_0e0e:
    adc a

Call_000_0e0f:
    rl l
    add hl, bc
    jr c, jr_000_0e16

    dec a
    add hl, de

jr_000_0e16:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_0e1e

    dec a
    add hl, de

jr_000_0e1e:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_0e26

    dec a
    add hl, de

jr_000_0e26:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_0e2e

    dec a

Jump_000_0e2d:
    add hl, de

jr_000_0e2e:
    adc a
    rl l
    add hl, bc
    jr c, jr_000_0e36

    dec a
    add hl, de

jr_000_0e36:
    ldh [$ae], a
    pop af
    ld h, $00

Jump_000_0e3b:
    scf
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e46

    dec a
    add hl, de

jr_000_0e46:
    adc a
    rl l
    rl h
    add hl, bc

Jump_000_0e4c:
    jr c, jr_000_0e50

    dec a
    add hl, de

jr_000_0e50:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e5a

    dec a
    add hl, de

jr_000_0e5a:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e64

    dec a

Call_000_0e63:
    add hl, de

jr_000_0e64:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e6e

    dec a
    add hl, de

jr_000_0e6e:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e78

    dec a
    add hl, de

jr_000_0e78:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e82

Call_000_0e80:
    dec a
    add hl, de

jr_000_0e82:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e8c

    dec a
    add hl, de

jr_000_0e8c:
    ldh [$ad], a
    pop af
    scf
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0e9a

    dec a
    add hl, de

jr_000_0e9a:
    adc a
    rl l
    rl h
    add hl, bc

Call_000_0ea0:
    jr c, jr_000_0ea4

Call_000_0ea2:
    dec a

Jump_000_0ea3:
    add hl, de

jr_000_0ea4:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0eae

    dec a
    add hl, de

jr_000_0eae:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0eb8

    dec a
    add hl, de

jr_000_0eb8:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0ec2

Jump_000_0ec0:
    dec a
    add hl, de

jr_000_0ec2:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0ecc

    dec a
    add hl, de

jr_000_0ecc:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0ed6

    dec a
    add hl, de

jr_000_0ed6:
    adc a
    rl l
    rl h
    add hl, bc
    jr c, jr_000_0ee0

    dec a
    add hl, de

Call_000_0ee0:
Jump_000_0ee0:
jr_000_0ee0:
    ld l, a

Call_000_0ee1:
Jump_000_0ee1:
    ldh a, [$ad]

Call_000_0ee3:
Jump_000_0ee3:
    ld h, a
    ldh a, [$ae]
    pop bc

Jump_000_0ee7:
    ret


Call_000_0ee8:
    push af
    add a
    jr c, jr_000_0ef8

    add $aa
    ld l, a
    adc $0f

Call_000_0ef1:
    sub l
    ld h, a

Call_000_0ef3:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    pop af
    ret


jr_000_0ef8:
    add $aa
    ld l, a

Jump_000_0efb:
    adc $10
    sub l

Call_000_0efe:
Jump_000_0efe:
    ld h, a

Call_000_0eff:
Jump_000_0eff:
    ld a, [hl+]
    ld h, [hl]

Call_000_0f01:
    ld l, a

Jump_000_0f02:
    pop af
    ret


Call_000_0f04:
    push bc

Jump_000_0f05:
    push de
    push hl
    ld a, l

Jump_000_0f08:
    cpl
    ld c, a
    ld a, h
    cpl

Jump_000_0f0c:
    ld b, a
    and c
    inc a

Jump_000_0f0f:
    jp z, Jump_000_0fa5

    ld de, $4000
    ld h, e

Jump_000_0f16:
    ld a, d
    add b
    jr c, jr_000_0f21

    ld b, a
    set 7, h
    ld a, $60
    jr jr_000_0f23

Jump_000_0f21:
jr_000_0f21:
    ld a, $e0

jr_000_0f23:
    add d
    srl a
    ld d, a
    add b
    jr c, jr_000_0f31

    ld b, a
    set 6, h
    ld a, $18
    jr jr_000_0f33

jr_000_0f31:
    ld a, $f8

Call_000_0f33:
jr_000_0f33:
    add d
    srl a
    ld d, a
    add b
    jr c, jr_000_0f41

    ld b, a
    set 5, h
    ld a, $06
    jr jr_000_0f43

jr_000_0f41:
    ld a, $fe

jr_000_0f43:
    add d
    srl a

Call_000_0f46:
    ld d, a
    ld a, h
    ld l, e
    ld h, d
    add hl, bc
    jr c, jr_000_0f56

    ld c, l
    ld b, h
    set 4, a
    ld hl, $0180
    jr jr_000_0f59

jr_000_0f56:
    ld hl, $ff80

jr_000_0f59:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h

Call_000_0f60:
Jump_000_0f60:
    add hl, bc
    jr c, jr_000_0f6c

    ld c, l
    ld b, h
    set 3, a
    ld hl, $0060
    jr jr_000_0f6f

jr_000_0f6c:
    ld hl, $ffe0

jr_000_0f6f:
    add hl, de
    srl h

Call_000_0f72:
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_0f82

    ld c, l
    ld b, h
    set 2, a
    ld hl, $0018

Jump_000_0f80:
    jr jr_000_0f85

jr_000_0f82:
    ld hl, $fff8

jr_000_0f85:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_0f98

    ld c, l
    ld b, h
    set 1, a
    ld hl, $0006
    jr jr_000_0f9b

jr_000_0f98:
    ld hl, $fffe

jr_000_0f9b:
    add hl, de
    srl h
    rr l

Jump_000_0fa0:
    ld e, l
    ld d, h
    add hl, bc
    sbc $ff

Jump_000_0fa5:
    pop hl
    pop de
    pop bc
    ret


    nop

    db $00, $00, $01, $00, $04, $00, $09, $00, $10, $00

    add hl, de

Call_000_0fb5:
    nop

    db $24, $00, $31, $00, $40, $00, $51, $00, $64, $00, $79, $00, $90, $00, $a9, $00
    db $c4, $00, $e1, $00, $00, $01, $21, $01, $44, $01, $69, $01, $90, $01, $b9, $01
    db $e4, $01, $11, $02, $40, $02, $71, $02, $a4, $02, $d9, $02, $10, $03, $49, $03
    db $84, $03, $c1, $03, $00, $04, $41, $04, $84, $04, $c9, $04, $10, $05, $59, $05
    db $a4, $05, $f1, $05, $40, $06, $91, $06, $e4, $06, $39, $07, $90, $07, $e9, $07
    db $44, $08, $a1, $08, $00, $09, $61, $09, $c4, $09, $29, $0a, $90, $0a, $f9, $0a

    ld h, h
    dec bc

    db $d1, $0b, $40, $0c, $b1, $0c, $24, $0d, $99, $0d, $10, $0e, $89, $0e

Call_000_1026:
    inc b
    rrca
    add c
    rrca
    nop
    db $10

    db $81, $10, $04, $11, $89, $11, $10, $12, $99, $12, $24, $13, $b1, $13, $40, $14

    pop de
    inc d

    db $64, $15, $f9, $15, $90, $16, $29, $17, $c4, $17, $61, $18, $00, $19

Call_000_104c:
    and c
    add hl, de

    db $44, $1a, $e9, $1a

Call_000_1052:
    sub b
    dec de

    db $39, $1c, $e4, $1c, $91, $1d, $40, $1e

    pop af
    db $1e

    db $a4, $1f

    ld e, c
    db $20

    db $10, $21, $c9, $21, $84, $22, $41, $23

    nop
    inc h

Jump_000_106c:
    pop bc
    inc h

    db $84, $25, $49, $26, $10, $27, $d9, $27, $a4, $28, $71, $29, $40, $2a

    db $11
    dec hl

    db $e4, $2b, $b9, $2c, $90, $2d, $69, $2e, $44, $2f, $21, $30, $00, $31

    pop hl
    db $31

    db $c4, $32, $a9, $33

    sub b
    inc [hl]

Jump_000_1094:
    ld a, c
    dec [hl]

Jump_000_1096:
    ld h, h
    db $36

    db $51, $37, $40, $38

    ld sp, $2439
    ld a, [hl-]

    db $19, $3b

    db $10

Call_000_10a3:
    inc a
    add hl, bc
    dec a
    inc b
    db $3e

    db $01, $3f

    nop
    ld b, b
    ld bc, $0441
    ld b, d
    add hl, bc
    ld b, e
    db $10
    ld b, h
    add hl, de
    ld b, l
    inc h
    ld b, [hl]
    ld sp, $4047
    ld c, b
    ld d, c
    ld c, c
    ld h, h
    ld c, d

Jump_000_10c0:
    ld a, c

Call_000_10c1:
    ld c, e
    sub b
    ld c, h

Jump_000_10c4:
    xor c
    ld c, l
    call nz, $e14e
    ld c, a
    nop
    ld d, c

Call_000_10cc:
    ld hl, $4452

Jump_000_10cf:
    ld d, e
    ld l, c
    ld d, h
    sub b
    ld d, l
    cp c
    ld d, [hl]
    db $e4
    ld d, a
    ld de, $4059

Jump_000_10db:
    ld e, d
    ld [hl], c
    ld e, e
    and h
    ld e, h

Call_000_10e0:
    reti


Call_000_10e1:
Jump_000_10e1:
    ld e, l

Jump_000_10e2:
    db $10

Jump_000_10e3:
    ld e, a

Jump_000_10e4:
    ld c, c
    ld h, b
    add h
    ld h, c

Call_000_10e8:
    pop bc
    ld h, d
    nop
    ld h, h
    ld b, c
    ld h, l
    add h
    ld h, [hl]
    ret


Call_000_10f1:
    ld h, a

Jump_000_10f2:
    db $10
    ld l, c
    ld e, c
    ld l, d
    and h
    ld l, e
    pop af
    ld l, h
    ld b, b
    ld l, [hl]

Call_000_10fc:
Jump_000_10fc:
    sub c
    ld l, a
    db $e4

Call_000_10ff:
Jump_000_10ff:
    ld [hl], b

Call_000_1100:
Jump_000_1100:
    add hl, sp
    ld [hl], d
    sub b
    ld [hl], e

Call_000_1104:
    jp hl


    ld [hl], h
    ld b, h
    db $76
    and c
    ld [hl], a
    nop
    ld a, c

Jump_000_110c:
    ld h, c
    ld a, d
    call nz, Call_000_297b
    ld a, l
    sub b
    ld a, [hl]
    ld sp, hl

Jump_000_1115:
    ld a, a
    ld h, h
    add c
    pop de
    add d
    ld b, b
    add h
    or c
    add l
    inc h
    add a
    sbc c
    adc b
    db $10
    adc d
    adc c
    adc e
    inc b
    adc l
    add c
    adc [hl]
    nop
    sub b
    add c
    sub c
    inc b
    sub e
    adc c
    sub h
    db $10
    sub [hl]
    sbc c
    sub a
    inc h
    sbc c
    or c
    sbc d
    ld b, b
    sbc h
    pop de
    sbc l
    ld h, h
    sbc a
    ld sp, hl

Jump_000_1141:
    and b
    sub b
    and d
    add hl, hl
    and h
    call nz, $61a5
    and a
    nop
    xor c
    and c

Jump_000_114d:
    xor d
    ld b, h
    xor h
    jp hl


    xor l
    sub b
    xor a
    add hl, sp
    or c
    db $e4
    or d
    sub c
    or h
    ld b, b
    or [hl]
    pop af
    or a
    and h
    cp c
    ld e, c

Call_000_1161:
    cp e
    db $10
    cp l
    ret


    cp [hl]
    add h
    ret nz

    ld b, c
    jp nz, $c400

    pop bc
    push bc
    add h
    rst $00
    ld c, c
    ret


    db $10
    set 3, c
    call z, $cea4
    ld [hl], c
    ret nc

    ld b, b
    jp nc, $d411

    db $e4
    push de
    cp c
    rst $10
    sub b
    reti


    ld l, c
    db $db
    ld b, h
    db $dd
    ld hl, $00df
    pop hl
    pop hl
    ld [c], a
    call nz, $a9e4
    and $90
    add sp, $79

Jump_000_1195:
    ld [$ec64], a
    ld d, c
    xor $40
    ldh a, [$31]
    ld a, [c]
    inc h
    db $f4

Call_000_11a0:
    add hl, de
    or $10
    ld hl, sp+$09
    ld a, [$fc04]
    ld bc, $fffe
    rst $38

Call_000_11ac:
    bit 7, h
    jr z, jr_000_11ba

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ld a, $80
    add b
    ld b, a

Call_000_11ba:
jr_000_11ba:
    ld a, c
    and $f0
    ld c, a
    push hl

Jump_000_11bf:
    push bc
    call Call_000_11cb
    pop bc
    ld d, h
    ld e, l
    pop hl

Call_000_11c7:
    ld a, b
    add $40
    ld b, a

Call_000_11cb:
    bit 7, b
    jr z, jr_000_11db

    res 7, b
    call Call_000_11db
    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ret


Call_000_11db:
Jump_000_11db:
jr_000_11db:
    bit 6, b
    jr z, jr_000_11e6

    xor a
    sub c

Call_000_11e1:
Jump_000_11e1:
    ld c, a
    ld a, $80
    sbc b
    ld b, a

jr_000_11e6:
    push de
    add hl, hl
    ld e, l
    ld d, h
    ld a, c

Jump_000_11eb:
    sra b
    rra
    sra b
    rra
    sra b
    rra
    ld c, a
    ld hl, $1201
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_0cb5
    pop de

Jump_000_1200:
    ret


    db $00, $00, $32, $00, $65, $00, $97, $00, $c9, $00, $fc, $00, $2e, $01, $60, $01
    db $93, $01, $c5, $01, $f7, $01, $2a, $02, $5c, $02, $8e, $02, $c1, $02, $f3, $02
    db $25, $03

    ld e, b
    inc bc

    db $8a, $03, $bc, $03, $ef, $03, $21, $04, $53, $04, $85, $04

    cp b
    inc b

    db $ea, $04, $1c, $05

    ld c, a
    dec b

    db $81, $05, $b3, $05

    and $05

    db $18, $06, $4a, $06, $7c, $06, $af, $06, $e1, $06, $13, $07, $45, $07, $78, $07
    db $aa, $07, $dc, $07

    ld c, $08

    db $41, $08, $73, $08, $a5, $08

Jump_000_125b:
    rst $10
    ld [$0909], sp
    inc a
    add hl, bc

    db $6e, $09

    and b
    add hl, bc
    jp nc, Jump_000_0409

Call_000_1268:
    ld a, [bc]
    scf
    ld a, [bc]
    ld l, c
    ld a, [bc]
    sbc e
    ld a, [bc]
    db $cd
    ld a, [bc]

    db $ff, $0a

    db $31
    dec bc

    db $64, $0b

    sub [hl]
    dec bc

    db $c8, $0b, $fa, $0b, $2c, $0c

Call_000_127f:
    ld e, [hl]
    inc c

    db $90, $0c

    db $c2
    inc c

    db $f4, $0c

    ld h, $0d

    db $59, $0d, $8b, $0d, $bd, $0d

    rst $28
    dec c

    db $21, $0e, $53, $0e, $85, $0e

    or a
    db $0e

    db $e9, $0e

    dec de
    rrca

jr_000_129d:
    ld c, l
    rrca

    db $7f, $0f, $b1, $0f, $e3, $0f

    dec d
    db $10

    db $46, $10

    ld a, b
    db $10

    db $aa, $10

    db $dc
    db $10

    db $0e, $11

    ld b, b
    db $11

    db $72, $11, $a4, $11, $d6, $11

    rlca
    ld [de], a
    add hl, sp
    ld [de], a

    db $6b, $12

    sbc l
    ld [de], a

    db $cf, $12

Call_000_12c3:
    nop

Call_000_12c4:
    inc de
    ld [hl-], a
    inc de

    db $64, $13, $96, $13, $c7, $13

    ld sp, hl
    inc de
    dec hl
    inc d

    db $5d, $14

    adc [hl]
    inc d
    ret nz

    inc d

    db $f2, $14

    inc hl
    dec d

    db $55, $15

    add a
    dec d

    db $b8, $15, $ea, $15, $1b, $16

    ld c, l
    ld d, $7e
    db $16

    db $b0, $16

    ld [c], a
    db $16

    db $13, $17, $45, $17, $76, $17

    xor b
    rla
    reti


    rla
    ld a, [bc]
    jr jr_000_1336

    jr jr_000_1369

    db $18

    db $9f, $18

Jump_000_12ff:
    ret nc

    db $18

    db $01, $19

Call_000_1303:
jr_000_1303:
    inc sp
    add hl, de
    ld h, h
    add hl, de
    sub l
    add hl, de

    db $c7, $19

    ld hl, sp+$19
    add hl, hl
    ld a, [de]
    ld e, e
    ld a, [de]
    adc h
    ld a, [de]
    cp l
    ld a, [de]
    xor $1a
    rra

Call_000_1318:
    dec de
    ld d, c
    dec de
    add d
    dec de

    db $b3, $1b

    db $e4
    dec de

    db $15, $1c

    ld b, [hl]

Call_000_1324:
    inc e
    ld [hl], a
    inc e
    xor c
    inc e
    db $da
    inc e

    db $0b, $1d

    inc a
    dec e

jr_000_132f:
    ld l, l
    dec e
    sbc [hl]
    dec e

    db $cf, $1d

    rst $38

jr_000_1336:
    dec e
    jr nc, jr_000_1357

    ld h, c
    db $1e

    db $92, $1e

    db $c3
    db $1e

    db $f4, $1e, $25, $1f

    ld d, [hl]
    rra
    add [hl]
    rra

    db $b7, $1f

    add sp, $1f
    add hl, de
    jr nz, @+$4b

    jr nz, @+$7c

    jr nz, @-$53

    jr nz, jr_000_132f

    db $20

    db $0c, $21

jr_000_1357:
    dec a
    ld hl, $216d
    sbc [hl]
    ld hl, $21ce
    rst $38
    db $21

    db $2f, $22

    ld h, b
    ld [hl+], a
    sub b
    ld [hl+], a
    pop bc
    ld [hl+], a

jr_000_1369:
    pop af
    ld [hl+], a
    ld [hl+], a

jr_000_136c:
    inc hl

    db $52, $23

    add d
    inc hl

    db $b3, $23

    db $e3
    inc hl
    inc de
    inc h

    db $44, $24

    ld [hl], h
    inc h
    and h
    inc h

jr_000_137d:
    db $d4
    inc h

    db $05, $25, $35, $25

    ld h, l
    dec h
    sub l
    dec h
    push bc
    dec h

    db $f5, $25, $25, $26

Jump_000_138d:
    ld d, l
    ld h, $85
    db $26

    db $b5, $26, $e5, $26, $15, $27, $45, $27, $75, $27, $a5, $27, $d5, $27, $05, $28
    db $34, $28, $64, $28

Jump_000_13a5:
    sub h
    jr z, jr_000_136c

    db $28

    db $f3, $28, $23, $29, $53, $29, $82, $29

    or d
    add hl, hl

    db $e2, $29, $11, $2a, $41, $2a, $70, $2a, $a0, $2a, $cf, $2a, $fe, $2a, $2e, $2b
    db $5d, $2b, $8d, $2b, $bc, $2b, $eb, $2b

Jump_000_13cb:
    ld a, [de]
    inc l

    db $4a, $2c, $79, $2c, $a8, $2c, $d7, $2c, $06, $2d, $35, $2d, $65, $2d, $94, $2d
    db $c3, $2d, $f2, $2d, $21, $2e, $50, $2e, $7e, $2e, $ad, $2e, $dc, $2e, $0b, $2f

    ld a, [hl-]
    cpl

    db $69, $2f

    sub a
    cpl

    db $c6, $2f

    push af
    cpl

    db $23, $30

    ld d, d
    jr nc, jr_000_137d

    db $30

    db $af, $30

    sbc $30

    db $0c, $31, $3b, $31

    ld l, c
    db $31

    db $98, $31, $c6, $31

    db $f4
    ld sp, $3223

    db $51, $32

    ld a, a
    ld [hl-], a

    db $ad, $32

    db $dc
    ld [hl-], a

    db $0a, $33

    jr c, jr_000_144e

    db $66, $33, $94, $33

    db $c2

Call_000_1420:
    inc sp

    db $f0, $33

    ld e, $34

    db $4c, $34

    ld a, d
    inc [hl]

Call_000_1429:
    xor b
    inc [hl]
    sub $34

Call_000_142d:
    inc b
    dec [hl]
    ld sp, $5f35
    dec [hl]
    adc l
    dec [hl]
    cp e
    dec [hl]
    add sp, $35

    db $16, $36

    ld b, h
    ld [hl], $71
    ld [hl], $9f
    db $36

    db $cc, $36

    ld a, [$2736]

jr_000_1446:
    scf
    ld d, h
    scf

    db $82, $37

    xor a
    scf
    db $dd

jr_000_144e:
    scf
    ld a, [bc]
    jr c, jr_000_1489

    jr c, jr_000_14b8

    jr c, @-$6d

    jr c, @-$3f

    jr c, jr_000_1446

    jr c, jr_000_1475

    add hl, sp
    ld b, [hl]
    add hl, sp
    ld [hl], e
    add hl, sp

    db $a0, $39

    call $fa39
    add hl, sp
    ld h, $3a

Call_000_1469:
    ld d, e
    ld a, [hl-]

Call_000_146b:
    add b
    ld a, [hl-]
    xor l
    ld a, [hl-]
    reti


    ld a, [hl-]
    ld b, $3b
    inc sp
    dec sp

jr_000_1475:
    ld e, a
    dec sp
    adc h
    dec sp
    cp c
    dec sp
    push hl
    dec sp
    ld de, $3e3c
    inc a

    db $6a, $3c

    sub a

Call_000_1484:
    inc a

    db $c3, $3c

    rst $28
    inc a

jr_000_1489:
    inc e
    dec a
    ld c, b

Jump_000_148c:
    dec a
    ld [hl], h
    dec a

    db $a0, $3d

    db $cc
    dec a

    db $f8, $3d

    inc h
    ld a, $50
    db $3e

    db $7c, $3e

    xor b
    ld a, $d4
    db $3e

    db $00, $3f, $2c, $3f

    ld d, a

Call_000_14a4:
    ccf
    add e

Call_000_14a6:
    ccf

    db $af, $3f

    jp c, Jump_000_063f

    ld b, b
    ld [hl-], a
    ld b, b

    db $5d, $40

    adc c
    ld b, b
    or h
    ld b, b

    db $df, $40

    dec bc

jr_000_14b8:
    ld b, c
    ld [hl], $41
    ld h, c
    ld b, c

    db $8d, $41

    cp b
    ld b, c

    db $e3, $41

    ld c, $42

    db $39, $42, $64, $42

    adc a
    ld b, d
    cp d
    ld b, d
    push hl

Call_000_14ce:
    ld b, d
    db $10
    ld b, e

    db $3b, $43

    ld h, [hl]
    ld b, e
    sub c
    ld b, e
    cp e
    ld b, e

    db $e6, $43

    db $11
    ld b, h

    db $3b, $44

    ld h, [hl]
    ld b, h

    db $90, $44

    cp e

Call_000_14e4:
    ld b, h
    push hl
    ld b, h

    db $10, $45

Call_000_14e9:
    ld a, [hl-]
    ld b, l

Call_000_14eb:
    ld h, h
    ld b, l
    adc a
    ld b, l
    cp c
    ld b, l

    db $e3, $45

    dec c
    ld b, [hl]
    scf
    ld b, [hl]
    ld h, c
    ld b, [hl]

    db $8b, $46

    or l
    ld b, [hl]
    rst $18
    ld b, [hl]
    add hl, bc

Jump_000_1500:
    ld b, a

    db $33, $47, $5d, $47

    add a
    ld b, a
    or b
    ld b, a
    jp c, Jump_000_0447

    ld c, b

    db $2d, $48

Jump_000_150f:
    ld d, a
    ld c, b
    add b
    ld c, b
    xor d
    ld c, b

    db $d3, $48

    db $fd
    ld c, b
    ld h, $49
    ld c, a
    ld c, c
    ld a, b
    ld c, c

    db $a2, $49, $cb, $49, $f4, $49

    dec e
    ld c, d

    db $46, $4a

    ld l, a
    ld c, d
    sbc b
    ld c, d
    pop bc
    ld c, d

    db $ea, $4a, $12, $4b, $3b, $4b

    ld h, h
    ld c, e

    db $8c, $4b

    or l
    ld c, e
    sbc $4b
    ld b, $4c

    db $2f, $4c, $57, $4c

    ld a, a
    ld c, h
    xor b
    ld c, h

    db $d0, $4c

    ld hl, sp+$4c
    jr nz, @+$4f

    ld c, c
    ld c, l

    db $71, $4d, $99, $4d

    pop bc
    ld c, l

    db $e9, $4d

    ld de, $394e
    ld c, [hl]
    ld h, b
    ld c, [hl]

    db $88, $4e

    or b
    ld c, [hl]

    db $d8, $4e, $ff, $4e

    daa
    ld c, a
    ld c, [hl]
    ld c, a
    db $76
    ld c, a
    sbc l
    ld c, a

    db $c5, $4f

    db $ec
    ld c, a

    db $13, $50

    ld a, [hl-]
    ld d, b

    db $62, $50, $89, $50

    or b
    ld d, b
    rst $10
    ld d, b
    cp $50

    db $25, $51, $4c, $51

    ld [hl], e

Jump_000_1584:
    ld d, c
    sbc c
    ld d, c

    db $c0, $51

    rst $20
    ld d, c
    ld c, $52

Jump_000_158d:
    inc [hl]
    ld d, d

    db $5b, $52, $81, $52

    xor b
    ld d, d
    adc $52
    db $f4
    ld d, d

    db $1b, $53

    ld b, c
    ld d, e
    ld h, a
    ld d, e
    adc l
    ld d, e

    db $b4, $53

    jp c, Jump_000_0053

    ld d, h

    db $26, $54, $4b, $54

    ld [hl], c
    ld d, h
    sub a

Jump_000_15ae:
    ld d, h
    cp l
    ld d, h

    db $e3, $54, $08, $55

    ld l, $55

    db $53, $55

    ld a, c
    ld d, l
    sbc [hl]
    ld d, l
    db $c4
    ld d, l

    db $e9, $55, $0e, $56

Call_000_15c3:
    inc [hl]
    ld d, [hl]

    db $59, $56

    ld a, [hl]
    ld d, [hl]
    and e
    ld d, [hl]
    ret z

    ld d, [hl]

    db $ed, $56

Call_000_15cf:
    ld [de], a
    ld d, a
    scf
    ld d, a

Jump_000_15d3:
    ld e, h
    ld d, a

    db $80, $57

Call_000_15d7:
    and l
    ld d, a
    jp z, $ee57

    ld d, a

    db $13, $58

    scf
    ld e, b

    db $5c, $58

    add b

Jump_000_15e4:
    ld e, b

    db $a4, $58

    ret


    ld e, b
    db $ed

Jump_000_15ea:
    ld e, b
    db $11
    ld e, c

    db $35, $59

    ld e, c
    ld e, c

    db $7d, $59

    and c
    ld e, c

    db $c5, $59, $e9, $59

    dec c
    ld e, d
    db $31
    ld e, d

    db $54, $5a, $78, $5a, $9c, $5a, $bf, $5a, $e3, $5a

    ld b, $5b
    add hl, hl
    ld e, e

    db $4d, $5b, $70, $5b

    sub e
    ld e, e

    db $b6, $5b

    reti


    ld e, e

    db $fc, $5b

    rra
    ld e, h
    ld b, d
    ld e, h
    ld h, l
    ld e, h

    db $88, $5c

    xor e
    ld e, h

    db $cd, $5c

    ldh a, [$5c]

    db $13, $5d

    dec [hl]
    ld e, l
    ld e, b
    ld e, l
    ld a, d
    ld e, l

    db $9c, $5d

Call_000_162f:
    cp a
    ld e, l
    pop hl
    ld e, l
    inc bc
    ld e, [hl]

    db $25, $5e

    ld b, a
    ld e, [hl]
    ld l, c
    ld e, [hl]
    adc e
    ld e, [hl]

    db $ad, $5e

    rst $08

Call_000_1640:
    ld e, [hl]

    db $f1, $5e, $13, $5f

    inc [hl]
    ld e, a
    ld d, [hl]
    ld e, a
    ld [hl], a
    ld e, a

    db $99, $5f

    cp d
    ld e, a

    db $dc, $5f, $fd, $5f

    ld e, $60
    ld b, b
    ld h, b
    ld h, c

Call_000_1658:
    ld h, b

    db $82, $60, $a3, $60

    call nz, $e560
    ld h, b

    db $06, $61

    ld h, $61
    ld b, a
    ld h, c
    ld l, b
    ld h, c

    db $88, $61

    xor c
    ld h, c
    jp z, $ea61

    ld h, c

    db $0a, $62, $2b, $62

    ld c, e
    ld h, d
    ld l, e
    ld h, d
    adc e
    ld h, d

    db $ab, $62

    bit 4, d

Jump_000_167f:
    db $eb
    ld h, d

    db $0b, $63, $2b, $63

    ld c, e
    ld h, e
    ld l, e
    ld h, e
    adc d
    ld h, e

    db $aa, $63, $ca, $63

    jp hl


Jump_000_1690:
    ld h, e

    db $08, $64

    jr z, @+$66

    db $47, $64

    ld h, [hl]
    ld h, h
    add [hl]
    ld h, h
    and l
    ld h, h
    db $c4
    ld h, h

    db $e3, $64, $02, $65

    db $21
    ld h, l

    db $3f, $65

    ld e, [hl]
    ld h, l
    ld a, l
    ld h, l
    sbc h
    ld h, l

    db $ba, $65

    reti


    ld h, l

    db $f7, $65, $16, $66

    inc [hl]
    ld h, [hl]
    ld d, d
    ld h, [hl]
    ld [hl], b
    ld h, [hl]

    db $8f, $66

    xor l
    ld h, [hl]
    bit 4, [hl]

    db $e9, $66, $06, $67

    inc h

Call_000_16c6:
    ld h, a
    ld b, d
    ld h, a
    ld h, b
    ld h, a

    db $7d, $67

    sbc e
    ld h, a

    db $b9, $67, $d6, $67, $f3, $67

    ld de, $2e68
    ld l, b
    ld c, e
    ld l, b

    db $68, $68

    add [hl]

Jump_000_16de:
    ld l, b

    db $a3, $68, $c0, $68, $dc, $68

    ld sp, hl
    ld l, b
    ld d, $69
    inc sp
    ld l, c
    ld c, a
    ld l, c

    db $6c, $69

    adc b
    ld l, c
    and l
    ld l, c
    pop bc
    ld l, c

    db $de, $69

    ld a, [$1669]
    ld l, d
    ld [hl-], a
    ld l, d
    ld c, [hl]
    ld l, d

    db $6a, $6a, $86, $6a

    and d
    ld l, d
    cp [hl]
    ld l, d
    db $da
    ld l, d

    db $f5, $6a

    ld de, $2d6b
    ld l, e
    ld c, b
    ld l, e

    db $63, $6b

    ld a, a
    ld l, e
    sbc d
    ld l, e
    or l
    ld l, e
    ret nc

    ld l, e

    db $ec, $6b

    rlca
    ld l, h
    ld [hl+], a
    ld l, h

    db $3c, $6c

    ld d, a
    ld l, h

    db $72, $6c

    adc l
    ld l, h

    db $a7, $6c

    jp nz, $dd6c

    ld l, h
    rst $30
    ld l, h

    db $11, $6d

    inc l
    ld l, l
    ld b, [hl]
    ld l, l
    ld h, b
    ld l, l
    ld a, d
    ld l, l

    db $94, $6d, $ae, $6d

    ret z

    ld l, l

    db $e2, $6d

    db $fc
    ld l, l

    db $15, $6e

    cpl
    ld l, [hl]
    ld c, c
    ld l, [hl]
    ld h, d
    ld l, [hl]

    db $7c, $6e

    sub l
    ld l, [hl]
    xor [hl]
    ld l, [hl]

    db $c8, $6e

    pop hl
    ld l, [hl]
    ld a, [$136e]
    ld l, a

    db $2c, $6f

    ld b, l
    ld l, a
    ld e, [hl]

Jump_000_1760:
    ld l, a

    db $76, $6f, $8f, $6f

    xor b
    ld l, a
    ret nz

    ld l, a

    db $d9, $6f

    pop af
    ld l, a
    ld a, [bc]
    ld [hl], b

    db $22, $70

    ld a, [hl-]
    ld [hl], b

    db $52, $70

    ld l, e
    ld [hl], b
    add e
    ld [hl], b
    sbc e
    ld [hl], b
    or d
    ld [hl], b

    db $ca, $70

    ld [c], a
    ld [hl], b

    db $fa, $70

    ld de, $2971
    ld [hl], c
    ld b, b
    ld [hl], c
    ld e, b
    ld [hl], c
    ld l, a
    ld [hl], c
    add a
    ld [hl], c
    sbc [hl]
    ld [hl], c
    or l
    ld [hl], c
    call z, $e371
    ld [hl], c
    ld a, [$1171]
    ld [hl], d
    jr z, @+$74

    ld a, $72
    ld d, l

Jump_000_17a0:
    ld [hl], d

    db $6c, $72

    add d
    ld [hl], d
    sbc c
    ld [hl], d
    xor a
    ld [hl], d
    push bc
    ld [hl], d
    call c, $f272
    ld [hl], d
    ld [$1e73], sp
    ld [hl], e
    inc [hl]
    ld [hl], e
    ld c, d
    ld [hl], e
    ld h, b
    ld [hl], e

    db $75, $73

    adc e
    ld [hl], e
    and c
    ld [hl], e
    or [hl]
    ld [hl], e

    db $cc, $73

    pop hl
    ld [hl], e
    or $73
    inc c
    ld [hl], h

    db $21, $74

    ld [hl], $74
    ld c, e
    ld [hl], h
    ld h, b
    ld [hl], h
    ld [hl], l
    ld [hl], h
    adc d
    ld [hl], h
    sbc a
    ld [hl], h
    or e
    ld [hl], h
    ret z

    ld [hl], h
    db $dd
    ld [hl], h

    db $f1, $74

    ld b, $75

    db $1a, $75

    ld l, $75

    db $42, $75, $57, $75

    ld l, e
    ld [hl], l

    db $7f, $75

    sub e

Jump_000_17ee:
    ld [hl], l

    db $a6, $75

    cp d
    ld [hl], l

    db $ce, $75

    ld [c], a
    ld [hl], l
    push af
    ld [hl], l

    db $09, $76, $1c, $76

    jr nc, jr_000_1875

    db $43, $76, $56, $76

    ld l, c
    db $76

    db $7c, $76

    adc a
    db $76

Call_000_1809:
    and d
    db $76

    db $b5, $76

    ret z

    db $76

    db $db, $76

    db $ed
    db $76

    db $00, $77

    ld [de], a
    ld [hl], a

    db $25, $77, $37, $77, $49, $77, $5c, $77, $6e, $77, $80, $77, $92, $77, $a4, $77
    db $b6, $77, $c7, $77, $d9, $77, $eb, $77, $fc, $77, $0e, $78, $1f, $78, $31, $78

    ld b, d
    ld a, b

    db $53, $78, $64, $78, $75, $78, $86, $78, $97, $78, $a8, $78, $b9, $78, $c9, $78
    db $da, $78, $eb, $78, $fb, $78, $0c, $79

    inc e
    ld a, c

    db $2c, $79, $3c, $79, $4c, $79, $5c, $79

    ld l, h
    ld a, c
    ld a, h
    ld a, c

    db $8c, $79, $9c, $79, $ac, $79, $bb, $79, $cb, $79, $da, $79, $e9, $79, $f9, $79
    db $08, $7a, $17, $7a

    ld h, $7a

jr_000_1875:
    dec [hl]
    ld a, d

    db $44, $7a, $53, $7a

    ld h, d
    ld a, d
    ld [hl], c
    ld a, d
    ld a, a

Jump_000_1880:
    ld a, d

    db $8e, $7a, $9c, $7a

    xor e
    ld a, d
    cp c
    ld a, d
    rst $00
    ld a, d

    db $d5, $7a

    db $e4
    ld a, d
    ld a, [c]
    ld a, d

    db $00, $7b

    dec c
    ld a, e

    db $1b, $7b

    add hl, hl
    ld a, e
    scf
    ld a, e
    ld b, h
    ld a, e
    ld d, d
    ld a, e
    ld e, a

Jump_000_18a0:
    ld a, e

    db $6d, $7b

    ld a, d
    ld a, e
    add a
    ld a, e
    sub h
    ld a, e
    and c
    ld a, e
    xor [hl]
    ld a, e

    db $bb, $7b

    ret z

    ld a, e
    push de
    ld a, e
    ld [c], a
    ld a, e
    xor $7b
    ei
    ld a, e
    rlca
    ld a, h

    db $14, $7c

    jr nz, @+$7e

    inc l

Call_000_18c0:
    ld a, h

    db $38, $7c, $45, $7c

    ld d, c

Call_000_18c6:
Jump_000_18c6:
    ld a, h

    db $5d, $7c

    ld l, b
    ld a, h
    ld [hl], h
    ld a, h
    add b
    ld a, h

    db $8c, $7c

    sub a
    ld a, h

Jump_000_18d3:
    and e
    ld a, h
    xor [hl]
    ld a, h

    db $b9, $7c

    push bc
    ld a, h

Jump_000_18db:
    ret nc

    ld a, h
    db $db
    ld a, h
    and $7c

    db $f1, $7c

    db $fc
    ld a, h

    db $07, $7d

Jump_000_18e7:
    ld [de], a

Call_000_18e8:
    ld a, l
    inc e
    ld a, l
    daa
    ld a, l
    ld sp, $3c7d
    ld a, l
    ld b, [hl]
    ld a, l
    ld d, b
    ld a, l
    ld e, e
    ld a, l
    ld h, l

Call_000_18f8:
Jump_000_18f8:
    ld a, l

    db $6f, $7d

    ld a, c
    ld a, l
    add e
    ld a, l

Call_000_18ff:
Jump_000_18ff:
    adc l
    ld a, l

    db $96, $7d

    and b
    ld a, l

    db $aa, $7d

    or e
    ld a, l
    cp l
    ld a, l
    add $7d
    rst $08
    ld a, l
    reti


    ld a, l

    db $e2, $7d, $eb, $7d, $f4, $7d

    db $fd
    ld a, l

    db $06, $7e

    ld c, $7e
    rla
    ld a, [hl]

    db $20, $7e, $28, $7e, $31, $7e

    add hl, sp
    ld a, [hl]

    db $42, $7e

    ld c, d
    ld a, [hl]

    db $52, $7e

    ld e, d
    ld a, [hl]
    ld h, d
    ld a, [hl]

    db $6a, $7e

    ld [hl], d
    ld a, [hl]
    ld a, d
    ld a, [hl]

    db $81, $7e, $89, $7e, $91, $7e

    sbc b
    ld a, [hl]
    sbc a
    ld a, [hl]

    db $a7, $7e

    xor [hl]
    ld a, [hl]

    db $b5, $7e

    cp h
    ld a, [hl]
    db $c3
    ld a, [hl]

    db $ca, $7e, $d1, $7e, $d8, $7e

    rst $18
    ld a, [hl]

    db $e5, $7e

    db $ec
    ld a, [hl]

    db $f2, $7e

    ld sp, hl
    ld a, [hl]

    db $ff, $7e

    dec b
    ld a, a

    db $0b, $7f, $12, $7f, $18, $7f

    dec e
    ld a, a
    inc hl
    ld a, a

    db $29, $7f

    cpl
    ld a, a

    db $35, $7f, $3a, $7f, $40, $7f

    ld b, l
    ld a, a

    db $4a, $7f, $50, $7f, $55, $7f

    ld e, d
    ld a, a

    db $5f, $7f

    ld h, h
    ld a, a

    db $69, $7f

    ld l, l
    ld a, a

    db $72, $7f, $77, $7f, $7b, $7f

    add b
    ld a, a

    db $84, $7f

    adc c
    ld a, a

    db $8d, $7f

    sub c
    ld a, a
    sub l
    ld a, a
    sbc c
    ld a, a
    sbc l
    ld a, a
    and c
    ld a, a
    and l
    ld a, a
    xor b
    ld a, a

    db $ac, $7f

    or b
    ld a, a
    or e
    ld a, a
    or a
    ld a, a

    db $ba, $7f, $bd, $7f, $c0, $7f

    db $c3
    ld a, a

    db $c6, $7f, $c9, $7f, $cc, $7f, $cf, $7f, $d2, $7f, $d4, $7f, $d7, $7f, $d9, $7f
    db $dc, $7f, $de, $7f

    ldh [$7f], a

    db $e3, $7f, $e5, $7f

    rst $20
    ld a, a

    db $e9, $7f, $ea, $7f

    db $ec
    ld a, a

    db $ee, $7f, $f0, $7f, $f1, $7f, $f3, $7f, $f4, $7f, $f5, $7f

    rst $30

Jump_000_19e0:
    ld a, a

    db $f8, $7f, $f9, $7f, $fa, $7f, $fb, $7f, $fc, $7f, $fc, $7f, $fd, $7f, $fe, $7f
    db $fe, $7f, $ff, $7f, $ff, $7f, $00, $80, $00, $80, $00, $80, $00, $80, $00, $80
    db $00, $80

Call_000_1a03:
    ld bc, $0000
    ld a, h
    or l
    jp z, Jump_000_1b3c

    ld b, $40
    ld a, d
    or e
    jp z, Jump_000_1b3c

    push hl
    push de
    bit 7, d
    jr z, jr_000_1a1e

    xor a

Call_000_1a19:
Jump_000_1a19:
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a

jr_000_1a1e:
    bit 7, h
    jr z, jr_000_1a28

    xor a
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a

jr_000_1a28:
    ld a, h
    ld h, l
    ld l, $00
    call Call_000_0ddb
    ld bc, $3fc0
    or a
    jp nz, Jump_000_1b3a

    ld e, l
    ld d, h
    ld hl, $1c66
    ld b, $00
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    cp d
    jr c, jr_000_1a52

    jr nz, jr_000_1a49

    ld a, c
    cp e
    jr c, jr_000_1a52

jr_000_1a49:
    ld a, l
    sub $80
    ld l, a
    jr nc, jr_000_1a50

    dec h

jr_000_1a50:
    jr jr_000_1a5b

jr_000_1a52:
    ld a, $80
    add l
    ld l, a
    jr nc, jr_000_1a59

    inc h

Call_000_1a59:
jr_000_1a59:
    set 7, b

jr_000_1a5b:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    cp d
    jr c, jr_000_1a70

    jr nz, jr_000_1a67

    ld a, c
    cp e

Jump_000_1a65:
    jr c, jr_000_1a70

Call_000_1a67:
jr_000_1a67:
    ld a, l
    sub $40
    ld l, a
    jr nc, jr_000_1a6e

    dec h

jr_000_1a6e:
    jr jr_000_1a79

jr_000_1a70:
    ld a, $40
    add l
    ld l, a
    jr nc, jr_000_1a77

    inc h

jr_000_1a77:
    set 6, b

jr_000_1a79:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    cp d
    jr c, jr_000_1a8e

    jr nz, jr_000_1a85

    ld a, c
    cp e
    jr c, jr_000_1a8e

jr_000_1a85:
    ld a, l
    sub $20
    ld l, a
    jr nc, jr_000_1a8c

    dec h

jr_000_1a8c:
    jr jr_000_1a97

jr_000_1a8e:
    ld a, $20
    add l
    ld l, a
    jr nc, jr_000_1a95

    inc h

jr_000_1a95:
    set 5, b

jr_000_1a97:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    cp d
    jr c, jr_000_1aac

    jr nz, jr_000_1aa3

    ld a, c
    cp e
    jr c, jr_000_1aac

jr_000_1aa3:
    ld a, l
    sub $10
    ld l, a
    jr nc, jr_000_1aaa

    dec h

jr_000_1aaa:
    jr jr_000_1ab5

jr_000_1aac:
    ld a, $10
    add l
    ld l, a
    jr nc, jr_000_1ab3

    inc h

jr_000_1ab3:
    set 4, b

jr_000_1ab5:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    cp d
    jr c, jr_000_1aca

    jr nz, jr_000_1ac1

    ld a, c
    cp e
    jr c, jr_000_1aca

jr_000_1ac1:
    ld a, l
    sub $08
    ld l, a
    jr nc, jr_000_1ac8

    dec h

jr_000_1ac8:
    jr jr_000_1ad3

jr_000_1aca:
    ld a, $08
    add l
    ld l, a
    jr nc, jr_000_1ad1

    inc h

jr_000_1ad1:
    set 3, b

jr_000_1ad3:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]

Call_000_1ad6:
    cp d

Jump_000_1ad7:
    jr c, jr_000_1ae8

    jr nz, jr_000_1adf

    ld a, c
    cp e
    jr c, jr_000_1ae8

Jump_000_1adf:
jr_000_1adf:
    ld a, l
    sub $04
    ld l, a
    jr nc, jr_000_1ae6

    dec h

Jump_000_1ae6:
jr_000_1ae6:
    jr jr_000_1af1

jr_000_1ae8:
    ld a, $04
    add l
    ld l, a
    jr nc, jr_000_1aef

    inc h

jr_000_1aef:
    set 2, b

jr_000_1af1:
    ld a, [hl+]
    ld c, a
    ld a, [hl-]
    cp d
    jr c, jr_000_1b06

    jr nz, jr_000_1afd

    ld a, c
    cp e
    jr c, jr_000_1b06

jr_000_1afd:
    ld a, l
    sub $02
    ld l, a
    jr nc, jr_000_1b04

    dec h

jr_000_1b04:
    jr jr_000_1b0f

jr_000_1b06:
    ld a, $02

Jump_000_1b08:
    add l
    ld l, a
    jr nc, jr_000_1b0d

    inc h

jr_000_1b0d:
    set 1, b

jr_000_1b0f:
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    cp d
    jr c, jr_000_1b1b

    jr nz, jr_000_1b1c

    ld a, c
    cp e
    jr nc, jr_000_1b1c

Jump_000_1b1b:
jr_000_1b1b:
    inc b

jr_000_1b1c:
    ld a, b
    inc a
    jr nz, jr_000_1b31

    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    cp d
    jr c, jr_000_1b2c

    jr nz, jr_000_1b31

    ld a, c
    cp e
    jr nc, jr_000_1b31

jr_000_1b2c:
    ld bc, $4000
    jr jr_000_1b3a

jr_000_1b31:
    ld a, b
    rrca
    rrca
    ld b, a
    and $c0
    ld c, a
    xor b
    ld b, a

Jump_000_1b3a:
jr_000_1b3a:
    pop de
    pop hl

Jump_000_1b3c:
    bit 7, d
    jr z, jr_000_1b47

    xor a
    sub c
    ld c, a
    ld a, $80
    sbc b

Jump_000_1b46:
    ld b, a

jr_000_1b47:
    bit 7, h
    jr z, jr_000_1b51

Jump_000_1b4b:
    xor a
    sub c
    ld c, a
    sbc a
    sub b
    ld b, a

jr_000_1b51:
    ret


Call_000_1b52:
    ld a, b
    or c
    ret z

    xor a
    sub c

Jump_000_1b57:
    ld c, a
    sbc a

Call_000_1b59:
    sub b
    ld b, a
    add hl, bc
    ret


    ld a, d
    or e
    ret z

    xor a
    sub e
    ld e, a
    sbc a
    sub d
    ld d, a
    add hl, de
    ret


    nop
    nop

    db $01, $00, $03, $00, $04, $00, $06, $00, $07, $00, $09, $00, $0b, $00, $0c, $00
    db $0e, $00, $0f, $00, $11, $00, $12, $00, $14, $00, $16, $00, $17, $00, $19, $00
    db $1a, $00, $1c, $00, $1e, $00, $1f, $00, $21, $00, $22, $00, $24, $00, $26, $00
    db $27, $00, $29, $00, $2a, $00, $2c, $00, $2e, $00, $2f, $00, $31, $00, $32, $00
    db $34, $00, $36, $00, $37, $00, $39, $00, $3b, $00, $3c, $00, $3e, $00, $40, $00
    db $41, $00, $43, $00, $45, $00

    ld b, [hl]
    nop

    db $48, $00, $4a, $00, $4c, $00

    ld c, l
    nop

    db $4f, $00, $51, $00, $52, $00, $54, $00, $56, $00, $58, $00, $59, $00, $5b, $00
    db $5d, $00, $5f, $00, $61, $00

Jump_000_1be0:
    ld h, d
    nop

    db $64, $00, $66, $00, $68, $00, $6a, $00, $6c, $00, $6d, $00, $6f, $00, $71, $00
    db $73, $00, $75, $00, $77, $00, $79, $00, $7b, $00, $7d, $00, $7f, $00

Jump_000_1c00:
    add c
    nop

    db $83, $00, $85, $00, $87, $00

    adc c
    nop

Jump_000_1c0a:
    adc e
    nop
    adc l
    nop

    db $8f, $00, $91, $00, $93, $00

    sub l
    nop

    db $97, $00

    sbc c
    nop

    db $9b, $00, $9e, $00, $a0, $00

    and d
    nop

    db $a4, $00, $a6, $00, $a9, $00

    xor e
    nop

    db $ad, $00, $af, $00, $b2, $00, $b4, $00, $b6, $00, $b9, $00, $bb, $00, $be, $00
    db $c0, $00

    db $c3
    nop

    db $c5, $00, $c8, $00, $ca, $00, $cd, $00, $cf, $00, $d2, $00, $d5, $00

    rst $10
    nop

    db $da, $00, $dd, $00, $e0, $00, $e2, $00, $e5, $00, $e8, $00, $eb, $00, $ee, $00
    db $f1, $00, $f4, $00, $f7, $00, $fa, $00, $fd, $00, $00, $01, $03, $01, $06, $01
    db $0a, $01

    dec c
    db $01

    db $10, $01, $14, $01, $17, $01, $1b, $01, $1e, $01, $22, $01, $25, $01

Jump_000_1c80:
    add hl, hl
    db $01

    db $2d, $01, $30, $01, $34, $01, $38, $01, $3c, $01, $40, $01, $44, $01, $48, $01
    db $4d, $01, $51, $01, $55, $01, $5a, $01, $5e, $01, $63, $01, $67, $01, $6c, $01
    db $71, $01

    db $76
    db $01

    db $7b, $01, $80, $01, $85, $01, $8a, $01, $90, $01, $95, $01, $9b, $01, $a0, $01
    db $a6, $01, $ac, $01, $b2, $01, $b8, $01, $bf, $01, $c5, $01, $cc, $01, $d2, $01
    db $d9, $01, $e0, $01, $e7, $01, $ef, $01, $f6, $01, $fe, $01, $06, $02, $0e, $02
    db $16, $02, $1f, $02, $28, $02, $31, $02, $3a, $02, $44, $02, $4d, $02, $57, $02
    db $62, $02, $6c, $02, $77, $02, $83, $02, $8e, $02, $9a, $02, $a7, $02, $b4, $02
    db $c1, $02, $cf, $02, $dd, $02, $ec, $02, $fb, $02, $0b, $03, $1b, $03, $2d, $03
    db $3e, $03, $51, $03, $64, $03, $78, $03, $8d, $03, $a3, $03, $ba, $03, $d2, $03
    db $eb, $03, $05, $04, $21, $04, $3e, $04, $5d, $04, $7e, $04, $a0, $04, $c4, $04
    db $eb, $04, $13, $05, $3f, $05, $6d, $05, $9f, $05, $d4, $05, $0d, $06, $4b, $06
    db $8d, $06, $d5, $06, $23, $07, $79, $07, $d7, $07, $3e, $08, $b0, $08, $2f, $09
    db $be, $09, $5e, $0a, $14, $0b, $e5, $0b, $d7, $0c, $f3, $0d, $43, $0f, $d9, $10
    db $cd, $12, $44, $15, $78, $18, $ce, $1c, $02, $23, $9d, $2c, $78, $3d, $ca, $62
    db $6a, $fb

    rst $38
    rst $38

Call_000_1d6a:
    push bc
    push de
    cpl
    ld d, a
    ld a, l
    cpl
    ld c, a
    ld a, h
    cpl
    ld b, a
    and c
    and d
    inc a
    jp z, Jump_000_1f2a

    add sp, -$10

Call_000_1d7c:
    ld hl, sp+$04
    ld [hl], d
    ld de, $4000
    ld l, e
    ld h, d
    xor a
    add hl, bc
    jr c, jr_000_1d91

    ld c, l
    ld b, h
    set 3, a
    ld hl, $6000
    jr jr_000_1d94

jr_000_1d91:
    ld hl, $e000

jr_000_1d94:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_1da7

    ld c, l
    ld b, h
    set 2, a
    ld hl, $1800
    jr jr_000_1daa

jr_000_1da7:
    ld hl, $f800

jr_000_1daa:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_1dbd

    ld c, l
    ld b, h
    set 1, a
    ld hl, $0600
    jr jr_000_1dc0

jr_000_1dbd:
    ld hl, $fe00

jr_000_1dc0:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_1dd3

    ld c, l
    ld b, h
    set 0, a
    ld hl, $0180
    jr jr_000_1dd6

jr_000_1dd3:
    ld hl, $ff80

jr_000_1dd6:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_1de9

Jump_000_1de0:
    ld c, l
    ld b, h
    set 7, a
    ld hl, $0060
    jr jr_000_1dec

jr_000_1de9:
    ld hl, $ffe0

jr_000_1dec:
    add hl, de
    srl h

Jump_000_1def:
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_1dff

    ld c, l
    ld b, h
    set 6, a
    ld hl, $0018

Jump_000_1dfd:
    jr jr_000_1e02

Call_000_1dff:
jr_000_1dff:
    ld hl, $fff8

jr_000_1e02:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_1e15

    ld c, l
    ld b, h
    set 5, a
    ld hl, $0006
    jr jr_000_1e18

jr_000_1e15:
    ld hl, $fffe

jr_000_1e18:
    add hl, de
    srl h
    rr l
    ld e, l
    ld d, h
    add hl, bc
    jr c, jr_000_1e2c

    ld c, l
    ld b, h
    set 4, a
    ld hl, $0002
    add hl, de
    ld e, l
    ld d, h

jr_000_1e2c:
    ld hl, sp+$03
    ld [hl], a
    srl d
    rr e
    ld hl, sp+$00
    ld [hl], d
    ld d, e
    ld e, $80
    rr e

Call_000_1e3b:
    ld hl, sp+$02
    ld [hl], $00
    ld hl, sp+$01
    ld [hl], b
    ld b, c
    ld hl, sp+$04
    ld c, [hl]
    ld hl, sp+$01
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [hl]
    ld l, e
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af

Call_000_1e55:
    adc [hl]
    jr c, jr_000_1e69

    ld [hl+], a
    set 3, [hl]
    pop bc
    ld hl, $0060
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_000_1e75

    ld hl, sp+$00
    inc [hl]
    jr jr_000_1e75

jr_000_1e69:
    pop hl
    ld hl, $ffe0
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_000_1e75

    ld hl, sp+$00
    dec [hl]

jr_000_1e75:
    ld hl, sp+$00
    srl [hl]
    rr d
    rr e
    ld hl, sp+$00
    ld a, [hl]
    ld l, e
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af
    adc [hl]
    jr c, jr_000_1e9c

    ld [hl+], a
    set 2, [hl]
    pop bc
    ld hl, $0018
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_000_1ea8

    ld hl, sp+$00
    inc [hl]
    jr jr_000_1ea8

jr_000_1e9c:
    pop hl
    ld hl, $fff8
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_000_1ea8

    ld hl, sp+$00
    dec [hl]

jr_000_1ea8:
    ld hl, sp+$00
    srl [hl]
    rr d
    rr e
    ld hl, sp+$00
    ld a, [hl]
    ld l, e
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af
    adc [hl]
    jr c, jr_000_1ecf

    ld [hl+], a
    set 1, [hl]

Jump_000_1ec1:
    pop bc
    ld hl, $0006
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_000_1edb

Jump_000_1eca:
    ld hl, sp+$00
    inc [hl]
    jr jr_000_1edb

jr_000_1ecf:
    pop hl
    ld hl, $fffe

Jump_000_1ed3:
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_000_1edb

    ld hl, sp+$00
    dec [hl]

jr_000_1edb:
    ld hl, sp+$00
    srl [hl]
    rr d

Call_000_1ee1:
    rr e
    ld hl, sp+$00
    ld a, [hl]
    ld l, e

Call_000_1ee7:
Jump_000_1ee7:
    ld h, d
    add hl, bc
    push hl
    push af
    ld hl, sp+$05
    pop af
    adc [hl]
    jr c, jr_000_1f02

    ld [hl+], a
    set 0, [hl]
    pop bc
    ld hl, $0002
    add hl, de
    ld e, l
    ld d, h
    jr nc, jr_000_1f0e

    ld hl, sp+$00

Call_000_1eff:
Jump_000_1eff:
    inc [hl]
    jr jr_000_1f0e

jr_000_1f02:
    pop hl
    ld hl, $0000
    add hl, de
    ld e, l
    ld d, h
    jr c, jr_000_1f0e

Jump_000_1f0b:
    ld hl, sp+$00

Call_000_1f0d:
    dec [hl]

Call_000_1f0e:
jr_000_1f0e:
    ld hl, sp+$00

Jump_000_1f10:
    srl [hl]
    rr d
    rr e
    ld hl, sp+$03
    ld a, [hl]
    ld hl, sp+$02
    ld b, [hl]
    ld h, a
    and $f0

Jump_000_1f1f:
    ld l, a
    xor h
    ld h, a
    ld a, b
    or l
    ld l, a
    add sp, $10

jr_000_1f27:
    pop de
    pop bc
    ret


Jump_000_1f2a:
    ld hl, $0000
    jr jr_000_1f27

Call_000_1f2f:
    push af
    push bc
    push de
    jr jr_000_1f4c

jr_000_1f34:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

Jump_000_1f3c:
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

Call_000_1f48:
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

jr_000_1f4c:
    ld a, [hl+]
    rrca
    jr nc, jr_000_1f9a

    inc a
    jr z, jr_000_1f34

    cpl
    add $81
    ld c, a
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_1f5a:
    srl c
    jr c, jr_000_1f9c

    ld a, [hl+]
    ld [de], a

Jump_000_1f60:
    inc de
    srl c
    jr c, jr_000_1f9c

    ld a, [hl+]
    ld [de], a
    inc de
    srl c
    jr c, jr_000_1f9c

    ld a, [hl+]
    ld [de], a
    inc de
    srl c
    jr c, jr_000_1f9c

    ld a, [hl+]
    ld [de], a
    inc de
    srl c
    jr c, jr_000_1f9c

    ld a, [hl+]
    ld [de], a
    inc de
    srl c
    jr c, jr_000_1f9c

Jump_000_1f81:
    ld a, [hl+]
    ld [de], a
    inc de
    srl c
    jr c, jr_000_1f9c

    ld a, [hl+]
    ld [de], a
    inc de
    jr jr_000_1f4c

jr_000_1f8d:
    pop hl
    ld l, e
    ld h, d
    pop de
    ld a, l
    sub e
    ld l, a
    ld a, h
    sbc d
    ld h, a
    pop bc
    pop af
    ret


jr_000_1f9a:
    cpl
    ld c, a

jr_000_1f9c:
    jr z, jr_000_1f4c

    ld a, [hl+]
    ld b, [hl]
    inc hl
    push hl
    ld l, a
    or b
    jr z, jr_000_1f8d

    ld a, b
    rlca
    rlca
    rlca
    or $f8
    ld h, a
    add hl, de
    ld a, b
    and $1f
    jr z, jr_000_2029

    ld b, a
    srl b
    jr nc, jr_000_1fbd

    ld a, [hl+]
    ld [de], a
    inc de
    jr z, jr_000_2029

jr_000_1fbd:
    srl b
    jr nc, jr_000_1fc9

    ld a, [hl+]
    ld [de], a

Jump_000_1fc3:
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr z, jr_000_2029

jr_000_1fc9:
    srl b
    jr nc, jr_000_1fdb

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
    jr z, jr_000_2029

jr_000_1fdb:
    srl b
    jr nc, jr_000_1ff9

Call_000_1fdf:
    ld a, [hl+]

Call_000_1fe0:
Jump_000_1fe0:
    ld [de], a

Jump_000_1fe1:
    inc de

Call_000_1fe2:
    ld a, [hl+]

Jump_000_1fe3:
    ld [de], a
    inc de

Jump_000_1fe5:
    ld a, [hl+]
    ld [de], a

Jump_000_1fe7:
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]

Jump_000_1fef:
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    jr z, jr_000_2029

jr_000_1ff9:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Call_000_1fff:
Jump_000_1fff:
    ld a, [hl+]

Call_000_2000:
Jump_000_2000:
    ld [de], a
    inc de

Jump_000_2002:
    ld a, [hl+]
    ld [de], a

Call_000_2004:
    inc de
    ld a, [hl+]

Call_000_2006:
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Call_000_200e:
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

Call_000_201f:
    inc de
    ld a, [hl+]

Jump_000_2021:
    ld [de], a

Jump_000_2022:
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

jr_000_2029:
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

Call_000_2031:
    inc de
    pop hl
    jp Jump_000_1f5a


Call_000_2036:
    ld hl, $cc00
    ld c, $24

Jump_000_203b:
    jp Jump_000_03a7


Call_000_203e:
    xor a
    ldh [rVBK], a
    ld hl, $c0fa

Jump_000_2044:
    ld de, $9d08
    ld a, [hl+]

Call_000_2048:
Jump_000_2048:
    ld [de], a

Call_000_2049:
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de

Jump_000_2050:
    ld a, [hl+]
    ld [de], a
    inc de
    ldh a, [$9e]
    cp $03
    jr z, jr_000_206c

    cp $01
    jr z, jr_000_2065

    ldh a, [$8c]
    and $01
    jr z, jr_000_206c

    jr jr_000_2069

jr_000_2065:
    ldh a, [$90]
    bit 2, a

jr_000_2069:
    xor a
    jr jr_000_206e

jr_000_206c:
    ld a, $01

jr_000_206e:
    ldh [$98], a
    ldh a, [$8e]
    or a
    ret z

    xor a
    ldh [$8e], a
    xor a
    ldh [rVBK], a
    ld bc, $cc00

Jump_000_207d:
    ld de, $1d00

Call_000_2080:
    ld a, $23

Jump_000_2082:
jr_000_2082:
    ld hl, $ff51
    ld [hl], b
    inc l
    ld [hl], c

Jump_000_2088:
    inc l
    ld [hl], d

Jump_000_208a:
    inc l
    ld [hl], e
    inc l

Call_000_208d:
    ld [hl], a
    ret


    push af
    ldh a, [$8d]
    or a

jr_000_2093:
    jr nz, jr_000_2093

    pop af

Call_000_2096:
    ld a, c
    dec a
    ld b, h
    ld c, l
    jr jr_000_2082

Call_000_209c:
    push af
    push hl
    ld l, d
    ld h, $cc
    ld a, e

Jump_000_20a2:
    rrca
    rrca
    rrca
    ld e, a
    and $1f
    ld d, a
    xor e
    ld e, a
    add hl, de

Call_000_20ac:
    ld e, l

Call_000_20ad:
    ld d, h
    pop hl
    pop af
    ret


Call_000_20b1:
    push af
    call Call_000_209c

jr_000_20b5:
    ld a, [hl+]

Jump_000_20b6:
    or a
    jr z, jr_000_20c9

    ld [de], a
    inc de
    ld a, e
    and $1f
    jr nz, jr_000_20b5

Call_000_20c0:
    ld a, e
    sub $20

Jump_000_20c3:
    ld e, a
    jr nc, jr_000_20c7

    dec d

Call_000_20c7:
Jump_000_20c7:
jr_000_20c7:
    jr jr_000_20b5

Jump_000_20c9:
jr_000_20c9:
    dec hl
    ld a, $01
    ldh [$8e], a
    pop af
    ret


Jump_000_20d0:
    jr nc, @+$33

Jump_000_20d2:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_000_2113

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

Call_000_20e0:
Jump_000_20e0:
    push af

Call_000_20e1:
Jump_000_20e1:
    ld a, h

Jump_000_20e2:
    swap a

Jump_000_20e4:
    and $0f
    cp $0a

Call_000_20e8:
    jr c, jr_000_20ec

    add $07

Jump_000_20ec:
jr_000_20ec:
    add $30

Jump_000_20ee:
    ld [de], a
    inc de
    ld a, h
    and $0f

Jump_000_20f3:
    cp $0a
    jr c, jr_000_20f9

    add $07

jr_000_20f9:
    add $30
    ld [de], a

Call_000_20fc:
    inc de
    ld a, l

Jump_000_20fe:
    swap a

Jump_000_2100:
    and $0f

Call_000_2102:
    cp $0a
    jr c, jr_000_2108

    add $07

jr_000_2108:
    add $30

Call_000_210a:
    ld [de], a
    inc de
    ld a, l
    and $0f
    cp $0a
    jr c, jr_000_2115

jr_000_2113:
    add $07

jr_000_2115:
    add $30
    ld [de], a

Jump_000_2118:
    inc de
    xor a

Jump_000_211a:
    ld [de], a
    pop af
    ret


    add sp, -$06
    push bc
    ld b, $00
    ld c, a
    push bc
    push hl
    xor a

Call_000_2126:
    ld hl, sp+$06
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], a
    set 7, [hl]
    pop hl

Call_000_2131:
    bit 7, h
    jr z, jr_000_213e

    call Call_000_21e0
    push hl
    ld hl, sp+$0b
    set 0, [hl]
    pop hl

Jump_000_213e:
jr_000_213e:
    push de
    ld bc, $2710
    call Call_000_21cf
    push hl

Jump_000_2146:
    ld hl, sp+$08
    ld [hl], d
    pop hl
    ld bc, $03e8
    call Call_000_21cf
    push hl
    ld hl, sp+$09
    ld [hl], d
    pop hl
    ld bc, $0064
    call Call_000_21cf
    push hl
    ld hl, sp+$0a
    ld [hl], d
    pop hl

Jump_000_2160:
    ld bc, $000a

Call_000_2163:
    call Call_000_21cf
    push hl
    ld hl, sp+$0b
    ld [hl], d

Jump_000_216a:
    pop hl
    ld bc, $0001
    call Call_000_21cf
    push hl
    ld hl, sp+$0c

Jump_000_2174:
    set 6, d
    ld [hl], d
    pop hl
    pop de
    pop bc

Jump_000_217a:
    or c
    jr z, jr_000_21a2

    ld b, $05

Jump_000_217f:
    ld hl, sp+$02

Jump_000_2181:
jr_000_2181:
    ld a, [hl]
    or a
    jr nz, jr_000_218b

    dec b
    inc hl
    bit 7, [hl]
    jr z, jr_000_2181

jr_000_218b:
    ld a, c
    sub b
    jr c, jr_000_21a2

    jr z, jr_000_21a2

    ld b, a
    ld a, $20
    ld hl, sp+$07
    bit 0, [hl]
    jr z, jr_000_219d

    dec b
    jr z, jr_000_21a2

jr_000_219d:
    ld [de], a
    inc de
    dec b

Call_000_21a0:
    jr nz, jr_000_219d

jr_000_21a2:
    ld hl, sp+$07
    bit 0, [hl]
    jr z, jr_000_21ac

Jump_000_21a8:
    ld a, $2d
    ld [de], a
    inc de

jr_000_21ac:
    ld b, $00
    ld hl, sp+$02

jr_000_21b0:
    ld a, [hl]

Jump_000_21b1:
    bit 7, a
    jr nz, jr_000_21c9

Jump_000_21b5:
    inc hl
    bit 0, b
    jr nz, jr_000_21bf

Call_000_21ba:
Jump_000_21ba:
    or a
    jr z, jr_000_21b0

Call_000_21bd:
    jr jr_000_21bf

jr_000_21bf:
    res 6, a

Jump_000_21c1:
    add $30

Jump_000_21c3:
    ld [de], a
    inc de
    set 0, b
    jr jr_000_21b0

Call_000_21c9:
Jump_000_21c9:
jr_000_21c9:
    xor a
    ld [de], a
    pop bc
    add sp, $06
    ret


Call_000_21cf:
    ld d, $00
    call Call_000_21e8

jr_000_21d4:
    inc d
    add hl, bc
    bit 7, h

Call_000_21d8:
    jr z, jr_000_21d4

    call Call_000_21e8
    add hl, bc

Call_000_21de:
    dec d
    ret


Call_000_21e0:
Jump_000_21e0:
    ld a, h
    cpl
    ld h, a

Jump_000_21e3:
    ld a, l

Jump_000_21e4:
    cpl

Call_000_21e5:
    ld l, a
    inc hl
    ret


Call_000_21e8:
    ld a, b
    cpl
    ld b, a

Jump_000_21eb:
    ld a, c

Jump_000_21ec:
    cpl

Jump_000_21ed:
    ld c, a
    inc bc
    ret


Call_000_21f0:
    add sp, -$06
    push bc
    ld b, $00

Call_000_21f5:
    ld c, a
    push bc
    push de
    ld e, l
    ld d, h

Jump_000_21fa:
    ld hl, sp+$0b
    ld a, $80
    ld [hl], a

Call_000_21ff:
Jump_000_21ff:
    ld l, e
    ld h, d

Call_000_2201:
    bit 7, h
    jr z, jr_000_2213

    xor a

Jump_000_2206:
    sub l
    ld l, a
    sbc a
    sub h
    ld h, a
    ld e, l
    ld d, h
    ld hl, sp+$0b

Call_000_220f:
    set 0, [hl]
    ld l, e
    ld h, d

jr_000_2213:
    ld c, l

Call_000_2214:
    ld b, h
    ld hl, sp+$06
    ld e, l
    ld d, h
    ld l, c

Call_000_221a:
    ld h, b
    ld bc, $d8f0
    call Call_000_229e
    ld bc, $2710
    add hl, bc
    ld [de], a
    inc de

Call_000_2227:
    ld bc, $fc18
    call Call_000_229e
    ld bc, $03e8
    add hl, bc
    ld [de], a
    inc de
    ld bc, $ff9c
    call Call_000_229e

Jump_000_2239:
    ld bc, $0064
    add hl, bc
    ld [de], a

Call_000_223e:
    inc de
    ld bc, $fff6
    call Call_000_229e
    ld bc, $000a
    add hl, bc

Call_000_2249:
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    pop de
    pop bc
    inc c
    dec c
    jr z, jr_000_2279

Jump_000_2253:
    ld b, $05
    ld hl, sp+$02

jr_000_2257:
    ld a, [hl]
    or a

Call_000_2259:
    jr nz, jr_000_2262

    dec b
    inc hl
    bit 7, [hl]
    jr z, jr_000_2257

    inc b

jr_000_2262:
    ld a, c
    sub b

Call_000_2264:
    jr c, jr_000_2279

    jr z, jr_000_2279

    ld b, a
    ld a, $20
    ld hl, sp+$07

Jump_000_226d:
    bit 0, [hl]
    jr z, jr_000_2274

    dec b
    jr z, jr_000_2279

jr_000_2274:
    ld [de], a
    inc de

Jump_000_2276:
    dec b
    jr nz, jr_000_2274

Call_000_2279:
jr_000_2279:
    ld hl, sp+$07
    bit 0, [hl]
    jr z, jr_000_2283

Call_000_227f:
    ld a, $2d
    ld [de], a
    inc de

jr_000_2283:
    ld b, $05
    ld c, $30
    ld hl, sp+$02

jr_000_2289:
    ld a, [hl+]
    or a
    jr nz, jr_000_2290

    dec b
    jr nz, jr_000_2289

jr_000_2290:
    add c
    ld [de], a
    inc de
    ld a, [hl+]
    bit 7, a
    jr z, jr_000_2290

    xor a
    ld [de], a
    pop bc
    add sp, $06
    ret


Call_000_229e:
    xor a

jr_000_229f:
    inc a

Call_000_22a0:
Jump_000_22a0:
    add hl, bc
    jr c, jr_000_229f

    dec a

Call_000_22a4:
    ret


Call_000_22a5:
    push af
    push bc
    push de
    push hl
    add sp, -$0a
    ld hl, sp+$00
    push de

Call_000_22ae:
    ld d, h
    ld e, l

Jump_000_22b0:
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    call Call_000_20e0
    inc hl
    inc hl

Jump_000_22ba:
    jr jr_000_2319

Call_000_22bc:
Jump_000_22bc:
    push af
    push bc
    push de

Jump_000_22bf:
    push hl

Jump_000_22c0:
    ld b, h
    ld c, l
    add sp, -$0a
    ld hl, sp+$00
    push de

Call_000_22c7:
    ld d, h

Jump_000_22c8:
    ld e, l
    ld h, b
    ld l, c

Jump_000_22cb:
    ld b, d

Call_000_22cc:
    ld c, e
    call Call_000_20e0

Jump_000_22d0:
    jr jr_000_2319

Call_000_22d2:
    push af
    push bc
    push de
    push hl
    add sp, -$0a
    ld hl, sp+$00
    push de
    ld d, h

Call_000_22dc:
    ld e, l
    ld b, h
    ld c, l
    ld h, $00

Call_000_22e1:
    ld l, a

Jump_000_22e2:
    ld a, $04

Call_000_22e4:
    call Call_000_21f0
    jr jr_000_2319

Call_000_22e9:
    push af
    push bc
    push de
    push hl
    add sp, -$0a

Jump_000_22ef:
    ld hl, sp+$00
    push de

Call_000_22f2:
    ld d, h
    ld e, l
    ld b, h
    ld c, l
    ld h, $00
    ld l, a
    call Call_000_08a5

Call_000_22fc:
    ld a, $04

Jump_000_22fe:
    call Call_000_21f0
    jr jr_000_2319

Call_000_2303:
    push af

Jump_000_2304:
    push bc
    push de
    push hl
    ld b, h
    ld c, l
    add sp, -$0a
    ld hl, sp+$00
    push de
    ld d, h
    ld e, l
    ld h, b
    ld l, c
    ld b, d
    ld c, e
    ld a, $06
    call Call_000_21f0

jr_000_2319:
    ld h, b
    ld l, c
    pop de
    call Call_000_20b1
    add sp, $0a
    pop hl
    pop de

Jump_000_2323:
    pop bc
    pop af
    ret


Call_000_2326:
    add sp, -$06
    push bc
    ld b, $00

Jump_000_232b:
    ld c, a
    push bc
    push de
    ld e, l
    ld d, h
    ld hl, sp+$0b
    ld a, $80
    ld [hl], a
    ld l, e
    ld h, d
    ld c, l

Jump_000_2338:
    ld b, h
    ld hl, sp+$06
    ld e, l
    ld d, h
    ld l, c
    ld h, b
    ld bc, $d8f0
    call Call_000_23af
    ld bc, $2710
    add hl, bc
    ld [de], a
    inc de
    ld bc, $fc18

Jump_000_234e:
    call Call_000_23af
    ld bc, $03e8
    add hl, bc
    ld [de], a
    inc de
    ld bc, $ff9c
    call Call_000_23af
    ld bc, $0064
    add hl, bc
    ld [de], a
    inc de
    ld bc, $fff6

Jump_000_2366:
    call Call_000_23af
    ld bc, $000a
    add hl, bc
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    pop de
    pop bc
    inc c
    dec c
    jr z, jr_000_2394

    ld b, $05
    ld hl, sp+$02

jr_000_237b:
    ld a, [hl]
    or a

Jump_000_237d:
    jr nz, jr_000_2386

    dec b
    inc hl
    bit 7, [hl]

Call_000_2383:
Jump_000_2383:
    jr z, jr_000_237b

    inc b

jr_000_2386:
    ld a, c
    sub b
    jr c, jr_000_2394

    jr z, jr_000_2394

    ld b, a
    ld a, $20

jr_000_238f:
    ld [de], a
    inc de
    dec b

Call_000_2392:
    jr nz, jr_000_238f

jr_000_2394:
    ld b, $05
    ld c, $30
    ld hl, sp+$02

jr_000_239a:
    ld a, [hl+]
    or a
    jr nz, jr_000_23a1

    dec b
    jr nz, jr_000_239a

Jump_000_23a1:
jr_000_23a1:
    add c
    ld [de], a
    inc de
    ld a, [hl+]

Jump_000_23a5:
    bit 7, a
    jr z, jr_000_23a1

    xor a
    ld [de], a
    pop bc
    add sp, $06

Jump_000_23ae:
    ret


Call_000_23af:
    xor a

jr_000_23b0:
    inc a
    add hl, bc
    jr c, jr_000_23b0

    dec a
    ret


Call_000_23b6:
    xor a
    ldh [$8f], a
    ld hl, $c1c0
    ld c, $04
    call Call_000_03a7

Jump_000_23c1:
    ld a, $01

Jump_000_23c3:
    ldh [$8f], a
    ret


Call_000_23c6:
    push hl
    push de
    ld a, [de]
    cp [hl]
    jr nz, jr_000_23db

    inc hl
    inc de
    ld a, [de]
    cp [hl]

Jump_000_23d0:
    jr nz, jr_000_23db

    inc hl
    inc de
    ld a, [de]
    cp [hl]
    jr nz, jr_000_23db

    xor a
    jr jr_000_23de

jr_000_23db:
    ld a, $01
    or a

jr_000_23de:
    pop de
    pop hl
    ret


Call_000_23e1:
    push hl
    ld a, [hl+]
    or [hl]
    inc hl
    or [hl]
    pop hl
    ret


Call_000_23e8:
    add sp, -$04
    push af
    xor a
    ldh [$8f], a
    pop af
    ld d, h
    ld e, l
    ld hl, sp+$00
    push hl

Jump_000_23f4:
    ld [hl+], a

Jump_000_23f5:
    ld [hl], e
    inc hl
    ld [hl], d

Jump_000_23f8:
    inc hl
    ldh a, [$95]
    ld [hl], a

Jump_000_23fc:
    pop de
    inc de

Jump_000_23fe:
    ld bc, $0010
    ld hl, $c1c0

jr_000_2404:
    inc hl
    call Call_000_23c6
    jr nz, jr_000_240e

    ld b, $01
    jr jr_000_2414

jr_000_240e:
    inc hl

Call_000_240f:
    inc hl

Call_000_2410:
    inc hl
    dec c
    jr nz, jr_000_2404

jr_000_2414:
    ld a, b
    or a
    jr nz, jr_000_243f

    ld c, $16
    ld hl, $c1c0

jr_000_241d:
    inc hl
    call Call_000_23e1
    jr nz, jr_000_2435

    dec hl
    dec de
    ld a, [de]
    ld [hl], a
    inc hl
    inc de
    ld a, [de]
    ld [hl], a
    inc de
    inc hl

Call_000_242d:
Jump_000_242d:
    ld a, [de]
    ld [hl], a
    inc de
    inc hl

Call_000_2431:
    ld a, [de]
    ld [hl], a
    jr jr_000_243f

jr_000_2435:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_241d

    ld a, b

Call_000_243c:
    or a
    jr nz, jr_000_243f

Jump_000_243f:
jr_000_243f:
    call Call_000_24bd
    ld a, $01
    ldh [$8f], a
    add sp, $04
    ret


Call_000_2449:
    add sp, -$03
    push af
    xor a
    ldh [$8f], a
    pop af
    ld d, h
    ld e, l
    ld hl, sp+$00
    push hl
    ld [hl], e
    inc hl
    ld [hl], d
    inc hl
    ldh a, [$95]
    ld [hl], a
    pop de
    ld c, $10
    ld hl, $c1c0

jr_000_2462:
    inc hl
    call Call_000_23c6
    jr nz, jr_000_2470

    dec hl
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    jr jr_000_2476

jr_000_2470:
    inc hl
    inc hl
    inc hl
    dec c
    jr nz, jr_000_2462

jr_000_2476:
    ld a, $01
    ldh [$8f], a
    add sp, $03
    ret


Call_000_247d:
    and $80
    ld b, a
    ldh a, [$8f]
    or a
    ret z

    ldh a, [$95]
    ld d, a
    ldh a, [$96]
    ld e, a
    push de
    ld c, $10
    ld hl, $c1c0

jr_000_2490:
    ld a, [hl+]
    xor b
    add a
    jr z, jr_000_24aa

    jr c, jr_000_24aa

    push bc
    push hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    ld a, [hl]
    ldh [$95], a
    ld [$2000], a
    ld l, e
    ld h, d
    call Call_000_0699
    pop hl
    pop bc

jr_000_24aa:
    inc hl
    inc hl
    inc hl
    dec c

Call_000_24ae:
    jr nz, jr_000_2490

    pop de
    ld a, d
    ldh [$95], a
    ld [$2000], a
    ld a, e
    ldh [$96], a
    ldh [rSVBK], a
    ret


Call_000_24bd:
    ld c, $0f

jr_000_24bf:
    ld hl, $c1c0
    ld b, c

Jump_000_24c3:
    ld d, h

Jump_000_24c4:
    ld e, l
    inc de
    inc de
    inc de
    inc de

jr_000_24c9:
    ld a, [de]
    cp [hl]
    jr c, jr_000_24dc

    push bc
    ld c, $04

jr_000_24d0:
    ld b, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, b

Jump_000_24d4:
    ld [de], a
    inc de
    dec c
    jr nz, jr_000_24d0

    pop bc
    jr jr_000_24e4

Call_000_24dc:
jr_000_24dc:
    inc hl
    inc de
    inc hl
    inc de
    inc hl

Call_000_24e1:
    inc de
    inc hl

Jump_000_24e3:
    inc de

Call_000_24e4:
jr_000_24e4:
    dec b
    jr nz, jr_000_24c9

    dec c
    jr nz, jr_000_24bf

    ret


Call_000_24eb:
Jump_000_24eb:
    push de

Jump_000_24ec:
    ld a, b
    and $7c
    rrca
    rrca

Jump_000_24f1:
    ld e, a
    ld a, b
    and $03
    ld b, a
    ld a, c
    and $e0
    or b
    rlca
    rlca

Call_000_24fc:
    rlca
    ld b, a
    ld a, c

Call_000_24ff:
    and $1f
    ld c, e
    pop de
    ret


Call_000_2504:
    push af

Jump_000_2505:
    push de
    and $1f

Jump_000_2508:
    ld e, a
    ld a, b
    rrca

Call_000_250b:
Jump_000_250b:
    rrca
    rrca
    ld b, a
    and $e0
    or e
    ld e, a
    ld a, b
    and $03
    ld b, a
    ld a, c
    rlca
    rlca
    and $7c
    or b
    ld b, a
    ld c, e

Call_000_251e:
    pop de
    pop af
    ret


Call_000_2521:
    add d
    bit 7, a
    jr z, jr_000_2528

    xor a
    ret


jr_000_2528:
    cp $1f
    ret c

    ld a, $1f
    ret


Call_000_252e:
    push af
    call Call_000_24eb
    call Call_000_2521
    call Call_000_2504
    pop af
    ret


Call_000_253a:
    push af
    call Call_000_24eb
    push af
    ld a, b
    call Call_000_2521
    ld b, a

Jump_000_2544:
    pop af
    call Call_000_2504
    pop af
    ret


Call_000_254a:
    push af
    call Call_000_24eb
    push af
    ld a, c
    call Call_000_2521
    ld c, a
    pop af
    call Call_000_2504
    pop af
    ret


Call_000_255a:
    push af
    push bc
    push de
    push hl

jr_000_255e:
    push bc
    push de
    ld d, c
    ld a, [hl+]
    ld c, a
    ld a, [hl+]
    ld b, a
    call Call_000_24eb
    call Call_000_2521
    ld e, a
    ld a, b
    call Call_000_2521
    ld b, a
    ld a, c
    call Call_000_2521

Jump_000_2575:
    ld c, a
    ld a, e
    call Call_000_2504
    pop de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    inc de
    pop bc
    dec b
    jr nz, jr_000_255e

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_258a:
    push af
    jr jr_000_25a7

Call_000_258d:
    push af
    jr jr_000_25b5

Call_000_2590:
    di
    call Call_000_25a1
    push af
    ldh a, [$a2]
    or a
    jr z, jr_000_259e

    or $80
    ldh [$a2], a

jr_000_259e:
    pop af

Call_000_259f:
    ei
    ret


Call_000_25a1:
    push af
    ldh a, [$bc]
    or a
    jr nz, jr_000_25c7

jr_000_25a7:
    ld a, $01
    ldh [$a2], a
    ldh [$bc], a
    jr jr_000_25bc

Call_000_25af:
    push af
    ldh a, [$bc]
    or a
    jr z, jr_000_25c7

jr_000_25b5:
    ld a, $02
    ldh [$a2], a
    xor a
    ldh [$bc], a

jr_000_25bc:
    ld a, c
    and a
    jr nz, jr_000_25c1

Call_000_25c0:
    inc a

jr_000_25c1:
    ldh [$a3], a
    ld a, $7c
    ldh [$a4], a

jr_000_25c7:
    pop af
    ret


Call_000_25c9:
    push af
    ldh a, [$a2]
    and $02
    jr z, jr_000_2623

    push bc
    push de
    push hl
    ldh a, [$a3]
    ld c, a
    ldh a, [$a4]
    sub c
    jr nc, jr_000_25dc

    xor a

jr_000_25dc:
    ld c, a
    jr jr_000_25f7

Call_000_25df:
    push af
    ldh a, [$a2]
    rrca
    jr nc, jr_000_2623

    push bc

Jump_000_25e6:
    push de
    push hl
    ldh a, [$a3]
    ld c, a
    ldh a, [$a4]
    sub c
    jr nc, jr_000_25f1

    xor a

jr_000_25f1:
    ld b, a
    ld a, $7c

Jump_000_25f4:
    sub b
    ld c, a
    ld a, b

jr_000_25f7:
    push af
    ldh a, [$a2]
    add a
    jr nc, jr_000_2605

Jump_000_25fd:
    ld a, c
    and $04

Call_000_2600:
    call z, Call_000_2632
    jr jr_000_2614

jr_000_2605:
    ld hl, $c200
    ld de, $c100
    ld b, $40
    srl c
    srl c
    call Call_000_255a

jr_000_2614:
    pop af
    and a
    jr nz, jr_000_261a

    ldh [$a2], a

jr_000_261a:
    ldh [$a4], a
    ld a, $03
    ldh [$9d], a
    pop hl
    pop de
    pop bc

jr_000_2623:
    pop af
    ret


Call_000_2625:
    push af

jr_000_2626:
    ldh a, [$a2]
    and a
    jr z, jr_000_2630

    call Call_000_2e3b
    jr jr_000_2626

jr_000_2630:
    pop af
    ret


Call_000_2632:
    push af
    ld a, c
    and $78
    ld d, a
    rrca
    rrca
    ld e, a
    swap a
    rrca
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, de
    ld d, h

Jump_000_2644:
    ld e, l
    ld hl, $c200
    ld bc, $c100
    ld a, $40

jr_000_264d:
    push af
    push de
    push bc
    ld a, [hl+]
    and $df
    add e
    ld c, a
    ld a, [hl+]
    res 2, a
    adc d
    ld b, a
    bit 7, a
    jr z, jr_000_2660

    or $78

jr_000_2660:
    bit 2, a

Call_000_2662:
    jr z, jr_000_266b

    and $fc
    dec a
    set 7, c
    set 6, c

jr_000_266b:
    ld b, a
    ld a, c
    bit 5, a
    jr z, jr_000_2674

    and $e0
    dec a

jr_000_2674:
    pop de
    ld [de], a
    inc de

Call_000_2677:
Jump_000_2677:
    ld a, b

Call_000_2678:
    ld [de], a
    inc de
    ld b, d
    ld c, e
    pop de
    pop af
    dec a
    jr nz, jr_000_264d

    pop af

Call_000_2682:
Jump_000_2682:
    ret


Call_000_2683:
    xor a
    ldh [$9b], a
    ldh [$9c], a

Call_000_2688:
    ldh a, [$9c]
    ldh [$9b], a
    ld h, $c0
    ld l, a
    ld a, $a0
    sub l

Jump_000_2692:
    ret z

Call_000_2693:
    rra
    rra
    ld c, a
    xor a

jr_000_2697:
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    dec c
    jr nz, jr_000_2697

Jump_000_269e:
    ret


Call_000_269f:
    ldh a, [$9b]
    ldh [$9c], a
    ret


Call_000_26a4:
    ldh a, [$9b]
    cp $a0
    ret z

    ld h, $c0
    ld l, a
    bit 5, b
    jr nz, jr_000_26cd

    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    inc c
    inc c
    ld a, l
    cp $a0
    jr z, jr_000_26ca

Jump_000_26bf:
    ld [hl], e
    inc l
    ld a, d
    add $08
    ld [hl+], a
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld a, l

jr_000_26ca:
    ldh [$9b], a
    ret


jr_000_26cd:
    ld [hl], e
    inc l
    ld a, d
    add $08
    ld [hl+], a

Jump_000_26d3:
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    inc c
    inc c
    ld a, l
    cp $a0
    jr z, jr_000_26ca

    ld [hl], e
    inc l

Call_000_26e0:
    ld [hl], d
    inc l
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld a, l
    ldh [$9b], a
    ret


Call_000_26ea:
    add sp, -$04
    push hl
    ld hl, sp+$02
    ld a, e
    ld [hl+], a
    ld a, d
    ld [hl+], a
    ld a, c
    ld [hl+], a
    ld [hl], b
    pop de
    bit 5, b
    jr nz, jr_000_2724

Call_000_26fb:
    ldh a, [$9b]
    ld b, $c0

Call_000_26ff:
Jump_000_26ff:
    ld c, a

Jump_000_2700:
jr_000_2700:
    ld a, c
    cp $a0
    jr z, jr_000_2750

    ld a, [de]
    cp $80

Call_000_2708:
    jr z, jr_000_2750

    ld hl, sp+$00

Call_000_270c:
    add [hl]
    ld [bc], a
    inc c
    inc de
    inc hl
    ld a, [de]

Jump_000_2712:
    add [hl]
    ld [bc], a

Jump_000_2714:
    inc c
    inc de
    inc hl
    ld a, [de]
    add [hl]
    ld [bc], a

Call_000_271a:
    inc c
    inc de
    inc hl
    ld a, [de]
    or [hl]
    ld [bc], a
    inc c
    inc de
    jr jr_000_2700

jr_000_2724:
    ldh a, [$9b]
    ld b, $c0
    ld c, a

jr_000_2729:
    ld a, c
    cp $a0
    jr z, jr_000_2750

    ld a, [de]
    cp $80
    jr z, jr_000_2750

    ld hl, sp+$00
    add [hl]
    ld [bc], a
    inc c
    inc de
    inc hl
    ld a, [de]
    cpl

Call_000_273c:
    add $09
    add [hl]
    ld [bc], a
    inc c
    inc de
    inc hl
    ld a, [de]
    add [hl]
    ld [bc], a
    inc c
    inc de
    inc hl
    ld a, [de]

Jump_000_274a:
    or [hl]
    ld [bc], a
    inc c
    inc de
    jr jr_000_2729

jr_000_2750:
    ld a, c
    ldh [$9b], a
    add sp, $04
    ret


Call_000_2756:
    push af
    push bc
    push de
    push hl
    push hl
    ld hl, $0810
    add hl, de
    ld d, h
    ld e, l
    pop hl

jr_000_2762:
    push de
    push hl

jr_000_2764:
    ldh a, [$9b]
    cp $a0
    jr nz, jr_000_2771

    add sp, $04
    pop hl
    pop de

Jump_000_276e:
    pop bc
    pop af
    ret


jr_000_2771:
    push hl
    ld h, $c0
    ld l, a
    ld [hl], e
    inc l

Jump_000_2777:
    ld [hl], d
    inc l
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld a, l
    ldh [$9b], a
    pop hl
    inc c
    inc c
    ld a, d
    add $08

Call_000_2786:
    ld d, a
    dec h
    jr nz, jr_000_2764

    pop hl
    pop de
    ld a, e
    add $10
    ld e, a
    dec l
    jr nz, jr_000_2762

    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_2798:
    ldh a, [$9b]
    cp $a0
    ret z

    ld h, $c0
    ld l, a
    ld a, e
    add $0c
    ld e, a
    ld a, d
    add $04
    ld d, a
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld a, l
    ldh [$9b], a
    ret


Call_000_27b4:
    push af
    push bc
    push de
    push hl
    push bc
    ld a, [$c320]
    ld c, a
    ld a, [$c321]
    ld b, a
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    inc a
    cp $16
    jp nc, Jump_000_27f4

    add hl, hl
    add hl, hl

Call_000_27d0:
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld l, e
    ld h, d
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop de
    ld a, h
    cp $14
    jp nc, Jump_000_27f4

    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop bc
    call Call_000_26a4
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_000_27f4:
    pop bc
    pop hl
    pop de

Jump_000_27f7:
    pop bc
    pop af
    ret


Call_000_27fa:
    push af
    push bc
    push de
    push hl
    push bc
    ld a, [$c320]
    ld c, a
    ld a, [$c321]
    ld b, a
    ld a, l

Jump_000_2808:
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    ld a, h
    inc a
    cp $16
    jp nc, Jump_000_283a

    add hl, hl

Jump_000_2815:
    add hl, hl
    add hl, hl
    push hl
    ld hl, $c322
    ld a, [hl+]
    ld b, [hl]
    ld c, a
    ld l, e
    ld h, d

Call_000_2820:
    ld a, l
    sub c
    ld l, a
    ld a, h
    sbc b
    ld h, a
    pop de
    ld a, h
    cp $13

Call_000_282a:
    jp nc, Jump_000_283a

    add hl, hl
    add hl, hl
    add hl, hl
    ld e, h
    pop bc
    call Call_000_2798
    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_000_283a:
    pop bc
    pop hl
    pop de
    pop bc
    pop af
    ret


    db $06, $08, $3f, $cd, $a7, $ef, $be, $fb, $ef, $be, $fb, $da, $73, $fc, $06, $08
    db $0f, $c3, $6c, $3a, $c3, $ec, $0e, $c3, $ef, $3a, $b3, $ff, $06, $08, $3f, $cd
    db $a7, $ef, $bf, $db, $da, $7e, $7f, $ea, $bf, $ff, $06, $08, $ff, $ce, $a7, $ff
    db $b3, $a7, $3f, $bf, $fb, $ea, $7f, $fc, $06, $08, $0f, $c3, $6c, $da, $ce, $ec
    db $ee, $fe, $ab, $fe, $f0, $fc, $06, $08, $ff, $fe, $ab, $ef, $fe, $a7, $ff, $be
    db $fb, $da, $73, $fc, $06, $08, $3f, $cd, $a7, $ef, $fe, $a7, $ef, $be, $fb, $da
    db $73, $fc, $06, $08, $ff, $fe, $ab, $fd, $b3, $67, $39, $c3, $b0, $3b, $03, $f0
    db $06, $08, $3f, $cd, $a7, $ef, $bd, $a7, $ef, $be, $fb, $da, $73, $fc, $06, $08
    db $3f, $cd, $a7, $ef, $be, $fb, $da, $bf, $fb, $da, $73, $fc, $06, $08, $3f, $cd
    db $a7, $ef, $bf, $fb, $0e, $70, $fc, $0e, $c0, $fc, $40, $28, $4e, $28, $5c, $28
    db $6a, $28, $78, $28, $86, $28, $94, $28, $a2, $28, $b0, $28, $be, $28

    call z, $cc28
    jr z, @-$32

    jr z, @-$32

    db $28

    db $cc, $28, $cc, $28

Call_000_28fa:
Jump_000_28fa:
    push af
    push bc

Call_000_28fc:
    push de

Jump_000_28fd:
    push hl
    add sp, -$10

Call_000_2900:
Jump_000_2900:
    push de
    push hl

Jump_000_2902:
    ld hl, sp+$06

Jump_000_2904:
    ld d, h
    ld e, l
    pop hl
    call Call_000_21f0
    ld hl, sp+$04
    pop de
    call Call_000_2933
    add sp, $10
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_2917:
    push af
    push bc
    push de
    push hl
    sub $30
    and $1f
    add a
    ld hl, $28da
    add l
    ld l, a
    jr nc, jr_000_2928

    inc h

jr_000_2928:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2962

Jump_000_292e:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_2933:
    push af
    push bc
    push de
    push hl

jr_000_2937:
    ld a, [hl+]

Call_000_2938:
    and a
    jr z, jr_000_295d

    sub $30
    jr nc, jr_000_2945

    ld a, $06
    add b
    ld b, a
    jr jr_000_2937

jr_000_2945:
    and $1f
    add a
    push hl

Call_000_2949:
    ld hl, $28da
    add l
    ld l, a
    jr nc, jr_000_2951

    inc h

jr_000_2951:
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    call Call_000_2962
    ld a, [hl]
    add b
    ld b, a
    pop hl
    jr jr_000_2937

jr_000_295d:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_2962:
    push af
    push bc
    push de
    push hl
    push hl

Call_000_2967:
    ld hl, $29e3
    ld a, b
    and $07
    add l

Call_000_296e:
    ld l, a
    jr nc, jr_000_2972

    inc h

jr_000_2972:
    ld a, [hl]
    ld [$c283], a
    pop hl
    push hl
    ld a, b
    and $f8

Call_000_297b:
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl

Call_000_2980:
    ld b, $00
    sla c
    add hl, bc

Call_000_2985:
    add hl, de
    pop de
    ld a, [de]
    inc de
    ld [$c282], a
    ld a, [de]
    inc de
    ld [$c281], a
    ld c, $80

jr_000_2993:
    push hl
    ld a, [$c283]
    ld b, a
    ld a, [$c282]
    ld [$c280], a

Jump_000_299e:
    ld a, [de]
    and c
    jr z, jr_000_29a6

    ld a, b
    or [hl]
    jr jr_000_29a9

jr_000_29a6:
    ld a, b
    cpl
    and [hl]

jr_000_29a9:
    ld [hl+], a
    rrc c
    ld a, [de]
    and c

Call_000_29ae:
    jr z, jr_000_29b4

    ld a, b
    or [hl]
    jr jr_000_29b7

jr_000_29b4:
    ld a, b
    cpl
    and [hl]

jr_000_29b7:
    ld [hl-], a
    rrc c
    jr nc, jr_000_29bd

    inc de

jr_000_29bd:
    rrc b
    jr nc, jr_000_29c8

    ld a, $20
    add l
    ld l, a
    jr nc, jr_000_29c8

    inc h

jr_000_29c8:
    ld a, [$c280]
    dec a

Jump_000_29cc:
    ld [$c280], a
    jp nz, Jump_000_299e

    pop hl
    inc hl
    inc hl
    ld a, [$c281]
    dec a
    ld [$c281], a
    jr nz, jr_000_2993

Call_000_29de:
    pop hl
    pop de

Jump_000_29e0:
    pop bc
    pop af
    ret


    db $80, $40, $20, $10, $08, $04, $02, $01

Call_000_29eb:
    xor a
    ldh [$ba], a
    ldh a, [$b8]
    or a
    jr z, jr_000_2a28

    ld a, $01
    ldh [rVBK], a
    ld bc, $c300
    ld hl, $c326
    ld a, [hl+]
    ld d, [hl]
    ld e, a

Call_000_2a00:
Jump_000_2a00:
    ld a, $01

Jump_000_2a02:
    ld hl, $ff51
    ld [hl], b

Call_000_2a06:
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d

Call_000_2a0a:
Jump_000_2a0a:
    inc hl
    ld [hl], e
    inc hl
    ld [hl], a
    xor a
    ldh [rVBK], a
    ld bc, $c340
    ld hl, $c326
    ld a, [hl+]
    ld d, [hl]
    ld e, a
    ld a, $01
    ld hl, $ff51

Call_000_2a1f:
    ld [hl], b
    inc hl
    ld [hl], c
    inc hl
    ld [hl], d
    inc hl
    ld [hl], e
    inc hl
    ld [hl], a

jr_000_2a28:
    ldh a, [$b9]

Call_000_2a2a:
    or a

Jump_000_2a2b:
    jr z, jr_000_2a64

    ld a, $01
    ldh [$ba], a
    ldh [rVBK], a
    ld de, $c380
    ld a, [$c328]
    ld l, a
    ld h, $98
    ld b, $20

jr_000_2a3e:
    ld a, [de]
    inc de
    ld [hl], a
    ld a, b

Jump_000_2a42:
    ld bc, $0020

Jump_000_2a45:
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_2a3e

    xor a
    ldh [rVBK], a
    ld de, $c3c0
    ld a, [$c328]
    ld l, a
    ld h, $98
    ld b, $20

jr_000_2a58:
    ld a, [de]
    inc de
    ld [hl], a
    ld a, b
    ld bc, $0020
    add hl, bc
    ld b, a
    dec b
    jr nz, jr_000_2a58

jr_000_2a64:
    xor a
    ldh [$b8], a

Call_000_2a67:
    ldh [$b9], a
    ldh a, [$ba]

Jump_000_2a6b:
    ret


Call_000_2a6c:
    ld a, [$c323]
    add c
    and $3f
    ld h, $00
    ld l, a
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [$c321]
    add b

Jump_000_2a7f:
    and $3f
    ld d, $00

Call_000_2a83:
    ld e, a
    add hl, de
    ld de, $d000
    add hl, de
    ret


Call_000_2a8a:
    ld a, [$c323]
    add c
    and $1f
    ld h, $00
    ld l, a
    add hl, hl

Call_000_2a94:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9800
    add hl, de
    ld a, l
    ld [$c326], a
    ld a, h
    ld [$c327], a
    ld a, [$c321]
    add b
    and $1f
    ld h, $00
    ld l, a
    ld de, $c300
    add hl, de
    push hl
    call Call_000_2a6c
    pop de
    push hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $20

jr_000_2abf:
    ld a, [hl+]
    ld [de], a

Jump_000_2ac1:
    ld a, l
    and $3f
    jr nz, jr_000_2acc

    ld a, c

Call_000_2ac7:
Jump_000_2ac7:
    ld bc, $ffc0
    add hl, bc
    ld c, a

jr_000_2acc:
    inc e
    res 5, e
    dec c
    jr nz, jr_000_2abf

    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $4020
    ld a, e
    add b
    ld e, a

jr_000_2adf:
    ld a, [hl+]

Jump_000_2ae0:
    ld [de], a
    ld a, l

Jump_000_2ae2:
    and $3f
    jr nz, jr_000_2aec

    ld a, c
    ld bc, $ffc0
    add hl, bc
    ld c, a

jr_000_2aec:
    inc e
    res 5, e

Call_000_2aef:
    dec c
    jr nz, jr_000_2adf

    ld a, $01
    ldh [$b8], a
    ret


Call_000_2af7:
    ld a, [$c321]
    add b
    and $1f
    ld [$c328], a
    ld d, $00
    ld e, a
    ld a, [$c323]
    add c
    and $1f
    ld h, $00

Jump_000_2b0b:
    ld l, a
    ld de, $c380
    add hl, de
    push hl

Jump_000_2b11:
    call Call_000_2a6c
    pop de
    push hl
    ld a, $02
    ldh [$96], a
    ldh [rSVBK], a
    ld c, $20

jr_000_2b1e:
    ld a, [hl]
    ld [de], a
    ld a, c
    ld bc, $0040
    add hl, bc
    ld c, a
    res 5, h
    set 4, h

Jump_000_2b2a:
    inc e

Jump_000_2b2b:
    res 5, e
    dec c
    jr nz, jr_000_2b1e

    pop hl
    ld a, $03
    ldh [$96], a
    ldh [rSVBK], a
    ld bc, $4020
    ld a, e
    add b
    ld e, a

jr_000_2b3d:
    ld a, [hl]
    ld [de], a
    ld a, c
    ld bc, $0040
    add hl, bc
    ld c, a
    res 5, h

Jump_000_2b47:
    set 4, h
    inc e
    res 5, e
    dec c
    jr nz, jr_000_2b3d

    ld a, $01
    ldh [$b9], a
    ret


Call_000_2b54:
    push af
    push bc
    push de
    push hl
    ld hl, $ffce
    bit 0, [hl]
    jr z, jr_000_2b67

    res 0, [hl]

Call_000_2b61:
    ld a, [$c33e]
    rst $18
    inc b
    ld a, [hl]

jr_000_2b67:
    pop hl
    pop de
    pop bc
    pop af

Call_000_2b6b:
Jump_000_2b6b:
    ret


Call_000_2b6c:
    push hl

Call_000_2b6d:
    ld hl, $ffce
    bit 0, [hl]
    jr z, jr_000_2b78

    res 0, [hl]
    rst $08

    db $00

jr_000_2b78:
    pop hl
    ret


Call_000_2b7a:
    push af
    push bc
    push de
    push hl
    ld a, [$c818]

Call_000_2b81:
    and $01

Call_000_2b83:
Jump_000_2b83:
    ld c, a
    ldh a, [$ce]
    and $fe
    or c
    ldh [$ce], a
    bit 0, a
    jr z, jr_000_2b93

    xor a
    rst $18

Jump_000_2b91:
    inc b
    ld a, [hl]

jr_000_2b93:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_2b98:
    push af
    push bc
    push de
    push hl
    ld a, [$c818]
    and $01

Jump_000_2ba1:
    ld c, a
    ldh a, [$ce]
    and $fe
    or c
    ldh [$ce], a
    bit 0, a
    jr nz, jr_000_2bb2

    ld a, [$c33e]
    jr jr_000_2bb3

jr_000_2bb2:
    xor a

Jump_000_2bb3:
jr_000_2bb3:
    rst $18

    db $04, $7e

    pop hl
    pop de
    pop bc
    pop af
    ret


Jump_000_2bbb:
    push af
    push bc
    push de
    push hl
    ld hl, sp+$08

Call_000_2bc1:
Jump_000_2bc1:
    ld e, [hl]

Jump_000_2bc2:
    inc hl

Jump_000_2bc3:
    ld d, [hl]

Call_000_2bc4:
    dec hl

Jump_000_2bc5:
    ld a, [de]
    inc de

Call_000_2bc7:
    ld [hl], e
    inc hl
    ld [hl], d

jr_000_2bca:
    cp $40
    jr nc, jr_000_2c0d

    cp $36
    jr c, jr_000_2bed

    ld hl, $ffce
    bit 0, [hl]
    jr nz, jr_000_2c14

    ldh [$cd], a
    sub $36
    ld hl, $2be8

Call_000_2be0:
Jump_000_2be0:
    add l

Jump_000_2be1:
    ld l, a

Jump_000_2be2:
    jr nc, jr_000_2be5

Call_000_2be4:
    inc h

Jump_000_2be5:
jr_000_2be5:
    ld a, [hl]
    jr jr_000_2c01

    nop
    rla

    db $18

    add hl, de
    ld a, [de]

jr_000_2bed:
    ld d, a
    ldh a, [$cd]
    or a
    ld a, d
    jr z, jr_000_2bfa

    ld hl, $c33e
    ld [hl], a
    jr jr_000_2c14

Jump_000_2bfa:
jr_000_2bfa:
    ld hl, $c33e
    cp [hl]

Call_000_2bfe:
    jr z, jr_000_2c14

    ld [hl], a

jr_000_2c01:
    ld hl, $ffce
    bit 0, [hl]
    jr nz, jr_000_2c14

    rst $18

    db $04, $7e

    jr jr_000_2c14

jr_000_2c0d:
    sub $40
    rst $18

    db $06, $7e

    jr jr_000_2c14

Call_000_2c14:
jr_000_2c14:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_2c19:
    push af
    push bc
    push de
    push hl
    jr jr_000_2bca

Call_000_2c1f:
    push af
    push bc

Jump_000_2c21:
    push de
    push hl
    ldh a, [$cd]
    or a
    jr z, jr_000_2c45

jr_000_2c28:
    call Call_000_2e3b
    ldh a, [$90]

Jump_000_2c2d:
    or a
    jr nz, jr_000_2c35

    ldh a, [$cd]
    or a
    jr nz, jr_000_2c28

jr_000_2c35:
    xor a
    ldh [$cd], a
    ld hl, $ffce
    bit 0, [hl]
    jr nz, jr_000_2c45

    ld a, [$c33e]
    rst $18
    inc b
    ld a, [hl]

jr_000_2c45:
    pop hl
    pop de
    pop bc
    pop af
    ret


Call_000_2c4a:
    ldh a, [$cd]
    or a
    ret z

    ld hl, $c4cd
    xor a
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    inc hl
    or [hl]
    ret nz

    xor a
    ldh [$cd], a

Jump_000_2c5d:
    ld hl, $ffce
    bit 0, [hl]

Jump_000_2c62:
    jr nz, jr_000_2c6a

    ld a, [$c33e]
    rst $18

    db $04, $7e

jr_000_2c6a:
    ret


Call_000_2c6b:
    ld a, [$c0f4]
    cp $01
    call z, Call_000_2c98
    ld hl, $c0f0
    inc [hl]
    ld a, [hl]

Call_000_2c78:
    cp $3c
    ret c

    ld [hl], $00
    inc hl

Jump_000_2c7e:
    inc [hl]
    ld a, [hl]

Call_000_2c80:
    cp $3c

Jump_000_2c82:
    ret c

    ld [hl], $00
    inc hl
    inc [hl]
    ld a, [hl]
    cp $3c
    ret c

    ld [hl], $00
    inc hl
    inc [hl]
    ld a, [hl]
    cp $64
    ret c

    dec [hl]
    dec hl
    ld [hl], $3b
    ret


Call_000_2c98:
    ld hl, $c0f5
    inc [hl]
    ld a, [hl]
    cp $3c
    jr nz, jr_000_2cb0

Call_000_2ca1:
    ld [hl], $00
    inc hl
    rst $08
    sbc a

Call_000_2ca6:
    dec [hl]

Jump_000_2ca7:
    ld a, [hl]
    cp $ff

Call_000_2caa:
    jr nz, jr_000_2cb0

    ld [hl], $3b
    inc hl
    dec [hl]

jr_000_2cb0:
    ld hl, $c0f6
    ld a, [hl+]
    or [hl]
    ret nz

    xor a
    ld hl, $c0f4
    ld [hl], $ff
    inc hl
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    rst $08

Jump_000_2cc1:
    and b

Jump_000_2cc2:
    ret


Call_000_2cc3:
    push af
    push de
    push hl
    ld hl, $c0f0

Call_000_2cc9:
    ld de, $c82e
    di
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

Call_000_2cd7:
    ld [de], a
    inc de
    ei
    pop hl
    pop de
    pop af

Jump_000_2cdd:
    ret


Call_000_2cde:
    push af
    push de

Jump_000_2ce0:
    push hl

Call_000_2ce1:
Jump_000_2ce1:
    ld de, $c0f0

Jump_000_2ce4:
    ld hl, $c82e
    di
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a
    inc de
    ld a, [hl+]
    ld [de], a

Jump_000_2cf0:
    inc de
    ld a, [hl+]

Jump_000_2cf2:
    ld [de], a
    inc de

Call_000_2cf4:
Jump_000_2cf4:
    ei
    pop hl
    pop de
    pop af
    ret


Call_000_2cf9:
Jump_000_2cf9:
    push af
    push hl
    ld hl, $c0f0
    xor a
    di

Jump_000_2d00:
    ld [hl+], a

Call_000_2d01:
Jump_000_2d01:
    ld [hl+], a
    ld [hl+], a

Jump_000_2d03:
    ld [hl], a
    ei
    pop hl
    pop af
    ret


    db $80, $40, $20, $10, $08, $04, $02, $01

Call_000_2d10:
    push hl
    push de
    push bc
    ld b, a
    ld hl, $2d08
    ld a, e
    rlca
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_000_2d20

    inc h

jr_000_2d20:
    ld a, [hl]

Call_000_2d21:
    ld hl, $c840
    ld e, d
    ld d, $00
    add hl, de
    and [hl]
    ld a, b
    pop bc
    pop de
    pop hl

Call_000_2d2d:
Jump_000_2d2d:
    ret


Call_000_2d2e:
    push hl
    push af
    ld hl, $2d08
    ld a, e
    rlca
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_000_2d3c

    inc h

jr_000_2d3c:
    ld a, [hl]
    ld hl, $c840

Jump_000_2d40:
    ld e, d
    ld d, $00
    add hl, de
    or [hl]
    ld [hl], a

Jump_000_2d46:
    pop af
    pop hl
    ret


Call_000_2d49:
    push hl
    push af
    ld hl, $2d08

Jump_000_2d4e:
    ld a, e
    rlca

Jump_000_2d50:
    rlca
    rlca
    add l
    ld l, a
    jr nc, jr_000_2d57

    inc h

jr_000_2d57:
    ld a, [hl]
    ld hl, $c840
    ld e, d
    ld d, $00
    add hl, de
    cpl

Call_000_2d60:
    and [hl]
    ld [hl], a

Jump_000_2d62:
    pop af
    pop hl
    ret


Call_000_2d65:
    push bc

Call_000_2d66:
    ld c, [hl]
    inc hl
    ld b, [hl]
    dec hl
    push hl
    ld h, b
    ld l, c
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl

Call_000_2d71:
    ld b, h
    ld c, l
    pop hl
    ld [hl], c
    inc hl
    ld [hl], b
    pop bc
    ret


Jump_000_2d79:
    push de
    push hl
    ld hl, sp+$04
    call Call_000_2d65
    call Call_000_2d10

Jump_000_2d83:
    pop hl
    pop de
    ret


Jump_000_2d86:
    push de
    push hl
    ld hl, sp+$04
    call Call_000_2d65
    call Call_000_2d2e
    pop hl
    pop de
    ret


Jump_000_2d93:
    push de
    push hl

Jump_000_2d95:
    ld hl, sp+$04
    call Call_000_2d65
    call Call_000_2d49
    pop hl
    pop de
    ret


Jump_000_2da0:
    and a

Jump_000_2da1:
    cp $11
    ld a, $00
    jr nz, jr_000_2da8

    inc a

jr_000_2da8:
    ldh [$fe], a

Jump_000_2daa:
    ld sp, $d000
    call Call_000_0341
    di
    ld hl, $c000
    ld c, $ff
    call Call_000_03a7
    xor a
    ld c, $80
    ld b, $70

jr_000_2dbe:
    ld [c], a
    inc c
    dec b
    jr nz, jr_000_2dbe

Jump_000_2dc3:
    ldh [rIF], a

Jump_000_2dc5:
    ldh [rIE], a
    ldh [rSCY], a
    ldh [rSCX], a

Call_000_2dcb:
    ldh [rSTAT], a
    ldh a, [$fe]

Call_000_2dcf:
    or a

Jump_000_2dd0:
    jr nz, jr_000_2dd5

    rst $10
    ld [bc], a
    db $01

jr_000_2dd5:
    xor a
    ldh [rVBK], a
    ldh [rSVBK], a
    ldh [rRP], a
    xor a

Call_000_2ddd:
Jump_000_2ddd:
    ld [$0000], a

Call_000_2de0:
Jump_000_2de0:
    call Call_000_066c
    call Call_000_037b
    xor a
    ldh [$9e], a
    call Call_000_02a3
    ld a, $06
    ldh [$a6], a
    call Call_000_2683
    call Call_000_23b6
    call Call_000_0458
    rst $10

    db $00, $7e

    ld a, $07
    ldh [rWX], a

Jump_000_2e00:
    ld a, $90
    ldh [rWY], a
    ld hl, $ff06
    ld a, $77
    ld [hl+], a
    xor a
    ld [hl], a
    set 2, [hl]
    ld a, $08
    ldh [rSTAT], a
    ld a, $50
    ldh [rLYC], a
    xor a
    ldh [rSB], a

Jump_000_2e19:
    ld a, $02
    ldh [rSC], a
    ld a, $82
    ldh [rSC], a
    xor a
    ldh [rIF], a
    ld a, $0d
    ldh [rIE], a
    ld a, $e7
    ldh [rLCDC], a
    ei

Jump_000_2e2d:
    xor a
    ldh [$9d], a
    ldh [$a2], a
    ldh [$a3], a
    ldh [$a4], a
    rst $10

    db $00, $01

    stop

Call_000_2e3b:
    push af
    push bc
    push de
    push hl
    ldh a, [$c8]
    or a
    jr z, jr_000_2e4b

Call_000_2e44:
    ldh a, [$c3]
    and $e0

Jump_000_2e48:
    jp nz, Jump_000_2f8d

Jump_000_2e4b:
jr_000_2e4b:
    ldh a, [rVBK]
    push af

Call_000_2e4e:
Jump_000_2e4e:
    ldh a, [$9e]
    or a
    jr z, jr_000_2eb8

    ldh a, [rLY]
    ld l, a
    ldh a, [$a0]
    ld h, a
    cp l
    jr c, jr_000_2e63

    ldh a, [$a1]
    dec a
    ldh [$a1], a
    jr nz, jr_000_2e6b

jr_000_2e63:
    ld a, l
    ld h, l
    ldh [$a0], a
    ld a, $0f
    ldh [$a1], a

jr_000_2e6b:
    ld de, $c0fa
    call Call_000_20e0
    ldh a, [$90]
    and $0c
    cp $0c
    jr nz, jr_000_2e7f

    ld a, $01

Call_000_2e7b:
    ldh [$9a], a
    jr jr_000_2e84

jr_000_2e7f:
    ldh a, [$9a]
    or a
    jr z, jr_000_2eb8

jr_000_2e84:
    ldh a, [$94]
    bit 2, a
    jr z, jr_000_2e97

    ldh a, [$9e]
    inc a
    cp $04
    jr c, jr_000_2e93

    ld a, $01

jr_000_2e93:
    ldh [$9e], a
    jr jr_000_2ea6

jr_000_2e97:
    ldh a, [$90]
    bit 3, a
    jr z, jr_000_2ea6

    bit 2, a
    jr nz, jr_000_2ea6

    xor a
    ldh [$9a], a
    jr jr_000_2eb8

jr_000_2ea6:
    ldh a, [$91]
    and $f3
    jr nz, jr_000_2eb8

jr_000_2eac:
    halt

Jump_000_2eae:
    ldh a, [$8d]
    and a
    jr z, jr_000_2eac

    xor a
    ldh [$8d], a
    jr jr_000_2e84

jr_000_2eb8:
    halt
    ldh a, [$8d]
    and a
    jr z, jr_000_2eb8

    call Call_000_2688
    xor a
    call Call_000_247d
    pop af
    ldh [rVBK], a
    xor a
    ldh [$8d], a
    ld hl, $c4b2
    inc [hl]
    pop hl
    pop de
    pop bc

Jump_000_2ed3:
    pop af
    ret


Call_000_2ed5:
    push bc
    push de
    push hl
    ld hl, sp+$06
    ld e, [hl]
    inc hl
    ld d, [hl]
    dec hl
    push hl
    ld h, d

Jump_000_2ee0:
    ld l, e

Jump_000_2ee1:
    ld c, [hl]

Call_000_2ee2:
    inc hl

Call_000_2ee3:
    ld d, h
    ld e, l
    pop hl
    ld [hl], e
    inc hl
    ld [hl], d
    pop hl
    pop de
    call Call_000_2ef0
    pop bc
    ret


Call_000_2ef0:
    push af

jr_000_2ef1:
    call Call_000_2e3b

Call_000_2ef4:
    dec c
    jr nz, jr_000_2ef1

    pop af
    ret


Jump_000_2ef9:
    push af
    push bc

Call_000_2efb:
    push de
    push hl

Jump_000_2efd:
    ldh a, [rVBK]
    push af
    call Call_000_05f6
    ldh a, [$8d]

Jump_000_2f05:
    or a

Call_000_2f06:
    jr nz, jr_000_2f46

    ldh a, [$98]
    or a
    jr nz, jr_000_2f1d

    ldh a, [$8b]
    ldh [rSCX], a
    ldh a, [$8a]
    ldh [rSCY], a
    ldh a, [rLCDC]
    and $f7
    ldh [rLCDC], a
    jr jr_000_2f2a

jr_000_2f1d:
    xor a
    ldh [rSCX], a
    ld a, $40
    ldh [rSCY], a
    ldh a, [rLCDC]
    or $08
    ldh [rLCDC], a

jr_000_2f2a:
    call $ff80
    call Call_000_29eb
    or a
    jr nz, jr_000_2f36

    call Call_000_04de

jr_000_2f36:
    ldh a, [$9e]
    or a
    jr z, jr_000_2f3e

    call Call_000_203e

jr_000_2f3e:
    ld a, $01
    ldh [$8d], a

Jump_000_2f42:
    ld hl, $ff8c
    inc [hl]

jr_000_2f46:
    call Call_000_02eb
    ldh a, [$90]
    cp $0f
    jp z, Jump_000_2daa

    call Call_000_3038
    rst $10

    db $02, $7e

    call Call_000_2c4a
    call Call_000_2c6b
    call Call_000_25df
    call Call_000_25c9
    ld a, $80
    call Call_000_247d
    pop af
    ldh [rVBK], a
    pop hl
    pop de
    pop bc
    pop af
    reti


Jump_000_2f6f:
    push af
    ldh a, [rLCDC]
    bit 7, a
    jr nz, jr_000_2f7f

    push bc
    push de

Call_000_2f78:
    push hl
    rst $10

    db $02, $7e

    pop hl
    pop de
    pop bc

jr_000_2f7f:
    pop af

Jump_000_2f80:
    reti


Jump_000_2f81:
    reti


Call_000_2f82:
Jump_000_2f82:
jr_000_2f82:
    halt
    ldh a, [$8d]
    and a
    jr z, jr_000_2f82

    xor a
    ldh [$8d], a
    ret


Jump_000_2f8d:
    rst $10
    jr jr_000_2f98

    jp Jump_000_2daa


Jump_000_2f93:
    push af
    ldh a, [rSB]
    ldh [$c0], a

jr_000_2f98:
    push bc
    push de
    push hl
    ldh a, [$c2]
    or a
    jr nz, jr_000_2fc9

Call_000_2fa0:
    ldh a, [$c0]
    cp $70
    jr z, jr_000_2fbf

    cp $71
    jr z, jr_000_2fac

    jr jr_000_2ff3

jr_000_2fac:
    ld a, $02
    ldh [$c2], a
    ld a, [$0070]
    ldh [rSB], a
    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    jr jr_000_2ff3

jr_000_2fbf:
    ld a, $01

Jump_000_2fc1:
    ldh [$c2], a

Jump_000_2fc3:
    ld a, $03
    ldh [rSC], a
    jr jr_000_2ff3

jr_000_2fc9:
    cp $01
    jr nz, jr_000_2fe6

    call Call_000_2ff8
    ld hl, $ffc3
    ldh a, [$c0]
    cp $ff
    jr z, jr_000_2fe0

    or a
    jr z, jr_000_2fe0

    ld [hl], $00
    jr jr_000_2fe1

Call_000_2fe0:
Jump_000_2fe0:
jr_000_2fe0:
    inc [hl]

Call_000_2fe1:
jr_000_2fe1:
    call Call_000_3021
    jr jr_000_2ff3

jr_000_2fe6:
    call Call_000_2ff8
    ld a, $80
    ldh [rSC], a
    xor a
    ldh [$c3], a
    call Call_000_3021

Call_000_2ff3:
jr_000_2ff3:
    pop hl
    pop de
    pop bc
    pop af
    reti


Call_000_2ff8:
    ldh a, [$c4]
    or a
    jr nz, jr_000_3002

Jump_000_2ffd:
    ldh a, [$c1]

Call_000_2fff:
    ldh [rSB], a
    ret


jr_000_3002:
    cp $01
    jr nz, jr_000_3018

    call Call_000_30ad
    ldh [rSB], a
    ld hl, $ffc5

Call_000_300e:
    dec [hl]
    ld a, [hl]

Call_000_3010:
    ret nz

    dec hl
    dec [hl]
    ldh a, [$c9]
    ldh [$c1], a
    ret


jr_000_3018:
    ld a, $40
    ldh [rSB], a
    ld hl, $ffc4
    dec [hl]
    ret


Call_000_3021:
    ldh a, [$c0]
    ld b, a
    and $f0
    cp $40
    ret c

    jr nz, jr_000_302f

    xor a
    ldh [$c6], a
    ret


jr_000_302f:
    cp $50
    jr nz, jr_000_3037

    ld a, b

Jump_000_3034:
    call Call_000_30c9

Jump_000_3037:
jr_000_3037:
    ret


Call_000_3038:
    ldh a, [$c2]
    or a

Call_000_303b:
    ret z

    cp $01
    jr nz, jr_000_3046

    ld hl, $ff02
    ld [hl], $83
    ret


jr_000_3046:
    ldh a, [$c3]
    inc a
    ret z

    ldh [$c3], a
    ret


Call_000_304d:
    ld a, $70
    ldh [rSB], a

Call_000_3051:
    xor a
    ldh [$c0], a
    ld a, $10
    ldh [$c1], a
    ld a, $00
    ldh [rSC], a
    ld a, $80
    ldh [rSC], a
    xor a
    ldh [$c2], a

Call_000_3063:
    ldh [$c3], a
    ldh [$c4], a

Jump_000_3067:
    ldh [$c8], a

Call_000_3069:
    ld a, $10
    ldh [$c9], a

Jump_000_306d:
    ret


Call_000_306e:
    ld a, $71
    ldh [rSB], a

Call_000_3072:
    ld a, $03
    ldh [rSC], a
    ld a, $83
    ldh [rSC], a
    call Call_000_2f82
    call Call_000_2f82
    ret


Call_000_3081:
    push af

jr_000_3082:
    ldh a, [$c4]
    or a
    jr z, jr_000_308c

    call Call_000_2e3b
    jr jr_000_3082

jr_000_308c:
    pop af
    push bc
    push hl
    push de
    add a
    ld c, a

Call_000_3092:
    xor a
    ldh [$c7], a

Call_000_3095:
    ldh a, [$c2]
    or a
    jp z, Jump_000_30a7

    ld a, c
    ldh [$c5], a
    ld a, $02

Jump_000_30a0:
    ldh [$c4], a
    pop de
    pop hl

Call_000_30a4:
    pop bc
    xor a

Call_000_30a6:
    ret


Jump_000_30a7:
    pop de

Jump_000_30a8:
    pop hl
    pop bc
    xor a

Call_000_30ab:
    dec a
    ret


Call_000_30ad:
    ld hl, $ffc7
    ld a, [hl]
    ld b, a
    srl a
    push hl
    ld hl, $cb00
    add l
    ld l, a
    ld a, [hl]
    pop hl
    inc [hl]
    bit 0, b
    jr nz, jr_000_30c3

Jump_000_30c1:
    swap a

jr_000_30c3:
    and $0f
    or $50
    ld b, a
    ret


Call_000_30c9:
    push af
    ldh a, [$c6]
    ld b, a
    srl a
    and $3f
    ld hl, $cb40
    add l

Call_000_30d5:
    ld l, a
    pop af
    bit 0, b
    jr nz, jr_000_30e2

    swap a
    and $f0
    ld [hl], a

Call_000_30e0:
Jump_000_30e0:
    jr jr_000_30e6

Jump_000_30e2:
jr_000_30e2:
    and $0f
    or [hl]

Call_000_30e5:
    ld [hl], a

Call_000_30e6:
Jump_000_30e6:
jr_000_30e6:
    ld hl, $ffc6
    inc [hl]
    ret


Call_000_30eb:
    push af

jr_000_30ec:
    ldh a, [$c4]
    or a
    jr z, jr_000_30f6

    call Call_000_2e3b
    jr jr_000_30ec

jr_000_30f6:
    pop af
    ret


Call_000_30f8:
    ld a, $01
    ldh [$c8], a
    ret


Call_000_30fd:
    xor a

Jump_000_30fe:
    ldh [$c8], a
    ret


    rst $38

Call_000_3102:
    rst $38

Call_000_3103:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3117:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3152:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_315d:
    rst $38

Call_000_315e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_316b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3171:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3182:
    rst $38
    rst $38
    rst $38

Call_000_3185:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_318c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_319c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_31c6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_31de:
    rst $38
    rst $38

Jump_000_31e0:
    rst $38

Jump_000_31e1:
    rst $38
    rst $38
    rst $38

Jump_000_31e4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_31ff:
    rst $38

Jump_000_3200:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_321c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3230:
    rst $38
    rst $38

Call_000_3232:
    rst $38

Call_000_3233:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_323c:
    rst $38
    rst $38

Jump_000_323e:
    rst $38
    rst $38

Jump_000_3240:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3280:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_32af:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_32b3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_32b8:
    rst $38
    rst $38
    rst $38

Call_000_32bb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_32c1:
Jump_000_32c1:
    rst $38
    rst $38

Jump_000_32c3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_32db:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_32e5:
    rst $38

Jump_000_32e6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_32fc:
    rst $38
    rst $38

Call_000_32fe:
    rst $38
    rst $38

Call_000_3300:
Jump_000_3300:
    rst $38
    rst $38

Call_000_3302:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_331b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3320:
    rst $38
    rst $38
    rst $38

Call_000_3323:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3333:
Jump_000_3333:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3374:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_33c1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_33c8:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_33cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_33d5:
Jump_000_33d5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_33db:
    rst $38
    rst $38

Call_000_33dd:
    rst $38
    rst $38
    rst $38

Call_000_33e0:
    rst $38
    rst $38

Jump_000_33e2:
    rst $38

Jump_000_33e3:
    rst $38
    rst $38

Call_000_33e5:
    rst $38

Jump_000_33e6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_33ec:
    rst $38
    rst $38

Call_000_33ee:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_33ff:
Jump_000_33ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3405:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_340c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3440:
Jump_000_3440:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3446:
Jump_000_3446:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_345e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3472:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3477:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3480:
    rst $38
    rst $38

Jump_000_3482:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_34a0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_34c0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_34c7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_34cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_34ea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_34f6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_34fc:
    rst $38
    rst $38
    rst $38

Jump_000_34ff:
    rst $38

Call_000_3500:
Jump_000_3500:
    rst $38
    rst $38
    rst $38

Jump_000_3503:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3507:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_350d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3520:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_352b:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_352f:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3533:
    rst $38

Jump_000_3534:
    rst $38

Jump_000_3535:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3539:
Jump_000_3539:
    rst $38

Jump_000_353a:
    rst $38
    rst $38
    rst $38

Call_000_353d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3561:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3569:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3580:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_35a0:
Jump_000_35a0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_35ad:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_35c2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_35cb:
    rst $38
    rst $38

Jump_000_35cd:
    rst $38

Call_000_35ce:
    rst $38

Call_000_35cf:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_35d3:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_35d7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_35e0:
    rst $38
    rst $38

Jump_000_35e2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_35e7:
    rst $38

Jump_000_35e8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_35fe:
    rst $38
    rst $38

Call_000_3600:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_361f:
    rst $38

Jump_000_3620:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_362b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3631:
    rst $38
    rst $38

Call_000_3633:
    rst $38
    rst $38

Jump_000_3635:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_363b:
    rst $38

Jump_000_363c:
    rst $38

Call_000_363d:
    rst $38

Jump_000_363e:
    rst $38

Call_000_363f:
Jump_000_363f:
    rst $38
    rst $38
    rst $38

Call_000_3642:
    rst $38
    rst $38
    rst $38

Call_000_3645:
Jump_000_3645:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3651:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_365c:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3660:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3666:
    rst $38
    rst $38
    rst $38

Jump_000_3669:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_366d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3681:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_369e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_36a6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_36ae:
    rst $38

Call_000_36af:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_36b7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_36c0:
    rst $38

Call_000_36c1:
Jump_000_36c1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_36cc:
    rst $38
    rst $38
    rst $38

Call_000_36cf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_36e0:
    rst $38

Jump_000_36e1:
    rst $38

Jump_000_36e2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_36e7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_36ff:
    rst $38

Jump_000_3700:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3706:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_370b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3719:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3726:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3733:
    rst $38
    rst $38
    rst $38

Jump_000_3736:
    rst $38
    rst $38

Call_000_3738:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_373f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3745:
    rst $38

Call_000_3746:
    rst $38
    rst $38

Jump_000_3748:
    rst $38
    rst $38

Call_000_374a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3756:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_375b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3769:
    rst $38
    rst $38

Jump_000_376b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_37a0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_37c0:
    rst $38

Jump_000_37c1:
    rst $38
    rst $38
    rst $38

Call_000_37c4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_37dd:
    rst $38
    rst $38
    rst $38

Call_000_37e0:
Jump_000_37e0:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_37e4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_37ea:
    rst $38

Jump_000_37eb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_37ff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3815:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3820:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3824:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_382b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3833:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3838:
    rst $38
    rst $38
    rst $38

Jump_000_383b:
    rst $38

Jump_000_383c:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3840:
    rst $38

Jump_000_3841:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3855:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_385f:
    rst $38

Call_000_3860:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3864:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3869:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3871:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3881:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_388c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38a2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38c0:
    rst $38

Jump_000_38c1:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38c5:
    rst $38
    rst $38

Call_000_38c7:
Jump_000_38c7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38cd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_38e0:
    rst $38
    rst $38

Jump_000_38e2:
    rst $38
    rst $38

Jump_000_38e4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38ec:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38f8:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_38fc:
    rst $38
    rst $38
    rst $38

Call_000_38ff:
Jump_000_38ff:
    rst $38
    rst $38

Jump_000_3901:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3905:
    rst $38
    rst $38

Jump_000_3907:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_390b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3935:
    rst $38
    rst $38

Jump_000_3937:
    rst $38
    rst $38

Jump_000_3939:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3945:
    rst $38

Jump_000_3946:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3955:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3960:
    rst $38
    rst $38

Jump_000_3962:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_396b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3980:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3984:
    rst $38
    rst $38

Jump_000_3986:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3991:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_39a0:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_39a4:
Jump_000_39a4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_39ae:
Jump_000_39ae:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_39c2:
    rst $38

Jump_000_39c3:
    rst $38
    rst $38
    rst $38

Call_000_39c6:
    rst $38

Jump_000_39c7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_39d5:
    rst $38
    rst $38

Jump_000_39d7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_39de:
    rst $38
    rst $38
    rst $38

Call_000_39e1:
    rst $38

Call_000_39e2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_39ff:
Jump_000_39ff:
    rst $38

Jump_000_3a00:
    rst $38
    rst $38

Jump_000_3a02:
    rst $38
    rst $38
    rst $38

Call_000_3a05:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3a0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3a14:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3a22:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3a33:
    rst $38
    rst $38

Jump_000_3a35:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3a42:
    rst $38
    rst $38

Jump_000_3a44:
    rst $38

Jump_000_3a45:
    rst $38

Jump_000_3a46:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3a4c:
    rst $38
    rst $38

Call_000_3a4e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3a57:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3a60:
    rst $38

Call_000_3a61:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3a80:
    rst $38

Jump_000_3a81:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3a91:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3aa0:
Jump_000_3aa0:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3aa4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3aad:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ac0:
    rst $38

Call_000_3ac1:
    rst $38
    rst $38

Jump_000_3ac3:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3acb:
Jump_000_3acb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ae0:
Jump_000_3ae0:
    rst $38

Call_000_3ae1:
    rst $38

Call_000_3ae2:
    rst $38
    rst $38
    rst $38

Jump_000_3ae5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3aef:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3aff:
    rst $38

Jump_000_3b00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3b20:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3b31:
    rst $38

Call_000_3b32:
    rst $38

Call_000_3b33:
    rst $38
    rst $38

Jump_000_3b35:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3b3b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3b40:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3b45:
    rst $38
    rst $38
    rst $38

Jump_000_3b48:
    rst $38
    rst $38

Jump_000_3b4a:
    rst $38
    rst $38

Jump_000_3b4c:
    rst $38
    rst $38
    rst $38

Call_000_3b4f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3b54:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3b60:
    rst $38

Call_000_3b61:
    rst $38

Call_000_3b62:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3b7f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3bb2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3bc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3bdc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3be1:
    rst $38
    rst $38

Jump_000_3be3:
    rst $38

Call_000_3be4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3bfb:
Jump_000_3bfb:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3bff:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c05:
    rst $38
    rst $38

Jump_000_3c07:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c13:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c35:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c39:
    rst $38
    rst $38
    rst $38

Jump_000_3c3c:
    rst $38
    rst $38
    rst $38

Jump_000_3c3f:
    rst $38

Jump_000_3c40:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c44:
Jump_000_3c44:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c4d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c55:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c5a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c60:
Jump_000_3c60:
    rst $38

Call_000_3c61:
Jump_000_3c61:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c6f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c78:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3c80:
    rst $38

Jump_000_3c81:
    rst $38
    rst $38
    rst $38

Call_000_3c84:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3c91:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ca0:
Jump_000_3ca0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ca5:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ca9:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3cc0:
    rst $38

Jump_000_3cc1:
    rst $38

Call_000_3cc2:
    rst $38

Jump_000_3cc3:
    rst $38

Call_000_3cc4:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3cc8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3cd2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3cd7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ce1:
Jump_000_3ce1:
    rst $38

Jump_000_3ce2:
    rst $38

Call_000_3ce3:
Jump_000_3ce3:
    rst $38

Call_000_3ce4:
    rst $38
    rst $38
    rst $38

Jump_000_3ce7:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ceb:
    rst $38

Jump_000_3cec:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3cf0:
    rst $38

Jump_000_3cf1:
    rst $38
    rst $38
    rst $38

Call_000_3cf4:
    rst $38
    rst $38
    rst $38

Call_000_3cf7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3cfc:
    rst $38

Jump_000_3cfd:
    rst $38
    rst $38

Jump_000_3cff:
    rst $38

Jump_000_3d00:
    rst $38
    rst $38

Jump_000_3d02:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3d09:
    rst $38

Jump_000_3d0a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3d14:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3d1f:
    rst $38

Jump_000_3d20:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3d2c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3d35:
    rst $38
    rst $38

Jump_000_3d37:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3d42:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3d56:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3d64:
    rst $38

Call_000_3d65:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3d7f:
    rst $38

Call_000_3d80:
Jump_000_3d80:
    rst $38
    rst $38
    rst $38

Jump_000_3d83:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3d9b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3db0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3dc0:
    rst $38
    rst $38

Jump_000_3dc2:
    rst $38

Call_000_3dc3:
    rst $38

Jump_000_3dc4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3dd1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3de0:
    rst $38
    rst $38

Jump_000_3de2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3dfa:
    rst $38
    rst $38

Call_000_3dfc:
    rst $38
    rst $38
    rst $38

Jump_000_3dff:
    rst $38

Jump_000_3e00:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e08:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e0c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3e20:
    rst $38

Jump_000_3e21:
    rst $38

Jump_000_3e22:
    rst $38
    rst $38
    rst $38

Jump_000_3e25:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e35:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3e3e:
    rst $38
    rst $38

Call_000_3e40:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3e46:
Jump_000_3e46:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e53:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3e60:
Jump_000_3e60:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e71:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e80:
    rst $38

Jump_000_3e81:
    rst $38

Jump_000_3e82:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e88:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3e8f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ea0:
    rst $38

Call_000_3ea1:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ea6:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3eb6:
    rst $38
    rst $38

Call_000_3eb8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ebf:
    rst $38

Jump_000_3ec0:
    rst $38
    rst $38
    rst $38

Call_000_3ec3:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ec7:
    rst $38
    rst $38

Call_000_3ec9:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3ecd:
    rst $38

Call_000_3ece:
    rst $38

Call_000_3ecf:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ed5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ee0:
Jump_000_3ee0:
    rst $38

Jump_000_3ee1:
    rst $38

Call_000_3ee2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3eea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ef4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3eff:
Jump_000_3eff:
    rst $38

Call_000_3f00:
Jump_000_3f00:
    rst $38

Call_000_3f01:
Jump_000_3f01:
    rst $38

Jump_000_3f02:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f06:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f0a:
    rst $38
    rst $38
    rst $38

Jump_000_3f0d:
    rst $38

Call_000_3f0e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f1f:
    rst $38

Call_000_3f20:
Jump_000_3f20:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f36:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f3b:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f3f:
    rst $38

Jump_000_3f40:
    rst $38

Call_000_3f41:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f45:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f4b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f50:
    rst $38
    rst $38
    rst $38

Jump_000_3f53:
    rst $38

Call_000_3f54:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f5d:
    rst $38
    rst $38
    rst $38

Call_000_3f60:
    rst $38

Call_000_3f61:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f65:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f6a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f70:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f79:
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3f7d:
    rst $38
    rst $38

Jump_000_3f7f:
    rst $38

Jump_000_3f80:
    rst $38

Jump_000_3f81:
    rst $38

Jump_000_3f82:
    rst $38
    rst $38

Call_000_3f84:
    rst $38

Call_000_3f85:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3f9f:
    rst $38

Jump_000_3fa0:
    rst $38
    rst $38

Call_000_3fa2:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3fa7:
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fab:
    rst $38
    rst $38

Jump_000_3fad:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3fc0:
Jump_000_3fc0:
    rst $38

Call_000_3fc1:
    rst $38
    rst $38

Jump_000_3fc3:
    rst $38
    rst $38

Jump_000_3fc5:
    rst $38
    rst $38
    rst $38

Jump_000_3fc8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fd3:
    rst $38
    rst $38

Call_000_3fd5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3fdb:
Jump_000_3fdb:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fe0:
    rst $38
    rst $38

Call_000_3fe2:
    rst $38

Call_000_3fe3:
    rst $38

Jump_000_3fe4:
    rst $38
    rst $38
    rst $38

Jump_000_3fe7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_000_3fed:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_000_3ffc:
    rst $38
    rst $38
    rst $38

Call_000_3fff:
Jump_000_3fff:
    rst $38
