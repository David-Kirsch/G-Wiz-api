class QuestionsController < ApplicationController
    def index
        questions = Question.all 
        render json: questions, except: [:created_at, :updated_at]
    end

    def show
        question = Question.find(params[:id])
        render json: question, except: [:created_at, :updated_at]
    end

    def create
        question = Question.create!(question_params)
        render json: question, except: [:created_at, :updated_at]
    end

private
    def question_params
        params.require(:question).permit(:option_1, :option_2, :correct_answer, :level, :difficulty, related_words: [])
    end
end