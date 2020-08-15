require("config.main")

alt.on("playerConnect",
    function()
        local playerModel = globalSettings.startup.model[math.random(#globalSettings.startup.model)]
        local spawnPosition = {globalSettings.startup.spawn.x, globalSettings.startup.spawn.y, globalSettings.startup.spawn.z}

        player.model = playerModel
        print("connected..")
        player:spawn(unpack(spawnPosition), 0)
    end
)