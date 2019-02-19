# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

foodstyle_categories = FoodstyleCategory.create([{ name: 'Vegan'}, { name: 'Vegetarian'}, { name: 'Sans gluten'}])
meal_categories = MealCategory.create([{ name: 'Dîner'}, { name: 'Dejeuner'}, { name: 'Petit dejeuner'}, { name: 'Brunch'}])
budget_categories = BudgetCategory.create([{ name: 'moins 8€'}, { name: 'entre 9€ et 17€'}, { name: 'entre 18€ et 27€'}, { name: 'entre 28€ et 37€'}, { name: 'plus de 37€'}])
distance_categories = DistanceCategory.create([{ name: 'moins 5 min.'}, { name: 'entre 6 et 15 min.'}, { name: 'plus de 15 min'}])
frequency_categories = FrequencyCategory.create([{ name: '1 fois par semaine'}, { name: '2 fois par semaine'}, { name: '3-5 fois par semaine'}, { name: 'plus de 5 fois par semaine'}])
