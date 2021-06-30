class CategoriesController < ApplicationController

  def index
    @categories = Category.all

    render json: @categories, except: [:created_at, :updated_at]
  end

  def show
    @category = Category.find(params[:id])

    render json: @category
  end

  # def new
  #   @category = Category.new
  # end

  # def create
  #   category = Category.create!(category_params)

  #   render json: category

  #   # if category.valid?
  #   #   render json: category
  #   # else
  #   #   flash[:errors] = category.errors.full_messages
  #   #   render json: flash[:errors]
  #   # end
  # end

  # def destroy
  #     category = Category.find(params[:id])
  #     category.destroy!

  #     render json: {}
  # end

  # def update
  #     category = Category.find(params[:id])
  #     category.update(category_params)

  #     render json: category
  # end

  private

  def category_params
    params.permit!
    # params.permit(:name)
  end

end
