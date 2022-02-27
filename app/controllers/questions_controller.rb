class QuestionsController < ApplicationController

  before_action :find_test, except: %i[show]
  before_action :find_question, except: %i[index new create]

  #rescue_from StandardError, with: :rescue_with_question_not_found

  def index
    @questions = @test.questions

    respond_to do |format|
      format.text {render plain: "All questions" }
      format.html {render inline: "<%= @questions.inspect %>" }
    end
  end

  def show
    render inline: '<%= @question.body %>'
  end

  def new

  end

  def create
    @question = @test.questions.new(question_params)

    if @question.save
      render plain: @question.inspect
    else
      render :new
    end
  end

  def destroy
    @question.destroy
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)   
  end

  def rescue_with_question_not_found
    render plain: "Question was not found"
  end
end
