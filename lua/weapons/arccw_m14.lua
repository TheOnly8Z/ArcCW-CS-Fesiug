SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Cobra Mk. 14"
SWEP.Trivia_Class = "DMR"
SWEP.Trivia_Desc = "Semi-automatic DMR. Well-rounded performance supplemented by railed polymer furniture, which offers superior handling characteristics. 7.62 NATO round overpenetrates at close range."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "7.62x51mm NATO"
SWEP.Trivia_Mechanism = "Gas-operated Rotating Bolt"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1959

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_m14.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_m14.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "00000"

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 35
SWEP.DamageMin = 70 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 50 -- in METRES
SWEP.Penetration = 22
SWEP.DamageType = DMG_BULLET

SWEP.PhysBulletMuzzleVelocity = 950

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 15 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 30
SWEP.ReducedClipSize = 10

SWEP.Recoil = 0.9
SWEP.RecoilSide = 0.5
SWEP.RecoilRise = 0
SWEP.VisualRecoilMult = 0.5

SWEP.Delay = 60 / 750 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.AccuracyMOA = 1 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "ar2" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 110 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/m14/m14_fire.wav"
SWEP.DistantShootSound = "weapons/arccw/scar20/scar20_distant_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"

SWEP.MuzzleEffect = "muzzleflash_m14"
SWEP.ShellModel = "models/shells/shell_762nato.mdl"
SWEP.ShellPitch = 90
SWEP.ShellRotate = 180
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.89
SWEP.SightedSpeedMult = 0.65

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    [1] = "bullet.bmp",
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-4.054, -1.637, 2.48),
    Ang = Angle(0.064, 0.002, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.NPCWeaponType = "weapon_ar2"
SWEP.NPCWeight = 100

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(0.3, 4, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

local hp = ArcCW.CSP_Holsters["warlover"]
SWEP.HolsterPos = hp.pos + Vector(3, 12, -1)
SWEP.HolsterAng = hp.ang + Angle(3, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 27

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    },
    ["nobrake"] = {
        VMBodygroups = {{ind = 2, bg = 1}}
    }
}

SWEP.ShellRotateAngle = Angle(180, 180, 0)

SWEP.ExtraSightDist = 6

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {cspf.."optic", cspf.."optic_sniper", cspf.."optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "gun lol01", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vang = Angle(0, -90, 0),
            wpos = Vector(-4.762, 0.832, -6.402),
            wang = Angle(-10.393, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset
            vmin = Vector(0.4, -3, 4.15),
            vmax = Vector(0.4, 3, 4.15),
            wmin = Vector(13, 0.832, -8.4),
            wmax = Vector(26, 0.832, -10.5),
        },
        CorrectiveAng = Angle(0, 180, 0),
        VMScale = Vector(1.4, 1.4, 1.4),
        WMScale = Vector(1, 1, 1)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = cspf.."muzzle",
        Bone = "gun lol01",
        Offset = {
            vpos = Vector(0.35, 16, 2.6),
            vang = Angle(0, -90, 0),
            wpos = Vector(33, 1.4, -10.161),
            wang = Angle(-10.393, 0, 180)
        },
        InstalledEles = {"nobrake"}
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf.."foregrip", cspf.."ubgl", cspf.."bipod"},
        Bone = "gun lol01",
        Offset = {
            vang = Angle(0, -90, 0),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0.35, -1, 0.75),
            vmax = Vector(0.35, 12, 0.75),
            wmin = Vector(20, 1.5, -6),
            wmax = Vector(20, 1.5, -6),
        }
    },
    {
        PrintName = "Tactical",
        Slot = cspf.."tac",
        Bone = "gun lol01",
        Offset = {
            vpos = Vector(1.25, 9, 3), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 90),
            wpos = Vector(21.625, 2, -8.298),
            wang = Angle(-10, -0.556, -90)
        },
    },
    {
        PrintName = "Fire Group",
        Slot = cspf.."fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = cspf.."ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = cspf.."perk"
    },
    {
        PrintName = "Charm",
        Slot = cspf.."charm",
        Hidden = true,
        FreeSlot = true,
        Bone = "gun lol01", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(1.25, 6, 2),
            vang = Angle(0, -90, 0),
            wpos = Vector(-4.762, 0.832, -6.402),
            wang = Angle(-10.393, 0, 180)
        },
        VMScale = Vector(1.4, 1.4, 1.4),
    },
}

SWEP.Animations = {
    ["draw"] = {
        Source = "draw",
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 0.8,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 60},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 1,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 60, 102},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
        LastClip1OutTime = 1,
    },
}