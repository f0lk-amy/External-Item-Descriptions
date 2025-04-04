# This tool generates the lookup tables we need to display additional informations.
# YOU DONT HAVE TO RUN THIS FILE YOURSELF! THE RESULTING DATA IS SHIPPED WITH THE MOD ALREADY!

import xml.etree.ElementTree as ET

GENERATE_REP_PLUS = False

filePath = "..\\..\\resources-dlc3\\"
writeToFile = "features/eid_xmldata.lua"

if GENERATE_REP_PLUS:
    filePath = "..\\..\\extracted_resources\\resources\\"
    writeToFile = "features/eid_xmldata_rep+.lua"

# take second element for sort
def sortByID(elem):
    return elem["id"]
recipes = []
itempools = {}
itemIDToPool = {}
maxItemID = 0
cardMetadatas = []
pillMetadatas = []
entityNames = []
locusts = []
locustColors = []

recipeIngredients = {}
# Poop, Penny
recipeIngredients["_"] = 29
recipeIngredients["."] = 8
# Red, Soul, Black Heart
recipeIngredients["h"] = 1
recipeIngredients["s"] = 2
recipeIngredients["b"] = 3
# Key, Bomb, Card
recipeIngredients["/"] = 12
recipeIngredients["v"] = 15
recipeIngredients["["] = 21
# Gold Heart, Eternal Heart, Pill
recipeIngredients["g"] = 5
recipeIngredients["e"] = 4
recipeIngredients["("] = 22
# Rotten Heart, Gold Key, Giga Bomb
recipeIngredients["r"] = 7
recipeIngredients["|"] = 13
recipeIngredients["V"] = 17
# Gold Bomb, Bone Heart
recipeIngredients["^"] = 16
recipeIngredients["B"] = 6
# Dice Shard, Cracked Key
recipeIngredients["?"] = 24
recipeIngredients["~"] = 25

# Read recipes.xml
recipesXML = ET.parse(filePath+'recipes.xml').getroot()
for recipe in recipesXML.findall('recipe'):
    input = recipe.get('input')
    convertedInput = []
    for char in input:
        convertedInput.append(recipeIngredients[char])

    convertedInput.sort()
    convertedInput = str(convertedInput).replace(" ","").replace("[","").replace("]","")
    recipes.append({"input": convertedInput, "output": recipe.get('output')})

# Read items_metadata.xml
items_metadataXML = ET.parse(filePath+'items_metadata.xml').getroot()
for item in items_metadataXML.findall('item'):
    id = int(item.get('id'))
    if maxItemID < id:
        maxItemID = id
    itemIDToPool[id] = []

# Read itempools.xml
itempoolsXML = ET.parse(filePath+'itempools.xml').getroot()
currentpool = 0
for pool in itempoolsXML.findall('Pool'):
    items = []
    for item in pool.findall('Item'):
        id = int(item.get('Id'))
        items.append([id,float(item.get('Weight'))])
        itemIDToPool[id].append(currentpool)
    itempools[pool.get("Name")] = items
    currentpool += 1

# Read pocketitems.xml
pocketitemsXML = ET.parse(filePath+'pocketitems.xml').getroot()

for card in pocketitemsXML.findall('card'):
    cardMetadatas.append({ "id": card.get('id'), "mimiccharge": card.get('mimiccharge', 0)})

for rune in pocketitemsXML.findall('rune'):
    cardMetadatas.append({ "id": rune.get('id'), "mimiccharge": rune.get('mimiccharge', 0)})
cardMetadatas.sort(key=sortByID)

for pilleffect in pocketitemsXML.findall('pilleffect'):
    pillMetadatas.append({ "id": pilleffect.get('id'), "mimiccharge": pilleffect.get('mimiccharge', 0), "class":pilleffect.get('class')})
pillMetadatas.sort(key=sortByID)

# Read entities2.xml
entitiesXML = ET.parse(filePath+'entities2.xml').getroot()

for entity in entitiesXML.findall('entity'):
    theID = entity.get('id')
    theName = entity.get('name')
    if entity.get('variant'):
        theID += "." + entity.get('variant')
    if entity.get('subtype') and entity.get('subtype') != "0":
        theID += "." + entity.get('subtype')
    if theName[0] == '#':
        theName = theName[1:].replace('_',' ').title()
    entityNames.append({ "id": theID, "name": theName })

# Read locusts.xml
locustsXML = ET.parse(filePath+'locusts.xml').getroot()
for color in locustsXML.findall('color'):
    name = color.get('name')
    c_r = color.get('r') or 0
    c_g = color.get('g') or 0
    c_b = color.get('b') or 0
    c_or = color.get('or') or 0
    c_og = color.get('og') or 0
    c_ob = color.get('ob') or 0
    locustColors.append({"name": name, "r":c_r, "g":c_g, "b":c_b, "or":c_or, "og":c_og, "ob":c_ob})

