100.times do |i|
  Product.create(
    name: "ProductTest #{i + 1}",
    description: "Random description for seed database #{i + 1}",
    country: "Country N°#{i+1}",
    year: 2019 + i,
    stock: 1000 + i
  )
end

100.times do |i|
  if i == 0
    val = true
  elsif i.odd?
    val = false
  else
    val = true
  end
  
  Product.find_by(id: i+1).variants.create(
    brand: "BrandTest #{i + 1}",
    price: 10.5 +(i),
    supplier: "Supplier #{i +1}",
    guarantee: val
  )
  
end
