puts "Destroying restaurants..."
Restaurant.destroy_all
puts "Creating restaurants..."

Restaurant.create!(
  name: "Le Casserole",
  address: "Largo do Arouche, 346 - República, São Paulo/SP"
)
Restaurant.create!(
  name: "A Casa Do Porco",
  address: "Rua Araújo, nº 124, Centro – São Paulo/SP"
)
puts "Finished!"