CherenAskEvoText:
	text "Hi, <PLAYER>."
	line "This is Cheren."
	
	para "Did you have a"
	line "question about how"
	
	para "to evolve one of"
	line "your #mon?"
	done
	
CherenRefusedEvoText:
	text "Oh, okay. Call me"
	line "if you have any"
	
	para "questions about"
	line "how to evolve your"
	cont "#mon."
	done
	
CherenEvoIntroText:
	text "You want to know"
	line "about "
	text_ram wStringBuffer3
	text "?"
	
	para "Okay, let's see…"
	done
	
CherenPhoneEvoText_None:
	text "Well, "
	text_ram wStringBuffer3
	line "doesn't evolve."
	
	para "At least, as far"
	line "as we know."
	prompt
	
CherenPhoneEvoText_Level:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "reaches level "
	text_decimal wStringBuffer4, 1, 3
	text "."
	prompt

CherenPhoneEvoText_Item:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

CherenPhoneEvoText_TradeNoItem:
	text_ram wStringBuffer3
	line "evolves by trade,"

	para "or when exposed to"
	line "a "
	text_ram wStringBuffer4
	text "."
	prompt

CherenPhoneEvoText_TradeWithItem:
	text_ram wStringBuffer3
	line "evolves by trade,"

	para "or when gaining a"
	line "level with"
	cont ""
	text_ram wStringBuffer4
	text " held."
	prompt

CherenPhoneEvoText_Holding:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

CherenPhoneEvoText_Holding_MornDay:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line ""
	text_ram wStringBuffer4
	text ", but"

	para "only during the"
	line "morning or day."
	prompt

CherenPhoneEvoText_Holding_EveNite:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line ""
	text_ram wStringBuffer4
	text ", but"

	para "only during the"
	line "evening or night."
	prompt

CherenPhoneEvoText_Happiness:
	text_ram wStringBuffer3
	line "evolves when it"
	
	para "gains a level when"
	line "its happiness is"
	cont "very high."
	prompt

CherenPhoneEvoText_Happiness_MornDay:
	text_ram wStringBuffer3
	line "evolves when it"

	para "gains a level when"
	line "its happiness is"
	
	para "very high, but it"
	line "will only happen"
	cont "during the day."
	prompt

CherenPhoneEvoText_Happiness_EveNite:
	text_ram wStringBuffer3
	line "evolves when it"

	para "gains a level when"
	line "its happiness is"
	
	para "very high, but it"
	line "will only happen"
	cont "at night."
	prompt

CherenPhoneEvoText_Location:
	text_ram wStringBuffer3
	line "evolves when it"

	para "gains a level at"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

CherenPhoneEvoText_Move:
	text_ram wStringBuffer3
	line "evolves when it"

	para "gains a level"
	line "while it knows"

	para "how to use"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

CherenPhoneEvoText_Party:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while you have a"
	line ""
	text_ram wStringBuffer4
	text " in"
	cont "your party too."
	prompt

CherenPhoneEvoText_Pikachu:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "ThunderStone or"
	cont "an Odd Souvenir."
	prompt

CherenPhoneEvoText_Poliwhirl:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "Water Stone, or"

	para "when holding a"
	line "King's Rock, if"

	para "traded, or upon"
	line "leveling up."
	prompt

CherenPhoneEvoText_SlowpokePlain:
CherenPhoneEvoText_SlowpokeGalarian:
	text_ram wStringBuffer3
	line "evolves at level"
	cont "37, or when it"

	para "holds King's Rock"
	line "when traded or"
	cont "gaining a level."
	prompt

CherenPhoneEvoText_Magneton:
CherenPhoneEvoText_Nosepass:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "ThunderStone, or"

	para "when it gains a"
	line "level in a mag-"
	cont "netic field."

	para "I've heard that"
	line "Chargestone Cave"
	cont "has one of those."
	prompt

