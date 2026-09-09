# Trade Evolutions via Level-Up — Pokémon Crystal Recomp Mod

This mod adds the requested level routes while leaving the original trade rows in place. The point is to keep the old trade route available and add the single-player level route where the game already has a natural level milestone.

## Try it

python3 tools/modkit.py validate mods/crystal_trade_evos --base imported
luajit mods/crystal_trade_evos/tests/trade_evos_test.lua

Turn it on with `crystal_trade_evos = true` in the `mods` section of `options.lua`, or use the F10 mod manager.

## What it demonstrates

| Seam | Where |
|---|---|
| `content.pokemon:patch` | `main.lua` — modifying species evolution tables directly in the registry |
| Evolution Triggers | `main.lua` — keeping the trade rows and adding level rows alongside them |

## Evolution Changes

| Pokémon | Evolution | Original Method | New Method |
| :--- | :--- | :--- | :--- |
| **Kadabra** | Alakazam | Trade | Trade or level 36 |
| **Machoke** | Machamp | Trade | Trade or level 36 |
| **Graveler** | Golem | Trade | Trade or level 36 |
| **Haunter** | Gengar | Trade | Trade or level 36 |
| **Onix** | Steelix | Trade holding Metal Coat | Trade holding Metal Coat |
| **Scyther** | Scizor | Trade holding Metal Coat | Trade holding Metal Coat |
| **Poliwhirl** | Politoed | Trade holding King's Rock | Trade holding King's Rock |
| **Slowpoke** | Slowking | Trade holding King's Rock | Trade holding King's Rock or level 37 |
| **Seadra** | Kingdra | Trade holding Dragon Scale | Trade holding Dragon Scale |
| **Porygon** | Porygon2 | Trade holding Up-Grade | Trade holding Up-Grade |

## Credits

- pret/pokecrystal — vanilla evolution registry definitions.