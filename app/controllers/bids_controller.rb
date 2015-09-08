class BidsController < ApplicationController

  def new
    @bid = Bid.new
  end 

  def show
   @bid = Bid.all
  end 

  def index
  
  end

  def create
    @bid = Bid.new(bid_params)
    if @bid.save!
      redirect_to rfps_path, alert: "Bid Succesfully Submitted"
    else 
      flash[:notice] = "Issue Submitting Bid. Please try again later."
    end
  end

  private
    def set_bid
      @bid = Bid.find(params[:id])
    end

    def bid_params
      params.require(:bid).permit(:price, :created_at, :updated_at, :rfp_id, :user_id)
    end

end
