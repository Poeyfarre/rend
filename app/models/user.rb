class User < ApplicationRecord
  has_many :politicians, through: :scales
  has_many :scales
  has_many :posts
  validates :district, numericality: { min: 0, max: 14 }
  validates :email, presence: true, uniqueness: true


  has_secure_password

  def local_rep
    Politician.find_by_district(self.district)
  end
end # end of class
