class Trip < ApplicationRecord
  belongs_to :destiny
  belongs_to :user

  validates_presence_of :date
  validates_presence_of :user_id
  validates_presence_of :destiny_id
end
