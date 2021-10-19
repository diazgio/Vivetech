100.times do |i|
  Product.create(
    name: "ProductTest #{i + 1}",
    description: "Random description for seed database #{i + 1}"
  )
end

100.times do |i|
  Product.find_by(id: i+1).variants.create(
    brand: "BrandTest #{i + 1}",
    price: 10.5 +(i)
  )
end
