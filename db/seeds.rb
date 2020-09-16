# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Exercise.destroy_all
Muscle.destroy_all

leg = Muscle.create(legs: "Legs")
arms_and_abs = Muscle.create(arms_and_abs: "Arms and Abs")
fullbody = Muscle.create(fullbody: "Full Body")

Exercise.create(name: "Squat", description: "Plant both feet on the floor shoulder-width apart, then bend at both the hips and knees, ensuring that your knees remain in line with your toes. Continue bending your knees until your upper legs are parallel with the floor.", duration: "1 minute", muscle_id: leg.id)

Exercise.create(name: "Tricep Dip", description: "Begin seated on a chair. Place your hands on the edge of the chair under your glutes and directly below your shoulder. Bend your elbows to lower your clutes towareds the mat, ensuring that your shoulders, elbows and wrists remain in line with one another.", duration: "1 minute", muscle_id: arms_and_abs.id)

Exercise.create(name: "Burpee", description: "Place both feet on the mat shoulder0width apart. Bend at the hips and knees to place your hands on the mat on either side of your feet. Jump both of your feet backwards so your legs are completely extended behind you, resting on the balls of your feet. Then jump both feet forwards in between your hands. Then propel your body upwards into the air, extending your legs blow you and your arms above your head. Lastly, land in the starting position.", duration: "1 minute", muscle_id: fullbody.id)