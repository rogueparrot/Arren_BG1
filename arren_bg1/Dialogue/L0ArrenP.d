BEGIN L0ARRENP

IF ~Global("L0ArrenJoin","LOCALS",1)~ p1
SAY ~You're certain?~
+ ~Global("L0ArrEddard","GLOBAL",0)~ + ~Yes, I'd like you to leave.~ + p2.1
+ ~GlobalGT("L0ArrEddard","GLOBAL",0) !Global("Chapter","GLOBAL",5)~ + ~Yes, I'd like you to leave.~ + p2.2
+ ~GlobalGT("L0ArrEddard","GLOBAL",0) Global("Chapter","GLOBAL",5)~+ ~Yes, I'd like you to leave.~ + p2.3
++ ~No, I've changed my mind.~ + p3
END

IF ~~ p2.1
SAY ~I could still use an escort to the ambush site. Seek me in Beregost if you come to your senses.~
IF ~~ DO ~SetGlobal("L0ArrenJoin","LOCALS",0) EscapeAreaMove("AR3304",680,1080,6)~ EXIT
END

IF ~~ p2.2
SAY ~As you will. I'll be in Beregost.~
IF ~~ DO ~SetGlobal("L0ArrenJoin","LOCALS",0) EscapeAreaMove("AR3304",680,1080,6)~ EXIT
END

IF ~~ p2.3
SAY ~Very well. You'll find me at the Elfsong.~
IF ~~ DO ~SetGlobal("L0ArrenJoin","LOCALS",0) EscapeAreaMove("AR0705",850,400,4)~ EXIT
END

IF ~~ p3
SAY ~Do as you will.~
IF ~~ EXIT
END

IF ~Global("L0ArrenJoin","LOCALS",0)~ p4
SAY ~You're back.~
++ ~I could use your help.~ + p5
++ ~I changed my mind.~ + p6
END

IF ~~ p5
SAY ~It's yours.~
IF ~~ DO ~SetGlobal("L0ArrenJoin","LOCALS",1) JoinParty()~ EXIT
END

IF ~~ p6
SAY ~I'll be here.~
IF ~~ EXIT
END
