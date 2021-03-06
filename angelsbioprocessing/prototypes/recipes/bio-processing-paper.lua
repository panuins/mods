data:extend(
  {
    {
      type = "recipe",
      name = "cellulose-fiber-raw-wood",
      category = "crafting",
      subgroup = "bio-processing-wood",
      enabled = "true",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood", amount = 2}
      },
      results = {
        {type = "item", name = "cellulose-fiber", amount = 4}
      },
      icon = "__angelsbioprocessing__/graphics/icons/cellulose-fiber-raw-wood.png",
      icon_size = 32,
      order = "b"
    },
    {
      type = "recipe",
      name = "wood-pellets",
      category = "crafting",
      subgroup = "bio-processing-wood",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 12}
      },
      results = {
        {type = "item", name = "wood-pellets", amount = 2}
      },
      icon = "__angelsbioprocessing__/graphics/icons/wood-pellets.png",
      icon_size = 32,
      order = "c"
    },
    {
      type = "recipe",
      name = "wood-bricks",
      category = "crafting",
      subgroup = "bio-processing-wood",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-pellets", amount = 8}
      },
      results = {
        {type = "item", name = "wood-bricks", amount = 4}
      },
      icon = "__angelsbioprocessing__/graphics/icons/wood-bricks.png",
      icon_size = 32,
      order = "d"
    },
    {
      type = "recipe",
      name = "gas-carbon-dioxide-from-wood",
      category = "liquifying",
      subgroup = "bio-processing-wood",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-pellets", amount = 1}
      },
      results = {
        {type = "fluid", name = "gas-carbon-dioxide", amount = 70}
      },
      icon = "__angelspetrochem__/graphics/icons/gas-carbon-dioxide.png",
      icon_size = 32,
      order = "e"
    },
    {
      type = "recipe",
      name = "wood-charcoal",
      category = "smelting",
      subgroup = "bio-processing-wood",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-pellets", amount = 2}
      },
      results = {
        {type = "item", name = "wood-charcoal", amount = 3}
      },
      icon_size = 32,
      order = "f"
    },
    {
      type = "recipe",
      name = "carbon-from-charcoal",
      category = "liquifying",
      subgroup = "bio-processing-wood",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "wood-charcoal", amount = 1},
        {type = "fluid", name = "gas-oxygen", amount = 20}
      },
      results = {
        {type = "item", name = "solid-carbon", amount = 2}
      },
      icon_size = 32,
      order = "g"
    },
    --PULP
    --T1
    {
      type = "recipe",
      name = "solid-wood-pulp",
      category = "crafting",
      subgroup = "bio-paper",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 20},
        {type = "item", name = "solid-alginic-acid", amount = 5}
      },
      results = {
        {type = "item", name = "solid-wood-pulp", amount = 20}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png"
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_1.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "aa"
    },
    --T2 SULFITE PROCESS
    {
      type = "recipe",
      name = "liquid-pulping-liquor",
      category = "advanced-chemistry",
      subgroup = "bio-liquor",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 100},
        {type = "fluid", name = "gas-oxygen", amount = 40},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "fluid", name = "liquid-pulping-liquor", amount = 100}
      },
      --icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
      icon_size = 32,
      order = "ba"
    },
    {
      type = "recipe",
      name = "brown-liquor-recovery",
      category = "liquifying",
      subgroup = "bio-liquor",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-brown-liquor", amount = 50},
        {type = "item", name = "solid-sodium-hydroxide", amount = 2}
      },
      results = {
        {type = "item", name = "solid-sodium-sulfate", amount = 1},
        {type = "fluid", name = "water-red-waste", amount = 50}
      },
      icons = {
        {
          icon = "__angelspetrochem__/graphics/icons/solid-sodium-sulfate.png"
        },
        {
          icon = "__angelsbioprocessing__/graphics/icons/liquid-brown-liquor.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "bb"
    },
    {
      type = "recipe",
      name = "sulfite-pulping",
      category = "advanced-chemistry",
      subgroup = "bio-paper",
      enabled = "false",
      energy_required = 6,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 20},
        {type = "fluid", name = "liquid-pulping-liquor", amount = 75},
        {type = "fluid", name = "gas-ammonia", amount = 25},
        {type = "fluid", name = "water", amount = 50}
      },
      results = {
        {type = "item", name = "solid-wood-pulp", amount = 25},
        {type = "fluid", name = "liquid-brown-liquor", amount = 75}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png"
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_2.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "ab"
    },
    --T3 KRAFT PROCESS (SULFATE PROCESS)
    {
      type = "recipe",
      name = "liquid-white-liquor",
      category = "liquifying",
      subgroup = "bio-liquor",
      enabled = "false",
      energy_required = 2,
      ingredients = {
        {type = "item", name = "solid-sodium-hydroxide", amount = 2},
        {type = "item", name = "solid-sodium-sulfate", amount = 2},
        {type = "fluid", name = "water", amount = 40}
      },
      results = {
        {type = "fluid", name = "liquid-white-liquor", amount = 40}
      },
      --icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png",
      icon_size = 32,
      order = "caa"
    },
    {
      type = "recipe",
      name = "kraft-recovery",
      category = "liquifying",
      subgroup = "bio-liquor",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "fluid", name = "liquid-black-liquor", amount = 40}
      },
      results = {
        {type = "fluid", name = "liquid-green-liquor", amount = 40} --+energy gain
      },
      icon = "__angelsbioprocessing__/graphics/icons/liquid-green-liquor.png",
      icon_size = 32,
      order = "cb"
    },
    {
      type = "recipe",
      name = "kraft-causting",
      category = "chemistry",
      subgroup = "bio-liquor",
      enabled = "false",
      energy_required = 6,
      ingredients = {
        {type = "fluid", name = "liquid-green-liquor", amount = 60},
        {type = "fluid", name = "water", amount = 60},
        {type = "item", name = "solid-lime", amount = 4}
      },
      results = {
        {type = "fluid", name = "liquid-white-liquor", amount = 55},
        {type = "item", name = "solid-limestone", amount = 4}
      },
      icon = "__angelsbioprocessing__/graphics/icons/liquid-white-liquor.png",
      icon_size = 32,
      order = "cab"
    },
    {
      type = "recipe",
      name = "kraft-cooking-washing",
      category = "liquifying",
      subgroup = "bio-paper",
      enabled = "false",
      energy_required = 6,
      ingredients = {
        {type = "item", name = "cellulose-fiber", amount = 20},
        {type = "fluid", name = "liquid-white-liquor", amount = 40}
      },
      results = {
        {type = "item", name = "solid-wood-pulp", amount = 30},
        {type = "fluid", name = "liquid-black-liquor", amount_min = 35, amount_max = 40}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-wood-pulp.png"
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_3.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "ac"
    },
    --PAPER BLEACHING
    {
      type = "recipe",
      name = "paper-bleaching-1",
      category = "crafting",
      subgroup = "bio-paper",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-wood-pulp", amount = 2}
      },
      results = {
        {type = "item", name = "solid-paper", amount = 4}
      },
      --main_product = "solid-paper",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-paper.png"
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_1.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "ba"
    },
    {
      type = "recipe",
      name = "paper-bleaching-2",
      category = "liquifying",
      subgroup = "bio-paper",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-wood-pulp", amount = 2},
        {type = "item", name = "solid-sodium-hydroxide", amount = 2},
        {type = "fluid", name = "gas-chlorine", amount = 60}
      },
      results = {
        {type = "item", name = "solid-paper", amount = 5},
        {type = "item", name = "solid-sodium-hypochlorite", amount = 2}
      },
      --main_product = "solid-paper",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-paper.png"
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_2.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "bb"
    },
    {
      type = "recipe",
      name = "paper-bleaching-3",
      category = "advanced-chemistry",
      subgroup = "bio-paper",
      enabled = "false",
      energy_required = 4,
      ingredients = {
        {type = "item", name = "solid-wood-pulp", amount = 2},
        {type = "item", name = "solid-sodium-hydroxide", amount = 2},
        {type = "fluid", name = "gas-oxygen", amount = 60},
        {type = "fluid", name = "gas-sulfur-dioxide", amount = 40},
        {type = "fluid", name = "water", amount = 100}
      },
      results = {
        {type = "item", name = "solid-paper", amount = 6},
        {type = "item", name = "solid-sodium-carbonate", amount = 2},
        {type = "fluid", name = "water-yellow-waste", amount = 100}
      },
      --main_product = "solid-paper",
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/solid-paper.png"
        },
        {
          icon = "__angelspetrochem__/graphics/icons/num_3.png",
          tint = angelsmods.bioprocessing.number_tint,
          scale = 0.32,
          shift = {-12, -12}
        }
      },
      icon_size = 32,
      order = "bc"
    }
  }
)
