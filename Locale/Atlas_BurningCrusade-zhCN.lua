-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2018 - Arith Hsu, Atlas Team <atlas.addon at gmail dot com>

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
-- Atlas Localization Data (Simplified Chinese)
-- Initial translation by DiabloHu
-- Maintained by DiabloHu, arith, Ananhaid

local AceLocale = LibStub:GetLibrary("AceLocale-3.0");
local L = AceLocale:NewLocale("Atlas_BurningCrusade", "zhCN", false);

if L then
--@localization(locale="zhCN", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--BC Acronyms
	L["AC"] = "AC"; -- Auchenai Crypts
	L["Arca"] = "Arca"; -- The Arcatraz
	L["Auch"] = "Auch"; -- Auchindoun
	L["BF"] = "BF"; -- The Blood Furnace
	L["BT"] = "BT"; -- Black Temple
	L["Bota"] = "Bota"; -- The Botanica
	L["CoT"] = "CoT"; -- Caverns of Time
	L["CoT1"] = "CoT1"; -- Old Hillsbrad Foothills
	L["CoT2"] = "CoT2"; -- The Black Morass
	L["CoT3"] = "CoT3"; -- Hyjal Summit
	L["CR"] = "CR"; -- Coilfang Reservoir
	L["GL"] = "GL"; -- Gruul's Lair
	L["HC"] = "HC"; -- Hellfire Citadel
	L["Kara"] = "Kara"; -- Karazhan
	L["MaT"] = "MT"; -- Magisters' Terrace
	L["Mag"] = "Mag"; -- Magtheridon's Lair
	L["Mech"] = "Mech"; -- The Mechanar
	L["MT"] = "MT"; -- Mana-Tombs
	L["Ramp"] = "Ramp"; -- Hellfire Ramparts
	L["SSC"] = "SSC"; -- Serpentshrine Cavern
	L["Seth"] = "Seth"; -- Sethekk Halls
	L["SH"] = "SH"; -- The Shattered Halls
	L["SL"] = "SL"; -- Shadow Labyrinth
	L["SP"] = "SP"; -- The Slave Pens
	L["SuP"] = "SP"; -- Sunwell Plateau
	L["SV"] = "SV"; -- The Steamvault
	L["TK"] = "TK"; -- Tempest Keep
	L["UB"] = "UB"; -- The Underbog

--*******************
-- Burning Crusade Instances
--*******************

	--Auchindoun (Entrance)
	L["Clarissa"] = "克拉里萨";
	L["Greatfather Aldrimus"] = "奥德里姆斯宗父";
	L["Ha'lei"] = "哈雷";
	L["Horvon the Armorer <Armorsmith>"] = "铸甲匠霍尔冯 <护甲锻造师>";
	L["Ramdor the Mad"] = "疯狂的拉姆杜尔";
	L["Nexus-Prince Haramad"] = "节点亲王哈拉迈德";
	L["\"Slim\" <Shady Dealer>"] = "“瘦子” <毒药商>";
	L["\"Captain\" Kaftiz"] = "“上尉”卡弗提兹";
	L["Dealer Tariq <Shady Dealer>"] = "商人塔利基 <毒药商>";
	L["Provisioner Tsaalt"] = "补给官塔萨尔特";

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "德莱尼灵魂";
	L["Avatar of the Martyred"] = "殉难者的化身";
	L["D'ore"] = "德欧里";
	L["Tormented Soulpriest"] = "受折磨的灵魂牧师";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "工匠莫法鲁斯";
	L["Mamdy the \"Ologist\""] = "“杂学家”玛姆迪";
	L["Shadow Lord Xiraxis"] = "暗影领主希拉卡希斯";
	L["Ambassador Pax'ivi"] = "帕克希维大使";
	L["Cryo-Engineer Sha'heen"] = "低温工程师沙赫恩";
	L["Ethereal Transporter Control Panel"] = "虚灵传送器控制台";

	--Auch: Sethekk Halls
	L["Isfar"] = "伊斯法尔";
	L["Dealer Vijaad"] = "商人维嘉德";
	L["Lakka"] = "拉卡";
	L["The Saga of Terokk"] = "泰罗克的传说";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "战地指挥官玛弗恩";
	L["Spy Grik'tha"] = "间谍格利克萨";
	L["The Codex of Blood"] = "鲜血法典";
	L["First Fragment Guardian"] = "第一块碎片的守护者";
	L["Spy To'gun"] = "间谍托古恩";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "通往灵魂之匣";
	L["Towards Teron Gorefiend"] = "通往塔隆·血魔";
	L["Towards Illidan Stormrage"] = "通往伊利丹·怒风";
	L["Spirit of Olum"] = "奥鲁姆之魂";
	L["Spirit of Udalo"] = "乌达鲁之魂";
	L["Aluyen <Reagents>"] = "奥鲁尤 <材料商>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "沃库诺 <灰舌死誓者军需官>";
	L["Seer Kanai"] = "先知坎奈";

	--Black Temple (Basement)

	--Black Temple (Top)

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "莫尔托格";

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "先知奥鲁姆";

	--CFR: The Slave Pens
	L["Nahuud"] = "纳霍德";
	L["Watcher Jhang"] = "观察者杰哈恩";
	L["Weeder Greenthumb"] = "除草者格林萨姆";
	L["Skar'this the Heretic"] = "异教徒斯卡希斯";
	L["Naturalist Bite"] = "博学者拜特";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "唤风者克劳恩";
	L["Main Chambers Access Panel"] = "主厅控制面板";
	L["Second Fragment Guardian"] = "第二块碎片的守护者";

	--CFR: The Underbog
	L["T'shu"] = "塔苏";
	L["The Underspore"] = "幽暗孢子";
	L["Earthbinder Rayge"] = "缚地者雷葛";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "因多米 <上古宝石保管者>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "泰多姆 <失落神器的保管者>";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "萨艾特 <时光守护者>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "吉安娜·普罗德摩尔";
	L["Thrall <Warchief>"] = "萨尔 <酋长>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "泰兰德·语风 <艾露恩的高阶女祭司>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "伊洛希恩";
	L["Brazen"] = "布拉森";
	L["Landing Spot"] = "着陆点";
	L["Thrall"] = "萨尔";
	L["Taretha"] = "塔蕾莎";
	L["Don Carlos"] = "卡洛斯";
	L["Guerrero"] = "古雷罗";
	L["Thomas Yance <Travelling Salesman>"] = "托马斯·杨斯 <旅行商人>";
	L["Aged Dalaran Wizard"] = "老迈的达拉然巫师";
	L["Jonathan Revah"] = "乔纳森·雷瓦";
	L["Jerry Carter"] = "杰瑞·卡特尔";
	L["Helcular"] = "赫尔库拉";
	L["Farmer Kent"] = "农夫肯特";
	L["Sally Whitemane"] = "萨莉·怀特迈恩";
	L["Renault Mograine"] = "雷诺·莫格莱尼";
	L["Little Jimmy Vishas"] = "吉米·维沙斯";
	L["Herod the Bully"] = "赫洛德";
	L["Nat Pagle"] = "纳特·帕格";
	L["Hal McAllister"] = "哈尔·马克奥里斯特";
	L["Zixil <Aspiring Merchant>"] = "吉克希尔 <有抱负的商人>";
	L["Overwatch Mark 0 <Protector>"] = "守候者零型 <保护者>";
	L["Southshore Inn"] = "南海镇旅馆";
	L["Captain Edward Hanes"] = "爱德华·汉斯";
	L["Captain Sanders"] = "杉德尔船长";
	L["Commander Mograine"] = "指挥官莫格莱尼";
	L["Isillien"] = "伊森利恩";
	L["Abbendis"] = "阿比迪斯";
	L["Fairbanks"] = "法尔班克斯";
	L["Taelan"] = "泰兰";
	L["Barkeep Kelly <Bartender>"] = "酒吧招待凯利 <调酒师>";
	L["Frances Lin <Barmaid>"] = "弗兰斯·林 <招待员>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "厨师杰森 <美食大师>";
	L["Stalvan Mistmantle"] = "斯塔文·密斯特曼托";
	L["Phin Odelic <The Kirin Tor>"] = "费恩·奥德利克 <肯瑞托>";
	L["Magistrate Henry Maleb"] = "赫尼·马雷布镇长";
	L["Raleigh the True"] = "虔诚的莱雷恩";
	L["Nathanos Marris"] = "纳萨诺斯·玛瑞斯";
	L["Bilger the Straight-laced"] = "古板的比格尔";
	L["Innkeeper Monica"] = "旅店老板莫妮卡";
	L["Julie Honeywell"] = "朱丽·哈尼维尔";
	L["Jay Lemieux"] = "贾森·雷缪克斯";
	L["Young Blanchy"] = "小马布兰契";

	--Gruul's Lair

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "通往鲜血熔炉的阶梯与通道";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "通往地狱火城墙与破碎大厅的通道";
	L["Meeting Stone of Magtheridon's Lair"] = "集合石 - 玛瑟里顿的巢穴";
	L["Meeting Stone of Hellfire Citadel"] = "集合石 - 地狱火堡垒";

	--HFC: The Blood Furnace
	L["Gunny"] = "冈尼";
	L["Caza'rez"] = "卡萨雷兹";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "高级斥候卡德维克";
	L["Stone Guard Stok'ton"] = "石头守卫斯托克顿";
	L["Reinforced Fel Iron Chest"] = "强化魔铁箱";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "碎手斩杀者";
	L["Private Jacint"] = "列兵亚森特";
	L["Rifleman Brownbeard"] = "火枪手布隆恩·棕须";
	L["Captain Alina"] = "奥琳娜上尉";
	L["Scout Orgarr"] = "斥候奥贾尔";
	L["Korag Proudmane"] = "克拉格·傲鬃";
	L["Captain Boneshatter"] = "沙塔·碎骨上尉";
	L["Randy Whizzlesprocket"] = "兰迪·维兹普罗克";
	L["Drisella"] = "德雷希拉";

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "大法师蕾尔达";
	L["Archmage Alturus"] = "大法师奥图鲁斯";
	L["Apprentice Darius"] = "学徒达里乌斯";
	L["Stairs to Underground Pond"] = "通往地下水池的楼梯";
	L["Stairs to Underground Well"] = "通往地下水井的楼梯";
	L["Charred Bone Fragment"] = "焦骨碎块";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "杜萝希·米尔斯提女伯爵";
	L["Lady Catriona Von'Indi"] = "卡翠欧娜·冯因迪女伯爵";
	L["Lady Keira Berrybuck"] = "吉拉·拜瑞巴克女伯爵";
	L["Baron Rafe Dreuger"] = "拉弗·杜格尔男爵";
	L["Lord Robin Daris"] = "罗宾·达瑞斯伯爵";
	L["Lord Crispin Ference"] = "克里斯宾·费伦斯伯爵";
	L["Red Riding Hood"] = "小红帽";
	L["Wizard of Oz"] = "绿野仙踪";
	L["The Master's Terrace"] = "主宰的露台";
	L["Servant Quarters"] = "仆人区";
	L["Hastings <The Caretaker>"] = "哈斯汀斯 <看管者>";
	L["Berthold <The Doorman>"] = "伯特霍德 <门卫>";
	L["Calliard <The Nightman>"] = "卡利亚德 <清洁工>";
	L["Koren <The Blacksmith>"] = "库雷恩 <铁匠>";
	L["Bennett <The Sergeant at Arms>"] = "本内特 <警卫>";
	L["Keanna's Log"] = "金娜的日记";
	L["Ebonlocke <The Noble>"] = "埃伯洛克 <贵族>";
	L["Sebastian <The Organist>"] = "塞巴斯蒂安 <风琴手>";
	L["Barnes <The Stage Manager>"] = "巴内斯 <舞台管理员>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "通往破碎阶梯的通道";
	L["Broken Stairs"] = "破碎阶梯";
	L["Ramp to Guardian's Library"] = "通往守护者的图书馆的斜坡";
	L["Mysterious Bookshelf"] = "神秘的书架";
	L["Ramp up to the Celestial Watch"] = "通往观星大厅的斜坡";
	L["Ramp down to the Gamesman's Hall"] = "通往象棋大厅的斜坡";
	L["Ramp to Medivh's Chamber"] = "通往麦迪文房间的斜坡";
	L["Spiral Stairs to Netherspace"] = "通往虚空异界的楼梯";
	L["Wravien <The Mage>"] = "拉维恩 <法师>";
	L["Gradav <The Warlock>"] = "格拉达夫 <术士>";
	L["Kamsis <The Conjurer>"] = "卡姆希丝 <咒术师>";
	L["Ythyar"] = "伊萨尔";
	L["Echo of Medivh"] = "麦迪文的回音";

	--Magisters Terrace
	L["Exarch Larethor"] = "主教拉雷索尔";
	L["Fel Crystals"] = "邪能水晶";
	L["Apoko"] = "埃波克";
	L["Eramas Brightblaze"] = "埃拉玛斯·炽光";
	L["Ellrys Duskhallow"] = "艾尔蕾丝";
	L["Fizzle"] = "菲兹尔";
	L["Garaxxas"] = "贾拉克萨斯";
	L["Sliver <Garaxxas' Pet>"] = "脆皮 <贾拉克萨斯的宠物>";
	L["Kagani Nightstrike"] = "卡加尼·夜锋";
	L["Warlord Salaris"] = "督军沙拉利斯";
	L["Yazzai"] = "亚赛";
	L["Zelfan"] = "扎尔凡";
	L["Tyrith"] = "塔雷斯";
	L["Scrying Orb"] = "占卜宝珠";

	--Sunwell Plateau
	L["Madrigosa"] = "玛蒂苟萨";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "米尔豪斯·法力风暴";
	L["Third Fragment Guardian"] = "第三块碎片的守护者";
	L["Udalo"] = "先知乌达鲁";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "超载的魔法晶格";

	--TK: The Eye

--@end-do-not-package@
end
