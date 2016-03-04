class ExercisesPerformedsController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]
  before_action :set_types, only: [:new, :edit, :update, :create]

  def index
    @exercises_performeds = ExercisesPerformed.all
  end

  def show
  end

  def new
    @exercises_performed = ExercisesPerformed.new
  end

  def edit
  end

  def update
    respond_to do |format|
      if @exercises_performed.update(exercise_params)
        format.html { redirect_to @exercises_performed, notice: 'Exercise Entry was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercises_performed }
      else
        format.html { render :edit }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @exercises_performed = ExercisesPerformed.new(exercise_params)

    respond_to do |format|
      if @exercises_performed.save
        format.html { redirect_to @exercises_performed, notice: 'Exercise Entry was successfully created.' }
        format.json { render :show, status: :created, location: @exercises_performed }
      else
        format.html { render :new }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @exercises_performed.destroy
    respond_to do |format|
      format.html { redirect_to exercises_performeds_url, notice: 'Exercise Entry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def set_exercise
    @exercises_performed = ExercisesPerformed.find(params[:id])
  end

  def set_types
    @types = ExerciseType.all
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exercise_params
    params.require(:exercises_performed).permit(:calories_burned, :date_burned, :exercise_type_id)
  end
end
