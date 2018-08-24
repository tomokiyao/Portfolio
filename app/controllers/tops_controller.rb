class TopsController < ApplicationController
  def index
  	 @projects = Project.order(created_at: :desc).limit(3)
  	 @free_traders = FreeTrader.order(created_at: :desc).limit(3)
  end

  def show
  end
end
