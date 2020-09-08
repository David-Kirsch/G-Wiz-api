class UserQuestionsController < ApplicationController
    def index
        userQuestions = UserQuestion.all 
        render json: userQuestions, except: [:created_at, :updated_at, :outcome]
    end

    def show
        userQuestion = UserQuestion.find(params[:id])
        render json: userQuestion, except: [:created_at, :updated_at, :outcome]
    end
end