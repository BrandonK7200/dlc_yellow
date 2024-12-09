return {
    death = function(cutscene, battler, enemy)
        Game.battle.music:stop()
        local axis = Game.battle:getEnemyBattler("axis")
        axis:getActiveSprite():setSprite("lightbattle/nocharge")
        cutscene:wait(1)
        --axis:toggleOverlay(false)
        cutscene:battlerText(axis, "BzZT-Z// z. ._ .")
        cutscene:battlerText(axis, ". . . W-wW-")
        cutscene:battlerText(axis, "-WHA_T HAS H/APPENeD\nTO M..E?")
        cutscene:battlerText(axis, "[color:FF00FF]D-D-DAMAGE CRITICAL_[color:reset]")
        cutscene:battlerText(axis, "[color:FF00FF]Se-EK R/ePAI'RS IM\nEDIATELY_[color:reset]")
        cutscene:battlerText(axis, "I S_EE .  . .")
        cutscene:battlerText(axis, "[color:FF00FF]CALLInG MR. ChUJIN_[color:reset]")
        cutscene:battlerText(axis, "CREaTOR. .. ?")
        cutscene:battlerText(axis, "[color:FF00FF]CALLInG MR. ChUJIN_[color:reset]")
        cutscene:battlerText(axis, "CRE_TO R, I NEED\nASSIST//ANCE_")
        cutscene:battlerText(axis, "[color:FF00FF]CALLInG MR. Ch , . _[color:reset]")
        cutscene:battlerText(axis, "[color:FF00FF]/CrEAt.. ,..[color:reset]")
        cutscene:battlerText(axis, "[color:FF00FF]CAL-L , , i n g _[color:reset]")
        cutscene:battlerText(axis, "CRe. ...")
        cutscene:battlerText(axis, ".")
        cutscene:battlerText(axis, "creator.")

        Assets.playSound("vaporized")
        axis:defeat("KILLED", true)
        cutscene:after(function()
            Game.battle:setState("VICTORY")
        end, true)
    end,
    out_of_power = function(cutscene, battler, enemy)
        local axis = Game.battle:getEnemyBattler("axis")
        cutscene:wait(0.3)
        Game.battle.music:stop()
        Assets.playSound("ut_explosion")
        cutscene:battlerText(axis, "ZzzzzBBZzzzz\nAooaaaA- _- .  .", {wait=false, auto=true, skip=false})
        cutscene:fadeOut(1, {color={1, 1, 1}})
        cutscene:wait(2.5)
        cutscene:fadeIn(0.1, {color={1, 1, 1}})
        axis:getActiveSprite():setSprite("lightbattle/nocharge")
        cutscene:wait(1)
        cutscene:battlerText(axis, "[color:FF00FF]*BEEP BEEP*")
        cutscene:battlerText(axis, "[color:FF00FF]SHUTTING OFF\nSTRENUOUS\nEMOTIONS\nTO SAVE POWER.")
        cutscene:battlerText(axis, "AH.")
        cutscene:battlerText(axis, "WHAT DID YOU\nDO TO ME?")
        cutscene:battlerText(axis, "I DON'T FEEL AN\nUTTER MURDEROUS\nRAGE ANYMORE.")
        cutscene:battlerText(axis, "I... DO NOT\nKNOW WHAT TO\nDO WITH MYSELF.")
        cutscene:battlerText(axis, "SUPPOSE I WILL\nSTARE AT YOU\nBLANKLY UNTIL\nYOU DO SOMETHING.")

        cutscene:after(function()
            Game.battle:setState("ACTIONSELECT")
        end, true)
    end
}