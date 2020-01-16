local vRPAdminPamonha = class("vRPAdminPamonha", vRP.Extension)

local function menu_adminpamonha(self)



end

--------------------

function vRPAdminPamonha:__construct()
    vRP.Extension.__construct(self)
	
    menu_adminpamonha(self)

    local function m_reviveplayer(menu)
        local user = menu.user
        local id = menu.data.id
        local tuser = vRP.users[menu.data.id]
    
        if tuser then
            vRP.EXT.Survival.remote._varyHealth(tuser.source,100)
        end
      end


    vRP.EXT.GUI:registerMenuBuilder("admin.users.user", function(menu)
        menu:addOption("Reviver", m_reviveplayer)
    end)
end

vRP:registerExtension(vRPAdminPamonha)
