class StepsTakensController < ApplicationController
  before_action :set_steps_taken, only: [:show, :edit, :update, :destroy]

  # GET /steps_takens
  # GET /steps_takens.json
  def index
    @steps_takens = StepsTaken.all
  end

  # GET /steps_takens/1
  # GET /steps_takens/1.json
  def show
  end

  # GET /steps_takens/new
  def new
    @steps_taken = StepsTaken.new
  end

  # GET /steps_takens/1/edit
  def edit
  end

  # POST /steps_takens
  # POST /steps_takens.json
  def create
    @steps_taken = StepsTaken.new(steps_taken_params)

    respond_to do |format|
      if @steps_taken.save
        format.html { redirect_to @steps_taken, notice: 'Steps taken was successfully created.' }
        format.json { render :show, status: :created, location: @steps_taken }
      else
        format.html { render :new }
        format.json { render json: @steps_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps_takens/1
  # PATCH/PUT /steps_takens/1.json
  def update
    respond_to do |format|
      if @steps_taken.update(steps_taken_params)
        format.html { redirect_to @steps_taken, notice: 'Steps taken was successfully updated.' }
        format.json { render :show, status: :ok, location: @steps_taken }
      else
        format.html { render :edit }
        format.json { render json: @steps_taken.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps_takens/1
  # DELETE /steps_takens/1.json
  def destroy
    @steps_taken.destroy
    respond_to do |format|
      format.html { redirect_to steps_takens_url, notice: 'Steps taken was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_steps_taken
      @steps_taken = StepsTaken.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def steps_taken_params
      params.require(:steps_taken).permit(:steps_taken, :date_walked)
    end
end
