local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SharedModules = ReplicatedStorage.Shared
local Initialise = require(SharedModules.InitHandler)

-- LINK MODULES HERE
local SERVER_DEPENDENCIES = require(script.ServerDependencies)

return {
    Init = function()
        Initialise (SERVER_DEPENDENCIES)
    end
}
