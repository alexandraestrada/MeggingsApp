require 'bcrypt'
class User
	
  include Mongoid::Document
  before_save :hash_stuff
  attr_accessor :password 
  
  field :username, type: String
  field :email, type: String
  field :salt, type: String
  field :hashed_password, type: String

  private 

 private

  def hash_stuff
  	self.salt = BCrypt::Engine.generate_salt
  	self.hashed_password = BCrypt::Engine.hash_secret(self.password, self.salt)
  	self.password = nil
  end

end
