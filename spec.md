# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project - Rails was used for the controller actions and the routing
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) - User has_many workouts, exercises, and exercise_entries
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User) - Workouts belong to a User
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients) - User has_may exercises through workouts; Workout has_many exercises through exercise_entries
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients) - Workout has_many exercises through exercise_entries and Exercises has_many workouts through exercise_entries
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity) - Exercise_entries have weight, reps, sets, notes, and rating attributes that are submitted by the app's user
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - All models have ActiveRecord validations
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - Exercise model has a #by_category scope method that allows the filtering of Exercises by category
- [x] Include signup (how e.g. Devise) - Used bcrypt
- [x] Include login (how e.g. Devise) - Used bcrypt
- [x] Include logout (how e.g. Devise) - Used bcrypt
- [x] Include third party signup/login (how e.g. Devise/OmniAuth) - used OmniAuth with GitHub
- [x] Include nested resource show or index (URL e.g. users/2/recipes) - An example of a nested route in this app is users/2/workouts/1
- [x] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new) - An example of a nested "new" form is users/2/workouts/new
- [x] Include form display of validation errors (form URL e.g. /recipes/new) - All forms other than sessions re-renders the form and invalid submission and displays list of validation errors.

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate
