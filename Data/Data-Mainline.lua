--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2011 ~ 2026 - Arith Hsu, Atlas Team 

	This file is part of Atlas.

	Atlas is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	Atlas is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with Atlas; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]
-----------------------------------------------------------------------
-- Upvalued Lua API.
-----------------------------------------------------------------------
local _G = getfenv(0)

local _, private = ...
local LibStub = _G.LibStub
---@type AtlasAddon
local Atlas = LibStub("AceAddon-3.0"):GetAddon("Atlas")

local Client = Atlas.Client

if not Client.isRetail then
	return
end

local BZ = Atlas_GetLocaleLibBabble("LibBabble-SubZone-3.0")
local BF = Atlas_GetLocaleLibBabble("LibBabble-Faction-3.0")
local L = LibStub("AceLocale-3.0"):GetLocale(private.addon_name)
local ALC = LibStub("AceLocale-3.0"):GetLocale("Atlas")
local ALIL = Atlas_IngameLocales
---@type AtlasDataModule
local addon = Atlas:GetModule(private.module_name)

local db = {}
addon.db = db

local constants = Atlas.constants
local labelcolors = constants.colors.labels
local BLUE = labelcolors.BLUE
local GREN = labelcolors.GREN
local GREY = labelcolors.GREY
local LBLU = labelcolors.LBLU
local _RED = labelcolors._RED
local ORNG = labelcolors.ORNG
local PINK = labelcolors.PINK
local PURP = labelcolors.PURP
local WHIT = labelcolors.WHIT
local YLOW = labelcolors.YLOW
local INDENT = labelcolors.INDENT

-- local helper functions
local function getBossName(bossname, encounterID, creatureIndex)
	return Atlas:GetBossName(bossname, encounterID, creatureIndex, private.module_name)
end

local function getCreatureName(creatureName, creatureID)
	return Atlas:GetCreatureName(creatureName, creatureID)
end

local function getQuestTitlebyID(title, id)
	return Atlas:GetQuestTitlebyID(title, id)
end

local function getItemTitlebyID(title, id)
	return Atlas:GetItemTitlebyID(title, id)
end

-- local constants for easier access
local SLASH = ALC["Slash"]
local COLON = ALC["Colon"]
local COMMA = ALC["Comma"]
local L_PAREN = ALC["L-Parenthesis"]
local R_PAREN = ALC["R-Parenthesis"]
local ENTRANCE = ALC["Entrance"]
local WANDERS = ALC["Wanders"]
local UPPER = ALC["Upper"]
local CONNECTION = ALC["Connection"]
local RARE = ALC["Rare"]
local RANDOM = ALC["Random"]

