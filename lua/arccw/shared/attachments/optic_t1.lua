att.PrintName = "T-1 (LP)"
att.Icon = Material("entities/acwatt_optic_t1.png", "mips smooth")
att.Description = "Mid-profile red dot sight with magnification properties."

att.SortOrder = -0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic_lp"

att.Model = "models/weapons/arccw/atts/t1.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -0.594),
        Ang = Angle(0, 0, 0),
        Magnification = 1.4,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/dot.png", "mips smooth")
att.HolosightFlare = Material("holosights/dot_flare.png", "mips smooth")
att.HolosightSize = 0.3
att.HolosightBone = "holosight"

att.HolosightMagnification = 1

att.Mult_SightTime = 1.03

att.Colorable = true