class BuysController < ApplicationController
  def create
    
  end
  private
  def reservation_params
    params.permit(:room_id, :start_date, :end_date, :price, :total_price)
  end
end
