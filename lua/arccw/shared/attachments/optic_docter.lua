att.PrintName = "Docter (LP)"
att.Icon = Material("entities/acwatt_optic_docter.png", "mips smooth")
att.Description = "Low-profile pistol sight with triangular sight."

att.SortOrder = -0.5

att.Desc_Pros = {
    "autostat.holosight",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic_lp"

att.Model = "models/weapons/arccw/atts/docter.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 10, -0.579),
        Ang = Angle(0, -0.1, 0),
        Magnification = 1.1,
        ScrollFunc = ArcCW.SCROLL_NONE
    }
}

att.Holosight = true
att.HolosightReticle = Material("holosights/delta.png")
att.HolosightFlare = Material("holosights/delta_flare.png", "mips smooth")
att.HolosightSize = 0.5
att.HolosightBone = "holosight"

att.Colorable = true