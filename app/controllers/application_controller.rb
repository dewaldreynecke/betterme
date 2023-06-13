class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  config.beginning_of_week = :sunday

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
end
