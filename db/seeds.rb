require "faker"

puts "Clearing db..."
Dish.destroy_all

puts "Creating dishes..."

40.times do
    Dish.create!(
        name: Faker::Food.dish,
        tagline: "#{Faker::Food.ingredient}, #{Faker::Food.vegetables} and #{Faker::Food.spice}",
        description: Faker::Food.description,
        category: Dish::CATEGORIES.sample,
        price: rand(10..40)
    )
end

puts "Done!"
