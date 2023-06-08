class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def dashboard
    @user = current_user
    @entries = @user.entries
    @markers = @entries.map do |entry|
    {
      lat: entry.latitude,
      lng: entry.longitude
    }
    end
  end
end
