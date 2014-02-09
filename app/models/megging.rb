class Megging
  include Mongoid::Document
  field :name, type: String
  field :color, type: String
  field :size, type: String
  field :photo_url, type: String
  field :tightness, type: String

  has_and_belongs_to_many :shopping_carts
end
