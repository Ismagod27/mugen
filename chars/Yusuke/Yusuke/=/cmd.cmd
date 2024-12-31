[command]
name = "su"
command = ~D,U
time = 15
[command]
name = "skill_1"
command = ~D, DF, F, a
time = 30
[command]
name = "skill_2"
command = ~D, DB, B, a
time = 30
[command]
name = "skill_3"
command = ~D, DF, F, b
time = 30
[command]
name = "skill_4"
command = ~D, DB, B, b
time = 30
[command]
name = "super_1"
command = ~D, DF, F, c
time = 30
[command]
name = "super_2"
command = ~D, DB, B, c
time = 30
[command]
name = "ultimate"
command = ~D, DF, F, D, DF, F, a+b
time = 180
[command]
name = "ff"
command = F, F
time = 10
[command]
name = "bb"
command = B, B
time = 10
[command]
name = "recovery"
command = x+y
time = 1
[command]
name = "recovery"
command = y+z
time = 1
[command]
name = "recovery"
command = x+z
time = 1
[command]
name = "recovery"
command = a+b
time = 1
[command]
name = "recovery"
command = b+c
time = 1
[command]
name = "recovery"
command = a+c
time = 1
[command]
name = "back_x"
command = /$B, x
time = 1
[command]
name = "back_y"
command = /$B, y
time = 1
[command]
name = "back_z"
command = /$B, z
time = 1
[command]
name = "down_x"
command = /$D, x
time = 1
[command]
name = "down_y"
command = /$D, y
time = 1
[command]
name = "down_z"
command = /$D, z
time = 1
[command]
name = "fwd_x"
command = /$F, x
time = 1
[command]
name = "fwd_y"
command = /$F, y
time = 1
[command]
name = "fwd_z"
command = /$F, z
time = 1
[command]
name = "up_x"
command = /$U, x
time = 1
[command]
name = "up_y"
command = /$U, y
time = 1
[command]
name = "up_z"
command = /$U, z
time = 1
[command]
name = "back_a"
command = /$B, a
time = 1
[command]
name = "back_b"
command = /$B, b
time = 1
[command]
name = "back_c"
command = /$B, c
time = 1
[command]
name = "down_a"
command = /$D, a
time = 1
[command]
name = "down_b"
command = /$D, b
time = 1
[command]
name = "down_c"
command = /$D, c
time = 1
[command]
name = "fwd_a"
command = /$F, a
time = 1
[command]
name = "fwd_b"
command = /$F, b
time = 1
[command]
name = "fwd_c"
command = /$F, c
time = 1
[command]
name = "up_a"
command = /$U, a
time = 1
[command]
name = "up_b"
command = /$U, b
time = 1
[command]
name = "up_c"
command = /$U, c
time = 1
[command]
name = "a"
command = a
time = 1
[command]
name = "b"
command = b
time = 1
[command]
name = "c"
command = c
time = 1
[command]
name = "x"
command = x
time = 1
[command]
name = "y"
command = y
time = 1
[command]
name = "z"
command = z
time = 1
[command]
name = "s"
command = s
time = 1
[command]
name = "fwd"
command = $F
time = 1
[command]
name = "downfwd"
command = $DF
time = 1
[command]
name = "down"
command = $D
time = 1
[command]
name = "downback"
command = $DB
time = 1
[command]
name = "back"
command = $B
time = 1
[command]
name = "upback"
command = $UB
time = 1
[command]
name = "up"
command = $U
time = 1
[command]
name = "upfwd"
command = $UF
time = 1
[command]
name = "hold_x"
command = /x
time = 1
[command]
name = "hold_y"
command = /y
time = 1
[command]
name = "hold_z"
command = /z
time = 1
[command]
name = "hold_a"
command = /a
time = 1
[command]
name = "hold_b"
command = /b
time = 1
[command]
name = "hold_c"
command = /c
time = 1
[command]
name = "hold_s"
command = /s
time = 1
[command]
name = "holdfwd"
command = /$F
time = 1
[command]
name = "holddownfwd"
command = /$DF
time = 1
[command]
name = "holddown"
command = /$D
time = 1
[command]
name = "holddownback"
command = /$DB
time = 1
[command]
name = "holdback"
command = /$B
time = 1
[command]
name = "holdupback"
command = /$UB
time = 1
[command]
name = "holdup"
command = /$U
time = 1
[command]
name = "holdupfwd"
command = /$UF
time = 1

[statedef -2]
type = c

[state > ai - guard]
type = changestate
triggerall = ((!numhelper(1350)) && (!numhelper(1360)) && (!numhelper(80015)))
triggerall = (stateno != [120, 155]) && !(enemynear, hitdefattr = sca, at)
triggerall = (roundstate = 2) && (ailevel) && (numenemy) && (inguarddist)
trigger1 = (ctrl) || (prevstateno = 5120 && (random < ((750) * (ailevel ** 2 / 64.0))))
value = cond(((random % 5 = 0) && (pos y = 0)), 105 + (random % 2), 120)
[state > ai - parry]
type = changestate
triggerall = ((!numhelper(1350)) && (!numhelper(1360)) && (!numhelper(80015)))
triggerall = ((enemy, stateno != 115) || (enemy, stateno != [120, 152]) || (enemy, stateno != 500) || (enemy, stateno != 5110))
triggerall = (roundstate = 2) && (ailevel) && (ctrl)
trigger1 = ((p2bodydist x = [-5, 45]) && (p2bodydist y = [-90, 20]) && ((p2stateno = [200, 899]) || (p2stateno = [2200, 2899])) && (random < (ailevel * 80)))
value = 99600
[state > ai - walk]
type = changestate
triggerall = (roundstate = 2) && (ctrl) && (pos y = 0) && (ailevel) && (random < (ailevel * 2 / 2))
trigger1 = (p2movetype != a) && (p2bodydist x = [90 + (random % 30), 120 + (random % 40)]) && (p2bodydist y = [-25, 5])
value = 20
[state > combo to jump]
type = changestate
triggerall = (roundstate = 2) && (pos y = 0) && (p2statetype = a) && (movecontact) && (numhelper(99999))
trigger1 = (!ailevel) && (command = "holdup")
trigger2 = (ailevel) && ((p2bodydist x <= 45 + (random % 25)) && (random < (ailevel * 5)))
value = 40
[state > combo to doule-jump]
type = changestate
triggerall = (roundstate = 2) && (pos y != 0) && (!numexplod(45)) && (movecontact) && (numhelper(99999))
trigger1 = (!ailevel) && (command = "up")
trigger2 = (ailevel) && ((p2bodydist x <= 45 + (random % 25)) && (random < (ailevel * 5)))
value = 45
[state > double-jump reset]
type = removeexplod
trigger1 = pos y = 0
id = 45
[state > super jump]
type = changestate
triggerall = (roundstate = 2) && (pos y = 0) && (ctrl)
trigger1 = (!ailevel) && (command = "su")
trigger2 = (ailevel) && ((p2bodydist x = [80 + (random % 20), 120 + (random % 20)]) && (random < (ailevel * 1)))
value = 46
[state > super dash]
type = changestate
triggerall = (roundstate = 2) && ((ctrl) || (stateno = [100, 111]) || (numhelper(99999))) && (!numhelper(81005))
trigger1 = (!ailevel) && ((command = "holdfwd") && (command = "s"))
trigger2 = (ailevel) && (((p2bodydist x = [10, 325 + (random % 45)]) && (p2bodydist y = [-80, 20])) && (random < (ailevel * 1) / 2))
trigger2 = ((p2movetype != a) && (p2statetype != l))
trigger3 = (ailevel) && (((p2bodydist x = [-10, 245 + (random % 45)]) && (p2bodydist y = [-80, 20])) && (random < (ailevel * 6)))
trigger3 = ((p2stateno = 60) || (enemynear, stateno = 60))
value = 60
[state > (add004) super dash switch]
type = changestate
triggerall = (roundstate = 2) && (alive) && (numpartner)
triggerall = ((partner, stateno = 5610) || (partner, stateno = 190190))
trigger1 = (((stateno = 5600) || (stateno = 190194)) && (time >= 5))
value = 60
[state > taunt]
type = changestate
triggerall = pos y = 0
trigger1 = (!ailevel) && (roundstate = 2) && (ctrl) && ((command = "holddown") && (command = "s"))
trigger2 = (ailevel) && (roundstate = 2) && (ctrl) && ((p2bodydist x >= 160) && (random < (ailevel * 1) / 2))
trigger3 = (stateno = 0) && (roundstate = 2) && (ctrl) && (enemynear, p2bodydist x >= 75) && (time >= 1800) && (random % 999 = 0)
trigger4 = (stateno = 0) && (roundstate = 1) && (roundno = [2, 5]) && (random % 800 = 0) && (!numexplod(80))
value = 80
[state > taunt cooldown]
type = explod
trigger1 = stateno = 80
anim = 6
id = 80
pos = 0, 0
bindtime = -1
removetime = 300
[state > dash]
type = changestate
triggerall = name != "johnny joestar"
triggerall = (roundstate = 2) && (pos y = 0) && (ctrl)
trigger1 = (!ailevel) && (command = "ff")
trigger2 = (ailevel) && (p2movetype != a) && ((p2bodydist x >= 110 + (random % 20)) && (random < (ailevel * 3)))
trigger3 = (ailevel) && ((enemynear, vel x = 0) || (enemy, vel x = 0)) && ((p2bodydist x >= 110 + (random % 20)) && (random < (ailevel * 6)))
value = 100
[state > back jump]
type = changestate
triggerall = name != "johnny joestar"
triggerall = (roundstate = 2) && (pos y = 0) && (ctrl)
trigger1 = (!ailevel) && (command = "bb")
trigger2 = (ailevel) && (p2movetype = a) && ((p2bodydist x <= 70 + (random % 30)) && (random < (ailevel * 6)))
trigger3 = (ailevel) && ((enemynear, vel x = 0) || (enemy, vel x = 0)) && ((p2bodydist x <= 60 + (random % 20)) && (random < (ailevel * 3)))
value = 44
[state > dodge]
type = changestate
triggerall = (roundstate = 2) && (pos y = 0) && (!numexplod(105)) && ((ctrl) || (stateno = 100)) && (command != "holddown")
trigger1 = (!ailevel) && (command = "z")
value = cond(command = "holdback", 107, cond(command = "holdfwd", 106, 105))
[state > air dash]
type = changestate
triggerall = (roundstate = 2) && (pos y != 0) && (!numexplod(110)) && (ctrl)
trigger1 = (!ailevel) && ((command = "ff") || (command = "bb"))
trigger2 = (ailevel) && ((p2bodydist x = [5 + (random % 10), 65 + (random % 15)]) && (cond(p2movetype = a, (random < (ailevel * 20)), (random < (ailevel * 5)))))
value = 110
[state > grab]
type = changestate
triggerall = (roundstate = 2) && (pos y = 0) && (!numhelper(81006)) && ((ctrl) || (stateno = 100) || (numhelper(99999)) && cond(numhelper(99999), (helper(99999), time < 10), 1))
trigger1 = (!ailevel) && (command = "y")
trigger2 = ((ailevel) && (p2bodydist x = [10, 20]) && (p2bodydist y = [-10, 5]) && (random < (ailevel * 5)))
trigger2 = (p2statetype != l) && (p2movetype != a)
trigger3 = ((ailevel) && ((p2bodydist x = [8 + (random % 4), 20]) && (p2bodydist y = [-10, 5]) && (enemynear, stateno = [120, 150])) && (random < (ailevel * 10)))
value = 112
[state > grab counter]
type = hitoverride
triggerall = (roundstate = 2) && (pos y = 0) && (!numhelper(81006))
triggerall = enemy, numhelper(80015) = 0
triggerall = enemy, stateno = 112
trigger1 = (!ailevel) && (command = "y")
trigger2 = ((ailevel) && (p2bodydist x = [4, 12]) && (p2bodydist y = [-60, 10]) && (random < (ailevel * 5)))
trigger3 = ((ailevel) && ((p2bodydist x = [5, 20]) && (p2bodydist y = [-60, 10]) && (enemynear, stateno = [120, 150])) && (random < (ailevel * 5)))
attr = sca, na, np, nt, sa, st
stateno = 112
time = 15
ignorehitpause = 1
[state > power charge]
type = changestate
triggerall = ((!numhelper(1350)) && (!numhelper(30500)) && (!numhelper(80015)))
triggerall = (roundstate = 2) && (pos y = 0) && (ctrl)
trigger1 = (!ailevel) && (command = "s")
trigger2 = (ailevel) && (((p2bodydist x = [90 + (random % 20), 250]) || (p2bodydist y = [-120, -80])) && (random < (ailevel * 1)))
trigger2 = (enemynear, movetype != a) && (enemynear, stateno != [2500, 4999])
value = 115
[state > parry]
type = changestate
triggerall = (roundstate = 2) && (!numhelper(80015)) && (ctrl)
trigger1 = ((!ailevel) && ((command = "holddown") && (command = "z")))
value = 99600
ignorehitpause = 1
[state > combo breaker]
type = hitoverride
triggerall = numhelper(30990)
triggerall = (helper(30990), fvar(8) = 1)
triggerall = enemy, numhelper(80015) = 0
triggerall = ((movetype = h) || (numhelper(98001) = 1))
trigger1 = ((!ailevel) && (command = "s"))
trigger2 = ((ailevel) && (p2bodydist x = [-5, 45]) && (random < (ailevel * 2)))
attr = sca, na, np, nt
stateno = 99685
time = 15
ignorehitpause = 1

[state > aura palette]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (var(53))

[state > combo system]
type = helper
trigger1 = !numhelper(30990)
stateno = 30990
id = 30990
ownpal = 1
postype = p1
size.xscale = .145
size.yscale = .145
supermovetime = 99999999999
pausemovetime = 99999999999
ignorehitpause = 1

[state > transform]
type = changestate
triggerall = numhelper(30990)
triggerall = helper(30990), var(3) != 0
triggerall = cond((helper(30990), var(4) != 0), 1, var(2) = 0)
triggerall = cond(var(2) = 0, helper(30990), fvar(8) = 1, 1)
triggerall = (roundstate = 2) && (pos y = 0) && (ctrl)
trigger1 = (!ailevel) && (command = "down_x")
trigger2 = ((ailevel) && (cond(var(2) = 1, (p2bodydist x = [180, 240]), 1) && (random < (ailevel * 6))))
value = cond((helper(30990), var(4) != 0), cond(var(2) = 1, helper(30990), var(4), helper(30990), var(3)), helper(30990), var(3))
[state > awakening - on]
type = changestate
triggerall = (roundstate = 2) && (pos y = 0) && (ctrl) && (power >= (powermax / 1.5)) && (!numhelper(99100))
triggerall = command != "down_x"
trigger1 = ((!ailevel) && (command = "x"))
trigger2 = ((ailevel) && (life < 700) && (random < (ailevel * 3)))
value = 99615
[state > awakening - limiter]
type = varset
trigger1 = numhelper(99100)
v = 58
value = 1

[state > player / cpu indicator]
type = helper
triggerall = (alive) && (roundstate = 2) && (!numhelper(99010)) && (!numhelper(81007)) && (!numhelper(98510))
trigger1 = (movetype != h) && (random % 2500 = 0)
trigger2 = stateno = 5120
trigger3 = ailevel
stateno = 99010
id = 99010
pos = 0, 0
postype = p1
ownpal = 1
facing = facing
ignorehitpause = 1
size.xscale = .525
size.yscale = .525
supermovetime = 999
pausemovetime = 999
persistent = 0
[state > class label]
type = helper
triggerall = numhelper(99015) = 0
triggerall = stateno != 5901
trigger1 = (alive) && (roundstate = 1)
stateno = 99015
id = 99015
pos = 0, 0
postype = p1
facing = facing
ownpal = 1
ignorehitpause = 1
size.xscale = .5
size.yscale = .5
supermovetime = 999
pausemovetime = 999
persistent = 0

[state > intro audio fix]
type = stopsnd
triggerall = ((stateno != [190, 199]) && (stateno != [2190, 2199]))
trigger1 = time = 1
channel = 1
[state > intro audio fix]
type = stopsnd
triggerall = ((stateno != [190, 199]) && (stateno != [2190, 2199]))
trigger1 = time = 1
channel = 2

[state > taunt fix]
type = assertspecial
trigger1 = roundstate != 2
flag = nobardisplay
ignorehitpause = 1
[state > taunt fix]
type = assertspecial
trigger1 = stateno = [80, 81]
flag = intro
flag2 = roundnotover
[state > taunt fix]
type = ctrlset
trigger1 = stateno = 80
value = 0

[state > breath effect]
type = angledraw
trigger1 = (alive) && (statetype != l)
value = cond(vel x != 0, - (atan(vel y / vel x) * (const(size.air.back) * 1.25) / pi), 0)
scale = 1 + (sin((time / (12.5 + (life / 25))) * (pi / 2)) * 0.0025), 1 + (sin((time / (12.5 + (life / 25))) * (pi / 2)) * 0.012)
ignorehitpause = 1

[state > danger mode]
type = palfx
triggerall = roundstate = 2
triggerall = statetype != l
triggerall = alive
triggerall = life < lifemax / 2.5
trigger1 = time % (25 + (life / 50)) = 0
time = 40
add = 0, (-66 + floor(life / 15)), (-66 + floor(life / 15))
sinadd = 0, (-66 + floor(life / 15)), (-66 + floor(life / 15)), (-66 + floor(life / 15))
color = 200 + floor(life / 17.6)
ignorehitpause = 1

[state > energy passive]
type = poweradd
triggerall = (roundstate = 2) && ((ctrl) || (stateno = [0, 110]))
triggerall = (numhelper(405) = 0) && (numhelper(1350) = 0) && ((numhelper(80015) = 0) && (enemy, numhelper(80015) = 0))
trigger1 = time % 2 = 0
value = cond(movetype = h, (1 / cond(numpartner > 0, (numpartner + 1), 1)), (2 / cond(numpartner > 0, (numpartner + 1), 1)))
ignorehitpause = 1
[state > energy attack]
type = poweradd
triggerall = (!numhelper(20000))
trigger1 = (time = 1) && ((stateno = [200, 899]) || (stateno = [2200, 2899]))
value = 40 + (random % 20)
ignorehitpause = 1
[state > energy getting damage]
type = poweradd
trigger1 = (time = 1) && ((stateno = 5000) || (stateno = 5010) || (stateno = 5020))
value = 20 + (random % 15)
ignorehitpause = 1
[state > energy taunt drain]
type = poweradd
trigger1 = ((enemy, numhelper(30990)) && (enemy, stateno = 80))
value = -12
ignorehitpause = 1

[state > health regen]
type = lifeadd
triggerall = numhelper(30990)
triggerall = (roundstate = 2) && (life >= 50) && (enemy, numhelper(99110) = 0)
triggerall = ((stateno != [120, 155]) && (stateno != [5600, 5620]) && (stateno != [56100, 56120]) && (stateno != [190190, 190195]))
trigger1 = (((gametime % 10 = 0) && ((numhelper(99100) && ((helper(30990), var(1)) = 4)))) || ((gametime % 25 = 0) && (numhelper(99100))))
value = cond(movetype = h, 0, 1)
ignorehitpause = 1

[state > speed combo bonus]
type = veladd
triggerall = (!numhelper(20000))
triggerall = numhelper(99999)
trigger1 = time <= 2
x = const(velocity.run.fwd.x) * .055
ignorehitpause = 1

[state > super armor]
type = nothitby
trigger1 = numhelper(99120)
value = ,na, np
time = 10
ignorehitpause = 1
[state > super armor]
type = lifeadd
triggerall = numhelper(99120)
trigger1 = !(helper(99120), time)
value = - ceil(helper(99120), gethitvar(damage))
kill = 1
absolute = 1
ignorehitpause = 1
[state > super armor]
type = palfx
trigger1 = numhelper(99120)
trigger1 = !(helper(99120), time) && helper(99120), gethitvar(damage)
time = 1
add = floor(fvar(35)), floor(fvar(36)), floor(fvar(37))
mul = 256, 256, 256
sinadd = floor(fvar(35)), floor(fvar(36)), floor(fvar(37)), 20
invertall = 0
color = 256
[state > super armor]
type = playsnd
trigger1 = numhelper(99120)
trigger1 = !(helper(99120), time) && helper(99120), gethitvar(damage)
value = s9104, 2
[state > super armor]
type = helper
trigger1 = numhelper(99120)
trigger1 = !(helper(99120), time) && helper(99120), gethitvar(damage)
stateno = 98001
id = 98001
size.height = 0
size.head.pos = (random % 360), (var(53))
pos = (const(size.mid.pos.x) + (random % -5)), (const(size.mid.pos.y) + (random % 15))
postype = p1
ownpal = 1
size.xscale = .2
size.yscale = .2
ignorehitpause = 1
persistent = 0

[state > fighter buff]
type = attackmulset
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 2)
triggerall = numhelper(99100) = 0
trigger1 = 1
value = 1 * 1.0
[state > fighter buff]
type = attackmulset
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 2)
triggerall = numhelper(99100) > 0
trigger1 = 1
value = 1 * 1.2

[state > tanker buff]
type = defencemulset
triggerall = numhelper(30990)
triggerall = (helper(30990), var(1)) = 4
trigger1 = numhelper(99100) > 0
value = .7
[state > tanker buff]
type = helper
triggerall = numhelper(30990)
triggerall = !numhelper(99120)
trigger1 = (numhelper(99100) > 0) && (stateno = 60)
stateno = 99120
id = 99120
pos = 0, 0
postype = p1
facing = 1
ownpal = 1

[state > ranger / hunter buff]
type = helper
triggerall = numhelper(30990)
triggerall = (((helper(30990), var(1)) = 3) || ((helper(30990), var(1)) = 5))
triggerall = (numhelper(99100) > 0) && (numhelper(99110) = 0)
triggerall = (enemy, numhelper(99120) = 0)
triggerall = !numhelper(1160)
trigger1 = movehit = 1
trigger2 = numhelper(340)
trigger2 = helper(340), movehit = 1
trigger3 = numhelper(405)
trigger3 = helper(405), movehit = 1
trigger4 = numhelper(410)
trigger4 = helper(410), movehit = 1
trigger5 = numhelper(1050)
trigger5 = helper(1050), movehit = 1
trigger6 = numhelper(1250)
trigger6 = helper(1250), movehit = 1
stateno = 99110
id = 99110
pos = 0, 0
postype = p2
ownpal = 1
size.xscale = .5
size.yscale = .5
ignorehitpause = 1
persistent = 0

[state > warrior buff]
type = hitoverride
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 6)
triggerall = numhelper(99100) > 0
triggerall = enemy, numhelper(80015) = 0
triggerall = stateno != 99610
triggerall = stateno != [120, 154]
triggerall = pos y = 0
trigger1 = random % 90 = 0
attr = sca, na, np, nt
stateno = 99610
time = 10

[state > after image]
type = helper
triggerall = time % 5 = 0
trigger1 = (stateno = 45) || (stateno = 60) || (stateno = 100) || (stateno = 105) || (stateno = 110)
stateno = 40000
id = 40000
pos = 0, 0
postype = p1
supermovetime = 999
pausemovetime = 999

[state > after image - king crimson]
type = helper
triggerall = (enemynear, name = "diavolo") && (enemynear, numhelper(1350) > 0)
triggerall = life != 0
trigger1 = time % 6 = 0
stateno = 40002
id = 40002
pos = -6 + (random % 14), -4 + (random % 8)
facing = 0
postype = p1
supermovetime = 999
pausemovetime = 999
persistent = 5

[state > time stop]
type = pause
triggerall = numhelper(80015) = 1
trigger1 = (helper(80015), time <= 75) && (time % 2 = 0)
time = 2
movetime = 2
ignorehitpause = 1
[state > time stop]
type = pause
triggerall = numhelper(80015) = 1
trigger1 = (helper(80015), time >= 75)
time = 999999
movetime = 999999
ignorehitpause = 1
[state > time stop]
type = nothitby
triggerall = enemy, name != "johnny joestar"
triggerall = numhelper(80015) = 1
trigger1 = helper(80015), time >= 75
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = 1
ignorehitpause = 1
[state > time stop]
type = playerpush
trigger1 = numhelper(80015) = 1
value = 0
[state > time stop]
type = assertspecial
trigger1 = numhelper(80015) = 1
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
[state > time stop]
type = assertspecial
trigger1 = numhelper(80015) = 1
flag = unguardable

[state > hit clash]
type = helper
triggerall = !numhelper(99800)
triggerall = !numexplod(99605)
triggerall = roundstate = 2
triggerall = !movereversed
triggerall = numenemy
triggerall = movetype = a && enemynear, movetype = a
triggerall = hitdefattr != sca, ap
triggerall = (stateno != [99600, 99605]) && ((stateno != [0, 0]) && (prevstateno != [99600, 99605]))
triggerall = ((enemynear, stateno != [1000, 4999]) && (enemynear, stateno != [99600, 99605]))
triggerall = p2bodydist y = [-5, 5]
trigger1 = p2bodydist x = [-5, 90]
trigger1 = ((stateno = 112) && (enemynear, stateno = 112)) || ((stateno = [200, 899]) && (enemynear, stateno = [200, 899]))
stateno = 99800
id = 99800
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
[state > hit clash]
type = ctrlset
triggerall = (numhelper(99800)) && (roundstate = 2)
triggerall = (command = "a") || (command = "b") || (command= "c") || (command = "x") || (command = "y") || (command = "z")
triggerall = movetype != h
trigger1 = helper(99800), stateno != 99800
trigger1 = helper(99800), time <= 3
value = 1
ignorehitpause = 1
[state > hit clash]
type = veladd
triggerall = numhelper(99800)
trigger1 = helper(99800), stateno != 99800
trigger1 = helper(99800), time <= 3
x = - const(velocity.run.fwd.x) * 1.4
ignorehitpause = 1

[state > super dash clash]
type = changestate
;triggerall = !numpartner
triggerall = (numhelper(1350) = 0) && (numhelper(1360) = 0)
triggerall = (numhelper(80015) = 0)
triggerall = (roundstate = 2) && (alive)
triggerall = (numexplod(60))
triggerall = ((p2bodydist x = [-10, 90]) && ((stateno = 60) && (enemynear, stateno = 60)))
trigger1 = ((movetype = a) && (enemynear, movetype = a))
value = 99030
ignorehitpause = 1
[state > super dash clash]
type = changestate
triggerall = roundstate = 2
triggerall = stateno != 5150
triggerall = ((alive) || cond(numpartner, (partner, alive), 1))
trigger1 = enemy, stateno = 99030
value = 99031
ignorehitpause = 1

[state > custom throw]
type = helper
triggerall = numhelper(99055) = 0
trigger1 = enemy, stateno = 99050
stateno = 99055
id = 99055
pos = 0, 0
postype = p2
persistent = 0
[state > custom throw]
type = helper
triggerall = numhelper(99056) = 0
trigger1 = enemy, stateno = 99051
stateno = 99056
id = 99056
pos = 0, -30
postype = p2
persistent = 0
[state > custom throw]
type = helper
triggerall = numhelper(99061) = 0
trigger1 = enemy, stateno = 99060
stateno = 99065
id = 99061
pos = 0, -30
postype = p2
persistent = 0
[state > custom throw]
type = helper
triggerall = numhelper(99066) = 0
trigger1 = enemy, stateno = 99061
stateno = 99066
id = 99066
pos = 0, -30
postype = p2
persistent = 0

[state > impact zoom]
type = helper
triggerall = ((numhelper(99070) = 0) && (enemy, numhelper(99070) = 0))
triggerall = statetype != l
triggerall = p2bodydist x = [-5, 40]
triggerall = ((enemynear, stateno = [200, 899]) || (enemynear, stateno = [2200, 2899]))
triggerall = gethitvar(hittime) >= 15
triggerall = gethitvar(damage) >= 18
trigger1 = ((gethitvar(animtype) = 2) && (gethitvar(damage) >= 16))
trigger2 = (gethitvar(animtype) = 3)
trigger3 = (gethitvar(animtype) = 4)
trigger4 = (gethitvar(animtype) = 5)
stateno = 99070
id = 99070
pos = 0, 0
postype = p1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state > death zoom]
type = helper
triggerall = ((enemy, authorname = "inseph") || (enemy, authorname = "packmanmugen") || (enemy, authorname = "damaylormugen") || (enemy, authorname = "ivantherysavy"))
triggerall = ((numhelper(99080) = 0) && (enemy, numhelper(99080) = 0))
triggerall = !alive
trigger1 = (time = 1) && ((stateno = 5000) || (stateno = 5020) || (stateno = 99090))
stateno = 99080
id = 99080
pos = 0, 0
postype = p1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state > erase death]
type = helper
triggerall = !numhelper(99091)
trigger1 = stateno = 99090
stateno = 99091
id = 99091
pos = 0, 0
postype = p1
[state > erase death]
type = palfx
trigger1 = enemynear, numexplod(5300) = 1
time = 1
add = 0, 0, 0
mul = 0, 0, 0
sinadd = 0, 0, 0, 1
invertall = 0
color = 256
ignorehitpause = 1
[state > erase death]
type = assertspecial
trigger1 = numhelper(99091) = 1
flag = invisible
flag2 = noshadow
ignorehitpause = 1
[state > erase death]
type = screenbound
triggerall = !numpartner
trigger1 = numhelper(99091)
value = 0
ignorehitpause = 1
[state > erase death]
type = removeexplod
triggerall = prevstateno = 99090
trigger1 = time >= 1
ignorehitpause = 1
[state > erase death]
type = removeexplod
triggerall = numhelper(30851)
trigger1 = helper(30851), time <= 5
ignorehitpause = 1
[state > erase death]
type = assertspecial
triggerall = numhelper(99091)
trigger1 = time <= 180
flag = roundnotover

