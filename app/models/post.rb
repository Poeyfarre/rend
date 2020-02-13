class Post < ApplicationRecord
    validates :title, presence: true
    validates :thought, presence: true
    belongs_to :user
    
end
