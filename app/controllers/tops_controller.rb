class TopsController < ApplicationController
	before_action :login_check, only: [:show]
  def index
  	 @projects = Project.order(created_at: :desc).limit(3)
  	 @free_traders = FreeTrader.order(created_at: :desc).limit(3)
  end

  def show
  end

  private
    def login_check
      if user_signed_in?
        flash[:notice] = "※すでにログイン済みです"
        redirect_to root_path
      end
    end
end
