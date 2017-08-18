# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(
        name: "정제현",
        age: 100,
        height: 100,
        weight: 100,
        gender: "남자",
        email: "admin@google.com",
        password: "123123",
        admin: 1
    )