--[[ 
    Written by @Uzixt
    main.server.lua
]]

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local ServerScriptService = game:GetService("ServerScriptService")

local Initialise = require(ReplicatedStorage.Shared.InitHandler)
local MainServer = ServerScriptService.Server.MainServer

-- Initialise client
Initialise {
    MainServer
}