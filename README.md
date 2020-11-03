# Movies and People

Welcome! This is a small application that displays information between movies and the people related to them (directors, producers, cast).

## Technology Stack

* Ruby 2.5
* Ruby on Rails 6.0
* React 17.0
* SQLite 3

It is a Rails-based application and the architecture is fairly simple:
* The RESTful API is built with Rails, exponsing endpoints to read Movies and People.
* The UI client is built with React.

## How to run

1. Clone this repository.
2. In the root folder, install the Rails dependencies (`bundle install`).
3. Create the database (`rake db:create`), run the migrations (`rake db:migrate`), and populate it (`rake db:seeds`).
4. Run the Rails app using port 3001 (`rails s -p 3001`)
5. Open a new terminal and, placed in the `/client` folder, install the React dependencies (`yarn install`).
6. Run the React app (`npm run start`).
7. Open the browser, enter `localhost:3000` and enjoy the magic of the simplicity.

## Endpoints

* `[GET] /api/v1/movies`:     lists the movies and the people related to each one
* `[GET] /api/v1/movies/:id`: shows the movie with id `:id`
* `[GET] /api/v1/people`:     lists the people and the movies related to each one
* `[GET] /api/v1/people/:id`: shows the person with id `:id`

## Future work

* Add task to run the development servers with only one command.
* Enable the other CRUD endpoints.
* Add authentication.
* Add responsiveness.
