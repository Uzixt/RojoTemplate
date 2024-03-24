local ON_PLAYER_JOINED_SINGLETON = {}

local function onPlayerJoined(Player: Player)
    print(`{Player.Name} has connected to the server!`)
end

local function onPlayerLeaved(Player)
    print(`{Player.Name} has left the server!`)
end

ON_PLAYER_JOINED_SINGLETON.Init = function()
    game.Players.PlayerAdded:Connect(onPlayerJoined)
    game.Players.PlayerRemoving:Connect(onPlayerLeaved)
end

return ON_PLAYER_JOINED_SINGLETON