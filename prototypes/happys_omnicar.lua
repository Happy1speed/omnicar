local omniCar = table.deepcopy(data.raw.car["car"])
omniCar.name = "omni_car"
omniCar.icon = "__happys_omnicar__/graphics/icons/omniCar-icon.png"
omniCar.icon_size = 128
omniCar.max_health = 600
omniCar.selection_box = {{-0.9,-0.9}, {0.9,0.9}}
omniCar.drawing_box = {{-0.9,-0.9}, {0.9,0.9}}
omniCar.sticker_box = {{-0.5,-0.5}, {0.5,0.5}}
omniCar.selection_priority = 100
omniCar.inventory_size = 80
omniCar.rotation_speed = 0.013
omniCar.rotation_snap_angle = 0.015
omniCar.weight = 700
omniCar.immune_to_tree_impacts = false
omniCar.has_belt_immunity = true
omniCar.effectivity = 0.7
omniCar.braking_power = "900kW"
omniCar.tank_driving = true
omniCar.equipment_grid = "medium-equipment-grid"
omniCar.burner = {
  effectivity = 1.0,
  fuel_category = "chemical",
  fuel_inventory_size = 1,
  smoke = {
    {
      deviation = {
        0.25,
        0.25
      },
      frequency = 200,
      name = "car-smoke",
      position = {
        0,
        1.5
      },
      starting_frame = 0,
      starting_frame_deviation = 60
    }
  },
  render_no_power_icon = true
}
omniCar.resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "impact",
        percent = 30,
        decrease = 100
      },
      {
        type = "acid",
        percent = 40
      }
    }
omniCar.guns = {"tank-machine-gun"}
flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-flammable"}
omniCar.water_reflection = car_reflection(1.0)
omniCar.render_layer = "object"
omniCar.sound_no_fuel = {
    {
      filename = "__base__/sound/fight/car-no-fuel-1.ogg",
      volume = 0.6
    }
}
omniCar.working_sound =
{
  sound =
  {
    filename = "__base__/sound/car-engine.ogg",
    volume = 0.6
  },
  activate_sound =
  {
    filename = "__base__/sound/car-engine-start.ogg",
    volume = 0.6
  },
  deactivate_sound =
  {
    filename = "__base__/sound/car-engine-stop.ogg",
    volume = 0.6
  },
  match_speed_to_activity = true
}
omniCar.stop_trigger = {
  {
    type = "play-sound",
    sound =
    {
      {
        filename = "__base__/sound/car-breaks.ogg",
        volume = 0.0
      }
    }
  }
}
omniCar.minable = {hardness = 0.2, mining_time = 0.5, result = "omnicar-item"}

omniCar.animation =
{
  layers =
  {
    {
      scale = 0.5,
    
      priority = "low",
      width = 201,
      height = 172,
      frame_count = 2,
      direction_count = 64,
      shift = {0, -0.1875},
      animation_speed = 8,
      max_advance = 0.2,
      stripes =
      {
        {
          filename = "__base__/graphics/entity/car/car-1.png",
          height_in_frames = 11,
          width_in_frames = 2
        },
        {
          filename = "__base__/graphics/entity/car/car-2.png",
          height_in_frames = 11,
          width_in_frames = 2
        },
        {
          filename = "__base__/graphics/entity/car/car-3.png",
          height_in_frames = 11,
          width_in_frames = 2
        },
        {
          filename = "__base__/graphics/entity/car/car-4.png",
          height_in_frames = 11,
          width_in_frames = 2
        },
        {
          filename = "__base__/graphics/entity/car/car-5.png",
          height_in_frames = 11,
          width_in_frames = 2
        },
        {
          filename = "__base__/graphics/entity/car/car-6.png",
          height_in_frames = 9,
          width_in_frames = 2
        }
      }
    },
    {
      scale = 0.5,

      priority = "low",
      width = 199,
      height = 147,
      frame_count = 2,
      apply_runtime_tint = true,
      direction_count = 64,
      max_advance = 0.2,
      line_length = 2,
      shift = {0, -0.171875},
      stripes = util.multiplystripes(2,
      {
        {
          filename = "__base__/graphics/entity/car/car-mask-1.png",
          width_in_frames = 1,
          height_in_frames = 13
        },
        {
          filename = "__base__/graphics/entity/car/car-mask-2.png",
          width_in_frames = 1,
          height_in_frames = 13
        },
        {
          filename = "__base__/graphics/entity/car/car-mask-3.png",
          width_in_frames = 1,
          height_in_frames = 13
        },
        {
          filename = "__base__/graphics/entity/car/car-mask-4.png",
          width_in_frames = 1,
          height_in_frames = 13
        },
        {
          filename = "__base__/graphics/entity/car/car-mask-5.png",
          width_in_frames = 1,
          height_in_frames = 12
        }
      })
    },
    {
      scale = 1.0,

      priority = "high",
      width = 114,
      height = 76,
      frame_count = 2,
      draw_as_shadow = true,
      direction_count = 64,
      shift = {0.28125, 0.28125},
      max_advance = 0.2,
      stripes = util.multiplystripes(2,
      {
       {
        filename = "__base__/graphics/entity/car/car-shadow-1.png",
        width_in_frames = 1,
        height_in_frames = 22
       },
       {
        filename = "__base__/graphics/entity/car/car-shadow-2.png",
        width_in_frames = 1,
        height_in_frames = 22
       },
       {
        filename = "__base__/graphics/entity/car/car-shadow-3.png",
        width_in_frames = 1,
        height_in_frames = 20
       }
      })
    }
  }
}


