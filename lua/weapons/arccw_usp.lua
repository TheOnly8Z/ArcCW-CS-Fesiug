SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "K&M SP40"
SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = ".40 caliber semi-automatic pistol. Commonly used among police and popular with civilians for its reliability."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = ".40 S&W"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1993

SWEP.Slot = 1

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_sp40.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 35
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET

SWEP.PhysBulletMuzzleVelocity = 275

SWEP.CanFireUnderwater = true
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 12 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 24
SWEP.ReducedClipSize = 8

SWEP.Recoil = 0.8
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 2

SWEP.Delay = 60 / 400 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 10 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 250

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/usp/usp_unsil-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/hkp2000/hkp2000-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.175

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-5.974, -3, 2.72),
    Ang = Angle(-0.116, 0.014, 0),
    ViewModelFOV = 50,
    Magnification = 1.05,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.GuaranteeLaser = true
SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(-1.4, -3, 0.8)
SWEP.ActiveAng = Angle(0.9, 0.75, -1)

local hp = ArcCW.CSP_Holsters["happypistola"]
SWEP.HolsterPos = hp.pos + Vector(0, 0, 0)
SWEP.HolsterAng = hp.ang + Angle(0, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "v_weapon.USP_Parent",
                Offset = {
                    pos = Vector(0, 1.5, 3.25),
                    ang = Angle(-90, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(0, 1, 0),
                    ang = Angle(0, -4.211, 0)
                }
            }
        }
    }
}

SWEP.ExtraSightDist = 7

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = cspf .. "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.USP_Slide", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.13, -0.7, 0.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(4.129, 1.476, -4.216),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = cspf .. "muzzle",
        Bone = "v_weapon.USP_Parent",
        Offset = {
            vpos = Vector(-0.140, -3.761, -5.370),
            vang = Angle(-90, 0, -90),
            wpos = Vector(9.829, 2.275, -3.828),
            wang = Angle(-2, -4.211, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf .. "foregrip_pistol", cspf .. "style_pistol"},
        Bone = "v_weapon.USP_Parent",
        Offset = {
            vpos = Vector(-0.257, -1.994, -2.113),
            vang = Angle(-90, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = cspf .. "tac_pistol",
        Bone = "v_weapon.USP_Parent",
        Offset = {
            vpos = Vector(-0.095, -2.546, -3.918), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(11.711, 2.187, -3.064),
            wang = Angle(0, -4.211, 180)
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
        Bone = "v_weapon.USP_Slide", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.5, 0.1, -4), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(8, 2.3, -3.5),
            wang = Angle(-2.829, -4.902, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["ready"] = {
        Source = "ready",
        Time = 1
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/hkp2000/hkp2000_draw.wav",
            t = 0
            }
        }
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
        SoundTable = {
            {
            s = "weapons/arccw/hkp2000/hkp2000_draw.wav",
            t = 0
            }
        }
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 1,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shoot_last",
        Time = 1,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 1,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "shoot_iron_last",
        Time = 1,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {20, 26, 40, 60},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Checkpoints = {20, 26, 40, 60, 80},
        FrameRate = 37,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
    },
}