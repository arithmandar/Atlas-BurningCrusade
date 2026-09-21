-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2023 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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
local L = AceLocale:NewLocale("Atlas_BurningCrusade", "esES", false);

if L then
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--BC Acronyms
	L["AC"] = "CA"; --Criptas Auchenai 
	L["Arca"] = "Arca";
	L["Auch"] = "Auch";
	L["BF"] = "HS"; --orno de Sangre
	L["BT"] = "TO"; --Templo Oscuro	
	L["Bota"] = "Inver"; --El Invernáculo
	L["CoT"] = "CdT"; --Cavernas del Tiempo
	L["CoT1"] = "CdT1"; --Laderas de Trabalomas
	L["CoT2"] = "CdT2"; --La Ciénaga Negra
	L["CoT3"] = "CdT3"; --El Monte Hyjal
	L["CR"] = "RCT"; --Reserva Colmillo Torcido
	L["GL"] = "Gruul"; --Guarida de Gruul
	L["HC"] = "CFI"; --Ciudadela del Fuego Infernal
	L["Kara"] = "Kara";
	L["MaT"] = "BM"; --Bancal del Magister
	L["Mag"] = "Mag"; --Guarida de Magtheridon
	L["Mech"] = "Mech"; --El Mechanar
	L["MT"] = "TM"; --Tumbas de Maná
	L["Ramp"] = "Murallas"; --Murallas del Fuego Infernal
	L["SSC"] = "CSS"; --Caverna Santuario Serpiente
	L["Seth"] = "Seth"; --Salas Sethekk
	L["SH"] = "SA"; --Las Salas Arrasadas
	L["SL"] = "LS"; --Laberinto de las sombras
	L["SP"] = "Recinto"; --Recinto de los Esclavos
	L["SuP"] = "MPS"; --Meseta del pozo del Sol
	L["SV"] = "CV"; --Cámara de Vapor
	L["TK"] = "CT"; --El Castillo de la Tempestad
	L["UB"] = "Soti"; --La Sotiénaga

