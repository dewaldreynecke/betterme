class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
  end

  def option
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private

  def entry_params
    params.require(:entry).permit(:title, :content, :address, photos: [])
  end
end
