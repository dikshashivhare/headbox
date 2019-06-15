class ListingsController < ApplicationController
  
  # before_action :authenticate_user!

  # GET /listings
  # GET /listings.json
  def index
    if params[:search].present?
      @listings = Listing.near(params[:search], 50, :order => :distance)
    else
      @listings = Listing.all
    end
  end
  

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listing = Listing.find(params[:id])
  end

  # GET /listings/new
  def new
    session[:listing_params] ||= {}
    @listing = Listing.new(session[:listing_params])
    @listing.current_step = session[:listing_step]
  end

  # GET /listings/1/edit
  def edit
    
  end

  # POST /listings
  # POST /listings.json
  def create
    session[:listing_params].deep_merge!(listing_params) 
    @listing = Listing.new(session[:listing_params])
     @listing.user_id = current_user.id
     
    @listing.current_step = session[:listing_step]
    if@listing.valid?
      if params[:back_button]
        @listing.previous_step
      elsif @listing.last_step?
        @listing.save if @listing.all_valid?
      else
        @listing.next_step
      end
      session[:listing_step] = @listing.current_step
    end
    if @listing.new_record?
      render "new"
    else
      session[:listing_step] = session[:listing_params] = nil
      flash[:notice] = "listing saved!"
      redirect_to @listing
    end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  # def update
  #   @listing = Listing.new(listing_params)
  #   respond_to do |format|
  #     if @listing.update(listing_params)
  #       format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @listing }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @listing.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end

  # # DELETE /listings/1
  # # DELETE /listings/1.json
  # def destroy
  #   @listing = Listing.find(params[:id])
  #   @listing.destroy
  #   respond_to do |format|
  #     format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.require(:listing).permit(:space_name, :venue_name, :description, :address_line_one, :address_line_two, :city, :state, :country, :latitude, :longitude, :zipcode, :timezone, :seating, :standing, :boardrooms, :classrooms, :theatre, :u_shaped, :cabaret, :area_type, :area_dimension, :ceiling_type, :ceiling_dimension, :user_id)
    end
end