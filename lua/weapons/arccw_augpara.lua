SWEP.Base = "arccw_aug"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - CS+" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Schmidt Subcompact"
SWEP.Trivia_Class = "Submachine Gun"
SWEP.Trivia_Desc = "Bullpup SMG based on the... Bullpup. Bullpup design enables superior accuracy and range out of a compact SMG package, and a lighter dual-stage trigger is installed. Using it one-handed ain't half bad."
SWEP.Trivia_Manufacturer = "Auschen Waffenfabrik"
SWEP.Trivia_Calibre = "9x19mm Parabellum"
SWEP.Trivia_Mechanism = "Gas-Operated"
SWEP.Trivia_Country = "Austria"
SWEP.Trivia_Year = 1978

SWEP.Slot = 2

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_para_9.mdl"
SWEP.WorldModel = "models/weapons/arccw/w_para9.mdl"
SWEP.ViewModelFOV = 60

SWEP.DefaultBodygroups = "00000"

SWEP.BodyDamageMults = CSX_BodyDamageMults
SWEP.Damage = 26
SWEP.DamageMin = 18 -- damage done at maximum range
SWEP.RangeMin = 10
SWEP.Range = 85 -- in METRES
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET

SWEP.PhysBulletMuzzleVelocity = 400

-- IN M/S
SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 25 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 45
SWEP.ReducedClipSize = 15

SWEP.Mult_ReloadTime = 0.8

SWEP.Recoil = 0.25
SWEP.RecoilSide = 0.2
SWEP.RecoilRise = 1

SWEP.Delay = 60 / 800 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.

SWEP.Firemodes = {
    {
        Mode = 2,
        CustomBars = "---_-",
        PrintName = "DUAL-STAGE",
        M_Hook_Mult_RPM = function(wep, data)
            if wep:GetBurstCount() == 0 and wep:GetState() != ArcCW.STATE_CUSTOMIZE then
                data.mult = data.mult * (2 / 3)
            end
        end,
    },
    {
        Mode = -3,
        Mult_RPM = 1.25
    },
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_smg1"
SWEP.NPCWeight = 100

SWEP.AccuracyMOA = 5 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 600 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 150

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses

SWEP.ShootVol = 110 -- volume of shoot sound
SWEP.ShootPitch = 110 -- pitch of shoot sound

SWEP.FirstShootSound = "weapons/arccw/mac10/mac10-1.wav"
SWEP.ShootSound = "weapons/arccw/mac10/mac10-1.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/mp5/mp5_01.wav"
SWEP.DistantShootSound = "weapons/arccw/mac10/mac10-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_mp5"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SpeedMult = 0.96
SWEP.SightedSpeedMult = 0.55
SWEP.SightTime = 0.24

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-7.843, -11.933, 1.738),
    Ang = Angle(4.0, -3.875, -10.58),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.GuaranteeLaser = false
SWEP.HoldtypeHolstered = "passive"
SWEP.HoldtypeActive = "ar2"
SWEP.HoldtypeSights = "rpg"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2

SWEP.ActivePos = Vector(-4, -4, 1.5)
SWEP.ActiveAng = Angle(0, -5, -10)

local hp = ArcCW.CSP_Holsters["compliant"]
SWEP.HolsterPos = hp.pos + Vector(0, 1, -0.5)
SWEP.HolsterAng = hp.ang + Angle(0, 0, -5)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.BarrelLength = 22

SWEP.ExtraSightDist = 3

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
        VMBodygroups = {{ind = 2, bg = 1}},
        WMBodygroups = {},
    },
    ["nofg"] = {
        VMBodygroups = {{ind = 3, bg = 1}},
        WMBodygroups = {},
    },
    ["norail"] = {
        VMBodygroups = {{ind = 4, bg = 1}},
        WMBodygroups = {},
    },
    ["optic_aug_scope"] = false
}
SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = {cspf .. "optic_lp", cspf .. "optic", cspf .. "optic_sniper"}, -- what kind of attachments can fit here, can be string or table
        MergeSlots = {8},
        Bone = "v_weapon.aug_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.8, -5.103, -2.08), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, -180 + 100.628),
            wpos = Vector(8, 1, -6),
            wang = Angle(-10.393, 0, 180)
        },
        InstalledEles = {"nors"},
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = cspf .. "muzzle",
        Bone = "v_weapon.aug_Parent",
        Offset = {
            vpos = Vector(0.09, -3.754, -10.587),
            vang = Angle(-93, 0, -90),
            wpos = Vector(18, 1, -6.35),
            wang = Angle(-9.79, 0, 180)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {cspf .. "foregrip", cspf .. "ubgl", cspf .. "bipod", cspf .. "style_pistol"},
        Bone = "v_weapon.aug_Parent",
        Offset = {
            vpos = Vector(0, -2.5, -5.5),
            vang = Angle(180 + 86.087, 0, -180 + 100.628),
            wpos = Vector(17, 0.782, -6.342),
            wang = Angle(-10.216, 0, 180)
        },
        InstalledEles = {"nofg"},
    },
    {
        PrintName = "Tactical",
        Slot = cspf .. "tac",
        Bone = "v_weapon.aug_Parent",
        Offset = {
            vpos = Vector(1.386, -2.286, -3.787), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, 90 + 100.628),
            wpos = Vector(10.625, 0.853, -4.298),
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
        Slot = cspf .. "optic_aug_scope",
        Bone = "v_weapon.aug_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0, 0, 0), -- offset that the attachment will be relative to the bone
            vang = Angle(-90, 0, -90),
            wpos = Vector(0, 0, 0),
            wang = Angle(0, 0, 0)
        },
        Hidden = true,
        NoWM = true,
        InstalledEles = {"norail", "nors"},
    },
    {
        PrintName = "Charm",
        Slot = cspf .. "charm",
        Hidden = true,
        FreeSlot = true,
        Bone = "v_weapon.aug_Parent", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(-0.15, -3.75, 2), -- offset that the attachment will be relative to the bone
            vang = Angle(180 + 86.087, 0, -180 + 100.628),
            wpos = Vector(3, 1.5, -3.5),
            wang = Angle(-10.393, 0, 180)
        },
    },
}