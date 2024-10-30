BEGIN L0ARRENJ

// quest warnings, talks
// sequential talks
// floating talks - rep, ambushes, etc
// at rest
// PID menu


// quest warnings, talks
//quest warning
IF ~Global("L0ArrenWarn","GLOBAL",1)~ L0arw1
SAY ~<CHARNAME>, I recognize that you share neither my goals nor my urgency, but this directionless wandering of yours serves nothing. Do you mean to investigate the caravan some time this century?~
++ ~We'll go there as soon as possible.~ + L0arw1.1
++ ~If time allows.~ + L0arw1.2
++ ~I have more important things to do.~ + L0arw1.3
END

IF ~~ L0arw1.1
SAY ~Good enough. I'd appreciate if you could make haste.~
IF ~~ DO ~SetGlobal("L0ArrenWarn","GLOBAL",1)~ EXIT
END

IF ~~ L0arw1.2
SAY ~How gracious of you.~
IF ~~ DO ~SetGlobal("L0ArrenWarn","GLOBAL",1)~ EXIT
END

IF ~~ L0arw1.3
SAY ~Then this is where I leave you.~
IF ~~ DO ~SetGlobal("L0ArrenJoin","LOCALS",0) LeaveParty()
EscapeArea()~ EXIT
END

IF ~~ L0arw2
SAY ~I should have known. Choose your own path, then.~
IF ~~ DO ~SetGlobal("L0ArrenJoin","LOCALS",0) LeaveParty()
EscapeArea()~ EXIT
END

//found Eddard (quest complete)
CHAIN IF ~Global("L0ArrEddard","GLOBAL",1)~ THEN L0ARRENJ L0ed1
~So the kid's dead. After this long, I suspected, but all the same, I'm not eager to tell her.~
DO ~IncrementGlobal("L0ArrEddard","GLOBAL",1)~
END
++ ~You sound worried.~ + L0ed1.1
++ ~What are you going to do?~ + L0ed1.2
++ ~Tell her the truth - death happens. She'll have to get used to it.~ + L0ed1.3
++ ~I'm so tired of being a messenger of ill omen. Just once, it would be nice to bring someone good news for a change.~ + L0ed1.4
++ ~You're welcome, by the way.~ + L0ed1.5

APPEND L0ARRENJ

IF ~~ L0ed1.1
SAY ~I am worried.~
IF ~~ + L0ed1.3
END

IF ~~ L0ed1.2 
SAY ~I don't know.~
IF ~~ + L0ed1.3
END

IF ~~ L0ed1.3
SAY ~I spoke to her only briefly, but long enough to have the impression that she sees death as something that happens to other people - and I was her last resort.~
IF ~~ + L0ed1.6
END

IF ~~ L0ed1.4
SAY ~It would. But that's not the world we live in, is it.~
IF ~~ + L0ed1.3
END

IF ~~ L0ed1.5
SAY ~True, I couldn't have come this far on my own. All the same, I'm apprehensive.~
IF ~~ + L0ed1.3
END

IF ~~ L0ed1.6
SAY ~How would you tell a sheltered child that she's just paid a considerable amount of money to learn that it was already too late when she hired me? But that's a problem for when I report back to her, I suppose.~
= ~I need to stay here long enough to confirm and ask a few questions. Not that I'm expecting much.~
IF ~~ + L0ed1.7
END

IF ~~ L0ed1.7
SAY ~Pass me that incense, will you?~
++ ~I've never seen this kind of ritual before. Can you explain?~ + L0ed1.8
++ ~What are you doing?~ + L0ed1.9
++ ~Should I be concerned?~ + L0ed1.10
++ ~Is this a summoning?~ + L0ed1.11
END

IF ~~ L0ed1.8
SAY ~Incense to call, blood to anchor.~
IF ~~ + L0ed1.12
END

IF ~~ L0ed1.9
SAY ~Talking.~
IF ~~ + L0ed1.12
END

IF ~~ L0ed1.10
SAY ~I told you what I was. Do you have a problem with that?~
++ ~That depends on what you have in mind.~ + L0ed1.9
++ ~I was surprised, that's all. What are you doing?~ + L0ed1.9
++ ~Just leave me out of this.~ + L0ed1.17 
END

