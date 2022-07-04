SWEP.Base = "arccw_ump9"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "K&M MPS-45"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = ".45 calibre version of the MPS. The heavy caliber allows it to pack a greater punch in short range while remaining controllable with a lower fire rate."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1977

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_mps2.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_mps2.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 35
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 75 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET

SWEP.PhysBulletMuzzleVelocity = 250

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 40
SWEP.ReducedClipSize = 12

SWEP.RevolverReload = false -- cases all eject on reload

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = -1
SWEP.VisualRecoilMult = 1

SWEP.Delay = 60 / 560 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 96 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/ump45/ump45_04.wav"
SWEP.ShootSound = "weapons/arccw/ump45/ump45_02.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/ump45/ump45-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.75

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 200