(: Barotrauma game: set all items in Weapon Holder to be Invulnerable To Damage :)

(: Use this in BaseX, with your Submarine XML :)

(: If you are new to XQuery as I am :)
(: https://www.xmlmind.com/tutorials/XQueryUpdate/index.html :)

for $x in (
  for $y in
    //Item[@identifier="weaponholder"]/ItemContainer/@contained
  return //Item[@ID=$y]/@invulnerabletodamage
)
return replace value of node $x with "True"
