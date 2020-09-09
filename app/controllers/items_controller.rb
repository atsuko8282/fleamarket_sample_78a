class ItemsController < ApplicationController
  def index
  end

  def new
    @item = Item.new
  end

  def create  
    Item.create(item_params)
  end

  private
  def item_params
    params.require(:item).permit(:name, :introduction, :price,:category, :size, :brand,:item_condition, :postage_payer, :prefecture_code, :preparation_day, :status).merge(user: current_user.id)
  end
end