CherenPhoneEvoText_Exeggcute:
	text_ram wStringBuffer3
	line "evolves when it's"

	para "exposed to a"
	line "Leaf Stone or"
	cont "an Odd Souvenir."
	prompt

CherenPhoneEvoText_Koffing:
	text_ram wStringBuffer3
	line "evolves at level"
	cont "35, or when it's"

	para "exposed to an"
	line "Odd Souvenir."
	prompt

CherenPhoneEvoText_Scyther:
	text_ram wStringBuffer3
	line "evolves when it"
	cont "gains a level"

	para "while holding a"
	line "Metal Coat or a"
	cont "Hard Stone."

	para "The Metal Coat"
	line "can also be held"
	cont "while trading."
	prompt
	
CherenPhoneEvoText_Eevee:
	text "Eevee can evolve"
	line "in many different"
	cont "ways!"
	
	para "It can evolve when"
	line "it's exposed to"
	
	para "several different"
	line "types of stones,"
	
	para "including the Leaf"
	line "Stone, Fire Stone,"
	
	para "Water Stone, Ice"
	line "Stone, or the"
	cont "ThunderStone."
	
	para "It can also evolve"
	line "if its happiness"
	
	para "is very high, and"
	line "the form it takes"
	
	para "is different dep-"
	line "ending on the time"
	cont "of day."
	
	para "I've also heard it"
	line "can evolve if it"
	
	para "gains a level"
	line "while holding a"
	
	para "Magic Ribbon, but"
	line "only if it's"
	cont "during the day."
	prompt

CherenPhoneEvoText_MimeJr:
	text_ram wStringBuffer3
	line "evolves when it"

	para "gains a level"
	line "while it knows"

	para "how to use"
	line "Protect, or when"

	para "it's exposed to"
	line "an Odd Souvenir."
	prompt

CherenPhoneEvoText_DunsparceSegments:
	text "Some of them end"
	line "up being longer"
	cont "than others."

	para "It's just in their"
	line "genes."
	prompt
	
CherenPhoneEvoText_Kirlia:
	text_ram wStringBuffer3
	line "evolves at level"
	cont "30."
	
	para "It can also evolve"
	line "when it's exposed"
	
	para "to a Dawn Stone,"
	line "but only if it"
	cont "is male."
	prompt
	
CherenPhoneEvoText_Snorunt:
	text_ram wStringBuffer3
	line "evolves at level"
	cont "42."
	
	para "It can also evolve"
	line "when it's exposed"
	
	para "to a Dawn Stone,"
	line "but only if it"
	cont "is female."
	prompt

CherenPhoneEvoText_Egg:
	text "Eggs don't evolve,"
	line "they hatch!"
	prompt
	
CherenEvoDoneText:
	text "Call me again any"
	line "time if you have"
	
	para "questions about"
	line "how to evolve your"
	cont "#mon."
	done
	
CherenPhoneNimbasaText:
	text "Hey, <PLAYER>?"
	line "It's me, Cheren."

	para "I don't know if"
	line "you did anything"
	cont "over there, but"

	para "a secret staircase"
	line "just opened where"
	cont "I am."
	
	para "I'm going in, I"
	line "suggest you come"
	cont "as well."
	done
	
CherenPhoneMistraltonText:
	text "Hey, <PLAYER>?"
	line "It's me, Cheren."
	
	para "I just got some"
	line "information regar-"
	cont "ding Team Plasma."

	para "Marlon from the"
	line "Humilau Gym just"
	cont "spotted a group"

	para "of Plasma goons"
	line "headed to a cave"
	cont "nearby the city."
	
	para "I'm going to check"
	line "it out. They've"
	cont "got to be planning"
	cont "something…"
	
	para "That's your home-"
	line "town, right? You"
	
	para "can reach the cave"
	line "by Surfing to the"
	cont "East of town."
	
	para "See you, <PLAYER>."
	done
	