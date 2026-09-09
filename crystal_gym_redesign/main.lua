return function(mod)
  print("[MOD DEBUG] Loading Crystal Gym Redesign...")

  -- Each patch targets the Gen 2 trainer class and replaces the nested
  -- class member roster list with a one-member list matching the class record.
  -- That matches the schema in src/mods/Schemas.lua and the Gen 2 trainer
  -- class structure documented in docs/mod-api-gen2-compat.md.

  -- 1. Falkner (Flying - Level ~13-15)
  mod.content.trainers:patch("FALKNER", {
    trainers = {
      {
        id = "FALKNER1", name = "FALKNER",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "HOOTHOOT", level = 13, moves = { "TACKLE", "GROWL", "FORESIGHT", "PECK" } },
          { species = "NATU", level = 13, moves = { "PECK", "LEER", "NIGHT_SHADE" } },
          { species = "SPEAROW", level = 14, moves = { "PECK", "GROWL", "LEER", "FURY_ATTACK" } },
          { species = "MURKROW", level = 14, moves = { "PECK", "PURSUIT" } },
          { species = "PIDGEOTTO", level = 15, item = "BERRY", moves = { "TACKLE", "GUST", "MUD_SLAP", "QUICK_ATTACK" } },
        },
      },
    },
  })

  -- 2. Bugsy (Bug - Level ~17-19)
  mod.content.trainers:patch("BUGSY", {
    trainers = {
      {
        id = "BUGSY1", name = "BUGSY",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "SPINARAK", level = 17, moves = { "STRING_SHOT", "SCARY_FACE", "CONSTRICT", "NIGHT_SHADE" } },
          { species = "LEDIAN", level = 17, moves = { "TACKLE", "SUPERSONIC", "COMET_PUNCH" } },
          { species = "PINECO", level = 18, moves = { "TACKLE", "PROTECT", "SELFDESTRUCT", "TAKE_DOWN" } },
          { species = "HERACROSS", level = 18, moves = { "TACKLE", "LEER", "HORN_ATTACK", "ENDURE" } },
          { species = "SCYTHER", level = 19, item = "BERRY", moves = { "QUICK_ATTACK", "LEER", "PURSUIT", "FURY_CUTTER" } },
        },
      },
    },
  })

  -- 3. Whitney (Normal - Level ~21-23)
  mod.content.trainers:patch("WHITNEY", {
    trainers = {
      {
        id = "WHITNEY1", name = "WHITNEY",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "FURRET", level = 21, moves = { "SCRATCH", "DEFENSE_CURL", "QUICK_ATTACK", "FURY_SWIPES" } },
          { species = "TOGETIC", level = 21, moves = { "SWEET_KISS", "CHARM", "METRONOME", "GROWL" } },
          { species = "AIPOM", level = 22, moves = { "TAIL_WHIP", "SAND_ATTACK", "BATON_PASS", "FURY_SWIPES" } },
          { species = "SNUBBULL", level = 22, moves = { "TAIL_WHIP", "CHARM", "BITE", "LICK" } },
          { species = "MILTANK", level = 23, item = "PRZCUREBERRY", moves = { "STOMP", "ATTRACT", "MILK_DRINK", "ROLLOUT" } },
        },
      },
    },
  })

  -- 4. Morty (Ghost - Level ~25-27)
  mod.content.trainers:patch("MORTY", {
    trainers = {
      {
        id = "MORTY1", name = "MORTY",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "GASTLY", level = 25, moves = { "SPITE", "MEAN_LOOK", "CURSE", "NIGHT_SHADE" } },
          { species = "HAUNTER", level = 26, moves = { "SPITE", "MEAN_LOOK", "CURSE", "NIGHT_SHADE" } },
          { species = "MISDREAVUS", level = 26, moves = { "PSYWAVE", "SPITE", "CONFUSE_RAY", "MEAN_LOOK" } },
          { species = "NOCTOWL", level = 26, moves = { "PECK", "FORESIGHT", "HYPNOSIS", "REFLECT" } },
          { species = "GENGAR", level = 27, item = "MINT_BERRY", moves = { "HYPNOSIS", "SHADOW_BALL", "MEAN_LOOK", "DREAM_EATER" } },
        },
      },
    },
  })

  -- 5. Chuck (Fighting - Level ~30-33)
  mod.content.trainers:patch("CHUCK", {
    trainers = {
      {
        id = "CHUCK1", name = "CHUCK",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "PRIMEAPE", level = 30, moves = { "LEER", "KARATE_CHOP", "RAGE", "FURY_SWIPES" } },
          { species = "HITMONLEE", level = 31, moves = { "JUMP_KICK", "FOCUS_ENERGY", "HI_JUMP_KICK", "MIND_READER" } },
          { species = "HITMONCHAN", level = 31, moves = { "PURSUIT", "FIRE_PUNCH", "ICE_PUNCH", "THUNDERPUNCH" } },
          { species = "HITMONTOP", level = 32, moves = { "PURSUIT", "QUICK_ATTACK", "RAPID_SPIN", "COUNTER" } },
          { species = "POLIWRATH", level = 33, item = "BERRY", moves = { "HYPNOSIS", "MIND_READER", "SURF", "DYNAMICPUNCH" } },
        },
      },
    },
  })

  -- 6. Jasmine (Steel - Level ~33-36)
  mod.content.trainers:patch("JASMINE", {
    trainers = {
      {
        id = "JASMINE1", name = "JASMINE",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "MAGNETON", level = 33, moves = { "SUPERSONIC", "SONICBOOM", "THUNDER_WAVE", "THUNDERBOLT" } },
          { species = "SKARMORY", level = 34, moves = { "SAND_ATTACK", "SWIFT", "AGILITY", "FURY_ATTACK" } },
          { species = "SCIZOR", level = 34, moves = { "PURSUIT", "FALSE_SWIPE", "AGILITY", "METAL_CLAW" } },
          { species = "FORRETRESS", level = 35, moves = { "TAKE_DOWN", "RAPID_SPIN", "BIDE", "EXPLOSION" } },
          { species = "STEELIX", level = 36, item = "BURNT_BERRY", moves = { "SCREECH", "SUNNY_DAY", "ROCK_THROW", "IRON_TAIL" } },
        },
      },
    },
  })

  -- 7. Pryce (Ice - Level ~36-39)
  mod.content.trainers:patch("PRYCE", {
    trainers = {
      {
        id = "PRYCE1", name = "PRYCE",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "DEWGONG", level = 36, moves = { "HEADBUTT", "AURORA_BEAM", "REST", "TAKE_DOWN" } },
          { species = "SNEASEL", level = 37, moves = { "QUICK_ATTACK", "SCREECH", "FAINT_ATTACK", "FURY_SWIPES" } },
          { species = "DELIBIRD", level = 37, moves = { "PRESENT" } },
          { species = "JYNX", level = 38, moves = { "POWDER_SNOW", "DOUBLESLAP", "ICE_PUNCH", "MEAN_LOOK" } },
          { species = "PILOSWINE", level = 39, item = "NEVERMELTICE", moves = { "ICY_WIND", "FURY_ATTACK", "MIST", "BLIZZARD" } },
        },
      },
    },
  })

  -- 8. Clair (Dragon - Level ~41-45)
  mod.content.trainers:patch("CLAIR", {
    trainers = {
      {
        id = "CLAIR1", name = "CLAIR",
        trainerType = "TRAINERTYPE_MOVES",
        party = {
          { species = "DRAGONAIR", level = 41, moves = { "DRAGONBREATH", "DRAGON_RAGE", "SLAM", "AGILITY" } },
          { species = "GYARADOS", level = 42, moves = { "DRAGON_RAGE", "BITE", "TWISTER", "HYDRO_PUMP" } },
          { species = "AERODACTYL", level = 43, moves = { "SUPERSONIC", "ANCIENTPOWER", "ROCK_SLIDE", "TAKE_DOWN" } },
          { species = "AMPHAROS", level = 43, moves = { "COTTON_SPORE", "THUNDERPUNCH", "LIGHT_SCREEN", "THUNDER" } },
          { species = "KINGDRA", level = 45, item = "BITTER_BERRY", moves = { "SMOKESCREEN", "SURF", "DRAGONBREATH", "HYPER_BEAM" } },
        },
      },
    },
  })
end