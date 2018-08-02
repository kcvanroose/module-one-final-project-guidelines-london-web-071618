require 'pry'

#
# #PLAYERS
# sarah = Player.create(name: 'Sarah')
# #support
# casey = Player.create(name: 'Casey')
# #damage #support
# maduri = Player.create(name: 'Maduri')
# #tank
# luoana = Player.create(name: 'Luoana')
# #support
# jo = Player.create(name: 'Jo')
# #damage
# ritz = Player.create(name: 'Ritz')
# #tank
# ramona = Player.create(name: 'Ramona')
# #support #damage
# adham = Player.create(name: 'Adham')
# #damage
# karla = Player.create(name: 'Karla')
# #tank #support
# ali = Player.create(name: 'Ali')
# #support
# brooke = Player.create(name: 'Brooke')
# #damage
# dan = Player.create(name: 'Dan')
# #tank #damage
# niky = Player.create(name: 'Niky')
# #support
# oliver = Player.create(name: 'Oliver')
# #damage
# bhav = Player.create(name: 'Bhav')
# #tank #support #damage
# ryan = Player.create(name: 'Ryan')
# #support



#CHARACTERS - from API

    #
    #
    # data = [
    #     {
    #         "name": "Ana",
    #         "description": "Ana's versatile arsenal allows her to affect heroes all over the battlefield. Her Biotic Rifle rounds and Biotic Grenades heal allies and damage or impair enemies; her sidearm tranquilizes key targets, and Nano Boost gives one of her comrades a considerable increase in power.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "support",
    #         "difficulty": 3,
    #     },
    #     {
    #         "name": "Bastion",
    #         "description": "Repair protocols and the ability to transform between stationary Assault, mobile Recon and devastating Tank configurations provide Bastion with a high probability of victory.",
    #         "health": 200,
    #         "armour": 100,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 1,
    #     },
    #     {
    #         "name": "D.Va",
    #         "description": "D.Va's mech is nimble and powerful\u2014its twin Fusion Cannons blast away with autofire at short range, and she can use its Boosters to barrel over enemies and obstacles, or deflect attacks with her projectile-dismantling Defense Matrix.",
    #         "health": 200,
    #         "armour": 400,
    #         "shield": 0,
    #         "role": "tank",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Genji",
    #         "description": "Genji flings precise and deadly Shuriken at his targets, and uses his technologically-advanced katana to deflect projectiles or deliver a Swift Strike that cuts down enemies.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 3,
    #     },
    #     {
    #         "name": "Hanzo",
    #         "description": "Hanzo's versatile arrows can reveal his enemies or fragment to strike multiple targets. He can scale walls to fire his bow from on high, or summon a titanic spirit dragon.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 3,
    #     },
    #     {
    #         "name": "Junkrat",
    #         "description": "Junkrat's area-denying armaments include a Frag Launcher that lobs bouncing grenades, Concussion Mines that send enemies flying, and Steel Traps that stop foes dead in their tracks.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Lucio",
    #         "description": "On the battlefield, Lucios cutting-edge Sonic Amplifier buffets enemies with projectiles and knocks foes back with blasts of sound. His songs can both heal his team or boost their movement speed, and he can switch between tracks on the fly.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "support",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "McCree",
    #         "description": "Armed with his Peacekeeper revolver, McCree takes out targets with deadeye precision and dives out of danger with eagle-like speed.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Mei",
    #         "description": "Mei's weather-altering devices slow opponents and protect locations. Her Endothermic Blaster unleashes damaging icicles and frost streams, and she can Cryo-Freeze herself to guard against counterattacks, or obstruct the opposing team's movements with an Ice Wall.",
    #         "health": 250,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 3,
    #     },
    #     {
    #         "name": "Mercy",
    #         "description": "Mercy's Valkyrie Suit helps keep her close to teammates like a guardian angel; healing, resurrecting or strengthening them with the beams emanating from her Caduceus Staff.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "support",
    #         "difficulty": 1,
    #     },
    #     {
    #         "name": "Pharah",
    #         "description": "Soaring through the air in her combat armor, and armed with a launcher that lays down high-explosive rockets, Pharah is a force to be reckoned with.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 1,
    #     },
    #     {
    #         "name": "Reaper",
    #         "description": "Hellfire Shotguns, the ghostly ability to become immune to damage, and the power to step between shadows make Reaper one of the deadliest beings on Earth.",
    #         "health": 250,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 1,
    #     },
    #     {
    #         "name": "Reinhardt",
    #         "description": "Clad in powered armor and swinging his hammer, Reinhardt leads a rocket-propelled charge across the battleground and defends his squadmates with a massive energy barrier.",
    #         "health": 300,
    #         "armour": 200,
    #         "shield": 0,
    #         "role": "tank",
    #         "difficulty": 1,
    #     },
    #     {
    #         "name": "Roadhog",
    #         "description": "Roadhog uses his signature Chain Hook to pull his enemies close before shredding them with blasts from his Scrap Gun. He's hardy enough to withstand tremendous damage, and can recover his health with a short breather.",
    #         "health": 600,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "tank",
    #         "difficulty": 1,
    #     },
    #     {
    #         "name": "Soldier: 76",
    #         "description": "Armed with cutting-edge weaponry, including an experimental pulse rifle that\u2019s capable of firing spirals of high-powered Helix Rockets, Soldier: 76 has the speed and support know-how of a highly trained warrior.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 1,
    #     },
    #     {
    #         "name": "Symmetra",
    #         "description": "Symmetra utilizes her light-bending Photon Projector to dispatch adversaries, shield her associates, construct teleportation pads and deploy particle-blasting Sentry Turrets.",
    #         "health": 100,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Torbjorn",
    #         "description": "Torbjorn's extensive arsenal includes a rivet gun and hammer, as well as a personal forge that he can use to build upgradeable turrets and dole out protective armor packs.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Tracer",
    #         "description": "Toting twin pulse pistols, energy-based time bombs, and rapid-fire banter, Tracer is able to \\blink\\\" through space and rewind her personal timeline as she battles to right wrongs the world over.",
    #         "health": 150,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Widowmaker",
    #         "description": "Widowmaker equips herself with whatever it takes to eliminate her targets, including mines that dispense poisonous gas, a visor that grants her squad infra-sight, and a powerful sniper rifle that can fire in fully-automatic mode.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Winston",
    #         "description": "Winston wields impressive inventions\u2014a jump pack, electricity-blasting Tesla Cannon, portable shield projector and more with literal gorilla strength.",
    #         "health": 400,
    #         "armour": 100,
    #         "shield": 0,
    #         "role": "tank",
    #         "difficulty": 2,
    #     },
    #     {
    #         "name": "Zarya",
    #         "description": "Deploying powerful personal barriers that convert incoming damage into energy for her massive Particle Cannon, Zarya is an invaluable asset on the front lines of any battle.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 200,
    #         "role": "tank",
    #         "difficulty": 3,
    #     },
    #     {
    #         "name": "Zenyatta",
    #         "description": "Zenyatta calls upon orbs of harmony and discord to heal his teammates and weaken his opponents, all while pursuing a transcendent state of immunity to damage.",
    #         "health": 50,
    #         "armour": 0,
    #         "shield": 150,
    #         "role": "support",
    #         "difficulty": 3,
    #     },
    #     {
    #         "name": "Sombra",
    #         "description": "Stealth and debilitating attacks make Sombra a powerful infiltrator. Her hacking can disrupt her enemies, ensuring they're easier to take out, while her EMP provides the upper hand against multiple foes at once. Sombra\u2019s ability to Translocate and camouflage herself makes her a hard target to pin down.",
    #         "health": 200,
    #         "armour": 0,
    #         "shield": 0,
    #         "role": "damage",
    #         "difficulty": 3,
    #     },
    #     {
    #         "name": "Orisa",
    #         "description": "Orisa serves as the central anchor of her team, and defends her teammates from the frontline with a protective barrier. She can attack from long range, fortify her own defenses, launch graviton charges to slow and move enemies, and deploy a Supercharger to boost the damage output of multiple allies at once.",
    #         "health": 200,
    #         "armour": 200,
    #         "shield": 0,
    #         "role": "tank",
    #         "difficulty": 2,
    #     }
    # ]
    #

    # counter = 0
    # while counter < 24 do
    # Character.create(data[counter])
    # counter += 1
    # end

    #
    # create_table :games do |t|
    #   t.integer :player_id
    #   t.integer :character_id
    #   t.boolean :win?
    #   t.string :map