[state > palette system]
type = varset
trigger1 = roundstate = 0
var(2) = 0
persistent = 0
[state > palette system]
type = varset
trigger1 = roundstate = 0
var(3) = 0
persistent = 0
[state > palette system]
type = varset
triggerall = roundno < 2
trigger1 = roundstate = 0
var(57) = cond(ailevel, 1 + (random % 7), 1)

[state > palette system]
type = remappal
trigger1 = 1
source = 1, 1
dest = 1, var(57)
ignorehitpause = 1

[state > palette system]
type = varset
triggerall = numhelper(30990)
triggerall = helper(30990), var(3) != 0
triggerall = (!ailevel) && (stateno = 5902)
triggerall = var(2) < 1
trigger1 = command = "up"
var(2) = 1
[state > palette system]
type = varset
triggerall = numhelper(30990)
triggerall = helper(30990), var(3) != 0
triggerall = (!ailevel) && (stateno = 5902)
triggerall = var(2) > 0
trigger1 = command = "down"
var(2) = 0
[state > palette system]
type = playsnd
triggerall = numhelper(30990)
triggerall = helper(30990), var(3) != 0
triggerall = (!ailevel) && (stateno = 5902)
triggerall = var(2) < 2
trigger1 = (command = "up") || (command = "down")
value = s9951, 1
[state > palette system]
type = helper
triggerall = numhelper(30990)
triggerall = helper(30990), var(3) != 0
triggerall = (!ailevel) && (stateno = 5902)
triggerall = var(2) < 2
triggerall = time >= 30
trigger1 = (command = "up") || (command = "down")
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state > palette system]
type = varadd
triggerall = (!ailevel) && (stateno = 5902)
;triggerall = var(57) < 8
trigger1 = teamside = 1 && command = "fwd"
trigger2 = teamside = 2 && command = "back"
var(57) = 1
[state > palette system]
type = varadd
triggerall = (!ailevel) && (stateno = 5902)
triggerall = var(57) >= 2 ;&& var(57) <= 8
trigger1 = teamside = 1 && command = "back"
trigger2 = teamside = 2 && command = "fwd"
var(57) = -1
[state > palette system]
type = playsnd
triggerall = (!ailevel) && (stateno = 5902)
trigger1 = (command = "fwd") || (command = "back")
value = s9951, 1
[state > palette system]
type = helper
triggerall = (!ailevel) && (stateno = 5902)
triggerall = time >= 30
trigger1 = (command = "fwd") || (command = "back")
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

;[state > debug combo system]
;type = displaytoclipboard
;trigger1 = numhelper(30990)
;text = "var(10) -> %d, fvar(10) -> %d, var(11) -> %d, fvar(11) -> %d, var(12) -> %d, fvar(12) -> %d"
;params = (helper(30990), var(10)), (helper(30990),fvar(10)), (helper(30990),var(11)), (helper(30990),fvar(11)), (helper(30990),var(12)), (helper(30990),fvar(12))
;ignorehitpause = 1

[state > guide lines]
type = helper
triggerall = (!ailevel) && (roundstate = 2) && (numhelper(31000) = 0) && (enemynear, numhelper(31000) = 0)
trigger1 = (command = "s") && (command = "x")
stateno = 31000
id = 31000
pos = 0, 0
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[statedef 10]
type = c
physics = c
anim = 10 + (var(11))
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = velmul
trigger1 = !time
x = .75

[state 0]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 0

[statedef 11]
type = c
movetype = i
physics = c
velset = 0, 0
ctrl = 1
sprpriority = 2

[state 0]
type = changeanim
trigger1 = anim != 11 + (var(11))
value = 11 + (var(11))

[state 0]
type = playsnd
triggerall = prevstateno = 5120
trigger1 = animelem = 1
value = s9152, 0

[state 0]
type = explod
triggerall = prevstateno = 5120
trigger1 = animelem = 1
anim = 30202
id = 30202
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = prevstateno = 5120
trigger1 = animelem = 1
anim = 30202
id = 30202
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = changestate
trigger1 = command != "holddown"
value = 12
ctrl = 0

[statedef 12]
type = s
movetype = i
physics = s
anim = 12 + (var(11))
sprpriority = 2

[state 0]
type = changestate
trigger1 = !animtime
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 20]
type = s
movetype = i
physics = n
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = varset
trigger1 = ((!ailevel) && (command != "holdfwd") && (command != "holdback"))
trigger2 = ((ailevel) && (p2statetype = s))
sysvar(1) = 0
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdfwd"))
trigger2 = ((ailevel) && (p2movetype != a))
sysvar(1) = 1
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdback"))
trigger2 = ((ailevel) && ((teammode != simul) && (p2movetype = a)))
sysvar(1) = -1

[state 0]
type = velset
trigger1 = 1
x = cond(sysvar(1) = 0, 0, cond(sysvar(1) = 1, const(velocity.run.fwd.x), const(velocity.run.back.x)) / 2.35)

[state 0]
type = changeanim
triggerall = vel x > 0
trigger1 = (anim != 20 + (var(11)))
value = 20 + (var(11))
[state 0]
type = changeanim
triggerall = vel x < 0
trigger1 = (anim != 21 + (var(11)))
value = 21 + (var(11))

[statedef 21]
type = s
movetype = i
physics = n
ctrl = 0
anim = 20 + (var(11))
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = velset
triggerall = !ailevel
trigger1 = !time
x = 0
y = 0

[state 0]
type = velset
trigger1 = 1
x = const(velocity.run.fwd.x) / 2.35

[state 0]
type = changestate
trigger1 = ((ailevel) && (enemynear, movetype = a) || ((enemynear, vel x != 0) && (enemynear, movetype = a)))
trigger2 = (((ailevel)) && (time >= 40 + (random % 40)) || ((enemynear, p2bodydist x >= 0) && (enemynear, p2bodydist x <= 40)))
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 40]
type = s
movetype = i
physics = s
anim = 5 + (var(11))
ctrl = 0
sprpriority = 2

[state 0]
type = changestate
trigger1 = ailevel
value = cond(random % 5 = 0, 41, 0)
ctrl = 1

[state 0]
type = angledraw
trigger1 = time <= 5
scale = 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125), .95
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = !time
value = s9140, 0

[state 0]
type = explod
trigger1 = !animtime
anim = cond((command = "holdfwd" || command = "holdback") = 1, 30201, 30200)
id = 30200
pos = 0, 3
postype = p1
facing = cond(command = "holdback" = 1, -1, 1)
bindtime = 1
removetime = -2
sprpriority = 0
scale = .35, .35
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = explod
trigger1 = !animtime
anim = cond((command = "holdfwd" || command = "holdback") = 1, 30201, 30200)
id = 30200
pos = 0, 3
postype = p1
facing = cond(command = "holdback" = 1, -1, 1)
bindtime = 1
removetime = -2
sprpriority = 3
scale = .35, .35
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = varset
trigger1 = ((!ailevel) && (command != "holdfwd") && (command != "holdback"))
trigger2 = ((ailevel) && (p2statetype = s))
sysvar(1) = 0
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdfwd"))
trigger2 = ((ailevel) && (p2movetype != a))
sysvar(1) = 1
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdback"))
trigger2 = ((ailevel) && ((teammode != simul) && (p2movetype = a)))
sysvar(1) = -1

[state 0]
type = velset
trigger1 = !animtime
x = cond(sysvar(1) = 0, 0, cond(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 0]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

[statedef 41]
type = s
movetype = i
physics = s
anim = 5 + (var(11))
ctrl = 0
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125), .95
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = !time
value = s9140, 0

[state 0]
type = explod
trigger1 = !animtime
anim = cond((command = "holdfwd" || command = "holdback") = 1, 30201, 30200)
id = 30200
pos = 0, 3
postype = p1
facing = cond(command = "holdback" = 1, -1, 1)
bindtime = 1
removetime = -2
sprpriority = 0
scale = .35, .35
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = explod
trigger1 = !animtime
anim = cond((command = "holdfwd" || command = "holdback") = 1, 30201, 30200)
id = 30200
pos = 0, 3
postype = p1
facing = cond(command = "holdback" = 1, -1, 1)
bindtime = 1
removetime = -2
sprpriority = 3
scale = .35, .35
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = varset
trigger1 = ((!ailevel) && (command != "holdfwd") && (command != "holdback"))
trigger2 = ((ailevel) && (p2statetype = s))
sysvar(1) = 0
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdfwd"))
trigger2 = ((ailevel) && (p2movetype != a))
sysvar(1) = 1
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdback"))
trigger2 = ((ailevel) && ((teammode != simul) && (p2movetype = a)))
sysvar(1) = -1

[state 0]
type = velset
trigger1 = !animtime
x = cond(sysvar(1) = 0, 0, cond(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[state 0]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

[statedef 44]
type = a
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 5200 + (var(10))
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = velset
trigger1 = !time
x = -3
y = const(velocity.jump.y) * .8

[state 0]
type = statetypeset
trigger1 = !time
physics = a
[state 0]
type = playsnd
triggerall = pos y = 0
trigger1 = !time
value = s9140, 0
[state 0]
type = explod
triggerall = pos y = 0
trigger1 = !time
anim = 30201
id = 30200
pos = 0, 5
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .35, .35
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = pos y = 0
trigger1 = !time
anim = 30201
id = 30200
pos = 0, 5
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .35, .35
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = nothitby
trigger1 = !time
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = !time
value = 0
[state 0]
type = palfx
trigger1 = !time
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = afterimage
trigger1 = !time
time = 10
length = 5
palcolor = 256
palbright = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
palcontrast = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
paladd = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
timegap = 1
framegap = 1
trans = add1
[state 0]
type = envshake
trigger1 = !time
time = 5
ampl = -5
freq = 15
[state 0]
type = playsnd
trigger1 = !time
value = s9160, 6
[state 0]
type = playsnd
trigger1 = !time
value = s9180, 6
[state 0]
type = explod
trigger1 = !time
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 5)
postype = p1
facing = -1
bindtime = 5
removetime = -2
sprpriority = 4
scale = .15, .1
angle = 55
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 1, 1
[state 0]
type = explod
trigger1 = !time
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 5)
postype = p1
facing = -1
bindtime = 5
removetime = -2
sprpriority = 3
scale = .15, .1
angle = 55
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 1, 1
trans = sub

[state 0]
type = changestate
trigger1 = !animtime
value = 50
ctrl = 1

[statedef 45]
type = a
physics = a
sprpriority = 2

[state 0]
type = playsnd
trigger1 = !time
value = s9140, 1

[state 0]
type = palfx
trigger1 = !time
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256

[state 0]
type = explod
triggerall = (command != "holdback") && (command != "holdfwd")
trigger1 = !time
anim = 30205
id = 30205
pos = -38, 14
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = cond(time <= 5, 3, 1)
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = -50
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
accel = 0, .25
persistent = 0
[state 0]
type = explod
triggerall = (command != "holdback") && (command != "holdfwd")
trigger1 = !time
anim = 30205
id = 30205
pos = -38, 14
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = -50
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
accel = 0, .25
persistent = 0

[state 0]
type = explod
triggerall = (command = "holdfwd")
trigger1 = !time
anim = 30205
id = 30205
pos = -40, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = cond(time <= 5, 3, 1)
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = -65
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
accel = -.25, .25
persistent = 0
[state 0]
type = explod
triggerall = (command = "holdfwd")
trigger1 = !time
anim = 30205
id = 30205
pos = -40, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = -65
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
accel = -.25, .25
persistent = 0

[state 0]
type = explod
triggerall = (command = "holdback")
trigger1 = !time
anim = 30205
id = 30205
pos = 40, 0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = cond(time <= 5, 3, 1)
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = -65
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
accel = .25, .25
persistent = 0
[state 0]
type = explod
triggerall = (command = "holdback")
trigger1 = !time
anim = 30205
id = 30205
pos = 40, 0
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = -65
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
accel = .25, .25
persistent = 0

[state 0]
type = changeanim
trigger1 = !selfanimexist(44)
value = 41 + (var(11))

[state 0]
type = changeanim
trigger1 = selfanimexist(44)
value = 44 + (var(11))

[state 0]
type = varset
trigger1 = ((!ailevel) && (command != "holdfwd") && (command != "holdback"))
trigger2 = ((ailevel) && (p2statetype = s))
sysvar(1) = 0
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdfwd"))
trigger2 = ((ailevel) && (p2movetype != a))
sysvar(1) = 1
[state 0]
type = varset
trigger1 = ((!ailevel) && (command = "holdback"))
trigger2 = ((ailevel) && ((teammode != simul) && (p2movetype = a)))
sysvar(1) = -1

[state 0]
type = velset
trigger1 = !time
x = cond(sysvar(1) = 0, 0, cond(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = cond((prevstateno = [600, 699]) || (prevstateno = [2600, 2699]), const(velocity.jump.y) * .65, const(velocity.jump.y))

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 45
pos = 0, 0
bindtime = -1
removetime = -1

[state 0]
type = changestate
trigger1 = time = 5
value = 50
ctrl = 1

[statedef 46]
type = a
movetype = i
physics = n
ctrl = 0
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 45
pos = 0, 0
bindtime = -1
removetime = -1

[state 0]
type = changeanim
trigger1 = !time
value = 41 + (var(11))
[state 0]
type = changeanim
trigger1 = vel y > 0
value = 44 + (var(11))
persistent = 0

[state 0]
type = velset
triggerall = time >= 5
trigger1 = command = "holdback"
x = -3
[state 0]
type = velset
triggerall = time >= 5
trigger1 = command = "holdfwd"
x = 3
[state 0]
type = veladd
trigger1 = time >= 10
y = .35
[state 0]
type = ctrlset
trigger1 = time >= 10
value = 1

[state 0]
type = velset
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
y = const(velocity.jump.y)

[state 0]
type = envshake
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
time = 10
ampl = -10
freq = 20
[state 0]
type = palfx
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = playsnd
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
value = s9140, 0
[state 0]
type = playsnd
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
value = s9180, 0
[state 0]
type = playsnd
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
value = s9180, 1
[state 0]
type = playsnd
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
value = s9180, 2

[state 0]
type = explod
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
anim = 30214
id = 30214
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) - 5)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
scale = const(size.xscale) * .15, const(size.yscale) * .15
angle = cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (-75 / pi)), 0)
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0, 2
[state 0]
type = explod
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
anim = 30214
id = 30214
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) - 5)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = const(size.xscale) * .15, const(size.yscale) * .15
angle = cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (-75 / pi)), 0)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0, 2
trans = sub

[state 0]
type = explod
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
anim = cond((command = "holdfwd" || command = "holdback") = 1, 30201, 30200)
id = 30200
pos = 5, 5
postype = p1
facing = cond(command = "holdback" = 1, -1, 1)
bindtime = 1
removetime = -2
sprpriority = 3
scale = const(size.xscale) * .4, const(size.yscale) * .4
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
anim = cond((command = "holdfwd" || command = "holdback") = 1, 30201, 30200)
id = 30200
pos = 5, 5
postype = p1
facing = cond(command = "holdback" = 1, -1, 1)
bindtime = 1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .4, const(size.yscale) * .4
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
anim = 30216
id = 30216
pos = 5, 4
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = const(size.xscale) * .275, const(size.yscale) * .275
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = anim = 41 + (var(11))
trigger1 = animelemtime(1) = 0
anim = 30216
id = 30216
pos = 5, 4
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 1
scale = const(size.xscale) * .275, const(size.yscale) * .275
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = null
trigger1 = var(6) := (const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(7) := (const(size.mid.pos.y) + (-10 + (random % 20)))
[state 0]
type = explod
triggerall = (time <= 12) && (anim = 41 + (var(11)))
trigger1 = time % 3 = 0
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .3, .1
angle = cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (-75 / pi)), 0)
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
vel = 0, 2
[state 0]
type = explod
triggerall = (time <= 12) && (anim = 41 + (var(11)))
trigger1 = time % 3 = 0
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .3, .1
angle = cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (-75 / pi)), 0)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0, 2

[state 0]
type = helper
triggerall = (time <= 12) && (anim = 41 + (var(11)))
trigger1 = time % 5 = 0
stateno = 40000
id = 40000
pos = 0, 0
postype = p1
supermovetime = 999
pausemovetime = 999

[state 0]
type = changestate
triggerall = time > 15
trigger1 = pos y >= -1
value = 52

[statedef 50]
type = a
movetype = i
physics = a
sprpriority = 2
facep2 = 1

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = varset
trigger1 = !time
sysvar(1) = 0

[state 0]
type = changeanim
trigger1 = !time
value = 41 + (var(11))
[state 0]
type = changeanim
trigger1 = vel y > 0
value = 44 + (var(11))
persistent = 0

[state 0]
type = veladd
triggerall = time > 1
trigger1 = command = "holdback"
x = -1.1
[state 0]
type = velset
triggerall = time > 1
trigger1 = vel x < -3
x = const(velocity.jump.back.x)
[state 0]
type = veladd
triggerall = time > 1
trigger1 = command = "holdfwd"
x = 1.1
[state 0]
type = velset
triggerall = time > 1
trigger1 = vel x > 3
x = const(velocity.jump.fwd.x)

[statedef 51]
type = a
physics = a

[state 0]
type = null
trigger1 = 1

[statedef 52]
type = c
movetype = i
physics = c
ctrl = 0
anim = 10 + (var(11))
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = playsnd
trigger1 = !time
value = s9152, 0
[state 0]
type = explod
trigger1 = !time
anim = 30202
id = 30202
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30202
id = 30202
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = velset
trigger1 = !time
y = 0

[state 0]
type = playsnd
triggerall = !floor(const(velocity.run.fwd.x) * -3.3)
trigger1 = !time
value = s9840, 1
[state 0]
type = posset
triggerall = floor(const(velocity.run.fwd.x) * -3.3)
trigger1 = !time
y = 0

[state 0]
type = changestate
trigger1 = !animtime
value = 12

[statedef 60]
type = s
movetype = i
physics = n
velset = 0, 0
ctrl = 0
sprpriority = 3
facep2 = 1

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 60
pos = 0, 0
bindtime = -1
removetime = 180

[state 0]
type = statetypeset
trigger1 = pos y != 0
physics = a
[state 0]
type = velset
trigger1 = time <= 10
y = -1.5
[state 0]
type = helper
trigger1 = (numhelper(40001) <= 5) && (time = [0, 20])
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = statetypeset
trigger1 = time >= 15
movetype = a

[state 0]
type = helper
triggerall = !numhelper(99120)
trigger1 = time = 15
stateno = 99120
id = 99120
pos = 0, 0
postype = p1
facing = 1
ownpal = 1
[state 0]
type = helper
trigger1 = time = 15
stateno = 81001
id = helper(30990), var(2)
pos = 0, -15
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = (time <= 15) && (anim != 10 + (var(11)))
value = cond(pos y != 0, 41, 40) + (var(11))
elem = 1
[state 0]
type = changeanim
triggerall = pos y != 0
trigger1 = (time >= 15) && (anim != 110 + (var(11)))
value = 110 + (var(11))
elem = 1
[state 0]
type = changeanim
triggerall = pos y = 0
trigger1 = (time >= 15) && (anim != 100 + (var(11)))
value = 100 + (var(11))
elem = 3

[state 0]
type = playsnd
trigger1 = !time
value = s9600, 2
[state 0]
type = explod
trigger1 = !time
anim = 30302
id = 30302
pos = 0, (const(size.mid.pos.y)) - 5
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = .25, .25
angle = 0
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30302
id = 30302
pos = 0, (const(size.mid.pos.y)) - 5
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
scale = .25, .25
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = playsnd
trigger1 = time = 10
value = s9501, 5
[state 0]
type = playsnd
trigger1 = time = 10
value = s9501, 5

[state 0]
type = palfx
trigger1 = (time = 10) || (time = 15)
time = 10
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = afterimage
trigger1 = time = 15
time = 5
length = 5
palcolor = 256
palbright = (floor(fvar(35)) * 2), (floor(fvar(36)) * 2), (floor(fvar(37)) * 2)
palcontrast = (floor(fvar(35)) * 2), (floor(fvar(36)) * 2), (floor(fvar(37)) * 2)
paladd = (floor(fvar(35)) * 2), (floor(fvar(36)) * 2), (floor(fvar(37)) * 2)
timegap = 1
framegap = 1
trans = add1

[state 0]
type = velset
trigger1 = time >= 15
x = cond(p2bodydist x <= 90, 5, 8)
y = cond(p2bodydist x <= 90, (p2bodydist y / 10), (p2bodydist y / 15))

[state 0]
type = angledraw
trigger1 = time >= 15
value = cond(vel y = 0, 0, ((atan((-1 * vel Y) / vel X)) * (360 / (1.5 * pi))))
ignorehitpause = 1

[state 0]
type = helper
trigger1 = (vel x > 0) && (time % 8 = 0)
stateno = 98061
id = 98061
pos = 0, 0
postype = p1
persistent = 1
supermovetime = 99999
pausemovetime = 99999
[state 0]
type = null
trigger1 = var(6) := (const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(7) := (const(size.mid.pos.y) + (-5 + (random % 20)))
[state 0]
type = explod
trigger1 = (vel x > 0) && (time % 6 = 0)
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
vel = -1, 0
[state 0]
type = explod
trigger1 = (vel x > 0) && (time % 6 = 0)
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
[state 0]
type = helper
triggerall = pos y = 0
trigger1 = (vel x > 0) && (time % 10 = 0)
stateno = 98120
id = 98120
pos = 5, 0
postype = p1
ownpal = 1
size.xscale = .2
size.yscale = .25
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = changestate
triggerall = p2bodydist x <= 20
triggerall = numhelper(30500)
trigger1 = (time >= 15) && ((numhelper(30500)) && (helper(30500), movecontact))
value = cond(pos y != 0, 111, 101)
[state 0]
type = changestate
triggerall = p2bodydist x <= 20
triggerall = numhelper(30501)
trigger1 = (time >= 15) && ((numhelper(30501)) && (helper(30501), movecontact))
value = cond(pos y != 0, 111, 101)

[state 0]
type = changestate
trigger1 = ((time >= 70) || ((time >= 30) && (frontedgebodydist <= 30)))
value = cond(pos y != 0, 111, 101)
ctrl = 1

[statedef 81]
type = s
movetype = i
physics = n
velset = 0, 0
ctrl = 0
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = changeanim
trigger1 = !time
value = 180 + (var(11))
elem = 3
[state 0]
type = changeanim
trigger1 = time = 2
value = 180 + (var(11))
elem = 2
[state 0]
type = changeanim
trigger1 = time = 4
value = 180 + (var(11))
elem = 1

[state 0]
type = changestate
trigger1 = time = 5
value = 0
ctrl = cond(roundstate = 1, 0, 1)

[statedef 100]
type = s
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 100 + (var(11))
sprpriority = 2

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = playsnd
trigger1 = animelem = 3
value = s9160, 1
[state 0]
type = playsnd
trigger1 = animelem = 3
value = s9160, 3
[state 0]
type = playsnd
trigger1 = animelem = 3
value = s9180, 7
[state 0]
type = playsnd
trigger1 = animelem = 3
value = s9180, 8
[state 0]
type = playsnd
trigger1 = animelem = 3
value = s9180, 9

[state 0]
type = helper
trigger1 = animelem = 3
stateno = 98100
id = 98100
postype = p1

[state 0]
type = velset
trigger1 = animelem = 3
x = 5
[state 0]
type = velset
trigger1 = animelemtime(4) >= 0
x = const(velocity.run.fwd.x) * 1.45

[state 0]
type = palfx
trigger1 = animelem = 3
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256

[state 0]
type = null
trigger1 = var(6) := (const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(7) := (const(size.mid.pos.y) + (-5 + (random % 20)))
[state 0]
type = explod
trigger1 = (vel x > 0) && (time % 6 = 0)
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
vel = -1, 0
[state 0]
type = explod
trigger1 = (vel x > 0) && (time % 6 = 0)
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0

[state 0]
type = helper
trigger1 = (vel x > 0) && (time % 10 = 0)
stateno = 98120
id = 98120
pos = 5, 0
postype = p1
ownpal = 1
size.xscale = .175
size.yscale = .225
ignorehitpause = 1

[state 0]
type = changestate
triggerall = (animelemtime(4) >= 0)
trigger1 = ((!ailevel) && (command = "holdup"))
trigger2 = ((ailevel) && (random < (ailevel * 2)))
value = 40
ignorehitpause = 1

[state 0]
type = changestate
triggerall = animelemtime(3) >= 0
trigger1 = roundstate != 2
trigger2 = ((!ailevel) && (command != "holdfwd"))
trigger3 = ((ailevel) && (cond((p2bodydist x = [40, 45 + (random % 20)]), 1, 0)))
trigger4 = ((ailevel) && (time >= 30 + (random % 30)))
value = 101

[statedef 101]
type = c
movetype = i
physics = n
velset = 2, 0
ctrl = 0
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 7
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = time = 7
value = s9110, 0
[state 0]
type = playsnd
trigger1 = time = 7
value = s9110, 0

[state 0]
type = changeanim
triggerall = prevstateno = 60
trigger1 = time <= 15
value = 10 + (var(11))
elem = 1

[state 0]
type = changeanim
triggerall = prevstateno != 60
trigger1 = time <= 7
value = 12 + (var(11))
elem = 1
[state 0]
type = changeanim
triggerall = prevstateno != 60
trigger1 = time >= 7
value = 12 + (var(11))
elem = 2

[state 0]
type = playsnd
trigger1 = !time
value = s9160, 2

[state 0]
type = explod
trigger1 = (time = 0) && (pos y = 0)
anim = 30203
id = 30203
pos = 10, 0
postype = p1
facing = 1
bindtime = 5
removetime = -2
sprpriority = 0
scale = .2, .25
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = explod
trigger1 = (time = 0) && (pos y = 0)
anim = 30203
id = 30203
pos = 10, 0
postype = p1
facing = 1
bindtime = 5
removetime = -2
sprpriority = 3
scale = .2, .25
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = changestate
trigger1 = time = 10
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 105]
type = s
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 10 + (var(11))
sprpriority = 2

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 105
pos = 0, 0
bindtime = -1
removetime = 30

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = 1
value = 0
[state 0]
type = palfx
trigger1 = time = 2
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = afterimage
trigger1 = time = 2
time = 10
length = 5
palcolor = 256
palbright = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
palcontrast = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
paladd = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
timegap = 1
framegap = 1
trans = add1
[state 0]
type = envshake
trigger1 = time = 2
time = 5
ampl = -5
freq = 15
[state 0]
type = playsnd
trigger1 = time = 2
value = s9180, 0
[state 0]
type = playsnd
trigger1 = time = 2
value = s9180, 4
[state 0]
type = explod
trigger1 = time = 2
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .2, .1
angle = -90
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0, 1
[state 0]
type = explod
trigger1 = time = 2
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .2, .1
angle = -90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 0, 1
trans = sub

[state 0]
type = changestate
trigger1 = time = 15
value = 11
ctrl = 1

[statedef 106]
type = s
movetype = i
physics = n
velset = 0, 0
ctrl = 0
sprpriority = 2

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 105
pos = 0, 0
bindtime = -1
removetime = 30

[state 0]
type = changeanim
triggerall = anim != 10 + (var(11))
trigger1 = time <= 2
value = 10 + (var(11))
[state 0]
type = changeanim
triggerall = anim != 110 + (var(11))
trigger1 = time >= 2
value = 110 + (var(11))

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = 1
value = 0
[state 0]
type = palfx
trigger1 = time = 2
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = afterimage
trigger1 = time = 2
time = 10
length = 5
palcolor = 256
palbright = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
palcontrast = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
paladd = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
timegap = 1
framegap = 1
trans = add1
[state 0]
type = envshake
trigger1 = time = 2
time = 5
ampl = -5
freq = 15
[state 0]
type = playsnd
trigger1 = time = 2
value = s9180, 3
[state 0]
type = playsnd
trigger1 = time = 2
value = s9180, 4
[state 0]
type = playsnd
trigger1 = time = 2
value = s9180, 4
[state 0]
type = explod
trigger1 = time = 2
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) + 15), (const(size.mid.pos.y) + 5)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .2, .1
angle = 0
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
[state 0]
type = explod
trigger1 = time = 2
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) + 15), (const(size.mid.pos.y) + 5)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .2, .1
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
trans = sub

