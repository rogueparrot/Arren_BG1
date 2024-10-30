//banter file

BEGIN L0BArren

CHAIN
IF ~InParty("Ajantis")
See("Ajantis")
!StateCheck("Ajantis",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrAj1","GLOBAL",0)~ THEN L0BArren L0ArrAj1
~Your kind don't stick around. Why's that?~ DO ~SetGlobal("L0ArrAj1","GLOBAL",1)~
== BAJANT ~My kind? I do not take your meaning, lady. Helmites? Waterdhavians?~
== L0BArren ~Don't meet many paladin ghosts.~
== BAJANT ~The righteous path brings certainty. One who dies in pursuit of a noble cause, dies without regret.~
== L0BArren ~It's a pretty thought.~
== BAJANT ~You do not agree?~
== L0BArren ~No. You sound so certain, I almost wish I could.~
== BAJANT ~Helm teaches that -~
== L0BArren ~I said "almost."~
EXIT

CHAIN
IF ~InParty("Alora")
See("Alora")
!StateCheck("Alora",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrAlora1","GLOBAL",0)~ THEN BALORA L0ArrAlora1
~Say, can I ask you a huuuuuuge favor?~ DO ~SetGlobal("L0ArrAlora1","GLOBAL",1)~
== L0BArren ~If you must.~
== BALORA ~I got this rabbit foot here, and I was wondering. I feel kinda bad for the rabbit, and I wanted to know, whatever bunny it came from - is he happy?~
== L0BArren ~You want me to tell you if the mangy bit of dead animal you carry around came from a happy rabbit.~
== BALORA ~Yep!~
== L0BArren ~And you don't think that being dead and missing its foot would put a damper on that.~
== BALORA ~Hey, I dunno how rabbits think. That's why I'm asking!~
== L0BArren ~Oh, what the hells. Let me see it.~
= ~So far as I can tell, it died ignorant. I hazard that it was as happy as a rabbit could be.~
== BALORA ~Good enough for me!~
EXIT

CHAIN
IF ~InParty("Coran")
See("Coran")
!StateCheck("Coran",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrCor1","GLOBAL",0)~ THEN BCORAN L0ArrCor1
~Fair as the moon and a face like thunder. Tell me, is there any man who might crack that sullen mask of yours?~ DO ~SetGlobal("L0ArrCor1","GLOBAL",1)~
== L0BArren ~No.~
== BCORAN ~Say no more! A compact, then - I'll send the ladies who turn me down your way.~
== L0BArren ~I'd say I appreciate it, but I'd rather never broach the subject again.~
== BCORAN ~Ah, your loss.~
EXIT

CHAIN
IF ~InParty("Dynaheir")
See("Dynaheir")
!StateCheck("Dynaheir",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrDyna1","GLOBAL",0)~ THEN BDYNAH L0ArrDyna1
~I have met none beyond mine home who speak to the spirits of the land. What is it that thou seest that thy countrymen doth not?~ DO ~SetGlobal("L0ArrDyna1","GLOBAL",1)~
== L0BArren ~Not by choice.~
== BDYNAH ~I have displeased thee. 'Twas not mine intent - in Rashemen, such as thee are valued greatly. Our dead watch over us, and we they in our turn.~
== L0BArren ~That is good to hear. Mine, they called a curse, and they weren't so wrong as I would like.~
== BDYNAH ~Thou walkest betwixt worlds. 'Tis a path but few may tread.~
EXIT

CHAIN
IF ~InParty("Eldoth")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrEld1","GLOBAL",0)~ THEN BELDOT L0ArrEld1
~I've heard of you, witch.~ DO ~SetGlobal("L0ArrEld1","GLOBAL",1)~
== L0BArren ~I'm honored.~
== BELDOT ~Don't be. A professional meddler too witless for artifice? You're the laughingstock of the Gate. How long had you lain fallow till Skie grew desperate?~
== L0BArren ~No one's fool enough to pay for bad news. Explains you, I suppose.~
== BELDOT ~I've been called worse by greater minds, and I'll not be insulted by some copper-dreadful protagonist.~
== L0BArren ~I speak the truth. Not that you'd know anything about that.~
EXIT

CHAIN
IF ~InParty("Eldoth") InParty("Skie")
See("Eldoth")
!StateCheck("Eldoth",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrEld2","GLOBAL",0)~ THEN BELDOT L0ArrEld2
~So you've an interest in the lovely Skie as well.~
== L0BArren ~She's a client.~
== BELDOT ~As I said. Now, what is it you require to keep your hands off of her? Money? I've offered you a split of the profits already, but I suppose your share could stretch to buy your silence.~
== L0BArren ~It's not for sale. You make me sick.~
EXIT

CHAIN
IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrGarr1","GLOBAL",0)~ THEN BGARRI L0ArrGarr1
~Lady Arren, I -~ DO ~SetGlobal("L0ArrGarr1","GLOBAL",1)~
== L0BArren ~I'm no lady.~
== BGARRI ~I've offended you again, haven't I?~
== L0BArren ~You talk too much, but that's all right. I like your music.~
EXIT

CHAIN
IF ~InParty("Garrick")
See("Garrick")
!StateCheck("Garrick",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrGarr1","GLOBAL",0)~ THEN L0BArren L0ArrGarr2
~Garrick, I can't say two words to you without you agreeing. If I said that the sky was green you'd be nodding before I finished the sentence. Is there *anything* you care enough to argue about?~ DO ~SetGlobal("L0ArrGarr2","GLOBAL",1)~
== BGARRI ~It takes two to make a quarrel.~
== L0BArren ~From anyone else, I'd call that sanctimonious, but you really believe it, don't you?~
== BGARRI ~I try to.~
EXIT

CHAIN
IF ~InParty("Kivan")
See("Kivan")
!StateCheck("Kivan",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrKivan1","GLOBAL",0)~ THEN BKIVAN L0ArrKivan1
~Does she wait?~
== L0BArren ~Spirits throng about you, but they are vague, uncertain. If they knew you in life, I do not think they remember.~
== BKIVAN ~She would not forget.~
== L0BArren ~You would be surprised - but if she's anything like you, I would believe it. Tell me of her?~
== BKIVAN ~No. I will shed no tears in her memory until her killer pays in blood.~
EXIT

CHAIN
IF ~InParty("Tiax")
See("Tiax")
!StateCheck("Tiax",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrTiax1","GLOBAL",0)~ THEN BTIAX L0ArrTiax1
~You! Elf-witch!~ DO ~SetGlobal("L0ArrTiax1","GLOBAL",1)~
== L0BArren ~Joy.~
== BTIAX ~The day that Tiax's gaze fell upon you was the greatest day of your life. You are to be his herald among the dead! Are you not honored?~
== L0BArren ~Beyond words.~
EXIT

CHAIN
IF ~InParty("Xan")
See("Xan")
!StateCheck("Xan",CD_STATE_NOTVALID)
!StateCheck("L0Arren",CD_STATE_NOTVALID)
Global("L0ArrXan1","GLOBAL",0)~ THEN L0BArren L0ArrXan1
~You hold no power here, Greycloak.~ DO ~SetGlobal("L0ArrXan1","GLOBAL",1)~
== BXANNN ~If this concerns my imminent demise, I could not agree more, but I must have missed a step. What brings this on?~
== L0BArren ~I can hardly forget my sentence, and you are the Council's hand.~
== BXANNN ~I fear that you overestimate both my importance and yours. Rest assured that the Council has no interest in you at this time.~
== L0BArren ~That is... good to hear, I suppose.~
== BXANNN ~Perhaps in future you might consider looking for enemies outside of this group. Not that it will guarantee anything, but at least it will not seal our fates so quickly.~
EXIT

