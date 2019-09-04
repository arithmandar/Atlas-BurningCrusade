-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2019 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_BurningCrusade", "deDE", false);

if L then
--@localization(locale="deDE", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--BC Acronyms
	L["AC"] = "Krypta"; -- Auchenai Crypts
	L["Arca"] = "Arka"; -- The Arcatraz
	L["Auch"] = "Auch"; -- Auchindoun
	L["BF"] = "BK"; -- The Blood Furnace
	L["BT"] = "BT"; -- Black Temple
	L["Bota"] = "Bota"; -- The Botanica
	L["CoT"] = "HdZ"; -- Caverns of Time
	L["CoT1"] = "Durnholde, HdZ1"; -- Old Hillsbrad Foothills
	L["CoT2"] = "Morast, HdZ2"; -- The Black Morass
	L["CoT3"] = "Hyjal, HdZ3"; -- Hyjal Summit
	L["CR"] = "EK"; -- Coilfang Reservoir
	L["GL"] = "Gruul"; -- Gruul's Lair
	L["HC"] = "HZ"; -- Hellfire Citadel
	L["Kara"] = "Kara"; -- Karazhan
	L["MaT"] = "TdM"; -- Magisters' Terrace
	L["Mag"] = "Maggi"; -- Magtheridon's Lair
	L["Mech"] = "Mecha"; -- The Mechanar
	L["MT"] = "Gruft"; -- Mana-Tombs
	L["Ramp"] = "BW"; -- Hellfire Ramparts
	L["SSC"] = "SSC, HdS"; -- Serpentshrine Cavern
	L["Seth"] = "SH"; -- Sethekk Halls
	L["SH"] = "ZH"; -- The Shattered Halls
	L["SL"] = "Laby"; -- Shadow Labyrinth
	L["SP"] = "SU"; -- The Slave Pens
	L["SuP"] = "Sunwell"; -- Sunwell Plateau
	L["SV"] = "DK"; -- The Steamvault
	L["TK"] = "FdS"; -- Tempest Keep
	L["UB"] = "TS"; -- The Underbog

--*******************
-- Burning Crusade Instances
--*******************

	--Auchindoun (Entrance)
	L["Clarissa"] = "Clarissa";
	L["Greatfather Aldrimus"] = "Großvater Aldrimus";
	L["Ha'lei"] = "Ha'lei";
	L["Horvon the Armorer <Armorsmith>"] = "Horvon der Rüstungsschmied <Rüstungsschmied>";
	L["Ramdor the Mad"] = "Ramdor der Wahnsinnige";
	L["Nexus-Prince Haramad"] = "Nexusprinz Haramad";
	L["\"Slim\" <Shady Dealer>"] = "Smudo <Zwielichtiger Händler>";
	L["\"Captain\" Kaftiz"] = "\"Kapitän\" Kaftiz";
	L["Dealer Tariq <Shady Dealer>"] = "Händler Tariq <Zwielichtiger Händler>";
	L["Provisioner Tsaalt"] = "Versorger Tsaalt";

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "Draeneigeist";
	L["Avatar of the Martyred"] = "Avatar des Gemarterten";
	L["D'ore"] = "D'ore";
	L["Tormented Soulpriest"] = "Gequälte Seelenpriesterin";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "Konstrukteur Morphalius";
	L["Mamdy the \"Ologist\""] = "Mamdy der \"Ologe\"";
	L["Shadow Lord Xiraxis"] = "Schattenlord Xiraxis";
	L["Ambassador Pax'ivi"] = "Botschafter Pax'ivi";
	L["Cryo-Engineer Sha'heen"] = "Kryoingenieur Sha'heen";
	L["Ethereal Transporter Control Panel"] = "Bedienungskonsole des Astraltransporters";

	--Auch: Sethekk Halls
	L["Isfar"] = "Isfar";
	L["Dealer Vijaad"] = "Händler Vijaad";
	L["Lakka"] = "Lakka";
	L["The Saga of Terokk"] = "Die Sage von Terokk";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "Feldkommandeur Mahfuun";
	L["Spy Grik'tha"] = "Spionin Grik'tha";
	L["The Codex of Blood"] = "Kodex des Blutes";
	L["First Fragment Guardian"] = "Wächter des ersten Teils";
	L["Spy To'gun"] = "Spion To'gun";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "Zum Relikt der Seelen";
	L["Towards Teron Gorefiend"] = "Zu Teron Blutschatten";
	L["Towards Illidan Stormrage"] = "Zu Illidan Sturmgrimm";
	L["Spirit of Olum"] = "Geist von Olum";
	L["Spirit of Udalo"] = "Geist von Udalo";
	L["Aluyen <Reagents>"] = "Aluyen <Reagenzien>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "Okuno <Rüstmeister der Todeshörigen>";
	L["Seer Kanai"] = "Seher Kanai";

	--Black Temple (Basement)

	--Black Temple (Top)

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "Mortog Dampfkopf";

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "Seher Olum";

	--CFR: The Slave Pens
	L["Nahuud"] = "Nahuud";
	L["Watcher Jhang"] = "Behüterin Jhang";
	L["Weeder Greenthumb"] = "Jäter Gründaum";
	L["Skar'this the Heretic"] = "Nar'biss der Ketzer";
	L["Naturalist Bite"] = "Naturalist Biss";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "Windrufer Klaue";
	L["Main Chambers Access Panel"] = "Zugangskonsole der Hauptkammer";
	L["Second Fragment Guardian"] = "Wächter des zweiten Teils";

	--CFR: The Underbog
	L["T'shu"] = "T'shu";
	L["The Underspore"] = "Die Tiefenspore";
	L["Earthbinder Rayge"] = "Erdbinder Rayge";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "Indormi <Bewahrerin der alten Edelsteinkunde>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "Tydormu <Bewahrer der verlorenen Artefakte>";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "Sa'at <Hüter der Zeit>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "Lady Jaina Prachtmeer";
	L["Thrall <Warchief>"] = "Thrall <Kriegshäuptling>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "Tyrande Wisperwind <Hohepriesterin von Elune>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "Erozion";
	L["Brazen"] = "Brazen";
	L["Landing Spot"] = "Landepunkt";
	L["Thrall"] = "Thrall";
	L["Taretha"] = "Taretha";
	L["Don Carlos"] = "Don Carlos";
	L["Guerrero"] = "Guerrero";
	L["Thomas Yance <Travelling Salesman>"] = "Thomas Yance <Fliegender Händler>";
	L["Aged Dalaran Wizard"] = "Gealterter Hexer von Dalaran";
	L["Jonathan Revah"] = "Jonathan Revah";
	L["Jerry Carter"] = "Jerry Carter";
	L["Helcular"] = "Helcular";
	L["Farmer Kent"] = "Bauer Kent";
	L["Sally Whitemane"] = "Sally Weißsträhne";
	L["Renault Mograine"] = "Renault Mograine";
	L["Little Jimmy Vishas"] = "Kleiner Jimmy Vishas";
	L["Herod the Bully"] = "Herod der Tyrann";
	L["Nat Pagle"] = "Nat Pagle";
	L["Hal McAllister"] = "Hal McAllister";
	L["Zixil <Aspiring Merchant>"] = "Zixil <Aufstrebender Händler>";
	L["Overwatch Mark 0 <Protector>"] = "Überwacher V.0 <Beschützer>";
	L["Southshore Inn"] = "Süderstade Gasthaus";
	L["Captain Edward Hanes"] = "Kapitän Edward Hanes";
	L["Captain Sanders"] = "Kapitän Sanders";
	L["Commander Mograine"] = "Kommandant Mograine";
	L["Isillien"] = "Isillien";
	L["Abbendis"] = "Abbendis";
	L["Fairbanks"] = "Schönufer";
	L["Taelan"] = "Taelan";
	L["Barkeep Kelly <Bartender>"] = "Barkeeper Kelly <Schankkellner>";
	L["Frances Lin <Barmaid>"] = "Frances Lin <Bardame>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "Küchenchef Jessen <Spezialitätenfleisch & Pampe>";
	L["Stalvan Mistmantle"] = "Stalvan Dunstmantel";
	L["Phin Odelic <The Kirin Tor>"] = "Phin Odelic <Kirin Tor>";
	L["Magistrate Henry Maleb"] = "Magistrat Henry Maleb";
	L["Raleigh the True"] = "Raleigh der Getreue";
	L["Nathanos Marris"] = "Nathanos Marris";
	L["Bilger the Straight-laced"] = "Bilger der Strenge";
	L["Innkeeper Monica"] = "Gastwirtin Monica";
	L["Julie Honeywell"] = "Julie Honigbrunn";
	L["Jay Lemieux"] = "Jay Lemieux";
	L["Young Blanchy"] = "Kleine Graumähne";

	--Gruul's Lair

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "Stufen und Pfad zum Blutkessel";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "Pfad zum Höllenfeuerbollwerk und den zerschmetterten Hallen";
	L["Meeting Stone of Magtheridon's Lair"] = "Versammlungsstein für Magtheridons Kammer";
	L["Meeting Stone of Hellfire Citadel"] = "Versammlungsstein der Höllenfeuerzitadelle";

	--HFC: The Blood Furnace
	L["Gunny"] = "Gunny";
	L["Caza'rez"] = "Caza'rez";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "Vorhutsspäher Chadwick";
	L["Stone Guard Stok'ton"] = "Steingardist Stok'ton";
	L["Reinforced Fel Iron Chest"] = "Verstärkte Teufelseisentruhe";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "Henker der Zerschmetterten Hand";
	L["Private Jacint"] = "Gefreiter Jacint";
	L["Rifleman Brownbeard"] = "Scharfschütze Braunbart";
	L["Captain Alina"] = "Hauptmann Alina";
	L["Scout Orgarr"] = "Späher Orgarr";
	L["Korag Proudmane"] = "Korag Mähnenstolz";
	L["Captain Boneshatter"] = "Hauptmann Knochenbrecher";
	L["Randy Whizzlesprocket"] = "Randy Sauseritzel";
	L["Drisella"] = "Drisella";

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "Erzmagierin Leryda";
	L["Archmage Alturus"] = "Erzmagier Alturus";
	L["Apprentice Darius"] = "Lehrling Darius";
	L["Stairs to Underground Pond"] = "Treppe zum Unterirdischen Teich";
	L["Stairs to Underground Well"] = "Treppe zum Unterirdischen Brunnen";
	L["Charred Bone Fragment"] = "Verkohltes Knochenfragment";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "Baroness Dorothea Mühlenstein";
	L["Lady Catriona Von'Indi"] = "Lady Catriona Von'Indi";
	L["Lady Keira Berrybuck"] = "Lady Keira Beerhas";
	L["Baron Rafe Dreuger"] = "Baron Rafe Dreuger";
	L["Lord Robin Daris"] = "Lord Robin Daris";
	L["Lord Crispin Ference"] = "Lord Crispin Ference";
	L["Red Riding Hood"] = "Rotkäppchen";
	L["Wizard of Oz"] = "Zauberer von Oz";
	L["The Master's Terrace"] = "Die Terrasse des Meisters";
	L["Servant Quarters"] = "Quartier der Diener";
	L["Hastings <The Caretaker>"] = "Hastings <Der Hauswart>";
	L["Berthold <The Doorman>"] = "Berthold <Der Pförtner>";
	L["Calliard <The Nightman>"] = "Calliard <Der Nachtwächter>";
	L["Koren <The Blacksmith>"] = "Koren <Der Schmied>";
	L["Bennett <The Sergeant at Arms>"] = "Bennett <Die Schutzwache>";
	L["Keanna's Log"] = "Keannas Aufzeichnungen";
	L["Ebonlocke <The Noble>"] = "Schwarzhaupt <Der Adlige>";
	L["Sebastian <The Organist>"] = "Sebastian <Der Orgelspieler>";
	L["Barnes <The Stage Manager>"] = "Barnes <Der Inspizient>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "Weg zur Beschädigten Treppe";
	L["Broken Stairs"] = "Beschädigte Treppe";
	L["Ramp to Guardian's Library"] = "Rampe zur Bibliothek der Beschützer";
	L["Mysterious Bookshelf"] = "Verdächtiges Bücherregal";
	L["Ramp up to the Celestial Watch"] = "Rampe nach oben zur Himmelswacht";
	L["Ramp down to the Gamesman's Hall"] = "Rampe nach unten zur Halle der Spieler";
	L["Ramp to Medivh's Chamber"] = "Rampe zu Medivhs Kammer";
	L["Spiral Stairs to Netherspace"] = "Wendeltreppe zum Netherraum";
	L["Wravien <The Mage>"] = "Wravien <Der Magier>";
	L["Gradav <The Warlock>"] = "Gradav <Der Hexenmeister>";
	L["Kamsis <The Conjurer>"] = "Kamsis <Die Beschwörerin>";
	L["Ythyar"] = "Ythyar";
	L["Echo of Medivh"] = "Echo Medivhs";

	--Magisters Terrace
	L["Exarch Larethor"] = "Exarch Larethor";
	L["Fel Crystals"] = "Teufelskristalle";
	L["Apoko"] = "Apoko";
	L["Eramas Brightblaze"] = "Eramas Leuchtfeuer";
	L["Ellrys Duskhallow"] = "Ellrys Dämmerweih";
	L["Fizzle"] = "Zischel";
	L["Garaxxas"] = "Garaxxas";
	L["Sliver <Garaxxas' Pet>"] = "Splitter <Garaxxas Tier>";
	L["Kagani Nightstrike"] = "Kagani Nachtschlag";
	L["Warlord Salaris"] = "Kriegsherr Salaris";
	L["Yazzai"] = "Yazzai";
	L["Zelfan"] = "Zelfan";
	L["Tyrith"] = "Tyrith";
	L["Scrying Orb"] = "Seherkugel";

	--Sunwell Plateau
	L["Madrigosa"] = "Madrigosa";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "Millhaus Manasturm";
	L["Third Fragment Guardian"] = "Wächter des dritten Teils";
	L["Udalo"] = "Udalo";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "Überladene Manazelle";

	--TK: The Eye

--@end-do-not-package@

end