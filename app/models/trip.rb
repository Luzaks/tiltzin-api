class Trip < ApplicationRecord
    belongs_to :destiny
    belongs_to :user
  
    validates_presence_of :date
end
