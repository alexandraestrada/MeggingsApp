class ShoppingCart
  include Mongoid::Document
  
  field :user_id, type: String

  belongs_to :user
  has_and_belongs_to_many :meggings
end


