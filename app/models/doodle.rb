class Doodle < ActiveRecord::Base
    belongs_to :user
    

    validates :title, presence: true, length: {maximum: 140, 
    too_long: "The title cant be more than 140 you doof"}
    
end
