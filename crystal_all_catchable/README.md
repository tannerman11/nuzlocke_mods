# Catch 'Em All (Pre-E4 Johto)

This mod fills in the missing Johto encounters before the Elite Four. It pulls in the route- and dungeon-level species that were left out of the base data, including a few version-gated and Kanto-only catches, so the early game has a fuller base roster.

Turn it on with `crystal_all_catchable = true` in the `mods` section of `options.lua`, or use the F10 mod manager.

## Design Philosophy & Rule Constraints

1. **Base Forms Only:** Fully evolved forms and trade evolutions are omitted. You catch the unevolved base species (e.g., Larvitar, Houndour, Gastly) and train them up yourself.
2. **Zero Starter/Legendary Inflation:** Starters and Legendaries/Mythicals are completely untouched.
3. **Bypassing Odd Egg RNG:** Species previously locked to a 1-in-7 single-egg gamble (Pikachu, Clefairy, Electabuzz) are given dedicated wild encounters on early/mid-game routes.

## Route Patch Summary

| Location | Added Species | Pool | Rate |
|---|---|---|---|
| **Route 31** | `MAREEP` | Grass | 15% |
| **Dark Cave (Violet)** | `MISDREAVUS`, `DIGLETT` | Grass | 10% / 15% |
| **Route 32** | `MAREEP`, `VULPIX`, `MANKEY` | Grass | 15% / 10% / 10% |
| **Union Cave 1F** | `DIGLETT` | Grass | 20% |
| **Slowpoke Well B2F** | `GRIMER` | Grass | 20% |
| **Route 34** | `PORYGON`, `MR_MIME`, `PIKACHU`, `CLEFAIRY` | Grass | 10% each |
| **Route 35** | `MURKROW`, `SNORLAX` | Grass | 15% / 5% |
| **Route 36** | `HOUNDOUR` | Grass | 15% |
| **Burned Tower 1F** | `SLUGMA` | Grass | 20% |
| **Route 38** | `CHANSEY`, `GIRAFARIG`, `ELECTABUZZ` | Grass | 5% / 10% / 10% |
| **Mt. Mortar (Inside)** | `AERODACTYL` | Grass | 5% |
| **Route 43** | `REMORAID` | Water | 20% |
| **Route 44** | `KANGASKHAN` | Grass | 10% |
| **Whirl Islands (Lugia)**| `OMANYTE`, `KABUTO` | Grass | 15% each |
| **Dark Cave (Blackthorn)**| `LARVITAR` | Grass | 10% |

## Safe Table Patching

The mod uses `:patch` on `content.wild_encounters`. If another mod alters vanilla encounters on a route, `:patch` appends these records to the active table rather than replacing the route from scratch.

```lua
mod.content.wild_encounters:patch("ROUTE_31", {
  grass = {
    { species = "MAREEP", minLevel = 4, maxLevel = 6, rate = 15 }
  }
})