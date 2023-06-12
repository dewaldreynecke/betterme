class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @mood = Mood.where(date: Date.today)
  end

  def dashboard
    @markers = current_user.entries.map do |entry|
      {
        lat: entry.latitude,
        lng: entry.longitude
      }
    end
    @mood = Mood.where(date: Date.today)
    @current_theme = Theme.where(user: current_user).last
    @theme = Theme.new
    @chart_data = chartbuilder
  end

  def confirmation
    @zenquote = Zenquote.all.sample
    @mood = Mood.where(date: Date.today)
  end

  def profile
    @user = current_user
    @mood = Mood.where(date: Date.today)
    @addresses = @user.addresses
    @address = Address.new
  end

  private

  def chartbuilder
    # return an array of data points like this:
    [["2021-01-01", 2], ["2021-01-02", 3]]
  end
end
