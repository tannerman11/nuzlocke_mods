# Trade Evolutions via Level-Up — Pokémon Crystal Recomp Mod

This mod turns the trade-only evolution chain into level-up or held-item progression. That means the usual generation rules stay intact for the main story, but the missing single-player paths are no longer blocked by a trade requirement.

## Try it

python3 tools/modkit.py validate mods/crystal_trade_evos --base imported
luajit mods/crystal_trade_evos/tests/trade_evos_test.lua

Turn it on with `crystal_trade_evos = true` in the `mods` section of `options.lua`, or use the F10 mod manager.

## What it demonstrates

| Seam | Where |
|---|---|
| `content.pokemon:patch` | `main.lua` — modifying species evolution tables directly in the registry |
| Evolution Triggers | `main.lua` — remapping `EVO_TRADE` to `EVO_LEVEL` and `EVO_HOLD_ITEM` |

## Evolution Changes

| Pokémon | Target Form | Original Method | New Method |
| :--- | :--- | :--- | :--- |
| **Kadabra** | Alakazam | Trade | Level 36 |
| **Machoke** | Machamp | Trade | Level 36 |
| **Graveler** | Golem | Trade | Level 36 |
| **Haunter** | Gengar | Trade | Level 36 |
| **Onix** | Steelix | Trade holding Metal Coat | Level up holding Metal Coat |
| **Scyther** | Scizor | Trade holding Metal Coat | Level up holding Metal Coat |
| **Poliwhirl** | Politoed | Trade holding King's Rock | Level up holding King's Rock |
| **Slowpoke** | Slowking | Trade holding King's Rock | Level up holding King's Rock |
| **Seadra** | Kingdra | Trade holding Dragon Scale | Level up holding Dragon Scale |
| **Porygon** | Porygon2 | Trade holding Up-Grade | Level up holding Up-Grade |

## Credits

- pret/pokecrystal — vanilla evolution registry definitions.