att.PrintName = "GP25 (FLASH)"
att.Icon = Material("entities/acwatt_ubgl_gp25.png", "mips smooth")
att.Description = "Russian underbarrel launcher with flashbang rounds. Flashbangs temporarily blind targets and deal a small amount of explosive damage."
att.Desc_Pros = {
    "pro.ubgl",
}
att.Desc_Cons = {
}
att.Desc_Neutrals = {
    "info.toggleubgl"
}
att.AutoStats = true
att.Slot = cspf.."ubgl"
att.InvAtt = "ubgl_gp25"

att.LHIK = true
att.LHIK_Animation = true

att.MountPositionOverride = 0

att.Model = "models/weapons/arccw/atts/ubgl_gp25.mdl"
att.ModelBodygroups = "00"
att.ModelOffset = Vector(-1, 0, 0)

att.UBGL = true

att.UBGL_PrintName = "UB (FLSH)"
att.UBGL_Automatic = false
att.UBGL_MuzzleEffect = "muzzleflash_m79"
att.UBGL_ClipSize = 1
att.UBGL_Ammo = "smg1_grenade"
att.UBGL_RPM = 300
att.UBGL_Recoil = 2.5
att.UBGL_Capacity = 1

local function Ammo(wep)
    return wep.Owner:GetAmmoCount("smg1_grenade")
end

att.UBGL_Fire = function(wep, ubgl)
    if wep:Clip2() <= 0 then return end

    wep:DoLHIKAnimation("fire", 0.5)

    wep:FireRocket("arccw_gl_flash", 30000)

    wep:EmitSound("weapons/grenade_launcher1.wav", 100)

    wep:SetClip2(wep:Clip2() - 1)

    wep:DoEffects()
end

att.UBGL_Reload = function(wep, ubgl)
    if wep:Clip2() >= 1 then return end

    if Ammo(wep) <= 0 then return end

    wep:SetNextSecondaryFire(CurTime() + 2.5)

    wep:DoLHIKAnimation("reload_gp25", 2.5)
    wep:PlaySoundTable({
        {s = "weapons/arccw/m203/m203_shellin.wav", t = 1.25},
        {s = "weapons/p228/p228_slideback.wav", t = 2}
    })

    local reserve = Ammo(wep)

    reserve = reserve + wep:Clip2()

    local clip = 1

    local load = math.Clamp(clip, 0, reserve)

    wep.Owner:SetAmmo(reserve - load, "smg1_grenade")

    wep:SetClip2(load)
end

att.Mult_SightTime = 1.25
att.Mult_SpeedMult = 0.8
att.Mult_SightedSpeedMult = 0.85