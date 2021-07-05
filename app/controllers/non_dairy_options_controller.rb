class NonDairyOptionsController < ApplicationController

  def index
    @non_dairy_options = NonDairyOption.all

    render json: @non_dairy_options, except: [:created_at, :updated_at]
  end

  def show
    @non_dairy_option = NonDairyOption.find(params[:id])

    render json: @non_dairy_option
  end

  # def new
  #   @non_dairy_option = NonDairyOption.new
  # end

  # def create
  #   non_dairy_option = NonDairyOption.create!(non_dairy_option_params)

  #   render json: non_dairy_option

  #   # if non_dairy_option.valid?
  #   #   render json: non_dairy_option
  #   # else
  #   #   flash[:errors] = non_dairy_option.errors.full_messages
  #   #   render json: flash[:errors]
  #   # end
  # end

  # def destroy
  #     non_dairy_option = NonDairyOption.find(params[:id])
  #     non_dairy_option.destroy!

  #     render json: {}
  # end

  # def update
  #     non_dairy_option = NonDairyOption.find(params[:id])
  #     non_dairy_option.update(non_dairy_option_params)

  #     render json: non_dairy_option
  # end

  private

  def non_dairy_option_params
    # params.permit!
    params.permit(:name, :description, :allergens, :image, :category_id, :brand_id)
  end

end
