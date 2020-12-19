# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating mushrooms"

Mushroom.create!(
    name: 'Pink Oyster'
)
Mushroom.create!(
    name: 'Cordyceps Militaris'
)

puts "Created #{Mushroom.count} mushroom(s)"

puts "Creating agar recipes"

AgarRecipe.create!(
    name: 'Add a new one later',
    abbreviation: 'Add a new one later',
    recipe: 'Add a new one later',
    method: 'Add a new one later',
    description: 'Add a new one later'
)
AgarRecipe.create!(
    name: 'Potato Dextrose Agar',
    abbreviation: 'PDA',
    recipe: 'Potato infusion: 200 gm  Dextrose: 20 gm  Agar: 20 gm  Distilled water: 1 litre',
    method: 'To prepare potato infusion, boil 200 g sliced, unpeeled potatoes in 1 liter distilled water for 30 min.
      Filter through cheesecloth, saving effluent, which is potato infusion (or use commercial dehydrated form).
      Note: 200 gm of potato infusion is equivalent to 4.0 gm of potato extract.
      Mix with Dextrose, Agar and Water and boil to dissolve.
      Autoclave 15 min at 121°C.
      Dispense 20-25 ml portions into sterile 15 × 100 mm petri dishes.
      Final pH, 5.6 ± 0.2.',
    description: 'Potato Dextrose Agar with Chloramphenicol is recommended for the selective cultivation of fungi from mixed samples.'
)

AgarRecipe.create!(
    name: 'Light Malt Extract Agar',
    abbreviation: 'LMEA',
    recipe: 'Light Malt Extract(LME): 30gm, Agar: 20gm, Water: Distilled, Purified, or tap: 1litre',
    method: 'Mix LME, Agar and Water and boil to dissolve.
              Autoclave 15 min at 121°C.',
    description: 'Light malt extract agar (LMEA) is the most straightforward and fundamental formula for creating agar. There is nothing fancy about it, only agar-agar, nutrients, and water. Even in its simplicity, the recipe is highly effective and great for beginners.'
)
puts "Created #{AgarRecipe.count} agar recipe(s)"
