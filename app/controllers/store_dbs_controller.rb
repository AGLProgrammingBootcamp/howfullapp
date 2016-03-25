class StoreDbsController < ApplicationController
  before_action :set_store_db, only: [:show, :edit, :update, :destroy]

  # GET /store_dbs
  # GET /store_dbs.json
  def index
    @store_dbs = StoreDb.all
  end

  # GET /store_dbs/1
  # GET /store_dbs/1.json
  def show
  end

  # GET /store_dbs/new
  def new
    @store_db = StoreDb.new
  end

  # GET /store_dbs/1/edit
  def edit
  end

  # POST /store_dbs
  # POST /store_dbs.json
  def create
    @store_db = StoreDb.new(store_db_params)

    respond_to do |format|
      if @store_db.save
        format.html { redirect_to @store_db, notice: 'Store db was successfully created.' }
        format.json { render :show, status: :created, location: @store_db }
      else
        format.html { render :new }
        format.json { render json: @store_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /store_dbs/1
  # PATCH/PUT /store_dbs/1.json
  def update
    respond_to do |format|
      if @store_db.update(store_db_params)
        format.html { redirect_to @store_db, notice: 'Store db was successfully updated.' }
        format.json { render :show, status: :ok, location: @store_db }
      else
        format.html { render :edit }
        format.json { render json: @store_db.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /store_dbs/1
  # DELETE /store_dbs/1.json
  def destroy
    @store_db.destroy
    respond_to do |format|
      format.html { redirect_to store_dbs_url, notice: 'Store db was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_store_db
      @store_db = StoreDb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def store_db_params
      params.require(:store_db).permit(:store, :location, :smorkingornot, :seats)
    end
end
