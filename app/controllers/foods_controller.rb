class FoodsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    @food.user_id = current_user.id
    @food.save
    redirect_to food_path(@food)
  end

  def edit
  end

  private
  def food_params
    params.require(:food).permit(:title, :body, :image)
  end
end
