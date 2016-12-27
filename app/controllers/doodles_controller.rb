class DoodlesController < ApplicationController
  before_action :set_doodle, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /doodles
  # GET /doodles.json
  def index
    @doodles = Doodle.all
  end

  # GET /doodles/1
  # GET /doodles/1.json
  def show
  end

  # GET /doodles/new
  def new
    @doodle = Doodle.new
  end

  # GET /doodles/1/edit
  def edit
  end

  # POST /doodles
  # POST /doodles.json
  def create
    @doodle = Doodle.new(doodle_params)

    respond_to do |format|
      if @doodle.save
        format.html { redirect_to @doodle, notice: 'Doodle was successfully created.' }
        format.json { render :show, status: :created, location: @doodle }
      else
        format.html { render :new }
        format.json { render json: @doodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doodles/1
  # PATCH/PUT /doodles/1.json
  def update
    respond_to do |format|
      if @doodle.update(doodle_params)
        format.html { redirect_to @doodle, notice: 'Doodle was successfully updated.' }
        format.json { render :show, status: :ok, location: @doodle }
      else
        format.html { render :edit }
        format.json { render json: @doodle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doodles/1
  # DELETE /doodles/1.json
  def destroy
    @doodle.destroy
    respond_to do |format|
      format.html { redirect_to doodles_url, notice: 'Doodle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doodle
      @doodle = Doodle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doodle_params
      params.require(:doodle).permit(:canvas, :title, :rating, :user_id)
    end
end
