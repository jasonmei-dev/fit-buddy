# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create(username: "Admin", email: "admin@email.com", password: "password")

pooh = User.create(username: "Pooh", email: "pooh@email.com", password: "password1")
lift_a = Workout.create(name: "Workout 7", duration_mins: 90, user_id: 2, share_status: true)
pooh.workouts.create(name: "Workout 5", duration_mins: 45, share_status: true, created_at: 25.hours.ago)
pooh.workouts.create(name: "Workout 3", duration_mins: 30, share_status: true, created_at: 50.hours.ago)
pooh.workouts.create(name: "Workout 1", duration_mins: 15, share_status: true, created_at: 70.hours.ago)
lift_b = Workout.create(name: "Workout 8", duration_mins: 90, user_id: 2, share_status: false)
pooh.workouts.create(name: "Workout 6", duration_mins: 45, share_status: false, created_at: 25.hours.ago)
pooh.workouts.create(name: "Workout 4", duration_mins: 30, share_status: false, created_at: 50.hours.ago)
pooh.workouts.create(name: "Workout 2", duration_mins: 15, share_status: false, created_at: 70.hours.ago)



tigger = User.create(username: "Tigger", email: "tigger@email.com", password: "password2")
run_a = Workout.create(name: "Workout 7", duration_mins: 90, user_id: 3, share_status: true)
tigger.workouts.create(name: "Workout 5", duration_mins: 45, share_status: true, created_at: 25.hours.ago)
tigger.workouts.create(name: "Workout 3", duration_mins: 30, share_status: true, created_at: 50.hours.ago)
tigger.workouts.create(name: "Workout 1", duration_mins: 15, share_status: true, created_at: 70.hours.ago)
run_b = Workout.create(name: "Workout 8", duration_mins: 90, user_id: 3, share_status: false)
tigger.workouts.create(name: "Workout 6", duration_mins: 45, share_status: false, created_at: 25.hours.ago)
tigger.workouts.create(name: "Workout 4", duration_mins: 30, share_status: false, created_at: 50.hours.ago)
tigger.workouts.create(name: "Workout 2", duration_mins: 15, share_status: false, created_at: 70.hours.ago)


piglet = User.create(username: "Piglet", email: "piglet@email.com", password: "password3")
bench_a = Workout.create(name: "Workout 7", duration_mins: 90, user_id: 4, share_status: true)
piglet.workouts.create(name: "Workout 5", duration_mins: 45, share_status: true, created_at: 25.hours.ago)
piglet.workouts.create(name: "Workout 3", duration_mins: 30, share_status: true, created_at: 50.hours.ago)
piglet.workouts.create(name: "Workout 1", duration_mins: 15, share_status: true, created_at: 75.hours.ago)
bench_b = Workout.create(name: "Workout 8", duration_mins: 90, user_id: 4, share_status: false)
piglet.workouts.create(name: "Workout 6", duration_mins: 45, share_status: false, created_at: 25.hours.ago)
piglet.workouts.create(name: "Workout 4", duration_mins: 30, share_status: false, created_at: 50.hours.ago)
piglet.workouts.create(name: "Workout 2", duration_mins: 15, share_status: false, created_at: 75.hours.ago)


Exercise.create(name: "Bench-Press", category: "Chest", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Tricep-Extension", category: "Arms", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Back-Squat", category: "Legs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Lateral-Lunge", category: "Legs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Bent-Over-Row", category: "Back", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Standing-Shrug", category: "Shoulders", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Bicep-Curl", category: "Arms", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Side-Plank", category: "Abs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Russian-Twist", category: "Abs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
Exercise.create(name: "Leg-Lifts", category: "Legs", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")


lift_a.exercise_entries.create(exercise_id: 2, weight_lbs: 50, sets: 4, reps:12, exercise_rating: 5, notes: "Keep Tension! Squeeze at the Top.")
lift_a.exercise_entries.create(exercise_id: 7, weight_lbs: 60, sets: 4, reps: 12, exercise_rating: 5)
lift_b.exercise_entries.create(exercise_id: 4, weight_lbs: 25, sets: 3, reps: 30, exercise_rating: 3)
lift_b.exercise_entries.create(exercise_id: 8, sets: 3, reps: 12, exercise_rating: 4)

run_a.exercise_entries.create(exercise_id: 4, weight_lbs: 25, sets: 3, reps: 20, exercise_rating: 4)
run_a.exercise_entries.create(exercise_id: 8, sets: 3, reps: 12, exercise_rating: 5)
run_b.exercise_entries.create(exercise_id: 8, sets: 8, reps: 12, exercise_rating: 5)
run_b.exercise_entries.create(exercise_id: 4, weight_lbs: 15, sets: 3, reps: 20, exercise_rating: 4)

bench_a.exercise_entries.create(exercise_id: 1, weight_lbs: 225, sets: 4, reps: 12, exercise_rating: 5)
bench_a.exercise_entries.create(exercise_id: 3, weight_lbs: 225, sets: 4, reps: 12, exercise_rating: 4)
bench_b.exercise_entries.create(exercise_id: 1, weight_lbs: 250, sets: 6, reps: 3, exercise_rating: 5)
bench_b.exercise_entries.create(exercise_id: 3, weight_lbs: 315, sets: 6, reps: 8, exercise_rating: 4)
