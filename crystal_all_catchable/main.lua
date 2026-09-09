return function(mod)
  -- Crystal/Gen 2 reads encounter tables through mod.content.encounters,
  -- where a grass patch is keyed by map and carries `rates` and `slots` keyed by
  -- time of day, while a water patch is keyed by map and carries a scalar
  -- `rate` and one list of slots.

  local rates = { MORN = 25, DAY = 25, NITE = 25 }

  mod.content.encounters:patch("grass", {
    ROUTE_31 = {
      rates = rates,
      slots = { MORN = { { species = "MAREEP", level = 4 } }, DAY = { { species = "MAREEP", level = 4 } }, NITE = { { species = "MAREEP", level = 4 } } },
    },
    DARK_CAVE_VIOLET_ENTRANCE = {
      rates = rates,
      slots = { MORN = { { species = "MISDREAVUS", level = 3 }, { species = "DIGLETT", level = 4 } }, DAY = { { species = "MISDREAVUS", level = 3 }, { species = "DIGLETT", level = 4 } }, NITE = { { species = "MISDREAVUS", level = 3 }, { species = "DIGLETT", level = 4 } } },
    },
    ROUTE_32 = {
      rates = rates,
      slots = { MORN = { { species = "MAREEP", level = 6 }, { species = "VULPIX", level = 6 }, { species = "MANKEY", level = 6 } }, DAY = { { species = "MAREEP", level = 6 }, { species = "VULPIX", level = 6 }, { species = "MANKEY", level = 6 } }, NITE = { { species = "MAREEP", level = 6 }, { species = "VULPIX", level = 6 }, { species = "MANKEY", level = 6 } } },
    },
    UNION_CAVE_1F = {
      rates = rates,
      slots = { MORN = { { species = "DIGLETT", level = 6 } }, DAY = { { species = "DIGLETT", level = 6 } }, NITE = { { species = "DIGLETT", level = 6 } } },
    },
    SLOWPOKE_WELL_B2F = {
      rates = rates,
      slots = { MORN = { { species = "GRIMER", level = 12 } }, DAY = { { species = "GRIMER", level = 12 } }, NITE = { { species = "GRIMER", level = 12 } } },
    },
    ROUTE_34 = {
      rates = rates,
      slots = { MORN = { { species = "PORYGON", level = 10 }, { species = "MR_MIME", level = 11 }, { species = "PIKACHU", level = 10 }, { species = "CLEFAIRY", level = 10 } }, DAY = { { species = "PORYGON", level = 10 }, { species = "MR_MIME", level = 11 }, { species = "PIKACHU", level = 10 }, { species = "CLEFAIRY", level = 10 } }, NITE = { { species = "PORYGON", level = 10 }, { species = "MR_MIME", level = 11 }, { species = "PIKACHU", level = 10 }, { species = "CLEFAIRY", level = 10 } } },
    },
    ROUTE_35 = {
      rates = rates,
      slots = { MORN = { { species = "MURKROW", level = 12 }, { species = "SNORLAX", level = 15 } }, DAY = { { species = "MURKROW", level = 12 }, { species = "SNORLAX", level = 15 } }, NITE = { { species = "MURKROW", level = 12 }, { species = "SNORLAX", level = 15 } } },
    },
    ROUTE_36 = {
      rates = rates,
      slots = { MORN = { { species = "HOUNDOUR", level = 13 } }, DAY = { { species = "HOUNDOUR", level = 13 } }, NITE = { { species = "HOUNDOUR", level = 13 } } },
    },
    BURNED_TOWER_1F = {
      rates = rates,
      slots = { MORN = { { species = "SLUGMA", level = 14 } }, DAY = { { species = "SLUGMA", level = 14 } }, NITE = { { species = "SLUGMA", level = 14 } } },
    },
    ROUTE_38 = {
      rates = rates,
      slots = { MORN = { { species = "CHANSEY", level = 16 }, { species = "GIRAFARIG", level = 16 }, { species = "ELECTABUZZ", level = 16 } }, DAY = { { species = "CHANSEY", level = 16 }, { species = "GIRAFARIG", level = 16 }, { species = "ELECTABUZZ", level = 16 } }, NITE = { { species = "CHANSEY", level = 16 }, { species = "GIRAFARIG", level = 16 }, { species = "ELECTABUZZ", level = 16 } } },
    },
    MT_MORTAR_1F_INSIDE = {
      rates = rates,
      slots = { MORN = { { species = "AERODACTYL", level = 22 } }, DAY = { { species = "AERODACTYL", level = 22 } }, NITE = { { species = "AERODACTYL", level = 22 } } },
    },
    ROUTE_44 = {
      rates = rates,
      slots = { MORN = { { species = "KANGASKHAN", level = 23 } }, DAY = { { species = "KANGASKHAN", level = 23 } }, NITE = { { species = "KANGASKHAN", level = 23 } } },
    },
    WHIRL_ISLAND_LUGIA_CHAMBER = {
      rates = rates,
      slots = { MORN = { { species = "OMANYTE", level = 24 }, { species = "KABUTO", level = 24 } }, DAY = { { species = "OMANYTE", level = 24 }, { species = "KABUTO", level = 24 } }, NITE = { { species = "OMANYTE", level = 24 }, { species = "KABUTO", level = 24 } } },
    },
    DARK_CAVE_BLACKTHORN_ENTRANCE = {
      rates = rates,
      slots = { MORN = { { species = "LARVITAR", level = 20 } }, DAY = { { species = "LARVITAR", level = 20 } }, NITE = { { species = "LARVITAR", level = 20 } } },
    },
  })

  mod.content.encounters:patch("water", {
    ROUTE_43 = {
      rate = 25,
      slots = { { species = "REMORAID", level = 20 } },
    },
  })
end