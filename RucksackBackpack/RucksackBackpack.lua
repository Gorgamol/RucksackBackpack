local f = CreateFrame("Frame")
f:RegisterEvent("CHAT_MSG_PARTY")
f:RegisterEvent("CHAT_MSG_SAY")
f:RegisterEvent("CHAT_MSG_GUILD")
f:RegisterEvent("CHAT_MSG_RAID")
f:SetScript("OnEvent", function(self, event, msg, sender, _, _, _, _, _, chanNumber, ...)
  local playerName = UnitName("player")
  if msg:match("Rucksack Backpack!") and (sender ~= playerName) then
    if event == "CHAT_MSG_PARTY" then
      SendChatMessage("Backpack Rucksack!", "PARTY", nil, chanNumber)
    elseif event == "CHAT_MSG_SAY" then
      SendChatMessage("Backpack Rucksack!", "SAY", nil, chanNumber)
    elseif event == "CHAT_MSG_GUILD" then
      SendChatMessage("Backpack Rucksack!", "GUILD", nil, chanNumber)
    elseif event == "CHAT_MSG_RAID" then
      SendChatMessage("Backpack Rucksack!", "RAID", nil, chanNumber)
    end
  end
end)