IF ~~ L0ed1.11
SAY ~A conversation.~
IF ~~ + L0ed1.12
END

IF ~~ L0ed1.12
SAY ~Need to know why it happened. They all ask "why" - not that it helps.~
++ ~Can I watch?~ + L0ed1.13
++ ~You're just talking, right? You aren't going to do anything...~ + L0ed1.14
++ ~I'll leave you to it.~ + L0ed1.17 
END

IF ~~ L0ed1.13
SAY ~If you want. Not much to see.~
IF ~~ + L0ed1.16
END

IF ~~ L0ed1.14
SAY ~Told you I wasn't a necromancer. I don't bind spirits.~
IF ~~ + L0ed1.16
END

IF ~~ L0ed1.15
SAY ~As you will.~
IF ~~ + L0ed1.17
END

IF  ~~ L0ed1.16
SAY ~Eddard Silvershield, hear me.~
= ~Yes. Your sister asked me to find you.~
= ~I didn't.~
= ~Yes. I'm sorry. We're looking into the the ones responsible. That's all I can promise.~
= ~I will. Be well.~
IF ~~ + L0ed1.17
END

IF ~~ L0ed1.17
SAY ~It's him. Got the name of the caravan outfit, but there's nothing I can do while the Gate's shut. But you kept your word, so my company's yours if you want it.~
++ ~You're not going to look into the caravan yourself?~ + L0ed1.18
++ ~In that case, welcome aboard.~ + L0ed1.19
++ ~I think we should part ways.~ + L0ed1.20
END

IF ~~ L0ed1.18
SAY ~I care for the dead, not the living. Also, I wasn't paid to.~
++ ~In that case, welcome aboard.~ + L0ed1.19
++ ~I think we should part ways.~ + L0ed1.20
END

IF ~~ L0ed1.19
SAY ~Charmed.~
IF ~~ EXIT
END

IF ~~ L0ed1.20
SAY ~I'll be in Beregost if you change your mind.~
IF ~~ EXIT
END
END

// sequential talks

//first kill

CHAIN IF ~Global("L0ArrTalk","GLOBAL",2)~ THEN L0ARRENJ L0Arr2
~The first time you killed someone. What was it like?~
DO ~IncrementGlobal("L0ArrTalk","GLOBAL",1) RealSetGlobalTimer("L0ArrenTalkTimer","GLOBAL",3600)~
END
++ ~You could ask normal questions, you know. Like "how are you?" Talk about the weather, even.~ + L0Arr2.1
++ ~That's rather personal, isn't it? What brings this on?~ + L0Arr2.2
++ ~It was bloody, violent, and upsetting. I don't want to talk about it.~ + L0Arr2.3
++ ~I didn't enjoy it, but I wasn't going to lie down and die. I did what I had to.~ + L0Arr2.4
++ ~It felt good having someone's life in my hands. Powerful. I liked it, I think. Is that wrong of me?~ + L0Arr2.5

APPEND L0ARRENJ

IF ~~ L0Arr2.1
SAY ~Small talk is a waste of breath.~
IF ~~ + L0Arr2.6
END

IF ~~ L0Arr2.2
SAY ~And throwing in my lot with a stranger isn't? We're trusting one another with our lives. I want to know where I stand.~
IF ~~ + L0Arr2.6
END

IF ~~ L0Arr2.3
SAY ~But you did what you had to.~
IF ~~ + L0Arr2.6
END

IF ~~ L0Arr2.4
SAY ~So you're a fighter. Good.~
IF ~~ + L0Arr2.6
END

IF ~~ L0Arr2.5
SAY ~I don't trust the ones who enjoy it, but it's better than freezing.~
IF ~~ + L0Arr2.6
END

IF ~~ L0Arr2.6
SAY ~You're new at this. I want to know that you won't lose your nerve and get me killed.~
++ ~So naturally you ask about death. As one does.~ + L0Arr2.7
++ ~If you don't trust my judgment, what are you doing here?~ + L0Arr2.8
++ ~Wouldn't it make more sense to ask me about, I don't know, my leadership ability?~ + L0Arr2.9
END

