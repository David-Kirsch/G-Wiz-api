#require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



i = 1
while i < 11
    puts 'difficulty level: ' + i.to_s
    10.times do
        response = HTTParty.get("https://twinword-word-association-quiz.p.rapidapi.com/type1/?area=sat&level=" + i.to_s, headers:{
            "X-RapidAPI-Host" => "twinword-word-association-quiz.p.rapidapi.com",
            "X-RapidAPI-Key" => ""
        })
        response['quizlist'].each do |question|
            Question.create(related_words: question.values[0], option_1: question.values[1][0], option_2: question.values[1][1], correct_answer: question.values[2], level: 'SAT' , difficulty: i)
        end
    end
    i = i +1
end