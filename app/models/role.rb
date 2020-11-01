class Role < ApplicationRecord
  has_many :credits

  CAST_MEMBER = 'cast_member'
  PRODUCER = 'producer'
  DIRECTOR = 'director'

  class << self
    def get_director_role
      get_role(DIRECTOR)
    end
  
    def get_producer_role
      get_role(PRODUCER)
    end
  
    def get_cast_member_role
      get_role(CAST_MEMBER)
    end

    private
  
    def get_role(role_name)
      Role.find_by :name => role_name
    end
  end
end