# Hanamura
# HOllywood
# Ilios
# Eichewalde
# Kings Row
# Lijang Tower
# Route 66
# Numbani
# Nepas
#
# character - 97 - 120
# player - 81 - 96


# GAMES
# Game.create(player_id: 81, character_id: 103, win?: "false", map: "Dorado")
# Game.create(player_id: 88, character_id: 100, win?: "false", map: "Ilios")
# Game.create(player_id: 83, character_id: 111, win?: "win", map: "Numbani")
# Game.create(player_id: 90, character_id: 97, win?: "win", map: "Nepal")
# Game.create(player_id: 91, character_id: 98, win?: "win", map: "Route_66")
# Game.create(player_id: 85, character_id: 102, win?: "false", map: "Lijang_Tower")
# Game.create(player_id: 96, character_id: 104, win?: "win", map: "Kings_Row")
# Game.create(player_id: 82, character_id: 114, win?: "false", map: "Hollywood")
# Game.create(player_id: 93, character_id: 115, win?: "win", map: "Hanamura")
# Game.create(player_id: 89, character_id: 110, win?: "false", map: "Dorado")
# Game.create(player_id: 83, character_id: 111, win?: "false", map: "Dorado")
# Game.create(player_id: 90, character_id: 112, win?: "false", map: "Route_66")
# Game.create(player_id: 91, character_id: 113, win?: "true", map: "Numbani")
# Game.create(player_id: 95, character_id: 114, win?: "true", map: "Nepal")
# Game.create(player_id: 85, character_id: 115, win?: "false", map: "Ilios")
# Game.create(player_id: 88, character_id: 116, win?: "false", map: "Lijang_Tower")
# Game.create(player_id: 81, character_id: 118, win?: "true", map: "Dorado")
# Game.create(player_id: 82, character_id: 119, win?: "false", map: "Route_66")
# Game.create(player_id: 83, character_id: 120, win?: "false", map: "Ilios")
# Game.create(player_id: 84, character_id: 121, win?: "true", map: "Ilios")
# Game.create(player_id: 83, character_id: 121, win?: "true", map: "Numbani")

#Team
