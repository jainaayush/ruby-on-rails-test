# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

color = Option.create(name: "Color")
size = Option.create(name: "Size")
pattern = Option.create(name: "Pattern")
shape = Option.create(name: "Shape")

color.option_values.create([
  {name: "Blue"}, {name: "Red"}
])

size.option_values.create([
  {name: "Small"}, {name: "Medium"}, {name: "Large"}
])

pattern.option_values.create([
  {name: "Striped"}, {name: "Solid"}
])

shape.option_values.create([
  {name: "Oval"}, {name: "Round"}
])
