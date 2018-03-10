class ProductSerializer < ActiveModel::Serializer
  attributes :name, :sold_out, :category, :under_sale, :price, :sale_price, :sale_text, :created_at, :updated_at
end