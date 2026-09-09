# Trade Evolutions via Level-Up — Pokémon Crystal Recomp Mod

This mod keeps the original trade path available while adding the single-player level and held-item route. In other words, the affected families can evolve either by trading or by reaching the listed level and, where needed, carrying the proper held item.

## Try it

python3 tools/modkit.py validate mods/crystal_trade_evos --base imported
luajit mods/crystal_trade_evos/tests/trade_evos_test.lua

Turn it on with `crystal_trade_evos = true` in the `mods` section of `options.lua`, or use the F10 mod manager.

## What it demonstrates

| Seam | Where |
|---|---|
| `content.pokemon:patch` | `main.lua` — modifying species evolution tables directly in the registry |
| Evolution Triggers | `main.lua` — keeping the trade row and adding level- or level-plus-item rows |

## Evolution Changes

| Pokémon | Evolution | Original Method | New Method |
| :--- | :--- | :--- | :--- |
| **Kadabra** | Alakazam | Trade or level 36 | Trade or level 36 |
| **Machoke** | Machamp | Trade or level 36 | Trade or level 36 |
| **Graveler** | Golem | Trade or level 36 | Trade or level 36 |
| **Haunter** | Gengar | Trade or level 36 | Trade or level 36 |
| **Onix** | Steelix | Trade holding Metal Coat or level 30 holding Metal Coat | Trade holding Metal Coat or level 30 holding Metal Coat |
| **Scyther** | Scizor | Trade holding Metal Coat or level 30 holding Metal Coat | Trade holding Metal Coat or level 30 holding Metal Coat |
| **Poliwhirl** | Politoed | Trade holding King's Rock or level 30 | Trade holding King's Rock or level 30 |
| **Slowpoke** | Slowking | Trade holding King's Rock or level 38 holding King's Rock | Trade holding King's Rock or level 38 holding King's Rock |
| **Seadra** | Kingdra | Trade holding Dragon Scale or level 32 holding Dragon Scale | Trade holding Dragon Scale or level 32 holding Dragon Scale |
| **Porygon** | Porygon2 | Trade holding Up-Grade or level 30 | Trade holding Up-Grade or level 30 |

## Credits

- pret/pokecrystal — vanilla evolution registry definitions.