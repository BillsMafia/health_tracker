class ExercisesPerformedController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]

  def index
    @exercises_performeds = ExercisesPerformed.all
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
    et = ExerciseType.where("name == ? ", exercise_params[:exercise_type][:name].upcase)
    et.empty? ? @exercise_type = ExerciseType.new(name: exercise_params[:exercise_type][:name].upcase) : @exercise_type = et.first

    respond_to do |format|
      if @exercises_performed.update(exercise_params.except(:exercise_type))
        @exercise_type.save
        @exercise_type.exercises_performeds << @exercises_performed
        format.html { redirect_to @exercises_performed, notice: 'Activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercises_performed }
      else
        format.html { render :edit }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    et = ExerciseType.where("name == ? ", exercise_params[:exercise_type][:name].upcase)
    et.empty? ? @exercise_type = ExerciseType.new(name: exercise_params[:exercise_type][:name].upcase) : @exercise_type = et.first
    @exercises_performed = ExercisesPerformed.create(exercise_params.except(:exercise_type))

    respond_to do |format|
      if @exercise_type.exercises_performeds << @exercises_performed && @exercises_performed.save
        format.html { redirect_to @exercises_performed, notice: 'Activity was successfully created.' }
        format.json { render :show, status: :created, location: @exercises_performed }
      else
        format.html { render :new }
        format.json { render json: @exercises_performed.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  def set_exercise
    @exercises_performed = ExercisesPerformed.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def exercise_params
    params.require(:exercises_performed).permit(:date_burned, exercise_type: [:name])
  end
end
