class RestuarantsController < ApplicationController
  before_action :set_restuarant, only: [:show, :edit, :update, :destroy]

  # GET /restuarants
  # GET /restuarants.json
  def index
    @restuarants = Restuarant.all
  end

  # GET /restuarants/1
  # GET /restuarants/1.json
  def show
  end

  # GET /restuarants/new
  def new
    @restuarant = Restuarant.new
  end

  # GET /restuarants/1/edit
  def edit
  end

  # POST /restuarants
  # POST /restuarants.json
  def create
    @restuarant = Restuarant.new(restuarant_params)

    respond_to do |format|
      if @restuarant.save
        format.html { redirect_to @restuarant, notice: 'Restuarant was successfully created.' }
        format.json { render :show, status: :created, location: @restuarant }
      else
        format.html { render :new }
        format.json { render json: @restuarant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restuarants/1
  # PATCH/PUT /restuarants/1.json
  def update
    respond_to do |format|
      if @restuarant.update(restuarant_params)
        format.html { redirect_to @restuarant, notice: 'Restuarant was successfully updated.' }
        format.json { render :show, status: :ok, location: @restuarant }
      else
        format.html { render :edit }
        format.json { render json: @restuarant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restuarants/1
  # DELETE /restuarants/1.json
  def destroy
    @restuarant.destroy
    respond_to do |format|
      format.html { redirect_to restuarants_url, notice: 'Restuarant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restuarant
      @restuarant = Restuarant.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restuarant_params
      params.require(:restuarant).permit(:name, :address, :phone, :website, :image)
    end
end
