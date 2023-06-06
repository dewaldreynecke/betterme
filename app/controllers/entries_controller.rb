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

  def show
  end
end
