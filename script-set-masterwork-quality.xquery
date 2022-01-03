(: Barotrauma game: set all items to Masterwork quality level :)

(: Use this in BaseX, with your Submarine XML :)

(: If you are new to XQuery as I am :)
(: https://www.xmlmind.com/tutorials/XQueryUpdate/index.html :)

for $x in //Item[@identifier=(
"autoshotgun",
"assaultrifle",
"boardingaxe",
"nucleargun",
"handcannon",
"crowbar",
"crowbarhardened",
"crowbardementonite",
"harpoongun",
"revolver",
"smg",
"divingknife",
"divingknifehardened",
"divingknifedementonite",
"grenadelauncher",
"shotgun",
"stungun",
"shotgununique",
"divingknifeunique",
"smgunique",
"fuelrod",
"thoriumfuelrod",
"fulguriumfuelrod",
"fulguriumfuelrodvolatile",
"weldingfueltank",
"incendiumfueltank",
"oxygentank",
"oxygenitetank",
"batterycell",
"fulguriumbatterycell",
"screwdriver",
"screwdriverhardened",
"screwdriverdementonite",
"wrench",
"wrenchhardened",
"wrenchdementonite",
"uex",
"c4block",
"ic4block",
"compoundn",
"volatilecompoundn",
"stungrenade",
"empgrenade",
"fraggrenade",
"incendiumgrenade",
"weldingtool",
"plasmacutter",
"stunbaton"
)]/Quality/@qualitylevel

return replace value of node $x with "3"

(: Following value adjustment :)
(: DO THIS SEPARATELY! One Query A Time :)

for $x in //Item[@identifier=(
"weldingfueltank",
"incendiumfueltank",
"oxygentank",
"oxygenitetank",
"batterycell",
"fulguriumbatterycell",
"fuelrod"
)]/@condition
return replace value of node $x with "130"


for $x in //Item[@identifier="thoriumfuelrod"]/@condition
return replace value of node $x with "260"

for $x in //Item[@identifier="fulguriumfuelrod"]/@condition
return replace value of node $x with "195"

for $x in //Item[@identifier="fulguriumfuelrodvolatile"]/@condition
return replace value of node $x with "520"

(: Save XML in a new file :)
