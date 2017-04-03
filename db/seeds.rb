# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(name: "admin",email: "admin@gmail.com",password: "admin123")
survey = Survey.create(name: "SdSquared ",description: "sd squared form description",created_by: "Naresh",updated_by: "naresh")
q1 = Question.create(info: "Explain CSRF?",survey_id: survey.id,type: "text",created_by: "Naresh",updated_by: "naresh")
q2 = Question.create(info: "latest rails version?",survey_id: survey.id,type: "mcq",created_by: "Naresh",updated_by: "naresh")
q3 = Question.create(info: "What's new in rails 5?",survey_id: survey.id,type: "text",created_by: "Naresh",updated_by: "naresh")
a5 = Answer.create(question_id:.id,info: 2,created_by: "Naresh",updated_by: "naresh")
a6 = Answer.create(question_id: q2.id,info: 3,created_by: "Naresh",updated_by: "naresh")
a7 = Answer.create(question_id: q2.id,info: 4,created_by: "Naresh",updated_by: "naresh")
a8 = Answer.create(question_id: q2.id,info: 5,created_by: "Naresh",updated_by: "naresh")