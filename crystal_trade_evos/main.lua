return function(mod)
  -- Gold's Gen 2 engine exposes registered evolution-method ids in the
  -- `evolution_methods` registry. Register one custom method id for the
  -- level+held-item evolution rows used in this example, then render the
  -- rows in the accepted Gen 2 shape with `method`, `level`, `item`, and `into`.
  mod.content.evolution_methods:register("EVOLVE_LEVEL_ITEM", {
    check = function(entry, mon, _)
      if ((mon and mon.level) or 1) < (entry.level or 0) then
        return false, "level"
      end
      if not entry.item then
        return false, "missing item"
      end
      if (mon and mon.item) ~= entry.item then
        return false, "wrong item"
      end
      return true
    end,
  })

  -- Gen 2 species evolutions carry the nested `into` field, not the
  -- old `species` field used by the flat Gen 1 record pattern.
  mod.content.pokemon:patch("KADABRA", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 36, into = "ALAKAZAM" } }
  })

  mod.content.pokemon:patch("MACHOKE", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 36, into = "MACHAMP" } }
  })

  mod.content.pokemon:patch("GRAVELER", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 36, into = "GOLEM" } }
  })

  mod.content.pokemon:patch("HAUNTER", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 36, into = "GENGAR" } }
  })

  -- Held-item plus level evolutions use a custom Gen 2 method id registered
  -- above, because the base engine does not ship a standard LEVEL_ITEM id.
  mod.content.pokemon:patch("ONIX", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 30, into = "STEELIX" } }
  })

  mod.content.pokemon:patch("SCYTHER", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 30, into = "SCIZOR" } }
  })

  mod.content.pokemon:patch("SEADRA", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 32, into = "KINGDRA" } }
  })

  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { method = "EVOLVE_LEVEL", level = 37, into = "SLOWBRO" },
      { method = "EVOLVE_LEVEL", level = 38, into = "SLOWKING" }
    }
  })

  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { method = "EVOLVE_ITEM", item = "WATER_STONE", into = "POLIWRATH" },
      { method = "EVOLVE_LEVEL", level = 30, into = "POLITOED" }
    }
  })

  mod.content.pokemon:patch("PORYGON", {
    evolutions = { { method = "EVOLVE_LEVEL", level = 30, into = "PORYGON2" } }
  })
end