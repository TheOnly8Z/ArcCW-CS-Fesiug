att.PrintName = "Aimpoint (RDS)"
att.Icon = Material("entities/acwatt_optic_aimpoint.png", "mips smooth")
att.Description = "Tube-based red dot sight for rifles."

att.SortOrder = 0

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic"

att.Model = "models/weapons/arccw/atts/aimpoint.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -1.43107 * 0.75),
        Ang = Angle(0, 0, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png", "mips smooth")
att.HolosightFlare = Material("holosights/dot_flare.png", "mips smooth")
att.HolosightSize = 0.3
att.HolosightBone = "holosight"

att.Mult_SightTime = 1.05

att.Colorable = true