MACRO ld_long
    IF STRCMP(STRLWR("\1"), "a") == 0
        ; ld a, [$ff40]
        db $FA
        dw \2
    ELSE
		IF STRCMP(STRLWR("\2"), "a") == 0
            ; ld [$ff40], a
            db $EA
            dw \1
        ENDC
    ENDC
ENDM
