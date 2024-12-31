[command]
name = "b+c"
command = b+c
time = 15
[command]
name = "a+b"
command = a+b
time = 15

[command]
name = "Super Jump"
command = D,U
time = 20

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

b = b
[command]
name = "12"
command = D,DF,F,a+c
time = 25

c = c
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
command = ~D,DB,B,c
time = 15

b = b
[command]
name = "D,F,b"
command = ~D,DF,F,b
time = 15

c = c
[command]
name = "D,F,a"
command = ~D,DF,F,a
time = 15

s = s

;-| Default Values |-------------------------------------------------------
[command]
name = "D,F,c"
command = ~D,DF,F,c
time = 15

[command]
name = "D,F,z"
command = ~D,DF,F,z
time = 15

[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
[command]
name = "D,B,b"
command = ~D,DB,B,b
time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
[command]
name = "D,B,a"
command = ~D,DB,B,a
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

[State -1, Dodge]
type = ChangeState
value = 450
trigger1 = command = "b+c"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Dash]
type = ChangeState
value = 500
triggerall = power>500
trigger1 = command = "a+b"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Power Charge]
type = ChangeState
value = 400
triggerall = power<3000
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Air Dash Back]
type = ChangeState
value = 103
trigger1 = command = "BB"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Air Dash Fwd]
type = ChangeState
value = 102
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Super Jump]
type = ChangeState
value = 80
trigger1 = command = "Super Jump"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, RunAtak]
type = ChangeState
value = 300
trigger1 = command = "a"
trigger2 = command = "b"
trigger3 = command = "c"
trigger4 = var(50) = 1
Trigger4 = AIlevel >= 6
trigger4 = P2bodydist X <= 30
trigger5 = var(50) = 1
Trigger5 = AIlevel >= 8
trigger5 = P2bodydist X <= 60
triggerall = command != "holddown"
triggerall = statetype = S && stateno=100

;---------------------------------------------------------------------------
;-------------------------------------------
;-------------------------------------------
[State -1, ultimate]
type = ChangeState
value = 4500
triggerall = ailevel = 0
triggerall = power >= 3000
trigger1 = command = "D,D,a"
trigger2 = command = "D,D,b"
trigger3 = command = "D,D,c"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

[State -1, Fly Heads]
type = ChangeState
value = 1500
triggerall = power >= 1500
trigger1 = command = "D,B,c"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

[State -1, Chain of a Thousand Miles ]
type = ChangeState
value = 1400
trigger1 = command = "D,F,c"
triggerall = power >= 2000
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

[State -1, Steam Machine Car]
type = ChangeState
value = 1300
triggerall = power >= 1500
trigger1 = command = "D,B,b"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

[State -1, Inverted Spear of Heaven]
type = ChangeState
value = 1200
trigger1 = command = "D,F,b"
triggerall = power >= 1500
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

[State -1, Handgun]
type = ChangeState
value = 1100
trigger1 = command = "D,B,a"
triggerall = power >= 1000
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

[State -1, Split Soul Katana]
type = ChangeState
value = 1000
triggerall = power >= 1000
trigger1 = command = "D,F,a"
triggerall = command != "holddown"
triggerall = statetype = S
triggerall = ctrl

;---------------------------------------------------------------------------

[State -1,Stand C]
type = ChangeState
value = 260
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1,Stand B]
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
value = 270
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouch B]
type = ChangeState
value = 410
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouch C2]
type = ChangeState
value = 350;290
triggerall = p2statetype = L
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouch C]
type = ChangeState
value = 290
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, Jump A Down]
type = ChangeState
value = 640
triggerall = command = "holddown"
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump C Down]
type = ChangeState
value = 650
triggerall = command = "holddown"
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump A]
type = ChangeState
value = 600
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump B]
type = ChangeState
value = 610
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump C]
type = ChangeState
value = 630
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
