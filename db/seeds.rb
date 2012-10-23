# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.create(name: 'Super Admin')
Role.create(name: 'Staff')

Permission.create(action: 'manage', subject_class:'all')

User.create(name: "Prasad Surase", email: "prasad@joshsoftware.com", password: "prasad", password_confirmation: "prasad", role_id: Role.find_by_name('Super Admin').id)

User.create(name: "Neo", email: "neo@matrix.com", password: "prasad", password_confirmation: "prasad", role_id: Role.find_by_name('Staff').id)
