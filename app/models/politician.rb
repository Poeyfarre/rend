class Politician < ApplicationRecord
    has_many :scales
    has_many :users, through: :scales

    def average
        divisor = self.scales.count
        total = 0
         self.scales.each do |scale|
            total += scale.rating
         end
         avg = total / divisor
         avg
    end 
end
