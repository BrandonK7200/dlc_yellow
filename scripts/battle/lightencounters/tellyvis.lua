local TellyVis, super = Class(LightEncounter)

function TellyVis:init()
    super:init(self)

    self.text = "* Telly-Vis tunes in!"

    if Game:getFlag("steamworks_kills") == nil then
        Game:setFlag("steamworks_kills", 0)
    end

    if Game:getFlag("steamworks_kills") >= 13 then
        local enemies_left = 20 - Game:getFlag("steamworks_kills")
        local mus_pitch
        if enemies_left <= 0 then
            mus_pitch = 1
        else
            mus_pitch = (((enemies_left / 7) * 10) * 0.1)
        end
        MUSIC_PITCHES["genobattle_yellow"] = mus_pitch
        self.music = "genobattle_yellow"
    else
        self.music = "heatwave_approaching"
    end

    self:addEnemy("tellyvis", 316, 228)

    self.background_color = {238/255, 71/255, 122/255}

    self.can_flee = false

    self.kill_count = 0

end

return TellyVis