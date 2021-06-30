class BrandsController < ApplicationController

  def index
    @brands = Brand.all

    render json: @brands, except: [:created_at, :updated_at]
  end

  def show
    @brand = Brand.find(params[:id])

    render json: @brand
  end

  # def new
  #   @brand = Brand.new
  # end

  # def create
  #   brand = Brand.create!(brand_params)

  #   render json: brand

  #   # if brand.valid?
  #   #   render json: brand
  #   # else
  #   #   flash[:errors] = brand.errors.full_messages
  #   #   render json: flash[:errors]
  #   # end
  # end

  # def destroy
  #     brand = Brand.find(params[:id])
  #     brand.destroy!

  #     render json: {}
  # end

  # def update
  #     brand = Brand.find(params[:id])
  #     brand.update(brand_params)

  #     render json: brand
  # end

  private

  def brand_params
    params.permit!
    # params.permit(:name)
  end

end
