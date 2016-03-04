class CaloriesConsumedsController < ApplicationController
  before_action :set_calories_consumed, only: [:show, :edit, :update, :destroy]

  def index
    @calories_consumeds = CaloriesConsumed.all
  end

  def show
  end

  def new
    @calories_consumed = CaloriesConsumed.new
  end

  def create
    @calories_consumed = CaloriesConsumed.new(calories_consumed_params)

    respond_to do |format|
      if @calories_consumed.save
        format.html { redirect_to @calories_consumed, notice: 'Calories consumed successfully added.'}
        format.json { render :show, status: :created, location: @calories_consumed }
      else
        format.html { render :new}
        format.json { render json: @calories_consumed.errors, status: :unprocessable_entity}
      end
    end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @calories_consumed.update(calories_consumed_params)
        format.html { redirect_to @calories_consumed, notice: 'Calories consumed was successfully updated.' }
        format.json { render :show, status: :ok, location: @calories_consumed }
      else
        format.html { render :edit }
        format.json { render json: @calories_consumed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @calories_consumed.destroy
    respond_to do |format|
      format.html { redirect_to calories_consumeds_url, notice: 'Calories consumed was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def set_calories_consumed
      @calories_consumed = CaloriesConsumed.find(params[:id])
    end

    def calories_consumed_params
      params.require(:calories_consumed).permit(:calories_consumed, :date_consumed)
    end
end
