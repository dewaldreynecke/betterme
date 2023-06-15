class TagsController < ApplicationController
  def create
    @tag = Tag.new(tag_params)
    @tag.user = current_user
    if @tag.save!
      redirect_to profile_path
    else
      render profile_path, status: :unprocessable_entity
    end
  end

  def show
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.deleted = true
    @tag.save
    redirect_to profile_path
  end

  private

  def tag_params
    params.require(:tag).permit(:name)
  end
end
