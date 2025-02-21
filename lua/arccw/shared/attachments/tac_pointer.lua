att.PrintName = "Blue Laser"
att.Icon = Material("entities/acwatt_tac_pointer.png", "mips smooth")
att.Description = "Blue-colored laser pointer. Bright blue dot improves accuracy while moving."
att.Desc_Pros = {
}
att.Desc_Cons = {
    "con.beam"
}
att.AutoStats = true
att.Slot = {cspf.."tac_pistol", cspf.."tac"}

att.Model = "models/weapons/arccw/atts/laser_pointer.mdl"

att.Laser = true
att.LaserStrength = 0.6
att.LaserBone = "laser"

att.ColorOptionsTable = {Color(50, 50, 255)}

att.Mult_MoveDispersion = 0.5