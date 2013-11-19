# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


["Personals", "For Sale", "Garage Sales", "Entertainment"].each do |category|
  Category.create(:name => category) unless Category.exists?(:name => category)
end


20.times do
  Classified.create(:title => Faker::Lorem.sentence, :description => Faker::Lorem.paragraphs.join("\n"), :price => rand(1000), :category => Category.all.sample)
end

