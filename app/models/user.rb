class User < ApplicationRecord
  has_many :tags
  accepts_nested_attributes_for :tags, :allow_destroy => true

  def tag_data(params)
    self.tags.create(params.permit!)
  end
end
