# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create({ id: 4, email: 'k.z@yandex.by', encrypted_password: '1111111' })
Profile.create({ name: 'Lakrouch', role: 1, user_id: 4 })
Diary.create(id: 4, user_id: 4)
User.create({id: 5, email: 'm.b@y.b', encrypted_password: '1111111' })
Profile.create({ name: 'test', role: 0, user_id: 5 })
Diary.create(id: 2, user_id: 5)
