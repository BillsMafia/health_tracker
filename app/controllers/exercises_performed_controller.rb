class ExercisesPerformedController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @exercises = ExercisesPerformed.all
    @types = ExerciseType.all
  end

  def show
  end

  def new
    @exercises_performed = ExercisesPerformed.new
  end

  def edit
  end

  def update
  end

  def create
    et = ExerciseType.where("name == ? ", exercise_params[:exercise_type][:name].upcase)
    et.empty? ? @exercise_type = ExerciseType.new(name: exercise_params[:exercise_type][:name].upcase) : @exercise_type = et.first
    @exercise = ExercisesPerformed.new(exercise_params.except(:exercise_type))

    respond_to do |format|
      if @exercise_type.exercises_performeds << @exercise && @exercise.save
        format.html { redirect_to root_path, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @exercise }
      else
        format.html { render :new }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def set_exercise
    @exercise = ExercisesPerformed.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exercise_params
    params.require(:exercises_performed).permit(:date_burned, exercise_type: [:name])
  end
end
