require 'date'

class EntriesController < ApplicationController
  def new
    @entry = Entry.new
    @addresses = current_user.addresses.all
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
    @date = Date.parse(params[:date])
    @entries_on_same_date = Entry.where(date: @date)
    @next_entry = Entry.where("date > ?", @date).order(date: :asc).first
    @previous_entry = Entry.where("date < ?", @date).order(date: :desc).first
    @markers = @entries_on_same_date.geocoded.map do |entry|
    {
      lat: entry.latitude,
      lng: entry.longitude
    }
    end
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :address, photos: [])
  end
end
