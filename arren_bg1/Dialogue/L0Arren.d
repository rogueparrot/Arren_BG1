//join dialogue

BEGIN L0ARREN

CHAIN IF ~Global("L0ArrenTalkedTo","GLOBAL",0)~ THEN L0ARREN j1 ~You look new. Planning to hang around this dead-end town, or are you headed somewhere more interesting?~
DO ~SetGlobal("L0ArrenTalkedTo","GLOBAL",1)~
END 
++ ~Nice to meet you too.~ EXTERN L0ARREN j1.1
++ ~I'm an adventurer, actually. And you are?~ EXTERN L0ARREN j1.1
++ ~Not at the moment. Excuse me.~ EXTERN L0ARREN j1.2

CHAIN L0ARREN j1.1 ~I'm Arren. Consulting medium, I work out of Baldur's Gate. Perhaps you've heard of me. I find people.~
END 
++ ~That makes you sound like some kind of bounty hunter.~ EXTERN L0ARREN j1.3
++ ~You're a long way from the Gate. Who are you looking for?~ EXTERN L0ARREN j1.4

CHAIN L0ARREN j1.2 ~As you'd have it. Talk to me if you change your mind.~
DO ~GiveItemCreate("L0card01",LastTalkedToBy,0,0,0)~
EXIT

CHAIN L0ARREN j1.3
~Worried? Smart of you. But I don't go after live prey. I find people that somebody's missing, that's all.~
END
IF ~~ EXTERN L0ARREN j1.4

CHAIN L0ARREN j1.4
~I was hired to look for a missing noble kid. All the trails are leading out to the wilderness, and the roads are too dangerous for me to risk alone. I can handle myself, and it shouldn't be far - help me out and I'll owe you.~
END 
++ ~You're asking a lot, and you're not promising much. I don't want vague favors. Tell me what you can do and I'll think about it.~ EXTERN L0ARREN j1.5
++ ~I should tell you that someone is trying to kill me. Does that change your offer?~ EXTERN L0ARREN j1.11
++ ~I have enough to worry about without doing favors for strangers. I don't think so.~ EXTERN L0ARREN j1.2

CHAIN L0ARREN j1.5
~I can call upon nature's magic, I'm good with a bow or knife, and I can summon spirits. Talk to them, too, if they're willing.~
END 
++ ~Like a necromancer?~ EXTERN L0ARREN j1.6
++ ~Nature magic? Can you heal?~ EXTERN L0ARREN j1.7
++ ~I think we could work well together.~ EXTERN L0ARREN j1.10
++ ~I should tell you that someone is trying to kill me. Does that change your offer?~ EXTERN L0ARREN j1.11

CHAIN L0ARREN j1.6
~I won't bind the dead to do my bidding. I ask, and sometimes they answer.~
END
++ ~I don't see what use that is.~ EXTERN L0ARREN j1.9
++ ~Is there anything else you can do? Healing, for example?~ EXTERN L0ARREN j1.7

CHAIN L0ARREN j1.7
~No.~
END
++ ~That's it? Just "no"?~ EXTERN L0ARREN j1.8
++ ~I don't see how you could benefit us, then.~ EXTERN L0ARREN j1.2

CHAIN L0ARREN j1.8
~I won't stand around all day swapping stories with strangers. I've told you what I do - do as you will.~
END
++ ~I think we could work well together.~ EXTERN L0ARREN j1.10
++ ~I should tell you that someone is trying to kill me. Does that change your offer?~ EXTERN L0ARREN j1.11

CHAIN L0ARREN j1.9
~Most don't. Read this. I'll be here if you change your mind.~
DO ~GiveItemCreate("L0card01",LastTalkedToBy,0,0,0)~
EXIT

CHAIN L0ARREN j1.10
~That remains to be seen.~
DO ~SetGlobal("L0ArrenJoin","LOCALS",1) JoinParty()~
EXIT

CHAIN L0ARREN j1.11
~I doubt you're worth much. I'll chance it.~
END
++ ~Should I be insulted by that?~ EXTERN L0ARREN j1.12
++ ~Welcome aboard.~ EXTERN L0ARREN j1.10
++ ~I've changed my mind. I don't need an attitude like yours on top of the attempts on my life.~ EXTERN L0ARREN j1.2

CHAIN L0ARREN j1.12
~You tell me.~
END
++ ~I don't need someone with your relentlessly bad attitude.~ EXTERN L0ARREN j1.2
++ ~I can't believe I'm saying this, but welcome aboard.~ EXTERN L0ARREN j1.10

CHAIN IF ~Global("L0ArrenTalkedTo","GLOBAL",1)~ THEN L0ARREN j2 ~You're back.~
END
++ ~I'm not staying. If you'll excuse me...~ EXTERN L0ARREN j1.2
++ ~Remind me what it was you wanted?~ EXTERN  L0ARREN j1.4

