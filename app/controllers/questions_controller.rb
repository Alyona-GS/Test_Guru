class QuestionsController < ApplicationController

  before_action :find_test
  before_action :test_questions

  rescue_from StandardError, with: :rescue_with_question_not_found

  def index
    respond_to do |format|
      format.text {render plain: "All questions" }
      format.html {render inline: "<%= @questions.inspect %>" }
    end
  end

  def show
    @question = @questions[params[:id].to_i - 1]
    render inline: '<%= @question.body %>'
  end

  def new

  end

  def create
    @question = @questions.create(question_params)
  end

  def destroy
    @question = @questions[params[:id].to_i - 1]
    @question.destroy
  end

  private

  def find_test
    @test = Test.find(params[:test_id])
  end

  def test_questions
    @questions = @test.questions
  end

  def question_params
    params.require(:question).permit(:body)   
  end

  def rescue_with_question_not_found
    render plain: "Question was not found"
  end
end
