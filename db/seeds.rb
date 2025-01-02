# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require 'faker'

20.times do
  Student.create!(
    name: Faker::Name.name,
    age: rand(10..50),
    email: Faker::Internet.unique.email,
    phone: Faker::PhoneNumber.cell_phone_with_country_code,
    address: Faker::Address.full_address,
    gender: %w[male female].sample
  )
end

  