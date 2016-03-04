class ExerciseTypesController < ApplicationController
  before_action :set_type, only: [:show, :edit, :update, :destroy]

  def index
    @exercise_types = ExerciseType.all
  end

  def show
  end

  def new
    @exercise_type = ExerciseType.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @exercise_type.update(exercise_params)
        format.html { redirect_to @exercise_type, notice: 'Exercise Type was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_type }
      else
        format.html { render :edit }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @exercise_type = ExerciseType.new(exercise_params)

    respond_to do |format|
      if @exercise_type.save
        format.html { redirect_to @exercise_type, notice: 'Exercise Type was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_type }
      else
        format.html { render :new }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @exercise_type.destroy
    respond_to do |format|
      format.html { redirect_to exercise_types_url, notice: 'Exercise Type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    def set_type
      @exercise_type = ExerciseType.find(params[:id])
    end

    def exercise_params
      params.require(:exercise_type).permit(:name)
    end
end
