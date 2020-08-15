local playerCache = {}

alt.on("playerDisconnect",
    function(player)
        if playerCache[player] then
            playerCache[player] = nil
            collectgarbage("collect")
        end
    end
)

function setData(player, key, value, sync)
    if not playerCache[player] then
        playerCache[player] = {}
    end
    playerCache[player][key] = value
    if sync then

    end
    return true
end

function getData(player, key)
    return playerCache[player] and playerCache[player][key] or false
end

function removeData(player, key)
    if playerCache[player] and playerCache[player][key] then
        playerCache[player][key] = nil
        collectgarbage("collect")
    end
    return true
end