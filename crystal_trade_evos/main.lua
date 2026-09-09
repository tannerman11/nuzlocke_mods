return function(mod)
  -- Gen 2 species evolutions carry the nested `into` field, not the
  -- old `species` field used by the flat Gen 1 record pattern.
  -- Keep the original trade rows and add level-only routes where desired.
  mod.content.pokemon:patch("KADABRA", {
    evolutions = {
      { method = "EVOLVE_TRADE", into = "ALAKAZAM" },
      { method = "EVOLVE_LEVEL", level = 36, into = "ALAKAZAM" },
    }
  })

  mod.content.pokemon:patch("MACHOKE", {
    evolutions = {
      { method = "EVOLVE_TRADE", into = "MACHAMP" },
      { method = "EVOLVE_LEVEL", level = 36, into = "MACHAMP" },
    }
  })

  mod.content.pokemon:patch("GRAVELER", {
    evolutions = {
      { method = "EVOLVE_TRADE", into = "GOLEM" },
      { method = "EVOLVE_LEVEL", level = 36, into = "GOLEM" },
    }
  })

  mod.content.pokemon:patch("HAUNTER", {
    evolutions = {
      { method = "EVOLVE_TRADE", into = "GENGAR" },
      { method = "EVOLVE_LEVEL", level = 36, into = "GENGAR" },
    }
  })

  mod.content.pokemon:patch("ONIX", {
    evolutions = {
      { method = "EVOLVE_TRADE", item = "METAL_COAT", into = "STEELIX" },
    }
  })

  mod.content.pokemon:patch("SCYTHER", {
    evolutions = {
      { method = "EVOLVE_TRADE", item = "METAL_COAT", into = "SCIZOR" },
    }
  })

  mod.content.pokemon:patch("SEADRA", {
    evolutions = {
      { method = "EVOLVE_TRADE", item = "DRAGON_SCALE", into = "KINGDRA" },
    }
  })

  mod.content.pokemon:patch("SLOWPOKE", {
    evolutions = {
      { method = "EVOLVE_TRADE", item = "KINGS_ROCK", into = "SLOWKING" },
      { method = "EVOLVE_LEVEL", level = 37, into = "SLOWBRO" },
    }
  })

  mod.content.pokemon:patch("POLIWHIRL", {
    evolutions = {
      { method = "EVOLVE_ITEM", item = "WATER_STONE", into = "POLIWRATH" },
      { method = "EVOLVE_TRADE", item = "KINGS_ROCK", into = "POLITOED" },
    }
  })

  mod.content.pokemon:patch("PORYGON", {
    evolutions = {
      { method = "EVOLVE_TRADE", item = "UP_GRADE", into = "PORYGON2" },
    }
  })
end