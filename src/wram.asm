include "macros/structs.inc"

	struct CharacterData
		bytes 8, Name
		bytes 8, unk1
		bytes 1, Sprite
		bytes 2, unk2
		bytes 1, IsAi
		bytes 5, unk3
		bytes 1, AltColor
		words 1, DriveDistance
		bytes 1, ShotHeight
		bytes 1, ShotHook
		bytes 1, ShotMeetArea
		bytes 1, ShotControl
	end_struct

	struct PlayerRoundData
		bytes 1, Strokes
		bytes 1, unk1
		alias BallPos
		bytes 3, BallXPos
		bytes 3, BallYPos
		bytes 1, PowerShots
		bytes 23, unk2
	end_struct

	struct PlayerData
		extends CharacterData, Char
		extends PlayerRoundData, Round
	end_struct

	struct StoryCharacterData
		extends CharacterData
		bytes 1, DriveDistanceLevels
		bytes 1, ShotHeightLevels
		bytes 1, ShotHookLevels
		bytes 1, ShotMeetAreaLevels
		bytes 1, ShotControlLevels
	end_struct



SECTION "WRAM0 c800", WRAM0[$c800]
	dstruct StoryCharacterData, wStoryChar

SECTION "WRAM0 c880", WRAM0[$c880]
	dstruct PlayerData, wPlayer1
	dstruct PlayerData, wPlayer2
