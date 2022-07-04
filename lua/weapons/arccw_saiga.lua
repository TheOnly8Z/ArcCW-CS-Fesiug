SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Type 8k"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "A magazine fed 12 gauge shotgun. Designed for hunting use as well as for police forces."
SWEP.Trivia_Manufacturer = "Kremen Oruzhiye"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USSR"
SWEP.Trivia_Year = 1997

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_type8k.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_saiga.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 10
SWEP.DamageMin = 6 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BUCKSHOT

SWEP.PhysBulletMuzzleVelocity = 150

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 4

SWEP.Recoil = 4
SWEP.RecoilSide = 1
SWEP.MaxRecoilBlowback = 2
SWEP.RecoilPunch = 1

SWEP.Delay = 60 / 400 -- 60 / RPM.
SWEP.Num = 6 -- number of shots per trigger pull.
SWEP.RunawayBurst = false
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_shotgun"
SWEP.NPCWeight = 125

SWEP.AccuracyMOA = 40 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 350

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/mag7/mag7_02.wav"
SWEP.ShootSound = "weapons/arccw/mag7/mag7_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m590_suppressed_tp.wav"
SWEP.DistantShootSound = "weapons/arccw/mag7/mag7-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_m3"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.94
SWEP.SightedSpeedMult = 0.45
SWEP.SightTime = 0.33

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-6.5, -14.3, 3.7),
    Ang = Angle(0.7, 0.3, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-2, -8, 2)
SWEP.ActiveAng = Angle(1, 0, 0)

local hp = ArcCW.CSP_Holsters["warlover"]
SWEP.HolsterPos = hp.pos
SWEP.HolsterAng = hp.ang

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {},
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Bone = "v_weapon.AK47_Parent",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(0, -6.723, -1.384),
                    ang = Angle(-90, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_ak.mdl",
                Scale = Vector(-1, -1, 1),
                Offset = {
                    pos = Vector(5.714, 0.73, -6),
                    ang = Angle(171, 0, -1)
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
        Bone = "v_weapon.AK47_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -6.823, -1.384), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(5.36, 0.739, -6),
            wang = Angle(-9.738, 0, 180)
        },
        InstalledEles = {"mount"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(2, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {cspf .. "muzzle_shotgun", cspf .. "barrel"},
        Bone = "v_weapon.AK47_Parent",
        Offset = {
            vpos = Vector(0, -4.2, -22.275),
            vang = Angle(-90, 0, -90),
            wpos = Vector(27.648, 0.782, -7.342),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf .. "foregrip", cspf .. "ubgl", cspf .. "bipod"},
        Bone = "v_weapon.AK47_Parent",
        Offset = {
            vpos = Vector(0, -3.549, -13.561),
            vang = Angle(-90, 0, -90),
            wpos = Vector(17, 0.6, -4.676),
            wang = Angle(-10, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, -3.33, -9.848),
            vmax = Vector(0, -3.549, -13.561),
            wmin = Vector(15, 0.832, -4.2),
            wmax = Vector(20, 0.832, -4.7),
        }
    },
    {
        PrintName = "Tactical",
        Slot = cspf .. "tac",
        Bone = "v_weapon.AK47_Parent",
        Offset = {
            vpos = Vector(0.72, -4.746, -12.756), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, -3, 180),
            wpos = Vector(15.625, -0.1, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Fire Group",
        Slot = cspf .. "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = cspf .. "ammo_shotgun"
    },
    {
        PrintName = "Perk",
        Slot = cspf .. "perk"
    },
    {
        PrintName = "Charm",
        Slot = cspf .. "charm",
        Hidden = true,
        FreeSlot = true,
        Bone = "v_weapon.AK47_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.5, -4.5, -4), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(6.099, 1.1, -3.301),
            wang = Angle(171.817, 180 - 1.17, 0),
        },
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["draw"] = {
        Source = "ak47_draw",
        Time = 0.4,
        SoundTable = {{s = "weapons/arccw/ak47/ak47_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "ak47_ready",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"ak47_fire1", "ak47_fire2", "ak47_fire3"},
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "ak47_fire_iron",
        Time = 0.75,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "ak47_reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 37,
        Checkpoints = {38, 68, 80},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "ak47_reload_full",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Framerate = 37,
        Checkpoints = {38, 65},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}