local function WaffleLabGamba()
	-- Define descriptive attributes of the custom extension that are displayed on the Tracker settings
	local self = {
		version = "1.0",
		name = "LabGambaTime",
		author = "WaffleSmacker",
		description = "Sends info to streamerbot to facilitate gambas in the lab!  Check info page to set up.",
		github = "WaffleSmacker/LabGambaTime-IronmonExtension",
	}
	self.url = string.format("https://github.com/%s", self.github)


	-- Executed when the user clicks the "Check for Updates" button while viewing the extension details within the Tracker's UI
	function self.checkForUpdates()
		local versionCheckUrl = string.format("https://api.github.com/repos/%s/releases/latest", self.github)
		local versionResponsePattern = '"tag_name":%s+"%w+(%d+%.%d+)"' -- matches "1.0" in "tag_name": "v1.0"
		local downloadUrl = string.format("https://github.com/%s/releases/latest", self.github)
		local compareFunc = function(a, b) return a ~= b and not Utils.isNewerVersion(a, b) end -- if current version is *older* than online version
		local isUpdateAvailable = Utils.checkForVersionUpdate(versionCheckUrl, self.version, versionResponsePattern, compareFunc)
		return isUpdateAvailable, downloadUrl
	end

	-- The extension will notify Streamerbot to update global vars with these names
	-- If you want to change them, only change the value (the string on the right-half)
	local GLOBAL_VARS = {
		LabGamba_DefeatedRivalOne = "LabGamba_DefeatedRivalOne",
		LabGamba_IsPokemonDead = "LabGamba_IsPokemonDead",
		LabGamba_SeedReset = "LabGamba_SeedReset"
	}
	-- A custom, internal unique name for this set of events. Actual name doesn't matter at all
	local EVENT_KEY = "G_WaffleLabGambas"

	-- Game IDs for various things
	local IDS = {
		TrainerRival1A = 326,
		TrainerRival1B = 327,
		TrainerRival1C = 328,
	}

	self.PerSeedVars = {
		DefeatedRivalOne = false,
		PokemonDead = false,
		BattleEnded = false,
	}

	function self.getHpPercent()
		local playingFRLG = GameSettings.game == 3 -- FRLG
		local leadPokemon = Tracker.getPokemon(1, true) or Tracker.getDefaultPokemon()
		if PokemonData.isValid(leadPokemon.pokemonID) and playingFRLG then
			local hpPercentage = (leadPokemon.curHP or 0) / (leadPokemon.stats.hp or 100)
			if hpPercentage >= 0 then
				return hpPercentage
			end
		end
	end

	function self.inOaksLab()
		local playingFRLG = GameSettings.game == 3 -- FRLG
		-- https://github.com/besteon/Ironmon-Tracker/blob/d13de0d7480d32897161cb12c692b3a2b5197b08/ironmon_tracker/data/RouteData.lua#L494C4-L494C5
		local inRockTunnel = TrackerAPI.getMapId() == 5 -- Oak's Lab
		local defeatedTrainer = Program.hasDefeatedTrainer(IDS.TrainerRockTunnel1)
		return playingFRLG and inRockTunnel and not defeatedTrainer
	end

	function self.resetSeedVars()
		local V = self.PerSeedVars
		V.BattleEnded = false
		V.PokemonDead = false
		V.DefeatedRivalOne = (Program.hasDefeatedTrainer(IDS.TrainerRival1A) or Program.hasDefeatedTrainer(IDS.TrainerRival1B) or Program.hasDefeatedTrainer(IDS.TrainerRival1C))
	end

	-- To properly determine when new items are acquired, need to load them in first at least once
	local loadedVarsThisSeed
	local function isPlayingFRLG() return GameSettings.game == 3 end

	-- Tracker specific functions, can't rename these functions
	-- Executed only once: when the Tracker finishes starting up and after it loads all other required files and code
	function self.startup()
		if not isPlayingFRLG() then
			return
		end
		EventHandler.addNewGameEvent(EVENT_KEY, function(this, request)
			-- If somehow no global variable was sent over, send nothing with this event trigger
			if Utils.isNilOrEmpty(request.SanitizedInput) then
				return ""
			end

			-- Send to the Tracker Network a response with a named global variable for what changed
			-- The global variable's name was sent to this event through the input field of the created request
			local globalVarName = request.SanitizedInput
			local globalVarValue = self.PerSeedVars[globalVarName] or "Updated!"
			-- print (globalVarValue)
			local response = {
				-- Message = "", -- An optional message to send to stream chat
				GlobalVars = {
					[globalVarName] = globalVarValue,
				},
			}
			return response
		end)

		self.resetSeedVars()
		-- Signal sent to streamerbot to start the gamba
		EventHandler.triggerEvent(EVENT_KEY, GLOBAL_VARS.LabGamba_SeedReset)
	end

	-- Executed only once: When the extension is disabled by the user, necessary to undo any customizations, if able
	function self.unload()
		if not isPlayingFRLG() then
			return
		end
		EventHandler.removeEvent(EVENT_KEY)
	end

	function self.afterBattleEnds()
        local V = self.PerSeedVars
        if not V.DefeatedRivalOne and self.inOaksLab() and not V.BattleEnded and (Program.hasDefeatedTrainer(IDS.TrainerRival1A) or Program.hasDefeatedTrainer(IDS.TrainerRival1B) or Program.hasDefeatedTrainer(IDS.TrainerRival1C)) then
            V.DefeatedRivalOne = true
			V.BattleEnded = true
			-- print("You Win!")
            EventHandler.triggerEvent(EVENT_KEY, GLOBAL_VARS.LabGamba_DefeatedRivalOne)
        end
        
    end

	 -- Executed once every 30 frames after a battle event
	 function self.afterBattleDataUpdate()
        local V = self.PerSeedVars

        -- Set up variable to use in the following checks.
        local hpPercentage = self.getHpPercent()
        -- Lead Pokemon Died
        if hpPercentage ~= nil and hpPercentage == 0 and V.PokemonDead == false and self.inOaksLab() then
            V.PokemonDead = true
			V.BattleEnded = true
			-- print("You Lose!")
            EventHandler.triggerEvent(EVENT_KEY, GLOBAL_VARS.LabGamba_IsPokemonDead)
        end

    end

    return self
end

return WaffleLabGamba()
