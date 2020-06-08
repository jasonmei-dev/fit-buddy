# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create(username: "Admin", email: "admin@email.com", password: "password")

pooh = User.create(username: "Pooh", email: "pooh@email.com", password: "password")
lift_a = Workout.create(name: "Workout 7", duration_mins: 90, user_id: 2, share_status: true)
pooh.workouts.create(name: "Workout 5", duration_mins: 45, share_status: true, created_at: 25.hours.ago)
pooh.workouts.create(name: "Workout 3", duration_mins: 30, share_status: true, created_at: 50.hours.ago)
pooh.workouts.create(name: "Workout 1", duration_mins: 15, share_status: true, created_at: 70.hours.ago)
lift_b = Workout.create(name: "Workout 8", duration_mins: 90, user_id: 2, share_status: false)
pooh.workouts.create(name: "Workout 6", duration_mins: 45, share_status: false, created_at: 25.hours.ago)
pooh.workouts.create(name: "Workout 4", duration_mins: 30, share_status: false, created_at: 50.hours.ago)
pooh.workouts.create(name: "Workout 2", duration_mins: 15, share_status: false, created_at: 70.hours.ago)



tigger = User.create(username: "Tigger", email: "tigger@email.com", password: "password")
run_a = Workout.create(name: "Workout 7", duration_mins: 90, user_id: 3, share_status: true)
tigger.workouts.create(name: "Workout 5", duration_mins: 45, share_status: true, created_at: 25.hours.ago)
tigger.workouts.create(name: "Workout 3", duration_mins: 30, share_status: true, created_at: 50.hours.ago)
tigger.workouts.create(name: "Workout 1", duration_mins: 15, share_status: true, created_at: 70.hours.ago)
run_b = Workout.create(name: "Workout 8", duration_mins: 90, user_id: 3, share_status: false)
tigger.workouts.create(name: "Workout 6", duration_mins: 45, share_status: false, created_at: 25.hours.ago)
tigger.workouts.create(name: "Workout 4", duration_mins: 30, share_status: false, created_at: 50.hours.ago)
tigger.workouts.create(name: "Workout 2", duration_mins: 15, share_status: false, created_at: 70.hours.ago)


piglet = User.create(username: "Piglet", email: "piglet@email.com", password: "password")
bench_a = Workout.create(name: "Workout 7", duration_mins: 90, user_id: 4, share_status: true)
piglet.workouts.create(name: "Workout 5", duration_mins: 45, share_status: true, created_at: 25.hours.ago)
piglet.workouts.create(name: "Workout 3", duration_mins: 30, share_status: true, created_at: 50.hours.ago)
piglet.workouts.create(name: "Workout 1", duration_mins: 15, share_status: true, created_at: 75.hours.ago)
bench_b = Workout.create(name: "Workout 8", duration_mins: 90, user_id: 4, share_status: false)
piglet.workouts.create(name: "Workout 6", duration_mins: 45, share_status: false, created_at: 25.hours.ago)
piglet.workouts.create(name: "Workout 4", duration_mins: 30, share_status: false, created_at: 50.hours.ago)
piglet.workouts.create(name: "Workout 2", duration_mins: 15, share_status: false, created_at: 75.hours.ago)


