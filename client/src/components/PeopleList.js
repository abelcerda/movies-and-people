import React from "react";
import styles from "./shared-styles.module.css";

function mapMovieData(movies) {
  return (
    movies
      .map(({ title, release_year }) => `${title} (${release_year})`)
      .join(", ") || "None"
  );
}

const PeopleList = ({ people }) => (
  <div className={styles.container}>
    <h2>People</h2>
    <div className={styles.content}>
      {people.map((person, index) => (
        <div key={index} className={styles.item}>
          <span className={styles.itemTitle}>
            {person.first_name + " " + person.last_name}
          </span>
          <div className={styles.itemContent}>
            <span className={styles.itemSubtitle}>
              Movies as Director:{" "}
              <b>{mapMovieData(person.movies_as_director)}</b>
            </span>
            <span className={styles.itemSubtitle}>
              Movies as Producer{" "}
              <b>{mapMovieData(person.movies_as_producer)}</b>
            </span>
            <span className={styles.itemSubtitle}>
              Movies as Actor/Actress{" "}
              <b>{mapMovieData(person.movies_as_actor_actress)}</b>
            </span>
          </div>
        </div>
      ))}
    </div>
  </div>
);
export default PeopleList;
