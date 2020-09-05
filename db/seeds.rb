#require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


    response['quizlist'].each do |question|
        Question.create(related_words: question.values[0], option_1: question.values[1][0], option_2: question.values[1][1], correct_answer: question.values[2])
    end
end