class Api::V1::ItemsController < ApplicationController

  def show
    render json: Item.find(params[:id]), status: 200
  end

  def index
    render json: Item.all, status: 200
  end

  def create
    item = Item.create(name: params[:item][:name], description: params[:item][:description], image_url: params[:item][:image_url])
    render json: item.to_json, status: 201,
    serializer: ItemSerializer
  end



end
