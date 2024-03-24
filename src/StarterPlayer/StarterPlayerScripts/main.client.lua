--[[ 
    Written by @Uzixt
    main.client.lua
]]
local ReplicatedStorage = game:GetService("ReplicatedStorage")

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local Initialise = require(ReplicatedStorage.Shared.InitHandler)
local MainClient = ReplicatedStorage.Client.MainClient

-- Initialise client
Initialise {
    MainClient
}