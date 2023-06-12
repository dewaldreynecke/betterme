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
    @chart_data = chart_builder
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

  def chart_builder
    # return an array of data points like this:
    # [["2021-01-01", 2], ["2021-01-02", 3], ["2021-01-03", 1]]
    mood_map = { "terrible" => 0, "bad" => 1, "okay" => 2, "happy" => 3, "awesome" => 4 }
    return_array = []
    current_user.moods.each do |mood|
      mood_array = [mood.date.strftime("%Y-%e-%m"), mood_map[mood.mood]]
      return_array.push(mood_array)
    end
    return return_array
  end
end
