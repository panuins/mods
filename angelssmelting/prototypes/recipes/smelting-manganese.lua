local intermediatemulti = angelsmods.marathon.intermediatemulti

data:extend(
{
  --MANGANESE
  -- SMELTING INTERMEDIATE
  {
    type = "recipe",
    name = "manganese-ore-processing",
    category = "ore-processing",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"manganese-ore", 4}
    },
    results =
    {
      {type="item", name="processed-manganese", amount=2},
    },
    icon_size = 32,
    order = "b[processed-manganese]",
  },
  {
    type = "recipe",
    name = "manganese-processed-processing",
    category = "pellet-pressing",
    subgroup = "angels-manganese",
    energy_required = 2,
    enabled = "false",
    ingredients =
    {
      {"processed-manganese", 3}
    },
    results =
    {
      {type="item", name="pellet-manganese", amount=4},
    },
    icon_size = 32,
    order = "c[pellet-manganese]",
  },
  {
    type = "recipe",
    name = "pellet-manganese-smelting",
    category = "chemical-smelting",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="pellet-manganese", amount=8},
      {type="fluid", name="gas-natural-1", amount=60},
    },
    results =
    {
      {type="item", name="solid-manganese-oxide", amount=24},
    },
    icon_size = 32,
    order = "d[solid-manganese-oxide]",
  },
  {
    type = "recipe",
    name = "processed-manganese-smelting",
    category = "chemical-smelting",
    subgroup = "angels-manganese",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="processed-manganese", amount=4},
      {type="fluid", name="liquid-sulfuric-acid", amount=40},
    },
    results =
    {
      {type="item", name="cathode-manganese", amount=12},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/cathode-manganese.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[cathode-manganese]-a",
  },
  {
    type = "recipe",
    name = "solid-manganese-oxide-smelting",
    category = "chemical-smelting",
    subgroup = "angels-manganese",
    energy_required = 6,
    enabled = "false",
    ingredients =
    {
      {type="item", name="solid-manganese-oxide", amount=12},
      {type="item", name="ingot-iron", amount=4},
      {type="fluid", name="liquid-sulfuric-acid", amount=40},
    },
    results =
    {
      {type="item", name="cathode-manganese", amount=12},
      {type="item", name="solid-iron-hydroxide", amount=4},
    },
    main_product= "cathode-manganese",
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/cathode-manganese.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "e[cathode-manganese]-b",
  },
  -- SMELTING RESULTS
  {
    type = "recipe",
    name = "manganese-ore-smelting",
    category = "blast-smelting",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="manganese-ore", amount=24},
      {type="item", name="solid-coke", amount=6},
    },
    results =
    {
      {type="item", name="ingot-manganese", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-manganese.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_1.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-manganese]-a",
  },
  {
    type = "recipe",
    name = "cathode-manganese-smelting",
    category = "blast-smelting",
    subgroup = "angels-manganese",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cathode-manganese", amount=24},
    },
    results =
    {
      {type="item", name="ingot-manganese", amount=24},
    },
    icons = {
      {
        icon = "__angelssmelting__/graphics/icons/ingot-manganese.png",
      },
      {
        icon = "__angelspetrochem__/graphics/icons/num_2.png",
        tint = angelsmods.smelting.number_tint,
        scale = 0.32,
        shift = {-12, -12},
      },
    },
    icon_size = 32,
    order = "f[ingot-manganese]-b",
  },
  -- CASTING INTERMEDIATE
  {
    type = "recipe",
    name = "molten-manganese-smelting",
    category = "induction-smelting",
    subgroup = "angels-manganese-casting",
    energy_required = 4,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ingot-manganese", amount=12},
    },
    results =
    {
      {type="fluid", name="liquid-molten-manganese", amount=120},
    },
    icon_size = 32,
    order = "g[liquid-molten-manganese]",
  },
  -- CASTING RESULT
  {
    type = "recipe",
    name = "angels-plate-manganese",
    category = "casting",
    subgroup = "angels-manganese-casting",
    normal =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-manganese", amount=40}
      },
      results =
      {
        {type="item", name="angels-plate-manganese", amount=4}
      },
    },
    expensive =
    {
      enabled = "false",
      energy_required = 4,
      ingredients =
      {
        {type="fluid", name="liquid-molten-manganese", amount=50 * intermediatemulti}
      },
      results =
      {
        {type="item", name="angels-plate-manganese", amount=4}
      },
    },
    icon_size = 32,
    order = "j",
  },
}
)