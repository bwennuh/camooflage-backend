class BoardPinsController < ApplicationController

  def index
    @board_pins = BoardPin.all

    render json: @board_pins, except: [:created_at, :updated_at]
  end

  def show
    @board_pin = BoardPin.find(params[:id])

    render json: @board_pin
  end

  def new
    @board_pin = BoardPin.new
  end

  def create
    board_pin = BoardPin.create!(board_pin_params)

    if board_pin.valid?
      render json: board_pin
    else
      flash[:errors] = board_pin.errors.full_messages
      render json: flash[:errors]
    end
  end

  # def destroy
  #     board_pin = BoardPin.find(params[:id])
  #     board_pin.destroy!

  #     render json: {}
  # end

  # def update
  #     board_pin = BoardPin.find(params[:id])
  #     board_pin.update(board_pin_params)

  #     render json: board_pin
  # end

  private

  def board_pin_params
    params.permit(:non_dairy_option_id, :board_id)
  end

end