[state 0]
type = velset
trigger1 = !time
x = const(velocity.run.fwd.x) * 1.15

[state 0]
type = ctrlset
triggerall = (command = "a") || (command = "b") || (command= "c") || (command = "x") || (command = "y") || (command = "z")
trigger1 = time >= 11
value = 1
ignorehitpause = 1

[state 0]
type = changestate
trigger1 = time >= 15
value = 101

[statedef 107]
type = s
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 10 + (var(11))
sprpriority = 2

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 105
pos = 0, 0
bindtime = -1
removetime = 30

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = 1
value = 0
[state 0]
type = palfx
trigger1 = time = 2
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = afterimage
trigger1 = time = 2
time = 10
length = 5
palcolor = 256
palbright = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
palcontrast = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
paladd = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
timegap = 1
framegap = 1
trans = add1
[state 0]
type = envshake
trigger1 = time = 2
time = 5
ampl = -5
freq = 15
[state 0]
type = playsnd
trigger1 = !time
value = s9180, 3
[state 0]
type = playsnd
trigger1 = !time
value = s9180, 4
[state 0]
type = playsnd
trigger1 = !time
value = s9180, 4
[state 0]
type = explod
trigger1 = !time
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) - 8), (const(size.mid.pos.y) + 8)
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .1, .1
angle = 0
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 1, 0
[state 0]
type = explod
trigger1 = !time
anim = 30212
id = 30212
pos = (const(size.mid.pos.x) - 8), (const(size.mid.pos.y) + 8)
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .1, .1
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 1, 0
trans = sub

[state 0]
type = velset
trigger1 = !time
x = const(velocity.run.back.x)

[state 0]
type = changestate
trigger1 = time = 15
value = 11
ctrl = 1

[statedef 110]
type = a
movetype = i
physics = a
ctrl = 0
sprpriority = 2

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 110
pos = 0, 0
bindtime = -1
removetime = 30

[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1
ignorehitpause = 1

[state 0]
type = ctrlset
trigger1 = time >= 7
value = 1

[state 0]
type = velset
triggerall = pos y = 0
trigger1 = time < 5
x = 2
y = -2

[state 0]
type = turn
triggerall = time = 0
trigger1 = command = "holdback"

[state 0]
type = changeanim
trigger1 = time <= 1
value = cond(pos y != 0, 41, 10) + (var(11))
elem = 1
[state 0]
type = changeanim
triggerall = anim != 110 + (var(11))
trigger1 = time >= 1
value = 110 + (var(11))

[state 0]
type = angledraw
trigger1 = time = 1
scale = 1, .8
[state 0]
type = angledraw
trigger1 = time = 2
scale = 1, .85
[state 0]
type = angledraw
trigger1 = time = 3
scale = 1, .9
[state 0]
type = angledraw
trigger1 = time = 4
scale = 1, .95
[state 0]
type = angledraw
trigger1 = time = 5
scale = 1, 1

[state 0]
type = velset
trigger1 = time = 1
[state 0]
type = velset
trigger1 = time = 1
x = cond(pos y != 0, (const(velocity.run.fwd.x) * 2 / 2), (const(velocity.run.fwd.x) * 2))
y = cond(pos y != 0, -3, 0)

[state 0]
type = envshake
trigger1 = time = 1
time = 5
ampl = -5
freq = 25
[state 0]
type = palfx
trigger1 = time = 1
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = playsnd
trigger1 = time = 1
value = s9160, 6
[state 0]
type = playsnd
trigger1 = time = 1
value = s9180, 4
[state 0]
type = playsnd
trigger1 = time = 1
value = s9180, 4
[state 0]
type = playsnd
trigger1 = time = 1
value = s9180, 5
[state 0]
type = explod
trigger1 = time = 1
anim = 30205
id = 30205
pos = (const(size.mid.pos.x) + 40), (const(size.mid.pos.y) + 30)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = cond(time <= 5, 3, 1)
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = 40
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = cond(vel x > 0, -1.5, 1.5), 0
[state 0]
type = explod
trigger1 = time = 1
anim = 30205
id = 30205
pos = (const(size.mid.pos.x) + 40), (const(size.mid.pos.y) + 30)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = 40
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = cond(vel x > 0, -1.5, 1.5), 0
trans = sub

[state 0]
type = null
trigger1 = var(6) := (const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(7) := (const(size.mid.pos.y) + (-5 + (random % 20)))
[state 0]
type = explod
triggerall = time = [1, 10]
trigger1 = time % 4 = 0
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
vel = -1, 0
[state 0]
type = explod
triggerall = time = [1, 10]
trigger1 = time % 4 = 0
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0

[state 0]
type = changestate
trigger1 = time = 20
value = cond(pos y != 0, 111, 101)

[statedef 111] 
type = s
movetype = i
physics = n
ctrl = 1
sprpriority = 2

[state 0]
type = velset
trigger1 = prevstateno = 60
x = 3
y = -1

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp
time = 1
ignorehitpause = 1

[state 0]
type = playerpush
trigger1 = prevstateno != 60
value = 0

[state 0]
type = statetypeset
triggerall = pos y != 0
trigger1 = !time
statetype = a
movetype = i
physics = a

[state 0]
type = changeanim
trigger1 = time <= 3
value = cond(pos y != 0, 44, 12) + (var(11))
elem = 1
[state 0]
type = changeanim
trigger1 = time >= 3
value = cond(pos y != 0, 44, 12) + (var(11))
elem = 2

[state 0]
type = playsnd
trigger1 = (time = 0) && (pos y = 0)
value = s9160, 2

[state 0]
type = explod
trigger1 = (time = 0) && (pos y = 0)
anim = 30203
id = 30203
pos = 10, 0
postype = p1
facing = 1
bindtime = 5
removetime = -2
sprpriority = 0
scale = .15, .2
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = explod
trigger1 = (time = 0) && (pos y = 0)
anim = 30203
id = 30203
pos = 10, 0
postype = p1
facing = 1
bindtime = 5
removetime = -2
sprpriority = 3
scale = .15, .2
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = changestate
trigger1 = time = 10
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 112]
type = s
movetype = a
physics = s
ctrl = 0
anim = 112 + (var(11))
sprpriority = 2
facep2 = 1

;[state 0]
;type = changeanim
;triggerall = ((time = [10, 50]) && (animelemtime(2) < 0))
;trigger1 = ((!ailevel) && ((command = "hold_a") && (command = "hold_b")))
;trigger2 = ((ailevel) && (!(p2dist x < 140) || !(p2dist x > -140)))
;value = anim
;elem = 1

[state 0]
type = helper
trigger1 = (numhelper(40001) <= 5) && ((animelemtime(2) <= 0) && (time % 15 = 0))
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = playsnd
trigger1 = !time
value = s9600, 1

[state 0]
type = explod
trigger1 = !time
anim = 30316
id = 30316
pos = 0, const(size.mid.pos.y) + 2
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 6
scale = .35, .35
angle = 0 + (random % 360)
ownpal = 0
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30802
id = 30802
pos = 0, const(size.mid.pos.y) + 2
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
scale = .175, .175
angle = 0
ownpal = 0
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30802
id = 30802
pos = 0, const(size.mid.pos.y) + 2
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = .175, .175
angle = 0
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = helper
trigger1 = animelem = 2
stateno = 98100
id = 98100
postype = p1

[state 0]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.fwd.x) * 1.75
ignorehitpause = 1
[state 0]
type = velset
trigger1 = movecontact = 1
x = 0
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = movehit = 1
value = s9103, 1
ignorehitpause = 1
persistent = 0

[state 0]
type = helper
trigger1 = movecontact = 1
stateno = 81006
id = 81006
pos = 0, 0
postype = p1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = hitdef
trigger1 = (!movecontact) && (!movereversed)
animtype = medium
attr = s, nt
damage = 0
hitflag = maf
guardflag = 
pausetime = 15, 70
hitsound = s9104, 1
guardsound = s9104, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
ground.cornerpush.veloff = 0
ground.velocity = -2, 0
air.velocity = 0, 0
envshake.time = 15
fall = 0
forcenofall = 1

[state 0]
type = helper
triggerall = p2movetype = h
trigger1 = movecontact = 1
stateno = 98010
id = 001
size.height = 0
size.head.pos = (random % 360), 15
pos = 0, -30 + (random % 8)
postype = p2
ownpal = 1
size.xscale = .6
size.yscale = .6
ignorehitpause = 1
persistent = 0

[state 0]
type = changestate
trigger1 = !animtime
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 115]
type = s
movetype = i
physics = s
velset = 0, 0
ctrl = 0
anim = stateno + (var(11))
sprpriority = 2
facep2 = 1

[state 0]
type = angledraw
triggerall = animelem = 1
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = angledraw
triggerall = animelem = 2
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = poweradd
trigger1 = time >= 15
value = floor((powermax / 400) + (time / 25))
[state 0]
type = angledraw
trigger1 = ((time >= 15) && (time % 4 = 0))
scale = 1.0 * 1.02, 1.0 * 1.02
ignorehitpause = 1
[state 0]
type = helper
trigger1 = (numhelper(40001) <= 5) && ((time >= 15) && (time % 8 = 0))
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = helper
triggerall = !numhelper(99120)
trigger1 = time = 15
stateno = 99120
id = 99120
pos = 0, 0
postype = p1
facing = 1
ownpal = 1

[state 0]
type = ctrlset
triggerall = time >= 80
trigger1 = ((ailevel) && (enemynear, movetype = a) || ((enemynear, vel x != 0) && (enemynear, movetype = a)))
trigger2 = ((ailevel) && ((enemynear, stateno = [60, 80]) || (enemynear, stateno = 195) || (enemynear, stateno = 500) || (enemynear, stateno >= 1000)))
trigger3 = ((ailevel) && (enemynear, p2bodydist x <= 80) && (enemynear, stateno = [20, 119]))
trigger4 = ((ailevel) && (time >= 90 + (random % 120)))
trigger5 = roundstate != 2
value = 1
ignorehitpause = 1

[state 0]
type = changestate
triggerall = (!ailevel) && (time >= 20)
trigger1 = command != "hold_s"
value = 116

[statedef 116]
type = s
movetype = i
physics = s
velset = 0, 0
ctrl = 0
sprpriority = 2
facep2 = 1

[state 0]
type = changeanim
trigger1 = time = [0, 10]
value = 115 + (var(11))
elem = 3
[state 0]
type = changeanim
trigger1 = time >= 10
value = 115 + (var(11))
elem = 2

[state 0]
type = changestate
trigger1 = time >= 15
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 120]
type = u
physics = u

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
triggerall = !ailevel
trigger1 = !time
value = 120 + (statetype = c) + (statetype = a) * 2 + (var(11))

[state 0]
type = changeanim
triggerall = ailevel
trigger1 = !time
value = cond(p2statetype = a, 120 + 2 * (statetype = a), 121 + (statetype = a))  + (var(11))

[state 0]
type = statetypeset
trigger1 = !time && statetype = s
physics = s

[state 0]
type = statetypeset
trigger1 = !time && statetype = c
physics = c

[state 0]
type = statetypeset
trigger1 = !time && statetype = a
physics = a

[state 0]
type = statetypeset
triggerall = statetype = s 
trigger1 = ailevel = 0 && command = "holddown"
trigger2 = ailevel && p2statetype = c && random < ((700) * (ailevel * 2 / 64.0)) 
statetype = c
physics = c

[state 0]
type = statetypeset
triggerall = statetype = c 
trigger1 = ailevel=0 && command != "holddown"
trigger2 = ailevel && p2statetype = a && random < ((700) * (ailevel * 2 / 64.0)) 
trigger3 = p2statetype != c && p2statetype = a && enemynear, time > 0 && random < ((700) * (ailevel * 2 / 64.0)) 
statetype = s 
physics = s

[state 0]
type = changestate
trigger1 = !animtime
value = 130 + (statetype = c) + (statetype = a) * 2

[statedef 130]
type = s
physics = s

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = anim != 130
value = 130 + (var(11))

[state 0]
type = changestate
trigger1 = !ailevel
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

[state 0]
type = changestate
trigger1 = ailevel&&numenemy
trigger1 = !inguarddist
trigger1 = enemy, movetype = i
value = 140

[statedef 131]
type = c
physics = c

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = anim != 131
value = 131 + (var(11))

[state 0]
type = changestate
trigger1 = !ailevel
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

[state 0]
type = changestate
trigger1 = ailevel&&numenemy
trigger1 = !inguarddist
trigger1 = enemy, movetype = i
value = 140

[statedef 132]
type = a
physics = n

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = anim != 132
value = 132 + (var(11))

[state 0]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 0]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 0]
type = velset
trigger1 = sysvar(0)
y = 0

[state 0]
type = posset
trigger1 = sysvar(0)
y = 0

[state 0]
type = changestate
triggerall = sysvar(0)
trigger1 = command = "holdback" || ailevel
trigger1 = inguarddist
value = 130

[state 0]
type = changestate
trigger1 = sysvar(0)
value = 52

[state 0]
type = changestate
trigger1 = !ailevel
trigger1 = command != "holdback"
trigger2 = !inguarddist
value = 140

[state 0]
type = changestate
trigger1 = ailevel&&numenemy
trigger1 = !inguarddist
trigger1 = enemy, movetype = i
value = 140

[statedef 140]
type = u
physics = u
ctrl = 1

[state 0]
type = changeanim
trigger1 = !time
value = 140 + (statetype = c) + (statetype = a) * 2 + (var(11))

[state 0]
type = statetypeset
trigger1 = !time && statetype = s
physics = s

[state 0]
type = statetypeset
trigger1 = !time && statetype = c
physics = c

[state 0]
type = statetypeset
trigger1 = !time && statetype = a
physics = a

[state 0]
type = statetypeset
triggerall = statetype = s 
trigger1 = ailevel = 0 && command = "holddown"
trigger2 = ailevel > 0 && enemy, statetype = c
statetype = c
physics = c

[state 0]
type = statetypeset
triggerall = statetype = c 
trigger1 = ailevel = 0 && command != "holddown"
trigger2 = ailevel > 0 && enemy, statetype = c
statetype = s
physics = s

[statedef 150]
type = s
movetype = h
physics = n
velset = 0, 0
sprpriority = 1
facep2 = 1

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = palfx
trigger1 = !time
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256

[state 0]
type = changeanim
trigger1 = 1
value = 150 + (var(11))

[state 0]
type = changestate
trigger1 = hitshakeover
value = 151 + 2 * (command = "holddown")

[state 0]
type = statetypeset
triggerall = statetype = s 
trigger1 = ailevel = 0 && command = "holddown"
trigger2 = ailevel && p2statetype = c && random < ((700) * (ailevel * 2 / 64.0))
statetype = c
physics = c

[state 0]
type = statetypeset
triggerall = statetype = c 
trigger1 = ailevel = 0 && command != "holddown"
trigger2 = ailevel && p2statetype = a && random < ((700) * (ailevel * 2 / 64.0))
trigger3 = p2statetype != c && p2statetype = a && enemynear, time > 0 && random < ((700) * (ailevel * 2 / 64.0))
statetype = s
physics = s

[state 0]
type = forcefeedback
trigger1 = !time
waveform = square
time = 3

[statedef 151]
type = s
movetype = h
physics = s
ctrl = 0
anim = 150 + (var(11))
sprpriority = 1
facep2 = 1

[state 0]
type = ctrlset
triggerall = !hitover
trigger1 = time >= 2
value = 1
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing

[state 0]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 0]
type = statetypeset
triggerall = statetype = s 
trigger1 = ailevel = 0 && command = "holddown"
trigger2 = ailevel && p2statetype = c&& random < ((700) * (ailevel * 2 / 64.0))
statetype = c
physics = c

[state 0]
type = statetypeset
triggerall = statetype = c 
trigger1 = ailevel = 0 && command != "holddown"
trigger2 = ailevel && p2statetype = a && random < ((700) * (ailevel * 2 / 64.0))
trigger3 = p2statetype !=c && p2statetype = a && enemynear, time > 0 && random < ((700) * (ailevel * 2 / 64.0))
statetype = s
physics = s

[state 0]
type = changestate
trigger1 = hitover
value = 130

[statedef 152]
type = c
movetype = h
physics = n
velset = 0, 0
sprpriority = 1
facep2 = 1

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = palfx
trigger1 = !time
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256

[state 0]
type = changeanim
trigger1 = 1
value = 151 + (var(11))

[state 0]
type = changestate
trigger1 = hitshakeover
value = 151 + 2*(command = "holddown")

[state 0]
type = statetypeset
triggerall = statetype = s 
trigger1 = ailevel = 0 && command = "holddown"
trigger2 =  ailevel && p2statetype = c && random < ((700) * (ailevel * 2 / 64.0))
statetype = c
physics = c

[state 0]
type = statetypeset
triggerall = statetype = c 
trigger1 = ailevel = 0 && command != "holddown"
trigger2 =  ailevel && p2statetype = a && random < ((700) * (ailevel * 2 / 64.0))
trigger3 = p2statetype != c && p2statetype = a && random < ((700) * (ailevel * 2 / 64.0))
statetype = s
physics = s

[state 0]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

[statedef 153]
type = c
movetype = h
physics = c
anim = 151 + (var(11))
sprpriority = 1
facep2 = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing

[state 0]
type = velset
trigger1 = time = gethitvar(slidetime)
trigger2 = hitover
x = 0

[state 0]
type = statetypeset
triggerall = statetype = s 
trigger1 = ailevel = 0 && command = "holddown"
trigger2 = ailevel && p2statetype = c && random < ((700) * (ailevel * 2 / 64.0))
statetype = c
physics = c

[state 0]
type = statetypeset
triggerall = statetype = c 
trigger1 = ailevel = 0 && command != "holddown"
trigger2 = ailevel && p2statetype = a && random < ((700) * (ailevel * 2 / 64.0))
trigger3 = p2statetype != c && p2statetype = a && enemynear, time > 0 && random < ((700) * (ailevel * 2 / 64.0))
statetype = s
physics = s

[state 0]
type = changestate
trigger1 = hitover
value = 131
ctrl = 1

[statedef 154]
type = a
movetype = h
physics = n
velset = 0, 0
sprpriority = 1
facep2 = 1

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = palfx
trigger1 = !time
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256

[state 0]
type = changeanim
trigger1 = 1
value = 152 + (var(11))

[state 0]
type = changestate
trigger1 = hitshakeover
value = 155

[state 0]
type = forcefeedback
trigger1 = !time
waveform = square
time = 4

[statedef 155]
type = a
movetype = h
physics = a
anim = 152 + (var(11))
sprpriority = 1
facep2 = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
[state 0]
type = velset
trigger1 = !time
y = gethitvar(yvel)

[state 0]
type = veladd
trigger1 = 1
y = const(movement.yaccel)

[state 0]
type = varset
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[state 0]
type = velset
trigger1 = sysvar(0)
y = 0

[state 0]
type = posset
trigger1 = sysvar(0)
y = 0

[state 0]
type = changestate
triggerall = sysvar(0)
trigger1 = command != "holdback" || ailevel
trigger2 = inguarddist 
value = 130

[state 0]
type = changestate
trigger1 = sysvar(0)
value = 52

[statedef 175]
type = s
velset = 0, 0
ctrl = 0

[state 0]
type = changestate
trigger1 = !time
trigger1 = !selfanimexist(175)
value = 170

[state 0]
type = nothitby
trigger1 = 1
value = sca
time = 1

[statedef 5000]
type = s
movetype = h
physics = n
velset = 0, 0

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(groundtype) = 1), 5000 + (var(10)), 5010 + (var(10))) + gethitvar(animtype)

[state 0]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + (var(10))

[state 0]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && (selfanimexist(5047 + (var(10)) + gethitvar(animtype)))
value = 5047 + (var(10)) + gethitvar(animtype) 

[state 0]
type = changeanim
trigger1 = time > 0
value = anim

[state 0]
type = statetypeset
trigger1 = !time
trigger1 = gethitvar(yvel) != 0 || gethitvar(fall)
trigger2 = pos y != 0
statetype = a

[state 0]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) = 0 && !gethitvar(fall)
value = 5001 

[state 0]
type = changestate
trigger1 = hitshakeover
value = 5030

[statedef 5001]
type = s
movetype = h
physics = s

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = !animtime
value = 5005 + (var(10)) + gethitvar(animtype) + (gethitvar(groundtype) = 2)

[state 0]
type = velmul
trigger1 = time >= gethitvar(slidetime)
x = .7

[state 0]
type = velset
trigger1 = hitover
x = 0

;[state 0]
;type = defencemulset
;trigger1 = hitover
;value = 1

[state 0]
type = changestate
trigger1 = hitover
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 5010]
type = c
movetype = h
physics = n
velset = 0, 0

[state 0]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = 5020 + (var(10)) + gethitvar(animtype)

[state 0]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + (var(10))

[state 0]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && (selfanimexist(5047 + (var(10)) + gethitvar(animtype)))
value = 5047 + (var(10)) + gethitvar(animtype) 

[state 0]
type = changeanim
trigger1 = time > 0
value = anim

[state 0]
type = statetypeset
triggerall = !time
trigger1 = gethitvar(yvel) != 0 || gethitvar(fall)
trigger2 = pos y != 0
statetype = a

[state 0]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) = 0 && !gethitvar(fall)
value = 5011 

[state 0]
type = changestate
trigger1 = hitshakeover
value = 5030

[statedef 5011]
type = c
movetype = h
physics = c

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = !animtime
value = 5025 + (var(10)) + gethitvar(animtype)

[state 0]
type = velmul
trigger1 = time >= gethitvar(slidetime)
x = .7

[state 0]
type = velset
trigger1 = hitover
x = 0

;[state 0]
;type = defencemulset
;trigger1 = hitover
;value = 1

[state 0]
type = changestate
trigger1 = hitover
value = 11
ctrl = 1

[statedef 5020]
type = a
movetype = h
physics = n
velset = 0, 0

[state 0]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) != [3, 5]
value = cond((gethitvar(airtype) = 1), 5000 + (var(10)), 5010 + (var(10))) + gethitvar(animtype)

[state 0]
type = changeanim
trigger1 = !time
trigger1 = gethitvar(animtype) = [3, 5]
value = 5030 + (var(10))

[state 0]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && (selfanimexist(5047 + (var(10)) + gethitvar(animtype)))
value = 5047 + (var(10)) + gethitvar(animtype) 

[state 0]
type = changeanim
trigger1 = time > 0
value = anim

[state 0]
type = changestate
trigger1 = hitshakeover
value = 5030

[statedef 5030]
type = a
movetype = h
physics = n
ctrl = 0

[state 0]
type = changeanim
trigger1 = anim != [5000 + (var(10)), 5199 + (var(10))]
trigger1 = selfanimexist(5030 + (var(10)))
value = 5030 + (var(10))

[state 0]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
y = gethitvar(yvel)
ignorehitpause = 1

[state 0]
type = changestate
triggerall = !hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.gethit.groundlevel)
value = 5040

[state 0]
type = changestate
triggerall = hitfall
trigger1 = hitover
trigger2 = vel y > 0
trigger2 = pos y >= const(movement.air.gethit.groundlevel)
value = 5050 

[state 0]
type = changestate
trigger1 = !animtime
value = 5035

[statedef 5035]
type = a
movetype = h
physics = n

[state 0]
type = changeanim
trigger1 = !time
trigger1 = selfanimexist(5035)
trigger1 = anim != [5051 + (var(10)), 5059 + (var(10))]
trigger1 = anim != 5090 + (var(10))
value = 5035 + (var(10))

[state 0]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 0]
type = changestate
trigger1 = hitover  
trigger2 = !animtime 
trigger3 = vel y > 0 
trigger3 = pos y >= const(movement.air.gethit.groundlevel)
trigger4 = !time  
trigger4 = anim != 5035 + (var(10))
value = 5050

[statedef 5040]
type = a
movetype = i
physics = a

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = 1

[state 0]
type = changestate
trigger1 = !alive
value = 5050
ctrl = 0

[state 0]
type = changeanim
trigger1 = !animtime
trigger1 = anim != 5040 + (var(10))
trigger2 = !time
trigger2 = anim != 5035 + (var(10))
value = 5040 + (var(10))

[state 0]
type = helper
trigger1 = anim = 5040 + (var(10))
stateno = 30802
id = 30802
pos = 0, 0
postype = p1
ownpal = 1
size.xscale = .175
size.yscale = .175
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = palfx
trigger1 = anim = 5040 + (var(10))
time = 10
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
sinadd = -(floor(fvar(35))), -(floor(fvar(36))), -(floor(fvar(37))), 40
color = 256
persistent = 0

[state 0]
type = ctrlset
trigger1 = hitover
value = 1

[state 0]
type = statetypeset
trigger1 = hitover
movetype = i

[state 0]
type = velset
trigger1 = anim = 5040 + (var(10))
x = -2.5
y = -3.75
ignorehitpause = 1
persistent = 0

[statedef 5050]
type = a
movetype = h
physics = n

[state 0]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035 + (var(10))
trigger2 = !time
trigger2 = anim != 5035 + (var(10))
trigger2 = (anim != [5051 + (var(10)), 5059 + (var(10))]) && (anim != [5061 + (var(10)), 5069 + (var(10))])
trigger2 = anim != 5090 + (var(10))
value = 5050 + (var(10))

[state 0]
type = changeanim
trigger1 = anim = [5050 + (var(10)), 5059 + (var(10))]
trigger1 = vel y >= cond(anim = 5050 + (var(10)), const720p(4), cond(anim = 5051 + (var(10)), const720p(-8), 0))
trigger1 = selfanimexist(anim+10)
value = anim+10
persistent = 0

[state 0]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 0]
type = changestate
triggerall = vel y > const(movement.air.gethit.airrecover.threshold)
triggerall = (roundstate = 2) && (canrecover)
trigger1 = command = "recovery"
value = 5040

[state 0]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= cond(anim = 5051 + (var(10)) || (anim = [5053 + (var(10)), 5059 + (var(10))]) || anim = 5061 + (var(10)) || (anim = [5063 + (var(10)), 5069 + (var(10))]), 0, const(movement.air.gethit.groundlevel))
value = 5100 

[state 0]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundlevel)
value = 5100 

[statedef 5070]
type = a
movetype = h
physics = n
velset = 0, 0

[state 0]
type = changeanim
trigger1 = 1
value = 5070 + (var(10))

[state 0]
type = changestate
trigger1 = hitshakeover
value = 5071

[statedef 5071]
type = a
movetype = h
physics = n

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
y = gethitvar(yvel)
ignorehitpause = 1

[state 0]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 0]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.trip.groundlevel)
value = 5110

[statedef 5080]
type = l
movetype = h
physics = n
velset = 0, 0

[state 0]
type = varset
trigger1 = !(gethitvar(animtype) = [4, 5])
trigger1 = !time
sysvar(2) = cond (gethitvar(yvel) = 0, 5080, 5090)

[state 0]
type = varadd
trigger1 = !(gethitvar(animtype) = [4, 5])
trigger1 = !time
trigger1 = (anim = [5081 + (var(10)), 5089 + (var(10))]) || (anim = [5111 + (var(10)), 5119 + (var(10))])
trigger1 = selfanimexist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[state 0]
type = varset
trigger1 = !(gethitvar(animtype) = [4, 5])
trigger1 = !time
trigger1 = sysvar(2) = 5090
trigger1 = !selfanimexist(5090 + (var(10)))
sysvar(2) = 5030

[state 0]
type = changeanim
trigger1 = !(gethitvar(animtype) = [4, 5])
value = sysvar(2)

[state 0]
type = changeanim
trigger1 = !time
trigger1 = (gethitvar(animtype) = [4, 5]) && (selfanimexist(5047 + (var(10)) + gethitvar(animtype)))
value = 5047 + (var(10)) + gethitvar(animtype) 

[state 0]
type = changeanim
trigger1 = time > 0
value = anim

[state 0]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) = 0
value = 5081 

[state 0]
type = changestate
trigger1 = hitshakeover
trigger1 = gethitvar(yvel) != 0
value = 5030 

[statedef 5081]
type = l
movetype = h
physics = c

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing
ignorehitpause = 1

[state 0]
type = velset
trigger1 = hitover
x = 0

[state 0]
type = varset
trigger1 = !time
sysvar(0) = 1

[state 0]
type = changestate
trigger1 = hitover
value = 5110 

[statedef 5100]
type = l
movetype = h
physics = n

[state 0]
type = hitby
trigger1 = 1
value = sca

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = fallenvshake
trigger1 = !time

[state 0]
type = varset
trigger1 = !time
sysvar(1) = floor(vel y)

[state 0]
type = changeanim
triggerall = !time
trigger1 = (anim != [5051 + (var(10)), 5059 + (var(10))]) && (anim != [5061 + (var(10)), 5069 + (var(10))])
trigger2 = !selfanimexist(5100 + (var(10)) + (anim % 10))
value = 5100 + (var(10))

