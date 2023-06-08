class InspirationsController < ApplicationController
  def random
    # fetch a random inspiration from the DB
    @inspiration = Inspiration.all.sample
    # and return it as text
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "inspiration", locals: { inspiration: @inspiration }, formats: [:html] }
    end
  end
end
