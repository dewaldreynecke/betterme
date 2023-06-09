require 'date'

class MoodsController < ApplicationController
  def new
    @chosenmood = params[:m]
    @mood = Mood.new(mood: :"#{@chosenmood}")
    @mood.user = current_user
    @mood.date = Date.today
    if @mood.save!
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.text { render partial: "pages/#{params[:m]}", formats: [:html] }
      end
    else
      respond_to do |format|
        format.html { redirect_to dashboard_path }
        format.text { render partial: "pages/mood", formats: [:html] }
      end
    end
  end
end
