SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Cobra Mk. 4"
SWEP.Trivia_Class = "Assault Carbine"
SWEP.Trivia_Desc = "America's pride and joy. Shortened carbine-length version of the M16 rifle, designed for use in situations where a shorter or lighter weapon is required. After the turn of the millennium, many armies began adopting carbines as their main infantry weapons."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "5.56x45mm NATO"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1994

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_mk4.mdl"
SWEP.WorldModel = "models/weapons/arccw/mk4.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "000000"

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 29
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 110 -- in METRES
SWEP.Penetration = 10
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any

SWEP.PhysBulletMuzzleVelocity = 800

-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 15

SWEP.Recoil = 0.5
SWEP.RecoilSide = 0.35
SWEP.RecoilRise = 0
SWEP.RecoilPunchBackMax = 3
SWEP.VisualRecoilMult = 1
SWEP.RecoilPunchBack = 3

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

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_smg1"}
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 500 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "smg1" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 91 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/m4a1/m4a1_us_04.wav"
SWEP.ShootSound = "weapons/arccw/m4a1/m4a1_us_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/m4a1/m4a1_us_distant_03.wav"

SWEP.MuzzleEffect = "muzzleflash_4"
SWEP.ShellModel = "models/shells/shell_556.mdl"
SWEP.ShellPitch = 95
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.96
SWEP.SightedSpeedMult = 0.70
SWEP.SightTime = 0.33

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-7.738, -7.52, 0.558),
    Ang = Angle(2.763, -1.587, -3.349),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-2.2, 0, -0.3)
SWEP.ActiveAng = Angle(3, 0, -3)

local hp = ArcCW.CSP_Holsters["compliant"]
SWEP.HolsterPos = hp.pos + Vector(2, 6, -1.8)
SWEP.HolsterAng = hp.ang

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.AttachmentElements = {
    ["noch"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 2, bg = 1}},
    },
    ["extendedmag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "v_weapon.m4_Parent",
                Scale = Vector(1.5, 1.4, 2.5),
                Offset = {
                    pos = Vector(0.8, -5.65, -1.9),
                    ang = Angle(-90 - 1.46949, 0, -85 + 3.64274),
                }
            }
        },
    },
    ["fcg_semi"] = {
        NameChange = "Cobra Patriot",
    }
}

SWEP.ExtraSightDist = 5
SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {cspf .. "optic_lp", cspf .. "optic", cspf .. "optic_sniper"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.m4_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.75, -5.715, -1.609), -- offset that the attachment will be relative to the bone
            vang = Angle(-90 - 1.46949, 0, -85 + 3.64274),
            wang = Angle(-9.738, 0, 180)
        },
        SlideAmount = {
            -- overrides Offset.
            vmin = Vector(0.8, -6, -4),
            vmax = Vector(0.8, -6, -0.5),
            wmin = Vector(5.36, 0.739, -5.401),
            wmax = Vector(5.36, 0.739, -5.401),
        }, -- how far this attachment can slide in both directions.
        InstalledEles = {"noch", "mount"},
        -- CorrectivePos = Vector(-0.017, 0, -0.4),
        CorrectivePos = Vector(0.02, 0, 0),
        CorrectiveAng = Angle(-3, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = cspf .. "muzzle",
        Bone = "v_weapon.m4_Parent",
        Offset = {
            vpos = Vector(0.18, -4.64, -17.4),
            vang = Angle(-90, -2, -90),
            wpos = Vector(26.648, 0.782, -8.042),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf .. "foregrip", cspf .. "ubgl", cspf .. "bipod"},
        Bone = "v_weapon.m4_Parent",
        Offset = {
            vpos = Vector(0.152, -3.626, -7.305),
            vang = Angle(-92.269, 0, -85 + 3.64274),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0.152, -3.626, -7.305),
            vmax = Vector(0.152, -3.626, -10.81),
            wmin = Vector(15, 0.74, -4.301),
            wmax = Vector(15, 0.74, -4.301),
        }
    },
    {
        PrintName = "Tactical",
        Slot = cspf .. "tac",
        Bone = "v_weapon.m4_Parent",
        Offset = {
            vpos = Vector(-0.69, -4.803, -9.273), -- offset that the attachment will be relative to the bone
            vang = Angle(-90 - 1.46949, -1.5, 5.64274),
            wpos = Vector(15.625, -0.253, -6.298),
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
        Slot = cspf .. "ammo_bullet"
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
        Bone = "v_weapon.m4_Parent",
        Offset = {
            vpos = Vector(-0.25, -3, -4),
            vang = Angle(-90 - 1.46949, 0, -85 + 3.64274),
            wpos = Vector(9, 1.25, -2.5),
            wang = Angle(0, -4.211, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.45,
        SoundTable = {{s = "weapons/arccw/m4a1/m4a1_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.35,
    },
    ["ready"] = {
        Source = "ready",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.4,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 42, 59, 71},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 42, 59, 71, 89},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}