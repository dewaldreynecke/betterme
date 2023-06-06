class EntriesController < ApplicationController
  def newguided
    @entry = Entry.new
    @prompts = Prompt.all
    @activities = Activity.all
  end

  def newfree
  end

  def create
  end

  def option
  end

  def show_by_date
    @entries_on_same_date = Entry.where(created_at: params[:date].to_date.beginning_of_day..params[:date].to_date.end_of_day)
  end
end
