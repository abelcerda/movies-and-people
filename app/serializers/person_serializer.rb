class PersonSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :movies_as_director, :movies_as_producer, :movies_as_actor_actress

  def movies_as_director
    map_movies(object.movies_as_director)
  end

  def movies_as_producer
    map_movies(object.movies_as_producer)
  end

  def movies_as_actor_actress
    map_movies(object.movies_as_actor_actress)
  end

  private

  def map_movies(movies_objects)
    movies_objects.map { |movie_obj|
      {
        id: movie_obj.id,
        title: movie_obj.title,
        release_year: movie_obj.release_year
      }
    }
  end
end
