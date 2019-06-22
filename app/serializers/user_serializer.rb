class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :country, :state, :email_id
  has_many :tags
end
