SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Partner"
SWEP.Trivia_Class = "Shotgun"
SWEP.Trivia_Desc = "Basic double-barrel shotgun manufactured as an entry-level hunting weapon. Long barrel makes for great spread and extra range, at the cost of poor hip fire characteristics. Switch to BOTH firemode to fire both barrels in quick succession."
SWEP.Trivia_Manufacturer = "Gryphon Arms"
SWEP.Trivia_Calibre = "12 Gauge"
SWEP.Trivia_Mechanism = "Break-Action"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1972

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_db.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_db.mdl"
SWEP.ViewModelFOV = 60

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 15
SWEP.DamageMin = 8 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 35 -- in METRES
SWEP.Penetration = 5
SWEP.DamageType = DMG_BUCKSHOT

SWEP.PhysBulletMuzzleVelocity = 200

-- IN M/S
SWEP.ChamberSize = 0 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 2 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 2
SWEP.ReducedClipSize = 1

SWEP.Recoil = 4
SWEP.RecoilSide = 1
SWEP.MaxRecoilBlowback = 2

SWEP.Delay = 60 / 1000 -- 60 / RPM.
SWEP.Num = 8 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        PrintName = "SNGL",
        Mode = 1,
    },
    {
        PrintName = "BOTH",
        Mode = -2,
        RunawayBurst = true,
        Override_ShotRecoilTable = {
            [1] = 0
        }
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = {"weapon_annabelle", "weapon_shotgun"}
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 25 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "buckshot" -- what ammo type the gun uses

SWEP.ShootVol = 120 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/nova/nova-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/m590_suppressed_tp.wav"
SWEP.DistantShootSound = "weapons/arccw/nova/nova-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_shotgun"
SWEP.ShellModel = "models/shells/shell_12gauge.mdl"
SWEP.ShellPitch = 100
SWEP.ShellSounds = ArcCW.ShotgunShellSoundsTable
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.94
SWEP.SightedSpeedMult = 0.5
SWEP.SightTime = 0.30

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-2.422, 0, 1.452),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.RevolverReload = true

SWEP.BulletBones = {
    [1] = "Weapon_Mag_Fresh_2",
    [2] = "Weapon_Mag_Fresh"
}

SWEP.CaseBones = {
    [1] = "Weapon_Mag_2",
    [2] = "Weapon_Mag"
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "shotgun"
SWEP.HoldtypeSights = "ar2"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_SHOTGUN

SWEP.ActivePos = Vector(0.5, 7, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

local hp = ArcCW.CSP_Holsters["compliant"]
SWEP.HolsterPos = hp.pos + Vector(5, 12, -4)
SWEP.HolsterAng = hp.ang + Angle(0, 0, -5)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["reducedmag"] = {
        VMBodygroups = {{ind = 1, bg = 1}},
        WMBodygroups = {},
    },
    ["mount"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/mount_rail.mdl",
                Bone = "Weapon_Thing",
                Scale = Vector(1, 1, 1),
                Offset = {
                    pos = Vector(0, -2.5, -1),
                    ang = Angle(90, 0, -90)
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
        Bone = "Weapon_Thing", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, -2.5, -1), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(13.762, 0.832, -6.102),
            wang = Angle(-10.393, 0, 180)
        },
        InstalledEles = {"mount"}
    },
    {
        PrintName = "Choke",
        DefaultAttName = "Standard Choke",
        Slot = cspf.."choke",
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf.."foregrip"},
        Bone = "Weapon_Thing",
        Offset = {
            vpos = Vector(0, -1.25, 2),
            vang = Angle(90, 0, -90),
            wpos = Vector(14.329, 0.602, -4.453),
            wang = Angle(-10.216, 0, 180)
        },
    },
    {
        PrintName = "Tactical",
        Slot = cspf.."tac",
        Bone = "Weapon_Thing",
        Offset = {
            vpos = Vector(-0.8, -2, 5), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, 180),
            wpos = Vector(19.625, 0.053, -6.298),
            wang = Angle(-8.829, -0.556, 90)
        },
    },
    {
        PrintName = "Ammo Type",
        Slot = cspf.."ammo_shotgun"
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
            vpos = Vector(0.75, -0.75, 4), -- offset that the attachment will be relative to the bone
            vang = Angle(90, 0, -90),
            wpos = Vector(6, 1.5, -3),
            wang = Angle(-10, 0, 180)
        },
    },
}

SWEP.BarrelLength = 37

-- draw
-- holster
-- reload
-- fire
-- cycle (for bolt actions)
-- append _empty for empty variation

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        Time = 1
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.5,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "weapons/arccw/nova/nova_draw.wav", t = 0}},
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.3,
        LHIK = true,
        LHIKIn = 0,
        LHIKOut = 0.25,
        SoundTable = {{s = "weapons/arccw/nova/nova_draw.wav", t = 0}},
    },
    ["fire"] = {
        Source = "shoot",
        Time = 0.4,
    },
    ["fire_iron"] = {
        Source = "shoot_iron",
        Time = 0.4,
    },
    ["reload"] = {
        Source = "reload_part",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Checkpoints = {28, 64, 102},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LastClip1OutTime = 1,
    },
    ["reload_empty"] = {
        Source = "reload",
        Time = 3,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_SHOTGUN,
        Checkpoints = {28, 64, 102},
        FrameRate = 30,
        LHIK = true,
        LHIKIn = 0.3,
        LHIKOut = 0.3,
        LastClip1OutTime = 1,
    },
}