require 'date'

class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    @entry.date = Date.today
    if @entry.save
      redirect_to confirmation_path
    else
      render new_entry_path, status: :unprocessable_entity
    end
  end

  def option
  end

  def show_by_date
    @date = Date.parse(params[:date])
    @entries_on_same_date = Entry.where(date: @date)
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

