class FreeTradersController < ApplicationController
  def index
    @free_traders = FreeTrader.all
    expired = FreeTrader.where("first_term < ?", Date.today)
    expired.each do |expired|
    expired.destroy
    end
  end

  def show
    @free_trader = FreeTrader.find(params[:id])
    unless @free_trader.user.skill == nil
      @user_skills = @free_trader.user.skill.split(", ")
    end
    unless @free_trader.area == nil
      @trader_areas = @free_trader.area.split(",")
    end
  end

  def edit
    @free_trader = FreeTrader.find(params[:id])
    if @free_trader.user_id != current_user.id
      redirect_to root_path
    end
  end

  def update
    free_trader = FreeTrader.find(params[:id])
    unless area_params[:area] == nil
      area = area_params[:area].join(",")
      free_trader.update(trader_title:free_trader_params[:trader_title], wanted_detail:free_trader_params[:wanted_detail], trader_genre:free_trader_params[:trader_genre],
                                   first_number_of_people:free_trader_params[:first_number_of_people], second_number_of_people:free_trader_params[:second_number_of_people],
                                   first_term:free_trader_params[:first_term], second_term:free_trader_params[:second_term], area:area)
      redirect_to free_trader_path(free_trader.id)
    else
      free_trader.update(free_trader_params)
      redirect_to free_trader_path(free_trader.id)
    end
  end

  def new
    @free_trader = FreeTrader.new
  end

  def create
    unless area_params[:area] == nil
      area = area_params[:area].join(",")
      free_trader = FreeTrader.new(trader_title:free_trader_params[:trader_title], wanted_detail:free_trader_params[:wanted_detail], trader_genre:free_trader_params[:trader_genre],
                                   first_number_of_people:free_trader_params[:first_number_of_people], second_number_of_people:free_trader_params[:second_number_of_people],
                                   first_term:free_trader_params[:first_term], second_term:free_trader_params[:second_term], area:area)
      free_trader.user_id = current_user.id
      free_trader.save
      redirect_to free_trader_path(free_trader.id)
    else
      free_trader = FreeTrader.new(free_trader_params)
      free_trader.user_id = current_user.id
      free_trader.save
      redirect_to free_trader_path(free_trader.id)
    end
  end

  def destroy
    free_trader = FreeTrader.find(params[:id])
    free_trader.destroy
    redirect_to user_path(current_user)
  end

  def search
    expired = FreeTrader.where("first_term < ?", Date.today)
    expired.each do |expired|
    expired.destroy
  end
    @free_traders = FreeTrader.where("trader_title like '%" + params[:search] +
                                     "%' and trader_genre like '%" + FreeTrader.trader_genres[params[:trader_genre]].to_s +
                                     "%' and area like '%" + params[:area] + "%'")
  end

  private
   def free_trader_params
      params.require(:free_trader).permit(:trader_title,:wanted_detail,:trader_genre,:first_number_of_people,:second_number_of_people,:first_term, :second_term)
  end
  def area_params
      params.require(:free_trader).permit(area:[])
  end
end
