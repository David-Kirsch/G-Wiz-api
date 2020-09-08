class UserQuestionsController < ApplicationController
    def index
        userQuestions = UserQuestion.all 
        render json: userQuestions, except: [:created_at, :updated_at, :outcome]
    end

    def show
        userQuestion = UserQuestion.find(params[:id])
        render json: userQuestion, except: [:created_at, :updated_at, :outcome]
    end

    def create
        userQuestion = UserQuestion.create!(user_question_params)
        render json: userQuestion, except: [:created_at, :updated_at, :outcome]
    end

private
    def user_question_params
        params.require(:user_question).permit(:user_id, :question_id, :outcome)
    end
end