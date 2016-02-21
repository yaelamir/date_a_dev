# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Dev.destroy_all

Dev.create(
 first_name: "Yael",
 last_name: "Amir",
 interested_in: "Men",
 gender: "Female",
 location: "Los Angeles",
 email: "yaelamir1@gmail.com",
 born_on: Date.parse("13-11-1992"),
 github_username: "yaelamir",
 prog_lang_pref: "Ruby",
 dev_level: "Jr. Developer",
 picture_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRryLVG5BdGoJ4mKeHOjYEpT1skmwoArU6XbgwAD7H4c8duUuPsQj1f4Df3",
 password: "123",
 password_confirmation: "123"

)

Dev.create(
 first_name: "Clifford",
 last_name: "Doggy",
 interested_in: "Females",
 gender: "Male",
 location: "Los Angeles",
 email: "clifford@gmail.com",
 born_on: Date.parse("10-10-1990"), #Sat, 12 Dec 1992
 github_username: "cliffy",
 prog_lang_pref: "JS",
 dev_level: "Jr. Developer",
 picture_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRryLVG5BdGoJ4mKeHOjYEpT1skmwoArU6XbgwAD7H4c8duUuPsQj1f4Df3",
 password: "123",
 password_confirmation: "123"

)

Dev.create(
 first_name: "Bob",
 last_name: "Smith",
 interested_in: "Men",
 gender: "Male",
 location: "Los Angeles",
 email: "bobby@gmail.com",
 born_on: Date.parse("12-12-1992"),
 github_username: "bobbysmith",
 prog_lang_pref: "CSS",
 dev_level: "Jr. Developer",
 picture_url: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRryLVG5BdGoJ4mKeHOjYEpT1skmwoArU6XbgwAD7H4c8duUuPsQj1f4Df3",
 password: "123",
 password_confirmation: "123"

)
