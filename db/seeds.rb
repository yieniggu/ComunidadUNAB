# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user_1 = User.create(first_name: "Bastian", last_name: "Simpertigue", email: "b.simpercifu@uandresbello.edu", is_teacher: false, password: "passBastian")
user_2 = User.create(first_name: "Joaquin", last_name: "Retamales", email: "j.retamales@uandresbello.edu", is_teacher: false, password: "passJoaquin")

teacher_1 = User.create(first_name: "Francisco", last_name: "Marshall", email: "f.marshall@uandresbello.edu", is_teacher: true, password: "passProfe")
teacher_2 = User.create(first_name: "Sergio", last_name: "Troncoso", email: "s.troncoso@uandresbello.edu", is_teacher: true, password: "passAyudante")

course_1 = Course.create(name: "Arquitectura de Sistemas", description: "Teorico", nrc: 2404)
course_2 = Course.create(name: "Arquitectura de Sistemas (TP)", description: "Teorico Practico", nrc: 2405)

UserCourse.create(user_id: user_1.id, course_id: course_1.id)
UserCourse.create(user_id: teacher_1.id, course_id: course_1.id)
UserCourse.create(user_id: user_2.id, course_id: course_2.id)
UserCourse.create(user_id: teacher_2.id, course_id: course_2.id)

UserCourse.create(user_id: user_1.id, course_id: course_2.id)
UserCourse.create(user_id: user_2.id, course_id: course_1.id)
UserCourse.create(user_id: teacher_1.id, course_id: course_2.id)
UserCourse.create(user_id: teacher_2.id, course_id: course_1.id)

Rating.create(value: 5, comment: "Buen profesor", user: teacher_1, course: course_1)
Rating.create(value: 7, comment: "Excelente profesor", user: teacher_1, course: course_2)
Rating.create(value: 2, comment: "Mal profesor profesor", user: teacher_1, course: course_1)

Rating.create(value: 5, comment: "Buen profesor", user: teacher_2, course: course_2)
Rating.create(value: 7, comment: "Excelente profesor", user: teacher_2, course: course_1)
Rating.create(value: 2, comment: "Mal profesor profesor", user: teacher_2, course: course_2)