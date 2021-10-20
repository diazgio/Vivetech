class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :country, :year, :stock, :variants
  def variants
    object.variants.map { |v| { name: v.name, price: v.price,  supplier: v.supplier, guarantee: v.guarantee }}
  end
end
