import React, { useState, useEffect } from "react";
import axios from "axios";
import "./App.css";
import MoviesList from "./components/MoviesList";
import PeopleList from "./components/PeopleList";

function App() {
  const [movies, setMovies] = useState([]);
  const [people, setPeople] = useState([]);

  useEffect(() => {
    axios.get("/api/v1/movies.json").then((res) => setMovies(res.data));
    axios.get("/api/v1/people.json").then((res) => setPeople(res.data));
  }, []);

  return (
    <div className="App">
      <header className="App-header">
        <h1>Movies and People</h1>
      </header>
      <MoviesList movies={movies} />
      <PeopleList people={people} />
    </div>
  );
}

export default App;
