--Written by @Uzixt

--[[
    Usage:
    InitHandler.Init(
        moduleScriptToInit [Instance]
    )
]]

return function(...)
    if (...==nil) then
        print("No arguments given")
        return
    end
    
    local ModuleTable;
    if type(...) == "table" then
        ModuleTable = ...
    else
        ModuleTable = {...}
    end

    for _,v in ModuleTable do
        if not v:IsA("ModuleScript") then
            continue
        end
        task.spawn(function()
            require(v).Init()
        end)
    end
end
