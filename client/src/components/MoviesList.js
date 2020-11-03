import React from "react";
import styles from "./shared-styles.module.css";

function mapPersonName(people) {
  return (
    people
      .map(({ first_name, last_name }) => `${first_name} ${last_name}`)
      .join(", ") || "Unknown"
  );
}

const MoviesList = ({ movies }) => (
  <div className={styles.container}>
    <h2>Movies</h2>
    <div className={styles.content}>
      {movies.map((movie, index) => (
        <div key={index} className={styles.item}>
          <span className={styles.itemTitle}>{movie.title}</span>
          <div className={styles.itemContent}>
            <span className={styles.itemSubtitle}>{movie.release_year}</span>
            <span
              className={styles.itemSubtitle}
              title={mapPersonName(movie.directors)}
            >
              Directed by <b>{mapPersonName(movie.directors)}</b>
            </span>
            <span
              className={styles.itemSubtitle}
              title={mapPersonName(movie.producers)}
            >
              Produced by <b>{mapPersonName(movie.producers)}</b>
            </span>
            <span
              className={styles.itemSubtitle}
              title={mapPersonName(movie.casting)}
            >
              Starred by <b>{mapPersonName(movie.casting)}</b>
            </span>
          </div>
        </div>
      ))}
    </div>
  </div>
);
export default MoviesList;
