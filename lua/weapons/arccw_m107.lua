SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Barrett BFG"
SWEP.Trivia_Class = "Antimateriel Rifle"
SWEP.Trivia_Desc = "High caliber semi automatic rifle designed to take out light armored vehicles and military equipment. BFG stands for 'Big Fucking Gun'. Deals great damage at all ranges. Extremely heavy and cumbersome."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = ".50 BMG"
SWEP.Trivia_Mechanism = "Recoil-Operated"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1989

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_bfg.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_bfg.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 140
SWEP.DamageMin = 70 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 500 -- in METRES
SWEP.Penetration = 50
SWEP.DamageType = DMG_BULLET

SWEP.PhysBulletMuzzleVelocity = 1200

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 5 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 3

SWEP.Recoil = 5
SWEP.RecoilSide = 2
SWEP.MaxRecoilBlowback = 1
SWEP.RecoilRise = -2
SWEP.RecoilPunchBackMax = 30
SWEP.VisualRecoilMult = 1
SWEP.RecoilPunch = 0.7

SWEP.Delay = 60 / 120 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_ar2", "weapon_crossbow"}
SWEP.NPCWeight = 10

SWEP.AccuracyMOA = 2 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 1000 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "SniperPenetratedRound" -- what ammo type the gun uses

SWEP.ShootVol = 145 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/bfg/bfg_fire.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m4a1/m4a1_01.wav"
SWEP.DistantShootSound = "weapons/arccw/bfg/bfg_fire_distant.wav"

SWEP.MuzzleEffect = "muzzleflash_5"
SWEP.ShellModel = "models/shells/shell_338mag.mdl"
SWEP.ShellPitch = 60
SWEP.ShellScale = 2

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.65
SWEP.SpeedMult = 0.75
SWEP.SightedSpeedMult = 0.25

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = true

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.449, 0, -0.57),
    Ang = Angle(0, 0, 0),
    Magnification = 1.25,
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG

SWEP.ActivePos = Vector(2.5, 3, -0.6)
SWEP.ActiveAng = Angle(0, 0.5, -3)

-- "no sir i do not wish to take off limbs i wish to be very nic-" FUCK OUTTA HERE WITH THAT SHIT BITCH XD 
local hp = ArcCW.CSP_Holsters["warlover"]
SWEP.HolsterPos = hp.pos + Vector(4, 7, -4)
SWEP.HolsterAng = hp.ang + Angle(5, -4, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 70
SWEP.AttachmentElements = {
    ["nors"] = {
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    }
}

SWEP.ExtraSightDist = 5

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {cspf.."optic", cspf.."optic_sniper", cspf.."optic_lp"}, -- what kind of attachments can fit here, can be string or table
        Bone = "Weapon_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.035, -6.5, 7.5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(9.36, 0.539, -7.801),
            wang = Angle(-9.738, 0, 180)
        },
        InstalledEles = {"nors"},
        CorrectivePos = Vector(0, 0, 0),
        CorrectiveAng = Angle(0, 0, 0)
    },
    {
        PrintName = "Barrel",
        DefaultAttName = "Standard Barrel",
        Slot = cspf.."barrel",
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf.."foregrip", cspf.."bipod"},
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(0, -3, 20),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = cspf.."tac",
        Bone = "Weapon_Main",
        Offset = {
            vpos = Vector(-0.25, -4, 18),
            vang = Angle(90, 0, 180),
            wpos = Vector(25.625, -0.253, -8.298),
            wang = Angle(-8.829, -0.556, 90)
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
        Bone = "Weapon_Main", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.75, -2, 9), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(11, 1.5, -3),
            wang = Angle(-10, 0, 180)
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
        Time = 2,
        SoundTable = {{s = "weapons/arccw/g3sg1/g3sg1_draw.wav", t = 0}},
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["ready"] = {
        Source = "ready",
        Time = 2.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
    },
    ["fire"] = {
        Source = "fire",
        Time = 2,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "fire_iron",
        Time = 2,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {52, 90, 127},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 7,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_AR2,
        Checkpoints = {52, 90, 127, 152},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 1,
    },
}

if engine.ActiveGamemode() == "terrortown" then
    SWEP.Kind = WEAPON_EQUIP1
    SWEP.Slot = 6
    SWEP.CanBuy = { ROLE_TRAITOR }
    SWEP.LimitedStock = true
    SWEP.AutoSpawnable = false
    SWEP.EquipMenuData = {
        type = "Weapon",
        desc = "Fearsome .50 cal anti-materiel rifle.\nIncredibly powerful, but very heavy.\nPurchased weapons come with full attachments."
    }
    SWEP.Icon = "arccw/ttticons/arccw_m107.png"
    SWEP.Primary.Ammo = "SniperPenetratedRound"
end