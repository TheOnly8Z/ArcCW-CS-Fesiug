att.PrintName = "Micro (2x)"
att.Icon = Material("entities/acwatt_optic_micro.png", "mips smooth")
att.Description = "Miniature optic intended for low-magnification applications and close combat. Very lightweight."

att.SortOrder = 2

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic"

att.Model = "models/weapons/arccw/atts/micro.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 9, -1.499),
        Ang = Angle(-0.2, -0.2, 0),
        Magnification = 1.3,
        ScopeMagnification = 2
    }
}

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/circle.png", "mips smooth")
att.HolosightNoFlare = true
att.HolosightSize = 10.5
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/micro_hsp.mdl"

att.HolosightMagnification = 2
att.HolosightBlackbox = true

att.Mult_SightTime = 1.08
att.Mult_SightedSpeedMult = 0.94