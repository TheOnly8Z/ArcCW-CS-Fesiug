SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Type .02"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Submachine gun with huge helical magazine. Fires relatively weak rounds, slowly, but at a reliable pace. Developed for FSB-Spetsnaz units in the Russian Federation, and employed in combat against militants in the Caucasus region, its straight-blowback design reduces manufacturing costs while sharing components with other common weapons."
SWEP.Trivia_Manufacturer = "Kremen Oruzhiye"
SWEP.Trivia_Calibre = "9x18mm Soviet"
SWEP.Trivia_Mechanism = "Straight Blowback"
SWEP.Trivia_Country = "Russia"
SWEP.Trivia_Year = 1996

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bizon.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bizon.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 24
SWEP.DamageMin = 16 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 45 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any

SWEP.PhysBulletMuzzleVelocity = 350

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 82 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 82
SWEP.ReducedClipSize = 44

SWEP.Recoil = 0.3
SWEP.RecoilSide = 0.3
SWEP.VisualRecoilMult = 1
SWEP.MaxRecoilBlowback = -1
SWEP.RecoilPunch = 1

SWEP.Delay = 60 / 670 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 18 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 325 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 225

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 90 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/p90/p90_01.wav"
SWEP.ShootSound = "weapons/arccw/p90/p90_02.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/mp5/mp5_01.wav"
SWEP.DistantShootSound = "weapons/arccw/bizon/bizon-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.4
SWEP.ShellRotateAngle = Angle(0, 180, 0)

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.34

SWEP.SpeedMult = 0.96
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 24

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.15, 0, 0.25),
    Ang = Angle(0.55, -0.1, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
    CrosshairInSights = false
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(1, 3, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

local hp = ArcCW.CSP_Holsters["warlover"]
SWEP.HolsterPos = hp.pos + Vector(3, 8, -3)
SWEP.HolsterAng = hp.ang + Angle(4, -2, 3)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Bone = "a_bizon",
                Scale = Vector(1.25, 1.25, 1.25),
                Offset = {
                    pos = Vector(0.05, 2.5, 0.5),
                    ang = Angle(-90, 0, 90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Scale = Vector(1.25, 1.25, 1.25),
                Offset = {
                    pos = Vector(7.762, 0.832, -6.302),
                    ang = Angle(-10, 0, 180)
                }
            }
        },
    }
}

SWEP.ExtraSightDist = 5
SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {cspf .. "optic_lp", cspf .. "optic", cspf .. "optic_sniper"}, -- what kind of attachments can fit here, can be string or table
        Bone = "a_bizon", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.05, 2.75, 0.5),
            vang = Angle(-90, 0, 90),
            wpos = Vector(7.762, 0.832, -6.302),
            wang = Angle(-10, 0, 180)
        },
        InstalledEles = {"mount", "nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = cspf .. "muzzle",
        Bone = "a_bizon",
        Offset = {
            vpos = Vector(0, 0.75, -12.5),
            vang = Angle(-90, 0, 90),
            wpos = Vector(20, 0.7, -6.2),
            wang = Angle(-10, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = cspf .. "tac",
        Bone = "a_bizon",
        Offset = {
            vpos = Vector(0.5, 1, -9), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 180),
            wpos = Vector(15, 1.1, -6),
            wang = Angle(-10.393, 0, -90)
        },
    },
    {
        PrintName = "Fire Group",
        Slot = cspf .. "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = cspf .. "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = cspf .. "perk"
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        SoundTable = {{s = "weapons/arccw/ak47/ak47_draw.wav", t = 0}},
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.5,
        SoundTable = {{s = "weapons/arccw/ak47/ak47_draw.wav", t = 0}},
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.7,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 3.5 * 1.2
    },
    ["reload"] = {
        Source = "reload",
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        Time = 3.5
    },
}