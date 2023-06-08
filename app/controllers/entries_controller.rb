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
    @entries_on_same_date = Entry.where(created_at: params[:date].to_date.beginning_of_day..params[:date].to_date.end_of_day)
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :address, photos: [])
  end
end
