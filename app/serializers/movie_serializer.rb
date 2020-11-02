class MovieSerializer < ActiveModel::Serializer
  attributes :id, :title, :release_year, :directors, :producers, :casting

  def directors
    map_people(object.directors)
  end

  def producers
    map_people(object.producers)
  end

  def casting
    map_people(object.casting)
  end

  private

  def map_people(people_objects)
    people_objects.pluck(:id, :first_name, :last_name).map { |id, first_name, last_name|
      {
        id: id,
        first_name: first_name,
        last_name: last_name
      }
    }
  end
end
