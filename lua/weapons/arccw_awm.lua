SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "AW HS-338"
SWEP.Trivia_Class = "Sniper Rifle"
SWEP.Trivia_Desc = "British-made high-caliber sniper rifle designed for cold-weather police and military units. Heavy rounds pack an extreme punch and are designed for maximum precision."
SWEP.Trivia_Manufacturer = "Accuracy International"
SWEP.Trivia_Calibre = ".338 Lapua Magnum"
SWEP.Trivia_Mechanism = "Bolt-Action"
SWEP.Trivia_Country = "United Kingdom"
SWEP.Trivia_Year = 1995

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_hs338.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_hs338.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 70
SWEP.DamageMin = 100 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 100 -- in METRES
SWEP.Penetration = 35
SWEP.DamageType = DMG_BULLET

SWEP.PhysBulletMuzzleVelocity = 1200

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 8 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 12
SWEP.ReducedClipSize = 4

SWEP.Recoil = 3
SWEP.RecoilSide = 1
SWEP.RecoilRise = 3
SWEP.RecoilPunch = 2

SWEP.Delay = 60 / 600 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "BOLT",
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 25

SWEP.ManualAction = true

SWEP.AccuracyMOA = 0.05 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 800 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses

SWEP.ShootVol = 140 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/awp/awp_01.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_silencer_01.wav"
SWEP.DistantShootSound = "weapons/arccw/awp/awp1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_6"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 80
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.45
SWEP.SpeedMult = 0.85
SWEP.SightedSpeedMult = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-7.441, -9.837, 2.99),
    Ang = Angle(0.792, 0.017, 0),
    Magnification = 1.1,
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(-2, -2, 0.5)
SWEP.ActiveAng = Angle(2, 0, -1)

local hp = ArcCW.CSP_Holsters["compliant"]
SWEP.HolsterPos = hp.pos + Vector(2, 2, 0)
SWEP.HolsterAng = hp.ang + Angle(-10, 9, -10)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 50
SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["extendedmag"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 2, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    },
    ["nobrake"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {},
    },
}

SWEP.ExtraSightDist = 5
SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {cspf .. "optic", cspf .. "optic_sniper", cspf .. "optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.awm_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.035, -5.286, -5.5),
            vang = Angle(-90, 0, -90),
            wpos = Vector(8, 0.899, -6.401),
            wang = Angle(-10.52, 0, 180)
        },
        InstalledEles = {"nors"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = cspf .. "muzzle",
        Bone = "v_weapon.awm_Parent",
        Offset = {
            vpos = Vector(-0.3, -4.5, -27), -- offset that the attachment will be relative to the bone
            vang = Angle(-91, 0, -90),
            wpos = Vector(38.799, 0.899, -10.9),
            wang = Angle(-10, 0, 180)
        },
        InstalledEles = {"nobrake"},
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf .. "foregrip", cspf .. "bipod"},
        Bone = "v_weapon.awm_Parent",
        Offset = {
            vang = Angle(-91, 0, -90),
            wang = Angle(-11, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(-0.3, -2.5, -10.5),
            vmax = Vector(-0.3, -2.5, -18.5),
            wmin = Vector(20, 0.899, -5.401),
            wmax = Vector(20, 0.899, -5.401),
        }
    },
    {
        PrintName = "Tactical",
        Slot = cspf .. "tac",
        Bone = "v_weapon.awm_Parent",
        Offset = {
            vpos = Vector(0.5, -3.25, -15), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, -0.45, 180),
            wpos = Vector(19.625, 0.053, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
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
        Bone = "v_weapon.awm_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.75, -3, -5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(8, 1.75, -3.5),
            wang = Angle(-10.393, 0, 180)
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
        Time = 1,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "ready",
        Time = 2,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "shoot",
        Time = 0.5,
        MinProgress = 0.33,
    },
    ["cycle"] = {
        Source = "cycle",
        Time = 1.33,
        ShellEjectAt = 0.75,
        LHIK = true,
        LHIKIn = 0.15,
        LHIKOut = 0.15,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51, 58, 62, 74, 80},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {24, 33, 51},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
    },
}

if engine.ActiveGamemode() == "terrortown" then
    SWEP.Kind = WEAPON_EQUIP1
    SWEP.Slot = 6
    SWEP.CanBuy = { ROLE_TRAITOR, ROLE_DETECTIVE }
    SWEP.LimitedStock = true
    SWEP.AutoSpawnable = false
    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "A powerful sniper rifle. Uses typical rifle ammo, \nbut isn't lethal at point blank.\nPurchased weapons come with full attachments."
    };
    SWEP.Icon = "arccw/ttt_awm.png"
end