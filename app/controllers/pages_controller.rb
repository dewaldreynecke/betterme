class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @mood = Mood.where(date: Date.today)
  end

  def dashboard
    @markers = current_user.entries.map do |entry|
      {
        lat: entry.latitude,
        lng: entry.longitude,
        # info_window_html: render_to_string(partial: "info_window", locals: { entry: entry }),
        marker_html: render_to_string(partial: "marker", locals: { entry: entry })
      }
    end
    @mood = Mood.where(date: Date.today)
    @current_theme = Theme.where(user: current_user).last
    @theme = Theme.new
    @user = current_user
    @moods = @user.moods
    @chart_data = chart_builder
    @entries = current_user.entries.max(2)
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
    @tags = @user.tags
    @tag = Tag.new
  end

  def search
    @mood = Mood.where(date: Date.today)
    @results = Entry.search_by_entry(params[:query])
  end

  private

  def chart_builder
    # return an array of data points like this:
    # [["21 May 2023", 2], ["8 June 2023", 3], ["2021-01-03", 1]]
    mood_map = { "terrible" => 0, "bad" => 1, "okay" => 2, "happy" => 3, "awesome" => 4 }
    return_array = []
    current_user.moods.min(14).each do |mood|
      return_array.push([mood.date.strftime("%e %b"), mood_map[mood.mood]])
    end
    return return_array
  end
end
