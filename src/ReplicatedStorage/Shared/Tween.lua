--// Abstraction for TweenService
--// Written by @Uzixt

local Tween = {}
local TweenService = game:GetService("TweenService")

local function processTweenInfo(Data)
    local TweenInformation;
    if typeof(Data[#Data]) ~= "TweenInfo" then
        TweenInformation = TweenInfo.new(.2)
    else
        TweenInformation = Data[#Data]
        Data[#Data] = nil   
    end
    return TweenInformation
end

Tween.Play = function(InstanceTbl, elementToWaitFor)
    local isThere = false;
    for Element, Data in pairs(InstanceTbl) do
        if Element == elementToWaitFor then
            isThere = true
            continue
        end
        TweenService:Create(
            Element,
            processTweenInfo(Data),
            Data
        ):Play()
    end

    if isThere then
        local Data = InstanceTbl[elementToWaitFor]
        local toReturn = TweenService:Create(
            elementToWaitFor,
            processTweenInfo(Data),
            Data
        )
        toReturn:Play()
        return toReturn
    end
end

--[[
    USAGE:

    If no TweenInfo defined, it defaults to .2

    local myTween = Tween.Play({
        [Element] = {
            Position = UDim2.new(2,2,2,2)
        }
    }, Element)

    Tween.Play({
        [Element] = {
            Size = ...,
            TweenInfo.new(5)
        },

        [AnotherElement] = {
            Position = ...,
        }
    })

]]

return Tween