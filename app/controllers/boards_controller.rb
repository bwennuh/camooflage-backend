class BoardsController < ApplicationController

  def index
    @boards = Board.all

    render json: @boards, except: [:created_at, :updated_at]
  end

  def show
    @board = Board.find(params[:id])

    render json: @board
  end

  def new
    @board = Board.new
  end

  def create
    board = Board.create!(board_params)

    if board.valid?
      render json: board
    else
      flash[:errors] = board.errors.full_messages
      render json: flash[:errors]
    end
  end

  def destroy
      board = Board.find(params[:id])
      board.destroy!

      render json: {}
  end

  def update
      board = Board.find(params[:id])
      board.update(board_params)

      render json: board
  end

  private

  def board_params
    params.permit(:name, :description, :user_id)
  end

end
