class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)
    @entry.user = current_user
    if @entry.save
      redirect_to dashboard_path
    else
      render self, status: :unprocessable_entity
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
