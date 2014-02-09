class ShoppingCart
  include Mongoid::Document
  
  field :user_id, type: String

  belongs_to :user
end
