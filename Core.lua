--[[ MIT License

Copyright (c) 2021 Christophe MICHEL

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
]]

local ADDON_NAME, SC = ...
local SoulshapeCollection = LibStub("AceAddon-3.0"):NewAddon(SC, ADDON_NAME, "AceConsole-3.0", "AceEvent-3.0")


function SoulshapeCollection:OnInitialize()
    self.collected = {}
end

function SoulshapeCollection:OnEnable()
    self:CreateDatabase()

    -- Register event quest complete to update collection
    self:RegisterEvent("QUEST_TURNED_IN")
    
    -- Fixes an issue when our addon loads after Blizzard_Collections
    if not CollectionsJournal then
        LoadAddOn("Blizzard_Collections")
    end 

    self:CreateCollectionPanel()
    self:RegisterChatCommand("model", function(input)
        CharacterModelFrame:SetDisplayInfo(input)
    end)
end

function SoulshapeCollection:QUEST_TURNED_IN(questID)
    self.collected[questID] = true
end