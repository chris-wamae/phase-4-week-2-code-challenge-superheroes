# PHASE-4-WEEK-2-CODE-CHALLENGE-PIZZAS
This is an api for storing superheroe's names,hero names and the powers they have.

# Application Behaviour(BDD)
The client using the application should be able to: 
1. Get a list of all the heroes currently in the database using GET method through the route /heroes
2. Get a specific hero using GET and the route /heroes/:id
- if the hero is not found return the following: 
{   "error": "Hero not found" }, status:404
3. Get the powers currently in the databse
using GET through the route /powers
4. Get a specific power using GET and the route powers/:id
- if the power does not exist, return the following:
{
  "error": "Power not found"
}
5. Update a power's description currently in the database using PATCH through the route /powers/:id
- if the update is successful return the power in the following format: 
{
  "id": 1,
  "name": "super strength",
  "description": "Updated description"
}
and the appropriate status code

- if the power does not exist return the following:
{
  "error": "Power not found"
} and the appropriate status code.

- if the uodate fails due to vlaidation errros return the following:
{
  "errors": ["validation errors"]
} and the appropriate status code

6. Create a new HeroPower that is associated with an existing hero and power through the POST method and /hero_powers route.It should accept an object with the following properties in the request body:
{
  "strength": "Average",
  "power_id": 1,
  "hero_id": 3
}
If the creation is successful send back the hero with their powers included.

- if the creation is unsuccessful return the following:
{
  "errors": ["validation errors"]
} along with the appropriate status code.

# PSEUDO-CODE
### Tables:
1. heros with the columns name and super_name as strings
2. hero_powers with the columns strength as a string and power_id and hero_id as integers
3. powers with the columns name and description as strings

### Models:
1. Hero model with:
- a has_many relationship to hero_powers
- a has_many through relationship to powers

2. Power model with:
- a has_many relationship to hero_powers
- a has_many through relationship to heros
- a description validation that ensures that it is atleast 20 characters long 


3. Hero_power model with:
- a belongs_to relationship with powers
- a belongs_to relationship  with heros
- a strength validation that ensures it is either "Weak","Strong" or "Average"

### Routes: 
In routes.rb:
rescources :powers, only:[:index,:create,:show,:update]
rescources :heros,only :[:index,:create,:show]
resources :hero_powers, only:[:create]

### Controllers
1. PowersController:
   - has index method that returns all the powers
   - has create method that creates a new power or returns appropriate error 
   - has show method that returns a specific power or  returns appropriate error
   - has update method that returns a specific power or returns appropriate error

2. HerosController
   - has index method that returns all the powers
   - has create method that creates a new power or returns appropriate error 
   - has show method that returns a specific power or  returns appropriate error

3. Hero_powersController
    - has create method that creates a new hero_power or returns appropriate error
    





