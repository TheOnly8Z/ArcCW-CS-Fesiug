att.PrintName = "Reduced Load"
att.Icon = Material("entities/acwatt_ammo_lowpower.png", "mips smooth")
att.Description = "Rounds with a low-power charge. Reduces kick, but also reduces stopping power."
att.Desc_Pros = {
}
att.Desc_Cons = {
}
att.AutoStats = true
att.Slot = {cspf.."ammo_bullet", cspf.."ammo_shotgun"}

att.Mult_Damage = 0.9
att.Mult_DamageMin = 0.9
att.Mult_Penetration = 0.75
att.Mult_Recoil = 0.75
att.Mult_ShootVol = 0.8

att.Mult_PhysBulletMuzzleVelocity = 0.8