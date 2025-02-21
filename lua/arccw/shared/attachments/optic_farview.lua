att.PrintName = "Farview (4-9x)"
att.Icon = Material("entities/acwatt_optic_farview.png", "mips smooth")
att.Description = "High-magnification sniper rifle scope for long range combat."

att.SortOrder = 9

att.Desc_Pros = {
    "autostat.holosight",
    "autostat.zoom",
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = cspf.."optic_sniper"

att.GivesFlags = {"hugesight"}

att.Model = "models/weapons/arccw/atts/farview2.mdl"

att.AdditionalSights = {
    {
        Pos = Vector(0, 14, -1.5),
        Ang = Angle(-0.2, -0.2, 0),
        Magnification = 1.3,
        ScrollFunc = ArcCW.SCROLL_ZOOM,
        ZoomLevels = 6,
        ZoomSound = "weapons/arccw/fiveseven/fiveseven_slideback.wav",
        IgnoreExtra = true
    }
}

att.ScopeGlint = true

att.Holosight = true
att.HolosightReticle = Material("hud/scopes/mildot.png", "smooth")
att.HolosightNoFlare = true
att.HolosightSize = 13
att.HolosightBone = "holosight"
att.HolosightPiece = "models/weapons/arccw/atts/farview2_hsp.mdl"
att.Colorable = true

att.HolosightMagnification = 4
att.HolosightBlackbox = true

att.HolosightConstDist = 64

att.HolosightMagnificationMin = 4
att.HolosightMagnificationMax = 9

att.Mult_SightTime = 1.35
att.Mult_SightedSpeedMult = 0.8
att.Mult_SpeedMult = 0.9