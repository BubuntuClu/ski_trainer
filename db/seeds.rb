# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
plan = Plan.create(name: 'Новичок')
plan.exercises.create(title: 'задание 11', description: 'Необходимо полностью экипироваться и проехать 1км на лыжах.', order: 1)
plan.exercises.create(title: 'задание12', description: 'описание12', order: 2)
plan.exercises.create(title: 'задание13', description: 'описание13', order: 3)
plan.exercises.create(title: 'задание14', description: 'описание14', order: 4)
# Exercise.create()


# Plan.create(name: 'Продолжающий')
plan = Plan.create(name: 'Продолжающий')
plan.exercises.create(title: 'задание 22', description: 'вфапыыпып', order: 1)
plan.exercises.create(title: 'задание22', description: 'описание22', order: 2)
plan.exercises.create(title: 'задание23', description: 'описание23', order: 3)
plan.exercises.create(title: 'задание24', description: 'описание24', order: 4)
plan.exercises.create(title: 'задание25', description: 'описание25', order: 5)
plan.exercises.create(title: 'задание26', description: 'описание26', order: 6)
# Plan.create(name: 'Продвинутый')

plan = Plan.create(name: 'Продвинутый')
plan.exercises.create(title: 'задание 31', description: 'вфапыыпып31', order: 1)
plan.exercises.create(title: 'задание32', description: 'описание32', order: 2)
plan.exercises.create(title: 'задание33', description: 'описание33', order: 3)
plan.exercises.create(title: 'задание34', description: 'описание34', order: 4)
plan.exercises.create(title: 'задание35', description: 'описание35', order: 5)
plan.exercises.create(title: 'задание36', description: 'описание36', order: 6)
plan.exercises.create(title: 'задание37', description: 'описание37', order: 7)
plan.exercises.create(title: 'задание37', description: 'описание38', order: 8)
