class ProductSerializer < ActiveModel::Serializer
  attributes :name, :description, :variants
  def variants
    object.variants.map { |v| { name: v.name, price: v.price }}
  end
end
