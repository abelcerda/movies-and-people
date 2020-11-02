import React, { useState, useEffect } from "react";
import axios from "axios";
import "./App.css";
import MoviesList from "./components/MoviesList";

function App() {
  const [movies, setMovies] = useState([]);

  useEffect(() => {
    axios.get("/api/v1/movies.json").then((res) => setMovies(res.data));
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <h1>Movies and People</h1>
      </header>
      <MoviesList movies={movies} />
    </div>
  );
}

export default App;
