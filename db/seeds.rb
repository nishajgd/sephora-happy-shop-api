# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_list = [
  [ "Music Flower Long Lasting Gel Eyeliner", 0, "Makeup - Eyeliners", 1, "180", "180", "69%"],
  [ "ELV Cat Smokey Eyes Makeup Eyeliner Stencils", 0, "Makeup - Eyeliners", 1, "100", "100", "20%"],
  [ "Maybelline Hyper Glossy Liquid Liner", 0, "Makeup - Eyeliners", 1, "190", "190", "28%"],
  [ "L'oreal Paris Kajal Magique", 0, "Makeup - Eyeliners", 1, "120", "120", "50%"],
  [ "Yanqina Precision Liquid Waterproof Lash Eyeliner Pencil", 0, "Makeup - Eyeliners", 1, "80", "80", "30	%"],
  [ "Lakme Eyeconic Fine Tip Liner Pen", 1, "Makeup - Eyeliners", 1, "280", "280", "10%"],
  [ "Sivanna Shimmer Highlighter", 0, "Makeup - Eyeshadow", 1, "280", "280", "70%"],
  [ "Maybelline New York 24K Gold Nude Palette", 0, "Makeup - Eyeshadow", 1, "80", "80", "34%"],
  [ "48 Color Eye Shadow Compact Blusher Etc", 0, "Makeup - Eyeshadow", 1, "180", "180", "15%"],
  [ "ADS Color Series Makeup Kit ", 0, "Makeup - Eyeshadow", 1, "100", "100", "10%"],
  [ "Makeup Revolution BBB Fortune Favours Eyeshadow", 1, "Makeup - Eyeshadow", 1, "120", "120", "40%"]
]

product_list.each do |name, sold_out, category, under_sale, price, sale_price, sale_text|
  Product.create( name: name, sold_out: sold_out, category: category, price: price, under_sale:under_sale, sale_price: sale_price, sale_text: sale_text)
end
