class Store::CavesController < ApplicationController
  before_action :set_store_cafe, only: [:show, :edit, :update, :destroy]

  # GET /store/caves
  # GET /store/caves.json
  def index
    @store_caves = Cafe.all
  end

  # GET /store/caves/1
  # GET /store/caves/1.json
  def show
  end

  # GET /store/caves/new
  def new
    @store_cafe = Cafe.new
  end

  # GET /store/caves/1/edit
  def edit
  end

  # POST /store/caves
  # POST /store/caves.json
  def create
    @store_cafe = Cafe.new(store_cafe_params)

    respond_to do |format|
      if @store_cafe.save
        format.html { redirect_to @store_cafe, notice: 'Cafe was successfully created.' }
        format.json { render :show, status: :created, location: @store_cafe }
      else
        format.html { render :new }
        format.json { render json: @store_cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store/caves/1
  # PATCH/PUT /store/caves/1.json
  def update
    respond_to do |format|
      if @store_cafe.update(store_cafe_params)
        format.html { redirect_to @store_cafe, notice: 'Cafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_cafe }
      else
        format.html { render :edit }
        format.json { render json: @store_cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store/caves/1
  # DELETE /store/caves/1.json
  def destroy
    @store_cafe.destroy
    respond_to do |format|
      format.html { redirect_to store_caves_url, notice: 'Cafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_cafe
      @store_cafe = Cafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_cafe_params
      params.fetch(:store_cafe, {})
    end
end
