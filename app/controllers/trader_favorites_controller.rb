class TraderFavoritesController < ApplicationController

  def create
    free_trader = FreeTrader.find(params[:free_trader_id])
    trader_favorite = current_user.trader_favorites.build(free_trader_id:free_trader.id, user_id: current_user.id)
    trader_favorite.save
    render json: params[:free_trader_id]
  end

  def destroy
    free_trader = FreeTrader.find(params[:free_trader_id])
    trader_favorite = current_user.trader_favorites.find_by(free_trader_id:params[:free_trader_id])
    trader_favorite.destroy
    render json: params[:free_trader_id]
  end
end
