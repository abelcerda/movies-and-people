import React, { useState, useEffect } from "react";
import axios from "axios";

const MoviesList = (props) => {
  useEffect(() => {
    axios.get("/api/v1/movies.json").then((res) => setMovies(res.data));
  }, []);

  const [movies, setMovies] = useState([]);

  return (
    <div>
      <div className="movies-list">
        {movies.map((movie, index) => (
          <div key={index}>
            {movie.title} | {movie.release_year}
          </div>
        ))}
      </div>
    </div>
  );
};
export default MoviesList;
