class Api::V1::ItemsController < ApplicationController

  def show
    render json: Item.find(params[:id]), status: 200
  end

  def index
    render json: Item.all
  end



end
