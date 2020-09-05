class QuestionsController < ApplicationController
def index
    
    questions = Question.all 
    render json: questions, except: [:created_at, :updated_at]
    end

    def show
        question = Question.find(params[:id])
        render json: question, except: [:created_at, :updated_at]
    end
end