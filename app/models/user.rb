class User < ApplicationRecord
  has_many :politicians, through: :scales
  has_many :scales
  has_many :posts

  has_secure_password
  
  # def password 
  #   @password ||= Password.new(password_hash)
  # end

  # def password=(new_password)
  #   @password = Password.create(new_password)
  #   self.password_hash = @password 
  # end

  def local_rep
    Politician.find_by_district(self.district)
  end
end # end of class
