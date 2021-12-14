class Movie < ApplicationRecord
  belongs_to :studio
  has_many :actors



  def actor_average_age
  end 
end
