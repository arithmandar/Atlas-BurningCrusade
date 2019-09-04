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
local L = AceLocale:NewLocale("Atlas_BurningCrusade", "frFR", false);

if L then
--@localization(locale="frFR", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--BC Acronyms
	L["AC"] = "AC"; -- Auchenai Crypts, Cryptes Auchenaï
	L["Arca"] = "Arca"; -- The Arcatraz, L'Arcatraz
	L["Auch"] = "Auch"; -- Auchindoun
	L["BF"] = "BF"; -- The Blood Furnace, La Fournaise du sang
	L["BT"] = "BT"; -- Black Temple, Temple noir
	L["Bota"] = "Bota"; -- The Botanica, La Botanica
	L["CoT"] = "CoT/GT"; -- Caverns of Time, Grottes du Temps
	L["CoT1"] = "CoT1/G1"; -- Old Hillsbrad Foothills, Contreforts de Hautebrande d'antan
	L["CoT2"] = "CoT2/GT2"; -- The Black Morass, Le Noir Marécage
	L["CoT3"] = "CoT3/GT3"; -- Hyjal Summit, Sommet d'Hyjal
	L["CR"] = "CR"; -- Coilfang Reservoir, Réservoir de Glissecroc
	L["GL"] = "GL"; -- Gruul's Lair, Repaire de Gruul
	L["HC"] = "HC"; -- Hellfire Citadel, Citadelle des Flammes infernales
	L["Kara"] = "Kara"; -- Karazhan
	L["MaT"] = "MT"; -- Magisters' Terrace, Terrasse des Magistères
	L["Mag"] = "Mag"; -- Magtheridon's Lair, Le repaire de Magtheridon
	L["Mech"] = "Mech"; -- The Mechanar, Le Méchanar
	L["MT"] = "MT"; -- Mana-Tombs, Tombes-mana
	L["Ramp"] = "Ramp"; -- Hellfire Ramparts, Remparts des Flammes infernales
	L["SSC"] = "SSC"; -- Serpentshrine Cavern, Caverne du sanctuaire du Serpent
	L["Seth"] = "Seth"; -- Sethekk Halls, Les salles des Sethekk
	L["SH"] = "SH"; -- The Shattered Halls, Les Salles brisées
	L["SL"] = "SL/Laby"; -- Shadow Labyrinth, Labyrinthe des ombres
	L["SP"] = "SP"; -- The Slave Pens, Les enclos aux esclaves
	L["SuP"] = "SP"; -- Sunwell Plateau, Le temple d'Atal'Hakkar
	L["SV"] = "SV"; -- The Steamvault, Le Caveau de la vapeur
	L["TK"] = "TK"; -- Tempest Keep, Donjon de la Tempête
	L["UB"] = "UB"; -- The Underbog, La Basse-tourbière

--*******************
-- Burning Crusade Instances
--*******************

	--Auchindoun (Entrance)
	L["Clarissa"] = "Clarissa";
	L["Greatfather Aldrimus"] = "Grandpère Aldrimus";
	L["Ha'lei"] = "Ha'lei";
	L["Horvon the Armorer <Armorsmith>"] = "Horvon l'Armurier <Fabricant d'armures>";
	L["Ramdor the Mad"] = "Ramdor le Fol";
	L["Nexus-Prince Haramad"] = "Prince-nexus Haramad";
	L["\"Slim\" <Shady Dealer>"] = "\"Mince\" <Marchand douteux>";
	L["\"Captain\" Kaftiz"] = "\"Captain\" Kaftiz";
	L["Dealer Tariq <Shady Dealer>"] = "Camelot Tariq <Marchand douteux>";
	L["Provisioner Tsaalt"] = "Approvisionneur Tsaalt";

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "Esprit Draenei"; -- Translation needed
	L["Avatar of the Martyred"] = "Avatar des martyrs";
	L["D'ore"] = "D'ore";
	L["Tormented Soulpriest"] = "Prêtre de l'âme tourmenté"; -- Translation needed

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "Artificier Morphalius";
	L["Mamdy the \"Ologist\""] = "Mamdy \"l'Ologiste\"";
	L["Shadow Lord Xiraxis"] = "Seigneur des ténèbres Xiraxis";
	L["Ambassador Pax'ivi"] = "Ambassadeur Pax'ivi";
	L["Cryo-Engineer Sha'heen"] = "Cryo-Ingénieur Sha'heen";
	L["Ethereal Transporter Control Panel"] = "Panneau de contrôle du transporteur étherien";

	--Auch: Sethekk Halls
	L["Isfar"] = "Isfar";
	L["Dealer Vijaad"] = "Camelot Vijaad";
	L["Lakka"] = "Lakka";
	L["The Saga of Terokk"] = "La Saga de Terokk";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "Commandant Mahfuun";
	L["Spy Grik'tha"] = "Espionne Grik'tha";
	L["The Codex of Blood"] = "Codex de sang";
	L["First Fragment Guardian"] = "Gardien du premier fragment";
	L["Spy To'gun"] = "Espion To'gun";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "Vers Reliquaire des âmes";
	L["Towards Teron Gorefiend"] = "Vers Teron Fielsang";
	L["Towards Illidan Stormrage"] = "Vers Illidan Hurlorage";
	L["Spirit of Olum"] = "Esprit d'Olum";
	L["Spirit of Udalo"] = "Esprit d'Udalo";
	L["Aluyen <Reagents>"] = "Aluyen <Composants>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "Okuno <Intendant des ligemorts cendrelangue>";
	L["Seer Kanai"] = "Voyant Kanai";

	--Black Temple (Basement)

	--Black Temple (Top)

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "Mortog Têtavapeur";

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "Voyant Olum";

	--CFR: The Slave Pens
	L["Nahuud"] = "Nahuud";
	L["Watcher Jhang"] = "Guetteuse Jhang";
	L["Weeder Greenthumb"] = "Weeder la Main-verte";
	L["Skar'this the Heretic"] = "Skar'this l'Hérétique";
	L["Naturalist Bite"] = "Naturaliste Morsure";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "Implorateur céleste Griffe";
	L["Main Chambers Access Panel"] = "Panneau d'accès de la salle principale";
	L["Second Fragment Guardian"] = "Gardien du second fragment";

	--CFR: The Underbog
	L["T'shu"] = "T'shu";
	L["The Underspore"] = "Palme de sporielle";
	L["Earthbinder Rayge"] = "Lieur de terre Rayge";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "Indormi <Gardienne du savoir ancien des gemmes>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "Tydormu <Gardien des artéfacts sha'tari>";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "Sa'at <Les Gardiens du temps>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "Dame Jaina Portvaillant";
	L["Thrall <Warchief>"] = "Thrall <Chef de guerre>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "Tyrande Murmevent <Grande prêtresse d'Elune>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "Erozion";
	L["Brazen"] = "Airain";
	L["Landing Spot"] = "Zone d'atterrissage";
	L["Thrall"] = "Thrall";
	L["Taretha"] = "Taretha";
	L["Don Carlos"] = "Don Carlos";
	L["Guerrero"] = "Guerrero";
	L["Thomas Yance <Travelling Salesman>"] = "Thomas Yance <Marchand itinérant>";
	L["Aged Dalaran Wizard"] = "Sorcier de Dalaran âgé";
	L["Jonathan Revah"] = "Jonathan Revah";
	L["Jerry Carter"] = "Jerry Carter";
	L["Helcular"] = "Helcular";
	L["Farmer Kent"] = "Kent le fermier";
	L["Sally Whitemane"] = "Sally Blanchetête";
	L["Renault Mograine"] = "Renault Mograine";
	L["Little Jimmy Vishas"] = "Petit Jimmy Vishas";
	L["Herod the Bully"] = "Hérode le Malmeneur";
	L["Nat Pagle"] = "Nat Pagle";
	L["Hal McAllister"] = "Hal McAllister";
	L["Zixil <Aspiring Merchant>"] = "Zixil <Marchand en herbe>";
	L["Overwatch Mark 0 <Protector>"] = "Vigilant modèle 0 <Protecteur>";
	L["Southshore Inn"] = "Auberge d'Austrivage";
	L["Captain Edward Hanes"] = "Capitaine Edward Hanes";
	L["Captain Sanders"] = "Capitaine Sanders";
	L["Commander Mograine"] = "Commandant Mograine";
	L["Isillien"] = "Isillien";
	L["Abbendis"] = "Abbendis";
	L["Fairbanks"] = "Fairbanks";
	L["Taelan"] = "Taelan";
	L["Barkeep Kelly <Bartender>"] = "Kelly le serveur <Tavernier>";
	L["Frances Lin <Barmaid>"] = "Frances Lin <Serveuse>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "Chef Jessen <Spécialités de viandes & pâtées>";
	L["Stalvan Mistmantle"] = "Stalvan Mantebrume";
	L["Phin Odelic <The Kirin Tor>"] = "Phin Odelic <Le Kirin Tor>";
	L["Magistrate Henry Maleb"] = "Magistrat Henry Maleb";
	L["Raleigh the True"] = "Raleigh le Vrai";
	L["Nathanos Marris"] = "Nathanos Marris";
	L["Bilger the Straight-laced"] = "Sentine le Guindé";
	L["Innkeeper Monica"] = "Aubergiste Monica";
	L["Julie Honeywell"] = "Julie Miellepuits";
	L["Jay Lemieux"] = "Jay Lemieux";
	L["Young Blanchy"] = "Jeune Blanchy";

	--Gruul's Lair

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "Marches et chemin vers la Fournaise du sang";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "Chemin vers les Remparts des Flammes infernales et les salles Brisées";
	L["Meeting Stone of Magtheridon's Lair"] = "Pierre de rencontre du repaire de Magtheridon";
	L["Meeting Stone of Hellfire Citadel"] = "Pierre de rencontre de la Citadelle des Flammes Infernales";

	--HFC: The Blood Furnace
	L["Gunny"] = "Flingot";
	L["Caza'rez"] = "Caza'rez";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "Eclaireur avancé Chadwick";
	L["Stone Guard Stok'ton"] = "Garde de pierre Stok'ton";
	L["Reinforced Fel Iron Chest"] = "Coffre en gangrefer renforcé";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "Bourreau de la Main brisée";
	L["Private Jacint"] = "Soldat Jacint";
	L["Rifleman Brownbeard"] = "Fusilier Brownbeard";
	L["Captain Alina"] = "Captaine Alina";
	L["Scout Orgarr"] = "Eclaireur Orgarr";
	L["Korag Proudmane"] = "Korag Proudmane";
	L["Captain Boneshatter"] = "Capitaine Fracasse-os";
	L["Randy Whizzlesprocket"] = "Randy Vizirouage";
	L["Drisella"] = "Drisella";

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "Archimage Leryda";
	L["Archmage Alturus"] = "Archimage Alturus";
	L["Apprentice Darius"] = "Apprenti Darius";
	L["Stairs to Underground Pond"] = "Escalier vers le bassin souterrain";
	L["Stairs to Underground Well"] = "Escalier vers le puits souterrain";
	L["Charred Bone Fragment"] = "Fragment d'os carbonisé";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "Baronne Dorothea Millstipe";
	L["Lady Catriona Von'Indi"] = "Dame Catriona Von'Indi";
	L["Lady Keira Berrybuck"] = "Dame Keira Berrybuck";
	L["Baron Rafe Dreuger"] = "Baron Rafe Dreuger";
	L["Lord Robin Daris"] = "Seigneur Robin Daris";
	L["Lord Crispin Ference"] = "Seigneur Crispin Ference";
	L["Red Riding Hood"] = "Petit Chaperon Rouge";
	L["Wizard of Oz"] = "Magicien d'Oz";
	L["The Master's Terrace"] = "La terrasse du Maître";
	L["Servant Quarters"] = "Quartier des serviteurs";
	L["Hastings <The Caretaker>"] = "Hastings <Le gardien>";
	L["Berthold <The Doorman>"] = "Berthold <Le concierge>";
	L["Calliard <The Nightman>"] = "Calliard <Le veilleur de nuit>";
	L["Koren <The Blacksmith>"] = "Koren <Le forgeron>";
	L["Bennett <The Sergeant at Arms>"] = "Bennett <L'huissier>";
	L["Keanna's Log"] = "Journal de Keanna";
	L["Ebonlocke <The Noble>"] = "Bouclenoire <Les nobles>";
	L["Sebastian <The Organist>"] = "Sebastian <L'Organiste>";
	L["Barnes <The Stage Manager>"] = "Barnes <Le Régisseur>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "Passage vers l'Escalier brisé";
	L["Broken Stairs"] = "L'Escalier brisé";
	L["Ramp to Guardian's Library"] = "Rampe vers la Bibliothèque du Gardien";
	L["Mysterious Bookshelf"] = "Bibliotheque suspecte";
	L["Ramp up to the Celestial Watch"] = "Rampe montant vers Le Guet céleste";
	L["Ramp down to the Gamesman's Hall"] = "Rampe déscendant vers le Hall du Flambeur";
	L["Ramp to Medivh's Chamber"] = "Rampe vers la chambre de Medivh";
	L["Spiral Stairs to Netherspace"] = "Escalier en spiral vers le Néantespace";
	L["Wravien <The Mage>"] = "Wravien <Le Mage>";
	L["Gradav <The Warlock>"] = "Gradav <Le Démoniste>";
	L["Kamsis <The Conjurer>"] = "Kamsis <L'Invocateur>";
	L["Ythyar"] = "Ythyar";
	L["Echo of Medivh"] = "Echo de Medivh";

	--Magisters Terrace
	L["Exarch Larethor"] = "Exarque Larethor";
	L["Fel Crystals"] = "Gangrecristaux";
	L["Apoko"] = "Apoko";
	L["Eramas Brightblaze"] = "Eramas Brillebrasier";
	L["Ellrys Duskhallow"] = "Ellrys Sanctebrune";
	L["Fizzle"] = "Féplouf";
	L["Garaxxas"] = "Garaxxas";
	L["Sliver <Garaxxas' Pet>"] = "Esquille <Familier de Garaxxas>";
	L["Kagani Nightstrike"] = "Kagani Heurtenuit";
	L["Warlord Salaris"] = "Seigneur de guerre Salaris";
	L["Yazzai"] = "Yazzai";
	L["Zelfan"] = "Zelfan";
	L["Tyrith"] = "Tyrith";
	L["Scrying Orb"] = "Orbe de divination";

	--Sunwell Plateau
	L["Madrigosa"] = "Madrigosa";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "Milhouse Tempête-de-mana";
	L["Third Fragment Guardian"] = "Gardien du troisième fragment";
	L["Udalo"] = "Udalo";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "Cellule de mana surchargée";

	--TK: The Eye

--@end-do-not-package@
end