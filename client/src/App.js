import logo from "./logo.svg";
import "./App.css";
import MoviesList from "./components/MoviesList";

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>Movies and People</h1>
      </header>
      <MoviesList />
    </div>
  );
}

export default App;
