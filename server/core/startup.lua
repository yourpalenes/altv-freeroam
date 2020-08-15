require("config.main")
require("services.data")

alt.on("playerConnect",
    function(player)
        local playerModel = globalSettings.startup.model[math.random(1, #globalSettings.startup.model)]
        local spawnPosition = globalSettings.startup.spawn

        player.model = playerModel
        player:spawn(spawnPosition.x, spawnPosition.y, spawnPosition.z, 0)
        
    end
)