db.AtlasMaps = {
	AuchindounEnt = {
		ZoneName = { BZ["Auchindoun"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Terokkar Forest"] },
		LevelRange = "64-75",
		MinLevel = "62",
		PlayerLimit = { 5 },
		Acronym = L["Auch"],
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..BZ["Auchenai Crypts"], 10001 },
		{ BLUE.." B) "..BZ["Mana-Tombs"], 10002 },
		{ BLUE.." C) "..BZ["Sethekk Halls"], 10003 },
		{ BLUE.." D) "..BZ["Shadow Labyrinth"], 10004 },
		{ BLUE.." E) "..ENTRANCE, 10005 },
		{ GREN.." 1') "..L["Clarissa"], 10006 },
		{ GREN..INDENT..L["Greatfather Aldrimus"] },
		{ GREN..INDENT..L["Ha'lei"] },
		{ GREN..INDENT..L["Horvon the Armorer <Armorsmith>"] },
		{ GREN..INDENT..L["Ramdor the Mad"] },
		{ GREN.." 2') "..L["Nexus-Prince Haramad"], 10007 },
		{ GREN..INDENT..L["\"Slim\" <Shady Dealer>"] },
		{ GREN..INDENT..L["\"Captain\" Kaftiz"] },
		{ GREN.." 3') "..L["Dealer Tariq <Shady Dealer>"], 10008 },
		{ GREN..INDENT..L["Provisioner Tsaalt"] },
		{ GREN.." 4') "..ALC["Meeting Stone"], 10009 },
	},
	AuchAuchenaiCrypts = {
		ZoneName = { BZ["Auchindoun"]..COLON..BZ["Auchenai Crypts"] },
		Location = { BZ["Terokkar Forest"] },
		DungeonID = 149,
		DungeonHeroicID = 178,
		Acronym = L["AC"],
		WorldMapID = 256,
		JournalInstanceID = 247,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Lower City"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Draenei Spirit"] },
		{ WHIT.." 1) "..getBossName("Shirrak the Dead Watcher", 523), 523 },
		{ WHIT.." 2) "..getBossName("Exarch Maladaar", 524), 524 },
		{ WHIT..INDENT..L["Avatar of the Martyred"] },
		{ GREN..INDENT..L["D'ore"] },
		{ GREN.." 1') "..L["Tormented Soulpriest"], 10002 },
	},
	AuchManaTombs = {
		ZoneName = { BZ["Auchindoun"]..COLON..BZ["Mana-Tombs"] },
		Location = { BZ["Terokkar Forest"] },
		DungeonID = 148,
		DungeonHeroicID = 179,
		Acronym = L["MT"],
		WorldMapID = 272,
		JournalInstanceID = 250,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["The Consortium"] },
		{ ORNG..L["Key"]..COLON..ALIL["The Eye of Haramad"]..L_PAREN..ALC["Exalted"]..COMMA..getBossName("Yor")..R_PAREN },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Artificer Morphalius"] },
		{ GREN..INDENT..L["Mamdy the \"Ologist\""] },
		{ WHIT.." 1) "..getBossName("Pandemonius", 534), 534 },
		{ ORNG..INDENT..L["Shadow Lord Xiraxis"]..L_PAREN..ALC["Summon"]..R_PAREN },
		{ WHIT.." 2) "..getBossName("Tavarok", 535), 535 },
		{ WHIT.." 3) "..getBossName("Nexus-Prince Shaffar", 537), 537 },
		{ ORNG..INDENT..getBossName("Yor", 536)..L_PAREN..ALC["Summon"]..COMMA..ALC["Heroic"]..R_PAREN, 536 },
		{ GREN.." 1') "..L["Ambassador Pax'ivi"]..L_PAREN..ALC["Heroic"]..R_PAREN, 10002 },
		{ GREN.." 2') "..L["Cryo-Engineer Sha'heen"], 10003 },
		{ GREN..INDENT..L["Ethereal Transporter Control Panel"] },
	},
	AuchSethekkHalls = {
		ZoneName = { BZ["Auchindoun"]..COLON..BZ["Sethekk Halls"] },
		Location = { BZ["Terokkar Forest"] },
		DungeonID = 150,
		DungeonHeroicID = 180,
		Acronym = L["Seth"],
		WorldMapID = 258,
		JournalInstanceID = 252,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Lower City"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Isfar"] },
		{ WHIT.." 1) "..getBossName("Darkweaver Syth", 541), 541 },
		{ GREN..INDENT..L["Dealer Vijaad"] },
		{ GREN..INDENT..L["Lakka"] },
		{ WHIT.." 2) "..getBossName("Anzu", 542)..L_PAREN..ALC["Heroic"]..R_PAREN, 542 },
		{ GREN..INDENT..L["The Saga of Terokk"] },
		{ WHIT.." 3) "..getBossName("Talon King Ikiss", 543), 543 },
	},
	AuchShadowLabyrinth = {
		ZoneName = { BZ["Auchindoun"]..COLON..BZ["Shadow Labyrinth"] },
		Location = { BZ["Terokkar Forest"] },
		DungeonID = 151,
		DungeonHeroicID = 181,
		Acronym = L["SL"],
		WorldMapID = 260,
		JournalInstanceID = 253,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Lower City"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Field Commander Mahfuun"] },
		{ GREN..INDENT..L["Spy Grik'tha"] },
		{ WHIT.." 1) "..getBossName("Ambassador Hellmaw", 544), 544 },
		{ WHIT.." 2) "..getBossName("Blackheart the Inciter", 545), 545 },
		{ WHIT.." 3) "..getBossName("Grandmaster Vorpil", 546), 546 },
		{ GREN..INDENT..L["The Codex of Blood"] },
		{ WHIT.." 4) "..getBossName("Murmur", 547), 547 },
		{ ORNG.." 1) "..L["First Fragment Guardian"], 10002 },
		{ GREN..INDENT..ALC["Arcane Container"] },
		{ GREN.." 1') "..L["Spy To'gun"], 10003 },
	},
	BlackTempleStart = {
		ZoneName = { BZ["Black Temple"]..ALC["MapA"]..L_PAREN..ALC["Start"]..R_PAREN },
		Location = { BZ["Shadowmoon Valley"] },
		DungeonID = 196,
		Acronym = L["BT"],
		WorldMapID = 339,
		DungeonLevel = 1,
		JournalInstanceID = 751,
		PlayerLimit = { 10, 30 },
		Module = "Atlas_BurningCrusade",
		NextMap = "BlackTempleBasement",
		{ ORNG..REPUTATION..COLON..BF["Ashtongue Deathsworn"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..L["Towards Reliquary of Souls"], 10002 },
		{ BLUE.." C) "..L["Towards Teron Gorefiend"], 10003 },
		{ BLUE.." D) "..L["Towards Illidan Stormrage"], 10004 },
		{ WHIT.." 1) "..getBossName("High Warlord Naj'entus", 1582), 1582 },
		{ WHIT.." 2) "..getBossName("Supremus", 1583), 1583 },
		{ WHIT.." 3) "..getBossName("Shade of Akama", 1584), 1584 },
		{ GREN.." 1') "..L["Spirit of Olum"], 10008 },
		{ GREN.." 2') "..L["Spirit of Udalo"], 10009 },
		{ GREN..INDENT..L["Aluyen <Reagents>"] },
		{ GREN..INDENT..L["Okuno <Ashtongue Deathsworn Quartermaster>"] },
		{ GREN..INDENT..L["Seer Kanai"] },
	},
	BlackTempleBasement = {
		ZoneName = { BZ["Black Temple"]..ALC["MapB"]..L_PAREN..ALC["Basement"]..R_PAREN },
		Location = { BZ["Shadowmoon Valley"] },
		DungeonID = 196,
		Acronym = L["BT"],
		WorldMapID = 342,
		DungeonLevel = 4,
		JournalInstanceID = 751,
		PlayerLimit = { 10, 30 },
		Module = "Atlas_BurningCrusade",
		PrevMap = "BlackTempleStart",
		NextMap = "BlackTempleTop",
		{ ORNG..REPUTATION..COLON..BF["Ashtongue Deathsworn"] },
		{ BLUE.." B) "..ENTRANCE, 10001 },
		{ BLUE.." C) "..ENTRANCE, 10002 },
		{ WHIT.." 4) "..getBossName("Gurtogg Bloodboil", 1586), 1586 },
		{ WHIT.." 5) "..getBossName("Reliquary of Souls", 1587), 1587 },
		{ WHIT..INDENT..getBossName("Essence of Suffering", 1587, 1) },
		{ WHIT..INDENT..getBossName("Essence of Desire", 1587, 2) },
		{ WHIT..INDENT..getBossName("Essence of Anger", 1587, 3) },
		{ WHIT.." 6) "..getBossName("Teron Gorefiend", 1585), 1585 },
	},
	BlackTempleTop = {
		ZoneName = { BZ["Black Temple"]..ALC["MapC"]..L_PAREN..ALC["Top"]..R_PAREN },
		Location = { BZ["Shadowmoon Valley"] },
		DungeonID = 196,
		Acronym = L["BT"],
		WorldMapID = 346,
		DungeonLevel = 8,
		JournalInstanceID = 751,
		PlayerLimit = { 10, 30 },
		Module = "Atlas_BurningCrusade",
		PrevMap = "BlackTempleBasement",
		{ ORNG..REPUTATION..COLON..BF["Ashtongue Deathsworn"] },
		{ BLUE.." D) "..ENTRANCE, 10001 },
		{ BLUE.." E) "..CONNECTION, 10002 },
		{ WHIT.." 7) "..getBossName("Mother Shahraz", 1588), 1588 },
		{ WHIT.." 8) "..getBossName("The Illidari Council", 1589), 1589 },
		{ WHIT..INDENT..getBossName("Gathios the Shatterer", 1589, 1)..L_PAREN..Atlas_GetClassName("PALADIN")..R_PAREN },
		{ WHIT..INDENT..getBossName("High Nethermancer Zerevor", 1589, 2)..L_PAREN..Atlas_GetClassName("MAGE")..R_PAREN },
		{ WHIT..INDENT..getBossName("Lady Malande", 1589, 3)..L_PAREN..Atlas_GetClassName("PRIEST")..R_PAREN },
		{ WHIT..INDENT..getBossName("Veras Darkshadow", 1589, 4)..L_PAREN..Atlas_GetClassName("ROGUE")..R_PAREN },
		{ WHIT.." 9) "..getBossName("Illidan Stormrage", 1590), 1590 },
	},
	CoilfangReservoirEnt = {
		ZoneName = { BZ["Coilfang Reservoir"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Zangarmarsh"] },
		LevelRange = "62-73",
		MinLevel = "61",
		PlayerLimit = { 5, 25},
		Acronym = L["CR"],
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..BZ["The Slave Pens"], 10001 },
		{ BLUE.." B) "..BZ["The Steamvault"], 10002 },
		{ BLUE.." C) "..BZ["Serpentshrine Cavern"], 10003 },
		{ BLUE.." D) "..BZ["The Underbog"], 10004 },
		{ BLUE.." E) "..ENTRANCE..L_PAREN..ALC["Underwater"]..R_PAREN, 10005 },
		{ GREN.." 1') "..ALC["Meeting Stone"], 10006 },
		{ GREN.." 2') "..L["Mortog Steamhead"], 10007 },
	},
	CFRSerpentshrineCavern = {
		ZoneName = { BZ["Coilfang Reservoir"]..COLON..BZ["Serpentshrine Cavern"] },
		Location = { BZ["Zangarmarsh"] },
		DungeonID = 194,
		Acronym = L["SSC"],
		PlayerLimit = { 25 },
		WorldMapID = 332,
		JournalInstanceID = 748,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Cenarion Expedition"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..ALC["Elevator"], 10002 },
		{ WHIT.." 1) "..getBossName("Hydross the Unstable", 1567), 1567 },
		{ WHIT.." 2) "..getBossName("The Lurker Below", 1568), 1568 },
		{ WHIT.." 3) "..getBossName("Leotheras the Blind", 1569), 1569 },
		{ WHIT.." 4) "..getBossName("Fathom-Lord Karathress", 1570), 1570 },
		{ GREN..INDENT..L["Seer Olum"] },
		{ WHIT.." 5) "..getBossName("Morogrim Tidewalker", 1571), 1571 },
		{ WHIT.." 6) "..getBossName("Lady Vashj", 1572), 1572 },
	},
	CFRTheSlavePens = {
		ZoneName = { BZ["Coilfang Reservoir"]..COLON..BZ["The Slave Pens"] },
		Location = { BZ["Zangarmarsh"] },
		DungeonID = 140,
		DungeonHeroicID = 184,
		Acronym = L["SP"],
		WorldMapID = 265,
		JournalInstanceID = 260,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Cenarion Expedition"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Nahuud"] },
		{ GREN..INDENT..L["Watcher Jhang"] },
		{ WHIT.." 1) "..getBossName("Mennu the Betrayer", 570), 570 },
		{ WHIT.." 2) "..getBossName("Rokmar the Crackler", 571), 571 },
		{ WHIT.." 3) "..getBossName("Quagmirran", 572), 572 },
		{ ORNG.." 1) "..getBossName("Ahune")..L_PAREN..ALC["Midsummer Festival"]..R_PAREN, 10002 },
		{ GREN.." 1') "..L["Weeder Greenthumb"], 10003 },
		{ GREN.." 2') "..L["Skar'this the Heretic"]..L_PAREN..ALC["Heroic"]..R_PAREN, 10004 },
		{ GREN.." 3') "..L["Naturalist Bite"], 10005 },
	},
	CFRTheSteamvault = {
		ZoneName = { BZ["Coilfang Reservoir"]..COLON..BZ["The Steamvault"] },
		Location = { BZ["Zangarmarsh"] },
		DungeonID = 147,
		DungeonHeroicID = 185,
		Acronym = L["SV"],
		WorldMapID = 263,
		JournalInstanceID = 261,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Cenarion Expedition"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Naturalist Bite"] },
		{ GREN..INDENT..L["Watcher Jhang"] },
		{ GREN..INDENT..L["Windcaller Claw"] },
		{ WHIT.." 1) "..getBossName("Hydromancer Thespia", 573), 573 },
		{ GREN..INDENT..L["Main Chambers Access Panel"] },
		{ WHIT.." 2) "..getBossName("Mekgineer Steamrigger", 574), 574 },
		{ GREN..INDENT..L["Main Chambers Access Panel"] },
		{ WHIT.." 3) "..getBossName("Warlord Kalithresh", 575), 575 },
		{ ORNG.." 1) "..L["Second Fragment Guardian"], 10002 },
		{ GREN..INDENT..ALC["Arcane Container"] },
	},
	CFRTheUnderbog = {
		ZoneName = { BZ["Coilfang Reservoir"]..COLON..BZ["The Underbog"] },
		Location = { BZ["Zangarmarsh"] },
		DungeonID = 146,
		DungeonHeroicID = 186,
		Acronym = L["UB"],
		WorldMapID = 262,
		JournalInstanceID = 262,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Cenarion Expedition"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Naturalist Bite"] },
		{ GREN..INDENT..L["T'shu"] },
		{ GREN..INDENT..L["Watcher Jhang"] },
		{ WHIT.." 1) "..getBossName("Hungarfen", 576), 576 },
		{ GREN..INDENT..L["The Underspore"] },
		{ WHIT.." 2) "..getBossName("Ghaz'an", 577), 577 },
		{ WHIT.." 3) "..getBossName("Swamplord Musel'ek", 578), 578 },
		{ WHIT..INDENT..getBossName("Claw") },
		{ WHIT.." 4) "..getBossName("The Black Stalker", 579), 579 },
		{ GREN.." 1') "..L["Earthbinder Rayge"], 10002 },
	},
	CavernsOfTimeEnt = {
		ZoneName = { BZ["Caverns of Time"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Tanaris"] },
		LevelRange = "66-85+",
		MinLevel = "66",
		PlayerLimit = { 5, 10, 25},
		Acronym = L["CoT"],
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..L["Entrance"], 10001 },
		{ BLUE.." B) "..BZ["Hyjal Summit"], 10002 },
		{ BLUE.." C) "..BZ["Old Hillsbrad Foothills"], 10003 },
		{ BLUE.." D) "..BZ["The Black Morass"], 10004 },
		{ BLUE.." E) "..BZ["The Culling of Stratholme"], 10005 },
		{ BLUE.." F) "..BZ["Dragon Soul"], 10006 },
		{ BLUE.." G) "..BZ["End Time"], 10007 },
		{ BLUE.." H) "..BZ["Well of Eternity"], 10008 },
		{ BLUE.." I) "..BZ["Hour of Twilight"], 10009 },
		{ GREN.." 1') "..L["Steward of Time <Keepers of Time>"], 10010 },
		{ GREN.." 2') "..L["Alexston Chrome <Tavern of Time>"], 10011 },
		{ GREN.." 3') "..L["Graveyard"], 10012 },
		{ GREN.." 4') "..L["Yarley <Armorer>"], 10013 },
		{ GREN.." 5') "..L["Bortega <Reagents & Poison Supplies>"], 10014 },
		{ GREN..INDENT..L["Alurmi <Keepers of Time Quartermaster>"] },
		{ GREN..INDENT..L["Galgrom <Provisioner>"] },
		{ GREN.." 6') "..L["Zaladormu"], 10015 },
		{ GREN..INDENT..L["Soridormi <The Scale of Sands>"]..L_PAREN..WANDERS..R_PAREN },
		{ GREN..INDENT..L["Arazmodu <The Scale of Sands>"]..L_PAREN..WANDERS..R_PAREN },
		{ GREN.." 7') "..L["Moonwell"], 10016 },
		{ GREN.." 8') "..L["Andormu <Keepers of Time>"]..L_PAREN..ALC["Child"]..R_PAREN, 10017 },
		{ GREN..INDENT..L["Nozari <Keepers of Time>"]..L_PAREN..ALC["Child"]..R_PAREN },
		{ GREN.." 9') "..L["Anachronos <Keepers of Time>"], 10018 },
		{ GREN.."10') "..L["Andormu <Keepers of Time>"]..L_PAREN..ALC["Adult"]..R_PAREN, 10019 },
		{ GREN..INDENT..L["Nozari <Keepers of Time>"]..L_PAREN..ALC["Adult"]..R_PAREN },
	},
	CoTBlackMorass = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["The Black Morass"] },
		Location = { BZ["Tanaris"] },
		LevelRange = "68-75",
		MinLevel = "68",
		PlayerLimit = { 5 },
		Acronym = L["CoT2"],
		WorldMapID = 273,
		JournalInstanceID = 255,
		Module = "Atlas_BurningCrusade",
		{ PURP..ALC["Event"]..COLON..BZ["Opening of the Dark Portal"] },
		{ ORNG..ALC["Attunement Required"] },
		{ ORNG..REPUTATION..COLON..BF["Keepers of Time"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Sa'at <Keepers of Time>"] },
		{ ORNG.." X) "..ALC["Portal"]..L_PAREN..ALC["Spawn Point"]..R_PAREN, 10002 },
		{ WHIT..INDENT..ALC["Wave 6"]..COLON..getBossName("Chrono Lord Deja", 552), 552 },
		{ WHIT..INDENT..ALC["Wave 12"]..COLON..getBossName("Temporus", 553), 553 },
		{ WHIT..INDENT..ALC["Wave 18"]..COLON..getBossName("Aeonus", 554), 554 },
		{ GREN.." 1') "..BZ["The Dark Portal"], 10003 },
		{ GREN..INDENT..getBossName("Medivh") },
	},
	CoTHyjalEnt = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Hyjal Summit"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Tanaris"] },
		LevelRange = "70-73",
		MinLevel = "70",
		PlayerLimit = { 25 },
		Acronym = L["CoT3"],
		Module = "Atlas_BurningCrusade",
		{ PURP..ALC["Event"]..COLON..BZ["The Battle for Mount Hyjal"] },
		{ ORNG..REPUTATION..COLON..BF["The Scale of the Sands"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..BZ["Alliance Base"], 10002 },
		{ BLUE.." C) "..BZ["Horde Encampment"], 10003 },
		{ BLUE.." D) "..BZ["Night Elf Village"], 10004 },
		{ GREN.." 1') "..L["Indormi <Keeper of Ancient Gem Lore>"], 10005 },
		{ GREN..INDENT..L["Tydormu <Keeper of Lost Artifacts>"] },
	},
	CoTHyjal = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Hyjal Summit"] },
		Location = { BZ["Tanaris"] },
		LevelRange = "70-73",
		MinLevel = "70",
		PlayerLimit = { 25 },
		Acronym = L["CoT3"],
		WorldMapID = 329,
		JournalInstanceID = 750,
		Module = "Atlas_BurningCrusade",
		{ PURP..ALC["Event"]..COLON..BZ["The Battle for Mount Hyjal"] },
		{ ORNG..REPUTATION..COLON..BF["The Scale of the Sands"] },
		{ BLUE.." A) "..BZ["Alliance Base"], 10001 },
		{ GREN..INDENT..L["Lady Jaina Proudmoore"] },
		{ BLUE.." B) "..BZ["Horde Encampment"], 10002 },
		{ GREN..INDENT..L["Thrall <Warchief>"] },
		{ BLUE.." C) "..BZ["Night Elf Village"], 10003 },
		{ GREN..INDENT..L["Tyrande Whisperwind <High Priestess of Elune>"] },
		{ WHIT.." 1) "..getBossName("Rage Winterchill", 1577), 1577 },
		{ WHIT.." 2) "..getBossName("Anetheron", 1578), 1578 },
		{ WHIT.." 3) "..getBossName("Kaz'rogal", 1579), 1579 },
		{ WHIT.." 4) "..getBossName("Azgalor", 1580), 1580 },
		{ WHIT.." 5) "..getBossName("Archimonde", 1581), 1581 },
	},
	CoTOldHillsbrad = {
		ZoneName = { BZ["Caverns of Time"]..COLON..BZ["Old Hillsbrad Foothills"] },
		Location = { BZ["Tanaris"] },
		LevelRange = "66-68 / 70",
		MinLevel = "66",
		PlayerLimit = { 5 },
		Acronym = L["CoT1"],
		WorldMapID = 274,
		JournalInstanceID = 251,
		Module = "Atlas_BurningCrusade",
		{ PURP..ALC["Event"]..COLON..BZ["The Escape From Durnholde"] },
		{ ORNG..ALC["Attunement Required"] },
		{ ORNG..REPUTATION..COLON..BF["Keepers of Time"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Erozion"] },
		{ GREN..INDENT..L["Brazen"] },
		{ BLUE.." B) "..L["Landing Spot"], 10002 },
		{ BLUE.." C) "..BZ["Southshore"], 10003 },
		{ BLUE.." D) "..BZ["Tarren Mill"], 10004 },
		{ WHIT.." 1) "..getBossName("Lieutenant Drake", 538), 538 },
		{ GREN.." 1') "..L["Thrall"]..L_PAREN..ALC["Lower"]..R_PAREN, 10005 },
		{ WHIT.." 2) "..getBossName("Captain Skarloc", 539), 539 },
		{ GREN..INDENT..L["Thrall"]..L_PAREN..ALC["Second Stop"]..R_PAREN },
		{ GREN.." 2') "..L["Thrall"]..L_PAREN..ALC["Third Stop"]..R_PAREN, 10006 },
		{ WHIT.." 3) "..getBossName("Epoch Hunter", 540), 540 },
		{ GREN..INDENT..L["Thrall"]..L_PAREN..ALC["Fourth Stop"]..COMMA..UPPER..R_PAREN },
		{ GREN..INDENT..L["Taretha"]..L_PAREN..UPPER..R_PAREN },
		{ WHIT.." 4) "..L["Don Carlos"]..L_PAREN..WANDERS..R_PAREN, 10007 },
		{ WHIT..INDENT..INDENT..L["Guerrero"]..L_PAREN..WANDERS..R_PAREN },
		{ GREN..INDENT..L["Thomas Yance <Travelling Salesman>"]..L_PAREN..WANDERS..R_PAREN },
		{ GREN..INDENT..L["Aged Dalaran Wizard"]..L_PAREN..WANDERS..R_PAREN },
		{ GREN.." 3') "..L["Jonathan Revah"], 10008 },
		{ GREN..INDENT..L["Jerry Carter"] },
		{ "" },
		{ "" },
		{ "" },
		{ ORNG..BZ["Southshore"] },
		{ GREN..INDENT..getBossName("Kel'Thuzad") },
		{ GREN..INDENT..L["Helcular"] },
		{ GREN..INDENT..L["Farmer Kent"] },
		{ GREN..INDENT..L["Sally Whitemane"] },
		{ GREN..INDENT..L["Renault Mograine"] },
		{ GREN..INDENT..L["Little Jimmy Vishas"] },
		{ GREN..INDENT..L["Herod the Bully"] },
		{ GREN..INDENT..L["Nat Pagle"] },
		{ GREN..INDENT..L["Hal McAllister"] },
		{ GREN..INDENT..L["Zixil <Aspiring Merchant>"] },
		{ GREN..INDENT..L["Overwatch Mark 0 <Protector>"] },
		{ "" },
		{ ORNG..L["Southshore Inn"] },
		{ GREN..INDENT..L["Captain Edward Hanes"] },
		{ GREN..INDENT..L["Captain Sanders"] },
		{ GREN..INDENT..L["Commander Mograine"] },
		{ GREN..INDENT..L["Isillien"] },
		{ GREN..INDENT..L["Abbendis"] },
		{ GREN..INDENT..L["Fairbanks"] },
		{ GREN..INDENT..getBossName("Tirion Fordring") },
		{ GREN..INDENT..getBossName("Arcanist Doan") },
		{ GREN..INDENT..L["Taelan"]..L_PAREN..UPPER..R_PAREN },
		{ GREN..INDENT..L["Barkeep Kelly <Bartender>"] },
		{ GREN..INDENT..L["Frances Lin <Barmaid>"] },
		{ GREN..INDENT..L["Chef Jessen <Speciality Meat & Slop>"] },
		{ GREN..INDENT..L["Stalvan Mistmantle"]..L_PAREN..UPPER..R_PAREN },
		{ GREN..INDENT..L["Phin Odelic <The Kirin Tor>"]..L_PAREN..UPPER..R_PAREN },
		{ "" },
		{ ORNG..BZ["Southshore Town Hall"] },
		{ GREN..INDENT..L["Magistrate Henry Maleb"] },
		{ GREN..INDENT..L["Raleigh the True"] },
		{ GREN..INDENT..L["Nathanos Marris"] },
		{ GREN..INDENT..L["Bilger the Straight-laced"] },
		{ "" },
		{ ORNG..BZ["Tarren Mill"] },
		{ GREN..INDENT..L["Innkeeper Monica"] },
		{ GREN..INDENT..L["Julie Honeywell"] },
		{ GREN..INDENT..L["Jay Lemieux"] },
		{ GREN..INDENT..L["Young Blanchy"] },
	},
	GruulsLair = {
		ZoneName = { BZ["Gruul's Lair"] },
		Location = { BZ["Blade's Edge Mountains"] },
		DungeonID = 177,
		Acronym = L["GL"],
		PlayerLimit = { 25 },
		WorldMapID = 330,
		JournalInstanceID = 746,
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("High King Maulgar", 1564), 1564 },
		{ WHIT..INDENT..getBossName("Kiggler the Crazed", 1564, 2)..L_PAREN..Atlas_GetClassName("SHAMAN")..R_PAREN },
		{ WHIT..INDENT..getBossName("Blindeye the Seer", 1564, 3)..L_PAREN..Atlas_GetClassName("PRIEST")..R_PAREN },
		{ WHIT..INDENT..getBossName("Olm the Summoner", 1564, 4)..L_PAREN..Atlas_GetClassName("WARLOCK")..R_PAREN },
		{ WHIT..INDENT..getBossName("Krosh Firehand", 1564, 5)..L_PAREN..Atlas_GetClassName("MAGE")..R_PAREN },
		{ WHIT.." 2) "..getBossName("Gruul the Dragonkiller", 1565), 1565 },
	},
	HellfireCitadelEnt = {
		ZoneName = { BZ["Hellfire Citadel"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Hellfire Peninsula"] },
		LevelRange = "59-73",
		MinLevel = "57",
		PlayerLimit = { 5, 25},
		Acronym = L["HC"],
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..BZ["Hellfire Ramparts"], 10001 },
		{ BLUE.." B) "..BZ["The Shattered Halls"], 10002 },
		{ BLUE.." C) "..BZ["The Blood Furnace"], 10003 },
		{ BLUE.." D) "..BZ["Magtheridon's Lair"], 10004 },
		{ GREN.." 1') "..L["Meeting Stone of Magtheridon's Lair"], 10005 },
		{ GREN.." 2') "..L["Meeting Stone of Hellfire Citadel"], 10006 },
		{ GREN.." 3') "..L["Steps and path to the Blood Furnace"], 10007 },
		{ GREN.." 4') "..L["Path to the Hellfire Ramparts and Shattered Halls"], 10008 },
	},
	HCBloodFurnace = {
		ZoneName = { BZ["Hellfire Citadel"]..COLON..BZ["The Blood Furnace"] },
		Location = { BZ["Hellfire Peninsula"] },
		DungeonID = 137,
		DungeonHeroicID = 187,
		Acronym = L["BF"],
		WorldMapID = 261,
		JournalInstanceID = 256,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Honor Hold"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ ORNG..REPUTATION..COLON..BF["Thrallmar"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Gunny"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ GREN..INDENT..L["Caza'rez"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ WHIT.." 1) "..getBossName("The Maker", 555), 555 },
		{ WHIT.." 2) "..getBossName("Broggok", 556), 556 },
		{ WHIT.." 3) "..getBossName("Keli'dan the Breaker", 557), 557 },
	},
	HCHellfireRamparts = {
		ZoneName = { BZ["Hellfire Citadel"]..COLON..BZ["Hellfire Ramparts"] },
		Location = { BZ["Hellfire Peninsula"] },
		DungeonID = 136,
		DungeonHeroicID = 188,
		Acronym = L["Ramp"],
		WorldMapID = 347,
		JournalInstanceID = 248,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Honor Hold"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ ORNG..REPUTATION..COLON..BF["Thrallmar"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Advance Scout Chadwick"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ GREN..INDENT..L["Stone Guard Stok'ton"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ WHIT.." 1) "..getBossName("Watchkeeper Gargolmar", 527), 527 },
		{ WHIT.." 2) "..getBossName("Omor the Unscarred", 528), 528 },
		{ WHIT.." 3) "..getBossName("Vazruden the Herald", 529), 529 },
		{ WHIT..INDENT..getBossName("Nazan") },
		{ GREN..INDENT..L["Reinforced Fel Iron Chest"] },
	},
	HCMagtheridonsLair = {
		ZoneName = { BZ["Hellfire Citadel"]..COLON..BZ["Magtheridon's Lair"] },
		Location = { BZ["Hellfire Peninsula"] },
		DungeonID = 176,
		Acronym = L["Mag"],
		PlayerLimit = { 25 },
		WorldMapID = 331,
		JournalInstanceID = 747,
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Magtheridon", 1566), 1566 },
	},
	HCTheShatteredHalls = {
		ZoneName = { BZ["Hellfire Citadel"]..COLON..BZ["The Shattered Halls"] },
		Location = { BZ["Hellfire Peninsula"] },
		DungeonID = 138,
		DungeonHeroicID = 189,
		Acronym = L["SH"],
		WorldMapID = 246,
		JournalInstanceID = 259,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Honor Hold"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ ORNG..REPUTATION..COLON..BF["Thrallmar"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Advance Scout Chadwick"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ GREN..INDENT..L["Gunny"]..L_PAREN..FACTION_ALLIANCE..R_PAREN },
		{ GREN..INDENT..L["Caza'rez"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ GREN..INDENT..L["Stone Guard Stok'ton"]..L_PAREN..FACTION_HORDE..R_PAREN },
		{ WHIT.." 1) "..getBossName("Grand Warlock Nethekurse", 566), 566 },
		{ WHIT.." 2) "..getBossName("Blood Guard Porung", 728)..L_PAREN..ALC["Heroic"]..R_PAREN, 728 },
		{ WHIT.." 3) "..getBossName("Warbringer O'mrogg", 568), 568 },
		{ WHIT.." 4) "..getBossName("Warchief Kargath Bladefist", 569), 569 },
		{ WHIT..INDENT..L["Shattered Hand Executioner"]..L_PAREN..ALC["Heroic"]..R_PAREN },
		{ GREN..INDENT..L["Private Jacint"]..L_PAREN..FACTION_ALLIANCE..COMMA..ALC["Heroic"]..R_PAREN },
		{ GREN..INDENT..L["Rifleman Brownbeard"]..L_PAREN..FACTION_ALLIANCE..COMMA..ALC["Heroic"]..R_PAREN },
		{ GREN..INDENT..L["Captain Alina"]..L_PAREN..FACTION_ALLIANCE..COMMA..ALC["Heroic"]..R_PAREN },
		{ GREN..INDENT..L["Scout Orgarr"]..L_PAREN..FACTION_HORDE..COMMA..ALC["Heroic"]..R_PAREN },
		{ GREN..INDENT..L["Korag Proudmane"]..L_PAREN..FACTION_HORDE..COMMA..ALC["Heroic"]..R_PAREN },
		{ GREN..INDENT..L["Captain Boneshatter"]..L_PAREN..FACTION_HORDE..COMMA..ALC["Heroic"]..R_PAREN },
		{ GREN.." 1') "..L["Randy Whizzlesprocket"]..L_PAREN..FACTION_ALLIANCE..COMMA..ALC["Heroic"]..R_PAREN, 10002 },
		{ GREN..INDENT..L["Drisella"]..L_PAREN..FACTION_HORDE..COMMA..ALC["Heroic"]..R_PAREN },
	},
	KarazhanEnt = {
		ZoneName = { BZ["Karazhan"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Deadwind Pass"] },
		DungeonID = 175,
		PlayerLimit = { 10 },
		Acronym = L["Kara"],
		WorldMapID = 42,
		JournalInstanceID = 745,
		Module = "Atlas_BurningCrusade",
		NextMap = "KarazhanStart",
		{ BLUE.." A) "..BZ["Karazhan"]..L_PAREN..ALC["Front"]..R_PAREN, 10001 },
		{ BLUE.." B) "..BZ["Karazhan"]..L_PAREN..ALC["Back"]..R_PAREN, 10002 },
		{ BLUE.." C) "..BZ["Return to Karazhan"]..L_PAREN..UPPER..R_PAREN, 10003 },
		{ GREN.." 1') "..L["Mage Darius"], 18255 },
		{ GREN.." 2') "..format(ALC["Stairs to %s"], BZ["The Master's Cellar"]), 10004 },
		{ GREN.." 3') "..format(ALC["Stairs to %s"], BZ["The Master's Cellar"]), 10005 },
		{ GREN.." 4') "..L["Charred Bone Fragment"], 10006 },
		{ GREN.." 5') "..ALC["Meeting Stone"], 10007 },
		{ GREN.." 6') "..ALC["Graveyard"], 10008 },
		{ GREN.." 7') "..L["Lydia Accoste"], 66255 },
	},
--    [799] = { mapFile = "Karazhan", [1] = 350, [2] = 351, [3] = 352, [4] = 353, [5] = 354, [6] = 355, [7] = 356, [8] = 357, [9] = 358, [10] = 359, [11] = 360, [12] = 361, [13] = 362, [14] = 363, [15] = 364, [16] = 365, [17] = 366},
	KarazhanStart = {
		ZoneName = { BZ["Karazhan"]..ALC["MapA"]..L_PAREN..ALC["Start"]..R_PAREN },
		Location = { BZ["Deadwind Pass"] },
		DungeonID = 175,
		Acronym = L["Kara"],
		PlayerLimit = { 10 },
		WorldMapID = 350,
		JournalInstanceID = 745,
		Module = "Atlas_BurningCrusade",
		PrevMap = "KarazhanEnt",
		NextMap = "KarazhanEnd",
		{ ORNG..REPUTATION..COLON..BF["The Violet Eye"] },
		{ BLUE.." A) "..ENTRANCE..L_PAREN..ALC["Front"]..R_PAREN, 10001 },
		{ BLUE.." B-J) "..CONNECTION, 10002 },
		{ WHIT.." 1) "..getBossName("Attumen the Huntsman", 1553), 1553 },
		{ WHIT..INDENT..getBossName("Midnight", 1553, 2) },
		{ WHIT.." 2) "..getBossName("Moroes", 1554), 1554 },
		{ WHIT..INDENT..L["Baroness Dorothea Millstipe"]..L_PAREN..RANDOM..COMMA..ALC["Shadow Priest"]..R_PAREN },
		{ WHIT..INDENT..L["Lady Catriona Von'Indi"]..L_PAREN..RANDOM..COMMA..ALC["Holy Priest"]..R_PAREN },
		{ WHIT..INDENT..L["Lady Keira Berrybuck"]..L_PAREN..RANDOM..COMMA..ALC["Holy Paladin"]..R_PAREN },
		{ WHIT..INDENT..L["Baron Rafe Dreuger"]..L_PAREN..RANDOM..COMMA..ALC["Retribution Paladin"]..R_PAREN },
		{ WHIT..INDENT..L["Lord Robin Daris"]..L_PAREN..RANDOM..COMMA..ALC["Arms Warrior"]..R_PAREN },
		{ WHIT..INDENT..L["Lord Crispin Ference"]..L_PAREN..RANDOM..COMMA..ALC["Protection Warrior"]..R_PAREN },
		{ WHIT.." 3) "..getBossName("Maiden of Virtue", 1555), 1555 },
		{ WHIT.." 4) "..getBossName("Opera Hall", 1556), 1556 },
		{ ORNG..INDENT..L["Red Riding Hood"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..INDENT..getBossName("The Big Bad Wolf") },
		{ ORNG..INDENT..L["Wizard of Oz"]..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..INDENT..getBossName("Dorothee") },
		{ WHIT..INDENT..INDENT..getBossName("Tito") },
		{ WHIT..INDENT..INDENT..getBossName("Strawman") },
		{ WHIT..INDENT..INDENT..getBossName("Tinhead") },
		{ WHIT..INDENT..INDENT..getBossName("Roar") },
		{ WHIT..INDENT..INDENT..getBossName("The Crone", 1556, 4) },
		{ ORNG..INDENT..getBossName("Romulo & Julianne")..L_PAREN..RANDOM..R_PAREN },
		{ WHIT..INDENT..INDENT..getBossName("Romulo", 1556, 2) },
		{ WHIT..INDENT..INDENT..getBossName("Julianne", 1556, 3) },
		{ WHIT.." 5 ) "..getBossName("Nightbane")..L_PAREN..ALC["Summon"]..R_PAREN, 10018 },
		{ GREN..INDENT..L["The Master's Terrace"] },
		{ ORNG.." 1) "..getBossName("Servant Quarters", 1552), 1552 },
		{ ORNG..INDENT..getBossName("Rokad the Ravager", 1552, 1)..L_PAREN..RARE..COMMA..RANDOM..R_PAREN },
		{ ORNG..INDENT..getBossName("Shadikith the Glider", 1552, 2)..L_PAREN..RARE..COMMA..RANDOM..R_PAREN },
		{ ORNG..INDENT..getBossName("Hyakiss the Lurker", 1552, 3)..L_PAREN..RARE..COMMA..RANDOM..R_PAREN },
		{ GREN.." 1') "..L["Hastings <The Caretaker>"], 10009 },
		{ GREN.." 2') "..L["Berthold <The Doorman>"], 10010 },
		{ GREN.." 3') "..L["Calliard <The Nightman>"], 10011 },
		{ GREN.." 4') "..L["Koren <The Blacksmith>"], 10012 },
		{ GREN.." 5') "..L["Bennett <The Sergeant at Arms>"], 10013 },
		{ GREN.." 6') "..L["Keanna's Log"], 10014 },
		{ GREN.." 7') "..L["Ebonlocke <The Noble>"], 10015 },
		{ GREN.." 8') "..L["Sebastian <The Organist>"], 10016 },
		{ GREN.." 9') "..L["Barnes <The Stage Manager>"], 10017 },
	},
	KarazhanEnd = {
		ZoneName = { BZ["Karazhan"]..ALC["MapB"]..L_PAREN..ALC["End"]..R_PAREN },
		Location = { BZ["Deadwind Pass"] },
		DungeonID = 175,
		Acronym = L["Kara"],
		PlayerLimit = { 10 },
		WorldMapID = 350, -- which level?
		JournalInstanceID = 745,
		Module = "Atlas_BurningCrusade",
		PrevMap = "KarazhanStart",
		{ ORNG..REPUTATION..COLON..BF["The Violet Eye"] },
		{ BLUE.." I) "..L["Path to the Broken Stairs"], 10001 },
		{ BLUE.." J) "..L["Broken Stairs"], 10002 },
		{ BLUE.." K) "..L["Ramp to Guardian's Library"]..L_PAREN..getBossName("Shade of Aran")..R_PAREN, 10003 },
		{ BLUE.." L) "..L["Mysterious Bookshelf"]..L_PAREN..getBossName("Terestian Illhoof")..R_PAREN, 10004 },
		{ BLUE.." M) "..L["Ramp up to the Celestial Watch"]..L_PAREN..getBossName("Netherspite")..R_PAREN, 10005 },
		{ BLUE..INDENT..L["Ramp down to the Gamesman's Hall"]..L_PAREN..getBossName("Chess Event", 1764)..R_PAREN, 1764 },
		{ BLUE.." N) "..L["Ramp to Medivh's Chamber"], 10006 },
		{ BLUE.." O) "..L["Spiral Stairs to Netherspace"]..L_PAREN..getBossName("Prince Malchezaar")..R_PAREN, 10007 },
		{ WHIT.." 7) "..getBossName("The Curator", 1557), 1557 },
		{ WHIT.." 8) "..getBossName("Terestian Illhoof", 1560), 1560 },
		{ WHIT..INDENT..getBossName("Kil'rek")..L_PAREN..ALC["Imp"]..R_PAREN },
		{ WHIT.." 9) "..getBossName("Shade of Aran", 1559), 1559 },
		{ WHIT.."10) "..getBossName("Netherspite", 1561), 1561 },
		{ WHIT.."11) "..getBossName("Chess Event", 1562), 1562 },
		{ GREN..INDENT..getBossName("Dust Covered Chest") },
		{ WHIT.."12) "..getBossName("Prince Malchezaar", 1563), 1563 },
		{ GREN.."10') "..L["Wravien <The Mage>"], 10014 },
		{ GREN.."11') "..L["Gradav <The Warlock>"], 10015 },
		{ GREN.."12') "..L["Kamsis <The Conjurer>"], 10016 },
		{ GREN.."13') "..L["Ythyar"]..L_PAREN..ALC["Repair"]..COMMA..ALC["Rewards"]..R_PAREN, 10017 },
		{ GREN.."14') "..L["Echo of Medivh"], 10018 },
	},
	MagistersTerrace = {
		ZoneName = { BZ["Magisters' Terrace"] },
		Location = { BZ["Isle of Quel'Danas"] },
		DungeonID = 198,
		DungeonHeroicID = 201,
		Acronym = L["MaT"],
		WorldMapID = 348,
		JournalInstanceID = 249,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["Shattered Sun Offensive"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ GREN..INDENT..L["Exarch Larethor"] },
		{ BLUE.." B) "..ALC["Exit"]..L_PAREN..ALC["Portal"]..R_PAREN, 10002 },
		{ WHIT.." 1) "..getBossName("Selin Fireheart", 530), 530 },
		{ GREN..INDENT..L["Fel Crystals"] },
		{ WHIT.." 2) "..getBossName("Vexallus", 531), 531 },
		{ WHIT.." 3) "..getBossName("Priestess Delrissa", 532)..L_PAREN..ALC["Lower"]..R_PAREN, 532 },
		{ WHIT..INDENT..L["Apoko"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..Atlas_GetClassName("SHAMAN")..R_PAREN },
		{ WHIT..INDENT..L["Eramas Brightblaze"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..Atlas_GetClassName("MONK")..R_PAREN },
		{ WHIT..INDENT..L["Ellrys Duskhallow"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..Atlas_GetClassName("WARLOCK")..R_PAREN },
		{ WHIT..INDENT..INDENT..L["Fizzle"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Garaxxas"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..Atlas_GetClassName("HUNTER")..R_PAREN },
		{ WHIT..INDENT..INDENT..L["Sliver <Garaxxas' Pet>"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..R_PAREN },
		{ WHIT..INDENT..L["Kagani Nightstrike"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..Atlas_GetClassName("ROGUE")..R_PAREN },
		{ WHIT..INDENT..L["Warlord Salaris"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..Atlas_GetClassName("WARRIOR")..R_PAREN },
		{ WHIT..INDENT..L["Yazzai"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..Atlas_GetClassName("MAGE")..R_PAREN },
		{ WHIT..INDENT..L["Zelfan"]..L_PAREN..ALC["Lower"]..COMMA..RANDOM..COMMA..ALC["Engineer"]..R_PAREN },
		{ WHIT.." 4) "..getBossName("Kael'thas Sunstrider", 533), 533 },
		{ GREN.." 1') "..L["Tyrith"], 10003 },
		{ GREN.." 2') "..L["Scrying Orb"], 10004 },
		{ GREN..INDENT..getBossName("Kalecgos") },
	},
	SunwellPlateau = {
		ZoneName = { BZ["Sunwell Plateau"] },
		Location = { BZ["Isle of Quel'Danas"] },
		DungeonID = 199,
		Acronym = L["SuP"],
		PlayerLimit = { 25 },
		WorldMapID = 335,
		JournalInstanceID = 752,
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Kalecgos", 1591), 1591 },
		{ WHIT..INDENT..getBossName("Sathrovarr the Corruptor", 1591, 2) },
		{ WHIT.." 2) "..getBossName("Brutallus", 1592), 1592 },
		{ WHIT..INDENT..getBossName("Felmyst", 1593), 1593 },
		{ GREN..INDENT..L["Madrigosa"] },
		{ WHIT.." 3) "..getBossName("The Eredar Twins", 1594)..L_PAREN..ALC["Lower"]..R_PAREN, 1594 },
		{ WHIT..INDENT..getBossName("Grand Warlock Alythess", 1594, 1)..L_PAREN..ALC["Lower"]..R_PAREN },
		{ WHIT..INDENT..getBossName("Lady Sacrolash", 1594, 2)..L_PAREN..ALC["Lower"]..R_PAREN },
		{ WHIT..INDENT..getBossName("M'uru", 1595, 1)..L_PAREN..UPPER..R_PAREN, 1595 },
		{ WHIT..INDENT..getBossName("Entropius", 1595, 2)..L_PAREN..UPPER..R_PAREN },
		{ WHIT.." 4) "..getBossName("Kil'jaeden", 1596), 1596 },
	},
	TempestKeepEnt = {
		ZoneName = { BZ["Tempest Keep"]..L_PAREN..ENTRANCE..R_PAREN },
		Location = { BZ["Netherstorm"] },
		LevelRange = "70-73",
		MinLevel= "67",
		PlayerLimit = { 5, 25},
		Acronym = L["TK"],
		Module = "Atlas_BurningCrusade",
		{ BLUE.." A) "..BZ["The Mechanar"], 10001 },
		{ BLUE.." B) "..BZ["The Botanica"], 10002 },
		{ BLUE.." C) "..BZ["The Arcatraz"], 10003 },
		{ BLUE.." D) "..BZ["Tempest Keep"], 10004 },
	},
	TempestKeepArcatraz = {
		ZoneName = { BZ["Tempest Keep"]..COLON..BZ["The Arcatraz"] },
		Location = { BZ["Netherstorm"] },
		DungeonID = 174,
		DungeonHeroicID = 190,
		Acronym = L["Arca"],
		WorldMapID = 269,
		JournalInstanceID = 254,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["The Sha'tar"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Zereketh the Unbound", 548), 548 },
		{ WHIT.." 2) "..getBossName("Dalliah the Doomsayer", 549), 549 },
		{ WHIT.." 3) "..getBossName("Wrath-Scryer Soccothrates", 550), 550 },
		{ WHIT.." 4) "..getBossName("Harbinger Skyriss", 551), 551 },
		{ WHIT..INDENT..getBossName("Warden Mellichar") },
		{ GREN..INDENT..L["Millhouse Manastorm"] },
		{ ORNG.." 1) "..L["Third Fragment Guardian"], 10002 },
		{ GREN..INDENT..ALC["Arcane Container"] },
		{ GREN.." 1') "..L["Udalo"], 10003 },
	},
	TempestKeepBotanica = {
		ZoneName = { BZ["Tempest Keep"]..COLON..BZ["The Botanica"] },
		Location = { BZ["Netherstorm"] },
		DungeonID = 173,
		DungeonHeroicID = 191,
		Acronym = L["Bota"],
		WorldMapID = 266,
		JournalInstanceID = 257,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["The Sha'tar"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..ALC["Exit"], 10002 },
		{ WHIT.." 1) "..getBossName("Commander Sarannis", 558), 558 },
		{ WHIT.." 2) "..getBossName("High Botanist Freywinn", 559), 559 },
		{ WHIT.." 3) "..getBossName("Thorngrin the Tender", 560), 560 },
		{ WHIT.." 4) "..getBossName("Laj", 561), 561 },
		{ WHIT.." 5) "..getBossName("Warp Splinter", 562), 562 },
	},
	TempestKeepMechanar = {
		ZoneName = { BZ["Tempest Keep"]..COLON..BZ["The Mechanar"] },
		Location = { BZ["Netherstorm"] },
		DungeonID = 172,
		DungeonHeroicID = 192,
		Acronym = L["Mech"],
		WorldMapID = 267,
		JournalInstanceID = 258,
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["The Sha'tar"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ BLUE.." B) "..ALC["Exit"], 10002 },
		{ WHIT.." 1) "..getBossName("Gatewatcher Gyro-Kill"), 10003 },
		{ WHIT.." 2) "..getBossName("Gatewatcher Iron-Hand"), 10004 },
		{ WHIT.." 3) "..getBossName("Mechano-Lord Capacitus", 563)..L_PAREN..WANDERS..R_PAREN, 563 },
		{ GREN..INDENT..L["Overcharged Manacell"] },
		{ WHIT.." 4) "..getBossName("Nethermancer Sepethrea", 564), 564 },
		{ WHIT.." 5) "..getBossName("Pathaleon the Calculator", 565), 565 },
		{ GREN.." 1') "..getBossName("Cache of the Legion"), 10005 },
	},
	TempestKeepTheEye = {
		ZoneName = { BZ["Tempest Keep"]..COLON..BZ["Tempest Keep"] },
		Location = { BZ["Netherstorm"] },
		DungeonID = "193",
		Acronym = L["TK"],
		PlayerLimit = "25",
		WorldMapID = 266,
		JournalInstanceID = "749",
		Module = "Atlas_BurningCrusade",
		{ ORNG..REPUTATION..COLON..BF["The Sha'tar"] },
		{ BLUE.." A) "..ENTRANCE, 10001 },
		{ WHIT.." 1) "..getBossName("Al'ar", 1573), 1573 },
		{ WHIT.." 2) "..getBossName("Void Reaver", 1574), 1574 },
		{ WHIT.." 3) "..getBossName("High Astromancer Solarian", 1575), 1575 },
		{ WHIT.." 4) "..getBossName("Kael'thas Sunstrider", 1576), 1576 },
		{ WHIT..INDENT..getBossName("Thaladred the Darkener", 1576, 2)..L_PAREN..Atlas_GetClassName("WARRIOR")..R_PAREN },
		{ WHIT..INDENT..getBossName("Master Engineer Telonicus", 1576, 5)..L_PAREN..Atlas_GetClassName("HUNTER")..R_PAREN },
		{ WHIT..INDENT..getBossName("Grand Astromancer Capernian", 1576, 4)..L_PAREN..Atlas_GetClassName("MAGE")..R_PAREN },
		{ WHIT..INDENT..getBossName("Lord Sanguinar", 1576, 3)..L_PAREN..Atlas_GetClassName("PALADIN")..R_PAREN },
	},
}

-- Atlas Map NPC Description Data
db.AtlasMaps_NPC_DB = {
	AuchindounEnt = {
		{ "A", 10001, 52, 255 }, -- Auchenai Crypts
		{ "B", 10002, 251, 53 }, -- Mana-Tombs
		{ "C", 10003, 450, 251 }, -- Sethekk Halls
		{ "D", 10004, 251, 451 }, -- Shadow Labyrinth
		{ "E", 10005, 97, 97 }, -- Entrance
		{ "E", 10005, 405, 100 }, -- Entrance
		{ "E", 10005, 97, 406 }, -- Entrance
		{ "E", 10005, 405, 406 }, -- Entrance
		{ "1'", 10006, 88, 250 }, -- Clarissa
		{ "2'", 10007, 253, 88 }, -- Nexus-Prince Haramad
		{ "3'", 10008, 419, 253 }, -- Dealer Tariq <Shady Dealer>
		{ "3'", 10008, 253, 414 }, -- Dealer Tariq <Shady Dealer>
		{ "4'", 10009, 253, 251 }, -- Meeting Stone
	},
	AuchAuchenaiCrypts = {
		{ 1, 523, 220, 362 }, -- Shirrak the Dead Watcher
		{ 2, 524, 448, 227 }, -- Exarch Maladaar
		{ "A", 10001, 104, 400 },
		{ "1'", 10002, 260, 66 },
	},
	AuchManaTombs = {
		{ 1, 534, 253, 142 }, -- Pandemonius
		{ 2, 535, 357, 394 }, -- Tavarok
		{ 3, 537, 127, 266 }, -- Nexus-Prince Shaffar
		{ "A", 10001, 87, 12 },
		{ "1'", 10002, 359, 66 },
		{ "2'", 10003, 211, 429 },
	},
	AuchSethekkHalls = {
		{ 1, 541, 230, 317 }, -- Darkweaver Syth
		{ 2, 542, 91, 253 }, -- Anzu
		{ 3, 543, 95, 88 }, -- Talon King Ikiss
		{ "A", 10001, 498, 231 },
	},
	AuchShadowLabyrinth = {
		{ 1, 544, 60, 217 }, -- Ambassador Hellmaw
		{ 2, 545, 95, 363 }, -- Blackheart the Inciter
		{ 3, 546, 272, 293 }, -- Grandmaster Vorpil
		{ 4, 547, 456, 216 }, -- Murmur
		{ "A", 10001, 24, 40 },
		{ "1", 10002, 470, 186 },
		{ "1'", 10003, 21, 156 },
	},
	BlackTempleStart = {
		{ "A", 10001, 92, 477 },
		{ "B", 10002, 492, 119 },
		{ "C", 10003, 496, 256 },
		{ "D", 10004, 240, 95 },
		{ 1, 1582, 246, 306 },
		{ 2, 1583, 214, 191 },
		{ 3, 1584, 334, 357 },
		{ "1'", 10008, 83, 459 },
		{ "2'", 10009, 464, 189 },
	},
	BlackTempleBasement = {
		{ "B", 10001, 337, 161 },
		{ "C", 10002, 294, 268 },
		{ 4, 1586, 270, 207 },
		{ 5, 1587, 359, 429 },
		{ 6, 1585, 72, 266 },
	},
	BlackTempleTop = {
		{ "D", 10001, 48, 120 },
		{ "E", 10002, 82, 263 },
		{ "E", 10002, 280, 252 },
		{ 7, 1588, 430, 60 },
		{ 8, 1589, 277, 294 },
		{ 9, 1590, 82, 386 },
	},
	CFRSerpentshrineCavern = {
		{ "A", 10001, 10, 333 },
		{ "B", 10002, 49, 268 },
		{ "B", 10002, 93, 319 },
		{ 1, 1567, 190, 379 },
		{ 2, 1568, 212, 270 },
		{ 3, 1569, 225, 137 },
		{ 4, 1570, 256, 85 },
		{ 5, 1571, 334, 136 },
		{ 6, 1572, 411, 277 },
	},
	CFRTheSlavePens = {
		{ 1, 570, 243, 167 }, -- Mennu the Betrayer
		{ 2, 571, 288, 220 }, -- Rokmar the Crackler
		{ 3, 572, 401, 369 }, -- Quagmirran
		{ "A", 10001, 116, 103 },
		{ "1", 10002, 160, 249 },
		{ "1'", 10003, 245, 345 },
		{ "2'", 10004, 292, 366 },
		{ "3'", 10005, 488, 309 },
	},
	CFRTheSteamvault = {
		{ 1, 573, 270, 80 }, -- Hydromancer Thespia
		{ 2, 574, 123, 401 }, -- Mekgineer Steamrigger
		{ 3, 575, 470, 217 }, -- Warlord Kalithresh
		{ "A", 10001, 5, 176 },
		{ "1", 10002, 264, 125 },
	},
	CFRTheUnderbog = {
		{ 1, 576, 360, 423 }, -- Hungarfen
		{ 2, 577, 414, 169 }, -- Ghaz'an
		{ 3, 578, 195, 148 }, -- Swamplord Musel'ek
		{ 4, 579, 101, 230 }, -- The Black Stalker
		{ "A", 10001, 118, 340 },
		{ "1'", 10002, 359, 149 },
	},
	CoilfangReservoirEnt = {
		{ "A", 10001, 79, 321 }, -- The Slave Pens
		{ "B", 10002, 139, 230 }, -- The Steamvault
		{ "C", 10003, 241, 224 }, -- Serpentshrine Cavern
		{ "D", 10004, 349, 292 }, -- The Underbog
		{ "E", 10005, 241, 378 }, -- Entrance - Underwater
		{ "1'", 10006, 251, 321 }, -- Meeting Stone
		{ "2'", 10007, 227, 308 }, -- Mortog Steamhead
	},
	CavernsOfTimeEnt = {
		{ "A", 10001, 405, 170 }, -- Entrance
		{ "B", 10002, 140, 79 }, -- Hyjal Summit
		{ "C", 10003, 18, 156 }, -- Old Hillsbrad Foothills
		{ "D", 10004, 65, 442 }, -- The Black Morass
		{ "E", 10005, 263, 411 }, -- The Culling of Stratholme
		{ "F", 10006, 291, 170 }, -- Dragon Soul
		{ "G", 10007, 261, 201 }, -- End Time
		{ "H", 10008, 28, 298 }, -- Well of Eternity
		{ "I", 10009, 329, 210 }, -- Hour of Twilight
		{ "1'", 10010, 426, 170 }, -- Steward of Time <Keepers of Time>
		{ "2'", 10011, 461, 159 }, -- Alexston Chrome <Tavern of Time>
		{ "3'", 10012, 355, 148 }, -- Graveyard
		{ "4'", 10013, 323, 303 }, -- Yarley <Armorer>
		{ "5'", 10014, 313, 329 }, -- Bortega <Reagents & Poison Supplies>
		{ "6'", 10015, 196, 293 }, -- Zaladormu
		{ "7'", 10016, 198, 157 }, -- Moonwell
		{ "8'", 10017, 161, 216 }, -- Andormu <Keepers of Time>
		{ "9'", 10018, 146, 263 }, -- Anachronos <Keepers of Time>
		{ "10'", 10019, 115, 317 }, -- Andormu <Keepers of Time>
	},
	CoTBlackMorass = {
		{ "A", 10001, 255, 123 },
		{ "X", 10002, 262, 243 },
		{ "X", 10002, 226, 271 },
		{ "X", 10002, 307, 279 },
		{ "X", 10002, 305, 314 },
		{ "1'", 10003, 249, 346 },
	},
	CoTHyjal = {
		{ "A", 10001, 102, 252 },
		{ "B", 10002, 281, 189 },
		{ "C", 10003, 374, 238 },
		{ 1, 1577, 120, 241 },
		{ 2, 1578, 120, 262 },
		{ 3, 1579, 298, 178 },
		{ 4, 1580, 298, 199 },
		{ 5, 1581, 409, 167 },
	},
	CoTHyjalEnt = {
		{ "A", 10001, 380, 303 }, -- Entrance
		{ "B", 10002, 298, 410 }, -- Alliance Base
		{ "C", 10003, 221, 124 }, -- Horde Encampment
		{ "D", 10004, 143, 254 }, -- Night Elf Village
		{ "1'", 10005, 249, 268 }, -- Indormi <Keeper of Ancient Gem Lore>
	},
	CoTOldHillsbrad = {
		{ 1, 538, 402, 286 }, -- Lieutenant Drake
		{ 2, 539, 355, 298 }, -- Captain Skarloc
		{ 3, 540, 220, 123 }, -- Epoch Hunter
		{ "A", 10001, 67, 201 },
		{ "B", 10002, 339, 297 },
		{ "C", 10003, 114, 349 },
		{ "D", 10004, 218, 150 },
		{ "1'", 10005, 392, 251 },
		{ "2'", 10006, 237, 176 },
		{ "4", 10007, 182, 228 },
		{ "3'", 10008, 152, 228 },
	},
	GruulsLair = {
		{ "A", 10001, 458, 407 },
		{ 1, 1564, 274, 243 },
		{ 2, 1565, 91, 129 },
	},
	HCBloodFurnace = {
		{ 1, 555, 138, 191 }, -- The Maker
		{ 2, 556, 198, 80 }, -- Broggok
		{ 3, 557, 323, 191 }, -- Keli'dan the Breaker
		{ "A", 10001, 232, 472 },
	},
	HCHellfireRamparts = {
		{ 1, 527, 392, 143 }, -- Watchkeeper Gargolmar
		{ 2, 528, 106, 80 }, -- Omor the Unscarred
		{ 3, 529, 77, 418 }, -- Vazruden the Herald
		{ "A", 10001, 197, 354 },
	},
	HCMagtheridonsLair = {
		{ "A", 10001, 111, 67 },
		{ 1, 1566, 269, 359 },
	},
	HCTheShatteredHalls = {
		{ 1, 566, 114, 328 }, -- Grand Warlock Nethekurse
		{ 2, 728, 69, 47 }, -- Blood Guard Porung
		{ 3, 568, 283, 166 }, -- Warbringer O'mrogg
		{ 4, 569, 401, 287 }, -- Warchief Kargath Bladefist
		{ "A", 10001, 331, 488 },
		{ "1'", 10002, 114, 375 },
	},
	HellfireCitadelEnt = {
		{ "A", 10001, 275, 306 }, -- Hellfire Ramparts
		{ "B", 10002, 305, 253 }, -- The Shattered Halls
		{ "C", 10003, 201, 249 }, -- The Blood Furnace
		{ "D", 10004, 210, 286 }, -- Magtheridon's Lair
		{ "1'", 10005, 190, 344 }, -- Meeting Stone of Magtheridon's Lair
		{ "2'", 10006, 309, 283 }, -- Meeting Stone of Hellfire Citadel
		{ "3'", 10007, 205, 489 }, -- Steps and path to the Blood Furnace
		{ "4'", 10008, 331, 377 }, -- Path to the Hellfire Ramparts and Shattered Halls
		{ "4'", 10008, 326, 134 }, -- Path to the Hellfire Ramparts and Shattered Halls
	},
	KarazhanStart = {
		{ "A", 10001, 138, 207 },
		{ "B", 10002, 100, 156 },
		{ "B", 10002, 112, 342 },
		{ "C", 10002, 45, 215 },
		{ "C", 10002, 66, 438 },
		{ "D", 10002, 28, 30 },
		{ "D", 10002, 313, 275 },
		{ "E", 10002, 155, 251 },
		{ "E", 10002, 427, 309 },
		{ "F", 10002, 235, 207 },
		{ "F", 10002, 224, 320 },
		{ "G", 10002, 283, 16 },
		{ "G", 10002, 286, 137 },
		{ "H", 10002, 410, 141 },
		{ "H", 10002, 399, 384 },
		{ "I", 10002, 363, 179 },
		{ "I", 10002, 352, 421 },
		{ "J", 10002, 436, 164 },
		{ "J", 10002, 426, 409 },
		{ 1, 1553, 75, 218 },
		{ 2, 1554, 36, 310 },
		{ 3, 1555, 473, 313 },
		{ 4, 1556, 205, 300 },
		{ 5, 10018, 349, 493 },
		{ 1, 1552, 145, 62 },
		{ "1'", 10009, 141, 169 },
		{ "2'", 10010, 101, 170 },
		{ "3'", 10011, 105, 211 },
		{ "4'", 10012, 59, 193 },
		{ "5'", 10013, 56, 406 },
		{ "6'", 10014, 411, 239 },
		{ "7'", 10015, 359, 361 },
		{ "8'", 10016, 233, 332 },
		{ "9'", 10017, 221, 281 },
	},
	KarazhanEnd = {
		{ "I", 10001, 210, 39 },
		{ "J", 10002, 179, 44 },
		{ "K", 10003, 39, 227 },
		{ "K", 10003, 172, 385 },
		{ "L", 10004, 193, 312 },
		{ "M", 10005, 189, 406 },
		{ "M", 10005, 356, 227 },
		{ "N", 10006, 422, 142 },
		{ "N", 10006, 419, 14 },
		{ "O", 10007, 497, 65 },
		{ "O", 10007, 497, 304 },
		{ "O", 10007, 497, 205 },
		{ "O", 10007, 486, 492 },
		{ "7", 1557, 96, 80 },
		{ 8, 1560, 115, 389 },
		{ 9, 1559, 290, 296 },
		{ 10, 1561, 232, 154 },
		{ 11, 1562, 429, 51 },
		{ 12, 1563, 463, 399 },
		{ "10'", 10014, 75, 149 },
		{ "11'", 10015, 21, 162 },
		{ "12'", 10016, 22, 210 },
		{ "13'", 10017, 401, 117 },
		{ "14'", 10018, 404, 75 },
	},
	KarazhanEnt = {
		{ "A", 10001, 279, 289 }, -- Karazhan, Front
		{ "B", 10002, 327, 192 }, -- Karazhan, Back
		{ "C", 10003, 266, 220 }, -- Return to Karazhan
		{ "1'", 18255, 290, 304 }, -- Archmage Leryda
		{ "2'", 10004, 300, 355 }, -- Stairs to The Master's Cellar
		{ "3'", 10005, 325, 365 }, -- Stairs to The Master's Cellar
		{ "4'", 10006, 226, 364 }, -- Charred Bone Fragment
		{ "5'", 10007, 274, 315 }, -- Meeting Stone
		{ "6'", 10008, 94, 288 }, -- Graveyard
		{ "7'", 66255, 93, 328 }, -- Lydia Accoste
	},
	MagistersTerrace = {
		{ 1, 530, 210, 123 }, -- Selin Fireheart
		{ 2, 531, 424, 153 }, -- Vexallus
		{ 3, 532, 190, 257 }, -- Priestess Delrissa
		{ 4, 533, 34, 236 }, -- Kael'thas Sunstrider
		{ "A", 10001, 212, 397 },
		{ "B", 10002, 10, 238 },
		{ "1'", 10003, 313, 149 },
		{ "2'", 10004, 487, 154 },
	},
	SunwellPlateau = {
		{ "A", 10001, 174, 90 },
		{ 1, 1591, 174, 162 },
		{ 2, 1592, 338, 273 },
		{ 3, 1594, 319, 106 },
		{ 4, 1596, 320, 164 },
	},
	TempestKeepArcatraz = {
		{ 1, 548, 331, 234 }, -- Zereketh the Unbound
		{ 2, 549, 142, 353 }, -- Dalliah the Doomsayer
		{ 3, 550, 65, 353 }, -- Wrath-Scryer Soccothrates
		{ 4, 551, 364, 81 }, -- Harbinger Skyriss
		{ "A", 10001, 187, 490 },
		{ "1", 10002, 238, 179 },
		{ "1'", 10003, 199, 75 },
	},
	TempestKeepBotanica = {
		{ 1, 558, 221, 144 }, -- Commander Sarannis
		{ 2, 559, 114, 144 }, -- High Botanist Freywinn
		{ 3, 560, 31, 235 }, -- Thorngrin the Tender
		{ 4, 561, 167, 352 }, -- Laj
		{ 5, 562, 168, 197 }, -- Warp Splinter
		{ "A", 10001, 495, 211 },
		{ "B", 10002, 168, 134 },
	},
	TempestKeepEnt = {
		{ "A", 10001, 233, 354 }, -- The Mechanar
		{ "B", 10002, 266, 127 }, -- The Botanica
		{ "C", 10003, 332, 165 }, -- The Arcatraz
		{ "D", 10004, 257, 258 }, -- Tempest Keep
	},
	TempestKeepMechanar = {
		{ 1, 10003, 227, 281 },
		{ 2, 10004, 331, 256 },
		{ 3, 563, 295, 175 }, -- Mechano-Lord Capacitus
		{ 4, 564, 234, 25 }, -- Nethermancer Sepethrea
		{ 5, 565, 82, 232 }, -- Pathaleon the Calculator	
		{ "A", 10001, 205, 482 },
		{ "B", 10002, 46, 359 },
		{ "1'", 10005, 162, 153 },
	},
	TempestKeepTheEye = {
		{ "A", 10001, 230, 481 },
		{ 1, 1573, 250, 283 },
		{ 2, 1574, 61, 233 },
		{ 3, 1575, 438, 231 },
		{ 4, 1576, 251, 52 },
	},
}

db.AssocDefaults = {
	[BZ["Black Temple"]] =			"BlackTempleBasement",
	--[BZ["Karazhan"]] =			"KarazhanStart",
}

--[[
	SubZoneData{}

	Define SubZone data for default map to be selected for instance which has multiple maps.
	Subzone data should be able to be pulled out from WMOAreaTable for indoor areas, or from AreaTable for outdoor areas.

	Array Syntax: 
	["localized zone name"] = {
		["atlas map name"] = {
			["localized subzone name 1"],
			["localized subzone name 2"],
		},
	},
]]
db.SubZoneData = {
	-- Black Temple
	[BZ["Black Temple"]] = {
		-- Black Temple, Start
		["BlackTempleStart"] = {
			BZ["Karabor Sewers"],
			BZ["Illidari Training Grounds"],
			BZ["Sanctuary of Shadows"],
			BZ["The Refectory"],
		},
		-- Black Temple, Basement
		["BlackTempleBasement"] = {
			BZ["Gorefiend's Vigil"],
			BZ["Halls of Anguish"],
			BZ["Shrine of Lost Souls"],
		},
		-- Black Temple, Top
		["BlackTempleTop"] = {
			BZ["Den of Mortal Delights"],
			BZ["Grand Promenade"],
			BZ["Chamber of Command"],
			BZ["Temple Summit"],
		},
	},
	-- Karazhan
	[BZ["Karazhan"]] = {
		-- Karazhan, Start
		["KarazhanStart"] = {
			BZ["The Gatehouse"],
			BZ["Livery Stables"],
			BZ["The Guardhouse"],
			BZ["The Scullery"],
			BZ["Servants' Quarters"],
			BZ["The Grand Ballroom"],
			BZ["The Banquet Hall"],
			BZ["The Guest Chambers"],
			BZ["The Opera Hall"],
			BZ["The Broken Stair"],
			BZ["Master's Terrace"],
		},
		-- Karazhan, End
		["KarazhanEnd"] = {
			BZ["The Menagerie"],
			BZ["Guardian's Library"],
			BZ["The Repository"],
			BZ["The Celestial Watch"],
			BZ["Gamesman's Hall"],
			BZ["Medivh's Chambers"],
			BZ["Master's Terrace"],
			BZ["Netherspace"],
		},
	},
}

--[[
	OutdoorZoneToAtlas{}

	Maps to auto-select to from outdoor zones.

	Table index is sub-zone name, it need to be localized value, but we will handle
	the localization with BabbleSubZone library.
	The table value is map's key-name.

	Duplicates are commented out.
	Not for localization.
]]
db.OutdoorZoneToAtlas = {
	[BZ["Tanaris"]] = 			"CavernsOfTimeEnt",	-- Burning Crusade, WoLTK, Catalysm
	[BZ["Terokkar Forest"]] = 		"AuchindounEnt",		-- Outland
	[BZ["Shadowmoon Valley"]] = 		"BlackTempleStart",		-- Outland
	[BZ["Zangarmarsh"]] = 			"CoilfangReservoirEnt",		-- Outland
	[BZ["Blade's Edge Mountains"]] = 	"GruulsLair",			-- Outland
	[BZ["Hellfire Peninsula"]] = 		"HellfireCitadelEnt",		-- Outland
	[BZ["Deadwind Pass"]] = 		"KarazhanEnt",
	[BZ["Isle of Quel'Danas"]] = 		"SunwellPlateau",
	[BZ["Netherstorm"]] = 			"TempestKeepEnt",
}

-- Entrance maps to instance maps
db.EntToInstMatches = {
	["AuchindounEnt"] =			{"AuchManaTombs","AuchAuchenaiCrypts","AuchSethekkHalls","AuchShadowLabyrinth"},
	["CoilfangReservoirEnt"] =		{"CFRTheSlavePens","CFRTheUnderbog","CFRTheSteamvault","CFRSerpentshrineCavern"},
	["CavernsOfTimeEnt"] =			{"CoTBlackMorass","CoTHyjal","CoTHyjalEnt","CoTOldHillsbrad",},
	["HellfireCitadelEnt"] = 		{"HCBloodFurnace", "HCHellfireRamparts", "HCMagtheridonsLair", "HCTheShatteredHalls"},
	["KarazhanEnt"] =			{"KarazhanStart","KarazhanEnd"},
	["TempestKeepEnt"] = 			{"TempestKeepArcatraz", "TempestKeepBotanica", "TempestKeepMechanar", "TempestKeepTheEye"},
}

-- Instance maps to entrance maps
db.InstToEntMatches = {
	["AuchManaTombs"] =			{"AuchindounEnt"},
	["AuchAuchenaiCrypts"] =		{"AuchindounEnt"},
	["AuchSethekkHalls"] =			{"AuchindounEnt"},
	["AuchShadowLabyrinth"] =		{"AuchindounEnt"},
	["CFRTheSlavePens"] =			{"CoilfangReservoirEnt"},
	["CFRTheUnderbog"] =			{"CoilfangReservoirEnt"},
	["CFRTheSteamvault"] =			{"CoilfangReservoirEnt"},
	["CFRSerpentshrineCavern"] =		{"CoilfangReservoirEnt"},
	["CoTBlackMorass"] =			{"CavernsOfTimeEnt"},
	["CoTHyjal"] =				{"CavernsOfTimeEnt"},
	["CoTHyjalEnt"] =			{"CavernsOfTimeEnt"},
	["CoTOldHillsbrad"] =			{"CavernsOfTimeEnt"},
	["HCBloodFurnace"] = 			{"HellfireCitadelEnt"},
	["HCHellfireRamparts"] = 		{"HellfireCitadelEnt"},
	["HCMagtheridonsLair"] = 		{"HellfireCitadelEnt"},
	["HCTheShatteredHalls"] = 		{"HellfireCitadelEnt"},
	["KarazhanStart"] =			{"KarazhanEnt"},
	["KarazhanEnd"] =			{"KarazhanEnt"},
	["Maraudon"] =				{"MaraudonEnt"},
	["TempestKeepArcatraz"] = 		{"TempestKeepEnt"},
	["TempestKeepBotanica"] = 		{"TempestKeepEnt"}, 
	["TempestKeepMechanar"] = 		{"TempestKeepEnt"}, 
	["TempestKeepTheEye"] = 		{"TempestKeepEnt"},
}

-- Defines the instance which have multiple maps
-- Added only when the Entrance map is not available, for example, Ulduar do have entrance map, so no need to add it here
db.MapSeries = {
	["BlackTempleStart"] = 			{"BlackTempleStart", "BlackTempleBasement", "BlackTempleTop" },
	["BlackTempleBasement"] = 		{"BlackTempleStart", "BlackTempleBasement", "BlackTempleTop" },
	["BlackTempleTop"] = 			{"BlackTempleStart", "BlackTempleBasement", "BlackTempleTop" },
}

-- Links maps together that are part of the same instance
db.SubZoneAssoc = {
	["BlackTempleStart"] =			BZ["Black Temple"],
	["BlackTempleBasement"] =		BZ["Black Temple"],
	["BlackTempleTop"] =			BZ["Black Temple"],
	["KarazhanStart"] =			BZ["Karazhan"],
	["KarazhanEnd"] =			BZ["Karazhan"],
	["KarazhanEnt"] =			BZ["Karazhan"],
}

db.DropDownLayouts_Order = {
	[ATLAS_DDL_CONTINENT] = {
		ATLAS_DDL_CONTINENT_EASTERN,
		ATLAS_DDL_CONTINENT_OUTLAND,
	},
	[ATLAS_DDL_LEVEL] = {
		ATLAS_DDL_LEVEL_10TO30,
	},
	[ATLAS_DDL_EXPANSION] = {
		ATLAS_DDL_EXPANSION_BC,
	},
}

db.DropDownLayouts = {
	[ATLAS_DDL_CONTINENT] = {
		[ATLAS_DDL_CONTINENT_EASTERN] = {
			"KarazhanEnd",			-- Burning Crusade
			"KarazhanEnt",			-- Burning Crusade
			"KarazhanStart",		-- Burning Crusade
			"MagistersTerrace",		-- Burning Crusade
			"SunwellPlateau",		-- Burning Crusade
		},
		[ATLAS_DDL_CONTINENT_KALIMDOR] = {
			"CavernsOfTimeEnt",		-- Burning Crusade, WoLTK, Catalysm
			"CoTBlackMorass",		-- Burning Crusade
			"CoTHyjal",			-- Burning Crusade
			"CoTHyjalEnt",			-- Burning Crusade
			"CoTOldHillsbrad",		-- Burning Crusade
		},
		[ATLAS_DDL_CONTINENT_OUTLAND] = {
			"AuchAuchenaiCrypts",
			"AuchindounEnt",
			"AuchManaTombs",
			"AuchSethekkHalls",
			"AuchShadowLabyrinth",
			"BlackTempleBasement",
			"BlackTempleStart",
			"BlackTempleTop",
			"CFRSerpentshrineCavern",
			"CFRTheSlavePens",
			"CFRTheSteamvault",
			"CFRTheUnderbog",
			"CoilfangReservoirEnt",
			"GruulsLair",
			"HellfireCitadelEnt",
			"HCBloodFurnace",
			"HCHellfireRamparts",
			"HCMagtheridonsLair",
			"HCTheShatteredHalls",
			"TempestKeepEnt",
			"TempestKeepArcatraz",
			"TempestKeepBotanica",
			"TempestKeepMechanar",
			"TempestKeepTheEye",
		},
	},
	[ATLAS_DDL_EXPANSION] = {
		[ATLAS_DDL_EXPANSION_BC] = {
			"AuchAuchenaiCrypts",
			"AuchindounEnt",
			"AuchManaTombs",
			"AuchSethekkHalls",
			"AuchShadowLabyrinth",
			"BlackTempleBasement",
			"BlackTempleStart",
			"BlackTempleTop",
			"CFRSerpentshrineCavern",
			"CFRTheSlavePens",
			"CFRTheSteamvault",
			"CFRTheUnderbog",
			"CoilfangReservoirEnt",
			"CavernsOfTimeEnt",
			"CoTBlackMorass",
			"CoTHyjal",
			"CoTHyjalEnt",
			"CoTOldHillsbrad",
			"GruulsLair",
			"HellfireCitadelEnt",
			"HCBloodFurnace",
			"HCHellfireRamparts",
			"HCMagtheridonsLair",
			"HCTheShatteredHalls",
			"KarazhanEnd",
			"KarazhanEnt",
			"KarazhanStart",
			"MagistersTerrace",
			"SunwellPlateau",
			"TempestKeepEnt",
			"TempestKeepArcatraz",
			"TempestKeepBotanica",
			"TempestKeepMechanar",
			"TempestKeepTheEye",
		},
	},
	[ATLAS_DDL_LEVEL] = {
		[ATLAS_DDL_LEVEL_10TO30] = {
			"AuchAuchenaiCrypts",		-- Burning Crusade
			"AuchindounEnt",		-- Burning Crusade
			"AuchManaTombs",		-- Burning Crusade
			"AuchSethekkHalls",		-- Burning Crusade
			"AuchShadowLabyrinth",		-- Burning Crusade
			"CFRTheSlavePens",		-- Burning Crusade
			"CFRTheSteamvault",		-- Burning Crusade
			"CFRTheUnderbog",		-- Burning Crusade
			"CoilfangReservoirEnt",		-- Burning Crusade
			"CavernsOfTimeEnt",		-- Burning Crusade
			"CoTBlackMorass",		-- Burning Crusade
			"CavernsOfTimeEnt",		-- Burning Crusade
			"CoTOldHillsbrad",		-- Burning Crusade
			"HellfireCitadelEnt",		-- Burning Crusade
			"HCBloodFurnace",		-- Burning Crusade
			"HCHellfireRamparts",		-- Burning Crusade
			"HCTheShatteredHalls",		-- Burning Crusade
			"MagistersTerrace",		-- Burning Crusade
			"TempestKeepEnt",		-- Burning Crusade
			"TempestKeepArcatraz",		-- Burning Crusade
			"TempestKeepBotanica",		-- Burning Crusade
			"TempestKeepMechanar",		-- Burning Crusade
			"BlackTempleBasement",		-- Burning Crusade
			"BlackTempleStart",		-- Burning Crusade
			"BlackTempleTop",		-- Burning Crusade
			"CFRSerpentshrineCavern",	-- Burning Crusade
			"CavernsOfTimeEnt",		-- Burning Crusade
			"CoTHyjal",			-- Burning Crusade
			"CoTHyjalEnt",			-- Burning Crusade
			"KarazhanEnd",			-- Burning Crusade
			"KarazhanEnt",			-- Burning Crusade
			"KarazhanStart",		-- Burning Crusade
		},
	},
	[ATLAS_DDL_PARTYSIZE] = {
		[ATLAS_DDL_PARTYSIZE_5] = {
			"AuchAuchenaiCrypts",		-- Burning Crusade
			"AuchindounEnt",		-- Burning Crusade
			"AuchManaTombs",		-- Burning Crusade
			"AuchSethekkHalls",		-- Burning Crusade
			"AuchShadowLabyrinth",		-- Burning Crusade
			"CavernsOfTimeEnt",		-- Burning Crusade
			"CFRTheSlavePens",		-- Burning Crusade
			"CFRTheSteamvault",		-- Burning Crusade
			"CFRTheUnderbog",		-- Burning Crusade
			"CoilfangReservoirEnt",		-- Burning Crusade
			"CoTBlackMorass",		-- Burning Crusade
			"CoTOldHillsbrad",		-- Burning Crusade
			"HCBloodFurnace",		-- Burning Crusade
			"HCHellfireRamparts",		-- Burning Crusade
			"HCTheShatteredHalls",		-- Burning Crusade
			"HellfireCitadelEnt",		-- Burning Crusade
			"MagistersTerrace",		-- Burning Crusade
			"TempestKeepArcatraz",		-- Burning Crusade
			"TempestKeepBotanica",		-- Burning Crusade
			"TempestKeepEnt",		-- Burning Crusade
			"TempestKeepMechanar",		-- Burning Crusade
		},
		[ATLAS_DDL_PARTYSIZE_10] = {
			"KarazhanEnd",			-- Burning Crusade
			"KarazhanEnt",			-- Burning Crusade
			"KarazhanStart",		-- Burning Crusade
		},
		[ATLAS_DDL_PARTYSIZE_20TO40] = {
			"BlackTempleBasement",		-- Burning Crusade
			"BlackTempleStart",		-- Burning Crusade
			"BlackTempleTop",		-- Burning Crusade
			"CFRSerpentshrineCavern",	-- Burning Crusade
			"CoilfangReservoirEnt",		-- Burning Crusade
			"CavernsOfTimeEnt",		-- Burning Crusade
			"CoTHyjal",			-- Burning Crusade
			"CoTHyjalEnt",			-- Burning Crusade
			"GruulsLair",			-- Burning Crusade
			"HCMagtheridonsLair",		-- Burning Crusade
			"HellfireCitadelEnt",		-- Burning Crusade
			"SunwellPlateau",		-- Burning Crusade
			"TempestKeepEnt",		-- Burning Crusade
			"TempestKeepTheEye",		-- Burning Crusade
		},
	},
	[ATLAS_DDL_TYPE] = {
		[ATLAS_DDL_TYPE_INSTANCE] = {
			"AuchAuchenaiCrypts",		-- Burning Crusade
			"AuchManaTombs",		-- Burning Crusade
			"AuchSethekkHalls",		-- Burning Crusade
			"AuchShadowLabyrinth",		-- Burning Crusade
			"BlackTempleBasement",		-- Burning Crusade
			"BlackTempleStart",		-- Burning Crusade
			"BlackTempleTop",		-- Burning Crusade
			"CFRSerpentshrineCavern",	-- Burning Crusade
			"CFRTheSlavePens",		-- Burning Crusade
			"CFRTheSteamvault",		-- Burning Crusade
			"CFRTheUnderbog",		-- Burning Crusade
			"CoTBlackMorass",		-- Burning Crusade
			"CoTHyjal",			-- Burning Crusade
			"CoTHyjalEnt",			-- Burning Crusade
			"CoTOldHillsbrad",		-- Burning Crusade
			"GruulsLair",			-- Burning Crusade
			"HCBloodFurnace",		-- Burning Crusade
			"HCHellfireRamparts",		-- Burning Crusade
			"HCMagtheridonsLair",		-- Burning Crusade
			"HCTheShatteredHalls",		-- Burning Crusade
			"KarazhanEnd",			-- Burning Crusade
			"KarazhanStart",		-- Burning Crusade
			"MagistersTerrace",		-- Burning Crusade
			"SunwellPlateau",		-- Burning Crusade
			"TempestKeepArcatraz",		-- Burning Crusade
			"TempestKeepBotanica",		-- Burning Crusade
			"TempestKeepMechanar",		-- Burning Crusade
			"TempestKeepTheEye",		-- Burning Crusade
		},
		[ATLAS_DDL_TYPE_ENTRANCE] = {
			"AuchindounEnt",		-- Burning Crusade
			"CoilfangReservoirEnt",		-- Burning Crusade
			"CavernsOfTimeEnt",		-- Burning Crusade
			"CoTHyjalEnt",			-- Burning Crusade
			"HellfireCitadelEnt",		-- Burning Crusade
			"KarazhanEnt",			-- Burning Crusade
			"TempestKeepEnt",		-- Burning Crusade
		},
	},
}