IF ~~ L0Arr2.7
SAY ~Puts things in perspective.~
IF ~~ + L0Arr2.10
END

IF ~~ L0Arr2.8
SAY ~Didn't say that. I'm still deciding.~
IF ~~ + L0Arr2.10
END

IF ~~ L0Arr2.9
SAY ~Wouldn't tell me what I need to know.~
IF ~~ + L0Arr2.10
END

IF ~~ L0Arr2.10
SAY ~Ask about beliefs, plans, leadership, and everyone tells you what they want to do. Empty words. Want to know someone's heart? You ask about death.~
++ ~Has anyone ever told you that you're creepy?~ + L0Arr2.11
++ ~That's morbid.~ + L0Arr2.12
++ ~I'm not convinced. I think that intentions matter as much as what someone does in a crisis.~ + L0Arr2.13
++ ~You want to know my heart? What are you implying?~ + L0Arr2.14
++ ~Something in how you talk of "knowing hearts" is making me think of scalpels.~ + L0Arr2.15
++ ~And what kind of person do you think I am?~ + L0Arr2.16
++ ~I feel like I think about death too much already.~ + L0Arr2.17
END

IF ~~ L0Arr2.11
SAY ~Yes.~
IF ~~ + L0Arr2.17
END

IF ~~ L0Arr2.12
SAY ~I spend more time around dead people than living ones. Are you surprised?~
IF ~~ + L0Arr2.17
END

IF ~~ L0Arr2.13
SAY ~I'd like to believe that.~
IF ~~ + L0Arr2.17
END

IF ~~ L0Arr2.14
SAY ~I want to know what you'll do when you're pushed.~
IF ~~ + L0Arr2.17
END

IF ~~ L0Arr2.15
SAY ~I'm more interested in your brain.~
IF ~~ + L0Arr2.17
END

IF ~~ L0Arr2.16
SAY ~We'll see.~
IF ~~ + L0Arr2.17
END

IF ~~ L0Arr2.17
SAY ~But thinking of death is unavoidable in your line of work - or mine.~
++ ~And you think dwelling on it will help?~ + L0Arr2.18
++ ~I swear I end every conversation with you feeling worse than when I started.~ + L0Arr2.18
+ ~InParty("Xan")~ + ~Ye gods. I'd sooner talk to Xan to raise my spirits.~ + L0Arr2.19
++ ~Were you going somewhere with this?~ + L0Arr2.18
++ ~So what do you think you learned about me?~ + L0Arr2.18
END

IF ~~ L0Arr2.19
SAY ~He's not wrong. On that, at least.~
IF ~~ + L0Arr2.18
END

IF ~~ L0Arr2.18
SAY ~Tip for you, <CHARNAME>. You're green. Try not to die.~
IF ~~ EXIT
END
END

// floating talks - rep, ambushes, etc

//PC has low health

CHAIN IF ~Global("L0ArrenPCInjured","GLOBAL",1)~ THEN L0ARRENJ L0ARPCI1
~Careful, <CHARNAME>, there's parts of you that aren't bleeding.~
DO ~IncrementGlobal("L0ArrenPCInjured","GLOBAL",1)~
END
+ ~OR(2) Class(Player2,CLERIC_ALL) Class(Player2,DRUID_ALL)~ + ~It looks worse than it is. <PLAYER2> can patch me up.~ + L0ARPCI1.1
+ ~OR(2) Class(Player3,CLERIC_ALL) Class(Player3,DRUID_ALL)~ + ~It looks worse than it is. <PLAYER3> can patch me up.~ + L0ARPCI1.1
+ ~OR(2) Class(Player4,CLERIC_ALL) Class(Player4,DRUID_ALL)~ + ~It looks worse than it is. <PLAYER4> can patch me up.~ + L0ARPCI1.1
+ ~OR(2) Class(Player5,CLERIC_ALL) Class(Player5,DRUID_ALL)~ + ~It looks worse than it is. <PLAYER5> can patch me up.~ + L0ARPCI1.1
+ ~OR(2) Class(Player6,CLERIC_ALL) Class(Player6,DRUID_ALL)~ + ~It looks worse than it is. <PLAYER6> can patch me up.~ + L0ARPCI1.1
++ ~I took a calculated risk. What does it matter? I'm still alive.~ + L0ARPCI1.2
++ ~Do you really think I did that on purpose?~ + L0ARPCI1.4
++ ~Pass me a healing potion if you're going to complain.~ + L0ARPCI1.5
++ ~Save the blame for the various monsters, bandits, and homicidal wildlife trying to kill me.~ + L0ARPCI1.3

