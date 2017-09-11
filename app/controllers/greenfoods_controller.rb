class GreenfoodsController < ApplicationController
  before_action :set_greenfood, only: [:show, :edit, :update, :destroy]

  # GET /greenfoods
  # GET /greenfoods.json
  def index
    @greenfoods = Greenfood.all
  end

  # GET /greenfoods/1
  # GET /greenfoods/1.json
  def show
  end

  # GET /greenfoods/new
  def new
    @greenfood = Greenfood.new
  end

  # GET /greenfoods/1/edit
  def edit
  end

  # POST /greenfoods
  # POST /greenfoods.json
  def create
    @greenfood = Greenfood.new(greenfood_params)

    respond_to do |format|
      if @greenfood.save
        format.html { redirect_to @greenfood, notice: 'Greenfood was successfully created.' }
        format.json { render :show, status: :created, location: @greenfood }
      else
        format.html { render :new }
        format.json { render json: @greenfood.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /greenfoods/1
  # PATCH/PUT /greenfoods/1.json
  def update
    respond_to do |format|
      if @greenfood.update(greenfood_params)
        format.html { redirect_to @greenfood, notice: 'Greenfood was successfully updated.' }
        format.json { render :show, status: :ok, location: @greenfood }
      else
        format.html { render :edit }
        format.json { render json: @greenfood.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /greenfoods/1
  # DELETE /greenfoods/1.json
  def destroy
    @greenfood.destroy
    respond_to do |format|
      format.html { redirect_to greenfoods_url, notice: 'Greenfood was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_greenfood
      @greenfood = Greenfood.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def greenfood_params
      params.fetch(:greenfood, {})
    end
end
