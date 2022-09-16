class GreetingsController < ApplicationController
  def index; end

  def show
    render json: { msg: Greeting.order('RANDOM()').first.message }
  end
end
