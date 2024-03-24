local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SharedModules = ReplicatedStorage.Shared
local Initialise = require(SharedModules.InitHandler)

-- LINK MODULES HERE
local CLIENT_DEPENDENCIES = require(script.ClientDependencies)

return {
    Init = function()
        Initialise (CLIENT_DEPENDENCIES)
    end
}
