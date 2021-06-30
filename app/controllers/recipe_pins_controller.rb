class RecipePinsController < ApplicationController

  def index
    @recipes_pins = RecipePin.all

    render json: @recipes_pins, except: [:created_at, :updated_at]
  end

  def show
    @recipe_pin = RecipePin.find(params[:id])

    render json: @recipe
  end

  # def new
  #   @recipe_pin = RecipePin.new
  # end

  # def create
  #   recipe_pin = RecipePin.create!(recipe_pin_params)

  #   render json: recipe_pin

  #   # if recipe_pin.valid?
  #   #   render json: recipe_pin
  #   # else
  #   #   flash[:errors] = recipe_pin.errors.full_messages
  #   #   render json: flash[:errors]
  #   # end
  # end

  # def destroy
  #     recipe_pin = RecipePin.find(params[:id])
  #     recipe_pin.destroy!

  #     render json: {}
  # end

  # def update
  #     recipe_pin = RecipePin.find(params[:id])
  #     recipe_pin.update(recipe_pin_params)

  #     render json: recipe_pin
  # end

  private

  def recipe_pin_params
    params.permit!
    # params.permit(:non_dairy_option_id, :recipe_id)
  end

end
