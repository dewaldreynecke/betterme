require 'date'

class MoodsController < ApplicationController
  def new
    @mood = Mood.new(mood: :"#{params[:m]}", user: current_user, date: Date.today)
    if @mood.save
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
