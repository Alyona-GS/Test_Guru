class TestsController < ApplicationController

  before_action :find_test

  def show

  end

  private

  def find_test
    @test = Test.find(params[:id])
  end
end