class Movie < ApplicationRecord
  has_many :credits
  has_many :people, through: :credits

  def directors
    people.where(credits: { role_id: Role.get_director_role })
  end

  def producers
    people.where(credits: { role_id: Role.get_producer_role })
  end

  def casting
    people.where(credits: { role_id: Role.get_cast_member_role })
  end
end
