class StoreDetabasesController < ApplicationController
  before_action :set_store_detabasis, only: [:show, :edit, :update, :destroy]

  # GET /store_detabases
  # GET /store_detabases.json
  def index
    @store_detabases = StoreDetabase.all
  end

  # GET /store_detabases/1
  # GET /store_detabases/1.json
  def show
  end

  # GET /store_detabases/new
  def new
    @store_detabasis = StoreDetabase.new
  end

  # GET /store_detabases/1/edit
  def edit
  end

  # POST /store_detabases
  # POST /store_detabases.json
  def create
    @store_detabasis = StoreDetabase.new(store_detabasis_params)

    respond_to do |format|
      if @store_detabasis.save
        format.html { redirect_to @store_detabasis, notice: 'Store detabase was successfully created.' }
        format.json { render :show, status: :created, location: @store_detabasis }
      else
        format.html { render :new }
        format.json { render json: @store_detabasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_detabases/1
  # PATCH/PUT /store_detabases/1.json
  def update
    respond_to do |format|
      if @store_detabasis.update(store_detabasis_params)
        format.html { redirect_to @store_detabasis, notice: 'Store detabase was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_detabasis }
      else
        format.html { render :edit }
        format.json { render json: @store_detabasis.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_detabases/1
  # DELETE /store_detabases/1.json
  def destroy
    @store_detabasis.destroy
    respond_to do |format|
      format.html { redirect_to store_detabases_url, notice: 'Store detabase was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_detabasis
      @store_detabasis = StoreDetabase.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_detabasis_params
      params.require(:store_detabasis).permit(:store, :location, :smorkingornot, :capacity, :filled_seat)
    end
end