omniCar.turret_animation = {
  layers = {
    {
      animation_speed = 8,
      direction_count = 64,
      frame_count = 1,
      height = 57,
      scale = 0.5,
      line_length = 8,
      priority = "low",
      shift = {0.03125, -0.890625},
      width = 71,
      stripes = {
        {
          filename = "__base__/graphics/entity/car/car-turret-1.png",
          height_in_frames = 32,
          width_in_frames = 1
        },
        {
          filename = "__base__/graphics/entity/car/car-turret-2.png",
          height_in_frames = 32,
          width_in_frames = 1
        }
      }
    },
    {
      direction_count = 64,
      draw_as_shadow = true,
      filename = "__base__/graphics/entity/car/car-turret-shadow.png",
      frame_count = 1,
      height = 31,
      line_length = 8,
      priority = "low",
      shift = {
        0.03125,
        0.03125
      },
      width = 46
    }
  }
}

local omniCarItem = table.deepcopy(data.raw["item-with-entity-data"]["car"])
omniCarItem.name = "omnicar-item"
omniCarItem.icon = "__happys_omnicar__/graphics/icons/omnicar.png"
omniCarItem.icon_size = 128
omniCarItem.place_result = "omni_car"

local omniCarRecipe = table.deepcopy(data.raw.recipe["car"])
omniCarRecipe.enabled = false
omniCarRecipe.icon = "__happys_omnicar__/graphics/icons/omnicar.png"
omniCarRecipe.name = "omnicar-recipe"
omniCarRecipe.icon_size = 128
omniCarRecipe.energy_required = 16
omniCarRecipe.order = "b[personal-transport]-a[z]"

omniCarRecipe.ingredients = {
  {type = "item", name = "engine-unit", amount = 50},
  {type = "item", name = "iron-plate", amount = 60},
  {type = "item", name = "steel-plate", amount = 60},
  {type = "item", name = "advanced-circuit", amount = 10}
}
omniCarRecipe.results = {{type = "item", name = "omnicar-item", amount = 1}}

data:extend{

    {
        effects = {
            {
            recipe = "omnicar-recipe",
            type = "unlock-recipe"
            }
        },
        icon = "__happys_omnicar__/graphics/icons/omniCar-icon.png",
        icon_size = 128,
        name = "omniCar",
        
        prerequisites = {
            "tank"
        },
        type = "technology",
        unit = {
            count = 250,
            ingredients = {
                {
                    "automation-science-pack",
                    1
                  },
                  {
                    "logistic-science-pack",
                    1
                  },
                  {
                    "chemical-science-pack",
                    1
                  }
            },
            time = 30
       },
    },

    omniCar,
    omniCarItem,
    omniCarRecipe

    
}