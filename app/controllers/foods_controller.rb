class FoodsController < ApplicationController
  def index
  end

  def show
    @food = Food.find(params[:id])
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
    @food = Food.find(params[:id])
  end

  def update
    @food = Food.find(params[:id])
    @food.update(food_params)
    redirect_to food_path(@food)
  end

  private
  def food_params
    params.require(:food).permit(:title, :body, :image)
  end
end
