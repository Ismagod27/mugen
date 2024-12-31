[Command]
name="Super Jump"
Command=~D,U
time=10

;[Command
[Command]
name = "ia1"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1
[Command]
name = "ia2"
command = D,D,D,F,F,U,a+b+c+x+y+z
time = 1

[Command]
name = "ia3"
command = D,D,D,F,F,UF,a+b+c+x+y+z
time = 1

[Command]
name = "ia4"
command = D,D,D,F,F,D,a+b+c+x+y+z
time = 1

[Command]
name = "ia5"
command = D,D,D,F,F,DF,a+b+c+x+y+z
time = 1

[Command]
name = "ia6"
command = D,D,D,F,F,B,a+b+c+x+y+z
time = 1

[Command]
name = "ia7"
command = D,D,D,F,F,DB,a+b+c+x+y+z
time = 1

[Command]
name = "ia8"
command = D,D,D,F,F,UB,a+b+c+x+y+z
time = 1

[Command]
name = "ia9"
command = D,D,D,F,U,F,a+b+c+x+y+z
time = 1

[Command]
name = "ia10"
command = D,D,D,F,UF,F,a+b+c+x+y+z
time = 1

[Command]
name = "ia11"
command = D,D,D,F,DF,F,a+b+c+x+y+z
time = 1

[Command]
name = "ia12"
command = D,D,D,F,D,F,a+b+c+x+y+z
time = 1

[Command]
name = "ia13"
command = D,D,D,F,DB,F,a+b+c+x+y+z
time = 1

[Command]
name = "ia14"
command = D,D,D,F,B,F,a+b+c+x+y+z
time = 1

[Command]
name = "ia15"
command = D,D,D,F,UB,F,a+b+c+x+y+z
time = 1

[Command]
name = "ia16"
command = D,D,D,F,F,F,a+b+c+x+y,z
time = 1

[Command]
name = "ia17"
command = D,D,D,F,F,F,a+b+c+x,y,z
time = 1

[Command]
name = "ia18"
command = D,D,D,F,F,F,a+b+c,x,y,z
time = 1

[Command]
name = "ia19"
command = D,D,D,F,F,F,a+b,c,x,y,z
time = 1

[Command]
name = "ia20"
command = D,D,D,F,F,F,a,b,c,x,y,z
time = 1

[Command]
name = "ia21"
command = D,D,D,F,F,F,a+b+c,x+y+z
time = 1

[Command]
name = "ia22"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "ia23"
command = D,D,D,F,F,UF,a,b+c+x+y+z
time = 1

[Command]
name = "ia24"
command = D,D,D,F,F,U,a+b,c+x+y+z
time = 1

[Command]
name = "ia25"
command = D,D,D,F,F,DF,a,b,c+x+y+z
time = 1


[command]
name = "31"
command = D,DF,F,D,DB,B,a
time = 25
[command]
name = "32"
command = D,DF,F,D,DB,B,b
time = 25
[command]
name = "33"
command = D,DF,F,D,DB,B,c
time = 25

[command]
name = "21"
command = D,DB,B,a+b
time = 25
[command]
name = "22"
command = D,DB,B,a+c
time = 25
[command]
name = "23"
command = D,DB,B,b+c
time = 25


[command]
name = "11"
command = D,DF,F,b+c
time = 25

[command]
name = "12"
command = D,DF,F,a+c
time = 25

[command]
name = "13"
command = D,DF,F,a+b
time = 25

[command]
name = "D,D,a"
command = x
time = 25
[command]
name = "D,D,b"
command = x
time = 25
[command]
name = "D,D,c"
command = x
time = 25

[Command]
name="FF"
Command=F,F
time=10

[Command]
name="BB"
Command=B,B
time=10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[command]
name = "D,B,c"
command = D,DB,B,c
time = 15

[command]
name = "D,F,b"
command = D,DF,F,b
time = 15

[command]
name = "D,F,a"
command = D,DF,F,a
time = 15

;-| Default Values |-------------------------------------------------------
[command]
name = "D,F,c"
command = D,DF,F,c
time = 15

[command]
name = "D,F,z"
command = D,DF,F,z
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "D,B,b"
command = D,DB,B,b
time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "D,B,a"
command = D,DB,B,a
time = 15;----------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.


;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

[Command]
name="SPECIAL 1"
Command=~D,DF,F,a
time=15

[Command]
name="SPECIAL 2"
Command=~D,DB,B,a
time=15

[Command]
name="SPECIAL 3"
Command=~D,DF,F,b
time=15

[Command]
name="SPECIAL 4"
Command=~D,DB,B,b
time=15

[Command]
name="SPECIAL 5"
Command=~D,DF,F,c
time=15

[Command]
name="SPECIAL 6"
Command=~D,DB,B,c
time=15

[Command]
name="SPECIAL 7"
Command=~B,DB,D,DF,F,a
time=30

[Command]
name="SPECIAL 8"
Command=~F,DF,D,DB,B,a
time=30

[Command]
name="SPECIAL 9"
Command=~B,DB,D,DF,F,b
time=30

[Command]
name="SPECIAL 10"
Command=~F,DF,D,DB,B,b
time=30

[Command]
name="SPECIAL 11"
Command=~B,DB,D,DF,F,c
time=30

[Command]
name="SPECIAL 12"
Command=~F,DF,D,DB,B,c
time=30

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------

;===========================================================================
;---------------------------------------------------------------------------

[State -1, Power Charge]
type = ChangeState
value = 500
triggerall = power<3000
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dash]
type = ChangeState
triggerall = (var(5) = 0) && (statetype != A) && (stateno != 60) && (stateno != 65) && (stateno != 66) && (stateno != 70) && (roundstate = 2)
trigger1 = (ctrl) && (command = "FF")
value = 60