APPEND L0ARRENJ

IF ~~ L0ARPCI1.1
SAY ~Yes, this time. What of the next?~
IF ~~ + L0ARPCI1.5
END

IF ~~ L0ARPCI1.2
SAY ~If you call that a calculated risk, I question your math.~
++ ~My math is fine, thank you. Don't you think you should save your lectures for the people trying to kill me?~ + L0ARPCI1.3
++ ~Pass me a healing potion if you're going to complain.~ + L0ARPCI1.3
++ ~Save the blame for the various monsters, bandits, and homicidal wildlife trying to kill me.~ + L0ARPCI1.3
END

IF ~~ L0ARPCI1.3
SAY ~I don't care what they think.~
IF ~~ + L0ARPCI1.5
END

IF ~~ L0ARPCI1.4
SAY ~I'd prefer if you had. At least it would be your choosing.~
IF ~~ + L0ARPCI1.5
END

IF ~~ L0ARPCI1.5
SAY ~Call it projection. I see you bleeding and all I can do is hand you a potion. I hate it.~
++ ~Does it bother you? Seeing me injured?~ + L0ARPCI1.6
++ ~That's not true. Your spells and your summoning have been invaluable - imagine how much worse it might have been if you weren't here.~ + L0ARPCI1.7
++ ~Is it the injury that bothers you, or the fact that you can't do anything about it?~ + L0ARPCI1.8
END

IF ~~ L0ARPCI1.6
SAY ~Yes.~
IF ~~ + L0ARPCI1.8
END

IF ~~ L0ARPCI1.7
SAY ~Less reassuring than you think.~
IF ~~ + L0ARPCI1.8
END

IF ~~ L0ARPCI1.8
SAY ~I don't like to watch you struggle.~
++ ~Concern? From you? I'm surprised. I didn't think you cared about anyone with a pulse.~ + L0ARPCI1.9
++ ~That hardly sounds like your usual amused contempt. What's changed?~ + L0ARPCI1.10
++ ~A backhanded compliment, but I'll take it.~ + L0ARPCI1.11
++ ~Thank you for caring.~ + L0ARPCI1.11
END

IF ~~ L0ARPCI1.9
SAY ~Neither did I.~
IF ~~ + L0ARPCI1.11
END

IF ~~ L0ARPCI1.10
SAY ~Is that truly how I -~
IF ~~ + L0ARPCI1.11
END

IF ~~ L0ARPCI1.11
SAY ~I do. Care.~
= ~Don't take it the wrong way.~
IF ~~ EXIT
END
END

// mines clear

CHAIN IF ~Global("L0ArrMines","GLOBAL",1)~ THEN L0ARRENJ L0ArrMines
~Admiration, for now. How long will they remember?~
DO ~IncrementGlobal("L0ArrMines","GLOBAL",1)~
END
++ ~Not everyone will, perhaps, but I like to think that I've made a difference for some people.~ + L0ArrMines.1
++ ~I got paid. That's the important part.~ + L0ArrMines.2
++ ~I don't mind. I wasn't planning on fame in the first place.~ + L0ArrMines.2
++ ~It makes me nervous. I don't think that I enjoy being the center of attention.~ + L0ArrMines.3

APPEND L0ARRENJ

IF ~~ L0ArrMines.1
SAY ~Is that enough?~
IF ~~ + L0ArrMines.3
END

IF ~~ L0ArrMines.2
SAY ~Wise.~
IF ~~ + L0ArrMines.3
END