Exercise.create(name: "Bench-Press", category: "Chest", description: "Lie face up on a flat bench, and grip a barbell with the hands slightly wider than shoulder-width. Press the feet into the ground and the hips into the bench while lifting the bar off the rack. Slowly lower the bar to the chest by allowing the elbows to bend out to the side. Stop when the elbows are just below the bench, and press feet into the floor to press the weight straight up to return to the starting position.")
Exercise.create(name: "Tricep-Extension", category: "Arms", description: "To begin, stand up with a dumbbell held by both hands. Your feet should be about shoulder width apart from each other. Slowly use both hands to grab the dumbbell and lift it over your head until both arms are fully extended. Lower the dumbbell behind your head in a controlled manner without moving your upper arms. Continue lowering the dumbbell until your elbows reach a 90 degree bend or until your upper arms begin to move backwards. Be sure to avoid making contact with the back of your head. Also, avoid changing the position in your head, torso, upper arms, wrists and feet. Attempt to keep your upper arms vertical to the floor throughout the exercise and your elbows shoulder-width apart.")
Exercise.create(name: "Back-Squat", category: "Legs", description: "Place a barbell in a rack just below shoulder-height. Dip under the bar to put it behind the neck across the top of the back, and grip the bar with the hands wider than shoulder-width apart. Lift the chest up and squeeze the shoulder blades together to keep the straight back throughout the entire movement. Stand up to bring the bar off the rack and step backwards, then place the feet so that they are a little wider than shoulder-width apart. Sit back into hips and keep the back straight and the chest up, squatting down so the hips are below the knees. From the bottom of the squat, press feet into the ground and push hips forward to return to the top of the standing position.")
Exercise.create(name: "Lateral-Lunge", category: "Legs", description: "Stand with the feet hip-width apart holding one dumbbell in each hand with the palms facing each other. Step directly to the right, keeping the right foot parallel to the left as it hits the ground, and push the right hip back while reaching for the right foot with both hands on either side of the right leg. To stand up, push the right foot into the floor while pulling the body back to the center with the inside of the left leg.")
Exercise.create(name: "Bent-Over-Row", category: "Back", description: "Grip a barbell with palms down so that the wrists, elbows, and shoulders are in a straight line. Lift the bar from the rack, bend forward at the hips, and keep the back straight with a slight bend in the knees. Lower the bar towards the floor until the elbows are completely straight, and keep the back flat as the bar is pulled towards the belly button. Then slowly lower the bar to the starting position and repeat.")
Exercise.create(name: "Standing-Shrug", category: "Shoulders", description: "Stand holding dumbbells in your hands with a closed, neutral grip (thumbs around the handles with your palms facing your body). Position the dumbbells alongside your thighs with your elbows fully extended. Assume a split-stance position to stabilize your body, stiffen your torso by contracting your abdominal and core muscles, and depress and retract your scapulae (pull your shoulders down and back). Exhale and slowly shrug your shoulders upward, avoiding any shoulder rotation or elbow flexion (bending). Inhale and gently lower the dumbbells back towards your starting position keeping your elbows extended and neutral grip position. Maintain your split-stance, torso, shoulder and wrist positions.")
Exercise.create(name: "Bicep-Curl", category: "Arms", description: "Hold the barbell with both hands facing up so the wrists, elbows, and shoulders are in a straight line about shoulder-width apart. Lift the barbell toward the shoulders while bending the elbows and keeping them next to the middle of the body. Slowly lower the weight to return to the starting position. Keep chest still, using just the arms for the movement.")
Exercise.create(name: "Side-Plank", category: "Abs", description: "Lie on your side on an exercise mat with your legs extended and the left leg lying directly on the right. Bend your right leg to 90 degrees of flexion while keeping the left leg extended, with the inside surface of your left foot making contact with the mat. Raise your upper body to support yourself on your right arm, with your elbow bent to 90 degrees and positioned directly under your shoulder. Align your head with your spine and keep your hips and right knee in contact with the exercise mat. Exhale, gently contract your abdominal / core muscles to stiffen your spine and lift your hips and right leg off the mat. Your head should be aligned with your spine and your right elbow should remain positioned directly under your shoulder. Inhale and gently return yourself to your starting position. Switch sides and repeat.")
Exercise.create(name: "Russian-Twist", category: "Abs", description: "Lie down on the floor placing your feet either under something that will not move or by having a partner hold them. Your legs should be bent at the knees. Elevate your upper body so that it creates an imaginary V-shape with your thighs. Your arms should be fully extended in front of you perpendicular to your torso and with the hands clasped. This is the starting position. Twist your torso to the right side until your arms are parallel with the floor while breathing out. Hold the contraction for a second and move back to the starting position while breathing out. Now move to the opposite side performing the same techniques you applied to the right side. Repeat for the recommended amount of repetitions.")
Exercise.create(name: "Leg-Lifts", category: "Legs", description: "Lie on your back. Place your hands, palms down, on the floor beside you. Raise your legs off the ground (Exhale as you go). Keep your knees locked throughout the exercise. Hold for 30 seconds, or as long as you can (with some routines, there is only a short contraction/holding period). Return to starting position (Inhale as you go).")


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
