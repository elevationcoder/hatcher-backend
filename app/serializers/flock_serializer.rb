class FlockSerializer < ActiveModel::Serializer
  attributes :id, :name, :breed, :quantity, :diet

  has_many :egg_bundles
end
