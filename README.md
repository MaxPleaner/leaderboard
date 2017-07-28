This is a meteor application written with coffeescript.

### Run the server

1. clone this repo
2. install dependencies (`npm install`)
3. start meteor (`meteor`)

### Use the website

1. visit http://localhost:3000
2. create an account
3. see a list of game scores

### Use the API

1. create a user using POST /users/register with params `username`,
   `password`, and `email`. The response will have keys `token`, `tokenExpires`,
   and `id` (user id). There is also a POST /users/login route with the same
   request/response format.
2. get a listing of scores using GET /publications/scores
3. use GET /publications/scores/by_user/<user id> to get scores of a single user
4. use GET /publications/scores/by_game/<game name> to get scores of a single game
3. add a score listing using POST /methods/add_score with params `user_id`,
   `game_name`, and `score`.