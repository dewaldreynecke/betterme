class InspirationsController < ApplicationController
  def random
    # fetch a random inspiration from the DB
    @inspiration = Inspiration.all.sample
    # and return it as text
  end
end
