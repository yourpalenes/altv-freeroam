require("config.main")

alt.on("playerConnect",
    function(player)
        local playerModel = globalSettings.startup.model[math.random(#globalSettings.startup.model)]
        local spawnPosition = globalSettings.startup.spawn

        player.model = playerModel
        player:spawn(spawnPosition.x, spawnPosition.y, spawnPosition.z, 0)
    end
)