--*******************
-- Burning Crusade Instances
--*******************

	--Auchindoun (Entrance)
	L["Clarissa"] = "Clarissa";
	L["Greatfather Aldrimus"] = "Abuelo Aldrimus";
	L["Ha'lei"] = "Ha'Lei";
	L["Horvon the Armorer <Armorsmith>"] = "Horvon el Armero <Forjador de armaduras>";
	L["Ramdor the Mad"] = "Ramdor el Loco";
	L["Nexus-Prince Haramad"] = "Príncipe-nexo Haramad";
	L["\"Slim\" <Shady Dealer>"] = "\"Flaco\" <Vendedor sospechoso>";
	L["\"Captain\" Kaftiz"] = "\"Capitán\" Kaftiz";
	L["Dealer Tariq <Shady Dealer>"] = "Tratante Tariq <Vendedor sospechoso>";
	L["Provisioner Tsaalt"] = "Proveedor Tsaalt";

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "Espíritu draenei";
	L["Avatar of the Martyred"] = "Avatar de los Martirizados";
	L["D'ore"] = "D'ore";
	L["Tormented Soulpriest"] = "Sacerdote de almas atormentado";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "Artificiero Morphalius";
	L["Mamdy the \"Ologist\""] = "Mamdy el \"Todólogo\"";
	L["Shadow Lord Xiraxis"] = "Señor de las Sombras Xiraxis";
	L["Ambassador Pax'ivi"] = "Embajador Pax'ivi";
	L["Cryo-Engineer Sha'heen"] = "Crioingeniero Sha'heen";
	L["Ethereal Transporter Control Panel"] = "Panel de control del transportador etéreo";

	--Auch: Sethekk Halls
	L["Isfar"] = "Isfar";
	L["Dealer Vijaad"] = "Tratante Vijaad";
	L["Lakka"] = "Lakka";
	L["The Saga of Terokk"] = "Esbirro de Terokk";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "Comandante de campo Mahfuun";
	L["Spy Grik'tha"] = "Espía Grik'tha";
	L["The Codex of Blood"] = "El Códice de Sangre";
	L["First Fragment Guardian"] = "Guardián del Primer Fragmento";
	L["Spy To'gun"] = "Espía To'gun";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "Hacia Relicario de Almas";
	L["Towards Teron Gorefiend"] = "Hacia Teron Sanguino";
	L["Towards Illidan Stormrage"] = "Hacia Illidan Tempestira";
	L["Spirit of Olum"] = "Espíritu de Olum";
	L["Spirit of Udalo"] = "Espíritu de Udalo";
	L["Aluyen <Reagents>"] = "Aluyen <Vendedor de Componentes>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "Okuno <Provisiones Juramorte Lengua de ceniza>";
	L["Seer Kanai"] = "Profeta Kanai";

	--Black Temple (Basement)

	--Black Temple (Top)

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "Mortog Testavapor";

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "Profeta Olum";

	--CFR: The Slave Pens
	L["Nahuud"] = "Nahuud";
	L["Watcher Jhang"] = "Vigía Jhang";
	L["Weeder Greenthumb"] = "Desherbador Pulgaverde";
	L["Skar'this the Heretic"] = "Skar'this el Herético";
	L["Naturalist Bite"] = "Naturalista Mordisco";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "Clamavientos Zarpa";
	L["Main Chambers Access Panel"] = "Panel de acceso de la cámara principal";
	L["Second Fragment Guardian"] = "Guardián del Segundo Fragmento";

	--CFR: The Underbog
	L["T'shu"] = "T'shu";
	L["The Underspore"] = "La Sotoespora";
	L["Earthbinder Rayge"] = "Lingaterra Rayge";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "Indormi <Vigilante de conocimiento de gemas antiguas>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "Tydormu <Vigilante de artefactos perdidos>";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "Sa'at <Vigilantes del Tiempo>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "Lady Jaina Valiente";
	L["Thrall <Warchief>"] = "Thrall <Jefe de Guerra>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "Tyrande Susurravientos <Suma sacerdotisa de Elune>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "Erozion";
	L["Brazen"] = "Brazen";
	L["Landing Spot"] = "Punto de Aterrizaje";
	L["Thrall"] = "Thrall";
	L["Taretha"] = "Taretha";
	L["Don Carlos"] = "Don Carlos";
	L["Guerrero"] = "Guerrero";
	L["Thomas Yance <Travelling Salesman>"] = "Thomas Yance <Vendedor ambulante>";
	L["Aged Dalaran Wizard"] = "Zhaorí Dalaran envejecido";
	L["Jonathan Revah"] = "Jonathan Revah";
	L["Jerry Carter"] = "Jerry Carter";
	L["Helcular"] = "Helcular";
	L["Farmer Kent"] = "Granjero Kent";
	L["Sally Whitemane"] = "Sally Melenablanca";
	L["Renault Mograine"] = "Renault Mograine";
	L["Little Jimmy Vishas"] = "Pequeño Jimmy Vishas";
	L["Herod the Bully"] = "Herod el Matón";
	L["Nat Pagle"] = "Nat Pagle";
	L["Hal McAllister"] = "Hal McAllister";
	L["Zixil <Aspiring Merchant>"] = "Zixil <Aspirante a mercader>";
	L["Overwatch Mark 0 <Protector>"] = "Robovigilante Mark 0 <Protector>";
	L["Southshore Inn"] = "Posada de Costasur";
	L["Captain Edward Hanes"] = "Capitán Edward Hanes";
	L["Captain Sanders"] = "Capitán Sanders";
	L["Commander Mograine"] = "Comandante Mograine";
	L["Isillien"] = "Isillien";
	L["Abbendis"] = "Abbendis";
	L["Fairbanks"] = "Ribalimpia";
	L["Taelan"] = "Taelan";
	L["Barkeep Kelly <Bartender>"] = "Posadero Kelly <Camarero>";
	L["Frances Lin <Barmaid>"] = "Frances Lin <Camarera>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "Jefe Jessen <Especialidad en carne y bazofia>";
	L["Stalvan Mistmantle"] = "Stalvan Mantoniebla";
	L["Phin Odelic <The Kirin Tor>"] = "Phin Odelic <Los Kirin Tor>";
	L["Magistrate Henry Maleb"] = "Magistrado Henry Maleb";
	L["Raleigh the True"] = "Raleigh el Auténtico";
	L["Nathanos Marris"] = "Nathanos Marris";
	L["Bilger the Straight-laced"] = "Maestro cervecero Bilger";
	L["Innkeeper Monica"] = "Tabernera Monica";
	L["Julie Honeywell"] = "Julie Pozo de Miel";
	L["Jay Lemieux"] = "Jay Lemieux";
	L["Young Blanchy"] = "Joven Blanchy";

	--Gruul's Lair

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "Escaleras y camino hacia Hornos de Sangre";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "Camino a Murallas y Salas Arrasadas";
	L["Meeting Stone of Magtheridon's Lair"] = "Piedra de encuentro de la Guarida de Magtheridon";
	L["Meeting Stone of Hellfire Citadel"] = "Piedra de encuentro de la Ciudadela de Fuego Infernal";

	--HFC: The Blood Furnace
	L["Gunny"] = "Pistolete";
	L["Caza'rez"] = "Caza'rez";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "Explorador táctico Chadwick";
	L["Stone Guard Stok'ton"] = "Guardia de piedra Stok'ton";
	L["Reinforced Fel Iron Chest"] = "Cofre de hierro vil reforzado";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "Ejecutor Mano Destrozada";
	L["Private Jacint"] = "Soldado Jacint";
	L["Rifleman Brownbeard"] = "Rifleman Brownbeard";
	L["Captain Alina"] = "Capitán Alina";
	L["Scout Orgarr"] = "Explorador Orgarr";
	L["Korag Proudmane"] = "Korag Proudmane";
	L["Captain Boneshatter"] = "Capitán Huesodestrozado";
	L["Randy Whizzlesprocket"] = "Randy Whizzlesprocket";
	L["Drisella"] = "Drisella";

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "Archimaga Leryda";
	L["Archmage Alturus"] = "Archimago Alturus";
	L["Apprentice Darius"] = "Aprendiz Darius";
	L["Stairs to Underground Pond"] = "Escaleras a Underground Pond";
	L["Stairs to Underground Well"] = "Escaleras a Underground Well";
	L["Charred Bone Fragment"] = "Trozo de hueso carbonizado";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "Baronesa Dorothea Tallolino";
	L["Lady Catriona Von'Indi"] = "Lady Catriona Von'Indi";
	L["Lady Keira Berrybuck"] = "Lady Keira Bayadol";
	L["Baron Rafe Dreuger"] = "Barón Rafe Dreuger";
	L["Lord Robin Daris"] = "Lord Robin Daris";
	L["Lord Crispin Ference"] = "Lord Crispin Ference";
	L["Red Riding Hood"] = "Caperucita Roja";
	L["Wizard of Oz"] = "El mago de Oz";
	L["The Master's Terrace"] = "El Bancal del Maestro";
	L["Servant Quarters"] = "Aposentos de los sirvientes";
	L["Hastings <The Caretaker>"] = "Hastings <El Custodio>";
	L["Berthold <The Doorman>"] = "Berthold <El Portero>";
	L["Calliard <The Nightman>"] = "Calliard <El Hombre de la noche>";
	L["Koren <The Blacksmith>"] = "Koren <El Herrero>";
	L["Bennett <The Sergeant at Arms>"] = "Bennett <El Sargento de Armas>";
	L["Keanna's Log"] = "Apuntes de Keanna";
	L["Ebonlocke <The Noble>"] = "Cerranegro <El Noble>";
	L["Sebastian <The Organist>"] = "Sebastian <El Organista>";
	L["Barnes <The Stage Manager>"] = "Barnes <El Director de escena>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "Camino a las Escaleras Rotas";
	L["Broken Stairs"] = "Escaleras rotas";
	L["Ramp to Guardian's Library"] = "Rampa a la Biblioteca del Guardián";
	L["Mysterious Bookshelf"] = "Publicaciones sospechosas";
	L["Ramp up to the Celestial Watch"] = "Subida a la Vista Celestial";
	L["Ramp down to the Gamesman's Hall"] = "Bajada a la Sala de Juegos";
	L["Ramp to Medivh's Chamber"] = "Rampa a la Cámara de Medivh";
	L["Spiral Stairs to Netherspace"] = "Escaleras de caracol a Rencor Abisal";
	L["Wravien <The Mage>"] = "Wravien <El Mago>";
	L["Gradav <The Warlock>"] = "Gradav <El Brujo>";
	L["Kamsis <The Conjurer>"] = "Kamsis <La Conjuradora>";
	L["Ythyar"] = "Ythyar";
	L["Echo of Medivh"] = "Eco de Medivh";

	--Magisters Terrace
	L["Exarch Larethor"] = "Exarca Larethor";
	L["Fel Crystals"] = "Cristales Viles";
	L["Apoko"] = "Apoko";
	L["Eramas Brightblaze"] = "Eramas Llamarada Brillante";
	L["Ellrys Duskhallow"] = "Ellrys Anochecher Santificado";
	L["Fizzle"] = "Fizel";
	L["Garaxxas"] = "Garaxxas";
	L["Sliver <Garaxxas' Pet>"] = "Tajada <Mascota de Garaxxas>";
	L["Kagani Nightstrike"] = "Kajani Golpe de la Noche";
	L["Warlord Salaris"] = "Señor de la Guerra Salaris";
	L["Yazzai"] = "Yazzai";
	L["Zelfan"] = "Zelfan";
	L["Tyrith"] = "Tyrith";
	L["Scrying Orb"] = "Orbe de visión";

	--Sunwell Plateau
	L["Madrigosa"] = "Madrigosa";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "Molino Tormenta de maná";
	L["Third Fragment Guardian"] = "Guardián del Tercer Fragmento";
	L["Udalo"] = "Udalo";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "Célula de maná sobrecargada";

	--TK: The Eye

end