IF ~~ L0ArrMines.3
SAY ~You're good. Better than I thought. Think about what you do with that. There's more to you than solving other people's problems.~
++ ~That sounded suspiciously like a compliment.~ + L0ArrMines.4
++ ~Maybe I want to solve people's problems.~ + L0ArrMines.5
++ ~I do what I think is necessary, that's all.~ + L0ArrMines.9
+ ~Class(Player1,PALADIN_ALL) !Kit(Player1,BLACKGUARD)~ + ~I do as my faith demands. I'm a symbol - I need to stand for something greater than myself.~ + L0ArrMines.9
+ ~Class(Player1,RANGER_ALL)~ + ~I'm supposed to be a guide.~ + L0ArrMines.9
+ ~Class(Player1,CLERIC_ALL)~ + ~Is there? I'm a servant of greater powers. I do as my god ordains.~ + L0ArrMines.9
+ ~Class(Player1,DRUID_ALL)~ + ~I'd help any child of nature whose language I could understand, so I suppose that's technically true.~ + L0ArrMines.9
++ ~Do you think it's the problems that interest me? Not at all. I'll keep it up as long as the rewards roll in.~ + L0ArrMines.9
++ ~Do you mean that?~ + L0ArrMines.6
+ ~Gender(Player1,FEMALE)~ + ~You can tell me that you enjoy looking, you know.~ + L0ArrMines.8
END


IF ~~ L0ArrMines.4
SAY ~It was.~
IF ~~ + L0ArrMines.9
END

IF ~~ L0ArrMines.5
SAY ~I meant - never mind.~
IF ~~ + L0ArrMines.9
END

IF ~~ L0ArrMines.6
SAY ~Yes, <CHARNAME>, I'm known for offering hollow praise.~
IF ~~ + L0ArrMines.9
END

IF ~~ L0ArrMines.7
SAY ~Don't parry my compliments.~
IF ~~ + L0ArrMines.9
END

IF ~~ L0ArrMines.8
SAY ~Believe that if it pleases you.~
IF ~~ DO ~IncrementGlobal("L0ArrenFlirt","GLOBAL",1)~ + L0ArrMines.9
END

IF ~~ L0ArrMines.9
SAY ~I don't know if I should be impressed or frustrated. It sounds so simple when you put it that way.~
= ~I admire your certainty.~
IF ~~ EXIT
END
END



//Ulcaster ghost

//Bounty hunter

CHAIN IF ~Global("L0ArrBounty","GLOBAL",1)~ THEN L0ARRENJ L0AB1
~You're too new to have this many enemies.~
DO ~IncrementGlobal("L0ArrBounty","GLOBAL",1)~
END
++ ~That doesn't strike you as condescending?~ + L0AB1.1
++ ~You're telling me. I don't even know why it's happening.~ + L0AB1.why
++ ~I wish I knew what I'd done to deserve this.~ + L0AB1.2
++ ~I am so, so tired of people trying to kill me.~ + L0AB1.3

APPEND L0ARRENJ

IF ~~ L0AB1.1
SAY ~I say what I see.~
IF ~~ + L0AB1.why
END

IF ~~ L0AB1.2
SAY ~Do you think anyone gets what they deserve?~
++ ~No, but I don't have to like it.~ + L0AB1.4
++ ~Whoever's behind it will, mark my words.~ + L0AB1.5
END

IF ~~ L0AB1.3
SAY ~Picked the wrong line of work.~
++ ~I didn't pick it.~ + L0AB1.6
++ ~It's just until I figure out who's behind it.~ + L0AB1.7
END

IF ~~ L0AB1.4
SAY ~Resentment. Good. Hold onto that. Complacency will grind you down.~
IF ~~ + L0AB1.why
END

IF ~~ L0AB1.5
SAY ~So you do have a spine.~
IF ~~ + L0AB1.why
END

IF ~~ L0AB1.6
SAY ~Wouldn't trust your judgment if you had.~
IF ~~ + L0AB1.why
END

IF ~~ L0AB1.7
SAY ~Then what? Swords to plowshares? I don't see it, but hold onto your dreams, if you must.~
IF ~~ + L0AB1.why
END

