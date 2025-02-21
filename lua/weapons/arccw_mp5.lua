SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "K&M SF5"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Light 9mm SMG predating the MPS. The unyielding reliablity still proves appealing to many."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Roller-Delayed Blowback"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1956

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_mp5.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_mp5.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 28
SWEP.DamageMin = 20 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 60 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 400 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = false
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 30 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 60
SWEP.ReducedClipSize = 15

SWEP.RevolverReload = false -- cases all eject on reload

SWEP.Recoil = 0.35
SWEP.RecoilSide = 0.25
SWEP.VisualRecoilMult = 1

SWEP.Delay = 60 / 850 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 2,
    },
    {
        Mode = -3,
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 150

SWEP.AccuracyMOA = 16 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 250 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 100 -- volume of shoot sound
SWEP.ShootPitch = 92 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/mp9/mp9_01.wav"
SWEP.ShootSound = "weapons/arccw/mp9/mp9_02.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/mp5/mp5_01.wav"
SWEP.DistantShootSound = "weapons/arccw/mp9/mp9-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.21

SWEP.SpeedMult = 0.99
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
    Pos = Vector(-5.31, -10.252, 2.6),
    Ang = Angle(-0.55, -0.06, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "smg"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SMG1

SWEP.ActivePos = Vector(0, -2, 1.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(0, -2, 2)
SWEP.HolsterAng = Angle(-5, 5, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["extendedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {{ind = 1, bg = 1}},
    },
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 2}},
        WMBodygroups = {{ind = 1, bg = 2}},
    },
    ["nors"] = {
        --VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["mp5sd"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {},
        NameChange = "K&M SF5SD"
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "v_weapon.mp5_Parent",
                Scale = Vector(1.5, 1.5, 2.5),
                Offset = {
                    pos = Vector(0.15, -5.28, -5.6),
                    ang = Angle(-90, 0, -90)
                }
            }
        },
    },
    ["rail"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "v_weapon.mp5_Parent",
                Scale = Vector(1.5, 1.5, 2.5),
                Offset = {
                    pos = Vector(0, -2.93, -11.848),
                    ang = Angle(-90, 0, 90),
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
        Slot = {cspf.."optic_lp", cspf.."optic", cspf.."optic_sniper"}, -- what kind of attachments can fit here, can be string or table
        Bone = "v_weapon.mp5_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vang = Angle(-90, 0, -90),
            wang = Angle(-10, 0, 180)
        },
        SlideAmount = { -- how far this attachment can slide in both directions.
            -- overrides Offset
            vmin = Vector(0.15, -5.6, -3.520),
            vmax = Vector(0.15, -5.6, -6.437),
            wmin = Vector(4.762, 0.832, -7.302),
            wmax = Vector(9.09, 0.832, -7.879),
        },
        InstalledEles = {"mount", "nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = {cspf.."muzzle", cspf.."mp5sd"},
        Bone = "v_weapon.mp5_Parent",
        Offset = {
            vpos = Vector(0.156, -3.908, -15.504),
            vang = Angle(-90, 0, -90),
            wpos = Vector(21, 1.2, -8.5),
            wang = Angle(-10, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf.."foregrip", cspf.."ubgl", cspf.."bipod", cspf.."style_pistol"},
        Bone = "v_weapon.mp5_Parent",
        Offset = {
            vpos = Vector(0, -3.549, -13.561),
            vang = Angle(-90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
        SlideAmount = {
            vmin = Vector(0, -2.93, -9.348),
            vmax = Vector(0, -2.93, -13.561),
            wmin = Vector(14.329, 1, -7),
            wmax = Vector(14.329, 1, -7),
        },
        InstalledEles = {"rail"},
    },
    {
        PrintName = "Tactical",
        Slot = cspf.."tac",
        Bone = "v_weapon.mp5_Parent",
        Offset = {
            vpos = Vector(-0.461, -3.827, -12.068), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, 0),
            wpos = Vector(13.152, 1.386, -5.566),
            wang = Angle(-10.393, 0, -90)
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
        Bone = "v_weapon.mp5_Parent",
        Offset = {
            vpos = Vector(-0.2, -2.5, -4.5), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(9, 1.5, -4.5),
            wang = Angle(0, -4.211, 180)
        },
    },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1,
    },
    ["draw"] = {
        Source = "draw",
        Time = 1,
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
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "idle",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKOut = 0.4,
        LHIKEaseOut = 0.2,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SMG1,
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.6,
        LHIKOut = 0.6,
        LHIKEaseOut = 0.4,
    },
}