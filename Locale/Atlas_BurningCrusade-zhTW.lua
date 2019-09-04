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
local L = AceLocale:NewLocale("Atlas_BurningCrusade", "zhTW", false);

if L then
--@localization(locale="zhTW", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--BC Acronyms
	L["AC"] = "AC"; -- Auchenai Crypts 奧奇奈地穴
	L["Arca"] = "Arca/亞克"; -- The Arcatraz 亞克崔茲
	L["Auch"] = "Auch"; -- Auchindoun 奧齊頓
	L["BF"] = "BF"; -- The Blood Furnace 血熔爐
	L["BT"] = "BT/黑廟"; -- Black Temple 黑暗神廟
	L["Bota"] = "Bota/波塔"; -- The Botanica 波塔尼卡
	L["CoT"] = "CoT"; -- Caverns of Time 時光之穴
	L["CoT1"] = "CoT1/舊址"; -- Old Hillsbrad Foothills 希爾斯布萊德丘陵舊址
	L["CoT2"] = "CoT2/黑沼"; -- The Black Morass 黑色沼澤
	L["CoT3"] = "CoT3/海山"; -- Hyjal Summit 海加爾山
	L["CR"] = "CR/盤牙"; -- Coilfang Reservoir
	L["GL"] = "GL/戈魯爾"; -- Gruul's Lair 戈魯爾之巢
	L["HC"] = "HC/火堡"; -- Hellfire Citadel 地獄火堡壘
	L["Kara"] = "Kara/卡拉"; -- Karazhan 卡拉贊
	L["MaT"] = "MT/博學"; -- Magisters' Terrace 博學者殿堂
	L["Mag"] = "Mag/瑪瑟"; -- Magtheridon's Lair 瑪瑟里頓的巢穴
	L["Mech"] = "Mech/麥克"; -- The Mechanar 麥克納爾
	L["MT"] = "MT/法力"; -- Mana-Tombs 法力墓地
	L["Ramp"] = "Ramp"; -- Hellfire Ramparts 地獄火壁壘
	L["SSC"] = "SSC/毒蛇"; -- Serpentshrine Cavern 毒蛇神殿洞穴
	L["Seth"] = "Seth/塞司克"; -- Sethekk Halls 塞司克大廳
	L["SH"] = "SH/破碎"; -- The Shattered Halls 破碎大廳
	L["SL"] = "SL/迷宮"; -- Shadow Labyrinth 暗影迷宮
	L["SP"] = "SP"; -- The Slave Pens 奴隸監獄
	L["SuP"] = "SP/太陽井"; -- Sunwell Plateau 太陽之井高地
	L["SV"] = "SV/蒸汽"; -- The Steamvault 蒸汽洞窟
	L["TK"] = "TK/風暴"; -- Tempest Keep 風暴要塞
	L["UB"] = "UB/深幽"; -- The Underbog 深幽泥沼

--*******************
-- Burning Crusade Instances
--*******************

	--Auchindoun (Entrance)
	L["Clarissa"] = "克萊瑞莎";
	L["Greatfather Aldrimus"] = "大祖父阿爾崔瑪斯";
	L["Ha'lei"] = "哈勒";
	L["Horvon the Armorer <Armorsmith>"] = "護甲匠霍沃 <護甲鍛造師>";
	L["Ramdor the Mad"] = "瘋狂者藍姆多";
	L["Nexus-Prince Haramad"] = "奈薩斯王子哈拉瑪德";
	L["\"Slim\" <Shady Dealer>"] = "『瘦子』 <黑市商人>";
	L["\"Captain\" Kaftiz"] = "隊長卡夫提茲";
	L["Dealer Tariq <Shady Dealer>"] = "商人塔爾利奎 <黑市商人>";
	L["Provisioner Tsaalt"] = "糧食供應者·茲索特";

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "德萊尼靈魂";
	L["Avatar of the Martyred"] = "馬丁瑞德的化身";
	L["D'ore"] = "迪歐瑞";
	L["Tormented Soulpriest"] = "受折磨的靈魂牧師";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "工匠莫法利厄司";
	L["Mamdy the \"Ologist\""] = "『學家』瑪姆迪";
	L["Shadow Lord Xiraxis"] = "暗影領主希瑞西斯";
	L["Ambassador Pax'ivi"] = "帕克西維大使";
	L["Cryo-Engineer Sha'heen"] = "工程師薩希恩";
	L["Ethereal Transporter Control Panel"] = "虛空傳送者控制面板";

	--Auch: Sethekk Halls
	L["Isfar"] = "伊斯法";
	L["Dealer Vijaad"] = "商人維傑";
	L["Lakka"] = "拉卡";
	L["The Saga of Terokk"] = "泰洛克的傳說";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "戰場元帥瑪赫范";
	L["Spy Grik'tha"] = "間諜葛瑞克莎";
	L["The Codex of Blood"] = "血之聖典";
	L["First Fragment Guardian"] = "第一碎片守衛者";
	L["Spy To'gun"] = "間諜·吐剛";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "通往靈魂聖盒";
	L["Towards Teron Gorefiend"] = "通往泰朗·血魔";
	L["Towards Illidan Stormrage"] = "通往伊利丹";
	L["Spirit of Olum"] = "歐蘭的靈魂";
	L["Spirit of Udalo"] = "烏達羅之靈";
	L["Aluyen <Reagents>"] = "阿魯焰 <施法材料>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "歐庫諾 <灰舌死亡誓言者軍需官>";
	L["Seer Kanai"] = "先知卡奈";

	--Black Temple (Basement)

	--Black Temple (Top)

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "莫塔格·史提海德";

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "先知歐蘭";

	--CFR: The Slave Pens
	L["Nahuud"] = "納霍德";
	L["Watcher Jhang"] = "看守者詹汗格";
	L["Weeder Greenthumb"] = "威德·綠指";
	L["Skar'this the Heretic"] = "異教徒司卡利斯";
	L["Naturalist Bite"] = "自然學家拜特";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "喚風者卡勞";
	L["Main Chambers Access Panel"] = "主房間通道面板";
	L["Second Fragment Guardian"] = "第二碎片守衛者";

	--CFR: The Underbog
	L["T'shu"] = "塔蘇";
	L["The Underspore"] = "地孢";
	L["Earthbinder Rayge"] = "縛地者瑞吉";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "隱多米 <寶石傳說的守護者>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "提多姆 <失落的神器看管者>";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "塞特 <時光守望者>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "珍娜·普勞德摩爾女士";
	L["Thrall <Warchief>"] = "索爾 <首領>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "泰蘭妲·語風 <伊露恩的高階女祭司>";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "伊洛森";
	L["Brazen"] = "布瑞茲恩";
	L["Landing Spot"] = "降落點";
	L["Thrall"] = "索爾";
	L["Taretha"] = "塔蕾莎";
	L["Don Carlos"] = "卡洛斯大爺";
	L["Guerrero"] = "葛雷洛";
	L["Thomas Yance <Travelling Salesman>"] = "湯瑪斯·陽斯 <旅行商人>";
	L["Aged Dalaran Wizard"] = "年邁的達拉然法師";
	L["Jonathan Revah"] = "強納森·瑞瓦";
	L["Jerry Carter"] = "傑瑞·卡特";
	L["Helcular"] = "赫爾庫拉";
	L["Farmer Kent"] = "農夫肯特";
	L["Sally Whitemane"] = "莎麗·白鬃";
	L["Renault Mograine"] = "雷諾·莫根尼";
	L["Little Jimmy Vishas"] = "小吉米·維希斯";
	L["Herod the Bully"] = "流氓希洛特";
	L["Nat Pagle"] = "納特·帕格";
	L["Hal McAllister"] = "哈爾·馬克奧里斯特";
	L["Zixil <Aspiring Merchant>"] = "吉克希爾 <高級商人>";
	L["Overwatch Mark 0 <Protector>"] = "守候者零型 <保衛者>";
	L["Southshore Inn"] = "南海鎮旅館";
	L["Captain Edward Hanes"] = "隊長艾德華·漢尼斯";
	L["Captain Sanders"] = "桑德斯船長";
	L["Commander Mograine"] = "指揮官莫格萊尼";
	L["Isillien"] = "伊斯利恩";
	L["Abbendis"] = "阿比迪斯";
	L["Fairbanks"] = "費爾班克";
	L["Taelan"] = "泰蘭";
	L["Barkeep Kelly <Bartender>"] = "酒吧老闆凱利 <酒保>";
	L["Frances Lin <Barmaid>"] = "法蘭斯·林 <酒吧女服務員>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "廚師傑森 <特殊肉品和食物>";
	L["Stalvan Mistmantle"] = "斯塔文·密斯特曼托";
	L["Phin Odelic <The Kirin Tor>"] = "費恩·奧德利克 <祈倫托>";
	L["Magistrate Henry Maleb"] = "赫尼·馬雷布鎮長";
	L["Raleigh the True"] = "純真者洛歐欸";
	L["Nathanos Marris"] = "納薩諾斯·瑪瑞斯";
	L["Bilger the Straight-laced"] = "嚴厲者畢歐吉";
	L["Innkeeper Monica"] = "旅店老闆莫妮卡";
	L["Julie Honeywell"] = "喬莉·哈妮威爾";
	L["Jay Lemieux"] = "杰·黎米厄斯";
	L["Young Blanchy"] = "小馬布蘭契";

	--Gruul's Lair

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "通往血熔爐的階梯與通道";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "通往地獄火壁壘與破碎大廳的通道";
	L["Meeting Stone of Magtheridon's Lair"] = "集合石 - 瑪瑟里頓的巢穴";
	L["Meeting Stone of Hellfire Citadel"] = "集合石 - 地獄火堡壘";

	--HFC: The Blood Furnace
	L["Gunny"] = "甘尼";
	L["Caza'rez"] = "卡沙瑞斯";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "先遣斥候查德威克";
	L["Stone Guard Stok'ton"] = "石衛士史托克頓";
	L["Reinforced Fel Iron Chest"] = "強化惡魔鐵箱";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "破碎之手劊子手";
	L["Private Jacint"] = "士兵賈辛特";
	L["Rifleman Brownbeard"] = "槍兵伯朗畢爾";
	L["Captain Alina"] = "隊長阿蓮娜";
	L["Scout Orgarr"] = "斥候歐卡爾";
	L["Korag Proudmane"] = "科洛特·波特曼";
	L["Captain Boneshatter"] = "隊長碎骨";
	L["Randy Whizzlesprocket"] = "藍迪·威索洛克";
	L["Drisella"] = "崔賽拉";

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "大法師利瑞達";
	L["Archmage Alturus"] = "大法師艾特羅斯";
	L["Apprentice Darius"] = "學徒達瑞爾斯";
	L["Stairs to Underground Pond"] = "通往地底池塘的階梯";
	L["Stairs to Underground Well"] = "通往地底水井的階梯";
	L["Charred Bone Fragment"] = "燒焦的白骨碎片";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "女爵朵洛希·米爾斯泰普";
	L["Lady Catriona Von'Indi"] = "凱崔娜·瓦映迪女士";
	L["Lady Keira Berrybuck"] = "凱伊拉·拜瑞巴克女士";
	L["Baron Rafe Dreuger"] = "男爵洛夫·崔克爾";
	L["Lord Robin Daris"] = "貴族羅賓·達利斯";
	L["Lord Crispin Ference"] = "貴族克利斯平·費蘭斯";
	L["Red Riding Hood"] = "小紅帽";
	L["Wizard of Oz"] = "綠野仙蹤";
	L["The Master's Terrace"] = "大師的露臺";
	L["Servant Quarters"] = "伺從區";
	L["Hastings <The Caretaker>"] = "哈斯丁 <照料者>";
	L["Berthold <The Doorman>"] = "勃特霍德 <看門人>";
	L["Calliard <The Nightman>"] = "卡利卡 <夜間工作者>";
	L["Koren <The Blacksmith>"] = "卡爾侖 <鐵匠>";
	L["Bennett <The Sergeant at Arms>"] = "班尼特 <待命中的中士>";
	L["Keanna's Log"] = "琪安娜的日誌";
	L["Ebonlocke <The Noble>"] = "埃伯洛克 <貴族>";
	L["Sebastian <The Organist>"] = "塞巴斯汀 <風琴演奏家>";
	L["Barnes <The Stage Manager>"] = "巴奈斯 <舞台管理員>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "通往損壞的階梯的通道";
	L["Broken Stairs"] = "損壞的階梯";
	L["Ramp to Guardian's Library"] = "通往管理員圖書館的斜坡";
	L["Mysterious Bookshelf"] = "神秘的書架";
	L["Ramp up to the Celestial Watch"] = "通往天文觀測台的斜坡";
	L["Ramp down to the Gamesman's Hall"] = "通往投機者大廳的斜坡";
	L["Ramp to Medivh's Chamber"] = "通往麥迪文房間的斜坡";
	L["Spiral Stairs to Netherspace"] = "通往虛空空間的螺旋梯";
	L["Wravien <The Mage>"] = "瑞依恩 <法師>";
	L["Gradav <The Warlock>"] = "葛瑞戴 <術士>";
	L["Kamsis <The Conjurer>"] = "康席斯 <咒術師>";
	L["Ythyar"] = "伊斯亞爾";
	L["Echo of Medivh"] = "麥迪文的回音";

	--Magisters Terrace
	L["Exarch Larethor"] = "主教雷索爾";
	L["Fel Crystals"] = "惡魔水晶";
	L["Apoko"] = "阿波考";
	L["Eramas Brightblaze"] = "依拉瑪·火光";
	L["Ellrys Duskhallow"] = "艾爾里斯·聖暮";
	L["Fizzle"] = "費索";
	L["Garaxxas"] = "卡拉克薩斯";
	L["Sliver <Garaxxas' Pet>"] = "割裂者 <卡拉克薩斯的寵物>";
	L["Kagani Nightstrike"] = "卡嘉尼·夜擊";
	L["Warlord Salaris"] = "督軍沙拉利思";
	L["Yazzai"] = "耶賽";
	L["Zelfan"] = "塞爾汎";
	L["Tyrith"] = "提里斯";
	L["Scrying Orb"] = "索蘭尼亞的占卜寶珠";

	--Sunwell Plateau
	L["Madrigosa"] = "瑪德里茍沙";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "米歐浩斯·曼納斯頓";
	L["Third Fragment Guardian"] = "第三碎片守衛者";
	L["Udalo"] = "先知烏達羅";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "滿溢的法力容器";

	--TK: The Eye

--@end-do-not-package@

end
