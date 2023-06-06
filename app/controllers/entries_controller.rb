class EntriesController < ApplicationController
  def new
  end

  def create
  end

  def option
  end

  def show
    @entry = Entry.find(params[:id])
  end
end
