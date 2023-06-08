class UserController < ApplicationController
  def update
    @user = User.find(params[:id])
    @themehash = params[:user]
    @user.theme = @themehash[:theme]
    @user.save

    respond_to do |format|
      format.html { redirect_to dashboard_path }
    end
  end

  private

  def user_params
    params.require(:user).permit(:theme)
  end
end
