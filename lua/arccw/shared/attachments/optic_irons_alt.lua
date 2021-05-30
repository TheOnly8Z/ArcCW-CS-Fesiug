att.PrintName = "Precision Irons"
att.Icon = Material("entities/acwatt_optic_irons_alt.png", "mips smooth")
att.Description = "Alternate iron sight set up for greater precision but with a reduced field of view."

att.SortOrder = 100
att.Free = true

att.Desc_Pros = {
    "autostat.zoom",
}
att.Desc_Cons = {
    "con.fov"
}
att.Slot = cspf.."irons_alt"