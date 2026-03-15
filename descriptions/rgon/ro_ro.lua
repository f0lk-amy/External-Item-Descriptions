---------------------------------------
-----  Basic English descriptions -----
---------------------------------------

-- FORMAT: Item ID | Name | Description

-- Special character markup:
-- ↑ = Up Arrow  |  ↓ = Down Arrow  |  # = Starts a new line
-- More can be found here: https://github.com/wofsauge/External-Item-Descriptions/wiki/Markup

local languageCode = "ro_ro"

---------- Collectibles ----------

local collectibles = {
	-- Change: added "Creep persists until you exit the room"
	[56] = {"56", "Accidentul Lămâii", "Varsă o baltă de lămâie#Balta provoacă 24 de daune pe secundă#Balta persistă pe durata camerei"}, -- Lemon Mishap
	-- Change: added "Persists between rooms if player is at 1/2 hearts"
	[117] = {"117", "Pasăre Moartă", "Vătamarea oferă o pasăre care atacă inamicii#Pasărea provoacă 4.3 daune pe secundă#Persistă între camere dacă Isaac are 1/2 inimi"}, -- Dead Bird
	-- Change: added "Blocks enemy tears"
	[281] = { "281", "Sac de Box", "Familiar momeală#Inamicii îl vizează pe el în locul lui Isaac#Blochează lacrimile inamice" }, -- Punching Bag
	-- Change: added "+0.2 Shot speed"
	[329] = { "329", "Tehnica Ludovico", "↑ {{Shotspeed}} {{ColorGreen}}+0.2{{CR}} viteză lacrimi#Înlocuiește lacrimile lui Isaac cu o singură lacrimă uriașă controlabilă" }, -- The Ludovico Technique
	-- Change: Complete rewrite
	[351] = {"351", "Fasole Gigant", "Provoacă 100 de daune și pietrifică toți inamicilor din cameră#{{Poison}} Provoacă 5 daune și otrăvește toți inamicii din apropiere#Poate deschide camerele secrete și să spargă pietre"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Lapte!", "Blochează proiectilele inamicilor#{{Tears}} După 10 lovituri laptele se spare și oferă Lacrimi pe durata etajului"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Fasole Persistentă", "Dacă tragi pentru 4 secunde fară pauză Isaac lasă un nor de rahat#Norul se mărește pe durata a 10 secunde#Norul provoacă daune mai puține pe măsură ce crește#Poate fi înpins cu lacrimi"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Hushy", "Se mișcă prin cameră#Provoacă 30 de daune de contact pe secundă#Se oprește cand Isaac trage#Blochează proiectilele când este oprit și trage cu rafale de lacrimi in cerc"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Miner de date", "↑ Crește statusuri la întâmplare#↓ Scade statusuri la întâmplare#{{Timer}} Efecte aleatorii pe lacrimi pe durata camerei#Transformă piedestalele in iteme glitched#{{Blank}} Corupe toate aspecte visuale si muzica pe durata camerei"}, -- Dataminer
	-- Change: Reduced the chance of removing the most recent item to 50%
	[482] = { "482", "Clicker", "Îți schimbă personajul cu unul aleatoriu#50% șansă de a elimina cel mai recent obiect colectat" }, -- Clicker
	-- Change: Complete rewrite
	[510] = {"510", "Delirant", "Oferă o varianta prietenoasă a unui boss Delirium#Persista între camere#{{Warning}} Numai un boss poate fi activ o dată#Numărul de incărcări este bazat pe calitatea bossului anterior"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "Doare", "{{Timer}} Când Isaac este vătămat primește pe durata camerei:#↑ {{Tears}} {{ColorGreen}}+1.2{{CR}} Viteză de atac la prima vătămare#↑ {{Tears}} {{ColorGreen}}+0.4{{CR}} Viteză de atac pentru fiecare altă vătămare#Eliberează un inel de 10 lacrimi în jurul lui Isaac#Lacrimile lasă o baltă la impact"}, -- Doare
	-- Change: Added ring of fire on impact description
	[593] = { "593", "Marte", "Dublu-apăsarea unei taste de mișcare îl face pe Isaac să se arunce#{{Damage}} În timpul aruncării, Isaac este invincibil și provoacă {{ColorGreen}}4x{{CR}} dauna lui {{ColorGreen}}+8{{CR}}#{{Timer}} 3 secunde timp de reîncărcare#{{Burning}} Creează un inel de foc la impact" }, -- Mars
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} {{ColorGreen}}+2{{CR}} Containere goale de inimă#↓ {{Speed}} {{ColorRed}}-0.3{{CR}} Viteză#{{HealingRed}} Vindecă 2 inimi#{{Speed}} Viteza crește până la +0.5 cât timp stai pe loc#{{Poison}} Deplasarea cauzează nori otravitori#{{Poison}} Imunitate la otravă"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Farmec Malefic", "↑ {{Luck}} {{ColorGreen}}+2{{CR}} Noroc#Imunitate la {{Burning}} foc, {{Confusion}} confuzie, {{Fear}} teamă, {{Slow}} pânza de păianjen {{Poison}} Otrava#Oferă 1 secundă de imunitate la balți"}, -- Evil Charm
	-- Change: Adjusted the stat boost to match Hallowed Ground
	[651] = { "651", "Steaua din Betleem", "Călătorește încet de la prima cameră a etajului la {{BossRoom}} Camera Boss#Se mișcă mai repede dacă ești înaintea ei și mai încet dacă ești în urma ei#Stând în aura ei oferă:#↑ {{Tears}} {{ColorGreen}}x2.5{{CR}} multiplicator lacrimi#↑ {{Damage}} {{ColorGreen}}x1.2{{CR}} multiplicator daune#Lacrimi teleghidate#{{ColorGreen}}50%{{CR}} șansă să ignori daunele" }, -- Star of Bethlehem
	-- Change: Added Shop as a new destination
	[660] = { "660", "Citirea Cărților", "Creează două portaluri în prima cameră a fiecărui etaj#Părăsirea camerei face portalurile să dispară#{{Blank}} {{ColorRed}}Roșu: {{CR}}{{BossRoom}} Camera Boss#{{Blank}} {{ColorYellow}}Galben: {{CR}}{{TreasureRoom}} Camera de Obiecte#{{Blank}} {{ColorBlue}}Albastru: {{CR}}{{SecretRoom}} Camera Secretă#{{Blank}} {{ColorGreen}}Verde: {{CR}}{{Shop}} Magazin" }, -- Card Reading
	-- Change: Complete rewrite
	[681] = {"681", "Micul Portal", "Dubla apăsare a butonului de tragere aruncă portalul#Provoacă daune de contact cand este aruncat#Consumă pickupurile în durmul său#Fiecare pickup îi mărește dimensiunea, daunele și oferă o muscă albastră#Consumarea a 2-3 pickupuri oferă un portal spre o cameră specială și familiarul dispare pe durata etajului#Conținutul camerei speciale persistă pe durata partidei"}, -- Lil Portal
	-- Change: Added into for first usage
	[685] = { "685", "Borcan cu Spirite", "Creează 2 spirite aleatorii#Creează încă un spirit la fiecare utilizare, până la 12" }, -- Jar of Wisps
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Abyss", "Consumă toate piedestalele din cameră și oferă o lăcustă pentru fiecare item#Unele iteme oferă lăcuste speciale#{{Damage}} Lăcustele provoacă deaunele lui Isaac înmulțit cu caliatea itemului consumat:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

---------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Căpușă", "{{HealingRed}} Vindecă 1 inimă când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-15%{{CR}} viață boss#{{Warning}} Odată luată, nu poate fi scoasă#Poate fi îndepărtată doar cu {{Trinket41}} Chibrit, {{Trinket135}} O Brichetă sau înghițind-o"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Amigdală", "După ce primești daune de 6-12 ori, creează un familiar care blochează proiectile#Dispare după ce creează 2 familiari"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Fitil Scurt", "Bombe lui Isaac explodează mai repede#Bombe provoacă cu 15% mai multe daune"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "Osul Dorinței", "{{ColorGreen}}5%{{CR}} șansă să se distrugă și să creeze un obiect pe piedestal când primești daune"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "Prânz la Pachet", "{{Collectible22}} {{ColorGreen}}5%{{CR}} șansă să se distrugă și să creeze Prânzul când primești daune"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

------- Golden Trinkets -------

local goldenTrinketEffects = {
	[53] = {
		"{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
		"{{HealingRed}} Vindecă {{ColorGold}}2{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{Warning}} Odată luată, nu poate fi scoasă#Poate fi îndepărtată doar cu {{Trinket41}} Chibrit, {{Trinket135}} O Brichetă sau înghițind-o",
		"{{HealingRed}} Vindecă {{ColorGold}}3{{CR}} inimi când intri într-o {{BossRoom}} Cameră Boss#{{ColorRed}}-30%{{CR}} viață boss#{{ColorGold}}Poate fi îndepărtată!{{CR}}",
	},
}
EID:updateDescriptionsViaTable(goldenTrinketEffects, EID.descriptions[languageCode].goldenTrinketEffects)

---------- Cards ----------

local cards = {
	[11] = { "11", "X - Roata norocului", "{{Slotmachine}} Creează o Păcănea#{{FortuneTeller}} 24% șansă să fie un Automat de Noroc#{{CraneGame}} 1% șansă să fie o Macara" },
	[38] = { "38", "Berkano", "{{Collectible706}} Invocă 3 lăcuste ale Abisului pentru cameră" },
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)

local tarotClothBuffs = {
	[11] = { " o Păcănea", " 2 {{CR}}Păcănele", " acesta ", " {{CR}}fiecare ", " acesta ", " {{CR}}fiecare " },
}
EID:updateDescriptionsViaTable(tarotClothBuffs, EID.descriptions[languageCode].tarotClothBuffs)

---------- Pills ----------

local horsepills = {
	[26] = { "25", "Amnezie", "{{CurseLost}} Ascunde harta etajului#{{Pill}} Uită toate pastilele identificate anterior" },
}
EID:updateDescriptionsViaTable(horsepills, EID.descriptions[languageCode].horsepills)

---------- Conditions ----------

EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil

local conditions = {
	["5.100.205 (Tainted Magdalene)"] = "Inimile sângerânde oferă doar jumătate din încărcarea unui container de inimă obișnuit",
}
EID:updateDescriptionsViaTable(conditions, EID.descriptions[languageCode].ConditionalDescs)

---------- Synergies ----------

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Oferă 16 lăcuste de diferite culori și efecte", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end
