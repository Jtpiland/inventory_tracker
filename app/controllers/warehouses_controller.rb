class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def create
    warehouse = Warehouse.create(warehouse_params)
    if warehouse.save
      redirect_to '/warehouses'
    else
      redirect_to '/warehouses/new'
      flash[:alert] = "Error: #{error_message(warehouse.errors)}"
    end
  end

  def destroy
    Warehouse.find(params[:id]).destroy
    redirect_to '/warehouses'
  end

  private

  def warehouse_params
    params.permit(:id, :name, :city, :state)
  end
end
