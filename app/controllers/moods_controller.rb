class MoodsController < ApplicationController
  def new
    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.text { render partial: "pages/#{params[:m]}", formats: [:html] }
    end
  end
end