[State -1, Air Dash]
type = ChangeState
triggerall = (statetype = A) && (stateno != 60) && (stateno != 66)  && (stateno != 70) && (roundstate = 2)
trigger1 = (ctrl) && (command = "FF")
value = 65

[State -1, Back Dash]
type = ChangeState
triggerall = (var(5) = 0) && (statetype != A) && (stateno != 60) && (stateno != 65) && (stateno != 66)  && (stateno != 70) && (roundstate = 2)
trigger1 = (ctrl) && (command = "BB")
value = 70

[State -1, Air Back Dash]
type = ChangeState
triggerall = (statetype = A) && (stateno != 60) && (stateno != 65) && (stateno != 70) && (roundstate = 2)
trigger1 = (ctrl) && (command = "BB")
value = 66

;===========================================================================
; Super Jump
[State -1, Super Jump]
Type = ChangeState
Triggerall = Ctrl
Triggerall = RoundState = 2 && Alive
Triggerall = StateType != A || StateType = S || StateType = C
Triggerall = Pos Y = 0
Trigger1 = Command = "Super Jump"
Value = 80


[State -1, RunAtak]
type = ChangeState
value = 300
trigger1 = command = "a" && ailevel = 0
trigger2 = command = "b" && ailevel = 0
trigger3 = command = "c" && ailevel = 0
Trigger4 = AIlevel = [6,7]
trigger4 = P2bodydist X <= 70
Trigger5 = AIlevel = 8
trigger5 = P2bodydist X <= 120
triggerall = command != "holddown"
triggerall = statetype = S && stateno=100

;---------------------------------------------------------------------------
;-------------------------------------------
;-------------------------------------------
[State -1, Domain Expansion]
type = ChangeState
triggerall = command = "y" 
triggerall = power >= 2000 
triggerall = var(20) != 1
triggerall = life < lifemax * 0.8
trigger1 = statetype = S && ctrl
value = 8888