[state 0]
type = changeanim
trigger1 = !time
trigger1 = (anim = [5051 + (var(10)), 5059 + (var(10))]) || (anim = [5061 + (var(10)), 5069 + (var(10))])
trigger1 = selfanimexist(5100 + (var(10)) + (anim % 10))
value = 5100 + (var(10)) + (anim % 10)

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = velset
trigger1 = !time
y = 0

[state 0]
type = velmul
trigger1 = !time
x = 0.75

[state 0]
type = changestate
trigger1 = !time
trigger1 = gethitvar(fall.yvel) = 0
value = 5110

[state 0]
type = playsnd
triggerall = numhelper(99091) = 0
trigger1 = time = 1
value = s9103, 0

[state 0]
type = hitfalldamage
trigger1 = time = 3

[state 0]
type = posfreeze
trigger1 = 1

[state 0]
type = changestate
trigger1 = !animtime
value = 5101

[statedef 5101]
type = l
movetype = h
physics = n

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = changeanim
triggerall = !time
trigger1 = anim != [5101 + (var(10)), 5109 + (var(10))]
trigger2 = !selfanimexist(5160 + (var(10)) + (anim % 10))
value = 5160 + (var(10))

[state 0]
type = changeanim
triggerall = !time
trigger1 = anim = [5101 + (var(10)), 5109 + (var(10))]
trigger1 = selfanimexist(5160 + (var(10)) + (anim % 10))
value = 5160 + (var(10)) + (anim % 10)

[state 0]
type = hitfallvel
trigger1 = !time

[state 0]
type = posset
trigger1 = !time
y = const(movement.down.bounce.offset.y)

[state 0]
type = posadd
trigger1 = !time
x = const(movement.down.bounce.offset.x)

[state 0]
type = veladd
trigger1 = 1
y = const(movement.down.bounce.yaccel)

[state 0]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.down.bounce.groundlevel)
value = 5110

[statedef 5110]
type = l
movetype = h
physics = n

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = fallenvshake
trigger1 = !time

[state 0]
type = changeanim
persistent = 0
trigger1 = selfanimexist(5110 + (var(10)) + (anim % 10))
trigger1 = anim = [5081 + (var(10)), 5089 + (var(10))]
value = 5110 + (var(10)) + (anim % 10)

[state 0]
type = changeanim
triggerall = !time
triggerall = anim != [5110 + (var(10)), 5119 + (var(10))]
trigger1 = anim != [5161 + (var(10)), 5169 + (var(10))]
trigger2 = !selfanimexist(5170 + (var(10)) + (anim % 10))
value = 5170 + (var(10))

[state 0]
type = changeanim
triggerall = !time
triggerall = anim != [5110 + (var(10)), 5119 + (var(10))] 
trigger1 = anim = [5161 + (var(10)), 5169 + (var(10))]
trigger1 = selfanimexist(5170 + (var(10)) + (anim % 10))
value = 5170 + (var(10)) + (anim % 10)

[state 0]
type = hitfalldamage
trigger1 = !time

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = varset
trigger1 = !time
trigger1 = gethitvar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[state 0]
type = playsnd
triggerall = numhelper(99091) = 0
trigger1 = !time
trigger1 = !sysvar(0)
value = s9103, 0

[state 0]
type = velset
trigger1 = !time
y = 0

[state 0]
type = changeanim
persistent = 0
triggerall = anim = [5171 + (var(10)), 5179 + (var(10))]
triggerall = selfanimexist(5110 + (var(10)) + (anim % 10))
trigger1 = !animtime
trigger2 = sysvar(0) 
value = 5110 + (var(10)) + (anim % 10)

[state 0]
type = changeanim
persistent = 0
triggerall = anim != [5111 + (var(10)), 5119 + (var(10))]
trigger1 = !animtime
trigger2 = sysvar(0)
value = 5110 + (var(10))

[state 0]
type = changestate
triggerall = !alive
trigger1 = !animtime
trigger2 = sysvar(0)
trigger3 = anim = [5110 + (var(10)), 5119 + (var(10))]
value = 5150

[state 0]
type = varset
trigger1 = sysvar(0)
trigger1 = !time
sysvar(0) = 0

[state 0]
type = velmul
trigger1 = 1
x = 0.85

[state 0] 
type = velset
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
x = 0
persistent = 0

[state 0]
type = changestate
triggerall = (roundstate = 2) && (alive)
trigger1 = ((!ailevel) && (time >= 20) && (command = "holdfwd"))
trigger2 = ((ailevel) && (enemy, movetype != a) && (random < (ailevel * 25)))
value = 5220
[state 0]
type = changestate
triggerall = (roundstate = 2) && (alive)
trigger1 = ((!ailevel) && (time >= 20) && (command = "holdback"))
trigger2 = ((ailevel) && (enemy, movetype = a) && (random < (ailevel * 60)))
value = 5221

[statedef 5120]
type = l
movetype = h
physics = n

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = time = 5
value = s9110, 0

[state 0]
type = changestate
triggerall = numhelper(99091) = 0
triggerall = !matchover
triggerall = (life = 0) && (pos y = 0)
trigger1 = time = 20
value = 170

[state 0]
type = changeanim
triggerall = !time
trigger1 = anim != [5111 + (var(10)), 5119 + (var(10))]
trigger2 = !selfanimexist(5120 + (var(10)) + (anim % 10))
value = 5120 + (var(10))

[state 0]
type = changeanim
triggerall = !time
trigger1 = anim = [5111 + (var(10)), 5119 + (var(10))]
trigger1 = selfanimexist(5120 + (var(10)) + (anim % 10))
value = 5120 + (var(10)) + (anim % 10)

[state 0]
type = velset
trigger1 = !time
x = 0

[state 0]
type = hitfallset
trigger1 = !animtime
value = 1

[state 0]
type = changestate
trigger1 = !animtime
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 5150]
type = l
movetype = h
physics = n
velset = 0, 0
ctrl = 0
sprpriority = -3

[state 0]
type = changestate
triggerall = !numhelper(99091)
triggerall = !matchover && teammode != turns && roundstate = 4
triggerall = (life = 0) && (pos y = 0)
trigger1 = time = floor(const(data.liedown.time) * 1.5)
value = 5120

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = changeanim
triggerall = !time
triggerall = selfanimexist(5140 + (var(10)))
trigger1 = (anim != [5111 + (var(10)), 5119 + (var(10))]) && (anim != [5171 + (var(10)), 5179 + (var(10))])
trigger2 = !selfanimexist(5140 + (var(10)) + (anim % 10))
value = 5140 + (var(10))

[state 0]
type = changeanim
trigger1 = !time
trigger1 = (anim = [5111 + (var(10)), 5119 + (var(10))]) || (anim = [5171 + (var(10)), 5179 + (var(10))])
trigger1 = selfanimexist(5140 + (var(10)) + (anim % 10))
value = 5140 + (var(10)) + (anim % 10)

[state 0]
type = changeanim
persistent = 0
trigger1 = matchover = 1
trigger1 = anim = [5140 + (var(10)), 5149 + (var(10))]
trigger1 = selfanimexist(anim + 10)
value = anim+10

[state 0]
type = changeanim
trigger1 = !time
trigger1 = anim != [5140 + (var(10)), 5159 + (var(10))]
trigger1 = anim != [5110 + (var(10)), 5119 + (var(10))]
value = 5110 + (var(10))

[state 0]
type = velmul
trigger1 = 1
x = 0.85

[state 0]
type = velset
trigger1 = abs(vel x) < const(movement.down.friction.threshold)
persistent = 0
x = 0

[state 0]
type = nothitby
trigger1 = 1
value = sca
time = 1

[statedef 5200]
type = a
movetype = h
physics = n

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = anim = 5035 + (var(10))
trigger1 = !animtime
value = 5050 + (var(10))

[state 0]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[state 0]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.groundlevel)
value = 5201

[statedef 5201]
type = a
movetype = h
physics = a
anim = 5200 + (var(10))

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = turn
trigger1 = !time
trigger1 = p2dist x < const720p(-20)

[state 0]
type = velset
trigger1 = !time
x = const(velocity.air.gethit.groundrecover.x)
y = const(velocity.air.gethit.groundrecover.y)

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = nothitby
trigger1 = 1
value = sca
time = 1

[state 0]
type = helper
trigger1 = !time
stateno = 30802
id = 30802
pos = 0, 0
postype = p1
ownpal = 1
size.xscale = .15
size.yscale = .15
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = palfx
trigger1 = !time
time = 10
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
sinadd = -(floor(fvar(35))), -(floor(fvar(36))), -(floor(fvar(37))), 40
color = 256
persistent = 0

[statedef 5210]
type = a
movetype = i
physics = a
anim = 5210 + (var(10))
ctrl = 0

[state 0]
type = angledraw
trigger1 = !time
value = 0
scale = 1.0, 1.0
ignorehitpause = 1

[state 0]
type = helper
trigger1 = !time
stateno = 30802
id = 30802
pos = 0, 0
postype = p1
ownpal = 1
size.xscale = .15
size.yscale = .15
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = palfx
trigger1 = !time
time = 10
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
sinadd = -(floor(fvar(35))), -(floor(fvar(36))), -(floor(fvar(37))), 40
color = 256
persistent = 0

[state 0]
type = posfreeze
trigger1 = time < 4

[state 0]
type = turn
trigger1 = !time
trigger1 = p2dist x < const720p(-80)

[state 0]
type = velmul
trigger1 = time = 4
x = const(velocity.air.gethit.airrecover.mul.x)
y = const(velocity.air.gethit.airrecover.mul.y)

[state 0]
type = veladd
trigger1 = time = 4
x = const(velocity.air.gethit.airrecover.add.x)
y = const(velocity.air.gethit.airrecover.add.y)

[state 0]
type = veladd
trigger1 = time = 4
trigger1 = command = "holdup"
y = const(velocity.air.gethit.airrecover.up)

[state 0] 
type = veladd
trigger1 = time = 4
trigger1 = command = "holddown"
y = const(velocity.air.gethit.airrecover.down)

[state 0]
type = veladd
trigger1 = time = 4
trigger1 = command = "holdfwd"
x = const(velocity.air.gethit.airrecover.fwd)

[state 0] 
type = veladd
trigger1 = time = 4
trigger1 = command = "holdback"
x = const(velocity.air.gethit.airrecover.back)

[state 0]
type = nothitby
trigger1 = !time
value = sca
time = 15

[state 0]
type = ctrlset
trigger1 = time = 20
value = 1

[statedef 5220]
type = l
movetype = i
physics = s
velset = 0, 0
ctrl = 0

[state 0]
type = changeanim
trigger1 = !time
value = 5120 + (var(10))
ignorehitpause = 1
persistent = 0

[state 0]
type = helper
trigger1 = animelem = 4
stateno = 30802
id = 30802
pos = 0, 0
postype = p1
ownpal = 1
size.xscale = .15
size.yscale = .15
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = palfx
trigger1 = animelem = 4
time = 10
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
sinadd = -(floor(fvar(35))), -(floor(fvar(36))), -(floor(fvar(37))), 40
color = 256
persistent = 0

[state 0]
type = helper
trigger1 = animelem = 4
stateno = 98100
id = 98100
postype = p1

[state 0]
type = velset
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
x = 8
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !animelemtime(5)
x = 3
ignorehitpause = 1
persistent = 0

[state 0]
type = turn
trigger1 = !animelemtime(5)
trigger1 = facing = enemynear, facing
ignorehitpause = 1
persistent = 0

[state 0]
type = playerpush
trigger1 = stateno = stateno
value = 0
ignorehitpause = 1

[state 0]
type = nothitby
trigger1 = stateno = stateno
value = sca, aa, ap, at
ignorehitpause = 1

[state 0]
type = changestate
trigger1 = !animtime
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 5221]
type = l
movetype = i
physics = s
velset = 0, 0
ctrl = 0

[state 0]
type = changeanim
trigger1 = !time
value = 5120 + (var(10))
ignorehitpause = 1
persistent = 0

[state 0]
type = helper
trigger1 = animelem = 4
stateno = 30802
id = 30802
pos = 0, 0
postype = p1
ownpal = 1
size.xscale = .15
size.yscale = .15
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = palfx
trigger1 = animelem = 4
time = 10
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
sinadd = -(floor(fvar(35))), -(floor(fvar(36))), -(floor(fvar(37))), 40
color = 256
persistent = 0

[state 0]
type = helper
trigger1 = animelem = 4
stateno = 98100
id = 98100
facing = -1
postype = p1

[state 0]
type = velset
trigger1 = animelemtime(4) >= 0 && animelemtime(5) < 0
x = -8
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !animelemtime(5)
x = -3
ignorehitpause = 1
persistent = 0

[state 0]
type = turn
trigger1 = !animelemtime(5)
trigger1 = facing = enemynear, facing
ignorehitpause = 1
persistent = 0

[state 0]
type = playerpush
trigger1 = stateno = stateno
value = 0
ignorehitpause = 1

[state 0]
type = nothitby
trigger1 = stateno = stateno
value = sca, aa, ap, at
ignorehitpause = 1

[state 0]
type = changestate
trigger1 = !animtime
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 5300]
type = u
velset = 0, 0
ctrl = 0
anim = 5300 + (var(10))

[state 0]
type = changestate
trigger1 = time = 100
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 5350]
type = u
velset = 0, 0
ctrl = 0
anim = 5300 + (var(10))

[state 0]
type = lifeadd
trigger1 = !time
value = -10
kill = 0
ignorehitpause = 1
[state 0]
type = palfx
trigger1 = !time
time = 5
add = 0, -64, -64
sinadd = 0, -64, -64, 10
color = 256
ignorehitpause = 1

[state 0]
type = helper
triggerall = !numhelper(81000)
trigger1 = !time
stateno = 81000
id = 81000
pos = 0, -15
postype = p1
ownpal = 1

[state 0]
type = velset
trigger1 = time = 14
x = -2
y = -3

[state 0]
type = changestate
trigger1 = time >= 15
value = 5050

[statedef 5900]
type = u

[state 0]
type = varrangeset
trigger1 = roundsexisted = 0
fvalue = 0
[state 0]
type = varset
trigger1 = roundstate != 2
v = 58
value = 0

[state 0]
type = changeanim
triggerall = !numpartner
trigger1 = roundno = 1
value = 6
ignorehitpause = 1
[state 0]
type = changestate
triggerall = !numpartner
trigger1 = roundno = 1
value = 5901

[state 0]
type = changestate
triggerall = numpartner
triggerall = teamside = 1
trigger1 = roundno = 1
value = cond((id = 56), 5901, 0)
[state 0]
type = changestate
triggerall = numpartner
triggerall = teamside = 2
trigger1 = roundno = 1
value = cond(id = 57 + (enemy, numpartner), 5901, 0)

[state 0]
type = changestate
trigger1 = roundno != 1
value = 0

[statedef 5901]
type = u
anim = 6

[state 0]
type = varset
trigger1 = roundno = 1
v = 2
value = 0

[state 0]
type = assertspecial
trigger1 = 1
flag = intro

[state 0]
type = helper
triggerall = roundno = 1
triggerall = teamside = 1
trigger1 = !numhelper(30120)
stateno = 30120
id = 30120
pos = 0, 0
postype = p1
ownpal = 1
size.xscale = .6
size.yscale = .3
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
triggerall = roundno = 1
triggerall = teamside = 2
trigger1 = !numhelper(30120)
stateno = 30120
id = 30120
pos = 0, 0
postype = p1
ownpal = 1
size.xscale = .6
size.yscale = .3
ignorehitpause = 1
persistent = 0

[state 0]
type = changestate
trigger1 = time >= 20
value = cond(random % 2 = 0, 5902, 5900)

[statedef 5902]
type = u
velset = 0, 0
ctrl = 0
sprpriority = 2

[state 0]
type = assertspecial
trigger1 = 1
flag = intro

[state 0]
type = changeanim
triggerall = anim != 180 + (var(11))
trigger1 = (!time) || ((command = "up") || (command = "down"))
value = 180 + (var(11))

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = helper
triggerall = !numhelper(30950)
trigger1 = !time
stateno = 30950
id = 30950
pos = 0, 0
postype = p1
ownpal = 1
facing = facing
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = changestate
trigger1 = ((!ailevel) && (command = "s"))
trigger2 = ailevel
trigger3 = time >= 900
value = 190

[statedef 20000]
type = u
movetype = a
physics = n
ctrl = 0
anim = 30700
sprpriority = 2

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, const(size.head.pos.y)

[state 0]
type = poweradd
triggerall = numhelper(20000)
trigger1 = !time
value = -100

[state 0]
type = null
trigger1 = var(5) := 0

[state 0]
type = velset
triggerall = ishelper(20000)
trigger1 = root, pos y = 0
x = const(velocity.run.fwd.x) * 1.9
y = -1 + (random % 3)
[state 0]
type = velset
triggerall = ishelper(20000)
trigger1 = root, pos y != 0
x = const(velocity.run.fwd.x) * 1.9
y = const(velocity.run.fwd.x) * .9

[state 0]
type = velset
triggerall = ishelper(20001)
trigger1 = root, pos y = 0
x = const(velocity.run.fwd.x) * 1.9
y = -1 + (random % 3)
[state 0]
type = velset
triggerall = ishelper(20001)
trigger1 = root, pos y != 0
x = const(velocity.run.fwd.x) * 3
y = const(velocity.run.fwd.x) * .9

[state 0]
type = velset
trigger1 = time = 1
y = abs(p2bodydist y / 35)

[state 0]
type = hitoverride
trigger1 = 1
attr = sca, na, sa, ha, np, sp, hp, nt, st, ht
stateno = 20001
time = 999

[state 0]
type = envshake
trigger1 = !time
time = 5
ampl = -2

[state 0]
type = playsnd
trigger1 = !time
value = s20000, 0
[state 0]
type = playsnd
trigger1 = !time
value = s20000, 0

[state 0]
type = explod
trigger1 = !time
anim = 30301
id = 30400
pos = 0, 0
postype = p1
facing = 1
bindtime = 0
removetime = -2
sprpriority = 5
scale = const(size.xscale) / 3, const(size.yscale) * .75
angle = var(5) + (cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (180 / pi)), 0))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
[state 0]
type = explod
trigger1 = !time
anim = 30301
id = 30400
pos = 0, 0
postype = p1
facing = 1
bindtime = 0
removetime = -2
sprpriority = 4
scale = const(size.xscale) / 3, const(size.yscale) * .75
angle = var(5) + (cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (180 / pi)), 0))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
trans = sub

[state 0]
type = explod
trigger1 = time % 6 = 0
anim = 30401
id = 30401
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
scale = const(size.xscale) * .8, const(size.yscale) * .8
angle = var(5) + (cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (90 / pi)), 0))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
[state 0]
type = explod
trigger1 = time % 6 = 0
anim = 30401
id = 30401
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .8, const(size.yscale) * .8
angle = var(5) + (cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (90 / pi)), 0))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
trans = sub

[state 0]
type = explod
trigger1 = time % 7 = 0
anim = 30206
id = 30206
pos = -5, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = .2, .1
angle = (var(5) + 90) + (cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (90 / pi)), 0))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
trans = add
vel = -2, 0
[state 0]
type = explod
trigger1 = time % 7 = 0
anim = 30206
id = 30206
pos = -5, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = .2, .1
angle = (var(5) + 90) + (cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (90 / pi)), 0))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
vel = -2, 0

[state 0]
type = hitdef
triggerall = ishelper(20000)
trigger1 = !movecontact
animtype = medium
attr = a, np
damage = 12, 6
hitflag = maf
guardflag = ma
pausetime = 0, 3
hitsound = -1
guardsound = s9104, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
ground.velocity = cond(root, var(13) > 3, -3, -2), cond(root, var(13) > 3, -3, 0)
air.velocity = cond(root, var(13) > 3, -3, -2), cond(root, var(13) > 3, -2, -1)
fall = cond(root, var(13) > 3, 1, 0)
envshake.time = 5
palfx.time = 15
palfx.add = -50, -50, -50
palfx.mul = 256, 256, 256
palfx.sinadd = 50, 50, 50, 50
palfx.invertall = 0
palfx.color = 256
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[state 0]
type = helper
triggerall = ishelper(20000)
triggerall = p2movetype = h
trigger1 = movecontact = 1
stateno = 98010
id = 001
size.height = 0
size.head.pos = (random % 360), const(size.head.pos.y)
pos = 0, -32 + (random % 8)
postype = p2
ownpal = 1
size.xscale = const(size.xscale) * 4
size.yscale = const(size.xscale) * 4
ignorehitpause = 1
persistent = 0

[state 0]
type = hitdef
triggerall = ishelper(20001)
trigger1 = !movecontact
animtype = medium
attr = a, sp
damage = 8 + (random % 4), 4
hitflag = maf
guardflag = ma
pausetime = 0, 3
hitsound = -1
guardsound = s9104, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -2, 0
air.velocity = -2, -2
fall = cond(root, time >= 115, 1, 0)
envshake.time = 5
palfx.time = 15
palfx.add = -50, -50, -50
palfx.mul = 256, 256, 256
palfx.sinadd = 50, 50, 50, 50
palfx.invertall = 0
palfx.color = 256
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[state 0]
type = helper
triggerall = ishelper(20001)
triggerall = p2movetype = h
trigger1 = movecontact = 1
stateno = 98010
id = 001
size.height = 0
size.head.pos = (random % 360), const(size.head.pos.y)
pos = 0, -32 + (random % 8)
postype = p2
ownpal = 1
size.xscale = const(size.xscale) * 4.5
size.yscale = const(size.xscale) * 4.5
ignorehitpause = 1
persistent = 0

[state 0]
type = changestate
trigger1 = (movecontact) || (frontedgebodydist < 0) || (pos y >= -5) || (time >= 180)
value = 20001

[statedef 20001]
type = u
movetype = i
physics = s
velset = 0, 0
ctrl = 0
anim = 6
sprpriority = -1

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, const(size.head.pos.y)

[state 0]
type = removeexplod
trigger1 = 1
id = 30401

[state 0]
type = playsnd
trigger1 = !time
value = s20000, 1

[state 0]
type = envshake
trigger1 = !time
time = 10

[state 0]
type = null
trigger1 = var(6) := 0 + (random % 360)

[state 0]
type = explod
trigger1 = !time
anim = 30402
id = 30402
pos = 15, 10
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 17
scale = const(size.xscale) * 1.25, const(size.yscale) * 1.25
angle = var(6)
ownpal = 1
remappal = 3, 15
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
vel = .1, -.25
[state 0]
type = explod
trigger1 = !time
anim = 30402
id = 30402
pos = 15, 10
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 16
scale = const(size.xscale) * 1.25, const(size.yscale) * 1.25
angle = var(6)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
vel = .1, -.25
trans = sub

[state 0]
type = destroyself
trigger1 = time = 5

[statedef 30000]
type = u
anim = 6

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, const(size.head.pos.y)

[state 0]
type = bindtoroot
trigger1 = 1
pos = const(size.mid.pos.x), const(size.mid.pos.y)

[state 0]
type = explod
trigger1 = !time
anim = const(size.height)
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = const(size.ground.front)
scale = const(size.xscale), const(size.yscale)
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = const(size.height)
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = const(size.ground.back)
scale = const(size.xscale), const(size.yscale)
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = destroyself
trigger1 = !numexplod(stateno)
removeexplods = 1

[statedef 30120]
type = u
velset = 0, 0
anim = stateno
sprpriority = 10

[state 0]
type = angledraw
trigger1 = (alive) && (statetype != l)
value = cond(vel x != 0, - (atan(vel y / vel x) * (const(size.air.back) * 1.25) / pi), 0)
scale = 1 + (sin((time / (60 + (life / 1))) * (pi / 2)) * 0.5), 1 + (sin((time / (60 + (life / 1))) * (pi / 2)) * 0.5)
ignorehitpause = 1

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, 1

[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 0]
type = angledraw
trigger1 = 1
value = 90
ignorehitpause = 1

[state 0]
type = changestate
trigger1 = root, stateno != 5901
value = 30121

[statedef 30121]
type = u
velset = 0, 0
sprpriority = 10

[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 0]
type = angledraw
trigger1 = 1
value = 90
ignorehitpause = 1

[state 0]
type = varadd
trigger1 = time >= 2
v = 2
value = 5

[state 0]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256-var(2), 256

[state 0]
type = destroyself
trigger1 = var(2) >= 256

[statedef 30500]
type = u
anim = 6

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (const(size.head.pos.y))

[state 0]
type = bindtoroot
trigger1 = 1
pos = const(size.mid.pos.x), const(size.mid.pos.y)
ignorehitpause = 1
[state 0]
type = null
trigger1 = var(5) := const(size.head.pos.x)
trigger1 = var(6) := cond((root, vel x != 0), floor(-(atan((root, vel y) / (root, vel x)) * 25 / pi)), 0)
ignorehitpause = 1

[state 0]
type = envshake
trigger1 = time % 6 = 0
time = 3

[state 0]
type = playsnd
trigger1 = !time
value = s9501, 0
[state 0]
type = playsnd
trigger1 = !time
value = s9600, 4

[state 0]
type = playsnd
triggerall = name = "kurosaki ichigo"
triggerall = root, stateno = 115
trigger1 = root, time = 11
value = s90, 0 + (cond(((root, var(3) = 1) || (root, var(4) = 1)), 1, 0))
channel = 0
[state 0]
type = playsnd
triggerall = name = "kurosaki ichigo"
triggerall = root, stateno = 115
trigger1 = root, time = 11
value = s90, 0 + (cond(((root, var(3) = 1) || (root, var(4) = 1)), 1, 0))
channel = 3

[state 0]
type = playsnd
triggerall = name != "kurosaki ichigo"
triggerall = root, stateno = 115
trigger1 = root, time = 11
value = s90, 0
channel = 0
[state 0]
type = playsnd
triggerall = name != "kurosaki ichigo"
triggerall = root, stateno = 115
trigger1 = root, time = 11
value = s90, 0
channel = 3

[state 0]
type = playsnd
triggerall = ishelper(30500)
trigger1 = time % 80 = 0
value = s9500, 0
channel = 1

[state 0]
type = playsnd
triggerall = ishelper(30500)
trigger1 = time % 180 = 0
value = s9500, 1
channel = 2
[state 0]
type = playsnd
triggerall = ishelper(30501)
trigger1 = time % 240 = 0
value = s9501, 1
channel = 2

[state 0]
type = stopsnd
trigger1 = ((root, stateno != root, stateno) || (root, movetype = h))
channel = 1
[state 0]
type = stopsnd
trigger1 = ((root, stateno != root, stateno) || (root, movetype = h))
channel = 2