IF ~~ L0AB1.why
SAY ~Walk me through it. When did it start?~
++ ~The first attempt was before I'd even left home. I was just running some last errands around the keep when a man jumped at me with a knife.~ + L0AB1.8
++ ~My father and I were only a few hours out of Candlekeep when it happened. If he hadn't told me to run, I...~ + L0AB1.S1
END

IF ~~ L0AB1.8
SAY ~What happened then?~
++ ~I killed him.~ + L0AB1.9
++ ~The Watchers killed him.~ + L0AB1.9
++ ~He hit me. It hurt so much - I'd trained in combat before, but we used practice weapons. I'd never been stabbed. And all I could think about was the pain, like this red mist.~ + L0AB1.10
++ ~He killed me, I'm dead now.~ + L0AB1.11
++ ~I don't want to talk about it.~ + L0AB1.12
END

IF ~~ L0AB1.9
SAY ~Had to be done.~
IF ~~ + L0AB1.P1
END

IF ~~ L0AB1.10
SAY ~But you survived.~
IF ~~ + L0AB1.P1
END

IF ~~ L0AB1.11
SAY ~It's good you can still jest.~
IF ~~ + L0AB1.P1
END

IF ~~ L0AB1.12
SAY ~You're alive. That's something.~
IF ~~ + L0AB1.P1
END

IF ~~ L0AB1.S1
SAY ~It was bad, then.~
++ ~Very.~ + L0AB1.P1
++ ~He told Gorion to hand me over. Like he knew me, even though I'd never met him before. Why would a stranger want me dead?~ + L0AB1.S2
++ ~I thought I was going to die.~ + L0AB1.12
END

IF ~~ L0AB1.S2
SAY ~I could speculate, but that's copper-dreadful stuff.~
IF ~~ + L0AB1.P1
END

IF ~~ L0AB1.P1
SAY ~I want to know if there's a pattern here, something that might explain why it's happening.~
++ ~I appreciate that, but thinking about it more is making it worse.~ + L0AB1.16
++ ~There's been one in every town or settlement so far. The Friendly Arm Inn, Beregost, Nashkel...~ + L0AB1.13
END

IF ~~ L0AB1.13
SAY ~Just the towns?~
++ ~So far.~ + L0AB1.14
++ ~No. There were others.~ + L0AB1.15
END

IF ~~ L0AB1.14
SAY ~That might be a good sign - opportunists, not just after you.~
IF ~~ + L0AB1.ch1
END

IF ~~ L0AB1.15
SAY ~I see. So it's more than opportunism.~
IF ~~ + L0AB1.ch1
END

IF ~~ L0AB1.16
SAY ~Didn't mean to dredge up bad memories.~
IF ~~ + L0AB1.ch1
END

IF ~~ L0AB1.ch1
SAY ~Your foe's counting on you being off-balance. Keep your head and you have a chance.~
++ ~Foe? Just the one?~ + L0AB1.ch2
++ ~If just one foe has the resources to throw this many enemies at me, I have as much chance as a diseased gibberling.~ + L0AB1.ch3
++ ~Then it's working. I don't see any way out of this.~ + L0AB1.ch4
END

IF ~~ L0AB1.ch2
SAY ~Call me an optimist.~
IF ~~ + L0AB1.last
END

IF ~~ L0AB1.ch3
SAY ~Then what? Are you going to lay down and die?~
IF ~~ + L0AB1.last
END

IF ~~ L0AB1.ch4
SAY ~Kill them first.~
IF ~~ + L0AB1.last
END

IF ~~ L0AB1.last
SAY ~Live for spite, if nothing else.~
IF ~~ EXIT
END
END

//after talking to Vai



//At rest
CHAIN IF ~Global("L0ArrEddard","GLOBAL",3)~ THEN L0ARRENJ L0ed2
~Dead kid, spoiled sister, rich family. Think I should worry?~
DO ~IncrementGlobal("L0ArrEddard","GLOBAL",1)~
END
++ ~What makes you say that?~ + L0ed2.1
++ ~You could try being nicer. I get the impression you're not really a people person.~ + L0ed2.1
++ ~I'm guessing that powerful people don't deal well with things they can't change.~ + L0ed2.1

APPEND L0ARRENJ

