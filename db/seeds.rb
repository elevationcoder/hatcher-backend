# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flock.create([
    {name: 'One', quantity: 8, breed: "White Leghorn", diet: "Corn Meal"},
    {name: 'Two', quantity: 12, breed: "Road Island Red", diet: "Mixed Grain"},
    {name: 'Three', quantity: 10, breed: "Black Sussex", diet: "Grain, Clamshell"},
    {name: 'Four', quantity: 15, breed: "Brown Links", diet: "Oatmeal, Corn, Seed"}
])

EggBundle.create!([
    {flock_id: 1, batch_number: 1, amount: 7, amount_fertilized: 4, amount_hatched: 3, start_date: Date.today, first_hatch: Date.today, init_temp: 99.5, init_humid: 50, lockdown_temp: 100.0, lockdown_humid: 70},
    {flock_id: 3, batch_number: 2, amount: 9, amount_fertilized: 8, amount_hatched: 5, start_date: Date.today, first_hatch: Date.today, init_temp: 99.5, init_humid: 60, lockdown_temp: 100.2, lockdown_humid: 65},
    {flock_id: 2, batch_number: 3, amount: 8, amount_fertilized: 6, amount_hatched: 3, start_date: Date.today, first_hatch: Date.today, init_temp: 99.8, init_humid: 55, lockdown_temp: 100.4, lockdown_humid: 68},
    {flock_id: 4, batch_number: 4, amount: 7, amount_fertilized: 5, amount_hatched: 2, start_date: Date.today, first_hatch: Date.today, init_temp: 99.0, init_humid: 60, lockdown_temp: 99.8, lockdown_humid: 80}
])