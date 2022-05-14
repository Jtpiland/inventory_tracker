class ItemsController < ApplicationController
  def index
    if params[:search]
      @items = Item.search(params[:search])
    else
      @items = Item.all
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    item = Item.create(item_params)
    if item.save
      redirect_to '/items'
    else
      redirect_to '/items/new'
      flash[:alert] = "Error: #{error_message(item.errors)}"
    end
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to "/items"
    else
      redirect_to "/items/#{item.id}/edit"
      flash[:alert] = "Error: #{error_message(item.errors)}"
    end
  end

  def destroy
    Item.find(params[:id]).destroy
    redirect_to '/items'
  end

  private

  def item_params
    params.permit(:id, :name, :description, :price)
  end
end
