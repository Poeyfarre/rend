class User < ApplicationRecord
    has_many :scales
    # has_many :politicians, through: :scales 
    has_many :posts

    def local_rep
      Politician.find_by_district(self.district)
    #     pol_dist = Politician.district
    #     use_dist = User.district
    #     if pol_dist == use_dist
    #         link_to @politician.name, politician_path(@politician) 
    #     end
    end

end