IF ~~ L0ed2.1
SAY ~Say you're a noble. You're wealthy, powerful, used to being in control - and then your brother vanishes. You pay sizeable fees to trackers, diviners, priests, and they shrug and apologize. You find a medium and pay her a... sustainably exorbitant fee.~
= ~I try not to work for nobles, not if I can help it. They pay well, but they don't like the answers I can give.~
++ ~That wouldn't have anything to do with your winning personality, I'm sure.~ + L0ed2.2
++ ~You could try being nice for a change.~ + L0ed2.2
++ ~I don't think it's what you're saying so much as it is how you say it.~ + L0ed2.2
++ ~You don't think your client is going to take the news well, then.~ + L0ed2.2
++ ~"Sustainably exorbitant?" Exactly how much are you getting paid, anyway?~ + L0ed2.3
END

IF ~~ L0ed2.2
SAY ~Explain.~
++ ~A little diplomacy could go a long way.~ + L0ed2.4
++ ~Are you asking me to explain... being nice? I don't even know where to start.~ + L0ed2.4
++ ~Promise you won't bite my head off for being honest?~ + L0ed2.4
END

IF ~~ L0ed2.3
SAY ~Ask me no questions and I'll tell you no lies.~
++ ~That wouldn't have anything to do with your winning personality, I'm sure.~ + L0ed2.2
++ ~You could try being nice for a change.~ + L0ed2.2
++ ~I don't think it's what you're saying so much as it is how you say it.~ + L0ed2.2
++ ~You don't think your client is going to take the news well, then.~ + L0ed2.2
END

IF ~~ L0ed2.4
SAY ~Better a cruel truth than a kind lie.~
++ ~See, that's what I mean! It isn't one or the other.~ + L0ed2.5
++ ~Have you considered that maybe the truth doesn't have to be cruel?~ + L0ed2.5
++ ~I agree. Trying to protect someone from the truth solves nothing.~ + L0ed2.5
END

IF ~~ L0ed2.5
SAY ~That's life. Telling yourself otherwise is just waiting to be hurt.~
++ ~It doesn't have to be.~ + L0ed2.6
++ ~I'm starting to see why you were willing to sign on with any group willing to escort you.~ + L0ed2.6
++ ~You were asking if you should worry? Yes, but not for the reason you think.~ + L0ed2.6
++ ~I'm sorry that's what you think.~ + L0ed2.6
++ ~That's defeatism. I can't accept that.~ + L0ed2.6
++ ~True. It's better to come to terms with that, spare yourself the pain.~ + L0ed2.7
END

IF ~~ L0ed2.6
SAY ~Who are you trying to convince?~
IF ~~ DO ~RestParty()~ EXIT
END

IF ~~ L0ed2.7
SAY ~You talk more sense than most living people I've met.~
IF ~~ DO ~RestParty()~ EXIT
END



//PID

IF ~IsGabber(Player1) CombatCounter(0) !Detect([ENEMY])~ THEN BEGIN L0APID
SAY ~Yes?~
++ ~How many of those cards do you have?~ + L0APID.card
++ ~Where do you get your pipeweed?~ + L0APID.pipe
++ ~What does the T stand for?~ + L0APID.T
++ ~So "Arren" is your last name?~ + L0APID.name
++ ~Have I annoyed you?~ + L0APID.annoy
++ ~Do you think you could act a little less unfriendly?~ + L0APID.nice
++ ~Never mind.~ EXIT
END

IF ~~ L0APID.card
SAY ~Several.~
IF ~~ EXIT
END

IF ~~ L0APID.pipe
SAY ~Store in the Gate. No idea where it's from, I just buy what's cheapest.~
IF ~~ EXIT
END

IF ~~ L0APID.T
SAY ~None of your business.~
++ ~That doesn't start with T.~ + L0APID.T2
END

IF ~~ L0APID.T2
SAY ~Good catch.~
IF ~~ EXIT
END

IF ~~ L0APID.name
SAY ~Yes.~
IF ~~ EXIT
END

IF ~~ L0APID.annoy
SAY ~You'd know if you had.~
IF ~~ EXIT
END

IF ~~ L0APID.nice
SAY ~I don't know what you mean.~
IF ~~ EXIT
END
END

