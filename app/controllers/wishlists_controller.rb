class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [:show, :edit, :update, :destroy]
  before_action :authenticate, only: [:create, :update, :destroy]

  # GET /wishlists
  # GET /wishlists.json
  def index
    @wishlists = Wishlist.all
  end

  # GET /wishlists/1
  # GET /wishlists/1.json
  def show
  end

  # GET /wishlists/new
  def new
    @wishlist = Wishlist.new
  end

  # GET /wishlists/1/edit
  def edit
  end

  # POST /wishlists
  # POST /wishlists.json
  def create
    @wishlist = Wishlist.new(wishlist_params)

    respond_to do |format|
      if @wishlist.save
        format.json { render :show, status: :created, location: @wishlist }
      else
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end

  
  # PATCH/PUT /wishlists/1.json
  def update
    respond_to do |format|
      if @wishlist.update(wishlist_params)
        format.json { render :show, status: :ok, location: @wishlist }
      else
        format.json { render json: @wishlist.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /wishlists/1.json
  def destroy
    @wishlist.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wishlist
      @wishlist = Wishlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wishlist_params
      params.require(:wishlist).permit(:name, :url, :price, :brand)
    end



    protected
    def authenticate
      authenticate_token || render_unauthorized
    end
    def authenticate_token
      authenticate_or_request_with_http_token('wishlists') do |token, options|
        User.find_by(auth_token: token)
      end
    end

    def render_unauthorized
      self.headers['WWW-Authenticate'] = 'Token realm="wishlists"'
      respond_to do |format|
        format.json { render json: 'Bad credentials', status: 401 }
      end
    end
end
