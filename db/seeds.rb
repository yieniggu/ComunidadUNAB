# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(first_name: "Bastian", last_name: "Simpertigue", email: "b.simpercifu@uandresbello.edu", is_teacher: false, password: "passBastian")
teacher = User.create(first_name: "Francisco", last_name: "Marshall", email: "f.marshall@uandresbello.edu", is_teacher: true, password: "passProfe")
course = Course.create(name: "Arquitectura de Sistemas", description: "Teorico Practico", nrc: "2404")