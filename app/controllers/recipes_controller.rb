class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all

    render json: @recipes, except: [:created_at, :updated_at]
  end

  def show
    @recipe = Recipe.find(params[:id])

    render json: @recipe
  end

  # def new
  #   @recipe = Recipe.new
  # end

  # def create
  #   recipe = Recipe.create!(recipe_params)

  #   render json: recipe

  #   # if recipe.valid?
  #   #   render json: recipe
  #   # else
  #   #   flash[:errors] = recipe.errors.full_messages
  #   #   render json: flash[:errors]
  #   # end
  # end

  # def destroy
  #     recipe = Recipe.find(params[:id])
  #     recipe.destroy!

  #     render json: {}
  # end

  # def update
  #     recipe = Recipe.find(params[:id])
  #     # recipe.update(likes: recipe.likes + 1)
  #     recipe.update(recipe_params)

  #     render json: recipe
  # end

  private

  def recipe_params
    params.permit!
    # params.permit(:name, :description)
  end

end
