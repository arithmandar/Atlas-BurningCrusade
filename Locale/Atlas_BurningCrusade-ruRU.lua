-- $Id$
--[[

	Atlas, a World of Warcraft instance map browser
	Copyright 2005 ~ 2010 - Dan Gilbert <dan.b.gilbert@gmail.com>
	Copyright 2010 - Lothaer <lothayer@gmail.com>, Atlas Team
	Copyright 2011 ~ 2016 - Arith Hsu, Atlas Team <atlas.addon@gmail.com>

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
local L = AceLocale:NewLocale("Atlas_BurningCrusade", "ruRU", false);

if L then
--@localization(locale="ruRU", format="lua_additive_table")@
--@do-not-package@
--************************************************
-- Zone Names, Acronyms, and Common Strings
--************************************************
	--BC Acronyms
	L["AC"] = "АГ"; -- Аукенайские гробницы
	L["Arca"] = "Арка"; -- Аркатрац
	L["Auch"] = "Аук"; -- Аукиндон
	L["BF"] = "КК"; -- Кузня Крови
	L["BT"] = "ЧХ"; -- Черный Храм
	L["Bota"] = "Бота"; -- Ботаника
	L["CoT"] = "ПВ"; -- Пещеры Времени
	L["CoT1"] = "ПВ1"; -- Старые предгорья Хилсбрада
	L["CoT2"] = "ПВ2"; -- Черные топи
	L["CoT3"] = "ПВ3"; -- Вершина Хиджала
	L["CR"] = "РКК"; -- Резервуар Кривого Клыка
	L["GL"] = "Груль"; -- Логово Груула
	L["HC"] = "ЦАП"; -- Цитадель Адского Пламени
	L["Kara"] = "Кара"; -- Каражан
	L["MaT"] = "ТМ"; -- Терраса Магистров
	L["Mag"] = "Маги"; -- Логово Магтеридона
	L["Mech"] = "Мех"; -- Механар
	L["MT"] = "ГМ"; -- Гробницы Маны
	L["Ramp"] = "Баст"; -- Бастионы Адского Пламени
	L["SSC"] = "ЗС"; -- Змеиное святилище
	L["Seth"] = "Сетекк"; -- Сетеккские залы
	L["SH"] = "РЗ"; -- Разрушенные залы
	L["SL"] = "ТЛ"; -- Темный Лабиринт
	L["SP"] = "Узи"; -- Узилище
	L["SuP"] = "СК"; -- Солнечный Колодец
	L["SV"] = "ПП"; -- Паровое Подземелье
	L["TK"] = "КБ"; -- Крепость Бурь
	L["UB"] = "НТ"; -- Нижетопь

--*******************
-- Burning Crusade Instances
--*******************

	--Auchindoun (Entrance)
	L["Clarissa"] = "Кларисса";
	L["Greatfather Aldrimus"] = "Великий Отец Алдримус";
	L["Ha'Lei"] = "Ха'лей";
	L["Horvon the Armorer <Armorsmith>"] = "Хорвон Бронник <Бронник>";
	L["Ramdor the Mad"] = "Рамдор Безумный";
	L["Nexus-Prince Haramad"] = "Принц Харамад";
	L["\"Slim\" <Shady Dealer>"] = "Тип <Сомнительный делец>";
	L["\"Captain\" Kaftiz"] = "Капитан Кафтиц";
	L["Dealer Tariq <Shady Dealer>"] = "Делец Тариг <Сомнительный делец>";
	L["Provisioner Tsaalt"] = "Поставщик Тсаальт";

	--Auch: Auchenai Crypts
	L["Draenei Spirit"] = "Дух дренея";
	L["Avatar of the Martyred"] = "Аватара Мученика";
	L["D'ore"] = "Д'оре";
	L["Tormented Soulpriest"] = "Измученный жрец душ";

	--Auch: Mana-Tombs
	L["Artificer Morphalius"] = "Работник Морфалиус";
	L["Mamdy the \"Ologist\""] = "Мамди по кличке \"Олог\"";
	L["Shadow Lord Xiraxis"] = "Владыка теней Зираксис";
	L["Ambassador Pax'ivi"] = "Посол Пакс'иви";
	L["Cryo-Engineer Sha'heen"] = "Крио-инженер Ша'хин";
	L["Ethereal Transporter Control Panel"] = "Пульт управления астрального телепорта";

	--Auch: Sethekk Halls
	L["Isfar"] = "Исфар";
	L["Dealer Vijaad"] = "Делец Виджад";
	L["Lakka"] = "Лакка";
	L["The Saga of Terokk"] = "Сага о Терокке";

	--Auch: Shadow Labyrinth
	L["Field Commander Mahfuun"] = "Боевой командир Мафуун";
	L["Spy Grik'tha"] = "Шпион Грик'та";
	L["The Codex of Blood"] = "Кодекс Крови";
	L["First Fragment Guardian"] = "Страж первого фрагмента";
	L["Spy To'gun"] = "Шпион То'гун";

	--Black Temple (Start)
	L["Towards Reliquary of Souls"] = "К Гробнице Душ";
	L["Towards Teron Gorefiend"] = "К Терону Кровожадному";
	L["Towards Illidan Stormrage"] = "К Иллидану Ярости Бури";
	L["Spirit of Olum"] = "Олумов дух";
	L["Spirit of Udalo"] = "Дух Адало";
	L["Aluyen <Reagents>"] = "Алуйен <Реагенты>";
	L["Okuno <Ashtongue Deathsworn Quartermaster>"] = "Окуно <Начальник снабжения Пеплоустов>";
	L["Seer Kanai"] = "Провидец Канеи";

	--Black Temple (Basement)

	--Black Temple (Top)

	--Coilfang Reservoir (Entrance)
	L["Mortog Steamhead"] = "Мортог Горячая Голова";

	--CFR: Serpentshrine Cavern
	L["Seer Olum"] = "Провидец Олум";

	--CFR: The Slave Pens
	L["Nahuud"] = "Нахууд";
	L["Watcher Jhang"] = "Дозорный Джанг";
	L["Weeder Greenthumb"] = "Культиватор Зеленопал";
	L["Skar'this the Heretic"] = "Скартис Еретик";
	L["Naturalist Bite"] = "Натуралист Кус";

	--CFR: The Steamvault
	L["Windcaller Claw"] = "Призыватель ветров Коготь";
	L["Main Chambers Access Panel"] = "Главная камера сгорания - Панель доступа";
	L["Second Fragment Guardian"] = "Страж второго фрагмента";

	--CFR: The Underbog
	L["T'shu"] = "Тшу";
	L["The Underspore"] = "Подспорник";
	L["Earthbinder Rayge"] = "Землепряд Гневвс";

	--Caverns of Time: Hyjal (Entrance)
	L["Indormi <Keeper of Ancient Gem Lore>"] = "Индорми <Хранитель знаний о древних самоцветах>";
	L["Tydormu <Keeper of Lost Artifacts>"] = "Тайдорму <Хранитель утраченных артефактов>";

	--CoT: The Black Morass
	L["Sa'at <Keepers of Time>"] = "Са'ат <Хранители Времени>";

	--CoT: Hyjal Summit
	L["Lady Jaina Proudmoore"] = "Леди Джайна Праудмур";
	L["Thrall <Warchief>"] = "Тралл <Вождь>";
	L["Tyrande Whisperwind <High Priestess of Elune>"] = "Тиранда Шелест Ветра";

	--CoT: Old Hillsbrad Foothills
	L["Erozion"] = "Эрозион";
	L["Brazen"] = "Бронзень";
	L["Landing Spot"] = "Место высадки";
	L["Thrall"] = "Раб";
	L["Taretha"] = "Тарета";
	L["Don Carlos"] = "Дон Карлос";
	L["Guerrero"] = "Герреро";
	L["Thomas Yance <Travelling Salesman>"] = "Томас Янс <Странствующий торговец>";
	L["Aged Dalaran Wizard"] = "Даларанский старый волшебник";
	L["Jonathan Revah"] = "Джонатан Рева";
	L["Jerry Carter"] = "Джерри Картер";
	L["Helcular"] = "Гелькулар";
	L["Farmer Kent"] = "Фермер Кент";
	L["Sally Whitemane"] = "Сэлли Белогрив";
	L["Renault Mograine"] = "Рено Могрейн";
	L["Little Jimmy Vishas"] = "Малыш Джимми Вишас";
	L["Herod the Bully"] = "Герод Забияка";
	L["Nat Pagle"] = "Нат Пэгл";
	L["Hal McAllister"] = "Хал Макаллистер";
	L["Zixil <Aspiring Merchant>"] = "Зиксель <Знаменитый купец>";
	L["Overwatch Mark 0 <Protector>"] = "Суперсторож, модель 0 <Заступник>";
	L["Southshore Inn"] = "Дома южнобережья";
	L["Captain Edward Hanes"] = "Капитан Эдвард Хейнс";
	L["Captain Sanders"] = "Капитан Сандерс";
	L["Commander Mograine"] = "Командир Могрейн";
	L["Isillien"] = "Изиллиен";
	L["Abbendis"] = "Аббендис";
	L["Fairbanks"] = "Фэйрбанкс";
	L["Taelan"] = "Таэлан";
	L["Barkeep Kelly <Bartender>"] = "Кабатчик Келли <Бармен>";
	L["Frances Lin <Barmaid>"] = "Франс Лин <Официантка>";
	L["Chef Jessen <Speciality Meat & Slop>"] = "Шеф-повар Джессен <Деликатесное мясо и похлебки>";
	L["Stalvan Mistmantle"] = "Сталван Мистмантл";
	L["Phin Odelic <The Kirin Tor>"] = "Фин Оделик <Кирин Тор>";
	L["Magistrate Henry Maleb"] = "Мировой судья Генри Малеб";
	L["Raleigh the True"] = "Роли Истинный";
	L["Nathanos Marris"] = "Натанос Маррис";
	L["Bilger the Straight-laced"] = "Бочкопуз Крепкосбитый";
	L["Innkeeper Monica"] = "Хозяйка таверны Моника";
	L["Julie Honeywell"] = "Джули Медовушка";
	L["Jay Lemieux"] = "Джей Лемье";
	L["Young Blanchy"] = "Молодая Савраска";

	--Gruul's Lair

	--Hellfire Citadel (Entrance)
	L["Steps and path to the Blood Furnace"] = "Подъем и путь к Кузне Крови";
	L["Path to the Hellfire Ramparts and Shattered Halls"] = "Путь к Бастионам и Разрушенным залам";
	L["Meeting Stone of Magtheridon's Lair"] = "Камень встреч Логова Магтеридона";
	L["Meeting Stone of Hellfire Citadel"] = "Камень встреч Цитадели Адского Пламени";

	--HFC: The Blood Furnace
	L["Gunny"] = "Пушкаренок";
	L["Caza'rez"] = "Каса'рес";

	--HFC: Hellfire Ramparts
	L["Advance Scout Chadwick"] = "Главный разведчик Чадвик";
	L["Stone Guard Stok'ton"] = "Каменный страж Сток'тон";
	L["Reinforced Fel Iron Chest"] = "Укрепленный сундук из оскверненного железа";

	--HFC: Magtheridon's Lair

	--HFC: The Shattered Halls
	L["Shattered Hand Executioner"] = "Палач из клана Изувеченной Длани";
	L["Private Jacint"] = "Рядовой Джасинт";
	L["Rifleman Brownbeard"] = "Ружейник Буробород";
	L["Captain Alina"] = "Капитан Алина";
	L["Scout Orgarr"] = "Разведчик Оргарр";
	L["Korag Proudmane"] = "Кораг Гордая Грива";
	L["Captain Boneshatter"] = "Капитан Костолом";
	L["Randy Whizzlesprocket"] = "Рэнди Свистельник";
	L["Drisella"] = "Дризелла";

	--Karazhan (Entrance)
	L["Archmage Leryda"] = "Верховный маг Лерида";
	L["Archmage Alturus"] = "Верховный маг Альтур";
	L["Apprentice Darius"] = "Ученик Дариус";
	L["Stairs to Underground Pond"] = "Лестница к Подземному пруду";
	L["Stairs to Underground Well"] = "Лестница к Подземному колодцу";
	L["Charred Bone Fragment"] = "Фрагмент обугленной кости";

	--Karazhan Start
	L["Baroness Dorothea Millstipe"] = "Баронесса Дороти Милстип";
	L["Lady Catriona Von'Indi"] = "Леди Катриона Фон'Инди";
	L["Lady Keira Berrybuck"] = "Леди Кейра Ягодная Корзина";
	L["Baron Rafe Dreuger"] = "Барон Раф Дреугер";
	L["Lord Robin Daris"] = "Лорд Робин Дэрис";
	L["Lord Crispin Ference"] = "Лорд Криспин Ференс";
	L["Red Riding Hood"] = "Красная Шапочка";
	L["Wizard of Oz"] = "Волшебник страны Oз";
	L["The Master's Terrace"] = "Терраса Мастера";
	L["Servant Quarters"] = "Жильё прислуги";
	L["Hastings <The Caretaker>"] = "Гастингс <Управляющий>";
	L["Berthold <The Doorman>"] = "Бертольд <Привратник>";
	L["Calliard <The Nightman>"] = "Кальярд <Ночной страж>";
	L["Koren <The Blacksmith>"] = "Корен <Кузнец>";
	L["Bennett <The Sergeant at Arms>"] = "Беннет <Начальник охраны>";
	L["Keanna's Log"] = "Записи Кеанны";
	L["Ebonlocke <The Noble>"] = "Чернодрев <Аристократ>";
	L["Sebastian <The Organist>"] = "Себастиан <Органист>";
	L["Barnes <The Stage Manager>"] = "Барнс <Конферансье>";

	--Karazhan End
	L["Path to the Broken Stairs"] = "Путь к разрушенным лестницам";
	L["Broken Stairs"] = "Сломаная лесница";
	L["Ramp to Guardian's Library"] = "Рампа к библиотеку стражи";
	L["Mysterious Bookshelf"] = "Подозрительные книжные полки";
	L["Ramp up to the Celestial Watch"] = "Подъём к небесному надзору";
	L["Ramp down to the Gamesman's Hall"] = "Спуск в игровой зал";
	L["Ramp to Medivh's Chamber"] = "Рампа в комнату Медива";
	L["Spiral Stairs to Netherspace"] = "Спиральные лестницы к Пустомари";
	L["Wravien <The Mage>"] = "Вравьен <Маг>";
	L["Gradav <The Warlock>"] = "Градав <Чернокнижник>";
	L["Kamsis <The Conjurer>"] = "Камсис <Кудесник>";
	L["Ythyar"] = "Айтар";
	L["Echo of Medivh"] = "Эхо Медива";

	--Magisters Terrace
	L["Exarch Larethor"] = "Экзарх Ларетор";
	L["Fel Crystals"] = "Кристалл Скверны";
	L["Apoko"] = "Апоко";
	L["Eramas Brightblaze"] = "Эрамас Сияющее Пламя";
	L["Ellrys Duskhallow"] = "Эллриса Почитательница Тени";
	L["Fizzle"] = "Пшикс";
	L["Garaxxas"] = "Гараксас";
	L["Sliver <Garaxxas' Pet>"] = "Лыббс <Питомец Гараксаса>";
	L["Kagani Nightstrike"] = "Кагани Ночной Удар";
	L["Warlord Salaris"] = "Полководец Саларис";
	L["Yazzai"] = "Яззай";
	L["Zelfan"] = "Зелфан";
	L["Tyrith"] = "Тирит";
	L["Scrying Orb"] = "Гадательный шар Соланиана";

	--Sunwell Plateau
	L["Madrigosa"] = "Мадригоса";

	--TK: The Arcatraz
	L["Millhouse Manastorm"] = "Милхаус Манашторм";
	L["Third Fragment Guardian"] = "Страж третьего фрагмента";
	L["Udalo"] = "Адало";

	--TK: The Botanica

	--TK: The Mechanar
	L["Overcharged Manacell"] = "Переполненный зарядом контейнер с маной";

	--TK: The Eye

--@end-do-not-package@

end