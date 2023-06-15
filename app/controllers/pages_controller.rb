require 'date'

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
    @cal_moods = cal_month_moods
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

  def cal_month_moods
    # get the moods for a month and populate & return a hash for the calendar
    # hash should have an entry for every day of the month
    # mood should be class name
    # example output {1: "cal-m-okay",2: "",3: "cal-m-awesome"}
    return_hash = {}
    (1..30).to_a.each do |day|
      date = Date.new(2023, 6, day)
      mood = Mood.where(date:)
      return_hash[:"#{day}"] = mood.empty? ? "" : "cal-m-#{mood.first.mood}"
    end
    return return_hash
  end
end
