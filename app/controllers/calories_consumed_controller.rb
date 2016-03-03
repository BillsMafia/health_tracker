class CaloriesConsumedController < ApplicationController
  before_action :set_calories_consumed, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def set_calories_consumed
      @calories_consumed = CaloriesConsumed.find(params[:id])
    end

    def calories_consumed_params
      params.require(:calories_consumed).permit(:calories_consumed, :date_consumed)
    end
end