for locust in locustsXML.findall('locust'):
    id = locust.get('id')
    # locust entries can have multiple colors defined
    color = locust.get('color') or "default"
    colors = []
    for c in color.split("&"):
        colors.append(c.split("-")[len(c.split("-"))-1])

    scale = locust.get('scale') or 1
    speed = locust.get('speed') or 1

    locustFlags1 = locust.get('locustFlags') or locust.get('locustFlag') or -1
    locustFlags2 = locust.get('locustFlags2') or -1
    locustFlags3 = locust.get('locustFlags3') or -1

    tearFlags1 = locust.get('tearFlags') or -1
    tearFlags2 = locust.get('tearFlags2') or -1
    tearFlags3 = locust.get('tearFlags3') or -1

    procChance1 = locust.get('procChance') or 1
    procChance2 = locust.get('procChance2') or 1
    procChance3 = locust.get('procChance3') or 1
    count = locust.get('count') or 1

    mutexFlags2 = locust.get('mutexFlags2') or 0

    damageMultiplier1 = locust.get('damageMultiplier') or 1
    damageMultiplier2 = locust.get('damageMultiplier2') or 1

    foundExistingLocust = False
    for savedLocust in locusts:
        if savedLocust["id"] == id:
            savedLocust["count"] = savedLocust["count"] + 1
            foundExistingLocust = True
            break

    if not foundExistingLocust:
        locusts.append(
            {
                "id": id,
                "color": colors,
                "scale": scale,
                "speed": speed,
                "count": count,
                "locustFlags1": list(map(int, str(locustFlags1).split(" "))),
                "locustFlags2": list(map(int, str(locustFlags2).split(" "))),
                "locustFlags3": list(map(int, str(locustFlags3).split(" "))),
                "tearFlags1": list(map(int, str(tearFlags1).split(" "))),
                "tearFlags2": list(map(int, str(tearFlags2).split(" "))),
                "tearFlags3": list(map(int, str(tearFlags3).split(" "))),
                "procChance1": procChance1,
                "procChance2": procChance2,
                "procChance3": procChance3,
                "damageMultiplier1": damageMultiplier1,
                "damageMultiplier2": damageMultiplier2,
                "mutexFlags2": mutexFlags2,
            }
        )

# Write xml file

newfile = open(writeToFile, "w")
newfile.write("--This file was autogenerated using 'lookuptable_generator.py' found in the scripts folder\n")
newfile.write("--It will have to be updated whenever the game's item XML files are updated\n")


newfile.write("--The highest item ID found in this specific export of XML data\n")
newfile.write("--Crafting doesn't use the in-game enum, because otherwise array index out-of-bounds errors could occur immediately after a game update\n")
newfile.write("EID.XMLMaxItemID = "+str(maxItemID) + "\n")


newfile.write("--The fixed recipes, for use in Bag of Crafting\n")
newfile.write("EID.XMLRecipes = {")
for recipe in recipes:
    newfile.write("[\""+recipe["input"]+"\"] = "+str(recipe["output"])+", ")
newfile.write("}\n\n")


newfile.write("--The contents of each item pool, and the item's weight, for use in Bag of Crafting\n")
newfile.write("EID.XMLItemPools = {")
for poolName, data in itempools.items():
    newfile.write(""+str(data).replace("[","{").replace("]","}")+", -- "+poolName+"\n")
newfile.write("}\n\n")


newfile.write("--The pools that each item is in, for roughly checking if a given item is unlocked\n")
newfile.write("EID.XMLItemIsInPools = {")
for itemid, data in itemIDToPool.items():
    newfile.write("["+str(itemid)+"] = "+str(data).replace("[","{").replace("]","}")+", ")
newfile.write("}\n\n")


newfile.write("--Metadata found in Pocketitems.xml\n")
newfile.write("EID.cardMetadata = {")
for card in cardMetadatas:
    newfile.write("["+card["id"]+"] = {mimiccharge="+str(card["mimiccharge"])+"}, ")
newfile.write("}\n\n")

newfile.write("EID.pillMetadata = {")
for pill in pillMetadatas:
    newfile.write("["+pill['id']+"] = {mimiccharge="+str(pill['mimiccharge'])+", class=\""+str(pill['class'])+"\"}, ")

newfile.write("}\n\n")

newfile.write("-- locust colors for Abyss\n")
newfile.write("EID.XMLLocustColors = {")
for color in locustColors:
    tempString = ""
    tempString += "[\""+str(color["name"])+"\"] = {"
    tempString += str(color["r"])+", "
    tempString += str(color["g"])+", "
    tempString += str(color["b"])+", "
    tempString += str(color["or"])+", "
    tempString += str(color["og"])+", "
    tempString += str(color["ob"])+"}, "
    newfile.write(tempString)
newfile.write("}\n\n")


newfile.write("-- effect storage for each locust generated by Abyss\n")
newfile.write("EID.XMLLocusts = {")
counter = 0
for locust in locusts:
    counter = counter+1
    tempString = ""
    tempString += "["+str(locust['id'])+"] = {"
    tempString += ""+str(locust['color']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['count'])+", "
    tempString += str(locust['scale'])+", "
    tempString += str(locust['speed'])+", "
    # locustFlags and tearFLags can have space seperated values in them
    tempString += str(locust['locustFlags1']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['locustFlags2']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['locustFlags3']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['tearFlags1']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['tearFlags2']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['tearFlags3']).replace("[","{").replace("]","}")+", "
    tempString += str(locust['procChance1'])+", "
    tempString += str(locust['procChance2'])+", "
    tempString += str(locust['procChance3'])+", "
    tempString += str(locust['damageMultiplier1'])+", "
    tempString += str(locust['damageMultiplier2'])+", "
    tempString += str(locust['mutexFlags2'])
    tempString += "}, "
    if counter > 50:
        newfile.write(tempString+"\n")
        counter = 0
    else:
        newfile.write(tempString)
newfile.write("}\n\n")

newfile.write("--The name of each entity, for use in glitched item descriptions\n")
newfile.write("EID.XMLEntityNames = {")
tempString = ""
counter = 0
for entity in entityNames:
    counter = counter+1
    tempString += "[\""+entity['id']+"\"] = \""+entity['name']+"\", "
    if counter > 100:
        newfile.write(tempString+"\n")
        tempString =""
        counter = 0

newfile.write("}\n\n")

newfile.close()
print("SUCCESS")
