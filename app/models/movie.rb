class Movie < ApplicationRecord
  belongs_to :studio
  has_many :actors



  def actor_average_age
    # for Actor.all do |actor|
    #   age_sum += actor.age
    # end
    # age_sum/(Actor.all.length)
  end
end
