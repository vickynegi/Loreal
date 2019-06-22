class TagSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :user_id
end