;[State -1, Don't Move(Domain ULT)]
;type = ChangeState
;value = 3333
;triggerall = var(30) = 1
;triggerall = ailevel = 0
;triggerall = power >= 0
;trigger1 = command = "z"
;triggerall = statetype = S
;triggerall = ctrl

[State -1, True Love]
type = ChangeState
value = 4500
triggerall = ailevel = 0
triggerall = power >= 3000
trigger1 = command = "x"
triggerall = statetype = S
triggerall = ctrl

[State -1, Rika Rescue]
type = ChangeState
value = 3500
triggerall = var(30) = 0
triggerall = ailevel = 0
triggerall = numexplod(9999) = 0
triggerall = numexplod(990) = 0
trigger1 = command = "SPECIAL 6"
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl

[State -1, Rika's Invocation]
type = ChangeState
value = 3000
triggerall = ailevel = 0
triggerall = numexplod(990) = 0
triggerall = numexplod(9999) = 0
trigger1 = command = "SPECIAL 5"
triggerall = power >= 2000
triggerall = statetype = S
triggerall = ctrl

[State -1, Cursed Energy Sword]
type = ChangeState
triggerall = var(30) = 0
value = 2500
triggerall = power >= 1500
trigger1 = command = "SPECIAL 4"
triggerall = statetype = S
triggerall = ctrl

[State -1, Black Flash]
type = ChangeState
value = 2000
trigger1 = command = "SPECIAL 3"
triggerall = power >= 1500
triggerall = statetype = S
triggerall = ctrl

[State -1, Reverse Cursed Technique]
type = ChangeState
value = 1500
trigger1 = command = "SPECIAL 2"
triggerall = power >= 1000
triggerall = statetype = S
triggerall = ctrl

[State -1, Cursed speech]
type = ChangeState
triggerall = var(30) = 0
value = 1000
triggerall = power >= 1000
trigger1 = command = "SPECIAL 1"
triggerall = statetype = S
triggerall = ctrl

[State -1, Reversal Red(Domain Move)]
type = ChangeState
triggerall = power >= 1000
value = 1300
triggerall = var(30) = 1
triggerall = statetype != A
trigger1 = command = "SPECIAL 1"
trigger1 = ctrl
trigger2 = numhelper(700) > 0

[State -1, Jacob's Ladder(Domain Move)]
type = ChangeState
value = 1200
triggerall = statetype = S
triggerall= var(30) = 1 
triggerall = power >= 1500
triggerall = command = "SPECIAL 4"
trigger1 = ctrl

[State -1, Rika Head(Domain Move)]
type = ChangeState
triggerall = var(30) = 1
triggerall = numhelper(11509) = 0
triggerall = power >= 500
value = 2200
triggerall = statetype != A
triggerall = command = "SPECIAL 6"
trigger1 = ctrl
trigger2 = numhelper(750) > 0

[State -1, Rika Head Launch(Domain Move)]
type = ChangeState
triggerall = var(30) = 1
triggerall = numhelper(11509) > 0
value = 2201
triggerall = statetype != A
triggerall = command = "SPECIAL 6"
trigger1 = ctrl
trigger2 = numhelper(750) > 0

;---------------------------------------------------------------------------

[State -1, C]
type = ChangeState
value = 270
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, B]
type = ChangeState
value = 230
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;-0---------------------------------------
[State -1, Stand A]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------

[State -1, Crouch A]
type = ChangeState
value = 290
trigger1 = command = "a"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl

; Crouching Light Kick
[State -1, Crouch B]
type = ChangeState
value = 280
trigger1 = command = "b"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl

[State -1, Crouch C]
type = ChangeState
value = 280
trigger1 = command = "c"
triggerall = command = "holddown"
triggerall = statetype = C
triggerall = ctrl
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Down]
type = ChangeState
value = 690
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
triggerall = command = "holddown"
triggerall = statetype = A
triggerall = ctrl

[State -1, Jump A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump B]
type = ChangeState
value = 650
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump C]
type = ChangeState
value = 670
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
