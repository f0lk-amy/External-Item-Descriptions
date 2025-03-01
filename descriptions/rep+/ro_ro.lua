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
	-- Change: Complete rewrite
	[351] = {"351", "Fasole Gigant", "Provoacă 100 de daune și pietrifică toți inamicilor din cameră#{{Poison}} Provoacă 5 daune și otrăvește toți inamicii din apropiere#Poate deschide camerele secrete și să spargă pietre"}, -- Mega Bean
	-- Change: Complete rewrite
	[436] = {"436", "Lapte!", "Blochează proiectilele inamicilor#{{Tears}} După 10 lovituri laptele se spare și oferă Lacrimi pe durata etajului"}, -- Milk!
	-- Change: Complete rewrite
	[447] = {"447", "Fasole Persistentă", "Dacă tragi pentru 4 secunde fară pauză Isaac lasă un nor de rahat#Norul se mărește pe durata a 10 secunde#Norul provoacă daune mai puține pe măsură ce crește#Poate fi înpins cu lacrimi"}, -- Linger Bean
	-- Change: added " and fires radial bursts of tears"
	[470] = {"470", "Hushy", "Se mișcă prin cameră#Provoacă 30 de daune de contact pe secundă#Se oprește cand Isaac trage#Blochează proiectilele când este oprit și trage cu rafale de lacrimi in cerc"}, -- Hushy
	-- Change: added "Turns item pedestals into glitched items"
	[481] = {"481", "Dataminer", "↑ Crește statusuri la întâmplare#↓ Scade statusuri la întâmplare#{{Timer}} Efecte aleatorii pe lacrimi pe durata camerei#Transformă piedestalele in iteme glitched#{{Blank}} Corupe toate aspecte visuale si muzica pe durata camerei"}, -- Dataminer
	-- Change: Complete rewrite
	[510] = {"510", "Delirant", "Oferă o varianta prietenoasă a unui boss Delirium#Persista între camere#{{Warning}} Numai un boss poate fi activ o dată#Numărul de incărcări este bazat pe calitatea bossului anterior"}, -- Delirious
	-- Change: added "Tears leave a pool of creep on impact"
	[560] = {"560", "Doare", "{{Timer}} Când Isaac este vătămat primește pe durata camerei:#↑ {{Tears}} +1.2 Viteză de atac la prima vătămare#↑ {{Tears}} +0.4 Viteză de atac pentru fiecare altă vătămare#Eliberează un inel de 10 lacrimi în jurul lui Isaac#Lacrimile lasă o baltă la impact"}, -- Doare
	-- Change: Heals 2 hearts instead of 1/2
	[594] = {"594", "Jupiter", "↑ {{EmptyHeart}} +2 Vieți goale#↓ {{Speed}} -0.3 Viteză#{{HealingRed}} Vindecă 2 inimi#{{Speed}} Viteza crește până la +0.5 cât timp stai pe loc#{{Poison}} Deplasarea cauzează nori otravitori#{{Poison}} Imunitate la otravă"}, -- Jupiter
	-- Change: Complete rewrite
	[632] = {"632", "Farmec Malefic", "↑ {{Luck}} +2 Noroc#Imunitate la {{Burning}} foc, {{Confusion}} confuzie, {{Fear}} teamă, {{Slow}} pânza de păianjen {{Poison}} Otrava#Oferă 1 secundă de imunitate la balți"}, -- Evil Charm
	-- Change: Complete rewrite
	[681] = {"681", "Micul Portal", "Dubla apăsare a butonului de tragere aruncă portalul#Provoacă daune de contact cand este aruncat#Consumă pickupurile în durmul său#Fiecare pickup îi mărește dimensiunea, daunele și oferă o muscă albastră#Consumarea a 2-3 pickupuri oferă un portal spre o cameră specială și familiarul dispare pe durata etajului#Conținutul camerei speciale persistă pe durata partidei"}, -- Lil Portal
	-- Change: Added info about the damage based on item quality
	[706] = {"706", "Abyss", "Consumă toate piedestalele din cameră și oferă o lăcustă pentru fiecare item#Unele iteme oferă lăcuste speciale#{{Damage}} Lăcustele provoacă deaunele lui Isaac înmulțit cu caliatea itemului consumat:#{{Quality0}} - 0.5x#{{Quality1}} - 0.75x#{{Quality2}} - 1.0x#{{Quality3}} - 1.5x#{{Quality4}} - 2.0x"}, -- Abyss
}
EID:updateDescriptionsViaTable(collectibles, EID.descriptions[languageCode].collectibles)

----------- Trinkets ----------

local trinkets = {
	-- Change: added ", {{Trinket135}} A Lighter"
	[53] = {"53", "Tick", "{{HealingRed}} Heals 1 heart when entering a {{BossRoom}} Boss Room#-15% boss health#{{Warning}} Once picked up, it can't be removed#Only removeable with {{Trinket41}} Match Stick, {{Trinket135}} A Lighter, or gulping"}, -- Tick
	-- Change: Changed "12-20 times" to "6-12 times"
	[97] = {"97", "Tonsil", "Taking damage 6-12 times spawns a projectile blocking familiar#Caps at 2 familiars"}, -- Tonsil
	-- Change: added "Bombs deal 15% more damage"
	[133] = {"133", "Short Fuse", "Isaac's bombs explode faster#Bombs deal 15% more damage"}, -- Short Fuse
	-- Change: "2%" to "5%"
	[104] = {"104", "Wish Bone", "5% chance to get destroyed and spawn a pedestal item when hit"}, -- Wish Bone
	-- Change: "2%" to "5%"
	[105] = {"105", "Bag Lunch", "{{Collectible22}} 5% chance to get destroyed and spawn Lunch when hit"}, -- Bag Lunch
}
EID:updateDescriptionsViaTable(trinkets, EID.descriptions[languageCode].trinkets)

---------- Cards ----------

local cards = {
	-- Change: Complete rewrite
	[38] = {"38", "Berkano", "{{Collectible706}} Summons 3 Abyss locusts for the room"}, -- Berkano
}
EID:updateDescriptionsViaTable(cards, EID.descriptions[languageCode].cards)


---------- Conditions ----------
EID.descriptions[languageCode].ConditionalDescs["5.100.566"] = nil -- Dream Catcher (Greed) - In Rep+, the dream preview works in greed mode as well, so no changes needed

-- Special Locust effects when Item was eaten by Abyss. Entries here will override the auto-generated descriptions
local abyssSynergies = {
	[706] = "Spawns 16 locusts with different colors and effects", -- Abyss
}

-- Remove all entries from Repentance file, and only add special descriptions relevant to Repentance+
EID.descriptions[languageCode].abyssSynergies = {}
EID:updateDescriptionsViaTable(abyssSynergies, EID.descriptions[languageCode].abyssSynergies)


-- If Debug enabled, add overwrite tables to the languagepack in order for the language completion script to be able to compare them
if EID.enableDebug then
	EID.descriptions[languageCode].repPlusCollectibles = collectibles
	EID.descriptions[languageCode].repPlusTrinkets = trinkets
end