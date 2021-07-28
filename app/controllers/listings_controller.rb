class ListingsController < ApplicationController
  def index
    @listings = Listing.all
  end

  def new
    @listing =Listing.new
  end

  def create
    listing = Listing.create listing_params
    @current_user.listings << listing
    redirect_to listing_path(listing)
  end

  def edit
    @listing = Listing.find params[:id]
  end

  def update
    listing = Listing.find params[:id]
    puts "Listing: ", listing
    listing.update listing_params
    redirect_to listing_path(listing)
  end

  def show
    @listing = Listing.find params[:id]
  end

  def destroy
    listing = Listing.find params[:id]
    listing.destroy
    redirect_to listings_path
  end

  # Strong params
  private
  def listing_params
    params.require(:listing).permit(:name, :age, :gender, :breed, :color, :microchipped, :desexed, :photo, :user_id)
  end
end
