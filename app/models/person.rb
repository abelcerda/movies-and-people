class Person < ApplicationRecord
  has_many :credits
  has_many :movies, through: :credits, source: :movie

  def movies_as_director
    movies.where(credits: { role_id: Role.get_director_role })
  end

  def movies_as_producer
    movies.where(credits: { role_id: Role.get_producer_role })
  end

  def movies_as_actor_actress
    movies.where(credits: { role_id: Role.get_cast_member_role })
  end
end
