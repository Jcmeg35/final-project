class BidsController < ApplicationController

  def new
    @bid = Bid.new
  end 


  private
    def set_bid
      @bid = Bid.find(params[:id])
    end

    def bid_params
      params.require(:price, :created_at, :updated_at, :rfp_id, :users_id)
    end


end
