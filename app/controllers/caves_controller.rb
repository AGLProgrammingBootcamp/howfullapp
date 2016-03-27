class CavesController < ApplicationController
  before_action :set_cafe, only: [:show, :edit, :update, :destroy]

  # GET /caves
  # GET /caves.json
  def index
    @caves = Cafe.all
     
  end

  # GET /caves/1
  # GET /caves/1.json
  def show
  end

  # GET /caves/new
  def new
    @cafe = Cafe.new
    @stores = Store.all
    
  end

  # GET /caves/1/edit
  def edit
  end

  # POST /caves
  # POST /caves.json
  def create
    @cafe = Cafe.new(cafe_params)

    respond_to do |format|
      if @cafe.save
        format.html { redirect_to @cafe, notice: 'Cafe was successfully created.' }
        format.json { render :show, status: :created, location: @cafe }
      else
        format.html { render :new }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caves/1
  # PATCH/PUT /caves/1.json
  def update
    respond_to do |format|
      if @cafe.update(cafe_params)
        format.html { redirect_to @cafe, notice: 'Cafe was successfully updated.' }
        format.json { render :show, status: :ok, location: @cafe }
      else
        format.html { render :edit }
        format.json { render json: @cafe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caves/1
  # DELETE /caves/1.json
  def destroy
    @cafe.destroy
    respond_to do |format|
      format.html { redirect_to caves_url, notice: 'Cafe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
  def find
     @caves = Cafe.all
     @q = Cafe.ransack(params[:q])
     @caves = @q.result
    # @enter_count = EnterCount.find_by(cafe_id: @caves.id)
    # @leave_count = LeaveCount.find_by(cafe_id: @caves.id)
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cafe
      @cafe = Cafe.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cafe_params
      params.require(:cafe).permit(:name, :location, :smoking, :seat ,:store_id ,:station)
    end
    
    
    def create
    @user = User.new(user_params)
    file = params[:user][:image]
    # 以下のコードをset_imageメソッドとしてuser.rbに移し、set_imageメソッドを呼び出してください
    @user.set_image(file)

    if @user.save
      redirect_to @user, notice: 'ユーザーが保存されました'
    else
      render :new
    end
  
  def update
    
     # アップロードされた画像をparams[:user][:image]から受け取り変数fileに代入してください
    file = params[:caves][:image]
    # set_imageメソッドを呼び出してください
    @user.set_image(file)
    
    if @caves.update(user_params)
      redirect_to @caves, notice: '店舗情報が更新されました'
    else
      render :edit
    end
  end

  def destroy
    @caves.destroy
    redirect_to caves_url, notice: '店舗が削除されました'
  def about us
  end  
   end
   
   end 
end