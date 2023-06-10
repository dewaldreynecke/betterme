class ThemesController < ApplicationController
  def index
    @themes = []
    Theme.where(user: current_user).reverse_each { |theme| @themes.push(theme) }
    @current_theme = @themes.shift
  end

  def show
    @theme = Theme.find(params[:id])
    @entries = @theme.entries
  end

  def create
    @user = current_user
    # set end date for the current theme
    @outgoing_theme = Theme.where(user: @user).last
    @outgoing_theme.end = Time.now
    @outgoing_theme.save
    # save the new theme
    @p_theme = params[:theme]
    @new_theme = Theme.create(text: @p_theme[:text], start: Time.now, user: @user)
    # respond
    respond_to do |format|
      format.html { redirect_to dashboard_path }
    end
  end
end
