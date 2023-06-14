require 'date'

class EntriesController < ApplicationController
  def new
    @mood = Mood.where(date: Date.today)
    @entry = Entry.new
    @addresses = current_user.addresses.all
    # @tags = current_user.tags
    # @tag = Tag.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    @entry.date = Date.today
    @entry.theme = current_user.themes.last
    if @entry.save!
      redirect_to confirmation_path
    else
      render new_entry_path, status: :unprocessable_entity
    end
  end

  def show_by_date
    @mood = Mood.where(date: Date.today)
    @date = Date.parse(params[:date])
    @entries_on_same_date = Entry.where(date: @date)
    @next_entry = Entry.where("date > ?", @date).order(date: :asc).first
    @previous_entry = Entry.where("date < ?", @date).order(date: :desc).first
    @markers = @entries_on_same_date.geocoded.map do |entry|
      {
        lat: entry.latitude, lng: entry.longitude
      }
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :address, photos: [], tag_ids: [])
  end
end