[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30504
id = 30504
pos = 0, 4
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 9
scale = .25, .25
angle = (var(5)) + (var(6))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30504
id = 30504
pos = 0, 4
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 8
scale = .25, .25
angle = (var(5)) + (var(6))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = modifyexplod
trigger1 = 1
id = 30504
scale = ((const(size.xscale) * .25) + (helper(30990), fvar(7)) / 30), ((const(size.yscale) * .25) + (helper(30990), fvar(7)) / 30)
remappal = 3, (root, var(53))
ignorehitpause = 1

[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30507
id = 30507
pos = 0, 5
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
scale = (const(size.xscale) * .3), (const(size.yscale) * .325)
angle = (var(5)) + (var(6))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30507
id = 30507
pos = 0, 5
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 1
scale = (const(size.xscale) * .3), (const(size.yscale) * .325)
angle = (var(5)) + (var(6))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = modifyexplod
trigger1 = 1
id = 30507
scale = ((const(size.xscale) * .3) + (helper(30990), fvar(7)) / 30), ((const(size.yscale) * .325) + (helper(30990), fvar(7)) / 30)
remappal = 3, (root, var(53))
ignorehitpause = 1

[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30512
id = 30512
pos = -2, -2
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 1
scale = (const(size.xscale) * .175), (const(size.yscale) * .275)
angle = (var(5)) + (var(6))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30512
id = 30512
pos = -2, -2
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
scale = (const(size.xscale) * .175), (const(size.yscale) * .275)
angle = (var(5)) + (var(6))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = modifyexplod
trigger1 = 1
id = 30512
scale = ((const(size.xscale) * .175) + (helper(30990), fvar(7)) / 30), ((const(size.yscale) * .275) + (helper(30990), fvar(7)) / 30)
remappal = 3, (root, var(53))
ignorehitpause = 1

[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = !time
anim = 30511
id = 30511
pos = 0, -2
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 4
scale = (const(size.xscale) * .1), (const(size.yscale) * .25)
angle = (var(5)) + (var(6))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = !time
anim = 30511
id = 30511
pos = 0, -2
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 2
scale = (const(size.xscale) * .15), (const(size.yscale) * .25)
angle = (var(5)) + (var(6))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = modifyexplod
trigger1 = 1
id = 30511
scale = ((const(size.xscale) * .15) + (helper(30990), fvar(7)) / 30), ((const(size.yscale) * .25) + (helper(30990), fvar(7)) / 30)
ignorehitpause = 1

[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = !time
anim = 30513
id = 30513
pos = 0, 4
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 3
scale = (const(size.xscale) * .27), (const(size.yscale) * .295)
angle = (var(5)) + (var(6))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = !time
anim = 30513
id = 30513
pos = 0, 4
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 1
scale = (const(size.xscale) * .27), (const(size.yscale) * .295)
angle = (var(5)) + (var(6))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = modifyexplod
trigger1 = 1
id = 30513
scale = ((const(size.xscale) * .27) + (helper(30990), fvar(7)) / 30), ((const(size.yscale) * .295) + (helper(30990), fvar(7)) / 30)
ignorehitpause = 1

[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = !time
anim = 30503
id = 30503
pos = -2, 2
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 1
scale = (const(size.xscale) * .27), (const(size.yscale) * .295)
angle = (var(5)) + (var(6))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 1
[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = !time
anim = 30503
id = 30503
pos = -2, 2
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 0
scale = (const(size.xscale) * .27), (const(size.yscale) * .295)
angle = (var(5)) + (var(6))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
persistent = 1
[state 0]
type = modifyexplod
trigger1 = 1
id = 30503
scale = ((const(size.xscale) * .27) + (helper(30990), fvar(7)) / 30), ((const(size.yscale) * .295) + (helper(30990), fvar(7)) / 30)
ignorehitpause = 1

[state 0]
type = null
trigger1 = !time && !var(0)
trigger1 = var(0) := (root, stateno)
ignorehitpause = 1
[state 0]
type = changestate
trigger1 = time && (root, stateno) != var(0)
trigger2 = enemy, numhelper(80015) = 1
trigger3 = cond(const(size.height) != 0, time >= const(size.height), 0)
value = 30501
ignorehitpause = 1

[statedef 30501]
type = u
anim = 6

[state 0]
type = bindtoroot
trigger1 = 1
pos = const(size.mid.pos.x), const(size.mid.pos.y)
ignorehitpause = 1

[state 0]
type = removeexplod
trigger1 = !time
[state 0]
type = stopsnd
trigger1 = 1
channel = 0
[state 0]
type = stopsnd
trigger1 = 1
channel = 1
[state 0]
type = stopsnd
trigger1 = 1
channel = 2
[state 0]
type = stopsnd
trigger1 = 1
channel = 3
[state 0]
type = stopsnd
trigger1 = 1
channel = 4

[state 0]
type = envshake
trigger1 = !time
time = 15
ampl = -5
freq = 10
[state 0]
type = playsnd
triggerall = ishelper(30500)
trigger1 = !time
value = s9160, 5
[state 0]
type = playsnd
triggerall = ishelper(30501)
trigger1 = !time
value = s9501, 2

[state 0]
type = explod
trigger1 = !time
anim = 30504
id = stateno
pos = 0, 4
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 9
scale = .25, .25
angle = var(5)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30504
id = stateno
pos = 0, 4
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 8
scale = .25, .25
angle = var(5)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = destroyself
trigger1 = cond((enemy, numhelper(80015) = 1), time >= 700, time >= 10)

[statedef 30505]
type = u
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 6
sprpriority = -1

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (root, var(53))

[state 0]
type = turn
trigger1 = facing != root, facing

[state 0]
type = bindtoroot
trigger1 = 1
pos = 0, 0

[state 0]
type = helper
trigger1 = numexplod(30505) = 1
stateno = 30506
id = 30506
pos = 0,0
postype = p1
ownpal = 1
size.xscale = .2
size.yscale = .2
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = null
trigger1 = var(1) := (random % 25)
trigger1 = var(2) := - (random % 35)

[state 0]
type = explod
trigger1 = (root, vel x = [-10, 3]) && (time % 3 = 0)
anim = 30505
id = 30505
pos = -10 + (var(1)), 5 + (var(2))
postype = p1
facing = 1
bindtime = 5
removetime = -2
sprpriority = cond(random < 500, 3, 1)
scale = .1, .1
angle = 0
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = addalpha
alpha = 200, 256
vel = 0, -.5
[state 0]
type = explod
trigger1 = (root, vel x > 3) && (time % 3 = 0)
anim = 30505
id = 30505
pos = 15 + (var(1)), 0 + (var(2))
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = cond(random < 500, 3, 1)
scale = .1, .1
angle = 90
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = addalpha
alpha = 200, 256
vel = - .5, 0

[state 0]
type = removeexplod
trigger1 = root, stateno = 5120 || root, statetype = l
trigger2 = root, life = 0
trigger3 = root, stateno = [190190, 190192]
trigger4 = root, movetype = h && ((root, stateno != [150, 155]) && (root, stateno != [5000, 5210]))
id = 30505

[state 0]
type = destroyself
trigger1 = (root, life = 0) || (roundstate != 2)
trigger2 = root, numhelper(30990)
trigger2 = helper(30990), fvar(8) = 0

[statedef 30506]
type = u
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 30506
sprpriority = 1

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (root, var(53))

[state 0]
type = turn
trigger1 = facing != root, facing

[state 0]
type = bindtoroot
trigger1 = 1
pos = 0, -8

[state 0]
type = angledraw
trigger1 = root, stateno = [100, 105]
value = 90
[state 0]
type = bindtoroot
trigger1 = root, stateno = [100, 105]
pos = 15, -22

[state 0]
type = assertspecial
trigger1 = root, anim = [5110, 5120]
trigger2 = root, anim = 191
trigger3 = root, stateno = 1516
trigger4 = root, stateno = 1520
trigger5 = root, stateno = 3012
trigger6 = ((root, stateno = 191) && (root, time = [0, 160]))
trigger7 = root, stateno = 170
trigger8 = ((root, stateno = 1002) && (root, time = [5, 15]))
trigger9 = !selfanimexist(root, anim) 
trigger10 = root, movetype = h && ((root, stateno != [150, 155]) && (root, stateno != [5000, 5210]))
trigger11 = root, stateno = [190190, 190192]
trigger12 = root, statetype = l
flag = invisible
flag2 = noshadow

[state 0]
type = destroyself
trigger1 = (root, life = 0) || (roundstate != 2)
trigger2 = root, numhelper(30990)
trigger2 = helper(30990), fvar(8) = 0

[statedef 30700]
type = u
movetype = h
physics = n
velset = 0, 0
ctrl = 0
anim = 6

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, const(size.head.pos.y)

[state 0]
type = helper
triggerall = numhelper(30701) <= 3
trigger1 = !time
stateno = 30701
id = 30701
pos = 0, 0
postype = p2
ownpal = 1
ignorehitpause = 1
[state 0]
type = helper
triggerall = numhelper(30703) <= 3
trigger1 = !time
stateno = 30703
id = 30703
pos = 0, 0
postype = p2
ownpal = 1
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = time = 1

[statedef 30701]
type = u
movetype = h
physics = n
velset = 0, 0
ctrl = 0
anim = stateno

[state 0]
type = posadd
trigger1 = 1
x = p2dist x
y = p2dist y - 25

[state 0]
type = assertspecial
trigger1 = 1
flag = unguardable

[state 0]
type = hitdef
triggerall = p2movetype != h
trigger1 = 1
attr = a, hp
hitsound = -1
guardsound = -1
p1stateno = 30702
p2stateno = 30704
fall.recover = 0

[state 0]
type = destroyself
trigger1 = movecontact

[statedef 30702]
type = u
movetype = h
physics = n
anim = 30701

[state 0]
type = posadd
trigger1 = 1
x = p2dist x - 1
y = p2bodydist y - 20

[state 0]
type = reversaldef
trigger1 = 1
reversal.attr = c, ht
p1stateno = -1

[state 0]
type = targetlifeadd
trigger1 = time % 8 = 0
value = -1
kill = 0

[state 0]
type = destroyself
trigger1 = (time = 200) || (roundstate != 2)

[statedef 30703]
type = u
movetype = h
physics = n
velset = 0, 0
ctrl = 0
anim = 6
sprpriority = -1

[state 0]
type = playsnd
triggerall = const(size.head.pos.x) = 001
triggerall = p2statetype != l
trigger1 = time % 60 = 0
value = s9400, const(size.head.pos.x)
[state 0]
type = playsnd
triggerall = const(size.head.pos.x) = 002
triggerall = p2statetype != l
trigger1 = time % 60 = 0
value = s9400, 2
[state 0]
type = playsnd
triggerall = const(size.head.pos.x) = 003
triggerall = p2statetype != l
trigger1 = time % 60 = 0
value = s9400, 0
[state 0]
type = playsnd
triggerall = const(size.head.pos.x) = 004
triggerall = p2statetype != l
trigger1 = time % 60 = 0
value = s9400, 3
[state 0]
type = playsnd
triggerall = const(size.head.pos.x) = 005
triggerall = p2statetype != l
trigger1 = time % 60 = 0
value = s9103, 1

[state 0]
type = null
trigger1 = var(5) := (enemynear, const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(6) := (enemynear, const(size.mid.pos.y) + (-10 + (random % 15)))
[state 0]
type = explod
triggerall = p2statetype != l
trigger1 = time % 60 = 0
anim = const(size.height)
id = stateno
pos = var(5), var(6)
postype = p2
facing = 1
bindtime = 10
removetime = -2
sprpriority = const(size.ground.front)
scale = const(size.xscale), const(size.yscale)
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
[state 0]
type = explod
triggerall = p2statetype != l
trigger1 = time % 60 = 0
anim = const(size.height)
id = stateno
pos = var(5), var(6)
postype = p2
facing = 1
bindtime = 10
removetime = -2
sprpriority = const(size.ground.back)
scale = const(size.xscale), const(size.yscale)
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
trans = sub

[state 0]
type = destroyself
trigger1 = (time = 250) || (roundstate != 2)

[statedef 30704]
type = u
movetype = h
physics = n
velset = 0, 0
ctrl = 0
sprpriority = 1

[state 0]
type = turn
trigger1 = p2bodydist x < -5

[state ]
type = selfstate
trigger1 = time = 5
value = 5000

[statedef 30710]
type = u
movetype = i
physics = n
ctrl = 0
anim = stateno
sprpriority = 3

[state 0]
type = width
trigger1 = 1
edge = 0, 0
player = -5, -5
ignorehitpause = 1

[state 0]
type = angledraw
trigger1 = 1
scale = 1, 1
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = 8
ignorehitpause = 1

[state 0]
type = veladd
triggerall = time >= 5
trigger1 = vel x > 1
x = -.5
ignorehitpause = 1

[state 0]
type = playerpush
trigger1 = 1
value = 1
ignorehitpause = 1

[state 0]
type = nothitby
trigger1 = 1
value = sca, aa, ap, at
time = -1
ignorehitpause = 1

[state 0]
type = hitoverride
trigger1 = 1
attr = sca, aa, ap, at
stateno = 9999
time = -1
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = time >= 15
ignorehitpause = 1

[statedef 30802]
type = u
anim = 6

[state 0]
type = bindtoroot
trigger1 = 1
pos = 0, const(size.mid.pos.y)

[state 0]
type = playsnd
trigger1 =  !time
value = s9840, 7
ignorehitpause = 1
persistent = 0
[state 0]
type = playsnd
trigger1 =  !time
value = s9840, 8
ignorehitpause = 1
persistent = 0

[state 0]
type = explod
trigger1 = !time
anim = 30802
id = 30802
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30802
id = 30802
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = !time
anim = 30803
id = 30803
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30803
id = 30803
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = destroyself
trigger1 = !numexplod(30802)
trigger1 = !numexplod(30803)

[statedef 30850]
type = u
anim = 6

[state 0]
type = bindtoroot
trigger1 = 1
pos = const(size.mid.pos.x), const(size.mid.pos.y)
ignorehitpause = 1
[state 0]
type = null
trigger1 = var(3) := 45
trigger1 = var(4) := 0 + (random % 360)
ignorehitpause = 1

;=====================================
; skill fx
[state 0]
type = poweradd
triggerall = ishelper(001)
trigger1 = !time
value = - (powermax / 3.0)
[state 0]
type = envshake
triggerall = ishelper(001)
trigger1 = !time
time = 10
[state 0]
type = playsnd
triggerall = ishelper(001)
trigger1 = !time
value = s9600, 7
[state 0]
type = playsnd
triggerall = ishelper(001)
trigger1 = !time
value = s9600, 7
[state 0]
type = playsnd
triggerall = ishelper(001)
trigger1 = !time
value = s9600, 8
[state 0]
type = playsnd
triggerall = ishelper(001)
trigger1 = !time
value = s9600, 8

[state 0]
type = helper
trigger1 = root, prevstateno = 190195
stateno = 30851
id = 30851
postype = p1
ownpal = 1
facing = 1
size.xscale = .125
size.yscale = .125
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = helper
triggerall = (ishelper(001)) || (ishelper(002))
triggerall = numhelper(81007)
triggerall = helper(81007), time = [30, 150]
trigger1 = !time
stateno = 30851
id = 30851
postype = p1
ownpal = 1
facing = 1
size.xscale = .125
size.yscale = .125
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = helper
triggerall = !numhelper(81007)
triggerall = ishelper(001)
trigger1 = !time
stateno = 81007
id = 81007
pos = 0, 0
postype = p1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = (helper(30990), fvar(8) = 1)
triggerall = ishelper(001)
trigger1 = !time
anim = 30853
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 6
scale = const(size.xscale) * 1.75, const(size.yscale) * 1.75
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = (helper(30990), fvar(8) = 1)
triggerall = ishelper(001)
trigger1 = !time
anim = 30853
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
scale = const(size.xscale) * 1.75, const(size.yscale) * 1.75
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = ishelper(001)
trigger1 = !time
anim = 30855
id = 30855
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = const(size.xscale) * 2, const(size.yscale) * 2
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(001)
trigger1 = !time
anim = 30855
id = 30855
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
scale = const(size.xscale) * 2, const(size.yscale) * 2
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = ishelper(001)
trigger1 = !time
anim = 30856
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = const(size.xscale) * 1.5, const(size.yscale) * 1.5
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(001)
trigger1 = !time
anim = 30856
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
scale = const(size.xscale) * 1.5, const(size.yscale) * 1.5
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

;=====================================
; super fx
[state 0]
type = poweradd
triggerall = root, prevstateno != 115
triggerall = ishelper(002)
trigger1 = !time
value = - (powermax / 1.5)
[state 0]
type = envshake
triggerall = ishelper(002)
trigger1 = !time
time = 15
ampl = -10
freq = 30
[state 0]
type = playsnd
triggerall = ishelper(002)
trigger1 = !time
value = s9600, 2
[state 0]
type = playsnd
triggerall = ishelper(002)
trigger1 = !time
value = s9600, 2
[state 0]
type = playsnd
triggerall = ishelper(002)
trigger1 = !time
value = s9600, 6
[state 0]
type = playsnd
triggerall = ishelper(002)
trigger1 = !time
value = s9600, 6

[state 0]
type = helper
triggerall = ishelper(002)
trigger1 = !time
stateno = 98510
id = 98511
postype = p1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 0]
type = explod
triggerall = roundstate = 2
triggerall = ishelper(002)
trigger1 = time % 32 = 0
anim = 30811
id = 30811
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
triggerall = ishelper(002)
trigger1 = !time
anim = 30800
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 6
scale = const(size.xscale) * 3, const(size.yscale) * 3
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(002)
trigger1 = !time
anim = 30800
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
scale = const(size.xscale) * 3, const(size.yscale) * 3
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = ishelper(002)
trigger1 = !time
anim = 30801
id = stateno
pos = 0, -const(size.mid.pos.y)
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = const(size.xscale) * 2.5, const(size.yscale) * 2.5
angle = 0
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(002)
trigger1 = !time
anim = 30801
id = stateno
pos = 0, -const(size.mid.pos.y)
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
scale = const(size.xscale) * 2.5, const(size.yscale) * 2.5
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = ishelper(002)
trigger1 = !time
anim = 30856
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 8
scale = const(size.xscale) * 2, const(size.yscale) * 2
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(002)
trigger1 = !time
anim = 30856
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 7
scale = const(size.xscale) * 2, const(size.yscale) * 2
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

;=====================================
; ultimate fx
[state 0]
type = envshake
triggerall = ishelper(003)
trigger1 = !time
time = 15
ampl = -10
freq = 30
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 1
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 1
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 2
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 2
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 5
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 5
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 5
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 6
[state 0]
type = playsnd
triggerall = ishelper(003)
trigger1 = !time
value = s9600, 6

[state 0]
type = helper
triggerall = ishelper(003)
trigger1 = !time
stateno = 98510
id = 98510
postype = p1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 0]
type = explod
triggerall = roundstate = 2
triggerall = ishelper(003)
trigger1 = !time
anim = 30810
id = 30810
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -1
scale = (screenwidth / 320), (screenheight / 235)
sprpriority = 200
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999
[state 0]
type = explod
triggerall = roundstate = 2
triggerall = ishelper(003)
trigger1 = !time
anim = 30810
id = 30810
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -1
scale = (screenwidth / 320), (screenheight / 235)
sprpriority = 200
ownpal = 1
remappal = 3, 0
removeongethit = 1
pausemovetime = 99999
supermovetime = 99999
trans = sub

[state 0]
type = explod
triggerall = roundstate = 2
triggerall = ishelper(003)
trigger1 = time % 32 = 0
anim = 30811
id = 30810
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = !time
anim = 30856
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 6
scale = const(size.xscale) * 1.5, const(size.yscale) * 1.5
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = !time
anim = 30856
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
scale = const(size.xscale) * 1.5, const(size.yscale) * 1.5
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = !time
anim = 30854
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
scale = const(size.xscale) * 1.75, const(size.yscale) * 1.75
angle = 0
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = !time
anim = 30854
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = const(size.xscale) * 1.75, const(size.yscale) * 1.75
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = !time
anim = 30122
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = 30
sprpriority = 1
scale = const(size.xscale) * 2.5, const(size.yscale) * 2.5
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = !time
anim = 30122
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = 30
sprpriority = 0
scale = const(size.xscale) * 2.75, const(size.yscale) * 2.75
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = time = 25
anim = 30859
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * 1.75, const(size.yscale) * 1.75
angle = var(4)
ownpal = 1
remappal = 3, const(size.head.pos.y)
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(003)
trigger1 = time = 25
anim = 30859
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
scale = const(size.xscale) * 1.75, const(size.yscale) * 1.75
angle = var(4)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = destroyself
trigger1 = roundstate != 2
removeexplods = 1

[state 0]
type = destroyself
trigger1 = time >= 15
trigger1 = numhelper(98510) = 0 && numhelper(98511) = 0
removeexplods = 1

[statedef 30851]
type = u
anim = 6

[state 0]
type = bindtoroot
trigger1 = 1
pos = const(size.mid.pos.x), const(size.mid.pos.y)
ignorehitpause = 1
[state 0]
type = null
trigger1 = var(3) := 45
trigger1 = var(4) := 0 + (random % 360)
ignorehitpause = 1

;=====================================
; burst skill fx
[state 0]
type = pause
trigger1 = !time
time = 20
movetime = 10
[state 0]
type = envshake
trigger1 = !time
time = 20

[state 0]
type = helper
trigger1 = !time
stateno = 98510
id = 98512
postype = p1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = !time
value = s9600, 4
[state 0]
type = playsnd
trigger1 = !time
value = s9610, 0
[state 0]
type = helper
trigger1 = !time
stateno = 30000
size.height = 30858
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), 0
size.head.pos = 0, (root, var(53))
size.xscale = .3
size.yscale = .3
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
trigger1 = !time
stateno = 30000
size.height = 30859
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), (root, const(size.mid.pos.y) + 0)
size.head.pos = 0, (root, var(53))
size.xscale = .2
size.yscale = .2
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = playsnd
trigger1 = (time = 790) || (root, stateno = 81)
value = s9180, 1
[state 0]
type = playsnd
trigger1 = (time = 790) || (root, stateno = 81)
value = s9180, 7
[state 0]
type = helper
trigger1 = (time = 790) || (root, stateno = 81)
stateno = 30000
size.height = 30802
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), (root, const(size.mid.pos.y) + 0)
size.head.pos = 0, (root, var(53))
size.xscale = .175
size.yscale = .175
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
trigger1 = (time = 790) || (root, stateno = 81)
stateno = 30000
size.height = 30803
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), (root, const(size.mid.pos.y) + 0)
size.head.pos = 0, (root, var(53))
size.xscale = .175
size.yscale = .175
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
trigger1 = (time = 790) || (root, stateno = 81)
stateno = 30000
size.height = 30801
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), 0
size.head.pos = 0, (root, var(53))
size.xscale = .25
size.yscale = .25
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = destroyself
trigger1 = (roundstate != 2) || (time = 800) || (root, stateno = 81)

[statedef 30902]
type = u
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 6
sprpriority = 0

[state 0]
type = nothitby
trigger1 = stateno = stateno
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = stateno = stateno
flag = noshadow
ignorehitpause = 1
[state 0]
type = null
trigger1 = fvar(0) := 0 + ((0.2 / 10))
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = stateno = stateno
ignorehitpause = 1
[state 0]
type = turn
trigger1 = facing != root, facing
ignorehitpause = 1
[state 0]
type = changeanim
trigger1 =  selfanimexist(root, anim)
value = root, anim
elem = root, animelemno(0)
ignorehitpause = 1
[state 0]
type = angleset
trigger1 = root, anim = 41 || root, anim = 44
trigger1 = root, vel x > 0
value = -5
ignorehitpause = 1
[state 0]
type = angleset
trigger1 = root, anim = 5040
trigger1 = root, animelemtime(2) < 0
value = 0 + ((root, time -1) * (270/10))
ignorehitpause = 1
[state 0]
type = angleset
trigger1 = root, anim != 41 && root, anim != 44 &&  root, vel x = 0
trigger1 = root, anim != 5040 || (root, anim = 5040 && root, animelemtime(2) >= 0)
value = 0
ignorehitpause = 1
[state 0]
type = angledraw
trigger1 = root, anim = 0
scale = (1.0 + fvar(0)) , (1.0 + fvar(0)) + (sin((root, time/ 60.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = angledraw
trigger1 = root, anim = 20
trigger1 = root, command = "holdback"
scale = -(1.0 + fvar(0)) , (1.0 + fvar(0))
ignorehitpause = 1
[state 0]
type = angledraw
trigger1 = root, anim = 20
trigger1 = root, command = "holdfwd"
scale = (1.0 + fvar(0)) , (1.0 + fvar(0))
ignorehitpause = 1
[state 0]
type = angledraw
trigger1 = root, anim != 0 && root, anim != 20
scale = (1.0 + fvar(0)) , (1.0 + fvar(0))
ignorehitpause = 1

[state 0]
type = palfx
trigger1 = !time
time = -1
add = (floor(root, fvar(35)) * 2), (floor(root, fvar(36)) * 2), (floor(root, fvar(37)) * 2)
mul = (floor(root, fvar(35)) * 2), (floor(root, fvar(36)) * 2), (floor(root, fvar(37)) * 2)
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = time = 10
trigger2 = !selfanimexist(root, anim) 
trigger3 = root, movetype = h && ((root, stateno != [150, 155]) && (root, stateno != [5000, 5210]))
ignorehitpause = 1

[statedef 30950]
type = u
anim = 6

[state 0]
type = playsnd
trigger1 = time = 20
value = s9951, 0
[state 0]
type = explod
trigger1 = time = 20
anim = 30950
id = 30950
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -1
sprpriority = 0
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 3
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
trigger1 = time = 30
anim = 30952
id = 30952
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -1
sprpriority = 1
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = time = 30
anim = 30953
id = 30953
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -1
sprpriority = 1
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = playsnd
trigger1 = (root, command = "fwd") || (root, command = "back")
value = s9951, 1
[state 0]
type = helper
triggerall = time >= 30
trigger1 = (root, command = "fwd") || (root, command = "back")
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = removeexplod
triggerall = time >= 30
trigger1 = cond(teamside = 1, (root, command = "back"), (root, command = "fwd"))
id = 30952
ignorehitpause = 1
[state 0]
type = removeexplod
triggerall = time >= 30
trigger1 = cond(teamside = 1, (root, command = "back"), (root, command = "fwd"))
id = 30954
ignorehitpause = 1
[state 0]
type = explod
triggerall = time >= 30
trigger1 = cond(teamside = 1, (root, command = "back"), (root, command = "fwd"))
anim = 30954
id = 30954
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -1
sprpriority = 1
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = removeexplod
triggerall = time >= 30
trigger1 = cond(teamside = 1, (root, command = "fwd"), (root, command = "back"))
id = 30953
ignorehitpause = 1
[state 0]
type = removeexplod
triggerall = time >= 30
trigger1 = cond(teamside = 1, (root, command = "fwd"), (root, command = "back"))
id = 30955
ignorehitpause = 1
[state 0]
type = explod
triggerall = time >= 30
trigger1 = cond(teamside = 1, (root, command = "fwd"), (root, command = "back"))
anim = 30955
id = 30955
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -1
sprpriority = 1
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = changestate
trigger1 = root, stateno != 5902
value = 30951

[statedef 30951]
type = u
velset = 0, -0.25
sprpriority = 16

[state 0]
type = removeexplod
trigger1 = !time
id = 30950
[state 0]
type = removeexplod
trigger1 = !time
id = 30952
[state 0]
type = removeexplod
trigger1 = !time
id = 30953
[state 0]
type = removeexplod
trigger1 = !time
id = 30954
[state 0]
type = removeexplod
trigger1 = !time
id = 30955

[state 0]
type = playsnd
trigger1 = !time
value = s9951, 2
[state 0]
type = explod
trigger1 = !time
anim = 30951
id = 30951
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -2
sprpriority = 10
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 3
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30956
id = 30956
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -2
sprpriority = 11
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30957
id = 30957
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = facing
bindtime = -1
removetime = -2
sprpriority = 11
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = destroyself
trigger1 = time >= 10
ignorehitpause = 1

[statedef 31000]
type = u
anim = 6

[state 0]
type = bindtoparent
trigger1 = 1
pos = floor(parent, p2dist x), - (parent, pos y)

[state 0]
type = explod
trigger1 = roundstate = 2
trigger1 = numexplod(stateno + 1) = 0
anim = cond(facing = 1, stateno, stateno + 1)
id = stateno + 1
pos = 0 , 0
postype = p1
facing = 1
bindtime = -1
removetime = -1
sprpriority = 15
scale = .5, .5
angle = 0
ownpal = 1
remappal = 3, 1
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = destroyself
triggerall = time >= 1
trigger1 = (root, command = "s") && (root, command = "x")
removeexplods = 1

[statedef 40000]
type = u
sprpriority = 3

[state 0]
type = null
trigger1 = !time
trigger1 = selfanimexist(root, anim)
trigger1 = var(0) := root, anim
ignorehitpause = 1
[state 0]
type = null
trigger1 = !time
trigger1 = selfanimexist(root, anim)
trigger1 = var(1) := root, animelemno(0)
ignorehitpause = 1
[state 0]
type = velset
trigger1 = !time
x = cond(root, stateno = 100, -1, 0)
y = 0
ignorehitpause = 1
[state 0]
type = changeanim
trigger1 = stateno = stateno
value = var(0)
elem = var(1)
ignorehitpause = 1
[state 0]
type = nothitby
trigger1 = !time
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = -1
ignorehitpause = 1
[state 0]
type = angledraw
trigger1 = stateno = stateno
scale = 1.0 + (time * 0.00375), 1.0 + (time * 0.00375)
value = 0
ignorehitpause = 1
[state 0]
type = trans
trigger1 = stateno = stateno
trans = addalpha
alpha = 50 - cond(time > 5, ((time - 5) * 10), 0), 256
ignorehitpause = 1 

[state 0]
type = destroyself
trigger1 = time = 10
ignorehitpause = 1

[statedef 40001]
type = u
sprpriority = 3 
[state 0]
type = palfx
trigger1 = 1
time = 1
add = floor(root, fvar(35) + (floor(sin((time / 6.0) * (pi)) * (root, fvar(35))))), floor(root, fvar(36) + (floor(sin((time / 6.0) * (pi)) * (root, fvar(36))))), floor(root, fvar(37) + (floor(sin((time / 6.0) * (pi)) * (root, fvar(37)))))
[state 0]
type = changeanim
trigger1 = 1
value = root, anim
elem = root, animelemno(0)
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1
[state 0]
type = turn
trigger1 = facing != root, facing
ignorehitpause = 1
[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = -1
ignorehitpause = 1
[state 0]
type = angledraw
trigger1 = 1
scale = 1.0 + (time * .015), 1.0 + (time * .015)
value = 0
[state 0]
type = trans
trigger1 = 1
trans = addalpha
alpha = 120 - ((time) * 12), 150 + ((time) * 12)
[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 0]
type = destroyself
trigger1 = time = 20

[statedef 40002]
type = u
sprpriority = 10

[state 0]
type = changeanim
trigger1 = 1
value = root, anim
elem = root, animelemno(0)
ignorehitpause = 1
[state 0]
type = velset
trigger1 = !time
x = .005
y = 0
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1
[state 0]
type = turn
trigger1 = facing != root, facing
ignorehitpause = 1
[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = -1
ignorehitpause = 1
[state 0]
type = trans
trigger1 = 1
trans = add
alpha = 50 - ((time) * 5), 256
[state 0]
type = afterimage
trigger1 = !time
time = -1
trans = add
length = 15
timegap = 15
framegap = 1
palbright = 0 , 0 , 0
palcontrast = 128, 0, 32
paladd = 0, 0, 0
palmul = .25, .25, .25

[state 0]
type = destroyself
trigger1 = time = 20

[statedef 80000]
type = u
movetype = i
physics = n
anim = 6

[state 0]
type = helper
trigger1 = time = 30
stateno = 80005
id = 80005
pos = 160, -30
postype = left
ownpal = 1
facing = 1
size.xscale = 2
size.yscale = .7
pausemovetime = 999
supermovetime = 999
persistent = 0

[state 0]
type = helper
trigger1 = !time
stateno = 80015
id = 80015
pos = 0, 0
postype = p1
pausemovetime = 999
supermovetime = 999

[state 0]
type = bgpalfx
trigger1 = (time >= 0) && (time <= 60)
time = 3
invertall = 1
color = 256
[state 0]
type = bgpalfx
trigger1 = time >= 60
time = 5
invertall = 0
color = 200 - (time * 1)
ignorehitpause = 1

[state 0]
type = envshake
triggerall = time <= 65
trigger1 = time % 8 = 0
time = 10
ampl = -10
freq = 10

[state 0]
type = helper
trigger1 = (!time) || (time = 10)
stateno = 80020
id = 80020
postype = p1
facing = 1
ownpal = 1
size.mid.pos = 0, -25
size.head.pos = 30106, 1
size.xscale = .05
size.yscale = .05
supermovetime = 999
pausemovetime = 999
[state 0]
type = helper
trigger1 = time = 5
stateno = 80020
id = 80020
postype = p1
facing = 1
ownpal = 1
size.mid.pos = 0, -25
size.head.pos = 30107, 9
size.xscale = .05
size.yscale = .05
supermovetime = 999
pausemovetime = 999
[state 0]
type = helper
trigger1 = time = 15
stateno = 80020
id = 80020
postype = p1
facing = 1
ownpal = 1
size.mid.pos = 0, -25
size.head.pos = 30107, 4
size.xscale = .05
size.yscale = .05
supermovetime = 999
pausemovetime = 999
[state 0]
type = helper
trigger1 = time = 20
stateno = 80020
id = 80020
postype = p1
facing = 1
ownpal = 1
size.mid.pos = 0, -25
size.head.pos = 30107, 6
size.xscale = .05
size.yscale = .05
supermovetime = 999
pausemovetime = 999
[state 0]
type = helper
trigger1 = (time = 50) || (time = 60)
stateno = 80021
id = 80021
postype = p1
facing = 1
ownpal = 1
size.mid.pos = 0, -25
size.head.pos = 30106, 1
size.xscale = .05
size.yscale = .05
supermovetime = 999
pausemovetime = 999

[state 0]
type = destroyself
trigger1 = time >= 70

[statedef 80005]
type = u
anim = 6

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, 0

[state 0]
type = changeanim
triggerall = anim != 30108
trigger1 = numhelper(80015) = 1
value = 30108
ignorehitpause = 1

[state 0]
type = changeanim
triggerall = anim != 30109
trigger1 = numhelper(80015) = 0
value = 30109
ignorehitpause = 1

[state 0]
type = destroyself
triggerall = numhelper(80015) = 0
trigger1 = (anim = 30109) && (!animtime)
ignorehitpause = 1

[statedef 80015]
type = u
movetype = i
physics = n
anim = 6

[state 0]
type = poweradd
trigger1 = !time
value = 1000
ignorehitpause = 1
[state 0]
type = poweradd
trigger1 = time >= 90
value = cond((root, stateno = [1000, 3999]), -1, -6)
ignorehitpause = 1

[state 0]
type = playsnd
triggerall = name = "dio"
trigger1 = !time
value = s9850, 1
[state 0]
type = playsnd
triggerall = name = "dio"
trigger1 = !time
value = s9850, 1
[state 0]
type = playsnd
triggerall = name = "dio"
trigger1 = !time
value = s9850, 1

[state 0]
type = playsnd
triggerall = name = "jotaro kujo"
trigger1 = !time
value = s9850, 2
[state 0]
type = playsnd
triggerall = name = "jotaro kujo"
trigger1 = !time
value = s9850, 2
[state 0]
type = playsnd
triggerall = name = "jotaro kujo"
trigger1 = !time
value = s9850, 2

[state 0]
type = playsnd
triggerall = name = "sakuya izayoi"
trigger1 = !time
value = s9850, 4
[state 0]
type = playsnd
triggerall = name = "sakuya izayoi"
trigger1 = !time
value = s9850, 4
[state 0]
type = playsnd
triggerall = name = "sakuya izayoi"
trigger1 = !time
value = s9850, 4

[state 0]
type = playsnd
triggerall = name = "hitto"
trigger1 = !time
value = s9850, 6
[state 0]
type = playsnd
triggerall = name = "hitto"
trigger1 = !time
value = s9850, 6
[state 0]
type = playsnd
triggerall = name = "hitto"
trigger1 = !time
value = s9850, 6

[state 0]
type = playsnd
triggerall = name = "ainz ooal gown"
trigger1 = !time
value = s9850, 7
[state 0]
type = playsnd
triggerall = name = "ainz ooal gown"
trigger1 = !time
value = s9850, 7
[state 0]
type = playsnd
triggerall = name = "ainz ooal gown"
trigger1 = !time
value = s9850, 7

[state 0]
type = bgpalfx
trigger1 = 1
time = 1
invertall = 0
color = 0

[state 0]
type = changestate
triggerall = (name = "dio") || (name = "jotaru kujo") || (name = "sakuya izayoi") || (name = "ainz ooal gown")
trigger1 = (enemynear, name = "diavolo") && (enemynear, stateno = 1301)
value = 80016

[state 0]
type = changestate
triggerall = name = "dio"
trigger1 = (root, stateno = 1201) || (root, stateno = 1305) || (root, stateno = 1401) || (root, stateno = 1502) || (root, stateno = 3007)
value = 80016
[state 0]
type = changestate
triggerall = enemy, name = "dio"
trigger1 = (enemy, stateno = 1201) || (enemy, stateno = 3007)
value = 80016

[state 0]
type = changestate
triggerall = name = "jotaro kujo"
trigger1 = root, stateno = 1305
trigger2 = ((root, stateno = 1400) && (root, time >= 180))
trigger3 = ((root, stateno = 1500) && (root, time >= 200))
trigger4 = ((root, stateno = 3002) && (root, time >= 140))
value = 80016
ignorehitpause = 1

[state 0]
type = changestate
triggerall = name = "sakuya izayoi"
trigger1 = ((root, stateno = 3004) && (root, time >= 80))
value = 80016
ignorehitpause = 1

[state 0]
type = changestate
triggerall = name = "ainz ooal gown"
trigger1 = root, stateno = 1105 && time >= 80
value = 80016
ignorehitpause = 1

[state 0]
type = changestate
triggerall = root, stateno != [2999, 3100]
trigger1 = enemy, name != "johnny joestar"
trigger1 = ((time >= 180) && (power <= 500)) || (time >= 700) || (roundstate != 2) || ((root, movetype = h) && (time >= 50))
trigger2 = (enemy, name = "giorno giovanna") && (time >= 60)
trigger2 = (enemy, numhelper(30240) = 1) || (enemy, numhelper(30241) = 1) || (enemy, numhelper(30250) = 1)
trigger3 = (enemy, name = "yhwach") && (time >= 60)
trigger3 = (enemy, numhelper(1330) = 1) || (enemy, numhelper(1350) = 1)
trigger4 = (enemy, numhelper(80015) = 1)
value = 80016
ignorehitpause = 1

[statedef 80016]
type = u
movetype = i
physics = n
anim = 6

[state 0]
type = playsnd
triggerall = name != "hitto"
triggerall = name != "sakuya izayoi"
triggerall = name != "ainz ooal gown"
trigger1 = !time
value = s9850, 3
[state 0]
type = playsnd
triggerall = name != "hitto"
triggerall = name != "sakuya izayoi"
triggerall = name != "ainz ooal gown"
trigger1 = !time
value = s9850, 3
[state 0]
type = playsnd
triggerall = name != "hitto"
triggerall = name != "sakuya izayoi"
triggerall = name != "ainz ooal gown"
trigger1 = !time
value = s9850, 3

[state 0]
type = playsnd
triggerall = name = "sakuya izayoi"
trigger1 = !time
value = s9850, 5
[state 0]
type = playsnd
triggerall = name = "sakuya izayoi"
trigger1 = !time
value = s9850, 5

[state 0]
type = playsnd
triggerall = name = "hitto"
trigger1 = !time
value = s9850, 6
[state 0]
type = playsnd
triggerall = name = "hitto"
trigger1 = !time
value = s9850, 6

[state 0]
type = playsnd
triggerall = name = "ainz ooal gown"
trigger1 = !time
value = s9850, 8
[state 0]
type = playsnd
triggerall = name = "ainz ooal gown"
trigger1 = !time
value = s9850, 8

[state 0]
type = playsnd
triggerall = (name = "dio") && (root, stateno != [3000, 3999]) && (enemynear, numhelper(80015) = 0)
trigger1 = !time
value = s0, 28
[state 0]
type = playsnd
triggerall = (name = "dio") && (root, stateno != [3000, 3999]) && (enemynear, numhelper(80015) = 0)
trigger1 = !time
value = s0, 28
[state 0]
type = playsnd
triggerall = (name = "dio") && (root, stateno != [3000, 3999]) && (enemynear, numhelper(80015) = 0)
trigger1 = !time
value = s0, 28

[state 0]
type = playsnd
triggerall = (name = "jotaro kujo")
trigger1 = !time
value = s0, 31
[state 0]
type = playsnd
triggerall = (name = "jotaro kujo")
trigger1 = !time
value = s0, 31
[state 0]
type = playsnd
triggerall = (name = "jotaro kujo")
trigger1 = !time
value = s0, 31

[state 0]
type = bgpalfx
trigger1 = time <= 58
time = 1
invertall = 0
color = 0
[state 0]
type = pause
trigger1 = time <= 58 && (time % 2 = 0)
time = 2
movetime = 2
ignorehitpause = 1

[state 0]
type = explod
trigger1 = time = 58
anim = 30820
id = 30820
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = bgpalfx
trigger1 = time >= 58
time = 1
invertall = 0
color = 256
[state 0]
type = pause
trigger1 = time >= 58
time = 1
movetime = 1
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = time >= 59
ignorehitpause = 1

[statedef 80020]
type = u
anim = const(size.head.pos.x)
sprpriority = 9

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, const(size.head.pos.y)

[state 0]
type = bindtoparent
trigger1 = numhelper(80000)
pos = const(size.mid.pos.x), const(size.mid.pos.y)

[state 0]
type = envshake
trigger1 = !time
time = 10

[state 0]
type = angledraw
trigger1 = 1
scale = 1 + (time * .4), 1 + (time * .4)
ignorehitpause = 1

[state 0]
type = trans
trigger1 = time < 30
trans = add
alpha = 256 - (time * 6), 256

[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 0]
type = destroyself
trigger1 = !animtime

[statedef 80021]
type = u
anim = const(size.head.pos.x)
sprpriority = 9

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, const(size.head.pos.y)

[state 0]
type = bindtoparent
trigger1 = numhelper(80000)
pos = const(size.mid.pos.x), const(size.mid.pos.y)

[state 0]
type = envshake
trigger1 = !time
time = 10

[state 0]
type = angledraw
trigger1 = time < 28
scale = 15 - (time * .6), 15 - (time * .6)

[state 0]
type = angledraw
trigger1 = time >= 28
scale = 1.089 - (time * .0001), 1.089 - (time * .0001)

[state 0]
type = trans
trigger1 = time < 99
trans = add
alpha = 0 + (time * 6), 256

[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 0]
type = destroyself
trigger1 = time >= 25

[statedef 81000]
type = u
movetype = a
physics = s
velset = 0, 0
ctrl = 0
anim = 30703
sprpriority = 6

[state 0]
type = envshake
trigger1 = !time
time = 30
freq = 60
ampl = -5

[state 0]
type = playsnd
trigger1 = !time
value = s9104, 4
[state 0]
type = playsnd
trigger1 = !time
value = s9104, 4
[state 0]
type = playsnd
trigger1 = !time
value = s9600, 5

[state 0]
type = helper
trigger1 = !time
stateno = 30000
size.height = 30218
size.ground.front = 3
size.ground.back = 0
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 15)
size.head.pos = 0, (root, var(53))
size.xscale = .2
size.yscale = .2
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
trigger1 = !time
stateno = 30000
size.height = 30113
size.ground.front = 4
size.ground.back = 3
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
size.head.pos = 0, (root, var(53))
size.xscale = .2
size.yscale = .2
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = pause
trigger1 = time = [0, 10]
time = 2

[state 0]
type = hitdef
trigger1 = !movecontact
animtype = diagup
attr = s, st
damage = 30 + (random % 20), 25
hitflag = mafd
guardflag = ma
pausetime = 0, 6
hitsound = -1
guardsound = s9104, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -1.5, -6.5
air.velocity = -1.5, -6.5
fall = 1
envshake.time = 15
kill = 0
guard.kill = 0

[state 0]
type = helper
triggerall = p2movetype = h
trigger1 = movecontact = 1
stateno = 98010
id = 001
size.height = 0
size.head.pos = (random % 360), (root, var(53))
pos = 0, -24 + (random % 8)
postype = p2
ownpal = 1
size.xscale = .8
size.yscale = .8
ignorehitpause = 1
persistent = 0

[state 0]
type = destroyself
trigger1 = !animtime
ignorehitpause = 1

[statedef 81001]
type = u
movetype = a
physics = s
velset = 0, 0
ctrl = 0
anim = 30702
sprpriority = 6

[state 0]
type = bindtoroot
trigger1 = 1
pos = -5 / (const(size.ground.front)), - (floor(const(size.mid.pos.y) / const(size.height)))

[state 0]
type = envshake
trigger1 = !time
time = 15
ampl = -5
freq = 12

[state 0]
type = helper
trigger1 = !time
stateno = 81005
id = 81005
pos = 0, 0
postype = p1
supermovetime = 999
pausemovetime = 999

;=====================================
; base super dash fx
;=====================================
[state 0]
type = playsnd
triggerall = ishelper(30500)
trigger1 = !time
value = s9501, 6

[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30504
id = 30504
pos = 40, -25
postype = p1
facing = 1
bindtime = 6
removetime = -2
sprpriority = 5
scale = .25, .25
angle = 90
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = !time
anim = 30504
id = 30504
pos = 40, -25
postype = p1
facing = 1
bindtime = 6
removetime = -2
sprpriority = 4
scale = .25, .25
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
trans = sub

[state 0]
type = playsnd
triggerall = ishelper(30500)
trigger1 = time % 15 = 0
value = s9160, 6

[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = (time >= 2) && (time % 8 = 0)
anim = 30207
id = 30504
pos = 50, -15
postype = p1
facing = 1
bindtime = 0
removetime = -2
sprpriority = 6
scale = .3, .25
angle = 0
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1.5, 0
[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = (time >= 2) && (time % 8 = 0)
anim = 30207
id = 30504
pos = 50, -15
postype = p1
facing = 1
bindtime = 0
removetime = -2
sprpriority = 5
scale = .3, .25
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1.5, 0
trans = sub

[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = (time >= 2) && (time % 8 = 0)
anim = 30208
id = 30504
pos = 38, -26
postype = p1
facing = 1
bindtime = 3
removetime = -2
sprpriority = 4
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = (time >= 2) && (time % 8 = 0)
anim = 30208
id = 30504
pos = 38, -26
postype = p1
facing = 1
bindtime = 3
removetime = -2
sprpriority = 3
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
trans = sub

[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = root, stateno != 60
anim = 30504
id = 30504
pos = 40, -25
postype = p1
facing = 1
bindtime = 6
removetime = -2
sprpriority = 5
scale = .25, .25
angle = 90
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
vel = -1, 0
[state 0]
type = explod
triggerall = ishelper(30500)
trigger1 = root, stateno != 60
anim = 30504
id = 30504
pos = 40, -25
postype = p1
facing = 1
bindtime = 6
removetime = -2
sprpriority = 4
scale = .25, .25
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
vel = -1, 0
trans = sub
;=====================================

;=====================================
; db super dash fx
;=====================================
[state 0]
type = playsnd
triggerall = ishelper(30501)
trigger1 = !time
value = s9501, 0
[state 0]
type = playsnd
triggerall = ishelper(30501)
trigger1 = time = 5
value = s9501, 4

[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = time % 2 = 0
anim = 30505
id = 30505
pos = 25 + (random % 5), -40 + (random % 35)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .1, .1
angle = 90
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -.5, 0

[state 0]
type = explod
triggerall = name = "goku (ssb)"
triggerall = root, var(2) = 1
triggerall = ishelper(30501)
trigger1 = time % 8 = 0
anim = 30503
id = 30504
pos = 35, -20
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = -1
scale = .275, .325
angle = 90
ownpal = 1
remappal = 3, 2
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = name = "goku (ssb)"
triggerall = root, var(2) = 1
triggerall = ishelper(30501)
trigger1 = time % 8 = 0
anim = 30503
id = 30504
pos = 35, -20
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = -2
scale = .275, .325
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = time % 8 = 0
anim = 30503
id = 30504
pos = 35, -20
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 2
scale = .25, .3
angle = 90
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = time % 8 = 0
anim = 30503
id = 30504
pos = 35, -20
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 1
scale = .25, .3
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = removeexplod
triggerall = ishelper(30501)
trigger1 = root, stateno != 60
id = 30504

[state 0]
type = playsnd
triggerall = ishelper(30501)
trigger1 = time = 33
value = s9501, 2
[state 0]
type = playsnd
triggerall = ishelper(30501)
trigger1 = time = 33
value = s9501, 2
[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = root, stateno != 60
anim = 30301
id = 30301
pos = 10, (const(size.mid.pos.y)) - 5
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 4
scale = .275, .275
angle = 0
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = ishelper(30501)
trigger1 = root, stateno != 60
anim = 30301
id = 30301
pos = 10, (const(size.mid.pos.y)) - 5
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 3
scale = .275, .275
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
;=====================================

[state 0]
type = envshake
trigger1 = root, stateno != 60
time = 15
ampl = -5
freq = 12

[state 0]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1
[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = 1
ignorehitpause = 1

[state 0]
type = hitdef
trigger1 = !movecontact
animtype = medium
attr = a, na
damage = 20, 10
hitflag = mafd
guardflag = ma
pausetime = 0, 10
hitsound = s9104, 5
guardsound = s9104, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
ground.velocity = -2, (cond(root, pos y != 0, -7, 0))
air.velocity = -1, -7
envshake.time = 10
kill = 0
guard.kill = 0

[state 0]
type = helper
triggerall = p2movetype = h
trigger1 = movecontact = 1
stateno = 98010
id = 001
size.height = 0
size.head.pos = (random % 360), (root, var(53))
pos = 0, -28 + (random % 8)
postype = p2
ownpal = 1
size.xscale = .7
size.yscale = .7
ignorehitpause = 1
persistent = 0

[state 0]
type = destroyself
trigger1 = (root, stateno != 60) || (time = 60) || (root, movetype = h)
ignorehitpause = 1

[statedef 81005]
type = u
anim = 6

[state 0]
type = playsnd
trigger1 = time = 235
value = s9840, 8
[state 0]
type = playsnd
trigger1 = time = 235
value = s9840, 8
[state 0]
type = playsnd
trigger1 = time = 235
value = s9840, 8
[state 0]
type = helper
trigger1 = time = 235
stateno = 30000
size.height = 30859
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), (root, const(size.mid.pos.y) + 5)
size.head.pos = 0, (root, var(53))
size.xscale = .15
size.yscale = .15
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = destroyself
trigger1 = (roundstate != 2) || (time = 240)

[statedef 81006]
type = u
anim = 6

[state 0]
type = playsnd
trigger1 = !time
value = s9840, 3
[state 0]
type = playsnd
trigger1 = !time
value = s9840, 3
[state 0]
type = playsnd
trigger1 = !time
value = s9840, 3

[state 0]
type = explod
trigger1 = !time
anim = 30315
id = 30315
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320) * 3, (screenheight / 235) * 3
angle = 0
ownpal = 1
remappal = 3, 2
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = zoom
triggerall = teammode != simul
trigger1 = time <= 30
pos = ((pos x) / (1 / camerazoom * 2)) * camerazoom, (pos y + cond(root, statetype = a, 20, 0)) / (1 / camerazoom * 2)
lag = .6
scale = 1 / camerazoom * 2
ignorehitpause = 1
[state 0]
type = zoom
triggerall = teammode != simul
trigger1 = time = [30, 40]
pos = ((pos x) / (1 / camerazoom * 2)) * camerazoom, (pos y + cond(root, statetype = a, 40, 0)) / (1 / camerazoom * 2) * camerazoom
lag = .7
scale = 1
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = time = 585
value = s9840, 7
[state 0]
type = playsnd
trigger1 = time = 585
value = s9840, 7
[state 0]
type = helper
trigger1 = time = 585
stateno = 30000
size.height = 30802
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), (root, const(size.mid.pos.y) + 0)
size.head.pos = 0, (root, var(53))
size.xscale = .175
size.yscale = .175
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
trigger1 = time = 585
stateno = 30000
size.height = 30803
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), (root, const(size.mid.pos.y) + 0)
size.head.pos = 0, (root, var(53))
size.xscale = .175
size.yscale = .175
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = destroyself
trigger1 = (roundstate != 2) || (time = 600)

[statedef 81007]
type = u
anim = 6

[state 0]
type = playsnd
triggerall = !numhelper(98510)
triggerall = time = [10, 190]
trigger1 = time % 60 = 0
value = s9180, 9
[state 0]
type = helper
triggerall = !numhelper(98510)
triggerall = time = [10, 190]
trigger1 = time % 60 = 0
stateno = 30000
size.height = 30859
size.ground.front = 10
size.ground.back = 9
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (root, const(size.mid.pos.x) + 0), (root, const(size.mid.pos.y) + 0)
size.head.pos = 0, (root, var(53))
size.xscale = .15
size.yscale = .15
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 10

[state 0]
type = destroyself
trigger1 = (roundstate != 2) || (time >= 200) || (root, movetype = h)
trigger2 = (root, numhelper(30851)) || (root, numhelper(98510))

[statedef 98000]
type = u
anim = 30300
sprpriority = 4

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, 1

[state 0]
type = explod
trigger1 = !time
anim = anim
id = anim
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = !time
anim = 30315
id = 30315
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
scale = const(size.xscale) * .6, const(size.yscale) * 1
angle = var(1)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = destroyself
trigger1 = !animtime

[statedef 98001]
type = u
anim = 30313
sprpriority = 4

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (root, var(53))

[state 0]
type = explod
trigger1 = !time
anim = anim
id = anim
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = !time
anim = 30315
id = 30315
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 5
scale = const(size.xscale) * .5, const(size.yscale) * 1
angle = var(1)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = destroyself
trigger1 = !animtime

[statedef 98010]
type = u
anim = 6

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, const(size.head.pos.y)

[state 0]
type = helper
triggerall = enemynear, stateno = [120, 154]
trigger1 = !time
stateno = 98000
id = 98000
pos = 10, 0
postype = p1
ownpal = 1
size.xscale = const(size.xscale) * .4
size.yscale = const(size.yscale) * .4
ignorehitpause = 1
persistent = 0

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = const(size.xscale) >= .8
trigger1 = !time
anim = 30320
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 15
scale = const(size.xscale) * .375, const(size.yscale) * .375
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 2
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = const(size.xscale) >= .8
trigger1 = !time
anim = 30320
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .375, const(size.yscale) * .375
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

;=================
; normal spark
;=================
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30305
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 15
scale = const(size.xscale) * .375, const(size.yscale) * .375
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30305
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .375, const(size.yscale) * .375
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30305
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 14
scale = const(size.xscale) * .25, const(size.yscale) * .25
angle = (const(size.head.pos.x) + const(size.head.pos.x)) * 2
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30305
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .25, const(size.yscale) * .25
angle = (const(size.head.pos.x) + const(size.head.pos.x)) * 2
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30330
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 13
scale = const(size.xscale) * .425, const(size.yscale) * .425
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30330
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 12
scale = const(size.xscale) * .425, const(size.yscale) * .425
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30301
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 11
scale = const(size.xscale) * .225, const(size.yscale) * .225
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(001)) || (ishelper(020))
trigger1 = !time
anim = 30301
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 10
scale = const(size.xscale) * .225, const(size.yscale) * .225
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

;=================
; slash spark
;=================
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30315
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 10
scale = const(size.xscale) * .35, const(size.yscale) * .35
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30304
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 9
scale = const(size.xscale) * .2, const(size.yscale) * .2
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30304
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .2, const(size.yscale) * .2
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30304
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 8
scale = const(size.xscale) * .125, const(size.yscale) * .125
angle = (const(size.head.pos.x) + const(size.head.pos.x)) * 2
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30304
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .125, const(size.yscale) * .125
angle = (const(size.head.pos.x) + const(size.head.pos.x)) * 2
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = root, numhelper(30990)
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30313
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 8
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30313
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30305
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 7
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = const(size.head.pos.x)
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30305
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = const(size.head.pos.x)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30303
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 6
scale = const(size.xscale) * .25, const(size.yscale) * .25
angle = (const(size.head.pos.x) - const(size.head.pos.x))
ownpal = 0
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(011)) || (ishelper(021))
trigger1 = !time
anim = 30303
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .25, const(size.yscale) * .25
angle = (const(size.head.pos.x) - const(size.head.pos.x))
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

;=================
; blood spark
;=================
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(020)) || (ishelper(021))
trigger1 = !time
anim = 30321
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 7
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = 0
ownpal = 1
remappal = 3, 2
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
triggerall = (enemynear, stateno != [120, 154])
triggerall = (ishelper(020)) || (ishelper(021))
trigger1 = !time
anim = 30321
id = stateno
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 6
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = destroyself
trigger1 = !numexplod(stateno)
ignorehitpause = 1
removeexplods = 1

[statedef 98061]
type = u
sprpriority = 10

[state 0]
type = changeanim
trigger1 = 1
value = root, anim
elem = root, animelemno(0)
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = time % 10 = 0
time = -1
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1
[state 0]
type = turn
trigger1 = facing != root, facing
ignorehitpause = 1
[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = -1
ignorehitpause = 1
[state 0]
type = trans
trigger1 = 1
trans = add
alpha = 50 - ((time) * 5), 256
[state 0]
type = afterimage
trigger1 = !time
time = -1
trans = add
length = 5
timegap = 1
framegap = 1
palbright = 0 , 0 , 0
palcontrast = floor(root, fvar(35)), floor(root, fvar(36)), floor(root, fvar(37))
paladd = 0, 0, 0
palmul = .25, .25, .25

[state 0]
type = destroyself
trigger1 = time = 15
trigger2 = !selfanimexist(root, anim) 
trigger3 = root, movetype = h && ((root, stateno != [150, 155]) && (root, stateno != [5000, 5210]))
ignorehitpause = 1

[statedef 98100]
type = u
anim = 6

[state 0]
type = envshake
trigger1 = !time
time = 5
ampl = -5
freq = 25
[state 0]
type = playsnd
trigger1 = !time
value = s9160, 0
[state 0]
type = explod
trigger1 = !time
anim = 30206
id = 30206
pos = 5, -25
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .525, .175
angle = 90
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
[state 0]
type = explod
trigger1 = !time
anim = 30206
id = 30206
pos = 5, -25
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .5, .15
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = helper
triggerall = pos y = 0
trigger1 = !time
stateno = 98120
id = 98120
pos = 15, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999
size.xscale = .2
size.yscale = .25
ignorehitpause = 1
persistent = 0

[state 0]
type = destroyself
trigger1 = time = 15

[statedef 98120]
type = u
anim = 30203
velset = -1, 0
sprpriority = 3

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, 11

[state 0]
type = explod
trigger1 = !time
anim = anim
id = anim
pos = 0, 0
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 0
scale = const(size.xscale), const(size.yscale)
angle = var(1)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0
trans = sub

[state 0]
type = destroyself
trigger1 = !animtime

[statedef 98240]
type = u
movetype = i
physics = a
sprpriority = 4

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, 11

[state 0]
type = velset
trigger1 = !time
x = -2 + (random % 5)
y = -4 - (random % 4)

[state 0]
type = varadd
trigger1 = 1
v = 3
value = cond(vel x >= 0, -10 - (random % 5), 10 + (random % 5))

[state 0]
type = angledraw
trigger1 = 1
value = var(3)

[state 0]
type = varset
trigger1 = !time
v = 2
value = random % 4

[state 0]
type = changeanim
trigger1 = 1
value = 30110
elem = var(2)

[state 0]
type = changestate
trigger1 = (time > 5) && (pos y >= -10)
value = 98241

[statedef 98241]
type = u
movetype = i
physics = s
sprpriority = 3

[state 0]
type = playsnd
trigger1 = !time
value = s9103, 3

[state 0]
type = explod
trigger1 = !time
anim = 30100
id = 30100
pos = 0, 5
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 1
scale = .25, .25
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0

[state 0]
type = explod
trigger1 = !time
anim = 30101
id = 30101
pos = 0, 7
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .25, .25
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
[state 0]
type = explod
trigger1 = !time
anim = 30101
id = 30101
pos = 0, 7
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .25, .25
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 0
pausemovetime = 0
trans = sub

[state 0]
type = velset
trigger1 = !time
y = 0

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = angledraw
trigger1 = 1
value = var(3)

[state 0]
type = changeanim
trigger1 = 1
value = anim
elem = var(2)

[state 0]
type = varadd
trigger1 = time >= 20
v = 1
value = 25

[state 0]
type = trans
trigger1 = time >= 20
trans = addalpha
alpha = 256-var(1), 0+var(1)

[state 0]
type = destroyself
trigger1 = var(1) >= 256

[statedef 98510]
type = u
anim = 6

[state 0]
type = assertspecial
trigger1 = ishelper(98510)
flag = nobardisplay
flag2 = timerfreeze
flag3 = roundnotover
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = ishelper(98511)
flag = timerfreeze
flag2 = roundnotover
ignorehitpause = 1

[state 0]
type = bindtoroot
trigger1 = time <= 60
time = 1
facing = 0

[state 0]
type = zoom
triggerall = ishelper(98510)
trigger1 = time <= 60
pos = ((pos x) / (1 / camerazoom * 2)) * camerazoom, (pos y + cond(root, statetype = a, 20, 0)) / (1 / camerazoom * 2)
lag = .8
scale = 1 / camerazoom * 2
ignorehitpause = 1
[state 0]
type = zoom
triggerall = ishelper(98510)
trigger1 = time = [60, 70]
pos = ((pos x) / (1 / camerazoom * 2)) * camerazoom, (pos y + cond(root, statetype = a, 5, 0)) / (1 / camerazoom * 2) * camerazoom
lag = .9
scale = 1
ignorehitpause = 1

;[state 0]
;type = zoom
;triggerall = ishelper(98511)
;trigger1 = time <= 30
;pos = ((pos x) / (1 / camerazoom * 1.5)) * camerazoom, (pos y + cond(root, statetype = a, 20, 0)) / (1 / camerazoom * 1.5)
;lag = .8
;scale = 1 / camerazoom * 1.5
;ignorehitpause = 1
;[state 0]
;type = zoom
;triggerall = ishelper(98511)
;trigger1 = time = [30, 40]
;pos = ((pos x) / (1 / camerazoom * 1.5)) * camerazoom, (pos y + cond(root, statetype = a, 40, 0)) / (1 / camerazoom * 1.5) * camerazoom
;lag = .9
;scale = 1
;ignorehitpause = 1
;[state 0]
;type = zoom
;triggerall = ishelper(98512)
;triggerall = teammode != simul
;trigger1 = time = [0, 15] 
;pos = (pos x / 1.5) * camerazoom, (pos y / 1.5) * camerazoom
;scale = 1 + (time * .0125)
;ignorehitpause = 1
;[state 0] 
;type = zoom
;triggerall = ishelper(98512)
;triggerall = teammode != simul
;trigger1 = time = [15, 60]
;pos = (pos x / 1.5) * camerazoom, (pos y / 1.5) * camerazoom
;scale = 1.25
;ignorehitpause = 1

[state 0]
type = varadd
triggerall = !ishelper(98512)
triggerall = root, numhelper(80015) = 0
trigger1 = var(5) > -50
v = 5
value = -10

[state 0]
type = varadd
triggerall = ishelper(98512)
triggerall = root, numhelper(80015) = 0
trigger1 = var(5) > -30
v = 5
value = -10

[state 0]
type = bgpalfx
triggerall = root, numhelper(80015) = 0
trigger1 = 1
time = 2
add = var(5), var(5), var(5)

[state 0]
type = helper
triggerall = ishelper(98510)
triggerall = !numhelper(98520)
trigger1 = winko
stateno = 98520
id = 98520
pos = 0, 0
postype = p1
ownpal = 1
ignorehitpause = 1
persistent = 0

[state 0]
type = changestate
trigger1 = ((root, stateno = 0) || (root, stateno = 50) || (root, stateno = 190190)) || (root, movetype = h)
value = 98511

[statedef 98511]
type = u

;[state 0]
;type = poweradd
;trigger1 = ishelper(98510)
;value = -powermax

[state 0]
type = varadd
trigger1 = ishelper(98510)
fvar(7) = -1
ignorehitpause = 1

[state 0]
type = explod
trigger1 = ishelper(98510)
trigger1 = !time
anim = 30820
id = 30820
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = varadd
trigger1 = var(5) < 0
v = 5
value = 5

[state 0]
type = bgpalfx
triggerall = root, numhelper(80015) = 0
trigger1 = 1
time = 2
add = var(5), var(5), var(5)

[state 0]
type = destroyself
trigger1 = time >= cond(roundstate >= 3, 180, 10)

[statedef 98520]
type = u
anim = 6

[state 0]
type = assertspecial
trigger1 = 1
flag = nokosnd

[state 0]
type = pause
triggerall = time <= 30
trigger1 = time % 2 = 0
time = 1

[state 0]
type = bgpalfx
trigger1 = time <= 30
time = 1
color = 0
add = 256, 256, 256
mul = 256, 256, 256
sinadd = -256, -256, -256, 100
invertall = 1
ignorehitpause = 1

[state 0]
type = playsnd
trigger1 = time = 10
value = s9820, 0
persistent = 0
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = time = 10
value = s9820, 0
persistent = 0
ignorehitpause = 1

[state 0]
type = explod
trigger1 = time = 10
anim = 30812
id = 30812
pos = (screenwidth / 2), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 99
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 15
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = time = 10
anim = 30812
id = 30812
pos = (screenwidth / 2), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 98
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = time = 10
anim = 30812
id = 30812
pos = (screenwidth / 2), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 99
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 15
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = time = 10
anim = 30812
id = 30812
pos = (screenwidth / 2), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 98
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = playsnd
trigger1 = time = 15
value = s9820, 1
persistent = 0
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = time = 15
value = s9820, 1
persistent = 0
ignorehitpause = 1

[state 0]
type = explod
trigger1 = time = 15
anim = 30813
id = 30813
pos = (screenwidth / 2), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 100
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 15
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = time = 15
anim = 30813
id = 30813
pos = (screenwidth / 2), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 99
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = time = 15
anim = 30814
id = 30814
pos = ((screenwidth / 2) - 5), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = 30
sprpriority = 100
scale = (screenwidth / 1280), (screenheight / 720)
angle = 0
ownpal = 1
remappal = 3, 4
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
[state 0]
type = explod
trigger1 = time = 15
anim = 30814
id = 30814
pos = ((screenwidth / 2) - 5), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = 30
sprpriority = 99
scale = (screenwidth / 1280), (screenheight / 720)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
trans = sub

[state 0]
type = explod
trigger1 = time = 15
anim = 30815
id = 30815
pos = ((screenwidth / 2) - 5), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 100
scale = (screenwidth / 1280), (screenheight / 720)
angle = 0
ownpal = 1
remappal = 3, 4
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = time = 15
anim = 30815
id = 30815
pos = ((screenwidth / 2) - 5), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = 140
sprpriority = 99
scale = (screenwidth / 1280), (screenheight / 720)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = time = 15
anim = 30816
id = 30816
pos = ((screenwidth / 2) - 5), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = -2
sprpriority = 100
scale = (screenwidth / 720), (screenheight / 480)
angle = 0
ownpal = 1
remappal = 3, 2
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
[state 0]
type = explod
trigger1 = time = 15
anim = 30816
id = 30816
pos = ((screenwidth / 2) - 5), (screenheight / 2)
postype = left
facing = 1
bindtime = 1
removetime = 140
sprpriority = 99
scale = (screenwidth / 720), (screenheight / 480)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
trans = sub

[state 0]
type = destroyself
trigger1 = time = 90

[statedef 99005]
type = u
movetype = i
physics = n
ctrl = 0
anim = 30105
sprpriority = 10

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (root, var(53))

[state 0]
type = angledraw
trigger1 = 1
scale = 1 + time * .1, 1 + time * .1

[state 0]
type = envshake
trigger1 = !time
time = 30
ampl = -2

[state 0]
type = playsnd
trigger1 = !time
value = s9600, 2
[state 0]
type = playsnd
trigger1 = !time
value = s9600, 2
[state 0]
type = playsnd
trigger1 = !time
value = s9600, 2

[state 0]
type = helper
triggerall = root, stateno = 115
trigger1 = animelemtime(2) = 0
stateno = 30710
id = 30710
pos = 0, 20
postype = p1
facing = 1
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
triggerall = root, stateno = 115
trigger1 = animelemtime(2) = 0
stateno = 30710
id = 30710
pos = 0, 20
postype = p1
facing = -1
ignorehitpause = 1
persistent = 0

[state 0]
type = varset
trigger1 = !time
v = 13
value = 150

[state 0]
type = varadd
trigger1 = time >= 20
v = 13
value = 9

[state 0]
type = allpalfx
trigger1 = time > 0
time = 3
color = var(13)

[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow

[state 0]
type = destroyself
trigger1 = !animtime

[statedef 99010]
type = u
sprpriority = 16

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (root, var(53))
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = 1
pos = (root, const(size.head.pos.x)), -(root, const(size.height) + 5)
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow
[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = trans
trigger1 = time <= 15
trans = addalpha
alpha = 0 + (time * 25), 256 - (time * 25)
[state 0]
type = angledraw
trigger1 = 1
value = cond(vel x != 0, - (atan(vel y / vel x) * (const(size.air.back) * 1.25) / pi), 0)
scale = 1, 1 + (sin((time / 20.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
triggerall = !numpartner
trigger1 = root, ailevel = 0
value = 30910
elem = 0 + (root, id - (55 + cond(teamside = 2, (enemy, numpartner), 0)))
[state 0]
type = changeanim
triggerall = numpartner
triggerall = teamside = 1
trigger1 = root, ailevel = 0
value = 30910
elem = cond((root, id = 56), 0, cond((root, id = 57), 3, cond((root, id = 58), 5, 0)))
[state 0]
type = changeanim
triggerall = numpartner
triggerall = teamside = 2
trigger1 = root, ailevel = 0
value = 30910
elem = cond((root, id = (57 + (enemy, numpartner))), 2, cond(root, id = (58 + (enemy, numpartner)), 4, cond((root, id = (59 + (enemy, numpartner))), 6, 0)))

[state 0]
type = changeanim
trigger1 = root, ailevel
value = 30910
elem = 7

[state 0]
type = changestate
trigger1 = ((!ailevel) && ((time = 120) || (root, life = 0) || (roundstate != 2)))
trigger2 = ((ailevel) && (root, life = 0) || (roundstate != 2))
trigger3 = (numhelper(81007)) && (numhelper(98510))
value = 99011

[statedef 99011]
type = u
velset = 0, -0.25
sprpriority = 16

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, (root, var(53))
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = 1
pos = (root, const(size.head.pos.x)), -(root, const(size.height) + 5)
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow
[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (time * 25), 0 + (time * 25)
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = (time >= 10) || (root, movetype = h)
ignorehitpause = 1

[statedef 99015]
type = u
sprpriority = 10

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, 0
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = 1
pos = 0, 6
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow
[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = trans
trigger1 = time <= 15
trans = addalpha
alpha = 0 + (time * 25), 256 - (time * 25)
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0
[state 0]
type = angledraw
trigger1 = 1
value = cond(vel x != 0, - (atan(vel y / vel x) * (const(size.air.back) * 1.25) / pi), 0)
scale = 1, 1 + (sin((time / 20.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = numhelper(30990)
value = 30911
elem = 0 + ((helper(30990), var(1)))

[state 0]
type = changestate
triggerall = time >= 90
trigger1 = (root, life = 0) || (roundstate != 1) || (root, anim = 6)
value = 99016

[statedef 99016]
type = u
velset = 0, -0.25
sprpriority = 10

[state 0]
type = remappal
trigger1 = 1
source = 3, 0
dest = 3, 0
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = 1
pos = 0, 6
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = 1
flag = noshadow
[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 - (time * 25), 0 + (time * 25)
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = (time >= 10) || (root, movetype = h) || (root, anim = 6) || (root, anim = 9999)
ignorehitpause = 1

[statedef 99030]
type = u
physics = s
velset = 0, 0
ctrl = 0
anim = 40 + (var(11))
sprpriority = 1

[state 0]
type = playsnd
trigger1 = !time
value = s180, 0
[state 0]
type = playsnd
trigger1 = !time
value = s180, 0

[state 0]
type = screenbound
trigger1 = time = [0, 7]
value = 0

[state 0]
type = envshake
trigger1 = time = 4
time = 5
ampl = -5
freq = 25
[state 0]
type = playsnd
trigger1 = time = 4
value = s5, 22

[state 0]
type = explod
trigger1 = time = 4
anim = 30206
id = 30206
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .425, .175
angle = 0
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
[state 0]
type = explod
trigger1 = time = 4
anim = 30206
id = 30206
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .4, .15
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = changestate
trigger1 = enemy, stateno = 99031
value = 99035

[statedef 99031]
type = u
physics = s
velset = 0, 0
ctrl = 0
anim = 40 + (var(11))
sprpriority = 1

[state 0]
type = playsnd
trigger1 = !time
value = s180, 0
[state 0]
type = playsnd
trigger1 = !time
value = s180, 0

[state 0]
type = screenbound
trigger1 = time = [0, 7]
value = 0

[state 0]
type = envshake
trigger1 = time = 4
time = 5
ampl = -5
freq = 25
[state 0]
type = playsnd
trigger1 = time = 4
value = s9180, 3
[state 0]
type = playsnd
trigger1 = time = 4
value = s9180, 3

[state 0]
type = explod
trigger1 = time = 4
anim = 30206
id = 30206
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .425, .175
angle = 0
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
[state 0]
type = explod
trigger1 = time = 4
anim = 30206
id = 30206
pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .4, .15
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = changestate
trigger1 = !animtime
value = 99035

[statedef 99035]
type = l
ctrl = 0

[state 0]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = roundnotover
ignorehitpause = 1

[state 0]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 0]
type = destroyself
trigger1 = ishelper

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1

[state 0]
type = changeanim
trigger1 = time % 2 = 0
value = cond((numhelper(99036) || enemy, numhelper(99036)), 6, 110 + (var(11)))

[state 0]
type = playsnd
trigger1 = time = 30
value = s90, 0
[state 0]
type = playsnd
trigger1 = time = 30
value = s90, 0
[state 0]
type = playsnd
trigger1 = time = 30
value = s90, 0

[state 0]
type = null
trigger1 = var(5) := (cond(random % 2 = 0, 90, cond(random % 2 = 0, 70, 110)))
trigger1 = var(6) := (const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(7) := (const(size.mid.pos.y) + (-10 + (random % 20)))
[state 0]
type = explod
triggerall = !numexplod(30210)
trigger1 = ((teamside = 1) && (time % 15 = 0))
trigger2 = ((teamside = 2) && (enemy, numexplod(30210)))
anim = 30210
id = 30210
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 9
scale = .3, .15
angle = var(5) + cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (-75 / pi)), 0)
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -2, 0
[state 0]
type = explod
triggerall = !numexplod(30210)
trigger1 = ((teamside = 1) && (time % 15 = 0))
trigger2 = ((teamside = 2) && (enemy, numexplod(30210)))
anim = 30210
id = 30210
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 10
scale = .3, .15
angle = var(5) + cond(vel x != 0, ((atan((-1 * vel y) / vel x)) * (-75 / pi)), 0)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
vel = -2, 0

[state 0]
type = helper
triggerall = teamside = 1
triggerall = time = [5, 130]
trigger1 = time % 15 = 0
stateno = 99036
id = 99036
pos = 0, 0
postype = p1
facing = 1
ownpal = 1
ignorehitpause = 1

[state 0]
type = posset
triggerall = teamside = 1
triggerall = time = [0, 135]
triggerall = pos y = [-160, 5]
trigger1 = time % 15 = 0
x = -150 + (random % 300)
y = -15 - (random % 150)
ignorehitpause = 1
[state 0]
type = velset
trigger1 = teamside = 2
x = p2bodydist x - (35 - (random % 10))
y = p2bodydist y

[state 0]
type = posset
trigger1 = time = 99
y = -50
ignorehitpause = 1

[state 0]
type = selfstate
trigger1 = time >= cond(teamside = 2, 100, 102)
value = 44

[statedef 99036]
type = u
anim = 6

[state 0]
type = bindtoroot
trigger1 = !time
pos = (root, const(size.mid.pos.x) + 25), (root, const(size.mid.pos.y) + 0)
time = 1

[state 0]
type = null
trigger1 = var(5) := 0 + (random % 360)
ignorehitpause = 1

[state 0]
type = envshake
trigger1 = !time
time = 15
ampl = -5
[state 0]
type = playsnd
triggerall = teamside = 1
trigger1 = !time
value = s9104, 5
[state 0]
type = explod
trigger1 = !time
anim = 30803
id = 30803
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 25
scale = .6, .6
angle = var(5)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
trigger1 = !time
anim = 30301
id = 30301
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 22
scale = .25, .25
angle = var(5)
ownpal = 1
remappal = 3, 15
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30301
id = 30301
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 21
scale = .25, .25
angle = var(5)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = !time
anim = 30333
id = 30333
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 20
scale = .2, .2
angle = var(5)
ownpal = 1
remappal = 3, 15
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30333
id = 30333
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 19
scale = .2, .2
angle = var(5)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = destroyself
trigger1 = time >= 13

[statedef 99050]
type = u
movetype = h
physics = n
anim = 5050 + (var(10))
velset = 0, 0
ctrl = 0
sprpriority = 1
facep2 = 1

[state 0]
type = velset
trigger1 = time >= 0
x = enemy, const(velocity.run.back.x) * 3.2
y = 0
ignorehitpause = 1

[state 0]
type = posset
trigger1 = pos y >= 0
y = 0

[state 0]
type = playerpush
trigger1 = 1
value = 0

[state 0]
type = changestate
trigger1 = backedgebodydist <= 5
value = 99051

[statedef 99051]
type = u
movetype = h
physics = n
velset = 0, 0
ctrl = 0
sprpriority = 1

[state 0]
type = lifeadd
trigger1 = !time
value = -15

[state 0]
type = envshake
trigger1 = !time
time = 15
ampl = -5
freq = 25

[state 0]
type = changeanim
trigger1 = 1
value = 5020 + (cond(animexist(6300) && (var(10)), (var(10)), 0))

[state 0]
type = selfstate
trigger1 = time >= 10
value = 5050

[statedef 99055]
type = u
movetype = i
physics = n
anim = 6
ctrl = 0

[state 0]
type = playsnd
trigger1 = !time
value = s9100, 0
[state 0]
type = playsnd
trigger1 = !time
value = s9100, 0

[state 0]
type = posset
trigger1 = 1
y = 0

[state 0]
type = explod
trigger1 = time % 2 = 0
anim = 30206
id = 30206
pos = 60 - (random % 40), -10 - (random % 30)
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .25, .1
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 4, 0

[state 0]
type = explod
trigger1 = (pos y = 0) && ((time = 0) || (time % 6 = 0))
anim = 30203
id = 30203
pos = 0, 0
postype = p2
facing = -1
bindtime = 1
removetime = -2
sprpriority = 10
scale = .15, .2
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1.5, 0
[state 0]
type = explod
trigger1 = (pos y = 0) && ((time = 0) || (time % 6 = 0))
anim = 30203
id = 30203
pos = 0, 0
postype = p2
facing = -1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .15, .2
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1.5, 0
trans = sub

[state 0]
type = destroyself
trigger1 = enemy, stateno != 99050

[statedef 99056]
type = u
movetype = i
physics = n
anim = 6
ctrl = 0
sprpriority = 2

[state 0]
type = playsnd
trigger1 = !time
value = s9103, 4
persistent = 0
[state 0]
type = playsnd
trigger1 = !time
value = s9103, 4
persistent = 0

[state 0]
type = explod
trigger1 = !time
anim = 30101
id = 30101
pos = -15, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .5, .5
angle = -90
ownpal = 1
remappal = 3, 0
removeongethit = 0
ignorehitpause = 0
supermovetime = 999
pausemovetime = 999
vel = .25, 0
trans = sub
persistent = 0
[state 0]
type = explod
trigger1 = !time
anim = 30101
id = 30101
pos = -15, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .5, .5
angle = -90
ownpal = 1
remappal = 3, 11
removeongethit = 0
ignorehitpause = 0
supermovetime = 999
pausemovetime = 999
vel = .25, 0
persistent = 0

[state 0]
type = explod
trigger1 = !time
anim = 30102
id = 30102
pos = -20, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .5, .5
angle = -90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
persistent = 0
[state 0]
type = explod
trigger1 = !time
anim = 30102
id = 30102
pos = -20, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .5, .5
angle = -90
ownpal = 1
remappal = 3, 3
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = destroyself
trigger1 = time = 60

[statedef 99060]
type = u
movetype = h
physics = n
ctrl = 0
anim = 6
sprpriority = 1

[state 0]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = cond(enemy, facing = -1, -5, -5)
y = 4

[state 0]
type = changeanim
trigger1 = 1
value = 5100 + (cond(animexist(6300) && (var(10)), (var(10)), 0))
elem = 1

[state 0]
type = changestate
trigger1 = pos y > 0
value = 99061

[statedef 99061]
type = l
movetype = h
physics = n
ctrl = 0
sprpriority = 1
facep2 = 1

[state 0]
type = removeexplod
trigger1 = !time
id = 98100

[state 0]
type = lifeadd
trigger1 = !time
value = -10
kill = 0

[state 0]
type = posset
trigger1 = !time
y = 0

[state 0]
type = envshake
trigger1 = !time
time = 15
ampl = -5
freq = 25
[state 0]
type = playsnd
trigger1 = !time
value = s9103, 5
[state 0]
type = explod
trigger1 = !time
anim = 30101
id = 30101
pos = -20, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 6
scale = .6, .6
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30101
id = 30101
pos = -20, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .6, .6
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = explod
trigger1 = !time
anim = 30102
id = 30102
pos = -20, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .5, .5
angle = 0
ownpal = 1
remappal = 3, 3
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
[state 0]
type = explod
trigger1 = !time
anim = 30102
id = 30102
pos = -20, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .5, .5
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub
persistent = 0
[state 0]
type = explod
trigger1 = !time
anim = 30100
id = 30100
pos = -20, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .5, .5
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = velset
trigger1 = !time
x = -6
y = 0

[state 0]
type = velset
trigger1 = time = 5
x = -3
y = -2

[state 0]
type = assertspecial
trigger1 = 1
flag = noautoturn

[state 0]
type = changestate
trigger1 = backedgebodydist <= 5
value = 99050
persistent = 0

[state 0]
type = changeanim
trigger1 = time <= 15
value = 5100 + (cond(animexist(6300) && (var(10)), (var(10)), 0))
elem = 1

[state 0]
type = selfstate
trigger1 = time >= 15
value = 5050

[statedef 99065]
type = u
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 6
sprpriority = 2

[state 0]
type = playsnd
trigger1 = !time
value = s9100, 1
persistent = 0
[state 0]
type = playsnd
trigger1 = !time
value = s9100, 1
persistent = 0

[state 0]
type = explod
trigger1 = (time % 2 = 0) && (time <= 10)
anim = 30206
id = 30206
pos = 10 - (random % 30), -5 - (random % 20)
postype = p2
facing = 1
bindtime = 1
removetime = -2
sprpriority = cond(random < 500, 0, 3)
scale = .3, .1
angle = -75
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = destroyself
trigger1 = time = 50

[statedef 99066]
type = u
movetype = i
physics = n
anim = 6
ctrl = 0

[state 0]
type = posadd
trigger1 = 1
x = p2dist x

[state 0]
type = posset
trigger1 = 1
y = 0

[state 0]
type = explod
trigger1 = ((pos y = 0) && (time % 4 = 0)) && (time <= 12)
anim = 30203
id = 30203
pos = -15, 3
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 0
scale = .15, .2
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 2, 0
trans = sub
persistent = 0
[state 0]
type = explod
trigger1 = ((pos y = 0) && (time % 4 = 0)) && (time <= 12)
anim = 30203
id = 30203
pos = -15, 3
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .15, .2
angle = 0
ownpal = 1
remappal = 3, 11
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = 2, 0
persistent = 0

[state 0]
type = destroyself
trigger1 = enemy, stateno != 99061

[statedef 99070]
type = u
anim = 6

[state 0]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = roundnotover
ignorehitpause = 1

[state 0]
type = pause
trigger1 = ((time > 0) && (time < 30)) && (time % 3 = 0)
time = 2
movetime = 2

[state 0]
type = zoom
triggerall = root, numhelper(98511) = 0
trigger1 = time <= 30
pos = ((pos x) / (1 / camerazoom * 1.5)) * camerazoom, ((pos y + cond(root, pos y != 0, 20, 0)) / (1 / camerazoom * 1.5)) * camerazoom
lag = .6
scale = 1.2 / camerazoom * 1.5
ignorehitpause = 1

[state 0]
type = destroyself
triggerall = root, numhelper(98511) = 0
trigger1 = time >= 300
ignorehitpause = 1

[state 0]
type = zoom
triggerall = root, numhelper(98511)
trigger1 = 1
pos = ((pos x) / (1 / camerazoom * 1.5)) * camerazoom, ((pos y + cond(root, pos y != 0, 20, 0)) / (1 / camerazoom * 1.5)) * camerazoom
lag = .6
scale = 1.2 / camerazoom * 1.5
ignorehitpause = 1

[state 0]
type = null
triggerall = root, numhelper(98511)
trigger1 = !time && !var(0)
trigger1 = var(0) := (root, stateno)
ignorehitpause = 1
[state 0]
type = destroyself
triggerall = root, numhelper(98511)
trigger1 = time && (root, stateno) != [var(0), var(0) + 10]
trigger2 = time >= 500
ignorehitpause = 1

[statedef 99080]
type = u
anim = 6

[state 0]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1, 1

[state 0]
type = bindtoroot
trigger1 = 1
pos = (const(size.mid.pos.x) + 30), (const(size.mid.pos.y) + 0)

[state 0]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = roundnotover
flag3 = nobardisplay
ignorehitpause = 1

[state 0]
type = explod
trigger1 = !time
anim = 30315
id = 30315
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320) * 3, (screenheight / 235) * 3
angle = 0
ownpal = 1
remappal = 3, 2
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = bgpalfx
trigger1 = time <= 30
time = 1
invertall = 1
add = 0, -128, -128
color = 128
ignorehitpause = 1

[state 0]
type = pause
trigger1 = ((time > 0) && (time < 30)) && (time % 3 = 0)
time = 2
movetime = 2

[state 0]
type = zoom
trigger1 = 1
pos = ((pos x) / (1 / camerazoom * 1.2)) * camerazoom, (pos y + cond(root, statetype = a, 30, 0)) / (1 / camerazoom * 1.2)
lag = .5
scale = 1.2 / camerazoom * 1.2
ignorehitpause = 1

[state 0]
type = changestate
trigger1 = time >= 90
value = 99081
ignorehitpause = 1

[statedef 99081]
type = u
anim = 6

[state 0]
type = bindtoroot
trigger1 = 1
pos = (const(size.mid.pos.x) + 30), (const(size.mid.pos.y) + 0)

[state 0]
type = assertspecial
trigger1 = 1
flag = timerfreeze
flag2 = roundnotover
flag3 = nobardisplay
ignorehitpause = 1

[state 0]
type = explod
trigger1 = !time
anim = 30820
id = 30820
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = zoom
trigger1 = time <= 15
pos = ((pos x) / (1 / camerazoom * 1.5)) * camerazoom, (pos y + cond(root, statetype = a, 30, 0)) / (1 / camerazoom * 1.5) * camerazoom
lag = .9
scale = 1
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = time >= 15

[statedef 99090]
type = u
movetype = h
physics = n
velset = 0, 0

[state 0]
type = destroyself
trigger1 = ishelper
ignorehitpause = 1

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, np, nt, sa, sp, st, ha, hp ,ht
time = 1
ignorehitpause = 1

[state 0]
type = changeanim
trigger1 = pos y != 0
value = anim + (cond(animexist(6300) && (var(10)), (var(10)), 0))
elem = 1
[state 0]
type = changeanim
trigger1 = pos y = 0
value = anim + (cond(animexist(6300) && (var(10)), (var(10)), 0))
elem = 1

[state 0]
type = explod
triggerall = numhelper(99091)
triggerall = life <= 100
trigger1 = time = 1
anim = 30820
id = 30820
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = 10
sprpriority = 40
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
[state 0]
type = explod
triggerall = numhelper(99091)
triggerall = life <= 100
triggerall = !numexplod(30826)
trigger1 = time = 1
anim = 30826
id = 30826
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = -200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 12
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = explod
triggerall = numhelper(99091)
trigger1 = !time
anim = anim + (cond(animexist(6300) && (var(10)), (var(10)), 0))
id = 5300
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -1
sprpriority = 3
scale = const(size.xscale), const(size.yscale)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 0
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = addalpha
alpha = 0, 0
[state 0]
type = playsnd
triggerall = numhelper(99091)
trigger1 = time = 1
value = s9103, 1
[state 0]
type = playsnd
triggerall = numhelper(99091)
trigger1 = time = 1
value = s9103, 1
[state 0]
type = playsnd
triggerall = numhelper(99091)
trigger1 = time = 1
value = s9103, 1
[state 0]
type = explod
triggerall = numhelper(99091)
trigger1 = time = 1
anim = 30320
id = 30320
pos = (const(size.mid.pos.x) + 10), (const(size.mid.pos.y) + 0)
postype = p1
facing = -1
bindtime = 1
removetime = -2
sprpriority = 52
scale = const(size.xscale) * .5, const(size.yscale) * .5
angle = -35 + (random % 70)
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = addalpha
alpha = 0, 0
remappal = 3, 0
vel = -.025, -.025
[state 0]
type = lifeadd
trigger1 = time = 4
value = -25
kill = 1
ignorehitpause = 1
[state 0]
type = removeexplod
trigger1 = time >= 4
id = 5300
ignorehitpause = 1

[state 0]
type = velset
trigger1 = !time
x = gethitvar(xvel) * facing / 3
y = gethitvar(yvel) / 5

[state 0]
type = selfstate
trigger1 = time >= 15
value = 5050
ignorehitpause = 1

[statedef 99091]
type = u
anim = 6

[state 0]
type = destroyself
trigger1 = (time >= 3000) || (root, life > 0)

[statedef 99100]
type = u
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 6
sprpriority = -1

[state 0]
type = bindtoroot
trigger1 = 1
pos = 0, 0

[state 0]
type = playsnd
trigger1 = !time
value = s9600, 4

[state 0]
type = helper
trigger1 = !time
stateno = 99005
id = 30105
pos = 0, -25
postype = p1
ownpal = 1
size.xscale = .1
size.yscale = .1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = helper
triggerall = cond((name = "enel"), (root, stateno != [1500, 1501]), 1)
trigger1 = time % 8 = 0
stateno = 30902
id = 30902
ownpal = 1
supermovetime = 99999
pausemovetime = 99999
ignorehitpause = 1
[state 0]
type = helper
triggerall = root, stateno != [3000, 4999]
triggerall = cond((name = "enel"), (root, stateno != [1500, 1501]), 1)
trigger1 = time % 8 = 0
stateno = 98061
id = 98061
pos = 0, 0
postype = p1
persistent = 1
supermovetime = 60
pausemovetime = 60

[state 0]
type = poweradd
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 1)
triggerall = root, numhelper(98511) = 0
triggerall = (root, power < root, powermax)
trigger1 = time % 80 = 0
value = 125 + (random % 50)
ignorehitpause = 1
[state 0]
type = playsnd
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 1)
triggerall = root, numhelper(98511) = 0
triggerall = (root, power < root, powermax)
trigger1 = time % 80 = 0
value = s9500, 0
[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 1)
triggerall = root, numhelper(98511) = 0
triggerall = (root, power < root, powermax)
trigger1 = time % 80 = 0
anim = 30500
id = 99100
pos = ((root, const(size.mid.pos.x) - 4) + (random % 8)), ((root, const(size.mid.pos.y) + 10) + (random % 10))
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 10
scale = .1, .1
angle = 0
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
alpha = 200, 256
vel = 0, 0
persistent = 1

[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 2)
trigger1 = time % 20 = 0
anim = 30324
id = 99100
pos = 0 + (random % 5), -12 - (random % 24)
postype = p1
facing = cond(random % 1 = 0, 1, 0)
vfacing = cond(random % 1 = 0, 1, 0)
bindtime = -1
removetime = -2
sprpriority = 3
scale = .3, .3
angle = 0 + (random % 360)
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = helper
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 4)
triggerall = numhelper(30505) = 0
trigger1 = !time
stateno = 30505
id = 30505
pos = 0, 0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 6)
trigger1 = time % 10 = 0
anim = 30206
id = 99100
pos = -12 + (random % 24), -25 + (random % 25)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .25, .075
angle = -25 + (random % 50)
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
vel = 0, -1

[state 0]
type = removeexplod
trigger1 = (root, stateno = [5100, 5120]) || (root, statetype = l)
trigger2 = root, movetype = h && ((root, stateno != [150, 155]) && (root, stateno != [5000, 5210]))
id = 99100

[state 0]
type = destroyself
trigger1 = (roundstate != 2) || (root, life = 0) || (time >= 1900)
ignorehitpause = 1

[statedef 99110]
type = u
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 30701
sprpriority = 3

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = -1
ignorehitpause = 1

[state 0]
type = playerpush
trigger1 = 1
value = 0

[state 0]
type = posadd
trigger1 = 1
x = p2dist x - 1 * facing
y = p2bodydist y - 15

[state 0]
type = assertspecial
trigger1 = 1
flag = unguardable

[state 0]
type = statetypeset
trigger1 = numexplod(99110) = 0
movetype = i
[state 0]
type = statetypeset
triggerall = root, numhelper(98510) = 0
trigger1 = numexplod(99110) = 1
movetype = a

[state 0]
type = explod
triggerall = time >= 10
trigger1 = time % 90 = 0
anim = 6
id = 99110
pos = 0, 0
postype = p2
bindtime = -1
removetime = -2
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = hitdef
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 3)
triggerall = p2movetype = i
trigger1 = numexplod(99110) = 1
animtype = hard
attr = sca, np
hitflag = maf
guardflag = ma
damage = 10, 10
pausetime = 0, 10
hitsound = s9103, 1
guardsound = s9104, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
envshake.time = 5
fall = 0
palfx.time = 15
palfx.add = 0, -128, -128

[state 0]
type = null
trigger1 = var(6) := (enemynear, const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(7) := (enemynear, const(size.mid.pos.y) + (-10 + (random % 15)))
[state 0]
type = helper
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 3)
triggerall = p2movetype = h
trigger1 = movecontact = 1
stateno = 98010
id = 001
size.height = 0
size.head.pos = (random % 360), 2
pos = var(6), var(7)
postype = p2
ownpal = 1
size.xscale = .55
size.yscale = .55
ignorehitpause = 1
persistent = 10
[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 3)
triggerall = p2movetype = h
trigger1 = movecontact = 1
anim = 30320
id = 30320
pos = var(6), var(7)
postype = p2
facing = 1
bindtime = 10
removetime = -2
sprpriority = 4
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, 2
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 3)
triggerall = p2movetype = h
trigger1 = movecontact = 1
anim = 30320
id = 30320
pos = var(6), var(7)
postype = p2
facing = 1
bindtime = 10
removetime = -2
sprpriority = 3
scale = .3, .3
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
trans = sub

[state 0]
type = hitdef
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 5)
triggerall = p2movetype = i
trigger1 = numexplod(99110) = 1
animtype = hard
attr = sca, np
hitflag = maf
guardflag = ma
damage = 10, 10
pausetime = 0, 10
hitsound = s9400, 3
guardsound = s9104, 0
ground.type = high
ground.slidetime = 12
ground.hittime = 12
envshake.time = 5
givepower = -(powermax / 10)
fall = 0
kill = 0
guard.kill = 0
palfx.time = 10
palfx.add = floor(root, fvar(35) + (floor(sin((time / 6.0) * (pi)) * (root, fvar(35))))), floor(root, fvar(36) + (floor(sin((time / 6.0) * (pi)) * (root, fvar(36))))), floor(root, fvar(37) + (floor(sin((time / 6.0) * (pi)) * (root, fvar(37)))))

[state 0]
type = helper
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 5)
triggerall = p2movetype = h
trigger1 = movecontact = 1
stateno = 98010
id = 001
size.height = 0
size.head.pos = (random % 360), (root, var(53))
pos = var(6), var(7)
postype = p2
ownpal = 1
size.xscale = .55
size.yscale = .55
ignorehitpause = 1
persistent = 10
[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 5)
triggerall = p2movetype = h
trigger1 = movecontact = 1
anim = 30322
id = 30322
pos = var(6), var(7)
postype = p2
facing = 1
bindtime = 10
removetime = -2
sprpriority = 4
scale = .2, .2
angle = 90
ownpal = 1
remappal = 3, (root, var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
[state 0]
type = explod
triggerall = numhelper(30990)
triggerall = ((helper(30990), var(1)) = 5)
triggerall = p2movetype = h
trigger1 = movecontact = 1
anim = 30322
id = 30322
pos = var(6), var(7)
postype = p2
facing = 1
bindtime = 10
removetime = -2
sprpriority = 3
scale = .2, .2
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 10
pausemovetime = 10
trans = sub

[state 0]
type = destroyself
trigger1 = (roundstate != 2) || (time >= 500)
removeexplods = 1

[statedef 99120]
type = u
movetype = i
physics = n
velset = 0, 0
ctrl = 0
anim = 6
sprpriority = -1

[state 0]
type = changeanim
trigger1 = 1
value =  root, anim
elem = root, animelemno(0) 
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = 1
time = -1
ignorehitpause = 1
[state 0]
type = turn
trigger1 = facing != root, facing
ignorehitpause = 1
[state 0]
type = hitoverride
trigger1 = 1
attr = sca, na, sa, ha, np, sp, hp, nt, st, ht
stateno = stateno
time = -1
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1
[state 0]
type = null
trigger1 = !time && !var(0)
trigger1 = var(0) := (root, stateno)
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = time && (root, stateno) != var(0)
ignorehitpause = 1

[statedef 99600]
type = s
movetype = i
physics = s
ctrl = 0
sprpriority = 2
facep2 = 1

[state 0]
type = pause
trigger1 = ((time > 0) && (time < 15)) && (time % 4 = 0)
time = 2
movetime = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = statetypeset
trigger1 = pos y != 0
statetype = a
movetype = a
physics = a

[state 0]
type = velset
triggerall = pos y != 0
trigger1 = time <= 5
x = 1.5
y = -1.5

[state 0]
type = velset
trigger1 = pos y != 0
x = -.1
y = const(movement.yaccel)

[state 0]
type = playsnd
trigger1 = time = 5
value = s9600, 3
[state 0]
type = palfx
trigger1 = time = 5
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = explod
trigger1 = time = 5
anim = 30859
id = 30859
pos = 15, const(size.mid.pos.y)
postype = p1
facing = 1
bindtime = 2
removetime = -2
sprpriority = 4
scale = .04, .16
angle = 0
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 1
vel = -.1, 0
[state 0]
type = explod
trigger1 = time = 5
anim = 30859
id = 30859
pos = 15, const(size.mid.pos.y)
postype = p1
facing = 1
bindtime = 2
removetime = -2
sprpriority = 3
scale = .04, .16
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 1
vel = -.1, 0
trans = sub

[state 0]
type = changeanim
trigger1 = (time = 0) && (prevstateno != [150, 153])
value = cond(pos y != 0, 41, 0) + (var(11))
elem = 1
[state 0]
type = changeanim
trigger1 = (time = [5, 10]) && (prevstateno != [150, 153])
value = cond(pos y != 0, 122, 120) + (var(11))
elem = 1

[state 0]
type = changeanim
trigger1 = (time = [5, 10]) && (prevstateno = [150, 153])
value = cond(pos y != 0, 122, 120) + (var(11))
elem = 1

[state 0]
type = hitoverride
trigger1 = time >= 5
attr = sca, na, np, nt, sa, sp, st
stateno = 99605
time = 1
ignorehitpause = 1

[state 0]
type = changestate
trigger1 = time >= 20
value = 99601

[statedef 99601] 
type = s
movetype = i
physics = s
ctrl = 0
sprpriority = 2

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1
[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = changeanim
trigger1 = (time <= 3) && (anim != cond(pos y != 0, 122, 120) + (var(11)))
value = cond(pos y != 0, 122, 120) + (var(11))
elem = 1
[state 0]
type = changeanim
trigger1 = (time >= 3) && (anim != cond(pos y != 0, 41, 0) + (var(11)))
value = cond(pos y != 0, 44, 0) + (var(11))
elem = 1

[state 0]
type = changestate
trigger1 = time = 6
value = cond(pos y != 0, 50, 0) 
ctrl = 1

[statedef 99605]
type = s
movetype = i
physics = s
velset = 0, 0
ctrl = 0
anim = cond(pos y != 0, 122, 120) + (var(11))
poweradd = 250
sprpriority = 2
facep2 = 1

[state 0]
type = angledraw
trigger1 = time <= 10
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = statetypeset
trigger1 = pos y != 0
physics = a

[state 0]
type = nothitby
trigger1 = time = [0, 25]
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1
ignorehitpause = 1

[state 0]
type = assertspecial
trigger1 = time = [0, 25]
flag = timerfreeze

[state 0]
type = pause
trigger1 = !time
time = 25
movetime = 25

[state 0]
type = velset
trigger1 = time <= 15
x = cond(pos y != 0, -2, -.75)
y = cond(pos y != 0, 2, 0)

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 99605
pos = 0, 0
bindtime = -1
removetime = 120
[state 0]
type = playsnd
trigger1 = !time
value = s9103, 0
[state 0]
type = playsnd
trigger1 = !time
value = s9104, 2
[state 0]
type = playsnd
trigger1 = !time
value = s9600, 3
[state 0]
type = envshake
trigger1 = !time
time = 15
ampl = -5
ignorehitpause = 1
[state 0]
type = palfx
trigger1 = !time
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
ignorehitpause = 1
[state 0]
type = explod
trigger1 = !time
anim = 30313
id = 30313
pos = 0, const(size.mid.pos.y)
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 20
scale = .275, .275
angle = 0
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = explod
trigger1 = !time
anim = 30313
id = 30313
pos = 0, const(size.mid.pos.y)
postype = p1
facing = 1
bindtime = -1
removetime = -2
sprpriority = 10
scale = .275, .275
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = sub

[state 0]
type = ctrlset
triggerall = (command = "a") || (command = "b") || (command= "c") || (command = "x") || (command = "y") || (command = "z")
trigger1 = time >= 18
value = 1
ignorehitpause = 1
[state 0]
type = veladd
trigger1 = time >= 18
x = const(velocity.run.fwd.x) * .3
ignorehitpause = 1

[state 0]
type = changestate
trigger1 = time >= 20
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 99610]
type = s
movetype = i
physics = n
ctrl = 0
sprpriority = 2

[state 0]
type = statetypeset
trigger1 = pos y != 0
physics = a

[state 0]
type = playsnd
trigger1 = !time
value = s9600, 7

[state 0]
type = pause
trigger1 = !time
time = 15
movetime = 15

[state 0] 
type = zoom
triggerall = teammode != simul
trigger1 = time = [0, 15]
pos = (pos x / 1.5) * camerazoom, (pos y / 1.5) * camerazoom
scale = 1.2
ignorehitpause = 1

[state 0]
type = assertspecial
trigger1 = time = [0, 15]
flag = timerfreeze

[state 0]
type = bgpalfx
trigger1 = time = [0, 15]
time = 1
invertall = 1
color = 0

[state 0]
type = explod
trigger1 = !time
anim = 6
id = 110
pos = 0, 0
bindtime = -1
removetime = 30

[state 0]
type = playsnd
trigger1 = !time
value = s9110, 0

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, np, nt, sa, sp, st, ha, hp, ht
time = 1
ignorehitpause = 1
[state 0]
type = playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[state 0]
type = ctrlset
trigger1 = time >= 7
value = 1

[state 0]
type = velset
triggerall = pos y = 0
trigger1 = time < 5
x = 3

[state 0]
type = turn
triggerall = time = 0
trigger1 = command = "holdback"

[state 0]
type = changeanim
trigger1 = time <= 1
value = cond(pos y != 0, 41, 10) + (var(11))
elem = 1
[state 0]
type = changeanim
triggerall = anim != 110 + (var(11))
trigger1 = time >= 1
value = 110 + (var(11))

[state 0]
type = angledraw
trigger1 = time = 1
scale = 1, .8
[state 0]
type = angledraw
trigger1 = time = 2
scale = 1, .85
[state 0]
type = angledraw
trigger1 = time = 3
scale = 1, .9
[state 0]
type = angledraw
trigger1 = time = 4
scale = 1, .95
[state 0]
type = angledraw
trigger1 = time = 5
scale = 1, 1

[state 0]
type = velset
triggerall = pos y != 0
trigger1 = time = 1
[state 0]
type = velset
trigger1 = time = 1
x = cond(pos y != 0, (const(velocity.run.fwd.x) * 2 / 2), (const(velocity.run.fwd.x) * 2))
y = cond(pos y != 0, -3, 0)

[state 0]
type = envshake
trigger1 = time = 1
time = 5
ampl = -5
freq = 25
[state 0]
type = palfx
trigger1 = time = 1
time = 5
add = (floor(fvar(35))), (floor(fvar(36))), (floor(fvar(37)))
color = 256
[state 0]
type = playsnd
trigger1 = time = 1
value = s9160, 6
[state 0]
type = playsnd
trigger1 = time = 1
value = s9180, 4
[state 0]
type = playsnd
trigger1 = time = 1
value = s9180, 4
[state 0]
type = playsnd
trigger1 = time = 1
value = s9180, 5
[state 0]
type = explod
trigger1 = time = 1
anim = 30205
id = 30205
pos = (const(size.mid.pos.x) + 40), (const(size.mid.pos.y) + 30)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = cond(time <= 5, 3, 1)
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = 40
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = cond(vel x > 0, -1.5, 1.5), 0
[state 0]
type = explod
trigger1 = time = 1
anim = 30205
id = 30205
pos = (const(size.mid.pos.x) + 40), (const(size.mid.pos.y) + 30)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 0
scale = const(size.xscale) * .3, const(size.yscale) * .3
angle = 40
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = cond(vel x > 0, -1.5, 1.5), 0
trans = sub

[state 0]
type = null
trigger1 = var(6) := (const(size.mid.pos.x) + (-4 + (random % 6)))
trigger1 = var(7) := (const(size.mid.pos.y) + (-5 + (random % 20)))
[state 0]
type = explod
triggerall = time = [1, 10]
trigger1 = time % 4 = 0
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 4
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, (var(53))
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
trans = add
vel = -1, 0
[state 0]
type = explod
triggerall = time = [1, 10]
trigger1 = time % 4 = 0
anim = 30206
id = 30206
pos = var(6), var(7)
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 3
scale = .3, .1
angle = 90
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
vel = -1, 0

[state 0]
type = changestate
trigger1 = time = 20
value = cond(pos y != 0, 111, 11)

[statedef 99615]
type = s
movetype = i
physics = s
velset = 0, 0
ctrl = 0
sprpriority = 2
facep2 = 1

[state 0]
type = pause
trigger1 = !time
time = 280
movetime = 280
[state 0]
type = helper
trigger1 = !time
stateno = 30850
id = 002
postype = p1
ownpal = 1
facing = 1
size.mid.pos = (const(size.mid.pos.x) + 0), (const(size.mid.pos.y) + 0)
size.head.pos = 0, (var(53))
size.xscale = .1
size.yscale = .1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1
persistent = 0

[state 0]
type = changeanim
trigger1 = time = [0, 30]
value = 115 + (var(11))
elem = 3
[state 0]
type = changeanim
trigger1 = time = [30, 60]
value = 115 + (var(11))
elem = 2
[state 0]
type = changeanim
triggerall = anim != 115 + (var(11))
trigger1 = time = [60, 220]
value = 115 + (var(11))
elem = 3

[state 0]
type = angledraw
triggerall = time = [60, 220]
trigger1 = time % 4 = 0
scale = 1.0 * 1.02, 1.0 * 1.02
ignorehitpause = 1
[state 0]
type = helper
trigger1 = (numhelper(40001) <= 5) && (time = [60, 220]) && (time % 10 = 0)
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = playsnd
trigger1 = time = 60
value = s90, 0
[state 0]
type = playsnd
trigger1 = time = 60
value = s90, 0

[state 0]
type = explod
trigger1 = time = 60
anim = 30820
id = 30820
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = helper
triggerall = numhelper(30990)
triggerall = numhelper(helper(30990), var(2)) < 2
trigger1 = time = 60
stateno = 30500
id = helper(30990), var(2)
postype = p1
ownpal = 1
facing = 1
size.height = 60
size.mid.pos = (const(size.mid.pos.x) + 0), 0
size.head.pos = 0, (var(53))
supermovetime = 999
pausemovetime = 999
size.xscale = 1
size.yscale = .9

[state 0]
type = explod
trigger1 = time = 115
anim = 30821
id = 30821
pos = (screenwidth / 2), (screenheight / 2)
postype = back
facing = 1
bindtime = 1
removetime = -2
sprpriority = 200
scale = (screenwidth / 320), (screenheight / 235)
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0

[state 0]
type = helper
triggerall = !numhelper(99100)
trigger1 = time = 115
stateno = 99100
id = 99100
pos = 0, 0
postype = p1
facing = 1
ownpal = 1
supermovetime = 999
pausemovetime = 999
[state 0]
type = lifeadd
triggerall = var(58) = 0
trigger1 = time = 115
value = lifemax / 3.5

[state 0]
type = helper
triggerall = name != "goku (ssb)"
triggerall = numhelper(30990)
triggerall = numhelper(helper(30990), var(2)) < 2
trigger1 = time = 120
stateno = 30500
id = helper(30990), var(2)
postype = p1
ownpal = 1
facing = 1
size.height = 100
size.mid.pos = (const(size.mid.pos.x) + 0), 0
size.head.pos = 0, (var(53))
supermovetime = 999
pausemovetime = 999
size.xscale = 1.05
size.yscale = .975

[state 0]
type = changeanim
triggerall = anim != 180 + (var(11))
trigger1 = time = 220
value = 180 + (var(11))

[state 0]
type = playsnd
trigger1 = time = 225
value = s180, 0
[state 0]
type = playsnd
trigger1 = time = 225
value = s180, 0

[state 0]
type = changestate
trigger1 = time >= 280
value = 81

[statedef 99685]
type = s
movetype = a
physics = s
velset = 0, 0
ctrl = 0
sprpriority = -1
facep2 = 1

[state 0]
type = lifeadd
trigger1 = numhelper(30990)
value = cond((helper(30990), var(1)) = 4, 5, 3)
ignorehitpause = 1

[state 0]
type = pause
trigger1 = ((time > 0) && (time < 25)) && (time % 5 = 0)
time = 2
movetime = 2
[state 0]
type = helper
trigger1 = (numhelper(40001) <= 5) && (time = [0, 25])
stateno = 40001
id = 40001
pos = 0, 0
postype = p1
ownpal = 1
supermovetime = 999
pausemovetime = 999

[state 0]
type = nothitby
trigger1 = 1
value = sca, na, sa, ha, np, sp, hp, nt, st, ht
time = 1
ignorehitpause = 1

[state 0]
type = poweradd
trigger1 = !time
value = 1000
[state 0]
type = helper
trigger1 = !time
stateno = 98510
id = 98512
postype = p1
supermovetime = 999
pausemovetime = 999
ignorehitpause = 1

[state 0]
type = angledraw
trigger1 = time <= 5
scale = .95, 1.05 - (sin((time/ 50.0) * (pi / 2)) * 0.0125)
ignorehitpause = 1

[state 0]
type = statetypeset
trigger1 = pos y != 0
statetype = a
movetype = h
physics = a
ignorehitpause = 1

[state 0]
type = velset
triggerall = pos y != 0
trigger1 = time <= 15
y = -1
ignorehitpause = 1

[state 0]
type = velset
triggerall = pos y != 0
trigger1 = time = 15
x = -1
y = -3
ignorehitpause = 1

[state 0]
type = playsnd
triggerall = name != "kurosaki ichigo"
trigger1 = time = 15
value = s90, 0
[state 0]
type = playsnd
triggerall = name != "kurosaki ichigo"
trigger1 = time = 15
value = s90, 0

[state 0]
type = playsnd
triggerall = name = "kurosaki ichigo"
trigger1 = time = 15
value = s90, cond((var(3) = 1) || (var(4) = 1), 1, 0)
[state 0]
type = playsnd
triggerall = name = "kurosaki ichigo"
trigger1 = time = 15
value = s90, cond((var(3) = 1) || (var(4) = 1), 1, 0)

[state 0]
type = helper
trigger1 = time = 15
stateno = 81000
id = 81000
pos = 0, -15
postype = p1
ownpal = 1

[state 0]
type = changeanim
trigger1 = !time
value = cond(pos y != 0, 132, 130) + (var(11))
elem = 1
[state 0]
type = changeanim
trigger1 = numhelper(81000) = 1
value = cond(pos y != 0, 115, 115) + (var(11))
elem = 3
[state 0]
type = changeanim
trigger1 = (numhelper(81000) = 0) && (time >= 25)
value = cond(pos y != 0, 41, 10) + (var(11))
elem = 1

[state 0]
type = changestate
triggerall = numhelper(81000)
triggerall = (roundstate = 2) && ((helper(81000), movecontact))
trigger1 = ((!ailevel) && (command = "holdup"))
trigger2 = ((ailevel) && (p2bodydist x <= 40 + (random % 20)) && (random < (ailevel * 95)))
value = cond(pos y != 0, 45, 40)

[state 0]
type = changestate
trigger1 = time = 30
value = cond(pos y != 0, 50, 0)
ctrl = 1

[statedef 99800]
type = u
physics = n
sprpriority = 0

[state 0]
type = varset
trigger1 = !time
v = 10
value = root, stateno
ignorehitpause = 1
[state 0]
type = statetypeset
trigger1 = root, movetype = i
movetype = i
ignorehitpause = 1
[state 0]
type = statetypeset
trigger1 = root, movetype = a
movetype = a
ignorehitpause = 1
[state 0]
type = assertspecial
trigger1 = 1
flag = invisible
ignorehitpause = 1
[state 0]
type = changeanim
trigger1 = 1
value = root, anim
elem = root, animelemno(0)
ignorehitpause = 1
[state 0]
type = nothitby
trigger1 = 1
value = sca
time = 1
ignorehitpause = 1
[state 0]
type = reversaldef
trigger1 = 1
reversal.attr = sca, na, np, nt, sa, sp, st
pausetime = 0, 0
hitsound = s9104, 0
p1stateno = 99801
ignorehitpause = 1
[state 0]
type = bindtoroot
trigger1 = 1
time = 1
pos = 0, 0
ignorehitpause = 1
[state 0]
type = turn
trigger1 = facing != root, facing
ignorehitpause = 1

[state 0]
type = destroyself
trigger1 = root, stateno != var(10)
trigger2 = root, movetype != a
trigger3 = enemynear, stateno = [99600, 99605]
trigger4 = enemynear, prevstateno = [99600, 99605]
ignorehitpause = 1

[statedef 99801]
type = u
movetype = i
physics = n
anim = 6
sprpriority = 0

[state 0]
type = bindtoroot
trigger1 = 1
time = 1
pos = 30, -25 
ignorehitpause = 1
[state 0]
type = pause
trigger1 = !time
time = 10 + (root, life <= 5) * 2
endcmdbuftime = 10 + (root, life <= 5) * 2
pausebg = 1
ignorehitpause = 1
[state 0]
type = envshake
trigger1 = teamside = 1
time = 10
freq = 60
ampl = -4
phase = 90
ignorehitpause = 1
persistent = 0
[state 0]
type = helper
triggerall = !numhelper(99036)
trigger1 = teamside = 1
stateno = 99036
id = 99036
pos = 0, 0
postype = p1
facing = 1
ownpal = 1
ignorehitpause = 1
persistent = 0
[state 0]
type = explod
trigger1 = teamside = 1
anim = 30105
id = 30105
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 7
scale = .2, .2
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
trans = sub
[state 0]
type = explod
trigger1 = teamside = 1
anim = 30105
id = 30105
pos = 0, 0
postype = p1
facing = 1
bindtime = 1
removetime = -2
sprpriority = 6
scale = .2, .2
angle = 0
ownpal = 1
remappal = 3, 0
removeongethit = 1
ignorehitpause = 1
supermovetime = 999
pausemovetime = 999
persistent = 0
trans = add

[state 0]
type = destroyself
trigger1 = time >= 10
ignorehitpause = 1

[statedef 99999]
type = u
anim = 6

[state 0]
type = destroyself
trigger1 = (time >= 10) || (root, time <= 5)
